unint64_t sub_1D988E60C(uint64_t a1, char a2)
{
  sub_1D992BD64();

  v3 = sub_1D992AD24();
  MEMORY[0x1DA739C30](v3);

  MEMORY[0x1DA739C30](0x6E6F64616572202CLL, 0xEC000000203A796CLL);
  if (a2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1DA739C30](v4, v5);

  MEMORY[0x1DA739C30](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

void sub_1D988E70C()
{
  if (*(v0 + 40) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_1D992B6B4();
    v4 = sandbox_extension_consume();

    if (v4 < 0)
    {
      v15 = MEMORY[0x1DA739850](v5);
      v16 = MEMORY[0x1DA739850]();
      if (strerror(v16))
      {
        v17 = sub_1D992B604();
        v19 = v18;
        if (qword_1ED8BF428 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        sub_1D988E1A0(v15, v17, v19);
        OUTLINED_FUNCTION_2_9();
        OUTLINED_FUNCTION_1_11();
        sub_1D98DCEB4(v20, v21, v22, v23, v24, v25);

        sub_1D988EB28();
        v26 = swift_allocError();
        OUTLINED_FUNCTION_3_6(v26, v27);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_1ED8BF428 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v6 = sub_1D98DCE30();
      if (*(v6 + 24) == 1)
      {

        sub_1D988E8C8(v7);
        v8 = *(v6 + 16);
        OUTLINED_FUNCTION_2_9();
        OUTLINED_FUNCTION_1_11();
        sub_1D986A454(v9, v10, v11, v12, v13, v14);
      }

      else
      {
      }

      *(v1 + 32) = v4;
      *(v1 + 40) = 0;
    }
  }
}

unint64_t sub_1D988E8C8(uint64_t a1)
{
  sub_1D992BD64();

  MEMORY[0x1DA739C30](*(a1 + 16), *(a1 + 24));
  MEMORY[0x1DA739C30](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t SandboxExtension.deinit()
{
  v1 = v0;
  if ((*(v0 + 40) & 1) == 0)
  {
    v2 = *(v0 + 32);
    sandbox_extension_release();
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v3 = sub_1D98DCE30();
    if (*(v3 + 24) == 1)
    {

      v5 = sub_1D988EA38(v4);
      v6 = *(v3 + 16);
      sub_1D986A454(v5, v7, 0xD000000000000060, 0x80000001D99380C0, 0x74696E696564, 0xE600000000000000);
    }

    else
    {
    }
  }

  v8 = *(v1 + 24);

  return v1;
}

unint64_t sub_1D988EA38(uint64_t a1)
{
  sub_1D992BD64();

  MEMORY[0x1DA739C30](*(a1 + 16), *(a1 + 24));
  MEMORY[0x1DA739C30](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  SandboxExtension.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D988EB28()
{
  result = qword_1ECB48678;
  if (!qword_1ECB48678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48678);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics16SandboxExtensionC0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D988EBC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D988EC28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_1D988EC7C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_1D988ECBC(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D988ED04@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D988ECBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D988ED30@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D988ECD4(*v1);
  *a1 = result;
  return result;
}

uint64_t MessageGroupIdentifier.write(to:)(void *a1)
{
  v3 = type metadata accessor for MessageGroupIdentifier(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D988EE2C(v1, v6);
  sub_1D988EE90(v6);
  [a1 writeUint32:0 forTag:1];
  v9 = v1;
  v10 = a1;
  return sub_1D992B9C4();
}

uint64_t sub_1D988EE2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageGroupIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D988EE90(uint64_t a1)
{
  v2 = type metadata accessor for ComponentId(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D988EEEC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ComponentId(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MessageGroupIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D988EE2C(a1, v12);
  sub_1D988F924(v12, v8, type metadata accessor for ComponentId);
  [a2 writeInt32:*v8 forTag:0];
  v13 = *(v5 + 28);
  sub_1D992B9F4();
  return sub_1D988EE90(v8);
}

uint64_t static MessageGroupIdentifier.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  v20 = 1;
  v12 = type metadata accessor for MessageGroupIdentifier(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v17 = a1;
  v18 = &v20;
  v19 = v11;
  sub_1D988F3BC();
  sub_1D992B964();
  if (!v2)
  {
    sub_1D988F478(v11, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
    {
      sub_1D988F410(v9);
      v13 = sub_1D992B484();
      sub_1D988F850(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
      swift_allocError();
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E6999BA8], v13);
      swift_willThrow();
    }

    else
    {
      sub_1D988F924(v9, a2, type metadata accessor for MessageGroupIdentifier);
    }
  }

  return sub_1D988F410(v11);
}

id sub_1D988F244(_BYTE *a1, id a2, BOOL *a3)
{
  if (*a1)
  {
    if (*a3)
    {
      v4 = sub_1D992B484();
      sub_1D988F850(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
      return swift_willThrow();
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      return sub_1D992B974();
    }
  }

  else
  {
    result = [a2 readUint32];
    *a3 = result != 0;
  }

  return result;
}

unint64_t sub_1D988F3BC()
{
  result = qword_1ECB47CD8;
  if (!qword_1ECB47CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CD8);
  }

  return result;
}

uint64_t sub_1D988F410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D988F478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D988F530(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  result = static ComponentId.read(from:)(a2, &v11 - v7);
  if (!v2)
  {
    v10 = type metadata accessor for MessageGroupIdentifier(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    return sub_1D988F8B4(v8, a1);
  }

  return result;
}

_BYTE *_s6FieldsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D988F7FC()
{
  result = qword_1ECB48690;
  if (!qword_1ECB48690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48690);
  }

  return result;
}

uint64_t sub_1D988F850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D988F8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D988F924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ComponentId.write(to:)(void *a1)
{
  [a1 writeInt32:*v1 forTag:0];
  v2 = *(type metadata accessor for ComponentId(0) + 20);
  return sub_1D992B9F4();
}

uint64_t sub_1D988F9DC(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D988FA14@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D988F9DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D988FA40@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D988F9F4(*v1);
  *a1 = result;
  return result;
}

uint64_t static ComponentId.read(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = 0;
  v28 = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v24 = &v27;
  v25 = a1;
  v26 = v8;
  sub_1D988FE50();
  v10 = sub_1D992B964();
  if (!v2)
  {
    if ((v28 & 1) == 0)
    {
      v23 = v27;
      v11 = *(v9 - 8);
      v12 = *(v11 + 64);
      v13 = MEMORY[0x1EEE9AC00](v10);
      v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D9879FF8(v8, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v9) != 1)
      {
        v22 = &v22;
        v19 = *(v11 + 32);
        v19(v15, v16, v9);
        v20 = type metadata accessor for ComponentId(0);
        v19(&a2[*(v20 + 20)], v15, v9);
        *a2 = v23;
        return sub_1D987625C(v8);
      }

      sub_1D987625C(v16);
    }

    v17 = sub_1D992B484();
    sub_1D9890158(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E6999BA8], v17);
    swift_willThrow();
  }

  return sub_1D987625C(v8);
}

id sub_1D988FD60(_BYTE *a1, uint64_t a2, id a3, uint64_t a4)
{
  if (*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v5 - 8);
    v8 = &v11 - v7;
    sub_1D992B9B4();
    return sub_1D98901A0(v8, a4);
  }

  else
  {
    result = [a3 readInt32];
    *a2 = result;
    *(a2 + 4) = 0;
  }

  return result;
}

unint64_t sub_1D988FE50()
{
  result = qword_1ECB47FB8;
  if (!qword_1ECB47FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47FB8);
  }

  return result;
}

_BYTE *_s6FieldsOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9890104()
{
  result = qword_1ECB486A8;
  if (!qword_1ECB486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486A8);
  }

  return result;
}

uint64_t sub_1D9890158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D98901A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9890210(unsigned int a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_1D9890274@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9890210(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1D98902B0@<W0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9890244(*a1);
  *a2 = result;
  return result;
}

id TagPredicate.write(to:)(void *a1)
{
  v3 = type metadata accessor for MessageGroupIdentifier(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = (MEMORY[0x1EEE9AC00])(v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
      v17 = swift_projectBox();
      LOBYTE(v16) = *(v17 + *(v16 + 48));
      v18 = sub_1D988EE2C(v17, v7);
      MEMORY[0x1EEE9AC00](v18);
      *(&v20 - 4) = a1;
      *(&v20 - 3) = v7;
      *(&v20 - 16) = v16;
      OUTLINED_FUNCTION_5_6();
      result = sub_1D9890884(v7);
      break;
    case 2uLL:
    case 3uLL:
      OUTLINED_FUNCTION_0_18();
      MEMORY[0x1EEE9AC00](v15);
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_5_6();

      break;
    case 4uLL:
      OUTLINED_FUNCTION_0_18();
      MEMORY[0x1EEE9AC00](v14);
      *(&v20 - 2) = a1;
      *(&v20 - 1) = v7;
      sub_1D98907D8(v7);
      OUTLINED_FUNCTION_5_6();
      result = sub_1D9890810(v7);
      break;
    case 5uLL:
      if (v8 == 0xA000000000000000)
      {
        v19 = 2;
      }

      else
      {
        v19 = 4;
      }

      result = [a1 writeBOOL:1 forTag:v19];
      break;
    default:
      v9 = *(v8 + 32);
      v10 = *(v8 + 16);
      *&v11 = MEMORY[0x1EEE9AC00](v5);
      *(&v20 - 2) = v11;
      *(&v20 - 16) = v12;
      *(&v20 - 1) = a1;
      result = OUTLINED_FUNCTION_5_6();
      break;
  }

  return result;
}

id sub_1D9890584(uint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v7 = a3;
  if (!a3)
  {
    [a4 writeUint64:a1 forTag:1];
    v8 = a4;
    v9 = a2;
    goto LABEL_5;
  }

  v8 = a4;
  v9 = a1;
  if (v7 != 1)
  {
LABEL_5:
    v10 = 2;
    return [v8 writeUint64:v9 forTag:v10];
  }

  v10 = 1;
  return [v8 writeUint64:v9 forTag:v10];
}

id sub_1D9890608(void *a1, uint64_t a2, char a3)
{
  result = sub_1D992B9C4();
  if (!v3)
  {
    return [a1 writeBOOL:a3 & 1 forTag:2];
  }

  return result;
}

uint64_t sub_1D9890684(uint64_t result)
{
  v2 = *(result + 16);
  v3 = (result + 32);
  if (v2)
  {
    while (1)
    {
      v4 = *v3;
      v5[3] = &type metadata for TagPredicate;
      v5[4] = sub_1D9891570();
      v5[0] = v4;
      sub_1D98907D8(v4);
      sub_1D98907D8(v4);
      sub_1D992B9D4();
      if (v1)
      {
        break;
      }

      sub_1D9890810(v4);
      result = __swift_destroy_boxed_opaque_existential_1(v5);
      ++v3;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1D9890810(v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1D9890740(uint64_t a1, unint64_t a2)
{
  v4[3] = &type metadata for TagPredicate;
  v4[4] = sub_1D9891570();
  v4[0] = a2;
  sub_1D98907D8(a2);
  sub_1D992B9D4();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_1D98907D8(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D9890810(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9890884(uint64_t a1)
{
  v2 = type metadata accessor for MessageGroupIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t static TagPredicate.read(from:)()
{
  sub_1D9890E38();
  sub_1D992B964();
  if (!v0)
  {
    v1 = sub_1D992B484();
    sub_1D98847C8();
    OUTLINED_FUNCTION_4_6();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6999BA8], v1);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

id sub_1D9890A0C(unsigned __int8 *a1, void *a2, unint64_t *a3)
{
  v7 = type metadata accessor for MessageGroupIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40[-v17];
  v19 = *a1;
  switch(v19)
  {
    case 1:
      v28 = *a3;
      v29 = 0xA000000000000000;
      goto LABEL_14;
    case 2:
      v25 = __swift_storeEnumTagSinglePayload(&v40[-v17], 1, 1, v7);
      v41 = 0;
      MEMORY[0x1EEE9AC00](v25);
      *&v40[-32] = a2;
      *&v40[-24] = v18;
      *&v40[-16] = &v41;
      sub_1D992B974();
      if (!v3)
      {
        sub_1D988F478(v18, v14);
        if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
        {
          sub_1D988F410(v14);
          v26 = sub_1D992B484();
          sub_1D98847C8();
          OUTLINED_FUNCTION_4_6();
          (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E6999BA8], v26);
          swift_willThrow();
        }

        else
        {
          sub_1D9891600(v14, v10);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
          v35 = swift_allocBox();
          v37 = v36;
          v38 = *(v34 + 48);
          sub_1D9891600(v10, v36);
          *(v37 + v38) = v41;
          v39 = *a3;
          *a3 = v35 | 0x2000000000000000;
          sub_1D9890E8C(v39);
        }
      }

      return sub_1D988F410(v18);
    case 3:
      v28 = *a3;
      v29 = 0xA000000000000008;
LABEL_14:
      *a3 = v29;
      sub_1D9890E8C(v28);
      return [a2 readBOOL];
    case 4:
    case 5:
    case 6:
      v42 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1EEE9AC00](v16);
      *&v40[-16] = a2;
      *&v40[-8] = &v42;
      sub_1D992B974();
      v20 = v42;
      if (v3)
      {
      }

      v21 = *(v42 + 16);
      if (!v21)
      {
      }

      if (v19 == 4)
      {
        v31 = 0x6000000000000000;
LABEL_17:
        OUTLINED_FUNCTION_3();
        v32 = swift_allocObject();
        *(v32 + 16) = v20;
        v33 = v31 | v32;
        v24 = *a3;
        *a3 = v33;

        goto LABEL_18;
      }

      if (v19 != 6)
      {
        v31 = 0x4000000000000000;
        goto LABEL_17;
      }

      if (v21 != 1)
      {
      }

      v22 = *(v42 + 32);
      OUTLINED_FUNCTION_3();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v24 = *a3;
      *a3 = v23 | 0x8000000000000000;
      sub_1D98907D8(v22);
LABEL_18:
      sub_1D9890E8C(v24);

    default:
      MEMORY[0x1EEE9AC00](v16);
      *&v40[-16] = a2;
      *&v40[-8] = a3;
      return sub_1D992B974();
  }
}

unint64_t sub_1D9890E38()
{
  result = qword_1ECB47F98;
  if (!qword_1ECB47F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F98);
  }

  return result;
}

unint64_t sub_1D9890E8C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D9890810(result);
  }

  return result;
}

unint64_t sub_1D9890EA4()
{
  result = qword_1ECB47F80;
  if (!qword_1ECB47F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F80);
  }

  return result;
}

unint64_t sub_1D9890EF8(uint64_t a1, unint64_t *a2)
{
  result = static TimestampRange.read(from:)();
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v7;
    *(v5 + 24) = v8;
    *(v5 + 32) = v9;
    v6 = *a2;
    *a2 = v5;
    return sub_1D9890E8C(v6);
  }

  return result;
}

id sub_1D9890FDC(_BYTE *a1, id a2, uint64_t a3, _BYTE *a4)
{
  if (*a1)
  {
    result = [a2 readBOOL];
    *a4 = result;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    return sub_1D992B974();
  }

  return result;
}

uint64_t sub_1D9891080(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  result = static MessageGroupIdentifier.read(from:)(a2, &v11 - v7);
  if (!v2)
  {
    v10 = type metadata accessor for MessageGroupIdentifier(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    return sub_1D988F8B4(v8, a1);
  }

  return result;
}

unint64_t sub_1D98911A4()
{
  sub_1D9890E38();
  sub_1D992B964();
  if (!v0)
  {
    v1 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6999BA8], v1);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

uint64_t sub_1D98913B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D9891440(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D989151C()
{
  result = qword_1ECB486C0;
  if (!qword_1ECB486C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486C0);
  }

  return result;
}

unint64_t sub_1D9891570()
{
  result = qword_1ECB47F88;
  if (!qword_1ECB47F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F88);
  }

  return result;
}

uint64_t sub_1D98915C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D9891144();
}

uint64_t sub_1D98915E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D9890F78();
}

uint64_t sub_1D9891600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageGroupIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D98916A0()
{
  result = qword_1ECB47F90;
  if (!qword_1ECB47F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F90);
  }

  return result;
}

unint64_t sub_1D9891710()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D98911A4();
}

unint64_t sub_1D989172C()
{
  result = qword_1ECB486C8;
  if (!qword_1ECB486C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486C8);
  }

  return result;
}

uint64_t sub_1D9891780()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return MessageGroupIdentifier.write(to:)(v1);
}

_BYTE *sub_1D98917A8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1D9891850(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D989192C()
{
  result = qword_1ECB486D0;
  if (!qword_1ECB486D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486D0);
  }

  return result;
}

unint64_t sub_1D9891984()
{
  result = qword_1ECB486D8;
  if (!qword_1ECB486D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486D8);
  }

  return result;
}

id TimestampRange.write(to:)(id a1)
{
  v2 = a1;
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v1[1];
    [a1 writeUint64:v3 forTag:1];
    a1 = v2;
    v3 = v5;
  }

  v4 = 2;
LABEL_6:

  return [a1 writeUint64:v3 forTag:v4];
}

uint64_t static TimestampRange.read(from:)()
{
  sub_1D9891C38();
  result = sub_1D992B964();
  if (!v0)
  {
    v2 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6999BA8], v2);
    return swift_willThrow();
  }

  return result;
}

id sub_1D9891BE0(_BYTE *a1)
{
  v2 = v1 + 2;
  v3 = v1[3];
  if (*a1)
  {
    v2 = v1 + 4;
  }

  v4 = *v2;
  result = [v3 readUint64];
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

unint64_t sub_1D9891C38()
{
  result = qword_1ECB47ED0;
  if (!qword_1ECB47ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47ED0);
  }

  return result;
}

unint64_t sub_1D9891C90()
{
  result = qword_1ECB486E0;
  if (!qword_1ECB486E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486E0);
  }

  return result;
}

