void *sub_2278F6454@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2278F64C4()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278F651C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2278F6598(uint64_t a1)
{
  *(v1 + 24) = xmmword_2278FFD70;
  v3 = *(a1 + 80);
  single_result = container_query_get_single_result();
  if (single_result)
  {
    *(v1 + 16) = single_result;
    *(v1 + 40) = a1;
  }

  else
  {
    v5 = *(a1 + 80);
    last_error = container_query_get_last_error();
    sub_2278F6AF8();
    swift_allocError();
    if (last_error)
    {
      sub_2278FE790(v7);
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 1;
      *(v7 + 24) = 2;
    }

    swift_willThrow();

    type metadata accessor for Container();
    swift_deallocPartialClassInstance();
  }

  return v1;
}

uint64_t Container.deinit()
{
  if (!*(v0 + 40))
  {
    v1 = *(v0 + 16);
    container_object_free();
  }

  sub_2278FA0EC();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t Container.__deallocating_deinit()
{
  if (!*(v0 + 40))
  {
    v1 = *(v0 + 16);
    container_object_free();
  }

  sub_2278FA0EC();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t Container.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = container_get_class();
  v5 = sub_2278F7CFC(v4);

  return sub_2278F6BC0(v5, a1);
}

uint64_t Container.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (container_get_path())
  {
    MEMORY[0x22AA9EAF0]();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_2278FF5B4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t Container.identifier.getter()
{
  v1 = *(v0 + 16);
  result = container_get_identifier();
  if (result)
  {

    return sub_2278FF5F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278F67EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = container_get_class();
  v5 = sub_2278F7CFC(v4);

  return sub_2278F6BC0(v5, a1);
}

uint64_t sub_2278F6830@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (container_get_path())
  {
    MEMORY[0x22AA9EAF0]();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_2278FF5B4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_2278F68C0()
{
  v1 = *(*v0 + 16);
  result = container_get_identifier();
  if (result)
  {

    return sub_2278FF5F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Container.description.getter()
{
  v1 = *(v0 + 16);
  result = container_copy_unlocalized_description();
  if (result)
  {
    v3 = result;
    v4 = sub_2278FF5F4();
    MEMORY[0x22AA9F0D0](v3, -1, -1);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278F6954()
{
  v1 = *(*v0 + 16);
  result = container_copy_unlocalized_description();
  if (result)
  {
    v3 = result;
    v4 = sub_2278FF5F4();
    MEMORY[0x22AA9F0D0](v3, -1, -1);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278F6A64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_2278F6AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_2278F6AF8()
{
  result = qword_27D7D88D0;
  if (!qword_27D7D88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D88D0);
  }

  return result;
}

void sub_2278F6B60(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2278F6BC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 2u)
  {
    if (result)
    {
      if (result == 1)
      {
        if (qword_27D7D8888 != -1)
        {
          v9 = a2;
          result = swift_once();
          a2 = v9;
        }

        v2 = &byte_27D7D88EC;
      }

      else
      {
        if (qword_27D7D8890 != -1)
        {
          v10 = a2;
          result = swift_once();
          a2 = v10;
        }

        v2 = &byte_27D7D88F8;
      }
    }

    else
    {
      if (qword_27D7D8880 != -1)
      {
        v8 = a2;
        result = swift_once();
        a2 = v8;
      }

      v2 = &byte_27D7D88E0;
    }
  }

  else if (result > 4u)
  {
    if (result == 5)
    {
      if (qword_27D7D88A0 != -1)
      {
        v12 = a2;
        result = swift_once();
        a2 = v12;
      }

      v2 = &byte_27D7D8914;
    }

    else
    {
      if (qword_27D7D88A8 != -1)
      {
        v14 = a2;
        result = swift_once();
        a2 = v14;
      }

      v2 = &byte_27D7D8920;
    }
  }

  else if (result == 3)
  {
    if (qword_28158F250 != -1)
    {
      v11 = a2;
      result = swift_once();
      a2 = v11;
    }

    v2 = &byte_28158F258;
  }

  else
  {
    if (qword_27D7D8898 != -1)
    {
      v13 = a2;
      result = swift_once();
      a2 = v13;
    }

    v2 = &byte_27D7D8904;
  }

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = *(v2 + 1);
  v7 = v2[8];
  *a2 = *v2;
  *(a2 + 8) = v7;
  *(a2 + 4) = v6;
  *(a2 + 9) = v5;
  *(a2 + 10) = v4;
  *(a2 + 11) = v3;
  return result;
}

uint64_t sub_2278F6E14()
{
  v1 = *v0;
  sub_2278FF724();
  MEMORY[0x22AA9EC80](v1);
  return sub_2278FF744();
}

uint64_t sub_2278F6E5C()
{
  v1 = *v0;
  sub_2278FF724();
  MEMORY[0x22AA9EC80](v1);
  return sub_2278FF744();
}

void sub_2278F6ED0()
{
  byte_27D7D88E0 = 0;
  byte_27D7D88E8 = 0x80;
  dword_27D7D88E4 = 2;
  *&byte_27D7D88E9 = 1;
  byte_27D7D88EB = 0;
}

uint64_t static Container.Attributes.app.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7D8880 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_27D7D88E4;
  v2 = byte_27D7D88E8;
  v3 = byte_27D7D88E9;
  v4 = byte_27D7D88EA;
  v5 = byte_27D7D88EB;
  *a1 = byte_27D7D88E0;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

void sub_2278F6F8C()
{
  byte_27D7D88EC = 0;
  dword_27D7D88F0 = 0;
  byte_27D7D88F4 = 1;
  *&byte_27D7D88F5 = 0;
  byte_27D7D88F7 = 1;
}

uint64_t static Container.Attributes.appData.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7D8888 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_27D7D88F0;
  v2 = byte_27D7D88F4;
  v3 = byte_27D7D88F5;
  v4 = byte_27D7D88F6;
  v5 = byte_27D7D88F7;
  *a1 = byte_27D7D88EC;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

void sub_2278F7040()
{
  byte_27D7D88F8 = 1;
  dword_27D7D88FC = 0;
  byte_27D7D8900 = 1;
  *&byte_27D7D8901 = 0;
  byte_27D7D8903 = 2;
}

uint64_t static Container.Attributes.pluginData.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7D8890 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_27D7D88FC;
  v2 = byte_27D7D8900;
  v3 = byte_27D7D8901;
  v4 = byte_27D7D8902;
  v5 = byte_27D7D8903;
  *a1 = byte_27D7D88F8;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

void sub_2278F70F8()
{
  byte_27D7D8904 = 1;
  dword_27D7D8908 = 0;
  byte_27D7D890C = 1;
  *&byte_27D7D890D = 256;
  byte_27D7D890F = 4;
}

uint64_t static Container.Attributes.appGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7D8898 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_27D7D8908;
  v2 = byte_27D7D890C;
  v3 = byte_27D7D890D;
  v4 = byte_27D7D890E;
  v5 = byte_27D7D890F;
  *a1 = byte_27D7D8904;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

void sub_2278F71B4()
{
  byte_28158F258 = 3;
  dword_28158F25C = 0;
  byte_28158F260 = 1;
  *&byte_28158F261 = 0;
  byte_28158F263 = 3;
}

uint64_t static Container.Attributes.daemon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28158F250 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_28158F25C;
  v2 = byte_28158F260;
  v3 = byte_28158F261;
  v4 = byte_28158F262;
  v5 = byte_28158F263;
  *a1 = byte_28158F258;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

void sub_2278F726C()
{
  byte_27D7D8914 = 1;
  byte_27D7D891C = 0x80;
  dword_27D7D8918 = 1;
  *&byte_27D7D891D = 1;
  byte_27D7D891F = 5;
}

uint64_t static Container.Attributes.system.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7D88A0 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_27D7D8918;
  v2 = byte_27D7D891C;
  v3 = byte_27D7D891D;
  v4 = byte_27D7D891E;
  v5 = byte_27D7D891F;
  *a1 = byte_27D7D8914;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

void sub_2278F7328()
{
  byte_27D7D8920 = 1;
  byte_27D7D8928 = 0x80;
  dword_27D7D8924 = 1;
  *&byte_27D7D8929 = 257;
  byte_27D7D892B = 6;
}

uint64_t static Container.Attributes.systemGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7D88A8 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = dword_27D7D8924;
  v2 = byte_27D7D8928;
  v3 = byte_27D7D8929;
  v4 = byte_27D7D892A;
  v5 = byte_27D7D892B;
  *a1 = byte_27D7D8920;
  *(a1 + 8) = v2;
  *(a1 + 4) = v1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  return result;
}

BOOL sub_2278F73F0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFLL;
  v3 = a2 & 0xFFFFFFFFFFLL;
  v4 = (a1 >> 38) & 3;
  if (v4)
  {
    if (v4 == 1)
    {
      if ((a2 & 0xC000000000) == 0x4000000000)
      {
        return a1 == a2;
      }

      return 0;
    }

    v6 = 0x8000000000;
    if (v2 == 0x8000000000 || (v6 = 0x8000000001, v2 == 0x8000000001))
    {
      if (v3 == v6)
      {
        return 1;
      }
    }

    else if (v3 == 0x8000000002)
    {
      return 1;
    }
  }

  else if (!(v3 >> 38))
  {
    if ((a1 & 0x100000000) != 0)
    {
      if ((a2 & 0x100000000) != 0)
      {
        return 1;
      }
    }

    else if ((a2 & 0x100000000) == 0 && a1 == a2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s24StorageContainersPrivate9ContainerC10AttributesV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 1) | (a1[8] << 32);
  v3 = a1[9];
  v4 = a1[10];
  v5 = a1[11];
  v6 = *(a2 + 1) | (a2[8] << 32);
  v7 = (v2 >> 38) & 3;
  if (!v7)
  {
    result = 0;
    if (((v6 >> 38) & 3) != 0)
    {
      return result;
    }

    if ((v2 & 0x100000000) != 0)
    {
      if ((v6 & 0x100000000) == 0)
      {
        return result;
      }
    }

    else
    {
      if ((v6 & 0x100000000) != 0)
      {
        return result;
      }

      a2[8];
      if (v2 != *(a2 + 1))
      {
        return result;
      }
    }

    goto LABEL_22;
  }

  if (v7 == 1)
  {
    result = 0;
    if (((v6 >> 38) & 3) == 1)
    {
      a2[8];
      v9 = v2 == *(a2 + 1);
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      return result;
    }

LABEL_22:
    if (((v3 ^ a2[9]) & 1) == 0 && ((v4 ^ a2[10]) & 1) == 0)
    {
      return v5 == a2[11];
    }

    return result;
  }

  v10 = v2 & 0xFFFFFFFFFFLL;
  v11 = 0x8000000000;
  if (v10 == 0x8000000000 || (v11 = 0x8000000001, v10 == 0x8000000001))
  {
    result = 0;
    v12 = v6 & 0xFFFFFFFFFFLL;
  }

  else
  {
    result = 0;
    v12 = v6 & 0xFFFFFFFFFFLL;
    v11 = 0x8000000002;
  }

  if (v12 == v11)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s10AttributesVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10AttributesVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2278F7650(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2278F76E0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s10AttributesV9OwnershipOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 5))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 4) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s10AttributesV9OwnershipOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 4) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2278F785C(uint64_t a1)
{
  v1 = *(a1 + 4) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

unsigned int *sub_2278F7890(unsigned int *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = (*result | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
  }

  else
  {
    v2 = (a2 - 2) | 0xFFFFFF8000000000;
  }

  *result = v2;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t _s10AttributesV11ProcessTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10AttributesV11ProcessTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2278F7A30()
{
  result = qword_27D7D8930;
  if (!qword_27D7D8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8930);
  }

  return result;
}

unint64_t sub_2278F7A88()
{
  result = qword_27D7D8938;
  if (!qword_27D7D8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8938);
  }

  return result;
}

unint64_t sub_2278F7AE0()
{
  result = qword_27D7D8940;
  if (!qword_27D7D8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8940);
  }

  return result;
}

uint64_t _s14ContainerClassOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14ContainerClassOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2278F7CA8()
{
  result = qword_27D7D8948;
  if (!qword_27D7D8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8948);
  }

  return result;
}

uint64_t sub_2278F7CFC(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0xD && ((0x1A4Bu >> v1))
  {
    return byte_227900216[v1];
  }

  sub_2278FF674();
  MEMORY[0x22AA9EB30](0xD00000000000001CLL, 0x8000000227901B00);
  type metadata accessor for container_class_t(0);
  sub_2278FF694();
  result = sub_2278FF6A4();
  __break(1u);
  return result;
}

uint64_t Container.EraseError.description.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      v4 = 0x6E776F6E6B6E753CLL;
      v5 = *(v0 + 16);

      if (strerror(v1))
      {
        v6 = sub_2278FF5F4();
        v8 = v7;
      }

      else
      {
        v8 = 0xEF3E726F72726520;
        v6 = 0x6E776F6E6B6E753CLL;
      }

      sub_2278FF674();

      v11 = sub_2278FF6B4();
      MEMORY[0x22AA9EB30](v11);

      MEMORY[0x22AA9EB30](8233, 0xE200000000000000);
      MEMORY[0x22AA9EB30](v6, v8);

      MEMORY[0x22AA9EB30](8250, 0xE200000000000000);
      if (v2)
      {
        v4 = v3;
      }

      else
      {
        sub_2278F7FBC(v1, v3, 0, 1);
        v2 = 0xEE003E6874617020;
      }

      MEMORY[0x22AA9EB30](v4, v2);

      return 0xD000000000000013;
    }

    else if (v2 | v3 | v1)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v9 = *v0;
    container_get_error_description();
    return sub_2278FF5F4();
  }
}

