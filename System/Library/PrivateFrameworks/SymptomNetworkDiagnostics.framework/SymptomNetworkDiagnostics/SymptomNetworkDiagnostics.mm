uint64_t sub_22B0FE3F4()
{
  MEMORY[0x23188B0A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0FE42C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0FE464()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0FE4B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0FE504(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t NetworkDiagnosticsPayload.description.getter()
{
  v1 = type metadata accessor for WiFiDisassociationPayload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InternetOutagePayload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DNSServerOutagePayload(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NetworkMisconfigurationPayload(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RadioLinkCongestionPayload(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NetworkDiagnosticsPayload(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B0FEC84(v0, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_22B0FEE74(v28, v12, type metadata accessor for DHCPAcquisitionFailurePayload);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22B1104A4();

      v40 = 0xD00000000000001ALL;
      v41 = 0x800000022B110ED0;
      v36 = sub_22B0FECE8(type metadata accessor for DHCPAcquisitionFailurePayload);
      MEMORY[0x23188A7E0](v36);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v31 = v40;
      v32 = v12;
      v33 = type metadata accessor for DHCPAcquisitionFailurePayload;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_22B0FEE74(v28, v8, type metadata accessor for InternetOutagePayload);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22B1104A4();

      v40 = 0xD000000000000011;
      v41 = 0x800000022B110EB0;
      v34 = sub_22B0FECE8(type metadata accessor for InternetOutagePayload);
      MEMORY[0x23188A7E0](v34);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v31 = v40;
      v32 = v8;
      v33 = type metadata accessor for InternetOutagePayload;
    }

    else
    {
      sub_22B0FEE74(v28, v4, type metadata accessor for WiFiDisassociationPayload);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22B1104A4();

      v40 = 0xD000000000000016;
      v41 = 0x800000022B110E90;
      v38 = sub_22B0FECE8(type metadata accessor for WiFiDisassociationPayload);
      MEMORY[0x23188A7E0](v38);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v31 = v40;
      v32 = v4;
      v33 = type metadata accessor for WiFiDisassociationPayload;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22B0FEE74(v28, v20, type metadata accessor for NetworkMisconfigurationPayload);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22B1104A4();

      v40 = 0xD00000000000001ALL;
      v41 = 0x800000022B110F10;
      v30 = sub_22B0FECE8(type metadata accessor for NetworkMisconfigurationPayload);
      MEMORY[0x23188A7E0](v30);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v31 = v40;
      v32 = v20;
      v33 = type metadata accessor for NetworkMisconfigurationPayload;
    }

    else
    {
      sub_22B0FEE74(v28, v16, type metadata accessor for DNSServerOutagePayload);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22B1104A4();

      v40 = 0xD000000000000013;
      v41 = 0x800000022B110EF0;
      v37 = DNSServerOutagePayload.description.getter();
      MEMORY[0x23188A7E0](v37);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v31 = v40;
      v32 = v16;
      v33 = type metadata accessor for DNSServerOutagePayload;
    }
  }

  else
  {
    sub_22B0FEE74(v28, v24, type metadata accessor for RadioLinkCongestionPayload);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_22B1104A4();

    v40 = 0xD000000000000017;
    v41 = 0x800000022B110F30;
    v35 = sub_22B0FECE8(type metadata accessor for RadioLinkCongestionPayload);
    MEMORY[0x23188A7E0](v35);

    MEMORY[0x23188A7E0](62, 0xE100000000000000);
    v31 = v40;
    v32 = v24;
    v33 = type metadata accessor for RadioLinkCongestionPayload;
  }

  sub_22B0FEEDC(v32, v33);
  return v31;
}

uint64_t sub_22B0FEC4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0FEC84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDiagnosticsPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0FECE8(uint64_t (*a1)(void))
{
  v3 = v1;
  BYTE8(v7) = 0;
  sub_22B1104A4();
  MEMORY[0x23188A7E0](0x697720746E657645, 0xEE00204449206874);
  MEMORY[0x23188A7E0](v3[4], v3[5]);
  MEMORY[0x23188A7E0](23328, 0xE200000000000000);
  *&v7 = *(v1 + 48);
  sub_22B110514();
  MEMORY[0x23188A7E0](0x656767697274205DLL, 0xEF20746120646572);
  v4 = *(a1(0) + 32);
  sub_22B110244();
  sub_22B0FF41C();
  v5 = sub_22B1105A4();
  MEMORY[0x23188A7E0](v5);

  MEMORY[0x23188A7E0](0x76656420726F6620, 0xEC00000020656369);
  MEMORY[0x23188A7E0](*v3, v3[1]);
  MEMORY[0x23188A7E0](0x656D6F68206E6920, 0xE900000000000020);
  MEMORY[0x23188A7E0](v3[2], v3[3]);
  return *(&v7 + 1);
}

uint64_t sub_22B0FEE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B0FEEDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NetworkDiagnosticsPayloadCommon.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B110244();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_22B1104A4();
  MEMORY[0x23188A7E0](0x697720746E657645, 0xEE00204449206874);
  v9 = (*(a2 + 24))(a1, a2);
  MEMORY[0x23188A7E0](v9);

  MEMORY[0x23188A7E0](23328, 0xE200000000000000);
  (*(a2 + 32))(&v15, a1, a2);
  sub_22B110514();
  MEMORY[0x23188A7E0](0x656767697274205DLL, 0xEF20746120646572);
  (*(a2 + 40))(a1, a2);
  sub_22B0FF41C();
  v10 = sub_22B1105A4();
  MEMORY[0x23188A7E0](v10);

  (*(v5 + 8))(v8, v4);
  MEMORY[0x23188A7E0](0x76656420726F6620, 0xEC00000020656369);
  v11 = (*(a2 + 8))(a1, a2);
  MEMORY[0x23188A7E0](v11);

  MEMORY[0x23188A7E0](0x656D6F68206E6920, 0xE900000000000020);
  v12 = (*(a2 + 16))(a1, a2);
  MEMORY[0x23188A7E0](v12);

  return v16;
}

uint64_t DNSServerOutagePayload.description.getter()
{
  v1 = v0;
  sub_22B1104A4();
  MEMORY[0x23188A7E0](0x697720746E657645, 0xEE00204449206874);
  MEMORY[0x23188A7E0](v1[4], v1[5]);
  MEMORY[0x23188A7E0](23328, 0xE200000000000000);
  v8 = *(v0 + 48);
  sub_22B110514();
  MEMORY[0x23188A7E0](0x656767697274205DLL, 0xEF20746120646572);
  v2 = type metadata accessor for DNSServerOutagePayload(0);
  v3 = *(v2 + 32);
  sub_22B110244();
  sub_22B0FF41C();
  v4 = sub_22B1105A4();
  MEMORY[0x23188A7E0](v4);

  MEMORY[0x23188A7E0](0x76656420726F6620, 0xEC00000020656369);
  MEMORY[0x23188A7E0](*v1, v1[1]);
  MEMORY[0x23188A7E0](0x656D6F68206E6920, 0xE900000000000020);
  MEMORY[0x23188A7E0](v1[2], v1[3]);
  result = 0;
  v6 = *(v1 + *(v2 + 40));
  if (v6)
  {
    sub_22B1104A4();

    v7 = MEMORY[0x23188A830](v6, MEMORY[0x277D837D0]);
    MEMORY[0x23188A7E0](v7);

    MEMORY[0x23188A7E0](62, 0xE100000000000000);
    MEMORY[0x23188A7E0](0xD000000000000019, 0x800000022B110F50);

    return 0;
  }

  return result;
}

unint64_t sub_22B0FF41C()
{
  result = qword_28106CD40;
  if (!qword_28106CD40)
  {
    sub_22B110244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106CD40);
  }

  return result;
}

uint64_t RadioLinkCongestionPayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for RadioLinkCongestionPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.deviceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NetworkMisconfigurationPayload.deviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NetworkMisconfigurationPayload.groupUUID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NetworkMisconfigurationPayload.groupUUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NetworkMisconfigurationPayload.eventUUID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NetworkMisconfigurationPayload.eventUUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22B0FF860@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_22B110244();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22B0FF8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_22B110244();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NetworkMisconfigurationPayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.sameNetwork.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.doubleNAT.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.p2pTrafficBlocked.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_22B0FFC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13)
{
  v15 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v15;
  v16 = type metadata accessor for NetworkMisconfigurationPayload(0);
  v17 = v16[8];
  v18 = sub_22B110244();
  result = (*(*(v18 - 8) + 32))(a9 + v17, a8, v18);
  *(a9 + v16[9]) = a10;
  *(a9 + v16[10]) = a11;
  *(a9 + v16[11]) = a12;
  *(a9 + v16[12]) = a13;
  return result;
}

uint64_t sub_22B0FFD08()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22B0FFD38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22B0FFD68()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DNSServerOutagePayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for DNSServerOutagePayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t DNSServerOutagePayload.unresponsiveServers.getter()
{
  v1 = *(v0 + *(type metadata accessor for DNSServerOutagePayload(0) + 40));
}

uint64_t DNSServerOutagePayload.unresponsiveServers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DNSServerOutagePayload(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22B100038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v13 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  v14 = type metadata accessor for DNSServerOutagePayload(0);
  v15 = v14[8];
  v16 = sub_22B110244();
  result = (*(*(v16 - 8) + 32))(a9 + v15, a8, v16);
  *(a9 + v14[9]) = a10;
  *(a9 + v14[10]) = a11;
  return result;
}

uint64_t DHCPAcquisitionFailurePayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_22B1002B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t (*a11)(void))
{
  v13 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  v14 = a11(0);
  v15 = *(v14 + 32);
  v16 = sub_22B110244();
  result = (*(*(v16 - 8) + 32))(a9 + v15, a8, v16);
  *(a9 + *(v14 + 36)) = a10;
  return result;
}

uint64_t InternetOutagePayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for InternetOutagePayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t WiFiDisassociationPayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for WiFiDisassociationPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_22B100758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22B110244();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22B100848()
{
  result = type metadata accessor for RadioLinkCongestionPayload(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NetworkMisconfigurationPayload(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DNSServerOutagePayload(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for DHCPAcquisitionFailurePayload(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for InternetOutagePayload(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for WiFiDisassociationPayload(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22B1009E8()
{
  sub_22B110244();
  if (v0 <= 0x3F)
  {
    sub_22B100A98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B100A98()
{
  if (!qword_28106C7D0)
  {
    v0 = sub_22B110444();
    if (!v1)
    {
      atomic_store(v0, &qword_28106C7D0);
    }
  }
}

void sub_22B100B10()
{
  sub_22B110244();
  if (v0 <= 0x3F)
  {
    sub_22B100BB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B100BB8()
{
  if (!qword_28106C7D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B9240, &qword_22B111B00);
    v0 = sub_22B110444();
    if (!v1)
    {
      atomic_store(v0, qword_28106C7D8);
    }
  }
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22B110244();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B110244();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B100E30()
{
  result = sub_22B110244();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_22B101044(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B1102B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22B1102A4();
}

uint64_t sub_22B1010E0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_22B1102B4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_22B101158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22B1102B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

id sub_22B101254()
{
  result = [objc_allocWithZone(type metadata accessor for XPCManager()) init];
  qword_28106D060 = result;
  return result;
}

uint64_t *sub_22B101288()
{
  if (qword_28106CE00 != -1)
  {
    swift_once();
  }

  return &qword_28106D060;
}

id sub_22B1012D8()
{
  if (qword_28106CE00 != -1)
  {
    swift_once();
  }

  v0 = qword_28106D060;

  return v0;
}

uint64_t sub_22B101340()
{
  v1 = v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_22B101390(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22B1013FC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_22B10149C;
}

void sub_22B10149C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_22B10152C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22B100FA0();
  v3 = sub_22B1102B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_22B10159C()
{
  v1 = *&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection];
  if (!v1)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  aBlock[4] = sub_22B106504;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B1016F4;
  aBlock[3] = &block_descriptor_69;
  v3 = _Block_copy(aBlock);
  v4 = v1;
  v5 = v0;

  v6 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_22B110454();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9300, &qword_22B1117A8);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_22B1016F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22B101774(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B1017F4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_22B0FE504(v4);
  return v4;
}

uint64_t sub_22B101858(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_22B101774(v7);
}

void sub_22B10193C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

id sub_22B1019A8()
{
  *&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive] = 0;
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_logger;
  v2 = sub_22B100FA0();
  v3 = sub_22B1102B4();
  (*(*(v3 - 8) + 16))(&v0[v1], v2, v3);
  *&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection] = 0;
  v4 = &v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_clientInterruptionHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_clientInvalidationHandler];
  v6 = type metadata accessor for XPCManager();
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v0;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_22B101AC8();

  return v7;
}

void sub_22B101AC8()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v36 - v2;
  v4 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection;
  if (*&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection])
  {
    v37 = sub_22B110294();
    v5 = sub_22B110404();
    if (os_log_type_enabled(v37, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B0FD000, v37, v5, "XPC connection already established", v6, 2u);
      MEMORY[0x23188B000](v6, -1, -1);
    }

    v7 = v37;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277D6B6A0] options:4096];
    if (qword_28106CE10 != -1)
    {
      swift_once();
    }

    [v8 setRemoteObjectInterface_];
    if (qword_28106CE20 != -1)
    {
      swift_once();
    }

    [v8 setExportedInterface_];
    [v8 setExportedObject_];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_22B10628C;
    v43 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_22B102480;
    v41 = &block_descriptor_47;
    v10 = _Block_copy(&aBlock);

    [v8 setInterruptionHandler_];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_22B1062AC;
    v43 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_22B102480;
    v41 = &block_descriptor_51;
    v12 = _Block_copy(&aBlock);

    [v8 setInvalidationHandler_];
    _Block_release(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9280, &qword_22B111770);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22B111630;
    v14 = type metadata accessor for NDFEventXPCPayload();
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9288, &qword_22B111778);
    *(v13 + 32) = v14;
    v15 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v16 = sub_22B110354();

    v17 = [v15 initWithArray_];

    aBlock = 0;
    sub_22B1103C4();

    if (aBlock)
    {
      v18 = [v8 exportedInterface];
      if (v18)
      {
        v19 = v18;
        v20 = sub_22B1103B4();

        [v19 setClasses:v20 forSelector:sel_didReceiveEvent_ argumentIndex:0 ofReply:0];
      }

      else
      {
      }

      [v8 activate];
      v24 = *&v0[v4];
      *&v0[v4] = v8;
      v25 = v8;

      v26 = v25;
      v27 = v0;
      v28 = sub_22B110294();
      v29 = sub_22B110414();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v26;
        *v31 = v8;
        v32 = v26;
        _os_log_impl(&dword_22B0FD000, v28, v29, "XPC connection %@ established", v30, 0xCu);
        sub_22B106694(v31, &qword_27D8B9258, &qword_22B111658);
        MEMORY[0x23188B000](v31, -1, -1);
        MEMORY[0x23188B000](v30, -1, -1);
      }

      v33 = sub_22B1103A4();
      (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v27;
      v35 = v27;
      sub_22B1030E8(0, 0, v3, &unk_22B111780, v34);
    }

    else
    {
      v21 = sub_22B110294();
      v22 = sub_22B110404();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_22B0FD000, v21, v22, "Cannot convert list of allowed classes to NSSet representation", v23, 2u);
        MEMORY[0x23188B000](v23, -1, -1);
      }
    }
  }
}

uint64_t sub_22B102184()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v20 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_22B110294();
    v6 = sub_22B110414();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B0FD000, v5, v6, "XPC connection interrupted, invoking internal and client-supplied handlers", v7, 2u);
      MEMORY[0x23188B000](v7, -1, -1);
    }

    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v4) + 0x80))();
    if (v9)
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      v13 = *(v4 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection);
      v14 = *(v11 + 16);
      v15 = v13;
      v14(v13, ObjectType, v11);

      v9 = swift_unknownObjectRelease();
    }

    v16 = (*((*v8 & *v4) + 0xD8))(v9);
    if (v16)
    {
      v17 = v16;
      v16();
      sub_22B101774(v17);
    }

    v18 = sub_22B1103A4();
    (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v4;
    sub_22B1030E8(0, 0, v2, &unk_22B111788, v19);
  }

  return result;
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

