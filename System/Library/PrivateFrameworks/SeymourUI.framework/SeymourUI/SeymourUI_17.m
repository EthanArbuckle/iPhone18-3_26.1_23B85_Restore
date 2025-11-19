uint64_t sub_20B710EB8()
{
  v1 = v0;
  v32 = sub_20C137294();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640C8);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C7640B8, 255, MEMORY[0x277D53250]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B7111D8()
{
  v1 = v0;
  v32 = sub_20C136FE4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764878);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764868, 255, MEMORY[0x277D53070]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B7114F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764858);
  result = sub_20C13DC24();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v29 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_20C13E164();
      sub_20B6A6418(v18, v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
      sub_20B654574();
      sub_20C133BE4();
      result = sub_20C13E1B4();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
      v9 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v29 = (v16 - 1) & v16;
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

uint64_t sub_20B711784()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647F0);
  result = sub_20C13DC24();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v15);
      result = sub_20C13E1B4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_20B7119A4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764710);
  result = sub_20C13DC24();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_20C13E164();
      if (v20 < 0)
      {
        MEMORY[0x20F2F58E0](1);
        sub_20B6D8740(v18, v19, v20 & 0x7F);
        sub_20C137934();
      }

      else
      {
        MEMORY[0x20F2F58E0](0);
        MEMORY[0x20F2F58E0](v18);
      }

      result = sub_20C13E1B4();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20B711C24()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764708);
  result = sub_20C13DC24();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_20C13E164();
      sub_20B6D8740(v18, v19, v20);
      sub_20C137934();
      result = sub_20C13E1B4();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_20B711E7C()
{
  v1 = v0;
  v32 = sub_20C133B74();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764430);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764420, 255, MEMORY[0x277D502D0]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B71219C()
{
  v1 = v0;
  v32 = sub_20C133244();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764190);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764180, 255, MEMORY[0x277CC9AF8]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B7124BC()
{
  v1 = v0;
  v32 = sub_20C137BA4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764568);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&unk_27C767650, 255, MEMORY[0x277D53A28]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B7127DC()
{
  v1 = v0;
  v32 = sub_20C132FD4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D0);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&unk_27C7646C0, 255, MEMORY[0x277CC9788]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B712AFC()
{
  v1 = v0;
  v32 = sub_20C139684();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646B8);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C7646A8, 255, MEMORY[0x277D54458]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B712E1C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764688);
  result = sub_20C13DC24();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_20C13E154();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20B71300C()
{
  v1 = v0;
  v32 = sub_20C132164();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764818);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764808, 255, MEMORY[0x277CE9BE0]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B71332C()
{
  v1 = v0;
  v32 = sub_20C135174();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764650);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&unk_27C764640, 255, MEMORY[0x277D515D0]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B71364C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764638);
  result = sub_20C13DC24();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_20C13E164();
      v21 = v18;

      sub_20C13CA64();
      result = sub_20C13E1B4();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      *v13 = v21;
      v13[1] = v19;
      v13[2] = v20;
      ++*(v4 + 16);
      v2 = v30;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_20B7138A0()
{
  v1 = v0;
  v32 = sub_20C133314();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764078);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764068, 255, MEMORY[0x277D4FC78]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B713BC0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764018);
  result = sub_20C13DC24();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v18 = *(v2 + 48) + 40 * (v15 | (v5 << 6));
      v19 = *(v18 + 32);
      v20 = *(v18 + 16);
      v29 = *v18;
      v30 = v20;
      v31 = v19;
      sub_20C13E164();
      sub_20B718710(&v29, v28);
      sub_20C1332D4();
      result = sub_20C13E1B4();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v29;
      v14 = v30;
      *(v12 + 32) = v31;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
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

uint64_t sub_20B713E10()
{
  v1 = v0;
  v32 = sub_20C137474();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FF8);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C763FE8, 255, MEMORY[0x277D53450]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B714130()
{
  v1 = v0;
  v32 = sub_20C138204();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643E8);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C763318, 255, MEMORY[0x277D53C88]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B714450()
{
  v1 = v0;
  v32 = sub_20C132EE4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641A8);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C7675A0, 255, MEMORY[0x277CC95F0]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B714770(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_20C13DC24();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v17);
      result = sub_20C13E1B4();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_20B714988()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645A0);
  result = sub_20C13DC24();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      result = sub_20C13E1B4();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20B714CAC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_20C13DC24();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_20C13D5E4();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_20B714EB8()
{
  v1 = v0;
  v32 = sub_20C137374();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764580);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764570, 255, MEMORY[0x277D53288]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B7151D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764540);
  result = sub_20C13DC24();
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
      sub_20C13E164();

      sub_20C136804();
      result = sub_20C13E1B4();
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

