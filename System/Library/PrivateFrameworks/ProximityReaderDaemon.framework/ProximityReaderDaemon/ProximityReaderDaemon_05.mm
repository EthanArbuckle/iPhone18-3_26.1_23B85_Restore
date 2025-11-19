unint64_t sub_2612B9DAC()
{
  v1 = 0x746E61686372656DLL;
  v2 = 0x496E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x646F43726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_2612B9E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BE7A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B9E5C(uint64_t a1)
{
  v2 = sub_2612BD208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9E98(uint64_t a1)
{
  v2 = sub_2612BD208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9ED4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB48, &qword_2613A80A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BD208();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_2613A238C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2612BA0B8()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612BA1C4()
{
  *v0;
  *v0;
  sub_2613A19DC();
}

uint64_t sub_2612BA2BC()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612BA3C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612BEE34();
  *a2 = result;
  return result;
}

void sub_2612BA3F4(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000064656B63;
  v3 = *v1;
  v4 = 0xEC00000064657472;
  v5 = 0x61745349556E6970;
  v6 = 0xED000064656C6563;
  v7 = 0x6E614349556E6970;
  v8 = 0x69614649556E6970;
  if (v3 == 3)
  {
    v2 = 0xEB0000000064656CLL;
  }

  else
  {
    v8 = 0x6F6C4249556E6970;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v2;
  }

  if (*v1)
  {
    v5 = 0x6D6F4349556E6970;
    v4 = 0xEE00646574656C70;
  }

  if (*v1 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_2612BA4BC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x4972656E74726170;
    if (a1 != 2)
    {
      v6 = 0x496E6F6973736573;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5474736575716572;
    v2 = 0x646F4D7972746E65;
    if (a1 != 7)
    {
      v2 = 0x6E6F73616572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746361736E617274;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612BA610()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612B6258();
  return sub_2613A25CC();
}

uint64_t sub_2612BA660()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612B6258();
  return sub_2613A25CC();
}

uint64_t sub_2612BA6A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612BEE80();
  *a2 = result;
  return result;
}

unint64_t sub_2612BA6D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612BA4BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612BA700(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  sub_261265DD4(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_2613A204C();
  v7 = v28;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_42;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 <= 3)
    {
      if (*(*(a1 + 48) + result) > 1u)
      {
        if (v12 == 2)
        {
          v14 = 0x4972656E74726170;
        }

        else
        {
          v14 = 0x496E6F6973736573;
        }

        v13 = 0xE900000000000064;
      }

      else
      {
        if (*(*(a1 + 48) + result))
        {
          v14 = 0x746E61686372656DLL;
        }

        else
        {
          v14 = 0xD000000000000011;
        }

        if (*(*(a1 + 48) + result))
        {
          v13 = 0xEA00000000006449;
        }

        else
        {
          v13 = 0x80000002613B7F90;
        }
      }
    }

    else if (*(*(a1 + 48) + result) <= 5u)
    {
      if (v12 == 4)
      {
        v14 = 0x746361736E617274;
        v13 = 0xED000064496E6F69;
      }

      else
      {
        v14 = 0xD000000000000011;
        v13 = 0x80000002613B7EB0;
      }
    }

    else if (v12 == 6)
    {
      v14 = 0x5474736575716572;
      v13 = 0xEB00000000657079;
    }

    else if (v12 == 7)
    {
      v13 = 0xE900000000000065;
      v14 = 0x646F4D7972746E65;
    }

    else
    {
      v13 = 0xE600000000000000;
      v14 = 0x6E6F73616572;
    }

    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      sub_261265DD4((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_43;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_44;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_45;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_26124A218(result, v15, 0);
          v7 = v28;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_26124A218(result, v15, 0);
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_2612BAA68(uint64_t result, uint64_t a2)
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_2613A256C();

    sub_2613A19DC();
    v17 = sub_2613A25CC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2613A241C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
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

uint64_t sub_2612BAC20(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = sub_2612BEECC(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_2612BAC6C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 3u)
  {
    v14 = 0xEA00000000006449;
    v15 = 0x746E61686372656DLL;
    v16 = 0x4972656E74726170;
    if (a1 != 2)
    {
      v16 = 0x496E6F6973736573;
    }

    if (!a1)
    {
      v15 = 0xD000000000000011;
      v14 = 0x80000002613B7F90;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v16;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0xE900000000000064;
    }
  }

  else
  {
    v6 = 0xEB00000000657079;
    v7 = 0x5474736575716572;
    v8 = 0xE900000000000065;
    v9 = 0x646F4D7972746E65;
    if (a1 != 7)
    {
      v9 = 0x6E6F73616572;
      v8 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v7 = v9;
      v6 = v8;
    }

    v10 = 0xED000064496E6F69;
    v11 = 0x746361736E617274;
    if (a1 != 4)
    {
      v11 = 0xD000000000000011;
      v10 = 0x80000002613B7EB0;
    }

    if (a1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v7;
    }

    if (a1 <= 5u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v6;
    }
  }

  swift_beginAccess();

  v17 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_2612BC328(a2, a3, v12, v13, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v20;
  swift_endAccess();
}

uint64_t sub_2612BAE60(void *a1)
{
  v3 = a1[11];
  v4 = a1[12];
  swift_beginAccess();

  v5 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v3, v4, 0xD000000000000011, 0x80000002613B7F90, isUniquelyReferenced_nonNull_native);
  *(v1 + 24) = v23;
  v7 = a1[6];
  v8 = a1[7];

  v9 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v7, v8, 0x746E61686372656DLL, 0xEA00000000006449, v9);
  *(v1 + 24) = v24;
  v10 = a1[13];
  v11 = a1[14];

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v10, v11, 0x4972656E74726170, 0xE900000000000064, v12);
  *(v1 + 24) = v25;
  v13 = a1[15];
  v14 = a1[16];

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v13, v14, 0xD000000000000011, 0x80000002613B7EB0, v15);
  *(v1 + 24) = v26;
  v16 = swift_endAccess();
  v17 = (*(*a1 + 192))(v16);
  v19 = v18;
  swift_beginAccess();

  v20 = *(v1 + 24);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v17, v19, 0x496E6F6973736573, 0xE900000000000064, v21);
  *(v1 + 24) = v27;
  swift_endAccess();
}

uint64_t sub_2612BB0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = *(v1 + 16);
  v8 = sub_2612BE928(*(&off_279AD4CD0 + v7));
  v9 = sub_2612BA700(v8);

  v10 = sub_2612BEFE0(v9);

  swift_beginAccess();
  v41 = v1;
  v11 = *(v1 + 24);
  v12 = *(v11 + 16);
  if (v12)
  {
    v38 = v7;
    v39 = v6;
    v40 = a1;
    v13 = sub_2612BB720(v12, 0);
    v14 = sub_2612BC628(&v42, v13 + 4, v12, v11);

    result = sub_2612BF078();
    if (v14 != v12)
    {
      __break(1u);
      return result;
    }

    v6 = v39;
    a1 = v40;
    LOBYTE(v7) = v38;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v7;
  v17 = sub_2612BEFE0(v13);

  v18 = sub_2612BAA68(v10, v17);

  if (v18)
  {
    v19 = *(v41 + 24);
    *(a1 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB50, &qword_2613ABE40);
    *(a1 + 40) = sub_2612BF080();
    *(a1 + 8) = v19;
    *a1 = v16 + 30;
  }

  else
  {
    v20 = sub_26129B7C4();
    sub_26125A870(v20, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      result = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v6;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        v28 = 0xEC00000064657472;
        *v26 = 136315138;
        v29 = 0x61745349556E6970;
        v30 = 0xED000064656C6563;
        v31 = 0x6E614349556E6970;
        v32 = 0xEB0000000064656CLL;
        v33 = 0x69614649556E6970;
        if (v16 != 3)
        {
          v33 = 0x6F6C4249556E6970;
          v32 = 0xEC00000064656B63;
        }

        if (v16 != 2)
        {
          v31 = v33;
          v30 = v32;
        }

        if (v16)
        {
          v29 = 0x6D6F4349556E6970;
          v28 = 0xEE00646574656C70;
        }

        if (v16 <= 1)
        {
          v34 = v29;
        }

        else
        {
          v34 = v31;
        }

        if (v16 <= 1)
        {
          v35 = v28;
        }

        else
        {
          v35 = v30;
        }

        v36 = sub_26124C11C(v34, v35, &v42);

        *(v26 + 4) = v36;
        _os_log_impl(&dword_261243000, v23, v24, "The event %s is missing required fields", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x266701350](v27, -1, -1);
        MEMORY[0x266701350](v26, -1, -1);

        v6 = v25;
      }

      else
      {
      }

      result = (*(v22 + 8))(v6, v21);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_2612BB508()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2612BB540()
{
  sub_2613A211C();

  v1 = 0xEC00000064657472;
  v2 = *(v0 + 16);
  v3 = 0x61745349556E6970;
  v4 = 0xED000064656C6563;
  v5 = 0x6E614349556E6970;
  v6 = 0xEB0000000064656CLL;
  v7 = 0x69614649556E6970;
  if (v2 != 3)
  {
    v7 = 0x6F6C4249556E6970;
    v6 = 0xEC00000064656B63;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 16))
  {
    v3 = 0x6D6F4349556E6970;
    v1 = 0xEE00646574656C70;
  }

  if (*(v0 + 16) <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 16) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2666FFEA0](v8, v9);

  MEMORY[0x2666FFEA0](0x3D3D3D3D3D3D3D20, 0xEA00000000000A3DLL);
  swift_beginAccess();
  v10 = *(v0 + 24);

  v11 = sub_2613A180C();
  v13 = v12;

  MEMORY[0x2666FFEA0](v11, v13);

  return 0x3D3D3D3D3D3D3D3DLL;
}

void *sub_2612BB720(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2612BB7A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2613A256C();
  sub_2613A19DC();
  v9 = sub_2613A25CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2613A241C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2612BBB54(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2612BB8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
  result = sub_2613A20CC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2612BBB54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2612BB8F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2612BBCD4();
      goto LABEL_16;
    }

    sub_2612BBE30(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2613A256C();
  sub_2613A19DC();
  result = sub_2613A25CC();
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

      result = sub_2613A241C();
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
  result = sub_2613A248C();
  __break(1u);
  return result;
}

void *sub_2612BBCD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
  v2 = *v0;
  v3 = sub_2613A20BC();
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

uint64_t sub_2612BBE30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
  result = sub_2613A20CC();
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
      sub_2613A256C();

      sub_2613A19DC();
      result = sub_2613A25CC();
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

uint64_t sub_2612BC068(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
  v40 = a2;
  result = sub_2613A223C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2612BC328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26124E5EC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2612BC068(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_26124E5EC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_2613A249C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2612BC4B0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_2612BC4B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
  v2 = *v0;
  v3 = sub_2613A222C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_2612BC628(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2612BC780(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for TransactionData(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = a2 >> 6;
  if (v22 == 1)
  {
    return 0x6461655264726163;
  }

  if (v22 != 2)
  {
    return sub_2612CABB0(a1, a2);
  }

  if (a2 == 128 && a1 == 5)
  {
    v28 = v19;
    sub_26125A870(a3, v10, &qword_27FE9F340, &unk_2613A4B40);
    v29 = v28;
    if ((*(v14 + 48))(v10, 1, v28) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F340, &unk_2613A4B40);
    }

    else
    {
      sub_26125D080(v10, v18);
      v30 = &v18[*(v28 + 128)];
      v31 = *v30;
      v32 = *(v30 + 1);
      v48 = sub_2613A196C();
      v49 = v33;
      v46 = 1634953590;
      v47 = 0xE400000000000000;
      sub_26124C7CC();
      v34 = sub_2613A201C();

      if (v34 & 1) != 0 || (v48 = sub_2613A196C(), v49 = v35, v46 = 0x616372657473616DLL, v47 = 0xEA00000000006472, v36 = sub_2613A201C(), , (v36))
      {
        if (v18[*(v29 + 112)] == 1)
        {
          v37 = sub_2613A03EC();
          sub_26125D0E4(v18);
          return v37;
        }
      }

      sub_26125D0E4(v18);
    }

    return 0x4164616552797274;
  }

  else
  {
    if (a2 == 128 && a1 == 11)
    {
      return 0xD000000000000013;
    }

    if (a2 != 128 || a1 != 10)
    {
      return sub_2612CABB0(a1, a2);
    }

    v26 = v19;
    sub_26125A870(a3, v12, &qword_27FE9F340, &unk_2613A4B40);
    if ((*(v14 + 48))(v12, 1, v26) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F340, &unk_2613A4B40);
    }

    else
    {
      sub_26125D080(v12, v21);
      v38 = &v21[*(v26 + 128)];
      v39 = *v38;
      v40 = *(v38 + 1);
      v48 = sub_2613A196C();
      v49 = v41;
      v46 = 1634953590;
      v47 = 0xE400000000000000;
      sub_26124C7CC();
      v42 = sub_2613A201C();

      if (v42 & 1) != 0 || (v48 = sub_2613A196C(), v49 = v43, v46 = 0x616372657473616DLL, v47 = 0xEA00000000006472, v44 = sub_2613A201C(), , (v44))
      {
        if (v21[*(v26 + 112)] == 1)
        {
          v45 = sub_2613A03EC();
          sub_26125D0E4(v21);
          return v45;
        }
      }

      sub_26125D0E4(v21);
    }

    return 0xD000000000000010;
  }
}

uint64_t sub_2612BCC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612BCD04(__int16 a1)
{
  if ((a1 - 1200) >= 0x23u)
  {
    return 35;
  }

  else
  {
    return (a1 - 1200);
  }
}

unint64_t sub_2612BCD1C()
{
  result = qword_27FEA7050;
  if (!qword_27FEA7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7050);
  }

  return result;
}

unint64_t sub_2612BCD70()
{
  result = qword_27FEA7058;
  if (!qword_27FEA7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7058);
  }

  return result;
}

unint64_t sub_2612BCDC4()
{
  result = qword_27FEA7060;
  if (!qword_27FEA7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7060);
  }

  return result;
}

unint64_t sub_2612BCE18()
{
  result = qword_27FEA7068;
  if (!qword_27FEA7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7068);
  }

  return result;
}

unint64_t sub_2612BCE6C()
{
  result = qword_27FEA7070;
  if (!qword_27FEA7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7070);
  }

  return result;
}

