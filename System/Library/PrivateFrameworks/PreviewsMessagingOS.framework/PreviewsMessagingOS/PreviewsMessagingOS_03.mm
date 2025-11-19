uint64_t sub_25F41A31C()
{
  sub_25F4A2170();
  sub_25F4A2140();
  sub_25F4A21C0();
  sub_25F4A2190();
  sub_25F4A21B0();
  sub_25F4A2180();
  sub_25F4A2150();
  sub_25F4A21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F41AC08();
  sub_25F41A91C();
  v0 = sub_25F4A2870();

  return v0;
}

uint64_t sub_25F41A5A4(uint64_t a1)
{
  v9 = &type metadata for ProcessIdentifier.Key;
  v3 = sub_25F41A788();
  v10 = v3;
  LOBYTE(v8[0]) = 0;
  sub_25F41A7DC();
  sub_25F4A2530();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v9 = &type metadata for ProcessIdentifier.Key;
    v10 = v3;
    LOBYTE(v8[0]) = 1;
    sub_25F4A2530();
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v7)
    {
      return v7;
    }

    else
    {
      return v7;
    }
  }
}

_BYTE *sub_25F41A778(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 32);
  *result = 0;
  *a2 = v3;
  return result;
}

unint64_t sub_25F41A788()
{
  result = qword_27FD6E270;
  if (!qword_27FD6E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E270);
  }

  return result;
}

unint64_t sub_25F41A7DC()
{
  result = qword_27FD6E278;
  if (!qword_27FD6E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E278);
  }

  return result;
}

unint64_t sub_25F41A830()
{
  result = qword_27FD6E290;
  if (!qword_27FD6E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E290);
  }

  return result;
}

unint64_t sub_25F41A884()
{
  result = qword_27FD6E2A8;
  if (!qword_27FD6E2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E2A0, &unk_25F4A7FA0);
    sub_25F41A91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2A8);
  }

  return result;
}

unint64_t sub_25F41A91C()
{
  result = qword_27FD6D630;
  if (!qword_27FD6D630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D5D8, &unk_25F4AB530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D630);
  }

  return result;
}

unint64_t sub_25F41A998()
{
  result = qword_27FD6E2C0;
  if (!qword_27FD6E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E2B8, &qword_25F4A7FB0);
    sub_25F41AB00(&qword_27FD6E2C8, MEMORY[0x277D403E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2C0);
  }

  return result;
}

unint64_t sub_25F41AA4C()
{
  result = qword_27FD6E2D8;
  if (!qword_27FD6E2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E2D0, &qword_25F4A7FB8);
    sub_25F41AB00(&qword_27FD6E2E0, MEMORY[0x277D403E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2D8);
  }

  return result;
}

uint64_t sub_25F41AB00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F41AB50()
{
  result = qword_27FD6E2E8;
  if (!qword_27FD6E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2E8);
  }

  return result;
}

unint64_t sub_25F41ABAC()
{
  result = qword_27FD6E2F0;
  if (!qword_27FD6E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2F0);
  }

  return result;
}

unint64_t sub_25F41AC08()
{
  result = qword_27FD6E2F8;
  if (!qword_27FD6E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2F8);
  }

  return result;
}

unint64_t sub_25F41AC68()
{
  result = qword_27FD6E300;
  if (!qword_27FD6E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E300);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS22CrashListenerInterfaceO13TwoWayMessageO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F41ACEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F41AD34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

void *sub_25F41AD7C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_25F41ADB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F41ADFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F41AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A23A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F41AEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A23A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NextCrashResponse()
{
  result = qword_27FD6E308;
  if (!qword_27FD6E308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F41AFA0()
{
  result = sub_25F4A23A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t _s3KeyOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s3KeyOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s3KeyOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KeyOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s3KeyOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KeyOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F41B52C()
{
  result = qword_27FD6E318;
  if (!qword_27FD6E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E318);
  }

  return result;
}

unint64_t sub_25F41B584()
{
  result = qword_27FD6E320;
  if (!qword_27FD6E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E320);
  }

  return result;
}

unint64_t sub_25F41B5DC()
{
  result = qword_27FD6E328;
  if (!qword_27FD6E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E328);
  }

  return result;
}

unint64_t sub_25F41B634()
{
  result = qword_27FD6E330;
  if (!qword_27FD6E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E330);
  }

  return result;
}

unint64_t sub_25F41B68C()
{
  result = qword_27FD6E338;
  if (!qword_27FD6E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E338);
  }

  return result;
}

unint64_t sub_25F41B6E4()
{
  result = qword_27FD6E340;
  if (!qword_27FD6E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E340);
  }

  return result;
}

unint64_t sub_25F41B73C()
{
  result = qword_27FD6E348;
  if (!qword_27FD6E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E348);
  }

  return result;
}

unint64_t sub_25F41B794()
{
  result = qword_27FD6E350;
  if (!qword_27FD6E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E350);
  }

  return result;
}

unint64_t sub_25F41B7EC()
{
  result = qword_27FD6E358;
  if (!qword_27FD6E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E358);
  }

  return result;
}

unint64_t sub_25F41B844()
{
  result = qword_27FD6E360;
  if (!qword_27FD6E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E360);
  }

  return result;
}

unint64_t sub_25F41B898()
{
  result = qword_27FD6E368;
  if (!qword_27FD6E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E368);
  }

  return result;
}

unint64_t sub_25F41B8EC()
{
  result = qword_27FD6E370;
  if (!qword_27FD6E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E370);
  }

  return result;
}

uint64_t sub_25F41B940()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F41B98C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F41B9D8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F41BA24()
{
  v0 = sub_25F4A3170();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F41BA70(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_25F4A23A0();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v4, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_25F41BB40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_25F415CBC();
}

uint64_t TransportReply.send(error:file:line:column:function:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[4] = a8;
  v20[2] = a6;
  v20[3] = a7;
  v20[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v20 - v11);
  v13 = sub_25F4A2A70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v12, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t TransportReply.init(callsite:fulfilling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a1;
  v36 = a3;
  v5 = sub_25F4A2910();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_25F4A2A70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v19 = *(v18 - 8);
  v34 = v18;
  v35 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  (*(v14 + 16))(v17, a1, v13);
  v23 = *(v9 + 16);
  v30 = v8;
  v23(v12, a2, v8);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList();
  v26 = v34;
  sub_25F4A2480();
  (*(v9 + 8))(v31, v30);
  v27 = *(v14 + 8);
  v27(v32, v13);
  v27(v17, v13);
  return (*(v35 + 8))(v22, v26);
}

uint64_t TransportReply.init<A>(callsite:fulfilling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v35 = a5;
  v36 = a2;
  v31 = a1;
  v7 = sub_25F4A2910();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v29 = sub_25F4A2F80();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = v28 - v12;
  v14 = sub_25F4A2A70();
  v30 = v14;
  v32 = *(v14 - 8);
  v15 = v32;
  v16 = *(v32 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F4A24A0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v28 - v21;
  (*(v15 + 16))(v18, a1, v14);
  v23 = v29;
  (*(v10 + 16))(v13, v36, v29);
  v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = a3;
  *(v25 + 24) = v26;
  (*(v10 + 32))(v25 + v24, v13, v23);
  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v22, a3, v26);
  (*(v10 + 8))(v36, v23);
  return (*(v32 + 8))(v31, v30);
}

uint64_t TransportReply.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TransportReply.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TransportReply.send<A>(_:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v33 = a1;
  v31 = a7;
  v32 = a8;
  v27 = a5;
  v28 = a6;
  v29 = a11;
  v30 = a10;
  v26[2] = a9;
  v26[3] = a4;
  v11 = sub_25F4A25E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v26 - v18;
  v20 = sub_25F4A2A70();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  sub_25F4A2940();
  (*(v12 + 32))(v19, v15, v11);
  type metadata accessor for LazyPropertyList();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v19, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v21 + 8))(v24, v20);
}

uint64_t TransportReply.send<A>(result:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[1] = a7;
  v22[2] = a8;
  v22[0] = a6;
  v22[3] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v22 - v13;
  v23 = sub_25F4A2A70();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v26 = a10;
  v27 = a11;
  KeyPath = swift_getKeyPath();
  v24 = a11;
  v25 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v20 = sub_25F4A3360();
  type metadata accessor for LazyPropertyList();
  sub_25F41CA98(sub_25F41F3FC, v20, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v14, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v15 + 8))(v18, v23);
}

uint64_t sub_25F41CA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F4A25E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for LazyPropertyList();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F41CA98@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_25F4A3360();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TransportReply.send(file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = a8;
  v18[0] = a6;
  v18[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = sub_25F4A2A70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
  type metadata accessor for LazyPropertyList();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v11, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t TransportReply.send(result:file:line:column:function:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v20[1] = a6;
  v20[2] = a7;
  v21 = a2;
  v20[0] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v20 - v10);
  v12 = sub_25F4A2A70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  if (v21)
  {
    v17 = v20[0];
    *v11 = v20[0];
    swift_storeEnumTagMultiPayload();
    v18 = v17;
  }

  else
  {
    _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
    type metadata accessor for LazyPropertyList();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v11, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t TransportReply.track<A, B>(task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v20 = a5;
  v21 = sub_25F4A2A70();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v12 = sub_25F4A24A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_25F4A2A80();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v18 = v20;
  v17[4] = a4;
  v17[5] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2480();

  (*(v8 + 8))(v11, v21);
  sub_25F4A2400();
  return (*(v13 + 8))(v16, v12);
}

uint64_t TransportReply.track<A>(task:)()
{
  v0 = sub_25F4A2A70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2480();
  (*(v1 + 8))(v4, v0);
  sub_25F4A2400();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25F41D4E8()
{
  _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
  type metadata accessor for LazyPropertyList();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TransportReply.wrappingError(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A23D0();

  return (*(v5 + 8))(v8, v4);
}

uint64_t TransportReply.loggingResult(logger:level:for:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v23 = a3;
  v22 = a2;
  v7 = sub_25F4A2AE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_25F4A2A70();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F4A2A80();
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = v15 + v9;
  v17 = (v15 + v9) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v15, v10, v7);
  *(v18 + v16) = v22;
  v19 = v18 + v17;
  *(v19 + 8) = v23;
  *(v19 + 16) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  type metadata accessor for LazyPropertyList();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A23E0();

  return (*(v11 + 8))(v14, v24);
}

uint64_t sub_25F41D94C@<X0>(uint64_t a1@<X0>, os_log_type_t a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27 - v12);
  sub_25F404B8C(a1, &v27 - v12, &qword_27FD6DEB8, &unk_25F4A8D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;

    v15 = v14;
    v16 = sub_25F4A2AD0();
    v17 = sub_25F4A3010();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_25F41272C(a3, a4, &v28);
      *(v18 + 12) = 2114;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_25F3DE000, v16, v17, "Sending reply 'Failure' for %{public}s\nError: %{public}@", v18, 0x16u);
      sub_25F3F21F4(v19, &qword_27FD6DEC8, &qword_25F4AB2B0);
      MEMORY[0x25F8DE250](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x25F8DE250](v20, -1, -1);
      MEMORY[0x25F8DE250](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v23 = sub_25F4A2AD0();
    if (os_log_type_enabled(v23, a2))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_25F41272C(a3, a4, &v28);
      _os_log_impl(&dword_25F3DE000, v23, a2, "Sending reply 'Success' for %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x25F8DE250](v25, -1, -1);
      MEMORY[0x25F8DE250](v24, -1, -1);
    }

    sub_25F3F21F4(v13, &qword_27FD6DEB8, &unk_25F4A8D20);
  }

  return sub_25F404B8C(a1, a5, &qword_27FD6DEB8, &unk_25F4A8D20);
}

uint64_t TransportReply.init<A>(file:line:column:function:handler:)@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a6;
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21[1] = a1;
  v28 = a7;
  v27 = a8;
  v11 = sub_25F4A2910();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_25F4A2A70();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v15 = sub_25F4A24A0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v21 - v17;
  sub_25F4A2A80();
  v19 = swift_allocObject();
  v19[2] = a10;
  v19[3] = a11;
  v19[4] = v27;
  v19[5] = a9;

  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v18, a10, a11);
}

uint64_t TransportReply.init<A>(resuming:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A2A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v12 = sub_25F4A24A0();
  type metadata accessor for LazyPropertyList();
  sub_25F4A2490();

  (*(*(v12 - 8) + 8))(a1, v12);
  return (*(v7 + 8))(v10, v6);
}

uint64_t TransportReply.init(file:line:column:function:handler:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v21 = a4;
  v20[1] = a2;
  v20[2] = a3;
  v20[0] = a1;
  v24 = a5;
  v25 = a7;
  v22 = a6;
  v7 = sub_25F4A2910();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = sub_25F4A2A70();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  sub_25F4A2A80();
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 24) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList();
  sub_25F4A2480();

  (*(v9 + 8))(v12, v23);
  return (*(v14 + 8))(v17, v13);
}

uint64_t TransportReply.init(resuming:)(uint64_t a1)
{
  v2 = sub_25F4A2A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  type metadata accessor for LazyPropertyList();
  sub_25F4A2480();
  (*(*(v7 - 8) + 8))(a1, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t static TransportReply.ignored.getter()
{
  v0 = type metadata accessor for LazyPropertyList();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  v2 = MEMORY[0x277D84950];

  return MEMORY[0x2821A0560](v0, v1, v2);
}

uint64_t sub_25F41E538()
{
  v1 = sub_25F4A25E0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  result = LazyPropertyList.propertyList.getter(&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v0)
  {
    return sub_25F4A2950();
  }

  return result;
}

uint64_t sub_25F41E5EC()
{
  v1 = sub_25F4A25E0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  result = LazyPropertyList.propertyList.getter(&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v0)
  {
    return sub_25F4A2950();
  }

  return result;
}

uint64_t TransportReply.init<A>(file:line:column:function:resuming:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a8;
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v40 = a9;
  v30 = a10;
  v12 = sub_25F4A2910();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v15 = sub_25F4A2E80();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = sub_25F4A2A70();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_25F4A24A0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v29 - v24;
  sub_25F4A2A80();
  (*(v16 + 16))(v19, a10, v15);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a11;
  *(v27 + 24) = a12;
  (*(v16 + 32))(v27 + v26, v19, v15);
  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v25, a11, a12);
  return (*(v16 + 8))(v30, v15);
}

uint64_t sub_25F41E990(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v3 = sub_25F4A2E80();
  return sub_25F41E9F8(a2, v3);
}

uint64_t sub_25F41E9F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_25F4A3360();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_25F4A2E60();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_25F4A2E70();
  }
}

