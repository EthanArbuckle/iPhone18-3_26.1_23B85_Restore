unint64_t sub_1A98F03D8()
{
  result = qword_1EB3B5260;
  if (!qword_1EB3B5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5260);
  }

  return result;
}

unint64_t sub_1A98F042C()
{
  result = qword_1EB3B5268;
  if (!qword_1EB3B5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5268);
  }

  return result;
}

unint64_t sub_1A98F0480()
{
  result = qword_1EB3B5278;
  if (!qword_1EB3B5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5278);
  }

  return result;
}

uint64_t sub_1A98F04D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A98F051C()
{
  result = qword_1EB3B5288;
  if (!qword_1EB3B5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5288);
  }

  return result;
}

unint64_t sub_1A98F0570()
{
  result = qword_1EB3B5298;
  if (!qword_1EB3B5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5298);
  }

  return result;
}

unint64_t sub_1A98F05C4()
{
  result = qword_1EB3B52A0;
  if (!qword_1EB3B52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52A0);
  }

  return result;
}

unint64_t sub_1A98F0618()
{
  result = qword_1EB3B52A8;
  if (!qword_1EB3B52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52A8);
  }

  return result;
}

unint64_t sub_1A98F066C()
{
  result = qword_1EB3B52B0;
  if (!qword_1EB3B52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52B0);
  }

  return result;
}

unint64_t sub_1A98F06C0()
{
  result = qword_1EB3B52B8;
  if (!qword_1EB3B52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52B8);
  }

  return result;
}

unint64_t sub_1A98F0714()
{
  result = qword_1EB3B52C8;
  if (!qword_1EB3B52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52C8);
  }

  return result;
}

unint64_t sub_1A98F0768()
{
  result = qword_1EB3B52D0;
  if (!qword_1EB3B52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52D0);
  }

  return result;
}

uint64_t sub_1A98F07BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A98F04D4(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98F0858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A98F08E0()
{
  result = qword_1EB3B5358;
  if (!qword_1EB3B5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5358);
  }

  return result;
}

void sub_1A98F09A4()
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v0 <= 0x3F)
  {
    sub_1A9976230();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SFAirDropSend.Transfer.State(319);
      if (v2 <= 0x3F)
      {
        sub_1A97D8914(319, &qword_1EB3AC508);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SFAirDropClient.Identifier();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SFAirDropSend.Request();
            if (v5 <= 0x3F)
            {
              sub_1A97D8914(319, &qword_1EB3AB718);
              if (v6 <= 0x3F)
              {
                type metadata accessor for SFAirDrop.NetworkMetrics();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A98F0AE0()
{
  sub_1A98F0C0C();
  if (v0 <= 0x3F)
  {
    sub_1A98F0C94();
    if (v1 <= 0x3F)
    {
      sub_1A98F0D20(319);
      if (v2 <= 0x3F)
      {
        sub_1A97D91D4(319, &qword_1EB3ABB40, &qword_1EB3B1798, &qword_1A99929A8);
        if (v3 <= 0x3F)
        {
          sub_1A98F0E58();
          if (v4 <= 0x3F)
          {
            sub_1A97D91D4(319, &qword_1EB3ABB20, &qword_1EB3B1E20, &qword_1A99A4860);
            if (v5 <= 0x3F)
            {
              sub_1A98F0E88();
              if (v6 <= 0x3F)
              {
                sub_1A98F0EFC();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A98F0C0C()
{
  if (!qword_1EB3AB708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    type metadata accessor for SFAirDrop.DeclineAction();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB3AB708);
    }
  }
}

void sub_1A98F0C94()
{
  if (!qword_1EB3AB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1DF8, &unk_1A9994A30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB710);
    }
  }
}

void sub_1A98F0D20(uint64_t a1)
{
  if (!qword_1EB3AB770)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    type metadata accessor for SFAirDrop.DeclineAction();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AB770);
    }
  }
}

ValueMetadata *sub_1A98F0E58()
{
  result = qword_1EB3AB978;
  if (!qword_1EB3AB978)
  {
    result = &type metadata for SFAirDrop.ContactRequest;
    atomic_store(&type metadata for SFAirDrop.ContactRequest, &qword_1EB3AB978);
  }

  return result;
}

void sub_1A98F0E88()
{
  if (!qword_1EB3AC690)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(255);
    type metadata accessor for SFAirDropSend.Failure();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC690);
    }
  }
}

void sub_1A98F0EFC()
{
  if (!qword_1EB3AC688)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC688);
    }
  }
}

unint64_t sub_1A98F1040()
{
  result = qword_1EB3B5378;
  if (!qword_1EB3B5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5378);
  }

  return result;
}

unint64_t sub_1A98F1098()
{
  result = qword_1EB3B5380;
  if (!qword_1EB3B5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5380);
  }

  return result;
}

unint64_t sub_1A98F10F0()
{
  result = qword_1EB3B5388;
  if (!qword_1EB3B5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5388);
  }

  return result;
}

unint64_t sub_1A98F1148()
{
  result = qword_1EB3B5390;
  if (!qword_1EB3B5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5390);
  }

  return result;
}

unint64_t sub_1A98F11A0()
{
  result = qword_1EB3B5398;
  if (!qword_1EB3B5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5398);
  }

  return result;
}

unint64_t sub_1A98F11F8()
{
  result = qword_1EB3B53A0;
  if (!qword_1EB3B53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53A0);
  }

  return result;
}

unint64_t sub_1A98F1250()
{
  result = qword_1EB3B53A8;
  if (!qword_1EB3B53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53A8);
  }

  return result;
}

unint64_t sub_1A98F12A8()
{
  result = qword_1EB3B53B0;
  if (!qword_1EB3B53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53B0);
  }

  return result;
}

unint64_t sub_1A98F1300()
{
  result = qword_1EB3B53B8;
  if (!qword_1EB3B53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53B8);
  }

  return result;
}

unint64_t sub_1A98F1358()
{
  result = qword_1EB3B53C0;
  if (!qword_1EB3B53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53C0);
  }

  return result;
}

unint64_t sub_1A98F13B0()
{
  result = qword_1EB3B53C8;
  if (!qword_1EB3B53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53C8);
  }

  return result;
}

unint64_t sub_1A98F1408()
{
  result = qword_1EB3B53D0;
  if (!qword_1EB3B53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53D0);
  }

  return result;
}

unint64_t sub_1A98F1460()
{
  result = qword_1EB3B53D8;
  if (!qword_1EB3B53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53D8);
  }

  return result;
}

unint64_t sub_1A98F14B8()
{
  result = qword_1EB3B53E0;
  if (!qword_1EB3B53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53E0);
  }

  return result;
}

unint64_t sub_1A98F1510()
{
  result = qword_1EB3B53E8;
  if (!qword_1EB3B53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53E8);
  }

  return result;
}

unint64_t sub_1A98F1568()
{
  result = qword_1EB3B53F0;
  if (!qword_1EB3B53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53F0);
  }

  return result;
}

unint64_t sub_1A98F15C0()
{
  result = qword_1EB3B53F8;
  if (!qword_1EB3B53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53F8);
  }

  return result;
}

unint64_t sub_1A98F1618()
{
  result = qword_1EB3B5400;
  if (!qword_1EB3B5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5400);
  }

  return result;
}

unint64_t sub_1A98F1670()
{
  result = qword_1EB3B5408;
  if (!qword_1EB3B5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5408);
  }

  return result;
}

unint64_t sub_1A98F16C8()
{
  result = qword_1EB3B5410;
  if (!qword_1EB3B5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5410);
  }

  return result;
}

unint64_t sub_1A98F1720()
{
  result = qword_1EB3B5418;
  if (!qword_1EB3B5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5418);
  }

  return result;
}

unint64_t sub_1A98F1778()
{
  result = qword_1EB3B5420;
  if (!qword_1EB3B5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5420);
  }

  return result;
}

unint64_t sub_1A98F17D0()
{
  result = qword_1EB3B5428;
  if (!qword_1EB3B5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5428);
  }

  return result;
}

unint64_t sub_1A98F1828()
{
  result = qword_1EB3B5430;
  if (!qword_1EB3B5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5430);
  }

  return result;
}

unint64_t sub_1A98F1880()
{
  result = qword_1EB3B5438;
  if (!qword_1EB3B5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5438);
  }

  return result;
}

unint64_t sub_1A98F18D8()
{
  result = qword_1EB3B5440;
  if (!qword_1EB3B5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5440);
  }

  return result;
}

unint64_t sub_1A98F1930()
{
  result = qword_1EB3B5448;
  if (!qword_1EB3B5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5448);
  }

  return result;
}

unint64_t sub_1A98F1988()
{
  result = qword_1EB3B5450;
  if (!qword_1EB3B5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5450);
  }

  return result;
}

unint64_t sub_1A98F19E0()
{
  result = qword_1EB3B5458;
  if (!qword_1EB3B5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5458);
  }

  return result;
}

unint64_t sub_1A98F1A38()
{
  result = qword_1EB3B5460;
  if (!qword_1EB3B5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5460);
  }

  return result;
}

unint64_t sub_1A98F1A90()
{
  result = qword_1EB3B5468;
  if (!qword_1EB3B5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5468);
  }

  return result;
}

unint64_t sub_1A98F1AE8()
{
  result = qword_1EB3B5470;
  if (!qword_1EB3B5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5470);
  }

  return result;
}

unint64_t sub_1A98F1B40()
{
  result = qword_1EB3B5478;
  if (!qword_1EB3B5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5478);
  }

  return result;
}

unint64_t sub_1A98F1B98()
{
  result = qword_1EB3B5480;
  if (!qword_1EB3B5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5480);
  }

  return result;
}

uint64_t sub_1A98F1BEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98F1D08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E39B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A99E39D0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3930 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001A99E3950 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69676E6168637865 && a2 == 0xEA0000000000676ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A99E71E0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEE0064656C696146 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3B50 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A98F2040(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001A99E7200 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3BD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v5 = sub_1A99777E0();

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

uint64_t sub_1A98F21B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5079616C70736964 && a2 == 0xEF797469726F6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3C10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000072 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x75716552646E6573 && a2 == 0xEB00000000747365 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E4F10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xEC000000656D614ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4D6B726F7774656ELL && a2 == 0xEE00736369727465)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A98F2518()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1A98F254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98F2628(uint64_t a1)
{
  v2 = sub_1A98F5254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F2664(uint64_t a1)
{
  v2 = sub_1A98F5254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F26A0(uint64_t a1)
{
  v2 = sub_1A98F52A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F26DC(uint64_t a1)
{
  v2 = sub_1A98F52A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F2718(uint64_t a1)
{
  v2 = sub_1A98F52FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F2754(uint64_t a1)
{
  v2 = sub_1A98F52FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.Metrics.TransferResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5500, &qword_1A99A5940);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - v4;
  v5 = type metadata accessor for SFAirDropSend.Failure();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5508, &qword_1A99A5948);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5510, &qword_1A99A5950);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v20 = &v28 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F5254();
  sub_1A9977AA0();
  sub_1A98F5400(v35, v16, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    v37 = 0;
    sub_1A98F52FC();
    v22 = v36;
    sub_1A9977640();
    (*(v29 + 8))(v12, v30);
    return (*(v17 + 8))(v20, v22);
  }

  else
  {
    v24 = v31;
    sub_1A98F5398(v16, v31, type metadata accessor for SFAirDropSend.Failure);
    v38 = 1;
    sub_1A98F52A8();
    v25 = v32;
    v26 = v36;
    sub_1A9977640();
    sub_1A98F5350(&qword_1EB3B5280, type metadata accessor for SFAirDropSend.Failure);
    v27 = v34;
    sub_1A99776E0();
    (*(v33 + 8))(v25, v27);
    sub_1A98F55B4(v24, type metadata accessor for SFAirDropSend.Failure);
    return (*(v17 + 8))(v20, v26);
  }
}

uint64_t SFAirDropSend.Transfer.Metrics.TransferResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5530, &qword_1A99A5958);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5538, &qword_1A99A5960);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5540, &qword_1A99A5968);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1A98F5254();
  v25 = v58;
  sub_1A9977A70();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  v58 = v16;
  v49 = v20;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1A9977620();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1A97B2970();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1A9977300();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v37 = v58;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1A98F52A8();
    v33 = v27;
    sub_1A9977530();
    v34 = v57;
    v42 = v26;
    v43 = type metadata accessor for SFAirDropSend.Failure();
    sub_1A98F5350(&qword_1EB3B5338, type metadata accessor for SFAirDropSend.Failure);
    v44 = v49;
    v45 = v53;
    sub_1A99775F0();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1A98F5398(v44, v50, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  }

  else
  {
    v64 = 0;
    sub_1A98F52FC();
    sub_1A9977530();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = type metadata accessor for SFAirDropSend.Failure();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1A98F5398(v46, v42, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  return __swift_destroy_boxed_opaque_existential_0Tm(v59);
}

uint64_t SFAirDropSend.Transfer.Metrics.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropSend.Transfer.Metrics(0) + 20);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropSend.Transfer.Metrics.init(id:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v7 = v6[6];
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  (*(v9 + 56))(a3 + v7, 1, 1, v8);
  v10 = v6[7];
  v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a3 + v10, 1, 1, v11);
  sub_1A98F5398(a1, a3, type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v9 + 32))(a3 + v6[5], a2, v8);
  sub_1A97B06FC(a3 + v10, &qword_1EB3B5548, &qword_1A99A5970);

  return v13(a3 + v10, 1, 1, v11);
}