unint64_t sub_2612BCEC0()
{
  result = qword_27FEA7078;
  if (!qword_27FEA7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7078);
  }

  return result;
}

unint64_t sub_2612BCF14()
{
  result = qword_27FEA7080;
  if (!qword_27FEA7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7080);
  }

  return result;
}

unint64_t sub_2612BCF68()
{
  result = qword_27FEA7088;
  if (!qword_27FEA7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7088);
  }

  return result;
}

unint64_t sub_2612BCFBC()
{
  result = qword_27FEA7090;
  if (!qword_27FEA7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7090);
  }

  return result;
}

unint64_t sub_2612BD010()
{
  result = qword_27FEA7098;
  if (!qword_27FEA7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7098);
  }

  return result;
}

unint64_t sub_2612BD064()
{
  result = qword_27FEA70A0;
  if (!qword_27FEA70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70A0);
  }

  return result;
}

unint64_t sub_2612BD0B8()
{
  result = qword_27FEA70A8;
  if (!qword_27FEA70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70A8);
  }

  return result;
}

unint64_t sub_2612BD10C()
{
  result = qword_27FEA70B0;
  if (!qword_27FEA70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70B0);
  }

  return result;
}

unint64_t sub_2612BD160()
{
  result = qword_27FEA70B8;
  if (!qword_27FEA70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70B8);
  }

  return result;
}

unint64_t sub_2612BD1B4()
{
  result = qword_27FEA70C0;
  if (!qword_27FEA70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70C0);
  }

  return result;
}

unint64_t sub_2612BD208()
{
  result = qword_27FEA70C8[0];
  if (!qword_27FEA70C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA70C8);
  }

  return result;
}

uint64_t sub_2612BD25C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6973736553666173 && a2 == 0xEC00000064496E6FLL)
  {

    return 8;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2612BD564(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D65686373 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2612BD8C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D65686373 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_2612BDC74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2612BDF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69)
  {

    return 7;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2612BE234(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2612BE364(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2612BE498(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2612BE5CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2612BE7A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2612BE928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB90, &qword_2613A9B08);
    v3 = sub_2613A20DC();
    v4 = 0;
    v5 = v3 + 56;
    v32 = v1;
    v33 = a1 + 32;
    while (1)
    {
      v6 = *(v33 + v4);
      v34 = v4 + 1;
      v7 = *(v3 + 40);
      sub_2613A256C();
      sub_2613A19DC();

      result = sub_2613A25CC();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 <= 3)
          {
            v17 = 0x4972656E74726170;
            if (v14 != 2)
            {
              v17 = 0x496E6F6973736573;
            }

            v18 = 0x746E61686372656DLL;
            if (!*(*(v3 + 48) + v10))
            {
              v18 = 0xD000000000000011;
            }

            v19 = 0xEA00000000006449;
            if (!*(*(v3 + 48) + v10))
            {
              v19 = 0x80000002613B7F90;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v16 = v18;
            }

            else
            {
              v16 = v17;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v15 = v19;
            }

            else
            {
              v15 = 0xE900000000000064;
            }

            if (v6 > 3)
            {
LABEL_35:
              v20 = 0x646F4D7972746E65;
              if (v6 == 7)
              {
                v21 = 0xE900000000000065;
              }

              else
              {
                v20 = 0x6E6F73616572;
                v21 = 0xE600000000000000;
              }

              if (v6 == 6)
              {
                v20 = 0x5474736575716572;
                v21 = 0xEB00000000657079;
              }

              v22 = 0x746361736E617274;
              if (v6 != 4)
              {
                v22 = 0xD000000000000011;
              }

              v23 = 0xED000064496E6F69;
              if (v6 != 4)
              {
                v23 = 0x80000002613B7EB0;
              }

              if (v6 <= 5)
              {
                v24 = v22;
              }

              else
              {
                v24 = v20;
              }

              if (v6 <= 5)
              {
                v25 = v23;
              }

              else
              {
                v25 = v21;
              }

              if (v16 != v24)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }
          }

          else if (*(*(v3 + 48) + v10) <= 5u)
          {
            if (v14 == 4)
            {
              v16 = 0x746361736E617274;
            }

            else
            {
              v16 = 0xD000000000000011;
            }

            if (v14 == 4)
            {
              v15 = 0xED000064496E6F69;
            }

            else
            {
              v15 = 0x80000002613B7EB0;
            }

            if (v6 > 3)
            {
              goto LABEL_35;
            }
          }

          else if (v14 == 6)
          {
            v16 = 0x5474736575716572;
            v15 = 0xEB00000000657079;
            if (v6 > 3)
            {
              goto LABEL_35;
            }
          }

          else if (v14 == 7)
          {
            v15 = 0xE900000000000065;
            v16 = 0x646F4D7972746E65;
            if (v6 > 3)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v15 = 0xE600000000000000;
            v16 = 0x6E6F73616572;
            if (v6 > 3)
            {
              goto LABEL_35;
            }
          }

          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v28 = 0x4972656E74726170;
            }

            else
            {
              v28 = 0x496E6F6973736573;
            }

            v25 = 0xE900000000000064;
            if (v16 != v28)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v26 = 0x746E61686372656DLL;
            v25 = 0xEA00000000006449;
            if (!v6)
            {
              v26 = 0xD000000000000011;
              v25 = 0x80000002613B7F90;
            }

            if (v16 != v26)
            {
              goto LABEL_58;
            }
          }

LABEL_57:
          if (v15 == v25)
          {

            goto LABEL_4;
          }

LABEL_58:
          v27 = sub_2613A241C();

          if (v27)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v29 = *(v3 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v3 + 16) = v31;
LABEL_4:
      v4 = v34;
      if (v34 == v32)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2612BEE34()
{
  v0 = sub_2613A228C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2612BEE80()
{
  v0 = sub_2613A228C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2612BEECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
    v3 = sub_2613A224C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26124E5EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2612BEFE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2667001C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2612BB7A4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_2612BF080()
{
  result = qword_27FE9FB58;
  if (!qword_27FE9FB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FB50, &qword_2613ABE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FB58);
  }

  return result;
}

unint64_t sub_2612BF100()
{
  result = qword_27FE9FB60;
  if (!qword_27FE9FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FB60);
  }

  return result;
}

unint64_t sub_2612BF158()
{
  result = qword_27FE9FB68;
  if (!qword_27FE9FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FB68);
  }

  return result;
}

unint64_t sub_2612BF1B0()
{
  result = qword_27FE9FB70;
  if (!qword_27FE9FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FB70);
  }

  return result;
}

void sub_2612BF22C()
{
  sub_26139FD4C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SessionToken();
    if (v1 <= 0x3F)
    {
      sub_2612693D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MonitorEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MonitorEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2612BF42C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2612BF474(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2612BF580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2612BF5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2612BF674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_2612BF6BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2612BF738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2612BF780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2612BF818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2612BF860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2612BF944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2612BF98C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s21ProximityReaderDaemon22PINMonitorEventBuilderC9EventTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21ProximityReaderDaemon22PINMonitorEventBuilderC9EventTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CancelRequested.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CancelRequested.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadFailed.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadFailed.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionData.OutcomeStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionData.OutcomeStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2612C0060()
{
  result = qword_27FEA7F60[0];
  if (!qword_27FEA7F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA7F60);
  }

  return result;
}

unint64_t sub_2612C00B8()
{
  result = qword_27FEA8170[0];
  if (!qword_27FEA8170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA8170);
  }

  return result;
}

unint64_t sub_2612C0110()
{
  result = qword_27FEA8380[0];
  if (!qword_27FEA8380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA8380);
  }

  return result;
}

unint64_t sub_2612C0168()
{
  result = qword_27FEA8590[0];
  if (!qword_27FEA8590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA8590);
  }

  return result;
}

unint64_t sub_2612C01C0()
{
  result = qword_27FEA87A0[0];
  if (!qword_27FEA87A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA87A0);
  }

  return result;
}

unint64_t sub_2612C0218()
{
  result = qword_27FEA89B0[0];
  if (!qword_27FEA89B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA89B0);
  }

  return result;
}

unint64_t sub_2612C0270()
{
  result = qword_27FEA8BC0[0];
  if (!qword_27FEA8BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA8BC0);
  }

  return result;
}

unint64_t sub_2612C02C8()
{
  result = qword_27FEA8DD0[0];
  if (!qword_27FEA8DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA8DD0);
  }

  return result;
}

unint64_t sub_2612C0320()
{
  result = qword_27FEA8FE0[0];
  if (!qword_27FEA8FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA8FE0);
  }

  return result;
}

