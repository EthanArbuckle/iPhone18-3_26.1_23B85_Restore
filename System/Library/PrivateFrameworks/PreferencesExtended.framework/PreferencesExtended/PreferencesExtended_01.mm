uint64_t sub_21B8CEE58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99550, &unk_21B8D55D0);
  result = sub_21B8D34A0();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_21B8D3540();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B8CF0C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B8D33F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_21B8D3540();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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

unint64_t sub_21B8CF230(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21B8BEE04(a2);
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
      sub_21B8CEBE8(v14, a3 & 1);
      v18 = *v4;
      result = sub_21B8BEE04(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_21B8D34E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_21B8CF4C4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_21B8CF37C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21B8BEE04(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21B8CF688();
    result = v17;
    goto LABEL_8;
  }

  sub_21B8CEE58(v14, a3 & 1);
  v18 = *v4;
  result = sub_21B8BEE04(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_21B8D34E0();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void *sub_21B8CF4C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99548, qword_21B8D5540);
  v2 = *v0;
  v3 = sub_21B8D3490();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_21B8CF634(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21B8CE278(a1);
}

unint64_t sub_21B8CF63C()
{
  result = qword_281218B38;
  if (!qword_281218B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281218B38);
  }

  return result;
}

id sub_21B8CF688()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99550, &unk_21B8D55D0);
  v2 = *v0;
  v3 = sub_21B8D3490();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

unint64_t sub_21B8CF7E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99550, &unk_21B8D55D0);
  v3 = sub_21B8D34B0();
  v16 = *(a1 + 32);
  result = sub_21B8BEE04(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = sub_21B8BEE04(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B8CF8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99548, qword_21B8D5540);
  v3 = sub_21B8D34B0();
  v13 = *(a1 + 32);
  result = sub_21B8BEE04(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_21B8BEE04(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B8CFA14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99558, &qword_21B8D5678);
  v0 = *(sub_21B8D2EE0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_21B8D55E0;
  sub_21B8D2ED0();
  sub_21B8D2EC0();
  sub_21B8D04A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99560, qword_21B8D5680);
  sub_21B8D0500();
  return sub_21B8D33E0();
}

void sub_21B8CFB44()
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v0 = sub_21B8D2C70();
  __swift_project_value_buffer(v0, qword_28121AE88);
  oslog = sub_21B8D2C50();
  v1 = sub_21B8D32B0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D55E0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D6500, &v5);
    _os_log_impl(&dword_21B8B6000, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v3, -1, -1);
    MEMORY[0x21CEF9ED0](v2, -1, -1);
  }
}

void sub_21B8CFCCC(void *a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B8D2C70();
  __swift_project_value_buffer(v2, qword_28121AE88);
  v3 = sub_21B8D2C50();
  v4 = sub_21B8D32B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D55E0, &v13);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D6500, &v13);
    _os_log_impl(&dword_21B8B6000, v3, v4, "Start (%s.%s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v6, -1, -1);
    MEMORY[0x21CEF9ED0](v5, -1, -1);
  }

  v7 = a1;
  v8 = sub_21B8D2C50();
  v9 = sub_21B8D32B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2113;
    *(v10 + 14) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_21B8B6000, v8, v9, "Update Navigation Item for %{private,mask.hash}@", v10, 0x16u);
    sub_21B8BE99C(v11);
    MEMORY[0x21CEF9ED0](v11, -1, -1);
    MEMORY[0x21CEF9ED0](v10, -1, -1);
  }

  sub_21B8CFB44();
}

void sub_21B8CFF28(void *a1, void *a2)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8D2C70();
  __swift_project_value_buffer(v4, qword_28121AE88);
  v5 = a1;
  v6 = a2;
  oslog = sub_21B8D2C50();
  v7 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136316419;
    *(v8 + 4) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D55E0, &v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D64D0, &v14);
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2113;
    *(v8 + 34) = v5;
    *(v8 + 42) = 2160;
    *(v8 + 44) = 1752392040;
    *(v8 + 52) = 2113;
    *(v8 + 54) = v6;
    *v9 = v5;
    v9[1] = v6;
    v11 = v5;
    v12 = v6;
    _os_log_impl(&dword_21B8B6000, oslog, v7, "…Complete (%s.%s) viewController: %{private,mask.hash}@, child: %{private,mask.hash}@", v8, 0x3Eu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD994F0, &unk_21B8D4240);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v10, -1, -1);
    MEMORY[0x21CEF9ED0](v8, -1, -1);
  }
}