uint64_t sub_22B102480(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_22B1024C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B1025B0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_22B110294();
  v5 = sub_22B1103F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Received message %@ from server, informing delegate", v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v2) + 0x80))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v3, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B1027A8(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_22B110294();
  v5 = sub_22B1103F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Received event %@ from server, informing delegate", v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v2) + 0x80))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(v3, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B1029A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22B102A34;

  return sub_22B102D68();
}

uint64_t sub_22B102A34()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B102B68, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22B102B68()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v1;
  v4 = sub_22B110294();
  v5 = sub_22B110404();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Error sending check-in to server: %@", v8, 0xCu);
    sub_22B106694(v9, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v9, -1, -1);
    MEMORY[0x23188B000](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B102CD4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B1068B0;

  return sub_22B1029A0(v3, v4, v5, v2);
}

uint64_t sub_22B102D88()
{
  v1 = v0[18];
  v2 = sub_22B110294();
  v3 = sub_22B110414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B0FD000, v2, v3, "Sending a check-in message to server", v4, 2u);
    MEMORY[0x23188B000](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = sub_22B10159C();
  v0[19] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[3] = sub_22B102FD8;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9260, &qword_22B111668);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B10344C;
    v0[13] = &block_descriptor;
    v0[14] = v8;
    [v7 ndfClientCheckInWithReply_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v9 = sub_22B110294();
    v10 = sub_22B110404();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B0FD000, v9, v10, "Cannot check in, no remote object", v11, 2u);
      MEMORY[0x23188B000](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22B102FD8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_22B1068BC;
  }

  else
  {
    v3 = sub_22B1068B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1030E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_22B106624(a3, v26 - v10);
  v12 = sub_22B1103A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B106694(v11, &qword_27D8B9250, &qword_22B111640);
  }

  else
  {
    sub_22B110394();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B110384();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B1102F4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22B106694(a3, &qword_27D8B9250, &qword_22B111640);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B106694(a3, &qword_27D8B9250, &qword_22B111640);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t type metadata accessor for XPCManager()
{
  result = qword_28106CDF0;
  if (!qword_28106CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B10344C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F8, &unk_22B111798);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22B103518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22B1035AC;

  return sub_22B10384C();
}

uint64_t sub_22B1035AC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B1036E0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22B1036E0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v1;
  v4 = sub_22B110294();
  v5 = sub_22B110404();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Error sending unsubscription notification to server: %@", v8, 0xCu);
    sub_22B106694(v9, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v9, -1, -1);
    MEMORY[0x23188B000](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B10386C()
{
  v1 = v0[18];
  if (*(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive) == 1)
  {
    *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive) = 0;
    v2 = sub_22B110294();
    v3 = sub_22B110414();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B0FD000, v2, v3, "Sending indication to server that there are no active subscriptions", v4, 2u);
      MEMORY[0x23188B000](v4, -1, -1);
    }

    v5 = v0[18];

    v6 = sub_22B10159C();
    v0[19] = v6;
    if (v6)
    {
      v7 = v6;
      v0[2] = v0;
      v0[3] = sub_22B102FD8;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9260, &qword_22B111668);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_22B10344C;
      v0[13] = &block_descriptor_10;
      v0[14] = v8;
      [v7 ndfClientSubscriptionIsActive:0 reply:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    v9 = sub_22B110294();
    v10 = sub_22B110404();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Cannot note full unsubscription, no remote object";
      goto LABEL_12;
    }
  }

  else
  {
    v9 = sub_22B110294();
    v10 = sub_22B110414();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Note unsubscription called, but subscription is already inactive";
LABEL_12:
      _os_log_impl(&dword_22B0FD000, v9, v10, v12, v11, 2u);
      MEMORY[0x23188B000](v11, -1, -1);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B103B4C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = sub_22B1103A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v9 = v2;
  sub_22B1030E8(0, 0, v6, a2, v8);
}

