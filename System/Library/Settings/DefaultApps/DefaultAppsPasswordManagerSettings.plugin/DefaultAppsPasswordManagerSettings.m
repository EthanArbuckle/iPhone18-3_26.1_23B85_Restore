uint64_t PMDefaultAppsPasswordManagerSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t variable initialization expression of PMDefaultAppsPasswordManagerSettingsProvider.provider()
{
  v0 = sub_1EE4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1ED4();
}

uint64_t sub_140C()
{
  swift_getKeyPath();
  sub_1AA0(&qword_8100);
  sub_1E94();

  v1 = *(v0 + 32);
}

uint64_t sub_149C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AA0(&qword_8100);
  sub_1E94();

  *a2 = *(v3 + 32);
}

uint64_t sub_1534(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1560(v4);
}

uint64_t sub_1560(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1AA0(&qword_8100);
    sub_1E84();
  }
}

uint64_t type metadata accessor for PMDefaultAppsPasswordManagerSettingsProvider()
{
  result = qword_8350;
  if (!qword_8350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16FC(uint64_t (*a1)(uint64_t))
{
  swift_getKeyPath();
  sub_1AA0(&qword_8100);
  sub_1E94();

  v3 = *(v1 + 32);

  v5 = a1(v4);

  return v5;
}

uint64_t PMDefaultAppsPasswordManagerSettingsProvider.content.getter()
{
  swift_getKeyPath();
  sub_1AA0(&qword_8100);
  sub_1E94();

  v1 = *(v0 + 32);

  sub_1EC4();
}

void *PMDefaultAppsPasswordManagerSettingsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000022;
  v3[3] = 0x8000000000001FC0;
  v4 = sub_1EE4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v3[4] = sub_1ED4();
  _s34DefaultAppsPasswordManagerSettings09PMDefaultbcdE8ProviderC22__observationRegistrar33_28EBCC75703B267F57EEAC01B7327D1811Observation0pI0Vvpfi_0();
  return v3;
}

void *PMDefaultAppsPasswordManagerSettingsProvider.init()()
{
  v0[2] = 0xD000000000000022;
  v0[3] = 0x8000000000001FC0;
  v1 = sub_1EE4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[4] = sub_1ED4();
  _s34DefaultAppsPasswordManagerSettings09PMDefaultbcdE8ProviderC22__observationRegistrar33_28EBCC75703B267F57EEAC01B7327D1811Observation0pI0Vvpfi_0();
  return v0;
}

uint64_t PMDefaultAppsPasswordManagerSettingsProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC34DefaultAppsPasswordManagerSettings44PMDefaultAppsPasswordManagerSettingsProvider___observationRegistrar;
  v4 = sub_1EB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PMDefaultAppsPasswordManagerSettingsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC34DefaultAppsPasswordManagerSettings44PMDefaultAppsPasswordManagerSettingsProvider___observationRegistrar;
  v4 = sub_1EB4();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_1AA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PMDefaultAppsPasswordManagerSettingsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B00()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  swift_getKeyPath();
  sub_1AA0(&qword_8100);
  sub_1E94();

  v6 = *(v5 + 32);

  v8 = a3(v7);

  return v8;
}

uint64_t sub_1C24()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1AA0(&qword_8100);
  sub_1E94();

  v2 = *(v1 + 32);

  sub_1EC4();
}

uint64_t sub_1CCC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000022;
  v5[3] = 0x8000000000001FC0;
  v6 = sub_1EE4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v5[4] = sub_1ED4();
  result = _s34DefaultAppsPasswordManagerSettings09PMDefaultbcdE8ProviderC22__observationRegistrar33_28EBCC75703B267F57EEAC01B7327D1811Observation0pI0Vvpfi_0();
  *a1 = v5;
  return result;
}

uint64_t sub_1D6C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1D84()
{
  result = sub_1EB4();
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

uint64_t sub_1E48()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}