uint64_t TransportReply.init(file:line:column:function:resuming:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  v35 = a7;
  v33 = a5;
  v34 = a6;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v28 = a1;
  v39 = a8;
  v32 = a9;
  v9 = sub_25F4A2910();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A0, &qword_25F4A8DA8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = sub_25F4A2A70();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v20 = *(v36 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v36);
  v23 = &v28 - v22;
  sub_25F4A2A80();
  (*(v12 + 16))(v15, a9, v11);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v24, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList();
  v26 = v36;
  sub_25F4A2480();
  (*(v12 + 8))(v32, v11);
  (*(v37 + 8))(v19, v38);
  return (*(v20 + 8))(v23, v26);
}

uint64_t sub_25F41F00C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A0, &qword_25F4A8DA8);
    return sub_25F4A2E60();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A0, &qword_25F4A8DA8);
    return sub_25F4A2E70();
  }
}

uint64_t sub_25F41F088()
{
  v0 = sub_25F4A2A70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2F80();
  swift_getWitnessTable();
  sub_25F4A2660();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_25F41F1E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_25F4A2A80();
  v10 = v8;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  sub_25F421780();
  sub_25F4A2660();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F41F3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  return sub_25F4A2940();
}

__n128 sub_25F41F3E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F41F414()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_25F4A2940();
  type metadata accessor for LazyPropertyList();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F41F46C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F41F4A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F41F4D8()
{
  v1 = sub_25F4A2AE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_25F41F574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25F4A2AE0() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v2 + v6);

  return sub_25F41D94C(a1, v10, v8, v9, a2);
}

uint64_t sub_25F41F624()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F41F65C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a2);
}

uint64_t sub_25F41F698()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F41E5EC();
}

uint64_t sub_25F41F6B4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a2, *(a2 + 8));
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void, uint64_t, uint64_t, void))
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v5 = a1(0, v3, v4, MEMORY[0x277D84950]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v1 + v8, v5);

  return MEMORY[0x2821FE8E8](v1, v8 + v9, v7 | 7);
}

uint64_t sub_25F41F7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v11 = *(a3(0, v8, v10, MEMORY[0x277D84950]) - 8);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return a4(a1, a2, v12, v8, v9);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_25F41F974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t TransportReply.init<A>(file:line:column:function:fulfilling:)@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, uint64_t *a8, uint64_t a9)
{
  v26 = a6;
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21[3] = a1;
  v27 = a7;
  v9 = *a8;
  v10 = sub_25F4A2910();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_25F4A2A70();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *(v9 + *MEMORY[0x277D40568]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v15 = sub_25F4A24A0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v21 - v17;
  sub_25F4A2A80();
  v19 = swift_allocObject();
  *(v19 + 16) = a9;
  *(v19 + 24) = a8;

  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v18, v14, a9);
}

