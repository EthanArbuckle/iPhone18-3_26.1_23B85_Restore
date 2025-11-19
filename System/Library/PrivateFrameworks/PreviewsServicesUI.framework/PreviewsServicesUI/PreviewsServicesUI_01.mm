_OWORD *sub_25F558C4C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F558628(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25F55C7F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25F55870C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25F558628(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25F55F5F8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_25F54C9D0(a1, v23);
  }

  else
  {
    sub_25F559014(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_25F558D9C()
{
  result = qword_27FD9AA80;
  if (!qword_27FD9AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AA80);
  }

  return result;
}

unint64_t sub_25F558E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  result = sub_25F5586A0(a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_25F5589C4(v22, a4 & 1, a6, a7);
      v26 = *v11;
      result = sub_25F5586A0(a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_25F55F5F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      a5();
      result = v25;
    }
  }

  v28 = *v11;
  if ((v23 & 1) == 0)
  {
    v28[(result >> 6) + 8] |= 1 << result;
    *(v28[6] + 8 * result) = a3;
    v31 = (v28[7] + 16 * result);
    *v31 = a1;
    v31[1] = a2;
    v32 = v28[2];
    v21 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v21)
    {
      v28[2] = v33;
      return result;
    }

    goto LABEL_15;
  }

  v29 = (v28[7] + 16 * result);
  v30 = v29[1];
  *v29 = a1;
  v29[1] = a2;
}

_OWORD *sub_25F559014(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25F54C9D0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25F559080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25F55F5D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F559138(uint64_t a1, uint64_t a2)
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

unint64_t sub_25F5591A4()
{
  result = qword_27FD9AA90;
  if (!qword_27FD9AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AA90);
  }

  return result;
}

unint64_t sub_25F5591FC()
{
  result = qword_27FD9AA98;
  if (!qword_27FD9AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AA98);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewPreferences(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewPreferences(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewPreferences.InterfaceOrientation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewPreferences.InterfaceOrientation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F559460()
{
  result = qword_27FD9AAA0;
  if (!qword_27FD9AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AAA0);
  }

  return result;
}

uint64_t sub_25F5594B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F5594C8(a1, a2);
  }

  return a1;
}

uint64_t sub_25F5594C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25F55951C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A730, &qword_25F560C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F559588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000072656BLL;
  v3 = 0x636950726F6C6F63;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x746E656D75636F64;
    v16 = 0xEE0072656B636950;
    v17 = 0x746E656D75636F64;
    v18 = 0xEF726573776F7242;
    if (a1 != 3)
    {
      v17 = 0x6568536572616873;
      v18 = 0xEA00000000007465;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v16 = v18;
    }

    v19 = 0x6B636950746E6F66;
    v20 = 0xEA00000000007265;
    if (!a1)
    {
      v19 = 0x636950726F6C6F63;
      v20 = 0xEB0000000072656BLL;
    }

    if (a1 <= 1u)
    {
      v13 = v19;
    }

    else
    {
      v13 = v15;
    }

    if (v4 <= 1)
    {
      v14 = v20;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x646C696863;
    v7 = 0xE800000000000000;
    v8 = 0x6C61646F4D707061;
    if (a1 != 9)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    if (a1 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x6E6150746E697270;
    v10 = 0xEA00000000006C65;
    v11 = 0x746341656E656373;
    v12 = 0xEF6E6F6974617669;
    if (a1 != 6)
    {
      v11 = 0x7465656873;
      v12 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v9 = v11;
      v10 = v12;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v6;
    }

    if (v4 <= 7)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEE0072656B636950;
        if (v13 != 0x746E656D75636F64)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xEF726573776F7242;
        if (v13 != 0x746E656D75636F64)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v2 = 0xEA00000000007465;
        if (v13 != 0x6568536572616873)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2)
    {
      v2 = 0xEA00000000007265;
      if (v13 != 0x6B636950746E6F66)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x646C696863)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 9)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6C61646F4D707061)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6E776F6E6B6E75)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2 == 5)
    {
      v2 = 0xEA00000000006C65;
      if (v13 != 0x6E6150746E697270)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    if (a2 == 6)
    {
      v2 = 0xEF6E6F6974617669;
      if (v13 != 0x746341656E656373)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v2 = 0xE500000000000000;
    v3 = 0x7465656873;
  }

  if (v13 != v3)
  {
LABEL_59:
    v21 = sub_25F55F5D8();
    goto LABEL_60;
  }

LABEL_56:
  if (v14 != v2)
  {
    goto LABEL_59;
  }

  v21 = 1;
LABEL_60:

  return v21 & 1;
}

uint64_t sub_25F559924(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736563;
  v3 = 0x6E65726566657270;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x61746E6573657270;
    }

    else
    {
      v5 = 6580592;
    }

    if (v4 == 2)
    {
      v6 = 0xEC0000006E6F6974;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684366707;
    }

    else
    {
      v5 = 0x6E65726566657270;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB00000000736563;
    }
  }

  v7 = 0x61746E6573657270;
  v8 = 0xEC0000006E6F6974;
  if (a2 != 2)
  {
    v7 = 6580592;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 1684366707;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F55F5D8();
  }

  return v11 & 1;
}