uint64_t sub_2278F7FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Container.erase()()
{
  v1 = *(v0 + 16);
  v2 = container_delete_all_container_content();
  if (v2 != 1)
  {
    v3 = v2;
    sub_2278F8314();
    swift_allocError();
    v5 = 1;
    if (v3 == 55)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    if (v3 == 55)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (v3 != 21)
    {
      v5 = v6;
    }

    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    if (v3 == 21)
    {
      v7 = 2;
    }

    *v4 = v5;
    *(v4 + 24) = v7;
    swift_willThrow();
  }
}

BOOL _s24StorageContainersPrivate9ContainerC10EraseErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v23[0] = *a1;
  v23[1] = v4;
  v23[2] = v5;
  v24 = v6;
  v25 = v8;
  v26 = v7;
  v27 = v9;
  v28 = v10;
  if (!v6)
  {
    if (!v10)
    {
      sub_2278F8494(v23);
      return v3 == v8;
    }

    goto LABEL_20;
  }

  if (v6 != 1)
  {
    if (v5 | v4 | v3)
    {
      if (v10 == 2 && v8 == 1 && !(v9 | v7))
      {
        goto LABEL_23;
      }
    }

    else if (v10 == 2 && !(v9 | v7 | v8))
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v10 != 1)
  {
    v12 = v7;
    v13 = v9;
    v14 = v10;

    LOBYTE(v10) = v14;
    v9 = v13;
    v7 = v12;
LABEL_20:
    v15 = v8;
LABEL_21:
    sub_2278F847C(v15, v7, v9, v10);
    sub_2278F8494(v23);
    return 0;
  }

  if (v3 != v8)
  {
    v16 = v8;
LABEL_25:
    sub_2278F847C(v16, v7, v9, 1);
    v15 = v3;
    v7 = v4;
    v9 = v5;
    LOBYTE(v10) = 1;
    goto LABEL_21;
  }

  if (!v5)
  {
    v17 = v7;
    v18 = v9;

    sub_2278F847C(v8, v17, v18, 1);
    sub_2278F847C(v3, v4, 0, 1);
    sub_2278F8494(v23);
    if (!v18)
    {
      return 1;
    }

    sub_2278F7FBC(v8, v17, v18, 1);
    return 0;
  }

  if (!v9)
  {
    v19 = v7;
    sub_2278F847C(v8, v7, 0, 1);
    v16 = v8;
    v7 = v19;
    v9 = 0;
    goto LABEL_25;
  }

  if (v4 == v7 && v5 == v9)
  {
    sub_2278F847C(v8, v4, v5, 1);
    sub_2278F847C(v3, v4, v5, 1);
LABEL_23:
    sub_2278F8494(v23);
    return 1;
  }

  v20 = v7;
  v21 = v9;
  v22 = sub_2278FF6C4();
  sub_2278F847C(v8, v20, v21, 1);
  sub_2278F847C(v3, v4, v5, 1);
  sub_2278F8494(v23);
  result = 1;
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2278F8314()
{
  result = qword_27D7D8950;
  if (!qword_27D7D8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8950);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24StorageContainersPrivate9ContainerC10EraseErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2278F83C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2278F8408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2278F8450(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2278F847C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_2278F8494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D8958, &qword_227900360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t Container.Owned.__allocating_init(of:persona:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Container.Owned.init(of:persona:)(a1, a2);
  return v4;
}

uint64_t Container.Owned.init(of:persona:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 10))
  {
    sub_2278F8DF4(*a2, *(a2 + 8));
    sub_2278F6AF8();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 2;
    *(v7 + 24) = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  v8 = *(a1 + 11);
  v9 = *(a1 + 11);
  type metadata accessor for Query();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 6;
  sub_2278F8E2C(v6, v5);
  result = container_query_create();
  if (result)
  {
    *(v10 + 80) = result;
    v12 = qword_2279003C0[v8];
    container_query_set_class();
    container_query_set_include_other_owners();
    if (v5)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
LABEL_12:
          container_query_operation_set_flags();
          _container_query_operation_set_private_flags();
          type metadata accessor for Container();
          swift_allocObject();
          v16 = sub_2278F6598(v10);
          if (!v3)
          {
            *(v4 + 16) = v16;
            return v4;
          }

LABEL_13:
          type metadata accessor for Container.Owned();
          swift_deallocPartialClassInstance();
          return v4;
        }

LABEL_11:
        sub_2278FF5C4();

        container_query_set_persona_unique_string();

        v15 = *(v10 + 80);
        goto LABEL_12;
      }

      v13 = MEMORY[0x277D85EC8];
    }

    else
    {
      v13 = MEMORY[0x277D85ED0];
    }

    v14 = *v13;
    sub_2278FF5F4();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t Container.Owned.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Container.Owned.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Container.Owned.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  v4 = container_get_class();
  v5 = sub_2278F7CFC(v4);

  return sub_2278F6BC0(v5, a1);
}