_BYTE *_s6FieldsOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9891E9C()
{
  result = qword_1ECB486E8;
  if (!qword_1ECB486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486E8);
  }

  return result;
}

unint64_t sub_1D9891EF0()
{
  result = qword_1ECB486F0;
  if (!qword_1ECB486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486F0);
  }

  return result;
}

uint64_t type metadata accessor for StagingPoolEntry()
{
  result = qword_1ED8BF298;
  if (!qword_1ED8BF298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9891FB8()
{
  sub_1D989203C();
  if (v0 <= 0x3F)
  {
    sub_1D9892094();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D989203C()
{
  if (!qword_1ED8BF1E0)
  {
    type metadata accessor for MonotonicTimestamp();
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8BF1E0);
    }
  }
}

unint64_t sub_1D9892094()
{
  result = qword_1ED8BF0B8;
  if (!qword_1ED8BF0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BF0B8);
  }

  return result;
}

void sub_1D98920E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v55 = MEMORY[0x1E69E7CC0];
    sub_1D98B9860();
    v3 = v55;
    sub_1D9894910(v2);
    v5 = v4;
    v54 = v6;
    v7 = v2 + 56;
    v8 = 0;
    v46 = sub_1D992AE84();
    OUTLINED_FUNCTION_0();
    v44 = v10 + 16;
    v12 = *(v11 + 64);
    v45 = v10;
    v42 = v2;
    v43 = v10 + 8;
    v39 = v2 + 64;
    v40 = v12;
    v41 = v1;
    v47 = v2 + 56;
    while (1)
    {
      v15 = MEMORY[0x1EEE9AC00](v9);
      if ((v14 & 0x8000000000000000) != 0 || v14 >= v13 << *(v2 + 32))
      {
        break;
      }

      v48 = v8;
      v16 = v14 >> 6;
      v17 = v13 << v14;
      if ((*(v7 + 8 * (v14 >> 6)) & (v13 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_24;
      }

      v49 = v14;
      v50 = v5;
      v18 = v45;
      v19 = v46;
      v20 = *(v2 + 48) + *(v45 + 72) * v14;
      v53 = v3;
      v21 = *(v45 + 16);
      v22 = v21(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v46, v15);
      v51 = &v38;
      MEMORY[0x1EEE9AC00](v22);
      v23 = OUTLINED_FUNCTION_29_2();
      (v21)(v23);
      v24 = sub_1D992AE24();
      v52 = v25;
      v26 = *(v18 + 8);
      v26(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      v26(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      v3 = v53;
      v55 = v53;
      v27 = *(v53 + 16);
      if (v27 >= *(v53 + 24) >> 1)
      {
        sub_1D98B9860();
        v3 = v55;
      }

      *(v3 + 16) = v27 + 1;
      v28 = v3 + 24 * v27;
      v29 = v52;
      *(v28 + 32) = v24;
      *(v28 + 40) = v29;
      *(v28 + 48) = 0;
      v7 = v47;
      if (v54)
      {
        goto LABEL_28;
      }

      v2 = v42;
      v30 = 1 << *(v42 + 32);
      v9 = v49;
      if (v49 >= v30)
      {
        goto LABEL_25;
      }

      v31 = *(v47 + 8 * v16);
      if ((v31 & v17) == 0)
      {
        goto LABEL_26;
      }

      if (*(v42 + 36) != v50)
      {
        goto LABEL_27;
      }

      if ((v31 & (-2 << (v49 & 0x3F))) != 0)
      {
        v32 = v41;
        v33 = v48;
      }

      else
      {
        v34 = v16 << 6;
        v35 = v16 + 1;
        v36 = (v39 + 8 * v16);
        v32 = v41;
        v33 = v48;
        do
        {
          if (v35 >= (v30 + 63) >> 6)
          {
            break;
          }

          v37 = *v36++;
          v34 += 64;
          ++v35;
        }

        while (!v37);
        v9 = sub_1D988AD24(v49, v50, 0);
      }

      v8 = v33 + 1;
      if (v8 == v32)
      {
        return;
      }

      v54 = 0;
      v5 = *(v2 + 36);
      v12 = v40;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_1D9892478(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | a1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48410, &qword_1D992FD50);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9892528(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | a1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48718, &qword_1D9931348);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98925C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | result) == 0)
  {
    return 0;
  }

  if (a3 == 1 && result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48720, &unk_1D9931350);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9892670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a3;
  if (a3 == 4 && (a2 | a1) == 0)
  {
    sub_1D992AE04();
    OUTLINED_FUNCTION_10_4();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    OUTLINED_FUNCTION_5(v7);
    v9 = *(v8 + 64);
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x1EEE9AC00](v10);
    v12 = &v21 - v11;
    if (v5 == 2)
    {
      sub_1D992ADB4();
      v13 = sub_1D992AE04();
      v14 = 0;
    }

    else
    {
      v13 = sub_1D992AE04();
      v14 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v14, 1, v13);
    sub_1D992AE04();
    v20 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a4, v20 ^ 1u, 1, v13);
  }
}

uint64_t sub_1D98927C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | result) == 0)
  {
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 32);
  }

  if (a3 != 1)
  {
LABEL_10:
    OUTLINED_FUNCTION_22_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48730, &qword_1D9931368);
    v6 = swift_dynamicCast();
    v4 = v7;
    if (!v6)
    {
      v4 = 0;
    }

    v5 = v6 ^ 1;
    return v4 | (v5 << 32);
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9892880(unint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | result) == 0)
  {
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 32);
  }

  if (a3 != 1)
  {
LABEL_10:
    OUTLINED_FUNCTION_22_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48728, &qword_1D9931360);
    v6 = swift_dynamicCast();
    v4 = v7;
    if (!v6)
    {
      v4 = 0;
    }

    v5 = v6 ^ 1;
    return v4 | (v5 << 32);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9892930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LogicalClocksTable.Record(0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33_0();
  v235 = v18 - (v17 & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v225 - v23;
  if (!*(a1 + 16) || (v25 = OUTLINED_FUNCTION_6_8(), v26 = sub_1D9889410(v25, 0xE800000000000000), (v27 & 1) == 0))
  {

    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v11);
LABEL_17:
    v49 = v24;
    goto LABEL_18;
  }

  v232 = v13;
  v233 = a2;
  v234 = v4;
  v28 = OUTLINED_FUNCTION_1_13(v26);
  v30 = *(v29 + 16);
  v31 = *(v29 + 8) | *v29;
  v32 = v30 == 4 && v31 == 0;
  if (v32)
  {
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
LABEL_16:

    v4 = v234;
    goto LABEL_17;
  }

  v230 = v225;
  v231 = v10;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8_5();
  if (v30 == 3)
  {
    v39 = OUTLINED_FUNCTION_9_0();
    sub_1D987BA38(v39, v40);
    OUTLINED_FUNCTION_9_0();
    sub_1D992AD64();
  }

  else if (v30)
  {
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v11);
    v44 = OUTLINED_FUNCTION_9_0();
    sub_1D986C8B8(v44, v45, v30);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    sub_1D992AE14();
  }

  v46 = OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v24, v46 ^ 1u, 1, v11);
  v47 = OUTLINED_FUNCTION_9_0();
  sub_1D986C908(v47, v48, v30);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_18_1(v24);
  if (v32)
  {
    goto LABEL_16;
  }

  v54 = v232;
  v55 = v235;
  v229 = *(v232 + 32);
  v229(v235, v24, v11);
  v56 = *(v54 + 16);
  v57 = v56(v231, v55, v11);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_33_0();
  v60 = v59 - (v58 & 0xFFFFFFFFFFFFFFF0);
  v230 = v225;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_8_5();
  v64 = v62 - v63;
  if (*(a1 + 16))
  {
    v65 = sub_1D9889410(0xD000000000000011, 0x80000001D9936910);
    if (v66)
    {
      v228 = v225;
      v67 = OUTLINED_FUNCTION_1_13(v65);
      v69 = *(v68 + 16);
      if (v69 == 4 && *v68 == 0)
      {
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v11);
LABEL_34:
        v86 = OUTLINED_FUNCTION_21_1();
        (v60)(v86);

        v4 = v234;
        goto LABEL_35;
      }

      MEMORY[0x1EEE9AC00](v67);
      OUTLINED_FUNCTION_8_5();
      v226 = v78;
      v227 = v77;
      v225[0] = v81;
      v225[1] = v79 - v80;
      if (v69 == 3)
      {
        sub_1D987BA38(v77, v78);
        sub_1D992AD64();
      }

      else if (v69)
      {
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v11);
        sub_1D986C8B8(v227, v226, v69);
      }

      else
      {

        sub_1D992AE14();
      }

      v85 = OUTLINED_FUNCTION_24_1();
      __swift_storeEnumTagSinglePayload(v64, v85 ^ 1u, 1, v11);
      sub_1D986C908(v227, v226, v69);
      OUTLINED_FUNCTION_18_1(v64);
      if (v32)
      {
        goto LABEL_34;
      }

      v229(v60, v64, v11);
      OUTLINED_FUNCTION_30_1();
      v89 = v60;
      v90 = v231;
      v91 = v231 + v234[5];
      v229 = v89;
      v92 = (v56)(v91);
      MEMORY[0x1EEE9AC00](v92);
      OUTLINED_FUNCTION_8_5();
      v95 = v93 - v94;
      if (*(a1 + 16) && (v96 = OUTLINED_FUNCTION_15_1(), v98 = sub_1D9889410(v96, v97), (v99 & 1) != 0) && ((OUTLINED_FUNCTION_1_13(v98), v101 = *(v100 + 16), v101 != 4) || *v100 != 0))
      {
        MEMORY[0x1EEE9AC00](v225);
        OUTLINED_FUNCTION_8_5();
        if (v101 == 3)
        {
          v215 = OUTLINED_FUNCTION_9_0();
          sub_1D987BA38(v215, v216);
          OUTLINED_FUNCTION_9_0();
          sub_1D992AD64();
        }

        else if (v101)
        {
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v217, v218, v219, v11);
          v220 = OUTLINED_FUNCTION_9_0();
          sub_1D986C8B8(v220, v221, v101);
        }

        else
        {

          OUTLINED_FUNCTION_9_0();
          sub_1D992AE14();
        }

        v222 = OUTLINED_FUNCTION_24_1();
        __swift_storeEnumTagSinglePayload(v95, v222 ^ 1u, 1, v11);
        v223 = OUTLINED_FUNCTION_9_0();
        sub_1D986C908(v223, v224, v101);
        v90 = v231;
      }

      else
      {
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v102, v103, v104, v11);
      }

      v4 = v234;
      sub_1D989437C(v95, v90 + v234[6], &qword_1ECB481D0, &qword_1D992F9F0);
      if (*(a1 + 16))
      {
        OUTLINED_FUNCTION_36_0();
        v107 = sub_1D9889410(v105, v106);
        if (v108)
        {
          OUTLINED_FUNCTION_1_13(v107);
          v110 = *v109;
          v111 = v109[1];
          v112 = *(v109 + 16);
          v113 = OUTLINED_FUNCTION_0_19();
          sub_1D986C8B8(v113, v114, v115);
          v116 = OUTLINED_FUNCTION_0_19();
          v119 = sub_1D9892528(v116, v117, v118);
          v121 = v120;
          v122 = OUTLINED_FUNCTION_0_19();
          v4 = v234;
          sub_1D986C908(v122, v123, v124);
          if (v121)
          {
            v125 = 0;
          }

          else
          {
            v125 = v119;
          }
        }

        else
        {
          v125 = 0;
          v121 = 1;
        }

        if (*(a1 + 16))
        {
          v129 = sub_1D9889410(0x6E6F5F6465646E65, 0xE800000000000000);
          if (v130)
          {
            OUTLINED_FUNCTION_1_13(v129);
            v132 = *v131;
            v133 = v131[1];
            v134 = *(v131 + 16);
            v135 = OUTLINED_FUNCTION_0_19();
            sub_1D986C8B8(v135, v136, v137);
            v138 = OUTLINED_FUNCTION_0_19();
            v141 = v125;
            v142 = sub_1D9892528(v138, v139, v140);
            v128 = v143;
            v144 = OUTLINED_FUNCTION_0_19();
            v4 = v234;
            sub_1D986C908(v144, v145, v146);
            if (v128)
            {
              v126 = 0;
            }

            else
            {
              v126 = v142;
            }

            v125 = v141;
          }

          else
          {
            v126 = 0;
            v128 = 1;
          }

          if (*(a1 + 16))
          {
            v147 = sub_1D9889410(0x6576655F7473616CLL, 0xEA0000000000746ELL);
            if (v148)
            {
              OUTLINED_FUNCTION_1_13(v147);
              v150 = *v149;
              v151 = *(v149 + 8);
              v230 = v125;
              v152 = *(v149 + 16);
              sub_1D986C8B8(v150, v151, v152);
              v127 = sub_1D9892528(v150, v151, v152);
              v154 = v153;
              v155 = v150;
              v4 = v234;
              v156 = v152;
              v125 = v230;
              sub_1D986C908(v155, v151, v156);
LABEL_63:
              v157 = v231 + v4[8];
              *v157 = v127;
              *(v157 + 8) = v154 & 1;
              if (v121 & 1) != 0 && (v128)
              {
                v158 = v231 + v4[7];
                *v158 = 0;
                *(v158 + 8) = 0;
                *(v158 + 16) = 0;
                *(v158 + 24) = 256;
              }

              else
              {
                v159 = v231 + v4[7];
                *v159 = v125;
                *(v159 + 8) = v121 & 1;
                *(v159 + 16) = v126;
                *(v159 + 24) = v128 & 1;
                *(v159 + 25) = 0;
              }

              v160 = *(a1 + 16);
              if (v160)
              {
                v161 = OUTLINED_FUNCTION_16_3();
                v163 = sub_1D9889410(v161, v162);
                if (v164)
                {
                  OUTLINED_FUNCTION_1_13(v163);
                  v166 = *v165;
                  v167 = *(v165 + 8);
                  v168 = *(v165 + 16);
                  v169 = OUTLINED_FUNCTION_9_0();
                  sub_1D986C8B8(v169, v170, v168);
                  v171 = OUTLINED_FUNCTION_9_0();
                  v173 = sub_1D98925C0(v171, v172, v168);
                  v60 = v174;
                  v175 = v167;
                  v4 = v234;
                  sub_1D986C908(v166, v175, v168);
                  if (v60)
                  {
                    v160 = 0;
                  }

                  else
                  {
                    v160 = v173;
                  }

                  goto LABEL_74;
                }

                v160 = 0;
              }

              v60 = 1;
LABEL_74:
              v176 = v231 + v4[9];
              *v176 = v160;
              *(v176 + 8) = v60 & 1;
              v177 = sub_1D992AE04();
              v230 = v225;
              OUTLINED_FUNCTION_0();
              v179 = v178;
              v181 = *(v180 + 64);
              MEMORY[0x1EEE9AC00](v182);
              OUTLINED_FUNCTION_13();
              v185 = (v184 - v183);
              v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
              OUTLINED_FUNCTION_9(v186);
              v188 = *(v187 + 64);
              OUTLINED_FUNCTION_20_0();
              MEMORY[0x1EEE9AC00](v189);
              v191 = v225 - v190;
              if (*(a1 + 16) && (OUTLINED_FUNCTION_14_2(), OUTLINED_FUNCTION_36_0(), v194 = sub_1D9889410(v192, v193), (v195 & 1) != 0))
              {
                OUTLINED_FUNCTION_1_13(v194);
                v60 = *v196;
                v197 = *(v196 + 8);
                v198 = *(v196 + 16);
                v199 = OUTLINED_FUNCTION_0_19();
                sub_1D986C8B8(v199, v200, v201);

                v202 = OUTLINED_FUNCTION_0_19();
                sub_1D9892670(v202, v203, v204, v205);
                v206 = v198;
                v4 = v234;
                sub_1D986C908(v60, v197, v206);
                v207 = OUTLINED_FUNCTION_38_0();
                (v60)(v207);
                (v60)(v235, v11);
                if (__swift_getEnumTagSinglePayload(v191, 1, v177) != 1)
                {
                  v208 = *(v179 + 32);
                  v208(v185, v191, v177);
                  v209 = v231;
                  v208(v231 + v4[10], v185, v177);
                  OUTLINED_FUNCTION_30_1();
                  v210 = v233;
                  sub_1D98943CC(v209, v233);
                  __swift_storeEnumTagSinglePayload(v210, 0, 1, v4);
                  return sub_1D9894430(v209);
                }
              }

              else
              {

                v211 = OUTLINED_FUNCTION_38_0();
                (v60)(v211);
                (v60)(v235, v11);
                OUTLINED_FUNCTION_10_4();
                __swift_storeEnumTagSinglePayload(v212, v213, v214, v177);
              }

              sub_1D986B804(v191, &qword_1ECB48710, &qword_1D9931340);
              v87 = 1;
              goto LABEL_36;
            }
          }

          v127 = 0;
        }

        else
        {
          v126 = 0;
          v127 = 0;
          v128 = 1;
        }
      }

      else
      {
        v126 = 0;
        v125 = 0;
        v127 = 0;
        v128 = 1;
        v121 = 1;
      }

      v154 = 1;
      goto LABEL_63;
    }
  }

  v73 = OUTLINED_FUNCTION_21_1();
  (v60)(v73);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v11);
  v4 = v234;
LABEL_35:
  sub_1D986B804(v64, &qword_1ECB481D0, &qword_1D992F9F0);
  v87 = 0;
LABEL_36:
  OUTLINED_FUNCTION_30_1();
  v88 = v231;
  (v60)(v231, v11);
  if (!v87)
  {
    goto LABEL_19;
  }

  (v60)(v88 + v4[5], v11);
  v49 = v88 + v4[6];