uint64_t sub_25F559A5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006D6F6FLL;
  v3 = 0x5A74736575716572;
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0x5A74736575716572;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (a1 == 5)
  {
    v6 = 0xEB000000006D6F6FLL;
  }

  else
  {
    v6 = 0x800000025F5628C0;
  }

  v7 = 0x800000025F562880;
  if (a1 != 3)
  {
    v7 = 0x800000025F5628A0;
  }

  if (a1 <= 4u)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v8 = v5;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xD000000000000017;
  v11 = 0x800000025F562840;
  if (a1 != 1)
  {
    v11 = 0x800000025F562860;
  }

  if (a1)
  {
    v10 = 0xD000000000000010;
  }

  else
  {
    v11 = 0x800000025F562820;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000025F562820;
      if (v12 != 0xD000000000000017)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (a2 == 1)
    {
      v2 = 0x800000025F562840;
      goto LABEL_42;
    }

    v2 = 0x800000025F562860;
    v3 = 0xD000000000000010;
LABEL_39:
    if (v12 != v3)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 > 4u)
  {
    if (a2 != 5)
    {
      v2 = 0x800000025F5628C0;
      if (v12 != 0xD000000000000016)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    goto LABEL_39;
  }

  if (a2 == 3)
  {
    v2 = 0x800000025F562880;
  }

  else
  {
    v2 = 0x800000025F5628A0;
  }

LABEL_42:
  if (v12 != 0xD000000000000010)
  {
LABEL_45:
    v14 = sub_25F55F5D8();
    goto LABEL_46;
  }

LABEL_43:
  if (v13 != v2)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_25F559C1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xED00007466654C65;
  if (a1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  v5 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000025F5628E0;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x70616373646E616CLL;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xED00007466654C65;
    }

    else
    {
      v9 = 0xEE00746867695265;
    }

    if (v6 != 0x70616373646E616CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x7469617274726F70;
    }

    if (a2)
    {
      v9 = 0x800000025F5628E0;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_25F55F5D8();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

uint64_t sub_25F559D94()
{
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F559ED0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = ShellToHostMessage.payloadDescription.getter();
  if (v8)
  {
    MEMORY[0x25F8E1080](v7);
    MEMORY[0x25F8E1080](41, 0xE100000000000000);

    v10 = 40;
    v9 = 0xE100000000000000;
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 0xD000000000000017;
    }

    if (v6)
    {
      v11 = 0x800000025F562840;
    }

    else
    {
      v11 = 0x800000025F562820;
    }
  }

  else if (v6 == 2)
  {
    v12 = 0xD000000000000010;
    v11 = 0x800000025F562880;
  }

  else if (v6 == 3)
  {
    v11 = 0x800000025F5628C0;
    v12 = 0xD000000000000016;
  }

  else
  {
    v13 = v4 | v5 | v1 | v3 | v2;
    v14 = v4 | v5 | v3 | v2;
    v15 = 0xEB000000006D6F6FLL;
    v16 = 0x800000025F5628A0;
    v17 = v14 == 0;
    if (v14)
    {
      v18 = 0x5A74736575716572;
    }

    else
    {
      v18 = 0xD000000000000010;
    }

    if (!v17)
    {
      v16 = 0xEB000000006D6F6FLL;
    }

    if (v1 == 1)
    {
      v15 = v16;
    }

    else
    {
      v18 = 0x5A74736575716572;
    }

    if (v13)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (v13)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0x800000025F562860;
    }
  }

  MEMORY[0x25F8E1080](v12, v11);

  MEMORY[0x25F8E1080](v10, v9);

  return 46;
}

uint64_t sub_25F55A0E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = HostToShellMessage.payloadDescription.getter();
  if (v5)
  {
    MEMORY[0x25F8E1080](v4);
    MEMORY[0x25F8E1080](41, 0xE100000000000000);

    v7 = 40;
    v6 = 0xE100000000000000;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v8 = 0x6572617764726168;
    }

    else
    {
      v8 = 0xD000000000000026;
    }

    if (a3 == 1)
    {
      v9 = 0xED0000746E657645;
    }

    else
    {
      v9 = 0x800000025F5629C0;
    }
  }

  else
  {
    v8 = 0xD000000000000013;
    v9 = 0x800000025F5629A0;
  }

  MEMORY[0x25F8E1080](v8, v9);

  MEMORY[0x25F8E1080](v7, v6);

  return 46;
}

