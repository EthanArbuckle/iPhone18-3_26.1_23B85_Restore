unint64_t DynamicLoadablePreviewProduct.Location.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6574756C6F736261;
  }

  *v0;
  return result;
}

uint64_t sub_25F3DF3AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6574756C6F736261;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x800000025F4B5A50;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x6574756C6F736261;
  }

  if (*a2)
  {
    v7 = 0x800000025F4B5A50;
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
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

void sub_25F3DF464(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B5A50;
  v3 = 0x6574756C6F736261;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F3DF4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3E1C9C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F3DF56C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3DF5F4()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3DF668()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

PreviewsMessagingOS::DynamicLoadablePreviewProduct::LoadingStrategy_optional __swiftcall DynamicLoadablePreviewProduct.LoadingStrategy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DynamicLoadablePreviewProduct.LoadingStrategy.rawValue.getter()
{
  v1 = 0x746365726964;
  if (*v0 != 1)
  {
    v1 = 0x74696A6F78;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E7562;
  }
}

uint64_t sub_25F3DF798(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746365726964;
  if (v2 != 1)
  {
    v5 = 0x74696A6F78;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656C646E7562;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x746365726964;
  if (*a2 != 1)
  {
    v8 = 0x74696A6F78;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C646E7562;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

void sub_25F3DF890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746365726964;
  if (v2 != 1)
  {
    v5 = 0x74696A6F78;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F3DF8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3E1C48();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F3DF9A8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3DFA40()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3DFAC4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t DynamicLoadablePreviewProduct.ExternalFunctionBinding.dlopenMode.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F3DFB78@<X0>(char *a1@<X8>)
{
  v2 = sub_25F4A3170();

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

uint64_t DynamicLoadablePreviewProduct.ExternalFunctionBinding.rawValue.getter()
{
  if (*v0)
  {
    result = 0x74616964656D6D69;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_25F3DFC18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74616964656D6D69;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x74616964656D6D69;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
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
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3DFCD0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

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

void sub_25F3DFD2C(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x74616964656D6D69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F3DFD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3E1BF4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F3DFE34()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3DFEBC()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3DFF30()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t DynamicLoadablePreviewProduct.path.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DynamicLoadablePreviewProduct.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DynamicLoadablePreviewProduct.executablePath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DynamicLoadablePreviewProduct.executablePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DynamicLoadablePreviewProduct.moduleName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DynamicLoadablePreviewProduct.moduleName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t DynamicLoadablePreviewProduct.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 56);
  v10 = *(v0 + 57);
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A2C60();

  sub_25F4A2C60();
  sub_25F4A2C60();

  return sub_25F4A3320();
}

uint64_t DynamicLoadablePreviewProduct.hashValue.getter()
{
  sub_25F4A3300();
  DynamicLoadablePreviewProduct.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F3E0420()
{
  sub_25F4A3300();
  DynamicLoadablePreviewProduct.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F3E0464()
{
  sub_25F4A3300();
  DynamicLoadablePreviewProduct.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F3E04BC()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3E05F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F3E1BA8();
  *a2 = result;
  return result;
}

void sub_25F3E0620(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  v5 = 0x800000025F4B5AD0;
  v6 = 0xD000000000000017;
  if (v2 != 5)
  {
    v6 = 0x7269757165527369;
    v5 = 0xEA00000000006465;
  }

  v7 = 0xEF79676574617274;
  v8 = 0x53676E6964616F6CLL;
  if (v2 != 3)
  {
    v8 = 0x614E656C75646F6DLL;
    v7 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0068746150656CLL;
  v10 = 0x6261747563657865;
  if (v2 != 1)
  {
    v10 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_25F3E071C()
{
  v1 = *v0;
  v2 = 1752457584;
  v3 = 0xD000000000000017;
  if (v1 != 5)
  {
    v3 = 0x7269757165527369;
  }

  v4 = 0x53676E6964616F6CLL;
  if (v1 != 3)
  {
    v4 = 0x614E656C75646F6DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6261747563657865;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t DynamicLoadablePreviewProduct.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[10] = *(v0 + 42);
  return sub_25F4A25A0();
}

uint64_t sub_25F3E086C(uint64_t *a1)
{
  v10 = *a1;
  v11 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v7 = *(a1 + 32);
  v6 = *(a1 + 33);
  v4 = a1[5];
  v5 = a1[6];
  v3 = *(a1 + 56);
  v2 = *(a1 + 57);
  sub_25F3E123C();
  sub_25F3E12DC();
  sub_25F3E1330();
  sub_25F3E1384();
  return sub_25F4A2880();
}

uint64_t DynamicLoadablePreviewProduct.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
  v5 = sub_25F3E123C();
  v22 = v5;
  LOBYTE(v20[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v8 = v23;
    v7 = v24;
    v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 2;
    sub_25F3E12DC();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 3;
    sub_25F3E1330();
    sub_25F4A2530();
    v25 = v16;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v9 = v28;
    v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 4;
    sub_25F4A2530();
    v15 = v9;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 5;
    sub_25F3E1384();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v11 = v27;
    v21 = &type metadata for DynamicLoadablePreviewProduct.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 6;
    sub_25F4A2580();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    v13 = (v26 == 2) | v26;
    v14 = v25 & 1;
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v14;
    *(a2 + 33) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17;
    *(a2 + 56) = v11;
    *(a2 + 57) = v13 & 1;
  }

  return result;
}

uint64_t sub_25F3E0DDC()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[10] = *(v0 + 42);
  return sub_25F4A25A0();
}

uint64_t _s19PreviewsMessagingOS29DynamicLoadablePreviewProductV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 40);
  v31 = *(a1 + 57);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 40);
  v34 = *(a2 + 48);
  v35 = *(a1 + 48);
  v32 = *(a2 + 56);
  v33 = *(a1 + 56);
  v30 = *(a2 + 57);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25F4A3270() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v12 = 0xD000000000000012;
  }

  else
  {
    v12 = 0x6574756C6F736261;
  }

  if (v4)
  {
    v13 = 0x800000025F4B5A50;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (v9)
  {
    v14 = 0xD000000000000012;
  }

  else
  {
    v14 = 0x6574756C6F736261;
  }

  if (v9)
  {
    v15 = 0x800000025F4B5A50;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_25F4A3270();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v17 = 0xE600000000000000;
      v18 = 0x746365726964;
    }

    else
    {
      v17 = 0xE500000000000000;
      v18 = 0x74696A6F78;
    }
  }

  else
  {
    v17 = 0xE600000000000000;
    v18 = 0x656C646E7562;
  }

  v19 = 0xE600000000000000;
  v20 = 0x746365726964;
  if (v10 != 1)
  {
    v20 = 0x74696A6F78;
    v19 = 0xE500000000000000;
  }

  if (v10)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x656C646E7562;
  }

  if (v10)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xE600000000000000;
  }

  if (v18 == v21 && v17 == v22)
  {
  }

  else
  {
    v23 = sub_25F4A3270();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 == v11 && v35 == v34 || (sub_25F4A3270() & 1) != 0)
  {
    if (v33)
    {
      v24 = 0x74616964656D6D69;
    }

    else
    {
      v24 = 0x746C7561666564;
    }

    if (v33)
    {
      v25 = 0xE900000000000065;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    if (v32)
    {
      v26 = 0x74616964656D6D69;
    }

    else
    {
      v26 = 0x746C7561666564;
    }

    if (v32)
    {
      v27 = 0xE900000000000065;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    if (v24 == v26 && v25 == v27)
    {

      return v31 ^ v30 ^ 1u;
    }

    v28 = sub_25F4A3270();

    if (v28)
    {
      return v31 ^ v30 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_25F3E123C()
{
  result = qword_27FD6D390;
  if (!qword_27FD6D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D390);
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

unint64_t sub_25F3E12DC()
{
  result = qword_27FD6D398;
  if (!qword_27FD6D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D398);
  }

  return result;
}

unint64_t sub_25F3E1330()
{
  result = qword_27FD6D3A0;
  if (!qword_27FD6D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3A0);
  }

  return result;
}

unint64_t sub_25F3E1384()
{
  result = qword_27FD6D3A8;
  if (!qword_27FD6D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3A8);
  }

  return result;
}

unint64_t sub_25F3E13E8()
{
  result = qword_27FD6D3B0;
  if (!qword_27FD6D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3B0);
  }

  return result;
}

unint64_t sub_25F3E1440()
{
  result = qword_27FD6D3B8;
  if (!qword_27FD6D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3B8);
  }

  return result;
}

unint64_t sub_25F3E1498()
{
  result = qword_27FD6D3C0;
  if (!qword_27FD6D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3C0);
  }

  return result;
}

unint64_t sub_25F3E14F0()
{
  result = qword_27FD6D3C8;
  if (!qword_27FD6D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3C8);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25F3E156C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_25F3E15B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicLoadablePreviewProduct.LoadingStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicLoadablePreviewProduct.LoadingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BitmapDescription.ByteOrder(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BitmapDescription.ByteOrder(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F3E1904(uint64_t a1, int a2)
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

uint64_t sub_25F3E1924(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GridIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GridIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicLoadablePreviewProduct.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicLoadablePreviewProduct.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F3E1B54()
{
  result = qword_27FD6D3F0;
  if (!qword_27FD6D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3F0);
  }

  return result;
}

uint64_t sub_25F3E1BA8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F3E1BF4()
{
  result = qword_27FD6D3F8;
  if (!qword_27FD6D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D3F8);
  }

  return result;
}

unint64_t sub_25F3E1C48()
{
  result = qword_27FD6D400;
  if (!qword_27FD6D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D400);
  }

  return result;
}

unint64_t sub_25F3E1C9C()
{
  result = qword_27FD6D408;
  if (!qword_27FD6D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D408);
  }

  return result;
}

void sub_25F3E1D04(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticLinkablePreviewProduct.Key(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StaticLinkablePreviewProduct.Key(_WORD *result, int a2, int a3)
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

uint64_t AsyncMessageStream.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_25F3E1EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  v7 = *(v6 - 8);
  v37 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v31 - v8;
  v33 = type metadata accessor for AsyncMessageStream.Event(0);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = sub_25F4A2910();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  (*(v19 + 104))(&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  v20 = sub_25F4A29F0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *a4 = sub_25F4A29E0();
  v23 = type metadata accessor for AsyncMessageStream(0);
  v24 = *(v7 + 16);
  v24(a4 + *(v23 + 24), a1, v6);
  v25 = v35;
  a4[1] = v34;
  a4[2] = v25;
  v38 = 0;
  v26 = sub_25F4A2A90();
  *(a4 + *(v23 + 28)) = v26;
  *v11 = sub_25F3E4388;
  v11[1] = v26;
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
  sub_25F4A2EE0();
  (*(v31 + 8))(v15, v32);
  v27 = v36;
  v24(v36, a1, v6);
  v28 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = swift_allocObject();
  (*(v7 + 32))(v29 + v28, v27, v6);
  sub_25F3E3C74(&qword_27FD6D450);
  sub_25F4A2930();

  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_25F3E22E0()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D418, &qword_25F4A41D0);
  sub_25F3E26C0();
  sub_25F4A29A0();
}

uint64_t sub_25F3E2368(uint64_t a1)
{
  v2 = type metadata accessor for AsyncMessageStream.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = sub_25F4A2710();
  (*(*(v11 - 8) + 16))(v5, a1, v11);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  sub_25F4A2EE0();
  (*(v7 + 8))(v10, v6);
  return sub_25F4A2EF0();
}

uint64_t AsyncMessageStream.wasInterrupted.getter()
{
  v1 = sub_25F4A2A70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + *(type metadata accessor for AsyncMessageStream(0) + 28));

  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D418, &qword_25F4A41D0);
  sub_25F3E26C0();
  sub_25F4A29C0();
  (*(v2 + 8))(v5, v1);

  return v8;
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

unint64_t sub_25F3E26C0()
{
  result = qword_27FD6D420;
  if (!qword_27FD6D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D418, &qword_25F4A41D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D420);
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

uint64_t sub_25F3E276C(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v6 = sub_25F4A2A70();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AsyncMessageStream.Event(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = type metadata accessor for AsyncMessageStream(0);
  v19 = *(v18 + 24);
  v23 = a1;
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  sub_25F4A2EE0();
  v20 = (*(v14 + 88))(v17, v13);
  LODWORD(v19) = *MEMORY[0x277D85748];
  result = (*(v14 + 8))(v17, v13);
  if (v20 == v19)
  {
    v27 = *(v3 + *(v18 + 28));

    v22 = v24;
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D418, &qword_25F4A41D0);
    sub_25F3E26C0();
    sub_25F4A29C0();
    (*(v25 + 8))(v22, v26);

    if (v28 == 1)
    {
      return v23(result);
    }
  }

  return result;
}

uint64_t sub_25F3E2A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3E3C74(&qword_27FD6D450);

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

uint64_t AsyncMessageStream.activate(receiver:interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for AsyncMessageStream.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = *(type metadata accessor for AsyncMessageStream(0) + 24);
  *v9 = a3;
  v9[1] = a4;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  sub_25F4A2EE0();
  v16 = *(v11 + 8);
  v16(v14, v10);
  v17 = v20;
  *v9 = v19;
  v9[1] = v17;
  swift_storeEnumTagMultiPayload();

  sub_25F4A2EE0();
  return (v16)(v14, v10);
}

uint64_t sub_25F3E2CCC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F3E2D24()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D438, &qword_25F4A41F0);
  *v4 = v0;
  v4[1] = sub_25F3E2E1C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x7265646E6573, 0xE600000000000000, sub_25F3E32C0, v2, v5);
}

uint64_t sub_25F3E2E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_25F3E2FC8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_25F3E2F38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F3E2F38()
{
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(sub_25F3E3300, v1);
}

uint64_t sub_25F3E2FC8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_25F3E302C(uint64_t a1)
{
  v2 = type metadata accessor for AsyncMessageStream.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = *(type metadata accessor for AsyncMessageStream(0) + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
  (*(*(v15 - 8) + 16))(v5, a1, v15);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  sub_25F4A2EE0();
  (*(v7 + 16))(v11, v13, v6);
  v16 = (*(v7 + 88))(v11, v6);
  v17 = *(v7 + 8);
  if (v16 == *MEMORY[0x277D85748])
  {
    v17(v11, v6);
    sub_25F3E44A0();
    v20[1] = swift_allocError();
    sub_25F4A2E60();
    v18 = v13;
  }

  else
  {
    v17(v13, v6);
    v18 = v11;
  }

  return (v17)(v18, v6);
}

uint64_t sub_25F3E32C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F3E3300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F3E3374()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D438, &qword_25F4A41F0);
  *v4 = v0;
  v4[1] = sub_25F3E346C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x7265646E6573, 0xE600000000000000, sub_25F3E4540, v2, v5);
}

uint64_t sub_25F3E346C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_25F3E453C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_25F3E3588;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F3E3588()
{
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(sub_25F3E4534, v1);
}

uint64_t sub_25F3E3630()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AsyncMessageStream.activate<A>(forReceiving:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AsyncMessageStream(0);
  v6 = sub_25F3E3C74(&qword_27FD6D440);

  return Transport.activate<A>(forReceivingMessages:)(a2, v5, a2, v6, a3);
}

__n128 sub_25F3E36EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t AsyncMessageStream.sender<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  v6 = type metadata accessor for AsyncMessageStream(0);
  v7 = sub_25F3E3C74(&qword_27FD6D440);
  *v5 = v3;
  v5[1] = sub_25F3E3804;

  return Transport.transportSender<A>(for:)(v3 + 16, a3, v6, a3, v7);
}

uint64_t sub_25F3E3804()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_25F3E3954;
  }

  else
  {
    v3 = sub_25F3E3918;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F3E3918()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return (*(v0 + 8))();
}

uint64_t AsyncMessageStream.Sender<>.send(oneWay:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *v3;
  v11 = *(v3 + 1);
  v13 = v3[3];
  v14 = v3[4];
  v15 = v3[5];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for TransportSender();

  WitnessTable = swift_getWitnessTable();
  TransportSenderProtocol<>.send(oneWay:)(a1, v8, WitnessTable, a3);
}

uint64_t AsyncMessageStream.Sender<>.send(message:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v13 = *v3;
  v12 = *(v3 + 1);
  v14 = v3[3];
  v15 = v3[4];
  v16 = v3[5];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for TransportSender();

  WitnessTable = swift_getWitnessTable();
  v10 = TransportSenderProtocol<>.send(message:)(a1, v8, WitnessTable, a3);

  return v10;
}

uint64_t AsyncMessageStream.Sender<>.send<A>(message:expecting:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *v6;
  v17 = *(v6 + 1);
  v19 = v6[3];
  v20 = v6[4];
  v21 = v6[5];
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = type metadata accessor for TransportSender();

  WitnessTable = swift_getWitnessTable();
  v15 = TransportSenderProtocol<>.send<A>(message:expecting:)(a1, a4, v13, a4, WitnessTable, a5, a6);

  return v15;
}

uint64_t sub_25F3E3C74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AsyncMessageStream(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F3E3CB8(uint64_t a1)
{
  *(a1 + 8) = sub_25F3E3C74(&qword_27FD6D450);
  result = sub_25F3E3C74(&qword_27FD6D458);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F3E3D34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_25F3E3E04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F3E3EB4()
{
  sub_25F4A29F0();
  if (v0 <= 0x3F)
  {
    sub_25F3E3F58();
    if (v1 <= 0x3F)
    {
      sub_25F3E3FB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F3E3F58()
{
  if (!qword_27FD6D470)
  {
    type metadata accessor for AsyncMessageStream.Event(255);
    v0 = sub_25F4A2F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6D470);
    }
  }
}

void sub_25F3E3FB0()
{
  if (!qword_27FD6D478)
  {
    v0 = sub_25F4A2AA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6D478);
    }
  }
}

uint64_t sub_25F3E4000()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25F3E405C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F3E40A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_25F3E4158()
{
  sub_25F3E433C(319, &qword_27FD6D510, sub_25F3E4264);
  if (v0 <= 0x3F)
  {
    sub_25F3E433C(319, &qword_27FD6D520, sub_25F3E4264);
    if (v1 <= 0x3F)
    {
      sub_25F3E433C(319, &qword_27FD6D528, sub_25F3E42B4);
      if (v2 <= 0x3F)
      {
        sub_25F3E433C(319, &qword_27FD6D540, MEMORY[0x277D404A8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_25F3E4264()
{
  result = qword_27FD6D518;
  if (!qword_27FD6D518)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD6D518);
  }

  return result;
}

void sub_25F3E42B4()
{
  if (!qword_27FD6D530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D438, &qword_25F4A41F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v0 = sub_25F4A2E80();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6D530);
    }
  }
}

void sub_25F3E433C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F3E4390()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F3E4424(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0) - 8) + 80);

  return sub_25F3E2368(a1);
}

unint64_t sub_25F3E44A0()
{
  result = qword_27FD6D550;
  if (!qword_27FD6D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D550);
  }

  return result;
}