uint64_t Container.Owned.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  if (container_get_path())
  {
    MEMORY[0x22AA9EAF0]();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_2278FF5B4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t Container.Owned.identifier.getter()
{
  v1 = *(*(v0 + 16) + 16);
  result = container_get_identifier();
  if (result)
  {

    return sub_2278FF5F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278F88E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(*v1 + 16) + 16);
  v4 = container_get_class();
  v5 = sub_2278F7CFC(v4);

  return sub_2278F6BC0(v5, a1);
}

uint64_t sub_2278F892C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(*v1 + 16) + 16);
  if (container_get_path())
  {
    MEMORY[0x22AA9EAF0]();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_2278FF5B4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_2278F89C0()
{
  v1 = *(*(*v0 + 16) + 16);
  result = container_get_identifier();
  if (result)
  {

    return sub_2278FF5F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Container.Owned.revokeAccess()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  if (v2 == 1)
  {
    sub_2278FA0EC();
    v2 = *(v1 + 32);
  }

  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    *(v1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Container.Owned.withScopedAccess(required:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2278F8ACC, 0, 0);
}

uint64_t sub_2278F8ACC()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2278F8B70;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);

  return Container.withScopedAccess(required:_:)(v5, v3, v4);
}

uint64_t sub_2278F8B70()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_2278F8C88()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 32);
  if (v2 == 1)
  {
    sub_2278FA0EC();
    v2 = *(v1 + 32);
  }

  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    *(v1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2278F8D24(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 48) = a1;
  *(v4 + 32) = *v3;
  return MEMORY[0x2822009F8](sub_2278F8D50, 0, 0);
}

uint64_t sub_2278F8D50()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2278F8FA8;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);

  return Container.withScopedAccess(required:_:)(v5, v3, v4);
}

uint64_t sub_2278F8DF4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_2278F8E2C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_2278F8E40()
{
  v1 = *(v0 + 16);
  if (!v1[4])
  {
    v5 = v1[2];
    v6 = container_copy_sandbox_token();
    if (v6)
    {
      v7 = v6;
      v8 = sandbox_extension_consume();
      if (v8 == -1)
      {
        v9 = MEMORY[0x22AA9EAE0]();
        sub_2278F8F54();
        swift_allocError();
        *v10 = v9;
        *(v10 + 4) = 0;
        swift_willThrow();
        MEMORY[0x22AA9F0D0](v7, -1, -1);
        return;
      }

      v1[3] = v8;
      MEMORY[0x22AA9F0D0](v7, -1, -1);
    }
  }

  v2 = v1[4];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v4;
  }
}

unint64_t sub_2278F8F54()
{
  result = qword_27D7D8990;
  if (!qword_27D7D8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8990);
  }

  return result;
}

uint64_t Container.Part.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 == 1)
      {
        if (v1)
        {
          sub_2278FF674();

          v8 = 0xD000000000000020;
          MEMORY[0x22AA9EB30](v2, v1);
          v5 = 0x7473696C702ELL;
          v6 = 0xE600000000000000;
LABEL_21:
          MEMORY[0x22AA9EB30](v5, v6);
          return v8;
        }

        return 0xD000000000000020;
      }

      else
      {
        if (v1)
        {
          sub_2278FF674();

          v4 = 0xD00000000000001BLL;
          goto LABEL_19;
        }

        return 0xD00000000000001BLL;
      }
    }

    else
    {
      if (v1)
      {
        sub_2278FF674();

        v4 = 0xD000000000000022;
        goto LABEL_19;
      }

      return 0xD000000000000022;
    }
  }

  else if (*(v0 + 16) > 4u)
  {
    if (v3 == 5)
    {
      result = 0xD000000000000010;
      if (v1)
      {
        sub_2278FF674();

        v8 = 0xD000000000000010;
LABEL_20:
        MEMORY[0x22AA9EB30](v2, v1);
        v5 = 47;
        v6 = 0xE100000000000000;
        goto LABEL_21;
      }
    }

    else
    {
      return 0x6E6961746E6F633CLL;
    }
  }

  else if (v3 == 3)
  {
    if (v1)
    {
      sub_2278FF674();

      v4 = 0xD000000000000017;
LABEL_19:
      v8 = v4;
      goto LABEL_20;
    }

    return 0xD000000000000017;
  }

  else
  {
    if (v1)
    {
      sub_2278FF674();

      v4 = 0xD000000000000016;
      goto LABEL_19;
    }

    return 0xD000000000000016;
  }

  return result;
}

