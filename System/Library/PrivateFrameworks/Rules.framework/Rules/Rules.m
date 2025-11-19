uint64_t sub_2623EB46C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EB4B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2623EB518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EB5C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EB668(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2623EB688@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2623EB758()
{
  if (*v0)
  {
    result = 0x7475706E69;
  }

  else
  {
    result = 0x736C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623EB794()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2623EB7DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2623EB814()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EB85C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2623EB8A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2623EB8D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2623EB910()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2623EB950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EB9FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EBC1C()
{
  if (*v0)
  {
    result = 0x737475706E69;
  }

  else
  {
    result = 0x6E6F697369636564;
  }

  *v0;
  return result;
}

uint64_t sub_2623EBC58()
{
  if (*v0)
  {
    result = 0x737475706E69;
  }

  else
  {
    result = 0x6E6F697369636564;
  }

  *v0;
  return result;
}

uint64_t sub_2623EBCA0()
{
  v1 = *(v0 + 24);

  sub_2623F98B8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2623EBCEC()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2623EBD3C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 88);
  if (v2 != 255)
  {
    sub_2623F98B8(*(v0 + 72), *(v0 + 80), v2);
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2623EBD90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);
  if (v3 != 255)
  {
    sub_2623F98B8(*(v0 + 48), *(v0 + 56), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2623EBDE4()
{
  v1 = *(v0 + 24);

  sub_2623F98B8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2623EBE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EBEF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EBFBC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EC004()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2623EC044()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2623EC084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EC130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EC2B8()
{
  sub_262426F78(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2623EC3CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2623EC404()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EC44C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2623EC484()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2623EC4C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2623EC4F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2623EC530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EC5DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EC69C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EC6FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2623EC754()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v6 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2623EC95C()
{
  if (*v0)
  {
    return 0x427475706E69;
  }

  else
  {
    return 0x417475706E69;
  }
}

uint64_t sub_2623EC990(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262445A88(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623EC9C8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262447FC0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECA00()
{
  if (*v0)
  {
    result = 0x6E497265626D756ELL;
  }

  else
  {
    result = 0x75706E497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623ECA4C()
{
  if (*v0)
  {
    result = 0x49737265626D756ELL;
  }

  else
  {
    result = 0x75706E497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623ECA98(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244A17C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECAD0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244C9A0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECB08()
{
  if (*v0)
  {
    result = 0x6E49676E69727473;
  }

  else
  {
    result = 0x75706E497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623ECB54()
{
  if (*v0)
  {
    result = 0x4973676E69727473;
  }

  else
  {
    result = 0x75706E497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623ECBA0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244ECD0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECBD8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244FB08(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECC10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2623ECC48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623ECC94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2623ECCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623ECD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623ECEF4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_2623ECF24(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65756C6176;
    v6 = 0x746C7561666564;
    if (a1 != 2)
    {
      v6 = 1701667182;
    }

    if (a1)
    {
      v5 = 0x6D614E646C656966;
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
    v1 = 0x6369676F6CLL;
    v2 = 0xD000000000000013;
    if (a1 == 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6C615673656C7572;
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

uint64_t sub_2623ED050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2623F18CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2623ED090(uint64_t a1)
{
  v2 = sub_2623EDB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623ED0CC(uint64_t a1)
{
  v2 = sub_2623EDB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623ED108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C450, &qword_262463320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623EDB6C();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1 || (sub_262409DB8() & 1) != 0)
      {
        if (v13 <= 2)
        {
          sub_2623F3CA4(a1, v29);
          if ((v13 - 1) >= 2)
          {
            v27 = sub_2623F1EAC(v29);
            a2[3] = &type metadata for NumberListValue;
            a2[4] = sub_2623F2300();
            *a2 = v27;
          }

          else
          {
            v22 = sub_2623F20E0(v29);
            v24 = v23;
            v26 = v25;
            a2[3] = &type metadata for NumberListField;
            a2[4] = sub_2623F22AC();
            *a2 = v22;
            a2[1] = v24;
            a2[2] = v26;
          }

          return (*(v6 + 8))(v9, v5);
        }

        if ((v13 - 3) < 4)
        {
          sub_2623F3CA4(a1, v29);
          a2[3] = type metadata accessor for NumberListRule();
          a2[4] = sub_2623F3444(&qword_27FF0C488, type metadata accessor for NumberListRule);
          __swift_allocate_boxed_opaque_existential_1(a2);
          sub_2623ED588(v29);
          return (*(v6 + 8))(v9, v5);
        }

        if (v13 == 7)
        {
          LOBYTE(v29[0]) = 7;
          a2[3] = &type metadata for NumberListReplaceFailure;
          a2[4] = sub_2623F1D54();
          *a2 = swift_allocObject();
          sub_2623F1DA8();
          sub_262462BB8();
          return (*(v6 + 8))(v9, v5);
        }

        LOBYTE(v29[0]) = 8;
        a2[3] = &type metadata for NumberListMatchCase;
        a2[4] = sub_2623F1C10();
        *a2 = swift_allocObject();
        sub_2623F1CB0();
        sub_262462BB8();
        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_262462D78();
    v17 = sub_262427A60(v16);
    v19 = v18;

    sub_2623F1BBC();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0xD000000000000014;
    *(v20 + 24) = 0x80000002624632C0;
    v21 = v29[1];
    *(v20 + 32) = v29[0];
    *(v20 + 48) = v21;
    *(v20 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_2623ED588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v35 - v5;
  v6 = type metadata accessor for RulesValidity();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4F0, &qword_262463358);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for NumberListRule();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F24DC();
  v19 = v44;
  sub_262462D88();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v9;
  v20 = v41;
  v21 = v42;
  LOBYTE(v46[0]) = 0;
  v22 = v13;
  v24 = v17;
  *v17 = sub_262462B88();
  v17[1] = v25;
  v38 = v25;
  v17[2] = sub_2623EE61C(v22, 1u);
  LOBYTE(v46[0]) = 2;
  sub_2623F3444(&qword_2813BDBE8, type metadata accessor for RulesValidity);
  v26 = v21;
  v27 = v20;
  v37 = 0;
  sub_262462B78();
  v36 = v22;
  v28 = v40 + 48;
  v29 = *(v40 + 48);
  if (v29(v26, 1, v27) == 1)
  {
    v40 = v28;
    v30 = v44;
    *v44 = 0;
    swift_storeEnumTagMultiPayload();
    v31 = v29(v26, 1, v27) == 1;
    v32 = v26;
    v33 = v39;
    if (!v31)
    {
      sub_2623F39E0(v32, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v30 = v44;
    sub_2623F2530(v26, v44);
    v33 = v39;
  }

  sub_2623F2530(v30, v24 + *(v14 + 24));
  v47 = 3;
  sub_262462B58();
  v34 = v43;
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v45, v46);
  __swift_destroy_boxed_opaque_existential_1(v45);
  (*(v34 + 8))(v36, v10);
  sub_2623EB668(v46, v24 + *(v14 + 28));
  sub_2623F2594(v24, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2623F25F8(v24, type metadata accessor for NumberListRule);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2623EDB6C()
{
  result = qword_27FF0C458;
  if (!qword_27FF0C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C458);
  }

  return result;
}

uint64_t sub_2623EDBC8()
{
  sub_262462CF8();
  MEMORY[0x2667289D0](0);
  return sub_262462D38();
}

uint64_t sub_2623EDC0C()
{
  sub_262462CF8();
  MEMORY[0x2667289D0](0);
  return sub_262462D38();
}

uint64_t sub_2623EDC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2623EDCE4(uint64_t a1)
{
  v2 = sub_2623F2354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623EDD20(uint64_t a1)
{
  v2 = sub_2623F2354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623EDD5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4A0, &qword_262463328);
  sub_2623F3B90(&qword_27FF0C4C0);
  sub_262462BB8();
  if (v0)
  {
    MEMORY[0x266728D50](v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v24 = v1;
    v4 = *(v26 + 16);
    if (!v4)
    {
      v3 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v5 = 0;
    v6 = v26 + 40;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = (v6 + 16 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v26 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        MEMORY[0x28223BE20](result);
        if ((v10 & 0x1000000000000000) == 0)
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            *(&v26 + 1) = v10 & 0xFFFFFFFFFFFFFFLL;

            if (v9 >= 0x21u || ((0x100003E01uLL >> v9) & 1) == 0)
            {
              v12 = _swift_stdlib_strtod_clocale();
              if (v12)
              {
LABEL_18:
                v25 = *v12 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v9 & 0x1000000000000000) != 0)
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v11 >= 0x21 || ((0x100003E01uLL >> v11) & 1) == 0)
            {
              v12 = _swift_stdlib_strtod_clocale();
              if (v12)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v25 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v25)
        {
          break;
        }

        ++v8;
        v7 += 2;
        if (v4 == v8)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v3 + 16) + 1, 1, v3);
        v3 = result;
      }

      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_26243C488((v13 > 1), v14 + 1, 1, v3);
        v3 = result;
      }

      v5 = v8 + 1;
      *(v3 + 16) = v14 + 1;
      *(v3 + 8 * v14 + 32) = 0;
      v6 = v26 + 40;
      if (v4 - 1 == v8)
      {
LABEL_31:
        v15 = *(v3 + 16);
        v16 = *(v26 + 16);

        if (v15 != v16)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v17 = sub_262462B48();
            v18 = sub_262427A60(v17);
            v3 = v19;

            *&v26 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v20 = sub_262462728();
            v22 = v21;
            sub_2623F1BBC();
            swift_allocError();
            *v23 = v18;
            *(v23 + 8) = v3;
            *(v23 + 16) = 0x65756C6176;
            *(v23 + 24) = 0xE500000000000000;
            *(v23 + 32) = v20;
            *(v23 + 40) = v22;
            *(v23 + 48) = v26;
            *(v23 + 64) = 4;
            swift_willThrow();
          }
        }

        return v3;
      }
    }
  }

  return v26;
}

uint64_t sub_2623EE194(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4D8, &qword_262463348);
  sub_2623F3B90(&qword_27FF0C4C0);
  sub_262462BB8();
  if (v2)
  {
    MEMORY[0x266728D50](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v29 = v4;
    v30 = a2;
    v7 = *(v32 + 16);
    if (!v7)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v8 = 0;
    v9 = v32 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        MEMORY[0x28223BE20](result);
        if ((v13 & 0x1000000000000000) == 0)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            *(&v32 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;

            if (v12 >= 0x21u || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
LABEL_18:
                v31 = *v15 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v12 & 0x1000000000000000) != 0)
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v14 >= 0x21 || ((0x100003E01uLL >> v14) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v31 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v31)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v7 == v11)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v9 = v32 + 40;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26243C488((v16 > 1), v17 + 1, 1, v6);
        v6 = result;
      }

      v8 = v11 + 1;
      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = 0;
      if (v7 - 1 == v11)
      {
LABEL_31:
        v18 = *(v6 + 16);
        v19 = *(v32 + 16);

        if (v18 != v19)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v20 = sub_262462B48();
            v21 = sub_262427A60(v20);
            v6 = v22;

            if (v30)
            {
              v23 = 0x746C7561666564;
            }

            else
            {
              v23 = 0x6D614E646C656966;
            }

            if (v30)
            {
              v24 = 0xE700000000000000;
            }

            else
            {
              v24 = 0xE900000000000065;
            }

            *&v32 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v25 = sub_262462728();
            v27 = v26;
            sub_2623F1BBC();
            swift_allocError();
            *v28 = v21;
            *(v28 + 8) = v6;
            *(v28 + 16) = v23;
            *(v28 + 24) = v24;
            *(v28 + 32) = v25;
            *(v28 + 40) = v27;
            *(v28 + 48) = v32;
            *(v28 + 64) = 4;
            swift_willThrow();
          }
        }

        return v6;
      }
    }
  }

  return v32;
}

uint64_t sub_2623EE61C(uint64_t a1, unsigned __int8 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4F0, &qword_262463358);
  sub_2623F3B90(&qword_27FF0C4C0);
  sub_262462BB8();
  if (v2)
  {
    MEMORY[0x266728D50](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v29 = a2;
    v30 = v4;
    v7 = *(v32 + 16);
    if (!v7)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v8 = 0;
    v9 = v32 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        MEMORY[0x28223BE20](result);
        if ((v13 & 0x1000000000000000) == 0)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            *(&v32 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;

            if (v12 >= 0x21u || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
LABEL_18:
                v31 = *v15 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v12 & 0x1000000000000000) != 0)
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v14 >= 0x21 || ((0x100003E01uLL >> v14) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v31 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v31)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v7 == v11)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26243C488((v16 > 1), v17 + 1, 1, v6);
        v6 = result;
      }

      v8 = v11 + 1;
      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = 0;
      v9 = v32 + 40;
      if (v7 - 1 == v11)
      {
LABEL_31:
        v18 = *(v6 + 16);
        v19 = *(v32 + 16);

        if (v18 != v19)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v20 = sub_262462B48();
            v21 = sub_262427A60(v20);
            v23 = v22;

            if (v29 > 1u)
            {
              if (v29 == 2)
              {
                v6 = 0xED00007974696469;
                v24 = 0x6C615673656C7572;
              }

              else
              {
                v6 = 0xE500000000000000;
                v24 = 0x6369676F6CLL;
              }
            }

            else if (v29)
            {
              v6 = 0x80000002624717E0;
              v24 = 0xD000000000000010;
            }

            else
            {
              v6 = 0xE400000000000000;
              v24 = 1701667182;
            }

            *&v32 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v25 = sub_262462728();
            v27 = v26;
            sub_2623F1BBC();
            swift_allocError();
            *v28 = v21;
            *(v28 + 8) = v23;
            *(v28 + 16) = v24;
            *(v28 + 24) = v6;
            *(v28 + 32) = v25;
            *(v28 + 40) = v27;
            *(v28 + 48) = v32;
            *(v28 + 64) = 4;
            swift_willThrow();
          }
        }

        return v6;
      }
    }
  }

  return v32;
}

uint64_t sub_2623EEAD8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5E0, &qword_262463A88);
  sub_2623F3B90(&qword_27FF0C4C0);
  sub_262462BB8();
  if (v2)
  {
    MEMORY[0x266728D50](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v29 = v4;
    v30 = a2;
    v7 = *(v32 + 16);
    if (!v7)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v8 = 0;
    v9 = v32 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        MEMORY[0x28223BE20](result);
        if ((v13 & 0x1000000000000000) == 0)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            *(&v32 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;

            if (v12 >= 0x21u || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
LABEL_18:
                v31 = *v15 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v12 & 0x1000000000000000) != 0)
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v14 >= 0x21 || ((0x100003E01uLL >> v14) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v31 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v31)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v7 == v11)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v9 = v32 + 40;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26243C488((v16 > 1), v17 + 1, 1, v6);
        v6 = result;
      }

      v8 = v11 + 1;
      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = 0;
      if (v7 - 1 == v11)
      {
LABEL_31:
        v18 = *(v6 + 16);
        v19 = *(v32 + 16);

        if (v18 != v19)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v20 = sub_262462B48();
            v21 = sub_262427A60(v20);
            v6 = v22;

            if (v30)
            {
              v23 = 0xD000000000000010;
            }

            else
            {
              v23 = 0x7475706E69;
            }

            if (v30)
            {
              v24 = 0x8000000262471840;
            }

            else
            {
              v24 = 0xE500000000000000;
            }

            *&v32 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v25 = sub_262462728();
            v27 = v26;
            sub_2623F1BBC();
            swift_allocError();
            *v28 = v21;
            *(v28 + 8) = v6;
            *(v28 + 16) = v23;
            *(v28 + 24) = v24;
            *(v28 + 32) = v25;
            *(v28 + 40) = v27;
            *(v28 + 48) = v32;
            *(v28 + 64) = 4;
            swift_willThrow();
          }
        }

        return v6;
      }
    }
  }

  return v32;
}

uint64_t sub_2623EEF5C(void *a1)
{
  *a1 = *v1;
}

uint64_t sub_2623EEF94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2623F1EAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2623EEFC0()
{
  if (*v0)
  {
    result = 0x746C7561666564;
  }

  else
  {
    result = 0x6D614E646C656966;
  }

  *v0;
  return result;
}

uint64_t sub_2623EF000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2623EF0E4(uint64_t a1)
{
  v2 = sub_2623F2488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623EF120(uint64_t a1)
{
  v2 = sub_2623F2488();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2623EF15C(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v6 = v4;
  v7 = a4;
  if (!a4)
  {
    memset(v108, 0, 40);

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_5:
    v11 = sub_2624414FC(a2, a3);
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    v13 = a1;
    sub_2623F3970(*(a1 + 56) + 40 * v11, &v102);
    v105 = v102;
    v106 = v103;
    v107 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
    v14 = sub_262462918();
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

    swift_unknownObjectRelease();
    if (v14 != v15)
    {
      sub_2623F3970(&v105, &v102);
      if (*(&v103 + 1))
      {
        sub_2623F39E0(&v105, &qword_27FF0C5F0, &qword_262463A90);
        v109 = v102;
        v110 = v103;
        v16 = v104;
        goto LABEL_15;
      }

      sub_2623F39E0(&v102, &qword_27FF0C5F0, &qword_262463A90);
    }

    sub_2623F3970(v108, &v99);
    if (!*(&v100 + 1))
    {
      sub_2623F39E0(&v99, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v52 = a2;
      *(v52 + 8) = a3;
      v53 = v104;
      v54 = v103;
      *(v52 + 16) = v102;
      *(v52 + 32) = v54;
      *(v52 + 48) = v53;
      *(v52 + 64) = 5;
      swift_willThrow();
      sub_2623F39E0(&v105, &qword_27FF0C5F0, &qword_262463A90);
      goto LABEL_63;
    }

    sub_2623F39E0(&v105, &qword_27FF0C5F0, &qword_262463A90);
    v109 = v99;
    v110 = v100;
    v16 = v101;
LABEL_15:
    v111 = v16;
    a1 = v13;
    goto LABEL_16;
  }

  *&v102 = a4;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  sub_2623F3B90(&qword_27FF0C618);
  sub_2624629E8();
  if (*(a1 + 16))
  {
    goto LABEL_5;
  }

LABEL_9:
  sub_2623F3970(v108, &v105);
  if (!*(&v106 + 1))
  {
    sub_2623F39E0(&v105, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    v18 = v104;
    v19 = v103;
    *(v17 + 16) = v102;
    *(v17 + 32) = v19;
    *(v17 + 48) = v18;
    *(v17 + 64) = 6;
    swift_willThrow();
LABEL_63:

    sub_2623F39E0(v108, &qword_27FF0C5F0, &qword_262463A90);
    return;
  }

  v109 = v105;
  v110 = v106;
  v111 = v107;
LABEL_16:
  sub_2623F39E0(v108, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v109, &v102);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  if (swift_dynamicCast())
  {
    goto LABEL_67;
  }

  sub_2623F3A40(&v109, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F8, &qword_262463A98);
  if (swift_dynamicCast())
  {
    v98 = v4;

    a3 = v108[0];
    v6 = *(v108[0] + 16);
    if (v6)
    {
      v97 = a1;
      v108[0] = MEMORY[0x277D84F90];
      sub_26243CD40(0, v6, 0);
      v21 = 0;
      v7 = v108[0];
      v22 = (a3 + 32);
      while (v21 < *(a3 + 16))
      {
        sub_2623F3CA4(v22, &v102);
        v23 = *(&v103 + 1);
        a2 = v104;
        v24 = __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
        v25 = *(*(v23 - 8) + 64);
        MEMORY[0x28223BE20](v24);
        v5 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v5);
        v28 = sub_2623F01A0(v5, v23);
        if (v29)
        {
          __break(1u);
          goto LABEL_117;
        }

        a2 = v28;
        __swift_destroy_boxed_opaque_existential_1(&v102);
        v108[0] = v7;
        v31 = v7[2];
        v30 = v7[3];
        v5 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_26243CD40((v30 > 1), v31 + 1, 1);
          v7 = v108[0];
        }

        v21 = (v21 + 1);
        v7[2] = v5;
        v7[v31 + 4] = a2;
        v22 += 5;
        if (v6 == v21)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    goto LABEL_64;
  }

  sub_2623F3A40(&v109, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C600, qword_262463AA0);
  if (swift_dynamicCast())
  {
    v98 = v4;

    v6 = v108[0];
    a3 = *(v108[0] + 16);
    if (a3)
    {
      v97 = a1;
      *&v105 = MEMORY[0x277D84F90];
      sub_26243CD40(0, a3, 0);
      v32 = 0;
      v7 = v105;
      v22 = (v6 + 4);
      while (1)
      {
        if (v32 >= v6[2])
        {
          goto LABEL_109;
        }

        sub_2623F3CA4(v22, &v102);
        v33 = *(&v103 + 1);
        v5 = v104;
        v34 = __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
        a2 = &v92;
        v35 = *(*(v33 - 8) + 64);
        MEMORY[0x28223BE20](v34);
        (*(v37 + 16))(&v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_2623F3B3C();
        v23 = MEMORY[0x277D839F8];
        sub_262462658();
        if (v108[1])
        {
          break;
        }

        v38 = v108[0];
        __swift_destroy_boxed_opaque_existential_1(&v102);
        *&v105 = v7;
        v40 = v7[2];
        v39 = v7[3];
        v5 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          sub_26243CD40((v39 > 1), v40 + 1, 1);
          v7 = v105;
        }

        ++v32;
        v7[2] = v5;
        v7[v40 + 4] = v38;
        v22 += 5;
        if (a3 == v32)
        {
LABEL_25:
          sub_2623F3A9C(&v109);

          goto LABEL_99;
        }
      }

LABEL_119:
      __break(1u);
LABEL_120:
      for (i = MEMORY[0x266728730](1, v23); ; i = *(v23 + 40))
      {
        v22 = i;

        v80 = sub_2624628D8();
        v81 = sub_2624628E8();

        if ((v81 & 1) == 0)
        {
LABEL_96:

          goto LABEL_97;
        }

        do
        {
LABEL_82:

          v69 = [v5 count];
          if ((v69 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          if (v69)
          {
            v70 = v69;
            v7 = sub_262462868();
            v7[2] = v70;
            bzero(v7 + 4, 8 * v70);
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
          }

          v87 = [v5 count];
          if ((v87 & 0x8000000000000000) != 0)
          {
            goto LABEL_114;
          }

          v88 = v87;
          v98 = v6;
          if (!v87)
          {
LABEL_107:

            sub_2623F3A9C(&v109);
            goto LABEL_99;
          }

          a3 = 0;
          v6 = &off_279B32000;
          v22 = &off_279B32000;
          while (1)
          {
            v89 = [v5 objectAtIndexedSubscript_];
            [v89 doubleValue];
            v91 = v90;

            if (a3 >= v7[2])
            {
              break;
            }

            v7[a3++ + 4] = v91;
            if (v88 == a3)
            {
              goto LABEL_107;
            }
          }

LABEL_111:
          __break(1u);
LABEL_112:
          v68 = sub_262462AD8();
LABEL_81:
        }

        while (v68 == 1);
        v71 = [v5 v22[38]];
        v72 = sub_262462848();

        if (!(v72 >> 62))
        {
          v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_87;
        }

LABEL_115:
        v73 = sub_262462AD8();
LABEL_87:

        if (v73 != 2)
        {
          goto LABEL_96;
        }

        v74 = [v5 v22[38]];
        v23 = sub_262462848();

        if ((v23 & 0xC000000000000001) == 0)
        {
          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v75 = *(v23 + 32);
            goto LABEL_91;
          }

          __break(1u);
          goto LABEL_119;
        }

LABEL_117:
        v75 = MEMORY[0x266728730](0, v23);
LABEL_91:
        v22 = v75;

        v76 = sub_2624628D8();
        v77 = sub_2624628E8();

        if (v77)
        {
          goto LABEL_82;
        }

        v78 = [v5 shape];
        v23 = sub_262462848();

        if ((v23 & 0xC000000000000001) != 0)
        {
          goto LABEL_120;
        }

        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          break;
        }
      }

      __break(1u);
      return;
    }

LABEL_64:

    sub_2623F3A9C(&v109);
    goto LABEL_99;
  }

  sub_2623F3A40(&v109, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
  isUniquelyReferenced_nonNull_native = swift_dynamicCast();
  v95 = a2;
  v94 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_69;
  }

  v97 = a1;
  v98 = v4;
  a2 = v108[0];
  v42 = *(v108[0] + 16);
  if (!v42)
  {
    v96 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  v43 = 0;
  v44 = v108[0] + 40;
  v92 = (v42 - 1);
  v96 = MEMORY[0x277D84F90];
  v93 = v108[0] + 40;
  do
  {
    v6 = (v44 + 16 * v43);
    v22 = v43;
    while (1)
    {
      if (v22 >= a2[2])
      {
        goto LABEL_110;
      }

      v45 = *(v6 - 1);
      v5 = *v6;
      v108[0] = 0;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          *&v102 = v45;
          *(&v102 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;

          if (v45 >= 0x21u || ((0x100003E01uLL >> v45) & 1) == 0)
          {
            v47 = _swift_stdlib_strtod_clocale();
            if (v47)
            {
LABEL_50:
              LOBYTE(v105) = *v47 == 0;
              goto LABEL_52;
            }
          }

          goto LABEL_51;
        }

        if ((v45 & 0x1000000000000000) != 0)
        {
          v46 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v46 >= 0x21 || ((0x100003E01uLL >> v46) & 1) == 0)
          {
            v47 = _swift_stdlib_strtod_clocale();
            if (v47)
            {
              goto LABEL_50;
            }
          }

LABEL_51:
          LOBYTE(v105) = 0;
          goto LABEL_52;
        }
      }

      sub_262462A18();
LABEL_52:

      if (v105)
      {
        break;
      }

      v22 = (v22 + 1);
      v6 += 2;
      if (v42 == v22)
      {
        goto LABEL_66;
      }
    }

    v48 = v108[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_26243C488(0, *(v96 + 2) + 1, 1, v96);
      v96 = isUniquelyReferenced_nonNull_native;
    }

    v44 = v93;
    v50 = *(v96 + 2);
    v49 = *(v96 + 3);
    if (v50 >= v49 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_26243C488((v49 > 1), v50 + 1, 1, v96);
      v96 = isUniquelyReferenced_nonNull_native;
    }

    v43 = (v22 + 1);
    v51 = v96;
    *(v96 + 2) = v50 + 1;
    *&v51[8 * v50 + 32] = v48;
  }

  while (v92 != v22);
LABEL_66:
  v55 = *(v96 + 2);
  v56 = a2[2];

  if (v55 == v56)
  {
    goto LABEL_67;
  }

  v6 = v98;
  a1 = v97;
LABEL_69:
  v57 = sub_2624629D8();
  objc_opt_self();
  v58 = swift_dynamicCastObjCClass();
  if (!v58 || (v59 = [v58 sequenceValue]) == 0)
  {
    v60 = v57;
LABEL_76:

    goto LABEL_77;
  }

  v60 = v59;
  if ([v59 type] != 1)
  {

    goto LABEL_76;
  }

  v61 = [v60 int64Values];
  sub_2623F3AF0();
  v62 = sub_262462848();

  v63 = sub_2623F0330(v62);

  if (v63)
  {
LABEL_67:

    sub_2623F3A9C(&v109);
    goto LABEL_99;
  }

LABEL_77:
  a2 = sub_2624629D8();
  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v65 = [v64 multiArrayValue];
    if (v65)
    {
      v5 = v65;
      v97 = a1;
      v22 = &off_279B32000;
      v66 = [v65 shape];
      sub_2623F3AF0();
      v67 = sub_262462848();

      if (v67 >> 62)
      {
        goto LABEL_112;
      }

      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_81;
    }
  }

LABEL_97:

  if (v7)
  {

    sub_2623F3A9C(&v109);
LABEL_99:
  }

  else
  {
    *&v102 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
    v82 = sub_262462728();
    v84 = v83;
    sub_2623F1BBC();
    swift_allocError();
    *v85 = v95;
    *(v85 + 8) = a3;
    *(v85 + 16) = v82;
    *(v85 + 24) = v84;
    v86 = v103;
    *(v85 + 32) = v102;
    *(v85 + 48) = v86;
    *(v85 + 64) = 7;
    swift_willThrow();
    sub_2623F3A9C(&v109);
  }
}

uint64_t sub_2623F01A0(uint64_t a1, uint64_t a2)
{
  if (sub_262462978() > 64)
  {
    sub_2623F3B3C();
    sub_2623F3BFC();
    v4 = sub_262462678();
    (*(*(a2 - 8) + 8))(a1, a2);
    if (v4)
    {
      v5 = v10;
      return *&v5;
    }

    return 0;
  }

  v6 = sub_262462988();
  v7 = sub_262462968();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if ((v6 & 1) == 0)
  {
    v5 = v7;
    if (v7 < 1.84467441e19 && v7 == v7)
    {
      return *&v5;
    }

    return 0;
  }

  v5 = v7;
  if (v7 >= 9.22337204e18)
  {
    return 0;
  }

  if (v5 <= -9.22337204e18)
  {
    __break(1u);
    return result;
  }

  if (v7 != v5)
  {
    return 0;
  }

  return *&v5;
}

uint64_t sub_2623F0330(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_262462AD8())
  {
    v15 = MEMORY[0x277D84F90];
    sub_26243CD40(0, i & ~(i >> 63), 0);
    v4 = v15;
    if (v2)
    {
      break;
    }

    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266728730](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = 0;
      v14 = 1;
      MEMORY[0x266728550](v6, &v13);

      if (v14)
      {

        return 0;
      }

      v9 = v13;
      v15 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26243CD40((v10 > 1), v11 + 1, 1);
        v4 = v15;
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v9;
      if (v8 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v2 = sub_262462AD8();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_2623F04C0(void *a1, uint64_t a2)
{
  sub_2623EF15C(a2, *v2, *(v2 + 8), *(v2 + 16));
  v6 = v5;
  result = v7;
  if (!v3)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_2623F0504@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2623F20E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2623F0534()
{
  v1 = 1701667182;
  v2 = 0x6C615673656C7572;
  if (*v0 != 2)
  {
    v2 = 0x6369676F6CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2623F05B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2623F3800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2623F05E8(uint64_t a1)
{
  v2 = sub_2623F24DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F0624(uint64_t a1)
{
  v2 = sub_2623F24DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F0660(uint64_t a1)
{
  v4 = type metadata accessor for NumberListRule();
  sub_2623F3CA4(v1 + *(v4 + 28), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240C974(v7, a1, *v1, v1[1], v1[2], v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7[0];
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_2623F075C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2623F0660(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623F07AC()
{
  v1 = *v0;
  sub_262462CF8();
  MEMORY[0x2667289D0](v1);
  return sub_262462D38();
}

uint64_t sub_2623F07F4()
{
  v1 = *v0;
  sub_262462CF8();
  MEMORY[0x2667289D0](v1);
  return sub_262462D38();
}

unint64_t sub_2623F0838()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7475706E69;
  }

  *v0;
  return result;
}

uint64_t sub_2623F0874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262471840 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2623F0954(uint64_t a1)
{
  v2 = sub_2623F3744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F0990(uint64_t a1)
{
  v2 = sub_2623F3744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F09CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5E0, &qword_262463A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F3744();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v11 = sub_2623EEAD8(v9, 1);
  (*(v6 + 8))(v9, v5);
  v16 = v11;
  sub_2623F3798(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2623F37D0(v15);
}

uint64_t sub_2623F0BC0(uint64_t a1)
{
  sub_2623F3CA4(v1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  sub_2623EB668(v12, v20);
  v4 = *(v1 + 40);
  v5 = v21;
  v6 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v7 = *(v6 + 24);

  v7(&v23, a1, v5, v6);
  if (!v2)
  {

    goto LABEL_7;
  }

  v19 = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v12[2] = v16;
    v12[3] = v17;
    v13 = v18;
    v12[0] = v14;
    v12[1] = v15;
    v23 = v4;
    v10[2] = v16;
    v10[3] = v17;
    v11 = v18;
    v10[0] = v14;
    v10[1] = v15;
    sub_262427BA0(a1, v10);
    sub_2623F3C50(v12);
    MEMORY[0x266728D50](v19);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v23;
  }

  MEMORY[0x266728D50](v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2623F0DAC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2623F0BC0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623F0DFC()
{
  v1 = 0x7365736163;
  if (*v0 != 1)
  {
    v1 = 0x746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_2623F0E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2623F41B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2623F0E78(uint64_t a1)
{
  v2 = sub_2623F3634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F0EB4(uint64_t a1)
{
  v2 = sub_2623F3634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F0EF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C8, &qword_262463A80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2623F3634();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v48 = v7;
  LOBYTE(v51) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, v57);
  LOBYTE(v51) = 2;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, &v59);
  LOBYTE(v56[0]) = 1;
  sub_2623F3688();
  sub_262462B38();
  v43 = v4;
  v16 = sub_262462BC8();
  v42 = *(v16 + 16);
  if (!v42)
  {
    v19 = MEMORY[0x277D84F98];
LABEL_20:

    (*(v50 + 8))(v48, v43);
    (*(v9 + 8))(v12, v8);
    v58 = v19;
    sub_2623F36DC(v57, v49);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_2623F3714(v57);
  }

  v17 = 0;
  v18 = (v16 + 56);
  v19 = MEMORY[0x277D84F98];
  v41 = v16;
  while (1)
  {
    v47 = v19;
    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v21 = *(v18 - 3);
    v22 = *(v18 - 2);
    v23 = *v18;
    v46 = v18;
    v24 = *(v18 - 1);
    v25 = v21;
    v51 = v21;
    v52 = v22;
    v53 = v24;
    v54 = v23;
    swift_bridgeObjectRetain_n();
    sub_262462B58();

    sub_2623ED108(v55, v56);
    v44 = v17;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_2623EB668(v56, v55);
    v26 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v26;
    v27 = v22;
    v29 = sub_2624414FC(v25, v22);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v28)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_2624615B4();
        if (v33)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26245FCCC(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_2624414FC(v25, v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
      if (v33)
      {
LABEL_5:

        v19 = v51;
        v20 = (v51[7] + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_2623EB668(v55, v20);
        goto LABEL_6;
      }
    }

    v36 = v25;
    v19 = v51;
    v51[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v36;
    v37[1] = v27;
    sub_2623EB668(v55, v19[7] + 40 * v29);
    v38 = v19[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_23;
    }

    v19[2] = v40;
LABEL_6:
    v16 = v41;
    v17 = v44 + 1;
    v18 = v46 + 32;
    if (v42 == v44 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_2623F1614(uint64_t a1)
{
  v4 = sub_26240D23C(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_2623EB668(v20, v25);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v21, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v9 = v8;
    v10 = v22;
    if (v22 && *(v5 + 16) && (v11 = v21, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v20);
      sub_2623EB668(v20, &v21);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      (*(v16 + 24))(&v28, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v18 + 24))(&v28, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    return v28;
  }
}

uint64_t sub_2623F187C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2623F1614(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623F18CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000262463360 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000262463340 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_2623F1BBC()
{
  result = qword_27FF0C460;
  if (!qword_27FF0C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C460);
  }

  return result;
}

unint64_t sub_2623F1C10()
{
  result = qword_27FF0C468;
  if (!qword_27FF0C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C468);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2623F1CB0()
{
  result = qword_27FF0C470;
  if (!qword_27FF0C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C470);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x266728E90);
  }

  return result;
}

unint64_t sub_2623F1D54()
{
  result = qword_27FF0C478;
  if (!qword_27FF0C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C478);
  }

  return result;
}

unint64_t sub_2623F1DA8()
{
  result = qword_27FF0C480;
  if (!qword_27FF0C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C480);
  }

  return result;
}

uint64_t type metadata accessor for NumberListRule()
{
  result = qword_27FF0C500;
  if (!qword_27FF0C500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2623F1EAC(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4A0, &qword_262463328);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F2354();
  sub_262462D88();
  if (!v1)
  {
    v10 = sub_2623EDD5C();
    v2 = v10;
    if (v10)
    {
      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v2;
    }

    v12 = sub_262462B48();
    v2 = sub_262427A60(v12);
    v14 = v13;

    *&v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
    v15 = sub_262462728();
    v17 = v16;
    sub_2623F1BBC();
    swift_allocError();
    *v18 = v2;
    *(v18 + 8) = v14;
    *(v18 + 16) = 0x65756C6176;
    *(v18 + 24) = 0xE500000000000000;
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
    *(v18 + 48) = v19;
    *(v18 + 64) = 4;
    swift_willThrow();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2623F20E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4D8, &qword_262463348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2623F2488();
  sub_262462D88();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_262462B88();
    sub_2623EE194(v7, 1);
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2623F22AC()
{
  result = qword_27FF0C490;
  if (!qword_27FF0C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C490);
  }

  return result;
}

unint64_t sub_2623F2300()
{
  result = qword_27FF0C498;
  if (!qword_27FF0C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C498);
  }

  return result;
}

unint64_t sub_2623F2354()
{
  result = qword_27FF0C4A8;
  if (!qword_27FF0C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4A8);
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

unint64_t sub_2623F23F0()
{
  result = qword_27FF0C4D0;
  if (!qword_27FF0C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4C8, &qword_262463340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4D0);
  }

  return result;
}

unint64_t sub_2623F2488()
{
  result = qword_27FF0C4E0;
  if (!qword_27FF0C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4E0);
  }

  return result;
}

unint64_t sub_2623F24DC()
{
  result = qword_27FF0C4F8;
  if (!qword_27FF0C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4F8);
  }

  return result;
}

uint64_t sub_2623F2530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesValidity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2623F2594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberListRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2623F25F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for NumberListRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NumberListRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NumberListValue.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NumberListValue.CodingKeys(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2623F28D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2623F2920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2623F2998()
{
  sub_2623F2A44();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RulesValidity();
    if (v1 <= 0x3F)
    {
      sub_2623F2AA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2623F2A44()
{
  if (!qword_27FF0C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4B0, &qword_262463330);
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF0C510);
    }
  }
}

unint64_t sub_2623F2AA8()
{
  result = qword_27FF0C518;
  if (!qword_27FF0C518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0C518);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2623F2B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2623F2B68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2623F2BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2623F2C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberListExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NumberListExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2623F2DE8()
{
  result = qword_27FF0C520;
  if (!qword_27FF0C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C520);
  }

  return result;
}

unint64_t sub_2623F2E3C(uint64_t a1)
{
  result = sub_2623F1CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2E64(uint64_t a1)
{
  result = sub_2623F1DA8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2623F2E8C(uint64_t a1)
{
  result = sub_2623F3444(&qword_27FF0C528, type metadata accessor for NumberListRule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2EE4(uint64_t a1)
{
  result = sub_2623F2F0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2F0C()
{
  result = qword_27FF0C530;
  if (!qword_27FF0C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C530);
  }

  return result;
}

unint64_t sub_2623F2F60(uint64_t a1)
{
  result = sub_2623F2F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2F88()
{
  result = qword_27FF0C538;
  if (!qword_27FF0C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C538);
  }

  return result;
}

unint64_t sub_2623F2FE0()
{
  result = qword_27FF0C540;
  if (!qword_27FF0C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C540);
  }

  return result;
}

unint64_t sub_2623F3038()
{
  result = qword_27FF0C548;
  if (!qword_27FF0C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C548);
  }

  return result;
}

unint64_t sub_2623F3090()
{
  result = qword_27FF0C550;
  if (!qword_27FF0C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C550);
  }

  return result;
}

unint64_t sub_2623F30E8()
{
  result = qword_27FF0C558;
  if (!qword_27FF0C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C558);
  }

  return result;
}

unint64_t sub_2623F3140()
{
  result = qword_27FF0C560;
  if (!qword_27FF0C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C560);
  }

  return result;
}

unint64_t sub_2623F3198()
{
  result = qword_27FF0C568;
  if (!qword_27FF0C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C568);
  }

  return result;
}

unint64_t sub_2623F31F0()
{
  result = qword_27FF0C570;
  if (!qword_27FF0C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C570);
  }

  return result;
}

unint64_t sub_2623F3248()
{
  result = qword_27FF0C578;
  if (!qword_27FF0C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C578);
  }

  return result;
}

unint64_t sub_2623F32A0()
{
  result = qword_27FF0C580;
  if (!qword_27FF0C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C580);
  }

  return result;
}

unint64_t sub_2623F32F4(uint64_t a1)
{
  result = sub_2623F331C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F331C()
{
  result = qword_27FF0C588;
  if (!qword_27FF0C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C588);
  }

  return result;
}

unint64_t sub_2623F3370(uint64_t a1)
{
  result = sub_2623F3398();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F3398()
{
  result = qword_27FF0C590;
  if (!qword_27FF0C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C590);
  }

  return result;
}

uint64_t sub_2623F33EC(uint64_t a1)
{
  result = sub_2623F3444(&qword_27FF0C598, type metadata accessor for NumberListRule);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2623F3444(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2623F348C(uint64_t a1)
{
  result = sub_2623F34B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F34B4()
{
  result = qword_27FF0C5A0;
  if (!qword_27FF0C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5A0);
  }

  return result;
}

unint64_t sub_2623F3508(uint64_t a1)
{
  result = sub_2623F3530();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F3530()
{
  result = qword_27FF0C5A8;
  if (!qword_27FF0C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5A8);
  }

  return result;
}

unint64_t sub_2623F3588()
{
  result = qword_27FF0C5B0;
  if (!qword_27FF0C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5B0);
  }

  return result;
}

unint64_t sub_2623F35E0()
{
  result = qword_27FF0C5B8;
  if (!qword_27FF0C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5B8);
  }

  return result;
}

unint64_t sub_2623F3634()
{
  result = qword_27FF0C5D0;
  if (!qword_27FF0C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5D0);
  }

  return result;
}

unint64_t sub_2623F3688()
{
  result = qword_27FF0C5D8;
  if (!qword_27FF0C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5D8);
  }

  return result;
}

unint64_t sub_2623F3744()
{
  result = qword_27FF0C5E8;
  if (!qword_27FF0C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5E8);
  }

  return result;
}

uint64_t sub_2623F3800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2623F3970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2623F39E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2623F3AF0()
{
  result = qword_27FF0C608;
  if (!qword_27FF0C608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF0C608);
  }

  return result;
}

unint64_t sub_2623F3B3C()
{
  result = qword_27FF0C610;
  if (!qword_27FF0C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C610);
  }

  return result;
}

uint64_t sub_2623F3B90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4B0, &qword_262463330);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2623F3BFC()
{
  result = qword_27FF0C620;
  if (!qword_27FF0C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C620);
  }

  return result;
}

uint64_t sub_2623F3CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for Decision.RateLimitCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Decision.RateLimitCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberListMatchCase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NumberListMatchCase.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2623F3FAC()
{
  result = qword_27FF0C640;
  if (!qword_27FF0C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C640);
  }

  return result;
}

unint64_t sub_2623F4004()
{
  result = qword_27FF0C648;
  if (!qword_27FF0C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C648);
  }

  return result;
}

unint64_t sub_2623F405C()
{
  result = qword_27FF0C650;
  if (!qword_27FF0C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C650);
  }

  return result;
}

unint64_t sub_2623F40B4()
{
  result = qword_27FF0C658;
  if (!qword_27FF0C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C658);
  }

  return result;
}

unint64_t sub_2623F410C()
{
  result = qword_27FF0C660;
  if (!qword_27FF0C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C660);
  }

  return result;
}

unint64_t sub_2623F4164()
{
  result = qword_27FF0C668;
  if (!qword_27FF0C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C668);
  }

  return result;
}

uint64_t sub_2623F41B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365736163 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t Decision.rawValue.getter()
{
  v1 = sub_262462718();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v23[1] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_262462438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = *(v0 + 16);
  v10 = sub_262462478();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_262462468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C670, &qword_262463D30);
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_262463D10;
  sub_262462428();
  v24 = v15;
  sub_2623F4584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C678, &qword_262463D38);
  sub_2623F45DC();
  sub_2624629A8();
  sub_262462448();
  v24 = v7;
  v25 = v8;
  v26 = v9;
  sub_2623F4640();
  v17 = sub_262462458();
  v19 = v18;
  sub_262462708();
  v20 = sub_2624626F8();
  v22 = v21;
  sub_2623F4694(v17, v19);

  if (v22)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2623F4584()
{
  result = qword_2813BDC30;
  if (!qword_2813BDC30)
  {
    sub_262462438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC30);
  }

  return result;
}

unint64_t sub_2623F45DC()
{
  result = qword_2813BD3E8;
  if (!qword_2813BD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C678, &qword_262463D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3E8);
  }

  return result;
}

unint64_t sub_2623F4640()
{
  result = qword_2813BD450;
  if (!qword_2813BD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD450);
  }

  return result;
}

uint64_t sub_2623F4694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Decision.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262462418();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_262462408();
  v9 = sub_2623F47D4(a1, a2);
  v11 = v10;
  sub_2623F4CF4();
  sub_2624623F8();
  sub_2623F4694(v9, v11);

  *a3 = v13;
  *(a3 + 16) = v14;
  return result;
}