uint64_t sub_21B8D015C(void *a1, void *a2)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8D2C70();
  __swift_project_value_buffer(v4, qword_28121AE88);
  v5 = a1;
  v6 = a2;
  v7 = sub_21B8D2C50();
  v8 = sub_21B8D32B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136316419;
    *(v9 + 4) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D55E0, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D64D0, &v18);
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2113;
    *(v9 + 34) = v5;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2113;
    *(v9 + 54) = v6;
    *v10 = v5;
    v10[1] = v6;
    v12 = v5;
    v13 = v6;
    _os_log_impl(&dword_21B8B6000, v7, v8, "Start (%s.%s) viewController: %{private,mask.hash}@, child: %{private,mask.hash}@…", v9, 0x3Eu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD994F0, &unk_21B8D4240);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v11, -1, -1);
    MEMORY[0x21CEF9ED0](v9, -1, -1);
  }

  v14 = [v5 childViewControllers];
  sub_21B8D045C();
  v15 = sub_21B8D3200();

  if (v15 >> 62)
  {
    v16 = sub_21B8D3480();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    if (v5 == v6)
    {
      v16 = 1;
    }

    else
    {
      if (qword_281219300 != -1)
      {
        swift_once();
      }

      sub_21B8CD5E0(v6, v5);
      v16 = 0;
    }
  }

  sub_21B8CFF28(v5, v6);
  return v16;
}

unint64_t sub_21B8D045C()
{
  result = qword_281218B30;
  if (!qword_281218B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281218B30);
  }

  return result;
}

unint64_t sub_21B8D04A8()
{
  result = qword_281218BD8;
  if (!qword_281218BD8)
  {
    sub_21B8D2EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218BD8);
  }

  return result;
}

unint64_t sub_21B8D0500()
{
  result = qword_281218B80;
  if (!qword_281218B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99560, qword_21B8D5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218B80);
  }

  return result;
}

void PSViewController.register(_:url:undoAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v5 = sub_21B8D2B60();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B8D2AA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B8D30E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = &type metadata for SettingsAppFeatureFlags;
  v32[4] = sub_21B8D08D4();
  LOBYTE(v32[0]) = 0;
  v19 = sub_21B8D2BE0();
  __swift_destroy_boxed_opaque_existential_0(v32);
  if (v19)
  {
    v20 = [v4 undoManager];
    if (v20)
    {
      v21 = v20;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        (*(v10 + 16))(v13, v28, v9);
        (*(v27 + 16))(v8, v29, v5);
        v22 = v21;

        sub_21B8D30F0();
        sub_21B8D3260();

        (*(v15 + 8))(v18, v14);
        return;
      }
    }

    if (qword_27CD991E0 != -1)
    {
      swift_once();
    }

    v23 = sub_21B8D2C70();
    __swift_project_value_buffer(v23, qword_27CD99BC0);
    v24 = sub_21B8D2C50();
    v25 = sub_21B8D3270();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21B8B6000, v24, v25, "UndoManager that for Settings unavailable.", v26, 2u);
      MEMORY[0x21CEF9ED0](v26, -1, -1);
    }
  }
}

unint64_t sub_21B8D08D4()
{
  result = qword_27CD99568;
  if (!qword_27CD99568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99568);
  }

  return result;
}

