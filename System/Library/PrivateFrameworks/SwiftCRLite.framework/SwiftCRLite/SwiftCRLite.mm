uint64_t SecCRLiteLoadIssuers(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [a1 loadIssuers:a2 error:&v11];
  v8 = v11;
  v9 = v8;
  if (a3 && (v7 & 1) == 0)
  {
    *a3 = v8;
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t SecCRLiteIssuerEnrolled(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [a1 issuerEnrolled:a2 error:&v11];
  v8 = v11;
  v9 = v8;
  if (a3 && (v7 & 1) == 0)
  {
    *a3 = v8;
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t SecCRLiteLoadFilter(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [a1 loadFilter:a2 error:&v11];
  v8 = v11;
  v9 = v8;
  if (a3 && (v7 & 1) == 0)
  {
    *a3 = v8;
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t SecCRLiteCertStatus(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v13 = 0;
  v9 = [a1 certStatus:a2 issuerCert:a3 error:&v13];
  v10 = v13;
  v11 = v10;
  if (a4 && (v9 & 1) == 0)
  {
    *a4 = v10;
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

uint64_t sub_26BDF33E8()
{
  v0 = sub_26BDF85DC();
  __swift_allocate_value_buffer(v0, qword_28045D458);
  __swift_project_value_buffer(v0, qword_28045D458);
  return sub_26BDF85CC();
}

void sub_26BDF3458()
{
  sub_26BDF85AC();
  v2 = sub_26BDF859C();
  if (v1)
  {
    sub_26BDF350C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    MEMORY[0x26D697480](v1);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter);
    *(v0 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter) = v2;
  }
}

unint64_t sub_26BDF350C()
{
  result = qword_28045D390;
  if (!qword_28045D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D390);
  }

  return result;
}

uint64_t sub_26BDF369C()
{
  v2 = *(v0 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_issuers);

  sub_26BDF4D94();

  if (v1)
  {
    sub_26BDF350C();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
    return MEMORY[0x26D697480](v1);
  }

  return result;
}

uint64_t sub_26BDF3878(__SecCertificate *a1)
{
  v2 = sub_26BDF6600(a1);
  if (v3 >> 60 == 15)
  {
    if (qword_28045D450 != -1)
    {
      swift_once();
    }

    v4 = sub_26BDF85DC();
    __swift_project_value_buffer(v4, qword_28045D458);
    v5 = sub_26BDF85BC();
    v6 = sub_26BDF868C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26BDF2000, v5, v6, "unable to generate enrollment key", v7, 2u);
      MEMORY[0x26D697540](v7, -1, -1);
    }

    sub_26BDF350C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_issuers);
    v10 = v2;
    v11 = v3;
    v12 = swift_beginAccess();
    v13 = *(v9 + 16);
    v16[0] = v10;
    v16[1] = v11;
    MEMORY[0x28223BE20](v12);
    v15[2] = v16;

    v6 = sub_26BDF5BD4(sub_26BDF694C, v15, v13);

    sub_26BDF6968(v10, v11);
  }

  return v6 & 1;
}

uint64_t sub_26BDF3A58(__SecCertificate *a1)
{
  v2 = sub_26BDF6DA8(a1);
  if (v3 >> 60 == 15)
  {
    if (qword_28045D450 != -1)
    {
      swift_once();
    }

    v4 = sub_26BDF85DC();
    __swift_project_value_buffer(v4, qword_28045D458);
    v5 = sub_26BDF85BC();
    v6 = sub_26BDF868C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26BDF2000, v5, v6, "unable to generate filter key", v7, 2u);
      MEMORY[0x26D697540](v7, -1, -1);
    }

    return 2;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v11 = *(v1 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter);
    v12 = sub_26BDF858C();

    sub_26BDF6968(v9, v10);
    return v12 & 1;
  }
}

uint64_t sub_26BDF3C9C(__SecCertificate *a1, __SecCertificate *a2)
{
  v6 = sub_26BDF3878(a2);
  if (!v4)
  {
    if (v6)
    {
      v7 = sub_26BDF6DA8(a1);
      if (v8 >> 60 != 15)
      {
        v12 = v7;
        v13 = v8;
        v14 = *(v3 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter);
        v2 = sub_26BDF858C();

        sub_26BDF6968(v12, v13);
        return v2 & 1;
      }

      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    sub_26BDF350C();
    v2 = swift_allocError();
    *v10 = v9;
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_26BDF3D8C(__SecCertificate *a1)
{
  v2 = sub_26BDF6600(a1);
  if (v3 >> 60 == 15)
  {
    if (qword_28045D450 != -1)
    {
      swift_once();
    }

    v4 = sub_26BDF85DC();
    __swift_project_value_buffer(v4, qword_28045D458);
    v5 = sub_26BDF85BC();
    v6 = sub_26BDF868C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26BDF2000, v5, v6, "unable to generate enrollment key", v7, 2u);
      MEMORY[0x26D697540](v7, -1, -1);
    }

    sub_26BDF350C();
    swift_allocError();
    *v8 = 2;
    return swift_willThrow();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v12 = *(v1 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_issuers);
    v13 = swift_beginAccess();
    v14 = *(v12 + 16);
    v18[0] = v10;
    v18[1] = v11;
    MEMORY[0x28223BE20](v13);
    v17[2] = v18;

    v15 = sub_26BDF5BD4(sub_26BDF83F8, v17, v14);

    if ((v15 & 1) == 0)
    {
      sub_26BDF350C();
      swift_allocError();
      *v16 = 3;
      swift_willThrow();
    }

    return sub_26BDF6968(v10, v11);
  }
}

uint64_t sub_26BDF402C(__SecCertificate *a1)
{
  v3 = sub_26BDF6DA8(a1);
  if (v4 >> 60 != 15)
  {
    v11 = v3;
    v12 = v4;
    v13 = *(v1 + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter);
    v14 = sub_26BDF858C();
    if (v2)
    {
      MEMORY[0x26D697480](v2);

      if (qword_28045D450 != -1)
      {
        swift_once();
      }

      v15 = sub_26BDF85DC();
      __swift_project_value_buffer(v15, qword_28045D458);
      v16 = sub_26BDF85BC();
      v17 = sub_26BDF868C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_26BDF2000, v16, v17, "unable to check filter for key", v18, 2u);
        MEMORY[0x26D697540](v18, -1, -1);
      }

      sub_26BDF350C();
      swift_allocError();
      v20 = 6;
    }

    else
    {
      v21 = v14;

      if ((v21 & 1) == 0)
      {
        return sub_26BDF6968(v11, v12);
      }

      if (qword_28045D450 != -1)
      {
        swift_once();
      }

      v22 = sub_26BDF85DC();
      __swift_project_value_buffer(v22, qword_28045D458);
      v23 = sub_26BDF85BC();
      v24 = sub_26BDF868C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_26BDF2000, v23, v24, "certificate revoked", v25, 2u);
        MEMORY[0x26D697540](v25, -1, -1);
      }

      sub_26BDF350C();
      swift_allocError();
      v20 = 7;
    }

    *v19 = v20;
    swift_willThrow();
    return sub_26BDF6968(v11, v12);
  }

  if (qword_28045D450 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDF85DC();
  __swift_project_value_buffer(v5, qword_28045D458);
  v6 = sub_26BDF85BC();
  v7 = sub_26BDF868C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26BDF2000, v6, v7, "unable to generate filter key", v8, 2u);
    MEMORY[0x26D697540](v8, -1, -1);
  }

  sub_26BDF350C();
  swift_allocError();
  *v9 = 1;
  return swift_willThrow();
}