uint64_t sub_25F55A224(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = 0xEB00000000736563;
  v4 = 0x6E65726566657270;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x61746E6573657270;
  if (a2 != 2)
  {
    v6 = 6580592;
    v5 = 0xE300000000000000;
  }

  if (a2)
  {
    v4 = 1684366707;
    v3 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a1 != 11)
  {
    *(&v13 + 1) = MEMORY[0x277D837D0];
    if (a1 > 4u)
    {
      if (a1 > 7u)
      {
        if (a1 == 8)
        {
          v9 = 0xE500000000000000;
          v10 = 0x646C696863;
        }

        else if (a1 == 9)
        {
          v9 = 0xE800000000000000;
          v10 = 0x6C61646F4D707061;
        }

        else
        {
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
        }
      }

      else if (a1 == 5)
      {
        v10 = 0x6E6150746E697270;
        v9 = 0xEA00000000006C65;
      }

      else if (a1 == 6)
      {
        v9 = 0xEF6E6F6974617669;
        v10 = 0x746341656E656373;
      }

      else
      {
        v9 = 0xE500000000000000;
        v10 = 0x7465656873;
      }

      goto LABEL_35;
    }

    if (a1 <= 1u)
    {
      if (a1)
      {
        v9 = 0xEA00000000007265;
        v10 = 0x6B636950746E6F66;
      }

      else
      {
        v9 = 0xEB0000000072656BLL;
        v10 = 0x636950726F6C6F63;
      }

      goto LABEL_35;
    }

    if (a1 == 2)
    {
      v9 = 0xEE0072656B636950;
    }

    else
    {
      if (a1 != 3)
      {
        v9 = 0xEA00000000007465;
        v10 = 0x6568536572616873;
        goto LABEL_35;
      }

      v9 = 0xEF726573776F7242;
    }

    v10 = 0x746E656D75636F64;
LABEL_35:
    *&v12 = v10;
    *(&v12 + 1) = v9;
    return sub_25F557058(&v12, v7, v8);
  }

  v12 = 0u;
  v13 = 0u;
  return sub_25F557058(&v12, v7, v8);
}

void *sub_25F55A494()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *HostToShellMessage.fenceHandle.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HostToShellMessage.payload.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v1;
    sub_25F54C9D0(&v13, v12);
    v8 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v8;
    sub_25F558C4C(v12, 1684366707, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    return v11;
  }

  if (*(v0 + 16) == 1)
  {
    v2 = [v1 data];
    v3 = sub_25F55F2E8();
    v5 = v4;

    v14 = MEMORY[0x277CC9318];
    *&v13 = v3;
    *(&v13 + 1) = v5;
    sub_25F54C9D0(&v13, v12);
    sub_25F55C3B8(v3, v5);
    v6 = MEMORY[0x277D84F98];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v11 = v6;
    sub_25F558C4C(v12, 0x746144746E657665, 0xE900000000000061, v7);
    sub_25F5594C8(v3, v5);
    return v11;
  }

  return 0;
}

void HostToShellMessage.init(messageType:fenceHandle:payload:)(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  if (!a1)
  {
    v9 = sub_25F557688(0, a3);
    v11 = v10;

    if (v4)
    {

      return;
    }

    if (v11)
    {
      sub_25F558D9C();
      swift_allocError();
      v14 = v13;
      *(v13 + 24) = &type metadata for HostToShellMessage.Key;
      *v13 = 0;
      *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAA8, &unk_25F561A60);
      *(v14 + 32) = MEMORY[0x277D83B88];
      *(v14 + 96) = 0;
      goto LABEL_10;
    }

    v12 = 0;
LABEL_18:
    *a4 = v9;
    *(a4 + 8) = v5;
    *(a4 + 16) = v12;
    return;
  }

  if (a1 == 1)
  {

    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB08, &qword_25F561AD8);
      sub_25F55CCE4(&qword_27FD9AB10, &qword_27FD9AB08, &qword_25F561AD8);
      swift_allocError();
      v8 = 257;
LABEL_9:
      *v7 = v8;
LABEL_10:
      swift_willThrow();

      return;
    }

    v9 = 0;
    v12 = 2;
    goto LABEL_18;
  }

  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB08, &qword_25F561AD8);
    sub_25F55CCE4(&qword_27FD9AB10, &qword_27FD9AB08, &qword_25F561AD8);
    swift_allocError();
    v8 = 258;
    goto LABEL_9;
  }

  sub_25F5574E0(1, a3, &v19);

  if (!v4)
  {
    v15 = v19;
    if (*(&v19 + 1) >> 60 == 15)
    {
      sub_25F5594B4(v19, *(&v19 + 1));
      sub_25F558D9C();
      swift_allocError();
      v17 = v16;
      *(v16 + 24) = &type metadata for HostToShellMessage.Key;
      *v16 = 1;
      *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAD0, &qword_25F561AD0);
      *(v17 + 32) = MEMORY[0x277CC9318];
      *(v17 + 96) = 0;
      swift_willThrow();
      return;
    }

    v18 = objc_allocWithZone(UVHardwareEvent);
    v9 = sub_25F55CC24();
    sub_25F5594B4(v15, *(&v15 + 1));
    v5 = 0;
    v12 = 1;
    goto LABEL_18;
  }
}

unint64_t HostToShellMessage.payloadDescription.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v9 = 0x203A64656573;
    v8 = *v0;
    v6 = sub_25F55F5A8();
    MEMORY[0x25F8E1080](v6);
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_25F55F528();

    v9 = 0xD000000000000010;
    v2 = [v1 description];
    v3 = sub_25F55F3F8();
    v5 = v4;

    MEMORY[0x25F8E1080](v3, v5);
LABEL_5:

    return v9;
  }

  return 0;
}