uint64_t sub_22B103C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22B103CD8;

  return sub_22B103F78();
}

uint64_t sub_22B103CD8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B103E0C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22B103E0C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v1;
  v4 = sub_22B110294();
  v5 = sub_22B110404();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Error sending subscription notification to server: %@", v8, 0xCu);
    sub_22B106694(v9, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v9, -1, -1);
    MEMORY[0x23188B000](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B103F98()
{
  v1 = v0[18];
  if (*(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive))
  {
    v2 = sub_22B110294();
    v3 = sub_22B110414();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Note subscription called, but subscription is already active";
LABEL_12:
      _os_log_impl(&dword_22B0FD000, v2, v3, v5, v4, 2u);
      MEMORY[0x23188B000](v4, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive) = 1;
  v6 = sub_22B110294();
  v7 = sub_22B110414();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B0FD000, v6, v7, "Sending indication to symptomsd that there is an active subscription", v8, 2u);
    MEMORY[0x23188B000](v8, -1, -1);
  }

  v9 = v0[18];

  v10 = sub_22B10159C();
  v0[19] = v10;
  if (!v10)
  {
    v2 = sub_22B110294();
    v3 = sub_22B110404();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot note subscription, no remote object";
      goto LABEL_12;
    }

LABEL_13:

    v13 = v0[1];

    return v13();
  }

  v11 = v10;
  v0[2] = v0;
  v0[3] = sub_22B104258;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9260, &qword_22B111668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B10344C;
  v0[13] = &block_descriptor_18;
  v0[14] = v12;
  [v11 ndfClientSubscriptionIsActive:1 reply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B104258()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_22B1043CC;
  }

  else
  {
    v3 = sub_22B104368;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B104368()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B1043CC()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_22B104440(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_22B104460, 0, 0);
}

uint64_t sub_22B104460()
{
  v1 = v0[21];
  v2 = sub_22B110294();
  v3 = sub_22B110414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B0FD000, v2, v3, "Sending a ping to discovered endpoints", v4, 2u);
    MEMORY[0x23188B000](v4, -1, -1);
  }

  v5 = v0[21];

  v6 = sub_22B10159C();
  v0[22] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22B1046C8;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9270, &qword_22B1116A8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B1048B4;
    v0[13] = &block_descriptor_22;
    v0[14] = v9;
    [v7 pingEndpoints:v8 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v10 = sub_22B110294();
    v11 = sub_22B110404();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B0FD000, v10, v11, "Cannot send ping, no remote object", v12, 2u);
      MEMORY[0x23188B000](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0, 0);
  }
}

uint64_t sub_22B1046C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_22B104840;
  }

  else
  {
    v3 = sub_22B1047D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1047D8()
{
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_22B104840()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_22B1048B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F8, &unk_22B111798);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_22B1102D4();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = *(*(v5 + 64) + 40);
    *v11 = v9;
    v11[1] = v10;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22B104998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return MEMORY[0x2822009F8](sub_22B1049BC, 0, 0);
}

uint64_t sub_22B1049BC()
{
  v23 = v0;
  v1 = v0[23];
  v2 = v0[21];

  v3 = sub_22B110294();
  v4 = sub_22B110414();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22B105BD4(v6, v5, &v22);
    _os_log_impl(&dword_22B0FD000, v3, v4, "Sending message %s to discovered endpoints", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23188B000](v8, -1, -1);
    MEMORY[0x23188B000](v7, -1, -1);
  }

  v9 = v0[23];
  v10 = sub_22B10159C();
  v0[24] = v10;
  if (v10)
  {
    v11 = v10;
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[20];
    v15 = sub_22B1102C4();
    v0[25] = v15;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22B104CB0;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9270, &qword_22B1116A8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B1048B4;
    v0[13] = &block_descriptor_26;
    v0[14] = v16;
    [v11 sendMessage:v15 toEndpoints:v13 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v17 = sub_22B110294();
    v18 = sub_22B110404();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B0FD000, v17, v18, "Cannot send message, no remote object", v19, 2u);
      MEMORY[0x23188B000](v19, -1, -1);
    }

    v20 = v0[1];

    return v20(0, 0);
  }
}

uint64_t sub_22B104CB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_22B104E3C;
  }

  else
  {
    v3 = sub_22B104DC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B104DC0()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_unknownObjectRelease();
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5(v4, v3);
}

uint64_t sub_22B104E3C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_22B104ED8()
{
  v1 = v0[18];
  v2 = sub_22B110294();
  v3 = sub_22B110414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B0FD000, v2, v3, "Sending signal to symptomsd to send an arbitrary payload to symptomsd-distributed", v4, 2u);
    MEMORY[0x23188B000](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = sub_22B10159C();
  v0[19] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_22B105130;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9278, &qword_22B1116C0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B105274;
    v0[13] = &block_descriptor_30;
    v0[14] = v8;
    [v7 sendPayloadToDaemonWithReply_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v9 = sub_22B110294();
    v10 = sub_22B110404();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B0FD000, v9, v10, "Cannot send payload, no remote object", v11, 2u);
      MEMORY[0x23188B000](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_22B105130()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B105210, 0, 0);
}

uint64_t sub_22B105210()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 160);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B105274(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_22B1052D0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_22B1052F4, 0, 0);
}

uint64_t sub_22B1052F4()
{
  v1 = v0[18];
  v2 = v0[20] + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_logger;
  v3 = sub_22B110294();
  v4 = sub_22B110414();
  v5 = os_log_type_enabled(v3, v4);
  if (v1 < 1)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Sending signal to symptomsd to stop periodically sending payloads";
    v10 = v4;
    v11 = v3;
    v12 = v8;
    v13 = 2;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = v0[18];
    v6 = v0[19];
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    v9 = "Sending signal to symptomsd to periodically send payloads to symptomsd-distributed with interval %ld and leeway %ld seconds";
    v10 = v4;
    v11 = v3;
    v12 = v8;
    v13 = 22;
  }

  _os_log_impl(&dword_22B0FD000, v11, v10, v9, v12, v13);
  MEMORY[0x23188B000](v8, -1, -1);
LABEL_7:
  v14 = v0[20];

  v15 = sub_22B10159C();
  v0[21] = v15;
  if (v15)
  {
    v16 = v15;
    v18 = v0[18];
    v17 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_22B1055C4;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9278, &qword_22B1116C0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B105274;
    v0[13] = &block_descriptor_33;
    v0[14] = v19;
    [v16 triggerSendPayloadToDaemonWithInterval:v18 leeway:v17 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v20 = v0[20] + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_logger;
    v21 = sub_22B110294();
    v22 = sub_22B110404();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B0FD000, v21, v22, "Cannot trigger payload, no remote object", v23, 2u);
      MEMORY[0x23188B000](v23, -1, -1);
    }

    v24 = v0[1];

    return v24(0);
  }
}

uint64_t sub_22B1055C4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1056A4, 0, 0);
}

uint64_t sub_22B1056A4()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  v2 = *(v0 + 176);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B105708(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B105800;

  return v7(a1);
}

uint64_t sub_22B105800()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B105908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_22B1059B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B1068B0;

  return sub_22B103518(v3, v4, v5, v2);
}

uint64_t sub_22B105A4C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B105AE0;

  return sub_22B103C44(v3, v4, v5, v2);
}

uint64_t sub_22B105AE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B105BD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B105CA0(v11, 0, 0, 1, a1, a2);
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
    sub_22B105908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B105CA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B105DAC(a5, a6);
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
    result = sub_22B1104B4();
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

uint64_t sub_22B105DAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B105DF8(a1, a2);
  sub_22B105F28(&unk_283EF4550);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B105DF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B106014(v5, 0);
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

  result = sub_22B1104B4();
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
        v10 = sub_22B110324();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B106014(v10, 0);
        result = sub_22B110494();
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