uint64_t SFAirDropSend.Transfer.Metrics.description.getter()
{
  v1 = sub_1A99760A0();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 8);
  MEMORY[0x1EEE9AC00](v1);
  v71 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1A99760C0();
  v70 = *(v72 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5550, &qword_1A99A5978);
  v6 = *(*(v67 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v67);
  v64 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v64 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  v10 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v64 - v14;
  v16 = sub_1A9976230();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v21 = sub_1A98752D4(8);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x1AC589540](v21, v23, v25, v27);
  v30 = v29;

  v31 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1A97AE618((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[16 * v33];
  *(v34 + 4) = v28;
  *(v34 + 5) = v30;
  v35 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  sub_1A97C13A4(v20 + *(v35 + 24), v15, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v45 = (v17 + 32);
    v42 = *(v17 + 32);
    v46 = v75;
    v42();
    v47 = *(v35 + 20);
    sub_1A98F5350(&qword_1EB3B5558, MEMORY[0x1E6969530]);
    v44 = v16;
    if (sub_1A9976770())
    {
      v49 = v17;
      v50 = v17;
      v73 = v42;
      v51 = v64;
      v52 = v46;
      v53 = *(v49 + 16);
      v54 = v20 + v47;
      v55 = v66;
      v53(v66, v54, v16);
      v56 = v67;
      v53((v55 + *(v67 + 48)), v52, v16);
      sub_1A97C13A4(v55, v51, &qword_1EB3B5550, &qword_1A99A5978);
      v57 = *(v56 + 48);
      v46 = v68;
      v58 = v73;
      v74 = v31;
      (v73)(v68, v51, v16);
      v45 = *(v50 + 8);
      v45(v51 + v57, v16);
      sub_1A98F54F0(v55, v51);
      (v58)(v46 + *(v65 + 36), v51 + *(v56 + 48), v16);
      v31 = v74;
      v45(v51, v16);
      v78 = 0x203A656D6974;
      v79 = 0xE600000000000000;
      sub_1A98734C4();
      sub_1A9976F40();
      MEMORY[0x1AC5895B0](v76, v77);

      v33 = v78;
      v42 = v79;
      v20 = *(v31 + 2);
      v48 = *(v31 + 3);
      v44 = v20 + 1;
      if (v20 < v48 >> 1)
      {
LABEL_8:
        sub_1A97B06FC(v46, &qword_1EB3B3650, &qword_1A999BA80);
        v45(v75, v16);
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    v31 = sub_1A97AE618((v48 > 1), v44, 1, v31);
    goto LABEL_8;
  }

  sub_1A97B06FC(v15, &unk_1EB3B2A30, &unk_1A99983A0);
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_1A99772B0();

  v78 = 0x203A656D6974;
  v79 = 0xE600000000000000;
  v36 = *(v35 + 20);
  v37 = v69;
  sub_1A99760B0();
  v38 = v71;
  sub_1A9976090();
  v39 = sub_1A9976200();
  v41 = v40;
  (*(v73 + 1))(v38, v74);
  (*(v70 + 8))(v37, v72);
  MEMORY[0x1AC5895B0](v39, v41);

  MEMORY[0x1AC5895B0](0x6D6F636E49202D20, 0xED00006574656C70);
  v33 = v78;
  v42 = v79;
  v20 = *(v31 + 2);
  v43 = *(v31 + 3);
  v44 = v20 + 1;
  if (v20 >= v43 >> 1)
  {
    v31 = sub_1A97AE618((v43 > 1), v20 + 1, 1, v31);
  }

LABEL_9:
  *(v31 + 2) = v44;
  v59 = &v31[16 * v20];
  *(v59 + 4) = v33;
  *(v59 + 5) = v42;
  v78 = 123;
  v79 = 0xE100000000000000;
  v76 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v60 = sub_1A9976760();
  v62 = v61;

  MEMORY[0x1AC5895B0](v60, v62);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  return v78;
}

uint64_t sub_1A98F3E2C()
{
  v1 = 25705;
  v2 = 0x65746144646E65;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x7461447472617473;
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

uint64_t sub_1A98F3E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98F5C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98F3EC4(uint64_t a1)
{
  v2 = sub_1A98F5560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F3F00(uint64_t a1)
{
  v2 = sub_1A98F5560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.Metrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5560, &qword_1A99A5980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F5560();
  sub_1A9977AA0();
  v18 = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1A98F5350(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v1)
  {
    v9 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    v10 = v9[5];
    v17 = 1;
    sub_1A9976230();
    sub_1A98F5350(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
    sub_1A99776E0();
    v11 = v9[6];
    v16 = 2;
    sub_1A9977680();
    v12 = v9[7];
    v15 = 3;
    type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
    sub_1A98F5350(&qword_1EB3B5570, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
    sub_1A9977680();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SFAirDropSend.Transfer.Metrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5548, &qword_1A99A5970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v39 - v8;
  v9 = sub_1A9976230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5578, &qword_1A99A5988);
  v44 = *(v49 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v17 = v39 - v16;
  v18 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v10;
  v24 = *(v10 + 56);
  v51 = *(v20 + 24);
  v24(&v22[v51], 1, 1, v9);
  v25 = *(v18 + 28);
  v26 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v27 = *(*(v26 - 8) + 56);
  v52 = v25;
  v27(&v22[v25], 1, 1, v26);
  v29 = a1[3];
  v28 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1A98F5560();
  v48 = v17;
  v30 = v50;
  sub_1A9977A70();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    sub_1A97B06FC(&v22[v51], &unk_1EB3B2A30, &unk_1A99983A0);
    return sub_1A97B06FC(&v22[v52], &qword_1EB3B5548, &qword_1A99A5970);
  }

  else
  {
    v39[1] = v26;
    v40 = v18;
    v31 = v44;
    v32 = v45;
    v50 = v9;
    v57 = 0;
    sub_1A98F5350(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier);
    v33 = v47;
    sub_1A99775F0();
    sub_1A98F5398(v33, v22, type metadata accessor for SFAirDrop.TransferIdentifier);
    v56 = 1;
    sub_1A98F5350(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
    v34 = v50;
    sub_1A99775F0();
    (*(v23 + 32))(&v22[*(v40 + 20)], v32, v34);
    v55 = 2;
    v35 = v43;
    sub_1A9977590();
    sub_1A98F5488(v35, &v22[v51], &unk_1EB3B2A30, &unk_1A99983A0);
    v54 = 3;
    sub_1A98F5350(&qword_1EB3B5580, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
    v36 = v42;
    v37 = v48;
    sub_1A9977590();
    (*(v31 + 8))(v37, v49);
    sub_1A98F5488(v36, &v22[v52], &qword_1EB3B5548, &qword_1A99A5970);
    sub_1A98F5400(v22, v41, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    return sub_1A98F55B4(v22, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  }
}

uint64_t _s7Sharing13SFAirDropSendO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B55E0, &qword_1A99A5F20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1A98F5400(a1, &v22 - v16, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  sub_1A98F5400(a2, &v17[v18], type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1A98F5400(v17, v12, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1A98F5398(&v17[v18], v8, type metadata accessor for SFAirDropSend.Failure);
      v20 = _s7Sharing13SFAirDropSendO7FailureO2eeoiySbAE_AEtFZ_0(v12, v8);
      sub_1A98F55B4(v8, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98F55B4(v12, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98F55B4(v17, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
      return v20 & 1;
    }

    sub_1A98F55B4(v12, type metadata accessor for SFAirDropSend.Failure);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1A97B06FC(v17, &qword_1EB3B55E0, &qword_1A99A5F20);
    v20 = 0;
    return v20 & 1;
  }

  sub_1A98F55B4(v17, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  v20 = 1;
  return v20 & 1;
}

BOOL _s7Sharing13SFAirDropSendO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5548, &qword_1A99A5970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v48 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B55E8, &qword_1A99A5F28);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v48 - v12;
  v14 = sub_1A9976230();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EB8, &unk_1A99A5F30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v48 - v24;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v55 = v17;
  v26 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v27 = *(v26 + 20);
  if ((sub_1A99761E0() & 1) == 0)
  {
    return 0;
  }

  v53 = v4;
  v54 = v13;
  v49 = v7;
  v50 = v26;
  v28 = *(v26 + 24);
  v29 = *(v22 + 48);
  v51 = a1;
  sub_1A97C13A4(a1 + v28, v25, &unk_1EB3B2A30, &unk_1A99983A0);
  v52 = a2;
  sub_1A97C13A4(a2 + v28, &v25[v29], &unk_1EB3B2A30, &unk_1A99983A0);
  v30 = v59;
  v31 = *(v59 + 48);
  if (v31(v25, 1, v14) != 1)
  {
    sub_1A97C13A4(v25, v21, &unk_1EB3B2A30, &unk_1A99983A0);
    if (v31(&v25[v29], 1, v14) != 1)
    {
      v35 = v55;
      (*(v30 + 32))(v55, &v25[v29], v14);
      sub_1A98F5350(&qword_1EB3B1EC0, MEMORY[0x1E6969530]);
      v36 = sub_1A99767A0();
      v37 = *(v30 + 8);
      v37(v35, v14);
      v37(v21, v14);
      sub_1A97B06FC(v25, &unk_1EB3B2A30, &unk_1A99983A0);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v30 + 8))(v21, v14);
LABEL_8:
    v32 = &qword_1EB3B1EB8;
    v33 = &unk_1A99A5F30;
    v34 = v25;
LABEL_16:
    sub_1A97B06FC(v34, v32, v33);
    return 0;
  }

  if (v31(&v25[v29], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  sub_1A97B06FC(v25, &unk_1EB3B2A30, &unk_1A99983A0);
LABEL_10:
  v38 = *(v50 + 28);
  v39 = *(v57 + 48);
  v40 = v54;
  sub_1A97C13A4(v51 + v38, v54, &qword_1EB3B5548, &qword_1A99A5970);
  sub_1A97C13A4(v52 + v38, v40 + v39, &qword_1EB3B5548, &qword_1A99A5970);
  v41 = *(v58 + 48);
  v42 = v53;
  if (v41(v40, 1, v53) == 1)
  {
    if (v41(v40 + v39, 1, v42) == 1)
    {
      sub_1A97B06FC(v40, &qword_1EB3B5548, &qword_1A99A5970);
      return 1;
    }

    goto LABEL_15;
  }

  v43 = v56;
  sub_1A97C13A4(v40, v56, &qword_1EB3B5548, &qword_1A99A5970);
  if (v41(v40 + v39, 1, v42) == 1)
  {
    sub_1A98F55B4(v43, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
LABEL_15:
    v32 = &qword_1EB3B55E8;
    v33 = &qword_1A99A5F28;
    v34 = v40;
    goto LABEL_16;
  }

  v45 = v40 + v39;
  v46 = v49;
  sub_1A98F5398(v45, v49, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  v47 = _s7Sharing13SFAirDropSendO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(v43, v46);
  sub_1A98F55B4(v46, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  sub_1A98F55B4(v43, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  sub_1A97B06FC(v40, &qword_1EB3B5548, &qword_1A99A5970);
  return (v47 & 1) != 0;
}

unint64_t sub_1A98F5254()
{
  result = qword_1EB3B5518;
  if (!qword_1EB3B5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5518);
  }

  return result;
}

unint64_t sub_1A98F52A8()
{
  result = qword_1EB3B5520;
  if (!qword_1EB3B5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5520);
  }

  return result;
}

unint64_t sub_1A98F52FC()
{
  result = qword_1EB3B5528;
  if (!qword_1EB3B5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5528);
  }

  return result;
}

uint64_t sub_1A98F5350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A98F5398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98F5400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98F5488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A98F54F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5550, &qword_1A99A5978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A98F5560()
{
  result = qword_1EB3B5568;
  if (!qword_1EB3B5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5568);
  }

  return result;
}

uint64_t sub_1A98F55B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A98F5684()
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v0 <= 0x3F)
  {
    sub_1A9976230();
    if (v1 <= 0x3F)
    {
      sub_1A98F5770(319, &qword_1EB3AC8A0, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1A98F5770(319, &qword_1EB3AC698, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A98F5770(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A98F57EC()
{
  v0 = type metadata accessor for SFAirDropSend.Failure();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1A98F5888()
{
  result = qword_1EB3B5588;
  if (!qword_1EB3B5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5588);
  }

  return result;
}

unint64_t sub_1A98F58E0()
{
  result = qword_1EB3B5590;
  if (!qword_1EB3B5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5590);
  }

  return result;
}

unint64_t sub_1A98F5938()
{
  result = qword_1EB3B5598;
  if (!qword_1EB3B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5598);
  }

  return result;
}

unint64_t sub_1A98F5990()
{
  result = qword_1EB3B55A0;
  if (!qword_1EB3B55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55A0);
  }

  return result;
}

unint64_t sub_1A98F59E8()
{
  result = qword_1EB3B55A8;
  if (!qword_1EB3B55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55A8);
  }

  return result;
}

unint64_t sub_1A98F5A40()
{
  result = qword_1EB3B55B0;
  if (!qword_1EB3B55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55B0);
  }

  return result;
}

unint64_t sub_1A98F5A98()
{
  result = qword_1EB3B55B8;
  if (!qword_1EB3B55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55B8);
  }

  return result;
}

unint64_t sub_1A98F5AF0()
{
  result = qword_1EB3B55C0;
  if (!qword_1EB3B55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55C0);
  }

  return result;
}

unint64_t sub_1A98F5B48()
{
  result = qword_1EB3B55C8;
  if (!qword_1EB3B55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55C8);
  }

  return result;
}

unint64_t sub_1A98F5BA0()
{
  result = qword_1EB3B55D0;
  if (!qword_1EB3B55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55D0);
  }

  return result;
}

unint64_t sub_1A98F5BF8()
{
  result = qword_1EB3B55D8;
  if (!qword_1EB3B55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55D8);
  }

  return result;
}

uint64_t sub_1A98F5C4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98F5DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A99773D0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SFNearbySharingInteraction.InteractionType.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFNearbySharingInteraction.interactionType.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v6);
  v7 = swift_getEnumCaseMultiPayload() == 1;
  result = sub_1A98F5FCC(v6);
  *a1 = v7;
  return result;
}

uint64_t sub_1A98F5F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98F5FCC(uint64_t a1)
{
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFNearbySharingInteraction.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v7 = type metadata accessor for SFProximityHandoff.Interaction;
    v8 = &off_1F1D2EC98;
  }

  else
  {
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v8 = &off_1F1D2EC68;
  }

  v15 = v6;
  v16 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_1A98F6178(v5, boxed_opaque_existential_0, v7);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (v11[1])(v10, v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_1A98F6178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SFNearbySharingInteraction.connectionTime.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v7 = type metadata accessor for SFProximityHandoff.Interaction;
    v8 = &off_1F1D2EC98;
  }

  else
  {
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v8 = &off_1F1D2EC68;
  }

  v15 = v6;
  v16 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_1A98F6178(v5, boxed_opaque_existential_0, v7);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (v11[2])(v10, v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t SFNearbySharingInteraction.isInitiator.getter()
{
  v1 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v6 = type metadata accessor for SFProximityHandoff.Interaction;
    v7 = &off_1F1D2EC98;
  }

  else
  {
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v7 = &off_1F1D2EC68;
  }

  v14 = v5;
  v15 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1A98F6178(v4, boxed_opaque_existential_0, v6);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  LOBYTE(v9) = (v10[3])(v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v9 & 1;
}

uint64_t SFNearbySharingInteraction.isInitiatorRoleExpected.getter()
{
  v1 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v6 = type metadata accessor for SFProximityHandoff.Interaction;
    v7 = &off_1F1D2EC98;
  }

  else
  {
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v7 = &off_1F1D2EC68;
  }

  v14 = v5;
  v15 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1A98F6178(v4, boxed_opaque_existential_0, v6);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  LOBYTE(v9) = (v10[4])(v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v9 & 1;
}

uint64_t SFNearbySharingInteraction.state.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v7 = type metadata accessor for SFProximityHandoff.Interaction;
    v8 = &off_1F1D2EC98;
  }

  else
  {
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v8 = &off_1F1D2EC68;
  }

  v15 = v6;
  v16 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_1A98F6178(v5, boxed_opaque_existential_0, v7);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (v11[5])(v10, v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t SFNearbySharingInteraction.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1A98F6720(a1, type metadata accessor for SFAirDrop.NearbySharingInteraction, a2);
}

{
  return sub_1A98F6720(a1, type metadata accessor for SFProximityHandoff.Interaction, a2);
}

uint64_t sub_1A98F6720@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_1A98F6178(a1, a3, a2);
  type metadata accessor for SFNearbySharingInteraction.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A98F6778()
{
  result = qword_1EB3B55F0;
  if (!qword_1EB3B55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55F0);
  }

  return result;
}

uint64_t sub_1A98F67CC()
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SFProximityHandoff.Interaction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98F6898()
{
  result = type metadata accessor for SFNearbySharingInteraction.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SFAirDrop.TransferIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SFAirDrop.TransferIdentifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFAirDrop.TransferIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = sub_1A99762C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9976250();
  v22 = 0x6F72662044495555;
  v23 = 0xEA0000000000206DLL;
  MEMORY[0x1AC5895B0](a1, a2);

  v18 = v22;
  v17 = v23;
  sub_1A98F6C4C(v11, v9);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_1A98F6CBC(v9);
    sub_1A97BCDE0();
    swift_allocError();
    *v19 = v18;
    v19[1] = v17;
    v19[2] = 0xD00000000000005ALL;
    v19[3] = 0x80000001A99E7220;
    v19[4] = 23;
    v19[10] = 0x2000000000000000;
    swift_willThrow();
    return sub_1A98F6CBC(v11);
  }

  else
  {

    sub_1A98F6CBC(v11);
    v21 = *(v13 + 32);
    v21(v16, v9, v12);
    return (v21)(v24, v16, v12);
  }
}

uint64_t sub_1A98F6C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98F6CBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A98F6D28()
{
  _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v0 = sub_1A98752D4(8);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x1AC589540](v0, v2, v4, v6);

  return v7;
}

uint64_t sub_1A98F6DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98F6E40(uint64_t a1)
{
  v2 = sub_1A98F76E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F6E7C(uint64_t a1)
{
  v2 = sub_1A98F76E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.TransferIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5618, &qword_1A99A6058);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F76E8();
  sub_1A9977AA0();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t SFAirDrop.TransferIdentifier.hash(into:)()
{
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);

  return sub_1A9976740();
}

uint64_t SFAirDrop.TransferIdentifier.hashValue.getter()
{
  sub_1A9977980();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
  sub_1A9976740();
  return sub_1A99779B0();
}

uint64_t SFAirDrop.TransferIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1A99762C0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5628, &qword_1A99A6060);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F76E8();
  sub_1A9977A70();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1A98F787C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    sub_1A99775F0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1A98F7788(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A98F73C4()
{
  sub_1A9977980();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
  sub_1A9976740();
  return sub_1A99779B0();
}

uint64_t sub_1A98F744C()
{
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);

  return sub_1A9976740();
}

uint64_t sub_1A98F74D0()
{
  sub_1A9977980();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
  sub_1A9976740();
  return sub_1A99779B0();
}

uint64_t sub_1A98F756C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5618, &qword_1A99A6058);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F76E8();
  sub_1A9977AA0();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A98F76E8()
{
  result = qword_1EB3B5620;
  if (!qword_1EB3B5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5620);
  }

  return result;
}

