id sub_26BDFBDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_26BDFBE00(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_26BDFBE58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26BDFBE9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_26BDFBFA8(v4, v5);
}

uint64_t sub_26BDFBEE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_26BDFBFA8(v2, v3);
  return sub_26BDFC1E0(v5, v6);
}

uint64_t sub_26BDFBF58()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_26BDFBFA8(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_26BDFBFA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *Certificate.__allocating_init(derRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_26BDFD1F4();
  v6 = SecCertificateCreateWithData(0, v5);

  if (v6)
  {
    v4[2] = v6;
    v4[3] = a1;
    v4[4] = a2;
  }

  else
  {
    sub_26BDFC18C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_26BDFC1E0(a1, a2);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

void *Certificate.init(derRepresentation:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_26BDFD1F4();
  v6 = SecCertificateCreateWithData(0, v5);

  if (v6)
  {
    v2[2] = v6;
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    sub_26BDFC18C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_26BDFC1E0(a1, a2);
    type metadata accessor for Certificate();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

unint64_t sub_26BDFC18C()
{
  result = qword_28045DEA0;
  if (!qword_28045DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045DEA0);
  }

  return result;
}

uint64_t sub_26BDFC1E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BDFC258()
{
  swift_beginAccess();
  v1 = SecCertificateCopyData(*(v0 + 16));
  v2 = sub_26BDFD204();

  return v2;
}

uint64_t sub_26BDFC2BC()
{
  swift_beginAccess();
  v1 = SecCertificateCopySubjectSummary(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BDFD214();

  return v3;
}

uint64_t sub_26BDFC330()
{
  commonName[1] = *MEMORY[0x277D85DE8];
  commonName[0] = 0;
  swift_beginAccess();
  if (SecCertificateCopyCommonName(*(v0 + 16), commonName))
  {
    sub_26BDFC18C();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
  }

  else
  {
    v2 = commonName[0];
    if (commonName[0])
    {
      v0 = sub_26BDFD214();
    }

    else
    {
      v0 = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_26BDFC424()
{
  emailAddresses[1] = *MEMORY[0x277D85DE8];
  emailAddresses[0] = 0;
  swift_beginAccess();
  if (SecCertificateCopyEmailAddresses(*(v0 + 16), emailAddresses))
  {
    sub_26BDFC18C();
    swift_allocError();
    *v1 = 4;
    swift_willThrow();

    v4 = *MEMORY[0x277D85DE8];
    return v0;
  }

  else
  {
    v2 = emailAddresses[0];
    if (emailAddresses[0])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v3 = v2;
        sub_26BDFD224();
      }
    }

    result = sub_26BDFD234();
    __break(1u);
  }

  return result;
}

uint64_t sub_26BDFC5EC(uint64_t (*a1)(void))
{
  swift_beginAccess();
  v3 = a1(*(v1 + 16));
  if (v3)
  {
    v4 = v3;
    v1 = sub_26BDFD204();
  }

  else
  {
    sub_26BDFC18C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_26BDFC698()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  swift_beginAccess();
  v2 = SecCertificateCopyKey(*(v0 + 16));
  if (!v2)
  {
    sub_26BDFC18C();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = v2;
  v4 = SecKeyCopyExternalRepresentation(v2, error);
  if (!v4)
  {
    v8 = error[0];
    if (!error[0])
    {
      sub_26BDFC18C();
      swift_allocError();
      *v15 = 2;
      swift_willThrow();
      v11 = 0;
      v12 = 0xF000000000000000;
      goto LABEL_9;
    }

    v1 = 0;
    v7 = 0xF000000000000000;
LABEL_8:
    sub_26BDFC18C();
    swift_allocError();
    *v10 = v8;
    swift_willThrow();
    v11 = v1;
    v12 = v7;
LABEL_9:
    sub_26BDFC81C(v11, v12);

    goto LABEL_10;
  }

  v5 = v4;
  v1 = sub_26BDFD204();
  v7 = v6;

  v8 = error[0];
  if (error[0])
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_26BDFC81C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BDFC1E0(a1, a2);
  }

  return a1;
}

uint64_t sub_26BDFC830()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  swift_beginAccess();
  v1 = SecCertificateCopySerialNumberData(*(v0 + 16), error);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26BDFD204();
    v5 = v4;

    v6 = error[0];
    if (!error[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = error[0];
    if (!error[0])
    {
      v5 = 0xF000000000000000;
      v6 = 2;
      sub_26BDFC18C();
      v3 = 0;
      goto LABEL_7;
    }

    v3 = 0;
    v5 = 0xF000000000000000;
  }

  sub_26BDFC18C();
  v7 = v6;
LABEL_7:
  swift_allocError();
  *v8 = v6;
  swift_willThrow();
  sub_26BDFC81C(v3, v5);
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Certificate.__deallocating_deinit()
{
  sub_26BDFC1E0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_26BDFC9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_26BDFCA08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_26BDFCA60()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void *DigitalIdentity.__allocating_init(certificate:privateKey:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v4[5] = a2;
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = a2;
  sub_26BDFBFA8(v5, v6);
  v8 = sub_26BDFD1F4();
  v9 = SecCertificateCreateWithData(0, v8);

  if (v9)
  {

    v4[2] = v9;
    v4[3] = v5;
    v4[4] = v6;
  }

  else
  {
    sub_26BDFC18C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    sub_26BDFC1E0(v5, v6);
    type metadata accessor for Certificate();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

void *DigitalIdentity.init(certificate:privateKey:)(uint64_t a1, void *a2)
{
  v2[5] = a2;
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = a2;
  sub_26BDFBFA8(v5, v6);
  v8 = sub_26BDFD1F4();
  v9 = SecCertificateCreateWithData(0, v8);

  if (v9)
  {

    v2[2] = v9;
    v2[3] = v5;
    v2[4] = v6;
  }

  else
  {
    sub_26BDFC18C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    sub_26BDFC1E0(v5, v6);
    type metadata accessor for Certificate();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t DigitalIdentity.deinit()
{
  sub_26BDFC1E0(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t DigitalIdentity.__deallocating_deinit()
{
  sub_26BDFC1E0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_26BDFD088(uint64_t a1, unint64_t *a2)
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

uint64_t get_enum_tag_for_layout_string_16SwiftCertificate0aB5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BDFD118(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BDFD170(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_26BDFD1C4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}