LABEL_18:
  sub_1D986B804(v49, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_19:
  OUTLINED_FUNCTION_10_4();
  return __swift_storeEnumTagSinglePayload(v50, v51, v52, v4);
}

uint64_t sub_1D9893494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9931220;
  *(v1 + 32) = 0x64695F6B636F6C63;
  *(v1 + 40) = 0xE800000000000000;
  *(v1 + 48) = 0;
  v2 = sub_1D992AE84();
  v85 = v2;
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v86 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = *(v4 + 16);
  v10(&v77 - v9, v0, v2, v7);
  v11 = sub_1D992AE24();
  v13 = v12;
  v79 = v4;
  v14 = *(v4 + 8);
  v82 = v4 + 8;
  v14(&v77 - v9, v2);
  *(v1 + 56) = xmmword_1D9931230;
  *(v1 + 72) = v11;
  *(v1 + 80) = v13;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0xD000000000000011;
  *(v1 + 104) = 0x80000001D9936910;
  *(v1 + 112) = 0;
  v87 = type metadata accessor for LogicalClocksTable.Record(0);
  v15 = v87[5];
  v16 = MEMORY[0x1EEE9AC00](v87);
  v17 = v85;
  v80 = v10;
  v81 = v4 + 16;
  v10(&v77 - v9, v84 + v18, v85, v16);
  v19 = v9;
  v20 = sub_1D992AE24();
  v22 = v21;
  v83 = v14;
  v14(&v77 - v9, v17);
  *(v1 + 120) = 0xD000000000000011;
  *(v1 + 128) = 0x80000001D9936910;
  *(v1 + 136) = v20;
  *(v1 + 144) = v22;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0x5F64657461657263;
  *(v1 + 168) = 0xEA00000000006E6FLL;
  *(v1 + 176) = 3;
  v23 = v87;
  v24 = v87[10];
  v25 = sub_1D992AE04();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v33 = v32 - v31;
  v34 = v84;
  (*(v27 + 16))(v32 - v31, v84 + v24, v25);
  sub_1D992ADC4();
  v36 = v35;
  v37 = *(v27 + 8);
  v38 = OUTLINED_FUNCTION_28_1();
  v40 = v39(v38);
  *(v1 + 184) = xmmword_1D9931240;
  *(v1 + 200) = v36;
  *(v1 + 208) = 0;
  *(v1 + 216) = 2;
  MEMORY[0x1EEE9AC00](v40);
  v78 = v19;
  v41 = v23[6];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  v46 = v34 + v41;
  v47 = v34;
  sub_1D9866D90(v46, v33, &qword_1ECB481D0, &qword_1D992F9F0);
  v48 = v85;
  if (__swift_getEnumTagSinglePayload(v33, 1, v85) == 1)
  {
    sub_1D986B804(v33, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v49 = (*(v79 + 32))(&v77 - v19, v33, v48);
    MEMORY[0x1EEE9AC00](v49);
    v50 = &v77 - v78;
    v51 = OUTLINED_FUNCTION_28_1();
    v80(v51);
    v52 = sub_1D992AE24();
    v54 = v53;
    v55 = v83;
    v83(v50, v48);
    v47 = v34;
    sub_1D98BD920();
    v1 = v56;
    v55(&v77 - v19, v48);
    *(v1 + 16) = 4;
    strcpy((v1 + 224), "root_clock_id");
    *(v1 + 238) = -4864;
    *(v1 + 240) = 256;
    *(v1 + 242) = v88;
    *(v1 + 246) = v89;
    *(v1 + 248) = xmmword_1D9931250;
    *(v1 + 264) = v52;
    *(v1 + 272) = v54;
    *(v1 + 280) = 0;
  }

  v57 = v87;
  v58 = (v47 + v87[7]);
  if ((*(v58 + 25) & 1) == 0)
  {
    v59 = v58[2];
    v60 = *(v58 + 24);
    if ((v58[1] & 1) == 0)
    {
      v61 = *v58;
      v62 = *(v1 + 16);
      if (v62 >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v1 = v75;
      }

      *(v1 + 16) = v62 + 1;
      v63 = v1 + (v62 << 6);
      *(v63 + 32) = 0x5F64657472617473;
      *(v63 + 40) = 0xEA00000000006E6FLL;
      OUTLINED_FUNCTION_5_7(v63);
      *(v64 + 56) = xmmword_1D9931260;
      *(v64 + 72) = v61;
      *(v64 + 80) = 0;
      *(v64 + 88) = 1;
    }

    if ((v60 & 1) == 0)
    {
      v65 = *(v1 + 16);
      if (v65 >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v1 = v76;
      }

      *(v1 + 16) = v65 + 1;
      v66 = v1 + (v65 << 6);
      *(v66 + 32) = 0x6E6F5F6465646E65;
      *(v66 + 40) = 0xE800000000000000;
      OUTLINED_FUNCTION_5_7(v66);
      OUTLINED_FUNCTION_32_1(v67, xmmword_1D9931270);
    }
  }

  v68 = (v47 + v57[8]);
  if ((v68[1] & 1) == 0)
  {
    v69 = *v68;
    v70 = *(v1 + 16);
    if (v70 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_3();
      v1 = v74;
    }

    *(v1 + 16) = v70 + 1;
    v71 = v1 + (v70 << 6);
    *(v71 + 32) = 0x6576655F7473616CLL;
    *(v71 + 40) = 0xEA0000000000746ELL;
    OUTLINED_FUNCTION_5_7(v71);
    OUTLINED_FUNCTION_32_1(v72, xmmword_1D9931280);
  }

  return v1;
}

uint64_t sub_1D9893AC8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SQLDelete;
  a1[4] = &off_1F5516CC0;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = type metadata accessor for LogicalClocksTable.Predicate(0);
  *(v2 + 56) = v3;
  *(v2 + 64) = &off_1F55170B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = boxed_opaque_existential_1 + v3[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v11 = *(v10 + 48);
  v12 = sub_1D992AE04();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  sub_1D992ADF4();
  sub_1D992AD94();
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_28_1();
  v23(v22);
  __swift_storeEnumTagSinglePayload(v9 + v11, 0, 1, v12);
  result = __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  *(boxed_opaque_existential_1 + v3[5]) = 0;
  *(boxed_opaque_existential_1 + v3[7]) = 2;
  strcpy((v2 + 16), "logical_clocks");
  *(v2 + 31) = -18;
  return result;
}

uint64_t sub_1D9893CEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1D9893D00()
{
  v0 = sub_1D9893E60();
  MEMORY[0x1DA739C30](v0);

  sub_1D992BD64();

  MEMORY[0x1DA739C30](0x6F6C635F746F6F72, 0xED000064695F6B63);
  MEMORY[0x1DA739C30](8236, 0xE200000000000000);
  v1 = OUTLINED_FUNCTION_6_8();
  MEMORY[0x1DA739C30](v1, 0xE800000000000000);
  MEMORY[0x1DA739C30](0x2073612029, 0xE500000000000000);
  MEMORY[0x1DA739C30](0x6F6C635F746F6F72, 0xED000064695F6B63);
  OUTLINED_FUNCTION_23_2();
  v2 = OUTLINED_FUNCTION_7_5();
  MEMORY[0x1DA739C30](v2);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](32, 0xE100000000000000);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1D9893E60()
{
  sub_1D992AE24();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_6_8();
  sub_1D986F118(v2, 0xE800000000000000, 61, 0xE100000000000000, v3, v1, 0);

  v4 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1DA739C30](v4);

  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  OUTLINED_FUNCTION_34_0();
  v5 = sub_1D992B5E4();
  v7 = v6;

  OUTLINED_FUNCTION_37();
  v10 = v8;
  MEMORY[0x1DA739C30](v5, v7);

  return v10;
}

uint64_t sub_1D9893FC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1D986C620();
      v5 = (a1 + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v17 + 16);
        v8 = *(v17 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_1D986C620();
        }

        *(v17 + 16) = v9 + 1;
        v10 = v17 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 3;
        --v4;
      }

      while (v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    v11 = sub_1D992B5E4();
    v13 = v12;
  }

  else
  {
    v11 = 42;
    v13 = 0xE100000000000000;
  }

  v14 = sub_1D98941C4(a2);
  MEMORY[0x1DA739C30](v14);

  sub_1D992BD64();

  MEMORY[0x1DA739C30](v11, v13);

  OUTLINED_FUNCTION_23_2();
  v15 = OUTLINED_FUNCTION_7_5();
  MEMORY[0x1DA739C30](v15);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](32, 0xE100000000000000);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return 0x205443454C4553;
}

uint64_t sub_1D98941C4(uint64_t a1)
{
  sub_1D98920E8(a1);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_6_8();
  sub_1D987B5CC(v4, 0xE800000000000000, 0, v3);

  sub_1D98920E8(a1);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_15_1();
  sub_1D987B5CC(v7, v8, 0, v6);

  v9 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1DA739C30](v9);

  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  OUTLINED_FUNCTION_34_0();
  v10 = sub_1D992B5E4();
  v12 = v11;

  OUTLINED_FUNCTION_37();
  v15 = v13;
  MEMORY[0x1DA739C30](v10, v12);

  return v15;
}

uint64_t sub_1D989437C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_39(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1D98943CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClocksTable.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9894430(uint64_t a1)
{
  v2 = type metadata accessor for LogicalClocksTable.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9894550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D98945C0()
{
  sub_1D98946B4();
  if (v0 <= 0x3F)
  {
    sub_1D9894860(319, &qword_1ECB479B0, &qword_1ECB48740, &qword_1D99313F0);
    if (v1 <= 0x3F)
    {
      sub_1D9894860(319, &qword_1ED8BD8E0, &qword_1ECB48700, &qword_1D9931330);
      if (v2 <= 0x3F)
      {
        sub_1D98948B4(319, &qword_1ECB47980);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D98946B4()
{
  if (!qword_1ED8BF690)
  {
    sub_1D992AE84();
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8BF690);
    }
  }
}

void sub_1D9894744()
{
  sub_1D992AE84();
  if (v0 <= 0x3F)
  {
    sub_1D98946B4();
    if (v1 <= 0x3F)
    {
      sub_1D9894860(319, &qword_1ECB47890, &qword_1ECB48748, &qword_1D9931430);
      if (v2 <= 0x3F)
      {
        sub_1D98948B4(319, &qword_1ECB47888);
        if (v3 <= 0x3F)
        {
          sub_1D98948B4(319, &qword_1ECB478A8);
          if (v4 <= 0x3F)
          {
            sub_1D992AE04();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D9894860(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D992BC04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D98948B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D992BC04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D9894910(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1D992BC54();
  v4 = *(a1 + 36);
  return result;
}

void OUTLINED_FUNCTION_23_2()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_32_1(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 56) = a2;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
}

uint64_t sub_1D9894A18()
{
  v1 = type metadata accessor for LogicalClockEnd(0);
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = type metadata accessor for LogicalClockStart(0);
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = type metadata accessor for LogicalClockEvent(0);
  v16 = OUTLINED_FUNCTION_5(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_2_11();
  sub_1D989631C(v0, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D98962BC(v21, v7, type metadata accessor for LogicalClockEnd);
    v29 = v1;
    v30 = sub_1D98963D4(&qword_1ECB48770, type metadata accessor for LogicalClockEnd);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    sub_1D989631C(v7, boxed_opaque_existential_1, type metadata accessor for LogicalClockEnd);
    sub_1D992B9D4();
    v24 = type metadata accessor for LogicalClockEnd;
    v25 = v7;
  }

  else
  {
    sub_1D98962BC(v21, v14, type metadata accessor for LogicalClockStart);
    v29 = v8;
    v30 = sub_1D98963D4(&qword_1ECB48778, type metadata accessor for LogicalClockStart);
    v26 = __swift_allocate_boxed_opaque_existential_1(v28);
    sub_1D989631C(v14, v26, type metadata accessor for LogicalClockStart);
    sub_1D992B9D4();
    v24 = type metadata accessor for LogicalClockStart;
    v25 = v14;
  }

  sub_1D989637C(v25, v24);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1D9894C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48760, &qword_1D99315B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  v12 = type metadata accessor for LogicalClockEvent(0);
  v13 = OUTLINED_FUNCTION_4_7();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v23 = a1;
  v24 = v11;
  sub_1D9896268();
  sub_1D992B964();
  if (!v2)
  {
    sub_1D9866DE0(v11, v8, &qword_1ECB48760, &qword_1D99315B8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_1D986B804(v8, &qword_1ECB48760, &qword_1D99315B8);
      v16 = sub_1D992B484();
      OUTLINED_FUNCTION_0_20();
      sub_1D98963D4(v17, v18);
      OUTLINED_FUNCTION_7_6();
      (*(*(v16 - 8) + 104))(v19, *MEMORY[0x1E6999BA8], v16);
      swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1D98962BC(v8, a2, v20);
    }
  }

  return sub_1D986B804(v11, &qword_1ECB48760, &qword_1D99315B8);
}

uint64_t sub_1D9894E98(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogicalClockEnd(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LogicalClockStart(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_1D98963D4(&qword_1ECB48770, type metadata accessor for LogicalClockEnd);
    result = sub_1D992B984();
    if (v3)
    {
      return result;
    }

    sub_1D986B804(a3, &qword_1ECB48760, &qword_1D99315B8);
    sub_1D98962BC(v9, a3, type metadata accessor for LogicalClockEnd);
  }

  else
  {
    sub_1D98963D4(&qword_1ECB48778, type metadata accessor for LogicalClockStart);
    result = sub_1D992B984();
    if (v3)
    {
      return result;
    }

    sub_1D986B804(a3, &qword_1ECB48760, &qword_1D99315B8);
    sub_1D98962BC(v13, a3, type metadata accessor for LogicalClockStart);
  }

  v15 = type metadata accessor for LogicalClockEvent(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v15);
}

uint64_t sub_1D98950D8(unsigned int a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_1D9895224@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D98950D8(*a1);
  *a2 = result;
  return result;
}

id sub_1D9895250(void *a1)
{
  v2 = v1;
  sub_1D992B9F4();
  v4 = type metadata accessor for LogicalClockStart(0);
  if (*(v2 + v4[5]))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [a1 writeUint32:v5 forTag:2];
  v6 = v4[6];
  sub_1D992B9F4();
  [a1 writeUint64:*(v2 + v4[7]) forTag:4];
  return [a1 writeUint64:*(v2 + v4[8]) forTag:5];
}

uint64_t sub_1D9895310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v35 - v7;
  v9 = sub_1D992AE84();
  v10 = OUTLINED_FUNCTION_4_7();
  v13 = __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v51 = 2;
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v35 - v7;
  __swift_storeEnumTagSinglePayload(&v35 - v7, 1, 1, v9);
  v49 = 0;
  v50 = 1;
  v48 = 1;
  v43 = &v35 - v7;
  v44 = a1;
  v45 = &v51;
  v46 = &v35 - v7;
  OUTLINED_FUNCTION_6_9();
  sub_1D9896440();
  v15 = sub_1D992B964();
  if (!v2)
  {
    v40 = a2;
    v42 = *(v9 - 8);
    v16 = *(v42 + 64);
    MEMORY[0x1EEE9AC00](v15);
    v41 = &v35;
    MEMORY[0x1EEE9AC00](v17);
    v18 = &v35 - v7;
    sub_1D9866DE0(v8, v18, &qword_1ECB481D0, &qword_1D992F9F0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
    {
      sub_1D986B804(v18, &qword_1ECB481D0, &qword_1D992F9F0);
    }

    else
    {
      v39 = &v35;
      v38 = *(v42 + 32);
      v19 = v38(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v9);
      v20 = v51;
      if (v51 == 2)
      {
        (*(v42 + 8))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      }

      else
      {
        v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = v42;
        v37 = &v35;
        MEMORY[0x1EEE9AC00](v19);
        v22 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = &v35;
        MEMORY[0x1EEE9AC00](v23);
        v24 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1D9866DE0(v14, v24, &qword_1ECB481D0, &qword_1D992F9F0);
        if (__swift_getEnumTagSinglePayload(v24, 1, v9) == 1)
        {
          (*(v21 + 8))(v41, v9);
          sub_1D986B804(v24, &qword_1ECB481D0, &qword_1D992F9F0);
        }

        else
        {
          v38(v22, v24, v9);
          if (v50 == 1)
          {
            v25 = *(v21 + 8);
            v25(v22, v9);
            v25(v41, v9);
          }

          else
          {
            v26 = v41;
            if (v48 != 1)
            {
              v36 = v49;
              v42 = v47;
              v33 = v40;
              v38(v40, v41, v9);
              v34 = type metadata accessor for LogicalClockStart(0);
              v38(&v33[v34[6]], v22, v9);
              v33[v34[5]] = v20 & 1;
              *&v33[v34[7]] = v36;
              *&v33[v34[8]] = v42;
              goto LABEL_14;
            }

            v27 = *(v21 + 8);
            v27(v22, v9);
            v27(v26, v9);
          }
        }
      }
    }

    v28 = sub_1D992B484();
    OUTLINED_FUNCTION_0_20();
    sub_1D98963D4(v29, v30);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v31, *MEMORY[0x1E6999BA8], v28);
    swift_willThrow();
  }

LABEL_14:
  sub_1D986B804(v14, &qword_1ECB481D0, &qword_1D992F9F0);
  return sub_1D986B804(v8, &qword_1ECB481D0, &qword_1D992F9F0);
}

id sub_1D9895874(_BYTE *a1, uint64_t a2, id a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*a1)
  {
    case 1:
      result = [a3 readUint32];
      if (result == 2)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (result == 1)
      {
        v23 = 0;
      }

      *a4 = v23;
      break;
    case 2:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v17 - 8);
      v20 = v24 - v19;
      sub_1D992B9B4();
      v12 = v20;
      v13 = a5;
      goto LABEL_5;
    case 3:
      result = [a3 readUint64];
      *a6 = result;
      *(a6 + 8) = 0;
      break;
    case 4:
      result = [a3 readUint64];
      *a7 = result;
      *(a7 + 8) = 0;
      break;
    default:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v8 - 8);
      v11 = v24 - v10;
      sub_1D992B9B4();
      v12 = v11;
      v13 = a2;
LABEL_5:
      result = sub_1D98901A0(v12, v13);
      break;
  }

  return result;
}

uint64_t sub_1D9895A20(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_1D9895B68@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9895A20(*a1);
  *a2 = result;
  return result;
}

id sub_1D9895B94(void *a1)
{
  v2 = v1;
  sub_1D992B9F4();
  v4 = type metadata accessor for LogicalClockEnd(0);
  result = [a1 writeUint64:*(v2 + *(v4 + 20)) forTag:2];
  if (!HIDWORD(*(v2 + *(v4 + 24))))
  {
    return [a1 writeUint32_forTag_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9895C24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1D992AE84();
  v8 = OUTLINED_FUNCTION_4_7();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v30 = 0;
  v31 = 1;
  v29 = 1;
  v28[4] = v28 - v6;
  v28[5] = a1;
  OUTLINED_FUNCTION_6_9();
  sub_1D98964B4();
  v11 = sub_1D992B964();
  if (!v2)
  {
    v32 = a2;
    v12 = *(v7 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_13();
    v16 = (v15 - v14);
    MEMORY[0x1EEE9AC00](v17);
    sub_1D9866DE0(v28 - v6, v28 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
    if (__swift_getEnumTagSinglePayload(v28 - v6, 1, v7) == 1)
    {
      sub_1D986B804(v28 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
    }

    else
    {
      v28[1] = v28;
      v18 = *(v12 + 32);
      v18(v16, v28 - v6, v7);
      if (v31 != 1 && v29 != 1)
      {
        v24 = v30;
        v25 = v28[8];
        v26 = v32;
        v18(v32, v16, v7);
        v27 = type metadata accessor for LogicalClockEnd(0);
        *&v26[*(v27 + 20)] = v24;
        *&v26[*(v27 + 24)] = v25;
        return sub_1D986B804(v28 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
      }

      (*(v12 + 8))(v16, v7);
    }

    v19 = sub_1D992B484();
    OUTLINED_FUNCTION_0_20();
    sub_1D98963D4(v20, v21);
    OUTLINED_FUNCTION_7_6();
    (*(*(v19 - 8) + 104))(v22, *MEMORY[0x1E6999BA8], v19);
    swift_willThrow();
  }

  return sub_1D986B804(v28 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
}

id sub_1D9895F50(_BYTE *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      result = [a3 readUint64];
      *a4 = result;
      *(a4 + 8) = 0;
    }

    else
    {
      result = [a3 readUint32];
      *a5 = result;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v8 - 8);
    v11 = &v13 - v10;
    sub_1D992B9B4();
    return sub_1D98901A0(v11, a2);
  }

  return result;
}

unint64_t sub_1D9896268()
{
  result = qword_1ECB48768;
  if (!qword_1ECB48768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48768);
  }

  return result;
}

uint64_t sub_1D98962BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D989631C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D989637C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D98963D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9896440()
{
  result = qword_1ECB48780;
  if (!qword_1ECB48780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48780);
  }

  return result;
}

unint64_t sub_1D98964B4()
{
  result = qword_1ECB48788;
  if (!qword_1ECB48788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrchestratorTimeoutError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D9896590(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D9896668(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D9896740(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D989681C()
{
  result = qword_1ECB48790;
  if (!qword_1ECB48790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48790);
  }

  return result;
}

unint64_t sub_1D9896874()
{
  result = qword_1ECB48798;
  if (!qword_1ECB48798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48798);
  }

  return result;
}

unint64_t sub_1D98968CC()
{
  result = qword_1ECB487A0;
  if (!qword_1ECB487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB487A0);
  }

  return result;
}

id sub_1D989692C()
{
  v1 = OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying;
  v2 = *(v0 + OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying);
  }

  else
  {
    v4 = v0;
    swift_unknownObjectUnownedInit();
    sub_1D9880418();
    Strong = swift_unknownObjectUnownedLoadStrong();
    v6 = *&Strong[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection_machServiceName];
    v7 = *&Strong[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection_machServiceName + 8];

    v8 = sub_1D988045C();
    swift_unknownObjectUnownedDestroy();
    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id ClientRuntimeConnection.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying] = 0;
  v3 = &v2[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection_machServiceName];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ClientRuntimeConnection();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1D9896AD8()
{
  sub_1D989692C();
  OUTLINED_FUNCTION_0_21();
  v2[1] = 1107296256;
  v2[2] = sub_1D9896B7C;
  v2[3] = &block_descriptor_2;
  v1 = _Block_copy(v2);

  [v0 resetLogicalClockWithCompletion_];
  _Block_release(v1);
}

uint64_t sub_1D9896B7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (a3)
  {
    sub_1D992AE64();
    v13 = sub_1D992AE84();
    v14 = 0;
  }

  else
  {
    v13 = sub_1D992AE84();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v14, 1, v13);

  v15 = a4;
  v8(a2, v12, a4);

  return sub_1D987625C(v12);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9896CCC(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1D9879FF8(a2, &v14 - v10);
  v12 = sub_1D992AE84();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v13 = sub_1D992AE44();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (a3)
  {
    a3 = sub_1D992AC84();
  }

  (*(a4 + 16))(a4, a1 & 1, v13, a3);
}

void sub_1D9896DFC()
{
  sub_1D989692C();
  OUTLINED_FUNCTION_0_21();
  v2[1] = 1107296256;
  v2[2] = sub_1D9896EA0;
  v2[3] = &block_descriptor_3;
  v1 = _Block_copy(v2);

  [v0 runPipelineWithCompletion_];
  _Block_release(v1);
}

void sub_1D9896EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1D9896F4C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1D9896FE0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D992AC84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id ClientRuntimeConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientRuntimeConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientRuntimeConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SiriAnalyticsMessageStaging.init(internalTelemetry:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D992AD44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = a1;
  sub_1D9897300(v8);
  v10 = type metadata accessor for MessageStagingProvider();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider] = sub_1D98CDA34(v8, a1);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for SiriAnalyticsMessageStaging();
  v13 = objc_msgSendSuper2(&v15, sel_init);

  return v13;
}

uint64_t sub_1D9897300@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResourceType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  type metadata accessor for PersistentStorage();
  v7 = sub_1D992AD44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  sub_1D98F97F8();
  v13 = type metadata accessor for DataVault();
  v14 = objc_allocWithZone(v13);
  (*(v8 + 16))(v14 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v12, v7);
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v8 + 8))(v12, v7);
  sub_1D98CB5CC();

  sub_1D98C601C(a1);
  return sub_1D98876F0(v6);
}

uint64_t sub_1D98974CC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_8(v2);

  return sub_1D98CDC68();
}

uint64_t sub_1D9897580(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98981C0;

  return sub_1D98974B8();
}

uint64_t sub_1D989763C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_8(v2);

  return sub_1D9900D9C();
}

uint64_t sub_1D98976D0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1D98977D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D9897880;

  return sub_1D9897628();
}

uint64_t sub_1D9897880()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1D98979C0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_8(v2);

  return sub_1D9901338();
}

uint64_t sub_1D9897A74(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_1D9905654(a5, v8);
}

uint64_t sub_1D9897AE4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98981C0;

  return sub_1D98979AC();
}

id SiriAnalyticsMessageStaging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriAnalyticsMessageStaging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAnalyticsMessageStaging();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SiriAnalyticsMessageStaging.bootstrap()()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_8(v4);

  return v7();
}

uint64_t dispatch thunk of SiriAnalyticsMessageStaging.prune()()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_8(v4);

  return v7();
}

uint64_t dispatch thunk of SiriAnalyticsMessageStaging.purge()()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_8(v4);

  return v7();
}

uint64_t sub_1D9897FD0()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_14(v4);

  return v7(v6);
}

