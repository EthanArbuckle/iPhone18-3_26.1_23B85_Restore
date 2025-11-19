uint64_t sub_1C8D8845C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400);
  result = sub_1C906474C();
  v5 = result;
  if (!*(v2 + 16))
  {
LABEL_77:

    *v65 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v2 + 56);
  v8 = 1 << *(v2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v2 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  v67 = v11;
  if (!v10)
  {
LABEL_9:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v68 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v63 = 1 << *(v2 + 32);
    if (v63 >= 64)
    {
      sub_1C8D8D3E0(0, (v63 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v63;
    }

    *(v2 + 16) = 0;
    goto LABEL_77;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v68 = (v10 - 1) & v10;
LABEL_14:
    v16 = *(*(v2 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = *(v5 + 40);
    sub_1C9064D7C();
    switch(v16 >> 61)
    {
      case 1uLL:
        v66 = v16;
        v33 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1CCA82810](1);
        switch(v33)
        {
          case 0:
LABEL_25:
            v34 = 0;
            goto LABEL_58;
          case 1:
LABEL_43:
            v34 = 1;
            goto LABEL_58;
          case 2:
LABEL_49:
            v34 = 2;
            goto LABEL_58;
          case 3:
LABEL_51:
            v34 = 3;
            goto LABEL_58;
          case 4:
LABEL_46:
            v34 = 4;
            goto LABEL_58;
          case 5:
LABEL_53:
            v34 = 5;
            goto LABEL_58;
          case 6:
LABEL_55:
            v34 = 6;
            goto LABEL_58;
          case 7:
LABEL_52:
            v34 = 7;
            goto LABEL_58;
          case 8:
LABEL_57:
            v34 = 8;
            goto LABEL_58;
          case 9:
LABEL_48:
            v34 = 9;
            goto LABEL_58;
          case 10:
LABEL_56:
            v34 = 10;
            goto LABEL_58;
          case 11:
LABEL_45:
            v34 = 11;
            goto LABEL_58;
          case 12:
LABEL_47:
            v34 = 12;
            goto LABEL_58;
          case 13:
LABEL_54:
            v34 = 13;
            goto LABEL_58;
          case 14:
LABEL_44:
            v34 = 14;
            goto LABEL_58;
          case 15:
LABEL_50:
            v34 = 16;
LABEL_58:
            MEMORY[0x1CCA82810](v34);
            break;
          default:
            v36 = *(v33 + 16);
            MEMORY[0x1CCA82810](15);
            switch(v36 >> 61)
            {
              case 1uLL:
                v53 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                MEMORY[0x1CCA82810](1);
                switch(v53)
                {
                  case 0:
                    goto LABEL_25;
                  case 1:
                    goto LABEL_43;
                  case 2:
                    goto LABEL_49;
                  case 3:
                    goto LABEL_51;
                  case 4:
                    goto LABEL_46;
                  case 5:
                    goto LABEL_53;
                  case 6:
                    goto LABEL_55;
                  case 7:
                    goto LABEL_52;
                  case 8:
                    goto LABEL_57;
                  case 9:
                    goto LABEL_48;
                  case 10:
                    goto LABEL_56;
                  case 11:
                    goto LABEL_45;
                  case 12:
                    goto LABEL_47;
                  case 13:
                    goto LABEL_54;
                  case 14:
                    goto LABEL_44;
                  case 15:
                    goto LABEL_50;
                  default:
                    v62 = *(v53 + 16);
                    MEMORY[0x1CCA82810](15);
                    __dst[0] = v62;
                    TypeIdentifier.hash(into:)(v73);
                    break;
                }

                goto LABEL_59;
              case 2uLL:
                v41 = (v36 & 0x1FFFFFFFFFFFFFFFLL);
                v42 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v43 = v41[3];
                v44 = v5;
                v45 = v2;
                v46 = v41[4];
                v47 = v41[5];
                MEMORY[0x1CCA82810](2);
                sub_1C9063FBC();
                v2 = v45;
                v5 = v44;
                goto LABEL_39;
              case 3uLL:
                v48 = v36 & 0x1FFFFFFFFFFFFFFFLL;
                memcpy(__dst, ((v36 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                v50 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                v49 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
                memcpy(__src, ((v36 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
                v51 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
                v52 = *(v48 + 232);
                MEMORY[0x1CCA82810](3);
                ContainerDefinition.hash(into:)(v73);
                if (v49)
                {
                  v71[0] = v50;
                  v71[1] = v49;
                  memcpy(&v71[2], __src, 0x51uLL);
                  memcpy(v70, v71, 0x61uLL);
                  sub_1C9064D9C();
                  sub_1C8CC1340(v71, __dst);
                  ContainerDefinition.hash(into:)(v73);
                  memcpy(__dst, v70, 0x61uLL);
                  sub_1C8CC15FC(__dst);
                }

                else
                {
                  sub_1C9064D9C();
                }

                goto LABEL_39;
              case 4uLL:
                v38 = v36 & 0x1FFFFFFFFFFFFFFFLL;
                v39 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v40 = *(v38 + 24);
                MEMORY[0x1CCA82810](4);
LABEL_39:
                sub_1C9063FBC();
                break;
              default:
                v37 = *(v36 + 16);
                MEMORY[0x1CCA82810](0);
                LOBYTE(__dst[0]) = v37;
                TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                break;
            }

            break;
        }

LABEL_59:
        v16 = v66;
        break;
      case 2uLL:
        v21 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v22 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v64 = v7;
        v23 = v5;
        v24 = v2;
        v25 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v26 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        MEMORY[0x1CCA82810](2);
        sub_1C9063FBC();
        v2 = v24;
        v5 = v23;
        v7 = v64;
        goto LABEL_18;
      case 3uLL:
        memcpy(__dst, ((v16 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
        MEMORY[0x1CCA82810](3);
        v27 = __dst[2];
        sub_1C8D3EFB8(__dst, v71);
        sub_1C9063FBC();
        v28 = *(v27 + 16);
        MEMORY[0x1CCA82810](v28);
        if (v28)
        {
          v29 = (v27 + 40);
          do
          {
            v30 = *(v29 - 1);
            v31 = *v29;

            sub_1C9063FBC();

            v29 += 2;
            --v28;
          }

          while (v28);
        }

        v32 = __dst[6];
        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v32)
        {
          sub_1C9063FBC();
        }

        v35 = __dst[9];
        MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
        sub_1C9064D9C();
        if (v35)
        {
          sub_1C9063FBC();
        }

        if (__dst[11])
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
        if (__dst[14])
        {
          memcpy(__src, &__dst[13], sizeof(__src));
          sub_1C9064D9C();
          memcpy(v70, &__dst[13], 0x61uLL);
          sub_1C8CC1340(v70, v71);
          ContainerDefinition.hash(into:)(v73);
          memcpy(v71, __src, 0x61uLL);
          sub_1C8CC15FC(v71);
        }

        else
        {
          sub_1C9064D9C();
        }

        sub_1C9063FBC();
        sub_1C8D3F014(__dst);
        break;
      case 4uLL:
        v19 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v20 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        MEMORY[0x1CCA82810](4);
LABEL_18:
        sub_1C9063FBC();
        break;
      default:
        v18 = *(v16 + 16);
        MEMORY[0x1CCA82810](0);
        LOBYTE(__dst[0]) = v18;
        TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
        break;
    }

    result = sub_1C9064DBC();
    v54 = -1 << *(v5 + 32);
    v55 = result & ~v54;
    v56 = v55 >> 6;
    if (((-1 << v55) & ~*(v12 + 8 * (v55 >> 6))) == 0)
    {
      break;
    }

    v57 = __clz(__rbit64((-1 << v55) & ~*(v12 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
LABEL_69:
    *(v12 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
    *(*(v5 + 48) + 8 * v57) = v16;
    ++*(v5 + 16);
    v11 = v67;
    v10 = v68;
    if (!v68)
    {
      goto LABEL_9;
    }
  }

  v58 = 0;
  v59 = (63 - v54) >> 6;
  while (++v56 != v59 || (v58 & 1) == 0)
  {
    v60 = v56 == v59;
    if (v56 == v59)
    {
      v56 = 0;
    }

    v58 |= v60;
    v61 = *(v12 + 8 * v56);
    if (v61 != -1)
    {
      v57 = __clz(__rbit64(~v61)) + (v56 << 6);
      goto LABEL_69;
    }
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1C8D88C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314630, &qword_1C9074820);
  result = sub_1C906474C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C8D8D3E0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1C9064D7C();
    sub_1C9063FBC();
    result = sub_1C9064DBC();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C8D88E6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314680, &qword_1C9074860);
  result = sub_1C906474C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
      sub_1C8D8D3E0(0, (v27 + 63) >> 6, v3 + 56);
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
    v17 = (*(v3 + 48) + 136 * (v14 | (v7 << 6)));
    memcpy(__dst, v17, sizeof(__dst));
    v18 = *(v6 + 40);
    memcpy(v30, v17, sizeof(v30));
    sub_1C9064D7C();
    RestrictionContext.hash(into:)(v29);
    result = sub_1C9064DBC();
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
    result = memcpy((*(v6 + 48) + 136 * v22), __dst, 0x88uLL);
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

uint64_t sub_1C8D890F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314678, &qword_1C9074858);
  result = sub_1C906474C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
      sub_1C8D8D3E0(0, (v27 + 63) >> 6, v3 + 56);
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
    sub_1C9064D7C();
    MEMORY[0x1CCA82810](v17);
    result = sub_1C9064DBC();
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

uint64_t sub_1C8D89340(uint64_t a1)
{
  v2 = v1;
  v48 = sub_1C906359C();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v44 - v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
  result = sub_1C906474C();
  v15 = result;
  if (!*(v12 + 16))
  {
LABEL_32:

    *v2 = v15;
    return result;
  }

  v16 = 0;
  v17 = (v12 + 56);
  v18 = 1 << *(v12 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v12 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = (v4 + 32);
  v44 = v2;
  v45 = (v4 + 8);
  v22 = result + 56;
  v49 = v12;
  if (!v20)
  {
LABEL_9:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v16 >= v21)
      {
        break;
      }

      v25 = v17[v16];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    v43 = 1 << *(v12 + 32);
    if (v43 >= 64)
    {
      sub_1C8D8D3E0(0, (v43 + 63) >> 6, v17);
    }

    else
    {
      *v17 = -1 << v43;
    }

    v2 = v44;
    *(v12 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_14:
    v26 = *(v51 + 72);
    v27 = v53;
    sub_1C8D6DFF0(*(v12 + 48) + v26 * (v23 | (v16 << 6)), v53);
    v28 = *(v15 + 40);
    sub_1C9064D7C();
    v29 = v27;
    v30 = v50;
    sub_1C8D90EC8(v29, v50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v30;
      v31 = v30[1];
      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
    }

    else
    {
      v33 = v47;
      v34 = v48;
      (*v46)(v47, v30, v48);
      MEMORY[0x1CCA82810](0);
      sub_1C8D90F38(&qword_1EC313960, MEMORY[0x1E69E0838]);
      sub_1C9063E7C();
      (*v45)(v33, v34);
    }

    result = sub_1C9064DBC();
    v35 = -1 << *(v15 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    result = sub_1C8D6DFF0(v53, *(v15 + 48) + v38 * v26);
    ++*(v15 + 16);
    v12 = v49;
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  v39 = 0;
  v40 = (63 - v35) >> 6;
  while (++v37 != v40 || (v39 & 1) == 0)
  {
    v41 = v37 == v40;
    if (v37 == v40)
    {
      v37 = 0;
    }

    v39 |= v41;
    v42 = *(v22 + 8 * v37);
    if (v42 != -1)
    {
      v38 = __clz(__rbit64(~v42)) + (v37 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1C8D897C0(uint64_t a1)
{
  OUTLINED_FUNCTION_35_7(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314670, &qword_1C9074850);
  v3 = OUTLINED_FUNCTION_58_4();
  if (!*(v2 + 16))
  {
LABEL_28:

    *v1 = v3;
    return;
  }

  v42 = v1;
  v43 = v2;
  v4 = 0;
  v6 = (v2 + 56);
  v5 = *(v2 + 56);
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_7_17();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v3 + 56;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v15 = v4;
    while (1)
    {
      v4 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v12)
      {
        break;
      }

      ++v15;
      if (v6[v4])
      {
        OUTLINED_FUNCTION_10_6();
        v10 = v17 & v16;
        goto LABEL_9;
      }
    }

    v36 = *(v2 + 32);
    OUTLINED_FUNCTION_30_10();
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_13_12();
      *v6 = v39;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_27_8();
      sub_1C8D8D3E0(v40, v41, v6);
    }

    v1 = v42;
    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v18 = (*(v2 + 48) + 32 * (v14 | (v4 << 6)));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v3 + 40);
    sub_1C9064D7C();
    v44 = v20;
    sub_1C9063FBC();
    if (v22)
    {
      sub_1C9064D9C();
      v24 = v21;
      sub_1C9063FBC();
    }

    else
    {
      v24 = v21;
      sub_1C9064D9C();
    }

    sub_1C9064DBC();
    v25 = *(v3 + 32);
    OUTLINED_FUNCTION_12_10();
    v27 = *(v13 + 8 * v26);
    OUTLINED_FUNCTION_41_0();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    *(v13 + v32) |= v33;
    v35 = (*(v3 + 48) + 32 * v34);
    *v35 = v19;
    v35[1] = v44;
    v35[2] = v24;
    v35[3] = v22;
    ++*(v3 + 16);
    v2 = v43;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v13 + 8 * v29) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

unint64_t sub_1C8D899DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314650, &qword_1C9074838);
  result = sub_1C906474C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = result;
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
    v35 = result + 56;
    v36 = v3;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v16 = *(v3 + 48) + 104 * (v13 | (v7 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v21 = *(v16 + 32);
        v40 = *(v16 + 56);
        *v49 = *(v16 + 57);
        *&v49[3] = *(v16 + 60);
        v45 = *(v16 + 64);
        v47 = *(v16 + 72);
        v48 = *(v16 + 48);
        v22 = *(v16 + 88);
        v38 = *(v16 + 40);
        v39 = *(v16 + 80);
        v42 = *(v16 + 96);
        v23 = *(v6 + 40);
        sub_1C9064D7C();
        v43 = v18;
        v44 = v17;
        sub_1C9063FBC();
        v46 = v20;
        v24 = *(v20 + 16);
        MEMORY[0x1CCA82810](v24);
        if (v24)
        {
          v25 = (v46 + 40);
          do
          {
            v26 = *(v25 - 1);
            v27 = *v25;

            sub_1C9063FBC();

            v25 += 2;
            --v24;
          }

          while (v24);
        }

        v37 = v21;
        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v48)
        {
          v28 = v38;
          sub_1C9063FBC();
          v29 = v40;
        }

        else
        {
          v29 = v40;
          v28 = v38;
        }

        MEMORY[0x1CCA82810](v29);
        sub_1C9064D9C();
        if (v47)
        {
          sub_1C9063FBC();
        }

        v6 = v34;
        if (v22)
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        MEMORY[0x1CCA82810](v42);
        sub_1C9064DBC();
        v30 = -1 << *(v34 + 32);
        result = sub_1C90646FC();
        *(v35 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v31 = *(v34 + 48) + 104 * result;
        *v31 = v44;
        *(v31 + 8) = v43;
        *(v31 + 16) = v46;
        *(v31 + 24) = v19;
        *(v31 + 32) = v37;
        *(v31 + 40) = v28;
        *(v31 + 48) = v48;
        *(v31 + 56) = v29;
        *(v31 + 57) = *v49;
        *(v31 + 60) = *&v49[3];
        *(v31 + 64) = v45;
        *(v31 + 72) = v47;
        *(v31 + 80) = v39;
        *(v31 + 88) = v22;
        *(v31 + 96) = v42;
        ++*(v34 + 16);
        v3 = v36;
        v11 = v41;
      }

      while (v41);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_1C8D8D3E0(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    *(v3 + 16) = 0;
    v2 = v33;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C8D89DAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
  result = sub_1C906474C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
    if (v11)
    {
LABEL_8:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      goto LABEL_14;
    }

LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          sub_1C8D8D3E0(0, (v32 + 63) >> 6, v3 + 56);
        }

        else
        {
          *v8 = -1 << v32;
        }

        v2 = v33;
        *(v3 + 16) = 0;
        goto LABEL_39;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
LABEL_14:
        v17 = *(v3 + 48) + 16 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v6 + 40);
        sub_1C9064D7C();
        switch(v19 >> 5)
        {
          case 1u:
            v21 = 3;
            goto LABEL_22;
          case 2u:
            v22 = 4;
            goto LABEL_19;
          case 3u:
            v22 = 5;
LABEL_19:
            MEMORY[0x1CCA82810](v22);
            sub_1C8D3977C(__src, v18);
            sub_1C9064D9C();
            goto LABEL_23;
          case 4u:
            v21 = 6;
            goto LABEL_22;
          case 5u:
            v21 = 7;
            goto LABEL_22;
          case 6u:
            MEMORY[0x1CCA82810]((v18 | v19 ^ 0xC0) != 0);
            goto LABEL_23;
          default:
            v21 = 2;
LABEL_22:
            MEMORY[0x1CCA82810](v21);
            sub_1C8D3977C(__src, v18);
LABEL_23:
            result = sub_1C9064DBC();
            v23 = -1 << *(v6 + 32);
            v24 = result & ~v23;
            v25 = v24 >> 6;
            if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
            {
              v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v27 = 0;
              v28 = (63 - v23) >> 6;
              do
              {
                if (++v25 == v28 && (v27 & 1) != 0)
                {
                  goto LABEL_41;
                }

                v29 = v25 == v28;
                if (v25 == v28)
                {
                  v25 = 0;
                }

                v27 |= v29;
                v30 = *(v13 + 8 * v25);
              }

              while (v30 == -1);
              v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            }

            *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
            v31 = *(v6 + 48) + 16 * v26;
            *v31 = v18;
            *(v31 + 8) = v19;
            ++*(v6 + 16);
            if (!v11)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_39:

    *v2 = v6;
  }

  return result;
}

void sub_1C8D8A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  a31 = v34;
  a32 = v35;
  v70 = v36;
  OUTLINED_FUNCTION_8_19(v37, v38, v39);
  OUTLINED_FUNCTION_23_12();
  v40 = OUTLINED_FUNCTION_58_4();
  v41 = v40;
  if (!*(v33 + 16))
  {
LABEL_28:

    *v32 = v41;
    OUTLINED_FUNCTION_182();
    return;
  }

  v69 = v32;
  v42 = 0;
  v43 = (v33 + 56);
  v44 = 1 << *(v33 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v33 + 56);
  v47 = (v44 + 63) >> 6;
  v48 = v40 + 56;
  if (!v46)
  {
LABEL_7:
    v50 = v42;
    while (1)
    {
      v42 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v42 >= v47)
      {
        break;
      }

      ++v50;
      if (v43[v42])
      {
        OUTLINED_FUNCTION_10_6();
        v46 = v52 & v51;
        goto LABEL_12;
      }
    }

    v63 = *(v33 + 32);
    OUTLINED_FUNCTION_30_10();
    if (v64 != v65)
    {
      OUTLINED_FUNCTION_13_12();
      *v43 = v66;
    }

    else
    {
      v67 = OUTLINED_FUNCTION_27_8();
      sub_1C8D8D3E0(v67, v68, v33 + 56);
    }

    v32 = v69;
    *(v33 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_49_4();
LABEL_12:
    v53 = *(*(v33 + 48) + 8 * (v49 | (v42 << 6)));
    v54 = *(v41 + 40);
    a20 = v53;
    sub_1C9064D7C();
    v70(&a11);
    v55 = sub_1C9064DBC() & ~(-1 << *(v41 + 32));
    if (((-1 << v55) & ~*(v48 + 8 * (v55 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    *(v48 + v60) |= v61;
    *(*(v41 + 48) + 8 * v62) = v53;
    ++*(v41 + 16);
    if (!v46)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v59)
    {
      if (v57)
      {
        break;
      }
    }

    if (v56 == v58)
    {
      v56 = 0;
    }

    if (*(v48 + 8 * v56) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1C8D8A26C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314638, &qword_1C9074828);
  result = sub_1C906474C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
      sub_1C8D8D3E0(0, (v27 + 63) >> 6, v3 + 56);
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
    sub_1C9064D7C();
    sub_1C9063FBC();

    result = sub_1C9064DBC();
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

void sub_1C8D8A500(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_8_19(a1, a2, a3);
  OUTLINED_FUNCTION_23_12();
  v6 = OUTLINED_FUNCTION_58_4();
  if (!*(v5 + 16))
  {
LABEL_25:
    v52 = v6;

    *v4 = v52;
    return;
  }

  v53 = v4;
  v54 = v5;
  v7 = 0;
  v9 = (v5 + 56);
  v8 = *(v5 + 56);
  v10 = *(v5 + 32);
  OUTLINED_FUNCTION_7_17();
  v14 = (v13 + 63) >> 6;
  v16 = v15 + 56;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v14)
      {
        break;
      }

      ++v20;
      if (v9[v7])
      {
        OUTLINED_FUNCTION_10_6();
        v56 = v22 & v21;
        goto LABEL_9;
      }
    }

    v44 = *(v5 + 32);
    OUTLINED_FUNCTION_30_10();
    if (v45 != v46)
    {
      OUTLINED_FUNCTION_13_12();
      *v9 = v47;
    }

    else
    {
      v48 = OUTLINED_FUNCTION_27_8();
      v50 = v49;
      sub_1C8D8D3E0(v48, v51, v9);
      v6 = v50;
    }

    v4 = v53;
    *(v5 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_16();
LABEL_9:
    v23 = *(v5 + 48) + (v17 | (v7 << 6)) * v18;
    v25 = *v23;
    v24 = *(v23 + 8);
    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    v28 = *(v23 + 32);
    v29 = *(v19 + 40);
    v30 = v19;
    v31 = sub_1C9064D7C();
    a4(v31);
    sub_1C9063FBC();

    sub_1C9064DBC();
    v32 = *(v30 + 32);
    OUTLINED_FUNCTION_12_10();
    v34 = *(v16 + 8 * v33);
    OUTLINED_FUNCTION_41_0();
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_19:
    OUTLINED_FUNCTION_2_0();
    *(v16 + v39) |= v40;
    v43 = *(v41 + 48) + 40 * v42;
    *v43 = v25;
    *(v43 + 8) = v24;
    *(v43 + 16) = v27;
    *(v43 + 24) = v26;
    *(v43 + 32) = v28;
    ++*(v41 + 16);
    v5 = v54;
    if (!v56)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v35)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v16 + 8 * v36) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1C8D8A72C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_19(a1, a2, a3);
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_25_9();
  if (!v6)
  {
LABEL_28:

    *v3 = v4;
    return;
  }

  v7 = 0;
  v9 = (v5 + 56);
  v8 = *(v5 + 56);
  v10 = 1 << *(v5 + 32);
  v30 = v3;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = v4 + 56;
  if ((v11 & v8) == 0)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      ++v15;
      if (v9[v7])
      {
        OUTLINED_FUNCTION_10_6();
        v12 = v17 & v16;
        goto LABEL_12;
      }
    }

    if (v10 >= 64)
    {
      sub_1C8D8D3E0(0, (v10 + 63) >> 6, v5 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v3 = v30;
    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_49_4();
LABEL_12:
    v18 = *(*(v5 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = *(v4 + 40);
    v20 = sub_1C9064D6C();
    OUTLINED_FUNCTION_51_5(v20);
    if (((-1 << v22) & ~*(v13 + 8 * v21)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    *(v13 + v27) |= v28;
    *(*(v4 + 48) + 8 * v29) = v18;
    OUTLINED_FUNCTION_24_12();
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v26)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v13 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1C8D8A8BC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C906204C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314620, &qword_1C9074818);
  result = sub_1C906474C();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C8D8D3E0(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C8D90F38(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
    result = sub_1C9063E6C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1C8D8AC14(unint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v19 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8845C(v7 + 1);
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      sub_1C8D8E4D8(v7 + 1);
LABEL_8:
      v9 = *v3;
      v10 = *(*v3 + 40);
      v18[9] = v6;
      sub_1C9064D7C();
      TypeIdentifier.hash(into:)(v18);
      v11 = sub_1C9064DBC();
      v12 = ~(-1 << *(v9 + 32));
      while (1)
      {
        a2 = v11 & v12;
        if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v18[0] = *(*(v9 + 48) + 8 * a2);

        v13 = static TypeIdentifier.== infix(_:_:)(v18, &v19);

        if (v13)
        {
          goto LABEL_16;
        }

        v11 = a2 + 1;
      }

      v6 = v19;
      goto LABEL_13;
    }

    sub_1C8D8D6BC(&qword_1EC313980, &unk_1C906F400);
  }

LABEL_13:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_16:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }
}

void sub_1C8D8AD90(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C8D88C10(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C8D8ECC0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1C9064D7C();
      sub_1C9063FBC();
      v17 = sub_1C9064DBC();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_1C8D8D458();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1C8D8AEF8(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D88E6C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C8D8EEF4(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      memcpy(v22, __src, sizeof(v22));
      sub_1C9064D7C();
      RestrictionContext.hash(into:)(v21);
      v17 = sub_1C9064DBC();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = *(v15 + 48) + 136 * a2;
        memcpy(v21, v19, sizeof(v21));
        memcpy(v20, v19, sizeof(v20));
        sub_1C8D073F4(v21, v22);
        LOBYTE(v19) = static RestrictionContext.== infix(_:_:)();
        memcpy(v22, v20, sizeof(v22));
        sub_1C8D073A0(v22);
        if (v19)
        {
          goto LABEL_15;
        }

        v17 = a2 + 1;
      }
    }

    sub_1C8D8D534();
  }

LABEL_7:
  v10 = *v4;
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v10 + 48) + 136 * a2), __dst, 0x88uLL);
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C8D8B0C4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D890F4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C8D8F380(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1C9064D7C();
      MEMORY[0x1CCA82810](v5);
      result = sub_1C9064DBC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C8D8D774();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C8D8B1FC(uint64_t a1, unint64_t a2, char a3)
{
  v49 = sub_1C906359C();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v45 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314658, &qword_1C9074840);
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v55 = (v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v50 = v42 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v42 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v42[0] = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D89340(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_1C8D8D8B4();
        goto LABEL_25;
      }

      sub_1C8D8F59C(v21 + 1);
    }

    v23 = *v3;
    v24 = *(*v3 + 40);
    sub_1C9064D7C();
    sub_1C90364BC();
    v25 = sub_1C9064DBC();
    v53 = v23 + 56;
    v54 = v23;
    v26 = -1 << *(v23 + 32);
    a2 = v25 & ~v26;
    v27 = v50;
    if ((*(v23 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v52 = ~v26;
      v43 = (v7 + 32);
      v51 = *(v44 + 72);
      v47 = (v7 + 8);
      v48 = a1;
      v42[1] = v13;
      do
      {
        sub_1C8D90EC8(*(v54 + 48) + v51 * a2, v20);
        v28 = &v12[*(v56 + 48)];
        sub_1C8D90EC8(v20, v12);
        sub_1C8D90EC8(a1, v28);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1C8D90EC8(v12, v55);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            if (*v55 == *v28 && v55[1] == *(v28 + 1))
            {
              goto LABEL_28;
            }

            v30 = v55[1];
            v31 = sub_1C9064C2C();

            sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);

            if (v31)
            {
              goto LABEL_29;
            }

            goto LABEL_23;
          }

          sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);
          v32 = v55[1];
        }

        else
        {
          sub_1C8D90EC8(v12, v27);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v33 = v45;
            v34 = v49;
            (*v43)(v45, v28, v49);
            sub_1C8D90F38(&qword_1EC314660, MEMORY[0x1E69E0838]);
            v46 = sub_1C9063EAC();
            v35 = *v47;
            v36 = v50;
            (*v47)(v33, v34);
            sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);
            v27 = v36;
            v35(v36, v34);
            if (v46)
            {
              goto LABEL_29;
            }

LABEL_23:
            sub_1C8D14208(v12, &qword_1EC312DD0, &qword_1C9072940);
            a1 = v48;
            goto LABEL_24;
          }

          sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);
          (*v47)(v27, v49);
        }

        sub_1C8D14208(v12, &qword_1EC314658, &qword_1C9074840);
LABEL_24:
        a2 = (a2 + 1) & v52;
      }

      while (((*(v53 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_25:
  v37 = *v42[0];
  *(*v42[0] + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1C8D6DFF0(a1, *(v37 + 48) + *(v44 + 72) * a2);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_28:

    sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);

LABEL_29:
    sub_1C8D14208(v12, &qword_1EC312DD0, &qword_1C9072940);
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

void sub_1C8D8B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1C8D897C0(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C8D8DA9C();
        goto LABEL_27;
      }

      sub_1C8D8F9F4(v12 + 1);
    }

    v14 = *v6;
    v15 = *(*v6 + 40);
    sub_1C9064D7C();
    sub_1C9063FBC();
    sub_1C9064D9C();
    if (a4)
    {
      sub_1C9063FBC();
    }

    sub_1C9064DBC();
    v16 = v14 + 56;
    v17 = *(v14 + 32);
    OUTLINED_FUNCTION_13_12();
    a5 = v19 & ~v18;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v20 = ~v18;
      v21 = *(v14 + 48);
      do
      {
        v22 = (v21 + 32 * a5);
        v24 = v22[2];
        v23 = v22[3];
        v25 = *v22 == a1 && v22[1] == a2;
        if (v25 || (sub_1C9064C2C() & 1) != 0)
        {
          if (v23)
          {
            if (a4)
            {
              v26 = v24 == a3 && v23 == a4;
              if (v26 || (sub_1C9064C2C() & 1) != 0)
              {
                goto LABEL_30;
              }
            }
          }

          else if (!a4)
          {
            goto LABEL_30;
          }
        }

        a5 = (a5 + 1) & v20;
      }

      while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_45_9(*v33);
  v29 = (v28 + 32 * a5);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3140A8, &qword_1C9072948);
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }
}

uint64_t sub_1C8D8B9B0(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D899DC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1C8D8DBA0();
        goto LABEL_66;
      }

      sub_1C8D8FC14(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    memcpy(__dst, a1, 0x61uLL);
    sub_1C9064D7C();
    ContainerDefinition.hash(into:)(v46);
    v10 = sub_1C9064DBC();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v39 = *(a1 + 56);
      v35 = *(a1 + 96);
      v13 = *a1;
      v14 = a1[1];
      v15 = a1[2];
      v16 = a1[4];
      v44 = v16;
      v45 = a1[3];
      v43 = a1[6];
      v37 = a1[8];
      v38 = a1[9];
      v40 = a1[5];
      v34 = a1[10];
      v36 = a1[11];
      do
      {
        memcpy(__dst, (*(v8 + 48) + 104 * a2), 0x61uLL);
        v17 = __dst[0] == v13 && __dst[1] == v14;
        if (v17 || (sub_1C9064C2C() & 1) != 0)
        {
          v18 = *(__dst[2] + 16);
          if (v18 == *(v15 + 16))
          {
            if (v18)
            {
              v19 = __dst[2] == v15;
            }

            else
            {
              v19 = 1;
            }

            if (!v19)
            {
              v20 = (__dst[2] + 40);
              v21 = (v15 + 40);
              while (v18)
              {
                v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
                if (!v22 && (sub_1C9064C2C() & 1) == 0)
                {
                  goto LABEL_65;
                }

                v20 += 2;
                v21 += 2;
                if (!--v18)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_69;
            }

LABEL_28:
            v23 = __dst[3] == v45 && __dst[4] == v44;
            if (v23 || (sub_1C9064C2C() & 1) != 0)
            {
              if (__dst[6])
              {
                if (!v43)
                {
                  goto LABEL_65;
                }

                v24 = __dst[5] == v40 && __dst[6] == v43;
                if (!v24 && (sub_1C9064C2C() & 1) == 0)
                {
                  goto LABEL_65;
                }
              }

              else if (v43)
              {
                goto LABEL_65;
              }

              if (LOBYTE(__dst[7]) == v39)
              {
                if (__dst[9])
                {
                  if (!v38)
                  {
                    goto LABEL_65;
                  }

                  v25 = __dst[8] == v37 && __dst[9] == v38;
                  if (!v25 && (sub_1C9064C2C() & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (v38)
                {
                  goto LABEL_65;
                }

                if (!__dst[11])
                {
                  if (!v36)
                  {
                    sub_1C8CC1340(__dst, v46);
                    swift_bridgeObjectRelease_n();
LABEL_64:
                    v28 = LOBYTE(__dst[12]);
                    sub_1C8CC15FC(__dst);
                    if (v28 == v35)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_65;
                  }

LABEL_61:

                  goto LABEL_65;
                }

                if (!v36)
                {
                  goto LABEL_61;
                }

                if (__dst[10] == v34 && __dst[11] == v36)
                {
                  sub_1C8CC1340(__dst, v46);
                  goto LABEL_64;
                }

                v27 = sub_1C9064C2C();
                sub_1C8CC1340(__dst, v46);
                if (v27)
                {
                  goto LABEL_64;
                }

                sub_1C8CC15FC(__dst);
              }
            }
          }
        }

LABEL_65:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_66:
  v29 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v29 + 48) + 104 * a2), a1, 0x61uLL);
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

uint64_t sub_1C8D8BD54(uint64_t result, int a2, unint64_t a3, char a4)
{
  v9 = result;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C8D89DAC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1C8D8DD28();
        goto LABEL_45;
      }

      sub_1C8D8FF14(v10 + 1);
    }

    v12 = *v4;
    v13 = *(*v4 + 40);
    v38 = v9;
    v39 = a2;
    sub_1C9064D7C();
    ParameterRelationshipDefinition.Relation.hash(into:)(v37);
    result = sub_1C9064DBC();
    v14 = -1 << *(v12 + 32);
    a3 = result & ~v14;
    if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = a2 & 0xE0;
      v17 = a2 != 192 || v9 != 1;
      v18 = a2 != 192 || v9 != 0;
      v19 = v16 != 192 || v17;
      v20 = v16 != 192 || v18;
      v34 = v20;
      v35 = v19;
      v33 = 1;
      while (2)
      {
        v21 = *(v12 + 48) + 16 * a3;
        v6 = *v21;
        v5 = *(v21 + 8);
        switch(v5 >> 5)
        {
          case 1u:
            if ((a2 & 0xE0) != 0x20)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          case 2u:
            if ((a2 & 0xE0) != 0x40)
            {
              goto LABEL_37;
            }

            goto LABEL_30;
          case 3u:
            if ((a2 & 0xE0) != 0x60)
            {
              goto LABEL_37;
            }

LABEL_30:
            sub_1C8D07154(v6, v5);
            sub_1C8D07154(v9, a2);
            sub_1C8D07154(v6, v5);
            sub_1C8D2A4D8();
            v23 = v22;
            sub_1C8D07168(v6, v5);
            sub_1C8D07168(v6, v5);
            result = sub_1C8D07168(v9, a2);
            if ((v23 & 1) != 0 && ((v5 ^ a2) & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_44;
          case 4u:
            if ((a2 & 0xE0) != 0x80)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          case 5u:
            if ((a2 & 0xE0) != 0xA0)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          case 6u:
            if (v6 | v5 ^ 0xC0)
            {
              if ((v35 & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            else if ((v34 & 1) == 0)
            {
              goto LABEL_48;
            }

            v26 = v9;
            v27 = a2;
LABEL_43:
            sub_1C8D07154(v26, v27);
            sub_1C8D07168(v6, v5);
            result = sub_1C8D07168(v9, a2);
LABEL_44:
            a3 = (a3 + 1) & v15;
            if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              break;
            }

            continue;
          default:
            if (a2 >= 0x20u)
            {
LABEL_37:
              sub_1C8D07154(v9, a2);
              v26 = v6;
              v27 = v5;
              goto LABEL_43;
            }

LABEL_34:
            sub_1C8D07154(v6, v5);
            sub_1C8D07154(v9, a2);
            sub_1C8D07154(v6, v5);
            sub_1C8D2A4D8();
            v25 = v24;
            sub_1C8D07168(v6, v5);
            sub_1C8D07168(v6, v5);
            result = sub_1C8D07168(v9, a2);
            if (v25)
            {
              goto LABEL_50;
            }

            goto LABEL_44;
        }

        break;
      }
    }
  }

LABEL_45:
  v28 = *v36;
  *(*v36 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v29 = *(v28 + 48) + 16 * a3;
  *v29 = v9;
  *(v29 + 8) = a2;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_48:
    v33 = 0;
LABEL_49:
    sub_1C8D07168(v6, v5);
    sub_1C8D07168(v33, 0xC0u);
LABEL_50:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

void sub_1C8D8C248(uint64_t *a1, unint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8A500(v7 + 1, &qword_1EC314610, &qword_1C9074810, SystemTypeProtocol.Identifier.rawValue.getter);
    }

    else
    {
      if (v8 > v7)
      {
        sub_1C8D8E0B8(&qword_1EC314610, &qword_1C9074810);
        goto LABEL_137;
      }

      sub_1C8D9068C(v7 + 1, &qword_1EC314610, &qword_1C9074810, SystemTypeProtocol.Identifier.rawValue.getter);
    }

    v9 = *v3;
    v10 = sub_1C8D31238(*(*v3 + 40));
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v9 + 48) + 40 * a2;
        v14 = *v13;
        v4 = *(v13 + 8);
        v15 = *(v13 + 16);
        v16 = *(v13 + 24);
        v17 = *(v13 + 32);
        v52 = a2;
        v53 = v14;
        v49 = v17;
        if (!v17)
        {
          v54 = 0x80000001C90CA380;

          MEMORY[0x1CCA81A90](v14, v4);
          goto LABEL_14;
        }

        if (v17 == 1)
        {
          v54 = 0x80000001C90CA360;

          MEMORY[0x1CCA81A90](v15, v16);

          MEMORY[0x1CCA81A90](46, 0xE100000000000000);

          MEMORY[0x1CCA81A90](v14, v4);

LABEL_14:
          v18 = 0xD000000000000010;
          v19 = v54;
          goto LABEL_15;
        }

        if (!(v15 | v4 | v14 | v16))
        {
          v19 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          goto LABEL_15;
        }

        v28 = v15 | v4 | v16;
        v29 = v14 == 1 && v28 == 0;
        v18 = 0x6F6363416C69616DLL;
        v19 = 0xEB00000000746E75;
        if (!v29)
        {
          v30 = v53 == 2 && v28 == 0;
          v18 = 0x726464416C69616DLL;
          v19 = 0xED00006565737365;
          if (!v30)
          {
            v31 = v53 == 3 && v28 == 0;
            v18 = 0x7373654D6C69616DLL;
            v19 = 0xEB00000000656761;
            if (!v31)
            {
              if (v53 == 4 && v28 == 0)
              {
                v19 = 0xE700000000000000;
                v18 = 0x786F626C69616DLL;
                goto LABEL_15;
              }

              if (v53 == 5 && v28 == 0)
              {
                v18 = 0x654D746E65746E69;
                v38 = 0x6567617373;
LABEL_77:
                v19 = v38 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                goto LABEL_15;
              }

              if (v53 == 6 && v28 == 0)
              {
                v18 = 0x476567617373656DLL;
                v39 = 1886744434;
LABEL_82:
                v19 = v39 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                goto LABEL_15;
              }

              if (v53 == 7 && !v28)
              {
                v18 = 0xD000000000000012;
                v19 = 0x80000001C90CA340;
                goto LABEL_15;
              }

              if (v53 != 8 || v28)
              {
                if (v53 == 9 && !v28)
                {
                  v18 = 0x6E45657571696E75;
                  v39 = 2037672308;
                  goto LABEL_82;
                }

                if (v53 != 10 || v28)
                {
                  if (v53 == 11 && !v28)
                  {
                    v18 = 0x4564657865646E69;
                    v38 = 0x797469746ELL;
                    goto LABEL_77;
                  }

                  if (v53 != 12 || v28)
                  {
                    if (v53 != 13 || (v18 = 0xD000000000000010, v19 = 0x80000001C90CA300, v28))
                    {
                      if (v53 != 14 || v28)
                      {
                        if (v28)
                        {
                          v41 = 0;
                        }

                        else
                        {
                          v41 = v53 == 15;
                        }

                        if (v41)
                        {
                          v19 = 0xEC00000068637261;
                        }

                        else
                        {
                          v19 = 0xEF52434F68637261;
                        }

                        v18 = 0x65536C6175736976;
                      }

                      else
                      {
                        v18 = 0xD00000000000001ALL;
                        v19 = 0x80000001C90CA2E0;
                      }
                    }
                  }

                  else
                  {
                    v18 = 0xD000000000000015;
                    v19 = 0x80000001C90CA320;
                  }
                }

                else
                {
                  v18 = 0x6C62617461647075;
                  v19 = 0xEF797469746E4565;
                }
              }

              else
              {
                v19 = 0xEF797469746E4574;
                v18 = 0x6E6569736E617274;
              }
            }
          }
        }

LABEL_15:
        v50 = v16;
        v51 = v15;
        v20 = *a1;
        v21 = a1[1];
        if (!*(a1 + 32))
        {
          v55 = 0x80000001C90CA380;
          MEMORY[0x1CCA81A90](v20, v21);
          goto LABEL_19;
        }

        v22 = a1[2];
        v23 = a1[3];
        if (*(a1 + 32) == 1)
        {
          v55 = 0x80000001C90CA360;
          MEMORY[0x1CCA81A90](v22, v23);

          MEMORY[0x1CCA81A90](46, 0xE100000000000000);

          MEMORY[0x1CCA81A90](v20, v21);

LABEL_19:
          v24 = 0xD000000000000010;
          v25 = v55;
          goto LABEL_20;
        }

        if (v22 | v21 | v20 | v23)
        {
          v35 = v22 | v21 | v23;
          if (v20 == 1)
          {
            v24 = 0x6F6363416C69616DLL;
            v25 = 0xEB00000000746E75;
            if (!v35)
            {
              goto LABEL_20;
            }
          }

          if (v20 == 2)
          {
            v24 = 0x726464416C69616DLL;
            v25 = 0xED00006565737365;
            if (!v35)
            {
              goto LABEL_20;
            }
          }

          if (v20 == 3)
          {
            v24 = 0x7373654D6C69616DLL;
            v25 = 0xEB00000000656761;
            if (!v35)
            {
              goto LABEL_20;
            }
          }

          if (v20 != 4 || v35)
          {
            if (v20 != 5 || v35)
            {
              if (v20 == 6 && !v35)
              {
                v24 = 0x476567617373656DLL;
                v37 = 1886744434;
LABEL_75:
                v25 = v37 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                goto LABEL_20;
              }

              if (v20 == 7 && !v35)
              {
                v24 = 0xD000000000000012;
                v25 = 0x80000001C90CA340;
                goto LABEL_20;
              }

              if (v20 == 8 && !v35)
              {
                v25 = 0xEF797469746E4574;
                v24 = 0x6E6569736E617274;
                goto LABEL_20;
              }

              if (v20 == 9 && !v35)
              {
                v24 = 0x6E45657571696E75;
                v37 = 2037672308;
                goto LABEL_75;
              }

              if (v20 == 10 && !v35)
              {
                v24 = 0x6C62617461647075;
                v25 = 0xEF797469746E4565;
                goto LABEL_20;
              }

              if (v20 != 11 || v35)
              {
                if (v20 != 12 || v35)
                {
                  if (v20 != 13 || (v24 = 0xD000000000000010, v25 = 0x80000001C90CA300, v35))
                  {
                    if (v20 != 14 || v35)
                    {
                      if (v35)
                      {
                        v40 = 0;
                      }

                      else
                      {
                        v40 = v20 == 15;
                      }

                      if (v40)
                      {
                        v25 = 0xEC00000068637261;
                      }

                      else
                      {
                        v25 = 0xEF52434F68637261;
                      }

                      v24 = 0x65536C6175736976;
                    }

                    else
                    {
                      v24 = 0xD00000000000001ALL;
                      v25 = 0x80000001C90CA2E0;
                    }
                  }
                }

                else
                {
                  v24 = 0xD000000000000015;
                  v25 = 0x80000001C90CA320;
                }

                goto LABEL_20;
              }

              v24 = 0x4564657865646E69;
              v36 = 0x797469746ELL;
            }

            else
            {
              v24 = 0x654D746E65746E69;
              v36 = 0x6567617373;
            }

            v25 = v36 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          }

          else
          {
            v25 = 0xE700000000000000;
            v24 = 0x786F626C69616DLL;
          }
        }

        else
        {
          v25 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E75;
        }

LABEL_20:
        if (v18 == v24 && v19 == v25)
        {
          goto LABEL_140;
        }

        v27 = sub_1C9064C2C();
        sub_1C8D3ED20(v53, v4, v51, v50, v49);

        if (v27)
        {
          goto LABEL_141;
        }

        a2 = (v52 + 1) & v12;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_137:
  v42 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v43 = *(v42 + 48) + 40 * a2;
  v44 = *(a1 + 1);
  *v43 = *a1;
  *(v43 + 16) = v44;
  *(v43 + 32) = *(a1 + 32);
  v45 = *(v42 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_140:
    sub_1C8D3ED20(v53, v4, v51, v50, v49);

LABEL_141:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v47;
  }
}

uint64_t sub_1C8D8CBBC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1C8D8A26C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C8D8DF64();
      goto LABEL_27;
    }

    sub_1C8D90428(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1C8D30F0C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    if (v5)
    {
      v12 = 0x65676175676E616CLL;
    }

    else
    {
      v12 = 0x79616C70736964;
    }

    if (v5)
    {
      v13 = 0xED00006C65646F4DLL;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0x65676175676E616CLL : 0x79616C70736964;
      v15 = *(*(v8 + 48) + a2) ? 0xED00006C65646F4DLL : 0xE700000000000000;
      if (v14 == v12 && v15 == v13)
      {
        goto LABEL_30;
      }

      v17 = sub_1C9064C2C();

      if (v17)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
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
LABEL_30:

LABEL_31:
  result = sub_1C9064CAC();
  __break(1u);
  return result;
}

void sub_1C8D8CDBC(__int128 *a1, unint64_t a2, char a3)
{
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v13 = v31;
      sub_1C8D8A500(v11 + 1, &qword_1EC314600, &qword_1C9074800, SystemToolProtocol.Identifier.rawValue.getter);
      goto LABEL_10;
    }

    if (v12 <= v11)
    {
      v13 = v31;
      sub_1C8D9068C(v11 + 1, &qword_1EC314600, &qword_1C9074800, SystemToolProtocol.Identifier.rawValue.getter);
LABEL_10:
      v20 = *v13;
      v21 = sub_1C8D307DC(*(*v13 + 40));
      v32 = v20;
      v33 = ~(-1 << *(v20 + 32));
      v34 = v20 + 56;
      while (1)
      {
        a2 = v21 & v33;
        if (((*(v34 + (((v21 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v33)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = *(v32 + 48) + 40 * a2;
        v4 = *v22;
        v5 = *(v22 + 8);
        v6 = *(v22 + 16);
        v7 = *(v22 + 24);
        v8 = *(v22 + 32);
        v35 = *a1;
        v36 = a1[1];
        v37 = *(a1 + 32);
        sub_1C8D54590(*v22, v5, v6, v7, v8);
        SystemToolProtocol.Identifier.rawValue.getter();
        v24 = v23;
        v26 = v25;
        SystemToolProtocol.Identifier.rawValue.getter();
        if (v24 == v28 && v26 == v27)
        {
          goto LABEL_19;
        }

        v30 = sub_1C9064C2C();
        sub_1C8D3ED20(v4, v5, v6, v7, v8);

        if (v30)
        {
          goto LABEL_20;
        }

        v21 = a2 + 1;
      }
    }

    sub_1C8D8E0B8(&qword_1EC314600, &qword_1C9074800);
  }

LABEL_7:
  v14 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = a1[1];
  *v15 = *a1;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a1 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_19:
    sub_1C8D3ED20(v4, v5, v6, v7, v8);

LABEL_20:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v19;
  }
}

void sub_1C8D8D044(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8A72C(v8 + 1, a4, a5);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C8D90894();
LABEL_10:
      v15 = *v5;
      v16 = *(*v5 + 40);
      sub_1C9064D6C();
      v17 = *(v15 + 32);
      OUTLINED_FUNCTION_32_5();
      while (1)
      {
        a2 = v18 & v20;
        if (((*(v19 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v15 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v18 = a2 + 1;
      }
    }

    sub_1C8D8E1AC(a4, a5);
  }

LABEL_7:
  OUTLINED_FUNCTION_45_9(*v5);
  *(v11 + 8 * a2) = a1;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1C8D8D154(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C906204C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8A8BC(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C8D909E4(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C8D90F38(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
      v16 = sub_1C9063E6C();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C8D90F38(&qword_1EC314618, MEMORY[0x1E69695A8]);
        v18 = sub_1C9063EAC();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C8D8E2A4();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1C8D8D3E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C90747F0;
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

void sub_1C8D8D458()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314630, &qword_1C9074820);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_35();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_37_10(v5, v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v3)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      v16 = v11 | (v10 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = (v0[6] + 16 * v16);
      *v19 = *v17;
      v19[1] = v18;
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v13)
      {
        OUTLINED_FUNCTION_10_6();
        v3 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C8D8D534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314680, &qword_1C9074860);
  v2 = *v0;
  v3 = sub_1C906473C();
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
        v17 = v14 | (v8 << 6);
        v18 = 17 * v17;
        v19 = (*(v2 + 48) + 136 * v17);
        memcpy(__dst, v19, sizeof(__dst));
        memmove((*(v4 + 48) + 8 * v18), v19, 0x88uLL);
        result = sub_1C8D073F4(__dst, &v20);
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

void sub_1C8D8D6BC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_35();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_37_10(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v4)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      OUTLINED_FUNCTION_36_8(v12);
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v14)
      {
        OUTLINED_FUNCTION_10_6();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1C8D8D774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314678, &qword_1C9074858);
  v2 = *v0;
  v3 = sub_1C906473C();
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

void *sub_1C8D8D8B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
  v7 = *v0;
  v8 = sub_1C906473C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1C8D90EC8(*(v7 + 48) + v22, v6);
        result = sub_1C8D6DFF0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void sub_1C8D8DA9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314670, &qword_1C9074850);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_35();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_37_10(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_1_31();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v19 = v15 | (v9 << 6);
        v20 = (*(v1 + 48) + 32 * v19);
        v21 = v20[1];
        v23 = v20[2];
        v22 = v20[3];
        v24 = (v0[6] + 32 * v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v23;
        v24[3] = v22;
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_10_6();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C8D8DBA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314650, &qword_1C9074838);
  v2 = *v0;
  v3 = sub_1C906473C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1C8CC1340(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 104 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x61uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x61uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1C8D8DD28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
  v2 = *v0;
  v3 = sub_1C906473C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = sub_1C8D07154(v19, v20);
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

void sub_1C8D8DE88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314640, &qword_1C9074830);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_35();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_37_10(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v2)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      OUTLINED_FUNCTION_36_8(v10);
    }

    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v12)
      {
        OUTLINED_FUNCTION_10_6();
        v2 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C8D8DF64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314638, &qword_1C9074828);
  v2 = *v0;
  v3 = sub_1C906473C();
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

void sub_1C8D8E0B8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_0_35();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_37_10(v7, v8);
    }

    v12 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v5)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      v18 = 5 * (v13 | (v12 << 6));
      v19 = *(v3 + 48) + 8 * v18;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = v2[6] + 8 * v18;
      v25 = *(v19 + 32);
      *v24 = *v19;
      *(v24 + 8) = v21;
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      *(v24 + 32) = v25;
      sub_1C8D54590(v20, v21, v22, v23, v25);
    }

    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v15)
      {
        OUTLINED_FUNCTION_10_6();
        v5 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1C8D8E1AC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v5)
  {
    result = OUTLINED_FUNCTION_0_35();
    if (v9)
    {
      v10 = result >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      result = OUTLINED_FUNCTION_37_10(result, v7);
    }

    v11 = 0;
    v2[2] = *(v3 + 16);
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 56);
    for (i = (v12 + 63) >> 6; v14; *(v2[6] + 8 * v17) = *(*(v3 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v4 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v2;
  }

  return result;
}

void *sub_1C8D8E2A4()
{
  v1 = v0;
  v2 = sub_1C906204C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314620, &qword_1C9074818);
  v7 = *v0;
  v8 = sub_1C906473C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1C8D8E4D8(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400);
  result = sub_1C906474C();
  v5 = result;
  v70 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = v70 + 56;
    v8 = 1 << *(v70 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v70 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v68 = v11;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v69 = (v10 - 1) & v10;
LABEL_14:
        v16 = *(*(v70 + 48) + 8 * (v13 | (v6 << 6)));
        v17 = *(v5 + 40);
        sub_1C9064D7C();
        switch(v16 >> 61)
        {
          case 1uLL:
            v67 = v16;
            v33 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            MEMORY[0x1CCA82810](1);
            switch(v33)
            {
              case 0:
LABEL_25:
                v34 = 0;
                goto LABEL_58;
              case 1:
LABEL_43:
                v34 = 1;
                goto LABEL_58;
              case 2:
LABEL_49:
                v34 = 2;
                goto LABEL_58;
              case 3:
LABEL_51:
                v34 = 3;
                goto LABEL_58;
              case 4:
LABEL_46:
                v34 = 4;
                goto LABEL_58;
              case 5:
LABEL_53:
                v34 = 5;
                goto LABEL_58;
              case 6:
LABEL_55:
                v34 = 6;
                goto LABEL_58;
              case 7:
LABEL_52:
                v34 = 7;
                goto LABEL_58;
              case 8:
LABEL_57:
                v34 = 8;
                goto LABEL_58;
              case 9:
LABEL_48:
                v34 = 9;
                goto LABEL_58;
              case 10:
LABEL_56:
                v34 = 10;
                goto LABEL_58;
              case 11:
LABEL_45:
                v34 = 11;
                goto LABEL_58;
              case 12:
LABEL_47:
                v34 = 12;
                goto LABEL_58;
              case 13:
LABEL_54:
                v34 = 13;
                goto LABEL_58;
              case 14:
LABEL_44:
                v34 = 14;
                goto LABEL_58;
              case 15:
LABEL_50:
                v34 = 16;
LABEL_58:
                MEMORY[0x1CCA82810](v34);
LABEL_59:

                break;
              default:
                v36 = *(v33 + 16);
                MEMORY[0x1CCA82810](15);
                switch(v36 >> 61)
                {
                  case 1uLL:
                    v52 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    MEMORY[0x1CCA82810](1);
                    switch(v52)
                    {
                      case 0:
                        goto LABEL_25;
                      case 1:
                        goto LABEL_43;
                      case 2:
                        goto LABEL_49;
                      case 3:
                        goto LABEL_51;
                      case 4:
                        goto LABEL_46;
                      case 5:
                        goto LABEL_53;
                      case 6:
                        goto LABEL_55;
                      case 7:
                        goto LABEL_52;
                      case 8:
                        goto LABEL_57;
                      case 9:
                        goto LABEL_48;
                      case 10:
                        goto LABEL_56;
                      case 11:
                        goto LABEL_45;
                      case 12:
                        goto LABEL_47;
                      case 13:
                        goto LABEL_54;
                      case 14:
                        goto LABEL_44;
                      case 15:
                        goto LABEL_50;
                      default:
                        v61 = *(v52 + 16);
                        MEMORY[0x1CCA82810](15);
                        __dst[0] = v61;

                        TypeIdentifier.hash(into:)(v75);
                        break;
                    }

                    goto LABEL_60;
                  case 2uLL:
                    v41 = (v36 & 0x1FFFFFFFFFFFFFFFLL);
                    v42 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v43 = v41[3];
                    v63 = v5;
                    v44 = v7;
                    v45 = v41[4];
                    v46 = v41[5];
                    MEMORY[0x1CCA82810](2);

                    sub_1C9063FBC();
                    v5 = v63;
                    v7 = v44;
                    goto LABEL_39;
                  case 3uLL:
                    v64 = v7;
                    v47 = v36 & 0x1FFFFFFFFFFFFFFFLL;
                    memcpy(__dst, ((v36 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                    v48 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                    v49 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
                    memcpy(__src, ((v36 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
                    v50 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
                    v51 = *(v47 + 232);
                    MEMORY[0x1CCA82810](3);

                    ContainerDefinition.hash(into:)(v75);
                    if (v49)
                    {
                      v73[0] = v48;
                      v73[1] = v49;
                      memcpy(&v73[2], __src, 0x51uLL);
                      memcpy(v72, v73, 0x61uLL);
                      sub_1C9064D9C();
                      sub_1C8CC1340(v73, __dst);
                      ContainerDefinition.hash(into:)(v75);
                      memcpy(__dst, v72, 0x61uLL);
                      sub_1C8CC15FC(__dst);
                    }

                    else
                    {
                      sub_1C9064D9C();
                    }

                    v7 = v64;
                    v19 = v67;
                    sub_1C9063FBC();
                    v11 = v68;
                    goto LABEL_61;
                  case 4uLL:
                    v38 = v36 & 0x1FFFFFFFFFFFFFFFLL;
                    v39 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v40 = *(v38 + 24);
                    MEMORY[0x1CCA82810](4);

LABEL_39:
                    sub_1C9063FBC();
                    break;
                  default:
                    v37 = *(v36 + 16);
                    MEMORY[0x1CCA82810](0);
                    LOBYTE(__dst[0]) = v37;
                    TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                    goto LABEL_59;
                }

                break;
            }

LABEL_60:
            v19 = v16;
            v11 = v68;
            break;
          case 2uLL:
            v22 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v23 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v62 = v5;
            v24 = v7;
            v25 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v26 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            MEMORY[0x1CCA82810](2);
            v19 = v16;

            v11 = v68;
            sub_1C9063FBC();
            v5 = v62;
            v7 = v24;
            goto LABEL_18;
          case 3uLL:
            v66 = v16;
            memcpy(__dst, ((v16 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
            MEMORY[0x1CCA82810](3);
            v27 = __dst[2];

            sub_1C8D3EFB8(__dst, v73);
            sub_1C9063FBC();
            v28 = *(v27 + 16);
            MEMORY[0x1CCA82810](v28);
            if (v28)
            {
              v29 = (v27 + 40);
              do
              {
                v30 = *(v29 - 1);
                v31 = *v29;

                sub_1C9063FBC();

                v29 += 2;
                --v28;
              }

              while (v28);
            }

            v32 = __dst[6];
            sub_1C9063FBC();
            sub_1C9064D9C();
            if (v32)
            {
              sub_1C9063FBC();
            }

            v35 = __dst[9];
            MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
            sub_1C9064D9C();
            if (v35)
            {
              sub_1C9063FBC();
            }

            if (__dst[11])
            {
              MEMORY[0x1CCA82810](1);
              sub_1C9063FBC();
            }

            else
            {
              MEMORY[0x1CCA82810](0);
            }

            v11 = v68;
            MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
            if (__dst[14])
            {
              memcpy(__src, &__dst[13], sizeof(__src));
              sub_1C9064D9C();
              memcpy(v72, &__dst[13], 0x61uLL);
              sub_1C8CC1340(v72, v73);
              ContainerDefinition.hash(into:)(v75);
              memcpy(v73, __src, 0x61uLL);
              sub_1C8CC15FC(v73);
            }

            else
            {
              sub_1C9064D9C();
            }

            v19 = v66;
            sub_1C9063FBC();
            sub_1C8D3F014(__dst);
            break;
          case 4uLL:
            v20 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v21 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            MEMORY[0x1CCA82810](4);
            v19 = v16;

            v11 = v68;
LABEL_18:
            sub_1C9063FBC();
            break;
          default:
            v18 = *(v16 + 16);
            MEMORY[0x1CCA82810](0);
            LOBYTE(__dst[0]) = v18;
            v19 = v16;
            TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();

            break;
        }

LABEL_61:
        result = sub_1C9064DBC();
        v53 = -1 << *(v5 + 32);
        v54 = result & ~v53;
        v55 = v54 >> 6;
        if (((-1 << v54) & ~*(v12 + 8 * (v54 >> 6))) == 0)
        {
          break;
        }

        v56 = __clz(__rbit64((-1 << v54) & ~*(v12 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_70:
        *(v12 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        *(*(v5 + 48) + 8 * v56) = v19;
        ++*(v5 + 16);
        v10 = v69;
        if (!v69)
        {
          goto LABEL_9;
        }
      }

      v57 = 0;
      v58 = (63 - v53) >> 6;
      while (++v55 != v58 || (v57 & 1) == 0)
      {
        v59 = v55 == v58;
        if (v55 == v58)
        {
          v55 = 0;
        }

        v57 |= v59;
        v60 = *(v12 + 8 * v55);
        if (v60 != -1)
        {
          v56 = __clz(__rbit64(~v60)) + (v55 << 6);
          goto LABEL_70;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {
          goto LABEL_75;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v69 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_75:

    *v65 = v5;
  }

  return result;
}

uint64_t sub_1C8D8ECC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314630, &qword_1C9074820);
  result = sub_1C906474C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1C9064D7C();

        sub_1C9063FBC();
        result = sub_1C9064DBC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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

          v2 = v29;
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

uint64_t sub_1C8D8EEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314680, &qword_1C9074860);
  result = sub_1C906474C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 136 * (v13 | (v7 << 6)));
        memcpy(__dst, v16, 0x88uLL);
        v17 = *(v6 + 40);
        memcpy(v29, v16, sizeof(v29));
        sub_1C9064D7C();
        sub_1C8D073F4(__dst, v27);
        RestrictionContext.hash(into:)(v28);
        result = sub_1C9064DBC();
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
        result = memcpy((*(v6 + 48) + 136 * v21), __dst, 0x88uLL);
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

uint64_t sub_1C8D8F158(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313978, &qword_1C906F3F8);
  result = sub_1C906474C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C9064D7C();

        TypeInstance.hash(into:)();
        result = sub_1C9064DBC();
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
        *(*(v6 + 48) + 8 * v21) = v16;
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

uint64_t sub_1C8D8F380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314678, &qword_1C9074858);
  result = sub_1C906474C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C9064D7C();
        MEMORY[0x1CCA82810](v16);
        result = sub_1C9064DBC();
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

uint64_t sub_1C8D8F59C(uint64_t a1)
{
  v2 = v1;
  v46 = sub_1C906359C();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v42 - v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
  result = sub_1C906474C();
  v15 = result;
  if (*(v12 + 16))
  {
    v16 = 0;
    v17 = v12 + 56;
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v44 = (v4 + 32);
    v42 = v2;
    v43 = (v4 + 8);
    v22 = result + 56;
    v23 = v50;
    v47 = v12;
    if (v20)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v27 = *(v48 + 72);
        v28 = v51;
        sub_1C8D90EC8(*(v12 + 48) + v27 * (v24 | (v16 << 6)), v51);
        v29 = *(v15 + 40);
        sub_1C9064D7C();
        sub_1C8D90EC8(v28, v23);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = *v23;
          v31 = v23[1];
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          v32 = v45;
          v33 = v46;
          (*v44)(v45, v23, v46);
          MEMORY[0x1CCA82810](0);
          sub_1C8D90F38(&qword_1EC313960, MEMORY[0x1E69E0838]);
          sub_1C9063E7C();
          (*v43)(v32, v33);
        }

        result = sub_1C9064DBC();
        v34 = -1 << *(v15 + 32);
        v35 = result & ~v34;
        v36 = v35 >> 6;
        if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
        {
          break;
        }

        v37 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
        v23 = v50;
LABEL_26:
        *(v22 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        result = sub_1C8D6DFF0(v51, *(v15 + 48) + v37 * v27);
        ++*(v15 + 16);
        v12 = v47;
        if (!v20)
        {
          goto LABEL_9;
        }
      }

      v38 = 0;
      v39 = (63 - v34) >> 6;
      v23 = v50;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v22 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v25 = v16;
      while (1)
      {
        v16 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v16 >= v21)
        {

          v2 = v42;
          goto LABEL_30;
        }

        v26 = *(v17 + 8 * v16);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v20 = (v26 - 1) & v26;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v15;
  }

  return result;
}

void sub_1C8D8F9F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314670, &qword_1C9074850);
  v5 = sub_1C906474C();
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v6 = 0;
    v8 = v3 + 56;
    v7 = *(v3 + 56);
    v9 = *(v3 + 32);
    OUTLINED_FUNCTION_7_17();
    v13 = (v12 + 63) >> 6;
    v14 = v5 + 56;
    if ((v11 & v10) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_14_16();
LABEL_11:
        v19 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = *(v5 + 40);
        sub_1C9064D7C();

        v39 = v20;
        sub_1C9063FBC();
        if (v23)
        {
          sub_1C9064D9C();
          v25 = v22;
          sub_1C9063FBC();
        }

        else
        {
          v25 = v22;
          sub_1C9064D9C();
        }

        sub_1C9064DBC();
        v26 = *(v5 + 32);
        OUTLINED_FUNCTION_12_10();
        v28 = *(v14 + 8 * v27);
        OUTLINED_FUNCTION_41_0();
        if (v29)
        {
          break;
        }

        OUTLINED_FUNCTION_5_2();
LABEL_24:
        OUTLINED_FUNCTION_2_0();
        *(v14 + v33) |= v34;
        v36 = (*(v5 + 48) + 32 * v35);
        v3 = v38;
        *v36 = v39;
        v36[1] = v21;
        v36[2] = v25;
        v36[3] = v23;
        OUTLINED_FUNCTION_24_12();
        if (!v40)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_4_0();
      while (1)
      {
        OUTLINED_FUNCTION_26_5();
        if (v29)
        {
          if (v31)
          {
            break;
          }
        }

        if (v30 == v32)
        {
          v30 = 0;
        }

        if (*(v14 + 8 * v30) != -1)
        {
          OUTLINED_FUNCTION_3_5();
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_6:
      v16 = v6;
      while (1)
      {
        v6 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v6 >= v13)
        {

          v2 = v37;
          goto LABEL_28;
        }

        ++v16;
        if (*(v8 + 8 * v6))
        {
          OUTLINED_FUNCTION_10_6();
          v40 = v18 & v17;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }
}

uint64_t sub_1C8D8FC14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314650, &qword_1C9074838);
  result = sub_1C906474C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = v3;
      memcpy(__dst, (*(v3 + 48) + 104 * (v13 | (v7 << 6))), 0x61uLL);
      v17 = *(v6 + 40);
      sub_1C9064D7C();
      v18 = __dst[2];
      sub_1C8CC1340(__dst, v29);
      sub_1C9063FBC();
      v19 = *(v18 + 16);
      MEMORY[0x1CCA82810](v19);
      if (v19)
      {
        v20 = (v18 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;

          sub_1C9063FBC();

          v20 += 2;
          --v19;
        }

        while (v19);
      }

      v23 = __dst[6];
      sub_1C9063FBC();
      sub_1C9064D9C();
      if (v23)
      {
        sub_1C9063FBC();
      }

      v3 = v16;
      v24 = __dst[9];
      MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
      sub_1C9064D9C();
      if (v24)
      {
        sub_1C9063FBC();
      }

      if (__dst[11])
      {
        MEMORY[0x1CCA82810](1);
        sub_1C9063FBC();
      }

      else
      {
        MEMORY[0x1CCA82810](0);
      }

      MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
      sub_1C9064DBC();
      v25 = -1 << *(v6 + 32);
      v26 = sub_1C90646FC();
      *(i + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = memcpy((*(v6 + 48) + 104 * v26), __dst, 0x61uLL);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v15 = *(v8 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C8D8FF14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
  result = sub_1C906474C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    if (v10)
    {
LABEL_8:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      goto LABEL_14;
    }

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

        v2 = v31;
        goto LABEL_37;
      }

      v15 = *(v3 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
LABEL_14:
        v16 = *(v3 + 48) + 16 * (v13 | (v7 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v6 + 40);
        sub_1C9064D7C();
        switch(v18 >> 5)
        {
          case 1u:
            v20 = 3;
            goto LABEL_22;
          case 2u:
            v21 = 4;
            goto LABEL_19;
          case 3u:
            v21 = 5;
LABEL_19:
            MEMORY[0x1CCA82810](v21);

            sub_1C8D3977C(__src, v17);
            sub_1C9064D9C();
            goto LABEL_23;
          case 4u:
            v20 = 6;
            goto LABEL_22;
          case 5u:
            v20 = 7;
            goto LABEL_22;
          case 6u:
            MEMORY[0x1CCA82810]((v17 | v18 ^ 0xC0) != 0);
            goto LABEL_23;
          default:
            v20 = 2;
LABEL_22:
            MEMORY[0x1CCA82810](v20);

            sub_1C8D3977C(__src, v17);
LABEL_23:
            result = sub_1C9064DBC();
            v22 = -1 << *(v6 + 32);
            v23 = result & ~v22;
            v24 = v23 >> 6;
            if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) != 0)
            {
              v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v26 = 0;
              v27 = (63 - v22) >> 6;
              do
              {
                if (++v24 == v27 && (v26 & 1) != 0)
                {
                  goto LABEL_39;
                }

                v28 = v24 == v27;
                if (v24 == v27)
                {
                  v24 = 0;
                }

                v26 |= v28;
                v29 = *(v12 + 8 * v24);
              }

              while (v29 == -1);
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            }

            *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            v30 = *(v6 + 48) + 16 * v25;
            *v30 = v17;
            *(v30 + 8) = v18;
            ++*(v6 + 16);
            if (!v10)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

LABEL_37:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C8D90200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314640, &qword_1C9074830);
  result = sub_1C906474C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        result = sub_1C9064DBC();
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
        *(*(v6 + 48) + 8 * v21) = v16;
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

uint64_t sub_1C8D90428(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314638, &qword_1C9074828);
  result = sub_1C906474C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C9064D7C();
        sub_1C9063FBC();

        result = sub_1C9064DBC();
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

void sub_1C8D9068C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_35_7(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = sub_1C906474C();
  if (*(v5 + 16))
  {
    v46 = v4;
    v47 = v5;
    v9 = 0;
    v11 = v5 + 56;
    v10 = *(v5 + 56);
    v12 = *(v5 + 32);
    OUTLINED_FUNCTION_7_17();
    v16 = (v15 + 63) >> 6;
    v17 = v8 + 56;
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_14_16();
LABEL_9:
        v21 = *(v5 + 48) + (v18 | (v9 << 6)) * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        v26 = *(v21 + 32);
        v27 = *(v8 + 40);
        sub_1C9064D7C();
        v28 = OUTLINED_FUNCTION_10_15();
        v33 = sub_1C8D54590(v28, v29, v30, v31, v32);
        a4(v33);
        sub_1C9063FBC();

        sub_1C9064DBC();
        v34 = *(v8 + 32);
        OUTLINED_FUNCTION_12_10();
        v36 = *(v17 + 8 * v35);
        OUTLINED_FUNCTION_41_0();
        if (v37)
        {
          break;
        }

        OUTLINED_FUNCTION_5_2();
LABEL_19:
        OUTLINED_FUNCTION_2_0();
        *(v17 + v41) |= v42;
        v44 = *(v8 + 48) + 40 * v43;
        *v44 = v22;
        *(v44 + 8) = v23;
        *(v44 + 16) = v24;
        *(v44 + 24) = v25;
        *(v44 + 32) = v26;
        OUTLINED_FUNCTION_24_12();
        v5 = v47;
        if (!v45)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_4_0();
      while (1)
      {
        OUTLINED_FUNCTION_26_5();
        if (v37)
        {
          if (v39)
          {
            break;
          }
        }

        if (v38 == v40)
        {
          v38 = 0;
        }

        if (*(v17 + 8 * v38) != -1)
        {
          OUTLINED_FUNCTION_3_5();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v9;
      while (1)
      {
        v9 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v9 >= v16)
        {

          v4 = v46;
          goto LABEL_23;
        }

        ++v20;
        if (*(v11 + 8 * v9))
        {
          OUTLINED_FUNCTION_10_6();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v4 = v8;
  }
}

void sub_1C8D90894()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_8_19(v2, v3, v4);
  OUTLINED_FUNCTION_23_12();
  v6 = v5;
  sub_1C906474C();
  OUTLINED_FUNCTION_25_9();
  if (v7)
  {
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    if (v11)
    {
      while (1)
      {
        OUTLINED_FUNCTION_22();
LABEL_12:
        v18 = *(*(v1 + 48) + 8 * (v14 | (v8 << 6)));
        v19 = *(v6 + 40);
        v20 = sub_1C9064D6C();
        OUTLINED_FUNCTION_51_5(v20);
        if (((-1 << v22) & ~*(v13 + 8 * v21)) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_5_2();
LABEL_22:
        OUTLINED_FUNCTION_2_0();
        *(v13 + v27) |= v28;
        *(*(v6 + 48) + 8 * v29) = v18;
        OUTLINED_FUNCTION_24_12();
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_4_0();
      while (1)
      {
        OUTLINED_FUNCTION_26_5();
        if (v26)
        {
          if (v24)
          {
            break;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        if (*(v13 + 8 * v23) != -1)
        {
          OUTLINED_FUNCTION_3_5();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {
          goto LABEL_24;
        }

        ++v15;
        if (*(v1 + 56 + 8 * v8))
        {
          OUTLINED_FUNCTION_10_6();
          v11 = v17 & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    *v0 = v6;
    OUTLINED_FUNCTION_163();
  }
}

uint64_t sub_1C8D909E4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C906204C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314620, &qword_1C9074818);
  v10 = sub_1C906474C();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C8D90F38(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
        result = sub_1C9063E6C();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
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
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C8D90EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D90F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_35_7(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void *OUTLINED_FUNCTION_37_10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_56_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v7 = *(a5 + 32);
  *(v5 + 32) = v7;

  return sub_1C8D54590(a1, a2, a3, a4, v7);
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_1C8D07168(v1, v0);
}

uint64_t AssistantEntitySchemaDefinition.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v60 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v26 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v27 = a1;
  sub_1C8CC0620(a1 + *(v26 + 20), v25, &qword_1EC313F20, &unk_1C9074D20);
  sub_1C8D60A64();
  v28 = v79;
  sub_1C906351C();
  if (v28)
  {
    OUTLINED_FUNCTION_0_36();
    return sub_1C8D919F8(a1, v29);
  }

  else
  {
    v66 = v26;
    v72 = v19;
    v79 = 0;
    v31 = v84;
    v64 = v87;
    v65 = v86;
    v32 = v88;
    v33 = *a1;
    v34 = *(*v27 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v60 = v84;
      v61 = v88;
      v62 = v85;
      v63 = v27;
      v80 = MEMORY[0x1E69E7CC0];
      v67 = v34;
      result = sub_1C8D09884(0, v34, 0);
      v36 = 0;
      v37 = v80;
      v38 = v73;
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v71 = v33;
      v70 = v33 + v39;
      v41 = v74;
      v40 = v75;
      v42 = v76;
      v69 = a2;
      v68 = v9;
      while (v36 < *(v71 + 16))
      {
        v78 = v37;
        sub_1C8D91994(v70 + *(v38 + 72) * v36, v41);
        sub_1C8D91994(v41, v40);
        v77 = *v40;
        v43 = v9;
        v45 = v40[1];
        v44 = v40[2];
        v46 = v40[3];
        sub_1C8CC0620(v40 + *(v43 + 24), v42, &qword_1EC312A58, &unk_1C9074CC0);
        sub_1C8D1FD40();

        v47 = v79;
        sub_1C906351C();
        if (v47)
        {

          sub_1C8D919F8(v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
          sub_1C8D919F8(v41, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

          OUTLINED_FUNCTION_0_36();
          sub_1C8D919F8(v63, v53);
        }

        v79 = 0;
        sub_1C8D919F8(v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
        result = sub_1C8D919F8(v41, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
        v48 = v89;
        v37 = v78;
        v80 = v78;
        v50 = *(v78 + 16);
        v49 = *(v78 + 24);
        if (v50 >= v49 >> 1)
        {
          result = sub_1C8D09884((v49 > 1), v50 + 1, 1);
          v37 = v80;
        }

        ++v36;
        *(v37 + 16) = v50 + 1;
        v51 = (v37 + 40 * v50);
        v42 = v76;
        v51[4] = v77;
        v51[5] = v45;
        v51[6] = v44;
        v51[7] = v46;
        v51[8] = v48;
        a2 = v69;
        v9 = v68;
        v41 = v74;
        v40 = v75;
        v52 = v72;
        v38 = v73;
        if (v67 == v36)
        {
          v35 = v37;
          v27 = v63;
          v54 = v62;
          v32 = v61;
          v31 = v60;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v54 = v85;
      v52 = v72;
LABEL_13:
      sub_1C8CC0620(v27 + *(v66 + 24), v52, &qword_1EC313F18, &unk_1C9072A20);
      sub_1C8D60FB8();
      v55 = v79;
      sub_1C906351C();
      if (v55)
      {
        sub_1C8D919F8(v27, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      }

      else
      {
        result = sub_1C8D919F8(v27, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
        v56 = v80;
        v57 = v81;
        v58 = v83;
        *a2 = v31;
        *(a2 + 8) = v54;
        v59 = v64;
        *(a2 + 16) = v65;
        *(a2 + 32) = v59;
        *(a2 + 48) = v32;
        *(a2 + 56) = v35;
        *(a2 + 64) = v56;
        *(a2 + 72) = v57;
        *(a2 + 80) = v82;
        *(a2 + 96) = v58;
      }
    }
  }

  return result;
}

uint64_t AssistantEntitySchemaDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a1;
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v45 - v18);
  v20 = *v2;
  v21 = v2[1];
  v53 = *(v2 + 1);
  v22 = v2[4];
  v23 = v2[5];
  v24 = v2[6];
  v54 = v2[7];
  v25 = v2[8];
  v47 = v2[9];
  v48 = v25;
  v26 = v2[10];
  v46 = v2[11];
  v49 = v2[12];
  v50 = v26;
  v27 = *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v13 = v53;
  *(v13 + 2) = v22;
  OUTLINED_FUNCTION_6_10(v13, 0);
  v28 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v29 = *(v28 + 24);
  OUTLINED_FUNCTION_6_10(v19 + v29, 1);
  v30 = v19 + *(v28 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v19 = v20;
  v19[1] = v21;
  sub_1C8D61094(v13, v19 + v29, &qword_1EC313F28, &qword_1C9072058);
  v19[2] = v23;
  v19[3] = v24;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v28);
  v56 = v55;
  v31 = v57;
  sub_1C8D3FE00();
  if (v31)
  {
    return sub_1C8D6102C(v19);
  }

  v34 = v32;
  v35 = *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
  v36 = v46;

  v37 = v49;

  v38 = v47;

  v39 = v51;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v39 = v48;
  v39[1] = v38;
  v39[3] = v50;
  v39[4] = v36;
  v39[2] = v37;
  OUTLINED_FUNCTION_6_10(v39, 0);
  v40 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v41 = v40[5];
  v42 = v52;
  __swift_storeEnumTagSinglePayload(v52 + v41, 1, 1, v28);
  v43 = v40[6];
  OUTLINED_FUNCTION_6_10(v42 + v43, 1);
  v44 = v42 + v40[7];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8D61094(v19, v42 + v41, &qword_1EC313F20, &unk_1C9074D20);
  *v42 = v34;
  return sub_1C8D61094(v39, v42 + v43, &qword_1EC313F18, &unk_1C9072A20);
}

void sub_1C8D91910(__int128 *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  EntityPropertyDefinition.protobuf(useCase:)();
  if (v3)
  {
    *a3 = v3;
  }
}

uint64_t sub_1C8D91994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D919F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D91A74()
{
  result = qword_1EC314688;
  if (!qword_1EC314688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314688);
  }

  return result;
}

uint64_t sub_1C8D91AC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_1C8D91B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C8D91B68@<D0>(uint64_t a1@<X8>)
{
  sub_1C8D922EC();
  sub_1C9062E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146A8, &unk_1C9074990);
  sub_1C8D92340();
  sub_1C8D923A4();
  sub_1C9062E1C();

  *a1 = v4;
  *(a1 + 16) = v5;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1C8D91C48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90CA3C0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657361726870 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D91D18(char a1)
{
  if (a1)
  {
    return 0x73657361726870;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void *sub_1C8D91D54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314690, &qword_1C9074988);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D92104();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = 0;
  sub_1C8D92158();
  sub_1C9064A6C();
  v29 = v23;
  v30 = v24;
  v7 = v26;
  v31 = v25;
  v8 = v28;
  v13 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146A8, &unk_1C9074990);
  v32 = 1;
  sub_1C8D921AC();
  sub_1C9064A6C();
  v9 = OUTLINED_FUNCTION_29();
  v10(v9);
  v11 = v22;
  v15[0] = v29;
  v15[1] = v30;
  *&v15[2] = v31;
  *(&v15[2] + 1) = v7;
  *&v15[3] = v13;
  *(&v15[3] + 1) = v8;
  *&v15[4] = v22;
  sub_1C8D92284(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v16[0] = v29;
  v16[1] = v30;
  v17 = v31;
  v18 = v7;
  v19 = v13;
  v20 = v8;
  v21 = v11;
  sub_1C8D922BC(v16);
  return memcpy(a2, v15, 0x48uLL);
}

uint64_t sub_1C8D91FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D91C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D92000(uint64_t a1)
{
  v2 = sub_1C8D92104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D9203C(uint64_t a1)
{
  v2 = sub_1C8D92104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8D92078@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8D91D54(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

unint64_t sub_1C8D92104()
{
  result = qword_1EC314698;
  if (!qword_1EC314698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314698);
  }

  return result;
}

unint64_t sub_1C8D92158()
{
  result = qword_1EC3146A0;
  if (!qword_1EC3146A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146A0);
  }

  return result;
}

unint64_t sub_1C8D921AC()
{
  result = qword_1EC3146B0;
  if (!qword_1EC3146B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3146A8, &unk_1C9074990);
    sub_1C8D92230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146B0);
  }

  return result;
}

unint64_t sub_1C8D92230()
{
  result = qword_1EC3146B8;
  if (!qword_1EC3146B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146B8);
  }

  return result;
}

unint64_t sub_1C8D922EC()
{
  result = qword_1EC3146C0;
  if (!qword_1EC3146C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146C0);
  }

  return result;
}

unint64_t sub_1C8D92340()
{
  result = qword_1EC3146C8;
  if (!qword_1EC3146C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3146A8, &unk_1C9074990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146C8);
  }

  return result;
}

unint64_t sub_1C8D923A4()
{
  result = qword_1EC3146D0;
  if (!qword_1EC3146D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146D0);
  }

  return result;
}

uint64_t sub_1C8D923F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v27 = *(a1 + 64);
  v4 = *(v27 + 16);
  if (v4)
  {
    v5 = ( + 72);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v5 - 16))
      {
        v9 = *(v5 - 1);
        v8 = *v5;
        if (*(v5 - 16) == 1)
        {
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = *(v7 + 16);
            sub_1C8D00CA4();
            v7 = v17;
          }

          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          v12 = v11 + 1;
          if (v11 >= v10 >> 1)
          {
            OUTLINED_FUNCTION_1_32(v10);
            sub_1C8D00CA4();
            v13 = v18;
            v7 = v18;
          }

          else
          {
            v13 = v7;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v13 = v6;
          }

          else
          {
            v19 = *(v6 + 16);
            sub_1C8D00CA4();
            v13 = v20;
          }

          v11 = *(v13 + 16);
          v14 = *(v13 + 24);
          v12 = v11 + 1;
          if (v11 >= v14 >> 1)
          {
            OUTLINED_FUNCTION_1_32(v14);
            sub_1C8D00CA4();
            v13 = v21;
            v6 = v21;
          }

          else
          {
            v6 = v13;
          }
        }

        *(v13 + 16) = v12;
        v15 = v13 + 16 * v11;
        *(v15 + 32) = v9;
        *(v15 + 40) = v8;
      }

      v5 += 6;
      --v4;
    }

    while (v4);
    sub_1C8D925B0(&v27);
    v2 = a1;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v2 + 48);
  v22 = v26;
  sub_1C8D29F88(&v26, v25);
  result = sub_1C8D922BC(v2);
  *a2 = v7;
  *(a2 + 8) = v22;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1C8D925B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146A8, &unk_1C9074990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FetchedSampleInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D926F8()
{
  result = qword_1EC3146D8;
  if (!qword_1EC3146D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146D8);
  }

  return result;
}

unint64_t sub_1C8D92750()
{
  result = qword_1EC3146E0;
  if (!qword_1EC3146E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146E0);
  }

  return result;
}

unint64_t sub_1C8D927A8()
{
  result = qword_1EC3146E8;
  if (!qword_1EC3146E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146E8);
  }

  return result;
}

uint64_t sub_1C8D927FC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *MEMORY[0x1E69E1140];
  result = os_variant_has_internal_content();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v18 - 2) = a1;
    *(&v18 - 1) = a2;
    sub_1C8D94044(qword_1EDA64C68, type metadata accessor for ToolKitProtoIndexingLogEntry);
    sub_1C9063ACC();
    v14 = [*(v2 + 16) source];
    sub_1C8CE919C(v11, v8);
    v15 = type metadata accessor for IndexingLog.Entry();
    v16 = objc_allocWithZone(v15);
    sub_1C8CE919C(v8, v16 + OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry);
    v19.receiver = v16;
    v19.super_class = v15;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    sub_1C8CE9200(v8);
    [v14 sendEvent_];

    return sub_1C8CE9200(v11);
  }

  return result;
}

uint64_t sub_1C8D929E8(uint64_t a1, void (*a2)(__n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v11 - v7;
  a2(v6);
  v9 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  return sub_1C8D93FDC(v8, a1, &qword_1EC3141D8, &qword_1C909DFF0);
}

uint64_t sub_1C8D92AFC()
{
  sub_1C906359C();
  sub_1C8D94044(&qword_1EDA62BD8, MEMORY[0x1E69E0838]);
  sub_1C90636EC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92C0C()
{
  sub_1C90636AC();
  sub_1C8D94044(&qword_1EDA62BC8, MEMORY[0x1E69E08A0]);
  sub_1C90636EC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92D18@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1C906200C();
  v10 = v9;
  sub_1C906357C();
  sub_1C8D94044(&qword_1EDA666B8, MEMORY[0x1E69E0830]);
  sub_1C90636EC();
  v11 = type metadata accessor for ToolKitProtoChangeset(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  v12 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  v13 = *(v12 + 24);
  __swift_storeEnumTagSinglePayload(a2 + v13, 1, 1, v11);
  v14 = a2 + *(v12 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a2 = v8;
  a2[1] = v10;
  sub_1C8D93FDC(v7, a2 + v13, &qword_1EC3141E0, &unk_1C90729F0);
  a2[2] = a1;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92ECC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1C8D92D18(v1[4], a1);
}

uint64_t sub_1C8D92F14()
{
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  sub_1C8D94044(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92FE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C8D92F14();
}

uint64_t sub_1C8D92FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C906200C();
  v9 = v8;
  v10 = *(a1 + 8);

  *a1 = v7;
  *(a1 + 8) = v9;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  LOBYTE(v9) = *(a1 + 32);

  sub_1C8D93F28(v12, v11, v9);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  result = sub_1C8CE5490(*(a1 + 40), *(a1 + 48));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t IndexingLog.log(successfulIndexOfType:in:)(uint64_t *a1)
{
  v4 = *a1;
  v1 = OUTLINED_FUNCTION_0_3();
  return sub_1C8D927FC(v1, v2);
}

uint64_t sub_1C8D930F0()
{
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  sub_1C8D94044(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D931B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D930F0();
}

uint64_t sub_1C8D931BC(uint64_t a1)
{
  v2 = sub_1C906200C();
  v4 = v3;
  v5 = *(a1 + 8);

  *a1 = v2;
  *(a1 + 8) = v4;
  v6 = TypeIdentifier.debugDescription.getter();
  v8 = v7;
  sub_1C8D93F28(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 1;
  result = sub_1C8CE5490(*(a1 + 40), *(a1 + 48));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1C8D93264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a4;
  v7[6] = a5;
  return sub_1C8D927FC(a6, v7);
}

uint64_t sub_1C8D93298()
{
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  sub_1C8D94044(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D9338C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1C8D93298();
}

uint64_t sub_1C8D933B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v13 = sub_1C906200C();
  v15 = v14;
  v16 = *(a1 + 8);

  *a1 = v13;
  *(a1 + 8) = v15;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  LOBYTE(v15) = *(a1 + 32);

  sub_1C8D93F28(v18, v17, v15);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a7;
  if (a6)
  {
    v19 = a5;
  }

  else
  {
    v19 = 0;
  }

  if (a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v22 = *(a1 + 40);
  v21 = *(a1 + 48);

  result = sub_1C8CE5490(v22, v21);
  *(a1 + 40) = v19;
  *(a1 + 48) = v20;
  return result;
}

uint64_t sub_1C8D934B8()
{
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  sub_1C8D94044(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D9357C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D934B8();
}

uint64_t sub_1C8D93584(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C906369C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C906200C();
  v12 = v11;
  v13 = a1[1];

  *a1 = v10;
  a1[1] = v12;
  (*(v6 + 16))(v9, a3, v5);
  v14 = (*(v6 + 88))(v9, v5);
  v15 = 0;
  if (v14 == *MEMORY[0x1E69E0890])
  {
    goto LABEL_4;
  }

  if (v14 == *MEMORY[0x1E69E0898])
  {
    v15 = 1;
LABEL_4:
    result = sub_1C8D93ECC(a1[2], a1[3]);
    a1[2] = 0;
    a1[3] = v15;
    return result;
  }

  result = sub_1C9064C1C();
  __break(1u);
  return result;
}

uint64_t sub_1C8D9371C()
{
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  sub_1C8D94044(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D937E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D9371C();
}

uint64_t sub_1C8D937E8(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_1C906200C();
  v7 = v6;
  v8 = a1[1];

  *a1 = v5;
  a1[1] = v7;
  v9 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v10 = sub_1C9063F4C();
  v12 = v11;
  result = sub_1C8D93ECC(a1[2], a1[3]);
  a1[2] = v10;
  a1[3] = v12;
  return result;
}

uint64_t sub_1C8D938D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D93C3C();
}

uint64_t sub_1C8D9395C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ToolKitProtoWALOperationEnd(0) + 36);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  *(a6 + 28) = a5;
  *(a6 + 32) = BYTE4(a5) & 1;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93A7C()
{
  v0 = OUTLINED_FUNCTION_1_33();
  type metadata accessor for ToolKitProtoWALOperationEnd(v0);
  sub_1C8D94044(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd);
  OUTLINED_FUNCTION_0_3();
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93B40()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C8D93A7C();
}

uint64_t sub_1C8D93B4C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v9 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v10 = sub_1C9063F4C();
  v12 = v11;
  v13 = a1[6];

  a1[5] = v10;
  a1[6] = v12;
  return result;
}

uint64_t sub_1C8D93C3C()
{
  v3 = OUTLINED_FUNCTION_1_33();
  v5 = v2 + *(v4(v3) + 20);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D93C3C();
}

uint64_t sub_1C8D93D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for ToolKitProtoVacuumOperationEnd(0) + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  a3[2] = 0;
  a3[3] = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93DD4@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v8 = sub_1C9063F4C();
  v10 = v9;
  v11 = a4 + *(type metadata accessor for ToolKitProtoVacuumOperationEnd(0) + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v8;
  a4[3] = v10;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93ECC(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C8D93EDC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C8D93EDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C8D93F28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return OUTLINED_FUNCTION_265();
  }

  return result;
}

uint64_t sub_1C8D93F40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C8D931BC(a1);
}

uint64_t sub_1C8D93FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C8D94044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8D940B4(uint64_t a1)
{
  v2 = sub_1C8D94240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D940F0(uint64_t a1)
{
  v2 = sub_1C8D94240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SuggestedPredicate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146F8, &qword_1C9074AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D94240();
  sub_1C9064E1C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1C8D94240()
{
  result = qword_1EDA63580;
  if (!qword_1EDA63580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63580);
  }

  return result;
}

unint64_t sub_1C8D9432C(void *a1)
{
  a1[1] = sub_1C8D9436C();
  a1[2] = sub_1C8D943C0();
  a1[3] = sub_1C8D94414();
  result = sub_1C8D94468();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D9436C()
{
  result = qword_1EC314700;
  if (!qword_1EC314700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314700);
  }

  return result;
}

unint64_t sub_1C8D943C0()
{
  result = qword_1EDA63560;
  if (!qword_1EDA63560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63560);
  }

  return result;
}

unint64_t sub_1C8D94414()
{
  result = qword_1EDA63568;
  if (!qword_1EDA63568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63568);
  }

  return result;
}

unint64_t sub_1C8D94468()
{
  result = qword_1EC314708;
  if (!qword_1EC314708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314708);
  }

  return result;
}

unint64_t sub_1C8D944C0()
{
  result = qword_1EC314710;
  if (!qword_1EC314710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314710);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestedPredicate(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D94604()
{
  result = qword_1EDA63570;
  if (!qword_1EDA63570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63570);
  }

  return result;
}

unint64_t sub_1C8D9465C()
{
  result = qword_1EDA63578;
  if (!qword_1EDA63578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63578);
  }

  return result;
}

void ToolKitProtoDisplayRepresentation.init(title:subtitle:altText:image:synonyms:snippetPluginModel:)()
{
  OUTLINED_FUNCTION_301_0();
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_214_1();
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(v6);
  v8 = v7[6];
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v7[7];
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v7[8];
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v7[9];
  type metadata accessor for ToolKitProtoPluginModelData(0);
  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = v0 + v7[10];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v5;
  v0[1] = v3;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  v0[2] = v29;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_183_0();
}

void ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init(name:tintColorData:configurationData:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_119_3();
  *(v6 + 1) = xmmword_1C9065DB0;
  *(v6 + 2) = xmmword_1C9065DB0;
  v7 = v6 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  sub_1C8CE7BD0(v6[2], v6[3]);
  v6[2] = v3;
  v6[3] = v2;
  sub_1C8CE7BD0(v6[4], v6[5]);
  v6[4] = v1;
  v6[5] = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D9496C()
{
  v3 = OUTLINED_FUNCTION_75_1();
  v5 = v2 + *(v4(v3) + 20);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

void ToolKitProtoQuery.init(predicate:sort:limit:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = type metadata accessor for ToolKitProtoQuery(0);
  v9 = v8[5];
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v8[7];
  v15 = &v5[v8[6]];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v5 = v7;
  *v15 = v3;
  v15[8] = v1 & 1;
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.CollectionValue.init(type:values:typeInstance:)()
{
  OUTLINED_FUNCTION_422();
  v3 = OUTLINED_FUNCTION_64_1();
  v4 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v3);
  OUTLINED_FUNCTION_311_0(v4);
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = *(v2 + 24);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v10, v11, v12, v13);
  sub_1C8DB483C();
  *v1 = v0;
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:siriKitEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_299_0();
  v51 = v30;
  v49 = v31;
  v50 = v32;
  OUTLINED_FUNCTION_237_0();
  v34 = v33;
  v35 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v36 = v35[6];
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = v35[7];
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v46 = v34 + v35[8];
  *v46 = xmmword_1C9065DB0;
  v47 = v34 + v35[9];
  *v47 = xmmword_1C9065DB0;
  v48 = v34 + v35[10];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v34 = v29;
  v34[1] = v28;
  v34[2] = v27;
  sub_1C8DB483C();
  sub_1C8CE7BD0(*v46, *(v46 + 1));
  *v46 = v49;
  *(v46 + 1) = v50;
  sub_1C8CE7BD0(*v47, *(v47 + 1));
  *v47 = v51;
  *(v47 + 1) = a27;
  OUTLINED_FUNCTION_296_0();
}

void sub_1C8D94EE4()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  OUTLINED_FUNCTION_63_4();
  v6 = v5(0);
  v7 = v6[5];
  v4(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = v6[6];
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = v2 + v6[7];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  *v2 = v1;
  v2[1] = v0;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.PrimitiveValue.File.init(file:displayRepresentation:url:)()
{
  OUTLINED_FUNCTION_422();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_74_1();
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v6);
  v8 = v7[5];
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v7[7];
  v14 = (v3 + v7[6]);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  sub_1C8DB483C();
  *v14 = v0;
  v14[1] = v5;
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init(type:identificationHint:displayRepresentation:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v9, v10, v11, v12);
  *v5 = v7;
  *(v5 + 8) = v3;
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.init(_0:_1:_2:_3:_4:_5:_6:_7:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v16 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0) + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v17 = v15;
  v17[1] = v13;
  v17[2] = v11;
  v17[3] = v9;
  v17[4] = v7;
  v17[5] = v5;
  v17[6] = v3;
  v17[7] = v1;
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.PrimitiveValue.Decimal.init(sign:exponent:isCompact:length:mantissa:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v11 = *(v10 + 32);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v7 + *(v10 + 36);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v9;
  *(v7 + 4) = v5;
  *(v7 + 8) = v3;
  *(v7 + 12) = v1;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_299_0();
  v43 = v31;
  v41 = v32;
  v42 = v33;
  OUTLINED_FUNCTION_73_1();
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v35 = OUTLINED_FUNCTION_251_0(v34);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v35);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = v30 + *(v34 + 44);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_345_0();
  *(v30 + 32) = v29;
  *(v30 + 40) = v41;
  *(v30 + 48) = v42;
  *(v30 + 56) = v43;
  *(v30 + 64) = a27;
  *(v30 + 80) = a28;
  *(v30 + 88) = a29;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_296_0();
}

__n128 ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_301_0();
  v36 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_73_1();
  v34 = v28 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0) + 40);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_345_0();
  *(v28 + 32) = v27;
  *(v28 + 40) = v33;
  *(v28 + 48) = v31;
  *(v28 + 56) = v36;
  *(v28 + 64) = a25;
  *(v28 + 80) = a26;
  *(v28 + 88) = a27;
  OUTLINED_FUNCTION_183_0();
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.init(value:type:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a6 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *a6 = v11;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.init(person:displayRepresentation:handle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:contactSuggestion:isMe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a6 + 24) = xmmword_1C9065DB0;
  v16 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v17 = v16[7];
  OUTLINED_FUNCTION_107_2();
  v18 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v16[8];
  v23 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  OUTLINED_FUNCTION_53_5(v23);
  v24 = v16[9];
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = a6 + v16[10];
  *v29 = xmmword_1C9065DB0;
  v30 = (a6 + v16[11]);
  v31 = (a6 + v16[12]);
  v32 = v16[14];
  v33 = (a6 + v16[13]);
  v34 = a6 + v16[15];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8CE7BD0(*(a6 + 24), *(a6 + 32));
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  *a6 = a3;
  *(a6 + 8) = a4;
  result = sub_1C8CE7BD0(*v29, *(v29 + 8));
  *v29 = a5;
  *(v29 + 8) = a7;
  *v30 = a8;
  v30[1] = a9;
  *v31 = a10;
  v31[1] = a11;
  *v33 = a12;
  v33[1] = a13;
  *(a6 + v32) = a14;
  *(a6 + 16) = a15;
  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.Placemark.init(placemark:displayRepresentation:type:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  *(v4 + 8) = xmmword_1C9065DB0;
  v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0) + 24);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v9, v10, v11, v12);
  sub_1C8CE7BD0(*(v5 + 8), *(v5 + 16));
  *(v5 + 8) = v3;
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_364_0();
  *v5 = v7;
  OUTLINED_FUNCTION_421();
}

void sub_1C8D957E0()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_285_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  v9 = *(v8 + 20);
  v0(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v6 + *(v8 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v6 = v4;
  v6[1] = v2;
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init(identifier:timeZoneIdentifier:localeIdentifier:firstWeekday:minimumDaysInFirstWeek:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_285_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *v11;
  v13 = v9 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v10 = v12;
  *(v10 + 8) = v8;
  *(v10 + 16) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v0;
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init(calendar:timeZoneIdentifier:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  v32 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v35 = OUTLINED_FUNCTION_52_6(a8, v33, v34, v32);
  v36 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v35);
  v37 = (a8 + v36[5]);
  v38 = a8 + v36[6];
  v39 = a8 + v36[7];
  v40 = a8 + v36[8];
  v41 = a8 + v36[9];
  v42 = a8 + v36[10];
  v43 = a8 + v36[11];
  v44 = a8 + v36[12];
  v45 = a8 + v36[13];
  v49 = (a8 + v36[14]);
  v47 = (a8 + v36[15]);
  v51 = (a8 + v36[16]);
  v48 = (a8 + v36[17]);
  v52 = (a8 + v36[18]);
  v46 = v36[20];
  v50 = (a8 + v36[19]);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v37 = a1;
  v37[1] = a2;
  *v38 = a3;
  *(v38 + 8) = a4 & 1;
  *v39 = a5;
  *(v39 + 8) = a6 & 1;
  *v40 = a7;
  *(v40 + 8) = a9 & 1;
  *v41 = a10;
  *(v41 + 8) = a11 & 1;
  *v42 = a12;
  *(v42 + 8) = a13 & 1;
  *v43 = a14;
  *(v43 + 8) = a15 & 1;
  *v44 = a16;
  *(v44 + 8) = a17 & 1;
  *v45 = a18;
  *(v45 + 8) = a19 & 1;
  *v49 = a20;
  OUTLINED_FUNCTION_266_0(a21);
  *v47 = a22;
  OUTLINED_FUNCTION_266_0(a23);
  *v51 = a24;
  OUTLINED_FUNCTION_266_0(a25);
  *v48 = a26;
  OUTLINED_FUNCTION_266_0(a27);
  *v52 = a28;
  OUTLINED_FUNCTION_266_0(a29);
  *v50 = a30;
  OUTLINED_FUNCTION_266_0(a31);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init(unit:value:unitType:)(double a1)
{
  OUTLINED_FUNCTION_223();
  v5 = v4;
  v7 = *v6;
  v8 = v4 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v5 = v2;
  *(v5 + 8) = v1;
  *(v5 + 16) = a1;
  *(v5 + 24) = v7;
  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.init(occurences:date:never:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_292_0();
  v4 = OUTLINED_FUNCTION_79_2();
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v4);
  v6 = v5[5];
  sub_1C906378C();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v5[6];
  v12 = v3 + v5[7];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  *(v3 + 8) = v1 & 1;
  sub_1C8DB483C();
  *(v3 + v11) = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.init(recurrenceRuleWeekdayWeekday:recurrenceRuleWeekdayEvery:recurrenceRuleWeekdayNth:)()
{
  OUTLINED_FUNCTION_292_0();
  v4 = v3;
  v6 = *v5;
  v7 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v6;
  *(v4 + 1) = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v0 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 1) = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  OUTLINED_FUNCTION_177_2(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = 0;
  return result;
}

__n128 ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)@<Q0>(char *a1@<X1>, uint64_t a2@<X2>, char *a3@<X4>, char *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, __int128 a9, __n128 a10, uint64_t a11)
{
  v13 = *a1;
  v14 = *a3;
  v15 = *a4;
  v16 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  v17 = v16[17];
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v16[18];
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = a7 + v16[19];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *a7 = v13;
  *(a7 + 8) = a2;
  sub_1C8DB483C();
  *(a7 + 16) = v14;
  *(a7 + 17) = v15;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  *(a7 + 40) = a8;
  *(a7 + 56) = a9;
  result = a10;
  *(a7 + 72) = a10;
  *(a7 + 88) = a11;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.init(seconds:attoSeconds:)()
{
  v3 = OUTLINED_FUNCTION_75_1();
  v4 = v2 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v3) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.DateInterval.init(start:end:duration:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  OUTLINED_FUNCTION_65_2();
  v4 = sub_1C906378C();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  v9 = v8[5];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  v13 = v8[7];
  v14 = v1 + v8[6];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_361_0();
  OUTLINED_FUNCTION_361_0();
  *v14 = v0;
  *(v14 + 8) = v3 & 1;
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)()
{
  OUTLINED_FUNCTION_422();
  v2 = v1;
  OUTLINED_FUNCTION_144_1();
  v6 = OUTLINED_FUNCTION_52_6(v2, v3, v4, v5);
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v6);
  OUTLINED_FUNCTION_311_0(v7);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = *(v0 + 24);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = v2 + *(v0 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_119();
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D9628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_65_2();
  v11 = v7 + *(v10(v9) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v6;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = a4;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init(major:minor:patch:isWildcard:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a5 = a1;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init(platform:introducingVersion:deprecatingVersion:obsoletingVersion:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = *v2;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v5 = OUTLINED_FUNCTION_306_0(v4);
  v6 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(v5);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = v4[6];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  v14 = v4[7];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
  v18 = &v1[v4[8]];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v3;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init(domain:feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = OUTLINED_FUNCTION_74_1();
  v12 = v9 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v11) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v9 = v8;
  *(v9 + 8) = v7;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init(name:numericFormat:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OUTLINED_FUNCTION_74_1();
  v12 = v9 + *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v11) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v9 = v8;
  v9[1] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v9[2] = a5;
  return result;
}

void ToolKitProtoTypeDefinition.Version1.Entity.init(identifier:properties:runtimeRequirements:displayRepresentation:sampleInvocations:systemProtocols:runtimeFlags:coercions:)()
{
  OUTLINED_FUNCTION_259_0();
  v22 = v2;
  v23 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_237_0();
  v9 = v8;
  v10 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v11 = v10[10];
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v10[11];
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v9 + v10[12];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v9 = v1;
  v9[1] = v0;
  sub_1C8DB483C();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v22;
  v9[5] = v23;
  OUTLINED_FUNCTION_258_0();
}

uint64_t ToolKitProtoCoercionDefinition.init(direction:typeInstance:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_263_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a2 = v3;
  return sub_1C8DB483C();
}

void sub_1C8D968E8()
{
  OUTLINED_FUNCTION_259_0();
  v6 = v5;
  OUTLINED_FUNCTION_63_4();
  v8 = v7(0);
  v9 = *(v8 + 24);
  v6(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v4 + *(v8 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_258_0();
}

void ToolKitProtoTypeDefinition.Version1.Enumeration.init(identifier:cases:runtimeRequirements:displayRepresentation:kind:systemProtocols:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v11 = v10[8];
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v10[9];
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v7 + v10[10];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v7 = v5;
  *(v7 + 8) = v3;
  sub_1C8DB483C();
  *(v7 + 16) = v9;
  *(v7 + 24) = v1;
  OUTLINED_FUNCTION_163();
}

void sub_1C8D96B2C()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_144_1();
  v6 = OUTLINED_FUNCTION_52_6(v2, v3, v4, v5);
  v7 = v1(v6);
  v8 = OUTLINED_FUNCTION_306_0(v7);
  v0(v8);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v2 + *(v7 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init(comparison:stringSearch:idSearch:all:suggested:sampleInvocations:searchableItem:valid:valueSearch:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v5 = v4[6];
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v6 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v4[7];
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = v4[8];
  type metadata accessor for ToolKitProtoAllPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = v4[9];
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = v4[10];
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = v4[11];
  type metadata accessor for ToolKitProtoValidPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = v4[12];
  type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = v4[13];
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = a3 + v4[14];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  a3[1] = a2;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

void ToolKitProtoToolInvocation.init(identifier:toolIdentifier:target:parameterValues:options:)()
{
  OUTLINED_FUNCTION_259_0();
  v6 = v5;
  OUTLINED_FUNCTION_63_4();
  v7 = type metadata accessor for ToolKitProtoToolInvocation(0);
  v8 = v7[7];
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v7[8];
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v4 + v7[9];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v4[1] = v3;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v0;
  sub_1C8DB483C();
  *v4 = v6;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_258_0();
}

void ToolKitProtoToolInvocationOptions.init(interactionMode:locale:requestIdentifier:interfaceIdiom:shortcutOutput:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *v12;
  v15 = *v14;
  *v10 = 5;
  v10[40] = 11;
  v16 = &v10[*(type metadata accessor for ToolKitProtoToolInvocationOptions(0) + 36)];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v11 = v13;
  *(v11 + 1) = v9;
  *(v11 + 2) = v7;
  *(v11 + 3) = v5;
  *(v11 + 4) = v3;
  v11[40] = v15;
  v11[41] = v1;
  OUTLINED_FUNCTION_421();
}

void sub_1C8D97178()
{
  OUTLINED_FUNCTION_259_0();
  v5 = v4;
  v15 = v6;
  OUTLINED_FUNCTION_63_4();
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_220_0(v8);
  v5(v9);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v3 + *(v8 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  sub_1C8DB483C();
  v3[2] = v0;
  v3[3] = v15;
  OUTLINED_FUNCTION_258_0();
}

uint64_t sub_1C8D97284(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = OUTLINED_FUNCTION_79_2();
  v7 = v6(v5);
  v10 = OUTLINED_FUNCTION_52_6(v3, v8, v9, v7);
  v11 = v3 + *(a3(v10) + 20);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_253_0();
  return sub_1C8DB483C();
}

uint64_t ToolKitProtoCompoundPredicate.init(operator:operands:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a3 + *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoTypeInstance.Optional.init(value:defaultValue:)()
{
  v2 = OUTLINED_FUNCTION_75_1();
  v3 = type metadata accessor for ToolKitProtoTypeInstance(v2);
  v6 = OUTLINED_FUNCTION_52_6(v0, v4, v5, v3);
  v7 = type metadata accessor for ToolKitProtoTypeInstance.Optional(v6);
  v8 = OUTLINED_FUNCTION_286_0(v7);
  type metadata accessor for ToolKitProtoTypedValue(v8);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0 + *(v1 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_209();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

uint64_t sub_1C8D97430@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a2(0) + 20);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  return result;
}

void sub_1C8D97584()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_306_0(v7);
  v1(v8);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v5 + *(v7 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  *v5 = v3;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoRestrictionContext.InSet.init(definition:templates:)()
{
  v2 = OUTLINED_FUNCTION_75_1();
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v2);
  v6 = OUTLINED_FUNCTION_52_6(v0, v4, v5, v3);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(v6);
  v8 = OUTLINED_FUNCTION_286_0(v7);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v8);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0 + *(v1 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_209();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

void ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init(parameterKey:queryIdentifier:actionIdentifier:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_119_3();
  v7 = v6 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init(contentItemClass:propertyName:)()
{
  v4 = OUTLINED_FUNCTION_64_1();
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v4);
  OUTLINED_FUNCTION_311_0(v5);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v2 + *(v3 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  result = sub_1C8DB483C();
  *v2 = v1;
  v2[1] = v0;
  return result;
}