unint64_t sub_2612C0378()
{
  result = qword_27FEA91F0;
  if (!qword_27FEA91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA91F0);
  }

  return result;
}

unint64_t sub_2612C03D0()
{
  result = qword_27FEA9400[0];
  if (!qword_27FEA9400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9400);
  }

  return result;
}

unint64_t sub_2612C0428()
{
  result = qword_27FEA9610[0];
  if (!qword_27FEA9610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9610);
  }

  return result;
}

unint64_t sub_2612C0480()
{
  result = qword_27FEA9820[0];
  if (!qword_27FEA9820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9820);
  }

  return result;
}

unint64_t sub_2612C04D8()
{
  result = qword_27FEA9A30[0];
  if (!qword_27FEA9A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9A30);
  }

  return result;
}

unint64_t sub_2612C0530()
{
  result = qword_27FEA9C40[0];
  if (!qword_27FEA9C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9C40);
  }

  return result;
}

unint64_t sub_2612C0588()
{
  result = qword_27FEA9E50[0];
  if (!qword_27FEA9E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9E50);
  }

  return result;
}

unint64_t sub_2612C05E0()
{
  result = qword_27FEA9F60;
  if (!qword_27FEA9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA9F60);
  }

  return result;
}

unint64_t sub_2612C0638()
{
  result = qword_27FEA9F68[0];
  if (!qword_27FEA9F68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9F68);
  }

  return result;
}

unint64_t sub_2612C0690()
{
  result = qword_27FEA9FF0;
  if (!qword_27FEA9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA9FF0);
  }

  return result;
}

unint64_t sub_2612C06E8()
{
  result = qword_27FEA9FF8[0];
  if (!qword_27FEA9FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA9FF8);
  }

  return result;
}

unint64_t sub_2612C0740()
{
  result = qword_27FEAA080;
  if (!qword_27FEAA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA080);
  }

  return result;
}

unint64_t sub_2612C0798()
{
  result = qword_27FEAA088[0];
  if (!qword_27FEAA088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA088);
  }

  return result;
}

unint64_t sub_2612C07F0()
{
  result = qword_27FEAA110;
  if (!qword_27FEAA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA110);
  }

  return result;
}

unint64_t sub_2612C0848()
{
  result = qword_27FEAA118[0];
  if (!qword_27FEAA118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA118);
  }

  return result;
}

unint64_t sub_2612C08A0()
{
  result = qword_27FEAA1A0;
  if (!qword_27FEAA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA1A0);
  }

  return result;
}

unint64_t sub_2612C08F8()
{
  result = qword_27FEAA1A8[0];
  if (!qword_27FEAA1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA1A8);
  }

  return result;
}

unint64_t sub_2612C0950()
{
  result = qword_27FEAA230;
  if (!qword_27FEAA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA230);
  }

  return result;
}

unint64_t sub_2612C09A8()
{
  result = qword_27FEAA238[0];
  if (!qword_27FEAA238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA238);
  }

  return result;
}

unint64_t sub_2612C0A00()
{
  result = qword_27FEAA2C0;
  if (!qword_27FEAA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA2C0);
  }

  return result;
}

unint64_t sub_2612C0A58()
{
  result = qword_27FEAA2C8[0];
  if (!qword_27FEAA2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA2C8);
  }

  return result;
}

unint64_t sub_2612C0AB0()
{
  result = qword_27FEAA350;
  if (!qword_27FEAA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA350);
  }

  return result;
}

unint64_t sub_2612C0B08()
{
  result = qword_27FEAA358[0];
  if (!qword_27FEAA358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA358);
  }

  return result;
}

unint64_t sub_2612C0B60()
{
  result = qword_27FEAA3E0;
  if (!qword_27FEAA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA3E0);
  }

  return result;
}

unint64_t sub_2612C0BB8()
{
  result = qword_27FEAA3E8[0];
  if (!qword_27FEAA3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA3E8);
  }

  return result;
}

unint64_t sub_2612C0C10()
{
  result = qword_27FEAA470;
  if (!qword_27FEAA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA470);
  }

  return result;
}

unint64_t sub_2612C0C68()
{
  result = qword_27FEAA478;
  if (!qword_27FEAA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA478);
  }

  return result;
}

unint64_t sub_2612C0CC0()
{
  result = qword_27FEAA500;
  if (!qword_27FEAA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA500);
  }

  return result;
}

unint64_t sub_2612C0D18()
{
  result = qword_27FEAA508[0];
  if (!qword_27FEAA508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA508);
  }

  return result;
}

unint64_t sub_2612C0D70()
{
  result = qword_27FEAA590;
  if (!qword_27FEAA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA590);
  }

  return result;
}

unint64_t sub_2612C0DC8()
{
  result = qword_27FEAA598[0];
  if (!qword_27FEAA598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA598);
  }

  return result;
}

unint64_t sub_2612C0E20()
{
  result = qword_27FEAA620;
  if (!qword_27FEAA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA620);
  }

  return result;
}

unint64_t sub_2612C0E78()
{
  result = qword_27FEAA628[0];
  if (!qword_27FEAA628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA628);
  }

  return result;
}

unint64_t sub_2612C0ED0()
{
  result = qword_27FEAA6B0;
  if (!qword_27FEAA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA6B0);
  }

  return result;
}

unint64_t sub_2612C0F28()
{
  result = qword_27FEAA6B8[0];
  if (!qword_27FEAA6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA6B8);
  }

  return result;
}

unint64_t sub_2612C0F80()
{
  result = qword_27FEAA740;
  if (!qword_27FEAA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA740);
  }

  return result;
}

unint64_t sub_2612C0FD8()
{
  result = qword_27FEAA748[0];
  if (!qword_27FEAA748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA748);
  }

  return result;
}

unint64_t sub_2612C1030()
{
  result = qword_27FEAA7D0;
  if (!qword_27FEAA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAA7D0);
  }

  return result;
}

unint64_t sub_2612C1088()
{
  result = qword_27FEAA7D8[0];
  if (!qword_27FEAA7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAA7D8);
  }

  return result;
}

unint64_t sub_2612C10DC()
{
  result = qword_27FE9FB78;
  if (!qword_27FE9FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FB78);
  }

  return result;
}

double sub_2612C11A4()
{
  type metadata accessor for CardReaderAdapterFactory();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_27FEAEE00 = v0;
  return result;
}

uint64_t *sub_2612C11DC()
{
  if (qword_27FEAA860 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEE00;
}

uint64_t sub_2612C122C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_26125A870(v1 + 16, &v9, &qword_27FE9FB98, "$X");
  v4 = v10;
  sub_26124C718(&v9, &qword_27FE9FB98, "$X");
  if (!v4)
  {
    type metadata accessor for Mock();
    if (sub_26129B0F4(6))
    {
      v5 = type metadata accessor for SimulatedCardReader();
      v6 = sub_2612D2C04();
      v7 = &off_2873BA778;
    }

    else
    {
      v5 = type metadata accessor for SPRAdapter();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v7 = &off_2873B9ED8;
    }

    v10 = v5;
    v11 = v7;
    *&v9 = v6;
    swift_beginAccess();
    sub_2612C51B4(&v9, v2 + 16);
    swift_endAccess();
  }

  result = sub_26125A870(v2 + 16, &v9, &qword_27FE9FB98, "$X");
  if (v10)
  {
    return sub_26124A200(&v9, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2612C1378()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2612C13A8()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_2612C51B4(v2, v0 + 16);
  return swift_endAccess();
}

uint64_t sub_2612C13F8()
{
  sub_26124C718(v0 + 16, &qword_27FE9FB98, "$X");

  return swift_deallocClassInstance();
}

uint64_t sub_2612C1464()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_26129B780();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "reading seInfo!", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  v10 = objc_opt_self();
  v11 = [v10 seid];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2613A18CC();
  }

  else
  {
    v13 = 0;
  }

  [v10 seIsProductionSigned];
  return v13;
}

uint64_t sub_2612C165C()
{
  if (*(v0 + 16) || (type metadata accessor for SPRReaderProxy(), v1 = sub_2612B13AC(), v2 = *(v0 + 16), *(v0 + 16) = v1, , (result = *(v0 + 16)) != 0))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2612C16BC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_26129B780();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    v15 = sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = v8;
    v16 = v11;
    v17 = a1;
    v18 = v13;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v29 = v14;
    v21 = v19 & 1;
    v13 = v18;
    a1 = v17;
    v11 = v16;
    v8 = v30;
    sub_26129BC3C(v21, v2, 0xD00000000000001ELL, 0x80000002613BA230, v20, v22);
    v14 = v29;

    v15 = (*(v13 + 8))(v10, v12);
  }

  if ((*(*v2 + 312))(v15))
  {
    sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
    if (v14(v8, 1, v12) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "enableDiagnosticsMode failed, reader is busy", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v13 + 8))(v8, v12);
    }

    v24 = 0;
  }

  else
  {
    v2[24] = 1;
    v23 = (*(*v2 + 184))();
    v24 = (*(*v23 + 240))(a1 & 1);

    v2[24] = 0;
  }

  return v24 & 1;
}

void sub_2612C1A24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  if ((*(*v3 + 312))(v13))
  {
    v16 = sub_26129B780();
    sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v15, 1, v17) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "get allStatus failed, reader is busy", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v18 + 8))(v15, v17);
    }

    v28 = sub_261259E78(MEMORY[0x277D84F90]);
LABEL_16:
    sub_2612A7D1C(v28, v44);
    v33 = v51;
    LOBYTE(v31) = v50;
    LOBYTE(v32) = v49;
    LOBYTE(v34) = v48;
    LOBYTE(v35) = v47;
    LOBYTE(v36) = v46;
    LOBYTE(v29) = v45;
    v30 = v44[0];
    v21 = v44[1];
    goto LABEL_17;
  }

  v3[24] = 1;
  type metadata accessor for SPRStatusTask();
  v19 = (*(*v3 + 184))();
  v20 = sub_2612A77F8(3, v19);
  (*(*v20 + 104))(&v40, a1, a2);

  v21 = v41;
  if (v41 == 1)
  {
    v22 = sub_26129B780();
    sub_26125A870(v22, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "nil status, returning default", v39, 2u);
        MEMORY[0x266701350](v39, -1, -1);
      }

      (*(v24 + 8))(v12, v23);
    }

    v4[24] = 0;
    v28 = sub_2612A7DD8();
    goto LABEL_16;
  }

  v29 = v42;
  v30 = v40;
  v31 = (v42 >> 40) & 1;
  v32 = HIDWORD(v42) & 1;
  v33 = v43;
  v34 = (v42 >> 24) & 1;
  v3[24] = 0;
  v35 = (v29 >> 16) & 1;
  v36 = (v29 >> 8) & 1;
LABEL_17:
  *a3 = v30;
  *(a3 + 8) = v21;
  *(a3 + 16) = v29 & 1;
  *(a3 + 17) = v36;
  *(a3 + 18) = v35;
  *(a3 + 19) = v34;
  *(a3 + 20) = v32;
  *(a3 + 21) = v31;
  *(a3 + 24) = v33;
}