uint64_t sub_21B8D0928(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = sub_21B8D2AA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B8D2B60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a5);
  sub_21B8D2B30();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v23[3] = sub_21B8BBA3C();
  v23[0] = a3;
  v20 = a3;
  v21 = a1;
  sub_21B8D2A90();
  PSViewController.register(_:url:undoAction:)(v12, v17, sub_21B8D0B34, v19);

  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21B8D0B44()
{
  MEMORY[0x21CEF9F70](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B8D0BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B8D3330();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99570, &qword_21B8D56F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_21B8D2AD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v34 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - v24;
  sub_21B8D1260(v2, &v34 - v24);
  if (qword_281218AD8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_281218AE0);
  if (_sSo8NSBundleC19PreferencesExtendedE0B14PluginLocationV2eeoiySbAE_AEtFZ_0())
  {
    sub_21B8D2010(v25);
    sub_21B8D3340();
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  if (qword_281218B00 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_281218B08);
  if (_sSo8NSBundleC19PreferencesExtendedE0B14PluginLocationV2eeoiySbAE_AEtFZ_0())
  {
    sub_21B8D2010(v25);
    sub_21B8D3360();
    goto LABEL_18;
  }

  if (qword_281218AB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_281218AC0);
  if (_sSo8NSBundleC19PreferencesExtendedE0B14PluginLocationV2eeoiySbAE_AEtFZ_0())
  {
    sub_21B8D2010(v25);
    sub_21B8D3350();
    goto LABEL_18;
  }

  v26 = *MEMORY[0x277CC91C0];
  v27 = *(v12 + 104);
  v34 = v12 + 104;
  v37 = v26;
  v36 = v27;
  v27(v15);
  v28 = sub_21B8D2B60();
  v35 = *(*(v28 - 8) + 56);
  v35(v10, 1, 1, v28);
  v38 = "ibrary/PreferenceBundles/";
  sub_21B8D2B50();
  v29 = _sSo8NSBundleC19PreferencesExtendedE0B14PluginLocationV2eeoiySbAE_AEtFZ_0();
  sub_21B8D2010(v23);
  if (v29)
  {
    sub_21B8D2010(v25);
    sub_21B8D3320();
LABEL_17:
    sub_21B8D3370();
    goto LABEL_18;
  }

  v36(v15, v37, v11);
  v30 = 1;
  v35(v10, 1, 1, v28);
  sub_21B8D2B50();
  v31 = _sSo8NSBundleC19PreferencesExtendedE0B14PluginLocationV2eeoiySbAE_AEtFZ_0();
  sub_21B8D2010(v20);
  sub_21B8D2010(v25);
  if (v31)
  {
    sub_21B8D3320();
    goto LABEL_17;
  }

LABEL_19:
  v32 = sub_21B8D3380();
  return (*(*(v32 - 8) + 56))(a1, v30, 1, v32);
}

uint64_t sub_21B8D10B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99570, &qword_21B8D56F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_21B8D2AD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  __swift_allocate_value_buffer(v9, qword_281218AE0);
  __swift_project_value_buffer(v9, qword_281218AE0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v10 = sub_21B8D2B60();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_21B8D2B50();
}

uint64_t sub_21B8D1260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSBundle.PreferencesPluginLocation.init(path:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99570, &qword_21B8D56F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_21B8D2AD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91C0]);
  v8 = sub_21B8D2B60();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_21B8D2B50();
}

uint64_t sub_21B8D143C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99570, &qword_21B8D56F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_21B8D2AD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  __swift_allocate_value_buffer(v9, qword_281218B08);
  __swift_project_value_buffer(v9, qword_281218B08);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v10 = sub_21B8D2B60();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_21B8D2B50();
}

uint64_t sub_21B8D160C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99570, &qword_21B8D56F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_21B8D2AD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  __swift_allocate_value_buffer(v9, qword_281218AC0);
  __swift_project_value_buffer(v9, qword_281218AC0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v10 = sub_21B8D2B60();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_21B8D2B50();
}

uint64_t sub_21B8D17DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_21B8D1260(v6, a3);
}

uint64_t NSBundle.PreferencesPluginLocation.description.getter()
{
  sub_21B8D3440();
  type metadata accessor for NSBundle.PreferencesPluginLocation();
  v0 = sub_21B8D3580();

  MEMORY[0x21CEF9510](0xD000000000000013, 0x800000021B8D6580);
  v1 = sub_21B8D2AE0();
  MEMORY[0x21CEF9510](v1);

  MEMORY[0x21CEF9510](32039, 0xE200000000000000);
  return v0;
}

uint64_t NSBundle.PreferencesPluginLocation.hash(into:)()
{
  sub_21B8D2B60();
  sub_21B8D1FA0(&qword_27CD994B8, MEMORY[0x277CC9260]);

  return sub_21B8D3170();
}