uint64_t sub_22B105F28(uint64_t result)
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

  result = sub_22B106088(result, v12, 1, v3);
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

void *sub_22B106014(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F0, &qword_22B111790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B106088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F0, &qword_22B111790);
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

uint64_t sub_22B1061D4()
{
  result = sub_22B1102B4();
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

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22B1062AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_22B110294();
    v3 = sub_22B110414();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B0FD000, v2, v3, "XPC connection invalidated, invoking internal and client-supplied handlers", v4, 2u);
      MEMORY[0x23188B000](v4, -1, -1);
    }

    v5 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x80))())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection);
      v10 = *(v7 + 8);
      v11 = v9;
      v10(v9, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    v12 = (*((*v5 & *v1) + 0xF0))();
    if (v12)
    {
      v13 = v12;
      v12();
      sub_22B101774(v13);
    }

    v14 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection);
    *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection) = 0;
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22B106504(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1;
  oslog = sub_22B110294();
  v5 = sub_22B110404();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B0FD000, oslog, v5, "Failed to retrieve remote object: %@", v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }
}

uint64_t sub_22B106624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B106694(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B1066F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B1068B0;

  return sub_22B105708(a1, v5);
}

uint64_t sub_22B1067AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B105AE0;

  return sub_22B105708(a1, v5);
}

id sub_22B1068C8()
{
  v0 = *sub_22B101288();

  return v0;
}

uint64_t sub_22B1068FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22B1010BC();
  v3 = sub_22B1102B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_22B106978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9308, &unk_22B1117E0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_22B1069B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 168))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B6F0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_22B106A40(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B10B694;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 176);
  sub_22B0FE504(v3);
  return v7(v6, v5);
}

uint64_t (*sub_22B106AF8())()
{
  v1 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_22B10A6D0(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22B10A6E8;
}

uint64_t sub_22B106BB4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **(v1 + 16)) + 0xD8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B6F0;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_22B106C5C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_22B10A728();
  os_unfair_lock_unlock(v3 + 4);
  return sub_22B101774(a1);
}

uint64_t (*sub_22B106CEC(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_22B106AF8();
  a1[1] = v3;
  return sub_22B106D34;
}

uint64_t sub_22B106D34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  v5 = a1[2];
  v6 = a1[1];
  if (a2)
  {
    sub_22B0FE504(v2);
    os_unfair_lock_lock(v3 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v3 + 4);
    sub_22B101774(v2);
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v3 + 4);
  }

  return sub_22B101774(v2);
}

uint64_t sub_22B106E30@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 192))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B640;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_22B106EC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B10B694;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 200);
  sub_22B0FE504(v3);
  return v7(v6, v5);
}

uint64_t (*sub_22B106F78())()
{
  v1 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_22B10B66C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22B10B694;
}

uint64_t sub_22B107034(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v3 + 4);
  return sub_22B101774(a1);
}

uint64_t (*sub_22B1070C4(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_22B106F78();
  a1[1] = v3;
  return sub_22B10710C;
}

uint64_t sub_22B10710C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  v5 = a1[2];
  v6 = a1[1];
  if (a2)
  {
    sub_22B0FE504(v2);
    os_unfair_lock_lock(v3 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v3 + 4);
    sub_22B101774(v2);
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v3 + 4);
  }

  return sub_22B101774(v2);
}

uint64_t SymptomNetworkDiagnosticsManager.__allocating_init(withDelegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_22B10A964(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t SymptomNetworkDiagnosticsManager.init(withDelegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B10A964(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_22B107298(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v4 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v4 + 4);

  v5 = sub_22B110294();
  v6 = sub_22B110414();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x23188A830](a1, &type metadata for NetworkDiagnosticsEvent);
    v11 = sub_22B105BD4(v9, v10, v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
    swift_beginAccess();
    v13 = *(v2 + v12);
    sub_22B10AB74();

    v14 = sub_22B1103D4();
    v16 = v15;

    v17 = sub_22B105BD4(v14, v16, v19);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_22B0FD000, v5, v6, "Subscribed to %s, all subscriptions: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188B000](v8, -1, -1);
    MEMORY[0x23188B000](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v18);
  os_unfair_lock_lock(v4 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v4 + 4);
}

void sub_22B1074F0(uint64_t a1)
{
  v2 = sub_22B110244();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9330, &qword_22B111AB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v46 = type metadata accessor for NetworkDiagnosticsPayload(0);
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v41 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v20 = (v17 + 63) >> 6;
  v44 = (v11 + 48);
  v45 = (v3 + 8);
  v21 = v10;
  v47 = v15;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  *&v23 = 136315138;
  v37 = v23;
  v38 = v2;
  v39 = a1;
  v43 = v10;
  if (v19)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v25);
    ++v22;
    if (v19)
    {
      while (1)
      {
        v26 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v27 = *(*(v47 + 48) + (v26 | (v25 << 6)));
        LOBYTE(v49) = v27;
        sub_22B110234();
        sub_22B107934(&v49, v6, v21);
        (*v45)(v6, v2);
        if ((*v44)(v21, 1, v46) == 1)
        {
          sub_22B106694(v21, &unk_27D8B9330, &qword_22B111AB8);
          v28 = sub_22B110294();
          v29 = sub_22B110404();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v49 = v40;
            *v30 = v37;
            v48 = v27;
            v31 = sub_22B1102E4();
            v33 = v6;
            v34 = sub_22B105BD4(v31, v32, &v49);

            *(v30 + 4) = v34;
            v6 = v33;
            _os_log_impl(&dword_22B0FD000, v28, v29, "Failed to synthesize payload for event: %s", v30, 0xCu);
            v35 = v40;
            __swift_destroy_boxed_opaque_existential_0(v40);
            MEMORY[0x23188B000](v35, -1, -1);
            v36 = v30;
            v2 = v38;
            MEMORY[0x23188B000](v36, -1, -1);
          }

          v22 = v25;
          v21 = v43;
          if (!v19)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v24 = v42;
          sub_22B10ADBC(v21, v42, type metadata accessor for NetworkDiagnosticsPayload);
          sub_22B1082E8(v24);
          sub_22B10AC30(v24, type metadata accessor for NetworkDiagnosticsPayload);
          v22 = v25;
          if (!v19)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v25 = v22;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22B107934@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v5 = *(*(type metadata accessor for WiFiDisassociationPayload(0) - 8) + 64);
  (MEMORY[0x28223BE20])();
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for InternetOutagePayload(0) - 8) + 64);
  (MEMORY[0x28223BE20])();
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for DHCPAcquisitionFailurePayload(0) - 8) + 64);
  (MEMORY[0x28223BE20])();
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DNSServerOutagePayload(0);
  v11 = *(*(v75 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for NetworkMisconfigurationPayload(0);
  v13 = *(*(v74 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(type metadata accessor for RadioLinkCongestionPayload(0) - 8) + 64);
  (MEMORY[0x28223BE20])();
  v72 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22B110284();
  v17 = *(v86 - 8);
  v18 = *(v17 + 64);
  (MEMORY[0x28223BE20])();
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22B110244();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = (MEMORY[0x28223BE20])();
  v83 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v72 - v26;
  v87 = *a1;
  v28 = *(v22 + 16);
  v84 = a2;
  v81 = v28;
  v82 = v22 + 16;
  v28(&v72 - v26, a2, v21);
  v29 = sub_22B110294();
  v30 = sub_22B1103E4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v89 = v80;
    *v31 = 136315394;
    v88 = v87;
    v32 = sub_22B1102E4();
    v34 = sub_22B105BD4(v32, v33, &v89);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    sub_22B0FF41C();
    v35 = sub_22B1105A4();
    v37 = v36;
    v38 = v27;
    v39 = v21;
    (*(v22 + 8))(v38, v21);
    v40 = sub_22B105BD4(v35, v37, &v89);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_22B0FD000, v29, v30, "Synthetically generating event %s at %s", v31, 0x16u);
    v41 = v80;
    swift_arrayDestroy();
    MEMORY[0x23188B000](v41, -1, -1);
    MEMORY[0x23188B000](v31, -1, -1);
  }

  else
  {

    v42 = v27;
    v39 = v21;
    (*(v22 + 8))(v42, v21);
  }

  sub_22B110274();
  v43 = sub_22B110254();
  v80 = v44;
  v45 = *(v17 + 8);
  v46 = v86;
  v45(v20, v86);
  sub_22B110274();
  v47 = sub_22B110254();
  v49 = v48;
  v45(v20, v46);
  sub_22B110274();
  v50 = sub_22B110254();
  v52 = v51;
  v45(v20, v46);
  if (v87 > 2)
  {
    if (v87 == 3)
    {
      v93 = 1;
      v61 = v83;
      v81(v83, v84, v39);
      v62 = v76;
      sub_22B10027C(v47, v49, v43, v80, v50, v52, &v93, v61, v76, 1);
      v55 = v85;
      sub_22B10ADBC(v62, v85, type metadata accessor for DHCPAcquisitionFailurePayload);
      v56 = type metadata accessor for NetworkDiagnosticsPayload(0);
    }

    else
    {
      if (v87 == 4)
      {
        v94 = 1;
        v57 = v83;
        v81(v83, v84, v39);
        v58 = v77;
        sub_22B100520(v47, v49, v43, v80, v50, v52, &v94, v57, v77, 1);
        v55 = v85;
        sub_22B10ADBC(v58, v85, type metadata accessor for InternetOutagePayload);
      }

      else
      {
        v95 = 1;
        v70 = v83;
        v81(v83, v84, v39);
        v71 = v79;
        sub_22B10071C(v47, v49, v43, v80, v50, v52, &v95, v70, v79, 1);
        v55 = v85;
        sub_22B10ADBC(v71, v85, type metadata accessor for WiFiDisassociationPayload);
      }

      v56 = type metadata accessor for NetworkDiagnosticsPayload(0);
    }
  }

  else if (v87)
  {
    if (v87 != 1)
    {
      v92 = 1;
      v63 = v83;
      v81(v83, v84, v39);
      v64 = v78;
      sub_22B100038(v47, v49, v43, v80, v50, v52, &v92, v63, v78, 1, 0);
      v65 = *(v75 + 40);
      v66 = *(v64 + v65);

      *(v64 + v65) = &unk_283EF48C0;
      v67 = v85;
      sub_22B10ABC8(v64, v85, type metadata accessor for DNSServerOutagePayload);
      v68 = type metadata accessor for NetworkDiagnosticsPayload(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      return sub_22B10AC30(v64, type metadata accessor for DNSServerOutagePayload);
    }

    v91 = 1;
    v53 = v83;
    v81(v83, v84, v39);
    v54 = v73;
    sub_22B0FFC3C(v47, v49, v43, v80, v50, v52, &v91, v53, v73, 1, 2, 2, 2);
    *(v54 + *(v74 + 40)) = 0;
    v55 = v85;
    sub_22B10ADBC(v54, v85, type metadata accessor for NetworkMisconfigurationPayload);
    v56 = type metadata accessor for NetworkDiagnosticsPayload(0);
  }

  else
  {
    v90 = 1;
    v59 = v83;
    v81(v83, v84, v39);
    v60 = v72;
    sub_22B0FF610(v47, v49, v43, v80, v50, v52, &v90, v59, v72, 1);
    v55 = v85;
    sub_22B10ADBC(v60, v85, type metadata accessor for RadioLinkCongestionPayload);
    v56 = type metadata accessor for NetworkDiagnosticsPayload(0);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
}

uint64_t sub_22B1082E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkDiagnosticsPayload(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B10ABC8(a1, v7, type metadata accessor for NetworkDiagnosticsPayload);
  v8 = sub_22B110294();
  v9 = sub_22B110414();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = NetworkDiagnosticsPayload.description.getter();
    v14 = v13;
    sub_22B10AC30(v7, type metadata accessor for NetworkDiagnosticsPayload);
    v15 = sub_22B105BD4(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22B0FD000, v8, v9, "Delivering event %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188B000](v11, -1, -1);
    MEMORY[0x23188B000](v10, -1, -1);
  }

  else
  {

    sub_22B10AC30(v7, type metadata accessor for NetworkDiagnosticsPayload);
  }

  v16 = v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(a1, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22B108500(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v4 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v4 + 4);

  v5 = sub_22B110294();
  v6 = sub_22B110414();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x23188A830](a1, &type metadata for NetworkDiagnosticsEvent);
    v11 = sub_22B105BD4(v9, v10, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
    swift_beginAccess();
    v13 = *(v2 + v12);
    sub_22B10AB74();

    v14 = sub_22B1103D4();
    v16 = v15;

    v17 = sub_22B105BD4(v14, v16, v18);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_22B0FD000, v5, v6, "Unsubscribed from %s, all subscriptions: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188B000](v8, -1, -1);
    MEMORY[0x23188B000](v7, -1, -1);
  }
}

uint64_t SymptomNetworkDiagnosticsManager.deinit()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v2 = sub_22B1102B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents);

  v4 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);

  sub_22B103424(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate);
  return v0;
}

uint64_t SymptomNetworkDiagnosticsManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v2 = sub_22B1102B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents);

  v4 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);

  sub_22B103424(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

SymptomNetworkDiagnostics::NetworkDiagnosticsEvent_optional __swiftcall NetworkDiagnosticsEvent.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 6)
  {
    v2 = 6;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SymptomNetworkDiagnostics::NetworkDiagnosticsEventContext_optional __swiftcall NetworkDiagnosticsEventContext.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B1088DC()
{
  v1 = *v0;
  sub_22B1105D4();
  sub_22B1105E4();
  return sub_22B1105F4();
}

uint64_t sub_22B108954()
{
  v1 = *v0;
  sub_22B1105D4();
  sub_22B1105E4();
  return sub_22B1105F4();
}

void sub_22B1089AC(void *a1)
{
  v1 = a1;
  oslog = sub_22B110294();
  v2 = sub_22B1103E4();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v1;
    *v4 = v1;
    v5 = v1;
    _os_log_impl(&dword_22B0FD000, oslog, v2, "Received message: %@ from server", v3, 0xCu);
    sub_22B106694(v4, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v4, -1, -1);
    MEMORY[0x23188B000](v3, -1, -1);
  }
}

void sub_22B108AD0(void *a1, const char *a2)
{
  v4 = a1;
  oslog = sub_22B110294();
  v5 = sub_22B110414();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = a1;
    v8 = v4;
    _os_log_impl(&dword_22B0FD000, oslog, v5, a2, v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }
}

uint64_t sub_22B108BE8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v3 = type metadata accessor for WiFiDisassociationPayload(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InternetOutagePayload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DNSServerOutagePayload(0);
  v12 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v86 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NetworkMisconfigurationPayload(0);
  v14 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RadioLinkCongestionPayload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22B110244();
  v20 = *(v94 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v94);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  v27 = sub_22B110284();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v81 - v34;
  v90 = sub_22B110254();
  v92 = v36;
  sub_22B10AD4C(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID, v35);
  if ((*(v28 + 48))(v35, 1, v27) == 1)
  {
    sub_22B106694(v35, &unk_27D8B9340, &qword_22B1117F0);
    sub_22B110274();
    v35 = v31;
  }

  v89 = sub_22B110254();
  v91 = v37;
  (*(v28 + 8))(v35, v27);
  v88 = sub_22B110254();
  v39 = v38;
  v100[2] = *(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext);
  v40 = NDFEventXPCPayload.NDFEventContext.rawValue.getter();
  if (v40 >= 4)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  v42 = *(v20 + 16);
  v42(v26, a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp, v94);
  v43 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType;
  v44 = *(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType);
  if (v44 > 2)
  {
    if (*(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType) <= 4u)
    {
      if (v44 == 3)
      {
        v97 = v41;
        v45 = v94;
        v42(v24, v26, v94);
        v46 = v86;
        v47 = sub_22B100038(v90, v92, v89, v91, v88, v39, &v97, v24, v86, 0, 0);
        v48 = (*((*MEMORY[0x277D85000] & *a1) + 0xA0))(v47);
        (*(v20 + 8))(v26, v45);
        v49 = *(v81 + 40);
        v50 = *(v46 + v49);

        *(v46 + v49) = v48;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
        v52 = *(v51 + 48);
        v53 = v93;
        *v93 = 2;
        sub_22B10ABC8(v46, &v53[v52], type metadata accessor for DNSServerOutagePayload);
        type metadata accessor for NetworkDiagnosticsPayload(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v51 - 8) + 56))(v53, 0, 1, v51);
        return sub_22B10AC30(v46, type metadata accessor for DNSServerOutagePayload);
      }

      v98 = v41;
      v73 = v94;
      v42(v24, v26, v94);
      v74 = v83;
      sub_22B10027C(v90, v92, v89, v91, v88, v39, &v98, v24, v83, 0);
      (*(v20 + 8))(v26, v73);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v75 = *(v56 + 48);
      v58 = v93;
      *v93 = 3;
      sub_22B10ADBC(v74, &v58[v75], type metadata accessor for DHCPAcquisitionFailurePayload);
      type metadata accessor for NetworkDiagnosticsPayload(0);
      goto LABEL_21;
    }

    if (v44 == 5)
    {
      v99 = v41;
      v59 = v94;
      v42(v24, v26, v94);
      v60 = v85;
      sub_22B100520(v90, v92, v89, v91, v88, v39, &v99, v24, v85, 0);
      (*(v20 + 8))(v26, v59);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v61 = *(v56 + 48);
      v58 = v93;
      *v93 = 4;
      sub_22B10ADBC(v60, &v58[v61], type metadata accessor for InternetOutagePayload);
    }

    else
    {
      v100[0] = v41;
      v76 = v94;
      v42(v24, v26, v94);
      v77 = v87;
      sub_22B10071C(v90, v92, v89, v91, v88, v39, v100, v24, v87, 0);
      (*(v20 + 8))(v26, v76);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v78 = *(v56 + 48);
      v58 = v93;
      *v93 = 5;
      sub_22B10ADBC(v77, &v58[v78], type metadata accessor for WiFiDisassociationPayload);
    }