uint64_t sub_2612C1E74()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v66 = sub_26129B780();
  sub_26125A870(v66, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v59 = *(v14 + 48);
  if (v59(v12, 1, v13) == 1)
  {
    v15 = sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v57 = v1;
    v58 = v13;
    v16 = v7;
    v17 = v2;
    v18 = v14;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v56 = v10;
    v21 = v19 & 1;
    v14 = v18;
    v2 = v17;
    v7 = v16;
    v13 = v58;
    sub_26129BC3C(v21, v2, 0xD000000000000018, 0x80000002613BA250, v20, v22);
    v10 = v56;

    v15 = (*(v14 + 8))(v12, v13);
  }

  if ((*(*v2 + 312))(v15))
  {
    sub_26125A870(v66, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v59(v10, 1, v13) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = v10;
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "isSEValid check failed, reader is busy", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v14 + 8))(v28, v13);
    }

    sub_2612B4668();
    swift_allocError();
    *v32 = 0;
    return swift_willThrow();
  }

  v2[24] = 1;
  type metadata accessor for SPRStatusTask();
  v23 = (*(*v2 + 184))();
  v24 = sub_2612A77F8(0, v23);
  v25 = sub_261291AA8();
  (*(*v24 + 104))(&v61, v25);

  v26 = v62;
  if (v62 != 1)
  {
    v33 = v63;
    v34 = v64;
    v35 = v61;
    v2[24] = 0;
    v36 = *sub_2612E788C();
    *&v65 = v35;
    *(&v65 + 1) = v26;
    v37 = &v36[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_sprVersionCache];
    swift_beginAccess();
    v38 = *(v37 + 1);
    *v37 = v65;
    v39 = v36;
    sub_26125A870(&v65, v60, &qword_27FE9FBA0, &qword_2613A9B30);

    result = sub_26124C718(&v61, &qword_27FE9FBA8, &unk_2613A9B38);
    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v41 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      v42 = inited + 32;
      *(inited + 40) = v43;
      v44 = sub_261377F8C();
    }

    else
    {
      if (v33)
      {
        return result;
      }

      sub_2613A121C();
      sub_2613A110C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v41 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      v42 = inited + 32;
      *(inited + 40) = v49;
      v44 = sub_261377F50();
    }

    v51 = *v44;
    v50 = v44[1];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v51;
    *(inited + 56) = v50;

    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(v42, &qword_27FE9F2F0, &qword_2613A4BD0);
    v52 = objc_allocWithZone(v41);
    v53 = sub_26139F2DC();
    sub_2612C5960();
    swift_allocError();
    *v54 = v53;
    return swift_willThrow();
  }

  sub_26125A870(v66, v7, &qword_27FE9F560, &qword_2613A3CB0);
  if (v59(v7, 1, v13) == 1)
  {
    result = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    v2[24] = 0;
  }

  else
  {
    v45 = v7;
    v46 = sub_2613A122C();
    v47 = sub_2613A1D8C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_261243000, v46, v47, "nil status, ignore", v48, 2u);
      MEMORY[0x266701350](v48, -1, -1);
    }

    result = (*(v14 + 8))(v45, v13);
    v2[24] = 0;
  }

  return result;
}

uint64_t sub_2612C2528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v48 = sub_26129B780();
  sub_26125A870(v48, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    v17 = sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = v3;
    v35 = v8;
    v18 = v16;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v36 = v11;
    v21 = v19 & 1;
    v16 = v18;
    v8 = v35;
    v3 = v37;
    sub_26129BC3C(v21, v37, 0xD000000000000011, 0x80000002613BA270, v20, v22);
    v11 = v36;

    v17 = (*(v15 + 8))(v13, v14);
  }

  v23 = v3;
  if ((*(*v3 + 312))(v17))
  {
    sub_26125A870(v48, v11, &qword_27FE9F560, &qword_2613A3CB0);
    if (v16(v11, 1, v14) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = sub_2613A122C();
      v23 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v23))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v26, v23, "isReaderValid check failed, reader is busy", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v15 + 8))(v11, v14);
    }

    sub_2612B4668();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  else
  {
    v3[24] = 1;
    type metadata accessor for SPRStatusTask();
    v24 = (*(*v3 + 184))();
    v25 = sub_2612A77F8(1, v24);
    (*(*v25 + 104))(&v40, v38, v39);

    if (v41 == 1)
    {
      sub_26125A870(v48, v8, &qword_27FE9F560, &qword_2613A3CB0);
      if (v16(v8, 1, v14) == 1)
      {
        sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v29 = sub_2613A122C();
        v30 = sub_2613A1D8C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_261243000, v29, v30, "nil status, using default ReaderInfo value", v31, 2u);
          MEMORY[0x266701350](v31, -1, -1);
        }

        (*(v15 + 8))(v8, v14);
      }

      v3[24] = 0;
      v32 = sub_2612A7DD8();
      sub_2612A7D1C(v32, v44);
      v23 = sub_2612A7D60(v44);
      sub_2612C59B8(v44);
    }

    else
    {
      v45[0] = v40;
      v45[1] = v41;
      v46 = v42;
      v47 = v43;
      v3[24] = 0;
      v23 = sub_2612A7D60(v45);
      sub_26124C718(&v40, &qword_27FE9FBA8, &unk_2613A9B38);
    }
  }

  return v23 & 1;
}

uint64_t sub_2612C2A74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_26129B780();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    v12 = sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = a1;
    v13 = sub_26125A798();
    v14 = sub_261291AA8();
    a1 = v19;
    sub_26129BC3C(v13 & 1, v2, 0xD000000000000014, 0x80000002613BA290, v14, v15);

    v12 = (*(v11 + 8))(v8, v10);
  }

  v16 = (*(*v2 + 184))(v12);
  (*(*v16 + 320))(a1, a2);
}

uint64_t sub_2612C2C90(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v57 = a5;
  v58 = a6;
  v55 = a4;
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v10 = sub_26139F64C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v63 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v61 = sub_26129B780();
  sub_26125A870(v61, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  v59 = *(v22 + 48);
  v60 = (v22 + 48);
  v23 = v59(v20, 1, v21);
  v52 = v22;
  if (v23 == 1)
  {
    sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v51 = v7;
    v24 = v14;
    v25 = v21;
    v26 = sub_26125A798();
    v27 = sub_261291AA8();
    v64 = v11;
    v28 = v26 & 1;
    v21 = v25;
    v14 = v24;
    v8 = v51;
    sub_26129BC3C(v28, v9, 0xD000000000000047, 0x80000002613BA2B0, v27, v29);
    v11 = v64;

    (*(v22 + 8))(v20, v21);
  }

  sub_26139F46C();
  sub_26139F5DC();
  v30 = *(v11 + 8);
  v31 = v30(v14, v10);
  v32 = (*(*v9 + 312))(v31);
  v33 = v63;
  v62 = v10;
  v64 = v11 + 8;
  if (v32)
  {
    sub_2612B4668();
    v34 = swift_allocError();
    *v35 = 0;
  }

  else
  {
    v51 = v21;
    v9[24] = 1;
    v36 = (*(*v9 + 184))();
    v37 = (*(*v36 + 224))(v54, v56, v53 & 1, v55 & 1, v57, v58);

    if (!v8)
    {
      v9[24] = 0;
      sub_26139F46C();
      sub_26139F5BC();
      v30(v14, v62);
      return v37;
    }

    v9[24] = 0;
    v34 = v8;
    v10 = v62;
    v21 = v51;
  }

  swift_willThrow();
  type metadata accessor for SPRErrorsUtils();
  v38 = sub_2613778B4(v34);
  sub_26125A870(v61, v33, &qword_27FE9F560, &qword_2613A3CB0);
  if (v59(v33, 1, v21) == 1)
  {
    sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v60 = v38;
    v61 = v30;
    v39 = v38;
    v40 = sub_2613A122C();
    v41 = sub_2613A1D8C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v51 = v21;
      v43 = v42;
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315138;
      sub_26139F2BC();
      v45 = sub_26139F2EC();
      v47 = sub_26124C11C(v45, v46, &v65);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_261243000, v40, v41, "error preparing read session: [ %s ]", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x266701350](v44, -1, -1);
      v48 = v43;
      v21 = v51;
      MEMORY[0x266701350](v48, -1, -1);
    }

    v10 = v62;
    (*(v52 + 8))(v33, v21);
    v38 = v60;
    v30 = v61;
  }

  v37 = sub_26139F2CC();
  sub_2612C5960();
  swift_allocError();
  *v49 = v38;
  swift_willThrow();

  sub_26139F46C();
  sub_26139F5BC();
  v30(v14, v10);
  return v37;
}

uint64_t sub_2612C3270(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 128) = a3;
  *(v8 + 16) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612C3328);
}

