uint64_t sub_2685FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = a4[14], v12 = *(a1 + 24), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 32) + 16) || (v14 = a4[35], v15 = sub_2686167FC(), v16 = , v14(v16, 2, &type metadata for Google_Protobuf_EnumValueDescriptorProto, v15, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(a1 + 40))
      {
        goto LABEL_7;
      }

      v17 = *(a1 + 72);
      v18 = *(a1 + 64);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = v18;
      v29 = v17;
      v19 = a4[17];
      v20 = sub_268614AE8();
      result = v19(&v26, 3, &type metadata for Google_Protobuf_EnumOptions, v20, a3, a4);
      if (!v5)
      {
LABEL_7:
        swift_beginAccess();
        if (!*(*(a1 + 80) + 16) || (v21 = a4[35], v22 = sub_268616654(), v23 = , v21(v23, 4, &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange, v22, a3, a4), result = , !v5))
        {
          result = swift_beginAccess();
          if (*(*(a1 + 88) + 16))
          {
            v24 = a4[32];

            v24(v25, 5, a3, a4);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685FC864(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v6)
  {
LABEL_23:
    v38 = 0;
    return v38 & 1;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  swift_beginAccess();
  v9 = *(a2 + 32);

  v10 = sub_2686123CC(v8, v9, sub_2685FE460);

  if ((v10 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  v16 = v11;
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 64);
  v44 = *(a2 + 56);
  v20 = *(a2 + 72);
  if (!v16)
  {
    v42 = *(a2 + 48);
    v25 = v12;
    v26 = v12;
    v27 = v13;
    sub_268601C34(0, v26, v13);
    v28 = v17;
    v29 = v25;
    if (!v28)
    {
      sub_268601C34(0, v42, v44);
      sub_268601C90(0, v25, v13);
      goto LABEL_20;
    }

    v40 = v28;
    v30 = v42;
    sub_268601C34(v28, v42, v44);
    v31 = v44;

    v32 = 0;
    goto LABEL_18;
  }

  v51 = v16;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v55 = v15;
  if (!v17)
  {
    v40 = 0;
    v43 = v18;
    v32 = v16;
    v29 = v12;
    v33 = v12;
    v27 = v13;
    sub_268601C34(v16, v33, v13);
    v31 = v44;
    sub_268601C34(0, v43, v44);
    sub_268601C34(v32, v29, v13);
    sub_268601C34(0, v43, v44);
    sub_268601C34(v32, v29, v13);

    v30 = v43;

    sub_268601C90(0, v43, v44);
    sub_268601C90(v32, v29, v13);

    sub_2685B593C(v29, v13);

LABEL_18:
    sub_268601C90(v32, v29, v27);
    sub_268601C90(v40, v30, v31);
    goto LABEL_23;
  }

  v46 = v17;
  v47 = v18;
  v48 = v44;
  v49 = v19;
  v50 = v20;
  v41 = v16;
  sub_268601C34(v16, v12, v13);
  sub_268601C34(v17, v18, v44);
  sub_268601C34(v41, v12, v13);
  v45 = _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV2eeoiySbAC_ACtFZ_0(&v51, &v46);
  v21 = v47;
  v22 = v48;

  sub_2685B593C(v21, v22);

  v23 = v52;
  v24 = v53;

  sub_2685B593C(v23, v24);

  sub_268601C90(v41, v12, v13);
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  swift_beginAccess();
  v34 = *(a1 + 80);
  swift_beginAccess();
  v35 = *(a2 + 80);

  v36 = sub_268611F48(v34, v35);

  if ((v36 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v37 = *(a1 + 88);
  swift_beginAccess();
  v38 = sub_26860EBDC(v37, *(a2 + 88));

  return v38 & 1;
}

uint64_t sub_2685FCE24@<X0>(void *a1@<X8>)
{
  if (qword_28028BCC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C588;
  v2 = qword_28028C590;
  v3 = unk_28028C598;
  *a1 = qword_28028C580;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FCF44()
{
  result = MEMORY[0x26D61D4B0](0xD000000000000012, 0x8000000268695410);
  qword_28028C5A8 = 0xD000000000000023;
  unk_28028C5B0 = 0x8000000268694980;
  return result;
}

uint64_t static Google_Protobuf_EnumDescriptorProto.EnumReservedRange._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5C0;
  v2 = qword_28028C5C8;
  v3 = unk_28028C5D0;
  *a1 = qword_28028C5B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FD090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 80))(v3 + 16, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 80))(v3 + 24, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685FD154(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x100000000) == 0)
  {
    v8 = a4;
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](v8);
  }

  if ((a5 & 0x100000000) == 0)
  {
    MEMORY[0x26D61D8F0](2);
    result = MEMORY[0x26D61D920](a5);
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return result;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
LABEL_12:
    if (v11 == v12)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v10)
  {
    v11 = a2;
    v12 = a2 >> 32;
    goto LABEL_12;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685FD214(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if ((a4 & 0x100000000) == 0)
  {
    v9 = a5;
    result = sub_2686440C0(a4, 1);
    if (v5)
    {
      return result;
    }

    a5 = v9;
  }

  if ((a5 & 0x100000000) != 0 || (result = sub_2686440C0(a5, 2), !v5))
  {
    v10 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v10 != 2)
      {
        return result;
      }

      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = a2;
      v12 = a2 >> 32;
    }

    if (v11 == v12)
    {
      return result;
    }

LABEL_14:
    if (*(v8 + 64) == 1)
    {
      return sub_26863B108(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685FD2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  v11 = *(v3 + 28);
  if ((*(v3 + 20) & 1) != 0 || (result = (*(a3 + 24))(*(v3 + 16), 1, a2, a3), !v4))
  {
    if ((v11 & 1) != 0 || (result = (*(a3 + 24))(v10, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v8, v9);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v8, v9);
    }
  }

  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV13ReservedRangeV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v6 = *(v0 + 28);
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  sub_2685FD154(&v8, v1, v2, v3 | (v4 << 32), v5 | (v6 << 32));
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v13 = v8;
  v14 = v9;
  return sub_268689EF4();
}

uint64_t sub_2685FD4AC@<X0>(void *a1@<X8>)
{
  if (qword_28028BCD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5C0;
  v2 = qword_28028C5C8;
  v3 = unk_28028C5D0;
  *a1 = qword_28028C5B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

__n128 sub_2685FD5A0(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 20);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  v17 = *(a1 + 8);
  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  sub_2685FD154(&v13, v3, v4, v5 | (v6 << 32), v7 | (v8 << 32));
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_2685FD644()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v6 = *(v0 + 28);
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  sub_2685FD154(&v8, v1, v2, v3 | (v4 << 32), v5 | (v6 << 32));
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v13 = v8;
  v14 = v9;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_EnumValueDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5E0;
  v2 = qword_28028C5E8;
  v3 = unk_28028C5F0;
  *a1 = qword_28028C5D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FD7D0(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 36) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 40) = 0u;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  LOBYTE(v4) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 36) = v4;
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);

  sub_268601C34(v6, v7, v8);

  swift_beginAccess();
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  *(v1 + 64) = v9;
  v15 = *(v1 + 72);
  *(v1 + 72) = v10;
  sub_268601C90(v11, v12, v13);
  return v1;
}

uint64_t sub_2685FD938()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_268601C90(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.isInitialized.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 1;
  }

  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v19[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v18 = v3;
    v7 = sub_2685F0E50(v2);
    result = v7 + 32;
    v9 = -*(v7 + 16);
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {

        sub_268601C90(v2, v4, v18);
        return 1;
      }

      if (++v10 >= *(v7 + 16))
      {
        break;
      }

      v11 = result + 40;
      sub_2685B1724(result, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = (*(v13 + 32))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = v11;
      if ((v14 & 1) == 0)
      {

        v15 = v2;
        v16 = v4;
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v2;
    v16 = v4;
    v17 = v3;
LABEL_9:
    sub_268601C90(v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t sub_2685FDB14(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v19[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v18 = v3;
    v7 = sub_2685F0E50(v2);
    result = v7 + 32;
    v9 = -*(v7 + 16);
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {

        sub_268601C90(v2, v4, v18);
        return 1;
      }

      if (++v10 >= *(v7 + 16))
      {
        break;
      }

      v11 = result + 40;
      sub_2685B1724(result, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = (*(v13 + 32))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = v11;
      if ((v14 & 1) == 0)
      {

        v15 = v2;
        v16 = v4;
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v2;
    v16 = v4;
    v17 = v3;
LABEL_9:
    sub_268601C90(v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t sub_2685FDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        swift_beginAccess();
        v11 = *(a4 + 408);
        v12 = sub_268614B3C();
        v11(a1 + 40, &type metadata for Google_Protobuf_EnumValueOptions, v12, a3, a4);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 344))(a1 + 16, a3, a4);
        goto LABEL_5;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    (*(a4 + 80))(a1 + 32, a3, a4);
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685FDEC8(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) == 0)
  {
    v6 = *(a1 + 32);
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v6);
  }

  result = swift_beginAccess();
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    MEMORY[0x26D61D8F0](3);
    v13 = a2[3];
    v23 = a2[2];
    v24 = v13;
    v25 = *(a2 + 8);
    v14 = a2[1];
    v21 = *a2;
    v22 = v14;
    if (v12 != 2)
    {
      MEMORY[0x26D61D8F0](1);
      sub_268689EB4();
    }

    v15 = *(v8 + 16);

    sub_2685BA80C(v9, v10);

    if (v15 && (sub_2685DA980(v8, 999), v2) || (sub_2685DC564(&v21, 1000, 0x20000000, v11), v2))
    {
      MEMORY[0x26D61DC90](v2);
LABEL_12:
      result = sub_268601C90(v8, v9, v10);
      v16 = v24;
      a2[2] = v23;
      a2[3] = v16;
      *(a2 + 8) = v25;
      v17 = v22;
      *a2 = v21;
      a2[1] = v17;
      return result;
    }

    v18 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_12;
      }

      v19 = *(v9 + 16);
      v20 = *(v9 + 24);
    }

    else
    {
      if (!v18)
      {
        if ((v10 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

      v19 = v9;
      v20 = v9 >> 32;
    }

    if (v19 == v20)
    {
      goto LABEL_12;
    }

LABEL_22:
    sub_268689844();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2685FE0EC(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) != 0 || (result = sub_2686440C0(*(a1 + 32), 2), !v2))
  {
    result = swift_beginAccess();
    v14 = *(a1 + 40);
    if (v14)
    {
      v16 = *(a1 + 56);
      v15 = *(a1 + 64);
      v17 = *(a1 + 48);
      v18[0] = *(a1 + 40);
      v18[1] = v17;
      v18[2] = v16;
      v18[3] = v15;
      v19 = *(a1 + 72);

      sub_2685BA80C(v17, v16);

      sub_2686736C0(v18, 3);
      return sub_268601C90(v14, v17, v16);
    }
  }

  return result;
}

uint64_t sub_2685FE2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = *(a4 + 112), v12 = *(a1 + 24), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if ((*(a1 + 36) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 32), 2, a3, a4), !v5))
    {
      result = swift_beginAccess();
      if (*(a1 + 40))
      {
        v14 = *(a1 + 72);
        v15 = *(a1 + 64);
        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = v15;
        v21 = v14;
        v16 = *(a4 + 136);
        v17 = sub_268614B3C();
        return v16(&v18, 3, &type metadata for Google_Protobuf_EnumValueOptions, v17, a3, a4);
      }
    }
  }

  return result;
}

BOOL sub_2685FE460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  v10 = *(a2 + 36);
  if (v9)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v8 != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v19 = *(a2 + 56);
  v18 = *(a2 + 64);
  v20 = *(a2 + 72);
  if (v12)
  {
    v32 = v12;
    v33 = v11;
    v34 = v14;
    v35 = v13;
    v36 = v15;
    if (v17)
    {
      v27 = v17;
      v28 = v16;
      v29 = v19;
      v30 = v18;
      v31 = v20;
      sub_268601C34(v12, v11, v14);
      sub_268601C34(v17, v16, v19);
      sub_268601C34(v12, v11, v14);
      v21 = sub_268613CA8(&v32, &v27);
      v22 = v28;
      v23 = v29;

      sub_2685B593C(v22, v23);

      v24 = v33;
      v25 = v34;

      sub_2685B593C(v24, v25);

      sub_268601C90(v12, v11, v14);
      return (v21 & 1) != 0;
    }

    sub_268601C34(v12, v11, v14);
    sub_268601C34(0, v16, v19);
    sub_268601C34(v12, v11, v14);

    sub_2685B593C(v11, v14);

LABEL_23:
    sub_268601C90(v12, v11, v14);
    sub_268601C90(v17, v16, v19);
    return 0;
  }

  sub_268601C34(0, v11, v14);
  if (v17)
  {
    sub_268601C34(v17, v16, v19);
    goto LABEL_23;
  }

  sub_268601C34(0, v16, v19);
  sub_268601C90(0, v11, v14);
  return 1;
}

uint64_t sub_2685FE810@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5E0;
  v2 = qword_28028C5E8;
  v3 = unk_28028C5F0;
  *a1 = qword_28028C5D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_ServiceDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C600;
  v2 = qword_28028C608;
  v3 = unk_28028C610;
  *a1 = qword_28028C5F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685FE9FC()
{
  type metadata accessor for Google_Protobuf_ServiceDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  qword_28028C618 = v0;
  return result;
}

uint64_t sub_2685FEA4C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 40) = 0u;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;

  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  sub_268601C34(v6, v7, v8);

  swift_beginAccess();
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  *(v1 + 64) = v9;
  v15 = *(v1 + 72);
  *(v1 + 72) = v10;
  sub_268601C90(v11, v12, v13);
  return v1;
}

uint64_t sub_2685FEBAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_268601C90(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2685FEC04(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);

  v4 = sub_2685F10F0(v3, &type metadata for Google_Protobuf_MethodDescriptorProto, sub_268616B4C);

  result = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (v6 + v7 != -1)
  {
    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v8 = result + 40;
    sub_2685B1724(result, v28);
    v9 = v29;
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v11 = (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = v8;
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  if (!v12)
  {
    return 1;
  }

  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v28[0] = v15;

  sub_2685BA80C(v14, v13);

  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    v24 = v12;
    v25 = v14;
    v26 = v13;
LABEL_15:
    sub_268601C90(v24, v25, v26);
    return 0;
  }

  v27 = v13;
  v17 = sub_2685F0E50(v12);
  result = v17 + 32;
  v18 = -*(v17 + 16);
  v19 = -1;
  while (v18 + v19 != -1)
  {
    if (++v19 >= *(v17 + 16))
    {
      goto LABEL_20;
    }

    v20 = result + 40;
    sub_2685B1724(result, v28);
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v23 = (*(v22 + 32))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = v20;
    if ((v23 & 1) == 0)
    {

      v24 = v12;
      v25 = v14;
      v26 = v27;
      goto LABEL_15;
    }
  }

  sub_268601C90(v12, v14, v27);
  return 1;
}

uint64_t sub_2685FEEDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + 16);
    a4(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + 16) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_2685FEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        swift_beginAccess();
        v13 = *(a4 + 408);
        v14 = sub_268614B90();
        v13(a1 + 40, &type metadata for Google_Protobuf_ServiceOptions, v14, a3, a4);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 344))(a1 + 16, a3, a4);
        goto LABEL_5;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    v11 = *(a4 + 416);
    v12 = sub_268616B4C();
    v11(a1 + 32, &type metadata for Google_Protobuf_MethodDescriptorProto, v12, a3, a4);
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685FF178(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v6 = *(a1 + 32), v7 = , sub_2685DBA60(v7, 2, sub_2686005E4), result = , !v2))
  {
    result = swift_beginAccess();
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      MEMORY[0x26D61D8F0](3);
      v14 = a2[3];
      v24 = a2[2];
      v25 = v14;
      v26 = *(a2 + 8);
      v15 = a2[1];
      v22 = *a2;
      v23 = v15;
      if (v13 != 2)
      {
        MEMORY[0x26D61D8F0](33);
        sub_268689EB4();
      }

      v16 = *(v9 + 16);

      sub_2685BA80C(v10, v11);

      if (v16 && (sub_2685DA980(v9, 999), v2) || (sub_2685DC564(&v22, 1000, 0x20000000, v12), v2))
      {
        MEMORY[0x26D61DC90](v2);
LABEL_12:
        result = sub_268601C90(v9, v10, v11);
        v17 = v25;
        a2[2] = v24;
        a2[3] = v17;
        *(a2 + 8) = v26;
        v18 = v23;
        *a2 = v22;
        a2[1] = v18;
        return result;
      }

      v19 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_12;
        }

        v20 = *(v10 + 16);
        v21 = *(v10 + 24);
      }

      else
      {
        if (!v19)
        {
          if ((v11 & 0xFF000000000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }

        v20 = v10;
        v21 = v10 >> 32;
      }

      if (v20 == v21)
      {
        goto LABEL_12;
      }

LABEL_22:
      sub_268689844();
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_2685FF3C4(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v13 = *(a1 + 32), v14 = , sub_268677074(v14, 2), result = , !v2))
  {
    result = swift_beginAccess();
    v16 = *(a1 + 40);
    if (v16)
    {
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      v19 = *(a1 + 48);
      v20[0] = *(a1 + 40);
      v20[1] = v19;
      v20[2] = v18;
      v20[3] = v17;
      v21 = *(a1 + 72);

      sub_2685BA80C(v19, v18);

      sub_268672ACC(v20, 3);
      return sub_268601C90(v16, v19, v18);
    }
  }

  return result;
}