uint64_t (*TransportReply.makeEncodedReplyHandler(callsite:)(uint64_t a1))(void *a1, void *a2)
{
  v2 = v1;
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransportReply();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25F412F00(v2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_25F421668(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for TransportReply);
  (*(v5 + 32))(v13 + v12, v7, v4);
  return sub_25F4202B0;
}

uint64_t type metadata accessor for TransportReply()
{
  result = qword_27FD6E3B0;
  if (!qword_27FD6E3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F41FEAC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v38 - v18);
  if (a1)
  {
    v20 = a1;
    v21 = [v20 data];
    v22 = sub_25F4A2060();
    v24 = v23;

    *v19 = v22;
    v19[1] = v24;
    type metadata accessor for LazyPropertyList();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_25F4A2410();

    return sub_25F3F21F4(v19, &qword_27FD6DEB8, &unk_25F4A8D20);
  }

  if (!a2)
  {
    sub_25F42172C();
    *v19 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    sub_25F4A2410();
    return sub_25F3F21F4(v19, &qword_27FD6DEB8, &unk_25F4A8D20);
  }

  v39 = v9;
  v40 = a4;
  (*(v9 + 16))(v12, a3, v8);
  swift_getErrorValue();
  v26 = a2;
  sub_25F4A32B0();
  v27 = v42;
  v28 = v43;
  v29 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v38 = &v38;
  v30 = *(v27 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33);
  v34 = *(*(v28 + 8) + 8);
  v35 = sub_25F4A3230();
  if (v35)
  {
    v36 = v35;
    (*(v30 + 8))(v33, v27);
  }

  else
  {
    v36 = swift_allocError();
    (*(v30 + 32))(v37, v33, v27);
  }

  *v17 = v36;
  swift_storeEnumTagMultiPayload();
  sub_25F4A2410();

  sub_25F3F21F4(v17, &qword_27FD6DEB8, &unk_25F4A8D20);
  (*(v39 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_25F4202B0(void *a1, void *a2)
{
  v5 = *(type metadata accessor for TransportReply() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25F4A2A70() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_25F41FEAC(a1, a2, v2 + v6, v9);
}

uint64_t TransportReply.init(encodedReplyHandler:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A2910();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F4A2A70();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_25F4A2A80();
  *(swift_allocObject() + 16) = a3;
  (*(v7 + 104))(v10, *MEMORY[0x277D404C0], v6);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  type metadata accessor for LazyPropertyList();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  return sub_25F4A2440();
}

unint64_t sub_25F4205A4(void *a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LazyPropertyList();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = [a1 data];
  v19 = sub_25F4A2060();
  v21 = v20;

  *v10 = v19;
  v10[1] = v21;
  swift_storeEnumTagMultiPayload();
  LazyPropertyList.propertyList.getter(v17);
  sub_25F4216D0(v10);
  (*(v3 + 56))(v17, 0, 1, v2);
  sub_25F404B8C(v17, v15, &qword_27FD6DAA0, &qword_25F4A5550);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_25F3F21F4(v17, &qword_27FD6DAA0, &qword_25F4A5550);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    (*(v3 + 32))(v6, v15, v2);
    sub_25F40CA7C();
    v22 = sub_25F4A3210();
    v23 = v24;
    (*(v3 + 8))(v6, v2);
    sub_25F3F21F4(v17, &qword_27FD6DAA0, &qword_25F4A5550);
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_25F4A30F0();

  v29 = 0xD000000000000013;
  v30 = 0x800000025F4B78E0;
  if (v23)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xD000000000000010;
  }

  if (v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0x800000025F4B7900;
  }

  MEMORY[0x25F8DD480](v25, v26);

  return v29;
}

uint64_t sub_25F4208E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F420928(uint64_t a1, void (*a2)(id, void *))
{
  v4 = type metadata accessor for LazyPropertyList();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17[-1] - v10);
  sub_25F404B8C(a1, &v17[-1] - v10, &qword_27FD6DEB8, &unk_25F4A8D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    swift_getErrorValue();
    sub_25F4A32B0();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v13 = sub_25F4A27D0();
    a2(0, v13);

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_25F421668(v11, v7, type metadata accessor for LazyPropertyList);
    v15 = LazyPropertyList.encoded.getter();
    a2(v15, 0);

    return sub_25F4216D0(v7);
  }
}

uint64_t (*TransportReply.makeEagerReplyHandler(callsite:)(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransportReply();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25F412F00(v2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_25F421668(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for TransportReply);
  (*(v5 + 32))(v13 + v12, v7, v4);
  return sub_25F4210B4;
}

uint64_t sub_25F420CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a3;
  v18[1] = a2;
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3C8, &qword_25F4A8DF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v18 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v18 - v15);
  sub_25F404B8C(a1, v12, &qword_27FD6E3C8, &qword_25F4A8DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v16 = *v12;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    (*(v5 + 16))(v16, v8, v4);
    type metadata accessor for LazyPropertyList();
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v8, v4);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  return sub_25F3F21F4(v16, &qword_27FD6DEB8, &unk_25F4A8D20);
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(type metadata accessor for TransportReply() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25F4A2A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F4210B4(uint64_t a1)
{
  v3 = *(type metadata accessor for TransportReply() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25F4A2A70() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F420CE8(a1, v1 + v4, v7);
}

uint64_t TransportReply.init(eagerReplyHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a1;
  v16 = a2;
  v2 = sub_25F4A2910();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v15 = sub_25F4A2A70();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A8, &qword_25F4A8DB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - v11;
  sub_25F4A2A80();
  sub_25F4A25E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2440();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList();
  sub_25F4A2490();

  (*(v4 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25F421478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F421504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25F421580()
{
  sub_25F4215EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F4215EC()
{
  if (!qword_27FD6E3C0)
  {
    type metadata accessor for LazyPropertyList();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v0 = sub_25F4A24A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6E3C0);
    }
  }
}

uint64_t sub_25F421668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F4216D0(uint64_t a1)
{
  v2 = type metadata accessor for LazyPropertyList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F42172C()
{
  result = qword_27FD6E3D0;
  if (!qword_27FD6E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E3D0);
  }

  return result;
}

unint64_t sub_25F421780()
{
  result = qword_27FD6E3D8[0];
  if (!qword_27FD6E3D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DFA0, &qword_25F4A8D30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD6E3D8);
  }

  return result;
}

void sub_25F421808(uint64_t a1)
{
  v16 = MEMORY[0x277D83428] + 64;
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v17 = *(AssociatedTypeWitness - 8) + 64;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v5 = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      v18 = *(v5 - 8) + 64;
      sub_25F427AFC();
      if (v8 <= 0x3F)
      {
        v9 = *(v7 - 8);
        swift_getTupleTypeLayout2();
        v19 = &v15;
        swift_getTupleTypeLayout2();
        v20 = &v14;
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
        v10 = sub_25F4A2510();
        if (v11 <= 0x3F)
        {
          v12 = *(v10 - 8);
          swift_getTupleTypeLayout2();
          v21 = &v13;
          v22 = "\b";
          v23 = &unk_25F4A8EA0;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

char *sub_25F421A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v5 = *(v2 + 80);
  v4 = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v25 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  (*(v15 + 16))(&v25 - v13, v26);
  (*(v7 + 16))(v10, v27, AssociatedTypeWitness);
  v16 = *(v3 + 48);
  v17 = *(v3 + 52);
  swift_allocObject();
  v18 = sub_25F423740(v14, v10);
  type metadata accessor for Junction();
  WitnessTable = swift_getWitnessTable();

  v21 = sub_25F440E98(v20, WitnessTable, 0, 0, sub_25F4288AC, v18, sub_25F428838, v18);
  v22 = *(*v18 + 144);
  v23 = *&v18[v22];
  *&v18[v22] = v21;
  swift_retain_n();

  v28 = v18;

  swift_getWitnessTable();
  sub_25F4A28F0();

  return v18;
}

uint64_t sub_25F421D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v5[9] = *v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for AsyncMessageStream(0);
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v5[13] = *(v8 + 64);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E470, &qword_25F4A8F70);
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78);
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v5[21] = *(v13 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_25F4A2E40();
  v5[24] = v15;
  v5[25] = v14;

  return MEMORY[0x2822009F8](sub_25F422004, v15, v14);
}

uint64_t sub_25F422004()
{
  v1 = v0[23];
  v24 = v0[22];
  v35 = v0[21];
  v32 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v37 = v0[15];
  v25 = v0[14];
  v26 = v0[12];
  v6 = v0[9];
  v31 = v0[10];
  v7 = v0[7];
  v29 = v0[13];
  v30 = v0[8];
  v36 = v0[6];
  v33 = v0[4];
  v34 = v0[5];
  v8 = *(v3 + 48);
  type metadata accessor for AsyncMessageStream.Event(0);
  (*(v5 + 104))(v2, *MEMORY[0x277D85778], v4);
  sub_25F4A2EB0();
  (*(v5 + 8))(v2, v4);
  sub_25F404B8C(v1, v24, &qword_27FD6E478, &qword_25F4A8F78);
  v9 = *(v3 + 48);
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0x206567617373656DLL, 0xEF206D6165727473);
  v10 = *(*v7 + 104);
  v27 = *(v6 + 80);
  v28 = *(v6 + 88);
  swift_getAssociatedTypeWitness();
  sub_25F4A3240();
  sub_25F3E1EB4(v24 + v9, 0, 0xE000000000000000, v37);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  (*(*(v11 - 8) + 8))(v24, v11);
  v0[2] = v7;
  sub_25F429D04(v37, v25, type metadata accessor for AsyncMessageStream);
  v12 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v13 = swift_allocObject();
  sub_25F429D70(v25, v13 + v12, type metadata accessor for AsyncMessageStream);
  swift_getWitnessTable();
  sub_25F4A28F0();

  v14 = sub_25F4A2EA0();
  (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
  sub_25F404B8C(v1, v24, &qword_27FD6E478, &qword_25F4A8F78);
  v15 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v16 = swift_allocObject();
  v16[2] = v33;
  v16[3] = v34;
  v16[4] = v27;
  v16[5] = v28;
  v16[6] = v7;
  sub_25F428728(v24, v16 + v15, &qword_27FD6E478, &qword_25F4A8F78);
  v17 = (v16 + ((v35 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v33;
  v17[1] = v34;
  swift_unknownObjectRetain_n();

  sub_25F494FEC(0, 0, v31, &unk_25F4A9050, v16);

  v18 = swift_task_alloc();
  v0[26] = v18;
  v18[2] = v7;
  v18[3] = v36;
  v18[4] = v37;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  v0[27] = v20;
  *v20 = v0;
  v20[1] = sub_25F4224B4;
  v21 = v0[11];
  v22 = v0[3];

  return MEMORY[0x2822008A0](v22, v33, v34, 0xD000000000000020, 0x800000025F4B7B60, sub_25F42A0F0, v18, v21);
}

uint64_t sub_25F4224B4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 224) = v0;

  v6 = *(v2 + 200);
  v7 = *(v2 + 192);
  if (v0)
  {
    v8 = sub_25F4226EC;
  }

  else
  {
    v8 = sub_25F42260C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25F42260C()
{
  v1 = v0[22];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[10];
  sub_25F3F21F4(v0[23], &qword_27FD6E478, &qword_25F4A8F78);
  sub_25F42A0FC(v3, type metadata accessor for AsyncMessageStream);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F4226EC()
{
  v1 = v0[22];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[10];
  sub_25F3F21F4(v0[23], &qword_27FD6E478, &qword_25F4A8F78);
  sub_25F42A0FC(v3, type metadata accessor for AsyncMessageStream);

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_25F4227CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E470, &qword_25F4A8F70);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78);
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v5[13] = *(v12 + 64);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = *(v6 + 88);
  v5[17] = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v5[18] = sub_25F4A2510();
  sub_25F4A24F0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[19] = TupleTypeMetadata2;
  v14 = *(TupleTypeMetadata2 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  swift_getObjectType();
  v17 = sub_25F4A2E40();
  v5[22] = v17;
  v5[23] = v16;

  return MEMORY[0x2822009F8](sub_25F422A98, v17, v16);
}

uint64_t sub_25F422A98()
{
  v1 = v0[21];
  v2 = v0[19];
  (*(v0[20] + 16))(v1, v0[6] + *(*v0[6] + 136), v2);
  v3 = *(v1 + *(v2 + 48));

  v4 = *(MEMORY[0x277D40428] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_25F422B84;
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return MEMORY[0x2821A05F8](v10, v8, v9, v7);
}

uint64_t sub_25F422B84()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[22];
    v5 = v2[23];
    v6 = sub_25F423034;
  }

  else
  {
    (*(*(v2[18] - 8) + 8))(v2[21]);
    v4 = v2[22];
    v5 = v2[23];
    v6 = sub_25F422CC8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25F422CC8()
{
  v25 = v0[16];
  v26 = v0[17];
  v1 = v0[14];
  v2 = v0[15];
  v19 = v0[12];
  v20 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v23 = v0[21];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v24 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  v18 = v0[2];
  v8 = *(v3 + 48);
  type metadata accessor for AsyncMessageStream.Event(0);
  (*(v6 + 104))(v4, *MEMORY[0x277D85778], v5);
  sub_25F4A2EB0();
  (*(v6 + 8))(v4, v5);
  sub_25F404B8C(v2, v1, &qword_27FD6E478, &qword_25F4A8F78);
  v9 = *(v3 + 48);
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0x206567617373656DLL, 0xEF206D6165727473);
  v10 = *(*v7 + 104);
  swift_getAssociatedTypeWitness();
  sub_25F4A3240();
  sub_25F3E1EB4(v1 + v9, 0, 0xE000000000000000, v18);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  (*(*(v11 - 8) + 8))(v1, v11);
  v12 = sub_25F4A2EA0();
  (*(*(v12 - 8) + 56))(v24, 1, 1, v12);
  sub_25F404B8C(v2, v1, &qword_27FD6E478, &qword_25F4A8F78);
  v13 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v14 = swift_allocObject();
  v14[2] = v21;
  v14[3] = v22;
  v14[4] = v26;
  v14[5] = v25;
  v14[6] = v7;
  sub_25F428728(v1, v14 + v13, &qword_27FD6E478, &qword_25F4A8F78);
  v15 = (v14 + ((v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v21;
  v15[1] = v22;
  swift_unknownObjectRetain_n();

  sub_25F494FEC(0, 0, v24, &unk_25F4A8F98, v14);

  sub_25F3F21F4(v2, &qword_27FD6E478, &qword_25F4A8F78);

  v16 = v0[1];

  return v16();
}

uint64_t sub_25F423034()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[7];
  (*(*(v0[18] - 8) + 8))(v0[21]);

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

char *sub_25F423108(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_25F423740(a1, a2);
}

uint64_t sub_25F423154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  swift_getObjectType();
  swift_getWitnessTable();
  v7 = *(a2 + 8);
  return sub_25F4A2900();
}

uint64_t sub_25F423228(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 88);
  v5 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v35 = sub_25F4A2510();
  v34 = sub_25F4A24F0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  v33 = TupleTypeMetadata2;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = &v28 - v8;
  v9 = sub_25F4A2A70();
  v29 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v3 + 144);
  v20 = *(a2 + v19);
  *(a2 + v19) = 0;

  sub_25F404B8C(a2 + *(*a2 + 120), v18, &qword_27FD6E468, &qword_25F4A8F58);
  v37 = *&v18[*(v15 + 56)];
  sub_25F4A2A80();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
  sub_25F428848();
  sub_25F4A2650();
  v21 = *(v10 + 8);
  v36 = v10 + 8;
  v21(v13, v9);
  v28 = v21;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  v23 = *(*(v22 - 8) + 8);
  v23(v18, v22);
  sub_25F404B8C(a2 + *(*a2 + 128), v18, &qword_27FD6E468, &qword_25F4A8F58);
  v37 = *&v18[*(v15 + 56)];
  sub_25F4A2A80();
  sub_25F4A2650();
  v24 = v29;
  v21(v13, v29);

  v23(v18, v22);
  v25 = v31;
  v26 = v33;
  (*(v32 + 16))(v31, a2 + *(*a2 + 136), v33);
  v37 = *&v25[*(v26 + 48)];
  sub_25F4A2A80();
  swift_getWitnessTable();
  sub_25F4A2650();
  v28(v13, v24);

  return (*(*(v35 - 8) + 8))(v25);
}

char *sub_25F423740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v33 = *v2;
  v36 = sub_25F4A2A70();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F4A2990();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v2 + 2) = sub_25F4A2980();
  v11 = &v3[*(*v3 + 120)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v13 = *(v12 + 48);
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  v14 = sub_25F4A24E0();
  v16 = v4 + 8;
  v15 = *(v4 + 8);
  v17 = v36;
  v15(v7, v36);
  v32[1] = v16;
  *&v11[v13] = v14;
  v18 = &v3[*(*v3 + 128)];
  v19 = *(v12 + 48);
  sub_25F4A2A80();
  v20 = sub_25F4A24E0();
  v15(v7, v17);
  *&v18[v19] = v20;
  v21 = &v3[*(*v3 + 136)];
  v22 = *(v33 + 88);
  v23 = *(v33 + 80);
  swift_getAssociatedTypeWitness();
  sub_25F4A2510();
  sub_25F4A24F0();
  v24 = *(swift_getTupleTypeMetadata2() + 48);
  sub_25F4A2A80();
  v25 = sub_25F4A24E0();
  v15(v7, v36);
  *&v21[v24] = v25;
  *&v3[*(*v3 + 144)] = 0;
  v26 = &v3[*(*v3 + 152)];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *(*v3 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v3[v27], v34, AssociatedTypeWitness);
  v29 = *(*v3 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedTypeWitness();
  (*(*(v30 - 8) + 32))(&v3[v29], v35, v30);
  return v3;
}

uint64_t sub_25F423C4C()
{
  type metadata accessor for AsyncMessageStream(0);
  sub_25F42A30C(&qword_27FD6D448, type metadata accessor for AsyncMessageStream);
  return sub_25F4A2690();
}

uint64_t sub_25F423CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_25F3FAD34;

  return sub_25F423DA8(a5, a6, a7);
}

uint64_t sub_25F423DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = *v3;
  v5 = *v3;
  v6 = sub_25F4A2710();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v4[14] = *(v10 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v4[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E488, &qword_25F4A8FB0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = *(v5 + 88);
  v15 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PipeEvent.Content();
  v4[20] = v16;
  v17 = *(v16 - 8);
  v4[21] = v17;
  v18 = *(v17 + 64) + 15;
  v4[22] = swift_task_alloc();
  v19 = type metadata accessor for AsyncMessageStream.Event(0);
  v4[23] = v19;
  v20 = *(v19 - 8);
  v4[24] = v20;
  v21 = *(v20 + 64) + 15;
  v4[25] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E490, &qword_25F4A8FB8) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E498, &qword_25F4A8FC0);
  v4[27] = v23;
  v24 = *(v23 - 8);
  v4[28] = v24;
  v25 = *(v24 + 64) + 15;
  v4[29] = swift_task_alloc();
  swift_getObjectType();
  v27 = sub_25F4A2E40();
  v4[30] = v27;
  v4[31] = v26;

  return MEMORY[0x2822009F8](sub_25F424188, v27, v26);
}

uint64_t sub_25F424188()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  swift_getObjectType();
  sub_25F4A2E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  sub_25F4A2F10();
  v6 = *v3;
  *(v0 + 256) = *(*v3 + 120);
  *(v0 + 272) = *(v6 + 152);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = sub_25F4242FC;
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);

  return MEMORY[0x2822003E8](v12, v7, v8, v13);
}

uint64_t sub_25F4242FC()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_25F42441C, v4, v3);
}

uint64_t sub_25F42441C()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[25];
    v3 = v0[22];
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[11];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_25F429D70(v1, v0[25], type metadata accessor for AsyncMessageStream.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v20 = v0[32];
        v21 = v0[18];
        v63 = v20;
        v64 = v0[17];
        v22 = v0[16];
        v65 = v0[15];
        v23 = v0[13];
        v24 = v0[14];
        v25 = v0[12];
        v27 = v0[6];
        v26 = v0[7];
        v28 = v0[5];
        v29 = *(v23 + 32);
        v29(v22, v0[25], v25);
        v66 = sub_25F425530(v28, v27);
        v31 = v30;
        v67 = v21;
        sub_25F404B8C(v26 + v63, v21, &qword_27FD6E468, &qword_25F4A8F58);
        v32 = *(v21 + *(v64 + 48));

        (*(v23 + 16))(v65, v22, v25);
        v33 = (*(v23 + 80) + 16) & ~*(v23 + 80);
        v34 = (v24 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        v29(v35 + v33, v65, v25);
        v36 = (v35 + v34);
        *v36 = v66;
        v36[1] = v31;

        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
        sub_25F4A24B0();

        (*(v23 + 8))(v22, v25);
        (*(*(v37 - 8) + 8))(v67, v37);
      }

      else
      {
        v52 = v0[10];
        v51 = v0[11];
        v53 = v0[9];
        v54 = v0[7];
        (*(v52 + 32))(v51, v0[25], v53);
        v0[2] = v54;
        swift_getWitnessTable();
        sub_25F4A2690();
        (*(v52 + 8))(v51, v53);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v38 = v0[25];
      v39 = v0[18];
      v40 = v0[19];
      v41 = v0[17];
      v43 = *v38;
      v42 = v38[1];
      sub_25F404B8C(v0[7] + v0[33], v39, &qword_27FD6E468, &qword_25F4A8F58);
      v44 = *(v39 + *(v41 + 48));

      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v42;

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
      sub_25F4A24C0();

      (*(*(v46 - 8) + 8))(v39, v46);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A8, &qword_25F4A8FD0);
      v48 = *(v47 - 8);
      v49 = (*(v48 + 48))(v40, 1, v47);
      v50 = v0[19];
      if (v49 == 1)
      {

        sub_25F3F21F4(v50, &qword_27FD6E488, &qword_25F4A8FB0);
      }

      else
      {
        v55 = v0[8];
        v0[3] = v0[7];
        swift_getWitnessTable();
        sub_25F4A26A0();

        (*(v48 + 8))(v50, v47);
      }
    }

    else
    {
      v12 = v0[25];
      v14 = v0[21];
      v13 = v0[22];
      v15 = v0[20];
      v16 = (v0[7] + v0[34]);
      v17 = v12[1];
      v18 = *v16;
      v19 = v16[1];
      *v16 = *v12;
      v16[1] = v17;

      sub_25F41305C(v18);
      swift_storeEnumTagMultiPayload();
      sub_25F425258(v13);

      (*(v14 + 8))(v13, v15);
    }

    v56 = v0[5];
    v57 = v0[6];
    v58 = *(MEMORY[0x277D85798] + 4);
    v59 = swift_task_alloc();
    v0[35] = v59;
    *v59 = v0;
    v59[1] = sub_25F4242FC;
    v60 = v0[29];
    v61 = v0[26];
    v62 = v0[27];

    return MEMORY[0x2822003E8](v61, v56, v57, v62);
  }
}

uint64_t sub_25F424A88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v55 = a3;
  v50 = a1;
  v5 = *a2;
  v6 = type metadata accessor for AsyncMessageStream(0);
  v57 = *(v6 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = v48 - v11;
  v64 = a2;
  v48[2] = *(v5 + 88);
  v12 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v48[1] = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for PipeEvent.Content();
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v48 - v16;
  v18 = sub_25F4A2910();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E518, &qword_25F4A9060);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v48 - v23;
  v25 = sub_25F4A2A70();
  v51 = *(v25 - 8);
  v52 = v25;
  v26 = *(v51 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6E520, &qword_25F4A9068);
  v53 = *(v49 - 8);
  v29 = *(v53 + 64);
  MEMORY[0x28223BE20](v49);
  v48[0] = v48 - v30;
  sub_25F4A2A80();
  (*(v21 + 16))(v24, v50, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2460();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedTypeWitness();
  type metadata accessor for TransportReply();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v34 = *(TupleTypeMetadata3 + 48);
  v35 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(v17, &v64[*(*v64 + 104)], AssociatedTypeWitness);
  (*(*(v32 - 8) + 16))(&v17[v34], v55, v32);
  sub_25F4A2A80();
  v36 = v54;
  sub_25F429D04(v59, v54, type metadata accessor for AsyncMessageStream);
  v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v38 = swift_allocObject();
  sub_25F429D70(v36, v38 + v37, type metadata accessor for AsyncMessageStream);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_25F42A26C;
  *(v39 + 24) = v38;
  v40 = v58;
  v41 = v49;
  v42 = v48[0];
  sub_25F4A2480();

  v43 = v52;
  v44 = *(v51 + 8);
  v44(v28, v52);
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList();
  v45 = v62;
  sub_25F4A2480();
  v44(v28, v43);
  (*(v63 + 8))(v40, v45);
  v46 = v60;
  swift_storeEnumTagMultiPayload();
  sub_25F425258(v17);
  (*(v61 + 8))(v17, v46);
  return (*(v53 + 8))(v42, v41);
}

uint64_t sub_25F425258(uint64_t a1)
{
  v22 = a1;
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = AssociatedTypeWitness;
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PipeEvent.Content();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for PipeEvent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, v22, v8);
  (*(v20 + 16))(v7, v1 + *(*v1 + 112), v21);
  sub_25F40BD68(v12, v7, v17);
  sub_25F40C854(sub_25F427F54);
  return (*(v14 + 8))(v17, v13);
}

uint64_t (*sub_25F425530(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v53 = *v2;
  v65 = *(v53 + 88);
  v66 = *(v53 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = &v50 - v5;
  v63 = type metadata accessor for EndpointInvalidated();
  v60 = *(v63 - 8);
  v62 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B0, &qword_25F4A8FD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v25 = *(v22 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C0, &qword_25F4A8FE8);
  (*(v13 + 104))(v16, *MEMORY[0x277D85778], v12);
  sub_25F4A2EB0();
  (*(v13 + 8))(v16, v12);
  v67 = v3;
  v50 = v24;
  sub_25F404B8C(v24, v21, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v26 = *(v18 + 80);
  v64 = v26 | 7;
  v27 = v19;
  v51 = v19;
  v28 = swift_allocObject();
  sub_25F428728(v21, v28 + ((v26 + 16) & ~v26), &qword_27FD6E4B8, &qword_25F4A8FE0);
  swift_getWitnessTable();
  sub_25F4A28F0();

  v29 = sub_25F4A2EA0();
  v30 = v52;
  (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
  sub_25F404B8C(v24, v21, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v31 = (v26 + 56) & ~v26;
  v32 = (v27 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v35 = v55;
  v34 = v56;
  v33[2] = v55;
  v33[3] = v34;
  v36 = v65;
  v33[4] = v66;
  v33[5] = v36;
  v33[6] = v3;
  sub_25F428728(v21, v33 + v31, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v37 = (v33 + v32);
  *v37 = v35;
  v37[1] = v34;
  swift_unknownObjectRetain_n();

  sub_25F494FEC(0, 0, v30, &unk_25F4A9008, v33);

  v38 = AssociatedTypeWitness;
  v39 = v59;
  (*(v61 + 16))(v59, v3 + *(*v3 + 104), AssociatedTypeWitness);
  v40 = v54;
  sub_25F40CFA0(v39, v38, v54);
  sub_25F428728(v50, v21, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v41 = v60 + 32;
  v42 = *(v60 + 32);
  v43 = v57;
  v44 = v63;
  v42(v57, v40, v63);
  v45 = (v26 + 32) & ~v26;
  v46 = (v45 + v51 + *(v41 + 48)) & ~*(v41 + 48);
  v47 = swift_allocObject();
  v48 = v65;
  *(v47 + 16) = v66;
  *(v47 + 24) = v48;
  sub_25F428728(v21, v47 + v45, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v42((v47 + v46), v43, v44);
  return sub_25F428600;
}

uint64_t sub_25F425BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    sub_25F427F70(*a1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
    return sub_25F4A2E60();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
    return sub_25F4A2E70();
  }
}

uint64_t sub_25F425C9C()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  return sub_25F4A2EF0();
}

uint64_t sub_25F425CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_25F3F30B0;

  return sub_25F425DA4(a5, a6, a7);
}

uint64_t sub_25F425DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v4[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_25F4A2A70();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = *(v5 + 88);
  v12 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for PipeEvent.Content();
  v4[21] = v13;
  v14 = *(v13 - 8);
  v4[22] = v14;
  v15 = *(v14 + 64) + 15;
  v4[23] = swift_task_alloc();
  v16 = sub_25F4A25E0();
  v4[24] = v16;
  v17 = *(v16 - 8);
  v4[25] = v17;
  v18 = *(v17 + 64) + 15;
  v4[26] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v20 = type metadata accessor for LazyPropertyList();
  v4[29] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4E0, &qword_25F4A9028) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4E8, &unk_25F4A9030);
  v4[33] = v23;
  v24 = *(v23 - 8);
  v4[34] = v24;
  v25 = *(v24 + 64) + 15;
  v4[35] = swift_task_alloc();
  swift_getObjectType();
  v26 = sub_25F4A2E40();
  v4[36] = v26;
  v4[37] = v27;
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25F42615C, v26, v27);
}

uint64_t sub_25F42615C()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[35];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  swift_getObjectType();
  sub_25F4A2E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  sub_25F4A2F10();
  v5 = v0[13];
  v6 = v0[14];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_25F4262B0;
  v9 = v0[35];
  v10 = v0[32];
  v11 = v0[33];
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822003E8](v10, v5, v6, v11);
}

uint64_t sub_25F4262B0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 304);
  v8 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25F426404, v4, v3);
}