uint64_t type metadata accessor for SFAirDrop.TransferIdentifier()
{
  result = qword_1EB3AB7A8;
  if (!qword_1EB3AB7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A98F7788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98F787C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A98F78EC()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A98F796C()
{
  result = qword_1EB3B5630;
  if (!qword_1EB3B5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5630);
  }

  return result;
}

unint64_t sub_1A98F79C4()
{
  result = qword_1EB3B5638;
  if (!qword_1EB3B5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5638);
  }

  return result;
}

unint64_t sub_1A98F7A1C()
{
  result = qword_1EB3B5640;
  if (!qword_1EB3B5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5640);
  }

  return result;
}

Sharing::SFInterventionWorkflow::SprinboardSettings_optional __swiftcall SFInterventionWorkflow.SprinboardSettings.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1A98F7AB4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t SFInterventionWorkflow.description.getter()
{
  v1 = 0x657669656365722ELL;
  if (*v0 != 1)
  {
    v1 = 0x666E4965726F6D2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E65732ELL;
  }
}

Sharing::SFInterventionWorkflow_optional __swiftcall SFInterventionWorkflow.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SFInterventionWorkflow.rawValue.getter()
{
  v1 = 0x65766965636572;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4965726F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684956531;
  }
}

uint64_t sub_1A98F7BEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65766965636572;
  if (v2 != 1)
  {
    v4 = 0x6F666E4965726F6DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684956531;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65766965636572;
  if (*a2 != 1)
  {
    v8 = 0x6F666E4965726F6DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684956531;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A99777E0();
  }

  return v11 & 1;
}

uint64_t sub_1A98F7CE8()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A98F7D84()
{
  *v0;
  *v0;
  sub_1A99768D0();
}

uint64_t sub_1A98F7E0C()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

void sub_1A98F7EB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65766965636572;
  if (v2 != 1)
  {
    v5 = 0x6F666E4965726F6DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684956531;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A98F7FC8()
{
  v1 = 0x657669656365722ELL;
  if (*v0 != 1)
  {
    v1 = 0x666E4965726F6D2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E65732ELL;
  }
}

uint64_t SFInterventionResponse.description.getter()
{
  if (*v0)
  {
    return 0x7463656A65722ELL;
  }

  else
  {
    return 0x7470656363612ELL;
  }
}

uint64_t sub_1A98F8070(uint64_t a1)
{
  v2 = sub_1A98F8630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F80AC(uint64_t a1)
{
  v2 = sub_1A98F8630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F80E8()
{
  if (*v0)
  {
    return 0x7463656A6572;
  }

  else
  {
    return 0x747065636361;
  }
}

uint64_t sub_1A98F8114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463656A6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98F81E8(uint64_t a1)
{
  v2 = sub_1A98F8588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F8224(uint64_t a1)
{
  v2 = sub_1A98F8588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F8260(uint64_t a1)
{
  v2 = sub_1A98F85DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F829C(uint64_t a1)
{
  v2 = sub_1A98F85DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFInterventionResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5648, &qword_1A99A62C0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5650, &qword_1A99A62C8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5658, &qword_1A99A62D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F8588();
  sub_1A9977AA0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A98F85DC();
    v18 = v22;
    sub_1A9977640();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A98F8630();
    sub_1A9977640();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A98F8588()
{
  result = qword_1EB3B5660;
  if (!qword_1EB3B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5660);
  }

  return result;
}

unint64_t sub_1A98F85DC()
{
  result = qword_1EB3B5668;
  if (!qword_1EB3B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5668);
  }

  return result;
}

unint64_t sub_1A98F8630()
{
  result = qword_1EB3B5670;
  if (!qword_1EB3B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5670);
  }

  return result;
}

uint64_t SFInterventionResponse.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFInterventionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5678, &qword_1A99A62D8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5680, &qword_1A99A62E0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5688, &unk_1A99A62E8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F8588();
  v16 = v36;
  sub_1A9977A70();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A9977620();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A97B2970();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A9977300();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v26 = &type metadata for SFInterventionResponse;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A98F85DC();
        sub_1A9977530();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A98F8630();
        sub_1A9977530();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_1A98F8BE4()
{
  if (*v0)
  {
    return 0x7463656A65722ELL;
  }

  else
  {
    return 0x7470656363612ELL;
  }
}

id SFAirDropInvocations.UserSafetyIntervention.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFAirDropInvocations.UserSafetyIntervention.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFAirDropInvocations.UserSafetyIntervention.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.UserSafetyIntervention.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAirDropInvocations.UserSafetyIntervention.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.UserSafetyIntervention.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

id SFAirDropInvocations.UserSafetyIntervention.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A98F8E74()
{
  result = qword_1EB3B5690;
  if (!qword_1EB3B5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5690);
  }

  return result;
}

unint64_t sub_1A98F8ECC()
{
  result = qword_1EB3B5698;
  if (!qword_1EB3B5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5698);
  }

  return result;
}

unint64_t sub_1A98F8F24()
{
  result = qword_1EB3B56A0;
  if (!qword_1EB3B56A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B56A8, &qword_1A99A6488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56A0);
  }

  return result;
}

unint64_t sub_1A98F8F8C()
{
  result = qword_1EB3AC390;
  if (!qword_1EB3AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC390);
  }

  return result;
}

unint64_t sub_1A98F9078()
{
  result = qword_1EB3B56B0;
  if (!qword_1EB3B56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56B0);
  }

  return result;
}

unint64_t sub_1A98F90D0()
{
  result = qword_1EB3B56B8;
  if (!qword_1EB3B56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56B8);
  }

  return result;
}

unint64_t sub_1A98F9128()
{
  result = qword_1EB3B56C0;
  if (!qword_1EB3B56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56C0);
  }

  return result;
}

unint64_t sub_1A98F9180()
{
  result = qword_1EB3B56C8;
  if (!qword_1EB3B56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56C8);
  }

  return result;
}

unint64_t sub_1A98F91D8()
{
  result = qword_1EB3B56D0;
  if (!qword_1EB3B56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56D0);
  }

  return result;
}

unint64_t sub_1A98F9230()
{
  result = qword_1EB3B56D8;
  if (!qword_1EB3B56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56D8);
  }

  return result;
}

unint64_t sub_1A98F9288()
{
  result = qword_1EB3B56E0;
  if (!qword_1EB3B56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56E0);
  }

  return result;
}

unint64_t sub_1A98F92DC()
{
  result = qword_1EB3B56E8;
  if (!qword_1EB3B56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56E8);
  }

  return result;
}

uint64_t sub_1A98F9330()
{
  v1 = v0[7];
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_1A99767E0();
  v5 = [v1 objectForKey_];

  if (v5)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:
  sub_1A97B06FC(&v10, &qword_1EB3B0BA0, &unk_1A99923D0);
  return v6;
}

id sub_1A98F93F4()
{
  if (*(v0 + 81))
  {
    return 0;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  result = objc_opt_self();
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 | v3))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4)
  {
    return [result featureEnabledForDomain:v2 feature:v4];
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1A98F9474()
{
  v1 = v0;
  v2 = *(v0 + 104);
  sub_1A9976530();
  if (v29[1])
  {
    return v29[0];
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v7 = v4;
    v8 = sub_1A99767E0();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
      sub_1A97AF7EC(v29, v28);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v29);

        return v27;
      }

      v10 = sub_1A99767E0();
      v11 = [v7 stringForKey_];

      if (v11)
      {
        v12 = sub_1A9976820();

        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        return v12;
      }

      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v13 = sub_1A99764A0();
      __swift_project_value_buffer(v13, qword_1EB3B0AB8);

      v14 = sub_1A9976480();
      v15 = sub_1A9976F70();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28[0] = v17;
        *v16 = 136315138;
        v18 = *(v1 + 16);
        v19 = *(v1 + 24);
        v20 = *(v1 + 32);
        v21 = sub_1A99772C0();
        v23 = v22;

        v24 = sub_1A97AF148(v21, v23, v28);

        *(v16 + 4) = v24;
        _os_log_impl(&dword_1A9662000, v14, v15, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x1AC58D2C0](v17, -1, -1);
        MEMORY[0x1AC58D2C0](v16, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v29);
    }

    else
    {
    }
  }

  v26 = *(v1 + 88);
  v25 = *(v1 + 96);

  return v26;
}

void sub_1A98F973C(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 88);
  sub_1A9976530();
  v5 = v29[0];
  if (LOBYTE(v29[0]) != 8)
  {
    goto LABEL_16;
  }

  v6 = *(v2 + 56);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = v6;
  v10 = sub_1A99767E0();
  v11 = [v9 objectForKey_];

  if (!v11)
  {

LABEL_15:
    v5 = *(v2 + 82);
    goto LABEL_16;
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D0, &qword_1A99A6BF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = sub_1A99767E0();
    v13 = [v9 stringForKey_];

    if (v13)
    {
      sub_1A9976820();

      SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(v28);
      v14 = v28[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v29);

      *a1 = v14;
      return;
    }

    if (qword_1EB3B0AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1A99764A0();
    __swift_project_value_buffer(v15, qword_1EB3B0AB8);

    v16 = sub_1A9976480();
    v17 = sub_1A9976F70();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      v20 = *(v2 + 16);
      v21 = *(v2 + 24);
      v22 = *(v2 + 32);
      v23 = sub_1A99772C0();
      v25 = v24;

      v26 = sub_1A97AF148(v23, v25, v28);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_1A9662000, v16, v17, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
      MEMORY[0x1AC58D2C0](v18, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  v5 = v27;
LABEL_16:
  *a1 = v5;
}

void sub_1A98F9A24(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 88);
  sub_1A9976530();
  v5 = v40[0];
  if (LOBYTE(v40[0]) != 2)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + 56);
  if (!v6)
  {
LABEL_21:
    v12 = *(v2 + 82);
    goto LABEL_22;
  }

  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = v6;
  v10 = sub_1A99767E0();
  v11 = [v9 objectForKey_];

  if (!v11)
  {

    goto LABEL_21;
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(v40, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B8, &qword_1A99A6BE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = sub_1A99767E0();
    v14 = [v9 stringForKey_];

    if (v14)
    {
      sub_1A9976820();

      v15 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0();
      if (v15 != 2)
      {
        v37 = v15;

        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        v12 = v37 & 1;
        goto LABEL_22;
      }

      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_1A99764A0();
      __swift_project_value_buffer(v16, qword_1EB3B0AB8);

      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39[0] = v20;
        *v19 = 136315138;
        v21 = *(v2 + 16);
        v22 = *(v2 + 24);
        v23 = *(v2 + 32);
        v24 = sub_1A99772C0();
        v26 = v25;

        v27 = sub_1A97AF148(v24, v26, v39);

        *(v19 + 4) = v27;
        v28 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
        _os_log_impl(&dword_1A9662000, v17, v18, v28, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x1AC58D2C0](v20, -1, -1);
        MEMORY[0x1AC58D2C0](v19, -1, -1);

LABEL_20:
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1A99764A0();
      __swift_project_value_buffer(v29, qword_1EB3B0AB8);

      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39[0] = v20;
        *v19 = 136315138;
        v30 = *(v2 + 16);
        v31 = *(v2 + 24);
        v32 = *(v2 + 32);
        v33 = sub_1A99772C0();
        v35 = v34;

        v36 = sub_1A97AF148(v33, v35, v39);

        *(v19 + 4) = v36;
        v28 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);

  v5 = v38;
LABEL_6:
  v12 = v5 & 1;
LABEL_22:
  *a1 = v12;
}

uint64_t sub_1A98F9E08()
{
  v1 = v0;
  v2 = *(v0 + 88);
  sub_1A9976530();
  if (BYTE4(v40[0]) != 1)
  {
    return LODWORD(v40[0]);
  }

  v3 = *(v1 + 56);
  if (!v3)
  {
    return *(v1 + 84);
  }

  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v3;
  v7 = sub_1A99767E0();
  v8 = [v6 objectForKey_];

  if (!v8)
  {

    return *(v1 + 84);
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(v40, v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = sub_1A99767E0();
    v11 = [v6 stringForKey_];

    if (v11)
    {
      v12 = sub_1A9976820();
      v14 = v13;

      v15 = sub_1A97B0120(v12, v14);
      if ((v15 & 0x100000000) == 0)
      {
        v9 = v15;
        __swift_destroy_boxed_opaque_existential_0Tm(v40);

        return v9;
      }

      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1A99764A0();
      __swift_project_value_buffer(v29, qword_1EB3B0AB8);

      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39[0] = v20;
        *v19 = 136315138;
        v30 = *(v1 + 16);
        v31 = *(v1 + 24);
        v32 = *(v1 + 32);
        v33 = sub_1A99772C0();
        v35 = v34;

        v36 = sub_1A97AF148(v33, v35, v39);

        *(v19 + 4) = v36;
        v28 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_19;
      }
    }

    else
    {
      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_1A99764A0();
      __swift_project_value_buffer(v16, qword_1EB3B0AB8);

      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39[0] = v20;
        *v19 = 136315138;
        v21 = *(v1 + 16);
        v22 = *(v1 + 24);
        v23 = *(v1 + 32);
        v24 = sub_1A99772C0();
        v26 = v25;

        v27 = sub_1A97AF148(v24, v26, v39);

        *(v19 + 4) = v27;
        v28 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_19:
        _os_log_impl(&dword_1A9662000, v17, v18, v28, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x1AC58D2C0](v20, -1, -1);
        MEMORY[0x1AC58D2C0](v19, -1, -1);

LABEL_21:
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        return *(v1 + 84);
      }
    }

    goto LABEL_21;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);

  return v38;
}

uint64_t sub_1A98FA1C8()
{
  v1 = v0;
  v2 = *(v0 + 88);
  sub_1A9976530();
  result = LOBYTE(v30[0]);
  if (LOBYTE(v30[0]) == 3)
  {
    v4 = *(v1 + 56);
    if (v4)
    {
      v5 = *(v1 + 40);
      v6 = *(v1 + 48);
      v7 = v4;
      v8 = sub_1A99767E0();
      v9 = [v7 objectForKey_];

      if (v9)
      {
        sub_1A99771B0();
        swift_unknownObjectRelease();
        sub_1A97AF7EC(v30, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v30);

          return v28;
        }

        v13 = sub_1A99767E0();
        v14 = [v7 stringForKey_];

        if (v14)
        {
          sub_1A9976820();

          v15 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0();
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          return v15;
        }

        if (qword_1EB3B0AB0 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }

    if (*(v1 + 81))
    {
      return *(v1 + 82);
    }

    v10 = *(v1 + 64);
    v11 = *(v1 + 80);
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8) != MEMORY[0x1E69E6370])
    {
      return *(v1 + 82);
    }

    v7 = *(v1 + 16);
    v1 = *(v1 + 32);
    v12 = objc_opt_self();
    if (v10)
    {
      if (((v1 | v11) & 1) == 0)
      {
        if (v7)
        {
          LOBYTE(v29[0]) = [v12 featureEnabledForDomain:v10 feature:v7];
          swift_dynamicCast();
          return LOBYTE(v30[0]);
        }

        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_16:
    v16 = sub_1A99764A0();
    __swift_project_value_buffer(v16, qword_1EB3B0AB8);

    v17 = sub_1A9976480();
    v18 = sub_1A9976F70();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315138;
      v21 = *(v1 + 16);
      v22 = *(v1 + 24);
      v23 = *(v1 + 32);
      v24 = sub_1A99772C0();
      v26 = v25;

      v27 = sub_1A97AF148(v24, v26, v29);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_1A9662000, v17, v18, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1AC58D2C0](v20, -1, -1);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return *(v1 + 82);
  }

  return result;
}

void sub_1A98FA538(unsigned __int8 a1)
{
  v3 = sub_1A99762C0();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFUserDefaultsRepresentation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[7];
  if (v16)
  {
    sub_1A98FBF78(a1, (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v18 = *v15;
          v20 = v1[5];
          v19 = v1[6];
          v21 = v16;
          v22 = sub_1A99767E0();
          [v21 setBool:v18 forKey:v22];

          return;
        }

        v42 = *v15;
        v44 = v1[5];
        v43 = v1[6];
        v25 = v16;
        v29 = sub_1A99767E0();
        [v25 setInteger:*&v42 forKey:v29];
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v30 = *v15;
        v31 = v16;
        v32 = sub_1A9977A30();
        v33 = v1[5];
        v34 = v1[6];
        v35 = sub_1A99767E0();
        [v31 setObject:v32 forKey:v35];

LABEL_19:
        return;
      }

      v51 = *v15;
      v52 = v1[5];
      v53 = v1[6];
      v31 = v16;
      v54 = sub_1A99767E0();
      [v31 setDouble:v54 forKey:v51];
LABEL_18:

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v36 = v58;
        (*(v58 + 32))(v6, v15, v3);
        v37 = v16;
        _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
        v38 = sub_1A99767E0();

        v39 = v1[5];
        v40 = v1[6];
        v41 = sub_1A99767E0();
        [v37 setObject:v38 forKey:v41];

        (*(v36 + 8))(v6, v3);
        return;
      }

      v55 = v1[5];
      v56 = v1[6];
      v31 = v16;
      v54 = sub_1A99767E0();
      [v31 removeObjectForKey_];
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v23 = *v15;
      v24 = *(v15 + 1);
      v25 = v16;
      v26 = sub_1A99767E0();

      v27 = v1[5];
      v28 = v1[6];
      v29 = sub_1A99767E0();
      [v25 setObject:v26 forKey:v29];

LABEL_14:
      return;
    }

    (*(v8 + 32))(v11, v15, v7);
    v45 = v16;
    v46 = v1;
    v47 = sub_1A99760F0();
    v48 = v46[5];
    v49 = v46[6];
    v50 = sub_1A99767E0();
    [v45 setObject:v47 forKey:v50];

    (*(v8 + 8))(v11, v7);
  }
}