uint64_t sub_2612C3328()
{
  v46 = v0;
  v1 = *(v0 + 80);
  v2 = sub_26129B780();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 80);
  if (v6 == 1)
  {
    v8 = sub_26124C718(*(v0 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v43 = *(v0 + 64);
    v9 = v5;
    v10 = sub_26125A798();
    v11 = sub_261291AA8();
    v12 = v10 & 1;
    v5 = v9;
    sub_26129BC3C(v12, v43, 0xD00000000000003DLL, 0x80000002613BA300, v11, v13);

    v8 = (*(v4 + 8))(v7, v3);
  }

  if ((*(**(v0 + 64) + 312))(v8))
  {
    sub_2612B4668();
    swift_allocError();
    *v14 = 0;
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 72);
    *(*(v0 + 64) + 24) = 1;
    sub_26125A870(v2, v19, &qword_27FE9F560, &qword_2613A3CB0);
    if (v5(v19, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = *(v0 + 24);

      v21 = sub_2613A122C();
      v22 = sub_2613A1D9C();

      if (os_log_type_enabled(v21, v22))
      {
        v24 = *(v0 + 16);
        v23 = *(v0 + 24);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v45 = v26;
        *v25 = 136315138;
        v27 = sub_2613A0F7C();
        v29 = sub_26124C11C(v27, v28, &v45);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_261243000, v21, v22, "Installing kernel: [ %s ]", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x266701350](v26, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      (*(v4 + 8))(*(v0 + 72), v3);
    }

    v30 = *(v0 + 64);
    type metadata accessor for SPRConfigTask();
    v31 = (*(*v30 + 184))();
    v32 = sub_2612D4D40(v31);
    *(v0 + 88) = v32;
    v33 = *(*v32 + 96);
    v44 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 96) = v35;
    *v35 = v0;
    v35[1] = sub_2612C37E8;
    v36 = *(v0 + 48);
    v37 = *(v0 + 56);
    v38 = *(v0 + 32);
    v39 = *(v0 + 40);
    v40 = *(v0 + 128);
    v41 = *(v0 + 24);
    v42 = *(v0 + 16);

    return v44(v42, v41, v40, v38, v39, v36, v37);
  }
}

uint64_t sub_2612C37E8(uint64_t a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_2612C39A4;
  }

  else
  {
    v10 = *(v6 + 88);

    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_2612C3928;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2612C3928()
{
  v2 = v0[9];
  v1 = v0[10];
  *(v0[8] + 24) = 0;

  v3 = v0[1];
  v4 = v0[15];
  v5.n128_u64[0] = v0[14];

  return v3(v4, v5);
}

uint64_t sub_2612C39A4()
{
  v1 = v0[11];
  v2 = v0[8];

  *(v2 + 24) = 0;
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2612C3A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31[-v10];
  v12 = sub_26129B780();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    v15 = v4[4];
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = sub_26125A798();
  v17 = sub_261291AA8();
  sub_26129BC3C(v16 & 1, v4, 0xD000000000000027, 0x80000002613BA340, v17, v18);

  (*(v14 + 8))(v11, v13);
  v15 = v4[4];
  if (v15)
  {
LABEL_5:
    v19 = *(*v15 + 184);

    v19(2);

    v20 = v4[4];
    v4[4] = 0;
  }

LABEL_6:
  v21 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for SPRReadTask();
  v22 = *(*v4 + 184);
  v23 = sub_2612B3E28(a1, v31);
  v24 = v22(v23);
  v25 = *(a1 + 56);

  sub_2612DEAD0(a1, v24, v25, sub_2612C5A0C, v21, a2, a3);
  v27 = v26;
  v28 = v4[4];
  v4[4] = v26;

  (*(*v27 + 160))(v29);
}

uint64_t sub_2612C3D24(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_26129B780();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v29 = a1;
  if (v15 == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = *(v2 + 32);
    if (v16)
    {
LABEL_3:
      v17 = *(*v16 + 184);

      v18 = v17(v29);

      v19 = *(v2 + 32);
      *(v2 + 32) = 0;

      return v18 & 1;
    }
  }

  else
  {
    v28 = v8;
    v31 = 0;
    v32 = 0xE000000000000000;
    v30 = a1;
    sub_2613A21FC();
    v20 = v31;
    v21 = v32;
    v22 = sub_26125A798();
    v8 = v28;
    sub_26129BC3C(v22 & 1, v2, 0xD000000000000018, 0x80000002613BA370, v20, v21);

    (*(v13 + 8))(v10, v12);
    v16 = *(v2 + 32);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
  if (v14(v8, 1, v12) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = sub_2613A122C();
    v24 = sub_2613A1D9C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_261243000, v23, v24, "No active adapter read", v25, 2u);
      MEMORY[0x266701350](v25, -1, -1);
    }

    (*(v13 + 8))(v8, v12);
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2612C404C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v81 = a4;
  v86[1] = *MEMORY[0x277D85DE8];
  v9 = sub_26139F64C();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v80 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v83 = sub_26129B780();
  sub_26125A870(v83, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v85 = *(v21 - 8);
  v82 = *(v85 + 48);
  v22 = v82(v20, 1, v21);
  v84 = a2;
  if (v22 == 1)
  {
    sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = sub_26125A798();
    v24 = sub_261291AA8();
    v25 = v23 & 1;
    a2 = v84;
    v26 = v85;
    sub_26129BC3C(v25, v5, 0xD000000000000031, 0x80000002613BA390, v24, v27);

    (*(v26 + 8))(v20, v21);
  }

  if (!sub_2612CC368(a1, a2))
  {
    goto LABEL_10;
  }

  v28 = a1;
  v76 = v5;
  v29 = objc_opt_self();
  v30 = sub_2613A17EC();
  v86[0] = 0;
  v31 = [v29 dataWithJSONObject:v30 options:0 error:v86];

  v32 = v86[0];
  if (!v31)
  {
    v45 = v32;

    v46 = sub_26139EE7C();

    swift_willThrow();
LABEL_10:
    sub_26125A870(v83, v16, &qword_27FE9F560, &qword_2613A3CB0);
    if (v82(v16, 1, v21) != 1)
    {
      v48 = sub_2613A122C();
      v49 = sub_2613A1D8C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_261243000, v48, v49, "trxBlob cannot be serialized", v50, 2u);
        MEMORY[0x266701350](v50, -1, -1);
      }

      (*(v85 + 8))(v16, v21);
      goto LABEL_28;
    }

    v47 = v16;
LABEL_21:
    sub_26124C718(v47, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_28:
    result = 0;
    goto LABEL_29;
  }

  v33 = a3;
  v34 = sub_26139F01C();
  v74 = v35;

  v36 = v33;
  v37 = sub_2612CC61C(v28, v84, v81 & 1);

  v75 = v34;
  if (v37)
  {
    v38 = sub_2613A17EC();

    v86[0] = 0;
    v39 = [v29 dataWithJSONObject:v38 options:0 error:v86];

    v40 = v86[0];
    v41 = v76;
    if (v39)
    {
      v42 = sub_26139F01C();
      v44 = v43;
    }

    else
    {
      v51 = v40;
      v52 = sub_26139EE7C();

      swift_willThrow();
      v42 = 0;
      v44 = 0xF000000000000000;
    }
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
    v41 = v76;
  }

  if (*(v36 + *(type metadata accessor for TransactionData(0) + 72)) == 1 && v44 >> 60 == 15)
  {
    v53 = v80;
    sub_26125A870(v83, v80, &qword_27FE9F560, &qword_2613A3CB0);
    if (v82(v53, 1, v21) != 1)
    {
      v64 = v42;
      v65 = sub_2613A122C();
      v66 = sub_2613A1D8C();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v74;
      if (v67)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_261243000, v65, v66, "pinBlob cannot be serialized", v69, 2u);
        MEMORY[0x266701350](v69, -1, -1);
        sub_26124A168(v64, v44);
      }

      sub_26124C6C4(v75, v68);

      (*(v85 + 8))(v53, v21);
      goto LABEL_28;
    }

    sub_26124C6C4(v75, v74);
    v47 = v53;
    goto LABEL_21;
  }

  if ((*(*v41 + 312))())
  {
    sub_2612B4668();
    v54 = swift_allocError();
    *v55 = 0;
    v56 = v74;
    swift_willThrow();
    sub_26124A168(v42, v44);
    sub_26124C6C4(v75, v56);

    goto LABEL_28;
  }

  v41[24] = 1;
  v57 = v77;
  sub_26139F36C();
  sub_26139F5DC();
  v58 = v74;
  v59 = v42;
  v60 = v79;
  v85 = *(v78 + 8);
  v61 = (v85)(v57, v79);
  v62 = *(*(*(*v41 + 184))(v61) + 272);
  v63 = v75;
  v84 = v59;
  v71 = v62(v75, v58, v59, v44);

  sub_26139F36C();
  sub_26139F5BC();
  sub_26124C6C4(v63, v58);
  sub_26124A168(v84, v44);
  (v85)(v57, v60);
  result = v71;
  v41[24] = 0;
LABEL_29:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2612C48E4(uint64_t a1, uint64_t a2)
{
  v5 = sub_26139F64C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F56C();
  sub_26139F5DC();
  v10 = *(v6 + 8);
  v11 = v10(v9, v5);
  v12 = *(*(*v2 + 184))(v11);
  v13 = (*(v12 + 280))(a1, a2);

  sub_26139F56C();
  sub_26139F5BC();
  v10(v9, v5);
  return v13;
}

uint64_t sub_2612C4A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v22 = a4;
  v23 = a5;
  v11 = sub_26139F64C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F4EC();
  sub_26139F5DC();
  v16 = *(v12 + 8);
  v17 = v16(v15, v11);
  v18 = *(*(*v7 + 184))(v17);
  v19 = v26;
  v20 = (*(v18 + 288))(a1, a2, a3, v22, v23, v24, v25);
  if (v19)
  {

    sub_26139F4EC();
    sub_26139F5BC();
    return v16(v15, v11);
  }

  else
  {
    v26 = v20;

    sub_26139F4EC();
    sub_26139F5BC();
    v16(v15, v11);
    return v26;
  }
}

double sub_2612C4C8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v22 = a5;
  v23 = a4;
  v9 = sub_26139F64C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F41C();
  sub_26139F5DC();
  v14 = *(v10 + 8);
  v15 = v14(v13, v9);
  v16 = *(*(*v5 + 184))(v15);
  v17 = v27;
  (*(v16 + 296))(v24, a1, a2, a3, v23);

  sub_26139F41C();
  sub_26139F5BC();
  v14(v13, v9);
  if (!v17)
  {
    v19 = v24[1];
    v20 = v22;
    *v22 = v24[0];
    v20[1] = v19;
    result = *&v25;
    v20[2] = v25;
    *(v20 + 6) = v26;
  }

  return result;
}

uint64_t sub_2612C4E88(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  (*(*v3 + 304))(a1);
}

uint64_t sub_2612C4F14(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  (*(*v3 + 312))(a1);
}

uint64_t sub_2612C4FA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_26129B780();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = *(v1 + 24);

      _os_log_impl(&dword_261243000, v9, v10, "checking SPR busy: %{BOOL}d", v11, 8u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
  }

  return *(v1 + 24);
}

uint64_t sub_2612C5174()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2612C51B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB98, "$X");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_2612C52B0@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 200))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2612C53EC()
{
  result = (*(**v0 + 232))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2612C5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(**v7 + 240);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_2612C55B0;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2612C55B0(uint64_t a1, double a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8.n128_f64[0] = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2612C57EC()
{
  result = (*(**v0 + 280))();
  if (v1)
  {
    return v3;
  }

  return result;
}

double sub_2612C584C@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 288))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_2612C5960()
{
  result = qword_27FE9F430;
  if (!qword_27FE9F430)
  {
    sub_26139F2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F430);
  }

  return result;
}

uint64_t sub_2612C5A0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_2612C5A88()
{
  v1 = sub_2613A16DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_2613A16FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 16);
  sub_2613A167C();
  sub_2613A16EC();
  (*(v2 + 104))(v6, *MEMORY[0x277CD8F78], v1);
  LOBYTE(v14) = sub_2613A16CC();
  v15 = *(v2 + 8);
  v15(v6, v1);
  v15(v8, v1);
  (*(v10 + 8))(v13, v9);
  return v14 & 1;
}

uint64_t sub_2612C5C70()
{
  v0 = swift_allocObject();
  sub_2612C5CA8();
  return v0;
}

uint64_t sub_2612C5CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - v4;
  v6 = sub_2613A1DDC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2613A175C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2613A1E0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26127BBE0();
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v10);
  sub_2613A173C();
  v27[1] = MEMORY[0x277D84F90];
  sub_2612A4DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_2612A4E08();
  sub_2613A203C();
  *(v0 + 24) = sub_2613A1E2C();
  v15 = sub_2613A16BC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_2613A16AC();
  v18 = *(v0 + 24);

  v19 = v18;
  sub_2613A168C();

  v20 = sub_26129B7C4();
  sub_26124AA44(v20, v5);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {

    v23 = sub_26125A798();
    v24 = sub_261291AA8();
    sub_26129BC3C(v23 & 1, v1, 0x292874696E69, 0xE600000000000000, v24, v25);

    (*(v22 + 8))(v5, v21);
  }

  return v1;
}

uint64_t sub_2612C6020()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_26129B7C4();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v1, 0x74696E696564, 0xE600000000000000, v10, v11);

    (*(v8 + 8))(v5, v7);
  }

  v12 = *(v1 + 16);

  sub_2613A169C();

  v13 = *(v1 + 16);

  return v1;
}

uint64_t sub_2612C6194()
{
  sub_2612C6020();

  return swift_deallocClassInstance();
}

void sub_2612C61EC(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v17 - v6;
  a1(v5);
  if (v1)
  {
    _s3__C4CodeOMa_1(0);
    v17[1] = 14001;
    v8 = v1;
    sub_2612CA490(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v9 = sub_26139EDAC();

    if (v9)
    {

      v10 = sub_26129B780();
      sub_26124AA44(v10, v7);
      v11 = sub_2613A124C();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        v13 = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v14 = sub_2613A122C();
        v15 = sub_2613A1D8C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_261243000, v14, v15, "SPR XPC service disconnected, let's try one more time", v16, 2u);
          MEMORY[0x266701350](v16, -1, -1);
        }

        v13 = (*(v12 + 8))(v7, v11);
      }

      a1(v13);
    }
  }
}

uint64_t sub_2612C6448(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v5 != a2[2])
  {
    return 0;
  }

  v23 = MEMORY[0x277D84F90];
  sub_2612C66B4(v5);
  if (!v4)
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return v23;
    }