uint64_t sub_1D9898060()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_14(v4);

  return v7(v6);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9898130()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_14(v4);

  return v7(v6);
}

uint64_t sub_1D98981E8()
{
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  v1 = *(MEMORY[0x1E6999B80] + 4);
  v4 = (*MEMORY[0x1E6999B80] + MEMORY[0x1E6999B80]);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D98982B0;

  return v4();
}

uint64_t sub_1D98982B0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D98983DC, v3, 0);
}

uint64_t sub_1D98983DC()
{
  v1 = v0[6];
  v2 = sub_1D992AE04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = swift_task_alloc();
  sub_1D992ADF4();
  sub_1D992AD94();
  v7 = *(v3 + 8);
  v7(v6, v2);

  v8 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);
  sub_1D9898728();
  v9 = sub_1D992B3B4();
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D99384E0);
  v0[5] = v9;
  v10 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v10);

  MEMORY[0x1DA739C30](0xD000000000000016, 0x80000001D9938500);
  OUTLINED_FUNCTION_1_15();
  sub_1D98DCECC(v11, 0xE000000000000000, v12, v13, 0xD00000000000001DLL, v14);

  v7(v5, v2);

  v15 = v0[1];

  return v15();
}

unint64_t sub_1D9898728()
{
  result = qword_1ECB479C8;
  if (!qword_1ECB479C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483A8, &unk_1D9935540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB479C8);
  }

  return result;
}

id Metastore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Metastore.init()()
{
  v1 = v0;
  v2 = type metadata accessor for ResourceType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___SiriAnalyticsMetastore_db] = 0;
  v0[OBJC_IVAR___SiriAnalyticsMetastore_bootstrapped] = 0;
  v6 = OBJC_IVAR___SiriAnalyticsMetastore_schemas;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487C0, &qword_1D9931880);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9931220;
  *(v7 + 32) = &type metadata for LogicalClocksTable;
  *(v7 + 40) = &off_1ED8BE200;
  *(v7 + 48) = &type metadata for TagsTable;
  *(v7 + 56) = &off_1ED8BDC38;
  *(v7 + 64) = &type metadata for ComponentIdentifiersTable;
  *(v7 + 72) = &off_1ED8BDE80;
  *&v1[v6] = v7;
  type metadata accessor for PersistentStorage();
  v8 = sub_1D992AD44();
  v9 = OUTLINED_FUNCTION_6(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D98F97F8();
  v15 = type metadata accessor for DataVault();
  v16 = objc_allocWithZone(v15);
  (*(v11 + 16))(v16 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, &v21 - v14, v8);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  (*(v11 + 8))(&v21 - v14, v8);
  sub_1D98CB3AC();

  MEMORY[0x1EEE9AC00](v18);
  sub_1D98C601C(&v21 - v14);
  sub_1D98876F0(v5);
  (*(v11 + 32))(&v1[OBJC_IVAR___SiriAnalyticsMetastore_storageURL], &v21 - v14, v8);
  v19 = type metadata accessor for Metastore();
  v21.receiver = v1;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_1D9898A84()
{
  if ((sub_1D986AC54(1) & 1) != 0 && (v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db)) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487C8, &unk_1D99324B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D992FCB0;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001D99385A0;

    swift_bridgeObjectRetain_n();
    sub_1D992BD64();

    MEMORY[0x1DA739C30](0xD00000000000001ALL, 0x80000001D99385A0);

    MEMORY[0x1DA739C30](59, 0xE100000000000000);
    sub_1D987005C(0xD000000000000015, 0x80000001D99380A0, 0);

    swift_setDeallocating();
    sub_1D98993B4();
    v3 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_schemas);
    v4 = (v3 + 40);
    v5 = -*(v3 + 16);
    v6 = -1;
    while (v5 + v6 != -1)
    {
      if (++v6 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v7 = v4 + 2;
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = (*(*v4 + 96))(v1, v8, *v4);
      v4 = v7;
      if ((v10 & 1) == 0)
      {
        if (qword_1ED8BD6D0 != -1)
        {
          OUTLINED_FUNCTION_1_2();
        }

        sub_1D992BD64();

        v11 = (*(v9 + 72))(v8, v9);
        MEMORY[0x1DA739C30](v11);

        OUTLINED_FUNCTION_4_1();
        sub_1D98DCEB4(v13, 0x80000001D99385C0, 0xD000000000000059, v12 | 0x8000000000000000, v14, v15);

        return;
      }
    }

    if (qword_1ED8BD6D0 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_2_13();
    sub_1D986A454(v22, v23, v24, v25, v26, v27);

    *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_bootstrapped) = 1;
  }

  else
  {
    if (qword_1ED8BD6D0 != -1)
    {
LABEL_16:
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_2_13();
    sub_1D98DCEB4(v16, v17, v18, v19, v20, v21);
  }
}

void sub_1D9898E24()
{
  if ((sub_1D986AC54(0) & 1) != 0 && (v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db)) != 0)
  {
    v2 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_schemas);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);

      v5 = 0;
      v6 = (v2 + 40);
      while (1)
      {
        if (v5 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v7 = *(v6 - 1);
        v8 = *v6;
        if (dynamic_cast_existential_1_conditional(v7))
        {
          (*(v9 + 8))(&v27);
          v10 = v29;
          v11 = __swift_project_boxed_opaque_existential_1(&v27, v29);
          LOBYTE(v10) = sub_1D986D1D0(v11, v1, v10);
          __swift_destroy_boxed_opaque_existential_1(&v27);
          if ((v10 & 1) == 0)
          {
            break;
          }
        }

        ++v5;
        v6 += 2;
        if (v3 == v5)
        {
          goto LABEL_13;
        }
      }

      if (qword_1ED8BD6D0 != -1)
      {
        OUTLINED_FUNCTION_1_2();
      }

      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D992BD64();

      v27 = 0xD000000000000017;
      v28 = 0x80000001D9938630;
      v22 = (*(v8 + 72))(v7, v8);
      MEMORY[0x1DA739C30](v22);

      v23 = v28;
      OUTLINED_FUNCTION_3_7();
      sub_1D98DCEB4(v25, v23, 0xD000000000000059, v24 | 0x8000000000000000, v26, 0xE700000000000000);
    }

    else
    {
      v16 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);

LABEL_13:
      if (qword_1ED8BD6D0 != -1)
      {
        OUTLINED_FUNCTION_1_2();
      }

      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_2_13();
      sub_1D986A454(v17, v18, v19, v20, v21, 0xE700000000000000);
    }
  }

  else
  {
    if (qword_1ED8BD6D0 != -1)
    {
LABEL_21:
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_3_7();
    sub_1D98DCEB4(v13, v14, 0xD000000000000059, v12 | 0x8000000000000000, v15, 0xE700000000000000);
  }
}

uint64_t sub_1D989912C()
{
  if (*(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {

    sub_1D990B67C();
  }

  return result;
}

id Metastore.__deallocating_deinit()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___SiriAnalyticsMetastore_db])
  {
    v2 = qword_1ED8BD6D0;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    sub_1D986A454(0xD000000000000011, 0x80000001D9938650, 0xD000000000000059, 0x80000001D9938540, 0x74696E696564, 0xE600000000000000);
    sub_1D990BF54();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Metastore();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for Metastore()
{
  result = qword_1ED8BD6B0;
  if (!qword_1ED8BD6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98993B4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D989943C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9899484()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487D0, &qword_1D99318D8) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9899510()
{
  result = sub_1D992AD44();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id Orchestrator.init(host:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_38();
  *a2 = 0xD00000000000002CLL;
  a2[1] = v4;
  result = sub_1D98D0D9C();
  a2[2] = result;
  a2[3] = v6;
  a2[4] = a1;
  return result;
}

uint64_t Orchestrator.ingest()()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_1D992B004();
  *(v1 + 256) = v2;
  OUTLINED_FUNCTION_23(v2);
  *(v1 + 264) = v3;
  v5 = *(v4 + 64) + 15;
  *(v1 + 272) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v0;
  *(v1 + 280) = v6;
  *(v1 + 288) = v7;
  v8 = *(v0 + 1);
  v9 = *(v0 + 3);
  *(v1 + 296) = v8;
  *(v1 + 312) = v9;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  v10 = swift_task_alloc();
  *(v1 + 328) = v10;
  *v10 = v1;
  v10[1] = sub_1D98997CC;

  return sub_1D989A7F8();
}

uint64_t sub_1D98997CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 328);
  *v2 = *v0;
  *(v1 + 336) = v5;

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98998BC()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14();
    }

    *(v0 + 344) = qword_1ED8BFBA0;
    sub_1D992BD64();

    *(v0 + 240) = *(v1 + 16);
    v2 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v2);

    MEMORY[0x1DA739C30](0xD000000000000016, 0x80000001D99387F0);
    OUTLINED_FUNCTION_40();
    sub_1D986A454(v3, v4, v5, v6, v7, v8);

    v9 = *(v1 + 16);
    *(v0 + 352) = v9;
    if (v9)
    {
      v10 = *(v0 + 264);
      *(v0 + 360) = sub_1D989CECC();
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = *(v10 + 64);
      *(v0 + 448) = v12;
      v13 = v1 + ((v12 + 32) & ~v12);
      v14 = (v10 - 8);
      v58 = *(v10 + 56);
      v59 = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15 = (v10 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      *(v0 + 368) = v58;
      *(v0 + 376) = v11;
      v60 = v11;
      do
      {
        v16 = *(v0 + 312);
        v17 = *(v0 + 280);
        v18 = *(v0 + 256);
        *(v0 + 384) = v59;
        v60(v17, v13, v18);
        v19 = sub_1D992AFF4();
        v21 = v20;
        v22 = *v14;
        *(v0 + 392) = *v14;
        *(v0 + 400) = v15;
        v22(v17, v18);
        v23 = sub_1D992BBB4();
        MEMORY[0x1DA739C30](v19, v21);

        v24 = objc_allocWithZone(MEMORY[0x1E698EC68]);
        OUTLINED_FUNCTION_23_3();
        v28 = OUTLINED_FUNCTION_9_5(v23, 778398831, 0xE400000000000000, 0x7261745320746F4ELL, 0xEB00000000646574, v25, v26, v27, v57);
        [v16 sendEvent_];

        v13 += v58;
        --v9;
      }

      while (v9);
      *(v0 + 408) = MEMORY[0x1E69E7CC8];
      *(v0 + 416) = 0;
      v29 = *(v0 + 384);
      v30 = *(v0 + 360);
      v31 = *(v0 + 288);
      v61 = *(v0 + 296);
      v62 = *(v0 + 312);
      (*(v0 + 376))(*(v0 + 272), *(v0 + 336) + ((*(v0 + 448) + 32) & ~*(v0 + 448)), *(v0 + 256));
      v32 = sub_1D992AFF4();
      v34 = v33;
      v35 = v30;
      v36 = sub_1D992BBB4();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA739C30](v32, v34);

      v37 = *v35;
      v38 = *(v0 + 104);
      v39 = objc_allocWithZone(MEMORY[0x1E698EC68]);
      OUTLINED_FUNCTION_11_3();
      v44 = OUTLINED_FUNCTION_9_5(v36, v37, v38, v40, 0xE700000000000000, v41, v42, v43, v57);
      [v62 sendEvent_];

      *(v0 + 16) = v31;
      *(v0 + 24) = v61;
      *(v0 + 40) = v62;
      v45 = swift_task_alloc();
      *(v0 + 424) = v45;
      *v45 = v0;
      OUTLINED_FUNCTION_5_9(v45);

      return sub_1D989AE90();
    }
  }

  else
  {
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14();
    }

    OUTLINED_FUNCTION_40();
    sub_1D986A454(v47, v48, v49, v50, v51, v52);
  }

  v54 = *(v0 + 272);
  v53 = *(v0 + 280);

  OUTLINED_FUNCTION_29_0();
  v56 = MEMORY[0x1E69E7CC8];

  return v55(v56);
}