uint64_t sub_2623F47D4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C8, &qword_262464BB0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_262462528();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2623F39E0(__src, &qword_27FF0C7D0, &qword_262464BB8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_262462A98();
  }

  sub_2623F8F14(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2623FAE50(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2623F8FDC(sub_2623FB430);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2624625C8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2623F9534(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2624627A8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2624627D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_262462A98();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2623F9534(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2624627B8();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_2624625D8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_2624625D8();
    sub_2623FB4EC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_2623FB4EC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2623FB498(*&__src[0], *(&__src[0] + 1));

  sub_2623F4694(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

unint64_t sub_2623F4CF4()
{
  result = qword_2813BD448;
  if (!qword_2813BD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD448);
  }

  return result;
}

uint64_t sub_2623F4D48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6973696365446F4ELL;
    v7 = 0x6E6F697369636544;
    if (a1 != 10)
    {
      v7 = 0x6D6F74737543;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x5652504F5441;
    v9 = 0x6F677261626D45;
    if (a1 != 7)
    {
      v9 = 0x66666F6B636142;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x747065636341;
    v2 = 0x65726F6E6749;
    v3 = 0x726F6C6F43;
    if (a1 != 4)
    {
      v3 = 0x696D694C65746152;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7463656A6552;
    if (a1 != 1)
    {
      v4 = 0x776569766552;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2623F4EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2623FAFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2623F4EF8(uint64_t a1)
{
  v2 = sub_2623F688C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F4F34(uint64_t a1)
{
  v2 = sub_2623F688C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F4F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2623F5008(uint64_t a1)
{
  v2 = sub_2623F9848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F5044(uint64_t a1)
{
  v2 = sub_2623F9848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F5080()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_2623F50B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2623F5190(uint64_t a1)
{
  v2 = sub_2623F97F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F51CC(uint64_t a1)
{
  v2 = sub_2623F97F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2623F52A0(uint64_t a1)
{
  v2 = sub_2623F97A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F52DC(uint64_t a1)
{
  v2 = sub_2623F97A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79616C6564 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2623F53B0(uint64_t a1)
{
  v2 = sub_2623F974C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F53EC(uint64_t a1)
{
  v2 = sub_2623F974C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F5440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697369636564 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2623F54C8(uint64_t a1)
{
  v2 = sub_2623F96F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F5504(uint64_t a1)
{
  v2 = sub_2623F96F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Decision.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v117 = sub_262462A88();
  v110[0] = *(v117 - 8);
  v3 = *(v110[0] + 64);
  v4 = MEMORY[0x28223BE20](v117);
  v110[2] = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v110[1] = v110 - v6;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C680, &qword_262463D40);
  v114 = *(v121 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x28223BE20](v121);
  v125 = v110 - v8;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C688, &qword_262463D48);
  v113 = *(v119 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x28223BE20](v119);
  v123 = v110 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C690, &qword_262463D50);
  v112 = *(v118 - 8);
  v11 = *(v112 + 64);
  MEMORY[0x28223BE20](v118);
  v122 = v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C698, &qword_262463D58);
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  MEMORY[0x28223BE20](v13);
  v124 = v110 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6A0, &qword_262463D60);
  v111 = *(v120 - 8);
  v16 = *(v111 + 64);
  MEMORY[0x28223BE20](v120);
  v18 = v110 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6A8, &qword_262463D68);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v110 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6B0, &unk_262463D70);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v110 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F688C();
  v29 = v127;
  sub_262462D88();
  if (v29)
  {
    MEMORY[0x266728D50](v29);
    (*(v24 + 56))(v22, 1, 1, v23);
    sub_2623F39E0(v22, &qword_27FF0C6A8, &qword_262463D68);
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v31 = sub_262462D78();
    v32 = sub_262427A60(v31);
    v34 = v33;

    sub_2623F1BBC();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0xE000000000000000;
    *(v35 + 32) = 0x6E6F697369636544;
    *(v35 + 40) = 0xE800000000000000;
    *(v35 + 48) = v128;
    *(v35 + 64) = 4;
    swift_willThrow();
    v36 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v127 = v18;
  v37 = v126;
  v36 = a1;
  (*(v24 + 56))(v22, 0, 1, v23);
  (*(v24 + 32))(v27, v22, v23);
  v38 = sub_262462BC8();
  v39 = v24;
  if (!*(v38 + 16))
  {

    v42 = v23;
LABEL_11:
    v47 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v48 = sub_262462D78();
    v49 = sub_262427A60(v48);
    v51 = v50;

    sub_2623F1BBC();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0x6E6F697369636544;
    *(v52 + 24) = 0xE800000000000000;
    v53 = v129;
    *(v52 + 32) = v128;
    *(v52 + 48) = v53;
    *(v52 + 64) = 2;
    swift_willThrow();
    (*(v39 + 8))(v27, v42);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v40 = *(v38 + 32);

  v41 = *(sub_262462BC8() + 16);

  v42 = v23;
  if (v41 != 1)
  {
    goto LABEL_11;
  }

  if (v40 <= 5)
  {
    v43 = v37;
    if (v40 <= 2)
    {
      if (v40)
      {
        (*(v39 + 8))(v27, v42);
        if (v40 == 1)
        {
          v44 = 0;
          v45 = 5;
          v46 = 1;
        }

        else
        {
          v44 = 0;
          v45 = 5;
          v46 = 2;
        }

        goto LABEL_30;
      }

      (*(v39 + 8))(v27, v42);
      v46 = 0;
      v44 = 0;
      goto LABEL_28;
    }

    if (v40 == 3)
    {
      (*(v39 + 8))(v27, v42);
      v44 = 0;
      v45 = 5;
      v46 = 3;
      goto LABEL_30;
    }

    if (v40 == 4)
    {
      LOBYTE(v128) = 4;
      sub_2623F9848();
      v58 = v127;
      sub_262462B38();
      v46 = sub_262462B88();
      v44 = v76;
      (*(v111 + 8))(v58, v120);
      (*(v39 + 8))(v27, v42);
      v45 = 0;
      goto LABEL_30;
    }

    LOBYTE(v128) = 5;
    sub_2623F97F4();
    v62 = v124;
    sub_262462B38();
    v63 = COERCE_DOUBLE(sub_2623F68E0(v62, 0));
    v123 = v27;
    v86 = v116;
    if ((v64 & 1) != 0 || (v101 = v63, v63 <= -9.22337204e18) || v63 >= 9.22337204e18 || trunc(v63) != v63)
    {
      v87 = v124;
      v88 = sub_262462B48();
      v89 = sub_262427A60(v88);
      v91 = v90;

      *&v128 = MEMORY[0x277D83B88];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
      v92 = sub_262462728();
      v94 = v93;
      sub_2623F1BBC();
      swift_allocError();
      *v95 = v89;
      *(v95 + 8) = v91;
      v96 = 0x746E756F63;
      v97 = 0xE500000000000000;
    }

    else
    {
      v102 = COERCE_DOUBLE(sub_2623F68E0(v124, 1));
      if ((v103 & 1) == 0 && v102 > -9.22337204e18 && v102 < 9.22337204e18 && trunc(v102) == v102)
      {
        v46 = v101;
        v109 = v102;
        (*(v115 + 8))(v124, v116);
        (*(v39 + 8))(v123, v42);
        v44 = v109;
        v45 = 1;
        goto LABEL_30;
      }

      v86 = v116;
      v87 = v124;
      v104 = sub_262462B48();
      v105 = sub_262427A60(v104);
      v107 = v106;

      *&v128 = MEMORY[0x277D83B88];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
      v92 = sub_262462728();
      v94 = v108;
      sub_2623F1BBC();
      swift_allocError();
      *v95 = v105;
      *(v95 + 8) = v107;
      v96 = 0x6E6F697461727564;
      v97 = 0xE800000000000000;
    }

    *(v95 + 16) = v96;
    *(v95 + 24) = v97;
    *(v95 + 32) = v92;
    *(v95 + 40) = v94;
    *(v95 + 48) = v128;
    *(v95 + 64) = 4;
    swift_willThrow();
    (*(v115 + 8))(v87, v86);
LABEL_41:
    (*(v39 + 8))(v123, v42);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v43 = v37;
  if (v40 > 8)
  {
    if (v40 != 9)
    {
      if (v40 == 10)
      {
        (*(v39 + 8))(v27, v42);
        v44 = 0;
        v45 = 5;
        v46 = 6;
      }

      else
      {
        LOBYTE(v128) = 11;
        sub_2623F96F8();
        v65 = v125;
        sub_262462B38();
        v46 = sub_262462B88();
        v44 = v98;
        (*(v114 + 8))(v65, v121);
        (*(v39 + 8))(v27, v42);
        v45 = 4;
      }

      goto LABEL_30;
    }

    (*(v39 + 8))(v27, v42);
    v44 = 0;
    v46 = 5;
LABEL_28:
    v45 = 5;
    goto LABEL_30;
  }

  if (v40 == 6)
  {
    (*(v39 + 8))(v27, v42);
    v44 = 0;
    v45 = 5;
    v46 = 4;
    goto LABEL_30;
  }

  if (v40 == 7)
  {
    LOBYTE(v128) = 7;
    sub_2623F97A0();
    v55 = v122;
    sub_262462B38();
    v56 = COERCE_DOUBLE(sub_2623F6EE8(v55, &qword_27FF0C690, &qword_262463D50, 0x6874676E656CLL, 0xE600000000000000));
    if ((v57 & 1) == 0)
    {
      v99 = v56;
      if (v56 > -9.22337204e18 && v56 < 9.22337204e18 && trunc(v56) == v56)
      {
        (*(v112 + 8))(v122, v118);
        (*(v39 + 8))(v27, v42);
        v44 = 0;
        v46 = v99;
        v45 = 2;
        goto LABEL_30;
      }
    }

    v66 = v122;
    v67 = sub_262462B48();
    v68 = sub_262427A60(v67);
    v123 = v27;
    v69 = v68;
    v71 = v70;

    *&v128 = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v72 = sub_262462728();
    v74 = v73;
    sub_2623F1BBC();
    swift_allocError();
    *v75 = v69;
    *(v75 + 8) = v71;
    *(v75 + 16) = 0x6874676E656CLL;
    *(v75 + 24) = 0xE600000000000000;
    *(v75 + 32) = v72;
    *(v75 + 40) = v74;
    *(v75 + 48) = v128;
    *(v75 + 64) = 4;
    swift_willThrow();
    (*(v112 + 8))(v66, v118);
    goto LABEL_41;
  }

  LOBYTE(v128) = 8;
  sub_2623F974C();
  v59 = v123;
  sub_262462B38();
  v60 = COERCE_DOUBLE(sub_2623F6EE8(v59, &qword_27FF0C688, &qword_262463D48, 0x79616C6564, 0xE500000000000000));
  if ((v61 & 1) != 0 || (v100 = v60, v60 <= -9.22337204e18) || v60 >= 9.22337204e18 || trunc(v60) != v60)
  {
    v77 = v123;
    v78 = sub_262462B48();
    v79 = sub_262427A60(v78);
    v81 = v80;

    *&v128 = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v82 = sub_262462728();
    v126 = v42;
    v84 = v83;
    sub_2623F1BBC();
    swift_allocError();
    *v85 = v79;
    *(v85 + 8) = v81;
    *(v85 + 16) = 0x79616C6564;
    *(v85 + 24) = 0xE500000000000000;
    *(v85 + 32) = v82;
    *(v85 + 40) = v84;
    *(v85 + 48) = v128;
    *(v85 + 64) = 4;
    swift_willThrow();
    (*(v113 + 8))(v77, v119);
    (*(v39 + 8))(v27, v126);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  (*(v113 + 8))(v123, v119);
  (*(v39 + 8))(v27, v42);
  v44 = 0;
  v46 = v100;
  v45 = 3;
LABEL_30:
  *v43 = v46;
  *(v43 + 8) = v44;
  *(v43 + 16) = v45;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

unint64_t sub_2623F688C()
{
  result = qword_2813BD510;
  if (!qword_2813BD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD510);
  }

  return result;
}

uint64_t sub_2623F68E0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C698, &qword_262463D58);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0x6E6F697461727564;
  }

  else
  {
    v13 = 0x746E756F63;
  }

  if (a2)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F6AC4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C810, &qword_2624659F0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      v14 = 0x7472617473;
    }

    else
    {
      v13 = 0xE300000000000000;
      v14 = 6581861;
    }
  }

  else
  {
    v13 = 0xEB00000000747570;
    v14 = 0x6E49676E69727473;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F6CC4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C808, qword_262464BF0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0x7865646E69;
  }

  else
  {
    v13 = 0x6E49676E69727473;
  }

  if (a2)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xEB00000000747570;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F6EE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_262462BA8();
  if (!v5)
  {
    return v8;
  }

  MEMORY[0x266728D50](v5);
  v9 = sub_262462B88();
  v12 = sub_2623F95B0(v9, v11);

  if (v12)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v13 = sub_262462B48();
  v14 = sub_262427A60(v13);
  v16 = v15;

  *&v21 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v17 = sub_262462728();
  v19 = v18;
  sub_2623F1BBC();
  swift_allocError();
  *v20 = v14;
  *(v20 + 8) = v16;
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = v21;
  *(v20 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7084(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E0, &unk_26246A0E0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0x746C7561666564;
  }

  else
  {
    v13 = 0x6D614E646C656966;
  }

  if (a2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000065;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7270(uint64_t a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E8, &qword_262464BD0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED00007974696469;
      v14 = 0x6C615673656C7572;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x6369676F6CLL;
    }
  }

  else if (a2)
  {
    v13 = 0x80000002624717E0;
    v14 = 0xD000000000000010;
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1701667182;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7498(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C800, &qword_262464BE8);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      v14 = 0x7472617473;
    }

    else
    {
      v13 = 0xE300000000000000;
      v14 = 6581861;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x7475706E69;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F768C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F8, &qword_262464BE0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0xD000000000000010;
  }

  else
  {
    v13 = 0x7475706E69;
  }

  if (a2)
  {
    v14 = 0x8000000262471840;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7874(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F0, &qword_262464BD8);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  v8 = sub_2623F95B0(v5, v7);

  if (v8)
  {
    return 0;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xEA00000000006C65;
      v14 = 0x62614C65736C6166;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x7475706E69;
    }
  }

  else
  {
    v13 = 0xE90000000000006CLL;
    v14 = 0x6562614C65757274;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t Decision.isSameType(as:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_15;
      }
    }

    else if (v7 == 4)
    {
      v8 = *(v1 + 8);

      if (v4 != 4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v5 <= 2)
      {
        if (!(v5 | v6))
        {
          if (v4 == 5 && !(v3 | v2))
          {
            goto LABEL_43;
          }

          goto LABEL_15;
        }

        if (v5 ^ 1 | v6)
        {
          if (v4 != 5 || v2 != 2)
          {
            goto LABEL_15;
          }
        }

        else if (v4 != 5 || v2 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v5 > 4)
      {
        if (v5 ^ 5 | v6)
        {
          if (v4 != 5 || v2 != 6)
          {
            goto LABEL_15;
          }
        }

        else if (v4 != 5 || v2 != 5)
        {
          goto LABEL_15;
        }
      }

      else if (v5 ^ 3 | v6)
      {
        if (v4 != 5 || v2 != 4)
        {
          goto LABEL_15;
        }
      }

      else if (v4 != 5 || v2 != 3)
      {
        goto LABEL_15;
      }

      if (v3)
      {
        goto LABEL_15;
      }
    }

LABEL_43:
    v10 = 1;
    goto LABEL_44;
  }

  if (!*(v1 + 16))
  {
    v9 = *(v1 + 8);

    if (!v4)
    {
      goto LABEL_43;
    }

    goto LABEL_15;
  }

  if (v7 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

  if (v4 == 1)
  {
    goto LABEL_43;
  }

LABEL_15:
  v10 = 0;
LABEL_44:
  sub_2623F989C(v2, v3, v4);
  sub_2623F98B8(v5, v6, v7);
  sub_2623F98B8(v2, v3, v4);
  return v10;
}

uint64_t sub_2623F7C48(uint64_t a1)
{
  v2 = sub_2623F9DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7C84(uint64_t a1)
{
  v2 = sub_2623F9DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7CC0(uint64_t a1)
{
  v2 = sub_2623F9EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7CFC(uint64_t a1)
{
  v2 = sub_2623F9EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7D38(uint64_t a1)
{
  v2 = sub_2623F9D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7D74(uint64_t a1)
{
  v2 = sub_2623F9D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7DB0(uint64_t a1)
{
  v2 = sub_2623F9DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7DEC(uint64_t a1)
{
  v2 = sub_2623F9DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7E28(uint64_t a1)
{
  v2 = sub_2623F9D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7E64(uint64_t a1)
{
  v2 = sub_2623F9D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7EA0(uint64_t a1)
{
  v2 = sub_2623F9EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7EDC(uint64_t a1)
{
  v2 = sub_2623F9EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7F18(uint64_t a1)
{
  v2 = sub_2623F9E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7F54(uint64_t a1)
{
  v2 = sub_2623F9E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Decision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6F0, &qword_262463D90);
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v3);
  v92 = &v62 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6F8, &qword_262463D98);
  v79 = *(v80 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v62 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C700, &qword_262463DA0);
  v76 = *(v77 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C708, &qword_262463DA8);
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v10);
  v89 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C710, &qword_262463DB0);
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v13);
  v86 = &v62 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C718, &qword_262463DB8);
  v73 = *(v74 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C720, &qword_262463DC0);
  v84 = *(v18 - 8);
  v85 = v18;
  v19 = *(v84 + 64);
  MEMORY[0x28223BE20](v18);
  v83 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C728, &qword_262463DC8);
  v81 = *(v21 - 8);
  v82 = v21;
  v22 = *(v81 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C730, &qword_262463DD0);
  v70 = *(v71 - 8);
  v25 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v62 - v26;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C738, &qword_262463DD8);
  v67 = *(v68 - 8);
  v27 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - v28;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C740, &qword_262463DE0);
  v64 = *(v65 - 8);
  v29 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v31 = &v62 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C748, &qword_262463DE8);
  v63 = *(v32 - 8);
  v33 = *(v63 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v62 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C750, &qword_262463DF0);
  v96 = *(v36 - 8);
  v97 = v36;
  v37 = *(v96 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = *v1;
  *&v95 = v1[1];
  *(&v95 + 1) = v38;
  v39 = *(v1 + 16);
  v41 = a1[3];
  v40 = a1[4];
  v42 = a1;
  v44 = &v62 - v43;
  __swift_project_boxed_opaque_existential_1(v42, v41);
  sub_2623F688C();
  sub_262462D98();
  if (v39 <= 2)
  {
    if (v39)
    {
      v45 = v39 == 1;
      v47 = v97;
      v46 = v98;
      if (!v45)
      {
        v99[27] = 7;
        sub_2623F97A0();
        v49 = v86;
        sub_262462BF8();
        v50 = v88;
        sub_262462C18();
        v51 = v87;
LABEL_20:
        (*(v51 + 8))(v49, v50);
        return (*(v96 + 8))(v44, v47);
      }

      v99[25] = 5;
      sub_2623F97F4();
      v49 = v83;
      sub_262462BF8();
      v99[24] = 0;
      v50 = v85;
      sub_262462C18();
      if (!v46)
      {
        v99[7] = 1;
        sub_262462C18();
        v51 = v84;
        goto LABEL_20;
      }

      (*(v84 + 8))(v49, v50);
    }

    else
    {
      v99[6] = 4;
      sub_2623F9848();
      v47 = v97;
      sub_262462BF8();
      v48 = v82;
      sub_262462C08();
      (*(v81 + 8))(v24, v48);
    }

    return (*(v96 + 8))(v44, v47);
  }

  if (v39 == 3)
  {
    v99[28] = 8;
    sub_2623F974C();
    v49 = v89;
    v47 = v97;
    sub_262462BF8();
    v50 = v91;
    sub_262462C18();
    v51 = v90;
    goto LABEL_20;
  }

  if (v39 == 4)
  {
    v99[31] = 11;
    sub_2623F96F8();
    v49 = v92;
    v47 = v97;
    sub_262462BF8();
    v50 = v94;
    sub_262462C08();
    v51 = v93;
    goto LABEL_20;
  }

  if (*(&v95 + 1) > 2uLL)
  {
    if (*(&v95 + 1) > 4uLL)
    {
      v47 = v97;
      if (*(&v95 + 1) ^ 5 | v95)
      {
        v99[30] = 10;
        sub_2623F9D00();
        v61 = v78;
        sub_262462BF8();
        (*(v79 + 8))(v61, v80);
      }

      else
      {
        v99[29] = 9;
        sub_2623F9D54();
        v58 = v75;
        sub_262462BF8();
        (*(v76 + 8))(v58, v77);
      }
    }

    else
    {
      v47 = v97;
      if (*(&v95 + 1) ^ 3 | v95)
      {
        v99[26] = 6;
        sub_2623F9DA8();
        v60 = v72;
        sub_262462BF8();
        (*(v73 + 8))(v60, v74);
      }

      else
      {
        v99[5] = 3;
        sub_2623F9DFC();
        v52 = v69;
        sub_262462BF8();
        (*(v70 + 8))(v52, v71);
      }
    }

    return (*(v96 + 8))(v44, v47);
  }

  if (v95 == 0)
  {
    v99[2] = 0;
    sub_2623F9EF8();
    v53 = v97;
    sub_262462BF8();
    (*(v63 + 8))(v35, v32);
  }

  else
  {
    if (*(&v95 + 1) ^ 1 | v95)
    {
      v99[4] = 2;
      sub_2623F9E50();
      v59 = v66;
      v53 = v97;
      sub_262462BF8();
      v54 = *(v67 + 8);
      v55 = v59;
      v56 = v99;
    }

    else
    {
      v99[3] = 1;
      sub_2623F9EA4();
      v53 = v97;
      sub_262462BF8();
      v54 = *(v64 + 8);
      v55 = v31;
      v56 = &v96;
    }

    v54(v55, *(v56 - 32));
  }

  return (*(v96 + 8))(v44, v53);
}

uint64_t Decision.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = 8;
      goto LABEL_14;
    }

    if (v3 != 4)
    {
      if (v1 <= 2)
      {
        if (v1 | v2)
        {
          if (v1 ^ 1 | v2)
          {
            v4 = 2;
          }

          else
          {
            v4 = 1;
          }
        }

        else
        {
          v4 = 0;
        }
      }

      else if (v1 > 4)
      {
        if (v1 ^ 5 | v2)
        {
          v4 = 10;
        }

        else
        {
          v4 = 9;
        }
      }

      else if (v1 ^ 3 | v2)
      {
        v4 = 6;
      }

      else
      {
        v4 = 3;
      }

      return MEMORY[0x2667289D0](v4);
    }

    v5 = 11;
  }

  else
  {
    if (*(v0 + 16))
    {
      if (v3 == 1)
      {
        MEMORY[0x2667289D0](5);
        MEMORY[0x2667289D0](v1);
        v4 = v2;
        return MEMORY[0x2667289D0](v4);
      }

      v7 = 7;
LABEL_14:
      MEMORY[0x2667289D0](v7);
      v4 = v1;
      return MEMORY[0x2667289D0](v4);
    }

    v5 = 4;
  }

  MEMORY[0x2667289D0](v5);

  return sub_262462778();
}

uint64_t Decision.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_262462CF8();
  Decision.hash(into:)();
  return sub_262462D38();
}

uint64_t sub_2623F8DEC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_262462CF8();
  Decision.hash(into:)();
  return sub_262462D38();
}

uint64_t sub_2623F8E44()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_262462CF8();
  Decision.hash(into:)();
  return sub_262462D38();
}

_BYTE *sub_2623F8E98@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2623F8F14@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2623FAD98(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2624624E8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_262462498();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2624625B8();
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

void *sub_2623F8FDC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2623F4694(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2623F4694(v6, v5);
    *v3 = xmmword_262463D20;
    sub_2623F4694(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2624624A8() && __OFSUB__(v6, sub_2624624D8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2624624E8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_262462488();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2623F9480(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2623F4694(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_262463D20;
    sub_2623F4694(0, 0xC000000000000000);
    sub_2624625A8();
    result = sub_2623F9480(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2623F9380@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_2623FAD98(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2623FAEF0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2623FAF6C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2623F9414(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2623F9480(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2624624A8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2624624D8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2624624C8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2623F9534(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2624627F8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x266728490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2623F95B0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_262462A18();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_2623F96A8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_262462A38();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2623F96F8()
{
  result = qword_27FF0C6B8;
  if (!qword_27FF0C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6B8);
  }

  return result;
}

unint64_t sub_2623F974C()
{
  result = qword_27FF0C6C8;
  if (!qword_27FF0C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6C8);
  }

  return result;
}

unint64_t sub_2623F97A0()
{
  result = qword_27FF0C6D8;
  if (!qword_27FF0C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6D8);
  }

  return result;
}

unint64_t sub_2623F97F4()
{
  result = qword_27FF0C6E0;
  if (!qword_27FF0C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6E0);
  }

  return result;
}

unint64_t sub_2623F9848()
{
  result = qword_27FF0C6E8;
  if (!qword_27FF0C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6E8);
  }

  return result;
}

uint64_t sub_2623F989C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 4)
  {
  }

  return result;
}

uint64_t sub_2623F98B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 4)
  {
  }

  return result;
}

uint64_t _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 == 1)
        {
          sub_2623F98B8(*a1, v3, 1u);
          sub_2623F98B8(v5, v6, 1u);
          return v2 == v5 && v3 == v6;
        }

        goto LABEL_67;
      }

      if (v7 == 2)
      {
        sub_2623F98B8(*a1, v3, 2u);
        v14 = v5;
        v15 = v6;
        v16 = 2;
        goto LABEL_23;
      }

LABEL_67:
      sub_2623F989C(v5, v6, v7);
      sub_2623F98B8(v2, v3, v4);
      sub_2623F98B8(v5, v6, v7);
      return 0;
    }

    if (*(a2 + 16))
    {
LABEL_18:
      v13 = *(a1 + 8);

      goto LABEL_67;
    }

    v17 = *a1;
    if (v2 != v5 || v3 != v6)
    {
      v19 = sub_262462C58();
      sub_2623F989C(v5, v6, 0);
      sub_2623F989C(v2, v3, 0);
      sub_2623F98B8(v2, v3, 0);
      v20 = v5;
      v21 = v6;
      v22 = 0;
LABEL_48:
      sub_2623F98B8(v20, v21, v22);
      return v19 & 1;
    }

    sub_2623F989C(v17, v3, 0);
    sub_2623F989C(v2, v3, 0);
    sub_2623F98B8(v2, v3, 0);
    v10 = v2;
    v11 = v3;
    v12 = 0;
    goto LABEL_66;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_18;
      }

      if (v2 != v5 || v3 != v6)
      {
        v23 = *a1;
        v19 = sub_262462C58();
        sub_2623F989C(v5, v6, 4u);
        sub_2623F989C(v2, v3, 4u);
        sub_2623F98B8(v2, v3, 4u);
        v20 = v5;
        v21 = v6;
        v22 = 4;
        goto LABEL_48;
      }

      sub_2623F989C(*a1, v3, 4u);
      sub_2623F989C(v2, v3, 4u);
      sub_2623F98B8(v2, v3, 4u);
      v10 = v2;
      v11 = v3;
      v12 = 4;
    }

    else
    {
      if (v2 <= 2)
      {
        if (v2 | v3)
        {
          if (!(v2 ^ 1 | v3))
          {
            if (v7 == 5 && v5 == 1 && !v6)
            {
              sub_2623F98B8(*a1, v3, 5u);
              v9 = 1;
              sub_2623F98B8(1, 0, 5u);
              return v9;
            }

            goto LABEL_67;
          }

          if (v7 != 5 || v5 != 2 || v6)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 2;
        }

        else
        {
          if (v7 != 5 || v6 | v5)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 0;
        }
      }

      else if (v2 > 4)
      {
        if (v2 ^ 5 | v3)
        {
          if (v7 != 5 || v5 != 6 || v6)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 6;
        }

        else
        {
          if (v7 != 5 || v5 != 5 || v6)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 5;
        }
      }

      else if (v2 ^ 3 | v3)
      {
        if (v7 != 5 || v5 != 4 || v6)
        {
          goto LABEL_67;
        }

        sub_2623F98B8(*a1, v3, 5u);
        v10 = 4;
      }

      else
      {
        if (v7 != 5 || v5 != 3 || v6)
        {
          goto LABEL_67;
        }

        sub_2623F98B8(*a1, v3, 5u);
        v10 = 3;
      }

      v11 = 0;
      v12 = 5;
    }

LABEL_66:
    sub_2623F98B8(v10, v11, v12);
    return 1;
  }

  if (v7 != 3)
  {
    goto LABEL_67;
  }

  sub_2623F98B8(*a1, v3, 3u);
  v14 = v5;
  v15 = v6;
  v16 = 3;
LABEL_23:
  sub_2623F98B8(v14, v15, v16);
  return v2 == v5;
}

unint64_t sub_2623F9D00()
{
  result = qword_27FF0C758;
  if (!qword_27FF0C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C758);
  }

  return result;
}

unint64_t sub_2623F9D54()
{
  result = qword_27FF0C760;
  if (!qword_27FF0C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C760);
  }

  return result;
}

unint64_t sub_2623F9DA8()
{
  result = qword_27FF0C768;
  if (!qword_27FF0C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C768);
  }

  return result;
}

unint64_t sub_2623F9DFC()
{
  result = qword_27FF0C770;
  if (!qword_27FF0C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C770);
  }

  return result;
}

unint64_t sub_2623F9E50()
{
  result = qword_27FF0C778;
  if (!qword_27FF0C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C778);
  }

  return result;
}