LABEL_13:
    type metadata accessor for NetworkDiagnosticsPayload(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
  }

  if (*(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType))
  {
    if (v44 == 1)
    {
      v95 = v41;
      v55 = v94;
      v42(v24, v26, v94);
      sub_22B0FF610(v90, v92, v89, v91, v88, v39, &v95, v24, v19, 0);
      (*(v20 + 8))(v26, v55);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v57 = *(v56 + 48);
      v58 = v93;
      *v93 = 0;
      sub_22B10ADBC(v19, &v58[v57], type metadata accessor for RadioLinkCongestionPayload);
    }

    else
    {
      v96 = v41;
      v66 = v94;
      v42(v24, v26, v94);
      v67 = v84;
      v68 = sub_22B0FFC3C(v90, v92, v89, v91, v88, v39, &v96, v24, v84, 0, 2, 2, 2);
      v69 = MEMORY[0x277D85000];
      v70 = (*((*MEMORY[0x277D85000] & *a1) + 0xB8))(v68);
      v71 = v82;
      *(v67 + *(v82 + 40)) = v70;
      *(v67 + *(v71 + 44)) = (*((*v69 & *a1) + 0xD0))();
      LOBYTE(v69) = (*((*v69 & *a1) + 0xE8))();
      (*(v20 + 8))(v26, v66);
      *(v67 + *(v71 + 48)) = v69;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v72 = *(v56 + 48);
      v58 = v93;
      *v93 = 1;
      sub_22B10ADBC(v67, &v58[v72], type metadata accessor for NetworkMisconfigurationPayload);
    }

    goto LABEL_13;
  }

  v62 = a1;
  v63 = sub_22B110294();
  v64 = sub_22B110404();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    v100[1] = *(a1 + v43);
    *(v65 + 4) = NDFEventXPCPayload.NDFEventType.rawValue.getter();

    _os_log_impl(&dword_22B0FD000, v63, v64, "Unknown event type: %u", v65, 8u);
    MEMORY[0x23188B000](v65, -1, -1);
  }

  else
  {

    v63 = v62;
  }

  v79 = v93;

  (*(v20 + 8))(v26, v94);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
  return (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
}

void sub_22B1097E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9318, &qword_22B111800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for NetworkDiagnosticsPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B108BE8(a1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_22B106694(v6, &qword_27D8B9318, &qword_22B111800);
    v12 = a1;
    v13 = sub_22B110294();
    v14 = sub_22B110404();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      v17 = [v12 description];
      v18 = sub_22B1102D4();
      v20 = v19;

      v21 = sub_22B105BD4(v18, v20, &v28);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_22B0FD000, v13, v14, "Error extracting payload from event: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188B000](v16, -1, -1);
      MEMORY[0x23188B000](v15, -1, -1);
    }
  }

  else
  {
    v22 = *v6;
    v23 = sub_22B10ADBC(&v6[*(v11 + 48)], v10, type metadata accessor for NetworkDiagnosticsPayload);
    v24 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
    v25 = MEMORY[0x28223BE20](v23);
    *(&v27 - 4) = v1;
    *(&v27 - 24) = v22;
    *(&v27 - 2) = v10;
    *(&v27 - 1) = a1;
    MEMORY[0x28223BE20](v25);
    *(&v27 - 2) = sub_22B10AE24;
    *(&v27 - 1) = v26;
    os_unfair_lock_lock(v24 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v24 + 4);
    sub_22B10AC30(v10, type metadata accessor for NetworkDiagnosticsPayload);
  }
}

BOOL sub_22B109B08(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_22B1105D4();
  sub_22B1105E4();
  v5 = sub_22B1105F4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_22B109C1C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22B1105D4();
  sub_22B1105E4();
  v7 = sub_22B1105F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22B109F64(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22B109D14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9328, &unk_22B111AA8);
  result = sub_22B110484();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22B1105D4();
      sub_22B1105E4();
      result = sub_22B1105F4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22B109F64(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B109D14(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22B10A0BC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22B10A1FC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22B1105D4();
  sub_22B1105E4();
  result = sub_22B1105F4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B1105C4();
  __break(1u);
  return result;
}

void *sub_22B10A0BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9328, &unk_22B111AA8);
  v2 = *v0;
  v3 = sub_22B110474();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_22B10A1FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9328, &unk_22B111AA8);
  result = sub_22B110484();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22B1105D4();
      sub_22B1105E4();
      result = sub_22B1105F4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

unint64_t sub_22B10A41C@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = a1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22B1105D4();
  sub_22B1105E4();
  result = sub_22B1105F4();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != v4)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v14 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22B10A0BC();
      v13 = v14;
    }

    *a2 = *(*(v13 + 48) + v9);
    result = sub_22B10A528(v9);
    *v2 = v14;
  }

  else
  {
LABEL_5:
    *a2 = 6;
  }

  return result;
}

unint64_t sub_22B10A528(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22B110464();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_22B1105D4();
        sub_22B1105E4();
        v13 = sub_22B1105F4() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22B10A6E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B10A728()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B10A750()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *((*MEMORY[0x277D85000] & **(v0[2] + 16)) + 0xE0);
  sub_22B0FE504(v1);
  return v3(v1, v2);
}

uint64_t sub_22B10A7D8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **(v1 + 16)) + 0xF0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B6F0;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

double sub_22B10A880@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22B10A8DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *((*MEMORY[0x277D85000] & **(v0[2] + 16)) + 0xF8);
  sub_22B0FE504(v1);
  return v3(v1, v2);
}

uint64_t sub_22B10A964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22B101288();
  v6 = *v5;
  *(v2 + 16) = *v5;
  v7 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v8 = v6;
  v9 = sub_22B1010BC();
  v10 = sub_22B1102B4();
  (*(*(v10 - 8) + 16))(v2 + v7, v9, v10);
  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents) = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9308, &unk_22B1117E0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v2 + v11) = v12;
  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v13 = *(v2 + 16);
  v14 = *((*MEMORY[0x277D85000] & *v13) + 0x88);
  v15 = v13;

  v14(v16, &off_283EF4950);

  return v3;
}

uint64_t sub_22B10AAB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    swift_beginAccess();
    do
    {
      v5 = *v4++;
      sub_22B109C1C(&v8, v5);
      --v3;
    }

    while (v3);
    swift_endAccess();
  }

  v6 = *(v2 + 16);
  return sub_22B103B2C();
}

unint64_t sub_22B10AB74()
{
  result = qword_28106CB58[0];
  if (!qword_28106CB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106CB58);
  }

  return result;
}

uint64_t sub_22B10ABC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B10AC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B10AC90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    swift_beginAccess();
    do
    {
      v5 = *v4++;
      sub_22B10A41C(v5, &v9);
      --v3;
    }

    while (v3);
    swift_endAccess();
  }

  v6 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
  result = swift_beginAccess();
  if (!*(*(v2 + v6) + 16))
  {
    v8 = *(v2 + 16);
    return sub_22B1034F8();
  }

  return result;
}

uint64_t sub_22B10AD4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B10ADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22B10AE24()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
  v6 = *(v1 + 24);
  swift_beginAccess();
  if (sub_22B109B08(v6, *(v2 + v5)))
  {
    sub_22B1082E8(v3);
  }

  else
  {
    v7 = v4;
    v8 = sub_22B110294();
    v9 = sub_22B1103E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = [v7 description];
      v13 = sub_22B1102D4();
      v15 = v14;

      v16 = sub_22B105BD4(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22B0FD000, v8, v9, "Not delivering event %s [no subscription]", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188B000](v11, -1, -1);
      MEMORY[0x23188B000](v10, -1, -1);
    }
  }
}

unint64_t sub_22B10AFB8()
{
  result = qword_28106CB50;
  if (!qword_28106CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106CB50);
  }

  return result;
}

unint64_t sub_22B10B010()
{
  result = qword_27D8B9320;
  if (!qword_27D8B9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9320);
  }

  return result;
}

uint64_t type metadata accessor for SymptomNetworkDiagnosticsManager()
{
  result = qword_28106CFD0;
  if (!qword_28106CFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B10B0B8()
{
  result = sub_22B1102B4();
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

uint64_t getEnumTagSinglePayload for NetworkDiagnosticsEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkDiagnosticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NetworkDiagnosticsEventContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkDiagnosticsEventContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B10B5A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B10B5C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_28106C7C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28106C7C8);
    }
  }
}

uint64_t sub_22B10B640()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t SymptomNetworkDiagnosticsManager.ping(endpoints:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B10B714, 0, 0);
}

uint64_t sub_22B10B714()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22B10B7B4;
  v3 = v0[2];

  return sub_22B104440(v3);
}

uint64_t sub_22B10B7B4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t SymptomNetworkDiagnosticsManager.sendMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B10B8E8, 0, 0);
}

uint64_t sub_22B10B8E8()
{
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22B10B98C;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_22B104998(v5, v3, v4);
}

uint64_t sub_22B10B98C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_22B10BABC()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22B10BB54;

  return sub_22B104EB8();
}

uint64_t sub_22B10BB54(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t SymptomNetworkDiagnosticsManager.sendPayloadToDaemon(interval:leeway:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B10BC74, 0, 0);
}

uint64_t sub_22B10BC74()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B10BD14;
  v4 = v0[2];
  v3 = v0[3];

  return sub_22B1052D0(v4, v3);
}