uint64_t sub_1D9899D40()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = v4;
  OUTLINED_FUNCTION_16();
  *v6 = v5;
  v8 = *(v7 + 424);
  v9 = *v1;
  OUTLINED_FUNCTION_17();
  *v10 = v9;
  *(v5 + 432) = v0;

  if (!v0)
  {
    *(v5 + 440) = v3;
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D9899E50()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 360);
  v3 = *(v0 + 272);
  v4 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  v59 = v1;
  swift_beginAccess();
  LODWORD(v1) = *&v1[v4];
  v5 = sub_1D992AFF4();
  v7 = v6;
  v8 = sub_1D992BBB4();
  if (v1 == 1)
  {
    *(v0 + 160) = 778398831;
    *(v0 + 168) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v5, v7);

    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_35_1();
    v13 = v8;
    v14 = v10;
    v15 = v9;
    v16 = 0xE900000000000064;
  }

  else
  {
    *(v0 + 144) = 778398831;
    *(v0 + 152) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v5, v7);

    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    OUTLINED_FUNCTION_23_3();
    v12 = 0x64656C696146;
    v13 = v8;
    v14 = v18;
    v15 = v17;
    v16 = 0xE600000000000000;
  }

  v20 = sub_1D989CF10(v13, v14, v15, v12, v16, 0x41532E454C4FLL, 0xE600000000000000, 0, v55);
  v21 = *(v0 + 408);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v57 = *(v0 + 352);
  v24 = *(v0 + 272);
  v25 = *(v0 + 256);
  v26 = *(v0 + 416) + 1;
  [*(v0 + 312) sendEvent_];

  v27 = sub_1D992AFF4();
  v29 = v28;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1D989D5C4(v59, v27, v29);

  v23(v24, v25);
  if (v26 == v57)
  {
    v30 = *(v0 + 336);

    v32 = *(v0 + 272);
    v31 = *(v0 + 280);

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_34();

    __asm { BRAA            X2, X16 }
  }

  v35 = *(v0 + 416) + 1;
  *(v0 + 408) = v21;
  *(v0 + 416) = v35;
  v36 = *(v0 + 384);
  v37 = *(v0 + 360);
  v38 = *(v0 + 288);
  v58 = *(v0 + 296);
  v60 = *(v0 + 312);
  (*(v0 + 376))(*(v0 + 272), *(v0 + 336) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(v0 + 368) * v35, *(v0 + 256));
  v39 = sub_1D992AFF4();
  v41 = v40;
  v42 = v37;
  v43 = sub_1D992BBB4();
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1DA739C30](v39, v41);

  v44 = *v42;
  v45 = *(v0 + 104);
  v46 = objc_allocWithZone(MEMORY[0x1E698EC68]);
  OUTLINED_FUNCTION_11_3();
  v51 = OUTLINED_FUNCTION_9_5(v43, v44, v45, v47, 0xE700000000000000, v48, v49, v50, v56);
  [v60 sendEvent_];

  *(v0 + 16) = v38;
  *(v0 + 24) = v58;
  *(v0 + 40) = v60;
  v52 = swift_task_alloc();
  *(v0 + 424) = v52;
  *v52 = v0;
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_34();

  return sub_1D989AE90();
}

uint64_t sub_1D989A1B8()
{
  v1 = *(v0 + 432);
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 452);
    v4 = *(v0 + 344);
    v5 = *(v0 + 272);
    if (v3 == 2)
    {
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      sub_1D992BD64();
      v6 = *(v0 + 232);

      *(v0 + 208) = 0xD000000000000024;
      *(v0 + 216) = 0x80000001D9938850;
      v7 = sub_1D992AFF4();
      MEMORY[0x1DA739C30](v7);

      v8 = *(v0 + 216);
      OUTLINED_FUNCTION_22_2(*(v0 + 208));

      v9 = objc_allocWithZone(type metadata accessor for StagingReport());
      v10 = 4;
    }

    else
    {
      *(v0 + 192) = 0;
      *(v0 + 200) = 0xE000000000000000;
      sub_1D992BD64();
      v19 = *(v0 + 200);
      *(v0 + 176) = *(v0 + 192);
      *(v0 + 184) = v19;
      MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9938830);
      v20 = sub_1D992AFF4();
      MEMORY[0x1DA739C30](v20);

      MEMORY[0x1DA739C30](0x3A726F727265202CLL, 0xE900000000000020);
      *(v0 + 453) = v3;
      sub_1D992BE24();
      v21 = *(v0 + 184);
      OUTLINED_FUNCTION_22_2(*(v0 + 176));

      v22 = objc_allocWithZone(type metadata accessor for StagingReport());
      v10 = 3;
    }

    v23 = sub_1D988C7F4(v10);
    v24 = *(v0 + 248);
    v18 = v23;
  }

  else
  {
    v11 = *(v0 + 432);
    v12 = *(v0 + 344);
    v13 = *(v0 + 272);

    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    sub_1D992BD64();
    v14 = *(v0 + 136);

    *(v0 + 112) = 0xD000000000000015;
    *(v0 + 120) = 0x80000001D9938810;
    v15 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v15);

    sub_1D98DCEB4(*(v0 + 112), *(v0 + 120), 0xD00000000000006BLL, 0x80000001D9938780, 0x2928747365676E69, 0xE800000000000000);

    v16 = objc_allocWithZone(type metadata accessor for StagingReport());
    v17 = sub_1D988C7F4(2);

    v18 = v17;
  }

  v25 = *(v0 + 360);
  v26 = *(v0 + 272);
  v27 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  swift_beginAccess();
  v83 = v18;
  LODWORD(v27) = *&v18[v27];
  v28 = sub_1D992AFF4();
  v30 = v29;
  v31 = sub_1D992BBB4();
  if (v27 == 1)
  {
    *(v0 + 160) = 778398831;
    *(v0 + 168) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v28, v30);

    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    v34 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    v80 = 0;
    OUTLINED_FUNCTION_35_1();
    v38 = v37 | v36;
    v39 = v31;
    v40 = v32;
    v41 = v33;
  }

  else
  {
    *(v0 + 144) = 778398831;
    *(v0 + 152) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v28, v30);

    v42 = *(v0 + 144);
    v43 = *(v0 + 152);
    v44 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    OUTLINED_FUNCTION_23_3();
    v35 = 0x64656C696146;
    v39 = v31;
    v40 = v42;
    v41 = v43;
    v38 = 0xE600000000000000;
  }

  v45 = sub_1D989CF10(v39, v40, v41, v35, v38, 0x41532E454C4FLL, 0xE600000000000000, 0, v80);
  v46 = *(v0 + 408);
  v47 = *(v0 + 392);
  v48 = *(v0 + 400);
  v82 = *(v0 + 352);
  v49 = *(v0 + 272);
  v50 = *(v0 + 256);
  v51 = *(v0 + 416) + 1;
  [*(v0 + 312) sendEvent_];

  v52 = sub_1D992AFF4();
  v54 = v53;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1D989D5C4(v83, v52, v54);

  v47(v49, v50);
  if (v51 == v82)
  {
    v55 = *(v0 + 336);

    v57 = *(v0 + 272);
    v56 = *(v0 + 280);

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_34();

    __asm { BRAA            X2, X16 }
  }

  v60 = *(v0 + 416) + 1;
  *(v0 + 408) = v46;
  *(v0 + 416) = v60;
  v61 = *(v0 + 384);
  v62 = *(v0 + 360);
  v63 = *(v0 + 288);
  v84 = *(v0 + 296);
  v85 = *(v0 + 312);
  (*(v0 + 376))(*(v0 + 272), *(v0 + 336) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(v0 + 368) * v60, *(v0 + 256));
  v64 = sub_1D992AFF4();
  v66 = v65;
  v67 = v62;
  v68 = sub_1D992BBB4();
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1DA739C30](v64, v66);

  v69 = *v67;
  v70 = *(v0 + 104);
  v71 = objc_allocWithZone(MEMORY[0x1E698EC68]);
  OUTLINED_FUNCTION_11_3();
  v76 = OUTLINED_FUNCTION_9_5(v68, v69, v70, v72, 0xE700000000000000, v73, v74, v75, v81);
  [v85 sendEvent_];

  *(v0 + 16) = v63;
  *(v0 + 24) = v84;
  *(v0 + 40) = v85;
  v77 = swift_task_alloc();
  *(v0 + 424) = v77;
  *v77 = v0;
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_34();

  return sub_1D989AE90();
}

uint64_t sub_1D989A7F8()
{
  OUTLINED_FUNCTION_18();
  v2 = sub_1D992AF54();
  v1[6] = v2;
  OUTLINED_FUNCTION_23(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_1D992AF64();
  v1[9] = v6;
  OUTLINED_FUNCTION_23(v6);
  v1[10] = v7;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v10 = sub_1D992AF84();
  v1[13] = v10;
  OUTLINED_FUNCTION_23(v10);
  v1[14] = v11;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v16 = *v0;
  v15 = v0[1];
  v1[15] = v14;
  v1[16] = v16;
  v1[17] = v15;

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1D989A96C()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  sub_1D992AF44();
  sub_1D992AF74();
  (*(v7 + 16))(v5, v4, v6);
  sub_1D989ECE4(&qword_1ECB47A20, MEMORY[0x1E6966C30]);
  sub_1D992B8E4();
  v9 = sub_1D989ECE4(qword_1ECB47A28, MEMORY[0x1E6966C20]);
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[18] = v11;
  *v11 = v12;
  v11[1] = sub_1D989AAD8;
  v13 = v0[8];
  v14 = v0[6];

  return MEMORY[0x1EEE6D8C8](v0 + 4, v14, v9);
}

uint64_t sub_1D989AAD8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[7] + 8))(v3[8], v3[6]);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D989ABEC()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[4];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[12];
  v6 = v0[11];
  v7 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_29_0();

  return v8(v4);
}

uint64_t sub_1D989ACD0()
{
  OUTLINED_FUNCTION_39_0();
  (*(v0[10] + 8))(v0[12], v0[9]);
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  v1 = v0[19];
  sub_1D992BD64();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA739C30](0xD00000000000001BLL, 0x80000001D9938A30);
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v0[2], v0[3], 0xD00000000000006BLL, 0x80000001D9938780, 0x6F69736E65747865, 0xEA0000000000736ELL);

  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_29_0();

  return v5(0);
}

uint64_t sub_1D989AE90()
{
  OUTLINED_FUNCTION_18();
  v1[40] = v2;
  v3 = sub_1D992B004();
  v1[41] = v3;
  OUTLINED_FUNCTION_23(v3);
  v1[42] = v4;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *(v0 + 32);
  v1[43] = v7;
  v1[44] = v8;
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D989AF44()
{
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v0[45] = qword_1ED8BFBA0;
  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v5 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v5);

  OUTLINED_FUNCTION_31_2();
  sub_1D98DCECC(v6, v7, v8, v9, v10, v11);

  (*(v2 + 16))(v1, v4, v3);
  v12 = type metadata accessor for ExtensionConnection();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = swift_task_alloc();
  v0[46] = v15;
  *v15 = v0;
  v15[1] = sub_1D989B0F4;
  v16 = v0[43];

  return sub_1D98F3A20();
}

uint64_t sub_1D989B0F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 368);
  *v2 = *v0;
  *(v1 + 376) = v5;

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D989B1E4()
{
  if (!*(v0 + 376))
  {
    v25 = *(v0 + 360);
    v26 = *(v0 + 320);
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v27 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v27);

    OUTLINED_FUNCTION_31_2();
    sub_1D98DCEB4(v28, v29, v30, v31, v32, v33);

    sub_1D989E7E8();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    v35 = *(v0 + 344);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_41_0();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 352);
  v40 = v1;
  v2 = *(v0 + 320);
  sub_1D992BD64();
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  MEMORY[0x1DA739C30](0x6820676E696B7341, 0xEC0000002074736FLL);
  *(v0 + 304) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48868, &qword_1D9931B90);
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0xD000000000000027, 0x80000001D99388E0);
  v3 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v3);

  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  OUTLINED_FUNCTION_31_2();
  sub_1D986A454(v6, v7, v8, v9, v10, v11);

  v12 = sub_1D992AF94();
  v13 = v12;
  LODWORD(v5) = v14;
  v16 = v15;
  v18 = v17;
  v19 = HIDWORD(v12);
  v20 = HIDWORD(v14);
  v21 = HIDWORD(v15);
  v39 = HIDWORD(v17);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1D989B58C;
  v22 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48870, &qword_1D9931B98);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1D989BDA0;
  *(v0 + 168) = &block_descriptor_3;
  *(v0 + 176) = v22;
  *(v0 + 464) = v13;
  *(v0 + 468) = v19;
  *(v0 + 472) = v5;
  *(v0 + 476) = v20;
  *(v0 + 480) = v16;
  *(v0 + 484) = v21;
  *(v0 + 488) = v18;
  *(v0 + 492) = v39;
  [v40 vendStagingAccessWithAuditToken:v0 + 464 completionHandler:?];
  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1D989B58C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = *(v3 + 48);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D989B68C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[44];
  v2 = v0[37];
  v0[49] = v0[36];
  v0[50] = v2;
  v3 = sub_1D992AD44();
  v0[51] = v3;
  OUTLINED_FUNCTION_23(v3);
  v0[52] = v4;
  v6 = *(v5 + 64) + 15;
  v0[53] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[54] = v7;
  v0[10] = v0;
  v0[15] = v7;
  v0[11] = sub_1D989B808;
  v8 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48878, &qword_1D9931BA0);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1D989BE38;
  v0[29] = &block_descriptor_20;
  v0[30] = v8;
  [v1 dataPoolUrlWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D989B808()
{
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D989B8D8()
{
  v1 = v0[53];
  v20 = v0[50];
  v18 = v0[49];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[40];
  (*(v0[52] + 32))(v1, v0[54], v0[51]);

  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v5 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v5);

  OUTLINED_FUNCTION_31_2();
  sub_1D986A454(v6, v7, v8, v9, v10, v11);

  v12 = type metadata accessor for StagingReport();
  v13 = swift_task_alloc();
  v0[55] = v13;
  v13[2] = v2;
  v13[3] = v1;
  v13[4] = v18;
  v13[5] = v20;
  v13[6] = v4;
  v14 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[56] = v15;
  *v15 = v16;
  v15[1] = sub_1D989BAC4;

  return MEMORY[0x1EEE6DD58](v0 + 39, v12, v12, 0, 0, &unk_1D9931BB0, v13, v12);
}

uint64_t sub_1D989BAC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  v3[57] = v0;

  if (!v0)
  {
    v9 = v3[55];
    v10 = v3[50];
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D989BBD4()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[47];
  v5 = v0[43];

  v6 = v0[39];
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_29_0();

  return v7(v6);
}

uint64_t sub_1D989BC7C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[47];
  v2 = v0[48];
  swift_willThrow();

  v3 = v0[48];
  v4 = v0[43];

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D989BCF0()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[55];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[47];

  (*(v3 + 8))(v2, v5);

  v7 = v0[57];
  v8 = v0[43];

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_1D989BDA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1D98F1C38(v4, v5);
  }

  else
  {
    v8 = sub_1D992B624();

    return sub_1D98EF898(v4, v8, v7);
  }
}

uint64_t sub_1D989BE38(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_1D992AD44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AD14();
  return sub_1D98E3EF8(v1, v5);
}

uint64_t sub_1D989BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_1D992B004();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v7[13] = *(v9 + 64);
  v7[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D989BFDC, 0, 0);
}