uint64_t sub_2685FF5A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = a4[14], v12 = *(a1 + 24), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 32) + 16) || (v14 = a4[35], v15 = sub_268616B4C(), v16 = , v14(v16, 2, &type metadata for Google_Protobuf_MethodDescriptorProto, v15, a3, a4), result = , !v5))
    {
      result = swift_beginAccess();
      if (*(a1 + 40))
      {
        v17 = *(a1 + 72);
        v18 = *(a1 + 64);
        v21 = *(a1 + 40);
        v22 = *(a1 + 48);
        v23 = v18;
        v24 = v17;
        v19 = a4[17];
        v20 = sub_268614B90();
        return v19(&v21, 3, &type metadata for Google_Protobuf_ServiceOptions, v20, a3, a4);
      }
    }
  }

  return result;
}

BOOL sub_2685FF76C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  swift_beginAccess();
  v9 = *(a2 + 32);

  v10 = sub_2686123CC(v8, v9, sub_268600F9C);

  if (v10)
  {
    swift_beginAccess();
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    swift_beginAccess();
    v15 = *(a2 + 40);
    v14 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
    if (v12)
    {
      v32 = v12;
      v33 = v11;
      v34 = v13;
      v35 = v25;
      v36 = v26;
      if (v15)
      {
        v27 = v15;
        v28 = v14;
        v29 = v16;
        v30 = v17;
        v31 = v18;
        sub_268601C34(v12, v11, v13);
        sub_268601C34(v15, v14, v16);
        sub_268601C34(v12, v11, v13);
        sub_268601C34(v15, v14, v16);
        sub_268601C34(v12, v11, v13);
        v24 = sub_268613CA8(&v32, &v27);

        sub_268601C90(v15, v14, v16);
        sub_268601C90(v12, v11, v13);
        v19 = v28;
        v20 = v29;

        sub_2685B593C(v19, v20);

        v21 = v33;
        v22 = v34;

        sub_2685B593C(v21, v22);

        sub_268601C90(v12, v11, v13);
        return (v24 & 1) != 0;
      }

      sub_268601C34(v12, v11, v13);
      sub_268601C34(0, v14, v16);
      sub_268601C34(v12, v11, v13);

      sub_2685B593C(v11, v13);
    }

    else
    {
      sub_268601C34(0, v11, v13);
      sub_268601C34(v15, v14, v16);

      if (!v15)
      {
        sub_268601C90(0, v11, v13);
        return 1;
      }
    }

    sub_268601C90(v12, v11, v13);
    sub_268601C90(v15, v14, v16);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2685FFC28@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C600;
  v2 = qword_28028C608;
  v3 = unk_28028C610;
  *a1 = qword_28028C5F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_MethodDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C628;
  v2 = qword_28028C630;
  v3 = unk_28028C638;
  *a1 = qword_28028C620;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FFE14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_268601C90(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_MethodDescriptorProto.isInitialized.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (!v2)
  {
    return 1;
  }

  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v19[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v18 = v3;
    v7 = sub_2685F0E50(v2);
    result = v7 + 32;
    v9 = -*(v7 + 16);
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {

        sub_268601C90(v2, v4, v18);
        return 1;
      }

      if (++v10 >= *(v7 + 16))
      {
        break;
      }

      v11 = result + 40;
      sub_2685B1724(result, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = (*(v13 + 32))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = v11;
      if ((v14 & 1) == 0)
      {

        v15 = v2;
        v16 = v4;
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v2;
    v16 = v4;
    v17 = v3;
LABEL_9:
    sub_268601C90(v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t sub_268600000(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v19[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v18 = v3;
    v7 = sub_2685F0E50(v2);
    result = v7 + 32;
    v9 = -*(v7 + 16);
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {

        sub_268601C90(v2, v4, v18);
        return 1;
      }

      if (++v10 >= *(v7 + 16))
      {
        break;
      }

      v11 = result + 40;
      sub_2685B1724(result, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = (*(v13 + 32))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = v11;
      if ((v14 & 1) == 0)
      {

        v15 = v2;
        v16 = v4;
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v2;
    v16 = v4;
    v17 = v3;
LABEL_9:
    sub_268601C90(v15, v16, v17);
    return 0;
  }

  return result;
}

BOOL Google_Protobuf_MethodOptions.isInitialized.getter()
{
  v1 = *v0;
  v5 = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  v3 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v2);

  return v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + 16);
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v12 = sub_2686145F0(v11);

    *(v4 + 16) = v12;
    v10 = v12;
  }

  return sub_2686002A0(v10, a1, a2, a3);
}

uint64_t sub_2686002A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            swift_beginAccess();
            v15 = *(a4 + 408);
            v14 = sub_268614BE4();
            v15(a1 + 64, &type metadata for Google_Protobuf_MethodOptions, v14, a3, a4);
            swift_endAccess();
            break;
          case 5:
            swift_beginAccess();
            (*(a4 + 320))(a1 + 98, a3, a4);
            goto LABEL_6;
          case 6:
            swift_beginAccess();
            (*(a4 + 320))(a1 + 99, a3, a4);
            swift_endAccess();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 16;
LABEL_5:
            v4 = v11;
            v12(v13, a3, a4);
LABEL_6:
            swift_endAccess();
            break;
          case 2:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 32;
            goto LABEL_5;
          case 3:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 48;
            goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_268600544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *v4;
  v9 = v4[1];
  result = a4(v4[2], a1, a2, a3);
  if (!v5)
  {
    sub_2685BA80C(v10, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v10, v9);
  }

  return result;
}

uint64_t sub_2686005E4(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    v6 = *(a1 + 32);
    MEMORY[0x26D61D8F0](2);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 56))
  {
    v7 = *(a1 + 48);
    MEMORY[0x26D61D8F0](3);

    sub_268689A24();
  }

  swift_beginAccess();
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 72);
    v21 = *(a1 + 80);
    v27 = *(a1 + 88);
    v10 = *(a1 + 96);
    v11 = *(a1 + 96);
    MEMORY[0x26D61D8F0](4);
    v12 = a2[3];
    v24 = a2[2];
    v25 = v12;
    v26 = *(a2 + 8);
    v13 = a2[1];
    v22 = *a2;
    v23 = v13;
    if (v11 != 2)
    {
      MEMORY[0x26D61D8F0](33);
      sub_268689EB4();
    }

    if ((v10 >> 8) != 3)
    {
      MEMORY[0x26D61D8F0](34);
      MEMORY[0x26D61D8F0](v10 >> 8);
    }

    v14 = *(v8 + 16);

    sub_2685BA80C(v9, v21);

    if (v14 && (sub_2685DA980(v8, 999), v2) || (sub_2685DC564(&v22, 1000, 0x20000000, v27), v2))
    {
      MEMORY[0x26D61DC90](v2);
LABEL_16:
      sub_268601C90(v8, v9, v21);
      v15 = v25;
      a2[2] = v24;
      a2[3] = v15;
      *(a2 + 8) = v26;
      v16 = v23;
      *a2 = v22;
      a2[1] = v16;
      goto LABEL_17;
    }

    v18 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_16;
      }

      v19 = *(v9 + 16);
      v20 = *(v9 + 24);
    }

    else
    {
      if (!v18)
      {
        if ((v21 & 0xFF000000000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      v19 = v9;
      v20 = v9 >> 32;
    }

    if (v19 == v20)
    {
      goto LABEL_16;
    }

LABEL_30:
    sub_268689844();
    goto LABEL_16;
  }

LABEL_17:
  swift_beginAccess();
  if (*(a1 + 98) != 2)
  {
    MEMORY[0x26D61D8F0](5);
    sub_268689EB4();
  }

  result = swift_beginAccess();
  if (*(a1 + 99) != 2)
  {
    MEMORY[0x26D61D8F0](6);
    return sub_268689EB4();
  }

  return result;
}

uint64_t sub_268600918(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);

    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v16);
    sub_2685B43A4(v14, v13);

    v17 = *a2;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
      *a2 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
      *a2 = v17;
    }

    *(v17 + 2) = v20 + 1;
    v17[v20 + 32] = 10;
  }

  swift_beginAccess();
  v21 = *(a1 + 56);
  if (v21)
  {
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);

    sub_2685B301C(3);
    sub_2685B403C(": ", 2, v24);
    sub_2685B43A4(v22, v21);

    v25 = *a2;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_2685B3F48(0, *(v25 + 2) + 1, 1, v25);
      *a2 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
      *a2 = v25;
    }

    *(v25 + 2) = v28 + 1;
    v25[v28 + 32] = 10;
  }

  swift_beginAccess();
  v29 = *(a1 + 64);
  if (!v29)
  {
    goto LABEL_21;
  }

  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  v32 = *(a1 + 72);
  v33 = *(a1 + 96);
  v37[0] = *(a1 + 64);
  v37[1] = v32;
  v37[2] = v31;
  v37[3] = v30;
  v38 = v33;

  sub_2685BA80C(v32, v31);

  sub_268672F00(v37, 4);
  result = sub_268601C90(v29, v32, v31);
  if (!v2)
  {
LABEL_21:
    swift_beginAccess();
    v35 = *(a1 + 98);
    if (v35 == 2 || (result = sub_2685B33F4(v35 & 1, 5), !v2))
    {
      result = swift_beginAccess();
      v36 = *(a1 + 99);
      if (v36 != 2)
      {
        return sub_2685B33F4(v36 & 1, 6);
      }
    }
  }

  return result;
}

uint64_t sub_268600CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = *(a4 + 112), v12 = *(a1 + 24), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    v14 = *(a1 + 40);
    if (!v14 || (v15 = *(a1 + 32), v16 = *(a4 + 112), v17 = *(a1 + 40), , v16(v15, v14, 2, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      v18 = *(a1 + 56);
      if (!v18 || (v19 = *(a1 + 48), v20 = *(a4 + 112), v21 = *(a1 + 56), , v20(v19, v18, 3, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        if (!*(a1 + 64))
        {
          goto LABEL_9;
        }

        v22 = *(a1 + 96);
        v23 = *(a1 + 88);
        v28 = *(a1 + 64);
        v29 = *(a1 + 72);
        v30 = v23;
        v31 = v22;
        v24 = *(a4 + 136);
        v25 = sub_268614BE4();
        result = v24(&v28, 4, &type metadata for Google_Protobuf_MethodOptions, v25, a3, a4);
        if (!v5)
        {
LABEL_9:
          swift_beginAccess();
          v26 = *(a1 + 98);
          if (v26 == 2 || (result = (*(a4 + 104))(v26 & 1, 5, a3, a4), !v5))
          {
            result = swift_beginAccess();
            v27 = *(a1 + 99);
            if (v27 != 2)
            {
              return (*(a4 + 104))(v27 & 1, 6, a3, a4);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268600F9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_beginAccess();
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10 || (v8 != *(a2 + 32) || v9 != v10) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  swift_beginAccess();
  v13 = *(a2 + 56);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v13 || (v11 != *(a2 + 48) || v12 != v13) && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  swift_beginAccess();
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  v18 = *(a1 + 96);
  swift_beginAccess();
  v20 = *(a2 + 64);
  v19 = *(a2 + 72);
  v37 = *(a2 + 80);
  v38 = *(a2 + 88);
  v21 = *(a2 + 96);
  if (!v14)
  {
    if (!v20)
    {

      sub_268601C34(0, v15, v17);
      sub_268601C34(0, v19, v37);
      sub_268601C90(0, v15, v17);
      goto LABEL_33;
    }

    v27 = v15;
    sub_268601C34(0, v15, v17);
    v28 = v19;
    v29 = v19;
    v30 = v37;
    sub_268601C34(v20, v29, v37);
    goto LABEL_31;
  }

  v45 = v14;
  v46 = v15;
  v47 = v17;
  v48 = v16;
  v49 = v18;
  if (!v20)
  {
    v27 = v15;
    sub_268601C34(v14, v15, v17);
    v28 = v19;
    v31 = v19;
    v30 = v37;
    sub_268601C34(0, v31, v37);
    sub_268601C34(v14, v27, v17);

    sub_2685B593C(v27, v17);

LABEL_31:
    sub_268601C90(v14, v27, v17);
    sub_268601C90(v20, v28, v30);
    return 0;
  }

  v40 = v20;
  v41 = v19;
  v42 = v37;
  v43 = v38;
  v44 = v21;

  v22 = v15;
  sub_268601C34(v14, v15, v17);
  sub_268601C34(v20, v19, v37);
  sub_268601C34(v14, v15, v17);
  v39 = _s20SiriOntologyProtobuf07Google_C14_MethodOptionsV2eeoiySbAC_ACtFZ_0(&v45, &v40);
  v23 = v41;
  v24 = v42;

  sub_2685B593C(v23, v24);

  v25 = v46;
  v26 = v47;

  sub_2685B593C(v25, v26);

  sub_268601C90(v14, v22, v17);
  if ((v39 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  swift_beginAccess();
  v32 = *(a1 + 98);
  swift_beginAccess();
  v33 = *(a2 + 98);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
LABEL_38:

      return 0;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v35 = *(a1 + 99);

  swift_beginAccess();
  v36 = *(a2 + 99);

  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2686014AC(void (*a1)(uint64_t, __int128 *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a1(v5, &v10);
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_2;
    }

    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v8 = v3;
    v9 = v3 >> 32;
  }

  if (v8 != v9)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_2:
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t sub_2686015CC@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  *a2 = xmmword_26868A5E0;
  a1(0);
  result = swift_initStaticObject();
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_268601668@<X0>(void *a1@<X8>)
{
  if (qword_28028BCF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C628;
  v2 = qword_28028C630;
  v3 = unk_28028C638;
  *a1 = qword_28028C620;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268601728(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(v7, &v9);
  sub_2685C962C(&v9, v5, v6);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

__n128 sub_268601804(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  v17 = *(a1 + 8);
  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  a4(v8, &v13);
  sub_2685C962C(&v13, v7, v6);
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_2686018BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(v8, &v10);
  sub_2685C962C(&v10, v6, v7);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_FileOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C648;
  v2 = qword_28028C650;
  v3 = unk_28028C658;
  *a1 = qword_28028C640;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_268601A78()
{
  type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 50463234;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 33686018;
  *(v0 + 76) = 514;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = MEMORY[0x277D84F90];
  qword_28028C660 = v0;
  return result;
}

uint64_t sub_268601AE8(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_2685BA80C(result, a2);
  }

  return result;
}

uint64_t sub_268601B34(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_2685B593C(result, a2);
  }

  return result;
}

uint64_t sub_268601B80(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_2685BA80C(a2, a3);
  }

  return result;
}

uint64_t sub_268601BC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_268601C34(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    sub_2685BA80C(a2, a3);
  }

  return result;
}

uint64_t sub_268601C90(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_268601EB8(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = 50463234;
  *(v1 + 56) = 0;
  *(v1 + 76) = 514;
  *(v1 + 72) = 33686018;
  *(v1 + 176) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 192) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v7;
  swift_beginAccess();
  v8 = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v8;
  swift_beginAccess();
  v9 = *(a1 + 50);
  swift_beginAccess();
  *(v1 + 50) = v9;
  swift_beginAccess();
  v10 = *(a1 + 51);
  swift_beginAccess();
  *(v1 + 51) = v10;
  swift_beginAccess();
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  swift_beginAccess();
  v13 = *(v1 + 64);
  *(v1 + 56) = v12;
  *(v1 + 64) = v11;

  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v3;
  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v3;
  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v3;
  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 75);
  swift_beginAccess();
  *(v1 + 75) = v3;
  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 76) = v3;
  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 77);
  swift_beginAccess();
  *(v1 + 77) = v3;
  swift_beginAccess();
  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  swift_beginAccess();
  v16 = *(v1 + 88);
  *(v1 + 80) = v15;
  *(v1 + 88) = v14;

  swift_beginAccess();
  v18 = *(a1 + 96);
  v17 = *(a1 + 104);
  swift_beginAccess();
  v19 = *(v1 + 104);
  *(v1 + 96) = v18;
  *(v1 + 104) = v17;

  swift_beginAccess();
  v21 = *(a1 + 112);
  v20 = *(a1 + 120);
  swift_beginAccess();
  v22 = *(v1 + 120);
  *(v1 + 112) = v21;
  *(v1 + 120) = v20;

  swift_beginAccess();
  v24 = *(a1 + 128);
  v23 = *(a1 + 136);
  swift_beginAccess();
  v25 = *(v1 + 136);
  *(v1 + 128) = v24;
  *(v1 + 136) = v23;

  swift_beginAccess();
  v27 = *(a1 + 144);
  v26 = *(a1 + 152);
  swift_beginAccess();
  v28 = *(v1 + 152);
  *(v1 + 144) = v27;
  *(v1 + 152) = v26;

  swift_beginAccess();
  v30 = *(a1 + 160);
  v29 = *(a1 + 168);
  swift_beginAccess();
  v31 = *(v1 + 168);
  *(v1 + 160) = v30;
  *(v1 + 168) = v29;

  swift_beginAccess();
  v33 = *(a1 + 176);
  v32 = *(a1 + 184);
  swift_beginAccess();
  v34 = *(v1 + 184);
  *(v1 + 176) = v33;
  *(v1 + 184) = v32;

  swift_beginAccess();
  v35 = *(a1 + 192);

  swift_beginAccess();
  v36 = *(v1 + 192);
  *(v1 + 192) = v35;

  return v1;
}

void *sub_2686024B4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[24];

  return v0;
}

uint64_t sub_268602524()
{
  sub_2686024B4();

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_FileOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    *(v4 + 24) = sub_268601EB8(v10);
  }

  sub_268602600(v11, a1, v4, a2, a3);
}

uint64_t sub_268602600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  result = v10(a4, a5);
  v13 = v5;
  if (!v5)
  {
    v14 = result;
    while ((v12 & 1) == 0)
    {
      switch(v14)
      {
        case 1:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 16;
          goto LABEL_5;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 12:
        case 13:
        case 14:
        case 15:
        case 19:
        case 21:
        case 22:
        case 24:
        case 25:
        case 26:
        case 28:
        case 29:
        case 30:
        case 32:
        case 33:
        case 34:
        case 35:
        case 38:
        case 43:
          goto LABEL_13;
        case 8:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 32;
          goto LABEL_5;
        case 9:
          swift_beginAccess();
          v21 = *(a5 + 392);
          v22 = sub_2686190A8();
          v17 = v13;
          v21(a1 + 51, &type metadata for Google_Protobuf_FileOptions.OptimizeMode, v22, a4, a5);
          goto LABEL_6;
        case 10:
          swift_beginAccess();
          v17 = v13;
          (*(a5 + 320))(a1 + 48, a4, a5);
          goto LABEL_6;
        case 11:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 56;
          goto LABEL_5;
        case 16:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 72;
          goto LABEL_5;
        case 17:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 73;
          goto LABEL_5;
        case 18:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 74;
          goto LABEL_5;
        case 20:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 49;
          goto LABEL_5;
        case 23:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 76;
          goto LABEL_5;
        case 27:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 50;
          goto LABEL_5;
        case 31:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 77;
          goto LABEL_5;
        case 36:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 80;
          goto LABEL_5;
        case 37:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 96;
          goto LABEL_5;
        case 39:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 112;
          goto LABEL_5;
        case 40:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 128;
          goto LABEL_5;
        case 41:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 144;
          goto LABEL_5;
        case 42:
          swift_beginAccess();
          v15 = *(a5 + 320);
          v16 = a1 + 75;
          goto LABEL_5;
        case 44:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 160;
          goto LABEL_5;
        case 45:
          swift_beginAccess();
          v15 = *(a5 + 344);
          v16 = a1 + 176;
LABEL_5:
          v17 = v13;
          v15(v16, a4, a5);
          goto LABEL_6;
        default:
          if (v14 == 999)
          {
            swift_beginAccess();
            v18 = *(a5 + 416);
            v19 = sub_2686148F0();
            v17 = v13;
            v18(a1 + 192, &type metadata for Google_Protobuf_UninterpretedOption, v19, a4, a5);
LABEL_6:
            v13 = v17;
            swift_endAccess();
          }

          else
          {
LABEL_13:
            if ((v14 - 1000) <= 0x1FFFFC17)
            {
              v20 = sub_2686151BC();
              (*(a5 + 464))(a3 + 16, &type metadata for Google_Protobuf_FileOptions, v20, v14, a4, a5);
            }
          }

          result = v10(a4, a5);
          v14 = result;
          break;
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_FileOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  result = sub_268603C6C(v3[3], a1, *v3, v8, v3[2], v3[3], a2, a3);
  if (!v4)
  {
    sub_2685BA80C(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v8);
  }

  return result;
}

uint64_t sub_268602B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v9 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    v10 = *(a1 + 32);
    MEMORY[0x26D61D8F0](8);

    sub_268689A24();
  }

  swift_beginAccess();
  v11 = *(a1 + 51);
  if (v11 != 3)
  {
    MEMORY[0x26D61D8F0](9);
    MEMORY[0x26D61D8F0](v11 + 1);
  }

  swift_beginAccess();
  if (*(a1 + 48) != 2)
  {
    MEMORY[0x26D61D8F0](10);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v12 = *(a1 + 56);
    MEMORY[0x26D61D8F0](11);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 72) != 2)
  {
    MEMORY[0x26D61D8F0](16);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 73) != 2)
  {
    MEMORY[0x26D61D8F0](17);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 74) != 2)
  {
    MEMORY[0x26D61D8F0](18);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 49) != 2)
  {
    MEMORY[0x26D61D8F0](20);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 76) != 2)
  {
    MEMORY[0x26D61D8F0](23);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 50) != 2)
  {
    MEMORY[0x26D61D8F0](27);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 77) != 2)
  {
    MEMORY[0x26D61D8F0](31);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 88))
  {
    v13 = *(a1 + 80);
    MEMORY[0x26D61D8F0](36);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 104))
  {
    v14 = *(a1 + 96);
    MEMORY[0x26D61D8F0](37);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 120))
  {
    v15 = *(a1 + 112);
    MEMORY[0x26D61D8F0](39);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 136))
  {
    v16 = *(a1 + 128);
    MEMORY[0x26D61D8F0](40);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 152))
  {
    v17 = *(a1 + 144);
    MEMORY[0x26D61D8F0](41);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 75) != 2)
  {
    MEMORY[0x26D61D8F0](42);
    sub_268689EB4();
  }

  swift_beginAccess();
  if (*(a1 + 168))
  {
    v18 = *(a1 + 160);
    MEMORY[0x26D61D8F0](44);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 184))
  {
    v19 = *(a1 + 176);
    MEMORY[0x26D61D8F0](45);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 192) + 16))
  {
    return sub_2685DC564(a2, 1000, 0x20000000, a5);
  }

  sub_2685DA980(v20, 999);

  if (!v5)
  {
    return sub_2685DC564(a2, 1000, 0x20000000, a5);
  }

  return result;
}