void sub_25F55AA40(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      *a1 = 6;
    }

    else
    {
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      v5 = *(v1 + 24) | *(v1 + 32);
      if (v5 | v4 | v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v1 == 1;
      }

      if (v6)
      {
        v7 = 4;
      }

      else
      {
        v7 = 5;
      }

      if (!(v5 | *v1 | v4 | v3))
      {
        v7 = 2;
      }

      *a1 = v7;
    }
  }

  else
  {
    if (v2 >= 2)
    {
      LOBYTE(v2) = 3;
    }

    *a1 = v2;
  }
}

uint64_t ShellToHostMessage.messageType.getter()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 6;
    }

    else
    {
      v3 = *(v0 + 8);
      v4 = *(v0 + 16);
      v5 = *(v0 + 24) | *(v0 + 32);
      if (v5 | v4 | v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v0 == 1;
      }

      if (v6)
      {
        v7 = 4;
      }

      else
      {
        v7 = 5;
      }

      if (v5 | *v0 | v4 | v3)
      {
        return v7;
      }

      else
      {
        return 2;
      }
    }
  }

  else if (v1 >= 2)
  {
    return 3;
  }

  else
  {
    return *(v0 + 40);
  }
}

unint64_t sub_25F55AB24()
{
  v1 = *(v0 + 32);
  if (*(v0 + 40) <= 1u)
  {
    if (*(v0 + 40))
    {
      v1 = *(v0 + 24);
    }

    v4 = v1;
    return v1;
  }

  else
  {
    if (*(v0 + 40) - 2 >= 2)
    {
      v2 = v1 | *(v0 + 24) | *v0 | *(v0 + 16) | *(v0 + 8);
    }

    return 0;
  }
}

unint64_t ShellToHostMessage.fenceHandle.getter()
{
  v1 = *(v0 + 32);
  if (*(v0 + 40) <= 1u)
  {
    if (*(v0 + 40))
    {
      v1 = *(v0 + 24);
    }

    v4 = v1;
    return v1;
  }

  else
  {
    if (*(v0 + 40) - 2 >= 2)
    {
      v2 = v1 | *(v0 + 24) | *v0 | *(v0 + 16) | *(v0 + 8);
    }

    return 0;
  }
}

uint64_t ShellToHostMessage.payload.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  if (v5 <= 1)
  {
    if (!*(v0 + 40))
    {
      v11 = MEMORY[0x277D84F98];
      sub_25F556A28(v1, v2, v3 & 0xFF01, 0);
      v14 = MEMORY[0x277D83B88];
      *&v13 = v4;
      sub_25F54C9D0(&v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_25F558C4C(v12, 1684366707, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      return v11;
    }

    *&v13 = MEMORY[0x277D84F98];
    sub_25F556A28(v1, v2, v3 & 0xFF01, 0);
  }

  else
  {
    if (v5 == 2)
    {
      v14 = MEMORY[0x277D849A8];
      LODWORD(v13) = v1;
      sub_25F54C9D0(&v13, v12);
      v8 = MEMORY[0x277D84F98];
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_25F558C4C(v12, 6580592, 0xE300000000000000, v9);
      return v8;
    }

    if (v5 != 3)
    {
      v10 = v3 | v2 | v1 | v4 | *(v0 + 32);
      return 0;
    }

    *&v13 = MEMORY[0x277D84F98];
    sub_25F55A224(v1, 2u);
  }

  return v13;
}

void ShellToHostMessage.init(messageType:fenceHandle:payload:)(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2;
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 == 5)
      {

        if (v6)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
          sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
          swift_allocError();
          v9 = 261;
          goto LABEL_21;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 4;
        v18 = 2;
        goto LABEL_38;
      }

      if (a2)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
        sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
        swift_allocError();
        v9 = 262;
        goto LABEL_21;
      }

      sub_25F55850C(2u, a3, v35);
      if (!v4)
      {

        v18 = LOBYTE(v35[0]);
        if (LOBYTE(v35[0]) != 11)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v6 = 0;
          v22 = 3;
          goto LABEL_38;
        }

        sub_25F558D9C();
        swift_allocError();
        v26 = v25;
        *(v25 + 24) = &type metadata for ShellToHostMessage.Key;
        *v25 = 2;
        *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A750, &qword_25F561810);
        v27 = MEMORY[0x277D837D0];
        goto LABEL_44;
      }
    }

    else
    {
      if (a1 != 3)
      {

        if (v6)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
          sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
          swift_allocError();
          v9 = 260;
          goto LABEL_21;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 4;
        v18 = 1;
        goto LABEL_38;
      }

      if (a2)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
        sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
        swift_allocError();
        v9 = 259;
LABEL_21:
        *v8 = v9;
LABEL_22:
        swift_willThrow();

        return;
      }

      v23 = sub_25F557E80(3u, a3);
      if (!v4)
      {
        v24 = v23;

        if ((v24 & 0x100000000) == 0)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v6 = 0;
          v18 = v24;
          v22 = 2;
LABEL_38:
          *a4 = v18;
          *(a4 + 8) = v19;
          *(a4 + 16) = v20;
          *(a4 + 24) = v21;
          *(a4 + 32) = v6;
          *(a4 + 40) = v22;
          return;
        }

        sub_25F558D9C();
        swift_allocError();
        v26 = v28;
        *(v28 + 24) = &type metadata for ShellToHostMessage.Key;
        *v28 = 3;
        *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAC0, &qword_25F561A78);
        v27 = MEMORY[0x277D849A8];