uint64_t sub_1D989BFDC()
{
  v1 = v0[15];
  v2 = v0[12];
  v27 = v0[14];
  v28 = v0[13];
  v25 = v0[10];
  v26 = v0[11];
  v21 = v0[8];
  v22 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v24 = v0[5];
  v23 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v23);
  v5 = sub_1D992AD44();
  OUTLINED_FUNCTION_6(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = swift_task_alloc();
  (*(v7 + 16))(v10, v4, v5);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v3;
  (*(v7 + 32))(&v12[v11], v10, v5);
  v13 = &v12[(v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v13 = v21;
  *(v13 + 1) = v22;

  sub_1D98BF6D0(v1, &unk_1D9931BC8, v12);
  sub_1D988C380(v1);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v23);
  (*(v2 + 16))(v27, v25, v26);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v2 + 32))(v15 + v14, v27, v26);
  *(v15 + ((v28 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  sub_1D98BF6D0(v1, &unk_1D9931BD8, v15);
  sub_1D988C380(v1);
  v16 = *(MEMORY[0x1E69E8700] + 4);
  v17 = swift_task_alloc();
  v0[16] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48880, &unk_1D9931BE0);
  *v17 = v0;
  v17[1] = sub_1D989C2C0;
  v18 = v0[5];
  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6DAB8]();
}

uint64_t sub_1D989C2C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    *(v3 + 144) = *(v3 + 16);
    *(v3 + 25) = *(v3 + 24);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D989C3CC()
{
  OUTLINED_FUNCTION_26_2();
  v1 = *(v0 + 25);
  v2 = **(v0 + 40);
  type metadata accessor for StagingReport();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992B8D4();
  if (v1 == 255)
  {
    sub_1D989EC44();
    swift_allocError();
    *v6 = 0;
  }

  else if ((*(v0 + 25) & 1) == 0)
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    **(v0 + 32) = *(v0 + 144);

    OUTLINED_FUNCTION_25();
    goto LABEL_6;
  }

  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  swift_willThrow();

  OUTLINED_FUNCTION_25();
LABEL_6:

  return v5();
}

uint64_t sub_1D989C504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D989C52C, 0, 0);
}

uint64_t sub_1D989C52C()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 48);
  v6 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D989C600;
  v4 = *(v0 + 24);

  return sub_1D98F503C(sub_1D989EC98, v2);
}

uint64_t sub_1D989C600()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = v4;
  OUTLINED_FUNCTION_16();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_17();
  *v10 = v9;
  v5[9] = v0;

  if (!v0)
  {
    v11 = v5[7];
    v5[10] = v3;
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D989C718()
{
  **(v0 + 16) = *(v0 + 80);
  OUTLINED_FUNCTION_25();
  return v1();
}

uint64_t sub_1D989C748()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 72);

  return v2();
}

void sub_1D989C7A4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992ACD4();
  v7 = sub_1D992B614();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_1D989ECA4;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D989C8CC;
  v10[3] = &block_descriptor_39;
  v9 = _Block_copy(v10);

  [a1 ingestWithDataPoolUrl:v6 sandboxExtensionToken:v7 callback:v9];
  _Block_release(v9);
}

void sub_1D989C8CC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1D989C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D992BE04();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D989CA18, 0, 0);
}

uint64_t sub_1D989CA18()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);
  sub_1D992BFF4();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D989CADC;
  v3 = *(v0 + 48);
  OUTLINED_FUNCTION_17_1();

  return sub_1D98C2604();
}

uint64_t sub_1D989CADC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  OUTLINED_FUNCTION_17();
  *v10 = v9;
  *(v11 + 64) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D989CC34()
{
  OUTLINED_FUNCTION_39_0();
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  v2 = v0[2];
  v1 = v0[3];
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0x6F69736E65747845, 0xEA0000000000206ELL);
  v3 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v3);

  MEMORY[0x1DA739C30](0xD000000000000033, 0x80000001D99389B0);
  OUTLINED_FUNCTION_31_2();
  sub_1D98DCEB4(v4, v5, v6, v7, v8, v9);

  sub_1D98F5758();
  sub_1D989EC44();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();
  v11 = v0[6];

  OUTLINED_FUNCTION_25();

  return v12();
}

uint64_t sub_1D989CDDC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t OrchestratorTimeoutError.hashValue.getter()
{
  v1 = *v0;
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](v1);
  return sub_1D992C0C4();
}

unint64_t sub_1D989CECC()
{
  result = qword_1ECB478B8;
  if (!qword_1ECB478B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB478B8);
  }

  return result;
}

id sub_1D989CF10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  if (a3)
  {
    v15 = sub_1D992B614();
  }

  else
  {
    v15 = 0;
  }

  if (!a5)
  {
    v16 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = sub_1D992B614();

  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_1D992B614();

LABEL_9:
  v18 = [v10 initWithVersion:a1 taskName:v15 taskState:v16 taskSource:v17 pushMetadata:a8 pullMetadata:a9];

  return v18;
}

uint64_t sub_1D989D07C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D989ED2C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D989D128(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D989D174(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  OUTLINED_FUNCTION_1_16(a1, a2, a3, a4);
  v9 = type metadata accessor for StreamTelemetryKey();
  result = sub_1D989ED2C(v4, v6 + *(*(v9 - 8) + 72) * v5, type metadata accessor for StreamTelemetryKey);
  *(*(a4 + 56) + 4 * v5) = v8;
  v11 = *(a4 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }

  return result;
}

unint64_t sub_1D989D200(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D989D248(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1D992AE84();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_1D989D31C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1D989D368(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3, a4);
  v8 = sub_1D992AE84();
  OUTLINED_FUNCTION_14_3(v8);
  (*(v9 + 32))(v6 + *(v9 + 72) * v5, v4);
  OUTLINED_FUNCTION_21_2();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

uint64_t sub_1D989D3E0(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  result = sub_1D989E778(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D989D480(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D989D4C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D992AE84();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_1D989D5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D9889410(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48860, &qword_1D9931B88);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1D9889410(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1D989D200(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_1D989D704()
{
  result = qword_1ECB487D8;
  if (!qword_1ECB487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB487D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics26OrchestratedExtensionErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D989D77C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D989D7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1D989D82C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1D989D868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D989D8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OrchestratorTimeoutError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1D989D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v24;
  a20 = v25;
  v26 = v21;
  v28 = v27;
  OUTLINED_FUNCTION_34_1();
  v29 = sub_1D9889568();
  OUTLINED_FUNCTION_0_22(v29, v30);
  if (v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  v34 = v31;
  v35 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48818, &qword_1D9931B40);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v36 = *v21;
  v37 = sub_1D9889568();
  if ((v35 & 1) != (v38 & 1))
  {
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v34 = v37;
LABEL_5:
  v39 = *v26;
  if (v35)
  {
    v40 = (v39[7] + 24 * v34);
    v41 = v40[1];
    v42 = v40[2];
    *v40 = v23;
    v40[1] = v22;
    v40[2] = v20;
    OUTLINED_FUNCTION_7();

    sub_1D987106C(v43, v44);
  }

  else
  {
    v46 = sub_1D992AE84();
    v47 = OUTLINED_FUNCTION_6(v46);
    v49 = *(v48 + 64);
    v50 = MEMORY[0x1EEE9AC00](v47);
    v52 = &a9 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v52, v28, v50);
    sub_1D989D248(v34, v52, v23, v22, v20, v39);
    OUTLINED_FUNCTION_7();
  }
}

void sub_1D989DB88()
{
  OUTLINED_FUNCTION_34_1();
  v6 = sub_1D9889738(v4, v5);
  OUTLINED_FUNCTION_0_22(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48820, &qword_1D9931B48);
  if (sub_1D992BE34())
  {
    v13 = OUTLINED_FUNCTION_33_1();
    sub_1D9889738(v13, v0);
    OUTLINED_FUNCTION_8_6();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  v16 = *v1;
  if (v12)
  {
    *(v16[7] + 8 * v11) = v3;
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    sub_1D989D200(v11, v2, v0, v3, v16);
    OUTLINED_FUNCTION_37_0();

    sub_1D987BA38(v17, v18);
  }
}

unint64_t sub_1D989DC88()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1D98897E0(v4, v2);
  OUTLINED_FUNCTION_0_22(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48828, &qword_1D9931B50);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_1D98897E0(v5, v3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  if (v17)
  {
    v21 = (*(*v1 + 56) + 16 * v16);
    v22 = *v21;
    v23 = v21[1];
    *v21 = v9;
    v21[1] = v7;
    OUTLINED_FUNCTION_7();

    return sub_1D987106C(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_7();

    return sub_1D989D31C(v28, v29, v30, v31, v32, v33);
  }
}

void sub_1D989DDBC()
{
  v3 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_22(v3, v4);
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487F8, &qword_1D9931B20);
  if (OUTLINED_FUNCTION_15_2())
  {
    OUTLINED_FUNCTION_33_1();
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = *v1;
  if (v2)
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v9 = sub_1D992AE84();
    v10 = OUTLINED_FUNCTION_6(v9);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = OUTLINED_FUNCTION_3_8(v13, v20);
    v15(v14, v0);
    v16 = OUTLINED_FUNCTION_13_1();
    sub_1D989D368(v16, v17, v18, v19);
    OUTLINED_FUNCTION_37_0();
  }
}

void sub_1D989E078()
{
  v3 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_22(v3, v4);
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48808, &qword_1D9931B30);
  if (OUTLINED_FUNCTION_15_2())
  {
    OUTLINED_FUNCTION_33_1();
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = *v1;
  if (v2)
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v10 = sub_1D992AE84();
    v11 = OUTLINED_FUNCTION_6(v10);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    v15 = OUTLINED_FUNCTION_3_8(v14, v21);
    v16(v15, v0);
    v17 = OUTLINED_FUNCTION_13_1();
    sub_1D989D368(v17, v18, v19, v20);
    OUTLINED_FUNCTION_37_0();
  }
}

uint64_t sub_1D989E1B0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = sub_1D988B5F0(a2);
  OUTLINED_FUNCTION_0_22(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for SISchemaDeviceSensitivityState(0);
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48850, &qword_1D9931B78);
  if (OUTLINED_FUNCTION_15_2())
  {
    v10 = *v4;
    sub_1D988B5F0(a2);
    OUTLINED_FUNCTION_8_6();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v3)
  {
    v12 = *(*v4 + 56);
    v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80) - 8) + 72);
    OUTLINED_FUNCTION_37_0();

    return sub_1D989E708(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_37_0();

    return sub_1D989D3E0(v18, v19, v20, v21);
  }
}

void sub_1D989E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6_2();
  v16 = v15;
  v18 = v17;
  v19 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_22(v19, v20);
  if (v21)
  {
    __break(1u);
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v16);
  if (OUTLINED_FUNCTION_15_2())
  {
    OUTLINED_FUNCTION_33_1();
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  v23 = *v13;
  if (v14)
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_7();

    v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  else
  {
    v32 = sub_1D992AE84();
    v33 = OUTLINED_FUNCTION_6(v32);
    v35 = *(v34 + 64);
    MEMORY[0x1EEE9AC00](v33);
    v37 = OUTLINED_FUNCTION_3_8(v36, v43);
    v38(v37, v12);
    v39 = OUTLINED_FUNCTION_13_1();
    sub_1D989D368(v39, v40, v41, v42);
    OUTLINED_FUNCTION_7();
  }
}

id sub_1D989E438(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D9889858();
  OUTLINED_FUNCTION_0_22(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48840, &qword_1D9931B68);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_1D9889858();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1D992B1A4();
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1D989D480(v11, a2, a1, v16);

    return a2;
  }
}

void sub_1D989E558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D9889568();
  OUTLINED_FUNCTION_0_22(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E0, &qword_1D9931B08);
  if (OUTLINED_FUNCTION_15_2())
  {
    v14 = *v3;
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10) - 8);
    v20 = *(v19 + 40);
    v21 = v18 + *(v19 + 72) * v12;
    OUTLINED_FUNCTION_37_0();

    __asm { BRAA            X3, X16 }
  }

  v24 = sub_1D992AE84();
  v25 = OUTLINED_FUNCTION_6(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = OUTLINED_FUNCTION_3_8(v28, v31);
  v30(v29, a2);
  sub_1D989D4C4(v12, v3, a1, v17);
  OUTLINED_FUNCTION_37_0();
}

uint64_t sub_1D989E708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D989E778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D989E7E8()
{
  result = qword_1ECB48088;
  if (!qword_1ECB48088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48088);
  }

  return result;
}

uint64_t sub_1D989E854()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1D98692C4;

  return sub_1D989BED0(v5, v3, v6, v7, v8, v9, v10);
}

uint64_t sub_1D989E924()
{
  OUTLINED_FUNCTION_39_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D992AD44();
  OUTLINED_FUNCTION_23(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1D98692C4;

  return sub_1D989C504(v4, v9, v10, v11, v0 + v7, v13, v14);
}

uint64_t sub_1D989EA54()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v4 = sub_1D992B004();
  OUTLINED_FUNCTION_23(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1D989EB64;

  return sub_1D989C958(v3, v8, v9, v0 + v6, v10);
}

uint64_t sub_1D989EB64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

unint64_t sub_1D989EC44()
{
  result = qword_1ED8BF0D0[0];
  if (!qword_1ED8BF0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8BF0D0);
  }

  return result;
}

void sub_1D989EC98(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  sub_1D989C7A4(a1, a2, a3);
}

uint64_t sub_1D989ECA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D989ECE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D989ED2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  sub_1D98DCEB4(a1, v1, 0xD00000000000006BLL, v2 | 0x8000000000000000, 0x2928747365676E69, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_43()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRelease();
}

void sub_1D989EE44()
{
  sub_1D986E35C(0, &qword_1ECB478C8, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48888, &qword_1D9931C78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9931BF0;
  v1 = sub_1D986E35C(0, &unk_1ED8BD668, 0x1E695DF20);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48890, &qword_1D9931C80);
  *(v0 + 32) = v1;
  v2 = sub_1D986E35C(0, &qword_1ECB478B0, 0x1E696AEC0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48898, &qword_1D9931C88);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for StagingReport();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488A0, &qword_1D9931C90);
  *(v0 + 96) = v3;
  v4 = sub_1D986E35C(0, &qword_1ECB478C0, 0x1E696ABC0);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488A8, &qword_1D9931C98);
  *(v0 + 128) = v4;
  v5 = sub_1D989F318();
  sub_1D992B914();

  sub_1D992BE94();
  __break(1u);
}

uint64_t sub_1D989F06C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D98C91CC(0, 0, v3, &unk_1D9931C70, v6);
}

uint64_t sub_1D989F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D989F1B8, 0, 0);
}

uint64_t sub_1D989F1B8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D989F27C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D989F27C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D989F2F0, 0, 0);
}

id sub_1D989F318()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D992B7A4();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_1D989F3B0()
{
  if (qword_1ECB47AE0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v1 = *(v0 + 24);
  sub_1D986A454(0x2928747365676E69, 0xE800000000000000, 0xD00000000000007ELL, 0x80000001D9938B10, 0x2928747365676E69, 0xE800000000000000);
  v2 = sub_1D989FF90();
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B0, &qword_1D9931CA0);
  *v4 = v0;
  v4[1] = sub_1D989F500;
  v6 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v2, 0x2928747365676E69, 0xE800000000000000, sub_1D989FFE4, v6, v5);
}

uint64_t sub_1D989F500()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1D989F648;
  }

  else
  {
    v6 = sub_1D989F62C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1D989F660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  v7 = sub_1D989F980(a1);
  if (v7)
  {
    v8 = v7;
    (*(v3 + 16))(v6, a1, v2);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, v6, v2);
    aBlock[4] = sub_1D989FFEC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D989F8DC;
    aBlock[3] = &block_descriptor_4;
    v11 = _Block_copy(aBlock);

    [v8 ingest_];
    swift_unknownObjectRelease();
    _Block_release(v11);
  }
}

uint64_t sub_1D989F828(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
    return sub_1D992B824();
  }

  if (!a1)
  {
    sub_1D989E7E8();
    swift_allocError();
    *v4 = 4;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  return sub_1D992B834();
}

uint64_t sub_1D989F8DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for StagingReport();
    v4 = sub_1D992B5A4();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1D989F980(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = aBlock - v7;
  v9 = *(v1 + 112);
  if (v9)
  {
    (*(v4 + 16))(v8, a1, v3, v6);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, v8, v3);
    aBlock[4] = sub_1D98A0124;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D989FD64;
    aBlock[3] = &block_descriptor_21;
    v12 = _Block_copy(aBlock);
    v13 = v9;

    v14 = [v13 remoteObjectProxyWithErrorHandler_];
    _Block_release(v12);

    sub_1D992BC24();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488C0, &qword_1D9931CB8);
    if (swift_dynamicCast())
    {
      return aBlock[0];
    }
  }

  sub_1D989E7E8();
  v16 = swift_allocError();
  *v17 = 0;
  aBlock[0] = v16;
  sub_1D992B824();
  return 0;
}

uint64_t sub_1D989FBDC()
{
  if (qword_1ECB47AE0 != -1)
  {
    swift_once();
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D9938BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000007ELL, 0x80000001D9938B10, 0x3A5F2879786F7270, 0xE900000000000029);

  v0 = sub_1D992AC84();
  sub_1D989E7E8();
  swift_allocError();
  *v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  return sub_1D992B824();
}

void sub_1D989FD64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D989FDCC()
{
  if (qword_1ECB47AE0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  sub_1D986A454(0x61636F6C6C616544, 0xEC000000676E6974, 0xD00000000000007ELL, 0x80000001D9938B10, 0x74696E696564, 0xE600000000000000);
  v1 = *(v0 + 112);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 112);
  }

  else
  {
    v2 = 0;
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D989FE8C()
{
  sub_1D989FDCC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D989FEDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D988AED8;

  return sub_1D989F198(a1, v4, v5, v6);
}

unint64_t sub_1D989FF90()
{
  result = qword_1ECB47BA0;
  if (!qword_1ECB47BA0)
  {
    type metadata accessor for ExtensionOrchestratorConnection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47BA0);
  }

  return result;
}

uint64_t sub_1D989FFEC(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8) - 8) + 80);

  return sub_1D989F828(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_14Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D98A0124()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8) - 8) + 80);

  return sub_1D989FBDC();
}