LABEL_9:
    v8 = 0;
    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    v22 = v3 & 0xC000000000000001;
    v4 = a2 + 5;
    v18 = v6;
    v19 = v5;
    v20 = v3;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x2667005C0](v8, v3);
      }

      else
      {
        if (v8 >= *(v21 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      a2 = v9;
      v10 = [v9 vasData];
      if (v10)
      {
        v11 = v10;
        sub_26139F01C();
      }

      v12 = [a2 mobileToken];
      if (v12)
      {
        v13 = v12;
        sub_26139F01C();

        if (v5 == v8)
        {
          goto LABEL_25;
        }
      }

      else if (v5 == v8)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v5 = sub_2613A221C();
        goto LABEL_3;
      }

      v15 = *(v4 - 1);
      v14 = *v4;

      [a2 status];
      v16 = objc_allocWithZone(sub_26139F80C());
      sub_26139F7EC();
      MEMORY[0x2666FFFD0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2613A1B9C();
      }

      ++v8;
      sub_2613A1BBC();

      v4 += 2;
      v5 = v19;
      v3 = v20;
      if (v18 == v8)
      {
        return v23;
      }
    }
  }

  v6 = sub_2613A221C();
  if (v6)
  {
    goto LABEL_9;
  }

  return v23;
}

uint64_t sub_2612C66B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_2613A215C();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_2613A221C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_2612C6750@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a2;
  v126 = a3;
  v127 = a4;
  v5 = sub_26139F13C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v128 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = [a1 pinRequired];
  type metadata accessor for Mock();
  LODWORD(v118) = sub_26129B0F4(7);
  v8 = [a1 languagePreference];
  v9 = sub_26139F01C();
  v11 = v10;

  v12 = sub_2612C94BC(v9, v11);
  if (!v13)
  {
    v131 = v9;
    v132 = v11;
    sub_26124C778(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBB0, &qword_2613A9C18);
    if (swift_dynamicCast())
    {
      sub_26124A200(v129, &v133);
      __swift_project_boxed_opaque_existential_1(&v133, v134);
      if (sub_2613A226C())
      {
        sub_26124C6C4(v9, v11);
        __swift_project_boxed_opaque_existential_1(&v133, v134);
        sub_2613A225C();
        v15 = *(&v129[0] + 1);
        v14 = *&v129[0];
        __swift_destroy_boxed_opaque_existential_0Tm(&v133);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v133);
    }

    else
    {
      v130 = 0;
      memset(v129, 0, sizeof(v129));
      sub_26124C718(v129, &qword_27FE9FBB8, &unk_2613A9C20);
    }

    v12 = sub_2612C8C38(v9, v11);
  }

  v14 = v12;
  v15 = v13;
  sub_26124C6C4(v9, v11);
LABEL_9:
  v16 = sub_26129B1A8(23);
  v18 = v16;
  v19 = v17;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v21 = [a1 network];
  v22 = sub_2613A18CC();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = [a1 network];
    v27 = sub_2613A18CC();
    v29 = v28;
  }

  else
  {
    v27 = sub_2613A0CFC();
    v29 = v30;
  }

  v31 = [a1 transactionUUID];
  sub_26139F11C();

  v32 = [a1 cvmType];
  v123 = v29;
  v124 = v27;
  if (v32 > 47)
  {
    switch(v32)
    {
      case 48:
        v33 = 2;
        goto LABEL_30;
      case 240:
        v33 = 4;
        goto LABEL_30;
      case 255:
        v33 = 5;
        goto LABEL_30;
    }

LABEL_38:
    v91 = v32;
    type metadata accessor for SPRTransactionCVMType(0);
    LOBYTE(v133) = v91;
    result = sub_2613A247C();
    __break(1u);
    return result;
  }

  if (v32)
  {
    if (v32 == 16)
    {
      v33 = 1;
LABEL_30:
      v122 = v33;
      goto LABEL_31;
    }

    if (v32 == 32)
    {
      v33 = 3;
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  v122 = 0;
LABEL_31:
  if (v20)
  {
    v34 = v19;
  }

  else
  {
    v34 = v15;
  }

  v120 = v34;
  if (v20)
  {
    v35 = v18;
  }

  else
  {
    v35 = v14;
  }

  v119 = v35;
  v121 |= v118;
  v36 = [a1 cvmResult];
  v37 = sub_26139F01C();
  v39 = v38;

  v118 = sub_26139F00C();
  v117 = v40;
  sub_26124C6C4(v37, v39);
  v116 = sub_2612C9DD8([a1 outcomeStatus]);
  v41 = [a1 transactionCipherBlob];
  v42 = sub_26139F01C();
  v44 = v43;

  v115 = sub_26139F00C();
  v114 = v45;
  sub_26124C6C4(v42, v44);
  v46 = [a1 transactionKeyBlob];
  v47 = sub_26139F01C();
  v49 = v48;

  v113 = sub_26139F00C();
  v112 = v50;
  sub_26124C6C4(v47, v49);
  v51 = [a1 transactionResultData];
  v111 = sub_26139F01C();
  v110 = v52;

  v53 = [a1 kernelIdentityKeyAttestation];
  v54 = sub_26139F01C();
  v56 = v55;

  v109 = sub_26139F00C();
  v108 = v57;
  sub_26124C6C4(v54, v56);
  v58 = [a1 ecdsaCertificate];
  v59 = sub_26139F01C();
  v61 = v60;

  v62 = sub_2612E67CC();
  v107 = sub_2612E67DC(v62, v63, v59, v61);
  v106 = v64;

  sub_26124C6C4(v59, v61);
  v65 = [a1 kekId];
  v105 = sub_2613A18CC();
  v104 = v66;

  v67 = sub_26139FD0C();
  v68 = [v67 stringValue];

  v103 = sub_2613A18CC();
  v102 = v69;

  v101 = sub_26139FC6C();
  v100 = v70;
  LODWORD(v125) = sub_26139FCCC();
  v99 = [a1 isPinSupported];
  v98 = [a1 isPINBypassEnabled];
  v97 = [a1 isPINBypassAllowed];
  v96 = [a1 forFallback];
  v71 = [a1 fallbackAmount];
  v95 = sub_2613A18CC();
  v94 = v72;

  v73 = v126;

  v93 = [a1 switchInterfaceOrNoCVMSuccess];
  v74 = [a1 fingerprint];
  v75 = sub_26139F01C();
  v77 = v76;

  v92 = sub_26139F00C();
  v79 = v78;
  sub_26124C6C4(v75, v77);
  v80 = sub_2612C9A1C([a1 cardEffectiveState]);
  LOBYTE(v75) = v81;
  v82 = sub_2612C9BF0([a1 cardExpirationState]);
  v84 = v83;
  v85 = [a1 payAppType];
  v86 = sub_2613A18CC();
  v88 = v87;

  v89 = [a1 isSAF];
  return sub_2612CC02C(v128, v124, v123, v122, v118, v117, v116, v115, v127, v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v125 & 1, v121 & 1, v99, v98, v97, v96, v95, v94, v73, v119, v120, v93, v92, v79, v80, v75 & 1, v82, v84 & 1, v86, v88, v89);
}

uint64_t sub_2612C70E4(void *a1)
{
  v87 = sub_26139F13C();
  v86 = *(v87 - 8);
  v2 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v88 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBC0, &unk_2613A9C30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v74 - v13;
  v15 = sub_26139F6FC();
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2612C9FF8(&unk_2873B9F60);
  v90 = v19;
  v20 = a1[7];
  v21 = sub_26139FD0C();
  v22 = sub_2613A1F7C();
  v24 = v23;
  v26 = v25;

  *&v95 = v22;
  *(&v95 + 1) = v24;
  v96 = v26;
  sub_26139FD1C();
  v27 = sub_2613A033C();
  v29 = v28;
  if (v27 == sub_2613A033C() && v29 == v30)
  {
  }

  else
  {
    v31 = sub_2613A241C();

    if ((v31 & 1) == 0)
    {
      sub_26139FBCC();
      sub_26139FC6C();
      v32 = sub_26139F19C();
      (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
      sub_26139FBBC();

      sub_26124C718(v10, &qword_27FE9F3B8, &qword_2613A4828);
      v33 = v85;
      if ((*(v85 + 48))(v14, 1, v15) == 1)
      {
        sub_26124C718(v14, &qword_27FE9FBC0, &unk_2613A9C30);
        v34 = sub_26129B7C4();
        v35 = v84;
        sub_26124AA44(v34, v84);
        v36 = sub_2613A124C();
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v35, 1, v36) == 1)
        {
          sub_26124C6C4(v89, v90);
          sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          sub_2612B3E28(a1, &v93);
          v67 = sub_2613A122C();
          v68 = sub_2613A1D8C();
          sub_2612B47F8(a1);
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v93 = v70;
            *v69 = 136315138;
            v71 = sub_26139FC6C();
            v73 = sub_26124C11C(v71, v72, &v93);

            *(v69 + 4) = v73;
            _os_log_impl(&dword_261243000, v67, v68, "Invalid currency code [ %s ], could not load currency definition", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v70);
            MEMORY[0x266701350](v70, -1, -1);
            MEMORY[0x266701350](v69, -1, -1);
          }

          sub_26124C6C4(v89, v90);

          (*(v37 + 8))(v35, v36);
        }

        return 1;
      }

      (*(v33 + 32))(v18, v14, v15);
      v84 = sub_26139F6DC();
      v39 = v38;
      sub_26124C6C4(v89, v90);
      MEMORY[0x2667003D0](10);
      sub_26139F6EC();
      sub_26139EF8C();
      sub_2613A1F6C();
      (*(v33 + 8))(v18, v15);
      v89 = v84;
      v90 = v39;
    }
  }

  v40 = qword_2613A9E38[sub_26139FD1C()];
  v41 = sub_26139FC7C();
  sub_2612CA0A8(v41);

  v93 = v95;
  v94 = v96;
  v42 = sub_26139FC8C();
  v85 = v40;
  if (!v42)
  {
    LODWORD(v84) = 0;
LABEL_13:
    v83 = sub_2612E6690(2, a1[4]);
    v82 = v43;
    v44 = a1[3];
    v77 = a1[2];

    v45 = sub_2613A0C8C();
    v46 = sub_2612CA370(v45);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v80 = sub_2612C7A38(v46, v48, v50, v52);
    v79 = v53;
    v54 = a1[1];
    v74[1] = *a1;
    v74[0] = v54;
    v81 = sub_2613A0CCC();
    v78 = sub_2613A0C4C();
    sub_26139FCEC();
    sub_26139FC9C();
    v55 = a1[6];
    v74[3] = a1[5];
    v74[2] = v55;
    v76 = objc_allocWithZone(MEMORY[0x277D64030]);
    sub_2612CA40C();
    v75 = sub_2613A1B6C();

    v56 = sub_26139EFFC();
    v57 = sub_26139EFFC();
    v58 = sub_26139EFFC();
    v59 = sub_2613A189C();
    v60 = sub_26139F10C();
    v61 = sub_2613A1B6C();

    v62 = sub_2613A189C();
    v63 = sub_2613A189C();
    v91 = v93;
    v92 = v94;
    v64 = v75;
    v65 = [v76 initWithMode:v85 vasRequests:v75 amount:&v91 currencyCode:v56 transactionType:v84 merchantCategoryCode:v57 interfaceDeviceSerial:v58 kernelToken:v59 timeoutReadPay:v81 timeoutReadVas:v78 transactionUUID:v60 preferredSchemes:v61 vtid:v62 bundleID:v63];

    sub_26124C6C4(v80, v79);
    sub_26124C6C4(v83, v82);
    sub_26124C6C4(v89, v90);
    (*(v86 + 8))(v88, v87);
    return v65;
  }

  if (v42 == 1)
  {
    LODWORD(v84) = 32;
    goto LABEL_13;
  }

  *&v91 = v42;
  result = sub_2613A247C();
  __break(1u);
  return result;
}