uint64_t sub_25F426404()
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 256);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C0, &qword_25F4A8FE8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v62 = *(v0 + 136);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    v10 = *(v0 + 8);
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }

  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v2 + 48);
  sub_25F429D70(v1, v13, type metadata accessor for LazyPropertyList);
  sub_25F428728(v1 + v17, v16, &qword_27FD6DEB0, &qword_25F4AB200);
  sub_25F429D04(v13, v14, type metadata accessor for LazyPropertyList);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *(v0 + 240);
  if (EnumCaseMultiPayload != 1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), v19, *(v0 + 192));
    goto LABEL_10;
  }

  v20 = *v19;
  v21 = v19[1];
  v22 = objc_opt_self();
  v23 = sub_25F4A2050();
  *(v0 + 80) = 0;
  v24 = [v22 propertyListWithData:v23 options:0 format:0 error:v0 + 80];

  v25 = *(v0 + 80);
  if (v24)
  {
    sub_25F4A3090();
    swift_unknownObjectRelease();
    sub_25F4031FC(v0 + 16, v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4F0, &qword_25F4AD740);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 208);
      v27 = *(v0 + 88);
      sub_25F4A2560();
      sub_25F428790(v20, v21);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_10:
      v63 = *(v0 + 248);
      v28 = *(v0 + 224);
      v29 = *(v0 + 200);
      v30 = *(v0 + 208);
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);
      v33 = *(v0 + 168);
      v34 = *(v0 + 176);
      v35 = *(v0 + 120);
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      (*(v29 + 16))(v32, v30, v31);
      sub_25F404B8C(v28, v32 + v36, &qword_27FD6DEB0, &qword_25F4AB200);
      swift_storeEnumTagMultiPayload();
      sub_25F425258(v32);
      (*(v34 + 8))(v32, v33);
      (*(v29 + 8))(v30, v31);
      sub_25F3F21F4(v28, &qword_27FD6DEB0, &qword_25F4AB200);
      v37 = type metadata accessor for LazyPropertyList;
      v38 = v63;
LABEL_16:
      sub_25F42A0FC(v38, v37);
      goto LABEL_17;
    }

    sub_25F4287E4();
    v40 = swift_allocError();
    sub_25F4031FC(v0 + 16, v41);
    swift_willThrow();
    sub_25F428790(v20, v21);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v39 = v25;
    v40 = sub_25F4A1FD0();

    swift_willThrow();
    sub_25F428790(v20, v21);
  }

  v42 = *(v0 + 216);
  sub_25F404B8C(*(v0 + 224), v42, &qword_27FD6DEB0, &qword_25F4AB200);
  v43 = type metadata accessor for TransportReply();
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v45 = *(v0 + 248);
  v46 = *(v0 + 216);
  v47 = *(v0 + 224);
  if (v44 != 1)
  {
    v49 = *(v0 + 152);
    v48 = *(v0 + 160);
    v51 = *(v0 + 136);
    v50 = *(v0 + 144);
    v52 = *(v0 + 128);
    sub_25F4A2A80();
    *v51 = v40;
    swift_storeEnumTagMultiPayload();
    v53 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();

    sub_25F3F21F4(v51, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v49 + 8))(v48, v50);
    sub_25F3F21F4(v47, &qword_27FD6DEB0, &qword_25F4AB200);
    sub_25F42A0FC(v45, type metadata accessor for LazyPropertyList);
    v37 = type metadata accessor for TransportReply;
    v38 = v46;
    goto LABEL_16;
  }

  sub_25F3F21F4(v47, &qword_27FD6DEB0, &qword_25F4AB200);
  sub_25F42A0FC(v45, type metadata accessor for LazyPropertyList);
  sub_25F3F21F4(v46, &qword_27FD6DEB0, &qword_25F4AB200);
LABEL_17:
  v54 = *(v0 + 104);
  v55 = *(v0 + 112);
  v56 = *(MEMORY[0x277D85798] + 4);
  v57 = swift_task_alloc();
  *(v0 + 304) = v57;
  *v57 = v0;
  v57[1] = sub_25F4262B0;
  v58 = *(v0 + 280);
  v59 = *(v0 + 256);
  v60 = *(v0 + 264);
  v61 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822003E8](v59, v54, v55, v60);
}

uint64_t sub_25F426AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[0] = a6;
  v37[1] = a5;
  v38 = a4;
  v45 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = (v37 - v9);
  v43 = sub_25F4A2A70();
  v41 = *(v43 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v44 = v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C0, &qword_25F4A8FE8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D8, &unk_25F4A9010);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v37 - v23;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) + 48);
  v26 = *(v16 + 56);
  sub_25F429D04(a1, v19, type metadata accessor for LazyPropertyList);
  sub_25F404B8C(a2, &v19[v26], &qword_27FD6DEB0, &qword_25F4AB200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  sub_25F4A2EE0();
  v27 = (*(v21 + 88))(v24, v20);
  LODWORD(v26) = *MEMORY[0x277D85748];
  result = (*(v21 + 8))(v24, v20);
  if (v27 == v26)
  {
    v29 = v44;
    sub_25F404B8C(a2, v44, &qword_27FD6DEB0, &qword_25F4AB200);
    v30 = type metadata accessor for TransportReply();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      return sub_25F3F21F4(v29, &qword_27FD6DEB0, &qword_25F4AB200);
    }

    else
    {
      swift_getAssociatedTypeWitness();
      v31 = type metadata accessor for EndpointInvalidated();
      swift_getWitnessTable();
      v32 = swift_allocError();
      (*(*(v31 - 8) + 16))(v33, v38, v31);
      v34 = v39;
      sub_25F4A2A80();
      v35 = v42;
      *v42 = v32;
      swift_storeEnumTagMultiPayload();
      v36 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
      sub_25F4A2410();
      sub_25F3F21F4(v35, &qword_27FD6DEB8, &unk_25F4A8D20);
      (*(v41 + 8))(v34, v43);

      return sub_25F42A0FC(v29, type metadata accessor for TransportReply);
    }
  }

  return result;
}

uint64_t sub_25F426FC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v17 - v11;
  v13 = *(v4 + 144);
  if (*(a2 + v13))
  {
    v14 = *(a2 + v13);

    sub_25F440F18(a1);
  }

  else
  {
    (*(v10 + 16))(v12, a2 + *(v5 + 112), AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v12, AssociatedTypeWitness, v16);
    return swift_willThrow();
  }
}

uint64_t sub_25F4271F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v13 = *(*(v9 - 8) + 32);
  v13(a4 + v10, a2, v9);
  v11 = a4 + *(type metadata accessor for Outlet.EndpointCollision() + 36);

  return (v13)(v11, a3, v9);
}

uint64_t sub_25F4273A0(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000025, 0x800000025F4B7B90);
  v21 = *(v8 + 16);
  v21(v11, v2, TupleTypeMetadata2);
  v12 = *(TupleTypeMetadata2 + 48);
  sub_25F4A3240();
  v20 = *(*(v6 - 8) + 8);
  v20(&v11[v12], v6);
  v13 = *(*(AssociatedTypeWitness - 8) + 8);
  v13(v11, AssociatedTypeWitness);
  MEMORY[0x25F8DD480](0x6F206D6F72662027, 0xEF27206E69676972);
  v14 = *(v22 + 36);
  sub_25F4A3240();
  MEMORY[0x25F8DD480](39, 0xE100000000000000);
  v22 = v23;
  v23 = 0;
  v19 = v24;
  v24 = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000039, 0x800000025F4B7BC0);
  v21(v11, v2, TupleTypeMetadata2);
  v15 = *(TupleTypeMetadata2 + 48);
  sub_25F4A3240();
  v20(&v11[v15], v6);
  v13(v11, AssociatedTypeWitness);
  MEMORY[0x25F8DD480](10535, 0xE200000000000000);
  v16 = v23;
  v17 = v24;
  v23 = v22;
  v24 = v19;
  MEMORY[0x25F8DD480](0x737561636562202CLL, 0xEA00000000002065);
  MEMORY[0x25F8DD480](v16, v17);

  return v23;
}

uint64_t sub_25F427714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F427768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

char *sub_25F4277BC()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v3], AssociatedTypeWitness);
  v7 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  sub_25F3F21F4(&v0[*(*v0 + 120)], &qword_27FD6E468, &qword_25F4A8F58);
  sub_25F3F21F4(&v0[*(*v0 + 128)], &qword_27FD6E468, &qword_25F4A8F58);
  v9 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2510();
  sub_25F4A24F0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 8))(&v0[v9], TupleTypeMetadata2);
  v11 = *&v0[*(*v0 + 144)];

  v12 = &v0[*(*v0 + 152)];
  v13 = v12[1];
  sub_25F41305C(*v12);
  return v0;
}

uint64_t sub_25F427A8C()
{
  sub_25F4277BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25F427AFC()
{
  if (!qword_27FD6E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v0 = sub_25F4A2510();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6E460);
    }
  }
}

uint64_t sub_25F427B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F427C08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F427C48(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3FAD34;

  return sub_25F423CF4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_25F427D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F427E48(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_25F425BD4(a1, v1 + v4, v6, v7);
}

uint64_t sub_25F427EF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F427F2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_25F427F70(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_25F427F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F427FA4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F4280E0()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8) + 80);

  return sub_25F425C9C();
}