unint64_t sub_2623F9EA4()
{
  result = qword_2813BD4A8;
  if (!qword_2813BD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4A8);
  }

  return result;
}

unint64_t sub_2623F9EF8()
{
  result = qword_27FF0C780;
  if (!qword_27FF0C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C780);
  }

  return result;
}

unint64_t sub_2623F9F50()
{
  result = qword_27FF0C788;
  if (!qword_27FF0C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C788);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Rules8DecisionO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2623F9FD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2623FA01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2623FA060(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Decision.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Decision.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2623FA29C()
{
  result = qword_27FF0C790;
  if (!qword_27FF0C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C790);
  }

  return result;
}

unint64_t sub_2623FA2F4()
{
  result = qword_27FF0C798;
  if (!qword_27FF0C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C798);
  }

  return result;
}

unint64_t sub_2623FA34C()
{
  result = qword_27FF0C7A0;
  if (!qword_27FF0C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7A0);
  }

  return result;
}

unint64_t sub_2623FA3A4()
{
  result = qword_27FF0C7A8;
  if (!qword_27FF0C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7A8);
  }

  return result;
}

unint64_t sub_2623FA3FC()
{
  result = qword_27FF0C7B0;
  if (!qword_27FF0C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7B0);
  }

  return result;
}

unint64_t sub_2623FA454()
{
  result = qword_27FF0C7B8;
  if (!qword_27FF0C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7B8);
  }

  return result;
}

