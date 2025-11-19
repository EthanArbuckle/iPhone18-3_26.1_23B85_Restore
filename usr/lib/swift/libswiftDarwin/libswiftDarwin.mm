uint64_t sub_299A68C8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_299A68CA0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_299A68CC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299A68CE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for audit_token_t()
{
  if (!qword_2A14C8EE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2A14C8EE0);
    }
  }
}

char ***environ.getter()
{
  result = _NSGetEnviron();
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = *result;
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_299A68E08()
{
  v1 = *v0;
  sub_299A6A2C4();
  sub_299A6A2D4();
  return sub_299A6A2E4();
}

uint64_t sub_299A68E7C()
{
  v1 = *v0;
  sub_299A6A2C4();
  sub_299A6A2D4();
  return sub_299A6A2E4();
}

unint64_t sub_299A68EC0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_299A68F00(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_299A68F00(unsigned int a1)
{
  v1 = 0;
  v2 = a1;
  switch(a1)
  {
    case 0u:
      v2 = 0;
      v1 = 0;
      break;
    case 1u:
      return v2 | (v1 << 32);
    case 2u:
      v1 = 0;
      v2 = 2;
      break;
    case 3u:
      v1 = 0;
      v2 = 3;
      break;
    case 4u:
      v1 = 0;
      v2 = 4;
      break;
    case 5u:
      v1 = 0;
      v2 = 5;
      break;
    case 6u:
      v1 = 0;
      v2 = 6;
      break;
    case 7u:
      v1 = 0;
      v2 = 7;
      break;
    case 8u:
      v1 = 0;
      v2 = 8;
      break;
    case 9u:
      v1 = 0;
      v2 = 9;
      break;
    case 0xAu:
      v1 = 0;
      v2 = 10;
      break;
    case 0xBu:
      v1 = 0;
      v2 = 11;
      break;
    case 0xCu:
      v1 = 0;
      v2 = 12;
      break;
    case 0xDu:
      v1 = 0;
      v2 = 13;
      break;
    case 0xEu:
      v1 = 0;
      v2 = 14;
      break;
    case 0xFu:
      v1 = 0;
      v2 = 15;
      break;
    case 0x10u:
      v1 = 0;
      v2 = 16;
      break;
    case 0x11u:
      v1 = 0;
      v2 = 17;
      break;
    case 0x12u:
      v1 = 0;
      v2 = 18;
      break;
    case 0x13u:
      v1 = 0;
      v2 = 19;
      break;
    case 0x14u:
      v1 = 0;
      v2 = 20;
      break;
    case 0x15u:
      v1 = 0;
      v2 = 21;
      break;
    case 0x16u:
      v1 = 0;
      v2 = 22;
      break;
    case 0x17u:
      v1 = 0;
      v2 = 23;
      break;
    case 0x18u:
      v1 = 0;
      v2 = 24;
      break;
    case 0x19u:
      v1 = 0;
      v2 = 25;
      break;
    case 0x1Au:
      v1 = 0;
      v2 = 26;
      break;
    case 0x1Bu:
      v1 = 0;
      v2 = 27;
      break;
    case 0x1Cu:
      v1 = 0;
      v2 = 28;
      break;
    case 0x1Du:
      v1 = 0;
      v2 = 29;
      break;
    case 0x1Eu:
      v1 = 0;
      v2 = 30;
      break;
    case 0x1Fu:
      v1 = 0;
      v2 = 31;
      break;
    case 0x20u:
      v1 = 0;
      v2 = 32;
      break;
    case 0x21u:
      v1 = 0;
      v2 = 33;
      break;
    case 0x22u:
      v1 = 0;
      v2 = 34;
      break;
    case 0x23u:
      v1 = 0;
      v2 = 35;
      break;
    case 0x24u:
      v1 = 0;
      v2 = 36;
      break;
    case 0x25u:
      v1 = 0;
      v2 = 37;
      break;
    case 0x26u:
      v1 = 0;
      v2 = 38;
      break;
    case 0x27u:
      v1 = 0;
      v2 = 39;
      break;
    case 0x28u:
      v1 = 0;
      v2 = 40;
      break;
    case 0x29u:
      v1 = 0;
      v2 = 41;
      break;
    case 0x2Au:
      v1 = 0;
      v2 = 42;
      break;
    case 0x2Bu:
      v1 = 0;
      v2 = 43;
      break;
    case 0x2Cu:
      v1 = 0;
      v2 = 44;
      break;
    case 0x2Du:
      v1 = 0;
      v2 = 45;
      break;
    case 0x2Eu:
      v1 = 0;
      v2 = 46;
      break;
    case 0x2Fu:
      v1 = 0;
      v2 = 47;
      break;
    case 0x30u:
      v1 = 0;
      v2 = 48;
      break;
    case 0x31u:
      v1 = 0;
      v2 = 49;
      break;
    case 0x32u:
      v1 = 0;
      v2 = 50;
      break;
    case 0x33u:
      v1 = 0;
      v2 = 51;
      break;
    default:
      v2 = 0;
      v1 = 1;
      break;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_299A691BC()
{
  result = qword_2A14C8EE8;
  if (!qword_2A14C8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14C8EE8);
  }

  return result;
}

uint64_t audit_token_t.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_299A6A314();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_299A6A2B4();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_299A6A2B4();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2A1C735A8](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t audit_token_t.init(from:)(void *a1)
{
  result = sub_299A699F8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

BOOL static audit_token_t.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a8 ^ a4) >> 32 == 0;
  if (a4 != a8)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  if (a2 != a6)
  {
    v8 = 0;
  }

  return a1 == a5 && v8;
}

uint64_t audit_token_t.hash(into:)()
{
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  return sub_299A6A2D4();
}

uint64_t audit_token_t.hashValue.getter()
{
  sub_299A6A2C4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  return sub_299A6A2E4();
}

uint64_t sub_299A696E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_299A699F8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_299A6972C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return audit_token_t.encode(to:)(a1);
}

BOOL sub_299A6974C(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1] && a1[1].i32[2] == a2[1].i32[2])
  {
    return a1[1].i32[3] == a2[1].i32[3];
  }

  return result;
}

uint64_t sub_299A697B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_299A6A2C4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  return sub_299A6A2E4();
}

uint64_t sub_299A6987C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  return sub_299A6A2D4();
}

uint64_t sub_299A6990C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_299A6A2C4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  sub_299A6A2D4();
  return sub_299A6A2E4();
}

uint64_t sub_299A699F8(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_299A6A304();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v4 = sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v5 = sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v10 = sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v9 = sub_299A6A2A4();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_299A6A2A4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4 | (v5 << 32);
}

unint64_t sub_299A69C48()
{
  result = qword_2A14C8EF0;
  if (!qword_2A14C8EF0)
  {
    type metadata accessor for audit_token_t();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14C8EF0);
  }

  return result;
}

uint64_t DarwinBoolean.description.getter(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_299A69D8C()
{
  if (*v0)
  {
    result = 1702195828;
  }

  else
  {
    result = 0x65736C6166;
  }

  *v0;
  return result;
}

uint64_t extern_proc.p_starttime.getter()
{
  result = *v0;
  v2 = *(v0 + 2);
  return result;
}

uint64_t extern_proc.p_starttime.setter(uint64_t result, int a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t (*extern_proc.p_starttime.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  return sub_299A69F5C;
}

uint64_t sub_299A69F5C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}