uint64_t sub_2686030E8(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v13);
    sub_2685B43A4(v11, v10);

    v14 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
    }

    *(v14 + 2) = v17 + 1;
    v14[v17 + 32] = 10;
  }

  swift_beginAccess();
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);

    sub_2685B301C(8);
    sub_2685B403C(": ", 2, v21);
    sub_2685B43A4(v19, v18);

    v22 = *a2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_2685B3F48(0, *(v22 + 2) + 1, 1, v22);
      *a2 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2685B3F48((v24 > 1), v25 + 1, 1, v22);
      *a2 = v22;
    }

    *(v22 + 2) = v25 + 1;
    v22[v25 + 32] = 10;
  }

  swift_beginAccess();
  v26 = *(a1 + 51);
  if (v26 != 3)
  {
    sub_2685B301C(9);
    sub_2685B403C(": ", 2, v27);
    sub_268671464(v26);
    v28 = *a2;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_2685B3F48(0, *(v28 + 2) + 1, 1, v28);
      *a2 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_2685B3F48((v30 > 1), v31 + 1, 1, v28);
      *a2 = v28;
    }

    *(v28 + 2) = v31 + 1;
    v28[v31 + 32] = 10;
  }

  swift_beginAccess();
  v32 = *(a1 + 48);
  if (v32 != 2)
  {
    result = sub_2685B33F4(v32 & 1, 10);
    if (v5)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 64);
  if (v34)
  {
    v35 = *(a1 + 56);
    v36 = *(a1 + 64);

    sub_2685B301C(11);
    sub_2685B403C(": ", 2, v37);
    sub_2685B43A4(v35, v34);

    v38 = *a2;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v38;
    if ((v39 & 1) == 0)
    {
      v38 = sub_2685B3F48(0, *(v38 + 2) + 1, 1, v38);
      *a2 = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_2685B3F48((v40 > 1), v41 + 1, 1, v38);
      *a2 = v38;
    }

    *(v38 + 2) = v41 + 1;
    v38[v41 + 32] = 10;
  }

  swift_beginAccess();
  v42 = *(a1 + 72);
  if (v42 != 2)
  {
    result = sub_2685B33F4(v42 & 1, 16);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 73);
  if (v43 != 2)
  {
    result = sub_2685B33F4(v43 & 1, 17);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 74);
  if (v44 != 2)
  {
    result = sub_2685B33F4(v44 & 1, 18);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 49);
  if (v45 != 2)
  {
    result = sub_2685B33F4(v45 & 1, 20);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 76);
  if (v46 != 2)
  {
    result = sub_2685B33F4(v46 & 1, 23);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 50);
  if (v47 != 2)
  {
    result = sub_2685B33F4(v47 & 1, 27);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 77);
  if (v48 != 2)
  {
    result = sub_2685B33F4(v48 & 1, 31);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 88);
  if (v49)
  {
    v50 = *(a1 + 80);
    v51 = *(a1 + 88);

    sub_2685B301C(36);
    sub_2685B403C(": ", 2, v52);
    sub_2685B43A4(v50, v49);

    v53 = *a2;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v53;
    if ((v54 & 1) == 0)
    {
      v53 = sub_2685B3F48(0, *(v53 + 2) + 1, 1, v53);
      *a2 = v53;
    }

    v56 = *(v53 + 2);
    v55 = *(v53 + 3);
    if (v56 >= v55 >> 1)
    {
      v53 = sub_2685B3F48((v55 > 1), v56 + 1, 1, v53);
      *a2 = v53;
    }

    *(v53 + 2) = v56 + 1;
    v53[v56 + 32] = 10;
  }

  swift_beginAccess();
  v57 = *(a1 + 104);
  if (v57)
  {
    v58 = *(a1 + 96);
    v59 = *(a1 + 104);

    sub_2685B301C(37);
    sub_2685B403C(": ", 2, v60);
    sub_2685B43A4(v58, v57);

    v61 = *a2;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v61;
    if ((v62 & 1) == 0)
    {
      v61 = sub_2685B3F48(0, *(v61 + 2) + 1, 1, v61);
      *a2 = v61;
    }

    v64 = *(v61 + 2);
    v63 = *(v61 + 3);
    if (v64 >= v63 >> 1)
    {
      v61 = sub_2685B3F48((v63 > 1), v64 + 1, 1, v61);
      *a2 = v61;
    }

    *(v61 + 2) = v64 + 1;
    v61[v64 + 32] = 10;
  }

  swift_beginAccess();
  v65 = *(a1 + 120);
  if (v65)
  {
    v66 = *(a1 + 112);
    v67 = *(a1 + 120);

    sub_2685B301C(39);
    sub_2685B403C(": ", 2, v68);
    sub_2685B43A4(v66, v65);

    v69 = *a2;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_2685B3F48(0, *(v69 + 2) + 1, 1, v69);
      *a2 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    if (v72 >= v71 >> 1)
    {
      v69 = sub_2685B3F48((v71 > 1), v72 + 1, 1, v69);
      *a2 = v69;
    }

    *(v69 + 2) = v72 + 1;
    v69[v72 + 32] = 10;
  }

  swift_beginAccess();
  v73 = *(a1 + 136);
  if (v73)
  {
    v74 = *(a1 + 128);
    v75 = *(a1 + 136);

    sub_2685B301C(40);
    sub_2685B403C(": ", 2, v76);
    sub_2685B43A4(v74, v73);

    v77 = *a2;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v77;
    if ((v78 & 1) == 0)
    {
      v77 = sub_2685B3F48(0, *(v77 + 2) + 1, 1, v77);
      *a2 = v77;
    }

    v80 = *(v77 + 2);
    v79 = *(v77 + 3);
    if (v80 >= v79 >> 1)
    {
      v77 = sub_2685B3F48((v79 > 1), v80 + 1, 1, v77);
      *a2 = v77;
    }

    *(v77 + 2) = v80 + 1;
    v77[v80 + 32] = 10;
  }

  swift_beginAccess();
  v81 = *(a1 + 152);
  if (v81)
  {
    v82 = *(a1 + 144);
    v83 = *(a1 + 152);

    sub_2685B301C(41);
    sub_2685B403C(": ", 2, v84);
    sub_2685B43A4(v82, v81);

    v85 = *a2;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v85;
    if ((v86 & 1) == 0)
    {
      v85 = sub_2685B3F48(0, *(v85 + 2) + 1, 1, v85);
      *a2 = v85;
    }

    v88 = *(v85 + 2);
    v87 = *(v85 + 3);
    if (v88 >= v87 >> 1)
    {
      v85 = sub_2685B3F48((v87 > 1), v88 + 1, 1, v85);
      *a2 = v85;
    }

    *(v85 + 2) = v88 + 1;
    v85[v88 + 32] = 10;
  }

  swift_beginAccess();
  v89 = *(a1 + 75);
  if (v89 != 2)
  {
    result = sub_2685B33F4(v89 & 1, 42);
    if (v6)
    {
      return result;
    }

    v6 = 0;
  }

  swift_beginAccess();
  v90 = *(a1 + 168);
  if (v90)
  {
    v91 = *(a1 + 160);
    v92 = *(a1 + 168);

    sub_2685B301C(44);
    sub_2685B403C(": ", 2, v93);
    sub_2685B43A4(v91, v90);

    v94 = *a2;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v94;
    if ((v95 & 1) == 0)
    {
      v94 = sub_2685B3F48(0, *(v94 + 2) + 1, 1, v94);
      *a2 = v94;
    }

    v97 = *(v94 + 2);
    v96 = *(v94 + 3);
    if (v97 >= v96 >> 1)
    {
      v94 = sub_2685B3F48((v96 > 1), v97 + 1, 1, v94);
      *a2 = v94;
    }

    *(v94 + 2) = v97 + 1;
    v94[v97 + 32] = 10;
  }

  swift_beginAccess();
  v98 = *(a1 + 184);
  if (v98)
  {
    v99 = *(a1 + 176);
    v100 = *(a1 + 184);

    sub_2685B301C(45);
    sub_2685B403C(": ", 2, v101);
    sub_2685B43A4(v99, v98);

    v102 = *a2;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v102;
    if ((v103 & 1) == 0)
    {
      v102 = sub_2685B3F48(0, *(v102 + 2) + 1, 1, v102);
      *a2 = v102;
    }

    v105 = *(v102 + 2);
    v104 = *(v102 + 3);
    if (v105 >= v104 >> 1)
    {
      v102 = sub_2685B3F48((v104 > 1), v105 + 1, 1, v102);
      *a2 = v102;
    }

    *(v102 + 2) = v105 + 1;
    v102[v105 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 192) + 16))
  {
    return sub_2685DBFC4(a2, 1000, 0x20000000, a5);
  }

  sub_2686766D4(v106, 999);

  if (!v6)
  {
    return sub_2685DBFC4(a2, 1000, 0x20000000, a5);
  }

  return result;
}