uint64_t _s24StorageContainersPrivate9ContainerC4PartO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (*(a1 + 16) > 4u)
    {
      if (v4 == 5)
      {
        if (v7 == 5)
        {
          if (v3)
          {
            if (v6)
            {
              if (v2 == v5 && v3 == v6)
              {
                sub_2278F9CD8(*a1, v3, 5u);
                sub_2278F9CD8(v2, v3, 5u);
                sub_2278F9CF0(v2, v3, 5u);
                v8 = v2;
                v9 = v3;
                v10 = 5;
                goto LABEL_51;
              }

              v28 = *a1;
              v29 = sub_2278FF6C4();
              sub_2278F9CD8(v5, v6, 5u);
              sub_2278F9CD8(v2, v3, 5u);
              sub_2278F9CF0(v2, v3, 5u);
              sub_2278F9CF0(v5, v6, 5u);
              return (v29 & 1) != 0;
            }

            sub_2278F9CD8(*a2, 0, 5u);
            sub_2278F9CD8(v5, 0, 5u);
            sub_2278F9CD8(v2, v3, 5u);
            sub_2278F9CF0(v2, v3, 5u);
          }

          else
          {
            v19 = *(a2 + 8);

            sub_2278F9CD8(v5, v6, 5u);
            sub_2278F9CD8(v2, 0, 5u);
            sub_2278F9CF0(v2, 0, 5u);
            sub_2278F9CF0(v5, v6, 5u);
            if (!v6)
            {
              return 1;
            }
          }

          v12 = v5;
          v13 = v6;
          v14 = 5;
          goto LABEL_48;
        }
      }

      else if (v7 == 6 && (v6 | v5) == 0)
      {
        sub_2278F9CF0(*a1, v3, 6u);
        v8 = 0;
        v9 = 0;
        v10 = 6;
        goto LABEL_51;
      }
    }

    else if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 == v5 && v3 == v6)
            {
              sub_2278F9CD8(*a1, v3, 3u);
              sub_2278F9CD8(v2, v3, 3u);
              sub_2278F9CF0(v2, v3, 3u);
              v8 = v2;
              v9 = v3;
              v10 = 3;
LABEL_51:
              sub_2278F9CF0(v8, v9, v10);
              return 1;
            }

            v26 = *a1;
            v27 = sub_2278FF6C4();
            sub_2278F9CD8(v5, v6, 3u);
            sub_2278F9CD8(v2, v3, 3u);
            sub_2278F9CF0(v2, v3, 3u);
            sub_2278F9CF0(v5, v6, 3u);
            return (v27 & 1) != 0;
          }

          sub_2278F9CD8(*a2, 0, 3u);
          sub_2278F9CD8(v5, 0, 3u);
          sub_2278F9CD8(v2, v3, 3u);
          sub_2278F9CF0(v2, v3, 3u);
          goto LABEL_69;
        }

        v18 = *(a2 + 8);

        sub_2278F9CD8(v5, v6, 3u);
        sub_2278F9CD8(v2, 0, 3u);
        sub_2278F9CF0(v2, 0, 3u);
        sub_2278F9CF0(v5, v6, 3u);
        if (v6)
        {
LABEL_69:
          v12 = v5;
          v13 = v6;
          v14 = 3;
          goto LABEL_48;
        }

        return 1;
      }
    }

    else if (v7 == 4)
    {
      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_2278F9CD8(*a1, v3, 4u);
            sub_2278F9CD8(v2, v3, 4u);
            sub_2278F9CF0(v2, v3, 4u);
            v8 = v2;
            v9 = v3;
            v10 = 4;
            goto LABEL_51;
          }

          v30 = *a1;
          v31 = sub_2278FF6C4();
          sub_2278F9CD8(v5, v6, 4u);
          sub_2278F9CD8(v2, v3, 4u);
          sub_2278F9CF0(v2, v3, 4u);
          sub_2278F9CF0(v5, v6, 4u);
          return (v31 & 1) != 0;
        }

        sub_2278F9CD8(*a2, 0, 4u);
        sub_2278F9CD8(v5, 0, 4u);
        sub_2278F9CD8(v2, v3, 4u);
        sub_2278F9CF0(v2, v3, 4u);
      }

      else
      {
        v20 = *(a2 + 8);

        sub_2278F9CD8(v5, v6, 4u);
        sub_2278F9CD8(v2, 0, 4u);
        sub_2278F9CF0(v2, 0, 4u);
        sub_2278F9CF0(v5, v6, 4u);
        if (!v6)
        {
          return 1;
        }
      }

      v12 = v5;
      v13 = v6;
      v14 = 4;
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_2278F9CD8(*a1, v3, 0);
            sub_2278F9CD8(v2, v3, 0);
            sub_2278F9CF0(v2, v3, 0);
            v8 = v2;
            v9 = v3;
            v10 = 0;
            goto LABEL_51;
          }

          v32 = *a1;
          v33 = sub_2278FF6C4();
          sub_2278F9CD8(v5, v6, 0);
          sub_2278F9CD8(v2, v3, 0);
          sub_2278F9CF0(v2, v3, 0);
          sub_2278F9CF0(v5, v6, 0);
          return (v33 & 1) != 0;
        }

        sub_2278F9CD8(*a2, 0, 0);
        sub_2278F9CD8(v5, 0, 0);
        sub_2278F9CD8(v2, v3, 0);
        sub_2278F9CF0(v2, v3, 0);
      }

      else
      {
        v21 = *(a2 + 8);

        sub_2278F9CD8(v5, v6, 0);
        sub_2278F9CD8(v2, 0, 0);
        sub_2278F9CF0(v2, 0, 0);
        sub_2278F9CF0(v5, v6, 0);
        if (!v6)
        {
          return 1;
        }
      }

      v12 = v5;
      v13 = v6;
      v14 = 0;
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_2278F9CD8(*a1, v3, 2u);
            sub_2278F9CD8(v2, v3, 2u);
            sub_2278F9CF0(v2, v3, 2u);
            v8 = v2;
            v9 = v3;
            v10 = 2;
            goto LABEL_51;
          }

          v24 = *a1;
          v25 = sub_2278FF6C4();
          sub_2278F9CD8(v5, v6, 2u);
          sub_2278F9CD8(v2, v3, 2u);
          sub_2278F9CF0(v2, v3, 2u);
          sub_2278F9CF0(v5, v6, 2u);
          return (v25 & 1) != 0;
        }

        sub_2278F9CD8(*a2, 0, 2u);
        sub_2278F9CD8(v5, 0, 2u);
        sub_2278F9CD8(v2, v3, 2u);
        sub_2278F9CF0(v2, v3, 2u);
      }

      else
      {
        v17 = *(a2 + 8);

        sub_2278F9CD8(v5, v6, 2u);
        sub_2278F9CD8(v2, 0, 2u);
        sub_2278F9CF0(v2, 0, 2u);
        sub_2278F9CF0(v5, v6, 2u);
        if (!v6)
        {
          return 1;
        }
      }

      v12 = v5;
      v13 = v6;
      v14 = 2;
LABEL_48:
      sub_2278F9CF0(v12, v13, v14);
      return 0;
    }

LABEL_47:
    sub_2278F9CD8(*a2, *(a2 + 8), v7);
    sub_2278F9CD8(v2, v3, v4);
    sub_2278F9CF0(v2, v3, v4);
    v12 = v5;
    v13 = v6;
    v14 = v7;
    goto LABEL_48;
  }

  if (v7 != 1)
  {
    goto LABEL_47;
  }

  if (!v3)
  {
    v16 = *(a2 + 8);

    sub_2278F9CD8(v5, v6, 1u);
    sub_2278F9CD8(v2, 0, 1u);
    sub_2278F9CF0(v2, 0, 1u);
    sub_2278F9CF0(v5, v6, 1u);
    if (!v6)
    {
      return 1;
    }

    goto LABEL_65;
  }

  if (!v6)
  {
    sub_2278F9CD8(*a2, 0, 1u);
    sub_2278F9CD8(v5, 0, 1u);
    sub_2278F9CD8(v2, v3, 1u);
    sub_2278F9CF0(v2, v3, 1u);
LABEL_65:
    v12 = v5;
    v13 = v6;
    v14 = 1;
    goto LABEL_48;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_2278F9CD8(*a1, v3, 1u);
    sub_2278F9CD8(v2, v3, 1u);
    sub_2278F9CF0(v2, v3, 1u);
    v8 = v2;
    v9 = v3;
    v10 = 1;
    goto LABEL_51;
  }

  v22 = *a1;
  v23 = sub_2278FF6C4();
  sub_2278F9CD8(v5, v6, 1u);
  sub_2278F9CD8(v2, v3, 1u);
  sub_2278F9CF0(v2, v3, 1u);
  sub_2278F9CF0(v5, v6, 1u);
  result = 1;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24StorageContainersPrivate9ContainerC4PartO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2278F9C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2278F9C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_2278F9CB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2278F9CD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_2278F9CF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24StorageContainersPrivate9ContainerC7PersonaO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2278F9D2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2278F9D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_2278F9DD8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t Container.__allocating_init(of:identifier:persona:options:part:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = *(a1 + 11);
  v9 = *a4;
  v10 = *a6;
  v11 = *(a6 + 16);
  if (a3)
  {
    v17 = *a6;
    v18 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D89E0, &qword_2279005B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2279005A0;
    *(inited + 32) = a2;
    v14 = inited + 32;
    *(inited + 40) = v7;
    v7 = sub_2278F9F30(inited);
    swift_setDeallocating();
    sub_2278FA098(v14);
    v10 = v17;
    v9 = v18;
  }

  v21 = v9;
  v19 = v10;
  v20 = v11;
  type metadata accessor for Query();
  swift_allocObject();
  v15 = sub_2278FE890(v8, v7, 0, &v21, a5, &v19);
  type metadata accessor for Container();
  swift_allocObject();
  return sub_2278F6598(v15);
}