id CRLite.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRLite.init()()
{
  v1 = OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter;
  *&v0[v1] = [objc_allocWithZone(sub_26BDF85AC()) init];
  v2 = OBJC_IVAR____TtC11SwiftCRLite6CRLite_issuers;
  type metadata accessor for CRLiteIssuers();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CRLite();
  return objc_msgSendSuper2(&v5, sel_init);
}

id CRLite.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLite();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CRLiteError.errorCode.getter(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    result = sub_26BDF86EC();
    __break(1u);
  }

  return result;
}

unint64_t CRLiteError.errorUserInfo.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BDF8BD0;
        v2 = 0x800000026BDF9270;
        *(inited + 32) = 0xD00000000000001DLL;
        v3 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v4 = 1;
        goto LABEL_19;
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BDF8BD0;
        v2 = 0x800000026BDF9240;
        *(inited + 32) = 0xD000000000000028;
        v3 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v4 = 2;
        goto LABEL_19;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BDF8BD0;
        v2 = 0x800000026BDF9220;
        *(inited + 32) = 0xD00000000000001ALL;
        v3 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v4 = 3;
LABEL_19:
        *(inited + 40) = v2;
        *(inited + 48) = v4;
        v7 = sub_26BDF7374(inited);
        swift_setDeallocating();
        sub_26BDF74CC(v3);
        return v7;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BDF8BD0;
        v2 = 0x800000026BDF91F0;
        *(inited + 32) = 0xD000000000000020;
        v3 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v4 = 4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BDF8BD0;
        v2 = 0x800000026BDF91D0;
        *(inited + 32) = 0xD000000000000016;
        v3 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v4 = 5;
      }

      goto LABEL_19;
    }

    if (a1 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26BDF8BD0;
      v2 = 0x800000026BDF91A0;
      *(inited + 32) = 0xD000000000000026;
      v3 = inited + 32;
      *(inited + 72) = MEMORY[0x277D83B88];
      v4 = 6;
      goto LABEL_19;
    }

    if (a1 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3A8, &qword_26BDF8BE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26BDF8BD0;
      v2 = 0x800000026BDF9180;
      *(inited + 32) = 0xD000000000000016;
      v3 = inited + 32;
      *(inited + 72) = MEMORY[0x277D83B88];
      v4 = 7;
      goto LABEL_19;
    }
  }

  v5 = MEMORY[0x277D84F90];

  return sub_26BDF7374(v5);
}