unint64_t sub_2623FA4AC()
{
  result = qword_2813BD4D0;
  if (!qword_2813BD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4D0);
  }

  return result;
}

unint64_t sub_2623FA504()
{
  result = qword_2813BD4D8;
  if (!qword_2813BD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4D8);
  }

  return result;
}

unint64_t sub_2623FA55C()
{
  result = qword_2813BD498;
  if (!qword_2813BD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD498);
  }

  return result;
}

unint64_t sub_2623FA5B4()
{
  result = qword_2813BD4A0;
  if (!qword_2813BD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4A0);
  }

  return result;
}

unint64_t sub_2623FA60C()
{
  result = qword_2813BD488;
  if (!qword_2813BD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD488);
  }

  return result;
}

unint64_t sub_2623FA664()
{
  result = qword_2813BD490;
  if (!qword_2813BD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD490);
  }

  return result;
}

unint64_t sub_2623FA6BC()
{
  result = qword_2813BD4B0;
  if (!qword_2813BD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4B0);
  }

  return result;
}

unint64_t sub_2623FA714()
{
  result = qword_2813BD4B8;
  if (!qword_2813BD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4B8);
  }

  return result;
}

unint64_t sub_2623FA76C()
{
  result = qword_2813BD4E0;
  if (!qword_2813BD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4E0);
  }

  return result;
}