void sub_1A98FA9C8(char a1)
{
  v2 = v1[7];
  if (v2)
  {
    if (a1 == 2)
    {
      v3 = v1[5];
      v4 = v1[6];
      v9 = v2;
      v5 = sub_1A99767E0();
      [v9 removeObjectForKey_];
    }

    else
    {
      v7 = v1[5];
      v6 = v1[6];
      v5 = v2;
      v9 = sub_1A99767E0();
      [v5 setBool:a1 & 1 forKey:?];
    }
  }
}

uint64_t sub_1A98FAAA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[5];
  v4 = v1[6];

  sub_1A98F9474();
  sub_1A9977400();

  v6 = v1[13];
  sub_1A9976530();

  v7 = sub_1A98F9330();
  v8 = sub_1A98F93F4();
  v9 = v2[16];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 1;
  *(a1 + 33) = v7 & 1;
  *(a1 + 34) = v8 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v9;
}

uint64_t sub_1A98FABA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[5];
  v4 = v1[6];
  v15 = 0;
  v16 = 0xE000000000000000;

  sub_1A98F973C(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D0, &qword_1A99A6BF8);
  sub_1A9977400();
  v6 = v15;
  v7 = v16;
  v8 = v1[11];
  sub_1A9976530();
  v9 = v15 != 8;
  v10 = sub_1A98F9330();
  v11 = sub_1A98F93F4();
  v12 = v2[14];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 33) = v10 & 1;
  *(a1 + 34) = v11 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v12;
}

uint64_t sub_1A98FAC98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[5];
  v4 = v1[6];
  BYTE8(v11) = 0;

  *&v11 = sub_1A966D160() & 1;
  sub_1A9977400();
  v6 = v1[11];
  sub_1A9976530();
  v7 = sub_1A98F9330();
  v8 = sub_1A98F93F4();
  v9 = v2[14];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(&v11 + 1);
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = BYTE1(v11) != 2;
  *(a1 + 33) = v7 & 1;
  *(a1 + 34) = v8 & 1;
  *(a1 + 35) = 256;
  *(a1 + 40) = v9;
}

uint64_t sub_1A98FAD88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[5];
  v4 = v1[6];
  v15 = 0;
  v16 = 0xE000000000000000;

  sub_1A98F9A24(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B8, &qword_1A99A6BE0);
  sub_1A9977400();
  v6 = v15;
  v7 = v16;
  v8 = v1[11];
  sub_1A9976530();
  v9 = v15 != 2;
  v10 = sub_1A98F9330();
  v11 = sub_1A98F93F4();
  v12 = v2[14];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 33) = v10 & 1;
  *(a1 + 34) = v11 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v12;
}

uint64_t sub_1A98FAE88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[5];
  v4 = v1[6];

  v11 = sub_1A98F9E08();
  sub_1A9977400();
  v6 = v1[11];
  sub_1A9976530();
  v7 = sub_1A98F9330();
  v8 = sub_1A98F93F4();
  v9 = v2[14];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = HIDWORD(v11);
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 1;
  *(a1 + 33) = v7 & 1;
  *(a1 + 34) = v8 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v9;
}

uint64_t sub_1A98FAF70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8) == MEMORY[0x1E69E6370];
  v6 = v1[5];
  v5 = v1[6];
  BYTE8(v12) = 0;

  *&v12 = sub_1A98FA1C8();
  sub_1A9977400();
  v7 = v1[11];
  sub_1A9976530();
  v8 = sub_1A98F9330();
  v9 = sub_1A98F93F4();
  v10 = v2[14];
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(&v12 + 1);
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = BYTE1(v12) != 3;
  *(a1 + 33) = v8 & 1;
  *(a1 + 34) = v9 & 1;
  *(a1 + 35) = 0;
  *(a1 + 36) = v4;
  *(a1 + 40) = v10;
}

void sub_1A98FB080(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0x676E69727453, 0xE600000000000000);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);

  v8 = a3[7];

  if (v8)
  {
    v9 = v8;
    v10 = sub_1A99767E0();
    v11 = a3[5];
    v12 = a3[6];
    v13 = sub_1A99767E0();
    [v9 setObject:v10 forKey:{v13, 0, 0xE000000000000000}];
  }

  a4[3] = MEMORY[0x1E69E6158];
  *a4 = a1;
  a4[1] = a2;
}

uint64_t sub_1A98FB1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(v8);
  v6 = v8[0];
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0xD000000000000019, 0x80000001A99E7F40);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);

  sub_1A98FA538(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D0, &qword_1A99A6BF8);
  *(a3 + 24) = result;
  *a3 = v6;
  return result;
}

void sub_1A98FB31C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  v8 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0();
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](1819242306, 0xE400000000000000);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  if (v8 == 2)
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0xD00000000000004CLL;
    v9[3] = 0x80000001A99E2A20;
    v9[4] = 235;
    v9[10] = 0x2000000000000000;
    swift_willThrow();
  }

  else
  {

    v10 = a3[7];
    if (v10)
    {
      v11 = a3[5];
      v12 = a3[6];
      v13 = v10;
      v14 = sub_1A99767E0();
      [v13 setBool:v8 & 1 forKey:v14];
    }

    *(a4 + 24) = MEMORY[0x1E69E6370];
    *a4 = v8 & 1;
  }
}

uint64_t sub_1A98FB4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  v8 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0();
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0xD000000000000014, 0x80000001A99E7F20);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  if (v8 == 2)
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0xD00000000000004CLL;
    v9[3] = 0x80000001A99E2A20;
    v9[4] = 235;
    v9[10] = 0x2000000000000000;
    return swift_willThrow();
  }

  else
  {

    v11 = a3[7];
    if (v11)
    {
      v12 = a3[5];
      v13 = a3[6];
      v14 = v11;
      v15 = sub_1A99767E0();
      [v14 setBool:v8 & 1 forKey:v15];
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B8, &qword_1A99A6BE0);
    *(a4 + 24) = result;
    *a4 = v8 & 1;
  }

  return result;
}

void sub_1A98FB6D8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  v8 = sub_1A97B0120(a1, a2);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0x3233746E4955, 0xE600000000000000);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  if ((v8 & 0x100000000) != 0)
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD00000000000004CLL;
    v15[3] = 0x80000001A99E2A20;
    v15[4] = 235;
    v15[10] = 0x2000000000000000;
    swift_willThrow();
  }

  else
  {

    v9 = a3[7];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A9977A30();
      v12 = a3[5];
      v13 = a3[6];
      v14 = sub_1A99767E0();
      [v10 setObject:v11 forKey:v14];
    }

    *(a4 + 24) = MEMORY[0x1E69E7668];
    *a4 = v8;
  }
}

uint64_t sub_1A98FB8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0();
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);

  sub_1A98FA9C8(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8);
  *(a3 + 24) = result;
  *a3 = v6;
  return result;
}

uint64_t sub_1A98FB9E0(void *a1)
{
  v1 = a1[7];
  if (v1)
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = sub_1A99767E0();
    v5 = [v1 objectForKey_];

    if (v5)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10 = v8;
    v11 = v9;
    if (*(&v9 + 1))
    {
      sub_1A97B06FC(&v10, &qword_1EB3B0BA0, &unk_1A99923D0);
      v6 = sub_1A99767E0();
      [v1 removeObjectForKey_];

      return 1;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  sub_1A97B06FC(&v10, &qword_1EB3B0BA0, &unk_1A99923D0);
  return 0;
}

uint64_t sub_1A98FBAF8(void *a1)
{
  v2 = a1[6];
  v3 = a1[16];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A9903778;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A9903794;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBBB8(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A9903758;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A9903774;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBC78(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A99036B8;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A99036D4;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A97B2280(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBD38(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A9903718;
  v7[4] = a1;
  v7[5] = sub_1A9903738;
  v7[6] = a1;
  v7[7] = sub_1A9903734;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBDF8(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A99036F8;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A9903714;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBEB8(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A99036D8;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A99036F4;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBF78@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 3u)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
    v5 = 0x706F7244726961;
    if (a1 != 2)
    {
      v5 = 1952802157;
      v4 = 0xE400000000000000;
    }

    if (a1)
    {
      v3 = 0x636972656E6567;
    }

    if (a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (a1 <= 1u)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = v4;
    }

    goto LABEL_17;
  }

  if (a1 <= 5u)
  {
    v7 = 0xE500000000000000;
    v6 = 0x6572616873;
    if (a1 != 4)
    {
      v6 = 0x6D79615072656570;
      v7 = 0xEB00000000746E65;
    }

    goto LABEL_17;
  }

  if (a1 == 6)
  {
    v7 = 0xE400000000000000;
    v6 = 1230324804;
LABEL_17:
    *a2 = v6;
    a2[1] = v7;
    type metadata accessor for SFUserDefaultsRepresentation();
    goto LABEL_18;
  }

  type metadata accessor for SFUserDefaultsRepresentation();
LABEL_18:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A98FC0AC(uint64_t result)
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

  result = sub_1A97AEE98(result, v11, 1, v3);
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

void AirDropFeatureFlag.wrappedValue.setter(char a1)
{
  v2 = *(v1 + 16);
  v3 = v2[7];
  if (v3)
  {
    v5 = v2[5];
    v6 = v2[6];
    v7 = v3;
    v8 = sub_1A99767E0();
    [v7 setBool:a1 & 1 forKey:v8];
  }
}

uint64_t (*SFAirDropUserDefaults.solariumEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__solariumEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.walkAwayEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__walkAwayEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FC4A0(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);

  LOBYTE(v2) = sub_1A966D160();

  if (v2)
  {
    if (SFDeviceClassCodeGet() == 3)
    {
      if (qword_1EB3ACAB8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EB3ACAC0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B56F8, &qword_1A99A6930);
      inited = swift_initStackObject();
      *(inited + 16) = "FlyingScotsman";
      *(inited + 24) = 14;
      *(inited + 32) = 2;
      *(inited + 56) = v3;
      *(inited + 64) = "SpringBoard";
      *(inited + 72) = 11;
      *(inited + 80) = 2;
      *(inited + 82) = 0;
      *(inited + 96) = 0;
      *(inited + 104) = 0;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5700, &unk_1A99A6938);
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      v8 = v3;
      *(inited + 88) = sub_1A9976570();
      *(inited + 112) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = sub_1A99768B0();
      *(inited + 48) = v9;
      v10 = sub_1A966D160();
      swift_setDeallocating();
      v11 = *(inited + 48);

      v12 = *(inited + 88);

      v13 = *(inited + 104);

      v14 = *(inited + 112);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t (*SFAirDropUserDefaults.askToAirDropEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__askToAirDropEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.contactShareAfterAirDropEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__contactShareAfterAirDropEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.boopToActionEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopToActionEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.boopToAirDropEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopToAirDropEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.boopToCollaborateEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopToCollaborateEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.shockwaveEffectEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

void *AirDropUserDefault.__allocating_init(wrappedValue:_:kill:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  swift_allocObject();
  v12 = sub_1A9902630(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v12;
}

uint64_t SFAirDropUserDefaults.shockwaveEffectVariant.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant) + 16);

  v2 = sub_1A98F9474();

  return v2;
}

uint64_t sub_1A98FCAB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant) + 16);

  v4 = sub_1A98F9474();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

void SFAirDropUserDefaults.shockwaveEffectVariant.setter()
{
  v1 = *(*(v0 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant) + 16);
  v2 = v1[7];
  if (v2)
  {

    v7 = v2;
    v3 = sub_1A99767E0();

    v4 = v1[5];
    v5 = v1[6];
    v6 = sub_1A99767E0();
    [v7 setObject:v3 forKey:v6];
  }

  else
  {
  }
}

void sub_1A98FCC28(char a1)
{
  v2 = *(v1 + 16);
  v3 = v2[7];
  if (v3)
  {
    if (a1 == 2)
    {
      v4 = v2[5];
      v5 = v2[6];
      v10 = v3;
      v6 = sub_1A99767E0();
      [v10 removeObjectForKey_];
    }

    else
    {
      v7 = v2[5];
      v8 = v2[6];
      v6 = v3;
      v10 = sub_1A99767E0();
      [v6 setBool:a1 & 1 forKey:?];
    }
  }
}

uint64_t AirDropUserDefault.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1A9902B3C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*SFAirDropUserDefaults.shockwaveEffectVariant.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant);
  a1[2] = v3;
  v4 = *(v3 + 16);

  *a1 = sub_1A98F9474();
  a1[1] = v5;
  return sub_1A98FCDDC;
}

uint64_t sub_1A98FCDDC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = v3[7];
    if (v4)
    {
      v6 = *a1;
      v5 = a1[1];

      v7 = v4;
      v8 = sub_1A99767E0();

      v9 = v3[5];
      v10 = v3[6];
      v11 = sub_1A99767E0();
      [v7 setObject:v8 forKey:v11];
    }

    else
    {
      v22 = a1[2];

      v23 = a1[1];
    }
  }

  else
  {
    v12 = a1[1];
    v13 = *(v2 + 16);
    v14 = v13[7];
    if (v14)
    {
      v15 = *a1;
      v16 = v14;
      v17 = sub_1A99767E0();

      v18 = v13[5];
      v19 = v13[6];
      v20 = sub_1A99767E0();
      [v16 setObject:v17 forKey:v20];
    }

    else
    {
      v25 = a1[1];
    }
  }
}

uint64_t SFAirDropUserDefaults.boopInteractionTypeOverride.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride) + 16);

  sub_1A98F973C(a1);
}