uint64_t sub_20B715410()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764390);
  result = sub_20C13DC24();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x20F2F58B0](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20B715604()
{
  v1 = v0;
  v32 = sub_20C137A24();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643A8);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C764398, 255, MEMORY[0x277D53920]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B715924()
{
  v1 = v0;
  v32 = sub_20C137594();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764458);
  v6 = sub_20C13DC24();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20B718614(&qword_27C763F10, 255, MEMORY[0x277D534C8]);
      result = sub_20C13C7B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20B716100(uint64_t result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_20B7161D8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t, unint64_t, uint64_t))
{
  v9 = *(a1 + 16);
  v10 = a2();
  result = MEMORY[0x20F2F4740](v9, a3, v10);
  v15 = result;
  if (v9)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = *v12++;
      sub_20B6FFBAC(&v14, v13, a4, a5);
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_20B716268(uint64_t a1)
{
  v2 = sub_20C135C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C7642E8, 255, MEMORY[0x277D52060]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_20B71B848(v12, v5, MEMORY[0x277D52060]);
      sub_20B6FFD50(v8, v5);
      sub_20B71C508(v8, MEMORY[0x277D52060]);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_20B716430(uint64_t a1)
{
  v2 = sub_20C1365F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C762F60, 255, MEMORY[0x277D52AF8]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B700D6C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B7165D0(uint64_t a1)
{
  v2 = sub_20C137454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C7640D0, 255, MEMORY[0x277D53428]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B701764(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B7167A4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x20F2F4740](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_20B716824(uint64_t a1)
{
  v2 = sub_20C137294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C7640B8, 255, MEMORY[0x277D53250]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B701A4C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B7169C4(uint64_t a1)
{
  v2 = sub_20C136FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764868, 255, MEMORY[0x277D53070]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B701D34(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B716BC4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20B51F948(a1, a2, v2 + v6, *v7, v7[1], &unk_27C763FB0, &unk_20C155AF0, &unk_2822A1B00, sub_20B71C240);
}

uint64_t sub_20B716CB0(uint64_t a1, uint64_t a2)
{
  result = sub_20B718614(&unk_27C763FD8, a2, type metadata accessor for RemoteBrowsingSiriBeginSessionInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20B716D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
  v4 = sub_20B71C0A4();
  result = MEMORY[0x20F2F4740](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_20B6A6418(v9, v8, *v6);
      sub_20B70201C(v10, v9, v8, v7);
      sub_20B583F4C(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_20B716E18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v4 = sub_20B51C88C(0, &qword_27C762910);
    v5 = sub_20B7187E0(&qword_27C764670, &qword_27C762910);
    result = MEMORY[0x20F2F4740](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D75D18uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_20B704F3C(&v12, v10, &qword_27C762910, 0x277D75D18, &unk_27C764330, &unk_20C155E50);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20C13DB34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B716FA4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v4 = sub_20B51C88C(0, &qword_27C772960);
    v5 = sub_20B7187E0(&qword_27C764660, &qword_27C772960);
    result = MEMORY[0x20F2F4740](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D752A8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_20B704F3C(&v12, v10, &qword_27C772960, 0x277D752A8, &qword_27C764668, &unk_20C156080);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20C13DB34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B717130(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20B71B570();
  result = MEMORY[0x20F2F4740](v2, &type metadata for WorkoutPlanScheduleFilterItem, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_20B6D8730(v7, v6, v8);
      sub_20B70231C(v9, v7, v6, v8);
      sub_20B6D8758(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_20B7171D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20B71B51C();
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D537D8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_20B6D8740(v7, v6, v8);
      sub_20B702538(v9, v7, v6, v8);
      sub_20B6D8768(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_20B717280(uint64_t a1)
{
  v2 = sub_20C133B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764420, 255, MEMORY[0x277D502D0]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B702708(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B717420(uint64_t a1)
{
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764180, 255, MEMORY[0x277CC9AF8]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B7029F0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B7175C0(uint64_t a1)
{
  v2 = sub_20C137BA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&unk_27C767650, 255, MEMORY[0x277D53A28]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B702CD8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B717790(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x20F2F4740](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_20B704B30(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_20B717824(uint64_t a1)
{
  v2 = sub_20C132FD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&unk_27C7646C0, 255, MEMORY[0x277CC9788]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B702FC0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B7179C4(uint64_t a1)
{
  v2 = sub_20C139684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C7646A8, 255, MEMORY[0x277D54458]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B7032A8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B717B64(uint64_t a1)
{
  v2 = sub_20C138034();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&unk_27C764140, 255, MEMORY[0x277D53BA0]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B6FF26C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B717D04(uint64_t a1)
{
  v2 = sub_20C132164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764808, 255, MEMORY[0x277CE9BE0]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B703670(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B717EA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_20B703590(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_20B717F18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v4 = sub_20B51C88C(0, &qword_27C764020);
    v5 = sub_20B7187E0(&qword_27C764028, &qword_27C764020);
    result = MEMORY[0x20F2F4740](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CE8CC0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_20B704F3C(&v12, v10, &qword_27C764020, 0x277CE8CC0, &qword_27C764030, &unk_20C155BE0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20C13DB34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B7180A4(uint64_t a1)
{
  v2 = sub_20C133314();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764068, 255, MEMORY[0x277D4FC78]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B703DEC(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B718244(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v4 = sub_20B51C88C(0, &qword_27C764050);
    v5 = sub_20B7187E0(&qword_27C764058, &qword_27C764050);
    result = MEMORY[0x20F2F4740](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CE8D50uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_20B704F3C(&v12, v10, &qword_27C764050, 0x277CE8D50, &qword_27C764060, &unk_20C155C00);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20C13DB34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B7183D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20B7186BC();
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D4FC38], v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v11 = *(v5 + 32);
      sub_20B718710(v10, v7);
      sub_20B7040D4(v7, v10);
      sub_20B71876C(v7[0], v7[1], v7[2], v7[3], v8);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_20B718474(uint64_t a1)
{
  v2 = sub_20C137474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C763FE8, 255, MEMORY[0x277D53450]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B70425C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B718614(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20B7186BC()
{
  result = qword_27C764010;
  if (!qword_27C764010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764010);
  }

  return result;
}

uint64_t sub_20B71876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20B7187D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20B7187E0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_20B51C88C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20B718BBC(uint64_t a1)
{
  v2 = sub_20C138204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C763318, 255, MEMORY[0x277D53C88]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B704544(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B718D5C(uint64_t a1)
{
  v2 = sub_20C132EE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C7675A0, 255, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B70482C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t objectdestroy_265Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_20C13BA24();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B71936C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0) - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9);
}

void sub_20B719794(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_20B7197A0(a1, a2);
  }
}

uint64_t sub_20B7197A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20B719888(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20B719CF4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v4 = sub_20B51C88C(0, &qword_27C764588);
    v5 = sub_20B7187E0(&qword_27C764590, &qword_27C764588);
    result = MEMORY[0x20F2F4740](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D758B8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_20B704F3C(&v12, v10, &qword_27C764588, 0x277D758B8, &qword_27C764598, &unk_20C155FE8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20C13DB34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B719E80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20B71AD40();
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D52CC8], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_20B705498(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_20B719F18(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanPreference();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764518, 255, type metadata accessor for WorkoutPlanPreference);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_20B71B848(v12, v5, type metadata accessor for WorkoutPlanPreference);
      sub_20B701054(v8, v5);
      sub_20B71C508(v8, type metadata accessor for WorkoutPlanPreference);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_20B71A0AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_20B7055FC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_20B71A120(uint64_t a1)
{
  v2 = sub_20C137A24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C764398, 255, MEMORY[0x277D53920]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B7056E4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20B71A56C(uint64_t a1)
{
  v2 = sub_20C135C54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20B718614(&qword_27C762F50, 255, MEMORY[0x277D51FE0]);
  result = MEMORY[0x20F2F4740](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_20B70079C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_20B71A744()
{
  result = qword_27C764438;
  if (!qword_27C764438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764438);
  }

  return result;
}

unint64_t sub_20B71A9E4()
{
  result = qword_27C7644E0;
  if (!qword_27C7644E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7644E0);
  }

  return result;
}

uint64_t sub_20B71AB80(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

void sub_20B71ABE4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_20B71AC68(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20B71AD40()
{
  result = qword_27C764538;
  if (!qword_27C764538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764538);
  }

  return result;
}

unint64_t sub_20B71ADCC()
{
  result = qword_27C7645B0;
  if (!qword_27C7645B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7645B0);
  }

  return result;
}

uint64_t sub_20B71AE7C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  return sub_20B6EDED8(v8, v2, v3, v4, v5);
}

uint64_t sub_20B71AED0(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 32);
  v4 = *(result + 16);
  v5[0] = *result;
  v5[1] = v4;
  v6 = v3;
  if (v2)
  {
    return v2(v5);
  }

  return result;
}

unint64_t sub_20B71B51C()
{
  result = qword_27C764700;
  if (!qword_27C764700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764700);
  }

  return result;
}

unint64_t sub_20B71B570()
{
  result = qword_27C764718;
  if (!qword_27C764718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764718);
  }

  return result;
}

unint64_t sub_20B71B7DC()
{
  result = qword_27C764778;
  if (!qword_27C764778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764778);
  }

  return result;
}

uint64_t sub_20B71B848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_548Tm()
{
  v1 = type metadata accessor for WorkoutSessionConfiguration();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_20C1344C4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_20C137254();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  sub_20C13A484();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C137EA4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  v12 = sub_20C13BA24();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[10];
  v15 = sub_20C134A44();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  if (*(v5 + v1[11] + 8) >= 0xCuLL)
  {
  }

  v17 = v1[12];
  v18 = sub_20C135C54();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_20B71C0A4()
{
  result = qword_27C764840;
  if (!qword_27C764840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C762F00);
    sub_20B654574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764840);
  }

  return result;
}

void sub_20B71C190(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_85Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20B71C3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

uint64_t sub_20B71C4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B71C508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B71C5A4()
{
  v65 = sub_20C132364();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v55 - v4;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = sub_20C132254();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_containerBuilder;
  if (qword_27C760748 != -1)
  {
    swift_once();
  }

  v17 = (v0 + v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0);
  v59 = v0;
  v19 = *(v18 + 48);
  v20 = *MEMORY[0x277CE9C98];
  v21 = sub_20C132234();
  (*(*(v21 - 8) + 104))(v15, v20, v21);
  *&v15[v19] = 0;
  (*(v13 + 104))(v15, *MEMORY[0x277CE9CB8], v12);
  v17[1] = 2;
  sub_20C132ED4();
  sub_20C132104();
  v22 = *(v68 + 8);
  v68 += 8;
  v56 = v12;
  v57 = v22;
  v22(v8, v67);
  v23 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v58 + 8))(v11, v9);
  *v17 = 1;
  v24 = sub_20C131F44();
  v25 = &v17[v23[7]];
  *v25 = v24;
  v25[8] = v26;
  v27 = sub_20C131FD4();
  v28 = &v17[v23[8]];
  *v28 = v27;
  v28[8] = v29;
  v30 = sub_20C131FE4();
  v31 = &v17[v23[9]];
  *v31 = v30;
  *(v31 + 1) = v32;
  v31[20] = v33;
  *(v31 + 4) = v34;
  v31[21] = v35;
  v36 = sub_20C132384();
  v37 = &v17[v23[10]];
  *v37 = v36 & 0xFFFFFFFFFFLL;
  v37[12] = v38;
  *(v37 + 2) = v39;
  v37[13] = 0;
  v40 = sub_20C132004();
  v42 = v41;
  v44 = v43;
  LOBYTE(v19) = v45;
  (*(v13 + 8))(v15, v56);
  v46 = &v17[v23[11]];
  *v46 = v40;
  *(v46 + 1) = v42;
  *(v46 + 2) = v44;
  v46[24] = v19;
  v47 = v59;
  v48 = (v59 + OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_labelText);
  *v48 = 0;
  v48[1] = 0;
  sub_20BA6BBC8(3);
  v49 = v62;
  sub_20C132374();
  sub_20C132ED4();
  sub_20C1323D4();
  v50 = v60;
  sub_20C1320B4();
  v57(v8, v67);
  (*(v63 + 8))(v49, v65);
  sub_20C1323A4();
  v51 = v61;
  v52 = v66;
  sub_20C131FF4();
  v53 = v64;
  (*(v64 + 8))(v50, v52);
  (*(v53 + 32))(v47 + OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_labelNode, v51, v52);
  return v47;
}

uint64_t sub_20B71CBEC()
{
  sub_20B583E6C(v0 + 16);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_containerBuilder);
  v1 = OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_labelNode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntensityNodeBuilder()
{
  result = qword_27C7648A0;
  if (!qword_27C7648A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B71CD14()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20B592C74();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B71CDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v26 = *(v10 + 16);
  v26(v12, v2 + OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_labelNode, v9, v14);

  sub_20C132074();

  v25 = *(v10 + 8);
  v25(v12, v9);
  v17 = OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_containerBuilder;
  swift_beginAccess();
  sub_20B6B5ADC(v2 + v17, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v18 = sub_20C132264();
  v19 = *(v18 - 8);
  v20 = v5;
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F980;
  (v26)(v22 + v21, v16, v9);
  (*(v19 + 104))(v22 + v21, *MEMORY[0x277CE9CD8], v18);
  sub_20B7E27F8(v8);

  sub_20B593250(v20);
  sub_20C1323A4();
  v23 = v28;
  sub_20C131FF4();
  (*(v27 + 8))(v8, v23);
  return (v25)(v16, v9);
}

uint64_t sub_20B71D1B0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_labelText);
  *v3 = a1;
  v3[1] = a2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);

    v6(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_20B71D27C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B71D2C4(uint64_t result, int a2, int a3)
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

unint64_t sub_20B71D310(unint64_t a1, double a2)
{
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v5 = sub_20C13DB34();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v8 = MEMORY[0x20F2F5430](result, a1);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(a1 + 8 * result + 32);
LABEL_8:
  v9 = v8;
LABEL_11:
  [v2 setImage_];

  sub_20B71D438();
  v10 = sub_20C13CC54();
  [v2 setAnimationImages_];

  [v2 setAnimationDuration_];

  return [v2 startAnimating];
}

unint64_t sub_20B71D438()
{
  result = qword_27C7626E8;
  if (!qword_27C7626E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7626E8);
  }

  return result;
}

uint64_t sub_20B71D484()
{
  sub_20C13E164();
  sub_20C13CA64();
  sub_20C132C14();
  sub_20B71D774(&qword_27C762CB0, MEMORY[0x277CC9260]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t sub_20B71D52C()
{
  sub_20C13CA64();
  sub_20C132C14();
  sub_20B71D774(&qword_27C762CB0, MEMORY[0x277CC9260]);
  return sub_20C13C7C4();
}

uint64_t sub_20B71D5B8()
{
  sub_20C13E164();
  sub_20C13CA64();
  sub_20C132C14();
  sub_20B71D774(&qword_27C762CB0, MEMORY[0x277CC9260]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t sub_20B71D65C(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  return sub_20C132B84();
}

uint64_t type metadata accessor for LinkAnnotation()
{
  result = qword_27C7648B8;
  if (!qword_27C7648B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B71D774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B71D7E4()
{
  result = sub_20C132C14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B71D860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      sub_20B51CC64(i, v11);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      result = (*(v6 + 24))(v5, v6);
      if (v9)
      {
        if (result == 2)
        {
          v10 = __OFADD__(v3++, 1);
          if (v10)
          {
            __break(1u);
            return result;
          }
        }

        else
        {
          v10 = __OFADD__(v2++, 1);
          if (v10)
          {
            __break(1u);
            break;
          }
        }
      }

      else
      {
        sub_20B583F4C(result, v8, 0);
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
      if (!--v1)
      {
        return sub_20B71DDA8(v2, v3);
      }
    }
  }

  v2 = 0;
  v3 = 0;
  return sub_20B71DDA8(v2, v3);
}

uint64_t sub_20B71D954(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1341A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = sub_20C134084();
  v15 = *(a1 + 16);
  if (v15)
  {
    v32 = v1;
    v16 = a1 + 32;
    v17 = v5;
    v18 = (v5 + 48);
    v33 = (v17 + 32);
    v34 = v14;
    v19 = (v17 + 8);
    v20 = 0.0;
    do
    {
      v21 = sub_20B51CC64(v16, v35);
      MEMORY[0x28223BE20](v21);
      *(&v31 - 2) = v35;
      sub_20B6B74A0(sub_20B71E180, v34, v13);
      sub_20B71E1A0(v13, v10);
      if ((*v18)(v10, 1, v4) == 1)
      {
        sub_20B71E210(v13);
        sub_20B71E210(v10);
      }

      else
      {
        (*v33)(v7, v10, v4);
        sub_20C134194();
        v23 = v22;
        (*v19)(v7, v4);
        sub_20B71E210(v13);
        v20 = v20 + v23;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v16 += 40;
      --v15;
    }

    while (v15);

    v2 = v32;
  }

  else
  {

    v20 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v24 = *(sub_20C138094() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14F320;
  v28 = (v27 + v26);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  *v28 = sub_20C138D34();
  v28[1] = v29;
  swift_storeEnumTagMultiPayload();
  *(v28 + v25) = v20;
  swift_storeEnumTagMultiPayload();
  return v27;
}

BOOL sub_20B71DCDC(uint64_t a1, void *a2)
{
  sub_20C134194();
  v4 = v3;
  sub_20C134164();
  v6 = v4 - v5;
  sub_20C134194();
  v8 = v7;
  sub_20C134174();
  v10 = v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = *(v12 + 32);
  return v6 <= v13(v11, v12) && v13(v11, v12) <= v8 + v10;
}

uint64_t sub_20B71DDA8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v5 = sub_20C138094();
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  if (a1 < 1 || a2 < 1)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20C14F320;
    v26 = (v20 + v7);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C14F980;
    v28 = MEMORY[0x277D83C10];
    *(v27 + 56) = MEMORY[0x277D83B88];
    *(v27 + 64) = v28;
    v25 = (v20 + v7 + v6);
    if (a2 < 1)
    {
      *(v27 + 32) = a1;
    }

    else
    {
      *(v27 + 32) = a2;
    }

    v29 = sub_20C138D24();
    v31 = v30;

    *v26 = v29;
    v26[1] = v31;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C152DF0;
    v33 = a2;
    v9 = (v8 + v7);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D83B88];
    *(v10 + 16) = xmmword_20C14F980;
    v12 = MEMORY[0x277D83C10];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = a1;
    v13 = v2;
    v14 = sub_20C138D24();
    v16 = v15;

    *v9 = v14;
    v9[1] = v16;
    swift_storeEnumTagMultiPayload();
    *(v9 + v6) = 0;
    swift_storeEnumTagMultiPayload();
    v17 = (v8 + v7 + 2 * v6);
    v18 = *(v13 + 40);
    v19 = (v13 + 16);
    v20 = v8;
    __swift_project_boxed_opaque_existential_1(v19, v18);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20C14F980;
    *(v21 + 56) = MEMORY[0x277D83B88];
    *(v21 + 64) = MEMORY[0x277D83C10];
    *(v21 + 32) = v33;
    v22 = sub_20C138D24();
    v24 = v23;

    *v17 = v22;
    v17[1] = v24;
    swift_storeEnumTagMultiPayload();
    v25 = v9 + 3 * v6;
  }

  *v25 = 2;
  swift_storeEnumTagMultiPayload();
  return v20;
}

uint64_t sub_20B71E1A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B71E210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float sub_20B71E278()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  return v1;
}

uint64_t sub_20B71E2EC()
{
  v0 = sub_20C1337A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A9E4();
    sub_20B71E3F8(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B71E3F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1337A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = sub_20C13BB84();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  sub_20C13B4A4();
  v64 = *(v5 + 16);
  v64(v11, a1, v4);
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1C4();
  v19 = os_log_type_enabled(v17, v18);
  v58 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v56 = a1;
    v21 = v4;
    v22 = v20;
    v23 = swift_slowAlloc();
    v55 = v5 + 16;
    v24 = v23;
    v66[0] = v23;
    *v22 = 136446210;
    sub_20B71F224();
    v25 = sub_20C13DFA4();
    v26 = v5;
    v28 = v27;
    v57 = *(v26 + 8);
    v57(v11, v21);
    v29 = sub_20B51E694(v25, v28, v66);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_20B517000, v17, v18, "Pulse monitor scoreMetric: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x20F2F6A40](v24, -1, -1);
    v30 = v22;
    v4 = v21;
    a1 = v56;
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  else
  {

    v57 = *(v5 + 8);
    v57(v11, v4);
  }

  v31 = *(v59 + 8);
  v32 = v16;
  v33 = v60;
  v31(v32, v60);
  v34 = v61;
  v64(v61, a1, v4);
  v35 = sub_20BEC5328(v34);
  v36 = sub_20C133784();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_20B91DCA0(v36, isUniquelyReferenced_nonNull_native, v35);
  *(v2 + 40) = v65;
  swift_endAccess();
  result = sub_20C133784();
  v39 = v62;
  if (__OFSUB__(result, 30))
  {
    __break(1u);
    goto LABEL_15;
  }

  v61 = v31;
  v40 = (result - 30) & ~((result - 30) >> 63);
  v41 = *(v2 + 40);

  sub_20B71EE00(v40, v41);
  v43 = v42;

  if ((v43 & 0x100000000) == 0)
  {
    v44 = sub_20C133784();
    v45 = *(v2 + 40);

    sub_20B71EE00(v44, v45);
    v47 = v46;

    if ((v47 & 0x100000000) == 0)
    {
      v48 = sub_20B71F018(*&v47, *&v43);
      swift_getKeyPath();
      swift_getKeyPath();
      *v66 = v48;

      sub_20C13C154();
      result = sub_20C133784();
      if (!__OFSUB__(result, 30))
      {
        v49 = result - 45;
        if (!__OFSUB__(result - 30, 15))
        {
          swift_beginAccess();
          sub_20BE384EC(v49);
          return swift_endAccess();
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  sub_20C13B4A4();
  v64(v39, a1, v4);
  v50 = sub_20C13BB74();
  v51 = sub_20C13D1D4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134349056;
    v53 = sub_20C133784();
    v57(v39, v4);
    *(v52 + 4) = v53;
    _os_log_impl(&dword_20B517000, v50, v51, "Pulse monitor could not generate pulse rate for elapsed seconds %{public}ld", v52, 0xCu);
    MEMORY[0x20F2F6A40](v52, -1, -1);
  }

  else
  {
    v57(v39, v4);
  }

  v54 = v61;

  return v54(v63, v33);
}

uint64_t sub_20B71E9DC()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI19BurnBarPulseMonitor__pulseRate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7648E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BurnBarPulseMonitor()
{
  result = qword_27C7648D0;
  if (!qword_27C7648D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B71EAF0()
{
  sub_20B71EBA8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B71EBA8()
{
  if (!qword_27C7648E0)
  {
    v0 = sub_20C13C164();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7648E0);
    }
  }
}

char *sub_20B71EBF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7648E8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-1] - v3;
  *(v0 + 5) = sub_20B6B2F20(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR____TtC9SeymourUI19BurnBarPulseMonitor__pulseRate;
  LODWORD(v9[0]) = 0;
  sub_20C13C124();
  (*(v2 + 32))(&v0[v5], v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v6 = v9[1];
  *(v0 + 2) = v9[0];
  *(v0 + 3) = v6;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 4) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13AA04();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v0;
}

void sub_20B71EE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1 - 15;
  if (__OFSUB__(a1, 15))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  if (v8 >= a1)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = v8 + 1;
  v11 = *(a2 + 16);
  v12 = 0.0;
  while (1)
  {
    if (v11)
    {
      v13 = sub_20B65AFAC(v10);
      if (v14)
      {
        v15 = __OFADD__(v9++, 1);
        if (v15)
        {
          __break(1u);
          goto LABEL_20;
        }

        v12 = v12 + *(*(a2 + 56) + 4 * v13);
      }
    }

    if (a1 == v10)
    {
      break;
    }

    v15 = __OFADD__(v10++, 1);
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  if (v9 < 10)
  {
    sub_20C13B4A4();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1C4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349568;
      *(v18 + 4) = v9;
      *(v18 + 12) = 2050;
      *(v18 + 14) = 10;
      *(v18 + 22) = 2050;
      *(v18 + 24) = a1;
      _os_log_impl(&dword_20B517000, v16, v17, "Pulse monitor moving average found %{public}ld fractions, min %{public}ld for %{public}ld seconds, returning nil", v18, 0x20u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  v19[12] = v9 < 10;
}

float sub_20B71F018(float a1, float a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 - a2;
  v9 = 0.0;
  if ((a1 - a2) < -0.03)
  {
    v9 = ((a1 - a2) + 0.03) / 0.07;
  }

  if (v8 > 0.03)
  {
    v10 = (v8 + -0.03) / 0.07;
  }

  else
  {
    v10 = v9;
  }

  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  v11 = fmaxf(v10, -1.0);
  sub_20C13B4A4();
  v12 = sub_20C13BB74();
  v13 = sub_20C13D1C4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349824;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2050;
    *(v14 + 14) = v8;
    *(v14 + 22) = 2050;
    *(v14 + 24) = a2;
    *(v14 + 32) = 2050;
    *(v14 + 34) = a1;
    _os_log_impl(&dword_20B517000, v12, v13, "Pulse monitor pulseRate:%{public}f | fractions diff: %{public}f starting: %{public}f, current: %{public}f", v14, 0x2Au);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v11;
}

unint64_t sub_20B71F224()
{
  result = qword_27C76B380;
  if (!qword_27C76B380)
  {
    sub_20C1337A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B380);
  }

  return result;
}

id TVWorkoutPlanHandoffView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TVWorkoutPlanHandoffView.init()()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView;
  *&v0[v1] = [objc_opt_self() smu:0 tvHandoffAnimationViewWithState:?];
  v2 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  v4 = [objc_opt_self() smu:*MEMORY[0x277D76920] preferredFontForTextStyle:1024 variant:?];
  [v3 setFont_];

  v5 = [objc_opt_self() whiteColor];
  [v3 setTextColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v2] = v3;
  v6 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_stackView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v7 setAxis_];
  [v7 setAlignment_];
  [v7 setSpacing_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v6] = v7;
  v47.receiver = v0;
  v47.super_class = type metadata accessor for TVWorkoutPlanHandoffView();
  v8 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_stackView;
  v10 = *&v8[OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_stackView];
  v46 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView;
  v11 = *&v8[OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView];
  v12 = v8;
  [v10 addArrangedSubview_];
  [*&v8[v9] addArrangedSubview_];
  v13 = *&v8[v9];
  v14 = v12;
  [v14 addSubview_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v45 = objc_opt_self();
  v16 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v18 = *(MEMORY[0x277D768C8] + 24);
  v19 = *&v8[v9];
  v20 = [v19 leadingAnchor];
  v21 = [v14 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v15];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  v24 = v22;
  v25 = [v19 trailingAnchor];
  v26 = [v14 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-v18];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  v29 = v27;
  v30 = [v19 topAnchor];
  v31 = [v14 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v16];

  LODWORD(v33) = 1148846080;
  [v32 setPriority_];
  v34 = [v19 bottomAnchor];
  v35 = [v14 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-v17];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14FE90;
  *(v38 + 32) = v24;
  *(v38 + 40) = v29;
  *(v38 + 48) = v32;
  *(v38 + 56) = v36;
  v39 = v32;

  sub_20B51C88C(0, &qword_281100500);
  v40 = sub_20C13CC54();

  [v45 activateConstraints_];

  v41 = [*&v8[v46] layer];
  [v41 setBeginTime_];

  v42 = [*&v8[v46] layer];
  LODWORD(v43) = 1.0;
  [v42 setSpeed_];

  return v14;
}

uint64_t sub_20B71F8A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20C13DDD4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_20C13CDA4();
  v2[8] = sub_20C13CD94();
  v5 = sub_20C13CD24();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_20B71F998, v5, v4);
}

uint64_t sub_20B71F998()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_stackView);
  v2 = [v1 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v3 = sub_20C13CC74();

  if (v3 >> 62)
  {
    result = sub_20C13DB34();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2F5430](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v0[2] = &unk_282361448;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    [v7 removeFromSuperview];
  }

LABEL_11:
  v8 = v0[4];
  v9 = [objc_opt_self() smu:v0[3] tvHandoffAnimationViewWithState:?];
  v10 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView;
  v11 = *(v8 + OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView);
  *(v8 + OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView) = v9;
  v12 = v9;

  [v1 insertArrangedSubview:v12 atIndex:0];
  v13 = [*(v8 + v10) layer];
  [v13 setBeginTime_];

  v14 = [*(v8 + v10) layer];
  LODWORD(v15) = 1.0;
  [v14 setSpeed_];

  if (qword_27C760CE0 != -1)
  {
    swift_once();
  }

  v17 = qword_27C79CF40;
  v16 = *algn_27C79CF48;
  sub_20C13E084();
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_20B71FC5C;

  return sub_20B71FFAC(v17, v16, 0, 0, 1);
}

uint64_t sub_20B71FC5C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_20B720974;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_20B71FDF0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20B71FDF0()
{

  v1 = *(v0 + 8);

  return v1();
}

id TVWorkoutPlanHandoffView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TVWorkoutPlanHandoffView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanHandoffView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B71FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20C13DDC4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_20B7200AC, 0, 0);
}

uint64_t sub_20B7200AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_20C13DDD4();
  v5 = sub_20B72092C(&qword_27C764908, MEMORY[0x277D85928]);
  sub_20C13E064();
  sub_20B72092C(&qword_27C764910, MEMORY[0x277D858F8]);
  sub_20C13DDE4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_20B72023C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_20B72023C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B7203F8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20B7203F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_20B720464(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2F5430](a2, a3);
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
    *v3 = v4;
    return sub_20B720978;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of TVWorkoutPlanHandoffView.configureIcon(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52A9D4;

  return v7(a1);
}

void (*sub_20B72062C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2F5430](a2, a3);
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
    *v3 = v4;
    return sub_20B7206AC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20B7206B4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2F5430](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_20B720734;
  }

  __break(1u);
  return result;
}

void sub_20B72073C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_iconView;
  *(v0 + v1) = [objc_opt_self() smu:0 tvHandoffAnimationViewWithState:?];
  v2 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  v4 = [objc_opt_self() smu:*MEMORY[0x277D76920] preferredFontForTextStyle:1024 variant:?];
  [v3 setFont_];

  v5 = [objc_opt_self() whiteColor];
  [v3 setTextColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v6 = OBJC_IVAR____TtC9SeymourUI24TVWorkoutPlanHandoffView_stackView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v7 setAxis_];
  [v7 setAlignment_];
  [v7 setSpacing_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B72092C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B72097C(uint64_t a1, double a2, double a3)
{
  result = sub_20B755B8C(v8, a3);
  v6 = fmax(a2, 1.0);
  if (v6 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  sub_20B755D7C(a1);
  result = sub_20B5F320C(v8);
  if (__OFSUB__(v7, 1))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B720A6C()
{
  v0 = sub_20C133DD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AC14();
    sub_20B720E18(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B720B78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-1] - v3;
  v5 = sub_20C133DD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence;
  swift_beginAccess();
  sub_20B721624(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20B721694(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_20C133DB4();
  sub_20BB093B8(v21, v11);
  v13 = v21[0];
  v12 = v21[1];
  v15 = v21[2];
  v14 = v21[3];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v13, v12, v15, v14, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v1 + 40);
    v19 = swift_getObjectType();
    (*(v18 + 8))(v13, v12, v15, v14, v19, v18);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20B720E18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_20C133DC4();
  LODWORD(v45[0]) = v7;
  BYTE4(v45[0]) = BYTE4(v7) & 1;
  v46 = 0;
  v47 = 1;
  sub_20B72150C();
  sub_20B721560();
  if (sub_20C133BF4())
  {
    sub_20C133DB4();
    sub_20BB093B8(v45, floor(v8));
    v32 = v45[0];
    v31 = v45[1];
    v34 = v45[2];
    v33 = v45[3];
    v35 = sub_20C133DD4();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v6, a1, v35);
    (*(v36 + 56))(v6, 0, 1, v35);
    v37 = OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence;
    swift_beginAccess();
    sub_20B7215B4(v6, v2 + v37);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v38 + 8))(v32, v31, v34, v33, ObjectType, v38);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v2 + 40);
      v41 = swift_getObjectType();
      (*(v40 + 8))(v32, v31, v34, v33, v41, v40);

      goto LABEL_11;
    }
  }

  else
  {
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = v2;
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass_];
    v13 = sub_20C132964();
    v15 = v14;

    v44 = v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v44 + 24);
      v17 = swift_getObjectType();
      v18 = [v11 bundleForClass_];
      v19 = sub_20C132964();
      v21 = v20;

      (*(v16 + 8))(v13, v15, v19, v21, v17, v16);

      swift_unknownObjectRelease();
    }

    v22 = v11;
    v23 = v13;
    v24 = v44;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 40);
      v26 = swift_getObjectType();
      v27 = [v22 bundleForClass_];
      v28 = sub_20C132964();
      v30 = v29;

      (*(v25 + 8))(v23, v15, v28, v30, v26, v25);

LABEL_11:

      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20B721318()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);
  sub_20B721694(v0 + OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionCadencePresenter()
{
  result = qword_27C764920;
  if (!qword_27C764920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B721400()
{
  sub_20B7214B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B7214B4()
{
  if (!qword_27C764930)
  {
    sub_20C133DD4();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C764930);
    }
  }
}

unint64_t sub_20B72150C()
{
  result = qword_27C764938;
  if (!qword_27C764938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764938);
  }

  return result;
}

unint64_t sub_20B721560()
{
  result = qword_27C764940;
  if (!qword_27C764940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764940);
  }

  return result;
}

uint64_t sub_20B7215B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B721624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B721694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7216FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence;
  v8 = sub_20C133DD4();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  v9 = (v4 + OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_metricBuilder);
  *v9 = a2;
  v9[1] = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_subscriptionToken) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13AC34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v11);
  return v4;
}

char *sub_20B7219DC(char a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = &v7[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [v16 setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [v16 setContentHuggingPriority:1 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v20];

  *&v7[v15] = v16;
  v21 = _UISolariumEnabled();
  v22 = &v7[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout];
  *v22 = 0x4010000000000000;
  v23 = vdup_n_s32(v21);
  v24.i64[0] = v23.u32[0];
  v24.i64[1] = v23.u32[1];
  v25 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), xmmword_20C156580, xmmword_20C156570);
  *(v22 + 24) = v25;
  *(v22 + 8) = v25;
  *(v22 + 40) = xmmword_20C156590;
  v26 = OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView;
  *&v7[v26] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *&v7[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView] = 0;
  v69.receiver = v7;
  v69.super_class = type metadata accessor for RecencyIconView();
  v27 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a4, a5, a6, a7);
  v28 = *&v27[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView];
  v29 = v27;
  [v29 addSubview_];
  [v29 setClipsToBounds_];
  v30 = OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];
  if (a1)
  {
    v32 = *MEMORY[0x277D76938];
    v33 = objc_opt_self();
    v34 = v31;
    v35 = [v33 preferredFontDescriptorWithTextStyle:v32 compatibleWithTraitCollection:0];
    v36 = [v35 fontDescriptorWithSymbolicTraits_];
    if (v36)
    {
      v37 = v36;

      v35 = v37;
    }

    v38 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  }

  else
  {
    v39 = *MEMORY[0x277D743F8];
    v40 = v31;
    v38 = sub_20B6B1AEC(v39, 0, 0x8000, 12.0);
  }

  [v31 setFont_];

  [*&v29[v30] setTextAlignment_];
  [v29 addSubview_];
  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150AE0;
  v43 = [v29 widthAnchor];

  v44 = &v29[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout];
  v45 = [v43 constraintGreaterThanOrEqualToConstant_];

  *(v42 + 32) = v45;
  v46 = [v29 heightAnchor];

  v47 = [v46 constraintGreaterThanOrEqualToConstant_];
  *(v42 + 40) = v47;
  v48 = [*&v29[v30] leadingAnchor];
  v49 = [v29 leadingAnchor];

  v50 = [v48 constraintEqualToAnchor:v49 constant:v44[2]];
  *(v42 + 48) = v50;
  v51 = [*&v29[v30] trailingAnchor];
  v52 = [v29 trailingAnchor];

  v53 = [v51 constraintEqualToAnchor:v52 constant:-v44[4]];
  *(v42 + 56) = v53;
  v54 = [*&v29[v30] topAnchor];
  v55 = [v29 topAnchor];

  v56 = [v54 constraintGreaterThanOrEqualToAnchor:v55 constant:v44[1]];
  *(v42 + 64) = v56;
  v57 = [*&v29[v30] bottomAnchor];
  v58 = [v29 bottomAnchor];

  v59 = [v57 constraintLessThanOrEqualToAnchor:v58 constant:-v44[3]];
  *(v42 + 72) = v59;
  v60 = [*&v29[v30] centerYAnchor];
  v61 = [v29 centerYAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v42 + 80) = v62;
  sub_20B5E29D0();
  v63 = sub_20C13CC54();

  [v41 activateConstraints_];

  v64 = &v29[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
  *v64 = a2;
  *(v64 + 1) = a3;

  v65 = *&v29[v30];
  if (a3)
  {

    v66 = sub_20C13C914();
  }

  else
  {
    v66 = 0;
  }

  [v65 setText_];

  [v29 invalidateIntrinsicContentSize];

  return v29;
}

void sub_20B7220C8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RecencyIconView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView];
    v3 = v1;
    [v3 bounds];
    [v0 convertRect:v3 fromCoordinateSpace:?];
    [v2 setFrame_];
  }

  else
  {
    v4 = [v0 superview];
    if (!v4)
    {
      return;
    }

    v3 = v4;
    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView];
    [v4 bounds];
    [v0 convertRect:v3 fromCoordinateSpace:?];
    [v5 setFrame_];
    if (_UISolariumEnabled())
    {
      [v0 bounds];
      v6 = CGRectGetHeight(v8) * 0.5;
    }

    else
    {
      v6 = *&v0[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout];
    }

    [v0 smu:v6 setContinuousCornerRadius:?];
  }
}

void sub_20B72224C()
{
  v1 = v0;
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecencyIconView();
  v16.receiver = v0;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, sel_didMoveToSuperview);
  v7 = [v0 superview];
  if (v7)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10 && (v11 = (*(v10 + 8))(ObjectType, v10)) != 0)
    {
      v12 = v11;
      v13 = [*&v1[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] image];
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

        sub_20BD519D8(v12, v5, sub_20B722828, v15);

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
    }
  }
}

void sub_20B72246C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView) setImage_];
    [v3 setNeedsLayout];
  }
}

id sub_20B722590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecencyIconView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B722668()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAdjustsFontForContentSizeCategory_];
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v7];

  *(v0 + v2) = v3;
  v8 = _UISolariumEnabled();
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout;
  *v9 = 0x4010000000000000;
  v10 = vdup_n_s32(v8);
  v11.i64[0] = v10.u32[0];
  v11.i64[1] = v10.u32[1];
  v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL)), xmmword_20C156580, xmmword_20C156570);
  *(v9 + 24) = v12;
  *(v9 + 8) = v12;
  *(v9 + 40) = xmmword_20C156590;
  v13 = OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B722838()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_20C136D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
  swift_beginAccess();
  sub_20B722AFC(v1 + v12, v4);
  v13 = sub_20C1377C4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_20B722B6C(v4);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84F90];
    *(v15 + 16) = MEMORY[0x277D84F90];
    *(v15 + 24) = v16;
    return sub_20C137CA4();
  }

  else
  {
    sub_20C1377A4();
    (*(v14 + 8))(v4, v13);
    (*(v6 + 32))(v11, v8, v5);
    sub_20BC301A0(*(v1 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies));
    v19 = v18;
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    sub_20C137CA4();
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_20B722AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B722B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B722C04(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + (v12 | (v11 << 6)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_20B722CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135C84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_20B747A04(*(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v13);
    sub_20B7479A0(v13, v7);
    sub_20B6FFD50(v10, v7);
    sub_20B747A68(v10, MEMORY[0x277D52060]);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_20B722ED8(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B723248(a2);
  }

  return result;
}

uint64_t sub_20B722F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DurationFilterUpdated();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_unknownObjectRetain();

    swift_getObjectType();
    v9 = sub_20C134EC4();
    (*(*(v9 - 8) + 16))(v7, a3, v9);
    sub_20B52F9E8(a1, &v7[*(v5 + 20)], &qword_27C7627B8);
    sub_20B753124(&qword_27C764990, type metadata accessor for DurationFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20B747A68(v7, type metadata accessor for DurationFilterUpdated);
  }

  return result;
}

uint64_t sub_20B7230FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 248))(v2, ObjectType, v4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B7231C0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FD6C(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_20B723248(int a1)
{
  v2 = v1;
  v86 = sub_20C13BB84();
  v4 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C554();
  v81 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v80 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C132EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v70 - v13;
  if ((sub_20BF7A8FC(4, v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v102[0] = v26;
      *v25 = 136446210;
      v27 = sub_20C1368A4();
      v29 = sub_20B51E694(v27, v28, v102);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20B517000, v23, v24, "Unsupported property type: %{public}s. Aborting row creation.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v4 + 8))(v6, v86);
  }

  v73 = v7;
  v72 = a1;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator);
  v15 = (v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer + 24));
  v16 = sub_20C138D34();
  v18 = v17;

  v19 = sub_20BC77974(v16, v18, 0x69662E6B636F6C63, 0xEA00000000006C6CLL, v14, v2);

  if ((*(v14 + *(*v14 + 200)) & 8) != 0)
  {
    v20 = 0;
    v22 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v20 = sub_20C138D34();
    v22 = v21;
  }

  v92 = 0uLL;
  LOBYTE(v93) = 1;
  *(&v93 + 1) = 0;
  *&v94 = 0;
  WORD4(v94) = 128;
  v95 = 0uLL;
  v96 = xmmword_20C1565F0;
  *&v97 = v20;
  *(&v97 + 1) = v22;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = v19;
  v99 = MEMORY[0x277D84F90];
  *&v100 = 0;
  *(&v100 + 1) = v20;
  *v101 = v22;
  *&v101[8] = xmmword_20C150190;
  nullsub_1(&v92);
  v31 = v2;
  v32 = v2 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row;
  v33 = *(v32 + 144);
  v102[8] = *(v32 + 128);
  v102[9] = v33;
  v103 = *(v32 + 160);
  v34 = *(v32 + 80);
  v102[4] = *(v32 + 64);
  v102[5] = v34;
  v35 = *(v32 + 112);
  v102[6] = *(v32 + 96);
  v102[7] = v35;
  v36 = *(v32 + 16);
  v102[0] = *v32;
  v102[1] = v36;
  v37 = *(v32 + 48);
  v102[2] = *(v32 + 32);
  v102[3] = v37;
  v38 = *v101;
  *(v32 + 128) = v100;
  *(v32 + 144) = v38;
  *(v32 + 160) = *&v101[16];
  v39 = v97;
  *(v32 + 64) = v96;
  *(v32 + 80) = v39;
  v40 = v99;
  *(v32 + 96) = v98;
  *(v32 + 112) = v40;
  v41 = v93;
  *v32 = v92;
  *(v32 + 16) = v41;
  v42 = v95;
  *(v32 + 32) = v94;
  *(v32 + 48) = v42;

  sub_20B520158(v102, &qword_27C762340);
  v84 = v31;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    return swift_unknownObjectRelease();
  }

  v71 = result;
  if (![*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_27:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v43 = v82;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v44 = v85;
  v45 = sub_20C13BE74();
  result = (*(v83 + 8))(v43, v44);
  v82 = *(v45 + 16);
  v83 = v45;
  if (!v82)
  {
LABEL_25:

    goto LABEL_27;
  }

  v46 = 0;
  v78 = v83 + 32;
  v79 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_identifier;
  v76 = (v10 + 8);
  v77 = (v10 + 16);
  while (2)
  {
    if (v46 < *(v83 + 16))
    {
      v47 = (v78 + 24 * v46);
      v48 = v47[1];
      v75 = *v47;
      v49 = v47[2];
      v85 = v46 + 1;
      (*v77)(v12, v84 + v79, v9);
      v50 = *(v48 + 16);

      v86 = v49;

      v51 = 0;
      do
      {
        if (v50 == v51)
        {
          (*v76)(v12, v9);
          goto LABEL_15;
        }

        v52 = v51 + 1;
        sub_20B753124(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v53 = sub_20C13C894();
        v51 = v52;
      }

      while ((v53 & 1) == 0);
      (*v76)(v12, v9);
      v54 = *(v32 + 128);
      v55 = *(v32 + 144);
      v56 = *(v32 + 96);
      v88[7] = *(v32 + 112);
      v89 = v54;
      v90 = v55;
      v91 = *(v32 + 160);
      v57 = *(v32 + 80);
      v88[4] = *(v32 + 64);
      v88[5] = v57;
      v88[6] = v56;
      v58 = *(v32 + 16);
      v88[0] = *v32;
      v88[1] = v58;
      v59 = *(v32 + 48);
      v88[2] = *(v32 + 32);
      v88[3] = v59;
      v60 = sub_20B5EAF8C(v88);
      if (v60 == 1)
      {
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v61 = *(&v89 + 1);
        v62 = v90;
      }

      v63 = v86;
      v74 = &v70;
      v87[0] = v61;
      v87[1] = v62;
      MEMORY[0x28223BE20](v60);
      *(&v70 - 2) = v87;
      v64 = sub_20B796758(sub_20B5EAFA4, (&v70 - 4), v63);

      if ((v64 & 1) == 0)
      {
LABEL_15:

        v46 = v85;
        if (v85 == v82)
        {
          goto LABEL_25;
        }

        continue;
      }

      sub_20B5E2E18();
      v65 = sub_20C13D374();
      v67 = v80;
      v66 = v81;
      *v80 = v65;
      v68 = v73;
      (*(v66 + 104))(v67, *MEMORY[0x277D85200], v73);
      v69 = sub_20C13C584();
      result = (*(v66 + 8))(v67, v68);
      if ((v69 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v72 & 0x80) != 0)
      {
        sub_20C10AB98(v84, v75, v72 & 1, v71);
      }

      else
      {
        sub_20B61F57C(v75, v48, v86, v84, v72 & 1, v71);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_20B723BFC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality, &unk_27C7710A0);
  v3 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DurationFilterOptionsShelf()
{
  result = qword_27C764978;
  if (!qword_27C764978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B723DC4()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B723EF4();
    if (v1 <= 0x3F)
    {
      sub_20C134EC4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B723EF4()
{
  if (!qword_27C764988)
  {
    sub_20C134734();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C764988);
    }
  }
}

uint64_t sub_20B723F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B723FC4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B72418C()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C134E04();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B7414BC(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C764A78);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C764A78);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C764A78);
      sub_20B520158(v33, &qword_27C764A78);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C764A78);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C764A78);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C764A78);
      sub_20B520158(v33, &qword_27C764A78);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764A70);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C764A78);
    sub_20B520158(v12, &qword_27C764A78);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C764A78);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B7248D8()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C1341A4();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B741980(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C7627B8);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C7627B8);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C7627B8);
      sub_20B520158(v33, &qword_27C7627B8);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C7627B8);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C7627B8);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C7627B8);
      sub_20B520158(v33, &qword_27C7627B8);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764998);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C7627B8);
    sub_20B520158(v12, &qword_27C7627B8);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C7627B8);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B725024()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C1365F4();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B741E00(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C771090);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C771090);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C771090);
      sub_20B520158(v33, &qword_27C771090);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C771090);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C771090);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C771090);
      sub_20B520158(v33, &qword_27C771090);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764A18);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C771090);
    sub_20B520158(v12, &qword_27C771090);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C771090);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B725770()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C138244();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B7422C4(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C762710);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C762710);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C762710);
      sub_20B520158(v33, &qword_27C762710);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C762710);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C762710);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C762710);
      sub_20B520158(v33, &qword_27C762710);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764AB8);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C762710);
    sub_20B520158(v12, &qword_27C762710);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C762710);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B725EBC()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C1382B4();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B742788(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C7627E8);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C7627E8);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C7627E8);
      sub_20B520158(v33, &qword_27C7627E8);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C7627E8);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C7627E8);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C7627E8);
      sub_20B520158(v33, &qword_27C7627E8);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764A50);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C7627E8);
    sub_20B520158(v12, &qword_27C7627E8);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C7627E8);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B726608()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C1333E4();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B742C4C(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C764AA0);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C764AA0);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C764AA0);
      sub_20B520158(v33, &qword_27C764AA0);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C764AA0);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C764AA0);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C764AA0);
      sub_20B520158(v33, &qword_27C764AA0);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764A98);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C764AA0);
    sub_20B520158(v12, &qword_27C764AA0);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C764AA0);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B726D54()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C1334D4();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B743110(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C762758);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C762758);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C762758);
      sub_20B520158(v33, &qword_27C762758);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C762758);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C762758);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C762758);
      sub_20B520158(v33, &qword_27C762758);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C7649F8);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C762758);
    sub_20B520158(v12, &qword_27C762758);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C762758);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B7274A0()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C1370C4();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B7435D4(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &qword_27C764AE0);
    sub_20B52F9E8(v37, &v2[v38], &qword_27C764AE0);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C764AE0);
      sub_20B520158(v33, &qword_27C764AE0);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &qword_27C764AE0);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &qword_27C764AE0);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &qword_27C764AE0);
      sub_20B520158(v33, &qword_27C764AE0);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764AD8);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &qword_27C764AE0);
    sub_20B520158(v12, &qword_27C764AE0);
    v42(v40, v28);
    sub_20B520158(v2, &qword_27C764AE0);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B727BEC()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30);
  MEMORY[0x28223BE20](v62);
  v2 = &v43 - v1;
  v61 = sub_20C133E24();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v55 = sub_20C133A74();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v43 - v15;
  v16 = *(v0 + *(*v0 + 200));
  v17 = *v0;
  v58 = *(*v0 + 224);
  v18 = *(v0 + v58);
  v19 = *(v18 + 16);
  v20 = qword_27C79BF30;
  v56 = *(v17 + 208);

  v63 = v0;
  v57 = v20;
  result = swift_beginAccess();
  v54 = v19;
  if (!v19)
  {
LABEL_12:

    return 0;
  }

  v22 = 0;
  v51 = v64 + 56;
  v52 = v64 + 16;
  v50 = (v3 + 16);
  v49 = (v3 + 8);
  v48 = v64 + 48;
  v44 = (v64 + 32);
  v65 = (v64 + 8);
  v23 = (v16 >> 6) & 1;
  v47 = v7;
  v53 = v18;
  while (v22 < *(v18 + 16))
  {
    v66 = v22;
    v67 = v23;
    v25 = v64;
    v26 = *(v64 + 16);
    v27 = v68;
    v28 = v55;
    v26(v68, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v64 + 72) * v22, v55);
    v26(v12, v27, v28);
    (*(v25 + 56))(v12, 0, 1, v28);
    v29 = v63;
    v30 = v60;
    v31 = v61;
    (*v50)(v60, v63 + v57, v61);
    LODWORD(v29) = *(v29 + v56);

    v33 = v12;
    v34 = v2;
    v35 = v59;
    sub_20B743A98(v32, v29, v59);

    v36 = v30;
    v37 = v35;
    v2 = v34;
    v12 = v33;
    (*v49)(v36, v31);
    v38 = *(v62 + 48);
    sub_20B52F9E8(v33, v2, &unk_27C767600);
    sub_20B52F9E8(v37, &v2[v38], &unk_27C767600);
    v39 = *(v25 + 48);
    if (v39(v2, 1, v28) == 1)
    {
      sub_20B520158(v37, &unk_27C767600);
      sub_20B520158(v33, &unk_27C767600);
      v24 = v39(&v2[v38], 1, v28);
      v18 = v53;
      if (v24 == 1)
      {
        sub_20B520158(v2, &unk_27C767600);
        (*v65)(v68, v28);
LABEL_14:

        return v67;
      }

      goto LABEL_4;
    }

    v40 = v47;
    sub_20B52F9E8(v2, v47, &unk_27C767600);
    if (v39(&v2[v38], 1, v28) == 1)
    {
      sub_20B520158(v37, &unk_27C767600);
      sub_20B520158(v33, &unk_27C767600);
      (*v65)(v40, v28);
      v18 = v53;
LABEL_4:
      sub_20B520158(v2, &qword_27C764A30);
      result = (*v65)(v68, v28);
      goto LABEL_5;
    }

    v41 = v45;
    (*v44)(v45, &v2[v38], v28);
    sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
    v46 = sub_20C13C894();
    v42 = *v65;
    (*v65)(v41, v28);
    sub_20B520158(v37, &unk_27C767600);
    sub_20B520158(v12, &unk_27C767600);
    v42(v40, v28);
    sub_20B520158(v2, &unk_27C767600);
    result = v42(v68, v28);
    v18 = v53;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_5:
    v22 = v66 + 1;
    v23 = v67 + 1;
    if (v54 == v66 + 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B728338(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C134E04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B7337FC(v7);
      sub_20B520158(v7, &qword_27C764A88);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D538(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D538(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B7337FC(v7);
        sub_20B520158(v7, &qword_27C764A88);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D538(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D538(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D9090(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D538(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D538(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D538(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D538(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72900C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C1341A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B7344F4(v7);
      sub_20B520158(v7, &qword_27C7649A8);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D57C(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D57C(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B7344F4(v7);
        sub_20B520158(v7, &qword_27C7649A8);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D57C(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D57C(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D90BC(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D57C(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D57C(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D57C(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D57C(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}