LABEL_44:
        *(v26 + 32) = v27;
LABEL_50:
        *(v26 + 96) = 0;
LABEL_51:
        swift_willThrow();
        return;
      }
    }

LABEL_40:

    return;
  }

  if (!a1)
  {
    v10 = sub_25F558214(0, a3);
    if (v4)
    {
LABEL_14:

      return;
    }

    if (!v10)
    {
      goto LABEL_26;
    }

    PreviewPreferences.init(dictionaryValue:)(v10);
    if (v11)
    {
      goto LABEL_14;
    }

    if ((v36 & 0xFF00) != 0x400)
    {
      v18 = v35[0];
      v19 = v35[1];
      v21 = sub_25F558050(1u, a3);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        v22 = 0;
        v20 = v36 & 0xFF01;
        goto LABEL_38;
      }

      sub_25F558D9C();
      swift_allocError();
      v13 = v31;
      *(v31 + 24) = &type metadata for ShellToHostMessage.Key;
      *v31 = 1;
      *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAA8, &unk_25F561A60);
      *(v13 + 32) = MEMORY[0x277D83B88];
    }

    else
    {
LABEL_26:

      sub_25F558D9C();
      swift_allocError();
      v13 = v12;
      *(v12 + 24) = &type metadata for ShellToHostMessage.Key;
      *v12 = 0;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB0, &unk_25F561AF0);
      *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB8, &qword_25F561A70);
      *(v13 + 32) = v14;
    }

    *(v13 + 96) = 0;
    goto LABEL_22;
  }

  if (a1 != 1)
  {

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
      sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
      swift_allocError();
      v9 = 258;
      goto LABEL_21;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 4;
    goto LABEL_38;
  }

  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
    sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
    swift_allocError();
    v9 = 257;
    goto LABEL_21;
  }

  v15 = sub_25F558214(0, a3);
  if (v4)
  {
    goto LABEL_40;
  }

  v16._rawValue = v15;

  if (!v16._rawValue)
  {
LABEL_49:
    sub_25F558D9C();
    swift_allocError();
    v26 = v32;
    *(v32 + 24) = &type metadata for ShellToHostMessage.Key;
    *v32 = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB0, &unk_25F561AF0);
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB8, &qword_25F561A70);
    *(v26 + 32) = v33;
    goto LABEL_50;
  }

  PreviewPreferences.init(dictionaryValue:)(v16);
  if (!v17)
  {
    if (HIBYTE(v36) << 8 != 1024)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AB18, &unk_25F561AE0);
      sub_25F55CCE4(&qword_27FD9AB20, &qword_27FD9AB18, &unk_25F561AE0);
      swift_allocError();
      *v34 = 1;
      goto LABEL_51;
    }

    goto LABEL_49;
  }
}

uint64_t ShellToHostMessage.payloadDescription.getter()
{
  v1 = *(v0 + 40);
  if (v1 <= 1)
  {
    if (*(v0 + 40))
    {
      v6 = *v0;
      v7 = v0[1];
      v4 = PreviewPreferences.description.getter();
    }

    else
    {
      sub_25F55F528();

      v3 = PreviewPreferences.description.getter();
      MEMORY[0x25F8E1080](v3);

      MEMORY[0x25F8E1080](0x203A64656573202CLL, 0xE800000000000000);
      v4 = sub_25F55F5A8();
    }

    MEMORY[0x25F8E1080](v4);

    return 0x203A7366657270;
  }

  else
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        sub_25F55F528();
        MEMORY[0x25F8E1080](0x61746E6573657270, 0xEE00203A6E6F6974);
        sub_25F55F548();
        return 0;
      }

      v5 = v0[2] | v0[1] | *v0 | v0[3] | v0[4];
    }

    return 0;
  }
}

uint64_t sub_25F55B66C()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_25F559ED0();
}

uint64_t HostToShellMessage.MessageType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000026;
  }

  return 0x6572617764726168;
}

uint64_t sub_25F55B71C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000746E657645;
  v3 = 0x6572617764726168;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000026;
  }

  else
  {
    v5 = 0x6572617764726168;
  }

  if (v4 == 1)
  {
    v6 = 0x800000025F5629C0;
  }

  else
  {
    v6 = 0xED0000746E657645;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000025F5629A0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000026;
    v2 = 0x800000025F5629C0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000025F5629A0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F55F5D8();
  }

  return v11 & 1;
}