uint64_t sub_2278F9F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D8A50, &qword_2279005B8);
    v3 = sub_2278FF654();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2278FF724();

      sub_2278FF5D4();
      result = sub_2278FF744();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2278FF6C4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_2278FA0EC()
{
  if (*(v0 + 24) != -1)
  {
    if (sandbox_extension_release() == -1)
    {
      if (qword_27D7D88B0 != -1)
      {
        swift_once();
      }

      v1 = sub_2278FF564();
      __swift_project_value_buffer(v1, qword_27D7D9AD0);
      v2 = v0;

      oslog = sub_2278FF544();
      v3 = sub_2278FF624();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v14 = v5;
        *v4 = 136315394;
        v6 = *(v2 + 16);
        v7 = container_copy_unlocalized_description();

        if (v7)
        {
          v8 = sub_2278FF5F4();
          v10 = v9;
          MEMORY[0x22AA9F0D0](v7, -1, -1);
          v11 = sub_2278FB3C0(v8, v10, &v14);

          *(v4 + 4) = v11;
          *(v4 + 12) = 1024;
          *(v4 + 14) = MEMORY[0x22AA9EAE0](v12);
          _os_log_impl(&dword_2278F5000, oslog, v3, "Failed to revoke access to container %s; error = %{darwin.errno}d", v4, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v5);
          MEMORY[0x22AA9F0D0](v5, -1, -1);
          MEMORY[0x22AA9F0D0](v4, -1, -1);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 24) = -1;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Container.grantAccess(required:)(Swift::Bool required)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (!v4)
    {
LABEL_3:
      *(v1 + 32) = v5;
      return;
    }
  }

  else
  {
    sub_2278FADB4(required, 0);
    if (v2)
    {
      return;
    }

    v6 = *(v1 + 32);
    v4 = __CFADD__(v6, 1);
    v5 = v6 + 1;
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall Container.revokeAccess()()
{
  v1 = *(v0 + 32);
  if (v1 == 1)
  {
    sub_2278FA0EC();
    v1 = *(v0 + 32);
  }

  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    *(v0 + 32) = v3;
  }

  else
  {
    __break(1u);
  }
}

void Container.withScopedAccess(required:_:)(char a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + 32);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (1)
    {
      *(v2 + 32) = v6;
      a1 = a2();
      if (!v3)
      {
        break;
      }

      v7 = *(v2 + 32);
      if (v7 == 1)
      {
        sub_2278FA0EC();
        v7 = *(v2 + 32);
      }

      v5 = v7 != 0;
      v8 = v7 - 1;
      if (v5)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_8:
      v9 = a2;
      sub_2278FADB4(a1 & 1, 0);
      if (v3)
      {
        return;
      }

      v10 = *(v2 + 32);
      a2 = v9;
      v5 = __CFADD__(v10, 1);
      v6 = v10 + 1;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = *(v2 + 32);
  if (v11 == 1)
  {
    sub_2278FA0EC();
    v11 = *(v2 + 32);
  }

  v5 = v11 != 0;
  v8 = v11 - 1;
  if (v5)
  {
LABEL_16:
    *(v2 + 32) = v8;
  }

  else
  {
    __break(1u);
  }
}

void Container.withScopedAccess(required:_:)(char a1, void (*a2)(char *), char a3)
{
  v5 = v3;
  v9 = sub_2278FF5B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v17 = *(v5 + 32);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = __CFADD__(v17, 1);
  for (i = v17 + 1; !v18; i = v24 + 1)
  {
    *(v5 + 32) = i;
    v20 = *(v5 + 16);
    if (!container_get_path())
    {
      goto LABEL_19;
    }

    MEMORY[0x22AA9EAF0]();
    (*(v10 + 32))(v16, v14, v9);
    a1 = a3;
    a2(v16);
    if (!v4)
    {
      goto LABEL_13;
    }

    v21 = *(v10 + 8);
    v10 += 8;
    v21(v16, v9);
    v22 = *(v5 + 32);
    if (v22 == 1)
    {
      a1 = v5;
      sub_2278FA0EC();
      v22 = *(v5 + 32);
    }

    v18 = v22 != 0;
    v23 = v22 - 1;
    if (v18)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_9:
    sub_2278FADB4(a1 & 1, 0);
    if (v4)
    {
      return;
    }

    v24 = *(v5 + 32);
    v18 = __CFADD__(v24, 1);
  }

  __break(1u);
LABEL_13:
  (*(v10 + 8))(v16, v9);
  v25 = *(v5 + 32);
  if (v25 == 1)
  {
    sub_2278FA0EC();
    v25 = *(v5 + 32);
  }

  v18 = v25 != 0;
  v23 = v25 - 1;
  if (!v18)
  {
    __break(1u);
LABEL_19:
    sub_2278FF6A4();
    __break(1u);
    return;
  }

LABEL_17:
  *(v5 + 32) = v23;
}

uint64_t Container.withScopedAccess(required:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = sub_2278FF5B4();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278FA768, 0, 0);
}

void sub_2278FA768()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    return;
  }

  sub_2278FADB4(*(v0 + 88), 0);
  v16 = *(v1 + 32);
  v3 = __CFADD__(v16, 1);
  v4 = v16 + 1;
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = *(v0 + 32);
  *(v1 + 32) = v4;
  v6 = *(v5 + 16);
  if (container_get_path())
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 16);
    MEMORY[0x22AA9EAF0]();
    (*(v10 + 32))(v8, v7, v9);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_2278FA990;
    v14 = *(v0 + 64);
    v15 = *(v0 + 24);

    v17(v14);
  }

  else
  {
    sub_2278FF6A4();
  }
}

uint64_t sub_2278FA990()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2278FAB58;
  }

  else
  {
    v3 = sub_2278FAAA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2278FAAA4()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[8], v0[5]);
  v2 = *(v1 + 32);
  if (v2 == 1)
  {
    v3 = v0[4];
    sub_2278FA0EC();
    v2 = *(v3 + 32);
  }

  v4 = v2 != 0;
  v5 = v2 - 1;
  if (v4)
  {
    v7 = v0[7];
    v6 = v0[8];
    *(v0[4] + 32) = v5;

    v8 = v0[1];

    v8();
  }

  else
  {
    __break(1u);
  }
}

void sub_2278FAB58()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[8], v0[5]);
  v2 = *(v1 + 32);
  if (v2 == 1)
  {
    v3 = v0[4];
    sub_2278FA0EC();
    v2 = *(v3 + 32);
  }

  v4 = v2 != 0;
  v5 = v2 - 1;
  if (v4)
  {
    *(v0[4] + 32) = v5;
    v6 = v0[10];
    v8 = v0[7];
    v7 = v0[8];

    v9 = v0[1];

    v9();
  }

  else
  {
    __break(1u);
  }
}

unint64_t Container.AccessError.description.getter()
{
  if (*(v0 + 4) == 1)
  {
    return 0xD00000000000004BLL;
  }

  if (strerror(*v0))
  {
    v2 = sub_2278FF5F4();
    v4 = v3;
  }

  else
  {
    v4 = 0xEF3E726F72726520;
    v2 = 0x6E776F6E6B6E753CLL;
  }

  sub_2278FF674();

  v5 = sub_2278FF6B4();
  MEMORY[0x22AA9EB30](v5);

  MEMORY[0x22AA9EB30](8233, 0xE200000000000000);
  MEMORY[0x22AA9EB30](v2, v4);

  return 0xD00000000000002BLL;
}