uint64_t NSBundle.PreferencesPluginLocation.hashValue.getter()
{
  sub_21B8D3550();
  sub_21B8D2B60();
  sub_21B8D1FA0(&qword_27CD994B8, MEMORY[0x277CC9260]);
  sub_21B8D3170();
  return sub_21B8D3570();
}

uint64_t sub_21B8D1A04()
{
  sub_21B8D3550();
  sub_21B8D2B60();
  sub_21B8D1FA0(&qword_27CD994B8, MEMORY[0x277CC9260]);
  sub_21B8D3170();
  return sub_21B8D3570();
}

uint64_t sub_21B8D1A8C()
{
  sub_21B8D2B60();
  sub_21B8D1FA0(&qword_27CD994B8, MEMORY[0x277CC9260]);

  return sub_21B8D3170();
}

uint64_t sub_21B8D1B10()
{
  sub_21B8D3550();
  sub_21B8D2B60();
  sub_21B8D1FA0(&qword_27CD994B8, MEMORY[0x277CC9260]);
  sub_21B8D3170();
  return sub_21B8D3570();
}

uint64_t sub_21B8D1BA0()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = sub_21B8D2B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  sub_21B8D2B00();
  sub_21B8D2B10();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v15 = 0;
  v9 = [objc_opt_self() defaultManager];
  sub_21B8D2B40();
  v10 = sub_21B8D3180();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v15];

  v8(v7, v0);
  v12 = *MEMORY[0x277D85DE8];
  return (v11 & v15);
}

id sub_21B8D1D74()
{
  v0 = sub_21B8D2B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_21B8D2B00();
  v8 = v5;
  sub_21B8D2B10();
  v9 = *(v1 + 8);
  v9(v5, v0);
  if ((sub_21B8D1BA0() & 1) != 0 && (v10 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v11 = sub_21B8D2AF0(), v8 = [v10 initWithURL_], v11, v8))
  {
    v9(v7, v0);
  }

  else
  {
    sub_21B8CC17C();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v9(v7, v0);
  }

  return v8;
}

uint64_t sub_21B8D1FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B8D2010(uint64_t a1)
{
  v2 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B8D20B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21B8D2C70();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_21B8D2C60();
}

uint64_t sub_21B8D2138()
{
  v0 = sub_21B8D2C70();
  __swift_allocate_value_buffer(v0, qword_28121AE88);
  __swift_project_value_buffer(v0, qword_28121AE88);

  return sub_21B8D2C60();
}

uint64_t sub_21B8D21C4()
{
  v0 = sub_21B8D2C70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B8D2C40();
  __swift_allocate_value_buffer(v5, qword_28121AE70);
  __swift_project_value_buffer(v5, qword_28121AE70);
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28121AE88);
  (*(v1 + 16))(v4, v6, v0);
  return sub_21B8D2C20();
}

uint64_t sub_21B8D2300()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21B8D2370()
{
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v0);
  return sub_21B8D3570();
}

uint64_t sub_21B8D2400()
{
  sub_21B8D3550();
  v1 = *v0;
  sub_21B8D2344();
  return sub_21B8D3570();
}

unint64_t PreferencesPluginError.description.getter()
{
  v1 = 0xD00000000000001ELL;
  v2 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000042;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002ELL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t PreferencesPluginError.hashValue.getter()
{
  v1 = *v0;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v1);
  return sub_21B8D3570();
}

unint64_t sub_21B8D2594()
{
  result = qword_27CD99590;
  if (!qword_27CD99590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99590);
  }

  return result;
}

unint64_t sub_21B8D25F8()
{
  v1 = 0xD00000000000001ELL;
  v2 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000042;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002ELL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t getEnumTagSinglePayload for PreferencesPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreferencesPluginError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAppFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B8D2918()
{
  result = qword_27CD99598;
  if (!qword_27CD99598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99598);
  }

  return result;
}

const char *sub_21B8D2980()
{
  v1 = "ZeroKeywordSearch";
  if (*v0 != 1)
  {
    v1 = "ModernNavigation";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "SettingsUndo";
  }
}

uint64_t sub_21B8D29E0()
{
  v1 = *v0;
  sub_21B8D3440();
  MEMORY[0x21CEF9510](0xD000000000000028, 0x800000021B8D6820);
  sub_21B8D3470();
  return 0;
}