uint64_t sub_25F55B804()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55B8B8()
{
  *v0;
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F55B958()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55BA08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PreviewsServicesUI18HostToShellMessageO0G4TypeO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_25F55BA38(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000746E657645;
  v4 = 0x6572617764726168;
  if (v2 == 1)
  {
    v4 = 0xD000000000000026;
    v3 = 0x800000025F5629C0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x800000025F5629A0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_25F55BAA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746144746E657665;
  }

  else
  {
    v4 = 1684366707;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000061;
  }

  if (*a2)
  {
    v6 = 0x746144746E657665;
  }

  else
  {
    v6 = 1684366707;
  }

  if (*a2)
  {
    v7 = 0xE900000000000061;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F55F5D8();
  }

  return v9 & 1;
}

uint64_t sub_25F55BB4C()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55BBCC()
{
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F55BC38()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55BCB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F55F598();

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

void sub_25F55BD14(uint64_t *a1@<X8>)
{
  v2 = 1684366707;
  if (*v1)
  {
    v2 = 0x746144746E657665;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000061;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t ShellToHostMessage.MessageType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v1 = 0x5A74736575716572;
    if (a1 != 5)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F55BE70()
{
  *v0;
  *v0;
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F55BFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PreviewsServicesUI18ShellToHostMessageO0G4TypeO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_25F55BFD0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006D6F6FLL;
  v4 = 0x5A74736575716572;
  if (v2 != 5)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000025F5628C0;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000025F562880;
  if (v2 != 3)
  {
    v5 = 0xD000000000000010;
    v6 = 0x800000025F5628A0;
  }

  if (*v1 <= 4u)
  {
    v3 = v6;
  }

  else
  {
    v5 = v4;
  }

  v7 = 0x800000025F562820;
  v8 = 0xD000000000000017;
  v9 = 0x800000025F562840;
  if (v2 != 1)
  {
    v9 = 0x800000025F562860;
  }

  if (*v1)
  {
    v8 = 0xD000000000000010;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_25F55C0D4()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55C198()
{
  *v0;
  *v0;
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F55C248()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55C308@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F55CBD8();
  *a2 = result;
  return result;
}

void sub_25F55C338(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736563;
  v3 = 0x6E65726566657270;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x61746E6573657270;
  if (*v1 != 2)
  {
    v5 = 6580592;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1684366707;
    v2 = 0xE400000000000000;
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

uint64_t sub_25F55C3B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_25F55C40C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25F558628(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F55C7F8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25F54C9D0((*(v12 + 56) + 32 * v9), a3);
    sub_25F55C4B0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25F55C4B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F55F508() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25F55F668();

      sub_25F55F428();
      v14 = sub_25F55F698();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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

LABEL_4:
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

uint64_t sub_25F55C664(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F55F508() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_25F55F668();
      MEMORY[0x25F8E12D0](v10);
      result = sub_25F55F698();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25F55C7F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A778, &unk_25F561AA0);
  v2 = *v0;
  v3 = sub_25F55F568();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25F54CA78(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F54C9D0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25F55C9EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25F55F568();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s18PreviewsServicesUI18ShellToHostMessageO0G4TypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_25F55F598();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t _s18PreviewsServicesUI18HostToShellMessageO0G4TypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_25F55F598();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F55CBD8()
{
  v0 = sub_25F55F598();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_25F55CC24()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25F55F2D8();
  v7[0] = 0;
  v2 = [v0 initWithData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25F55F2C8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_25F55CCE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F55CD3C()
{
  result = qword_27FD9AB28;
  if (!qword_27FD9AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB28);
  }

  return result;
}

unint64_t sub_25F55CD90(uint64_t a1)
{
  result = sub_25F55CDB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F55CDB8()
{
  result = qword_27FD9AB30;
  if (!qword_27FD9AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB30);
  }

  return result;
}

unint64_t sub_25F55CE10()
{
  result = qword_27FD9AB38;
  if (!qword_27FD9AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB38);
  }

  return result;
}

unint64_t sub_25F55CE64(uint64_t a1)
{
  result = sub_25F55CE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F55CE8C()
{
  result = qword_27FD9AB40;
  if (!qword_27FD9AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB40);
  }

  return result;
}

unint64_t sub_25F55CEE4()
{
  result = qword_27FD9AB48;
  if (!qword_27FD9AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB48);
  }

  return result;
}

unint64_t sub_25F55CF3C()
{
  result = qword_27FD9AB50;
  if (!qword_27FD9AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PreviewsServicesUI18HostToShellMessageO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25F55CFAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F55CFE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F55D030(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18PreviewsServicesUI18ShellToHostMessageO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F55D090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F55D0CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F55D118(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ShellToHostMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShellToHostMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F55D2D4()
{
  result = qword_27FD9AB58;
  if (!qword_27FD9AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB58);
  }

  return result;
}

unint64_t sub_25F55D32C()
{
  result = qword_27FD9AB60;
  if (!qword_27FD9AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AB60);
  }

  return result;
}

uint64_t sub_25F55D3B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F55D41C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CCA450];
  v5 = sub_25F55F3F8();
  v7 = v6;
  v8 = *(a2 + 16);
  v9 = sub_25F55F5A8();
  v25 = MEMORY[0x277D837D0];
  *&v24 = v9;
  *(&v24 + 1) = v10;
  sub_25F54C9D0(&v24, v23);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v23, v5, v7, isUniquelyReferenced_nonNull_native);

  v13 = (*(a2 + 24))(a1, a2);
  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x277CCA7E8];
    v16 = sub_25F55F3F8();
    v18 = v17;
    swift_getErrorValue();
    v25 = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0);
    sub_25F54C9D0(&v24, v23);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_25F558C4C(v23, v16, v18, v20);
  }

  return v11;
}

uint64_t sub_25F55D5AC()
{
  v0 = arc4random_uniform(0x3E8u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9ABF8, &qword_25F562108);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_27FD9AB68 = result;
  return result;
}

uint64_t sub_25F55D604()
{
  v1 = *v0;
  sub_25F55F668();
  MEMORY[0x25F8E12D0](v1);
  return sub_25F55F698();
}

uint64_t sub_25F55D678()
{
  v1 = *v0;
  sub_25F55F668();
  MEMORY[0x25F8E12D0](v1);
  return sub_25F55F698();
}

unint64_t sub_25F55D704()
{
  result = qword_27FD9ABF0;
  if (!qword_27FD9ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9ABF0);
  }

  return result;
}

uint64_t sub_25F55D758@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = sub_25F55F328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v10 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v10;
    *a2 = sub_25F54AC48;
    a2[1] = result;
  }

  else
  {
    sub_25F55F308();
    v12 = sub_25F55F318();
    v13 = sub_25F55F498();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25F542000, v12, v13, "ObservationStream.Token canceled twice", v14, 2u);
      MEMORY[0x25F8E1A30](v14, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25F55D94C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_18PreviewsServicesUI16CancelationTokenV5State33_CE4F467BE2BA693957FB72D51E080D6BLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F55D99C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F55D9EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_25F55DA40(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_25F55DA70()
{
  sub_25F55F428();
}

PreviewsServicesUI::SuppressedPresentation_optional __swiftcall SuppressedPresentation.init(catalystErrorCode:)(Swift::Int catalystErrorCode)
{
  v2 = v1;
  v3 = UVSuppressedPresentationFromCatalystErrorCode();
  if ((v3 + 1) >= 8)
  {
    v4 = 10;
  }

  else
  {
    v4 = 0x60504030201000AuLL >> (8 * (v3 + 1));
  }

  *v2 = v4;
  return v3;
}

PreviewsServicesUI::SuppressedPresentation_optional __swiftcall SuppressedPresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F55F598();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SuppressedPresentation.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x636950726F6C6F63;
    v8 = 0x746E656D75636F64;
    v9 = 0x746E656D75636F64;
    if (v1 != 3)
    {
      v9 = 0x6568536572616873;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6B636950746E6F66;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x646C696863;
    v3 = 0x6C61646F4D707061;
    if (v1 != 9)
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x6E6150746E697270;
    v5 = 0x746341656E656373;
    if (v1 != 6)
    {
      v5 = 0x7465656873;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_25F55DE78()
{
  result = qword_27FD9AC00;
  if (!qword_27FD9AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AC00);
  }

  return result;
}

uint64_t sub_25F55DECC()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55DA70();
  return sub_25F55F698();
}

uint64_t sub_25F55DF1C()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55DA70();
  return sub_25F55F698();
}

uint64_t sub_25F55DF6C@<X0>(uint64_t *a1@<X8>)
{
  result = SuppressedPresentation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuppressedPresentation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuppressedPresentation(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25F55E158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 96);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F55E194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F55E1E8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t sub_25F55E228(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CCA450];
  v5 = sub_25F55F3F8();
  v7 = v6;
  sub_25F55F528();

  *&v12 = 0xD000000000000026;
  *(&v12 + 1) = 0x800000025F562B80;
  MEMORY[0x25F8E1080](a1, a2);
  MEMORY[0x25F8E1080](39, 0xE100000000000000);
  v13 = MEMORY[0x277D837D0];
  sub_25F54C9D0(&v12, v11);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v11, v5, v7, isUniquelyReferenced_nonNull_native);

  return v8;
}

uint64_t sub_25F55E32C(char a1)
{
  v2 = *MEMORY[0x277CCA450];
  v3 = sub_25F55F3F8();
  v5 = v4;
  v6 = 0xD000000000000037;
  if (a1)
  {
    v6 = 0xD00000000000003FLL;
    v7 = "@40@0:8q16@24q32";
  }

  else
  {
    v7 = "eType was nil (expected String)";
  }

  v13 = MEMORY[0x277D837D0];
  *&v12 = v6;
  *(&v12 + 1) = v7 | 0x8000000000000000;
  sub_25F54C9D0(&v12, v11);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v11, v3, v5, isUniquelyReferenced_nonNull_native);

  return v8;
}

uint64_t sub_25F55E3FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *MEMORY[0x277CCA450];
  v5 = sub_25F55F3F8();
  v7 = v6;
  sub_25F55F528();
  *&v12[0] = 0;
  *(&v12[0] + 1) = 0xE000000000000000;
  MEMORY[0x25F8E1080](0xD000000000000025, 0x800000025F562EB0);
  v14 = a3 & 1;
  sub_25F551320();
  v8 = sub_25F55F5A8();
  MEMORY[0x25F8E1080](v8);

  MEMORY[0x25F8E1080](0xD000000000000029, 0x800000025F562EE0);
  v15 = MEMORY[0x277D837D0];
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_25F54C9D0(&v13, v12);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v12, v5, v7, isUniquelyReferenced_nonNull_native);

  return v9;
}