uint64_t sub_1D98A01A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResourceType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  type metadata accessor for PersistentStorage();
  v7 = sub_1D992AD44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  sub_1D98F97F8();
  v13 = type metadata accessor for DataVault();
  v14 = objc_allocWithZone(v13);
  (*(v8 + 16))(v14 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v12, v7);
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v8 + 8))(v12, v7);
  sub_1D98CB648();

  sub_1D98C601C(a1);
  return sub_1D98876F0(v6);
}

id MetastoreStreamsShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetastoreStreamsShim.init()()
{
  v1 = v0;
  type metadata accessor for MetastoreStreams();
  v2 = swift_allocObject();
  sub_1D98A096C();
  *&v1[OBJC_IVAR___SiriAnalyticsMetastoreStreams_underlying] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MetastoreStreamsShim();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D98A0434()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + OBJC_IVAR___SiriAnalyticsMetastoreStreams_underlying);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D98A04CC;

  return sub_1D98A0B54();
}

uint64_t sub_1D98A04CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98A0628(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98A06D0;

  return sub_1D98A0418();
}

uint64_t sub_1D98A06D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_25();

  return v7();
}

id sub_1D98A07F4(void *a1, void *a2)
{
  v5 = *(*(v2 + OBJC_IVAR___SiriAnalyticsMetastoreStreams_underlying) + 16);
  type metadata accessor for LogicalClocksProvider();
  swift_allocObject();
  v6 = sub_1D98E165C(a1, a2, v5);
  v7 = type metadata accessor for LogicalClocksProviderShim();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider] = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v9 = a1;
  v10 = a2;
  return objc_msgSendSuper2(&v12, sel_init);
}

id MetastoreStreamsShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetastoreStreamsShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98A096C()
{
  v1 = v0;
  v2 = sub_1D992AD44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  sub_1D98A01A8(v5 - v4);
  v7 = type metadata accessor for LogicalClockStream();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1D9876B8C(v6);
  if (qword_1ED8BD6D0 != -1)
  {
    swift_once();
  }

  v14[0] = 1;
  v14[1] = 0xE000000000000000;
  sub_1D992BD64();

  v15 = 0xD000000000000018;
  v16 = 0x80000001D9938C60;
  v14[3] = &type metadata for PlatformFeatures;
  v14[4] = sub_1D98698A0();
  v10 = sub_1D992AE94();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v10)
  {
    v11 = 0x736D6165727473;
  }

  else
  {
    v11 = 25188;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE200000000000000;
  }

  MEMORY[0x1DA739C30](v11, v12);

  sub_1D98DCECC(v15, v16, 0xD00000000000007FLL, 0x80000001D9938C80, 0x292874696E69, 0xE600000000000000);

  return v1;
}

uint64_t sub_1D98A0B70()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_1D98A0B90, v1);
}

uint64_t sub_1D98A0B90()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  sub_1D9876D2C();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D98A0C24;
  v3 = *(v0 + 24);

  return sub_1D98981C8();
}

uint64_t sub_1D98A0C24()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98A0D04()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of MetastoreStreamsShim.bootstrapAndPrune()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D989EB64;

  return v6();
}

uint64_t sub_1D98A0EA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98692C4;

  return sub_1D98A0628(v2, v3);
}

void sub_1D98A0F54(uint64_t a1)
{
  if (!MEMORY[0x1E69D4F78])
  {
    return;
  }

  sub_1D98814A4();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    return;
  }

  v39 = *(a1 + *(type metadata accessor for PreprocessorTelemetry(0) + 32));
  v40 = a1;
  v5 = sub_1D992AE84();
  v6 = 0;
  v7 = 0;
  v8 = *(v5 - 8);
  v38 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v36 = "ts for uploaded clock ";
  v37 = v8 + 16;
  v32 = 0x80000001D9938D40;
  v33 = 0x80000001D9938DE0;
  v34 = v4 - 1;
  v35 = v8 + 8;
  while (1)
  {
    if (v7 >= v4)
    {
      __break(1u);
      goto LABEL_26;
    }

    v9 = *(v8 + 64);
    v10 = v38 + *(v8 + 72) * v7;
    v11 = MEMORY[0x1EEE9AC00](v5);
    v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = (*(v8 + 16))(v13, v11);
    MEMORY[0x1EEE9AC00](v14);
    v31 = v13;
    v15 = sub_1D98A2E80(MEMORY[0x1E69E7CC8], sub_1D98A1570, (&v32 - 4), v39);
    v16 = sub_1D98A14CC(v15);

    if (v16)
    {
      if (qword_1ED8BD6F0 != -1)
      {
        OUTLINED_FUNCTION_1_17();
        swift_once();
      }

      aBlock = 0;
      v42 = 0xE000000000000000;
      sub_1D992BD64();

      aBlock = 0xD000000000000024;
      v42 = v33;
      sub_1D98A19C4();
      v18 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v18);

      OUTLINED_FUNCTION_0_24();

      v6 = 1;
    }

    MEMORY[0x1EEE9AC00](v17);
    v31 = v13;
    sub_1D98827BC();
    v20 = sub_1D98A14CC(v19);

    if ((v20 & 1) == 0)
    {
      break;
    }

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_1_17();
      swift_once();
    }

    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1D992BD64();

    aBlock = 0xD000000000000026;
    v42 = v32;
    sub_1D98A19C4();
    v21 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v21);

    OUTLINED_FUNCTION_0_24();

    v22 = OUTLINED_FUNCTION_2_15();
    v5 = v23(v22);
    if (v34 == v7)
    {

      goto LABEL_21;
    }

    v6 = 1;
LABEL_15:
    v4 = *(v3 + 16);
    ++v7;
  }

  v24 = OUTLINED_FUNCTION_2_15();
  v5 = v25(v24);
  if (v34 != v7)
  {
    goto LABEL_15;
  }

  if ((v6 & 1) == 0)
  {
    return;
  }

LABEL_21:
  v26 = [objc_allocWithZone(MEMORY[0x1E69D4F78]) init];
  v27 = sub_1D98A17FC(0xD000000000000019, 0x80000001D9938D00, 0x65636F7270657250, 0xED0000676E697373, 0x73694D6B636F6C43, 0xEF4D4944676E6973, 0x6E61747369737361, 0xEA00000000006474, 0, v26);
  if (!v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v27;
  aBlock = 0;
  sub_1D992B594();
  v29 = aBlock;
  if (aBlock)
  {

    v45 = sub_1D98A1594;
    v46 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D98A176C;
    v44 = &block_descriptor_5;
    v30 = _Block_copy(&aBlock);
    sub_1D98A190C(0.0, v29, 0, 0, 0, v30, v26);
    _Block_release(v30);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1D98A14CC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
    LODWORD(v7) = *(*(result + 48) + 16 * v8);
    v9 = *(*(result + 56) + 8 * v8);
    if (v7 == 17 && v9 != 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 1;
    }

    v4 = *(result + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D98A1594(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_9;
  }

  v2 = *MEMORY[0x1E69D50C8];
  sub_1D992B624();
  sub_1D992BCF4();
  sub_1D98B0E5C(a1, &v4);
  sub_1D988B4A8(v3);
  if (!*(&v5 + 1))
  {
LABEL_9:
    sub_1D98A1A10(&v4);
    goto LABEL_10;
  }

  if (swift_dynamicCast() & 1) != 0 && (v3[0])
  {
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    sub_1D98DCECC(0xD000000000000013, 0x80000001D9938E30, 0xD00000000000006CLL, 0x80000001D9938D70, 0x726F466B63656863, 0xEF293A5F28434241);
    return;
  }

LABEL_10:
  if (qword_1ED8BD6F0 != -1)
  {
    swift_once();
  }

  sub_1D98DCEB4(0xD00000000000001ELL, 0x80000001D9938E10, 0xD00000000000006CLL, 0x80000001D9938D70, 0x726F466B63656863, 0xEF293A5F28434241);
}

uint64_t sub_1D98A176C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1D992B5A4();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id sub_1D98A17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v10 = sub_1D992B614();

  v11 = sub_1D992B614();

  v12 = sub_1D992B614();

  v13 = sub_1D992B614();

  v14 = [a10 signatureWithDomain:v10 type:v11 subType:v12 detectedProcess:v13 triggerThresholdValues:a9];

  return v14;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D98A190C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = sub_1D992B584();

  v14 = [a7 snapshotWithSignature:v13 delay:a3 events:a4 payload:a5 actions:a6 reply:a1];

  return v14;
}

unint64_t sub_1D98A19C4()
{
  result = qword_1ED8BD8D0;
  if (!qword_1ED8BD8D0)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8D0);
  }

  return result;
}

uint64_t sub_1D98A1A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB488D0, &unk_1D99335F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClockInactivityScheduler.__allocating_init(seconds:queue:expiration:creation:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = objc_allocWithZone(v0);
  return ClockInactivityScheduler.init(seconds:queue:expiration:creation:)();
}

id ClockInactivityScheduler.init(seconds:queue:expiration:creation:)()
{
  OUTLINED_FUNCTION_3_9();
  *&v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer] = 0;
  v7 = OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_timerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB488E0, &unk_1D9931D50);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  v9 = &v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_creation];
  *v10 = v2;
  *(v10 + 1) = v0;
  *&v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_queue] = v5;
  v11 = OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_interval;
  *&v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_interval] = v6;
  v12 = *MEMORY[0x1E69E7F48];
  v13 = sub_1D992B504();
  (*(*(v13 - 8) + 104))(&v1[v11], v12, v13);
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ClockInactivityScheduler();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t type metadata accessor for ClockInactivityScheduler()
{
  result = qword_1ED8BD760;
  if (!qword_1ED8BD760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D98A1D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D98F9B34;
    v5[3] = &block_descriptor_6;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

void sub_1D98A1DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a4;
  v68 = a1;
  v69 = a2;
  v5 = sub_1D992B514();
  v6 = OUTLINED_FUNCTION_6(v5);
  v75 = v7;
  v76 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v72 = v11 - v10;
  v12 = sub_1D992B544();
  v13 = OUTLINED_FUNCTION_6(v12);
  v73 = v14;
  v74 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v66 = v18 - v17;
  v19 = sub_1D992B504();
  v20 = OUTLINED_FUNCTION_6(v19);
  v64 = v21;
  v65 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v63 = (&v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v61 - v26;
  v27 = sub_1D992B564();
  v61 = v27;
  v77 = *(v27 - 8);
  v28 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61 - v32;
  v34 = sub_1D992BA64();
  v35 = OUTLINED_FUNCTION_6(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v42 = v41 - v40;
  v67 = *(v4 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_timerLock);
  os_unfair_lock_lock(v67 + 4);
  sub_1D98A2D40();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D98A2D84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F0, &qword_1D9931DC8);
  sub_1D98A2DDC();
  sub_1D992BC44();
  v43 = *(v4 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_queue);
  v44 = sub_1D992BA74();
  (*(v37 + 8))(v42, v34);
  ObjectType = swift_getObjectType();
  sub_1D992B554();
  v46 = v4;
  MEMORY[0x1DA739AC0](v30, v4 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_interval);
  v47 = *(v77 + 8);
  v77 += 8;
  v47(v30, v27);
  v48 = v62;
  sub_1D98A23D8(v62);
  v49 = v63;
  sub_1D98A244C(v63);
  v50 = v49;
  MEMORY[0x1DA73A070](v33, v48, v49, ObjectType);
  v51 = v65;
  v52 = *(v64 + 8);
  v52(v50, v65);
  v52(v48, v51);
  v47(v33, v61);
  v53 = *(v46 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer);
  *(v46 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer) = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v54 = swift_allocObject();
  v55 = v69;
  v54[2] = v68;
  v54[3] = v55;
  v57 = v70;
  v56 = v71;
  v54[4] = v70;
  v54[5] = v56;
  aBlock[4] = sub_1D98A2E40;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98F9B34;
  aBlock[3] = &block_descriptor_21_0;
  v58 = _Block_copy(aBlock);

  sub_1D988C370(v57);
  v59 = v66;
  sub_1D98BFA14();
  v60 = v72;
  sub_1D98BFA18();
  sub_1D992BA94();
  _Block_release(v58);
  (*(v75 + 8))(v60, v76);
  (*(v73 + 8))(v59, v74);

  sub_1D992BAB4();
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  sub_1D986A454(0xD000000000000018, 0x80000001D9939050, 0xD00000000000006ELL, 0x80000001D9938E70, 0xD000000000000026, 0x80000001D9939070);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v67 + 4);
}

uint64_t sub_1D98A23D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1D992B504();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D98A244C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1D992B504();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1D98A24C4()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_creation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_creation + 8);

    sub_1D98A1DDC(v1, v2, 0, 0);

    sub_1D98750DC(v1);
  }
}

void sub_1D98A258C()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_timerLock);
  os_unfair_lock_lock(v1 + 4);
  if (*(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer))
  {
    *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer) = 0;
    swift_getObjectType();
    sub_1D992BAA4();
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    sub_1D986A454(0xD00000000000001ALL, 0x80000001D9938E50, 0xD00000000000006ELL, 0x80000001D9938E70, 0xD000000000000018, 0x80000001D9938EE0);
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v1 + 4);
}

void sub_1D98A26C0(uint64_t a1, uint64_t a2)
{
  sub_1D98A258C();
  v5 = *(v2 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration);
  v6 = *(v2 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration + 8);

  sub_1D98A1DDC(v5, v6, a1, a2);
}

uint64_t sub_1D98A27D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_2_16(0xD00000000000001ALL, "destroyInactivityTimer()");
  sub_1D98A258C();
  OUTLINED_FUNCTION_2_16(0xD000000000000022, "estroyed(completion:)");
  v6 = *(v2 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration + 8);
  return (*(v3 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration))(a1, a2);
}

id ClockInactivityScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClockInactivityScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockInactivityScheduler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98A2B24()
{
  result = sub_1D992B504();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D98A2D40()
{
  result = qword_1ED8BF3F0;
  if (!qword_1ED8BF3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BF3F0);
  }

  return result;
}

unint64_t sub_1D98A2D84()
{
  result = qword_1ED8BD658;
  if (!qword_1ED8BD658)
  {
    sub_1D992BA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD658);
  }

  return result;
}

unint64_t sub_1D98A2DDC()
{
  result = qword_1ED8BD678;
  if (!qword_1ED8BD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB488F0, &qword_1D9931DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD678);
  }

  return result;
}

uint64_t sub_1D98A2E80(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C0, &qword_1D9930160);
  v8 = OUTLINED_FUNCTION_5(v28);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v32 = a1;
  v13 = a4 + 64;
  v14 = 1 << *(a4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a4 + 64);
  v17 = (v14 + 63) >> 6;
  v30 = a4;

  v19 = 0;
  while (v16)
  {
    v31 = v5;
    v20 = v19;
LABEL_10:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v20 << 6);
    v23 = v30;
    v24 = *(v30 + 48);
    v25 = type metadata accessor for PreprocessorCounterKey(0);
    OUTLINED_FUNCTION_9(v25);
    sub_1D98AB648(v24 + *(v26 + 72) * v22, v12, type metadata accessor for PreprocessorCounterKey);
    *&v12[*(v28 + 48)] = *(*(v23 + 56) + 8 * v22);
    v27 = v31;
    v29(&v32, v12);
    v5 = v27;
    result = sub_1D986B804(v12, &qword_1ECB484C0, &qword_1D9930160);
    if (v27)
    {
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return v32;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v31 = v5;
      v19 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98A3064(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_defaultActor_initialize();
  *(v10 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  OUTLINED_FUNCTION_0_0();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a1;
  *(v10 + 112) = v18;
  *(v10 + 120) = a1;
  *(v10 + 128) = a2;
  *(v10 + 136) = a4;
  *(v10 + 144) = a3;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 184) = a9;
  *(v10 + 192) = a10;
  v19 = a3;
  v20 = a1;
  return v10;
}

uint64_t sub_1D98A3120()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_20();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98A31A4()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[3];
  if (*(v1 + 200))
  {
    v2 = *(v1 + 200);
  }

  else
  {
    v2 = v0[4];
    v3 = v0[2];
    sub_1D992B874();
    v4 = OUTLINED_FUNCTION_79();
    __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
    v7 = sub_1D98AB364();
    OUTLINED_FUNCTION_128();
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = v7;
    v8[4] = v1;
    v8[5] = v3;
    swift_retain_n();
    sub_1D98BFAD0(0, 0, v2, &unk_1D9931EC8, v8);
    OUTLINED_FUNCTION_13_0();
    v9 = *(v1 + 200);
  }

  v0[5] = v2;
  *(v1 + 200) = v2;

  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  v0[6] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  *v11 = v0;
  v11[1] = sub_1D98A3328;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, v2, v14, v12, v13);
}

uint64_t sub_1D98A3328()
{
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *(v2 + 48);
  *v4 = *v1;
  *(v3 + 56) = v0;

  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98A3448()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_16_0();

  return v3();
}

uint64_t sub_1D98A34A8()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_25();
  v4 = v0[7];

  return v3();
}

uint64_t sub_1D98A350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D98A35AC;

  return sub_1D98A3738();
}

uint64_t sub_1D98A35AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    OUTLINED_FUNCTION_141();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1D98A36D8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v1 + 200);
  *(v1 + 200) = 0;

  OUTLINED_FUNCTION_16_0();

  return v3();
}