uint64_t sub_22B10BD14(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_22B10BE20(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7774654E656D6173;
    v6 = 0x414E656C62756F64;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x495555746E657665;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D617473656D6974;
    v2 = 0x6E6F43746E657665;
    v3 = 0x4449656369766564;
    if (a1 != 3)
    {
      v3 = 0x49555570756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x707954746E657665;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22B10BF70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22B10BE20(*a1);
  v5 = v4;
  if (v3 == sub_22B10BE20(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22B1105B4();
  }

  return v8 & 1;
}

uint64_t sub_22B10BFF8()
{
  v1 = *v0;
  sub_22B1105D4();
  sub_22B10BE20(v1);
  sub_22B110304();

  return sub_22B1105F4();
}

uint64_t sub_22B10C05C()
{
  sub_22B10BE20(*v0);
  sub_22B110304();
}

uint64_t sub_22B10C0B0()
{
  v1 = *v0;
  sub_22B1105D4();
  sub_22B10BE20(v1);
  sub_22B110304();

  return sub_22B1105F4();
}

uint64_t sub_22B10C110@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B11011C();
  *a2 = result;
  return result;
}

unint64_t sub_22B10C140@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B10BE20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B10C188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B11011C();
  *a1 = result;
  return result;
}

uint64_t sub_22B10C1C8(uint64_t a1)
{
  v2 = sub_22B10EAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B10C204(uint64_t a1)
{
  v2 = sub_22B10EAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

SymptomNetworkDiagnostics::NDFEventXPCPayload::NDFEventType_optional __swiftcall NDFEventXPCPayload.NDFEventType.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SymptomNetworkDiagnostics::NDFEventXPCPayload::NDFEventContext_optional __swiftcall NDFEventXPCPayload.NDFEventContext.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B10C47C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_22B10C4F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10C550(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v3(v4);
}

uint64_t sub_22B10C5B4()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22B10C5FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22B10C6B4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10C768()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B10C7AC(char a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22B10C85C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10C910()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B10C954(char a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22B10CA04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10CAB8()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B10CAFC(char a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_22B10CBAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_22B110214();
  v9 = sub_22B1102C4();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType);
  v11 = sub_22B110604();
  v12 = sub_22B1102C4();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext);
  v14 = sub_22B110604();
  v15 = sub_22B1102C4();
  [a1 encodeObject:v14 forKey:v15];

  v16 = sub_22B110264();
  v17 = sub_22B1102C4();
  [a1 encodeObject:v16 forKey:v17];

  sub_22B10AD4C(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID, v7);
  v18 = sub_22B110284();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    v20 = sub_22B110264();
    (*(v19 + 8))(v7, v18);
  }

  v21 = sub_22B1102C4();
  [a1 encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = sub_22B110264();
  v23 = sub_22B1102C4();
  [a1 encodeObject:v22 forKey:v23];

  v24 = MEMORY[0x277D85000];
  v25 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))();
  if (v25)
  {
    sub_22B10D124(v25);

    sub_22B10DEE8(0, &unk_28106CD78, 0x277CCACA8);
    v26 = sub_22B110354();
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_22B1102C4();
  [a1 encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  if ((*((*v24 & *v2) + 0xB8))() == 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_22B110374();
  }

  v29 = sub_22B1102C4();
  [a1 encodeObject:v28 forKey:v29];
  swift_unknownObjectRelease();

  if ((*((*v24 & *v2) + 0xD0))() == 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_22B110374();
  }

  v31 = sub_22B1102C4();
  [a1 encodeObject:v30 forKey:v31];
  swift_unknownObjectRelease();

  if ((*((*v24 & *v2) + 0xE8))() == 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_22B110374();
  }

  v33 = sub_22B1102C4();
  [a1 encodeObject:v32 forKey:v33];
  swift_unknownObjectRelease();
}

uint64_t sub_22B10D124(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_22B1104E4();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_22B1102C4();

      sub_22B1104C4();
      v7 = *(v8 + 16);
      sub_22B1104F4();
      sub_22B110504();
      sub_22B1104D4();
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id NDFEventXPCPayload.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v97 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v99 = v87 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v103 = v87 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v87 - v12;
  v14 = sub_22B110284();
  v15 = *(v14 - 8);
  v106 = v14;
  v107 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v98 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v104 = v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v87 - v22;
  MEMORY[0x28223BE20](v21);
  v105 = v87 - v24;
  v25 = sub_22B110244();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v87 - v31;
  v108 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers) = 0;
  v100 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork) = 2;
  v101 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT) = 2;
  v102 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked) = 2;
  sub_22B10DEE8(0, &qword_28106C7C0, 0x277CBEAA8);
  v33 = sub_22B110424();
  if (!v33)
  {
    goto LABEL_6;
  }

  v34 = v33;
  sub_22B110224();

  (*(v26 + 32))(v32, v30, v25);
  sub_22B10DEE8(0, &qword_28106C7A8, 0x277CCABB0);
  v35 = sub_22B110424();
  if (!v35)
  {
    (*(v26 + 8))(v32, v25);
    goto LABEL_6;
  }

  v95 = v32;
  v96 = v25;
  LODWORD(v111) = 0;
  BYTE4(v111) = 1;
  v36 = v35;
  sub_22B110614();

  if ((v111 & 0x100000000) != 0)
  {
    (*(v26 + 8))(v95, v96);
LABEL_6:

LABEL_7:
    v37 = *(v2 + v108);

    type metadata accessor for NDFEventXPCPayload();
    v38 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v39 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v41 = v111;
  v42 = a1;
  v43 = sub_22B110424();
  v44 = v26;
  if (!v43)
  {
    goto LABEL_12;
  }

  LODWORD(v111) = 0;
  BYTE4(v111) = 1;
  v45 = v43;
  sub_22B110614();

  if (BYTE4(v111) == 1)
  {
    goto LABEL_12;
  }

  v46 = v111;
  v47 = sub_22B10DEE8(0, &unk_28106C7B0, 0x277CCAD78);
  v48 = sub_22B110424();
  if (!v48)
  {
    goto LABEL_12;
  }

  v49 = v48;
  v90 = v46;
  v94 = v47;
  v91 = v41;
  v51 = v106;
  v50 = v107;
  v52 = v107 + 56;
  v93 = *(v107 + 56);
  v93(v13, 1, 1, v106);
  v92 = sub_22B10F674(&qword_28106CD38, MEMORY[0x277CC95F0]);
  sub_22B110524();

  v53 = *(v50 + 48);
  if (v53(v13, 1, v51) == 1)
  {
LABEL_12:
    (*(v44 + 8))(v95, v96);

    goto LABEL_7;
  }

  v87[2] = v50 + 48;
  v88 = v53;
  v89 = v52;
  v54 = *(v50 + 32);
  v54(v23, v13, v51);
  v55 = v105;
  v87[1] = v50 + 32;
  v87[0] = v54;
  v54(v105, v23, v51);
  v56 = sub_22B110424();
  if (!v56)
  {

    (*(v50 + 8))(v55, v51);
    (*(v44 + 8))(v95, v96);
    goto LABEL_7;
  }

  v57 = v56;
  v58 = v103;
  v93(v103, 1, 1, v51);
  sub_22B110524();

  v59 = v88(v58, 1, v51);
  v60 = v95;
  if (v59 == 1)
  {

    (*(v107 + 8))(v105, v51);
    (*(v44 + 8))(v60, v96);
    goto LABEL_7;
  }

  v61 = v98;
  v62 = v87[0];
  (v87[0])(v98, v58, v51);
  v63 = v104;
  v62(v104, v61, v51);
  (*(v44 + 16))(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp, v60, v96);
  NDFEventXPCPayload.NDFEventType.init(rawValue:)(v91);
  v64 = v111;
  if (v111 == 7)
  {
    v64 = 0;
  }

  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType) = v64;
  v65 = v90;
  if (v90 >= 4)
  {
    v65 = 0;
  }

  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext) = v65;
  v66 = v107;
  v67 = *(v107 + 16);
  v67(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID, v105, v51);
  v67(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID, v63, v51);
  v68 = sub_22B110424();
  if (v68)
  {
    v69 = v68;
    v70 = 1;
    v71 = v97;
    v93(v97, 1, 1, v51);
    sub_22B110524();

    v72 = v88(v71, 1, v51);
    v73 = v99;
    if (v72 != 1)
    {
      (v87[0])(v99, v71, v51);
      v70 = 0;
    }
  }

  else
  {
    v70 = 1;
    v73 = v99;
  }

  v93(v73, v70, 1, v51);
  sub_22B10DF30(v73, v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID);
  sub_22B10DEE8(0, &unk_28106CD78, 0x277CCACA8);
  v74 = sub_22B110434();
  if (v74)
  {
    v111 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9350, &qword_22B111AF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9240, &qword_22B111B00);
    if (swift_dynamicCast())
    {
      v75 = v110;
    }

    else
    {
      v75 = 0;
    }
  }

  else
  {
    v75 = 0;
  }

  v76 = v108;
  swift_beginAccess();
  v77 = *(v2 + v76);
  *(v2 + v76) = v75;

  v78 = sub_22B1102C4();
  LOBYTE(v76) = [v42 decodeBoolForKey_];

  v79 = v100;
  swift_beginAccess();
  *(v2 + v79) = v76;
  v80 = sub_22B1102C4();
  LOBYTE(v76) = [v42 decodeBoolForKey_];

  v81 = v101;
  swift_beginAccess();
  *(v2 + v81) = v76;
  v82 = sub_22B1102C4();
  LOBYTE(v76) = [v42 decodeBoolForKey_];

  v83 = *(v66 + 8);
  v83(v104, v51);
  v83(v105, v51);
  (*(v44 + 8))(v95, v96);
  v84 = v102;
  swift_beginAccess();
  *(v2 + v84) = v76;
  v85 = type metadata accessor for NDFEventXPCPayload();
  v109.receiver = v2;
  v109.super_class = v85;
  v86 = objc_msgSendSuper2(&v109, sel_init);

  return v86;
}