uint64_t sub_25F55E54C(char a1)
{
  v2 = *MEMORY[0x277CCA450];
  v3 = sub_25F55F3F8();
  v5 = v4;
  sub_25F55F528();

  *&v12 = 0xD00000000000001ELL;
  *(&v12 + 1) = 0x800000025F562FA0;
  if (a1)
  {
    v6 = 0x636E797361;
  }

  else
  {
    v6 = 0x6465636E6566;
  }

  if (a1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  MEMORY[0x25F8E1080](v6, v7);

  MEMORY[0x25F8E1080](39, 0xE100000000000000);
  v13 = MEMORY[0x277D837D0];
  sub_25F54C9D0(&v12, v11);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v11, v3, v5, isUniquelyReferenced_nonNull_native);

  return v8;
}

uint64_t sub_25F55E674()
{
  v0 = *MEMORY[0x277CCA450];
  v1 = sub_25F55F3F8();
  v3 = v2;
  v4 = sub_25F55E710();
  v11 = MEMORY[0x277D837D0];
  *&v10 = v4;
  *(&v10 + 1) = v5;
  sub_25F54C9D0(&v10, v9);
  v6 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v9, v1, v3, isUniquelyReferenced_nonNull_native);

  return v6;
}

uint64_t sub_25F55E710()
{
  sub_25F55EBB4(v0, v5);
  if (v8)
  {
    if (v8 == 1)
    {
      sub_25F54C9D0(v5, v4);
      sub_25F54C9D0(v6, v3);
      sub_25F54C9D0(v7, v2);
      sub_25F55F528();
      MEMORY[0x25F8E1080](0xD000000000000017, 0x800000025F563020);
      sub_25F55F548();
      MEMORY[0x25F8E1080](0x6365707865282027, 0xEC00000020646574);
      sub_25F55F548();
      MEMORY[0x25F8E1080](0x20746F67202CLL, 0xE600000000000000);
    }

    else
    {
      sub_25F54C9D0(v5, v4);
      sub_25F54C9D0(v6, v3);
      sub_25F54C9D0(v7, v2);
      sub_25F55F528();
      MEMORY[0x25F8E1080](0xD000000000000017, 0x800000025F563020);
      sub_25F55F548();
      MEMORY[0x25F8E1080](656941095, 0xE400000000000000);
      sub_25F55F548();
      MEMORY[0x25F8E1080](0xD00000000000001BLL, 0x800000025F563040);
    }

    sub_25F55F548();
    MEMORY[0x25F8E1080](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_25F54C9D0(v5, v4);
    sub_25F54C9D0(v6, v3);
    *&v2[0] = 0;
    *(&v2[0] + 1) = 0xE000000000000000;
    sub_25F55F528();
    MEMORY[0x25F8E1080](0xD000000000000020, 0x800000025F563060);
    sub_25F55F548();
    MEMORY[0x25F8E1080](0x6365707865282027, 0xEC00000020646574);
    sub_25F55F548();
    MEMORY[0x25F8E1080](41, 0xE100000000000000);
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return 0;
}

unint64_t sub_25F55EA64(uint64_t a1)
{
  *(a1 + 8) = sub_25F55EA94();
  result = sub_25F55EAE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F55EA94()
{
  result = qword_27FD9AC08;
  if (!qword_27FD9AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AC08);
  }

  return result;
}

unint64_t sub_25F55EAE8()
{
  result = qword_27FD9AC10;
  if (!qword_27FD9AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AC10);
  }

  return result;
}

uint64_t sub_25F55EB3C(uint64_t a1)
{
  v2 = sub_25F55EA94();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25F55EB78(uint64_t a1)
{
  v2 = sub_25F55EA94();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_25F55EBEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746867696568;
  }

  else
  {
    v4 = 0x6874646977;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746867696568;
  }

  else
  {
    v6 = 0x6874646977;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F55F5D8();
  }

  return v9 & 1;
}

uint64_t sub_25F55EC8C()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55ED08()
{
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F55ED70()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F55EDE8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F55F598();

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

void sub_25F55EE48(uint64_t *a1@<X8>)
{
  v2 = 0x6874646977;
  if (*v1)
  {
    v2 = 0x746867696568;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F55EE80(uint64_t a1)
{
  sub_25F55780C(0, a1);
  if (v1)
  {
  }

  if (v3)
  {

    sub_25F558D9C();
    swift_allocError();
    v6 = v5;
    *(v5 + 24) = &_s3KeyON;
    *v5 = 0;
LABEL_5:
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAD8, &qword_25F561A90);
    *(v6 + 32) = MEMORY[0x277D85048];
    *(v6 + 96) = 0;
    return swift_willThrow();
  }

  sub_25F55780C(1, a1);
  v8 = v7;

  if (v8)
  {
    sub_25F558D9C();
    swift_allocError();
    v6 = v9;
    *(v9 + 24) = &_s3KeyON;
    *v9 = 1;
    goto LABEL_5;
  }

  return result;
}

unint64_t sub_25F55EFD4()
{
  result = qword_27FD9AC18;
  if (!qword_27FD9AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AC18);
  }

  return result;
}