uint64_t BuiltTargetDescription.installName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BuiltTargetDescription.installName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BuiltTargetDescription.buildableName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BuiltTargetDescription.buildableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t BuiltTargetDescription.moduleName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BuiltTargetDescription.moduleName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t BuiltTargetDescription.mergedModuleNames.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t BuiltTargetDescription.platformVersion.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_25F3E477C(v2, v3);
}

uint64_t sub_25F3E477C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 BuiltTargetDescription.platformVersion.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  sub_25F3E4814(v1[8], v1[9]);
  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v10;
  v1[12] = v3;
  v1[13] = v4;
  return result;
}

uint64_t sub_25F3E4814(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t BuiltTargetDescription.objectFiles.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t BuiltTargetDescription.staticArchives.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t BuiltTargetDescription.rpaths.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t BuiltTargetDescription.loadCommands.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t BuiltTargetDescription.architectures.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t BuiltTargetDescription.linkerFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t BuiltTargetDescription.output.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t BuiltTargetDescription.output.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 184);

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t BuiltTargetDescription.diagnosticInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

__n128 BuiltTargetDescription.init(installName:isExecutable:buildableName:moduleName:mergedModuleNames:platformVersion:objectFiles:staticArchives:rpaths:loadCommands:enforceWeakSymbolPaths:architectures:linkerFlags:opaqueTypeErasureEnabled:output:diagnosticInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, char a13, uint64_t a14, uint64_t a15, char a16, __n128 a17, uint64_t a18)
{
  v19 = *(a10 + 32);
  v20 = *(a10 + 40);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  sub_25F3E4814(0, 0);
  v21 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v21;
  *(a9 + 96) = v19;
  *(a9 + 104) = v20;
  *(a9 + 112) = a11;
  *(a9 + 128) = a12;
  *(a9 + 152) = a13;
  *(a9 + 144) = a14;
  *(a9 + 160) = a15;
  *(a9 + 168) = a16;
  result = a17;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  return result;
}