uint64_t sub_25F42815C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 48);

  v7 = v0 + v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v1[14];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v0 + v4);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F4282BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3F30B0;

  return sub_25F425CF0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_25F428404()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(*v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for EndpointInvalidated() - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  (*(*(v13 - 8) + 8))(v0 + v5, v13);
  v14 = v3[14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  (*(*(v15 - 8) + 8))(v0 + v5 + v14, v15);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v10, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_25F428600(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for EndpointInvalidated() - 8);
  v11 = v2 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_25F426AC4(a1, a2, v2 + v8, v11, v5, v6);
}

uint64_t sub_25F428728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F428790(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25F4287E4()
{
  result = qword_27FD6E4F8;
  if (!qword_27FD6E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E4F8);
  }

  return result;
}

unint64_t sub_25F428848()
{
  result = qword_27FD6E508;
  if (!qword_27FD6E508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E500, &qword_25F4AEF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E508);
  }

  return result;
}

uint64_t sub_25F4288C4(uint64_t a1)
{
  v2 = v1;
  v148 = a1;
  v145 = *v1;
  v131 = v145;
  v3 = v145[11];
  v4 = v145[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  v5 = *(v109 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v116 = &v101 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v7 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v103 = &v101 - v8;
  v9 = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v10 = sub_25F4A2510();
  v11 = sub_25F4A24F0();
  v112 = v10;
  v108 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = *(TupleTypeMetadata2 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v110 = &v101 - v13;
  v126 = type metadata accessor for TransportReply();
  v14 = *(*(v126 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v126);
  v135 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v9;
  v132 = *(v9 - 8);
  v17 = *(v132 + 64);
  MEMORY[0x28223BE20](v15);
  v137 = &v101 - v18;
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v125 = v19;
  v134 = swift_getAssociatedTypeWitness();
  v136 = *(v134 - 8);
  v20 = *(v136 + 64);
  v21 = MEMORY[0x28223BE20](v134);
  v105 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v115 = &v101 - v24;
  MEMORY[0x28223BE20](v23);
  v133 = &v101 - v25;
  v114 = type metadata accessor for LazyPropertyList();
  v26 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v128 = &v101 - v30;
  v31 = sub_25F4A25E0();
  v129 = *(v31 - 8);
  v130 = v31;
  v32 = *(v129 + 64);
  MEMORY[0x28223BE20](v31);
  v127 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_25F4A2710();
  v122 = *(v123 - 8);
  v34 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25F4A2A70();
  v140 = *(v36 - 8);
  v141 = v36;
  v37 = *(v140 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v104 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v143 = &v101 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v118 = &v101 - v43;
  MEMORY[0x28223BE20](v42);
  v117 = &v101 - v44;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v45 = *(*(v139 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v139);
  v120 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v119 = &v101 - v48;
  v49 = type metadata accessor for PipeEvent.Content();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v101 - v52;
  LODWORD(v19) = *(type metadata accessor for PipeEvent() + 36);
  v54 = v145[13];
  v145 = v3;
  v111 = v4;
  v55 = AssociatedTypeWitness;
  v56 = *(swift_getAssociatedConformanceWitness() + 8);
  v57 = v148;
  if ((sub_25F4A2C00() & 1) == 0)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_25F4A30F0();
    MEMORY[0x25F8DD480](0x272074656C74754FLL, 0xE800000000000000);
    sub_25F4A3240();
    MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B7AF0);
    sub_25F4A3240();
    MEMORY[0x25F8DD480](39, 0xE100000000000000);
    sub_25F4A2A80();
    sub_25F4A23B0();
    sub_25F42A30C(&qword_27FD6E510, MEMORY[0x277D40410]);
    swift_allocError();
    sub_25F4A23C0();
    return swift_willThrow();
  }

  v101 = v54;
  (*(v50 + 16))(v53, v57, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      v85 = v129;
      v84 = v130;
      v86 = v127;
      (*(v129 + 32))(v127, v53, v130);
      v87 = v128;
      sub_25F428728(&v53[v83], v128, &qword_27FD6DEB0, &qword_25F4AB200);
      v88 = &v2[*(*v2 + 152)];
      v89 = *v88;
      if (*v88)
      {
        v90 = *(v88 + 1);
        v91 = v113;
        (*(v85 + 16))(v113, v86, v84);
        swift_storeEnumTagMultiPayload();

        v89(v91, v87);
        sub_25F41305C(v89);
        sub_25F42A0FC(v91, type metadata accessor for LazyPropertyList);
      }

      else
      {
        sub_25F4A2A80();
        sub_25F4A23B0();
        sub_25F42A30C(&qword_27FD6E510, MEMORY[0x277D40410]);
        swift_allocError();
        sub_25F4A23C0();
        swift_willThrow();
      }

      sub_25F3F21F4(v87, &qword_27FD6DEB0, &qword_25F4AB200);
      return (*(v85 + 8))(v86, v84);
    }

    else
    {
      v64 = v134;
      v65 = v138;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v67 = *(TupleTypeMetadata3 + 48);
      v68 = *(TupleTypeMetadata3 + 64);
      v69 = v133;
      (*(v136 + 32))(v133, v53, v64);
      v70 = v132;
      (*(v132 + 32))(v137, &v53[v67], v65);
      v71 = &v53[v68];
      v72 = v135;
      sub_25F429D70(v71, v135, type metadata accessor for TransportReply);
      v73 = *(*v2 + 112);
      v74 = *(swift_getAssociatedConformanceWitness() + 8);
      if (sub_25F4A2C00())
      {
        v59 = v110;
        v75 = TupleTypeMetadata2;
        (*(v106 + 16))(v110, &v2[*(*v2 + 136)], TupleTypeMetadata2);
        v146 = *(v59 + *(v75 + 48));
        v76 = v104;
        sub_25F4A2A80();
        swift_getWitnessTable();
        v77 = v137;
        v78 = v142;
        sub_25F4A2630();
        if (v78)
        {
          (*(v140 + 8))(v76, v141);

          sub_25F42A0FC(v72, type metadata accessor for TransportReply);
          (*(v70 + 8))(v77, v138);
          (*(v136 + 8))(v133, v134);
          v61 = v112;
          v62 = v112;
          return (*(*(v62 - 8) + 8))(v59, v61);
        }

        v96 = v72;
        v97 = v141;
        v98 = *(v140 + 8);
        v98(v76, v141);

        (*(*(v112 - 8) + 8))(v59);
        v99 = v143;
        sub_25F4A2A80();
        v100 = v103;
        _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
        sub_25F4A2410();
        sub_25F3F21F4(v100, &qword_27FD6DEB8, &unk_25F4A8D20);
        v98(v99, v97);
        sub_25F42A0FC(v96, type metadata accessor for TransportReply);
        (*(v70 + 8))(v77, v138);
        return (*(v136 + 8))(v133, v134);
      }

      else
      {
        (*(v109 + 16))(v116, &v2[v101], v55);
        v92 = v136;
        v93 = *(v136 + 16);
        v93(v115, &v2[v73], v64);
        v94 = v105;
        v93(v105, v69, v64);
        type metadata accessor for Outlet.EndpointCollision();
        swift_getWitnessTable();
        swift_allocError();
        sub_25F4271F8(v116, v115, v94, v95);
        swift_willThrow();
        sub_25F42A0FC(v135, type metadata accessor for TransportReply);
        (*(v70 + 8))(v137, v138);
        return (*(v92 + 8))(v69, v64);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v79 = v119;
    sub_25F404B8C(&v2[*(*v2 + 120)], v119, &qword_27FD6E468, &qword_25F4A8F58);
    v146 = *(v79 + *(v139 + 48));
    v80 = v117;
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
    sub_25F428848();
    sub_25F4A2640();
    (*(v140 + 8))(v80, v141);

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
    return (*(*(v81 - 8) + 8))(v79, v81);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v59 = v120;
      sub_25F404B8C(&v2[*(*v2 + 128)], v120, &qword_27FD6E468, &qword_25F4A8F58);
      v146 = *(v59 + *(v139 + 48));
      v60 = v118;
      sub_25F4A2A80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
      sub_25F428848();
      sub_25F4A2640();
      (*(v140 + 8))(v60, v141);

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
      v62 = v61;
      return (*(*(v62 - 8) + 8))(v59, v61);
    }

    v146 = v2;
    swift_getWitnessTable();
    v82 = v121;
    sub_25F441084();
    sub_25F4A2690();
    return (*(v122 + 8))(v82, v123);
  }
}

uint64_t sub_25F429D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F429D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F429DD8()
{
  v0 = *(*(type metadata accessor for AsyncMessageStream(0) - 8) + 80);

  return sub_25F423C4C();
}

uint64_t objectdestroyTm_1()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 48);

  v7 = v0 + v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v1[14];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v0 + v4);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F429FA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3FAD34;

  return sub_25F423CF4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_25F42A0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_29Tm()
{
  v1 = (type metadata accessor for AsyncMessageStream(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F42A2E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F42A30C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F42A354(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  result = swift_getTupleTypeMetadata2();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F42A490(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 64) + v13;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((*(*(v10 - 8) + 64) + v13 + (v15 & ~v13)) & ~v13) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v9 >= v12)
        {
          v25 = *(v8 + 48);

          return v25(a1, v9, v26);
        }

        else
        {
          v23 = *(v11 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_25F42A790(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13) + *(v10 + 64);
  v16 = a3 - v12;
  if (a3 <= v12)
  {
    v19 = 0;
    v17 = a1;
    v18 = a2;
  }

  else
  {
    v17 = a1;
    v18 = a2;
    if (v15 <= 3)
    {
      v22 = ((v16 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v12 < v18)
  {
    v20 = ~v12 + v18;
    if (v15 < 4)
    {
      v21 = (v20 >> (8 * v15)) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << (8 * v15));
        bzero(v17, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *v17 = v24;
            if (v19 > 1)
            {
LABEL_46:
              if (v19 == 2)
              {
                *&v17[v15] = v21;
              }

              else
              {
                *&v17[v15] = v21;
              }

              return;
            }
          }

          else
          {
            *v17 = v20;
            if (v19 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v17 = v24;
        v17[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(v17, v15);
      *v17 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v19)
    {
      v17[v15] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&v17[v15] = 0;
      if (!v18)
      {
        return;
      }

      goto LABEL_31;
    }

    *&v17[v15] = 0;
  }

  else if (v19)
  {
    v17[v15] = 0;
    if (!v18)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v18)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v26 = *(v8 + 56);

    v26(v17);
  }

  else
  {
    v25 = *(v10 + 56);

    v25(&v17[v14] & ~v13);
  }
}

uint64_t Transport.activation.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F42AC9C;

  return v9(a1, a2);
}

uint64_t sub_25F42AC9C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (!v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t Transport.invalidatedError.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_25F4A30F0();
  v4 = *(a1 + 16);
  sub_25F4A3250();
  MEMORY[0x25F8DD480](0xD000000000000010, 0x800000025F4B7C30);
  a2[3] = sub_25F4A2610();
  a2[4] = sub_25F42AE68();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_25F4A2620();
}

unint64_t sub_25F42AE68()
{
  result = qword_27FD6DFC0[0];
  if (!qword_27FD6DFC0[0])
  {
    sub_25F4A2610();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD6DFC0);
  }

  return result;
}

uint64_t dispatch thunk of Transport.sender.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F42AFEC;

  return v9(a1, a2);
}

uint64_t sub_25F42AFEC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t UVPropertyList.decoded.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 data];
  v4 = sub_25F4A2060();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  type metadata accessor for LazyPropertyList();

  return swift_storeEnumTagMultiPayload();
}

id LazyPropertyList.encoded.getter()
{
  v0 = sub_25F4A2AE0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = LazyPropertyList.data.getter();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277D40FE8]);
  v6 = sub_25F4A2050();
  v7 = [v5 initWithData_];

  sub_25F428790(v2, v4);
  return v7;
}

id PropertyList.encoded.getter()
{
  v1 = type metadata accessor for LazyPropertyList();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 16))(v4, v0, v5);
  swift_storeEnumTagMultiPayload();
  v6 = LazyPropertyList.encoded.getter();
  sub_25F4216D0(v4);
  return v6;
}

uint64_t UVPropertyList.eagerlyDecoded.getter()
{
  v1 = [v0 dictionary];
  sub_25F4A2B60();

  return sub_25F4A2560();
}

uint64_t sub_25F42B530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC8, &qword_25F4AB2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F42B598()
{
  sub_25F4A2C60();
}

uint64_t sub_25F42B6C0()
{
  sub_25F4A2C60();
}

uint64_t sub_25F42B81C()
{
  sub_25F4A2C60();
}

PreviewsMessagingOS::BitmapDescription::ByteOrder_optional __swiftcall BitmapDescription.ByteOrder.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_BitmapDescription_ByteOrder_big;
  }

  else
  {
    v2.value = PreviewsMessagingOS_BitmapDescription_ByteOrder_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BitmapDescription.ByteOrder.rawValue.getter(char a1)
{
  if (a1)
  {
    return 6777186;
  }

  else
  {
    return 0x656C7474696CLL;
  }
}

uint64_t sub_25F42BA28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6777186;
  }

  else
  {
    v4 = 0x656C7474696CLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6777186;
  }

  else
  {
    v6 = 0x656C7474696CLL;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
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

uint64_t sub_25F42BAC4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42BB3C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F42BBA0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42BC14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_25F42BC74(uint64_t *a1@<X8>)
{
  v2 = 6777186;
  if (!*v1)
  {
    v2 = 0x656C7474696CLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F42BCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F42D054();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t BitmapDescription.data.getter()
{
  v1 = *v0;
  sub_25F42BDA0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_25F42BDA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t BitmapDescription.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25F428790(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BitmapDescription.colorSpace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t BitmapDescription.colorSpace.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t BitmapDescription.init(data:width:height:bytesPerRow:bitmapInfo:bitsPerComponent:bitsPerPixel:colorSpace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_25F42C028()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F42C09C()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  return sub_25F4A3350();
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitmapDescription.makeImage()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  bytesPerRow = v0[4];
  bitmapInfo = *(v0 + 10);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = sub_25F4A2050();
  v10 = CGDataProviderCreateWithCFData(v9);
  if (!v10)
  {
    sub_25F42C274();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v13 = v9;
LABEL_8:

    return v5;
  }

  v11 = v10;
  v12 = sub_25F4A2C10();
  v13 = CGColorSpaceCreateWithName(v12);

  if (!v13)
  {
    sub_25F42C274();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();

    v13 = v11;
    goto LABEL_8;
  }

  v14 = CGImageCreate(v3, v4, v6, v5, bytesPerRow, v13, bitmapInfo, v11, 0, 0, kCGRenderingIntentDefault);
  if (!v14)
  {
    sub_25F42C274();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v5 = v14;

  return v5;
}

unint64_t sub_25F42C274()
{
  result = qword_27FD6E5A8;
  if (!qword_27FD6E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5A8);
  }

  return result;
}

unint64_t sub_25F42C2C8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1635017060;
    v6 = 0x746867696568;
    if (a1 != 2)
    {
      v6 = 0x7265507365747962;
    }

    if (a1)
    {
      v5 = 0x6874646977;
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
    v1 = 0xD000000000000010;
    v2 = 0x5072655073746962;
    if (a1 != 7)
    {
      v2 = 0x617053726F6C6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6564724F65747962;
    if (a1 != 4)
    {
      v3 = 0x6E4970616D746962;
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

uint64_t sub_25F42C3FC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F42B6C0();
  return sub_25F4A3350();
}

uint64_t sub_25F42C44C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F42B6C0();
  return sub_25F4A3350();
}

uint64_t sub_25F42C490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F42D008();
  *a2 = result;
  return result;
}

unint64_t sub_25F42C4C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F42C2C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t BitmapDescription.propertyListValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F42C54C(__int128 *a1)
{
  v38 = *a1;
  v1 = v38;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v37 = 0;
  v36 = v38;
  v35 = 1;
  v33 = v2;
  v34 = 0;
  v32 = 2;
  v30 = v3;
  v31 = 0;
  v29 = 3;
  v27 = v4;
  v28 = 0;
  v26 = 4;
  v25 = (v5 & 0x4000) != 0;
  v24 = 5;
  v22 = v5;
  v23 = 0;
  v21 = 6;
  v19 = v6;
  v20 = 0;
  v18 = 7;
  v16 = v7;
  v17 = 0;
  v15 = 8;
  v13 = v8;
  v14 = v9;
  sub_25F42D0A8(&v38, v12);
  sub_25F42BDA0(v1, *(&v1 + 1));
  sub_25F42CB94();
  sub_25F42CBE8();
  v10 = sub_25F4A2860();
  sub_25F42D104(v36, *(&v36 + 1));
  sub_25F428790(v1, *(&v1 + 1));
  return v10;
}

uint64_t BitmapDescription.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = &type metadata for BitmapDescription.Key;
  v5 = sub_25F42CB94();
  v23 = v5;
  LOBYTE(v21[0]) = 5;
  sub_25F4A2580();
  if (v2)
  {
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (BYTE4(v19) == 1)
    {
      v22 = &type metadata for BitmapDescription.Key;
      v23 = v5;
      LOBYTE(v21[0]) = 4;
      sub_25F42CBE8();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (v24)
      {
        v6 = 16386;
      }

      else
      {
        v6 = 8194;
      }
    }

    else
    {
      v6 = v19;
    }

    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 6;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v20)
    {
      v7 = 8;
    }

    else
    {
      v7 = v19;
    }

    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 7;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v19;
    }

    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 8;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v11 = v20;
    if (v20)
    {
      v16 = v19;
    }

    else
    {
      v12 = *MEMORY[0x277CBF4B8];
      v16 = sub_25F4A2C20();
      v11 = v13;
    }

    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 0;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v15 = v24;
    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = &type metadata for BitmapDescription.Key;
    v23 = v5;
    LOBYTE(v21[0]) = 3;
    sub_25F4A2530();
    v14 = sub_25F4A25E0();
    (*(*(v14 - 8) + 8))(a1, v14);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v15;
    *(a2 + 24) = v18;
    *(a2 + 32) = v17;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    *(a2 + 56) = v8;
    *(a2 + 64) = v16;
    *(a2 + 72) = v11;
  }

  return result;
}

unint64_t sub_25F42CB94()
{
  result = qword_27FD6E5B0;
  if (!qword_27FD6E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5B0);
  }

  return result;
}

unint64_t sub_25F42CBE8()
{
  result = qword_27FD6E5B8;
  if (!qword_27FD6E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5B8);
  }

  return result;
}