uint64_t sub_26BDF4A9C()
{
  v2 = *v0;
  sub_26BDF873C();
  sub_26BDF863C();
  return sub_26BDF875C();
}

uint64_t sub_26BDF4B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDF7F74();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_26BDF4B4C()
{
  v2 = *v0;
  sub_26BDF873C();
  sub_26BDF863C();
  return sub_26BDF875C();
}

uint64_t sub_26BDF4BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26BDF7534(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26BDF4BEC(uint64_t a1)
{
  v2 = sub_26BDF7F74();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_26BDF4C28(uint64_t a1)
{
  v2 = sub_26BDF7F74();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_26BDF4C7C()
{
  swift_beginAccess();
  v0 = qword_28045D370;

  return v0;
}

uint64_t sub_26BDF4CD0()
{
  if ((*v0 - 1) < 7)
  {
    return *v0;
  }

  v2 = *v0;
  result = sub_26BDF86EC();
  __break(1u);
  return result;
}

uint64_t sub_26BDF4D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDF7F74();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t sub_26BDF4D94()
{
  v1 = sub_26BDF843C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_26BDF842C();
  sub_26BDF7548();
  sub_26BDF841C();
  if (v0)
  {
    MEMORY[0x26D697480](v0);

    if (qword_28045D450 != -1)
    {
      swift_once();
    }

    v4 = sub_26BDF85DC();
    __swift_project_value_buffer(v4, qword_28045D458);
    v5 = sub_26BDF85BC();
    v6 = sub_26BDF868C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26BDF2000, v5, v6, "unable to load enrolled issuers from json", v7, 2u);
      MEMORY[0x26D697540](v7, -1, -1);
    }

    sub_26BDF759C();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }

  else
  {

    sub_26BDF5040(v10);
  }
}

uint64_t sub_26BDF5040(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    sub_26BDF7FC8();
    for (i = (v4 + 40); ; i += 2)
    {
      v17 = *(i - 1);
      v18 = *i;
      sub_26BDF869C();
      sub_26BDF869C();

      v6 = sub_26BDF865C();

      if ((v6 & 3) != 0)
      {
        sub_26BDF865C();
        v7 = sub_26BDF867C();
        MEMORY[0x26D697090](v7);
      }

      v8 = sub_26BDF854C();
      v10 = v9;

      if (v10 >> 60 == 15)
      {
        break;
      }

      swift_beginAccess();
      v11 = *(v3 + 16);
      sub_26BDF801C(v8, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_26BDF5A34(0, *(v11 + 2) + 1, 1, v11);
        *(v3 + 16) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_26BDF5A34((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = v8;
      *(v15 + 5) = v10;
      *(v3 + 16) = v11;
      swift_endAccess();
      result = sub_26BDF6968(v8, v10);
      if (!--v2)
      {
        return result;
      }
    }

    sub_26BDF759C();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t CRLiteIssuers.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CRLiteIssuers.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26BDF534C(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_26BDF53B0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_26BDF547C@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_26BDF54E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t CRLiteIssuersError.errorCode.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CRLiteIssuersError.hashValue.getter()
{
  v1 = *v0;
  sub_26BDF873C();
  MEMORY[0x26D697170](v1);
  return sub_26BDF875C();
}

uint64_t sub_26BDF55F8()
{
  v1 = *v0;
  sub_26BDF873C();
  MEMORY[0x26D697170](v1);
  return sub_26BDF875C();
}

uint64_t sub_26BDF566C()
{
  v1 = *v0;
  sub_26BDF873C();
  MEMORY[0x26D697170](v1);
  return sub_26BDF875C();
}

uint64_t sub_26BDF56B0(uint64_t a1)
{
  v2 = sub_26BDF7F20();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BDF56EC(uint64_t a1)
{
  v2 = sub_26BDF7F20();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26BDF5740()
{
  swift_beginAccess();
  v0 = qword_28045D380;

  return v0;
}

uint64_t sub_26BDF5794()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_26BDF57B4()
{
  sub_26BDF873C();
  sub_26BDF864C();
  return sub_26BDF875C();
}

uint64_t sub_26BDF5830()
{
  sub_26BDF873C();
  sub_26BDF864C();
  return sub_26BDF875C();
}

uint64_t sub_26BDF5888@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26BDF86BC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26BDF5920@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26BDF86BC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26BDF5990(uint64_t a1)
{
  v2 = sub_26BDF7DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BDF59CC(uint64_t a1)
{
  v2 = sub_26BDF7DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26BDF5A08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26BDF7BF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_26BDF5A34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D428, &qword_26BDF8FE8);
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

_BYTE *sub_26BDF5B40@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_26BDF6BF0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26BDF6CA8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26BDF6D24(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26BDF5BD4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_26BDF801C(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_26BDF697C(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

unint64_t sub_26BDF5C84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26BDF873C();
  sub_26BDF864C();
  v6 = sub_26BDF875C();

  return sub_26BDF5CFC(a1, a2, v6);
}

unint64_t sub_26BDF5CFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26BDF86DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26BDF5DB4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_26BDF862C();
      sub_26BDF81BC(&unk_28045D440, MEMORY[0x277CC5540]);
      result = sub_26BDF85EC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26BDF60CC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BDF5F94(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_26BDF856C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26BDF61AC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BDF60CC(uint64_t a1, uint64_t a2)
{
  result = sub_26BDF846C();
  if (!result || (result = sub_26BDF848C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26BDF847C();
      sub_26BDF862C();
      sub_26BDF81BC(&unk_28045D440, MEMORY[0x277CC5540]);
      return sub_26BDF85EC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BDF61AC(uint64_t a1, uint64_t a2)
{
  result = sub_26BDF846C();
  if (!result || (result = sub_26BDF848C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26BDF847C();
      return sub_26BDF856C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BDF6240@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26BDF846C();
    if (v10)
    {
      v11 = sub_26BDF848C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26BDF847C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26BDF846C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26BDF848C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26BDF847C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26BDF6470(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26BDF69D0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26BDF697C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_26BDF6240(v14, a3, a4, &v13);
  v10 = v4;
  sub_26BDF697C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_26BDF6600(__SecCertificate *a1)
{
  v2 = sub_26BDF85FC();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BDF862C();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecCertificateCopySubjectSequence();
  if (result)
  {
    v11 = result;
    v12 = sub_26BDF857C();
    v14 = v13;

    v15 = SecCertificateCopyKey(a1);
    if (v15)
    {
      v16 = v15;
      v17 = SecKeyCopySubjectPublicKeyInfo();
      if (v17)
      {
        v18 = v17;
        v19 = sub_26BDF857C();
        v21 = v20;

        sub_26BDF861C();
        sub_26BDF801C(v12, v14);
        sub_26BDF5DB4(v12, v14);
        sub_26BDF697C(v12, v14);
        sub_26BDF801C(v19, v21);
        v28 = v21;
        v29 = v19;
        sub_26BDF5DB4(v19, v21);
        sub_26BDF697C(v19, v21);
        sub_26BDF860C();
        v35 = v2;
        v22 = sub_26BDF81BC(&qword_28045D438, MEMORY[0x277CC5290]);
        v30 = v6;
        v24 = v31;
        v23 = v32;
        v36 = v22;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
        (*(v24 + 16))(boxed_opaque_existential_1, v5, v2);
        __swift_project_boxed_opaque_existential_1(v34, v35);
        sub_26BDF84EC();
        sub_26BDF697C(v29, v28);
        sub_26BDF697C(v12, v14);
        (*(v24 + 8))(v5, v2);
        v26 = v33;
        __swift_destroy_boxed_opaque_existential_1(v34);
        (*(v23 + 8))(v9, v30);
        return v26;
      }
    }

    sub_26BDF697C(v12, v14);
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

uint64_t sub_26BDF6968(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BDF697C(a1, a2);
  }

  return a1;
}

uint64_t sub_26BDF697C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BDF69D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26BDF846C();
  v11 = result;
  if (result)
  {
    result = sub_26BDF848C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26BDF847C();
  sub_26BDF6240(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26BDF6A88(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26BDF801C(a3, a4);
          return sub_26BDF6470(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26BDF6BF0(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_26BDF6CA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26BDF849C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26BDF845C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26BDF855C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26BDF6D24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26BDF849C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26BDF845C();
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

CFDataRef sub_26BDF6DA8(__SecCertificate *a1)
{
  v82 = *MEMORY[0x277D85DE8];
  result = SecCertificateCopySerialNumberData(a1, 0);
  if (result)
  {
    v2 = result;
    v3 = sub_26BDF857C();
    v5 = v4;

    v6 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (!v6)
    {
      sub_26BDF697C(v3, v5);
      result = 0;
      goto LABEL_64;
    }

    v7 = v6;
    v8 = sub_26BDF857C();
    v10 = v9;

    v11 = MEMORY[0x277CC9318];
    v12 = MEMORY[0x277CC9300];
    v78 = MEMORY[0x277CC9318];
    v79 = MEMORY[0x277CC9300];
    v76 = v8;
    v77 = v10;
    v13 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x277CC9318]);
    v14 = *v13;
    v15 = v13[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        memset(v75, 0, 14);
        sub_26BDF801C(v8, v10);
        v17 = v75;
        goto LABEL_33;
      }

      v18 = v11;
      v19 = *(v14 + 16);
      v20 = *(v14 + 24);
      sub_26BDF801C(v8, v10);
      v21 = sub_26BDF846C();
      if (v21)
      {
        v22 = sub_26BDF848C();
        if (__OFSUB__(v19, v22))
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v21 += v19 - v22;
      }

      v23 = __OFSUB__(v20, v19);
      v24 = v20 - v19;
      if (!v23)
      {
        v25 = sub_26BDF847C();
        if (v25 >= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
        }

        v27 = &v21[v26];
        if (v21)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        sub_26BDF5B40(v21, v28, &v80);
        v11 = v18;
LABEL_31:
        v12 = MEMORY[0x277CC9300];
LABEL_34:
        v39 = v80;
        v40 = v81;
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v78 = v11;
        v79 = v12;
        v76 = v3;
        v77 = v5;
        v41 = __swift_project_boxed_opaque_existential_1(&v76, v11);
        v42 = *v41;
        v43 = v41[1];
        v44 = v43 >> 62;
        if ((v43 >> 62) > 1)
        {
          if (v44 != 2)
          {
            memset(v75, 0, 14);
            sub_26BDF801C(v3, v5);
            v45 = v75;
            goto LABEL_62;
          }

          v72 = v8;
          v74 = v10;
          v46 = *(v42 + 16);
          v47 = *(v42 + 24);
          v48 = v5;
          sub_26BDF801C(v3, v5);
          v49 = sub_26BDF846C();
          if (v49)
          {
            v50 = sub_26BDF848C();
            if (__OFSUB__(v46, v50))
            {
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v49 += v46 - v50;
          }

          v23 = __OFSUB__(v47, v46);
          v51 = v47 - v46;
          if (!v23)
          {
            v52 = sub_26BDF847C();
            if (v52 >= v51)
            {
              v53 = v51;
            }

            else
            {
              v53 = v52;
            }

            v54 = &v49[v53];
            if (v49)
            {
              v55 = v54;
            }

            else
            {
              v55 = 0;
            }

            sub_26BDF5B40(v49, v55, &v80);
            v8 = v72;
            v5 = v48;
            goto LABEL_60;
          }

          goto LABEL_68;
        }

        if (!v44)
        {
          v75[0] = *v41;
          LOWORD(v75[1]) = v43;
          BYTE2(v75[1]) = BYTE2(v43);
          BYTE3(v75[1]) = BYTE3(v43);
          BYTE4(v75[1]) = BYTE4(v43);
          BYTE5(v75[1]) = BYTE5(v43);
          sub_26BDF801C(v3, v5);
          v45 = v75 + BYTE6(v43);
LABEL_62:
          sub_26BDF5B40(v75, v45, &v80);
          goto LABEL_63;
        }

        v74 = v10;
        v56 = v8;
        v57 = v42;
        v58 = v42 >> 32;
        v59 = v58 - v57;
        if (v58 >= v57)
        {
          v73 = v5;
          sub_26BDF801C(v3, v5);
          v60 = sub_26BDF846C();
          if (!v60)
          {
LABEL_53:
            v8 = v56;
            v62 = sub_26BDF847C();
            if (v62 >= v59)
            {
              v63 = v59;
            }

            else
            {
              v63 = v62;
            }

            v64 = &v60[v63];
            if (v60)
            {
              v65 = v64;
            }

            else
            {
              v65 = 0;
            }

            sub_26BDF5B40(v60, v65, &v80);
            v5 = v73;
LABEL_60:
            v10 = v74;
LABEL_63:
            v66 = v80;
            v67 = v81;
            __swift_destroy_boxed_opaque_existential_1(&v76);
            v80 = v39;
            v81 = v40;
            v78 = MEMORY[0x277CC9318];
            v79 = MEMORY[0x277CC9300];
            v76 = v66;
            v77 = v67;
            v68 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x277CC9318]);
            v69 = *v68;
            v70 = v68[1];
            sub_26BDF801C(v39, v40);
            sub_26BDF5F94(v69, v70);
            sub_26BDF697C(v39, v40);
            sub_26BDF697C(v8, v10);
            sub_26BDF697C(v3, v5);
            __swift_destroy_boxed_opaque_existential_1(&v76);
            result = v80;
            goto LABEL_64;
          }

          v61 = sub_26BDF848C();
          if (!__OFSUB__(v57, v61))
          {
            v60 += v57 - v61;
            goto LABEL_53;
          }

LABEL_72:
          __break(1u);
        }

LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }
    }

    else
    {
      if (!v16)
      {
        v75[0] = *v13;
        LOWORD(v75[1]) = v15;
        BYTE2(v75[1]) = BYTE2(v15);
        BYTE3(v75[1]) = BYTE3(v15);
        BYTE4(v75[1]) = BYTE4(v15);
        BYTE5(v75[1]) = BYTE5(v15);
        sub_26BDF801C(v8, v10);
        v17 = v75 + BYTE6(v15);
LABEL_33:
        sub_26BDF5B40(v75, v17, &v80);
        goto LABEL_34;
      }

      v29 = v11;
      v30 = v14;
      v31 = v14 >> 32;
      v32 = v31 - v30;
      if (v31 >= v30)
      {
        sub_26BDF801C(v8, v10);
        v33 = sub_26BDF846C();
        if (v33)
        {
          v34 = sub_26BDF848C();
          if (__OFSUB__(v30, v34))
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v33 += v30 - v34;
        }

        v11 = v29;
        v35 = sub_26BDF847C();
        if (v35 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v35;
        }

        v37 = &v33[v36];
        if (v33)
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        sub_26BDF5B40(v33, v38, &v80);
        goto LABEL_31;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_64:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26BDF7374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D430, &qword_26BDF8FF0);
    v3 = sub_26BDF86AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BDF8074(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26BDF5C84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26BDF80E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
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

uint64_t sub_26BDF74CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3B0, &qword_26BDF8BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BDF7534(uint64_t result)
{
  if ((result - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26BDF7548()
{
  result = qword_28045D3B8;
  if (!qword_28045D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3B8);
  }

  return result;
}

unint64_t sub_26BDF759C()
{
  result = qword_28045D3C0;
  if (!qword_28045D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3C0);
  }

  return result;
}

unint64_t sub_26BDF75F4()
{
  result = qword_28045D3C8;
  if (!qword_28045D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3C8);
  }

  return result;
}

unint64_t sub_26BDF764C()
{
  result = qword_28045D3D0;
  if (!qword_28045D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3D0);
  }

  return result;
}

unint64_t sub_26BDF76A4()
{
  result = qword_28045D3D8;
  if (!qword_28045D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3D8);
  }

  return result;
}

unint64_t sub_26BDF76FC()
{
  result = qword_28045D3E0;
  if (!qword_28045D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3E0);
  }

  return result;
}

unint64_t sub_26BDF7754()
{
  result = qword_28045D3E8;
  if (!qword_28045D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3E8);
  }

  return result;
}

unint64_t sub_26BDF77B0()
{
  result = qword_28045D3F0;
  if (!qword_28045D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLiteIssuersError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRLiteIssuersError(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_26BDF7BF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3F8, &qword_26BDF8FD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BDF7DBC();
  sub_26BDF876C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D400, &qword_26BDF8FE0);
    sub_26BDF7E5C();
    sub_26BDF86CC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26BDF7DBC()
{
  result = qword_28045DB70[0];
  if (!qword_28045DB70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28045DB70);
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

unint64_t sub_26BDF7E5C()
{
  result = qword_28045D408;
  if (!qword_28045D408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045D400, &qword_26BDF8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D408);
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

unint64_t sub_26BDF7F20()
{
  result = qword_28045D410;
  if (!qword_28045D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D410);
  }

  return result;
}

unint64_t sub_26BDF7F74()
{
  result = qword_28045D418;
  if (!qword_28045D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D418);
  }

  return result;
}

unint64_t sub_26BDF7FC8()
{
  result = qword_28045D420;
  if (!qword_28045D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045D420);
  }

  return result;
}

uint64_t sub_26BDF801C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BDF8074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045D3B0, &qword_26BDF8BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26BDF80E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26BDF81BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for issuersJSON.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for issuersJSON.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_26BDF82F0()
{
  result = qword_28045DD00[0];
  if (!qword_28045DD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28045DD00);
  }

  return result;
}

unint64_t sub_26BDF8348()
{
  result = qword_28045DE10;
  if (!qword_28045DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045DE10);
  }

  return result;
}

unint64_t sub_26BDF83A0()
{
  result = qword_28045DE18[0];
  if (!qword_28045DE18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28045DE18);
  }

  return result;
}