uint64_t sub_1D98A3738()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v1[36] = OUTLINED_FUNCTION_163();
  v1[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  v1[38] = v6;
  OUTLINED_FUNCTION_23(v6);
  v1[39] = v7;
  v1[40] = *(v8 + 64);
  v1[41] = OUTLINED_FUNCTION_163();
  v1[42] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483E8, &qword_1D992FB30);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  v1[43] = OUTLINED_FUNCTION_20();
  v12 = type metadata accessor for MonotonicTimestamp();
  v1[44] = v12;
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  v1[45] = OUTLINED_FUNCTION_163();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v15 = sub_1D992B2C4();
  v1[48] = v15;
  OUTLINED_FUNCTION_23(v15);
  v1[49] = v16;
  v18 = *(v17 + 64);
  v1[50] = OUTLINED_FUNCTION_20();
  v19 = type metadata accessor for PreprocessorTelemetry(0);
  v1[51] = v19;
  OUTLINED_FUNCTION_9(v19);
  v21 = *(v20 + 64);
  v1[52] = OUTLINED_FUNCTION_163();
  v1[53] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1D98A3918()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[53];
  v2 = v0[51];
  v4 = v0[34];
  v3 = v0[35];
  v5 = swift_allocBox();
  v7 = v6;
  v0[54] = v5;
  v0[55] = v6;

  sub_1D992AE74();
  *(v7 + v2[5]) = v4;
  sub_1D98DC10C((v7 + v2[6]));
  v8 = (v7 + v2[7]);
  *v8 = &unk_1D9931E88;
  v8[1] = v3;
  v9 = MEMORY[0x1E69E7CC8];
  *(v7 + v2[8]) = MEMORY[0x1E69E7CC8];
  *(v7 + v2[9]) = v9;
  *(v7 + v2[10]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v7, v1, v10);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *v11 = v0;
  v11[1] = sub_1D98A3A48;
  v12 = v0[53];

  return sub_1D990CAE8();
}

uint64_t sub_1D98A3A48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[56];
  v3 = v1[53];
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98A3B60()
{
  v1 = sub_1D992AE84();
  v0[57] = v1;
  OUTLINED_FUNCTION_6(v1);
  v3 = v2;
  v0[58] = v2;
  v0[59] = *(v4 + 64);
  v5 = swift_task_alloc();
  v0[60] = v5;
  if (qword_1ECB47FB0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1ECB496F0);
  v0[61] = v6;
  v7 = *(v3 + 16);
  v0[62] = v7;
  v0[63] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v5, v6, v1);
  sub_1D992BAD4();
  if (qword_1ED8BD720 != -1)
  {
    swift_once();
  }

  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[48];
  v0[64] = qword_1ED8BFB30;
  sub_1D992B2B4();
  sub_1D992B2A4();
  v11 = *(v9 + 8);
  v0[65] = v11;
  v0[66] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v10);
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v12 = v0[55];
  v13 = v0[34];
  v14 = v0[35];
  v0[67] = qword_1ECB49658;
  sub_1D992BD64();

  v15 = sub_1D990E940(v13);
  MEMORY[0x1DA739C30](v15);

  MEMORY[0x1DA739C30](0x6974756365786520, 0xED00003A64496E6FLL);
  v16 = swift_task_alloc();
  v7(v16, v12, v1);
  v0[68] = sub_1D9882D14(&qword_1ED8BD8D0);
  v17 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v17);

  v0[69] = *(v3 + 8);
  v0[70] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = OUTLINED_FUNCTION_113();
  v19(v18);

  OUTLINED_FUNCTION_36_2();
  sub_1D98DCECC(v20, v21, v22, v23, v24, v25);

  v26 = *(v14 + 152);
  v27 = swift_task_alloc();
  v0[71] = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_5_8(v27);

  return sub_1D9867CE8();
}

uint64_t sub_1D98A3F10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 568);
  v5 = *(v3 + 280);
  v6 = *v0;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v9 + 576) = v8;

  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D98A400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_143();
  v17 = v16[72];
  if (v17)
  {
    v18 = v16[35];
    if (*(v18 + 160) == 1)
    {
      v19 = v16[67];
      v20 = v16[55];
      OUTLINED_FUNCTION_36_2();
      sub_1D986A454(v21, v22, v23, v24, v25, v26);
      sub_1D98811F8(0);
      v27 = *(v18 + 128);
      v28 = type metadata accessor for ExternalDataIngestion();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();

      v31 = OUTLINED_FUNCTION_50();
      v16[73] = sub_1D98FA908(v31, v32);
      v33 = swift_task_alloc();
      v16[74] = v33;
      *v33 = v16;
      OUTLINED_FUNCTION_5_8(v33);
      OUTLINED_FUNCTION_24();

      return sub_1D98FAAF8();
    }

    else
    {
      v54 = v16[67];
      OUTLINED_FUNCTION_36_2();
      sub_1D986A454(v55, v56, v57, v58, v59, v60);
      if (qword_1ED8BF440 != -1)
      {
        OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_138();
      if (v61)
      {
        v62 = v16[57];
        OUTLINED_FUNCTION_161(&qword_1ED8BF060);
        OUTLINED_FUNCTION_50();
        v17 = sub_1D992B5B4();
        sub_1D98AB584();
        v18 = MEMORY[0x1E6969088];
        sub_1D992B5B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
        sub_1D98AB5CC();
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_44();
      }

      else
      {
        OUTLINED_FUNCTION_119();
      }

      v63 = v16[35];
      OUTLINED_FUNCTION_80();
      v64 = swift_allocObject();
      OUTLINED_FUNCTION_85(v64);
      OUTLINED_FUNCTION_128();
      swift_allocObject();
      v65 = MetadataExtractor.init(metastore:)(v17);
      v16[80] = v65;
      OUTLINED_FUNCTION_80();
      swift_allocObject();
      if (*(v18 + 16))
      {
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_101();

        sub_1D98BDBDC();
        OUTLINED_FUNCTION_127(v66);
        if (v67)
        {
          OUTLINED_FUNCTION_78();
          sub_1D98BDBDC();
          v17 = v75;
        }

        OUTLINED_FUNCTION_47();
      }

      else
      {
        OUTLINED_FUNCTION_80();
        swift_deallocUninitializedObject();
        v68 = v17;
        v17 = MEMORY[0x1E69E7CC0];
      }

      v69 = v16[54];
      OUTLINED_FUNCTION_0_0();
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = v65;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = v17[2];
        OUTLINED_FUNCTION_78();
        sub_1D98BDBDC();
        v17 = v74;
      }

      if (v17[2] >= v17[3] >> 1)
      {
        OUTLINED_FUNCTION_78();
        sub_1D98BDBDC();
      }

      OUTLINED_FUNCTION_34_2();
      sub_1D98811F8(1);
      swift_endAccess();
      v71 = swift_task_alloc();
      v16[82] = v71;
      *v71 = v16;
      OUTLINED_FUNCTION_32_3(v71);
      OUTLINED_FUNCTION_24();

      return sub_1D98AACF4();
    }
  }

  else
  {
    v36 = v16[67];
    OUTLINED_FUNCTION_36_2();
    sub_1D986A454(v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_5_10();
    v76 = v44;
    v77 = v43;
    v78 = v16[37];
    v79 = v16[36];
    v45(v36);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_24();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v76, v77, v78, v79, a14, a15, a16);
  }
}

uint64_t sub_1D98A44D4()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *(v4 + 592);
  *v6 = *v1;
  *(v5 + 600) = v0;

  v8 = *(v4 + 280);
  if (!v0)
  {
    *(v5 + 608) = v3;
  }

  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D98A4600()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[55];
  v2 = v0[53];
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v3, v4, v5);
  v6 = swift_task_alloc();
  v0[77] = v6;
  *v6 = v0;
  v6[1] = sub_1D98A46A0;
  v7 = v0[53];
  v8 = OUTLINED_FUNCTION_93(v0[76]);

  return sub_1D990CD88(v8);
}

uint64_t sub_1D98A46A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v2 = v1[77];
  v3 = v1[76];
  v4 = v1[53];
  v5 = v1[35];
  v6 = *v0;
  OUTLINED_FUNCTION_17();
  *v7 = v6;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();

  return MEMORY[0x1EEE6DFA0](sub_1D98A47E4, v5, 0);
}

uint64_t sub_1D98A47E4()
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_134();
  v3 = v1[73];

  if (qword_1ED8BF440 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  OUTLINED_FUNCTION_138();
  if (v4)
  {
    v5 = v1[57];
    OUTLINED_FUNCTION_161(&qword_1ED8BF060);
    OUTLINED_FUNCTION_50();
    v0 = sub_1D992B5B4();
    sub_1D98AB584();
    v2 = MEMORY[0x1E6969088];
    sub_1D992B5B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
    sub_1D98AB5CC();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_44();
  }

  else
  {
    OUTLINED_FUNCTION_119();
  }

  v6 = v1[35];
  OUTLINED_FUNCTION_80();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_85(v7);
  OUTLINED_FUNCTION_128();
  swift_allocObject();
  v8 = MetadataExtractor.init(metastore:)(v0);
  v1[80] = v8;
  OUTLINED_FUNCTION_80();
  swift_allocObject();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_101();

    sub_1D98BDBDC();
    OUTLINED_FUNCTION_127(v9);
    if (v10)
    {
      OUTLINED_FUNCTION_78();
      sub_1D98BDBDC();
      v0 = v19;
    }

    OUTLINED_FUNCTION_47();
  }

  else
  {
    OUTLINED_FUNCTION_80();
    swift_deallocUninitializedObject();
    v11 = v0;
    v0 = MEMORY[0x1E69E7CC0];
  }

  v12 = v1[54];
  OUTLINED_FUNCTION_0_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v8;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = v0[2];
    OUTLINED_FUNCTION_78();
    sub_1D98BDBDC();
    v0 = v18;
  }

  if (v0[2] >= v0[3] >> 1)
  {
    OUTLINED_FUNCTION_78();
    sub_1D98BDBDC();
  }

  OUTLINED_FUNCTION_34_2();
  sub_1D98811F8(1);
  swift_endAccess();
  v14 = swift_task_alloc();
  v1[82] = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_32_3(v14);
  OUTLINED_FUNCTION_106();

  return sub_1D98AACF4();
}

uint64_t sub_1D98A4A60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 656);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  v3[83] = v0;

  if (v0)
  {
    v9 = v3[81];
    v10 = v3[35];

    v11 = sub_1D98A88B0;
    v12 = v10;
  }

  else
  {
    v12 = v3[35];
    v11 = sub_1D98A4B74;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1D98A4B74()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 280) + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  sub_1D98AB1B0();
  v3 = sub_1D992B814();

  return MEMORY[0x1EEE6DFA0](sub_1D98A4C08, v3, v2);
}

uint64_t sub_1D98A4C08()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 640);
  v2 = *(v0 + 280);
  sub_1D98E8F24(1);
  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98A4C6C()
{
  v162 = v0;
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 472) + 15;
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v5, v3, v6);
  sub_1D98814A4();
  v8 = v7;
  *(v0 + 672) = v7;
  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  *(v0 + 680) = swift_task_alloc();
  v9 = *(v8 + 16);
  *(v0 + 688) = v9;
  if (v9)
  {
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);
    *(v0 + 1080) = *(v11 + 80);
    OUTLINED_FUNCTION_130(v11);
    *(v0 + 696) = v12;
    v13 = *(v0 + 664);
    *(v0 + 712) = 0;
    *(v0 + 704) = v13;
    v14 = *(v0 + 672);
    v15 = *(v0 + 504);
    v16 = *(v0 + 440);
    v17 = *(v0 + 416);
    (*(v0 + 496))();
    OUTLINED_FUNCTION_0_25();
    v18 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v18, v19, v20);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_53();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  else
  {

    v25 = *(v0 + 664);
    OUTLINED_FUNCTION_144();
    *(v0 + 752) = sub_1D992B104();
    OUTLINED_FUNCTION_161(&qword_1ED8BF060);
    sub_1D992B5B4();
    if (v4 == 1)
    {
      v26 = *(v0 + 640);

      sub_1D98E9E5C();
    }

    OUTLINED_FUNCTION_82();
    v27 = *(v0 + 352);
    v28 = *(v0 + 280);
    v29 = mach_absolute_time();
    v161[0] = 0;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v29, v161);
    *(v0 + 768) = *(v1 + *(v27 + 20));
    OUTLINED_FUNCTION_3_10();
    sub_1D98AB6A4();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_123(v30);

    v31 = v28;
    v32 = OUTLINED_FUNCTION_72();
    sub_1D98E4DC0(v32, v33, v34, v35);
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_36_2();
    sub_1D98DCECC(v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_97();
    sub_1D98811F8(2);
    swift_endAccess();
    v42 = *(v157 + 16);
    *(v0 + 792) = sub_1D992B394();
    if (v159)
    {
      OUTLINED_FUNCTION_105();

      sub_1D98A8BC4("Begin processing reason:");

      OUTLINED_FUNCTION_11_4();
      v44 = *(v0 + 424);
      v43 = *(v0 + 432);
      OUTLINED_FUNCTION_25_1();
      v45 = OUTLINED_FUNCTION_84();
      v46(v45);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v49 = sub_1D992B4B4();
    OUTLINED_FUNCTION_74(v49);
    v50 = OUTLINED_FUNCTION_79();
    if (__swift_getEnumTagSinglePayload(v50, v51, 0) == 1)
    {
      OUTLINED_FUNCTION_89();
      sub_1D98F63BC();
      OUTLINED_FUNCTION_88();
      sub_1D98811F8(4);
      swift_endAccess();
      OUTLINED_FUNCTION_0_25();
      v52 = OUTLINED_FUNCTION_49();
      sub_1D98AB648(v52, v53, v54);
      v55 = swift_task_alloc();
      *(v0 + 856) = v55;
      *v55 = v0;
      OUTLINED_FUNCTION_10_6(v55);
      OUTLINED_FUNCTION_53();

      return sub_1D990D23C();
    }

    else
    {
      v57 = *(v0 + 312);
      v59 = *(v57 + 32);
      v58 = v57 + 32;
      v59(*(v0 + 336), *(v0 + 344), *(v0 + 304));
      v60 = *(v0 + 456);
      v61 = mach_absolute_time();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v62);
      v64 = *(v63 + 64) + 15;
      v65 = swift_task_alloc();
      v66 = OUTLINED_FUNCTION_147(v65);
      if (qword_1ECB47DD0 != -1)
      {
        v66 = OUTLINED_FUNCTION_63();
      }

      v67 = v61 == -1 || qword_1ECB47DC8 == HIDWORD(qword_1ECB47DC8);
      if (v67 || !is_mul_ok(v61, qword_1ECB47DC8) || HIDWORD(qword_1ECB47DC8))
      {
        v68 = OUTLINED_FUNCTION_103();
        v69 = OUTLINED_FUNCTION_92();
        sub_1D9866D34(v69, v70, &qword_1ECB481D0, &qword_1D992F9F0);
        swift_task_alloc();
        v71 = swift_task_alloc();
        OUTLINED_FUNCTION_95();
        sub_1D9866D34(v72, v73, v74, &qword_1D992F9F0);
        OUTLINED_FUNCTION_55();
        if (v67)
        {
          v75 = OUTLINED_FUNCTION_116();
          v76(v75);
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          OUTLINED_FUNCTION_55();
          if (!v67)
          {
            sub_1D986B804(v71, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          v77 = *(v0 + 456);
          v78 = *(v0 + 464);
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          v79 = *(v78 + 32);
          v80 = OUTLINED_FUNCTION_33();
          v81(v80);
        }

        OUTLINED_FUNCTION_151();
        v82 = OUTLINED_FUNCTION_135();
        v83(v82);

        OUTLINED_FUNCTION_37_1(v84, v85, v86, v87, v88, v89, v90, v91, v130, v133, v136, v139, v142, v146, v149, v152, v155, v58, 0);

        v92 = *(&qword_1ECB481D0 + *(v58 + 20));
        OUTLINED_FUNCTION_3_10();
        sub_1D98AB6A4();
        v93 = OUTLINED_FUNCTION_39_1();
        v94 = OUTLINED_FUNCTION_18_2();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
        v97 = *(v68 + 16);
        v98 = OUTLINED_FUNCTION_113();
        v99(v98);
        sub_1D98AB364();
        OUTLINED_FUNCTION_41_1();
        v100 = swift_allocObject();
        v108 = OUTLINED_FUNCTION_77(v100, v101, v102, v103, v104, v105, v106, v107, v131, v134, v137, v140, v143, v147, v150, v153, v156, v158, v160);
        v110 = v109(v108);
        v118 = OUTLINED_FUNCTION_83(v110, v111, v112, v113, v114, v115, v116, v117, v132, v135, v138, v141, v144, v148, v151, v154);
        sub_1D9866D34(v118, v145, &qword_1ECB48BB0, &qword_1D9930970);
        __swift_getEnumTagSinglePayload(v145, 1, v93);
        OUTLINED_FUNCTION_122();

        v119 = *(v0 + 288);
        if (v93 == 1)
        {
          sub_1D986B804(*(v0 + 288), &qword_1ECB48BB0, &qword_1D9930970);
        }

        else
        {
          sub_1D992B864();
          OUTLINED_FUNCTION_112();
          (*(v120 + 8))(v119);
        }

        v122 = *(v58 + 16);
        v121 = *(v58 + 24);
        swift_unknownObjectRetain();

        if (v122)
        {
          swift_getObjectType();
          sub_1D992B814();
          OUTLINED_FUNCTION_115();
          swift_unknownObjectRelease();
        }

        sub_1D986B804(*(v0 + 296), &qword_1ECB48BB0, &qword_1D9930970);
        OUTLINED_FUNCTION_0_0();
        v123 = swift_allocObject();
        OUTLINED_FUNCTION_12_5(v123);
        if (v124)
        {
          OUTLINED_FUNCTION_98();
        }

        *(v0 + 840) = OUTLINED_FUNCTION_15_3();
        v125 = *(MEMORY[0x1E69E86B0] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v0 + 848) = v126;
        *v126 = v127;
        OUTLINED_FUNCTION_13_2(v126);
        OUTLINED_FUNCTION_64();
        OUTLINED_FUNCTION_53();
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DA20](v66);
    }
  }
}