unint64_t sub_25F42CC40()
{
  result = qword_27FD6E5C0;
  if (!qword_27FD6E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5C0);
  }

  return result;
}

uint64_t sub_25F42CC94()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_25F42CD3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F42CD84(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BitmapDescription.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BitmapDescription.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F42CF5C()
{
  result = qword_27FD6E5C8;
  if (!qword_27FD6E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5C8);
  }

  return result;
}

unint64_t sub_25F42CFB4()
{
  result = qword_27FD6E5D0;
  if (!qword_27FD6E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5D0);
  }

  return result;
}

uint64_t sub_25F42D008()
{
  v0 = sub_25F4A3170();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F42D054()
{
  result = qword_27FD6E5D8;
  if (!qword_27FD6E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5D8);
  }

  return result;
}

uint64_t sub_25F42D104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F428790(a1, a2);
  }

  return a1;
}

uint64_t SelectableRegion.path.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double SelectableRegion.rect.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

uint64_t SelectableRegion.accessibilityElement.getter()
{
  v1 = *(v0 + 48);
  sub_25F42D18C(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_25F42D18C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F42BDA0(a1, a2);
  }

  return a1;
}

uint64_t SelectableRegion.init(path:rect:accessibilityElement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a9;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

void SelectableRegion.scaledBy(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = *v2;
  v5 = *(v2 + 1);
  v7 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v9 = v2[5];
  v11 = *(v2 + 6);
  v12 = *(v2 + 7);

  sub_25F42D18C(v11, v12);
  v14.origin.x = v7;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v9;
  if (!CGRectIsNull(v14))
  {
    v15.origin.x = v7;
    v15.origin.y = v8;
    v15.size.width = v10;
    v15.size.height = v9;
    if (!CGRectIsInfinite(v15))
    {
      v16.origin.x = v7;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v9;
      v13 = CGRectGetWidth(v16) * a2;
      v17.origin.x = v7;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v9;
      v9 = CGRectGetHeight(v17) * a2;
      v7 = v7 * a2;
      v8 = v8 * a2;
      v10 = v13;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
}

uint64_t sub_25F42D2B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1952671090;
  v5 = 0x800000025F4B6070;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x800000025F4B6070;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1752457584;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1952671090;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_25F42D390()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42D428()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F42D4AC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42D540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F42DB8C();
  *a2 = result;
  return result;
}

void sub_25F42D570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952671090;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
    v4 = 0x800000025F4B6070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F42D5C4()
{
  v1 = 1952671090;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t SelectableRegion.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t sub_25F42D664(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v17 = *(a1 + 3);
  v4 = v17;
  v16 = 0;
  v14 = v1;
  v15 = v2;
  v13 = 1;
  v10 = *(a1 + 1);
  v11 = v3;
  v12 = 0;
  v9 = 2;
  v8 = v17;

  sub_25F42DBD8(&v17, v7);
  sub_25F42D18C(v4, *(&v4 + 1));
  type metadata accessor for CGRect(0);
  sub_25F42D984();
  v5 = sub_25F4A28C0();
  sub_25F42D104(v8, *(&v8 + 1));

  sub_25F42D104(v4, *(&v4 + 1));
  return v5;
}

uint64_t SelectableRegion.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for SelectableRegion.Key;
  v5 = sub_25F42D984();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for SelectableRegion.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    type metadata accessor for CGRect(0);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for SelectableRegion.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return result;
}

unint64_t sub_25F42D984()
{
  result = qword_27FD6E5E0;
  if (!qword_27FD6E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5E0);
  }

  return result;
}

uint64_t sub_25F42D9D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F42DA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F42DAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F42DB38()
{
  result = qword_27FD6E5E8;
  if (!qword_27FD6E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5E8);
  }

  return result;
}

uint64_t sub_25F42DB8C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F42DBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E5F0, &unk_25F4A97D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall Error.makeNSError()(NSError *__return_ptr retstr)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v1 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v5 + 16);
  v17(&v34 - v15, v3, v4);
  v18 = sub_25F4A3230();
  if (v18)
  {
    v19 = v18;
    (*(v5 + 8))(v16, v4);
  }

  else
  {
    v19 = swift_allocError();
    (*(v5 + 32))(v20, v16, v4);
  }

  v21 = sub_25F4A1FC0();

  v22 = [v21 userInfo];
  v23 = sub_25F4A2B60();

  v24 = *(v23 + 16);

  if (v24 < 2)
  {
    v17(v11, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E5F8, &qword_25F4A97E0);
    if (swift_dynamicCast())
    {
      sub_25F412FDC(&v36, v39);
      v27 = objc_opt_self();
      v28 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v29 = *(v28 + 8);
      sub_25F4A3210();
      v30 = sub_25F4A2C10();

      [v27 uv:v30 errorWithDescription:?];
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      sub_25F3F21F4(&v36, &qword_27FD6E600, &qword_25F4A97E8);
      v17(v35, v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E608, &qword_25F4A97F0);
      if (!swift_dynamicCast())
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_25F3F21F4(&v36, &qword_27FD6E610, qword_25F4A97F8);
        v32 = objc_opt_self();
        v39[0] = 0;
        v39[1] = 0xE000000000000000;
        sub_25F4A3240();
        v33 = sub_25F4A2C10();

        [v32 uv:v33 errorWithDescription:?];

        return;
      }

      sub_25F412FDC(&v36, v39);
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_25F4A27D0();
    }

    __swift_destroy_boxed_opaque_existential_1(v39);
    return;
  }

  v17(v14, v3, v4);
  v25 = sub_25F4A3230();
  if (v25)
  {
    v26 = v25;
    (*(v5 + 8))(v14, v4);
  }

  else
  {
    v26 = swift_allocError();
    (*(v5 + 32))(v31, v14, v4);
  }

  sub_25F4A1FC0();
}

void sub_25F42E174(uint64_t a1@<X8>)
{
  strcpy(a1, "providerName");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t ProviderPayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F42E228();
  return sub_25F4A25C0();
}

unint64_t sub_25F42E228()
{
  result = qword_27FD6E618;
  if (!qword_27FD6E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E618);
  }

  return result;
}

uint64_t ProviderPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for ProviderPayload.Key;
  v8[4] = sub_25F42E228();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F42E37C()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F42E228();
  return sub_25F4A25C0();
}

uint64_t sub_25F42E3EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for ProviderPayload.Key;
  v8[4] = sub_25F42E228();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t RegistryType.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RegistryType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static RegistryType.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F42E5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F43A90C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F42E670(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F42E6A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_25F4A3270() ^ 1) & 1;
  }
}

uint64_t sub_25F42E6E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_25F4A3270() ^ 1) & 1;
  }
}

uint64_t sub_25F42E73C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t RegistryID.init(sourceFilePath:registryType:registryIndexInFile:sidecarIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  *a6 = a1;
  a6[1] = a2;
  a6[2] = v8;
  a6[3] = v9;
  a6[4] = a4;
  v10 = a6 + *(type metadata accessor for RegistryID(0) + 28);

  return sub_25F42E808(a5, v10);
}

uint64_t sub_25F42E808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F42E884()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42E968()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F42EA38()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42EB18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A6F8();
  *a2 = result;
  return result;
}

void sub_25F42EB48(unint64_t *a1@<X8>)
{
  v2 = 0xEE0068746150656CLL;
  v3 = 0x6946656372756F73;
  v4 = 0x800000025F4B60C0;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025F4B60E0;
  }

  if (*v1)
  {
    v3 = 0x7972747369676572;
    v2 = 0xEC00000065707954;
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

unint64_t sub_25F42EBE8()
{
  v1 = 0x6946656372756F73;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7972747369676572;
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

uint64_t sub_25F42ECC0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8B8, &qword_25F4AB120);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = *(v3 + 56);
  v20[-v8] = 3;
  v16 = type metadata accessor for RegistryID(0);
  sub_25F404B8C(a1 + *(v16 + 28), &v9[v15], &qword_27FD6E620, &qword_25F4A9820);
  v29 = 0;
  v27 = v11;
  v28 = v10;
  v26 = 1;
  v24 = v12;
  v25 = v13;
  v23 = 2;
  v21 = v14;
  v22 = 0;
  sub_25F404B8C(v9, v7, &qword_27FD6E8B8, &qword_25F4AB120);
  v17 = *(v3 + 56);
  v20[15] = *v7;
  sub_25F4A20A0();
  sub_25F42F25C();
  sub_25F42F2B0();

  v18 = sub_25F4A28B0();

  sub_25F3F21F4(v9, &qword_27FD6E8B8, &qword_25F4AB120);
  sub_25F3F21F4(&v7[v17], &qword_27FD6E620, &qword_25F4A9820);
  return v18;
}

uint64_t RegistryID.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v26 = &type metadata for RegistryID.Key;
  v9 = sub_25F42F25C();
  v27 = v9;
  LOBYTE(v25[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v12 = v28;
    v11 = v29;
    v26 = &type metadata for RegistryID.Key;
    v27 = v9;
    LOBYTE(v25[0]) = 1;
    sub_25F42F2B0();
    sub_25F4A2580();
    v30 = v12;
    __swift_destroy_boxed_opaque_existential_1(v25);
    if (v24)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0x77656976657270;
    }

    if (v24)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    v26 = &type metadata for RegistryID.Key;
    v27 = v9;
    LOBYTE(v25[0]) = 2;
    sub_25F4A2530();
    v21 = v13;
    v22 = v14;
    __swift_destroy_boxed_opaque_existential_1(v25);
    v15 = v23;
    v26 = &type metadata for RegistryID.Key;
    v27 = v9;
    LOBYTE(v25[0]) = 3;
    sub_25F4A20A0();
    sub_25F4A2580();
    v17 = sub_25F4A25E0();
    (*(*(v17 - 8) + 8))(a1, v17);
    __swift_destroy_boxed_opaque_existential_1(v25);
    *a2 = v30;
    a2[1] = v11;
    v18 = v22;
    a2[2] = v21;
    a2[3] = v18;
    a2[4] = v15;
    v19 = type metadata accessor for RegistryID(0);
    return sub_25F42E808(v8, a2 + *(v19 + 28));
  }
}