unint64_t sub_2623FA7C4()
{
  result = qword_2813BD4E8;
  if (!qword_2813BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4E8);
  }

  return result;
}

unint64_t sub_2623FA81C()
{
  result = qword_2813BD528;
  if (!qword_2813BD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD528);
  }

  return result;
}

unint64_t sub_2623FA874()
{
  result = qword_2813BD530;
  if (!qword_2813BD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD530);
  }

  return result;
}

unint64_t sub_2623FA8CC()
{
  result = qword_2813BD518;
  if (!qword_2813BD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD518);
  }

  return result;
}

unint64_t sub_2623FA924()
{
  result = qword_2813BD520;
  if (!qword_2813BD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD520);
  }

  return result;
}

unint64_t sub_2623FA97C()
{
  result = qword_2813BD4F0;
  if (!qword_2813BD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4F0);
  }

  return result;
}

unint64_t sub_2623FA9D4()
{
  result = qword_2813BD4F8;
  if (!qword_2813BD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4F8);
  }

  return result;
}

unint64_t sub_2623FAA2C()
{
  result = qword_2813BD458;
  if (!qword_2813BD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD458);
  }

  return result;
}

unint64_t sub_2623FAA84()
{
  result = qword_2813BD460;
  if (!qword_2813BD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD460);
  }

  return result;
}