uint64_t BuiltTargetDescription.mergeChild(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D558, &qword_25F4A43E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v53 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D560, &qword_25F4A43E8);
  v8 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v53 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D568, &qword_25F4A43F0);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D570, &qword_25F4A43F8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = *(a1 + 112);
  v17 = *(a1 + 120);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  v21 = *(a1 + 184);
  v67 = *(a1 + 168);
  v64 = v19;
  v60 = v17;
  v61 = v20;
  v59 = v14;
  v58 = v53 - v22;
  if (v21)
  {
    v23 = *(a1 + 176);
    v24 = *(v18 + 16) + 1;
    v25 = 72;
    while (--v24)
    {
      v26 = *(v18 + v25);
      v25 += 48;
      if (v26 == 1)
      {
        v54 = v16;
        v55 = v15;
        v53[1] = v7;
        v56 = v4;
        v57 = v2;
        v27 = v2 + 112;
        v28 = *(*(v2 + 112) + 16);
        v53[0] = v18;
        if (v28)
        {

          v29 = 48 * v28;
          while (v28 <= *(*v27 + 16))
          {
            --v28;
            v30 = (*v27 + v29);
            v31 = *v30 == v23 && v21 == v30[1];
            if (v31 || (sub_25F4A3270() & 1) != 0)
            {
              sub_25F3E5648(v28, v69);
              v73 = v69[0];
              sub_25F3F21F4(&v73, &qword_27FD6D5F0, &qword_25F4A4420);
              v72 = v69[1];
              sub_25F3EE1CC(&v72);
              v71 = v70;
              sub_25F3F21F4(&v71, &qword_27FD6D5F8, &qword_25F4A4428);
            }

            v29 -= 48;
            if (!v28)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
        }

LABEL_29:
        v2 = v57;
        v36 = v57 + 120;
        v37 = *(*(v57 + 120) + 16);
        v16 = v54;
        if (v37)
        {
          v38 = 32 * v37;
          v15 = v55;
          while (v37 <= *(*v36 + 16))
          {
            --v37;
            v39 = *v36 + v38;
            v40 = *(v39 + 16) == v23 && v21 == *(v39 + 24);
            if (v40 || (sub_25F4A3270() & 1) != 0)
            {
              sub_25F3E570C(v37);
            }

            v38 -= 32;
            if (!v37)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_41:
        }

        else
        {

          v15 = v55;
        }

        v18 = v53[0];
        if (!v16)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }
    }

    if (sub_25F4A2C90())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D600, &qword_25F4A4430);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_25F4A43D0;
      *(v18 + 32) = v23;
      *(v18 + 40) = v21;
      *(v18 + 48) = v23;
      *(v18 + 56) = v21;
      *(v18 + 64) = MEMORY[0x277D84FA0];
      *(v18 + 72) = 0;
      goto LABEL_19;
    }

    v32 = *(v2 + 120);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_25F3EE340(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_25F3EE340((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v35 = &v32[32 * v34];
    *(v35 + 4) = v23;
    *(v35 + 5) = v21;
    *(v35 + 6) = v23;
    *(v35 + 7) = v21;
    *(v2 + 120) = v32;
    v18 = MEMORY[0x277D84F90];
    if (v16)
    {
      goto LABEL_43;
    }
  }

  else
  {
LABEL_19:

    if (v16)
    {
LABEL_43:
      v41 = *(v2 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_25F3EE0C0(0, *(v41 + 2) + 1, 1, v41);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_25F3EE0C0((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v44 = &v41[16 * v43];
      *(v44 + 4) = v15;
      *(v44 + 5) = v16;
      *(v2 + 56) = v41;
    }
  }

LABEL_48:
  v68 = *(v2 + 112);

  sub_25F3E8A6C(v18, &qword_27FD6D600, &qword_25F4A4430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D578, &qword_25F4A4400);
  sub_25F3E7A6C();
  sub_25F3F2708(&qword_27FD6D588, &qword_27FD6D578, &qword_25F4A4400);
  sub_25F4A2130();
  sub_25F3F2708(&qword_27FD6D590, &qword_27FD6D570, &qword_25F4A43F8);
  v45 = sub_25F4A2CD0();

  *(v2 + 112) = v45;
  v68 = *(v2 + 120);

  sub_25F3E7978(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D598, &qword_25F4A4408);
  sub_25F3E7AC0();
  sub_25F3F2708(&qword_27FD6D5A8, &qword_27FD6D598, &qword_25F4A4408);
  sub_25F4A2130();
  sub_25F3F2708(&qword_27FD6D5B0, &qword_27FD6D568, &qword_25F4A43F0);
  v47 = sub_25F4A2CD0();

  *(v2 + 120) = v47;
  v68 = *(v2 + 136);

  sub_25F3E7880(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3E7B14();
  sub_25F3F2708(&qword_27FD6D5C8, &qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F4A2130();
  sub_25F3F2708(&qword_27FD6D5D0, &qword_27FD6D560, &qword_25F4A43E8);
  v49 = sub_25F4A2CD0();

  *(v2 + 136) = v49;
  v68 = *(v2 + 128);

  sub_25F3E778C(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F3F2708(&qword_27FD6D5E0, &qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F4A2130();
  sub_25F3F2708(&qword_27FD6D5E8, &qword_27FD6D558, &qword_25F4A43E0);
  v51 = sub_25F4A2CD0();

  *(v2 + 128) = v51;
  *(v2 + 168) &= v67 & 1;
  return result;
}

uint64_t sub_25F3E559C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25F3E5648@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F3EEBB0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    v13 = *(v9 + 24);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
    *(a2 + 40) = v12;
  }

  return result;
}

uint64_t sub_25F3E570C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F3EEB9C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 32 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    v11 = v6[3];
    memmove(v6, v6 + 4, 32 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t BuiltObjectFileDescription.init(identifier:builtPath:sourceFilePaths:forReplacement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

Swift::Bool __swiftcall BuiltTargetDescription.containsDescriptionForModule(named:)(Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v4 = v1[6];
  v5 = v1[7];
  if (v4 && (v1[5] == named._countAndFlagsBits ? (v6 = v4 == object) : (v6 = 0), v6 || (named._countAndFlagsBits = sub_25F4A3270(), (named._countAndFlagsBits & 1) != 0)))
  {
    v7 = 1;
  }

  else
  {
    v10[0] = countAndFlagsBits;
    v10[1] = object;
    MEMORY[0x28223BE20](named._countAndFlagsBits);
    v9[2] = v10;
    v7 = sub_25F3E559C(sub_25F3F09E4, v9, v5);
  }

  return v7 & 1;
}

uint64_t BuiltTargetDescription.replacingObjectFilePaths(mapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[10];
  v84 = v2[9];
  v85 = v3;
  v86 = v2[11];
  v4 = v2[4];
  v5 = v2[6];
  v80 = v2[5];
  v81 = v5;
  v6 = v2[8];
  v7 = v2[6];
  v82 = v2[7];
  v83 = v6;
  v8 = *v2;
  v9 = v2[2];
  v76 = v2[1];
  v77 = v9;
  v10 = v2[4];
  v11 = v2[2];
  v78 = v2[3];
  v79 = v10;
  v72 = v4;
  v73 = v80;
  v12 = *v2;
  v74 = v7;
  v75 = v12;
  v13 = *(v2 + 23);
  v87 = *(v2 + 24);
  v68 = v8;
  v69 = v76;
  v70 = v11;
  v71 = v78;
  v14 = *(v2 + 120);
  v15 = *(v2 + 136);
  v16 = *(v2 + 152);
  v17 = *(v2 + 168);
  v67 = v13;
  v65 = v16;
  v66 = v17;
  v63 = v14;
  v64 = v15;
  v18 = v82;
  v56 = v87;
  v57 = *(v82 + 16);
  if (!v57)
  {
    result = sub_25F3F0A3C(&v75, &v61);
LABEL_21:
    v47 = v73;
    *(a2 + 64) = v72;
    *(a2 + 80) = v47;
    *(a2 + 96) = v74;
    v48 = v69;
    *a2 = v68;
    *(a2 + 16) = v48;
    v49 = v71;
    *(a2 + 32) = v70;
    *(a2 + 48) = v49;
    *(a2 + 112) = v18;
    v50 = v64;
    *(a2 + 120) = v63;
    v51 = v65;
    v52 = v67;
    *(a2 + 168) = v66;
    *(a2 + 152) = v51;
    *(a2 + 136) = v50;
    *(a2 + 184) = v52;
    *(a2 + 192) = v56;
    return result;
  }

  result = sub_25F3F0A3C(&v75, &v61);
  v21 = 0;
  v22 = 72;
  v55 = a1;
  while (v21 < *(v18 + 16))
  {
    v60 = v18;
    v23 = (v18 + v22);
    v24 = *(v18 + v22 - 40);
    v25 = *(v23 - 4);
    v26 = *(v23 - 3);
    v27 = *(v23 - 2);
    v28 = *(v23 - 1);
    v58 = *v23;
    v59 = v24;
    if (v25)
    {
      v29 = *(v23 - 4);
    }

    else
    {

      v24 = v26;
      v29 = v27;
    }

    v30 = a1;
    v31 = *(a1 + 16);

    if (!v31)
    {
      goto LABEL_3;
    }

    v32 = sub_25F3EEC1C(v24, v29, sub_25F3EECA0);
    v34 = v33;

    if ((v34 & 1) == 0)
    {

LABEL_3:
      v18 = v60;
      goto LABEL_4;
    }

    v35 = (*(v30 + 56) + 16 * v32);
    v36 = *v35;
    v37 = v35[1];
    v61 = 0;
    v62 = 0xE000000000000000;

    sub_25F4A30F0();

    v61 = 0xD00000000000001ALL;
    v62 = 0x800000025F4B6FA0;
    MEMORY[0x25F8DD480](v26, v27);

    MEMORY[0x25F8DD480](540945696, 0xE400000000000000);
    MEMORY[0x25F8DD480](v36, v37);
    v38 = v61;
    v39 = v62;
    v54 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_25F3EE0C0(0, *(v56 + 2) + 1, 1, v56);
    }

    v41 = *(v56 + 2);
    v40 = *(v56 + 3);
    v18 = v60;
    if (v41 >= v40 >> 1)
    {
      v56 = sub_25F3EE0C0((v40 > 1), v41 + 1, 1, v56);
    }

    *(v56 + 2) = v41 + 1;
    v42 = &v56[16 * v41];
    *(v42 + 4) = v38;
    *(v42 + 5) = v39;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F3EEBB0(v60);
      v18 = result;
    }

    if (v21 >= *(v18 + 16))
    {
      goto LABEL_23;
    }

    v43 = (v18 + v22);
    v44 = *(v18 + v22 - 32);
    v46 = *(v18 + v22 - 16);
    v45 = *(v18 + v22 - 8);
    *(v43 - 5) = v59;
    *(v43 - 4) = v25;
    *(v43 - 3) = v54;
    *(v43 - 2) = v37;
    *(v43 - 1) = v28;
    *v43 = v58;

LABEL_4:
    ++v21;

    v22 += 48;
    a1 = v55;
    if (v57 == v21)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t BuiltObjectFileDescription.effectiveIdentifier.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = v0[2];
    v3 = v0[3];
  }

  return v1;
}

uint64_t Collection<>.replacingObjectFilePaths(mapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v10 = *(a3 + 8);
  v11 = sub_25F4A2E30();
  v12 = *(v11 + 16);
  if (!v12)
  {
    return v11;
  }

  v13 = 0;
  v14 = v12 - 1;
  v15 = 32;
  while (1)
  {
    v60 = *(v11 + v15);
    v16 = *(v11 + v15 + 16);
    v17 = *(v11 + v15 + 32);
    v18 = *(v11 + v15 + 64);
    v63 = *(v11 + v15 + 48);
    v64 = v18;
    v61 = v16;
    v62 = v17;
    v19 = *(v11 + v15 + 80);
    v20 = *(v11 + v15 + 96);
    v21 = *(v11 + v15 + 128);
    v67 = *(v11 + v15 + 112);
    v68 = v21;
    v65 = v19;
    v66 = v20;
    v22 = *(v11 + v15 + 144);
    v23 = *(v11 + v15 + 160);
    v24 = *(v11 + v15 + 176);
    v72 = *(v11 + v15 + 192);
    v70 = v23;
    v71 = v24;
    v69 = v22;
    v57 = v23;
    v58 = v24;
    v59 = v72;
    v53 = v66;
    v54 = v67;
    v55 = v21;
    v56 = v22;
    v49 = v62;
    v50 = v63;
    v51 = v64;
    v52 = v65;
    v47 = v60;
    v48 = v61;
    sub_25F3F0A3C(&v60, &v46);
    BuiltTargetDescription.replacingObjectFilePaths(mapping:)(a1, v75);
    v73[10] = v57;
    v73[11] = v58;
    v74 = v59;
    v73[6] = v53;
    v73[7] = v54;
    v73[8] = v55;
    v73[9] = v56;
    v73[2] = v49;
    v73[3] = v50;
    v73[4] = v51;
    v73[5] = v52;
    v73[0] = v47;
    v73[1] = v48;
    sub_25F3F0A74(v73);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F3EEBF0(v11);
      v11 = result;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    v26 = v11 + v15;
    v47 = *(v11 + v15);
    v27 = *(v11 + v15 + 16);
    v28 = *(v11 + v15 + 32);
    v29 = *(v11 + v15 + 64);
    v50 = *(v11 + v15 + 48);
    v51 = v29;
    v48 = v27;
    v49 = v28;
    v30 = *(v11 + v15 + 80);
    v31 = *(v11 + v15 + 96);
    v32 = *(v11 + v15 + 128);
    v54 = *(v11 + v15 + 112);
    v55 = v32;
    v52 = v30;
    v53 = v31;
    v33 = *(v11 + v15 + 144);
    v34 = *(v11 + v15 + 160);
    v35 = *(v11 + v15 + 176);
    v59 = *(v11 + v15 + 192);
    v57 = v34;
    v58 = v35;
    v56 = v33;
    *v26 = v75[0];
    v36 = v75[1];
    v37 = v75[2];
    v38 = v75[4];
    *(v26 + 48) = v75[3];
    *(v26 + 64) = v38;
    *(v26 + 16) = v36;
    *(v26 + 32) = v37;
    v39 = v75[5];
    v40 = v75[6];
    v41 = v75[8];
    *(v26 + 112) = v75[7];
    *(v26 + 128) = v41;
    *(v26 + 80) = v39;
    *(v26 + 96) = v40;
    v42 = v75[9];
    v43 = v75[10];
    v44 = v75[11];
    *(v26 + 192) = v76;
    *(v26 + 160) = v43;
    *(v26 + 176) = v44;
    *(v26 + 144) = v42;
    result = sub_25F3F0A74(&v47);
    if (v14 == v13)
    {
      return v11;
    }

    v15 += 200;
    if (++v13 >= *(v11 + 16))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_25F3E5F88(char a1)
{
  result = 0x4E6C6C6174736E69;
  switch(a1)
  {
    case 1:
      result = 0x7475636578457369;
      break;
    case 2:
      result = 0x6C6261646C697562;
      break;
    case 3:
      result = 0x614E656C75646F6DLL;
      break;
    case 4:
      result = 0x6D726F6674616C70;
      break;
    case 5:
      result = 0x69467463656A626FLL;
      break;
    case 6:
      result = 0x7241636974617473;
      break;
    case 7:
      result = 0x736874617072;
      break;
    case 8:
      result = 0x6D6D6F4364616F6CLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x6365746968637261;
      break;
    case 11:
      result = 0x6C4672656B6E696CLL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0x74757074756FLL;
      break;
    case 14:
      result = 0x74736F6E67616964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F3E61C0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25F3E5F88(*a1);
  v5 = v4;
  if (v3 == sub_25F3E5F88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F3E6248()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F3E5F88(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3E62AC()
{
  sub_25F3E5F88(*v0);
  sub_25F4A2C60();
}

uint64_t sub_25F3E6300()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F3E5F88(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3E6360@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F3F1BC8();
  *a2 = result;
  return result;
}

unint64_t sub_25F3E6390@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F3E5F88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t BuiltTargetDescription.propertyListValue.getter()
{
  v1 = v0[11];
  v29 = v0[10];
  v30 = v1;
  v31 = *(v0 + 24);
  v2 = v0[7];
  *&v25[16] = v0[6];
  v26 = v2;
  v3 = v0[9];
  v27 = v0[8];
  v28 = v3;
  v4 = v0[3];
  v22 = v0[2];
  v23 = v4;
  v5 = v0[5];
  v24 = v0[4];
  *v25 = v5;
  v6 = v0[1];
  v20 = *v0;
  v21 = v6;
  v7 = sub_25F3F0AB8();
  result = sub_25F4A25C0();
  if (v22)
  {
    v13 = __PAIR128__(v22, *(&v21 + 1));
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 2;
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (v23)
  {
    v13 = __PAIR128__(v23, *(&v22 + 1));
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 3;
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(&v24 + 1))
  {
    v16 = v24;
    v17 = *v25;
    v18 = *&v25[8];
    v19 = *&v25[24];
    v14 = &type metadata for BuiltTargetDescription.Key;
    v15 = v7;
    LOBYTE(v13) = 4;
    sub_25F3F0DDC();

    sub_25F4A2520();
    sub_25F3E4814(v16, *(&v16 + 1));
    result = __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  if (*(v26 + 16))
  {
    *&v13 = v26;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D578, &qword_25F4A4400);
    sub_25F3F0D0C(&qword_27FD6D610, &qword_27FD6D578, &qword_25F4A4400, sub_25F3F0B0C);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(*(&v26 + 1) + 16))
  {
    *&v13 = *(&v26 + 1);
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D598, &qword_25F4A4408);
    sub_25F3F0D0C(&qword_27FD6D620, &qword_27FD6D598, &qword_25F4A4408, sub_25F3F0B60);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(v27 + 16))
  {
    *&v13 = v27;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F3F1B68(&qword_27FD6D630, &qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(*(&v27 + 1) + 16))
  {
    *&v13 = *(&v27 + 1);
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5B8, &unk_25F4A4410);
    sub_25F3F0D0C(&qword_27FD6D638, &qword_27FD6D5B8, &unk_25F4A4410, sub_25F3F0BB4);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (BYTE8(v28) == 1)
  {
    LOBYTE(v13) = BYTE8(v28);
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 9;
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(v28 + 16))
  {
    *&v13 = v28;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F3F1B68(&qword_27FD6D630, &qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  v9 = v29;
  v10 = *(v29 + 16);
  if (v10)
  {
    v11 = sub_25F3EEA98(v10, 0);
    v12 = sub_25F3F0C08(&v16, v11 + 32, v10, v9);

    sub_25F3F0D04();
    if (v12 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    *&v16 = v11;
    sub_25F3EED58(&v16);
    *&v13 = v16;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D648, &qword_25F4A4438);
    sub_25F3F0D0C(&qword_27FD6D650, &qword_27FD6D648, &qword_25F4A4438, sub_25F3F0D88);
    sub_25F4A2520();

    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(&v30 + 1))
  {
    v13 = v30;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 13;
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (*(v31 + 16))
  {
    *&v13 = v31;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F3F1B68(&qword_27FD6D630, &qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if ((BYTE8(v29) & 1) == 0)
  {
    LOBYTE(v13) = 0;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = 12;
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  if (v21 == 1)
  {
    LOBYTE(v13) = v21;
    *&v18 = &type metadata for BuiltTargetDescription.Key;
    *(&v18 + 1) = v7;
    LOBYTE(v16) = v21;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  return result;
}

uint64_t BuiltTargetDescription.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = &type metadata for BuiltTargetDescription.Key;
  v5 = sub_25F3F0AB8();
  v45 = v5;
  LOBYTE(v43[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    v8 = v51;
    v7 = v52;
    v44 = &type metadata for BuiltTargetDescription.Key;
    v45 = v5;
    LOBYTE(v43[0]) = 1;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v43);
    v44 = &type metadata for BuiltTargetDescription.Key;
    v45 = v5;
    LOBYTE(v43[0]) = 2;
    sub_25F4A2580();
    v36 = v8;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v10 = v49;
    v11 = v50;
    v44 = &type metadata for BuiltTargetDescription.Key;
    v45 = v5;
    LOBYTE(v43[0]) = 3;
    sub_25F4A2580();
    v34 = v10;
    v35 = v40[0];
    __swift_destroy_boxed_opaque_existential_1(v43);
    v12 = v47;
    v13 = v48;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 4;
    sub_25F3F0DDC();
    sub_25F4A2580();
    v27 = v12;
    __swift_destroy_boxed_opaque_existential_1(v40);
    v28 = v43[0];
    v29 = v43[1];
    v30 = v43[2];
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D578, &qword_25F4A4400);
    sub_25F3F0D0C(&qword_27FD6D610, &qword_27FD6D578, &qword_25F4A4400, sub_25F3F0B0C);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v26 = v53;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D598, &qword_25F4A4408);
    sub_25F3F0D0C(&qword_27FD6D620, &qword_27FD6D598, &qword_25F4A4408, sub_25F3F0B60);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v14 = v38;
    if (!v38)
    {
      v14 = MEMORY[0x277D84F90];
    }

    v25 = v14;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F3F1B68(&qword_27FD6D630, &qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v15 = v38;
    if (!v38)
    {
      v15 = MEMORY[0x277D84F90];
    }

    v24 = v15;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5B8, &unk_25F4A4410);
    sub_25F3F0D0C(&qword_27FD6D638, &qword_27FD6D5B8, &unk_25F4A4410, sub_25F3F0BB4);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    if (v38)
    {
      v16 = v38;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 9;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 10;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v17 = v38;
    if (!v38)
    {
      v17 = MEMORY[0x277D84F90];
    }

    v23 = v17;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D668, &qword_25F4A4440);
    sub_25F3F0E30();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v18 = v38;
    if (!v38)
    {
      v18 = MEMORY[0x277D84FA0];
    }

    v22 = v18;
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 12;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 13;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v41 = &type metadata for BuiltTargetDescription.Key;
    v42 = v5;
    LOBYTE(v40[0]) = 14;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v19 = MEMORY[0x277D84F90];
    if (v37)
    {
      v20 = v37;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = sub_25F4A25E0();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = sub_25F3E4814(0, 0);
    *a2 = v36;
    *(a2 + 8) = v7;
    *(a2 + 16) = v35 & 1;
    *(a2 + 24) = v34;
    *(a2 + 32) = v11;
    *(a2 + 40) = v27;
    *(a2 + 48) = v13;
    *(a2 + 56) = v19;
    *(a2 + 64) = v28;
    *(a2 + 72) = v29;
    *(a2 + 80) = v30;
    *(a2 + 88) = v31;
    *(a2 + 96) = v32;
    *(a2 + 104) = v33;
    *(a2 + 112) = v26;
    *(a2 + 120) = v25;
    *(a2 + 128) = v24;
    *(a2 + 136) = v16;
    *(a2 + 144) = v23;
    *(a2 + 152) = v38 & 1;
    *(a2 + 160) = v22;
    *(a2 + 168) = (v38 == 2) | v38 & 1;
    *(a2 + 176) = v38;
    *(a2 + 184) = v39;
    *(a2 + 192) = v20;
  }

  return result;
}

char *BuiltTargetDescription.buildProductPathsForDiagnostics.getter()
{
  v3 = *(*(v1 + 15) + 16);
  v4 = *(*(v1 + 14) + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
LABEL_9:
    v1 = sub_25F3EE0C0(0, *(v1 + 2) + 1, 1, v1);
    goto LABEL_4;
  }

  v2 = *(v1 + 22);
  v0 = *(v1 + 23);
  v7 = v6 & ~(v6 >> 63);

  v14 = sub_25F3EE0C0(0, v7, 0, MEMORY[0x277D84F90]);

  sub_25F3E7B68(v8, sub_25F3E7780, 0, sub_25F3F0FFC, sub_25F3F1354);

  sub_25F3E7B68(v9, sub_25F3E7780, 0, sub_25F3F0EB4, sub_25F3F127C);
  v1 = v14;
  if (!v0)
  {
    return v1;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  if (v11 >= v10 >> 1)
  {
    v1 = sub_25F3EE0C0((v10 > 1), v11 + 1, 1, v1);
  }

  *(v1 + 2) = v11 + 1;
  v12 = &v1[16 * v11];
  *(v12 + 4) = v2;
  *(v12 + 5) = v0;
  return v1;
}

uint64_t sub_25F3E7780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_25F3E778C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25F3EE0C0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F3E7880(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25F3EE220(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F3E7978(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25F3EE340(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_25F3E7A6C()
{
  result = qword_27FD6D580;
  if (!qword_27FD6D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D580);
  }

  return result;
}

unint64_t sub_25F3E7AC0()
{
  result = qword_27FD6D5A0;
  if (!qword_27FD6D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D5A0);
  }

  return result;
}

unint64_t sub_25F3E7B14()
{
  result = qword_27FD6D5C0;
  if (!qword_27FD6D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D5C0);
  }

  return result;
}

uint64_t sub_25F3E7B68(uint64_t a1, uint64_t a2, int64_t a3, char **a4, uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *v5;
  v9 = *(*v5 + 2);
  v10 = v9 + v7;
  if (__OFADD__(v9, v7))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a5;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = *(v8 + 3) >> 1, v17 < v10))
  {
    if (v9 <= v10)
    {
      v18 = v9 + v7;
    }

    else
    {
      v18 = v9;
    }

    v8 = sub_25F3EE0C0(isUniquelyReferenced_nonNull_native, v18, 1, v8);
    v17 = *(v8 + 3) >> 1;
  }

  v19 = *(v8 + 2);
  v20 = v17 - v19;
  v21 = (a4)(v35, &v8[16 * v19 + 32], v17 - v19, a1, a2, a3);
  if (v21 < v7)
  {
    goto LABEL_15;
  }

  if (v21)
  {
    v22 = *(v8 + 2);
    v23 = __OFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      __break(1u);
LABEL_29:
      *(v8 + 2) = a3;
LABEL_30:
      v5 = a4;
      goto LABEL_13;
    }

    *(v8 + 2) = v24;
  }

  if (v21 == v20)
  {
LABEL_16:
    a4 = v5;
    a3 = *(v8 + 2);
    v26 = v6();
    if (v27)
    {
      while (1)
      {
        v28 = *(v8 + 3);
        v29 = v28 >> 1;
        if ((v28 >> 1) < a3 + 1)
        {
          v32 = v26;
          v33 = v27;
          v34 = sub_25F3EE0C0((v28 > 1), a3 + 1, 1, v8);
          v27 = v33;
          v8 = v34;
          v26 = v32;
          v29 = *(v8 + 3) >> 1;
        }

        if (a3 <= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = a3;
        }

        v31 = &v8[16 * a3 + 40];
        while (v30 != a3)
        {
          *(v31 - 1) = v26;
          *v31 = v27;
          ++a3;
          v26 = v6();
          v31 += 16;
          if (!v27)
          {
            goto LABEL_29;
          }
        }

        *(v8 + 2) = v30;
        a3 = v30;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v5 = v8;
  return result;
}

uint64_t sub_25F3E7D38(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D6C8, &qword_25F4A4458);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7B8, &qword_25F4A4F48);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D578, &qword_25F4A4400);
  v13 = sub_25F3F2708(&qword_27FD6D588, &qword_27FD6D578, &qword_25F4A4400);
  v14 = sub_25F3F2360();
  v42 = v12;
  v43 = v13;
  v44 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_25F4A2CB0();
  v38 = v1;
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v15;
  v20 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v16 + 3) >> 1, v22 < v18))
  {
    if (v17 <= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v17;
    }

    v16 = sub_25F3EE0C0(isUniquelyReferenced_nonNull_native, v23, 1, v16);
    v22 = *(v16 + 3) >> 1;
  }

  v2 = v41;
  v24 = v22 - *(v16 + 2);
  (*(v5 + 16))(v8, a1, v4);
  v25 = sub_25F4A2CA0();
  (*(v5 + 8))(a1, v4);
  if (v25 < v19)
  {
    goto LABEL_16;
  }

  if (v25 >= 1)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      __break(1u);
      goto LABEL_33;
    }

    *(v16 + 2) = v28;
  }

  if (v25 != v24)
  {
LABEL_13:
    result = (*(v39 + 8))(v2, v40);
    v30 = v38;
    goto LABEL_14;
  }

LABEL_17:
  if (v4 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530))
  {
    goto LABEL_13;
  }

  v31 = *(v16 + 2);
  v8 = v40;
  swift_getAssociatedConformanceWitness();
  sub_25F4A3070();
  v32 = v43;
  if (v43)
  {
    v30 = v38;
    while (1)
    {
      v33 = *(v16 + 3);
      v34 = v33 >> 1;
      if ((v33 >> 1) < v31 + 1)
      {
        v16 = sub_25F3EE0C0((v33 > 1), v31 + 1, 1, v16);
        v32 = v43;
        v34 = *(v16 + 3) >> 1;
        if (v43)
        {
LABEL_23:
          if (v31 < v34)
          {
            v35 = &v16[16 * v31 + 40];
            do
            {
              *(v35 - 1) = v42;
              *v35 = v32;
              ++v31;
              sub_25F4A3070();
              v32 = v43;
              v35 += 16;
              if (v43)
              {
                v36 = v31 < v34;
              }

              else
              {
                v36 = 0;
              }
            }

            while (v36);
          }
        }
      }

      else if (v32)
      {
        goto LABEL_23;
      }

      *(v16 + 2) = v31;
      if (!v32)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v30 = v38;
LABEL_34:
  result = (*(v39 + 8))(v41, v8);
LABEL_14:
  *v30 = v16;
  return result;
}

uint64_t sub_25F3E8144(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D6C0, &qword_25F4A4450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7B0, &qword_25F4A4F40);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D598, &qword_25F4A4408);
  v13 = sub_25F3F2708(&qword_27FD6D5A8, &qword_27FD6D598, &qword_25F4A4408);
  v14 = sub_25F3F23B4();
  v42 = v12;
  v43 = v13;
  v44 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_25F4A2CB0();
  v38 = v1;
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v15;
  v20 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v16 + 3) >> 1, v22 < v18))
  {
    if (v17 <= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v17;
    }

    v16 = sub_25F3EE0C0(isUniquelyReferenced_nonNull_native, v23, 1, v16);
    v22 = *(v16 + 3) >> 1;
  }

  v2 = v41;
  v24 = v22 - *(v16 + 2);
  (*(v5 + 16))(v8, a1, v4);
  v25 = sub_25F4A2CA0();
  (*(v5 + 8))(a1, v4);
  if (v25 < v19)
  {
    goto LABEL_16;
  }

  if (v25 >= 1)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      __break(1u);
      goto LABEL_33;
    }

    *(v16 + 2) = v28;
  }

  if (v25 != v24)
  {
LABEL_13:
    result = (*(v39 + 8))(v2, v40);
    v30 = v38;
    goto LABEL_14;
  }

LABEL_17:
  if (v4 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530))
  {
    goto LABEL_13;
  }

  v31 = *(v16 + 2);
  v8 = v40;
  swift_getAssociatedConformanceWitness();
  sub_25F4A3070();
  v32 = v43;
  if (v43)
  {
    v30 = v38;
    while (1)
    {
      v33 = *(v16 + 3);
      v34 = v33 >> 1;
      if ((v33 >> 1) < v31 + 1)
      {
        v16 = sub_25F3EE0C0((v33 > 1), v31 + 1, 1, v16);
        v32 = v43;
        v34 = *(v16 + 3) >> 1;
        if (v43)
        {
LABEL_23:
          if (v31 < v34)
          {
            v35 = &v16[16 * v31 + 40];
            do
            {
              *(v35 - 1) = v42;
              *v35 = v32;
              ++v31;
              sub_25F4A3070();
              v32 = v43;
              v35 += 16;
              if (v43)
              {
                v36 = v31 < v34;
              }

              else
              {
                v36 = 0;
              }
            }

            while (v36);
          }
        }
      }

      else if (v32)
      {
        goto LABEL_23;
      }

      *(v16 + 2) = v31;
      if (!v32)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v30 = v38;
LABEL_34:
  result = (*(v39 + 8))(v41, v8);
LABEL_14:
  *v30 = v16;
  return result;
}

uint64_t sub_25F3E8550(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D6B8, &qword_25F4A4448);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7A8, &qword_25F4A4F38);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D5B8, &unk_25F4A4410);
  v13 = sub_25F3F2708(&qword_27FD6D5C8, &qword_27FD6D5B8, &unk_25F4A4410);
  v14 = sub_25F3F2408();
  v42 = v12;
  v43 = v13;
  v44 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_25F4A2CB0();
  v38 = v1;
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v15;
  v20 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v16 + 3) >> 1, v22 < v18))
  {
    if (v17 <= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v17;
    }

    v16 = sub_25F3EE0C0(isUniquelyReferenced_nonNull_native, v23, 1, v16);
    v22 = *(v16 + 3) >> 1;
  }

  v2 = v41;
  v24 = v22 - *(v16 + 2);
  (*(v5 + 16))(v8, a1, v4);
  v25 = sub_25F4A2CA0();
  (*(v5 + 8))(a1, v4);
  if (v25 < v19)
  {
    goto LABEL_16;
  }

  if (v25 >= 1)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      __break(1u);
      goto LABEL_33;
    }

    *(v16 + 2) = v28;
  }

  if (v25 != v24)
  {
LABEL_13:
    result = (*(v39 + 8))(v2, v40);
    v30 = v38;
    goto LABEL_14;
  }

LABEL_17:
  if (v4 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530))
  {
    goto LABEL_13;
  }

  v31 = *(v16 + 2);
  v8 = v40;
  swift_getAssociatedConformanceWitness();
  sub_25F4A3070();
  v32 = v43;
  if (v43)
  {
    v30 = v38;
    while (1)
    {
      v33 = *(v16 + 3);
      v34 = v33 >> 1;
      if ((v33 >> 1) < v31 + 1)
      {
        v16 = sub_25F3EE0C0((v33 > 1), v31 + 1, 1, v16);
        v32 = v43;
        v34 = *(v16 + 3) >> 1;
        if (v43)
        {
LABEL_23:
          if (v31 < v34)
          {
            v35 = &v16[16 * v31 + 40];
            do
            {
              *(v35 - 1) = v42;
              *v35 = v32;
              ++v31;
              sub_25F4A3070();
              v32 = v43;
              v35 += 16;
              if (v43)
              {
                v36 = v31 < v34;
              }

              else
              {
                v36 = 0;
              }
            }

            while (v36);
          }
        }
      }

      else if (v32)
      {
        goto LABEL_23;
      }

      *(v16 + 2) = v31;
      if (!v32)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v30 = v38;
LABEL_34:
  result = (*(v39 + 8))(v41, v8);
LABEL_14:
  *v30 = v16;
  return result;
}

uint64_t sub_25F3E895C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25F3EE854(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F3E8A6C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  result = sub_25F3EE97C(result, v15, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 16) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F3E8B90(uint64_t result, uint64_t a2)
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
    sub_25F4A3300();

    sub_25F4A2C60();
    v17 = sub_25F4A3350();
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
      if (v22 || (sub_25F4A3270() & 1) != 0)
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

uint64_t sub_25F3E8D48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v28 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      v15 = *(a2 + 40);
      sub_25F4A3300();
      v16 = v14 ? 1131045487 : 0x64616F4C6C6C61;
      v17 = v14 ? 0xE400000000000000 : 0xE700000000000000;
      sub_25F4A2C60();

      v18 = sub_25F4A3350();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = *(*(a2 + 48) + v20) ? 1131045487 : 0x64616F4C6C6C61;
        v23 = *(*(a2 + 48) + v20) ? 0xE400000000000000 : 0xE700000000000000;
        if (v22 == v16 && v23 == v17)
        {
          break;
        }

        v25 = sub_25F4A3270();

        if (v25)
        {
          goto LABEL_35;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v26;
      v3 = v27;
      v8 = v28;
    }

    while (v28);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v28 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t BuiltTargetDescription.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v7 = v1[3];
  v6 = v1[4];
  v9 = v1[5];
  v8 = v1[6];
  v10 = v1[7];
  v11 = v1[9];
  v30 = v1[8];
  v31 = v1[11];
  v34 = v1[12];
  v32 = v1[10];
  v33 = v1[13];
  v12 = v1[16];
  v36 = v1[14];
  v37 = v1[15];
  v38 = v1[17];
  v39 = v1[18];
  v40 = *(v1 + 152);
  v41 = v1[20];
  v42 = *(v1 + 168);
  v35 = v1[22];
  v43 = v1[23];
  v44 = v1[24];
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v6)
  {
    sub_25F4A3320();
    sub_25F4A2C60();
    if (v8)
    {
LABEL_3:
      sub_25F4A3320();
      sub_25F4A2C60();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25F4A3320();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_25F4A3320();
LABEL_6:
  MEMORY[0x25F8DDB20](*(v10 + 16));
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = (v10 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      sub_25F4A2C60();

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  sub_25F4A3320();
  if (v11)
  {
    sub_25F4A2C60();
    sub_25F4A2C60();
    sub_25F4A2C60();
  }

  sub_25F3F0614(a1, v36);
  sub_25F3F0548(a1, v37);
  MEMORY[0x25F8DDB20](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = (v12 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      sub_25F4A2C60();

      v18 += 2;
      --v17;
    }

    while (v17);
  }

  sub_25F3F0438(a1, v38);
  MEMORY[0x25F8DDB20](*(v39 + 16));
  v21 = *(v39 + 16);
  if (v21)
  {
    v22 = (v39 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      sub_25F4A2C60();

      v22 += 2;
      --v21;
    }

    while (v21);
  }

  sub_25F4A3320();
  sub_25F3F0874(a1, v41);
  sub_25F4A3320();
  sub_25F4A3320();
  if (v43)
  {
    sub_25F4A2C60();
  }

  result = MEMORY[0x25F8DDB20](*(v44 + 16));
  v26 = *(v44 + 16);
  if (v26)
  {
    v27 = (v44 + 40);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;

      sub_25F4A2C60();

      v27 += 2;
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t BuiltTargetDescription.hashValue.getter()
{
  sub_25F4A3300();
  BuiltTargetDescription.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F3E92C4()
{
  sub_25F4A3300();
  BuiltTargetDescription.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F3E9308()
{
  sub_25F4A3300();
  BuiltTargetDescription.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t BuiltObjectFileDescription.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BuiltObjectFileDescription.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BuiltObjectFileDescription.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BuiltObjectFileDescription.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BuiltObjectFileDescription.sourceFilePaths.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_25F3E94E8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3E95C0()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3E9684()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3E9758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F3F1C14();
  *a2 = result;
  return result;
}

void sub_25F3E9788(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xEF7368746150656CLL;
  v5 = 0x6946656372756F73;
  if (*v1 != 2)
  {
    v5 = 0x616C706552726F66;
    v4 = 0xEE00746E656D6563;
  }

  if (*v1)
  {
    v3 = 1752457584;
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

uint64_t sub_25F3E981C()
{
  v1 = 0x696669746E656469;
  v2 = 0x6946656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x616C706552726F66;
  }

  if (*v0)
  {
    v1 = 1752457584;
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

uint64_t BuiltObjectFileDescription.propertyListValue.getter()
{
  v1 = sub_25F3F1B14();
  result = sub_25F4A25C0();
  if (v0[1])
  {
    v3 = *v0;
    v5 = v0[1];
    v7 = &type metadata for BuiltObjectFileDescription.Key;
    v8 = v1;
    LOBYTE(v6[0]) = 0;
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (*(v0[4] + 16))
  {
    v4 = v0[4];
    v7 = &type metadata for BuiltObjectFileDescription.Key;
    v8 = v1;
    LOBYTE(v6[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5F8, &qword_25F4A4428);
    sub_25F3F1B68(&qword_27FD6D680, &qword_27FD6D5F8, &qword_25F4A4428);
    sub_25F4A2520();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if ((v0[5] & 1) == 0)
  {
    v7 = &type metadata for BuiltObjectFileDescription.Key;
    v8 = v1;
    LOBYTE(v6[0]) = 3;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

double BuiltObjectFileDescription.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25F3F1C60(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_25F3E9A78()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return BuiltObjectFileDescription.propertyListValue.getter();
}

double sub_25F3E9AB4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25F3F1C60(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t static BuiltObjectFileDescription.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_25F4A3270() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v5)
  {
LABEL_17:
    v9 = 0;
    return v9 & 1;
  }

  v8 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v8 && (sub_25F4A3270() & 1) == 0 || (sub_25F3E8B90(a1[4], *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v9 & 1;
}

uint64_t BuiltObjectFileDescription.hash(into:)(__int128 *a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_25F4A3320();
    sub_25F4A2C60();
  }

  else
  {
    sub_25F4A3320();
  }

  v5 = v2[2];
  v6 = v2[3];
  sub_25F4A2C60();
  sub_25F3F0718(a1, v2[4]);
  v7 = *(v2 + 40);
  return sub_25F4A3320();
}

uint64_t BuiltObjectFileDescription.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_25F4A3300();
  sub_25F4A3320();
  if (v3)
  {
    sub_25F4A2C60();
  }

  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v1 + 40);
  sub_25F4A2C60();
  sub_25F3F0718(v9, v6);
  sub_25F4A3320();
  return sub_25F4A3350();
}

uint64_t sub_25F3E9CC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_25F4A3300();
  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  sub_25F4A2C60();
  sub_25F3F0718(v8, v5);
  sub_25F4A3320();
  return sub_25F4A3350();
}

uint64_t sub_25F3E9D74(__int128 *a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = *(v1 + 40);
  if (v1[1])
  {
    v7 = *v1;
    sub_25F4A3320();
    sub_25F4A2C60();
  }

  else
  {
    sub_25F4A3320();
  }

  sub_25F4A2C60();
  sub_25F3F0718(a1, v4);
  return sub_25F4A3320();
}

uint64_t sub_25F3E9E14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_25F4A3300();
  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  sub_25F4A2C60();
  sub_25F3F0718(v8, v5);
  sub_25F4A3320();
  return sub_25F4A3350();
}

uint64_t sub_25F3E9EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((v4 != v9 || v6 != v11) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (sub_25F3E8B90(v5, v10))
  {
    return v7 ^ v12 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t BuiltStaticArchiveDescription.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BuiltStaticArchiveDescription.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_25F3EA0B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1752457584;
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  if (v3)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1752457584;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3EA154()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3EA1D4()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3EA240()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F3EA2C8(uint64_t *a1@<X8>)
{
  v2 = 1752457584;
  if (!*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F3EA304()
{
  if (*v0)
  {
    result = 1752457584;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t BuiltStaticArchiveDescription.propertyListValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3F1F90();
  result = sub_25F4A25C0();
  if (a2)
  {
    v6[5] = a1;
    v6[6] = a2;
    v6[3] = &type metadata for BuiltStaticArchiveDescription.Key;
    v6[4] = v4;
    LOBYTE(v6[0]) = 0;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t BuiltStaticArchiveDescription.init(propertyListValue:)(uint64_t a1)
{
  result = sub_25F3F1FE4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_25F3EA42C()
{
  v1 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  v2 = sub_25F3F1F90();
  result = sub_25F4A25C0();
  if (v4)
  {
    v6[5] = v1;
    v6[6] = v4;
    v6[3] = &type metadata for BuiltStaticArchiveDescription.Key;
    v6[4] = v2;
    LOBYTE(v6[0]) = 0;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_25F3EA508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F3F1FE4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t static BuiltStaticArchiveDescription.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6)
      {
        goto LABEL_6;
      }

      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = sub_25F4A3270();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_6:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_25F4A3270();
}

uint64_t BuiltStaticArchiveDescription.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_25F4A3320();
    sub_25F4A2C60();
  }

  else
  {
    sub_25F4A3320();
  }

  return sub_25F4A2C60();
}

uint64_t BuiltStaticArchiveDescription.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_25F4A3300();
  sub_25F4A3320();
  if (a2)
  {
    sub_25F4A2C60();
  }

  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3EA708()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A3300();
  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3EA794()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_25F4A3320();
    sub_25F4A2C60();
  }

  else
  {
    sub_25F4A3320();
  }

  return sub_25F4A2C60();
}

uint64_t sub_25F3EA81C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A3300();
  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3EA8A4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_25F4A3270() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_25F4A3270();
}

uint64_t BuiltTargetDescription.PlatformVersion.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BuiltTargetDescription.PlatformVersion.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BuiltTargetDescription.PlatformVersion.minVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BuiltTargetDescription.PlatformVersion.minVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BuiltTargetDescription.PlatformVersion.sdkVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t BuiltTargetDescription.PlatformVersion.sdkVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall BuiltTargetDescription.PlatformVersion.init(name:minVersion:sdkVersion:)(PreviewsMessagingOS::BuiltTargetDescription::PlatformVersion *__return_ptr retstr, Swift::String name, Swift::String minVersion, Swift::String sdkVersion)
{
  retstr->name = name;
  retstr->minVersion = minVersion;
  retstr->sdkVersion = sdkVersion;
}

uint64_t static BuiltTargetDescription.PlatformVersion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25F4A3270() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_25F4A3270();
}

uint64_t BuiltTargetDescription.PlatformVersion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25F4A2C60();
  sub_25F4A2C60();

  return sub_25F4A2C60();
}

uint64_t BuiltTargetDescription.PlatformVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3EACE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3EAD68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25F4A2C60();
  sub_25F4A2C60();

  return sub_25F4A2C60();
}

uint64_t sub_25F3EADD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3EAE54(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25F4A3270() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_25F4A3270();
}

uint64_t sub_25F3EAF4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737265566E696DLL;
  if (v2 != 1)
  {
    v3 = 0x69737265566B6473;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v2)
  {
    v5 = 0xEA00000000006E6FLL;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x69737265566E696DLL;
  if (*a2 != 1)
  {
    v6 = 0x69737265566B6473;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701667182;
  }

  if (*a2)
  {
    v8 = 0xEA00000000006E6FLL;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3EB038()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3EB0DC()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3EB16C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3EB20C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F3F2E04();
  *a2 = result;
  return result;
}

void sub_25F3EB23C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x69737265566E696DLL;
  if (v2 != 1)
  {
    v4 = 0x69737265566B6473;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701667182;
  }

  if (!v5)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_25F3EB29C()
{
  v1 = 0x69737265566E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x69737265566B6473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t BuiltTargetDescription.PlatformVersion.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A25A0();
}

uint64_t sub_25F3EB348(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v2 = a1[4];
  v3 = a1[5];
  sub_25F3F2180();
  return sub_25F4A28C0();
}

uint64_t BuiltTargetDescription.PlatformVersion.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = &type metadata for BuiltTargetDescription.PlatformVersion.Key;
  v5 = sub_25F3F2180();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = v18;
    v7 = v19;
    v16 = &type metadata for BuiltTargetDescription.PlatformVersion.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for BuiltTargetDescription.PlatformVersion.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v11;
    a2[5] = v12;
  }

  return result;
}

uint64_t sub_25F3EB60C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A25A0();
}

Swift::Void __swiftcall BuiltTargetDescription.describe(with:)(Swift::OpaquePointer *with)
{
  v3 = sub_25F4A2A00();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v66 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v59 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = v1[10];
  v16 = v1[11];
  v17 = v1[8];
  v80 = v1[9];
  v81 = v15;
  v82 = v16;
  v18 = v1[6];
  v19 = v1[7];
  v20 = v1[4];
  v76 = v1[5];
  v77 = v18;
  v83 = *(v1 + 24);
  v78 = v19;
  v79 = v17;
  v21 = v1[3];
  *&v74[16] = v1[2];
  *&v74[32] = v21;
  v75 = v20;
  v22 = v1[1];
  v73 = *v1;
  *v74 = v22;
  *v14 = 123;
  *(v14 + 1) = 0xE100000000000000;
  v23 = v4[13];
  v63 = *MEMORY[0x277D40520];
  v70 = v23;
  v71 = v4 + 13;
  (v23)(&v59 - v13);
  rawValue = with->_rawValue;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_25F3EE67C(0, *(rawValue + 2) + 1, 1, rawValue);
  }

  v26 = *(rawValue + 2);
  v25 = *(rawValue + 3);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    rawValue = sub_25F3EE67C(v25 > 1, v26 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v27;
  v29 = v4[4];
  v28 = v4 + 4;
  v68 = (*(v28 + 48) + 32) & ~*(v28 + 48);
  v69 = v29;
  v67 = v28[5];
  v29(&rawValue[v68 + v67 * v26], v14, v3);
  (v70)(v12, *MEMORY[0x277D40528], v3);
  v30 = *(rawValue + 3);
  if ((v26 + 2) > (v30 >> 1))
  {
    rawValue = sub_25F3EE67C(v30 > 1, v26 + 2, 1, rawValue);
  }

  *(rawValue + 2) = v26 + 2;
  v69(&rawValue[v68 + v67 * v27], v12, v3);
  with->_rawValue = rawValue;
  v72[0] = v73;

  sub_25F4A2D70();

  if (*&v74[16])
  {
    v72[0] = *&v74[8];

    sub_25F4A2D70();
  }

  if (*&v74[32])
  {
    v72[0] = *&v74[24];

    sub_25F4A2D70();
  }

  v31 = *&v74[40];
  v32 = *(*&v74[40] + 16);
  v64 = v28;
  if (v32)
  {
    *&v72[0] = *&v74[40];

    v33 = 0;
    sub_25F3EEDC4(v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F3F2708(&qword_27FD6D698, &qword_27FD6D5D8, &unk_25F4AB530);
    v34 = sub_25F4A2BF0();
    v36 = v35;

    *&v72[0] = v34;
    *(&v72[0] + 1) = v36;
    sub_25F4A2D70();

    v37 = *(&v75 + 1);
    if (!*(&v75 + 1))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v33 = 0;
  v37 = *(&v75 + 1);
  if (*(&v75 + 1))
  {
LABEL_13:
    v72[1] = v76;
    v72[2] = v77;
    *&v72[0] = v75;
    *(&v72[0] + 1) = v37;
    sub_25F3F22B0();
    v31 = sub_25F4A2D90();
  }

LABEL_14:
  if (v74[0] == 1)
  {
    LOBYTE(v72[0]) = 1;
    v31 = sub_25F4A2D70();
  }

  MEMORY[0x28223BE20](v31);
  *(&v59 - 2) = &v73;
  v38 = sub_25F4A2D60();
  MEMORY[0x28223BE20](v38);
  *(&v59 - 2) = &v73;
  v39 = sub_25F4A2D60();
  MEMORY[0x28223BE20](v39);
  *(&v59 - 2) = &v73;
  v40 = sub_25F4A2D60();
  MEMORY[0x28223BE20](v40);
  *(&v59 - 2) = &v73;
  sub_25F4A2D60();
  *&v72[0] = 0;
  *(&v72[0] + 1) = 0xE000000000000000;
  if (BYTE8(v80))
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (BYTE8(v80))
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x25F8DD480](v41, v42);

  sub_25F4A2D70();

  v84[0] = v80;
  if (*(v80 + 16))
  {
    *&v72[0] = v80;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F3F2708(&qword_27FD6D698, &qword_27FD6D5D8, &unk_25F4AB530);
    v43 = sub_25F4A2BF0();
    v45 = v44;
    sub_25F3F21F4(v84, &qword_27FD6D5D8, &unk_25F4AB530);
    *&v72[0] = v43;
    *(&v72[0] + 1) = v45;
    sub_25F4A2D70();
  }

  if (!*(v81 + 16))
  {
    goto LABEL_33;
  }

  sub_25F3F2254();
  v46 = sub_25F4A2FD0();
  v47 = *(v46 + 16);
  if (v47)
  {
    v60 = 0;
    v61 = v3;
    v62 = with;
    v48 = sub_25F3EEB20(v47, 0, &qword_27FD6D718, &qword_25F4A4460);
    v33 = sub_25F3F1124(v72, v48 + 4, v47, v46);

    sub_25F3F0D04();
    if (v33 != v47)
    {
      __break(1u);
      goto LABEL_43;
    }

    v3 = v61;
    with = v62;
    v33 = v60;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  *&v72[0] = v48;
  sub_25F3EEDC4(v72);
  if (v33)
  {
LABEL_43:

    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F3F2708(&qword_27FD6D698, &qword_27FD6D5D8, &unk_25F4AB530);
  v49 = sub_25F4A2BF0();
  v51 = v50;

  *&v72[0] = v49;
  *(&v72[0] + 1) = v51;
  sub_25F4A2D70();

LABEL_33:
  LOBYTE(v72[0]) = BYTE8(v81);
  v52 = sub_25F4A2D70();
  if (*(&v82 + 1))
  {
    v72[0] = v82;

    sub_25F4A2D70();
  }

  MEMORY[0x28223BE20](v52);
  *(&v59 - 2) = &v73;
  sub_25F4A2D60();
  (v70)(v65, *MEMORY[0x277D40530], v3);
  v53 = with->_rawValue;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_25F3EE67C(0, *(v53 + 2) + 1, 1, v53);
  }

  v55 = *(v53 + 2);
  v54 = *(v53 + 3);
  v56 = v55 + 1;
  if (v55 >= v54 >> 1)
  {
    v53 = sub_25F3EE67C(v54 > 1, v55 + 1, 1, v53);
  }

  *(v53 + 2) = v56;
  v69(&v53[v68 + v55 * v67], v65, v3);
  v57 = v66;
  *v66 = 125;
  v57[1] = 0xE100000000000000;
  v70();
  v58 = *(v53 + 3);
  if ((v55 + 2) > (v58 >> 1))
  {
    v53 = sub_25F3EE67C(v58 > 1, v55 + 2, 1, v53);
  }

  *(v53 + 2) = v55 + 2;
  v69(&v53[v68 + v56 * v67], v66, v3);
  with->_rawValue = v53;
}

uint64_t sub_25F3EC2A8(char **a1, uint64_t a2)
{
  v4 = sub_25F4A2A00();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v42 = &v29 - v10;
  v11 = *(a2 + 112);
  v12 = *(v11 + 16);
  if (v12)
  {
    v30 = *MEMORY[0x277D40528];
    v40 = v33 + 32;
    v41 = (v33 + 104);
    v13 = (v11 + 72);
    v29 = *MEMORY[0x277D40530];
    v31 = v8;
    v32 = v4;
    do
    {
      v39 = v12;
      v14 = *(v13 - 5);
      v15 = *(v13 - 4);
      v17 = *(v13 - 3);
      v16 = *(v13 - 2);
      v18 = *(v13 - 1);
      v19 = *v13;
      v45[0] = v14;
      v45[1] = v15;
      v45[2] = v17;
      v45[3] = v16;
      v45[4] = v18;
      v46 = v19;
      v43 = v17;
      v44 = v16;

      v38 = v18;

      sub_25F4A2DA0();
      v37 = *v41;
      v37(v42, v30, v4);
      v20 = *a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_25F3EE67C(0, *(v20 + 2) + 1, 1, v20);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_25F3EE67C(v21 > 1, v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v34 = *(v33 + 72);
      v23 = &v20[v35 + v34 * v22];
      v4 = v32;
      v36 = *(v33 + 32);
      v24 = v36(v23, v42, v32);
      *a1 = v20;
      if (v15 && (v14 != v17 || v15 != v16))
      {
        v24 = sub_25F4A3270();
        if ((v24 & 1) == 0)
        {
          v43 = v14;
          v44 = v15;

          sub_25F4A2D70();
        }
      }

      if (v19)
      {
        LOBYTE(v43) = v19;
        v24 = sub_25F4A2D70();
      }

      MEMORY[0x28223BE20](v24);
      *(&v29 - 2) = v45;
      sub_25F4A2D60();

      v25 = v31;
      v37(v31, v29, v4);
      v26 = *a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_25F3EE67C(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_25F3EE67C(v27 > 1, v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      result = v36(&v26[v35 + v28 * v34], v25, v4);
      *a1 = v26;
      v13 += 48;
      v12 = v39 - 1;
    }

    while (v39 != 1);
  }

  return result;
}

uint64_t sub_25F3EC6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_25F3EEB20(*(v2 + 16), 0, &qword_27FD6D718, &qword_25F4A4460);
    v5 = sub_25F3F1124(v10, v4 + 4, v3, v2);

    sub_25F3F0D04();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v10[0] = v4;
  sub_25F3EEDC4(v10);
  v6 = *(v10[0] + 2);
  if (v6)
  {
    v7 = (v10[0] + 40);
    do
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;
      sub_25F4A2DA0();
      v7 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_25F3EC870(char **a1, uint64_t a2)
{
  v4 = sub_25F4A2A00();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v41 = &v29 - v10;
  v11 = *(a2 + 120);
  v12 = *(v11 + 16);
  if (v12)
  {
    v30 = *MEMORY[0x277D40528];
    v39 = v32 + 32;
    v40 = (v32 + 104);
    v29 = *MEMORY[0x277D40530];
    v13 = (v11 + 56);
    v38 = a1;
    v31 = v8;
    do
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      v42 = v16;
      v43 = v17;

      sub_25F4A2D70();
      v18 = v4;
      v37 = *v40;
      v37(v41, v30, v4);
      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_25F3EE67C(0, *(v19 + 2) + 1, 1, v19);
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_25F3EE67C(v21 > 1, v22 + 1, 1, v19);
      }

      *(v19 + 2) = v22 + 1;
      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v34 = *(v32 + 72);
      v36 = *(v32 + 32);
      v36(&v19[v35 + v34 * v22], v41, v18);
      v23 = v38;
      *v38 = v19;
      if (v15)
      {
        v24 = v33;
        v4 = v18;
        if (v33 == v16 && v15 == v17 || (sub_25F4A3270() & 1) != 0)
        {
        }

        else
        {
          v42 = v24;
          v43 = v15;

          sub_25F4A2D70();

          swift_bridgeObjectRelease_n();
        }
      }

      else
      {

        v4 = v18;
      }

      v25 = v31;
      v37(v31, v29, v4);
      v26 = *v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_25F3EE67C(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_25F3EE67C(v27 > 1, v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      result = (v36)(&v26[v35 + v28 * v34], v25, v4);
      a1 = v38;
      *v38 = v26;
      v13 += 4;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_25F3ECC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      result = sub_25F4A2DA0();
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25F3ECCA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_25F3F2EC0();
    v4 = (v2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v8 = *v4;
      v4 = (v4 + 40);
      result = sub_25F4A2D90();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t BuiltTargetDescription.LinkerFlag.rawValue.getter()
{
  if (*v0)
  {
    result = 1131045487;
  }

  else
  {
    result = 0x64616F4C6C6C61;
  }

  *v0;
  return result;
}

_BYTE *sub_25F3ECD64@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1131045487;
  if (!*result)
  {
    v2 = 0x64616F4C6C6C61;
  }

  v3 = 0xE700000000000000;
  if (*result)
  {
    v3 = 0xE400000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_25F3ECD9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 192);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      result = sub_25F4A2DA0();
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t BuiltTargetDescription.summary.getter()
{
  v12 = v0[10];
  v13 = v0[11];
  v14 = *(v0 + 24);
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[9];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_25F3F2304();
  return sub_25F4A29D0();
}

uint64_t sub_25F3ECE90()
{
  sub_25F3F2304();

  return sub_25F4A29D0();
}

Swift::Void __swiftcall BuiltTargetDescription.PlatformVersion.describe(with:)(Swift::OpaquePointer *with)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_25F4A2D80();
}

uint64_t sub_25F3ECF50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v7 = a2[1];

  sub_25F4A2D70();

  v5 = a2[2];
  v8 = a2[3];

  sub_25F4A2D70();

  v6 = a2[4];
  v9 = a2[5];

  sub_25F4A2D70();
}

uint64_t sub_25F3ED050()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A2D80();
}

uint64_t sub_25F3ED0D4()
{
  sub_25F3F22B0();

  return sub_25F4A29D0();
}

BOOL Array<A>.opaqueTypeErasureEnabled.getter(uint64_t a1)
{
  v1 = (a1 + 200);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 200;
  }

  while ((v3 & 1) != 0);
  return v2 == 0;
}

PreviewsMessagingOS::BuiltTargetDescription::LinkerFlag_optional __swiftcall BuiltTargetDescription.LinkerFlag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F3ED1A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1131045487;
  }

  else
  {
    v4 = 0x64616F4C6C6C61;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1131045487;
  }

  else
  {
    v6 = 0x64616F4C6C6C61;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
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
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3ED248()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3ED2C4()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3ED32C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F3ED3B0(uint64_t *a1@<X8>)
{
  v2 = 1131045487;
  if (!*v1)
  {
    v2 = 0x64616F4C6C6C61;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F3ED3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3F2E50();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t static BuiltTargetDescription.LinkerFlag.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1131045487;
  }

  else
  {
    v4 = 0x64616F4C6C6C61;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1131045487;
  }

  else
  {
    v6 = 0x64616F4C6C6C61;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3ED55C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1131045487;
  }

  else
  {
    v4 = 0x64616F4C6C6C61;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1131045487;
  }

  else
  {
    v6 = 0x64616F4C6C6C61;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3ED5FC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 1131045487;
  }

  else
  {
    v3 = 0x64616F4C6C6C61;
  }

  if (*a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v5 = 1131045487;
  }

  else
  {
    v5 = 0x64616F4C6C6C61;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_25F3ED6B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1131045487;
  }

  else
  {
    v4 = 0x64616F4C6C6C61;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1131045487;
  }

  else
  {
    v6 = 0x64616F4C6C6C61;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_25F3ED764(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 1131045487;
  }

  else
  {
    v3 = 0x64616F4C6C6C61;
  }

  if (*a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v5 = 1131045487;
  }

  else
  {
    v5 = 0x64616F4C6C6C61;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t BuiltTargetDescription.pathsForTransferrableArtifactsOnHost.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D6B8, &qword_25F4A4448);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D6C0, &qword_25F4A4450);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D6C8, &qword_25F4A4458);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = v0[15];
  v14 = v0[17];
  v16 = v0[14];
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2708(&qword_27FD6D588, &qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2360();
  sub_25F4A2CC0();
  sub_25F3E7D38(v12);
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F2708(&qword_27FD6D5A8, &qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F23B4();
  sub_25F4A2CC0();
  sub_25F3E8144(v8);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2708(&qword_27FD6D5C8, &qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2408();
  sub_25F4A2CC0();
  sub_25F3E8550(v4);
  return v17;
}

Swift::Void __swiftcall BuiltTargetDescription.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2708(&qword_27FD6D6E8, &qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2708(&qword_27FD6D6F0, &qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2360();
  sub_25F4A2FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F2708(&qword_27FD6D6F8, &qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F2708(&qword_27FD6D700, &qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F23B4();
  sub_25F4A2FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2708(&qword_27FD6D708, &qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2708(&qword_27FD6D710, &qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2408();
  sub_25F4A2FE0();
}

uint64_t sub_25F3EDC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2708(&qword_27FD6D6E8, &qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2708(&qword_27FD6D6F0, &qword_27FD6D578, &qword_25F4A4400);
  sub_25F3F2360();
  sub_25F4A2FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F2708(&qword_27FD6D6F8, &qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F2708(&qword_27FD6D700, &qword_27FD6D598, &qword_25F4A4408);
  sub_25F3F23B4();
  sub_25F4A2FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2708(&qword_27FD6D708, &qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2708(&qword_27FD6D710, &qword_27FD6D5B8, &unk_25F4A4410);
  sub_25F3F2408();
  return sub_25F4A2FE0();
}

uint64_t BuiltObjectFileDescription.pathsForTransferrableArtifactsOnHost.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25F4A43D0;
  v2 = *(v0 + 24);
  *(v1 + 32) = *(v0 + 16);
  *(v1 + 40) = v2;

  return v1;
}

Swift::Void __swiftcall BuiltObjectFileDescription.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v2 = v1;
    v4 = sub_25F3EEC1C(*(v2 + 16), *(v2 + 24), sub_25F3EECA0);
    if (v5)
    {
      v6 = (*(a1._rawValue + 7) + 16 * v4);
      v8 = *v6;
      v7 = v6[1];

      *(v2 + 16) = v8;
      *(v2 + 24) = v7;
    }
  }
}

uint64_t sub_25F3EDEFC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25F4A43D0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t sub_25F3EDF64(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    result = sub_25F3EEC1C(*(v2 + 16), *(v2 + 24), sub_25F3EECA0);
    if (v4)
    {
      v5 = (*(v3 + 56) + 16 * result);
      v7 = *v5;
      v6 = v5[1];

      *(v2 + 16) = v7;
      *(v2 + 24) = v6;
    }
  }

  return result;
}

uint64_t BuiltStaticArchiveDescription.pathsForTransferrableArtifactsOnHost.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25F4A43D0;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;

  return v6;
}

Swift::Void __swiftcall BuiltStaticArchiveDescription.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v2 = v1;
    v4 = sub_25F3EEC1C(*(v2 + 16), *(v2 + 24), sub_25F3EECA0);
    if (v5)
    {
      v6 = (*(a1._rawValue + 7) + 16 * v4);
      v8 = *v6;
      v7 = v6[1];

      *(v2 + 16) = v8;
      *(v2 + 24) = v7;
    }
  }
}

char *sub_25F3EE0C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
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

char *sub_25F3EE220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6D7E8, &unk_25F4A4F70);
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

char *sub_25F3EE340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7E0, &qword_25F4A4F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F3EE44C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7D8, &qword_25F4A4F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F3EE578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D798, &qword_25F4B2980);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_25F3EE67C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7C8, &unk_25F4A4F50);
  v10 = *(sub_25F4A2A00() - 8);
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
  v15 = *(sub_25F4A2A00() - 8);
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

char *sub_25F3EE854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7A0, &qword_25F4A4F30);
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

char *sub_25F3EE97C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_25F3EEA98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7D0, &unk_25F4B29D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_25F3EEB20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_25F3EEC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_25F4A3300();
  sub_25F4A2C60();
  v7 = sub_25F4A3350();

  return a3(a1, a2, v7);
}

unint64_t sub_25F3EECA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25F4A3270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25F3EED58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F487B34(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25F3EEE30(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25F3EEDC4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F487B48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25F3EEF28(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25F3EEE30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F4A3200();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25F4A2DC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25F3EF22C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25F3EF020(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F3EEF28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F4A3200();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25F4A2DC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25F3EF93C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25F3EF15C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F3EF020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v19 = a3;
    v7 = *(v4 + a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v8 = *(v5 - 1);
      if (v7)
      {
        v9 = 1131045487;
      }

      else
      {
        v9 = 0x64616F4C6C6C61;
      }

      if (v7)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (*(v5 - 1))
      {
        v11 = 1131045487;
      }

      else
      {
        v11 = 0x64616F4C6C6C61;
      }

      if (*(v5 - 1))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {

LABEL_5:
        a3 = v19 + 1;
        v5 = v18 + 1;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v14 = sub_25F4A3270();

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F3EF15C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25F4A3270(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F3EF22C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v101 = result;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_141:
    v5 = v7;
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_143:
      v93 = v6;
      v94 = *(v10 + 2);
      if (v94 >= 2)
      {
        while (*v5)
        {
          v6 = v94 - 1;
          v95 = *&v10[16 * v94];
          v96 = *&v10[16 * v94 + 24];
          sub_25F3EFF18((*v5 + v95), (*v5 + *&v10[16 * v94 + 16]), *v5 + v96, v7);
          if (v93)
          {
          }

          if (v96 < v95)
          {
            goto LABEL_167;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_25F487B20(v10);
          }

          if (v94 - 2 >= *(v10 + 2))
          {
            goto LABEL_168;
          }

          v97 = &v10[16 * v94];
          *v97 = v95;
          *(v97 + 1) = v96;
          result = sub_25F487A94(v94 - 1);
          v94 = *(v10 + 2);
          if (v94 <= 1)
          {
          }
        }

        goto LABEL_178;
      }
    }

LABEL_174:
    result = sub_25F487B20(v10);
    v10 = result;
    goto LABEL_143;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v12 = *v7;
      v13 = *(*v7 + v11);
      if (v9[*v7])
      {
        v14 = 1131045487;
      }

      else
      {
        v14 = 0x64616F4C6C6C61;
      }

      if (v9[*v7])
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (*(*v7 + v11))
      {
        v16 = 1131045487;
      }

      else
      {
        v16 = 0x64616F4C6C6C61;
      }

      if (*(*v7 + v11))
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE700000000000000;
      }

      if (v14 == v16 && v15 == v5)
      {
        v104 = 0;
      }

      else
      {
        v104 = sub_25F4A3270();
      }

      v9 = (v11 + 2);
      if (v11 + 2 < v8)
      {
        do
        {
          v21 = v9[v12 - 1];
          if (v9[v12])
          {
            v22 = 1131045487;
          }

          else
          {
            v22 = 0x64616F4C6C6C61;
          }

          if (v9[v12])
          {
            v23 = 0xE400000000000000;
          }

          else
          {
            v23 = 0xE700000000000000;
          }

          if (v9[v12 - 1])
          {
            v24 = 1131045487;
          }

          else
          {
            v24 = 0x64616F4C6C6C61;
          }

          if (v9[v12 - 1])
          {
            v5 = 0xE400000000000000;
          }

          else
          {
            v5 = 0xE700000000000000;
          }

          if (v22 == v24 && v23 == v5)
          {

            if (v104)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v18 = v12;
            v19 = sub_25F4A3270();

            v20 = v104 ^ v19;
            v12 = v18;
            v7 = a3;
            if (v20)
            {
              goto LABEL_47;
            }
          }

          ++v9;
        }

        while (v8 != v9);
        v9 = v8;
      }

LABEL_47:
      if (v104)
      {
LABEL_48:
        if (v9 < v11)
        {
          goto LABEL_171;
        }

        if (v11 < v9)
        {
          v26 = v9 - 1;
          v27 = v11;
          do
          {
            if (v27 != v26)
            {
              v29 = *v7;
              if (!*v7)
              {
                goto LABEL_177;
              }

              v30 = v27[v29];
              v27[v29] = v26[v29];
              v26[v29] = v30;
            }
          }

          while (++v27 < v26--);
        }
      }
    }

    v31 = *(v7 + 1);
    if (v9 < v31)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_170;
      }

      if (&v9[-v11] < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v9 < v11)
    {
      goto LABEL_169;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v45 = v11;
    if ((result & 1) == 0)
    {
      result = sub_25F3EE578(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v5 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_25F3EE578((v46 > 1), v47 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v5;
    v48 = &v10[16 * v47];
    *(v48 + 4) = v45;
    *(v48 + 5) = v9;
    v106 = *v101;
    if (!*v101)
    {
      goto LABEL_179;
    }

    if (v47)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_110:
          if (v53)
          {
            goto LABEL_158;
          }

          v66 = &v10[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_161;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_165;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_131;
          }

          goto LABEL_124;
        }

        v76 = &v10[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_124:
        if (v71)
        {
          goto LABEL_160;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_163;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_131:
        v87 = v49 - 1;
        if (v49 - 1 >= v5)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v88 = *v7;
        if (!*v7)
        {
          goto LABEL_176;
        }

        v89 = v9;
        v90 = v7;
        v91 = *&v10[16 * v87 + 32];
        v7 = *&v10[16 * v49 + 40];
        sub_25F3EFF18((v88 + v91), (v88 + *&v10[16 * v49 + 32]), &v7[v88], v106);
        if (v6)
        {
        }

        if (v7 < v91)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25F487B20(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_155;
        }

        v92 = &v10[16 * v87];
        *(v92 + 4) = v91;
        *(v92 + 5) = v7;
        result = sub_25F487A94(v49);
        v5 = *(v10 + 2);
        v9 = v89;
        v7 = v90;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_156;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_157;
      }

      v61 = &v10[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_159;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_162;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_166;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_131;
      }

      goto LABEL_110;
    }

LABEL_3:
    v8 = *(v7 + 1);
    if (v9 >= v8)
    {
      goto LABEL_141;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_172;
  }

  if (v11 + a4 < v31)
  {
    v31 = (v11 + a4);
  }

  if (v31 < v11)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v9 == v31)
  {
    goto LABEL_90;
  }

  v98 = v11;
  v99 = v6;
  v32 = *v7;
  v33 = &v9[*v7];
  v34 = v11 - v9;
  v103 = v31;
LABEL_67:
  v105 = v9;
  v35 = v9[v32];
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 1);
    if (v35)
    {
      v39 = 1131045487;
    }

    else
    {
      v39 = 0x64616F4C6C6C61;
    }

    if (v35)
    {
      v40 = 0xE400000000000000;
    }

    else
    {
      v40 = 0xE700000000000000;
    }

    if (*(v37 - 1))
    {
      v41 = 1131045487;
    }

    else
    {
      v41 = 0x64616F4C6C6C61;
    }

    if (*(v37 - 1))
    {
      v42 = 0xE400000000000000;
    }

    else
    {
      v42 = 0xE700000000000000;
    }

    if (v39 == v41 && v40 == v42)
    {

LABEL_66:
      v9 = v105 + 1;
      ++v33;
      --v34;
      if (v105 + 1 == v103)
      {
        v9 = v103;
        v11 = v98;
        v6 = v99;
        v7 = a3;
        goto LABEL_90;
      }

      goto LABEL_67;
    }

    v5 = sub_25F4A3270();

    if ((v5 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v32)
    {
      break;
    }

    v35 = *v37;
    *v37 = *(v37 - 1);
    *--v37 = v35;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}