unint64_t sub_25F42F25C()
{
  result = qword_27FD6E628;
  if (!qword_27FD6E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E628);
  }

  return result;
}

unint64_t sub_25F42F2B0()
{
  result = qword_27FD6E630;
  if (!qword_27FD6E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E630);
  }

  return result;
}

uint64_t RegistryID.description.getter()
{
  v1 = v0;
  v2 = sub_25F4A1FE0();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E638, &qword_25F4A9828);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v41 - v7;
  v46 = sub_25F4A2040();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v41 - v14;
  v16 = sub_25F4A20A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RegistryID(0);
  sub_25F404B8C(v1 + *(v21 + 28), v15, &qword_27FD6E620, &qword_25F4A9820);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_25F3F21F4(v15, &qword_27FD6E620, &qword_25F4A9820);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_25F4A30F0();

    v49 = 0x7972747369676552;
    v50 = 0xE90000000000002DLL;
    v22 = v1;
    v23 = *v1;
    v24 = v1[1];
    v25 = v46;
    (*(v8 + 56))(v43, 1, 1, v46);
    (*(v44 + 104))(v47, *MEMORY[0x277CC91D8], v45);

    sub_25F4A2030();
    v26 = sub_25F4A2000();
    v28 = v27;
    (*(v8 + 8))(v11, v25);
    MEMORY[0x25F8DD480](v26, v28);

    MEMORY[0x25F8DD480](35, 0xE100000000000000);
    v48 = v22[4];
    v29 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v29);

    MEMORY[0x25F8DD480](91, 0xE100000000000000);
    MEMORY[0x25F8DD480](v22[2], v22[3]);
    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    return v49;
  }

  else
  {
    v42 = v17;
    (*(v17 + 32))(v20, v15, v16);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_25F4A30F0();

    v49 = 0x7972747369676552;
    v50 = 0xE90000000000002DLL;
    v31 = v1;
    v32 = *v1;
    v33 = v1[1];
    v34 = v46;
    (*(v8 + 56))(v43, 1, 1, v46);
    (*(v44 + 104))(v47, *MEMORY[0x277CC91D8], v45);

    sub_25F4A2030();
    v35 = sub_25F4A2000();
    v37 = v36;
    (*(v8 + 8))(v11, v34);
    MEMORY[0x25F8DD480](v35, v37);

    MEMORY[0x25F8DD480](0x726163656469732ELL, 0xE90000000000002DLL);
    sub_25F438210(&qword_27FD6E640, MEMORY[0x277CC95F0]);
    v38 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v38);

    MEMORY[0x25F8DD480](35, 0xE100000000000000);
    v48 = v31[4];
    v39 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v39);

    MEMORY[0x25F8DD480](91, 0xE100000000000000);
    MEMORY[0x25F8DD480](v31[2], v31[3]);
    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    v30 = v49;
    (*(v42 + 8))(v20, v16);
  }

  return v30;
}

uint64_t RegistryID.hash(into:)()
{
  v1 = sub_25F4A20A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_25F4A2C60();
  v12 = v0[2];
  v13 = v0[3];
  sub_25F4A2C60();
  MEMORY[0x25F8DDB20](v0[4]);
  v14 = type metadata accessor for RegistryID(0);
  sub_25F404B8C(v0 + *(v14 + 28), v9, &qword_27FD6E620, &qword_25F4A9820);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_25F4A3320();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_25F4A3320();
  sub_25F438210(&qword_27FD6E648, MEMORY[0x277CC95F0]);
  sub_25F4A2BE0();
  return (*(v2 + 8))(v5, v1);
}

uint64_t RegistryID.hashValue.getter()
{
  sub_25F4A3300();
  RegistryID.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F42FBE8()
{
  sub_25F4A3300();
  RegistryID.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F42FC2C()
{
  sub_25F4A3300();
  RegistryID.hash(into:)();
  return sub_25F4A3350();
}

uint64_t RuntimeRegistryLocation.file.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 RuntimeRegistryLocation.file.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

void __swiftcall RuntimeRegistryLocation.init(file:line:)(PreviewsMessagingOS::RuntimeRegistryLocation *__return_ptr retstr, PreviewsMessagingOS::FileID file, Swift::Int line)
{
  v3 = *(file.moduleName._countAndFlagsBits + 16);
  v4 = *(file.moduleName._countAndFlagsBits + 24);
  retstr->file.moduleName = *file.moduleName._countAndFlagsBits;
  retstr->file.fileName._countAndFlagsBits = v3;
  retstr->file.fileName._object = v4;
  retstr->line = file.moduleName._object;
}

uint64_t sub_25F42FD70(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1701734764;
  }

  else
  {
    v2 = 1701603686;
  }

  if (*a2)
  {
    v3 = 1701734764;
  }

  else
  {
    v3 = 1701603686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F42FDE8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42FE50()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F42FE9C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F42FF0C(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 1701734764;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_25F42FF34()
{
  if (*v0)
  {
    return 1701734764;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t RuntimeRegistryLocation.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F42FFA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v14 = 0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v10 = 1;
  v8 = v4;
  v9 = 0;
  sub_25F43AA5C(a1, v7);
  sub_25F438260();
  sub_25F4382B4();
  v5 = sub_25F4A28D0();
  sub_25F403404(v11, *(&v11 + 1));
  return v5;
}

uint64_t RuntimeRegistryLocation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for RuntimeRegistryLocation.Key;
  v5 = sub_25F438260();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4382B4();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v10 = v19;
    v9 = v20;
    v15 = &type metadata for RuntimeRegistryLocation.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v13 = v21;
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v10;
    a2[3] = v9;
    a2[4] = v13;
  }

  return result;
}

uint64_t sub_25F430214()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F43027C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7972747369676572;
  }

  else
  {
    v2 = 0x72656469766F7270;
  }

  if (*a2)
  {
    v3 = 0x7972747369676572;
  }

  else
  {
    v3 = 0x72656469766F7270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F430314()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F43039C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F430410()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4304A0(uint64_t *a1@<X8>)
{
  v2 = 0x72656469766F7270;
  if (*v1)
  {
    v2 = 0x7972747369676572;
  }

  *a1 = v2;
  a1[1] = 0xEF77656976657250;
}

uint64_t sub_25F4304E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F43A650();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4305B4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4306AC()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F430790()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F430884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A744();
  *a2 = result;
  return result;
}

void sub_25F4308B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x696D697263736964;
  v5 = 0xEF72656469766F72;
  v6 = 0x506E497865646E69;
  v7 = 0x4449656C62617473;
  if (v2 != 3)
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x72656469766F7270;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_25F430968()
{
  v1 = *v0;
  v2 = 0x696D697263736964;
  v3 = 0x506E497865646E69;
  v4 = 0x4449656C62617473;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656469766F7270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PreviewSpecification.Value.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E660, &qword_25F4A9830);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for RegistryID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreviewSpecification.Value(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v0;
  v14 = sub_25F438330();
  sub_25F438384();
  sub_25F4A25C0();
  sub_25F4383D8(v0, v13, type metadata accessor for PreviewSpecification.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48);
    v16 = *v15;
    v22 = *(v15 + 1);
    v23 = v16;
    v17 = *(v15 + 4);
    sub_25F4384E8(v13, v9, type metadata accessor for RegistryID);
    sub_25F4383D8(v9, v4, type metadata accessor for RegistryID);
    (*(v6 + 56))(v4, 0, 1, v5);
    *(&v30 + 1) = &type metadata for PreviewSpecification.Value.Key;
    v31 = v14;
    LOBYTE(v29) = 3;
    sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID);
    sub_25F4A2520();
    sub_25F3F21F4(v4, &qword_27FD6E660, &qword_25F4A9830);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v29 = v23;
    v30 = v22;
    v31 = v17;
    v27 = &type metadata for PreviewSpecification.Value.Key;
    v28 = v14;
    LOBYTE(v25) = 4;
    sub_25F438440();
    sub_25F4A2520();
    sub_25F403404(v29, *(&v29 + 1));
    sub_25F438780(v9, type metadata accessor for RegistryID);
    v18 = &v25;
  }

  else
  {
    v19 = v13[1];
    v20 = v13[2];
    v25 = *v13;
    v26 = v19;
    *(&v30 + 1) = &type metadata for PreviewSpecification.Value.Key;
    v31 = v14;
    LOBYTE(v29) = 1;
    sub_25F438494();
    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(&v29);
    v25 = v20;
    LOBYTE(v26) = 0;
    *(&v30 + 1) = &type metadata for PreviewSpecification.Value.Key;
    v31 = v14;
    LOBYTE(v29) = 2;
    sub_25F4A2520();
    v18 = &v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_25F430DD8(_BYTE *a1, BOOL *a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewSpecification.Value(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4383D8(a3, v9, type metadata accessor for PreviewSpecification.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for PreviewSpecification.Value;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48)];
    v13 = *(v12 + 1);
    v14 = *(v12 + 3);

    v11 = type metadata accessor for RegistryID;
  }

  result = sub_25F438780(v9, v11);
  *a2 = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t PreviewSpecification.Value.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PreviewSpecification.Value(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v22 - v10);
  v26 = &type metadata for PreviewSpecification.Value.Key;
  v12 = sub_25F438330();
  v27 = v12;
  LOBYTE(v25[0]) = 0;
  sub_25F438384();
  sub_25F4A2530();
  if (v2)
  {
    v13 = sub_25F4A25E0();
    (*(*(v13 - 8) + 8))(a1, v13);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v26 = &type metadata for PreviewSpecification.Value.Key;
    v27 = v12;
    if (v23)
    {
      LOBYTE(v25[0]) = 3;
      type metadata accessor for RegistryID(0);
      sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID);
      sub_25F4A2530();
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v26 = &type metadata for PreviewSpecification.Value.Key;
      v27 = v12;
      LOBYTE(v25[0]) = 4;
      sub_25F438440();
      sub_25F4A2530();
      v18 = sub_25F4A25E0();
      (*(*(v18 - 8) + 8))(a1, v18);
      __swift_destroy_boxed_opaque_existential_1(v25);
      swift_storeEnumTagMultiPayload();
      v19 = v9;
    }

    else
    {
      LOBYTE(v25[0]) = 1;
      sub_25F438494();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v17 = v23;
      v16 = v24;
      v26 = &type metadata for PreviewSpecification.Value.Key;
      v27 = v12;
      LOBYTE(v25[0]) = 2;
      sub_25F4A2530();
      v20 = sub_25F4A25E0();
      (*(*(v20 - 8) + 8))(a1, v20);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v21 = v28;
      *v11 = v17;
      v11[1] = v16;
      v11[2] = v21;
      swift_storeEnumTagMultiPayload();
      v19 = v11;
    }

    return sub_25F4384E8(v19, a2, type metadata accessor for PreviewSpecification.Value);
  }
}

uint64_t PreviewSpecification.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreviewSpecification.Value(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  PreviewSpecification.Value.init(propertyListValue:)(v9, v13);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  (*(v6 + 8))(a1, v5);
  return sub_25F4384E8(v13, a2, type metadata accessor for PreviewSpecification.Value);
}

uint64_t static PreviewSpecification.providerPreview(provider:indexInProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = a2;
  type metadata accessor for PreviewSpecification.Value(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static PreviewSpecification.registryPreview(stableID:location:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48));
  sub_25F4383D8(a1, a3, type metadata accessor for RegistryID);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  type metadata accessor for PreviewSpecification.Value(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t PreviewSpecification.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RegistryID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewSpecification.Value(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F4383D8(v1, v9, type metadata accessor for PreviewSpecification.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48);
    v11 = *(v10 + 1);
    v12 = *(v10 + 3);

    sub_25F4384E8(v9, v5, type metadata accessor for RegistryID);
    v13 = RegistryID.description.getter();
    sub_25F438780(v5, type metadata accessor for RegistryID);
    return v13;
  }

  else
  {
    v15 = *v9;
    v16 = v9[1];
    v17 = v9[2];
    v20 = v15;
    v21 = v16;
    MEMORY[0x25F8DD480](95, 0xE100000000000000);
    v19[1] = v17;
    v18 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v18);

    return v20;
  }
}

uint64_t sub_25F43182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreviewSpecification.Value(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  PreviewSpecification.Value.init(propertyListValue:)(v9, v13);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  (*(v6 + 8))(a1, v5);
  return sub_25F4384E8(v13, a2, type metadata accessor for PreviewSpecification.Value);
}

uint64_t PreviewPayload.renderEffects.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewPayload(0) + 20));
}