uint64_t sub_268603C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  swift_beginAccess();
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = *(a1 + 16);
    v16 = *(a8 + 112);
    v17 = *(a1 + 24);

    v16(v15, v14, 1, a7, a8);
    if (v9)
    {
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = *(a1 + 32);
  v20 = *(a8 + 112);
  v21 = *(a1 + 40);

  v20(v19, v18, 8, a7, a8);
  if (v9)
  {
  }

LABEL_7:
  swift_beginAccess();
  if (*(a1 + 51) == 3 || (v70[0] = *(a1 + 51), v22 = *(a8 + 128), v23 = sub_2686190A8(), result = v22(v70, 9, &type metadata for Google_Protobuf_FileOptions.OptimizeMode, v23, a7, a8), !v9))
  {
    swift_beginAccess();
    v25 = *(a1 + 48);
    if (v25 == 2 || (result = (*(a8 + 104))(v25 & 1, 10, a7, a8), !v9))
    {
      swift_beginAccess();
      v26 = *(a1 + 64);
      if (v26)
      {
        v27 = *(a1 + 56);
        v28 = *(a8 + 112);
        v29 = *(a1 + 64);

        v28(v27, v26, 11, a7, a8);
        if (v9)
        {
        }
      }

      swift_beginAccess();
      v30 = *(a1 + 72);
      if (v30 == 2 || (result = (*(a8 + 104))(v30 & 1, 16, a7, a8), !v9))
      {
        swift_beginAccess();
        v31 = *(a1 + 73);
        if (v31 == 2 || (result = (*(a8 + 104))(v31 & 1, 17, a7, a8), !v9))
        {
          swift_beginAccess();
          v32 = *(a1 + 74);
          if (v32 == 2 || (result = (*(a8 + 104))(v32 & 1, 18, a7, a8), !v9))
          {
            swift_beginAccess();
            v33 = *(a1 + 49);
            if (v33 == 2 || (result = (*(a8 + 104))(v33 & 1, 20, a7, a8), !v9))
            {
              swift_beginAccess();
              v34 = *(a1 + 76);
              if (v34 == 2 || (result = (*(a8 + 104))(v34 & 1, 23, a7, a8), !v9))
              {
                swift_beginAccess();
                v35 = *(a1 + 50);
                if (v35 == 2 || (result = (*(a8 + 104))(v35 & 1, 27, a7, a8), !v9))
                {
                  swift_beginAccess();
                  v36 = *(a1 + 77);
                  if (v36 == 2 || (result = (*(a8 + 104))(v36 & 1, 31, a7, a8), !v9))
                  {
                    swift_beginAccess();
                    v37 = *(a1 + 88);
                    if (v37)
                    {
                      v38 = *(a1 + 80);
                      v39 = *(a8 + 112);
                      v40 = *(a1 + 88);

                      v39(v38, v37, 36, a7, a8);
                      if (v9)
                      {
                      }
                    }

                    swift_beginAccess();
                    v41 = *(a1 + 104);
                    if (v41)
                    {
                      v42 = *(a1 + 96);
                      v43 = *(a8 + 112);
                      v44 = *(a1 + 104);

                      v43(v42, v41, 37, a7, a8);
                      if (v9)
                      {
                      }
                    }

                    swift_beginAccess();
                    v45 = *(a1 + 120);
                    if (!v45 || (v46 = *(a1 + 112), v47 = *(a8 + 112), v48 = *(a1 + 120), , v47(v46, v45, 39, a7, a8), result = , !v9))
                    {
                      swift_beginAccess();
                      v49 = *(a1 + 136);
                      if (!v49 || (v50 = *(a1 + 128), v51 = *(a8 + 112), v52 = *(a1 + 136), , v51(v50, v49, 40, a7, a8), result = , !v9))
                      {
                        swift_beginAccess();
                        v53 = *(a1 + 152);
                        if (!v53 || (v54 = *(a1 + 144), v55 = *(a8 + 112), v56 = *(a1 + 152), , v55(v54, v53, 41, a7, a8), result = , !v9))
                        {
                          swift_beginAccess();
                          v57 = *(a1 + 75);
                          if (v57 == 2 || (result = (*(a8 + 104))(v57 & 1, 42, a7, a8), !v9))
                          {
                            swift_beginAccess();
                            v58 = *(a1 + 168);
                            if (!v58 || (v59 = *(a1 + 160), v60 = *(a8 + 112), v61 = *(a1 + 168), , v60(v59, v58, 44, a7, a8), result = , !v9))
                            {
                              swift_beginAccess();
                              v62 = *(a1 + 184);
                              if (!v62 || (v63 = *(a1 + 176), v64 = *(a8 + 112), v65 = *(a1 + 184), , v64(v63, v62, 45, a7, a8), result = , !v9))
                              {
                                swift_beginAccess();
                                if (!*(*(a1 + 192) + 16) || (v66 = *(a8 + 280), v67 = sub_2686148F0(), v68 = , v66(v68, 999, &type metadata for Google_Protobuf_UninterpretedOption, v67, a7, a8), result = , !v9))
                                {
                                  v71 = a5;
                                  v69 = *(a8 + 432);

                                  v69(&v71, 1000, 0x20000000, a7, a8);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2686044A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_123;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  else if (v6)
  {
    goto LABEL_123;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_beginAccess();
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10 || (v8 != *(a2 + 32) || v9 != v10) && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  else if (v10)
  {
    goto LABEL_123;
  }

  swift_beginAccess();
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(a2 + 48);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_123;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    goto LABEL_123;
  }

  swift_beginAccess();
  v13 = *(a1 + 49);
  swift_beginAccess();
  v14 = *(a2 + 49);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_123;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    goto LABEL_123;
  }

  swift_beginAccess();
  v15 = *(a1 + 50);
  swift_beginAccess();
  v16 = *(a2 + 50);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_123;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    goto LABEL_123;
  }

  swift_beginAccess();
  v17 = *(a1 + 51);
  swift_beginAccess();
  v18 = *(a2 + 51);
  if (v17 == 3)
  {
    if (v18 != 3)
    {
      goto LABEL_123;
    }

    goto LABEL_37;
  }

  v19 = 0;
  if (v18 != 3 && v17 == v18)
  {
LABEL_37:
    swift_beginAccess();
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    swift_beginAccess();
    v22 = *(a2 + 64);
    if (v21)
    {
      if (!v22 || (v20 != *(a2 + 56) || v21 != v22) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v22)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v23 = *(a1 + 72);
    swift_beginAccess();
    v24 = *(a2 + 72);
    if (v23 == 2)
    {
      if (v24 != 2)
      {
        goto LABEL_123;
      }
    }

    else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v25 = *(a1 + 73);
    swift_beginAccess();
    v26 = *(a2 + 73);
    if (v25 == 2)
    {
      if (v26 != 2)
      {
        goto LABEL_123;
      }
    }

    else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v27 = *(a1 + 74);
    swift_beginAccess();
    v28 = *(a2 + 74);
    if (v27 == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_123;
      }
    }

    else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v29 = *(a1 + 75);
    swift_beginAccess();
    v30 = *(a2 + 75);
    if (v29 == 2)
    {
      if (v30 != 2)
      {
        goto LABEL_123;
      }
    }

    else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v31 = *(a1 + 76);
    swift_beginAccess();
    v32 = *(a2 + 76);
    if (v31 == 2)
    {
      if (v32 != 2)
      {
        goto LABEL_123;
      }
    }

    else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v33 = *(a1 + 77);
    swift_beginAccess();
    v34 = *(a2 + 77);
    if (v33 == 2)
    {
      if (v34 != 2)
      {
        goto LABEL_123;
      }
    }

    else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v35 = *(a1 + 80);
    v36 = *(a1 + 88);
    swift_beginAccess();
    v37 = *(a2 + 88);
    if (v36)
    {
      if (!v37 || (v35 != *(a2 + 80) || v36 != v37) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v37)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v38 = *(a1 + 96);
    v39 = *(a1 + 104);
    swift_beginAccess();
    v40 = *(a2 + 104);
    if (v39)
    {
      if (!v40 || (v38 != *(a2 + 96) || v39 != v40) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v40)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v41 = *(a1 + 112);
    v42 = *(a1 + 120);
    swift_beginAccess();
    v43 = *(a2 + 120);
    if (v42)
    {
      if (!v43 || (v41 != *(a2 + 112) || v42 != v43) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v43)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v44 = *(a1 + 128);
    v45 = *(a1 + 136);
    swift_beginAccess();
    v46 = *(a2 + 136);
    if (v45)
    {
      if (!v46 || (v44 != *(a2 + 128) || v45 != v46) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v46)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v47 = *(a1 + 144);
    v48 = *(a1 + 152);
    swift_beginAccess();
    v49 = *(a2 + 152);
    if (v48)
    {
      if (!v49 || (v47 != *(a2 + 144) || v48 != v49) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v49)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v50 = *(a1 + 160);
    v51 = *(a1 + 168);
    swift_beginAccess();
    v52 = *(a2 + 168);
    if (v51)
    {
      if (!v52 || (v50 != *(a2 + 160) || v51 != v52) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (v52)
    {
      goto LABEL_123;
    }

    swift_beginAccess();
    v53 = *(a1 + 176);
    v54 = *(a1 + 184);
    swift_beginAccess();
    v55 = *(a2 + 184);
    if (v54)
    {
      if (v55 && (v53 == *(a2 + 176) && v54 == v55 || (sub_268689E14() & 1) != 0))
      {
        goto LABEL_121;
      }
    }

    else if (!v55)
    {
LABEL_121:
      swift_beginAccess();
      v56 = *(a1 + 192);
      swift_beginAccess();
      v57 = *(a2 + 192);

      v19 = sub_26860D2C0(v56, v57);

      return v19 & 1;
    }

LABEL_123:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t Google_Protobuf_FileOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  sub_268602B88(v3, &v9, v1, v2, v4);
  v6 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_2;
    }

    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
  }

  else
  {
    if (!v6)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v7 = v1;
    v8 = v1 >> 32;
  }

  if (v7 != v8)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_2:
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

uint64_t sub_268604DCC@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = MEMORY[0x277D84F98];
  if (qword_28028BD08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 24) = qword_28028C660;
}

uint64_t sub_268604EA4@<X0>(void *a1@<X8>)
{
  if (qword_28028BD00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C648;
  v2 = qword_28028C650;
  v3 = unk_28028C658;
  *a1 = qword_28028C640;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268604F4C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_268602B88(v3, &v6, v1, v2, v4);
  sub_2685C962C(&v6, v1, v2);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

__n128 sub_268605018(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  sub_268602B88(v5, &v11, v4, v3, v6);
  sub_2685C962C(&v11, v4, v3);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_2686050C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_268602B88(v3, &v6, v1, v2, v4);
  sub_2685C962C(&v6, v1, v2);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_FileOptions.OptimizeMode._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C670;
  v2 = qword_28028C678;
  v3 = unk_28028C680;
  *a1 = qword_28028C668;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860523C@<X0>(void *a1@<X8>)
{
  if (qword_28028BD10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C670;
  v2 = qword_28028C678;
  v3 = unk_28028C680;
  *a1 = qword_28028C668;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_MessageOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C690;
  v2 = qword_28028C698;
  v3 = unk_28028C6A0;
  *a1 = qword_28028C688;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_MessageOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while (1)
    {
      if (v9)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          (*(a3 + 320))(v3 + 32, a2, a3);
          goto LABEL_5;
        }

        if (result == 2)
        {
          (*(a3 + 320))(v3 + 33, a2, a3);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            (*(a3 + 320))(v3 + 34, a2, a3);
            goto LABEL_5;
          case 7:
            (*(a3 + 320))(v3 + 35, a2, a3);
            goto LABEL_5;
          case 999:
            v10 = *(a3 + 416);
            v11 = sub_2686148F0();
            v10(v3, &type metadata for Google_Protobuf_UninterpretedOption, v11, a2, a3);
            goto LABEL_5;
        }
      }

      if ((result - 1000) <= 0x1FFFFC17)
      {
        v12 = result;
        v13 = sub_268614944();
        (*(a3 + 464))(v3 + 24, &type metadata for Google_Protobuf_MessageOptions, v13, v12, a2, a3);
      }

LABEL_5:
      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26860555C(uint64_t a1)
{
  v3 = v1;
  if (*(v3 + 32) != 2)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689EB4();
  }

  if (*(v3 + 33) != 2)
  {
    MEMORY[0x26D61D8F0](2);
    sub_268689EB4();
  }

  if (*(v3 + 34) != 2)
  {
    MEMORY[0x26D61D8F0](3);
    sub_268689EB4();
  }

  if (*(v3 + 35) != 2)
  {
    MEMORY[0x26D61D8F0](7);
    sub_268689EB4();
  }

  if (!*(*v3 + 16) || (result = sub_2685DA980(*v3, 999), !v2))
  {
    result = sub_2685DC564(a1, 1000, 0x20000000, v3[3]);
    if (!v2)
    {
      v6 = v3[1];
      v7 = v3[2];
      v8 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v8 != 2)
        {
          return result;
        }

        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
      }

      else
      {
        if (!v8)
        {
          if ((v7 & 0xFF000000000000) == 0)
          {
            return result;
          }

          return sub_268689844();
        }

        v9 = v6;
        v10 = v6 >> 32;
      }

      if (v9 == v10)
      {
        return result;
      }

      return sub_268689844();
    }
  }

  return result;
}

uint64_t Google_Protobuf_MessageOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v21 = v3[1];
  v9 = v3[3];
  v18 = v3[2];
  v10 = *(v3 + 32);
  v11 = *(v3 + 33);
  v12 = *(v3 + 34);
  v13 = *(v3 + 35);
  if (v10 == 2 || (result = (*(a3 + 104))(v10 & 1, 1, a2, a3), !v4))
  {
    if (v11 == 2 || (result = (*(a3 + 104))(v11 & 1, 2, a2, a3), !v4))
    {
      if (v12 == 2 || (result = (*(a3 + 104))(v12 & 1, 3, a2, a3), !v4))
      {
        if (v13 == 2 || (result = (*(a3 + 104))(v13 & 1, 7, a2, a3), !v4))
        {
          if (!*(v8 + 16) || (v15 = *(a3 + 280), v16 = sub_2686148F0(), result = v15(v8, 999, &type metadata for Google_Protobuf_UninterpretedOption, v16, a2, a3), !v4))
          {
            v19 = v9;
            v17 = *(a3 + 432);

            v17(&v19, 1000, 0x20000000, a2, a3);

            if (!v4)
            {
              v19 = v21;
              v20 = v18;
              sub_2685BA80C(v21, v18);
              UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
              return sub_2685B593C(v19, v20);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_MessageOptions.hashValue.getter()
{
  v1 = v0[1];
  v13 = *v0;
  v14 = v1;
  v15 = *(v0 + 8);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_26860555C(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

double sub_268605948@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 33686018;
  return result;
}

uint64_t sub_2686059C4@<X0>(void *a1@<X8>)
{
  if (qword_28028BD18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C690;
  v2 = qword_28028C698;
  v3 = unk_28028C6A0;
  *a1 = qword_28028C688;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268605A60()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  return sub_26866F914();
}

uint64_t sub_268605A9C()
{
  v1 = v0[1];
  v13 = *v0;
  v14 = v1;
  v15 = *(v0 + 8);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_26860555C(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

__n128 sub_268605B44(__int128 *a1)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v15 = *(v1 + 8);
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  sub_26860555C(&v8);
  v6 = v11;
  a1[2] = v10;
  a1[3] = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_268605BD0()
{
  v1 = v0[1];
  v13 = *v0;
  v14 = v1;
  v15 = *(v0 + 8);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_26860555C(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_FieldOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C6B0;
  v2 = qword_28028C6B8;
  v3 = unk_28028C6C0;
  *a1 = qword_28028C6A8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_FieldOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while (1)
    {
      if (v9)
      {
        return result;
      }

      if (result <= 4)
      {
        switch(result)
        {
          case 1:
            v10 = *(a3 + 392);
            v11 = v4;
            v12 = sub_268614A40();
            v13 = v3 + 32;
            v14 = &type metadata for Google_Protobuf_FieldOptions.CType;
            goto LABEL_20;
          case 2:
            (*(a3 + 320))(v3 + 33, a2, a3);
            goto LABEL_5;
          case 3:
            (*(a3 + 320))(v3 + 36, a2, a3);
            goto LABEL_5;
        }
      }

      else if (result > 9)
      {
        if (result == 10)
        {
          (*(a3 + 320))(v3 + 37, a2, a3);
          goto LABEL_5;
        }

        if (result == 999)
        {
          v15 = *(a3 + 416);
          v16 = sub_2686148F0();
          v15(v3, &type metadata for Google_Protobuf_UninterpretedOption, v16, a2, a3);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 5)
        {
          (*(a3 + 320))(v3 + 35, a2, a3);
          goto LABEL_5;
        }

        if (result == 6)
        {
          v10 = *(a3 + 392);
          v11 = v4;
          v12 = sub_2686149EC();
          v13 = v3 + 34;
          v14 = &type metadata for Google_Protobuf_FieldOptions.JSType;
LABEL_20:
          v4 = v11;
          v10(v13, v14, v12, a2, a3);
          goto LABEL_5;
        }
      }

      if ((result - 1000) <= 0x1FFFFC17)
      {
        v17 = result;
        v18 = sub_268614998();
        (*(a3 + 464))(v3 + 24, &type metadata for Google_Protobuf_FieldOptions, v18, v17, a2, a3);
      }

LABEL_5:
      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268605F78(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 32);
  if (v5 != 3)
  {
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D8F0](v5);
  }

  if (*(v3 + 33) != 2)
  {
    MEMORY[0x26D61D8F0](2);
    sub_268689EB4();
  }

  if (*(v3 + 36) != 2)
  {
    MEMORY[0x26D61D8F0](3);
    sub_268689EB4();
  }

  if (*(v3 + 35) != 2)
  {
    MEMORY[0x26D61D8F0](5);
    sub_268689EB4();
  }

  v6 = *(v3 + 34);
  if (v6 != 3)
  {
    MEMORY[0x26D61D8F0](6);
    MEMORY[0x26D61D8F0](v6);
  }

  if (*(v3 + 37) != 2)
  {
    MEMORY[0x26D61D8F0](10);
    sub_268689EB4();
  }

  if (!*(*v3 + 16) || (result = sub_2685DA980(*v3, 999), !v2))
  {
    result = sub_2685DC564(a1, 1000, 0x20000000, v3[3]);
    if (!v2)
    {
      v8 = v3[1];
      v9 = v3[2];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          return result;
        }

        v11 = *(v8 + 16);
        v12 = *(v8 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            return result;
          }

          return sub_268689844();
        }

        v11 = v8;
        v12 = v8 >> 32;
      }

      if (v11 == v12)
      {
        return result;
      }

      return sub_268689844();
    }
  }

  return result;
}

uint64_t sub_2686060E0(char **a1)
{
  v3 = v1;
  v5 = *(v3 + 32);
  if (v5 != 3)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v6);
    sub_2686714AC(v5);
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
      *a1 = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2685B3F48((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v7[v10 + 32] = 10;
    *a1 = v7;
  }

  v11 = *(v3 + 33);
  if (v11 == 2 || (result = sub_2685B33F4(v11 & 1, 2), !v2))
  {
    v13 = *(v3 + 36);
    if (v13 == 2 || (result = sub_2685B33F4(v13 & 1, 3), !v2))
    {
      v14 = *(v3 + 35);
      if (v14 == 2 || (result = sub_2685B33F4(v14 & 1, 5), !v2))
      {
        v15 = *(v3 + 34);
        if (v15 != 3)
        {
          sub_2685B301C(6);
          sub_2685B403C(": ", 2, v16);
          sub_268671488(v15);
          v17 = *a1;
          v18 = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v17;
          if ((v18 & 1) == 0)
          {
            v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
            *a1 = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
          }

          *(v17 + 2) = v20 + 1;
          v17[v20 + 32] = 10;
          *a1 = v17;
        }

        v21 = *(v3 + 37);
        if (v21 == 2 || (result = sub_2685B33F4(v21 & 1, 10), !v2))
        {
          if (!*(*v3 + 16) || (result = sub_2686766D4(*v3, 999), !v2))
          {
            result = sub_2685DBFC4(a1, 1000, 0x20000000, v3[3]);
            if (!v2)
            {
              return sub_2685C95B0(a1, v3[1], v3[2]);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_FieldOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1;
  v8 = v3[1];
  v27 = *v3;
  v9 = v3[2];
  v10 = v3[3];
  v11 = *(v3 + 32);
  v12 = *(v3 + 33);
  v13 = *(v3 + 35);
  v30 = *(v3 + 34);
  v31 = v13;
  v14 = *(v3 + 36);
  v26 = *(v3 + 37);
  if (v11 != 3)
  {
    v25 = v9;
    LOBYTE(v28) = v11;
    v15 = *(a3 + 128);
    v18 = sub_268614A40();
    v6 = a2;
    result = v15(&v28, 1, &type metadata for Google_Protobuf_FieldOptions.CType, v18, a2, a3);
    if (v4)
    {
      return result;
    }

    v7 = a1;
    v9 = v25;
  }

  if (v12 == 2 || (result = (*(a3 + 104))(v12 & 1, 2, v6, a3), !v4))
  {
    if (v14 == 2 || (result = (*(a3 + 104))(v14 & 1, 3, v6, a3), !v4))
    {
      if (v31 == 2 || (result = (*(a3 + 104))(v31 & 1, 5, v6, a3), !v4))
      {
        if (v30 == 3 || (LOBYTE(v28) = v30, v20 = *(a3 + 128), v21 = sub_2686149EC(), result = v20(&v28, 6, &type metadata for Google_Protobuf_FieldOptions.JSType, v21, v6, a3), !v4))
        {
          if (v26 == 2 || (result = (*(a3 + 104))(v26 & 1, 10, v6, a3), !v4))
          {
            if (!*(v27 + 16) || (v22 = *(a3 + 280), v23 = sub_2686148F0(), result = v22(v27, 999, &type metadata for Google_Protobuf_UninterpretedOption, v23, v6, a3), !v4))
            {
              v28 = v10;
              v24 = *(a3 + 432);

              v24(&v28, 1000, 0x20000000, v6, a3);

              if (!v4)
              {
                v28 = v8;
                v29 = v9;
                sub_2685BA80C(v8, v9);
                UnknownStorage.traverse<A>(visitor:)(v7, v6, a3);
                return sub_2685B593C(v28, v29);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_FieldOptions.hashValue.getter()
{
  v1 = v0[1];
  v13 = *v0;
  v14[0] = v1;
  *(v14 + 14) = *(v0 + 30);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_268605F78(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

double sub_2686066DC@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *&result = 33751555;
  *(a1 + 32) = 33751555;
  *(a1 + 36) = 514;
  return result;
}

uint64_t sub_268606768@<X0>(void *a1@<X8>)
{
  if (qword_28028BD20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C6B0;
  v2 = qword_28028C6B8;
  v3 = unk_28028C6C0;
  *a1 = qword_28028C6A8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268606804()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[14] = *(v0 + 30);
  return sub_26866F9E0();
}

uint64_t sub_268606840()
{
  v1 = v0[1];
  v13 = *v0;
  v14[0] = v1;
  *(v14 + 14) = *(v0 + 30);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_268605F78(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

__n128 sub_2686068E8(__int128 *a1)
{
  v3 = v1[1];
  v13 = *v1;
  v14[0] = v3;
  *(v14 + 14) = *(v1 + 30);
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  sub_268605F78(&v8);
  v6 = v11;
  a1[2] = v10;
  a1[3] = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_268606974()
{
  v1 = v0[1];
  v13 = *v0;
  v14[0] = v1;
  *(v14 + 14) = *(v0 + 30);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_268605F78(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_FieldOptions.CType._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C6D0;
  v2 = qword_28028C6D8;
  v3 = unk_28028C6E0;
  *a1 = qword_28028C6C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268606ACC@<X0>(void *a1@<X8>)
{
  if (qword_28028BD28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C6D0;
  v2 = qword_28028C6D8;
  v3 = unk_28028C6E0;
  *a1 = qword_28028C6C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldOptions.JSType._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C6F0;
  v2 = qword_28028C6F8;
  v3 = unk_28028C700;
  *a1 = qword_28028C6E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268606C18@<X0>(void *a1@<X8>)
{
  if (qword_28028BD30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C6F0;
  v2 = qword_28028C6F8;
  v3 = unk_28028C700;
  *a1 = qword_28028C6E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_OneofOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C710;
  v2 = qword_28028C718;
  v3 = unk_28028C720;
  *a1 = qword_28028C708;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268606DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *(a3 + 16);
  result = v11(a2, a3);
  if (!v6)
  {
    v19 = a5;
    v14 = a4;
    while (1)
    {
      if (v13)
      {
        return result;
      }

      if (result == 999)
      {
        break;
      }

      if ((result - 1000) <= 0x1FFFFC17)
      {
        v17 = result;
        v18 = a4();
        (*(a3 + 464))(v5 + 24, v19, v18, v17, a2, a3);
        goto LABEL_5;
      }

LABEL_6:
      result = v11(a2, a3);
    }

    v15 = *(a3 + 416);
    v16 = sub_2686148F0();
    v15(v5, &type metadata for Google_Protobuf_UninterpretedOption, v16, a2, a3);
LABEL_5:
    a4 = v14;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_268606F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[3];
  v17 = v3[2];
  if (!*(v8 + 16) || (v11 = *(a3 + 280), v12 = sub_2686148F0(), result = v11(v8, 999, &type metadata for Google_Protobuf_UninterpretedOption, v12, a2, a3), !v4))
  {
    v15 = v10;
    v14 = *(a3 + 432);

    v14(&v15, 1000, 0x20000000, a2, a3);

    if (!v4)
    {
      v15 = v9;
      v16 = v17;
      sub_2685BA80C(v9, v17);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v15, v16);
    }
  }

  return result;
}

uint64_t sub_268607078()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  sub_2685DCFC0(v6, v1, v2, v4, v3);
  return sub_268689EF4();
}

uint64_t sub_26860710C@<X0>(void *a1@<X8>)
{
  if (qword_28028BD38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C710;
  v2 = qword_28028C718;
  v3 = unk_28028C720;
  *a1 = qword_28028C708;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686071B4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  sub_2685DCFC0(v6, v1, v2, v4, v3);
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_EnumOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C730;
  v2 = qword_28028C738;
  v3 = unk_28028C740;
  *a1 = qword_28028C728;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_EnumOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 999:
          v10 = *(a3 + 416);
          v11 = sub_2686148F0();
          v10(v3, &type metadata for Google_Protobuf_UninterpretedOption, v11, a2, a3);
          break;
        case 3:
          (*(a3 + 320))(v3 + 33, a2, a3);
          break;
        case 2:
          (*(a3 + 320))(v3 + 32, a2, a3);
          break;
        default:
          if ((result - 1000) <= 0x1FFFFC17)
          {
            v12 = result;
            v13 = sub_268614AE8();
            (*(a3 + 464))(v3 + 24, &type metadata for Google_Protobuf_EnumOptions, v13, v12, a2, a3);
          }

          break;
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268607480(uint64_t a1)
{
  v3 = v1;
  if (*(v3 + 32) != 2)
  {
    MEMORY[0x26D61D8F0](2);
    sub_268689EB4();
  }

  if (*(v3 + 33) != 2)
  {
    MEMORY[0x26D61D8F0](3);
    sub_268689EB4();
  }

  if (!*(*v3 + 16) || (result = sub_2685DA980(*v3, 999), !v2))
  {
    result = sub_2685DC564(a1, 1000, 0x20000000, v3[3]);
    if (!v2)
    {
      v6 = v3[1];
      v7 = v3[2];
      v8 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v8 != 2)
        {
          return result;
        }

        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
      }

      else
      {
        if (!v8)
        {
          if ((v7 & 0xFF000000000000) == 0)
          {
            return result;
          }

          return sub_268689844();
        }

        v9 = v6;
        v10 = v6 >> 32;
      }

      if (v9 == v10)
      {
        return result;
      }

      return sub_268689844();
    }
  }

  return result;
}

uint64_t Google_Protobuf_EnumOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 32);
  v13 = *(v3 + 33);
  if (v12 == 2 || (result = (*(a3 + 104))(v12 & 1, 2, a2, a3), !v4))
  {
    if (v13 == 2 || (result = (*(a3 + 104))(v13 & 1, 3, a2, a3), !v4))
    {
      v18 = v10;
      v21 = v8;
      if (!*(v9 + 16) || (v15 = *(a3 + 280), v16 = sub_2686148F0(), result = v15(v9, 999, &type metadata for Google_Protobuf_UninterpretedOption, v16, a2, a3), !v4))
      {
        v19 = v11;
        v17 = *(a3 + 432);

        v17(&v19, 1000, 0x20000000, a2, a3);

        if (!v4)
        {
          v19 = v21;
          v20 = v18;
          sub_2685BA80C(v21, v18);
          UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
          return sub_2685B593C(v19, v20);
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_EnumOptions.hashValue.getter()
{
  v1 = v0[1];
  v13 = *v0;
  v14 = v1;
  v15 = *(v0 + 16);
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_268607480(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

double sub_2686077C8@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 514;
  return result;
}

uint64_t sub_268607848@<X0>(void *a1@<X8>)
{
  if (qword_28028BD40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C730;
  v2 = qword_28028C738;
  v3 = unk_28028C740;
  *a1 = qword_28028C728;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686078E4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_26866FBAC();
}

uint64_t static Google_Protobuf_EnumValueOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C750;
  v2 = qword_28028C758;
  v3 = unk_28028C760;
  *a1 = qword_28028C748;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_EnumValueOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 999)
      {
        v10 = *(a3 + 416);
        v11 = sub_2686148F0();
        v10(v3, &type metadata for Google_Protobuf_UninterpretedOption, v11, a2, a3);
      }

      else if (result == 1)
      {
        (*(a3 + 320))(v3 + 32, a2, a3);
      }

      else if ((result - 1000) <= 0x1FFFFC17)
      {
        v12 = result;
        v13 = sub_268614B3C();
        (*(a3 + 464))(v3 + 24, &type metadata for Google_Protobuf_EnumValueOptions, v13, v12, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268607C38@<X0>(void *a1@<X8>)
{
  if (qword_28028BD48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C750;
  v2 = qword_28028C758;
  v3 = unk_28028C760;
  *a1 = qword_28028C748;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268607CD4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_26866FBDC();
}

uint64_t static Google_Protobuf_ServiceOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C770;
  v2 = qword_28028C778;
  v3 = unk_28028C780;
  *a1 = qword_28028C768;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_ServiceOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 999)
      {
        v10 = *(a3 + 416);
        v11 = sub_2686148F0();
        v10(v3, &type metadata for Google_Protobuf_UninterpretedOption, v11, a2, a3);
      }

      else if (result == 33)
      {
        (*(a3 + 320))(v3 + 32, a2, a3);
      }

      else if ((result - 1000) <= 0x1FFFFC17)
      {
        v12 = result;
        v13 = sub_268614B90();
        (*(a3 + 464))(v3 + 24, &type metadata for Google_Protobuf_ServiceOptions, v13, v12, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268607F88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (*(v4 + 32) != 2)
  {
    MEMORY[0x26D61D8F0](a2);
    sub_268689EB4();
  }

  if (!*(*v4 + 16) || (result = sub_2685DA980(*v4, 999), !v3))
  {
    result = sub_2685DC564(a1, 1000, 0x20000000, v4[3]);
    if (!v3)
    {
      v7 = v4[1];
      v8 = v4[2];
      v9 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v9 != 2)
        {
          return result;
        }

        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
      }

      else
      {
        if (!v9)
        {
          if ((v8 & 0xFF000000000000) == 0)
          {
            return result;
          }

          return sub_268689844();
        }

        v10 = v7;
        v11 = v7 >> 32;
      }

      if (v10 == v11)
      {
        return result;
      }

      return sub_268689844();
    }
  }

  return result;
}

uint64_t sub_268608078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = *(v4 + 32);
  if (v13 == 2 || (result = (*(a3 + 104))(v13 & 1, a4, a2, a3), !v5))
  {
    v20 = v11;
    if (!*(v9 + 16) || (v15 = *(a3 + 280), v16 = sub_2686148F0(), result = v15(v9, 999, &type metadata for Google_Protobuf_UninterpretedOption, v16, a2, a3), !v5))
    {
      v18 = v12;
      v17 = *(a3 + 432);

      v17(&v18, 1000, 0x20000000, a2, a3);

      if (!v5)
      {
        v18 = v10;
        v19 = v20;
        sub_2685BA80C(v10, v20);
        UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
        return sub_2685B593C(v18, v19);
      }
    }
  }

  return result;
}

uint64_t sub_26860820C(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  sub_268689E94();
  v14 = v19;
  v15 = v20;
  v16 = v21;
  v12 = v17;
  v13 = v18;
  if (v7 != 2)
  {
    MEMORY[0x26D61D8F0](a1);
    sub_268689EB4();
  }

  if (*(v4 + 16))
  {
    sub_2685DA980(v4, 999);
  }

  sub_2685DC564(&v12, 1000, 0x20000000, v6);
  v9 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_6;
    }

    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v5 & 0xFF000000000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    v10 = v3;
    v11 = v3 >> 32;
  }

  if (v10 != v11)
  {
LABEL_15:
    sub_268689844();
  }

LABEL_6:
  v20 = v15;
  v21 = v16;
  v18 = v13;
  v19 = v14;
  v17 = v12;
  return sub_268689EF4();
}

uint64_t sub_2686083B4@<X0>(void *a1@<X8>)
{
  if (qword_28028BD50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C770;
  v2 = qword_28028C778;
  v3 = unk_28028C780;
  *a1 = qword_28028C768;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268608450()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_26866FC0C();
}

uint64_t sub_268608494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  sub_268689E94();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  if (v9 != 2)
  {
    MEMORY[0x26D61D8F0](a3);
    sub_268689EB4();
  }

  if (*(v6 + 16))
  {
    sub_2685DA980(v6, 999);
  }

  sub_2685DC564(&v11, 1000, 0x20000000, v8);
  sub_2685C962C(&v11, v5, v7);
  v19 = v14;
  v20 = v15;
  v17 = v12;
  v18 = v13;
  v16 = v11;
  return sub_268689EF4();
}

__n128 sub_2686085BC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = a1[3];
  v17 = a1[2];
  v18 = v11;
  v19 = *(a1 + 8);
  v12 = a1[1];
  v15 = *a1;
  v16 = v12;
  if (v10 != 2)
  {
    MEMORY[0x26D61D8F0](a4);
    sub_268689EB4();
  }

  if (*(v6 + 16))
  {
    sub_2685DA980(v6, 999);
  }

  sub_2685DC564(&v15, 1000, 0x20000000, v9);
  sub_2685C962C(&v15, v7, v8);
  v13 = v18;
  a1[2] = v17;
  a1[3] = v13;
  *(a1 + 8) = v19;
  result = v16;
  *a1 = v15;
  a1[1] = result;
  return result;
}

uint64_t sub_2686086BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  sub_268689E94();
  v14 = v19;
  v15 = v20;
  v16 = v21;
  v12 = v17;
  v13 = v18;
  if (v10 != 2)
  {
    MEMORY[0x26D61D8F0](a4);
    sub_268689EB4();
  }

  if (*(v7 + 16))
  {
    sub_2685DA980(v7, 999);
  }

  sub_2685DC564(&v12, 1000, 0x20000000, v9);
  sub_2685C962C(&v12, v6, v8);
  v20 = v15;
  v21 = v16;
  v18 = v13;
  v19 = v14;
  v17 = v12;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_MethodOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C790;
  v2 = qword_28028C798;
  v3 = unk_28028C7A0;
  *a1 = qword_28028C788;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_MethodOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 999:
          v12 = *(a3 + 416);
          v13 = sub_2686148F0();
          v12(v3, &type metadata for Google_Protobuf_UninterpretedOption, v13, a2, a3);
          break;
        case 34:
          v10 = *(a3 + 392);
          v11 = sub_268614C38();
          v10(v3 + 33, &type metadata for Google_Protobuf_MethodOptions.IdempotencyLevel, v11, a2, a3);
          break;
        case 33:
          (*(a3 + 320))(v3 + 32, a2, a3);
          break;
        default:
          if ((result - 1000) <= 0x1FFFFC17)
          {
            v14 = result;
            v15 = sub_268614BE4();
            (*(a3 + 464))(v3 + 24, &type metadata for Google_Protobuf_MethodOptions, v15, v14, a2, a3);
          }

          break;
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268608A84(uint64_t a1)
{
  v3 = v1;
  if (*(v3 + 32) != 2)
  {
    MEMORY[0x26D61D8F0](33);
    sub_268689EB4();
  }

  v5 = *(v3 + 33);
  if (v5 != 3)
  {
    MEMORY[0x26D61D8F0](34);
    MEMORY[0x26D61D8F0](v5);
  }

  if (!*(*v3 + 16) || (result = sub_2685DA980(*v3, 999), !v2))
  {
    result = sub_2685DC564(a1, 1000, 0x20000000, v3[3]);
    if (!v2)
    {
      v7 = v3[1];
      v8 = v3[2];
      v9 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v9 != 2)
        {
          return result;
        }

        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
      }

      else
      {
        if (!v9)
        {
          if ((v8 & 0xFF000000000000) == 0)
          {
            return result;
          }

          return sub_268689844();
        }

        v10 = v7;
        v11 = v7 >> 32;
      }

      if (v10 == v11)
      {
        return result;
      }

      return sub_268689844();
    }
  }

  return result;
}

uint64_t sub_268608B7C(char **a1)
{
  v3 = v1;
  v5 = *(v3 + 32);
  if (v5 == 2 || (result = sub_2685B33F4(v5 & 1, 33), !v2))
  {
    v7 = *(v3 + 33);
    if (v7 != 3)
    {
      sub_2685B301C(34);
      sub_2685B403C(": ", 2, v8);
      sub_2686715D0(v7);
      v9 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        *a1 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v9[v12 + 32] = 10;
      *a1 = v9;
    }

    if (!*(*v3 + 16) || (result = sub_2686766D4(*v3, 999), !v2))
    {
      result = sub_2685DBFC4(a1, 1000, 0x20000000, v3[3]);
      if (!v2)
      {
        return sub_2685C95B0(a1, v3[1], v3[2]);
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_MethodOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  v12 = *(v3 + 32);
  v13 = *(v3 + 33);
  if (v12 == 2 || (result = (*(a3 + 104))(v12 & 1, 33, a2, a3), !v4))
  {
    v22 = v8;
    if (v13 == 3 || (LOBYTE(v20) = v13, v15 = *(a3 + 128), v16 = sub_268614C38(), result = v15(&v20, 34, &type metadata for Google_Protobuf_MethodOptions.IdempotencyLevel, v16, a2, a3), !v4))
    {
      if (!*(v9 + 16) || (v17 = *(a3 + 280), v18 = sub_2686148F0(), result = v17(v9, 999, &type metadata for Google_Protobuf_UninterpretedOption, v18, a2, a3), !v4))
      {
        v20 = v10;
        v19 = *(a3 + 432);

        v19(&v20, 1000, 0x20000000, a2, a3);

        result = v22;
        if (!v4)
        {
          v20 = v22;
          v21 = v11;
          sub_2685BA80C(v22, v11);
          UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
          return sub_2685B593C(v20, v21);
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_MethodOptions.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_268689E94();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  if (v5 == 2)
  {
    if (v6 == 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    MEMORY[0x26D61D8F0](34);
    MEMORY[0x26D61D8F0](v6);
    if (!*(v2 + 16))
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  MEMORY[0x26D61D8F0](33);
  sub_268689EB4();
  if (v6 != 3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v2 + 16))
  {
LABEL_4:
    sub_2685DA980(v2, 999);
  }

LABEL_7:
  sub_2685DC564(&v11, 1000, 0x20000000, v4);
  v8 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    v9 = v1;
    v10 = v1 >> 32;
  }

  if (v9 != v10)
  {
LABEL_17:
    sub_268689844();
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v17 = v12;
  v18 = v13;
  v16 = v11;
  return sub_268689EF4();
}

double sub_268609014@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 770;
  return result;
}

uint64_t sub_268609090@<X0>(void *a1@<X8>)
{
  if (qword_28028BD58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C790;
  v2 = qword_28028C798;
  v3 = unk_28028C7A0;
  *a1 = qword_28028C788;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860912C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_26866FD00();
}

uint64_t sub_268609180(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = *(v3 + 16);
  sub_268689E94();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  a3(&v7);
  v15 = v10;
  v16 = v11;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_268689EF4();
}

__n128 sub_268609250(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  v6 = v4[1];
  v16 = *v4;
  v17 = v6;
  v18 = *(v4 + 16);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  a4(&v11);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_2686092F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  v6 = v4[1];
  v18 = *v4;
  v19 = v6;
  v20 = *(v4 + 16);
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  a4(&v8);
  v16 = v11;
  v17 = v12;
  v14 = v9;
  v15 = v10;
  v13 = v8;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_MethodOptions.IdempotencyLevel._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C7B0;
  v2 = qword_28028C7B8;
  v3 = unk_28028C7C0;
  *a1 = qword_28028C7A8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268609460@<X0>(void *a1@<X8>)
{
  if (qword_28028BD60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C7B0;
  v2 = qword_28028C7B8;
  v3 = unk_28028C7C0;
  *a1 = qword_28028C7A8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_UninterpretedOption._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C7D0;
  v2 = qword_28028C7D8;
  v3 = unk_28028C7E0;
  *a1 = qword_28028C7C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

BOOL Google_Protobuf_UninterpretedOption.isInitialized.getter()
{
  v1 = sub_2685F0FB8(*v0);
  v2 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v1);

  return v2;
}

uint64_t Google_Protobuf_UninterpretedOption.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result <= 4)
      {
        switch(result)
        {
          case 2:
            v10 = *(a3 + 416);
            v11 = sub_268614C8C();
            v10(v3, &type metadata for Google_Protobuf_UninterpretedOption.NamePart, v11, a2, a3);
            break;
          case 3:
            (*(a3 + 344))(v3 + 24, a2, a3);
            break;
          case 4:
            (*(a3 + 152))(v3 + 40, a2, a3);
            break;
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          (*(a3 + 368))(v3 + 88, a2, a3);
        }

        else if (result == 8)
        {
          (*(a3 + 344))(v3 + 104, a2, a3);
        }
      }

      else if (result == 5)
      {
        (*(a3 + 104))(v3 + 56, a2, a3);
      }

      else
      {
        (*(a3 + 56))(v3 + 72, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268609810()
{
  result = *v0;
  if (!*(*v0 + 16) || (result = sub_2685DADA8(result, 2), !v1))
  {
    if (*(v0 + 32))
    {
      v3 = *(v0 + 24);
      MEMORY[0x26D61D8F0](3);
      result = sub_268689A24();
    }

    if (*(v0 + 48))
    {
      if (*(v0 + 64))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = *(v0 + 40);
      MEMORY[0x26D61D8F0](4);
      result = MEMORY[0x26D61D920](v12);
      if (*(v0 + 64))
      {
LABEL_7:
        if (*(v0 + 80))
        {
          goto LABEL_12;
        }

LABEL_8:
        v4 = *(v0 + 72);
        MEMORY[0x26D61D8F0](6);
        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v5 = v4;
        }

        else
        {
          v5 = 0;
        }

        result = MEMORY[0x26D61D920](v5);
LABEL_12:
        v6 = *(v0 + 96);
        if (v6 >> 60 != 15)
        {
          v7 = *(v0 + 88);
          MEMORY[0x26D61D8F0](7);
          sub_2685BA80C(v7, v6);
          sub_268689844();
          result = sub_2685B98FC(v7, v6);
        }

        if (*(v0 + 112))
        {
          v8 = *(v0 + 104);
          MEMORY[0x26D61D8F0](8);
          result = sub_268689A24();
        }

        v9 = *(v0 + 8);
        v10 = *(v0 + 16);
        v11 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v11 != 2)
          {
            return result;
          }

          v14 = *(v9 + 16);
          v15 = *(v9 + 24);
        }

        else
        {
          if (!v11)
          {
            if ((v10 & 0xFF000000000000) == 0)
            {
              return result;
            }

            return sub_268689844();
          }

          v14 = v9;
          v15 = v9 >> 32;
        }

        if (v14 == v15)
        {
          return result;
        }

        return sub_268689844();
      }
    }

    v13 = *(v0 + 56);
    MEMORY[0x26D61D8F0](5);
    result = MEMORY[0x26D61D920](v13);
    if (*(v0 + 80))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_2686099AC(uint64_t a1)
{
  v3 = v1;
  if (!*(*v3 + 16) || (result = sub_268676B70(*v3, 2), !v2))
  {
    v6 = v3[4];
    if (v6)
    {
      v7 = v3[3];
      sub_2685B301C(3);
      sub_2685B403C(": ", 2, v8);
      sub_2685B43A4(v7, v6);
      v9 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        *a1 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v9[v12 + 32] = 10;
      *a1 = v9;
    }

    if ((v3[6] & 1) == 0)
    {
      v13 = v3[5];
      sub_2685B301C(4);
      sub_2685B403C(": ", 2, v14);
      sub_268663B88(v13);
      v15 = *a1;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
        *a1 = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v15[v18 + 32] = 10;
      *a1 = v15;
    }

    if ((v3[8] & 1) != 0 || (result = sub_268636ED8(v3[7], 5), !v2))
    {
      if ((v3[10] & 1) == 0)
      {
        v19 = *(v3 + 9);
        sub_2685B301C(6);
        sub_2685B403C(": ", 2, v20);
        sub_2686639C4(v19);
        v21 = *a1;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v21;
        if ((v22 & 1) == 0)
        {
          v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
          *a1 = v21;
        }

        v24 = *(v21 + 2);
        v23 = *(v21 + 3);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v21);
        }

        *(v21 + 2) = v24 + 1;
        v21[v24 + 32] = 10;
        *a1 = v21;
      }

      v25 = v3[12];
      if (v25 >> 60 != 15)
      {
        v26 = v3[11];
        sub_2685BA80C(v26, v3[12]);
        sub_2685B301C(7);
        sub_2685B403C(": ", 2, v27);
        sub_2686637F4(v26, v25);
        v28 = *a1;
        v29 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v28;
        if ((v29 & 1) == 0)
        {
          v28 = sub_2685B3F48(0, *(v28 + 2) + 1, 1, v28);
          *a1 = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        if (v31 >= v30 >> 1)
        {
          v28 = sub_2685B3F48((v30 > 1), v31 + 1, 1, v28);
        }

        sub_2685B98FC(v26, v25);
        *(v28 + 2) = v31 + 1;
        v28[v31 + 32] = 10;
        *a1 = v28;
      }

      v32 = v3[14];
      if (v32)
      {
        v33 = v3[13];
        sub_2685B301C(8);
        sub_2685B403C(": ", 2, v34);
        sub_2685B43A4(v33, v32);
        v35 = *a1;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v35;
        if ((v36 & 1) == 0)
        {
          v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
          *a1 = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v35 = sub_2685B3F48((v37 > 1), v38 + 1, 1, v35);
        }

        *(v35 + 2) = v38 + 1;
        v35[v38 + 32] = 10;
        *a1 = v35;
      }

      result = v3[1];
      v39 = v3[2];
      v40 = v39 >> 62;
      if ((v39 >> 62) > 1)
      {
        if (v40 != 2)
        {
          return result;
        }

        v41 = *(result + 16);
        v42 = *(result + 24);
      }

      else
      {
        if (!v40)
        {
          if ((v39 & 0xFF000000000000) == 0)
          {
            return result;
          }

          goto LABEL_43;
        }

        v41 = result;
        v42 = result >> 32;
      }

      if (v41 == v42)
      {
        return result;
      }

LABEL_43:
      if (*(a1 + 64) == 1)
      {
        return sub_26863B108(result, v39);
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1;
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v31 = v3[5];
  v32 = *(v3 + 64);
  v33 = *(v3 + 48);
  v13 = *(v3 + 9);
  v30 = *(v3 + 80);
  v28 = v3[12];
  v29 = v3[7];
  v14 = v3[13];
  v25 = v14;
  v26 = v3[11];
  v27 = v3[14];
  if (*(*v3 + 16))
  {
    v22 = v3[2];
    v24 = v3[1];
    v16 = *(a3 + 280);
    v18 = sub_268614C8C();
    v6 = a2;
    result = v16(v9, 2, &type metadata for Google_Protobuf_UninterpretedOption.NamePart, v18, a2, a3);
    if (v4)
    {
      return result;
    }

    v7 = a1;
    v10 = v22;
  }

  if (!v12 || (result = (*(a3 + 112))(v11, v12, 3, v6, a3), !v4))
  {
    if ((v33 & 1) != 0 || (result = (*(a3 + 48))(v31, 4, v6, a3), !v4))
    {
      if ((v32 & 1) != 0 || (result = (*(a3 + 32))(v29, 5, v6, a3), !v4))
      {
        if ((v30 & 1) != 0 || (result = (*(a3 + 16))(6, v6, a3, v13), !v4))
        {
          if (v28 >> 60 == 15)
          {
            v20 = v27;
            if (!v27)
            {
LABEL_18:
              sub_2685BA80C(v8, v10);
              UnknownStorage.traverse<A>(visitor:)(v7, v6, a3);
              return sub_2685B593C(v8, v10);
            }
          }

          else
          {
            v23 = v10;
            v21 = *(a3 + 120);
            sub_2685BA80C(v26, v28);
            v21(v26, v28, 7, v6, a3);
            result = sub_2685B98FC(v26, v28);
            if (v4)
            {
              return result;
            }

            v10 = v23;
            v20 = v27;
            if (!v27)
            {
              goto LABEL_18;
            }
          }

          result = (*(a3 + 112))(v25, v20, 8, v6, a3);
          if (v4)
          {
            return result;
          }

          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.hashValue.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_268689E94();
  sub_268609810();
  return sub_268689EF4();
}

double sub_26860A1A4@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_26868BD70;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_26860A20C()
{
  v1 = sub_2685F0FB8(*v0);
  result = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 == -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26860A318@<X0>(void *a1@<X8>)
{
  if (qword_28028BD68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C7D0;
  v2 = qword_28028C7D8;
  v3 = unk_28028C7E0;
  *a1 = qword_28028C7C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860A3B4()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_26866FDF4();
}

uint64_t sub_26860A408()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_268689E94();
  sub_268609810();
  return sub_268689EF4();
}

__n128 sub_26860A4C8(__int128 *a1)
{
  v14 = v1[5];
  v15 = v1[6];
  v16 = *(v1 + 14);
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v8 = *(a1 + 8);
  v6 = a1[2];
  v7 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  sub_268609810();
  a1[2] = v6;
  a1[3] = v7;
  *(a1 + 8) = v8;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26860A570()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_268689E94();
  sub_268609810();
  return sub_268689EF4();
}

uint64_t sub_26860A630()
{
  result = MEMORY[0x26D61D4B0](0x726150656D614E2ELL, 0xE900000000000074);
  qword_28028C7E8 = 0xD000000000000023;
  unk_28028C7F0 = 0x8000000268694B50;
  return result;
}

uint64_t static Google_Protobuf_UninterpretedOption.NamePart._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C800;
  v2 = qword_28028C808;
  v3 = unk_28028C810;
  *a1 = qword_28028C7F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

BOOL Google_Protobuf_UninterpretedOption.NamePart.isInitialized.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32) == 2;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 344))(v3 + 16, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 320))(v3 + 32, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26860A874()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    MEMORY[0x26D61D8F0](1);
    result = sub_268689A24();
  }

  if (*(v0 + 32) != 2)
  {
    MEMORY[0x26D61D8F0](2);
    result = sub_268689EB4();
  }

  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      return result;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
LABEL_12:
    if (v6 == v7)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
    goto LABEL_12;
  }

  if ((v4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26860A938(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = *(v3 + 16);
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v6, v5);
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a1 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
    *a1 = v8;
  }

  v12 = *(v3 + 32);
  if (v12 == 2 || (result = sub_2685B33F4(v12 & 1, 2), !v2))
  {
    result = *v3;
    v14 = *(v3 + 8);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        return result;
      }

      v16 = *(result + 16);
      v17 = *(result + 24);
    }

    else
    {
      if (!v15)
      {
        if ((v14 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_17;
      }

      v16 = result;
      v17 = result >> 32;
    }

    if (v16 == v17)
    {
      return result;
    }

LABEL_17:
    if (*(a1 + 64) == 1)
    {
      return sub_26863B108(result, v14);
    }
  }

  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  if (!v10 || (result = (*(a3 + 112))(*(v3 + 16), v10, 1, a2, a3), !v4))
  {
    if (v11 == 2 || (result = (*(a3 + 104))(v11 & 1, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v8, v9);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v8, v9);
    }
  }

  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_268689E94();
  sub_26860A874();
  return sub_268689EF4();
}

double sub_26860AC34@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return result;
}

BOOL sub_26860AC78()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32) == 2;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t sub_26860ACC4@<X0>(void *a1@<X8>)
{
  if (qword_28028BD78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C800;
  v2 = qword_28028C808;
  v3 = unk_28028C810;
  *a1 = qword_28028C7F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860AD60()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_26866FED8();
}

uint64_t sub_26860AD9C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_268689E94();
  sub_26860A874();
  return sub_268689EF4();
}

__n128 sub_26860AE44(__int128 *a1)
{
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 32);
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v4 = *a1;
  v5 = a1[1];
  sub_26860A874();
  a1[2] = v6;
  a1[3] = v7;
  *(a1 + 8) = v8;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26860AED0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_268689E94();
  sub_26860A874();
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_SourceCodeInfo._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD80 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C820;
  v2 = qword_28028C828;
  v3 = unk_28028C830;
  *a1 = qword_28028C818;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860B0C4(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v5, v6);
  v7 = sub_2686131DC(v3, v4, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v3, v4);
  return v7 & 1;
}

uint64_t sub_26860B180(void (*a1)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_268689E94();
  a1(v7, v3, v4, v5);
  return sub_268689EF4();
}

uint64_t sub_26860B230@<X0>(void *a1@<X8>)
{
  if (qword_28028BD80 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C820;
  v2 = qword_28028C828;
  v3 = unk_28028C830;
  *a1 = qword_28028C818;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860B2F0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  a3(v9, v5, v6, v7);
  return sub_268689EF4();
}

uint64_t sub_26860B378(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  a4(v10, v6, v7, v8);
  return sub_268689EF4();
}

uint64_t sub_26860B3F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v8 = a2[2];
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v7, v8);
  v9 = sub_2686131DC(v5, v6, v7, v8);
  sub_2685B593C(v7, v8);
  sub_2685B593C(v5, v6);
  return v9 & 1;
}

uint64_t sub_26860B494()
{
  result = MEMORY[0x26D61D4B0](0x6F697461636F4C2ELL, 0xE90000000000006ELL);
  qword_28028C838 = 0xD00000000000001ELL;
  unk_28028C840 = 0x8000000268694B80;
  return result;
}

uint64_t static Google_Protobuf_SourceCodeInfo.Location._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C850;
  v2 = qword_28028C858;
  v3 = unk_28028C860;
  *a1 = qword_28028C848;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          (*(a3 + 88))(v3, a2, a3);
        }

        else if (result == 2)
        {
          (*(a3 + 88))(v3 + 8, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            (*(a3 + 344))(v3 + 40, a2, a3);
            break;
          case 4:
            (*(a3 + 344))(v3 + 56, a2, a3);
            break;
          case 6:
            (*(a3 + 352))(v3 + 16, a2, a3);
            break;
        }
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26860B724()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D8F0](v2);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      result = sub_268689EC4();
      --v2;
    }

    while (v2);
  }

  v6 = v0[1];
  v7 = *(v6 + 16);
  if (v7)
  {
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D8F0](v7);
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      result = sub_268689EC4();
      --v7;
    }

    while (v7);
  }

  if (v0[6])
  {
    v10 = v0[5];
    MEMORY[0x26D61D8F0](3);
    result = sub_268689A24();
  }

  if (v0[8])
  {
    v11 = v0[7];
    MEMORY[0x26D61D8F0](4);
    result = sub_268689A24();
  }

  v12 = v0[2];
  v13 = *(v12 + 16);
  if (v13)
  {
    MEMORY[0x26D61D8F0](6);
    MEMORY[0x26D61D8F0](v13);
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      sub_268689A24();

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v17 = v0[3];
  v18 = v0[4];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      return result;
    }

    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
LABEL_21:
    if (v20 == v21)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v19)
  {
    v20 = v17;
    v21 = v17 >> 32;
    goto LABEL_21;
  }

  if ((v18 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26860B8A0(uint64_t a1)
{
  v3 = v1;
  if (!*(*v3 + 16) || (result = sub_2685B99A0(*v3, 1), !v2))
  {
    v6 = v3[1];
    if (!*(v6 + 16) || (result = sub_2685B99A0(v6, 2), !v2))
    {
      v7 = v3[6];
      if (v7)
      {
        v8 = v3[5];
        sub_2685B301C(3);
        sub_2685B403C(": ", 2, v9);
        sub_2685B43A4(v8, v7);
        v10 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
          *a1 = v10;
        }

        v13 = *(v10 + 2);
        v12 = *(v10 + 3);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          v28 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
          v14 = v13 + 1;
          v10 = v28;
        }

        *(v10 + 2) = v14;
        v10[v13 + 32] = 10;
        *a1 = v10;
      }

      v15 = v3[8];
      if (v15)
      {
        v16 = v3[7];
        sub_2685B301C(4);
        sub_2685B403C(": ", 2, v17);
        sub_2685B43A4(v16, v15);
        v18 = *a1;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v18;
        if ((v19 & 1) == 0)
        {
          v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
          *a1 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v29 = sub_2685B3F48((v20 > 1), v21 + 1, 1, v18);
          v22 = v21 + 1;
          v18 = v29;
        }

        *(v18 + 2) = v22;
        v18[v21 + 32] = 10;
        *a1 = v18;
      }

      v23 = v3[2];
      if (!*(v23 + 16) || (result = sub_2685B530C(v23, 6), !v2))
      {
        result = v3[3];
        v24 = v3[4];
        v25 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v25 != 2)
          {
            return result;
          }

          v26 = *(result + 16);
          v27 = *(result + 24);
        }

        else
        {
          if (!v25)
          {
            if ((v24 & 0xFF000000000000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }

          v26 = result;
          v27 = result >> 32;
        }

        if (v26 == v27)
        {
          return result;
        }

LABEL_27:
        if (*(a1 + 64) == 1)
        {
          return sub_26863B108(result, v24);
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v16 = v3[2];
  v14 = v3[4];
  v15 = v3[3];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = v3[8];
  if (!*(*v3 + 16) || (result = (*(a3 + 312))(), !v4))
  {
    if (!*(v8 + 16) || (result = (*(a3 + 312))(v8, 2, a2, a3), !v4))
    {
      if (!v10 || (result = (*(a3 + 112))(v9, v10, 3, a2, a3), !v4))
      {
        if (!v12 || (result = (*(a3 + 112))(v11, v12, 4, a2, a3), !v4))
        {
          if (!*(v16 + 16) || (result = (*(a3 + 256))(), !v4))
          {
            sub_2685BA80C(v15, v14);
            UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
            return sub_2685B593C(v15, v14);
          }
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.hashValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_268689E94();
  sub_26860B724();
  return sub_268689EF4();
}

double sub_26860BD44@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = xmmword_26868A5E0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t sub_26860BD98@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t sub_26860BDA4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_26860BE08@<X0>(void *a1@<X8>)
{
  if (qword_28028BD90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C850;
  v2 = qword_28028C858;
  v3 = unk_28028C860;
  *a1 = qword_28028C848;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860BEA4()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_2686700A0();
}

uint64_t sub_26860BEE8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_268689E94();
  sub_26860B724();
  return sub_268689EF4();
}

__n128 sub_26860BF98(__int128 *a1)
{
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + 8);
  v9 = *v1;
  v10 = v1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v4 = *a1;
  v5 = a1[1];
  sub_26860B724();
  a1[2] = v6;
  a1[3] = v7;
  *(a1 + 8) = v8;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26860C02C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_268689E94();
  sub_26860B724();
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BD98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C870;
  v2 = qword_28028C878;
  v3 = unk_28028C880;
  *a1 = qword_28028C868;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *(a3 + 16);
  result = v11(a2, a3);
  if (!v6)
  {
    while ((v13 & 1) == 0)
    {
      if (result == 1)
      {
        v15 = *(a3 + 416);
        v14 = a4();
        v15(v5, a5, v14, a2, a3);
      }

      result = v11(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26860C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  if (!*(*v5 + 16) || (v16 = *(a3 + 280), v14 = a4(), result = v16(v11, 1, a5, v14, a2, a3), !v6))
  {
    sub_2685BA80C(v10, v12);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v10, v12);
  }

  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  if (*(v2 + 16))
  {
    sub_2685DBD70(v2, 1);
  }

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return sub_268689EF4();
    }

    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_11;
    }

    v5 = v1;
    v6 = v1 >> 32;
  }

  if (v5 != v6)
  {
LABEL_11:
    sub_268689844();
  }

  return sub_268689EF4();
}

uint64_t sub_26860C564@<X0>(void *a1@<X8>)
{
  if (qword_28028BD98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C870;
  v2 = qword_28028C878;
  v3 = unk_28028C880;
  *a1 = qword_28028C868;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860C61C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  if (*(v2 + 16))
  {
    sub_2685DBD70(v2, 1);
  }

  sub_2685C962C(&v5, v1, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26860C6F8()
{
  result = MEMORY[0x26D61D4B0](0x7461746F6E6E412ELL, 0xEB000000006E6F69);
  qword_28028C888 = 0xD000000000000021;
  unk_28028C890 = 0x8000000268694BA0;
  return result;
}

uint64_t sub_26860C794(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t static Google_Protobuf_GeneratedCodeInfo.Annotation._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C8A0;
  v2 = qword_28028C8A8;
  v3 = unk_28028C8B0;
  *a1 = qword_28028C898;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          (*(a3 + 80))(v3 + 40, a2, a3);
        }

        else if (result == 4)
        {
          (*(a3 + 80))(v3 + 48, a2, a3);
        }
      }

      else if (result == 1)
      {
        (*(a3 + 88))(v3, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 344))(v3 + 24, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26860C9D4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D8F0](v2);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      result = sub_268689EC4();
      --v2;
    }

    while (v2);
  }

  if (v0[4])
  {
    v6 = v0[3];
    MEMORY[0x26D61D8F0](2);
    result = sub_268689A24();
  }

  if ((*(v0 + 44) & 1) == 0)
  {
    v7 = *(v0 + 10);
    MEMORY[0x26D61D8F0](3);
    result = MEMORY[0x26D61D920](v7);
  }

  if ((*(v0 + 52) & 1) == 0)
  {
    v8 = *(v0 + 12);
    MEMORY[0x26D61D8F0](4);
    result = MEMORY[0x26D61D920](v8);
  }

  v9 = v0[1];
  v10 = v0[2];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      return result;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
LABEL_17:
    if (v12 == v13)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v11)
  {
    v12 = v9;
    v13 = v9 >> 32;
    goto LABEL_17;
  }

  if ((v10 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26860CAE4(uint64_t a1)
{
  v3 = v1;
  if (!*(*v3 + 16) || (result = sub_2685B99A0(*v3, 1), !v2))
  {
    v6 = v3[4];
    if (v6)
    {
      v7 = v3[3];
      sub_2685B301C(2);
      sub_2685B403C(": ", 2, v8);
      sub_2685B43A4(v7, v6);
      v9 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        *a1 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v9[v12 + 32] = 10;
      *a1 = v9;
    }

    if ((*(v3 + 44) & 1) != 0 || (result = sub_2686440C0(*(v3 + 10), 3), !v2))
    {
      if ((*(v3 + 52) & 1) != 0 || (result = sub_2686440C0(*(v3 + 12), 4), !v2))
      {
        result = v3[1];
        v13 = v3[2];
        v14 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v14 != 2)
          {
            return result;
          }

          v15 = *(result + 16);
          v16 = *(result + 24);
        }

        else
        {
          if (!v14)
          {
            if ((v13 & 0xFF000000000000) == 0)
            {
              return result;
            }

            goto LABEL_21;
          }

          v15 = result;
          v16 = result >> 32;
        }

        if (v15 == v16)
        {
          return result;
        }

LABEL_21:
        if (*(a1 + 64) == 1)
        {
          return sub_26863B108(result, v13);
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *(v3 + 8);
  v8 = *(v3 + 24);
  v15 = *(v3 + 16);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 44);
  v14 = *(v3 + 48);
  v12 = *(v3 + 52);
  if (!*(*v3 + 16) || (result = (*(a3 + 312))(), !v4))
  {
    if (!v9 || (result = (*(a3 + 112))(v8, v9, 2, a2, a3), !v4))
    {
      if ((v11 & 1) != 0 || (result = (*(a3 + 24))(v10, 3, a2, a3), !v4))
      {
        if ((v12 & 1) != 0 || (result = (*(a3 + 24))(v14, 4, a2, a3), !v4))
        {
          sub_2685BA80C(v16, v15);
          UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
          return sub_2685B593C(v16, v15);
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[13] = *(v0 + 45);
  sub_268689E94();
  sub_26860C9D4();
  return sub_268689EF4();
}

double sub_26860CE94@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return result;
}

uint64_t sub_26860CEF0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_26860CF80@<X0>(void *a1@<X8>)
{
  if (qword_28028BDA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C8A0;
  v2 = qword_28028C8A8;
  v3 = unk_28028C8B0;
  *a1 = qword_28028C898;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26860D01C()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[13] = *(v0 + 45);
  return sub_268670270();
}

uint64_t sub_26860D060()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[13] = *(v0 + 45);
  sub_268689E94();
  sub_26860C9D4();
  return sub_268689EF4();
}

__n128 sub_26860D110(__int128 *a1)
{
  v9 = *v1;
  v10 = v1[1];
  *v11 = v1[2];
  *&v11[13] = *(v1 + 45);
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v4 = *a1;
  v5 = a1[1];
  sub_26860C9D4();
  a1[2] = v6;
  a1[3] = v7;
  *(a1 + 8) = v8;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26860D1A4()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[13] = *(v0 + 45);
  sub_268689E94();
  sub_26860C9D4();
  return sub_268689EF4();
}

uint64_t sub_26860D254(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_26860E120(a1, a2, sub_2685CD9AC);
}

uint64_t sub_26860D2C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v36 = *(v5 + 64);
    v37 = v8;
    v38 = *(v5 + 96);
    v39 = *(v5 + 112);
    v9 = *(v5 + 16);
    v33[0] = *v5;
    v33[1] = v9;
    v10 = *(v5 + 48);
    v34 = *(v5 + 32);
    v35 = v10;
    v25 = v33[0];
    v26 = v9;
    v27 = v34;
    v28 = v10;
    v29 = v36;
    v30 = v8;
    v31 = v38;
    v32 = v39;
    v11 = *(v6 + 80);
    v43 = *(v6 + 64);
    v44 = v11;
    v45 = *(v6 + 96);
    v46 = *(v6 + 112);
    v12 = *(v6 + 16);
    v40[0] = *v6;
    v40[1] = v12;
    v13 = *(v6 + 48);
    v41 = *(v6 + 32);
    v42 = v13;
    v17 = v40[0];
    v18 = v12;
    v19 = v41;
    v20 = v13;
    v21 = v43;
    v22 = v11;
    v23 = v45;
    v24 = v46;
    sub_268619040(v33, v16);
    sub_268619040(v40, v16);
    v14 = _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(&v25, &v17);
    v47[4] = v21;
    v47[5] = v22;
    v47[6] = v23;
    v47[0] = v17;
    v47[1] = v18;
    v48 = v24;
    v47[2] = v19;
    v47[3] = v20;
    sub_268619078(v47);
    v49[4] = v29;
    v49[5] = v30;
    v49[6] = v31;
    v50 = v32;
    v49[0] = v25;
    v49[1] = v26;
    v49[2] = v27;
    v49[3] = v28;
    sub_268619078(v49);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 120;
    v5 += 120;
  }

  return 1;
}

uint64_t sub_26860D458(uint64_t a1, uint64_t a2)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      while (1)
      {
        v6 = *(v4 - 4);
        v5 = *(v4 - 3);
        v7 = *(v4 - 1);
        v8 = *v4;
        v9 = *(v3 - 4);
        v10 = *(v3 - 3);
        v11 = *(v3 - 1);
        v12 = *v3;
        if (v7)
        {
          if (!v11)
          {
            goto LABEL_66;
          }

          if (*(v4 - 2) != *(v3 - 2) || v7 != v11)
          {
            v14 = *(v4 - 1);
            v15 = *(v3 - 1);
            v41 = v4;
            v16 = v3;
            v17 = v2;
            v18 = v5;
            v19 = v6;
            v20 = v10;
            v21 = v9;
            v22 = sub_268689E14();
            v9 = v21;
            v10 = v20;
            v6 = v19;
            v5 = v18;
            v2 = v17;
            v3 = v16;
            v4 = v41;
            if ((v22 & 1) == 0)
            {
              goto LABEL_66;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_66;
        }

        if (v8 == 2)
        {
          if (v12 != 2)
          {
            goto LABEL_66;
          }
        }

        else if (v12 == 2 || ((v8 ^ v12) & 1) != 0)
        {
          goto LABEL_66;
        }

        v23 = v5 >> 62;
        v24 = v10 >> 62;
        if (v5 >> 62 == 3)
        {
          break;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v31 = *(v6 + 16);
            v30 = *(v6 + 24);
            v28 = __OFSUB__(v30, v31);
            v25 = v30 - v31;
            if (v28)
            {
              goto LABEL_71;
            }

            goto LABEL_37;
          }

          v25 = 0;
          if (v24 <= 1)
          {
            goto LABEL_38;
          }
        }

        else if (v23)
        {
          LODWORD(v25) = HIDWORD(v6) - v6;
          if (__OFSUB__(HIDWORD(v6), v6))
          {
            goto LABEL_72;
          }

          v25 = v25;
          if (v24 <= 1)
          {
LABEL_38:
            if (v24)
            {
              LODWORD(v29) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
              }

              v29 = v29;
            }

            else
            {
              v29 = BYTE6(v10);
            }

            goto LABEL_42;
          }
        }

        else
        {
          v25 = BYTE6(v5);
          if (v24 <= 1)
          {
            goto LABEL_38;
          }
        }

LABEL_31:
        if (v24 != 2)
        {
          if (v25)
          {
            goto LABEL_66;
          }

          goto LABEL_6;
        }

        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          goto LABEL_70;
        }

LABEL_42:
        if (v25 != v29)
        {
          goto LABEL_66;
        }

        if (v25 < 1)
        {
          goto LABEL_6;
        }

        if (v23 > 1)
        {
          v40 = v9;
          if (v23 == 2)
          {
            v33 = *(v6 + 16);
            v34 = *(v6 + 24);
            sub_2685BA80C(v6, v5);

            sub_2685BA80C(v40, v10);

            sub_2685BA80C(v6, v5);
            sub_2685BA80C(v40, v10);
            v35 = sub_268689764();
            if (v35)
            {
              v36 = sub_268689794();
              if (__OFSUB__(v33, v36))
              {
                goto LABEL_75;
              }

              v35 += v33 - v36;
            }

            if (__OFSUB__(v34, v33))
            {
              goto LABEL_74;
            }

            goto LABEL_62;
          }

          memset(v43, 0, 14);
          sub_2685BA80C(v6, v5);

          sub_2685BA80C(v40, v10);

          sub_2685BA80C(v6, v5);
          sub_2685BA80C(v40, v10);
          sub_268612934(v43, v40, v10, &v42);
          sub_2685B593C(v40, v10);
          sub_2685B593C(v6, v5);
          sub_2685B593C(v40, v10);

          sub_2685B593C(v6, v5);
        }

        else
        {
          if (v23)
          {
            v40 = v9;
            if (v6 >> 32 < v6)
            {
              goto LABEL_73;
            }

            sub_2685BA80C(v6, v5);

            sub_2685BA80C(v40, v10);

            sub_2685BA80C(v6, v5);
            sub_2685BA80C(v40, v10);
            v35 = sub_268689764();
            if (v35)
            {
              v37 = sub_268689794();
              if (__OFSUB__(v6, v37))
              {
                goto LABEL_76;
              }

              v35 += v6 - v37;
            }

LABEL_62:
            sub_268689784();
            sub_268612934(v35, v40, v10, v43);
            sub_2685B593C(v40, v10);
            sub_2685B593C(v6, v5);
            sub_2685B593C(v40, v10);

            sub_2685B593C(v6, v5);

            if ((v43[0] & 1) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_6;
          }

          v43[0] = v6;
          LOWORD(v43[1]) = v5;
          BYTE2(v43[1]) = BYTE2(v5);
          BYTE3(v43[1]) = BYTE3(v5);
          BYTE4(v43[1]) = BYTE4(v5);
          BYTE5(v43[1]) = BYTE5(v5);
          v32 = v9;
          sub_2685BA80C(v6, v5);

          sub_2685BA80C(v32, v10);

          sub_2685BA80C(v6, v5);
          sub_2685BA80C(v32, v10);
          sub_268612934(v43, v32, v10, &v42);
          sub_2685B593C(v32, v10);
          sub_2685B593C(v6, v5);
          sub_2685B593C(v32, v10);

          sub_2685B593C(v6, v5);
        }

        if (!v42)
        {
          goto LABEL_66;
        }

LABEL_6:
        v4 += 40;
        v3 += 40;
        if (!--v2)
        {
          goto LABEL_67;
        }
      }

      v25 = 0;
      if (!v6 && v5 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v25 = 0;
        if (!v9 && v10 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_37:
      if (v24 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_67:
    result = 1;
  }

  else
  {
LABEL_66:
    result = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26860DA4C(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_79;
  }

  if (!v2 || a1 == a2)
  {
LABEL_80:
    result = 1;
    goto LABEL_81;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  v5 = *(a1 + 48);
  *v47 = *(a1 + 32);
  *&v47[16] = v5;
  *v48 = *(a1 + 64);
  *&v48[13] = *(a1 + 77);
  v6 = *v47;
  *&v50[13] = *(a2 + 77);
  v7 = *(a2 + 64);
  *&v49[16] = *(a2 + 48);
  *v50 = v7;
  *v49 = *(a2 + 32);
  v8 = *v49;
  v9 = *(*v47 + 16);
  if (v9 != *(*v49 + 16))
  {
    goto LABEL_79;
  }

  v10 = 0;
  v11 = 1;
  while (!v9 || v6 == v8)
  {
LABEL_11:
    if (*v48)
    {
      if (!*v50)
      {
        goto LABEL_79;
      }

      v14 = *&v47[24] == *&v49[24] && *v48 == *v50;
      if (!v14 && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*v50)
    {
      goto LABEL_79;
    }

    if (v48[12])
    {
      if ((v50[12] & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if ((v50[12] & 1) != 0 || *&v48[8] != *&v50[8])
    {
      goto LABEL_79;
    }

    if (v48[20])
    {
      if ((v50[20] & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if ((v50[20] & 1) != 0 || *&v48[16] != *&v50[16])
    {
      goto LABEL_79;
    }

    v16 = *&v47[8];
    v15 = *&v47[16];
    v17 = *&v49[8];
    v18 = *&v49[16];
    v19 = *&v47[16] >> 62;
    v20 = *&v49[16] >> 62;
    if (*&v47[16] >> 62 == 3)
    {
      v21 = 0;
      if (*&v47[8] == __PAIR128__(0xC000000000000000, 0) && *&v49[16] >> 62 == 3)
      {
        v21 = 0;
        if (*&v49[8] == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_77;
        }
      }

LABEL_50:
      if (v20 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        v21 = v47[22];
        if (v20 > 1)
        {
          goto LABEL_38;
        }

        goto LABEL_51;
      }

      LODWORD(v21) = *&v47[12] - *&v47[8];
      if (__OFSUB__(*&v47[12], *&v47[8]))
      {
        goto LABEL_84;
      }

      v21 = v21;
      goto LABEL_50;
    }

    if (v19 == 2)
    {
      v27 = *(*&v47[8] + 16);
      v26 = *(*&v47[8] + 24);
      v24 = __OFSUB__(v26, v27);
      v21 = v26 - v27;
      if (v24)
      {
        goto LABEL_83;
      }

      goto LABEL_50;
    }

    v21 = 0;
    if (v20 > 1)
    {
LABEL_38:
      if (v20 != 2)
      {
        if (v21)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      v23 = *(*&v49[8] + 16);
      v22 = *(*&v49[8] + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
      }

      goto LABEL_55;
    }

LABEL_51:
    if (v20)
    {
      LODWORD(v25) = *&v49[12] - *&v49[8];
      if (__OFSUB__(*&v49[12], *&v49[8]))
      {
        goto LABEL_82;
      }

      v25 = v25;
    }

    else
    {
      v25 = v49[22];
    }

LABEL_55:
    if (v21 != v25)
    {
      goto LABEL_79;
    }

    if (v21 >= 1)
    {
      if (v19 > 1)
      {
        v44 = *&v49[8];
        if (v19 != 2)
        {
          memset(v45, 0, 14);
          sub_268618F70(v47, v46);
          sub_268618F70(v49, v46);
          sub_2685BA80C(v16, v15);
          v17 = v44;
          sub_2685BA80C(v44, v18);
          v28 = v44;
          v29 = v18;
LABEL_76:
          sub_268612934(v45, v28, v29, v46);
          sub_2685B593C(v17, v18);
          sub_2685B593C(v16, v15);
          sub_268618FA8(v49);
          sub_268618FA8(v47);
          if (!v46[0])
          {
            goto LABEL_79;
          }

          goto LABEL_77;
        }

        v43 = v10;
        v30 = *(*&v47[8] + 16);
        v42 = *(*&v47[8] + 24);
        sub_268618F70(v47, v46);
        sub_268618F70(v49, v46);
        sub_2685BA80C(v16, v15);
        sub_2685BA80C(v44, v18);
        v31 = sub_268689764();
        if (v31)
        {
          v32 = sub_268689794();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_87;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v42, v30))
        {
          goto LABEL_86;
        }

        sub_268689784();
        v33 = v31;
        v10 = v43;
        v17 = v44;
      }

      else
      {
        if (!v19)
        {
          v45[0] = *&v47[8];
          LOWORD(v45[1]) = *&v47[16];
          *(&v45[1] + 2) = *&v47[18];
          sub_268618F70(v47, v46);
          sub_268618F70(v49, v46);
          sub_2685BA80C(v16, v15);
          sub_2685BA80C(v17, v18);
          v28 = v17;
          v29 = v18;
          goto LABEL_76;
        }

        if (*&v47[8] >> 32 < *&v47[8])
        {
          goto LABEL_85;
        }

        sub_268618F70(v47, v46);
        sub_268618F70(v49, v46);
        sub_2685BA80C(v16, v15);
        sub_2685BA80C(v17, v18);
        v34 = sub_268689764();
        if (v34)
        {
          v35 = sub_268689794();
          if (__OFSUB__(v16, v35))
          {
            goto LABEL_88;
          }

          v34 += v16 - v35;
        }

        sub_268689784();
        v33 = v34;
      }

      sub_268612934(v33, v17, v18, v46);
      sub_2685B593C(v17, v18);
      sub_2685B593C(v16, v15);
      sub_268618FA8(v49);
      sub_268618FA8(v47);
      if (!v46[0])
      {
        goto LABEL_79;
      }
    }

LABEL_77:
    if (v11 == v2)
    {
      goto LABEL_80;
    }

    v36 = 56 * v11++;
    v37 = *(v3 + v36 + 16);
    *v47 = *(v3 + v36);
    *&v47[16] = v37;
    *v48 = *(v3 + v36 + 32);
    *&v48[13] = *(v3 + v36 + 45);
    v6 = *v47;
    v38 = v4 + v36;
    *&v50[13] = *(v38 + 45);
    v39 = *(v38 + 32);
    *&v49[16] = *(v38 + 16);
    *v50 = v39;
    *v49 = *v38;
    v8 = *v49;
    v9 = *(*v47 + 16);
    if (v9 != *(*v49 + 16))
    {
      goto LABEL_79;
    }
  }

  v12 = (v6 + 32);
  v13 = (v8 + 32);
  while (*v12 == *v13)
  {
    ++v12;
    ++v13;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

LABEL_79:
  result = 0;
LABEL_81:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26860E058(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26860E0B4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_26860E120(a1, a2, sub_2685F35C0);
}

uint64_t sub_26860E120(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v42[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (v3 && a1 != a2)
    {
      v39 = 0;
      v4 = (a1 + 48);
      v5 = (a2 + 48);
      while (1)
      {
        v8 = *(v4 - 2);
        v7 = *(v4 - 1);
        v9 = *v4;
        v11 = *(v5 - 2);
        v10 = *(v5 - 1);
        v12 = *v5;
        sub_2685BA80C(v8, v7);

        sub_2685BA80C(v11, v10);

        if (v9 != v12)
        {

          v13 = a3(v9, v12);

          if ((v13 & 1) == 0)
          {
LABEL_62:
            sub_2685B593C(v11, v10);

            sub_2685B593C(v8, v7);

            goto LABEL_63;
          }
        }

        v14 = v7 >> 62;
        v15 = v10 >> 62;
        if (v7 >> 62 == 3)
        {
          break;
        }

        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v24 = *(v8 + 16);
            v23 = *(v8 + 24);
            v21 = __OFSUB__(v23, v24);
            v16 = v23 - v24;
            if (v21)
            {
              goto LABEL_67;
            }

            goto LABEL_27;
          }

          v16 = 0;
          if (v15 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v14)
        {
          LODWORD(v16) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_68;
          }

          v16 = v16;
          if (v15 <= 1)
          {
LABEL_28:
            if (v15)
            {
              LODWORD(v22) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
              }

              v22 = v22;
            }

            else
            {
              v22 = BYTE6(v10);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v16 = BYTE6(v7);
          if (v15 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v15 != 2)
        {
          if (v16)
          {
            goto LABEL_62;
          }

LABEL_39:
          sub_2685B593C(v11, v10);

          v17 = v8;
          v18 = v7;
LABEL_40:
          sub_2685B593C(v17, v18);

          goto LABEL_8;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v21)
        {
          goto LABEL_66;
        }

LABEL_34:
        if (v16 != v22)
        {
          goto LABEL_62;
        }

        if (v16 < 1)
        {
          goto LABEL_39;
        }

        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v36 = *(v8 + 24);
            v38 = *(v8 + 16);
            sub_2685BA80C(v8, v7);
            sub_2685BA80C(v11, v10);
            v25 = sub_268689764();
            if (v25)
            {
              v26 = v25;
              v27 = sub_268689794();
              v28 = v38;
              if (__OFSUB__(v38, v27))
              {
                goto LABEL_71;
              }

              v35 = v38 - v27 + v26;
            }

            else
            {
              v35 = 0;
              v28 = v38;
            }

            if (__OFSUB__(v36, v28))
            {
              goto LABEL_70;
            }

            sub_268689784();
            v32 = v35;
            goto LABEL_59;
          }

          memset(v42, 0, 14);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v11, v10);
        }

        else
        {
          if (v14)
          {
            if (v8 >> 32 < v8)
            {
              goto LABEL_69;
            }

            sub_2685BA80C(v8, v7);
            sub_2685BA80C(v11, v10);
            v29 = sub_268689764();
            if (v29)
            {
              v37 = v29;
              v30 = sub_268689794();
              if (__OFSUB__(v8, v30))
              {
                goto LABEL_72;
              }

              v31 = v8 - v30 + v37;
            }

            else
            {
              v31 = 0;
            }

            sub_268689784();
            v32 = v31;
LABEL_59:
            v6 = v39;
            sub_268612934(v32, v11, v10, v42);
            sub_2685B593C(v11, v10);
            sub_2685B593C(v8, v7);
            sub_2685B593C(v11, v10);

            sub_2685B593C(v8, v7);

            if ((v42[0] & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_7;
          }

          v42[0] = v8;
          LOWORD(v42[1]) = v7;
          BYTE2(v42[1]) = BYTE2(v7);
          BYTE3(v42[1]) = BYTE3(v7);
          BYTE4(v42[1]) = BYTE4(v7);
          BYTE5(v42[1]) = BYTE5(v7);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v11, v10);
        }

        v6 = v39;
        sub_268612934(v42, v11, v10, &v41);
        sub_2685B593C(v11, v10);
        sub_2685B593C(v8, v7);
        sub_2685B593C(v11, v10);

        sub_2685B593C(v8, v7);

        if (!v41)
        {
          goto LABEL_63;
        }

LABEL_7:
        v39 = v6;
LABEL_8:
        v4 += 3;
        v5 += 3;
        if (!--v3)
        {
          goto LABEL_61;
        }
      }

      v16 = 0;
      if (!v8 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v16 = 0;
        if (!v11 && v10 == 0xC000000000000000)
        {
          sub_2685B593C(0, 0xC000000000000000);

          v17 = 0;
          v18 = 0xC000000000000000;
          goto LABEL_40;
        }
      }

LABEL_27:
      if (v15 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_61:
    result = 1;
  }

  else
  {
LABEL_63:
    result = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}