BOOL static Container.AccessError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_2278FAD78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_2278FADB4(char a1, char a2)
{
  v5 = *(v2 + 16);
  result = container_copy_sandbox_token();
  if (result)
  {
    v7 = result;
    v8 = sandbox_extension_consume();
    if (v8 == -1)
    {
      v10 = MEMORY[0x22AA9EAE0]();
      sub_2278F8F54();
      swift_allocError();
      *v11 = v10;
      *(v11 + 4) = 0;
      swift_willThrow();
    }

    else if ((a2 & 1) == 0)
    {
      *(v2 + 24) = v8;
    }

    return MEMORY[0x22AA9F0D0](v7, -1, -1);
  }

  else if (a1)
  {
    sub_2278F8F54();
    swift_allocError();
    *v9 = 0;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2278FAE9C(uint64_t result)
{
  v3 = *v1;
  v4 = *(v3 + 32);
  if (v4)
  {
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (!v5)
    {
LABEL_3:
      *(v3 + 32) = v6;
      return result;
    }
  }

  else
  {
    result = sub_2278FADB4(result & 1, 0);
    if (v2)
    {
      return result;
    }

    v7 = *(v3 + 32);
    v5 = __CFADD__(v7, 1);
    v6 = v7 + 1;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_2278FAEF4()
{
  v1 = *v0;
  v2 = *(v1 + 32);
  if (v2 == 1)
  {
    sub_2278FA0EC();
    v2 = *(v1 + 32);
  }

  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    *(v1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2278FAF80(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278FB030;

  return Container.withScopedAccess(required:_:)(a1, a2, a3);
}

uint64_t sub_2278FB030()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of Container.ScopesAccess.withScopedAccess(required:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2278FB030;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t _s11AccessErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11AccessErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_2278FB33C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2278FB358(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2278FB3C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2278FB48C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2278FB9B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2278FB48C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2278FB598(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2278FF684();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2278FB598(uint64_t a1, unint64_t a2)
{
  v4 = sub_2278FB5E4(a1, a2);
  sub_2278FB714(&unk_283AF4AE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2278FB5E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2278FB800(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2278FF684();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2278FF604();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2278FB800(v10, 0);
        result = sub_2278FF664();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2278FB714(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2278FB874(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2278FB800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D8960, &qword_2279006B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2278FB874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D8960, &qword_2279006B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2278FB9B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Containers.init(of:identifiers:includeUnowned:persona:options:part:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = *(a6 + 16);
  v12 = *(a1 + 11);
  v21 = *a4;
  v19 = *a6;
  v20 = v11;
  type metadata accessor for Query();
  swift_allocObject();
  v13 = sub_2278FE890(v12, a2, a3, &v21, a5, &v19);
  v14 = *(v13 + 80);
  count_results = container_query_count_results();
  v16 = *(v13 + 80);
  result = container_query_get_last_error();
  if (result)
  {
    sub_2278F6AF8();
    swift_allocError();
    sub_2278FE790(v18);
    swift_willThrow();
  }

  else
  {
    *a7 = v13;
    a7[1] = count_results;
  }

  return result;
}

uint64_t Containers.subscript.getter()
{
  v1 = *(*v0 + 80);
  result = _container_query_get_result_at_index();
  if (result)
  {
    type metadata accessor for Container();
    v3 = swift_allocObject();
    *(v3 + 24) = xmmword_2278FFD70;
    result = container_object_copy();
    if (result)
    {
      *(v3 + 16) = result;
      *(v3 + 40) = 0;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Containers.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2278FBBC8(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  v4 = Containers.subscript.getter();
  *a1 = v4;
  a1[1] = v4;
  return sub_2278FBC10;
}

uint64_t *sub_2278FBC18@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v3 >= v5)
  {
    a2[2] = *v2;
    a2[3] = v3;
    *a2 = v4;
    a2[1] = v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2278FBC50@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v2;
}

uint64_t *sub_2278FBC70@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2278FBCA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2278FDEC0(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2278FBCD8(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_2278FBD18(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2278FBD34(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2278FBD50(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_2278FBD6C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2278FBD84(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_2278FBD9C()
{
  v8 = 0;
  v1 = *(*(v0 + 16) + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2278FC340;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2278FC348;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2278FC39C;
  aBlock[3] = &block_descriptor;
  v4 = _Block_copy(aBlock);

  _container_query_get_next_result_sync();
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_2278FBEF8(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for Container();
  v3 = swift_allocObject();
  *(v3 + 24) = xmmword_2278FFD70;
  result = container_object_copy();
  if (result)
  {
    *(v3 + 16) = result;
    *(v3 + 40) = 0;
    v5 = *a2;
    *a2 = v3;

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278FBF70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2278FBFA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2278FBD9C();
  *a1 = result;
  return result;
}

uint64_t Containers.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for Containers.ContainersIterator();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
}

uint64_t sub_2278FC024@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for Containers.ContainersIterator();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_2278FC0C4()
{
  result = qword_28158F330;
  if (!qword_28158F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158F330);
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

uint64_t sub_2278FC1F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2278FC258(uint64_t *a1, int a2)
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

uint64_t sub_2278FC2A0(uint64_t result, int a2, int a3)
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

unint64_t sub_2278FC2EC()
{
  result = qword_27D7D8988;
  if (!qword_27D7D8988)
  {
    type metadata accessor for Containers.ContainersIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8988);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2278FC3CC(void *result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v2 = result;
    if (a2)
    {
      v4 = sub_2278FD1B4(a2, 0);
      v5 = sub_2278FD420(&v6, (v4 + 4), a2, v2);

      if (v5 == a2)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

void *sub_2278FC460(void *result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v2 = result;
    if (a2)
    {
      v4 = sub_2278FD1B4(a2, 0);
      v5 = sub_2278FD23C(&v6, (v4 + 4), a2, v2);

      if (v5 == a2)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t Containers.AppMigration.EntitlementError.hashValue.getter()
{
  v1 = *v0;
  sub_2278FF724();
  MEMORY[0x22AA9EC80](v1);
  return sub_2278FF744();
}

const char *sub_2278FC5AC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = sub_2278FF584();
  v6 = MEMORY[0x22AA9F180](a2);
  if (v5 != v6)
  {
    *a3 = 1;
    return (v5 == v6);
  }

  v7 = v6;
  result = xpc_string_get_string_ptr(a2);
  if (result)
  {
    v9 = sub_2278FF5F4();
    sub_2278FD5FC(&v11, v9, v10);

    v6 = v7;
    return (v5 == v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2278FC64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_2278FC6A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  count_results = container_query_count_results();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = *(a1 + 80);
  v13[4] = sub_2278FE5F0;
  v13[5] = v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2278FC92C;
  v13[3] = &block_descriptor_36;
  v8 = _Block_copy(v13);

  LOBYTE(v7) = container_query_iterate_results_sync();
  _Block_release(v8);
  if ((v7 & 1) != 0 || (v9 = *(a1 + 80), !container_query_get_last_error()))
  {
    swift_beginAccess();
    v12 = *(v6 + 16);

    *a2 = a1;
    a2[1] = count_results;
    a2[2] = v12;
  }

  else
  {
    sub_2278F6AF8();
    swift_allocError();
    sub_2278FE790(v10);
    swift_willThrow();
  }

  return result;
}

uint64_t sub_2278FC844(uint64_t a1, uint64_t a2)
{
  result = container_get_identifier();
  if (result)
  {
    v4 = sub_2278FF5F4();
    v6 = v5;
    swift_beginAccess();
    v7 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2278FD0A8(0, *(v7 + 2) + 1, 1, v7);
      *(a2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2278FD0A8((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v4;
    *(v11 + 5) = v6;
    *(a2 + 16) = v7;
    swift_endAccess();
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278FC92C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

double Containers.AppMigration.init(of:persona:options:part:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = *(a1 + 11);
  v8 = *a2;
  v9 = a2[1];
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = sub_2278FDF94();
  if (v5)
  {
    sub_2278F8DF4(v8, v9);
    sub_2278F9CF0(v11, v10, v12);
  }

  else
  {
    v15 = v13;
    *&v20 = v8;
    *(&v20 + 1) = v9;
    *&v18 = v11;
    *(&v18 + 1) = v10;
    LOBYTE(v19) = v12;
    type metadata accessor for Query();
    swift_allocObject();
    v16 = sub_2278FE890(v21, v15, 0, &v20, a3, &v18);
    sub_2278FC6A4(v16, &v18);
    result = *&v18;
    v17 = v19;
    *a5 = v18;
    *(a5 + 16) = v17;
  }

  return result;
}

uint64_t Containers.AppMigration.subscript.getter()
{
  v1 = *(*v0 + 80);
  result = _container_query_get_result_at_index();
  if (result)
  {
    type metadata accessor for Container();
    v3 = swift_allocObject();
    *(v3 + 24) = xmmword_2278FFD70;
    result = container_object_copy();
    if (result)
    {
      *(v3 + 16) = result;
      *(v3 + 40) = 0;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Containers.AppMigration.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *v2;
    v9 = (v5 + 40);
    while (1)
    {
      v10 = *(v9 - 1) == a1 && *v9 == a2;
      if (v10 || (sub_2278FF6C4() & 1) != 0)
      {
        break;
      }

      ++v7;
      v9 += 2;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_2278FF674();

    v14[0] = a1;
    v14[1] = a2;
    v8 = v14;
    MEMORY[0x22AA9EB30](0xD00000000000002CLL, 0x8000000227901E80);
    sub_2278FF6A4();
    __break(1u);
  }

  v11 = v8[10];
  result = _container_query_get_result_at_index();
  if (result)
  {
    type metadata accessor for Container();
    v13 = swift_allocObject();
    *(v13 + 24) = xmmword_2278FFD70;
    result = container_object_copy();
    if (result)
    {
      *(v13 + 16) = result;
      *(v13 + 40) = 0;
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Containers.AppMigration.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2278FCC80(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  v4 = Containers.AppMigration.subscript.getter();
  *a1 = v4;
  a1[1] = v4;
  return sub_2278FBC10;
}

uint64_t *sub_2278FCCC8@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result[1];
  if (v3 < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v2[2];
  a2[2] = *v2;
  a2[3] = v3;
  a2[4] = v6;
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2278FCD38@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v2;
}

uint64_t sub_2278FCD80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2278FDEC4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t Containers.AppMigration.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for Containers.ContainersIterator();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
}

uint64_t sub_2278FCE0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];

  type metadata accessor for Containers.ContainersIterator();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2278FCE68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = v3[2];
  return sub_2278FD23C(a1, a2, a3, *v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Containers.AppMigration.grantPermanentAccess()()
{
  v1 = *v0;

  while (1)
  {
    v13 = 0;
    v2 = *(v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = &v13;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2278FC340;
    *(v4 + 24) = v3;
    aBlock[4] = sub_2278FE25C;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2278FC39C;
    aBlock[3] = &block_descriptor_0;
    v5 = _Block_copy(aBlock);

    _container_query_get_next_result_sync();
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      break;
    }

    v6 = v13;

    if (!v6)
    {

      return;
    }

    v7 = *(v6 + 16);
    v8 = container_copy_sandbox_token();
    if (v8)
    {
      v9 = v8;
      if (sandbox_extension_consume() == -1)
      {
        v10 = MEMORY[0x22AA9EAE0]();
        sub_2278F8F54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 4) = 0;
        swift_willThrow();
        MEMORY[0x22AA9F0D0](v9, -1, -1);

        return;
      }

      MEMORY[0x22AA9F0D0](v9, -1, -1);
    }
  }

  __break(1u);
}

char *sub_2278FD0A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D89E0, &qword_2279005B0);
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

void *sub_2278FD1B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D89D0, qword_227900B10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2278FD23C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for Containers.ContainersIterator();
  result = swift_allocObject();
  v9 = 0;
  *(result + 16) = a4;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v15 = result;
      v16 = a1;
      v9 = 0;
      while (1)
      {
        v18 = 0;
        v10 = *(a4 + 80);
        v11 = swift_allocObject();
        *(v11 + 16) = &v18;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_2278FE6B4;
        *(v12 + 24) = v11;
        aBlock[4] = sub_2278FE6B0;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2278FC39C;
        aBlock[3] = &block_descriptor_19;
        v13 = _Block_copy(aBlock);

        _container_query_get_next_result_sync();
        _Block_release(v13);
        LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

        if (v10)
        {
          break;
        }

        v14 = v18;

        if (!v14)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v9++) = v14;
        if (a3 == v9)
        {
          v9 = a3;
LABEL_9:
          result = v15;
          a1 = v16;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a1 = result;
    return v9;
  }

  return result;
}

uint64_t sub_2278FD420(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Containers.ContainersIterator();
  result = swift_allocObject();
  v9 = 0;
  *(result + 16) = a4;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v15 = result;
      v16 = a1;
      v9 = 0;
      while (1)
      {
        v18 = 0;
        v10 = *(a4 + 80);
        v11 = swift_allocObject();
        *(v11 + 16) = &v18;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_2278FE6B4;
        *(v12 + 24) = v11;
        aBlock[4] = sub_2278FE6B0;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2278FC39C;
        aBlock[3] = &block_descriptor_30;
        v13 = _Block_copy(aBlock);

        _container_query_get_next_result_sync();
        _Block_release(v13);
        LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

        if (v10)
        {
          break;
        }

        v14 = v18;

        if (!v14)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v9++) = v14;
        if (a3 == v9)
        {
          v9 = a3;
LABEL_9:
          result = v15;
          a1 = v16;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a1 = result;
    return v9;
  }

  return result;
}

uint64_t sub_2278FD5FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2278FF724();
  sub_2278FF5D4();
  v9 = sub_2278FF744();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2278FF6C4() & 1) != 0)
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

    sub_2278FD9AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2278FD74C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D8A50, &qword_2279005B8);
  result = sub_2278FF644();
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
      sub_2278FF724();
      sub_2278FF5D4();
      result = sub_2278FF744();
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

uint64_t sub_2278FD9AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2278FD74C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2278FDB2C();
      goto LABEL_16;
    }

    sub_2278FDC88(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2278FF724();
  sub_2278FF5D4();
  result = sub_2278FF744();
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

      result = sub_2278FF6C4();
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
  result = sub_2278FF6D4();
  __break(1u);
  return result;
}

void *sub_2278FDB2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D8A50, &qword_2279005B8);
  v2 = *v0;
  v3 = sub_2278FF634();
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

uint64_t sub_2278FDC88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D8A50, &qword_2279005B8);
  result = sub_2278FF644();
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
      sub_2278FF724();

      sub_2278FF5D4();
      result = sub_2278FF744();
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

uint64_t sub_2278FDEC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_2278FDF94()
{
  v1 = xpc_copy_entitlement_for_self();
  if (!v1)
  {
    sub_2278FE5F8();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return v0;
  }

  v0 = v1;
  v15 = MEMORY[0x277D84FA0];
  v14 = 0;
  v2 = MEMORY[0x22AA9F180]();
  if (sub_2278FF574() == v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = &v14;
    *(v5 + 24) = &v15;
    v6 = swift_allocObject();
    v3 = sub_2278FE65C;
    *(v6 + 16) = sub_2278FE65C;
    *(v6 + 24) = v5;
    v13[4] = sub_2278FE664;
    v13[5] = v6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2278FC64C;
    v13[3] = &block_descriptor_45;
    v7 = _Block_copy(v13);

    xpc_array_apply(v0, v7);
    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      if (v15[2])
      {
        swift_unknownObjectRelease();
        v0 = v15;
        sub_2278FE64C(v3);
        return v0;
      }

      sub_2278FE5F8();
      swift_allocError();
      v10 = 2;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    if (sub_2278FF584() != v2)
    {
      v3 = 0;
      v14 = 1;
LABEL_8:
      sub_2278FE5F8();
      swift_allocError();
      v10 = 1;
LABEL_9:
      *v9 = v10;
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_2278FE64C(v3);
      return v0;
    }

    result = xpc_string_get_string_ptr(v0);
    if (result)
    {
      v11 = sub_2278FF5F4();
      sub_2278FD5FC(v13, v11, v12);

      v3 = 0;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2278FE25C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2278FE2A4()
{
  result = qword_27D7D8998;
  if (!qword_27D7D8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D8998);
  }

  return result;
}

unint64_t sub_2278FE2FC()
{
  result = qword_27D7D89A0;
  if (!qword_27D7D89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D89A0);
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

uint64_t sub_2278FE408(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2278FE450(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s12AppMigrationV16EntitlementErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s12AppMigrationV16EntitlementErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2278FE5F8()
{
  result = qword_27D7D89E8;
  if (!qword_27D7D89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D89E8);
  }

  return result;
}

uint64_t sub_2278FE64C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2278FE664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_2278FE6B8()
{
  v0 = sub_2278FF564();
  __swift_allocate_value_buffer(v0, qword_27D7D9AD0);
  __swift_project_value_buffer(v0, qword_27D7D9AD0);
  return sub_2278FF554();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2278FE790@<X0>(uint64_t a1@<X8>)
{
  result = container_error_get_type();
  if (result <= 114)
  {
    if (result == 21)
    {
      v5 = 0;
      v4 = 0;
      v6 = 2;
      result = 1;
      goto LABEL_16;
    }

    if (result == 55)
    {
      result = 0;
      v5 = 0;
      v4 = 0;
      v6 = 2;
      goto LABEL_16;
    }

LABEL_13:
    v5 = 0;
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  if (result == 115)
  {
    v5 = 0;
    v4 = 0;
    v6 = 2;
    result = 3;
    goto LABEL_16;
  }

  if (result == 161)
  {
    v5 = 0;
    v4 = 0;
    v6 = 2;
    result = 4;
    goto LABEL_16;
  }

  if (result != 127)
  {
    goto LABEL_13;
  }

  posix_errno = container_error_get_posix_errno();
  if (container_error_get_path())
  {
    v5 = sub_2278FF5F4();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  result = posix_errno;
  v6 = 1;
LABEL_16:
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2278FE890(char a1, uint64_t a2, char a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  v49 = *a4;
  v10 = *a4;
  v50 = *a6;
  v11 = *(a6 + 16);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 56) = v50;
  *(v6 + 40) = v10;
  *(v6 + 72) = v11;

  v12 = *(&v49 + 1);
  sub_2278F8E2C(v49, *(&v49 + 1));
  v14 = *(&v50 + 1);
  v13 = v50;
  sub_2278F9CD8(v50, *(&v50 + 1), v11);
  result = container_query_create();
  if (!result)
  {
    goto LABEL_50;
  }

  *(v6 + 80) = result;
  v16 = qword_227900CF0[a1];
  container_query_set_class();
  if (!a2)
  {
    goto LABEL_17;
  }

  v47 = a1;
  v48 = v50;
  LODWORD(v50) = v11;
  empty = xpc_array_create_empty();
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 56);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_11:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = (*(a2 + 48) + ((v23 << 10) | (16 * v24)));
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_2278FF5C4();

      v29 = xpc_string_create((v28 + 32));

      xpc_array_append_value(empty, v29);

      result = swift_unknownObjectRelease();
      if (!v20)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(a2 + 56 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_11;
    }
  }

  is_user_container = container_class_is_user_container(qword_227900CF0[v47]);
  v31 = *(v6 + 80);
  if (is_user_container)
  {
    container_query_set_identifiers();
  }

  else
  {
    container_query_set_group_identifiers();
  }

  v11 = v50;
  v14 = *(&v50 + 1);
  v13 = v48;
  v12 = *(&v49 + 1);
  swift_unknownObjectRelease();
LABEL_17:
  v32 = *(v6 + 80);
  container_query_set_include_other_owners();
  if (!v12)
  {
    v33 = MEMORY[0x277D85ED0];
    goto LABEL_23;
  }

  if (v12 == 1)
  {
    v33 = MEMORY[0x277D85EC8];
LABEL_23:
    v34 = *v33;
    sub_2278FF5F4();
    goto LABEL_24;
  }

  if (v12 != 2)
  {
LABEL_24:
    v35 = *(v6 + 80);
    sub_2278FF5C4();

    container_query_set_persona_unique_string();
  }

  v36 = *(a5 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = (a5 + 32);
    do
    {
      v40 = *v38++;
      v39 = v40;
      if (v40 > 3)
      {
        if (v39 == 4)
        {
          v41 = 0x800000000;
LABEL_40:
          v37 |= v41 | 0x100000000;
          goto LABEL_28;
        }

        if (v39 != 5)
        {
LABEL_36:
          if (v39)
          {
            v41 = 0x4000000000;
          }

          else
          {
            v41 = 0x8000000000;
          }

          goto LABEL_40;
        }

        v37 |= 0x8000000000000uLL;
      }

      else if (v39 == 2)
      {
        v37 |= 1uLL;
      }

      else
      {
        if (v39 != 3)
        {
          goto LABEL_36;
        }

        v37 |= 0x100000000uLL;
      }

LABEL_28:
      --v36;
    }

    while (v36);
  }

  v42 = *(v6 + 80);
  container_query_operation_set_flags();
  if (v11 != 6 || v14 | v13)
  {
    sub_2278F9CD8(v13, v14, v11);
    sub_2278F9CF0(0, 0, 6u);
    sub_2278F9CF0(v13, v14, v11);
    if (v11 > 5)
    {
      v45 = *(v6 + 80);
      container_query_operation_set_part();
    }

    else
    {
      v43 = *(v6 + 80);
      container_query_operation_set_part();
      if (v14)
      {
        v44 = *(v6 + 80);
        sub_2278FF5C4();
        sub_2278F9CF0(v13, v14, v11);
        container_query_operation_set_part_domain();
      }
    }
  }

  else
  {
    sub_2278F9CF0(0, 0, 6u);
    sub_2278F9CF0(0, 0, 6u);
  }

  v46 = *(v6 + 80);
  _container_query_operation_set_private_flags();
  return v6;
}

uint64_t Query.deinit()
{
  v1 = *(v0 + 80);
  container_query_free();
  v2 = *(v0 + 24);

  sub_2278F8DF4(*(v0 + 40), *(v0 + 48));
  sub_2278F9CF0(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t Query.__deallocating_deinit()
{
  v1 = *(v0 + 80);
  container_query_free();
  v2 = *(v0 + 24);

  sub_2278F8DF4(*(v0 + 40), *(v0 + 48));
  sub_2278F9CF0(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t Query.QueryError.description.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      v4 = 0x6E776F6E6B6E753CLL;
      v5 = *(v0 + 16);

      if (strerror(v1))
      {
        v6 = sub_2278FF5F4();
        v8 = v7;
      }

      else
      {
        v8 = 0xEF3E726F72726520;
        v6 = 0x6E776F6E6B6E753CLL;
      }

      sub_2278FF674();

      v13 = sub_2278FF6B4();
      MEMORY[0x22AA9EB30](v13);

      MEMORY[0x22AA9EB30](8233, 0xE200000000000000);
      MEMORY[0x22AA9EB30](v6, v8);

      MEMORY[0x22AA9EB30](8250, 0xE200000000000000);
      if (v2)
      {
        v4 = v3;
      }

      else
      {
        sub_2278F7FBC(v1, v3, 0, 1);
        v2 = 0xEE003E6874617020;
      }

      MEMORY[0x22AA9EB30](v4, v2);

      return 0xD000000000000013;
    }

    else
    {
      v11 = v2 | v3;
      if (v2 | v3 | v1)
      {
        if (v1 == 1 && v11 == 0)
        {
          return 0xD000000000000022;
        }

        else if (v1 != 2 || v11)
        {
          if (v1 != 3 || v11)
          {
            return 0xD000000000000035;
          }

          else
          {
            return 0xD000000000000038;
          }
        }

        else
        {
          return 0xD00000000000003ELL;
        }
      }

      else
      {
        return 0xD00000000000001BLL;
      }
    }
  }

  else
  {
    v9 = *v0;
    container_get_error_description();
    return sub_2278FF5F4();
  }
}

BOOL _s24StorageContainersPrivate5QueryC0D5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v24[0] = *a1;
  v24[1] = v4;
  v24[2] = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v28 = v9;
  v29 = v10;
  if (!v6)
  {
    if (!v10)
    {
      sub_2278FF4BC(v24);
      return v3 == v8;
    }

    goto LABEL_40;
  }

  if (v6 != 1)
  {
    v12 = v5 | v4;
    if (!(v5 | v4 | v3))
    {
      if (v10 == 2 && !(v9 | v7 | v8))
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v3 != 1 || v12)
    {
      if (v3 != 2 || v12)
      {
        if (v3 != 3 || v12)
        {
          if (v10 != 2 || v8 != 4)
          {
            goto LABEL_40;
          }
        }

        else if (v10 != 2 || v8 != 3)
        {
          goto LABEL_40;
        }
      }

      else if (v10 != 2 || v8 != 2)
      {
        goto LABEL_40;
      }
    }

    else if (v10 != 2 || v8 != 1)
    {
      goto LABEL_40;
    }

    if (!(v9 | v7))
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (v10 != 1)
  {
    v13 = v7;
    v14 = v9;
    v15 = v10;

    LOBYTE(v10) = v15;
    v9 = v14;
    v7 = v13;
LABEL_40:
    v17 = v8;
    goto LABEL_41;
  }

  if (v3 != v8)
  {
    v16 = v8;
LABEL_28:
    sub_2278F847C(v16, v7, v9, 1);
    v17 = v3;
    v7 = v4;
    v9 = v5;
    LOBYTE(v10) = 1;
LABEL_41:
    sub_2278F847C(v17, v7, v9, v10);
    sub_2278FF4BC(v24);
    return 0;
  }

  if (!v5)
  {
    v18 = v7;
    v19 = v9;

    sub_2278F847C(v8, v18, v19, 1);
    sub_2278F847C(v3, v4, 0, 1);
    sub_2278FF4BC(v24);
    if (!v19)
    {
      return 1;
    }

    sub_2278F7FBC(v8, v18, v19, 1);
    return 0;
  }

  if (!v9)
  {
    v20 = v7;
    sub_2278F847C(v8, v7, 0, 1);
    v16 = v8;
    v7 = v20;
    v9 = 0;
    goto LABEL_28;
  }

  if (v4 == v7 && v5 == v9)
  {
    sub_2278F847C(v8, v4, v5, 1);
    sub_2278F847C(v3, v4, v5, 1);
LABEL_39:
    sub_2278FF4BC(v24);
    return 1;
  }

  v21 = v7;
  v22 = v9;
  v23 = sub_2278FF6C4();
  sub_2278F847C(v8, v21, v22, 1);
  sub_2278F847C(v3, v4, v5, 1);
  sub_2278FF4BC(v24);
  result = 1;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Query.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for Query.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2278FF44C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2278FF468(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24StorageContainersPrivate5QueryC0D5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_2278FF4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D8AC0, &unk_227900CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}