uint64_t PreviewPayload.renderEffects.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewPayload(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PreviewPayload.init(previewSpecification:renderEffects:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F4384E8(a1, a3, type metadata accessor for PreviewSpecification);
  result = type metadata accessor for PreviewPayload(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25F431B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x66457265646E6572;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x800000025F4B6140;
  }

  else
  {
    v5 = 0xED00007374636566;
  }

  if (*a2)
  {
    v6 = 0x66457265646E6572;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xED00007374636566;
  }

  else
  {
    v7 = 0x800000025F4B6140;
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

uint64_t sub_25F431C08()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F431C9C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F431D1C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F431DB8(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6140;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x66457265646E6572;
    v2 = 0xED00007374636566;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F431E08()
{
  if (*v0)
  {
    result = 0x66457265646E6572;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_25F431E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E898, &qword_25F4AB108);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8A0, &qword_25F4AB110);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v7 + 56);
  *(&v20 - v12) = 0;
  sub_25F4383D8(a1, &v20 + v14 - v12, type metadata accessor for PreviewSpecification);
  v15 = *(a1 + *(type metadata accessor for PreviewPayload(0) + 20));
  sub_25F404B8C(v13, v11, &qword_27FD6E8A0, &qword_25F4AB110);
  v16 = *v11;
  sub_25F4384E8(&v11[*(v7 + 56)], v5, type metadata accessor for PreviewSpecification);
  v17 = type metadata accessor for PreviewSpecification(0);
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  v22 = v16;
  v21 = 1;
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F438600();
  sub_25F438210(&qword_27FD6E6A0, type metadata accessor for PreviewSpecification);
  sub_25F4386A8();
  v18 = sub_25F4A28D0();
  sub_25F3F21F4(v5, &qword_27FD6E898, &qword_25F4AB108);
  sub_25F3F21F4(v13, &qword_27FD6E8A0, &qword_25F4AB110);
  return v18;
}

void PreviewPayload.init(propertyListValue:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreviewSpecification(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &type metadata for PreviewPayload.Key;
  v13 = sub_25F438600();
  v21 = v13;
  LOBYTE(v18) = 0;
  sub_25F438210(&qword_27FD6E6A0, type metadata accessor for PreviewSpecification);
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  if (v2)
  {
    (*(v5 + 16))(v8, a1, v4);
    sub_25F438654();
    sub_25F4A2950();

    (*(v5 + 8))(a1, v4);
    v14 = v19;
    v15 = v20;
    v16 = v17;
    *v17 = v18;
    *(v16 + 2) = v14;
    type metadata accessor for PreviewSpecification.Value(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v20 = &type metadata for PreviewPayload.Key;
    v21 = v13;
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F4386A8();
    sub_25F4A2530();
    (*(v5 + 8))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v15 = v22;
    v16 = v17;
    sub_25F4384E8(v12, v17, type metadata accessor for PreviewSpecification);
  }

  *(v16 + *(type metadata accessor for PreviewPayload(0) + 20)) = v15;
}

uint64_t PreviewPayload.init(providerPreviewPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  type metadata accessor for PreviewSpecification.Value(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PreviewPayload(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

uint64_t ProviderPreviewPayload.providerPayload.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ProviderPreviewPayload.providerName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

PreviewsMessagingOS::ProviderPreviewPayload __swiftcall ProviderPreviewPayload.init(providerPayload:previewID:renderEffects:)(PreviewsMessagingOS::ProviderPayload providerPayload, Swift::Int previewID, Swift::OpaquePointer renderEffects)
{
  v4 = *(providerPayload.providerName._countAndFlagsBits + 8);
  *v3 = *providerPayload.providerName._countAndFlagsBits;
  v3[1] = v4;
  v3[2] = providerPayload.providerName._object;
  v3[3] = previewID;
  result.providerPayload = providerPayload;
  result.renderEffects = renderEffects;
  result.previewID = previewID;
  return result;
}

uint64_t sub_25F432564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4977656976657270;
  v4 = 0xE900000000000044;
  if (v2 != 1)
  {
    v3 = 0x66457265646E6572;
    v4 = 0xED00007374636566;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x72656469766F7270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF64616F6C796150;
  }

  v7 = 0x4977656976657270;
  v8 = 0xE900000000000044;
  if (*a2 != 1)
  {
    v7 = 0x66457265646E6572;
    v8 = 0xED00007374636566;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x72656469766F7270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF64616F6C796150;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F432690()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F432750()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4327FC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4328B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A790();
  *a2 = result;
  return result;
}

void sub_25F4328E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64616F6C796150;
  v4 = 0xE900000000000044;
  v5 = 0x4977656976657270;
  if (v2 != 1)
  {
    v5 = 0x66457265646E6572;
    v4 = 0xED00007374636566;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72656469766F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F432964()
{
  v1 = 0x4977656976657270;
  if (*v0 != 1)
  {
    v1 = 0x66457265646E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_25F4329F4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F4387EC();
  sub_25F438494();
  sub_25F4386A8();
  v0 = sub_25F4A28C0();

  return v0;
}

uint64_t ProviderPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for ProviderPreviewPayload.Key;
  v5 = sub_25F4387EC();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F438494();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for ProviderPreviewPayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for ProviderPreviewPayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F4386A8();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v14);
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v11 = sub_25F4A25E0();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v13;
    a2[3] = v10;
  }

  return result;
}

uint64_t FileID.moduleName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FileID.fileName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FileID.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PreviewsMessagingOS::FileID __swiftcall FileID.init(moduleName:fileName:)(Swift::String moduleName, Swift::String fileName)
{
  *v2 = moduleName;
  v2[1] = fileName;
  result.fileName = fileName;
  result.moduleName = moduleName;
  return result;
}

uint64_t sub_25F432DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D614E656C6966;
  }

  else
  {
    v4 = 0x614E656C75646F6DLL;
  }

  if (v3)
  {
    v5 = 0xEA0000000000656DLL;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x656D614E656C6966;
  }

  else
  {
    v6 = 0x614E656C75646F6DLL;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA0000000000656DLL;
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

uint64_t sub_25F432EA8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F432F30()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F432FA4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F433034(uint64_t *a1@<X8>)
{
  v2 = 0x614E656C75646F6DLL;
  if (*v1)
  {
    v2 = 0x656D614E656C6966;
  }

  v3 = 0xEA0000000000656DLL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F433078()
{
  if (*v0)
  {
    result = 0x656D614E656C6966;
  }

  else
  {
    result = 0x614E656C75646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_25F4330D0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  return sub_25F4A25A0();
}

uint64_t FileID.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for FileID.Key;
  v5 = sub_25F43884C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = v16;
    v7 = v17;
    v14 = &type metadata for FileID.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
    a2[3] = v12;
  }

  return result;
}

uint64_t FileID.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x25F8DD480](47, 0xE100000000000000);
  MEMORY[0x25F8DD480](v1, v2);
  return v4;
}

uint64_t static FileID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25F4A3270();
    }
  }

  return result;
}

uint64_t FileID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25F4A2C60();

  return sub_25F4A2C60();
}

uint64_t FileID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4334E8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  return sub_25F4A25A0();
}

uint64_t sub_25F433538()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4335A0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25F4A2C60();

  return sub_25F4A2C60();
}

uint64_t sub_25F4335F0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F433654()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x25F8DD480](47, 0xE100000000000000);
  MEMORY[0x25F8DD480](v1, v2);
  return v4;
}

uint64_t sub_25F4336B4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25F4A3270();
    }
  }

  return result;
}

uint64_t RegistryPayload.location.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RegistryPayload(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
}

__n128 RegistryPayload.location.setter(__int128 *a1)
{
  v7 = a1[1];
  v8 = *a1;
  v2 = *(a1 + 4);
  v3 = v1 + *(type metadata accessor for RegistryPayload(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);

  result = v7;
  *v3 = v8;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  return result;
}

__n128 RegistryPayload.init(stableID:location:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = *a2;
  v4 = *(a2 + 4);
  sub_25F4384E8(a1, a3, type metadata accessor for RegistryID);
  v5 = a3 + *(type metadata accessor for RegistryPayload(0) + 20);
  result = v7;
  *v5 = v8;
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  return result;
}

uint64_t RegistryPayload.registryType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_25F433964(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v2 = 0x4449656C62617473;
  }

  if (*a2)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 0x4449656C62617473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F4339EC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F433A64()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F433AC0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F433B40(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C62617473;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_25F433B78()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x4449656C62617473;
  }
}

uint64_t sub_25F433BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E660, &qword_25F4A9830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E890, &qword_25F4AB100);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v7 + 56);
  *(&v25 - v12) = 0;
  sub_25F4383D8(a1, &v25 + v14 - v12, type metadata accessor for RegistryID);
  v15 = (a1 + *(type metadata accessor for RegistryPayload(0) + 20));
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  sub_25F404B8C(v13, v11, &qword_27FD6E890, &qword_25F4AB100);
  v21 = *v11;
  sub_25F4384E8(&v11[*(v7 + 56)], v5, type metadata accessor for RegistryID);
  v22 = type metadata accessor for RegistryID(0);
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  v31 = v21;
  v30 = 1;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  sub_25F4388C8();
  sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID);
  sub_25F438440();

  v23 = sub_25F4A28D0();
  sub_25F403404(v25, v26);
  sub_25F3F21F4(v5, &qword_27FD6E660, &qword_25F4A9830);
  sub_25F3F21F4(v13, &qword_27FD6E890, &qword_25F4AB100);
  return v23;
}

uint64_t RegistryPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RegistryID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v20 + 1) = &type metadata for RegistryPayload.Key;
  v9 = sub_25F4388C8();
  v21 = v9;
  LOBYTE(v19) = 0;
  sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID);
  sub_25F4A2530();
  if (v2)
  {
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v18[3] = &type metadata for RegistryPayload.Key;
    v18[4] = v9;
    LOBYTE(v18[0]) = 1;
    sub_25F438440();
    sub_25F4A2530();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v16 = v20;
    v17 = v19;
    v13 = v21;
    sub_25F4384E8(v8, a2, type metadata accessor for RegistryID);
    result = type metadata accessor for RegistryPayload(0);
    v14 = a2 + *(result + 20);
    v15 = v16;
    *v14 = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v13;
  }

  return result;
}

uint64_t sub_25F434184(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x66457265646E6572;
  }

  if (v3)
  {
    v5 = 0xED00007374636566;
  }

  else
  {
    v5 = 0x800000025F4B6190;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x66457265646E6572;
  }

  if (*a2)
  {
    v7 = 0x800000025F4B6190;
  }

  else
  {
    v7 = 0xED00007374636566;
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

uint64_t sub_25F43423C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4342D0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F434350()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4343EC(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6190;
  v3 = 0x66457265646E6572;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00007374636566;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F43443C()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x66457265646E6572;
  }

  *v0;
  return result;
}

uint64_t sub_25F4344C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F438924();
  sub_25F43AA08();
  sub_25F4386A8();
  return sub_25F4A28D0();
}

uint64_t MainPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[3] = &type metadata for MainPreviewPayload.Key;
  v9[4] = sub_25F438924();
  LOBYTE(v9[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F4386A8();
  sub_25F4A2580();
  if (v2)
  {
    v5 = sub_25F4A25E0();
    (*(*(v5 - 8) + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = sub_25F4A25E0();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    *a2 = v7;
  }

  return result;
}

uint64_t sub_25F4346E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64656B6E696CLL;
  if (v2 != 1)
  {
    v3 = 0x646564616F6CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1852399981;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x64656B6E696CLL;
  if (*a2 != 1)
  {
    v6 = 0x646564616F6CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1852399981;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
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

uint64_t sub_25F4347D4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F434868()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4348E8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F434978@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A7DC();
  *a2 = result;
  return result;
}

void sub_25F4349A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x64656B6E696CLL;
  if (v2 != 1)
  {
    v4 = 0x646564616F6CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1852399981;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_25F4349F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F43A6A4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F434ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000025F4B61C0;
  if (v2 == 1)
  {
    v5 = 0x800000025F4B61C0;
  }

  else
  {
    v3 = 0x6150656C646E7562;
    v5 = 0xEA00000000006874;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x6150656C646E7562;
    v4 = 0xEA00000000006874;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
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

uint64_t sub_25F434BC4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F434C78()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F434D18()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F434DC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A828();
  *a2 = result;
  return result;
}

void sub_25F434DF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x800000025F4B61C0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x6150656C646E7562;
    v4 = 0xEA00000000006874;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F434E68()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6150656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t CFunctionBundle.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F438994();
  sub_25F4389E8();
  result = sub_25F4A25C0();
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v10 = v1;
    v11 = v2;
    v8 = &type metadata for CFunctionBundle.Key;
    v9 = v4;
    v6 = 2;
  }

  else
  {
    v10 = v1;
    v11 = v2;
    v8 = &type metadata for CFunctionBundle.Key;
    v9 = v4;
    v6 = 1;
  }

  LOBYTE(v7[0]) = v6;
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t CFunctionBundle.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for CFunctionBundle.Key;
  v5 = sub_25F438994();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4389E8();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v14)
    {
      v17 = &type metadata for CFunctionBundle.Key;
      v18 = v5;
      if (v14 == 1)
      {
        LOBYTE(v16[0]) = 1;
        sub_25F4A2530();
        v8 = sub_25F4A25E0();
        (*(*(v8 - 8) + 8))(a1, v8);
        result = __swift_destroy_boxed_opaque_existential_1(v16);
        v9 = 0;
        v10 = v14;
        v11 = v15;
      }

      else
      {
        LOBYTE(v16[0]) = 2;
        sub_25F4A2530();
        v13 = sub_25F4A25E0();
        (*(*(v13 - 8) + 8))(a1, v13);
        result = __swift_destroy_boxed_opaque_existential_1(v16);
        v10 = v14;
        v11 = v15;
        v9 = 1;
      }
    }

    else
    {
      v12 = sub_25F4A25E0();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      v10 = 0;
      v11 = 0;
      v9 = 2;
    }

    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t CFunctionBundle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x25F8DDB20](0);
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x25F8DDB20](v3);

  return sub_25F4A2C60();
}

uint64_t CFunctionBundle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F4A3300();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x25F8DDB20](0);
      return sub_25F4A3350();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x25F8DDB20](v4);
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F435318()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F4A3300();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x25F8DDB20](0);
      return sub_25F4A3350();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x25F8DDB20](v4);
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4353A4()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x25F8DDB20](0);
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x25F8DDB20](v3);

  return sub_25F4A2C60();
}

uint64_t sub_25F43542C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F4A3300();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x25F8DDB20](0);
      return sub_25F4A3350();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x25F8DDB20](v4);
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t CFunctionPayload.bundle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_25F438A3C(v2, v3, v4);
}

uint64_t CFunctionPayload.bundle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_25F438A54(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t CFunctionPayload.functionName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CFunctionPayload.functionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CFunctionPayload.functionInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CFunctionPayload(0) + 24);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}