uint64_t sub_2612C7A38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  *&v46 = a1;
  *(&v46 + 1) = a2;
  v47 = a3;
  v48 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBF8, "(N");
  if (!swift_dynamicCast())
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_26124C718(v44, &qword_27FE9FC00, &unk_2613A9DC0);
    sub_2612C9668(a1, a2, a3, a4, &v39);
    v8 = *(&v39 + 1);
    v9 = v39;
    if (*(&v39 + 1) >> 60 != 15)
    {
      v44[0] = v39;
      goto LABEL_54;
    }

    v10 = sub_2613A1FAC();
    *&v44[0] = sub_2612CA52C(v10);
    *(&v44[0] + 1) = v11;
    MEMORY[0x28223BE20](*&v44[0]);
    sub_2612C8DA8(sub_2612CA5CC, &v39);
    v13 = v40;
    v12 = v41;
    v14 = v42;
    v15 = *(&v44[0] + 1) >> 62;
    if ((*(&v44[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v44[0] + 16);
        v16 = *(*&v44[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v43 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v43)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v43)
        {
          sub_26139EFDC();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v43 == BYTE14(v44[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v44[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v44[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v44[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v44[0]), v44[0]))
      {
        goto LABEL_61;
      }

      if (v43 != DWORD1(v44[0]) - LODWORD(v44[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v39 + 1) >> 14;
    *(&v46 + 7) = 0;
    *&v46 = 0;
    if (*(&v39 + 1) >> 14 == v42 >> 14)
    {

      sub_26124A168(v9, v8);
      goto LABEL_54;
    }

    v34 = v9;
    v35 = v8;
    LOBYTE(v8) = 0;
    v22 = v39 >> 14;
    v23 = (v40 >> 59) & 1;
    if ((v41 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v37 = v41 & 0xFFFFFFFFFFFFFFLL;
    v36 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v25 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_26124F2C0(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_2613A1A8C();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v39 = v13;
          *(&v39 + 1) = v37;
          v30 = *(&v39 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v36;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_2613A216C();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_26124F2C0(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v38 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_2613A1A5C();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v46 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_26139EFEC();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_26124A168(v34, v35);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_26139EFEC();
        sub_26124A168(v34, v35);
        goto LABEL_53;
      }
    }
  }

  sub_26124A200(v44, &v39);
  __swift_project_boxed_opaque_existential_1(&v39, v41);
  sub_26139ED6C();
  v44[0] = v46;
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
LABEL_54:
  v31 = v44[0];
  sub_26124C778(*&v44[0], *(&v44[0] + 1));

  sub_26124C6C4(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_2612C7F8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 9)
  {
    v5 = 1;
  }

  else
  {
    v3 = a1;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
    (*(*(v4 - 8) + 56))(a2, (v3 + 1), 10, v4);
    v5 = 0;
  }

  v6 = type metadata accessor for ReaderEvent(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2612C805C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  type metadata accessor for Mock();
  v11 = sub_26129B284(42);
  if (v11 < 1)
  {
    v17 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v17 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      return MEMORY[0x277D84F90];
    }

    v18 = sub_26129B7C4();
    sub_26124AA44(v18, v8);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v25 = sub_2613A122C();
      v26 = sub_2613A1D9C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_26124C11C(a1, a2, &v53);
        _os_log_impl(&dword_261243000, v25, v26, "Deprecation warnings: [%s]", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x266701350](v28, -1, -1);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v20 + 8))(v8, v19);
    }

    v53 = a1;
    v54 = a2;
    v58 = 44;
    v59 = 0xE100000000000000;
    sub_26124C7CC();
    result = sub_2613A1FEC();
    v29 = result;
    v30 = *(result + 16);
    if (v30)
    {
      v31 = 0;
      v32 = result + 40;
      v33 = v30 - 1;
      v24 = MEMORY[0x277D84F90];
      do
      {
        v34 = (v32 + 16 * v31);
        v35 = v31;
        while (1)
        {
          if (v35 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v31 = v35 + 1;
          v37 = *(v34 - 1);
          v36 = *v34;

          sub_2612C8604(v37, v36, &v53);

          v38 = v54;
          if (v54)
          {
            break;
          }

          result = sub_261273F3C(v53, 0);
          v34 += 2;
          ++v35;
          if (v30 == v31)
          {
            goto LABEL_35;
          }
        }

        v49 = v33;
        v51 = v56;
        v52 = v53;
        v39 = v55;
        v40 = v57;
        result = swift_isUniquelyReferenced_nonNull_native();
        v50 = v32;
        if ((result & 1) == 0)
        {
          result = sub_2612C8B18(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
        }

        v42 = *(v24 + 16);
        v41 = *(v24 + 24);
        v43 = v51;
        v44 = v52;
        if (v42 >= v41 >> 1)
        {
          result = sub_2612C8B18((v41 > 1), v42 + 1, 1, v24);
          v46 = v39;
          v43 = v51;
          v44 = v52;
          v45 = v40;
          v24 = result;
        }

        else
        {
          v45 = v40;
          v46 = v39;
        }

        *(v24 + 16) = v42 + 1;
        v47 = (v24 + 40 * v42);
        v47[4] = v44;
        v47[5] = v38;
        v47[6] = v46;
        v47[7] = v43;
        v47[8] = v45;
        v33 = v49;
        v32 = v50;
      }

      while (v49 != v35);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

LABEL_35:

    return v24;
  }

  v12 = v11;
  v13 = sub_26129B7C4();
  sub_26124AA44(v13, v10);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    result = sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = sub_2613A122C();
    v22 = sub_2613A1D9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261243000, v21, v22, "Using mocked OS deprecation warning", v23, 2u);
      MEMORY[0x266701350](v23, -1, -1);
    }

    result = (*(v15 + 8))(v10, v14);
  }

  if ((v12 * 24) >> 64 != (24 * v12) >> 63)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((24 * v12 * 60) >> 64 != (1440 * v12) >> 63)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((1440 * v12 * 60) >> 64 == (86400 * v12) >> 63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD8, &unk_2613A9C40);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2613A4310;
    DeprecationWarning.init(deprecationType:deprecationTime:value:)(0x49535245565F534FLL, 0xEA00000000004E4FLL, 86400 * v12, 925774897, 0xE400000000000000, (v24 + 32));
    return v24;
  }

LABEL_40:
  __break(1u);
  return result;
}

double sub_2612C8604@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2613A194C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = sub_26139EFBC();
  if (v16 >> 60 == 15)
  {
    v17 = sub_26129B7C4();
    sub_26124AA44(v17, v14);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v49 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_26124C11C(a1, a2, &v49);
        _os_log_impl(&dword_261243000, v27, v28, "Could not parse deprecation data: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x266701350](v30, -1, -1);
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v19 + 8))(v14, v18);
    }
  }

  else
  {
    v20 = v15;
    v21 = v16;
    v22 = sub_2612CA4D8();
    nullsub_1(&type metadata for DeprecationWarning, v22);
    sub_26124B218(&type metadata for DeprecationWarning, &type metadata for DeprecationWarning, &v49);
    v23 = v50;
    if (v50)
    {
      v24 = v52;
      v48 = v51;
      v25 = v49;
      sub_26124A168(v20, v21);
      *a3 = v25;
      *(a3 + 8) = v23;
      result = *&v48;
      *(a3 + 16) = v48;
      *(a3 + 32) = v24;
      return result;
    }

    sub_2613A191C();
    v31 = sub_2613A18DC();
    v33 = v32;
    v34 = sub_26129B7C4();
    sub_26124AA44(v34, v12);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      sub_26124A168(v20, v21);

      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      *&v48 = v35;
      v46 = v31;

      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();

      v47 = v38;
      if (os_log_type_enabled(v37, v38))
      {
        v45 = v37;
        v39 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v39 = 136315138;
        if (v33)
        {
          a1 = v46;
          a2 = v33;
        }

        else
        {
        }

        v40 = v48;
        v41 = sub_26124C11C(a1, a2, &v49);

        *(v39 + 4) = v41;
        v42 = v45;
        _os_log_impl(&dword_261243000, v45, v47, "Could not parse deprecation warning: %s", v39, 0xCu);
        v43 = v44;
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x266701350](v43, -1, -1);
        MEMORY[0x266701350](v39, -1, -1);
        sub_26124A168(v20, v21);
      }

      else
      {
        sub_26124A168(v20, v21);

        v40 = v48;
      }

      (*(v36 + 8))(v12, v40);
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

char *sub_2612C8B18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD8, &unk_2613A9C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2612C8C38(uint64_t a1, unint64_t a2)
{
  sub_26124C778(a1, a2);
  v4 = *(sub_2612C9340(a1, a2) + 16);
  v5 = sub_2613A19BC();

  return v5;
}

uint64_t sub_2612C8CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2613A19BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2612C8CE0@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2612C9E40(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26139ED5C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26139ED0C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26139EFCC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2612C8DA8@<X0>(void *(*a1)(__int128 *__return_ptr, char *, char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *v2;
  v7 = v2[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 == 2)
    {

      sub_26124C6C4(v8, v7);
      *&v32 = v8;
      *(&v32 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_2613A3C90;
      sub_26124C6C4(0, 0xC000000000000000);
      sub_26139EF9C();
      v12 = v32;
      result = sub_2612C9274(*(v32 + 16), *(v32 + 24), a1, &v28);
      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
      *v2 = v12;
      v2[1] = *(&v12 + 1) | 0x8000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(&v32 + 7) = 0;
      *&v32 = 0;
      result = a1(&v28, &v32, &v32);
      if (v3)
      {
        goto LABEL_21;
      }

      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
    }

LABEL_20:
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    goto LABEL_21;
  }

  if (v9)
  {
    v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26124C6C4(v8, v7);
    *v2 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    v18 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v18 < v8)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_26139ED1C() && __OFSUB__(v8, sub_26139ED4C()))
      {
LABEL_24:
        __break(1u);
      }

      v20 = sub_26139ED5C();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_26139ECFC();

      v17 = v23;
    }

    if (v18 >= v8)
    {

      sub_2612C9274(v8, v8 >> 32, a1, &v28);
      v14 = v29;
      v15 = v30;
      v26 = v31;
      v27 = v28;

      *v4 = v8;
      v4[1] = v17 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }

      v16 = v26;
      v13 = v27;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_26124C6C4(v8, v7);
  *&v32 = v8;
  WORD4(v32) = v7;
  BYTE10(v32) = BYTE2(v7);
  BYTE11(v32) = BYTE3(v7);
  BYTE12(v32) = BYTE4(v7);
  BYTE13(v32) = BYTE5(v7);
  BYTE14(v32) = BYTE6(v7);
  result = a1(&v28, &v32, &v32 + BYTE6(v7));
  if (!v3)
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v19 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
    *v2 = v32;
    v2[1] = v19;
    goto LABEL_20;
  }

  v11 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
  *v2 = v32;
  v2[1] = v11;
LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2612C9160@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2612C9E40(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2612C9EF8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2612C9F74(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2612C91F4@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a4 = v10;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v9;
      return result;
    }
  }

  else
  {
    result = a1(&v10, 0, 0);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_2612C9274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_26139ED1C();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_26139ED4C();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_26139ED3C();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *a4 = v19;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
  }

  return result;
}

uint64_t sub_2612C9340(uint64_t a1, unint64_t a2)
{
  v4 = sub_26139F03C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_26124C6C4(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_26124C55C(v11, 0);
      v15 = sub_26139EFAC();
      sub_26124C6C4(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_2612C94BC(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_26139ED1C();
  if (a1)
  {
    a1 = sub_26139ED4C();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_26139ED1C() || !__OFSUB__(v5, sub_26139ED4C()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_26139ED3C();
LABEL_16:
  result = sub_2613A19BC();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2612C9668@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a5 = xmmword_2613A4620;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v12[0] = a3;
      v12[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v9 = v12;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = a5;
      v9 = sub_2613A216C();
      a5 = v11;
    }

    sub_2612C970C(v9, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_2612C970C@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v7 = result;
  v8 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a2 & 0xC;
  v11 = a2;
  if (v10 == 4 << v8)
  {
    v13 = a2;
    v14 = a6;
    v15 = a5;
    v16 = a3;
    result = sub_26124F2C0(a2, a4, a5);
    a2 = v13;
    a3 = v16;
    a5 = v15;
    a6 = v14;
    v11 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v12 = v11 >> 16;
      if (v10 != v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a6;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v11 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  result = sub_2613A1A7C();
  a5 = v21;
  v12 = result;
  a6 = v17;
  a3 = v20;
  a2 = v19;
  if (v10 == v9)
  {
LABEL_14:
    v22 = a6;
    v23 = a5;
    v24 = a3;
    result = sub_26124F2C0(a2, a4, a5);
    a3 = v24;
    a5 = v23;
    a6 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v9)
  {
    v25 = a2;
    v26 = a6;
    v27 = a5;
    result = sub_26124F2C0(a3, a4, a5);
    a2 = v25;
    a5 = v27;
    a6 = v26;
    a3 = result;
    if ((v27 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v28 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v28 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v28 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v29 = a6;
  result = sub_2613A1A7C();
  a6 = v29;
LABEL_21:
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  if (v12 + result < v12)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v31 = (v12 + v7);
  }

  else
  {
    v31 = 0;
  }

  return sub_2612C8CE0(v31, v30, a6);
}

double sub_2612C9924@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v15 = *a3;
  v16 = v5;
  v17 = v6;
  sub_2612C91F4(sub_2612CA5E8, a1, a2, &v11);
  v7 = v12;
  v8 = v13;
  result = *&v11;
  v10 = v14;
  *a4 = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_2612C99AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_26124F0A0(v9, a1, a2, *a3, a3[1], a3[2], a3[3]);
  v6 = v10;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
}

uint64_t sub_2612C9A1C(unsigned __int8 a1)
{
  type metadata accessor for Mock();
  v2 = sub_26129B1A8(25);
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    v7 = sub_26139FF7C();
    v8 = 0;
    v9 = *(v7 + 16);
    while (1)
    {
      if (v9 == v8)
      {

        goto LABEL_27;
      }

      if (v8 >= *(v7 + 16))
      {
        break;
      }

      v10 = *(v7 + 8 * v8 + 32);
      if (sub_26139FF6C() == v6 && v11 == v4)
      {

        goto LABEL_19;
      }

      ++v8;
      v13 = sub_2613A241C();

      if (v13)
      {

LABEL_19:

        return v10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (a1 <= 0x1Fu)
  {
    if (!a1 || a1 == 16)
    {
LABEL_27:

      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x20u:

        return 1;
      case 0x40u:

        return 2;
      case 0x80u:

        return 3;
    }
  }

LABEL_29:
  type metadata accessor for SPRCardEffectiveState(0);
  result = sub_2613A247C();
  __break(1u);
  return result;
}

uint64_t sub_2612C9BF0(unsigned __int8 a1)
{
  type metadata accessor for Mock();
  v2 = sub_26129B1A8(26);
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    v7 = sub_26139FF9C();
    v8 = 0;
    v9 = *(v7 + 16);
    while (1)
    {
      if (v9 == v8)
      {

        goto LABEL_27;
      }

      if (v8 >= *(v7 + 16))
      {
        break;
      }

      v10 = *(v7 + 8 * v8 + 32);
      if (sub_26139FF8C() == v6 && v11 == v4)
      {

        goto LABEL_19;
      }

      ++v8;
      v13 = sub_2613A241C();

      if (v13)
      {

LABEL_19:

        return v10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (a1 <= 1u)
  {
    if (!a1 || a1 == 1)
    {
LABEL_27:

      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:

        return 1;
      case 4u:

        return 2;
      case 8u:

        return 3;
    }
  }

LABEL_29:
  type metadata accessor for SPRCardExpirationState(0);
  result = sub_2613A247C();
  __break(1u);
  return result;
}

uint64_t sub_2612C9DD8(char a1)
{
  if ((((a1 + 16) >> 4) | (16 * (a1 + 16))) < 9u)
  {
    return byte_2613A9E58[(((a1 + 16) >> 4) | (16 * (a1 + 16)))];
  }

  type metadata accessor for SPRTransactionOutcomeStatus(0);
  result = sub_2613A247C();
  __break(1u);
  return result;
}

uint64_t sub_2612C9E40(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2612C9EF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26139ED5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26139ED0C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26139EFCC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2612C9F74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26139ED5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26139ED0C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2612C9FF8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC08, "JN");
  v10 = sub_2612CA608();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2612C9160(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_2612CA0A8(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v24 - v6;
  v27 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v23 = v5;
  result = sub_2613A221C();
  v5 = v23;
  v8 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v26 = v5 & 0xC000000000000001;
    v25 = *MEMORY[0x277D64108];
    v24 = *MEMORY[0x277D64110];
    v10 = v5;
    do
    {
      if (v26)
      {
        v11 = MEMORY[0x2667005C0](v9);
      }

      else
      {
        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_26139FD5C();
      v14 = v25;
      if (v13)
      {
        v14 = v24;
      }

      v15 = v14;
      sub_26139FD7C();
      sub_26139FD8C();
      sub_26139EF5C();

      v16 = sub_2613A189C();

      v17 = sub_26139EF7C();
      v18 = *(v17 - 8);
      v19 = 0;
      if ((*(v18 + 48))(v7, 1, v17) != 1)
      {
        v19 = sub_26139EEFC();
        (*(v18 + 8))(v7, v17);
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D64048]) initWithVasTerminalProtocol:v15 merchantId:v16 vasUrl:v19 vasFilter:0];

      v21 = v20;
      MEMORY[0x2666FFFD0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2613A1B9C();
      }

      ++v9;
      sub_2613A1BBC();

      v5 = v10;
    }

    while (v8 != v9);
    return v27;
  }

  return result;
}

uint64_t sub_2612CA370(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2613A1A0C();

    return sub_2613A1AEC();
  }

  return result;
}

unint64_t sub_2612CA40C()
{
  result = qword_27FE9FBC8;
  if (!qword_27FE9FBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9FBC8);
  }

  return result;
}

uint64_t sub_2612CA490(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2612CA4D8()
{
  result = qword_27FE9FBF0;
  if (!qword_27FE9FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FBF0);
  }

  return result;
}

uint64_t sub_2612CA52C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_26139ED5C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26139ED2C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26139EFCC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_2612CA608()
{
  result = qword_27FE9FC10;
  if (!qword_27FE9FC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FC08, "JN");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FC10);
  }

  return result;
}

uint64_t sub_2612CA6B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x5020656E696C6E4FLL;
  v5 = 0xEA00000000004E49;
  v6 = 0x6C70704120746F4ELL;
  v7 = 0xEE00656C62616369;
  if (a1 != 4)
  {
    v6 = 0x7974706D45;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x727574616E676953;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x4D5643444FLL;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x4D5643206F4ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000004E49;
      if (v10 != 0x5020656E696C6E4FLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7974706D45)
      {
LABEL_34:
        v13 = sub_2613A241C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x727574616E676953)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x4D5643444FLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x4D5643206F4ELL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2612CA8A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x64656E696C636564;
    if (a1 != 2)
    {
      v13 = 0x6552656E696C6E6FLL;
      v12 = 0xED00007473657571;
    }

    v14 = 0x6465766F72707061;
    if (a1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 0x7974706D65;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000002613BA590;
    v5 = 0xE800000000000000;
    v6 = 0x6E69616741797274;
    if (a1 != 7)
    {
      v6 = 16718;
      v5 = 0xE200000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x696C707041646E65;
    v8 = 0xEE006E6F69746163;
    if (a1 != 4)
    {
      v7 = 0x654E7463656C6573;
      v8 = 0xEA00000000007478;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0xED00007473657571;
        if (v9 != 0x6552656E696C6E6FLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0xE800000000000000;
      v16 = 0x6E696C636564;
    }

    else
    {
      if (!a2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x7974706D65)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0xE800000000000000;
      v16 = 0x766F72707061;
    }

    if (v9 != (v16 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEE006E6F69746163;
      if (v9 != 0x696C707041646E65)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA00000000007478;
      if (v9 != 0x654E7463656C6573)
      {
LABEL_52:
        v17 = sub_2613A241C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x80000002613BA590;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6E69616741797274)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE200000000000000;
    if (v9 != 16718)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_2612CABB0(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    switch(a1)
    {
      case 2:
        return sub_2613A058C();
      case 1:
        return sub_2613A057C();
      case 0:
        return sub_2613A059C();
    }

    result = sub_2613A220C();
    __break(1u);
    return result;
  }

  if (a2 >> 6 == 1)
  {
    if ((a2 & 0x3F) == 0)
    {
      sub_2613A211C();

      v2 = 0xD000000000000023;
      goto LABEL_30;
    }

    if ((a2 & 0x3F) == 1)
    {
      sub_2613A211C();

      v2 = 0xD000000000000010;
LABEL_30:
      v15 = v2;
      v7 = sub_2613A23EC();
      MEMORY[0x2666FFEA0](v7);

      MEMORY[0x2666FFEA0](41, 0xE100000000000000);
      return v15;
    }

    v8 = 0x6461655264726163;
    if (a1 == 2)
    {
      v8 = 0xD000000000000019;
    }

    v9 = 0xD000000000000024;
    if (a1)
    {
      v9 = 0xD00000000000001BLL;
    }

    if (a1 <= 1)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (__PAIR128__(-128, 5) >= __PAIR128__(a2, a1))
    {
      if (__PAIR128__(-128, 2) < __PAIR128__(a2, a1))
      {
        if (a2 == 128 && a1 == 3)
        {
          return 0x626173694463666ELL;
        }

        if (a2 == 128 && a1 == 4)
        {
          return 0xD000000000000012;
        }

        v14 = 0x616552797274;
      }

      else
      {
        if (a1 | a2 ^ 0x80)
        {
          if (a2 == 128 && a1 == 1)
          {
            return 0xD000000000000013;
          }

          else
          {
            return 0x654E6769666E6F63;
          }
        }

        v14 = 0x696C61766E69;
      }

      return v14 & 0xFFFFFFFFFFFFLL | 0x4164000000000000;
    }

    if (__PAIR128__(-128, 8) < __PAIR128__(a2, a1))
    {
      if (a2 == 128 && a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else if (a2 == 128 && a1 == 10)
      {
        return 0xD000000000000010;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else if (a2 == 128 && a1 == 6)
    {
      return 0x656D695464616572;
    }

    else if (a2 == 128 && a1 == 7)
    {
      return 0x4664616552736176;
    }

    else
    {
      return 0x4E61746144736176;
    }
  }
}