uint64_t sub_1A98FCFB0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride) + 16);

  sub_1A98F973C(&v5);

  *a2 = v5;
  return result;
}

uint64_t sub_1A98FD014(unsigned __int8 *a1, void *a2)
{
  v2 = *(*(*a2 + OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride) + 16);
  v3 = *a1;

  sub_1A98FA538(v3);
}

uint64_t SFAirDropUserDefaults.boopInteractionTypeOverride.setter(unsigned __int8 *a1)
{
  v2 = *(*(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride) + 16);
  v3 = *a1;

  sub_1A98FA538(v3);
}

uint64_t (*SFAirDropUserDefaults.boopInteractionTypeOverride.modify(uint64_t a1))(unsigned __int8 *a1)
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride);
  *a1 = v3;
  v4 = *(v3 + 16);

  sub_1A98F973C((a1 + 8));
  return sub_1A98FD138;
}

uint64_t sub_1A98FD138(unsigned __int8 *a1)
{
  v1 = *(*a1 + 16);
  sub_1A98FA538(a1[8]);
}

uint64_t (*SFAirDropUserDefaults.shockwaveHapticsPlayerStartsEarly.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveHapticsPlayerStartsEarly);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.nearFieldControllerEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__nearFieldControllerEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.finalALPN.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__finalALPN);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t SFAirDropUserDefaults.privacyImprovements.getter()
{
  if ((qword_1EB3B3940 & 0x13) != 0)
  {
    v1 = *(*(v0 + OBJC_IVAR___SFAirDropUserDefaults___privacyImprovements) + 16);

    LOBYTE(v1) = sub_1A966D160();

    v2 = (v1 & 1) != 0 && IsAppleInternalBuild() != 0;
    if (MEMORY[0x1E69A53F8])
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = sub_1A99767E0();
      v5 = [v3 objectForKey_];

      if (v5)
      {
        sub_1A99771B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10[0] = v8;
      v10[1] = v9;
      if (*(&v9 + 1))
      {
        if (swift_dynamicCast())
        {
          v2 &= v7 ^ 1;
        }
      }

      else
      {
        sub_1A97B06FC(v10, &qword_1EB3B0BA0, &unk_1A99923D0);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t SFAirDropUserDefaults.idmsDefaultBackoffMS.getter()
{
  v0 = 300000;
  if (MEMORY[0x1E69A53F8])
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = sub_1A99767E0();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_1A97B06FC(v8, &qword_1EB3B0BA0, &unk_1A99923D0);
    }
  }

  return v0;
}

uint64_t SFAirDropUserDefaults.idmsHandleRetryDelaySeconds.getter()
{
  v0 = 604800;
  if (MEMORY[0x1E69A53F8])
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = sub_1A99767E0();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_1A97B06FC(v8, &qword_1EB3B0BA0, &unk_1A99923D0);
    }
  }

  return v0;
}

uint64_t (*SFAirDropUserDefaults.browseAllInterfaces.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__browseAllInterfaces);
  *a1 = v3;
  v4 = *(v3 + 16);

  sub_1A98F9A24((a1 + 8));
  return sub_1A99037CC;
}

uint64_t sub_1A98FD7B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*(v2 + *a1) + 16);

  sub_1A98F9A24(a2);
}

uint64_t sub_1A98FD808@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*(*a1 + *a2) + 16);

  sub_1A98F9A24(&v6);

  *a3 = v6;
  return result;
}

void sub_1A98FD874(unsigned __int8 *a1, void *a2)
{
  v3 = *(*(v2 + *a2) + 16);
  v4 = v3[7];
  if (v4)
  {
    v5 = *a1;
    v6 = v3[5];
    v7 = v3[6];

    v8 = v4;
    v9 = sub_1A99767E0();
    [v8 setBool:v5 forKey:v9];
  }
}

uint64_t (*SFAirDropUserDefaults.registerAllInterfaces.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__registerAllInterfaces);
  *a1 = v3;
  v4 = *(v3 + 16);

  sub_1A98F9A24((a1 + 8));
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.enabledDemoMode.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__enabledDemoMode);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableAirDrop.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableAirDrop);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A98FDAB4;
}

uint64_t (*SFAirDropUserDefaults.disableTLS.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableTLS);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableAirDropBLEAdvertising.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableAirDropBLEAdvertising);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableAutoAccept.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableAutoAccept);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableExtractMediaFromBundles.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableExtractMediaFromBundles);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableTransformingPhotosAssetBundlesToFolders.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableTransformingPhotosAssetBundlesToFolders);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.alwaysExchangeContacts.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__alwaysExchangeContacts);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.a2aRangingAssumeClose.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeClose);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.a2aRangingAssumeFar.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeFar);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t SFAirDropUserDefaults.quicIdleTimeout.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout) + 16);

  v2 = sub_1A98F9E08();

  return v2;
}

uint64_t sub_1A98FDF74@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout) + 16);

  LODWORD(v3) = sub_1A98F9E08();

  *a2 = v3;
  return result;
}

void SFAirDropUserDefaults.quicIdleTimeout.setter()
{
  v1 = *(*(v0 + OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout) + 16);
  v2 = v1[7];
  if (v2)
  {

    v7 = v2;
    v3 = sub_1A9977A30();
    v4 = v1[5];
    v5 = v1[6];
    v6 = sub_1A99767E0();
    [v7 setObject:v3 forKey:v6];
  }
}

uint64_t (*SFAirDropUserDefaults.quicIdleTimeout.modify(uint64_t a1))(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A98F9E08();
  return sub_1A98FE0E8;
}

uint64_t sub_1A98FE0E8(void *a1)
{
  v2 = *a1;
  v1 = (a1 + 1);
  v3 = *(v2 + 16);
  v4 = v3[7];
  if (v4)
  {
    v5 = *v1;
    v6 = v4;
    v7 = sub_1A9977A30();
    v8 = v3[5];
    v9 = v3[6];
    v10 = sub_1A99767E0();
    [v6 setObject:v7 forKey:v10];
  }
}

uint64_t (*SFAirDropUserDefaults.verboseWalkAway.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__verboseWalkAway);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.nearFieldSharingEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__nearFieldSharingEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.objcNearFieldSharingEnabled.modify(uint64_t a1))()
{
  v3 = OBJC_IVAR___SFAirDropUserDefaults__nearFieldSharingEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(*(v1 + v3) + 16);

  LOBYTE(v4) = sub_1A966D160();

  *(a1 + 16) = v4 & 1;
  return sub_1A98FE370;
}

uint64_t (*SFAirDropUserDefaults.cellularUsageEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__cellularUsageEnabled);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FE40C(char *a1, uint64_t a2, void *a3)
{
  v3 = *(*&a1[*a3] + 16);
  v4 = a1;

  LOBYTE(v3) = sub_1A966D160();

  return v3 & 1;
}

uint64_t (*SFAirDropUserDefaults.objcCellularUsageEnabled.modify(uint64_t a1))()
{
  v3 = OBJC_IVAR___SFAirDropUserDefaults__cellularUsageEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(*(v1 + v3) + 16);

  LOBYTE(v4) = sub_1A966D160();

  *(a1 + 16) = v4 & 1;
  return sub_1A99037D8;
}

uint64_t sub_1A98FE530(uint64_t result)
{
  v1 = *(*(*result + *(result + 8)) + 16);
  v2 = v1[7];
  if (v2)
  {
    v3 = *(result + 16);
    v4 = v1[5];
    v5 = v1[6];
    v6 = *(*result + *(result + 8));

    v7 = v2;
    v8 = sub_1A99767E0();
    [v7 setBool:v3 forKey:v8];
  }

  return result;
}

uint64_t SFAirDropUserDefaults.identitySyncServiceEnabled.getter()
{
  v2[3] = &type metadata for SFAirDropSharedFeature;
  v2[4] = sub_1A9902BFC();
  v0 = sub_1A9976310();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

void sub_1A98FE630()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A99767E0();
  v2 = [v0 initWithSuiteName_];

  qword_1EB3ACAC0 = v2;
}

uint64_t (*SFAirDropUserDefaults.sensitivePreviewOverride.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__sensitivePreviewOverride);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A98FA1C8();
  return sub_1A99037DC;
}

uint64_t sub_1A98FE734(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);

  v3 = sub_1A98FA1C8();

  return v3;
}

uint64_t sub_1A98FE778@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*(*a1 + *a2) + 16);

  LOBYTE(v4) = sub_1A98FA1C8();

  *a3 = v4;
  return result;
}

void sub_1A98FE7D8(char a1, void *a2)
{
  v3 = *(*(v2 + *a2) + 16);
  v4 = v3[7];
  if (v4)
  {
    if (a1 == 2)
    {
      v5 = v3[5];
      v6 = v3[6];

      v12 = v4;
      v7 = sub_1A99767E0();
      [v12 removeObjectForKey_];
    }

    else
    {
      v8 = v3[5];
      v9 = v3[6];
      v11 = *(v2 + *a2);

      v7 = v4;
      v12 = sub_1A99767E0();
      [v7 setBool:a1 & 1 forKey:?];
    }
  }
}

uint64_t (*SFAirDropUserDefaults.sensitiveContentOverride.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__sensitiveContentOverride);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A98FA1C8();
  return sub_1A98FE93C;
}

uint64_t sub_1A98FE940(uint64_t *a1)
{
  v1 = *a1;
  sub_1A98FCC28(*(a1 + 8));
}

uint64_t (*SFAirDropUserDefaults.showTransferIdentifierUI.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__showTransferIdentifierUI);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.alwaysAutoAccept.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__alwaysAutoAccept);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FEAB4@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*(*a1 + *a2) + 16);

  LOBYTE(v4) = sub_1A966D160();

  *a3 = v4 & 1;
  return result;
}

void sub_1A98FEB18(char a1, void *a2)
{
  v3 = *(*(v2 + *a2) + 16);
  v4 = v3[7];
  if (v4)
  {
    v6 = v3[5];
    v7 = v3[6];

    v8 = v4;
    v9 = sub_1A99767E0();
    [v8 setBool:a1 & 1 forKey:v9];
  }
}

uint64_t (*SFAirDropUserDefaults.overrideReceivedFilesPathiOS.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__overrideReceivedFilesPathiOS);
  *a1 = v3;
  v4 = *(v3 + 16);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FEC38(void *a1)
{
  v2 = *a1;
  v1 = (a1 + 1);
  v3 = *(v2 + 16);
  v4 = v3[7];
  if (v4)
  {
    v5 = *v1;
    v6 = v3[5];
    v7 = v3[6];
    v8 = v4;
    v9 = sub_1A99767E0();
    [v8 setBool:v5 forKey:v9];
  }
}

uint64_t sub_1A98FECDC()
{
  [objc_allocWithZone(type metadata accessor for SFAirDropUserDefaults()) init];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58E8, &unk_1A99A6C10);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1A9977AE0();
  qword_1EB3ACAC8 = result;
  return result;
}

id SFAirDropUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropUserDefaults.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___SFAirDropUserDefaults__solariumEnabled;
  type metadata accessor for AirDropFeatureFlag();
  v4 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("ShareSheetSolarium", 18, 2, &unk_1F1D278D8);
  *&v1[v3] = v4;
  v5 = OBJC_IVAR___SFAirDropUserDefaults__airDropPrivateContactDiscoveryEnabled;
  v6 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropPrivateContactDiscovery", 30, 2, &unk_1F1D27900);
  *&v1[v5] = v6;
  v7 = OBJC_IVAR___SFAirDropUserDefaults__walkAwayEnabled;
  v8 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropWalkAway", 15, 2, &unk_1F1D27928);
  *&v1[v7] = v8;
  v9 = OBJC_IVAR___SFAirDropUserDefaults__airDropSystemLevelProgressEnabled;
  v10 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropSystemLevelProgress", 26, 2, &unk_1F1D27950);
  *&v1[v9] = v10;
  v11 = OBJC_IVAR___SFAirDropUserDefaults__airDropMoveToAppEnabled;
  v12 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropMoveToApp", 16, 2, &unk_1F1D27978);
  *&v1[v11] = v12;
  v13 = OBJC_IVAR___SFAirDropUserDefaults__askToAirDropEnabled;
  v14 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AskToAirDrop", 12, 2, &unk_1F1D279A0);
  *&v1[v13] = v14;
  v15 = OBJC_IVAR___SFAirDropUserDefaults__contactShareAfterAirDropEnabled;
  v16 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropContactShare", 19, 2, &unk_1F1D279C8);
  *&v1[v15] = v16;
  v17 = OBJC_IVAR___SFAirDropUserDefaults__boopToActionEnabled;
  v18 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopToAction", 12, 2, &unk_1F1D279F0);
  *&v1[v17] = v18;
  v19 = OBJC_IVAR___SFAirDropUserDefaults__boopToAirDropEnabled;
  v20 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopToAirDrop", 13, 2, &unk_1F1D27A18);
  *&v1[v19] = v20;
  v21 = OBJC_IVAR___SFAirDropUserDefaults__boopToCollaborateEnabled;
  v22 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopToCollaborate", 17, 2, &unk_1F1D27A40);
  *&v1[v21] = v22;
  v23 = OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectEnabled;
  v24 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopShockwave", 13, 2, &unk_1F1D27A68);
  *&v1[v23] = v24;
  v25 = OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5838, &qword_1A99A6948);
  swift_allocObject();
  *&v1[v25] = sub_1A98FFEE0(0xD000000000000016, 0x80000001A99E7460, "BoopShockwaveVariant", 20, 2, &unk_1F1D27A90);
  v26 = OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5840, &qword_1A99A6950);
  swift_allocObject();
  *&v1[v26] = sub_1A99003E0(7, "BoopInteractionTypeOverride", 27, 2, &unk_1F1D27AB8);
  v27 = OBJC_IVAR___SFAirDropUserDefaults__shockwaveHapticsPlayerStartsEarly;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5848, &qword_1A99A6958);
  swift_allocObject();
  *&v1[v27] = sub_1A99008CC(1, "ShockwaveHapticsPlayerStartsEarly", 33, 2, &unk_1F1D27AE0);
  v28 = OBJC_IVAR___SFAirDropUserDefaults__nearFieldControllerEnabled;
  v29 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("NearFieldController", 19, 2, &unk_1F1D27B08);
  *&v1[v28] = v29;
  v30 = OBJC_IVAR___SFAirDropUserDefaults__finalALPN;
  v31 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropFinalALPN", 16, 2, &unk_1F1D27B30);
  *&v1[v30] = v31;
  v32 = OBJC_IVAR___SFAirDropUserDefaults___privacyImprovements;
  v33 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropPrivacyImprovements", 26, 2, &unk_1F1D27B58);
  *&v1[v32] = v33;
  SFIsRunningUnitTests();
  SFIsRunningUnitTests();
  SFIsRunningUnitTests();
  SFIsRunningUnitTests();
  if (SFIsRunningUnitTests())
  {
    SFIsRunningUnitTests();
  }

  else
  {
    if (SFDeviceIsVirtualMachine())
    {
      v34 = 1;
      goto LABEL_7;
    }

    IsAppleInternalBuild();
  }

  v34 = 0;
LABEL_7:
  v35 = OBJC_IVAR___SFAirDropUserDefaults__browseAllInterfaces;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5850, &qword_1A99A6960);
  swift_allocObject();
  *&v1[v35] = sub_1A9900DBC(v34, "BrowseAllInterfaces", 19, 2, MEMORY[0x1E69E7CC0]);
  SFIsRunningUnitTests();
  SFIsRunningUnitTests();
  SFIsRunningUnitTests();
  SFIsRunningUnitTests();
  if (SFIsRunningUnitTests())
  {
    SFIsRunningUnitTests();
  }

  else
  {
    if (SFDeviceIsVirtualMachine())
    {
      v36 = 1;
      goto LABEL_13;
    }

    IsAppleInternalBuild();
  }

  v36 = 0;