unint64_t sub_2623FAADC()
{
  result = qword_2813BD468;
  if (!qword_2813BD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD468);
  }

  return result;
}

unint64_t sub_2623FAB34()
{
  result = qword_2813BD470;
  if (!qword_2813BD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD470);
  }

  return result;
}

unint64_t sub_2623FAB8C()
{
  result = qword_2813BD478;
  if (!qword_2813BD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD478);
  }

  return result;
}

unint64_t sub_2623FABE4()
{
  result = qword_2813BD480;
  if (!qword_2813BD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD480);
  }

  return result;
}

unint64_t sub_2623FAC3C()
{
  result = qword_2813BD4C0;
  if (!qword_2813BD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4C0);
  }

  return result;
}

unint64_t sub_2623FAC94()
{
  result = qword_2813BD4C8;
  if (!qword_2813BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4C8);
  }

  return result;
}

unint64_t sub_2623FACEC()
{
  result = qword_2813BD500;
  if (!qword_2813BD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD500);
  }

  return result;
}

unint64_t sub_2623FAD44()
{
  result = qword_2813BD508;
  if (!qword_2813BD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD508);
  }

  return result;
}

uint64_t sub_2623FAD98(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2623FAE50(uint64_t result)
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
      v2 = sub_2624624E8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2624624B8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2624625B8();
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

uint64_t sub_2623FAEF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2624624E8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_262462498();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2624625B8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2623FAF6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2624624E8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_262462498();
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

uint64_t sub_2623FAFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636341 && a2 == 0xE600000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A6552 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776569766552 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6E6749 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F6C6F43 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696D694C65746152 && a2 == 0xE900000000000074 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5652504F5441 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F677261626D45 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x66666F6B636142 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6973696365446F4ELL && a2 == 0xEA00000000006E6FLL || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xED0000726F727245 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D6F74737543 && a2 == 0xE600000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

_BYTE *sub_2623FB3B0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

void *sub_2623FB430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2623F9414(sub_2623FB500, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2623FB498(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2623FB4EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2623F4694(a1, a2);
  }

  return a1;
}

uint64_t sub_2623FB53C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C818, &qword_262464C48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623FC6D4();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1 || (sub_26240A094() & 1) != 0)
      {
        switch(v13)
        {
          case 1:
          case 2:
            sub_2623F3CA4(a1, v36);
            v23 = sub_262404BD4(v36);
            a2[3] = &type metadata for StringField;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            a2[4] = sub_262404F94();
            v31 = swift_allocObject();
            *a2 = v31;
            v31[2] = v24;
            v31[3] = v26;
            v31[4] = v28;
            v31[5] = v30;
            return (*(v6 + 8))(v9, v5);
          case 3:
          case 4:
          case 5:
          case 6:
            sub_2623F3CA4(a1, v36);
            a2[3] = type metadata accessor for StringRule();
            a2[4] = sub_262406384(&qword_27FF0C8E0, type metadata accessor for StringRule);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_2623FBF38(v36, boxed_opaque_existential_1);
            return (*(v6 + 8))(v9, v5);
          case 7:
            LOBYTE(v36[0]) = 7;
            a2[3] = &type metadata for StringRegexExtractor;
            a2[4] = sub_2624044C4();
            *a2 = swift_allocObject();
            sub_262404518();
            sub_262462BB8();
            return (*(v6 + 8))(v9, v5);
          case 8:
            LOBYTE(v36[0]) = 8;
            a2[3] = &type metadata for StringJSONExtractor;
            a2[4] = sub_26240441C();
            *a2 = swift_allocObject();
            sub_262404470();
            goto LABEL_27;
          case 9:
            LOBYTE(v36[0]) = 9;
            a2[3] = &type metadata for Substring;
            a2[4] = sub_262404374();
            *a2 = swift_allocObject();
            sub_2624043C8();
            goto LABEL_27;
          case 10:
            LOBYTE(v36[0]) = 10;
            a2[3] = &type metadata for CharAt;
            a2[4] = sub_2624042CC();
            *a2 = swift_allocObject();
            sub_262404320();
            goto LABEL_27;
          case 11:
            LOBYTE(v36[0]) = 11;
            a2[3] = &type metadata for StringListGetIndex;
            a2[4] = sub_2624041E4();
            *a2 = swift_allocObject();
            sub_262404278();
            goto LABEL_27;
          case 12:
            LOBYTE(v36[0]) = 12;
            a2[3] = &type metadata for StringListJoin;
            a2[4] = sub_26240413C();
            *a2 = swift_allocObject();
            sub_262404190();
            goto LABEL_27;
          case 13:
            LOBYTE(v36[0]) = 13;
            a2[3] = &type metadata for StringReplaceFailure;
            a2[4] = sub_262404094();
            *a2 = swift_allocObject();
            sub_2624040E8();
            goto LABEL_27;
          case 14:
            LOBYTE(v36[0]) = 14;
            a2[3] = &type metadata for StringMatchCase;
            a2[4] = sub_262403FEC();
            *a2 = swift_allocObject();
            sub_262404040();
            goto LABEL_27;
          case 15:
            LOBYTE(v36[0]) = 15;
            a2[3] = &type metadata for NumberToString;
            a2[4] = sub_262403F44();
            *a2 = swift_allocObject();
            sub_262403F98();
            goto LABEL_27;
          case 16:
            LOBYTE(v36[0]) = 16;
            a2[3] = &type metadata for LabelBoolean;
            a2[4] = sub_262403E9C();
            *a2 = swift_allocObject();
            sub_262403EF0();
            goto LABEL_27;
          case 17:
            LOBYTE(v36[0]) = 17;
            a2[3] = &type metadata for LabelString;
            a2[4] = sub_262403DB4();
            *a2 = swift_allocObject();
            sub_262403E48();
            goto LABEL_27;
          case 18:
            LOBYTE(v36[0]) = 18;
            a2[3] = &type metadata for LabelNumber;
            a2[4] = sub_262403D0C();
            *a2 = swift_allocObject();
            sub_262403D60();
LABEL_27:
            sub_262462BB8();
            return (*(v6 + 8))(v9, v5);
          default:
            sub_2623F3CA4(a1, v36);
            v32 = sub_262404894(v36);
            v34 = v33;
            a2[3] = &type metadata for StringValue;
            a2[4] = sub_262404FE8();
            *a2 = v32;
            a2[1] = v34;
            return (*(v6 + 8))(v9, v5);
        }
      }
    }

    else
    {
    }

    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_262462D78();
    v18 = sub_262427A60(v17);
    v20 = v19;

    sub_2623F1BBC();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0xD000000000000010;
    *(v21 + 24) = 0x8000000262464BF0;
    v22 = v36[1];
    *(v21 + 32) = v36[0];
    *(v21 + 48) = v22;
    *(v21 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_2623FBC44(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6D614E646C656966;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C615673656C7572;
      break;
    case 6:
      result = 0x6369676F6CLL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6E69727473627553;
      break;
    case 10:
      result = 0x744172616843;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x694C676E69727453;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x614D676E69727453;
      break;
    case 15:
      result = 0x6F547265626D754ELL;
      break;
    case 16:
      result = 0x6F6F426C6562614CLL;
      break;
    case 17:
      result = 0x7274536C6562614CLL;
      break;
    case 18:
      result = 0x6D754E6C6562614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2623FBE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262406A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2623FBEC0(uint64_t a1)
{
  v2 = sub_2623FC6D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FBEFC(uint64_t a1)
{
  v2 = sub_2623FC6D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FBF38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = sub_262462A88();
  v37 = *(v41 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - v7;
  v38 = type metadata accessor for RulesValidity();
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C908, &qword_262464C78);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v15 = type metadata accessor for StringRule();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262405160();
  v20 = v43;
  sub_262462D88();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v10;
  v43 = v15;
  LOBYTE(v45[0]) = 0;
  *v18 = sub_262462B88();
  *(v18 + 1) = v22;
  v33[2] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C8F8, &qword_262464C60);
  LOBYTE(v44[0]) = 1;
  sub_2624050E4();
  sub_262462BB8();
  *(v18 + 1) = v45[0];
  LOBYTE(v45[0]) = 2;
  sub_262406384(&qword_2813BDBE8, type metadata accessor for RulesValidity);
  v23 = v38;
  v24 = v39;
  sub_262462B78();
  v25 = v43;
  v33[1] = 0;
  v41 = v14;
  v26 = v36 + 48;
  v27 = *(v36 + 48);
  if (v27(v24, 1, v23) == 1)
  {
    v36 = v26;
    v28 = v34;
    *v34 = 0;
    swift_storeEnumTagMultiPayload();
    v29 = v27(v24, 1, v23);
    v30 = v35;
    v31 = a1;
    if (v29 != 1)
    {
      sub_2623F39E0(v24, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v28 = v34;
    sub_2623F2530(v24, v34);
    v30 = v35;
    v31 = a1;
  }

  sub_2623F2530(v28, &v18[*(v25 + 24)]);
  v46 = 3;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v45, v44);
  v32 = v42;
  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v32 + 8))(v41, v11);
  sub_2623EB668(v45, &v18[*(v25 + 28)]);
  sub_2624051B4(v18, v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_262405218(v18, type metadata accessor for StringRule);
}

unint64_t sub_2623FC6D4()
{
  result = qword_2813BD798;
  if (!qword_2813BD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD798);
  }

  return result;
}

uint64_t sub_2623FC728(uint64_t a1)
{
  v2 = sub_26240503C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FC764(uint64_t a1)
{
  v2 = sub_26240503C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FC7A0(void *a1)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2623FC7D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262404894(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2623FC804(uint64_t a1)
{
  v2 = sub_262405090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FC840(uint64_t a1)
{
  v2 = sub_262405090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a5)
  {
    *&v35 = a4;
    *(&v35 + 1) = a5;
    swift_bridgeObjectRetain_n();

    sub_2624629E8();
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));

    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v41, &v38);
      if (*(&v39 + 1))
      {
        v43 = v38;
        v44 = v39;
        v14 = v40;
        goto LABEL_15;
      }

      sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v15 = a2;
      *(v15 + 8) = a3;
      v16 = v37;
      v17 = v36;
      *(v15 + 16) = v35;
      *(v15 + 32) = v17;
      *(v15 + 48) = v16;
      *(v15 + 64) = 6;
      swift_willThrow();
LABEL_26:

      sub_2623F39E0(v41, &qword_27FF0C5F0, &qword_262463A90);
      return v6;
    }
  }

  v10 = sub_2624414FC(a2, a3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v10, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v12 = sub_262462918();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v12 != v13)
  {
    sub_2623F3970(&v38, &v35);
    if (*(&v36 + 1))
    {
      sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
      v43 = v35;
      v44 = v36;
      v14 = v37;
      goto LABEL_15;
    }

    sub_2623F39E0(&v35, &qword_27FF0C5F0, &qword_262463A90);
  }

  sub_2623F3970(v41, &v32);
  if (!*(&v33 + 1))
  {
    sub_2623F39E0(&v32, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v28 = a2;
    *(v28 + 8) = a3;
    v29 = v37;
    v30 = v36;
    *(v28 + 16) = v35;
    *(v28 + 32) = v30;
    *(v28 + 48) = v29;
    *(v28 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_26;
  }

  sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
  v43 = v32;
  v44 = v33;
  v14 = v34;
LABEL_15:
  v45 = v14;
  sub_2623F39E0(v41, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v43, &v35);
  v18 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {

    sub_2623F3A9C(&v43);
    v6 = *&v41[0];
  }

  else
  {
    v19 = sub_2624629D8();
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20 && (v21 = v20, [v20 type] == 3))
    {

      v22 = [v21 stringValue];
      v6 = sub_2624626E8();
    }

    else
    {

      if (!a5)
      {
        *&v35 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6C0, &unk_262463D80);
        v23 = sub_262462728();
        v25 = v24;
        sub_2623F1BBC();
        swift_allocError();
        *v26 = a2;
        *(v26 + 8) = a3;
        *(v26 + 16) = v23;
        *(v26 + 24) = v25;
        v27 = v36;
        *(v26 + 32) = v35;
        *(v26 + 48) = v27;
        *(v26 + 64) = 7;
        swift_willThrow();
        sub_2623F3A9C(&v43);
        return v6;
      }
    }

    sub_2623F3A9C(&v43);
  }

  return v6;
}

uint64_t sub_2623FCD08(uint64_t *a1, uint64_t a2)
{
  v6 = sub_2623FC87C(a2, *v2, v2[1], v2[2], v2[3]);
  result = v7;
  if (!v3)
  {
    *a1 = v6;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2623FCD4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262404BD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2623FCD7C(uint64_t a1)
{
  v2 = sub_262405160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FCDB8(uint64_t a1)
{
  v2 = sub_262405160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FCDF4(uint64_t a1)
{
  v4 = type metadata accessor for StringRule();
  sub_2623F3CA4(v1 + *(v4 + 28), &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240C0D4(&v7, a1, *v1, v1[1], v1[2], v1[3], v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7;
    }
  }

  else
  {

    return 0;
  }

  return result;
}