uint64_t type metadata accessor for NDFEventXPCPayload()
{
  result = qword_28106D020;
  if (!qword_28106D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B10DEE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22B10DF30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id NDFEventXPCPayload.__allocating_init(timesamp:eventType:eventContext:deviceID:groupUUID:eventUUID:)(uint64_t a1, _BYTE *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  LOBYTE(a2) = *a2;
  v14 = *a3;
  *&v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers] = 0;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork] = 2;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT] = 2;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked] = 2;
  v15 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp;
  v24 = sub_22B110244();
  v16 = *(v24 - 8);
  (*(v16 + 16))(&v13[v15], a1, v24);
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType] = a2;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext] = v14;
  v17 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID;
  v18 = sub_22B110284();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(&v13[v17], a4, v18);
  sub_22B10AD4C(a5, &v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID]);
  v20(&v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID], a6, v18);
  v28.receiver = v13;
  v28.super_class = v27;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = *(v19 + 8);
  v22(a6, v18);
  sub_22B10E3EC(a5);
  v22(a4, v18);
  (*(v16 + 8))(a1, v24);
  return v21;
}

id NDFEventXPCPayload.init(timesamp:eventType:eventContext:deviceID:groupUUID:eventUUID:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = *a3;
  *&v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers] = 0;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork] = 2;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT] = 2;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked] = 2;
  v12 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp;
  v13 = sub_22B110244();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v6[v12], a1, v13);
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType] = v10;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext] = v11;
  v15 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID;
  v16 = sub_22B110284();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v6[v15], a4, v16);
  sub_22B10AD4C(a5, &v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID]);
  v18(&v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID], a6, v16);
  v24.receiver = v6;
  v24.super_class = type metadata accessor for NDFEventXPCPayload();
  v19 = objc_msgSendSuper2(&v24, sel_init);
  v20 = *(v17 + 8);
  v20(a6, v16);
  sub_22B10E3EC(a5);
  v20(a4, v16);
  (*(v14 + 8))(a1, v13);
  return v19;
}

uint64_t sub_22B10E3EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NDFEventXPCPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NDFEventXPCPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFEventXPCPayload();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B10E61C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9360, &qword_22B111B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B10EAD8();
  sub_22B110634();
  LOBYTE(v17) = 0;
  sub_22B110244();
  sub_22B10F674(&qword_27D8B9368, MEMORY[0x277CC9578]);
  sub_22B110594();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType);
    v18 = 1;
    sub_22B10EB2C();
    sub_22B110594();
    LOBYTE(v17) = *(v3 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext);
    v18 = 2;
    sub_22B10EB80();
    sub_22B110594();
    LOBYTE(v17) = 3;
    sub_22B110284();
    sub_22B10F674(&qword_27D8B9380, MEMORY[0x277CC95F0]);
    sub_22B110594();
    LOBYTE(v17) = 4;
    sub_22B110584();
    LOBYTE(v17) = 5;
    v11 = sub_22B110594();
    v12 = MEMORY[0x277D85000];
    v17 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v11);
    v18 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9240, &qword_22B111B00);
    sub_22B10F6BC(&qword_27D8B9388);
    sub_22B110584();

    (*((*v12 & *v3) + 0xB8))(v13);
    LOBYTE(v17) = 7;
    v14 = sub_22B110574();
    (*((*v12 & *v3) + 0xD0))(v14);
    LOBYTE(v17) = 8;
    v15 = sub_22B110574();
    (*((*v12 & *v3) + 0xE8))(v15);
    LOBYTE(v17) = 9;
    sub_22B110574();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22B10EAD8()
{
  result = qword_27D8B9630[0];
  if (!qword_27D8B9630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B9630);
  }

  return result;
}

unint64_t sub_22B10EB2C()
{
  result = qword_27D8B9370;
  if (!qword_27D8B9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9370);
  }

  return result;
}

unint64_t sub_22B10EB80()
{
  result = qword_27D8B9378;
  if (!qword_27D8B9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9378);
  }

  return result;
}

void *NDFEventXPCPayload.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v42 - v5;
  v48 = sub_22B110284();
  v47 = *(v48 - 8);
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v48);
  v45 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = v42 - v9;
  v10 = sub_22B110244();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9390, &qword_22B111B10);
  v49 = *(v52 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v15 = v42 - v14;
  v63 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers) = 0;
  v16 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork) = 2;
  v17 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT) = 2;
  v18 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  v56 = a1;
  v57 = v1;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked) = 2;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B10EAD8();
  v54 = v15;
  v20 = v55;
  sub_22B110624();
  if (v20)
  {
    v41 = v57;
    __swift_destroy_boxed_opaque_existential_0(v56);
    v24 = *(v41 + v63);

    type metadata accessor for NDFEventXPCPayload();
    v25 = *((*MEMORY[0x277D85000] & *v41) + 0x30);
    v26 = *((*MEMORY[0x277D85000] & *v41) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v50;
    v22 = v51;
    v55 = v16;
    v44 = v17;
    v43 = v18;
    v23 = v49;
    v62 = 0;
    sub_22B10F674(&qword_27D8B9398, MEMORY[0x277CC9578]);
    sub_22B110564();
    v28 = v57;
    (*(v46 + 32))(v57 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp, v53, v10);
    LOBYTE(v61) = 1;
    sub_22B10F5CC();
    sub_22B110564();
    v42[1] = v10;
    *(v28 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType) = v62;
    LOBYTE(v61) = 2;
    sub_22B10F620();
    sub_22B110564();
    v29 = v48;
    *(v28 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext) = v62;
    v62 = 3;
    v53 = sub_22B10F674(&qword_27D8B93B0, MEMORY[0x277CC95F0]);
    sub_22B110564();
    v30 = v29;
    v31 = v47 + 32;
    v50 = *(v47 + 32);
    (v50)(v28 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID, v21, v30);
    v62 = 4;
    sub_22B110554();
    v42[0] = v31;
    sub_22B10DF30(v22, v28 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID);
    v62 = 5;
    v32 = v45;
    sub_22B110564();
    (v50)(v28 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID, v32, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9240, &qword_22B111B00);
    v62 = 6;
    sub_22B10F6BC(&qword_27D8B93B8);
    sub_22B110554();
    v33 = v61;
    v34 = v63;
    swift_beginAccess();
    v35 = *(v28 + v34);
    *(v28 + v34) = v33;

    LOBYTE(v61) = 7;
    LOBYTE(v33) = sub_22B110544();
    v36 = v55;
    swift_beginAccess();
    *(v28 + v36) = v33;
    v60 = 8;
    LOBYTE(v33) = sub_22B110544();
    v37 = v44;
    swift_beginAccess();
    *(v28 + v37) = v33;
    v59 = 9;
    LOBYTE(v33) = sub_22B110544();
    v38 = v57;
    v39 = v43;
    swift_beginAccess();
    v38[v39] = v33;
    v40 = type metadata accessor for NDFEventXPCPayload();
    v58.receiver = v38;
    v58.super_class = v40;
    v41 = objc_msgSendSuper2(&v58, sel_init);
    (*(v23 + 8))(v54, v52);
    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  return v41;
}

unint64_t sub_22B10F5CC()
{
  result = qword_27D8B93A0;
  if (!qword_27D8B93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93A0);
  }

  return result;
}

unint64_t sub_22B10F620()
{
  result = qword_27D8B93A8;
  if (!qword_27D8B93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93A8);
  }

  return result;
}

uint64_t sub_22B10F674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B10F6BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B9240, &qword_22B111B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B10F72C()
{
  result = qword_27D8B93C0;
  if (!qword_27D8B93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93C0);
  }

  return result;
}

unint64_t sub_22B10F784()
{
  result = qword_27D8B93C8;
  if (!qword_27D8B93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93C8);
  }

  return result;
}

uint64_t sub_22B10F7D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 288))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_22B10F878()
{
  v0 = sub_22B110244();
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    v2 = sub_22B110284();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_22B10FD0C();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22B10FD0C()
{
  if (!qword_28106CD88)
  {
    sub_22B110284();
    v0 = sub_22B110444();
    if (!v1)
    {
      atomic_store(v0, &qword_28106CD88);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDFEventXPCPayload.NDFEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDFEventXPCPayload.NDFEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NDFEventXPCPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDFEventXPCPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B110018()
{
  result = qword_27D8B9DC0[0];
  if (!qword_27D8B9DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B9DC0);
  }

  return result;
}

unint64_t sub_22B110070()
{
  result = qword_27D8B9ED0;
  if (!qword_27D8B9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9ED0);
  }

  return result;
}

unint64_t sub_22B1100C8()
{
  result = qword_27D8B9ED8[0];
  if (!qword_27D8B9ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B9ED8);
  }

  return result;
}

uint64_t sub_22B11011C()
{
  v0 = sub_22B110534();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22B110168()
{
  result = qword_27D8B9440;
  if (!qword_27D8B9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9440);
  }

  return result;
}

unint64_t sub_22B1101BC()
{
  result = qword_27D8B9448;
  if (!qword_27D8B9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9448);
  }

  return result;
}