LABEL_13:
  v37 = OBJC_IVAR___SFAirDropUserDefaults__registerAllInterfaces;
  swift_allocObject();
  v38 = MEMORY[0x1E69E7CC0];
  *&v1[v37] = sub_1A9900DBC(v36, "RegisterAllInterfaces", 21, 2, MEMORY[0x1E69E7CC0]);
  v39 = OBJC_IVAR___SFAirDropUserDefaults__enabledDemoMode;
  swift_allocObject();
  *&v1[v39] = sub_1A99008CC(0, "EnableDemoMode", 14, 2, v38);
  v40 = OBJC_IVAR___SFAirDropUserDefaults__disableAirDrop;
  swift_allocObject();
  *&v1[v40] = sub_1A99008CC(0, "DisableAirDrop", 14, 2, v38);
  v41 = OBJC_IVAR___SFAirDropUserDefaults__disableTLS;
  swift_allocObject();
  *&v1[v41] = sub_1A99008CC(0, "DisableTLS", 10, 2, v38);
  v42 = OBJC_IVAR___SFAirDropUserDefaults__disableAirDropBLEAdvertising;
  swift_allocObject();
  *&v1[v42] = sub_1A99008CC(0, "DisableAirDropAdvertising", 25, 2, v38);
  v43 = OBJC_IVAR___SFAirDropUserDefaults__disableAutoAccept;
  swift_allocObject();
  *&v1[v43] = sub_1A99008CC(0, "DisableAutoAccept", 17, 2, v38);
  v44 = OBJC_IVAR___SFAirDropUserDefaults__disableExtractMediaFromBundles;
  swift_allocObject();
  *&v1[v44] = sub_1A99008CC(0, "DisableExtractMediaFromBundles", 30, 2, v38);
  v45 = OBJC_IVAR___SFAirDropUserDefaults__disableTransformingPhotosAssetBundlesToFolders;
  swift_allocObject();
  *&v1[v45] = sub_1A99008CC(0, "DisableTransformingPhotosAssetBundlesToFolders", 46, 2, v38);
  v46 = OBJC_IVAR___SFAirDropUserDefaults__alwaysExchangeContacts;
  swift_allocObject();
  *&v1[v46] = sub_1A99008CC(0, "AirDropAlwaysExchangeContacts", 29, 2, &unk_1F1D27B80);
  v47 = OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeClose;
  swift_allocObject();
  *&v1[v47] = sub_1A99008CC(0, "A2ARangingAssumeClose", 21, 2, v38);
  v48 = OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeFar;
  swift_allocObject();
  *&v1[v48] = sub_1A99008CC(0, "A2ARangingAssumeFar", 19, 2, v38);
  v49 = OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5858, &qword_1A99A6968);
  swift_allocObject();
  *&v1[v49] = sub_1A99012AC(300000, "QUICIdleTimeout", 15, 2, &unk_1F1D27BA8);
  v50 = OBJC_IVAR___SFAirDropUserDefaults__verboseWalkAway;
  swift_allocObject();
  *&v1[v50] = sub_1A99008CC(0, "VerboseWalkAway", 15, 2, v38);
  v51 = OBJC_IVAR___SFAirDropUserDefaults__nearFieldSharingEnabled;
  swift_allocObject();
  *&v1[v51] = sub_1A99008CC(1, "NearFieldSharingEnabled", 23, 2, v38);
  v52 = 0;
  if ((SFIsGreenTeaDevice() & 1) == 0)
  {
    v52 = SFDeviceClassCodeGet() == 1 || SFDeviceClassCodeGet() == 3;
  }

  v53 = OBJC_IVAR___SFAirDropUserDefaults__cellularUsageEnabled;
  swift_allocObject();
  *&v1[v53] = sub_1A99008CC(v52, "CellularUsageEnabled", 20, 2, MEMORY[0x1E69E7CC0]);
  v54 = OBJC_IVAR___SFAirDropUserDefaults__sensitivePreviewOverride;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5860, &qword_1A99A6970);
  swift_allocObject();
  *&v1[v54] = sub_1A990179C(2, "AirDropSensitivePreviewOverride", 31, 2, &unk_1F1D27BD0);
  v55 = OBJC_IVAR___SFAirDropUserDefaults__sensitiveContentOverride;
  swift_allocObject();
  *&v1[v55] = sub_1A990179C(2, "AirDropSensitiveContentOverride", 31, 2, &unk_1F1D27BF8);
  v56 = OBJC_IVAR___SFAirDropUserDefaults__showTransferIdentifierUI;
  swift_allocObject();
  *&v1[v56] = sub_1A99008CC(0, "AirDropShowTransferIdentifierUI", 31, 2, &unk_1F1D27C20);
  v57 = OBJC_IVAR___SFAirDropUserDefaults__alwaysAutoAccept;
  swift_allocObject();
  *&v1[v57] = sub_1A99008CC(0, "AlwaysAutoAccept", 16, 2, &unk_1F1D27C48);
  v58 = OBJC_IVAR___SFAirDropUserDefaults__overrideReceivedFilesPathiOS;
  swift_allocObject();
  *&v1[v58] = sub_1A99008CC(0, "OverrideReceivedFilesPathiOS", 28, 2, &unk_1F1D27C70);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  return objc_msgSendSuper2(&v60, sel_init);
}

id SFAirDropUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SFAirDropUserDefaults.registeredDefaults.getter()
{
  if (qword_1EB3ACAB0 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  v0 = *(v3 + 24);
  os_unfair_lock_lock(v0 + 4);
  sub_1A9902C74(&v3);
  os_unfair_lock_unlock(v0 + 4);
  v1 = v3;

  return v1;
}

Sharing::SFAirDropUserDefaults::Process_optional __swiftcall SFAirDropUserDefaults.Process.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SFAirDropUserDefaults.Process.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64676E6972616873;
  v3 = 0x436C6F72746E6F43;
  if (v1 != 6)
  {
    v3 = 0x73746361746E6F63;
  }

  v4 = 0x7265646E6946;
  if (v1 != 4)
  {
    v4 = 0x6F42676E69727053;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x706F7244726941;
  if (v1 != 2)
  {
    v5 = 0x55706F7244726941;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1A98FFDC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x64676E6972616873;
  v5 = 0xED00007265746E65;
  v6 = 0x436C6F72746E6F43;
  if (v2 != 6)
  {
    v6 = 0x73746361746E6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265646E6946;
  if (v2 != 4)
  {
    v8 = 0x6F42676E69727053;
    v7 = 0xEB00000000647261;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x706F7244726941;
  if (v2 != 2)
  {
    v10 = 0x55706F7244726941;
    v9 = 0xE900000000000049;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001A99E24C0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1A98FFEE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1EB3ACAB8 != -1)
  {
    v43 = a6;
    swift_once();
    a6 = v43;
  }

  v12 = qword_1EB3ACAC0;
  v13 = *(a6 + 16);
  v48 = v6;
  if (v13)
  {
    v44 = qword_1EB3ACAC0;
    v45 = a4;
    v46 = a3;
    v49 = MEMORY[0x1E69E7CC0];
    v47 = a6;
    sub_1A97BD628(0, v13, 0);
    v14 = v47;
    v15 = v49;
    v16 = 32;
    v17 = 0x64676E6972616873;
    do
    {
      v18 = *(v14 + v16);
      v19 = 0xE900000000000064;
      if (v18 == 6)
      {
        v20 = 0x436C6F72746E6F43;
      }

      else
      {
        v20 = 0x73746361746E6F63;
      }

      if (v18 == 6)
      {
        v19 = 0xED00007265746E65;
      }

      if (v18 == 4)
      {
        v21 = 0x7265646E6946;
      }

      else
      {
        v21 = 0x6F42676E69727053;
      }

      if (v18 == 4)
      {
        v22 = 0xE600000000000000;
      }

      else
      {
        v22 = 0xEB00000000647261;
      }

      if (*(v14 + v16) <= 5u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 0x55706F7244726941;
      if (v18 == 2)
      {
        v23 = 0x706F7244726941;
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE900000000000049;
      }

      if (*(v14 + v16))
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = v17;
      }

      if (*(v14 + v16))
      {
        v26 = 0x80000001A99E24C0;
      }

      else
      {
        v26 = 0xE800000000000000;
      }

      if (*(v14 + v16) <= 1u)
      {
        v23 = v25;
        v24 = v26;
      }

      if (*(v14 + v16) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v20;
      }

      if (*(v14 + v16) <= 3u)
      {
        v28 = v24;
      }

      else
      {
        v28 = v19;
      }

      v50 = v15;
      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = v17;
        sub_1A97BD628((v29 > 1), v30 + 1, 1);
        v17 = v32;
        v14 = v47;
        v15 = v50;
      }

      *(v15 + 16) = v30 + 1;
      v31 = v15 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
      ++v16;
      --v13;
    }

    while (v13);

    v33 = v45;
    a3 = v46;
    v12 = v44;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
    v33 = a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D8, &qword_1A99A6C00);
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = v33;
  *(v34 + 32) = a5;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 56) = v12;
  *(v34 + 80) = 256;
  *(v34 + 88) = a1;
  *(v34 + 96) = a2;
  *(v34 + 112) = 0xD00000000000001ELL;
  *(v34 + 120) = 0x80000001A99E77A0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58E0, &qword_1A99A6C08);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = v12;
  result = sub_1A9976570();
  *(v34 + 104) = result;
  *(v34 + 128) = v15;
  if ((a5 & 1) == 0)
  {
    v40 = v48;
    if (a3)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  v40 = v48;
  if (HIDWORD(a3))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a3 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a3 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v34 + 40) = sub_1A99768B0();
  *(v34 + 48) = v41;
  *(v40 + 16) = v34;
  v42 = qword_1EB3ACAB0;

  if (v42 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBAF8(v34);

  return v40;
}

uint64_t sub_1A99003E0(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v40 = a5;
    swift_once();
    a5 = v40;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v41 = qword_1EB3ACAC0;
    v42 = a2;
    v43 = v6;
    v44 = a5;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v44;
    v14 = v45;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v46 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v44;
        v14 = v46;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v42;
    v6 = v43;
    v11 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58C0, &qword_1A99A6BE8);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58C8, &qword_1A99A6BF0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v38;
  *(v6 + 16) = v32;
  v39 = qword_1EB3ACAB0;

  if (v39 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBBB8(v32);

  return v6;
}

uint64_t sub_1A99008CC(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v40 = a5;
    swift_once();
    a5 = v40;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v41 = qword_1EB3ACAC0;
    v42 = a2;
    v43 = v6;
    v44 = a5;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v44;
    v14 = v45;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v46 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v44;
        v14 = v46;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v42;
    v6 = v43;
    v11 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B56F8, &qword_1A99A6930);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1 & 1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5700, &unk_1A99A6938);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v38;
  *(v6 + 16) = v32;
  v39 = qword_1EB3ACAB0;

  if (v39 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBC78(v32);

  return v6;
}

uint64_t sub_1A9900DBC(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v40 = a5;
    swift_once();
    a5 = v40;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v41 = qword_1EB3ACAC0;
    v42 = a2;
    v43 = v6;
    v44 = a5;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v44;
    v14 = v45;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v46 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v44;
        v14 = v46;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v42;
    v6 = v43;
    v11 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58A8, &qword_1A99A6BD0);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1 & 1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B0, &qword_1A99A6BD8);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v38;
  *(v6 + 16) = v32;
  v39 = qword_1EB3ACAB0;

  if (v39 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBD38(v32);

  return v6;
}

uint64_t sub_1A99012AC(int a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v40 = a5;
    swift_once();
    a5 = v40;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v41 = qword_1EB3ACAC0;
    v42 = a2;
    v43 = v6;
    v44 = a5;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v44;
    v14 = v45;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v46 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v44;
        v14 = v46;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v42;
    v6 = v43;
    v11 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5898, &qword_1A99A6BC0);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 84) = a1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58A0, &qword_1A99A6BC8);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v38;
  *(v6 + 16) = v32;
  v39 = qword_1EB3ACAB0;

  if (v39 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBDF8(v32);

  return v6;
}

uint64_t sub_1A990179C(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v40 = a5;
    swift_once();
    a5 = v40;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v41 = qword_1EB3ACAC0;
    v42 = a2;
    v43 = v6;
    v44 = a5;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v44;
    v14 = v45;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v46 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v44;
        v14 = v46;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v42;
    v6 = v43;
    v11 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5880, &qword_1A99A6BA8);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5888, &qword_1A99A6BB0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v38;
  *(v6 + 16) = v32;
  v39 = qword_1EB3ACAB0;

  if (v39 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBEB8(v32);

  return v6;
}

void *AirDropUserDefault.init(wrappedValue:_:kill:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = *v5;
  v8 = sub_1A9902630(a1, a2, a3, a4, a5);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v8;
}

void (*AirDropUserDefault.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = v1[2];
  SFUserDefault.value.getter(v9);
  return sub_1A9901E18;
}

void sub_1A9901E18(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1A9902B3C(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1A9902B3C((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AirDropFeatureFlag.__allocating_init(_:kill:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AirDropFeatureFlag.init(_:kill:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EB3ACAB8 != -1)
  {
    v38 = a4;
    swift_once();
    a4 = v38;
  }

  v9 = qword_1EB3ACAC0;
  v10 = *(a4 + 16);
  if (v10)
  {
    v39 = qword_1EB3ACAC0;
    v40 = a4;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v10, 0);
    v11 = v40;
    v12 = v41;
    v13 = 32;
    v14 = 0x73746361746E6F63;
    do
    {
      v15 = *(v11 + v13);
      v16 = 0xE900000000000064;
      if (v15 == 6)
      {
        v17 = 0x436C6F72746E6F43;
      }

      else
      {
        v17 = v14;
      }

      if (v15 == 6)
      {
        v16 = 0xED00007265746E65;
      }

      if (v15 == 4)
      {
        v18 = 0x7265646E6946;
      }

      else
      {
        v18 = 0x6F42676E69727053;
      }

      if (v15 == 4)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xEB00000000647261;
      }

      if (*(v11 + v13) <= 5u)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0x55706F7244726941;
      if (v15 == 2)
      {
        v20 = 0x706F7244726941;
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE900000000000049;
      }

      if (*(v11 + v13))
      {
        v22 = 0xD000000000000012;
      }

      else
      {
        v22 = 0x64676E6972616873;
      }

      if (*(v11 + v13))
      {
        v23 = 0x80000001A99E24C0;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (*(v11 + v13) <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      if (*(v11 + v13) <= 3u)
      {
        v24 = v20;
      }

      else
      {
        v24 = v17;
      }

      if (*(v11 + v13) <= 3u)
      {
        v25 = v21;
      }

      else
      {
        v25 = v16;
      }

      v42 = v12;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = v14;
        sub_1A97BD628((v26 > 1), v27 + 1, 1);
        v14 = v29;
        v11 = v40;
        v12 = v42;
      }

      *(v12 + 16) = v27 + 1;
      v28 = v12 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      ++v13;
      --v10;
    }

    while (v10);

    v5 = v4;
    v9 = v39;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B56F8, &qword_1A99A6930);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 56) = v9;
  *(v30 + 64) = "Sharing";
  *(v30 + 72) = 7;
  *(v30 + 80) = 2;
  *(v30 + 82) = 0;
  *(v30 + 96) = 0xD00000000000001ELL;
  *(v30 + 104) = 0x80000001A99E77A0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5700, &unk_1A99A6938);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v9;
  result = sub_1A9976570();
  *(v30 + 88) = result;
  *(v30 + 112) = v12;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a1))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a1 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v30 + 40) = sub_1A99768B0();
  *(v30 + 48) = v36;
  *(v5 + 16) = v30;
  v37 = qword_1EB3ACAB0;

  if (v37 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBC78(v30);

  return v5;
}

void sub_1A9902444(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = v2[7];
  if (v3)
  {
    v4 = *a1;
    v5 = v2[5];
    v6 = v2[6];
    v7 = v3;
    v8 = sub_1A99767E0();
    [v7 setBool:v4 forKey:v8];
  }
}

void (*AirDropFeatureFlag.wrappedValue.modify(uint64_t a1))(void *a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A9902524;
}

void sub_1A9902524(void *a1)
{
  v3 = *a1;
  v1 = (a1 + 1);
  v2 = v3;
  v4 = *(v3 + 56);
  if (v4)
  {
    v5 = *v1;
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v9 = v4;
    v8 = sub_1A99767E0();
    [v9 setBool:v5 forKey:v8];
  }
}

uint64_t AirDropFeatureFlag.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AirDropFeatureFlag.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_1A9902630(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v54 = a4;
  v10 = *v5;
  v11 = *(v10 + 80);
  v12 = sub_1A99770A0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v47 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = v47 - v19;
  if (qword_1EB3ACAB8 != -1)
  {
    swift_once();
  }

  v52 = qword_1EB3ACAC0;
  (*(v17 + 16))();
  v20 = *(v17 + 56);
  v53 = v16;
  v20(v16, 1, 1, v11);
  v21 = *(a5 + 16);
  if (v21)
  {
    v47[0] = v10;
    v47[1] = v11;
    v48 = a2;
    v49 = a3;
    v50 = v6;
    v56 = MEMORY[0x1E69E7CC0];
    v51 = a5;
    sub_1A97BD628(0, v21, 0);
    v22 = v51;
    v23 = v56;
    v24 = 32;
    v25 = 0x73746361746E6F63;
    do
    {
      v26 = *(v22 + v24);
      v27 = 0xE900000000000064;
      if (v26 == 6)
      {
        v28 = 0x436C6F72746E6F43;
      }

      else
      {
        v28 = v25;
      }

      if (v26 == 6)
      {
        v27 = 0xED00007265746E65;
      }

      if (v26 == 4)
      {
        v29 = 0x7265646E6946;
      }

      else
      {
        v29 = 0x6F42676E69727053;
      }

      if (v26 == 4)
      {
        v30 = 0xE600000000000000;
      }

      else
      {
        v30 = 0xEB00000000647261;
      }

      if (*(v22 + v24) <= 5u)
      {
        v28 = v29;
        v27 = v30;
      }

      v31 = 0x55706F7244726941;
      if (v26 == 2)
      {
        v31 = 0x706F7244726941;
        v32 = 0xE700000000000000;
      }

      else
      {
        v32 = 0xE900000000000049;
      }

      if (*(v22 + v24))
      {
        v33 = 0xD000000000000012;
      }

      else
      {
        v33 = 0x64676E6972616873;
      }

      if (*(v22 + v24))
      {
        v34 = 0x80000001A99E24C0;
      }

      else
      {
        v34 = 0xE800000000000000;
      }

      if (*(v22 + v24) <= 1u)
      {
        v31 = v33;
        v32 = v34;
      }

      if (*(v22 + v24) <= 3u)
      {
        v35 = v31;
      }

      else
      {
        v35 = v28;
      }

      if (*(v22 + v24) <= 3u)
      {
        v36 = v32;
      }

      else
      {
        v36 = v27;
      }

      v56 = v23;
      v38 = *(v23 + 16);
      v37 = *(v23 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = v25;
        sub_1A97BD628((v37 > 1), v38 + 1, 1);
        v25 = v40;
        v22 = v51;
        v23 = v56;
      }

      *(v23 + 16) = v38 + 1;
      v39 = v23 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v36;
      ++v24;
      --v21;
    }

    while (v21);

    a3 = v49;
    v6 = v50;
    v41 = v54;
    a2 = v48;
    v10 = v47[0];
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
    v41 = v54;
  }

  v42 = *(v10 + 88);
  type metadata accessor for SFUserDefault();
  v43 = v52;
  v44 = v52;
  v6[2] = SFUserDefault.__allocating_init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(v43, a2, a3, v41, 0, 0, 256, v55, 0xD00000000000001ELL, 0x80000001A99E77A0, v53, v23);
  v45 = qword_1EB3ACAB0;

  if (v45 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A97A8548();

  return v6;
}

uint64_t sub_1A9902B3C(uint64_t a1)
{
  v2 = *(*(*(*v1 + 80) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v8 - v3;
  v5 = v1[2];
  (*(v6 + 16))(&v8 - v3);
  return SFUserDefault.value.setter(v4);
}

unint64_t sub_1A9902BFC()
{
  result = qword_1EB3B5808;
  if (!qword_1EB3B5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5808);
  }

  return result;
}

void sub_1A9902C90()
{
  v1 = v0;
  if (qword_1EB3ACAB8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (!qword_1EB3ACAC0)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v21 = 0xD000000000000037;
      v21[1] = 0x80000001A99E7E80;
      v21[2] = 0xD000000000000053;
      v21[3] = 0x80000001A99E7EC0;
      v21[4] = 346;
      v21[10] = 0x2000000000000000;
      swift_willThrow();
      return;
    }

    v2 = qword_1EB3ACAB0;
    v59 = qword_1EB3ACAC0;
    if (v2 != -1)
    {
      swift_once();
    }

    sub_1A9977AF0();
    v3 = *(v63 + 24);
    os_unfair_lock_lock(v3 + 4);
    sub_1A9903798(&v63);
    if (v1)
    {
      break;
    }

    os_unfair_lock_unlock(v3 + 4);
    v4 = v63;

    v5 = *(v4 + 16);
    v65 = 0;
    if (v5)
    {
      v61 = MEMORY[0x1E69E7CC0];
      sub_1A97BDCA8(0, v5, 0);
      v6 = v61;
      v7 = v5 - 1;
      v60 = v4;
      for (i = (v4 + 96); ; i += 9)
      {
        v9 = *(i - 7);
        v10 = *(i - 6);
        v11 = *(i - 4);
        v13 = *(i - 2);
        v12 = *(i - 1);
        v14 = *i;

        v12(&v63, v15);

        v61 = v6;
        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          sub_1A97BDCA8((v16 > 1), v17 + 1, 1);
          v6 = v61;
        }

        v6[2] = v17 + 1;
        v18 = &v6[6 * v17];
        v19 = v63;
        v20 = v64[1];
        v18[3] = v64[0];
        v18[4] = v20;
        v18[2] = v19;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v22 = v6[2];
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      *&v63 = MEMORY[0x1E69E7CC0];
      sub_1A97BD628(0, v22, 0);
      v24 = v63;
      v25 = v6 + 5;
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        *&v63 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);

        if (v29 >= v28 >> 1)
        {
          sub_1A97BD628((v28 > 1), v29 + 1, 1);
          v24 = v63;
        }

        *(v24 + 16) = v29 + 1;
        v30 = v24 + 16 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v26;
        v25 += 6;
        --v22;
      }

      while (v22);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v31 = [v59 dictionaryRepresentation];
    v1 = sub_1A9976700();

    v32 = v1 + 64;
    v33 = 1 << *(v1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v1 + 64);
    v36 = (v33 + 63) >> 6;
    v60 = v1;

    v37 = 0;
    v58 = v23;
    while (v35)
    {
      v38 = v37;
LABEL_30:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = v39 | (v38 << 6);
      v41 = (*(v60 + 48) + 16 * v40);
      v1 = *v41;
      v42 = v41[1];
      v43 = sub_1A97AF7EC(*(v60 + 56) + 32 * v40, v64);
      *&v63 = v1;
      *(&v63 + 1) = v42;
      v61 = v1;
      v62 = v42;
      MEMORY[0x1EEE9AC00](v43);
      v54[2] = &v61;

      v44 = v65;
      v45 = sub_1A9824824(sub_1A97B2400, v54, v24);
      v65 = v44;
      if (v45)
      {
        sub_1A97B06FC(&v63, &qword_1EB3B5878, &qword_1A99A6BA0);
        v37 = v38;
      }

      else
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1A9977400();
        v46 = v61;
        v57 = v62;

        sub_1A97B06FC(&v63, &qword_1EB3B5878, &qword_1A99A6BA0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1A97AEE98(0, *(v58 + 2) + 1, 1, v58);
        }

        v48 = *(v58 + 2);
        v47 = *(v58 + 3);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v55 = *(v58 + 2);
          v56 = v48 + 1;
          v53 = sub_1A97AEE98((v47 > 1), v48 + 1, 1, v58);
          v48 = v55;
          v49 = v56;
          v58 = v53;
        }

        v50 = v58;
        *(v58 + 2) = v49;
        v51 = &v50[48 * v48];
        *(v51 + 4) = v1;
        *(v51 + 5) = v42;
        v52 = v57;
        *(v51 + 6) = v46;
        *(v51 + 7) = v52;
        *(v51 + 16) = 16777472;
        v51[68] = 0;
        LOBYTE(v52) = BYTE2(v61);
        *(v51 + 69) = v61;
        v51[71] = v52;
        *(v51 + 9) = MEMORY[0x1E69E7CC0];
        v37 = v38;
      }
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        *&v63 = v6;
        sub_1A98FC0AC(v58);

        return;
      }

      v35 = *(v32 + 8 * v38);
      ++v37;
      if (v35)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  os_unfair_lock_unlock(v3 + 4);
  __break(1u);
}

unint64_t _s7Sharing21SFAirDropUserDefaultsC11descriptionSSvg_0()
{
  sub_1A9902C90();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v2, 0);
    v3 = 32;
    v4 = v19;
    do
    {
      v16 = *(v1 + v3);
      v17 = *(v1 + v3 + 16);
      v18 = *(v1 + v3 + 32);
      v5 = SFUserDefaultDescription.description.getter();
      v20 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1A97BD628((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v20;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v12 = sub_1A9976760();
  v14 = v13;

  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v12, v14);

  return 0xD00000000000001CLL;
}

unint64_t sub_1A99034D4()
{
  result = qword_1EB3B5868;
  if (!qword_1EB3B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5868);
  }

  return result;
}

uint64_t keypath_set_80Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v5 = *a2;
  v7 = *a1;
  return a5(&v7);
}

unint64_t sub_1A9903664()
{
  result = qword_1EB3B5870;
  if (!qword_1EB3B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5870);
  }

  return result;
}

uint64_t sub_1A990380C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1A9903864@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SFClientIdentity.init(addingUntrustedProcessName:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SFClientIdentity();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(a3, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A9903B30(a3);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
    v27 = *&v11[v12[12]];
    v13 = &v11[v12[16]];
    v14 = *v13;
    v25 = *(v13 + 1);
    v26 = v14;
    v15 = *&v11[v12[20] + 8];

    v16 = v12[24];
    v17 = *&v11[v16];
    v18 = v12[12];
    v19 = (a4 + v12[16]);
    v20 = (a4 + v12[20]);
    v21 = sub_1A99762C0();
    (*(*(v21 - 8) + 32))(a4, v11, v21);
    *(a4 + v18) = v27;
    v22 = v25;
    *v19 = v26;
    v19[1] = v22;
    *v20 = a1;
    v20[1] = a2;
    *(a4 + v16) = v17;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_1A9903ACC(a3, a4);
    return sub_1A9903B30(v11);
  }
}

uint64_t sub_1A9903A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFClientIdentity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9903ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFClientIdentity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9903B30(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFClientIdentity.init(xpcConnection:accessLevel:)@<X0>(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  v7 = v6[12];
  v8 = (a3 + v6[16]);
  v9 = (a3 + v6[20]);
  v10 = v6[24];
  sub_1A99762B0();
  *(a3 + v7) = [a1 processIdentifier];
  v11 = sub_1A986F808();
  v13 = v12;

  *v8 = v11;
  v8[1] = v13;
  *v9 = 0;
  v9[1] = 0;
  *(a3 + v10) = v5;
  type metadata accessor for SFClientIdentity();

  return swift_storeEnumTagMultiPayload();
}

uint64_t SFClientIdentity.connectionID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFClientIdentity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
    v9 = *&v7[*(v8 + 64) + 8];

    v10 = *&v7[*(v8 + 80) + 8];

    v11 = sub_1A99762C0();
    v12 = *(v11 - 8);
    (*(v12 + 32))(a1, v7, v11);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1A9903B30(v7);
    v14 = sub_1A99762C0();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

unint64_t SFClientIdentity.bundleIdentifier.getter()
{
  v1 = type metadata accessor for SFClientIdentity();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9903A68(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
      v7 = (v4 + *(v6 + 64));
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v4 + *(v6 + 80) + 8);

      v11 = sub_1A99762C0();
      (*(*(v11 - 8) + 8))(v4, v11);
      return v8;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v14 = *v4;
    v13 = v4[1];
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1A99772B0();

    v15 = 0xD000000000000018;
    v16 = 0x80000001A99E7F80;
    MEMORY[0x1AC5895B0](v14, v13);

    return v15;
  }
}

uint64_t SFClientIdentity.untrustedProcessName.getter()
{
  v1 = type metadata accessor for SFClientIdentity();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1A9903B30(v4);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v9 = sub_1A9976820();
    return v9;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  v7 = *&v4[*(v6 + 64) + 8];

  v8 = &v4[*(v6 + 80)];
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_1A99762C0();
  (*(*(v11 - 8) + 8))(v4, v11);
  return v9;
}

id SFClientIdentity.pid.getter()
{
  v1 = type metadata accessor for SFClientIdentity();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1A9903B30(v4);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v11 = [objc_opt_self() processInfo];
    v7 = [v11 processIdentifier];

    return v7;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  v7 = *&v4[v6[12]];
  v8 = *&v4[v6[16] + 8];

  v9 = *&v4[v6[20] + 8];

  v10 = sub_1A99762C0();
  (*(*(v10 - 8) + 8))(v4, v10);
  return v7;
}

uint64_t SFClientIdentity.shortDescription.getter()
{
  v0 = SFClientIdentity.bundleIdentifier.getter();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = SFClientIdentity.untrustedProcessName.getter();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v0 = 0x296C696E28;
      v2 = 0xE500000000000000;
    }
  }

  MEMORY[0x1AC5895B0](v0, v2);

  MEMORY[0x1AC5895B0](58, 0xE100000000000000);
  SFClientIdentity.pid.getter();
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  return 0;
}

uint64_t SFClientIdentity.accessLevel.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFClientIdentity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
      v10 = *&v7[v9[16] + 8];

      v11 = *&v7[v9[20] + 8];

      *a1 = *&v7[v9[24]];
      v12 = sub_1A99762C0();
      return (*(*(v12 - 8) + 8))(v7, v12);
    }
  }

  else
  {
    result = sub_1A9903B30(v7);
  }

  *a1 = 3;
  return result;
}

unint64_t SFClientIdentity.description.getter()
{
  v1 = type metadata accessor for SFClientIdentity();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1A99772B0();

  v23 = 0xD000000000000012;
  v24 = 0x80000001A99E7FA0;
  v10 = SFClientIdentity.bundleIdentifier.getter();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = SFClientIdentity.untrustedProcessName.getter();
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v10 = 0x296C696E28;
      v12 = 0xE500000000000000;
    }
  }

  MEMORY[0x1AC5895B0](v10, v12);

  MEMORY[0x1AC5895B0](58, 0xE100000000000000);
  v22[3] = SFClientIdentity.pid.getter();
  v14 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v14);

  MEMORY[0x1AC5895B0](0x7463656E6E6F6320, 0xEE003A44496E6F69);
  sub_1A9903A68(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
    v16 = *&v4[*(v15 + 64) + 8];

    v17 = *&v4[*(v15 + 80) + 8];

    (*(v6 + 32))(v9, v4, v5);
    v18 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
    v20 = v19;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v18 = 0x296C696E28;
    sub_1A9903B30(v4);
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1AC5895B0](v18, v20);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  return v23;
}

uint64_t sub_1A9904704()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B58F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B58F0);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_DWORD *SFClientAccessLevel.verifyHasAccess(to:)(_DWORD *result)
{
  if ((*result & ~*v1) != 0)
  {
    if (qword_1EB3B0B68 != -1)
    {
      swift_once();
    }

    v2 = sub_1A99764A0();
    __swift_project_value_buffer(v2, qword_1EB3B58F0);
    v3 = sub_1A9976480();
    v4 = sub_1A9976F70();
    v5 = os_log_type_enabled(v3, v4);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315650;
      v23 = 91;
      v24 = 0xE100000000000000;
      v25 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
      sub_1A97BD6AC();
      v9 = sub_1A9976760();
      MEMORY[0x1AC5895B0](v9);

      MEMORY[0x1AC5895B0](93, 0xE100000000000000);
      v10 = sub_1A97AF148(91, 0xE100000000000000, &v21);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v23 = 91;
      v24 = 0xE100000000000000;
      v25 = MEMORY[0x1E69E7CC0];
      v11 = sub_1A9976760();
      MEMORY[0x1AC5895B0](v11);

      MEMORY[0x1AC5895B0](93, 0xE100000000000000);
      v12 = sub_1A97AF148(v23, v24, &v21);

      *(v7 + 14) = v12;
      v6 = MEMORY[0x1E69E7CC0];
      *(v7 + 22) = 2080;
      v23 = 91;
      v24 = 0xE100000000000000;
      v25 = v6;
      v13 = sub_1A9976760();
      MEMORY[0x1AC5895B0](v13);

      MEMORY[0x1AC5895B0](93, 0xE100000000000000);
      v14 = sub_1A97AF148(v23, v24, &v21);

      *(v7 + 24) = v14;
      _os_log_impl(&dword_1A9662000, v3, v4, "Operation denied {description: %s, requestedAccessLevel: %s, currentAccessLevel: %s}", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC58D2C0](v8, -1, -1);
      MEMORY[0x1AC58D2C0](v7, -1, -1);
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD00000000000001FLL, 0x80000001A99E7FC0);
    v21 = 91;
    v22 = 0xE100000000000000;
    v25 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    sub_1A97BD6AC();
    v15 = sub_1A9976760();
    MEMORY[0x1AC5895B0](v15);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    MEMORY[0x1AC5895B0](v21, v22);

    MEMORY[0x1AC5895B0](0xD000000000000018, 0x80000001A99E7FE0);
    v21 = 91;
    v22 = 0xE100000000000000;
    v25 = v6;
    v16 = sub_1A9976760();
    MEMORY[0x1AC5895B0](v16);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    MEMORY[0x1AC5895B0](v21, v22);

    MEMORY[0x1AC5895B0](0xD000000000000016, 0x80000001A99E8000);
    v21 = 91;
    v22 = 0xE100000000000000;
    v25 = v6;
    v17 = sub_1A9976760();
    MEMORY[0x1AC5895B0](v17);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    MEMORY[0x1AC5895B0](v21, v22);

    MEMORY[0x1AC5895B0](125, 0xE100000000000000);
    v18 = v23;
    v19 = v24;
    sub_1A97BCDE0();
    swift_allocError();
    *v20 = v18;
    v20[1] = v19;
    v20[2] = 0xD000000000000052;
    v20[3] = 0x80000001A99E8020;
    v20[4] = 136;
    v20[10] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t SFClientAccessLevel.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v0 = sub_1A9976760();
  MEMORY[0x1AC5895B0](v0);

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return 91;
}

uint64_t SFClientAccessLevel.init(xpcConnection:)@<X0>(void *a1@<X0>, int *a2@<X8>)
{
  v4 = sub_1A99767E0();
  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  v6 = *(&v16 + 1);
  v7 = sub_1A99767E0();
  v8 = [a1 valueForEntitlement_];

  if (v8)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v9 = *(&v16 + 1) != 0;
  v15 = v13;
  v16 = v14;
  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (*(&v14 + 1))
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  sub_1A9812E28(&v15);
  result = sub_1A9812E28(v17);
  *a2 = v11;
  return result;
}

uint64_t sub_1A9904F18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v0 = sub_1A9976760();
  MEMORY[0x1AC5895B0](v0);

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1A9904FB4()
{
  result = qword_1EB3B5908;
  if (!qword_1EB3B5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5908);
  }

  return result;
}

unint64_t sub_1A990500C()
{
  result = qword_1EB3B5910;
  if (!qword_1EB3B5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5910);
  }

  return result;
}

unint64_t sub_1A9905064()
{
  result = qword_1EB3AC4C8;
  if (!qword_1EB3AC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC4C8);
  }

  return result;
}

unint64_t sub_1A99050BC()
{
  result = qword_1EB3AC4C0;
  if (!qword_1EB3AC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC4C0);
  }

  return result;
}

void sub_1A9905110()
{
  sub_1A9905184();
  if (v0 <= 0x3F)
  {
    sub_1A99051B4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1A9905184()
{
  result = qword_1EB3AC928;
  if (!qword_1EB3AC928)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB3AC928);
  }

  return result;
}

void sub_1A99051B4(uint64_t a1)
{
  if (!qword_1EB3ACCD8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A99762C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3ACCD8);
    }
  }
}

uint64_t sub_1A99052F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_1A9976420();
  __swift_allocate_value_buffer(v4, qword_1EB3EAFB8);
  __swift_project_value_buffer(v4, qword_1EB3EAFB8);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_1A99763C0();
}

uint64_t sub_1A99053F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1A99777E0() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1A99777E0() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A99054C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1A990A500(&qword_1EB3B4D50, MEMORY[0x1E6968FB0]);
    v22 = sub_1A99767A0();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9905724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v64[-v14];
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v66 = *(v13 + 72);
    v67 = v5;
    v68 = v4;
    do
    {
      sub_1A97C13A4(v18, v15, v5, v4);
      sub_1A97C13A4(v19, v12, v5, v4);
      v26 = *v15 == *v12 && *(v15 + 1) == *(v12 + 1);
      if (!v26 && (sub_1A99777E0() & 1) == 0)
      {
LABEL_41:
        sub_1A97B06FC(v12, v5, v4);
        sub_1A97B06FC(v15, v5, v4);
        return 0;
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      v30 = *(v15 + 4);
      v29 = *(v15 + 5);
      v31 = v15[48];
      v33 = *(v12 + 2);
      v32 = *(v12 + 3);
      v35 = *(v12 + 4);
      v34 = *(v12 + 5);
      v36 = v12[48];
      v72[0] = v28;
      v72[1] = v27;
      v70 = v29;
      v71 = v30;
      v72[2] = v30;
      v72[3] = v29;
      v73 = v31;
      v74 = v33;
      v75 = v32;
      v76 = v35;
      v77 = v34;
      v78 = v36;
      if (v31)
      {
        if (v31 == 1)
        {
          if (v36 != 1)
          {
            v55 = v27;
            v56 = v35;
            v57 = v29;
            sub_1A97DC908(v33, v32, v56, v34, v36);
            v50 = v28;
            v51 = v55;
            v52 = v71;
            v53 = v57;
            v54 = 1;
            goto LABEL_40;
          }

          if (v28 == v33 && v27 == v32)
          {
            v20 = v27;
            sub_1A97DC908(v28, v27, v35, v34, 1u);
            v21 = v28;
            v22 = v20;
            v24 = v70;
            v23 = v71;
            v25 = 1;
LABEL_6:
            sub_1A97DC908(v21, v22, v23, v24, v25);
            sub_1A97B06FC(v72, &qword_1EB3B59F8, &qword_1A99A7470);
            v5 = v67;
            v4 = v68;
            goto LABEL_7;
          }

          v69 = v27;
          v65 = sub_1A99777E0();
          sub_1A97DC908(v33, v32, v35, v34, 1u);
          v37 = v28;
          v38 = v69;
          v39 = v70;
          v40 = v71;
          v41 = 1;
        }

        else
        {
          if (v36 != 2)
          {
            v58 = v33;
            v59 = v27;
            v60 = v32;
            v61 = v35;
            v62 = v29;
            v63 = v34;
            goto LABEL_39;
          }

          v69 = v27;
          if (v28 != v33 || v27 != v32)
          {
            v43 = sub_1A99777E0();
            v29 = v70;
            if ((v43 & 1) == 0)
            {
              v58 = v33;
              v59 = v69;
              v60 = v32;
              v61 = v35;
              v62 = v70;
              v63 = v34;
              LOBYTE(v36) = 2;
LABEL_39:
              sub_1A97DC908(v58, v60, v61, v63, v36);
              v50 = v28;
              v51 = v59;
              v52 = v71;
              v53 = v62;
              v54 = 2;
LABEL_40:
              sub_1A97DC908(v50, v51, v52, v53, v54);
              sub_1A97B06FC(v72, &qword_1EB3B59F8, &qword_1A99A7470);
              v5 = v67;
              v4 = v68;
              goto LABEL_41;
            }
          }

          if (v71 == v35 && v29 == v34)
          {
            v44 = v71;
            v45 = v29;
            sub_1A97DC908(v33, v32, v71, v29, 2u);
            v21 = v28;
            v22 = v69;
            v23 = v44;
            v24 = v45;
            v25 = 2;
            goto LABEL_6;
          }

          v65 = sub_1A99777E0();
          sub_1A97DC908(v33, v32, v35, v34, 2u);
          v37 = v28;
          v38 = v69;
          v39 = v70;
          v40 = v71;
          v41 = 2;
        }
      }

      else
      {
        if (v36)
        {
          v47 = v27;
          v48 = v35;
          v49 = v29;
          sub_1A97DC908(v33, v32, v48, v34, v36);
          v50 = v28;
          v51 = v47;
          v52 = v71;
          v53 = v49;
          v54 = 0;
          goto LABEL_40;
        }

        if (v28 == v33 && v27 == v32)
        {
          v42 = v27;
          sub_1A97DC908(v28, v27, v35, v34, 0);
          v21 = v28;
          v22 = v42;
          v24 = v70;
          v23 = v71;
          v25 = 0;
          goto LABEL_6;
        }

        v69 = v27;
        v65 = sub_1A99777E0();
        sub_1A97DC908(v33, v32, v35, v34, 0);
        v37 = v28;
        v38 = v69;
        v39 = v70;
        v40 = v71;
        v41 = 0;
      }

      sub_1A97DC908(v37, v38, v40, v39, v41);
      sub_1A97B06FC(v72, &qword_1EB3B59F8, &qword_1A99A7470);
      v5 = v67;
      v4 = v68;
      if ((v65 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_7:
      sub_1A97B06FC(v12, v5, v4);
      sub_1A97B06FC(v15, v5, v4);
      v19 += v66;
      v18 += v66;
      --v16;
    }

    while (v16);
  }

  return 1;
}

uint64_t sub_1A9905C9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1A97C13A4(v20, v17, a3, a4);
        sub_1A97C13A4(v21, v14, a3, a4);
        v23 = a5(v17, v14);
        sub_1A97B06FC(v14, a3, a4);
        sub_1A97B06FC(v17, a3, a4);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1A9905E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = v90[8];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v77 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A08, &qword_1A99A7480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A00, &qword_1A99A7478);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A10, &qword_1A99A7488);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v77 - v27;
  v29 = &v77 + *(v26 + 56) - v27;
  sub_1A97C13A4(a1, &v77 - v27, &qword_1EB3B5A00, &qword_1A99A7478);
  sub_1A97C13A4(a2, v29, &qword_1EB3B5A00, &qword_1A99A7478);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v28, v23, &qword_1EB3B5A00, &qword_1A99A7478);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A20, &qword_1A99A7498) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v29, v16, &qword_1EB3B5A08, &qword_1A99A7480);
      v57 = v91;
      v58 = v90[4];
      v59 = v87;
      v58(v87, &v23[v54], v91);
      v60 = v86;
      v58(v86, &v29[v54], v57);
      if (*v23 == *v16 && *(v23 + 1) == *(v16 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v61 = *(v23 + 3);
        v62 = *(v23 + 4);
        v63 = *(v23 + 5);
        v64 = v23[48];
        v97 = *(v23 + 2);
        v98 = v61;
        v99 = v62;
        v100 = v63;
        v101 = v64;
        v66 = *(v16 + 3);
        v67 = *(v16 + 4);
        v68 = *(v16 + 5);
        v69 = v16[48];
        v92 = *(v16 + 2);
        v65 = v92;
        v93 = v66;
        v94 = v67;
        v95 = v68;
        v96 = v69;
        sub_1A97DC908(v97, v61, v62, v63, v64);
        sub_1A97DC908(v65, v66, v67, v68, v69);
        LOBYTE(v65) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
        sub_1A97DC96C(v92, v93, v94, v95, v96);
        sub_1A97DC96C(v97, v98, v99, v100, v101);
        sub_1A97B06FC(v23, &qword_1EB3B5A08, &qword_1A99A7480);
        if (v65)
        {
          v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v70 = v91;
          v71 = v90[1];
          v71(v60, v91);
          v71(v59, v70);
          sub_1A97B06FC(v16, &qword_1EB3B5A08, &qword_1A99A7480);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v23, &qword_1EB3B5A08, &qword_1A99A7480);
      }

      v74 = v91;
      v75 = v90[1];
      v75(v60, v91);
      v75(v59, v74);
      sub_1A97B06FC(v16, &qword_1EB3B5A08, &qword_1A99A7480);
      goto LABEL_20;
    }

    (v90[1])(&v23[v54], v91);
    sub_1A97B06FC(v23, &qword_1EB3B5A08, &qword_1A99A7480);
LABEL_9:
    v55 = &qword_1EB3B5A10;
    v56 = &qword_1A99A7488;
LABEL_21:
    sub_1A97B06FC(v28, v55, v56);
    v50 = 0;
    return v50 & 1;
  }

  sub_1A97C13A4(v28, v21, &qword_1EB3B5A00, &qword_1A99A7478);
  v31 = *v21;
  v30 = *(v21 + 1);
  v32 = *(v21 + 3);
  v87 = *(v21 + 2);
  v85 = v32;
  LODWORD(v86) = v21[32];
  v33 = *(v21 + 5);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A18, &qword_1A99A7490) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v90[1])(&v21[v34], v91);
    sub_1A97DC96C(v31, v30, v87, v85, v86);

    goto LABEL_9;
  }

  v79 = v28;
  v84 = v33;
  v35 = *(v29 + 1);
  v78 = *v29;
  v36 = *(v29 + 2);
  v77 = *(v29 + 3);
  v37 = v29[32];
  v83 = *(v29 + 5);
  v38 = v90[4];
  v39 = &v21[v34];
  v40 = v91;
  v38(v89, v39, v91);
  v38(v88, &v29[v34], v40);
  v97 = v31;
  v98 = v30;
  v41 = v85;
  v42 = v78;
  v99 = v87;
  v100 = v85;
  v43 = v86;
  v101 = v86;
  v92 = v78;
  v93 = v35;
  v44 = v77;
  v94 = v36;
  v95 = v77;
  v96 = v37;
  sub_1A97DC908(v31, v30, v87, v85, v86);
  v81 = v35;
  v82 = v36;
  v45 = v36;
  v46 = v44;
  v80 = v37;
  sub_1A97DC908(v42, v35, v45, v44, v37);
  LOBYTE(v44) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
  sub_1A97DC96C(v92, v93, v94, v95, v96);
  sub_1A97DC96C(v97, v98, v99, v100, v101);
  if ((v44 & 1) == 0)
  {
    sub_1A97DC96C(v42, v81, v82, v46, v80);

    sub_1A97DC96C(v31, v30, v87, v41, v43);

    v28 = v79;
    goto LABEL_17;
  }

  v47 = sub_1A9905724(v84, v83, &qword_1EB3B5A08, &qword_1A99A7480);
  sub_1A97DC96C(v42, v81, v82, v46, v80);

  sub_1A97DC96C(v31, v30, v87, v41, v43);

  v28 = v79;
  if ((v47 & 1) == 0)
  {
LABEL_17:
    v72 = v91;
    v73 = v90[1];
    v73(v88, v91);
    v73(v89, v72);
LABEL_20:
    v55 = &qword_1EB3B5A00;
    v56 = &qword_1A99A7478;
    goto LABEL_21;
  }

  v48 = v88;
  v49 = v89;
  v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v51 = v91;
  v52 = v48;
  v53 = v90[1];
  v53(v52, v91);
  v53(v49, v51);
LABEL_15:
  sub_1A97B06FC(v28, &qword_1EB3B5A00, &qword_1A99A7478);
  return v50 & 1;
}