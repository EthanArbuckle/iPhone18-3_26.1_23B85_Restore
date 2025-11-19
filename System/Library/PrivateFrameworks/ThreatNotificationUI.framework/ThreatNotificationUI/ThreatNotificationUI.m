uint64_t _sSo30UIPageViewControllerOptionsKeyaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21E647E64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E647EC0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_21E647F44()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E647F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21E648030(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E6480D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TNUIActionItemConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21E648190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TNUIActionItemConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E64824C()
{
  v1 = (type metadata accessor for TNUIActionItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 32);

  v7 = *(type metadata accessor for TNUIActionItemConfiguration() + 28);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E64835C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21E6483B0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21E6483DC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_21E648408@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21E648458(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  return TNUIPresentationManager.isPresenting.didset();
}

uint64_t sub_21E6484A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_21E6484FC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_21E648560()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E648598()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E648610()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E648650()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E64868C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21E648738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E6487DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E648828(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_21E64888C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_21E64892C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_21E648978(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

void *sub_21E6489CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21E648A28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_21E648A6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E648AA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21E648AFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21E648B4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E648B94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E648C28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier();
  return swift_getWitnessTable();
}

uint64_t sub_21E648CC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_21E648D10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E648D48()
{
  v1 = (type metadata accessor for TNUIActionItemConfiguration() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 32);

  v9 = v1[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E648EE4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E648F34()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E648F6C()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E648FA4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_21E648FFC()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_21E649044@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_21E6490A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E6490F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_21E649180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ImageColorScheme and conformance ImageColorScheme();
  return swift_getWitnessTable();
}

uint64_t sub_21E6491E4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  type metadata accessor for _ConditionalContent();
  v5 = vextq_s8(*(a1 + 3), *(a1 + 3), 8uLL);
  return swift_getWitnessTable();
}

uint64_t default argument 1 of static TNUIDependencyContainer.makeDefault(environment:ldmManager:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TNCLDMManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = TNCLDMManager.init()();
  v6 = MEMORY[0x277D71448];
  a1[3] = v2;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t default argument 0 of TNUIButtonConfiguration.init(id:actionIdentifier:title:style:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AIDAServiceType(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AIDAServiceType(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AIDAServiceType@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223D615B0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AIDAServiceType()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223D61660](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AIDAServiceType()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AIDAServiceType()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AIDAServiceType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AIDAServiceType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type AIDAServiceType and conformance AIDAServiceType, type metadata accessor for AIDAServiceType);
  v3 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type AIDAServiceType and conformance AIDAServiceType, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AIDAServiceType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x223D615B0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIPageViewControllerOptionsKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey, type metadata accessor for UIPageViewControllerOptionsKey);
  v3 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey, type metadata accessor for UIPageViewControllerOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t specialized static TNUIImageColorScheme.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a1)
      {
        if (!a3)
        {
          return 0;
        }

        v8 = static Color.== infix(_:_:)();
        outlined consume of TNUIImageColorScheme(a3, 0);
        return (v8 & 1) != 0;
      }

      return !a3;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = static Color.== infix(_:_:)();
  outlined consume of TNUIImageColorScheme(a3, 1);
  result = 1;
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL specialized static TNUIImageConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }

      if (a3)
      {
        if (a7)
        {

          v14 = static Color.== infix(_:_:)();
          outlined consume of TNUIImageColorScheme(a7, 1);
          result = 1;
          if (v14)
          {
            return result;
          }
        }

        return 0;
      }
    }

    else
    {
      if (a8)
      {
        return 0;
      }

      if (a3)
      {
        if (!a7)
        {
          return 0;
        }

        v15 = static Color.== infix(_:_:)();
        outlined consume of TNUIImageColorScheme(a7, 0);
        return (v15 & 1) != 0;
      }
    }

    return !a7;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIImageColorScheme(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TNUIImageColorScheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIImageConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for TNUIImageConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for UIPageViewControllerOptionsKey(uint64_t a1, unint64_t *a2)
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

uint64_t TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)(uint64_t a1, _BYTE *a2, void *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 56) = *a2;
  v5 = type metadata accessor for TNUIAccountRemoteUI();
  *(v3 + 24) = v5;
  objc_allocWithZone(v5);
  v6 = a3;
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:);

  return TNUIAccountRemoteUI.init(type:presentingViewController:)((v3 + 56), v6);
}

uint64_t TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:);
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v2[3] = *(v0 + 24);
  v2[4] = &protocol witness table for TNUIAccountRemoteUI;
  *v2 = v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v12(a1, a2, a3);
}

uint64_t TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(_BYTE *a1, uint64_t a2)
{
  objc_allocWithZone(v2);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:);

  return TNUIAccountRemoteUI.init(type:presentingViewController:)(a1, a2);
}

uint64_t TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t TNUIAccountRemoteUI.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t TNUIAccountRemoteUI.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUIAccountRemoteUI.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return TNUIAccountRemoteUI.delegate.modify;
}

void TNUIAccountRemoteUI.delegate.modify(uint64_t a1, char a2)
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

uint64_t TNUIAccountRemoteUI.init(type:presentingViewController:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  v5 = type metadata accessor for URL();
  *(v3 + 56) = v5;
  v6 = *(v5 - 8);
  *(v3 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 121) = *a1;

  return MEMORY[0x2822009F8](TNUIAccountRemoteUI.init(type:presentingViewController:), 0, 0);
}

uint64_t TNUIAccountRemoteUI.init(type:presentingViewController:)()
{
  v1 = *(v0 + 121);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  *(v0 + 80) = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  *(v2 + v3 + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  *(v0 + 88) = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter;
  *(v0 + 96) = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter;
  *(v2 + v6) = 0;
  *(v0 + 120) = v1;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = TNUIAccountRemoteUI.init(type:presentingViewController:);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);

  return static TNUIAccountRemoteUI.url(for:)(v8, (v0 + 120));
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = TNUIAccountRemoteUI.init(type:presentingViewController:);
  }

  else
  {
    v3 = TNUIAccountRemoteUI.init(type:presentingViewController:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);

  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v5 + v4);
  outlined destroy of CheckedContinuation<(), Error>?(v5 + v2, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);

  type metadata accessor for TNUIAccountRemoteUI();
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & *v5) + 0x34);
  swift_deallocPartialClassInstance();

  v8 = *(v0 + 8);
  v9 = *(v0 + 112);

  return v8();
}

id TNUIAccountRemoteUI.init(type:presentingViewController:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v4 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_contentType) = *(v0 + 121);
  (*(v2 + 16))(v4 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_url, v1, v3);
  v5 = type metadata accessor for TNUIAccountRemoteUI();
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  v6 = objc_msgSendSuper2((v0 + 16), sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  result = [v7 defaultStore];
  if (result)
  {
    v10 = result;
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v16 = v8;
    [v15 setDelegate_];
    v17 = [objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:v15 presenter:v14];
    [v17 setDelegate_];

    (*(v12 + 8))(v11, v13);
    v18 = *&v16[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter];
    *&v16[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter] = v17;

    v19 = *(v0 + 8);

    return v19(v16);
  }

  else
  {
    __break(1u);
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

uint64_t static TNUIAccountRemoteUI.url(for:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 192) = a1;
  v4 = type metadata accessor for URL();
  *(v2 + 200) = v4;
  v5 = *(v4 - 8);
  *(v2 + 208) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
  *(v2 + 224) = v7;
  v8 = *(v7 - 8);
  *(v2 + 232) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  *(v2 + 248) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 320) = *a2;

  return MEMORY[0x2822009F8](static TNUIAccountRemoteUI.url(for:), 0, 0);
}

uint64_t static TNUIAccountRemoteUI.url(for:)()
{
  v1 = *(v0 + 320);
  v2 = *MEMORY[0x277CF0110];
  v3 = *MEMORY[0x277CF0108];
  *(v0 + 288) = *MEMORY[0x277CF0110];
  *(v0 + 296) = v3;
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = objc_opt_self();
  v15 = v4;
  v6 = [v5 sharedBag];
  *(v0 + 304) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 272);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    *(v0 + 16) = v0;
    *(v0 + 56) = v8;
    *(v0 + 24) = static TNUIAccountRemoteUI.url(for:);
    swift_continuation_init();
    *(v0 + 136) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v11 + 32))(boxed_opaque_existential_0, v9, v12);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?;
    *(v0 + 104) = &block_descriptor_20;
    [v7 urlForKey:v15 completion:?];
    (*(v11 + 8))(boxed_opaque_existential_0, v12);
    v6 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v6);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = static TNUIAccountRemoteUI.url(for:);
  }

  else
  {
    v3 = static TNUIAccountRemoteUI.url(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = (v0 + 296);
  v3 = *(v0 + 320);
  if (v3)
  {
    v2 = (v0 + 288);
  }

  v4 = *v2;
  outlined init with take of URL?(*(v0 + 272), *(v0 + 280));

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      v8 = *(v0 + 216);
      (*(v7 + 16))(v8, v5, v6);
      v9 = URL.absoluteString.getter();
      v11 = v10;
      (*(v7 + 8))(v8, v6);
      *(v0 + 144) = v9;
      *(v0 + 152) = v11;
      *(v0 + 160) = 0x4449756663423725;
      *(v0 + 168) = 0xEB00000000443725;
      *(v0 + 176) = 0xD000000000000012;
      *(v0 + 184) = 0x800000021E675F10;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v5 = *(v0 + 280);
    }

    v12 = *(v0 + 264);
    URL.init(string:)();

    outlined assign with take of CheckedContinuation<(), Error>?(v12, v5, &_s10Foundation3URLVSgMd, "t-");
  }

  v13 = *(v0 + 256);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  outlined init with copy of (ObjectIdentifier, Sendable)(*(v0 + 280), v13, &_s10Foundation3URLVSgMd, "t-");
  v16 = (*(v15 + 48))(v13, 1, v14);
  v18 = *(v0 + 288);
  v17 = *(v0 + 296);
  v19 = *(v0 + 320);
  v20 = *(v0 + 280);
  if (v16 == 1)
  {
    if (*(v0 + 320))
    {
      v21 = *(v0 + 288);
    }

    else
    {
      v21 = *(v0 + 296);
    }

    outlined destroy of CheckedContinuation<(), Error>?(*(v0 + 256), &_s10Foundation3URLVSgMd, "t-");
    v22 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TNCError and conformance TNCError, MEMORY[0x277D71490]);
    swift_allocError();
    *v23 = 0xD000000000000014;
    v23[1] = 0x800000021E675EF0;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D71488], v22);
    swift_willThrow();

    outlined destroy of CheckedContinuation<(), Error>?(v20, &_s10Foundation3URLVSgMd, "t-");
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v28 = *(v0 + 240);
    v29 = *(v0 + 216);

    v30 = *(v0 + 8);
  }

  else
  {
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 256);
    v34 = *(v0 + 240);
    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    if (*(v0 + 320))
    {
      v17 = *(v0 + 288);
    }

    v38 = *(v0 + 192);
    v37 = *(v0 + 200);

    (*(v36 + 32))(v38, v33, v37);
    outlined destroy of CheckedContinuation<(), Error>?(v20, &_s10Foundation3URLVSgMd, "t-");

    v30 = *(v0 + 8);
  }

  return v30();
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = (v0 + 296);
  if (*(v0 + 320))
  {
    v3 = (v0 + 288);
  }

  v4 = *v3;
  swift_willThrow();

  v5 = *(v0 + 312);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v10 = *(v0 + 240);
  v11 = *(v0 + 216);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t type metadata accessor for TNUIAccountRemoteUI()
{
  result = type metadata singleton initialization cache for TNUIAccountRemoteUI;
  if (!type metadata singleton initialization cache for TNUIAccountRemoteUI)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIAccountRemoteUI.present()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v1[25] = v8;
  v9 = *(v8 - 8);
  v1[26] = v9;
  v10 = *(v9 + 64) + 15;
  v1[27] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v1[28] = v11;
  v12 = *(v11 - 8);
  v1[29] = v12;
  v13 = *(v12 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v15;
  v1[35] = v14;

  return MEMORY[0x2822009F8](TNUIAccountRemoteUI.present(), v15, v14);
}

{
  v36 = v0;
  v1 = v0[31];
  v2 = v0[18];
  static TNCLogger.default.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  if (v6)
  {
    v31 = v0[22];
    v10 = v0[18];
    v34 = v0[31];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v9;
    v13 = swift_slowAlloc();
    v35 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v14 = v10;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v35);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_21E646000, v4, v5, "%@ start presentation for url %s", v11, 0x16u);
    outlined destroy of CheckedContinuation<(), Error>?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223D62010](v13, -1, -1);
    MEMORY[0x223D62010](v11, -1, -1);

    v18 = *(v8 + 8);
    v19 = v18(v34, v32);
  }

  else
  {

    v18 = *(v8 + 8);
    v19 = v18(v7, v9);
  }

  v0[36] = v18;
  v20 = v0[18];
  v21 = *(v20 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter);
  v0[37] = v21;
  if (v21)
  {
    v22 = v0[26];
    v23 = v0[27];
    v24 = v0[25];
    v26 = v0[20];
    v25 = v0[21];
    v27 = v0[19];
    (*(v0[23] + 16))(v0[24], v20 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_url, v0[22]);
    v33 = v21;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v0[38] = isa;
    (*(v22 + 8))(v23, v24);
    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = TNUIAccountRemoteUI.present();
    swift_continuation_init();
    v0[17] = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v26 + 32))(boxed_opaque_existential_0, v25, v27);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    v0[13] = &block_descriptor;
    [v33 loadRequest:isa completion:?];
    (*(v26 + 8))(boxed_opaque_existential_0, v27);
    v19 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v19);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = TNUIAccountRemoteUI.present();
  }

  else
  {
    v6 = TNUIAccountRemoteUI.present();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 240);
  v3 = *(v0 + 144);
  v4 = *(v0 + 352);

  static TNCLogger.default.getter();
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4;
    v11 = v8;
    _os_log_impl(&dword_21E646000, v6, v7, "%@ load result %{BOOL}d", v9, 0x12u);
    outlined destroy of CheckedContinuation<(), Error>?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v10, -1, -1);
    MEMORY[0x223D62010](v9, -1, -1);
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 256);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 144);

  v12(v14, v16);
  *(v0 + 320) = static MainActor.shared.getter();
  v18 = swift_task_alloc();
  *(v0 + 328) = v18;
  *(v18 + 16) = v17;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  *(v0 + 336) = v20;
  *v20 = v0;
  v20[1] = TNUIAccountRemoteUI.present();

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v10 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = TNUIAccountRemoteUI.present();
  }

  else
  {
    v7 = v2[40];
    v8 = v2[41];

    v4 = v2[34];
    v5 = v2[35];
    v6 = TNUIAccountRemoteUI.present();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[33];

  swift_willThrow();

  v5 = v0[39];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[33];

  v4 = v0[43];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in TNUIAccountRemoteUI.present()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Error>?(v7, a2 + v10, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  swift_endAccess();
}

id TNUIAccountRemoteUI.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TNUIAccountRemoteUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIAccountRemoteUI();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for TNUIAccountRemoteUIType.delegate.modify in conformance TNUIAccountRemoteUI(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0x88))();
  return protocol witness for TNUIAccountRemoteUIType.delegate.modify in conformance TNUIAccountRemoteUI;
}

void protocol witness for TNUIAccountRemoteUIType.delegate.modify in conformance TNUIAccountRemoteUI(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for TNUIAccountRemoteUIType.present() in conformance TNUIAccountRemoteUI()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0xC8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v6();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-") - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15[1] = a3;
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    outlined init with take of URL?(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t TNUIAccountRemoteUI.finishWithResult(_:)(void *a1, int a2)
{
  v3 = v2;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-v15];
  v17 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  swift_beginAccess();
  outlined init with copy of (ObjectIdentifier, Sendable)(v3 + v17, v16, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  if ((*(v6 + 48))(v16, 1, v5))
  {
    outlined destroy of CheckedContinuation<(), Error>?(v16, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  }

  else
  {
    (*(v6 + 16))(v9, v16, v5);
    outlined destroy of CheckedContinuation<(), Error>?(v16, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
    if (v21)
    {
      v22 = a1;
      v18 = a1;
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      CheckedContinuation.resume(returning:)();
    }

    (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 56))(v14, 1, 1, v5);
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Error>?(v14, v3 + v17, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  return swift_endAccess();
}

unint64_t TNUIAccountRemoteUI.accounts(for:)(void *a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15AIDAServiceTypea_So9ACAccountCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = [a1 accountStore];
  v4 = [v3 aa_primaryAppleAccount];

  if (v4)
  {
    specialized Dictionary.subscript.setter(v4, *MEMORY[0x277CED1A0]);
  }

  return v2;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v16;
      }

      specialized _NativeDictionary._delete(at:)(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Sendable(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    outlined destroy of CheckedContinuation<(), Error>?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    v8 = *v2;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      outlined init with take of Sendable((*(v14 + 56) + 32 * v11), v17);
      specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return outlined destroy of CheckedContinuation<(), Error>?(v17, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  return result;
}

uint64_t TNUIAccountRemoteUI.remoteUIWillPresent(_:modally:)(uint64_t a1, char a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for TNUIAccountRemoteUI();
    v10[4] = &protocol witness table for TNUIAccountRemoteUI;
    v10[0] = v2;
    v8 = *(v6 + 8);
    v9 = v2;
    v8(v10, a2 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return result;
}

void TNUIAccountRemoteUI.remoteUIRequestComplete(_:error:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-v6];
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Logger();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static TNCLogger.default.getter();
  (*(v9 + 16))(v12, a1, v8);
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v13;
    v21 = v20;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v21 = 136315394;
    v33 = v19;
    URLRequest.url.getter();
    v22 = Optional.debugDescription.getter();
    v24 = v23;
    outlined destroy of CheckedContinuation<(), Error>?(v7, &_s10Foundation3URLVSgMd, "t-");
    (*(v9 + 8))(v12, v8);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v38);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v37 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v26 = Optional.debugDescription.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v38);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_21E646000, v18, v33, "GrandSlam remote UI completed for request: %s, error: %s", v21, 0x16u);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x223D62010](v29, -1, -1);
    MEMORY[0x223D62010](v21, -1, -1);

    (*(v36 + 8))(v16, v35);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    (*(v36 + 8))(v16, v13);
  }

  v30 = a2;
  v31 = a2;
  TNUIAccountRemoteUI.finishWithResult(_:)(a2, a2 != 0);
  outlined consume of Result<(), Error>(a2, a2 != 0);
  outlined consume of Result<(), Error>(a2, a2 != 0);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x223D619D0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15AIDAServiceTypea_So9ACAccountCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMd, &_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void type metadata completion function for TNUIAccountRemoteUI()
{
  type metadata accessor for CheckedContinuation<(), Error>?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of TNUIAccountRemoteUI.present()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v6();
}

void type metadata accessor for CheckedContinuation<(), Error>?()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Error>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Error>?);
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

unint64_t type metadata accessor for ACAccount()
{
  result = lazy cache variable for type metadata for ACAccount;
  if (!lazy cache variable for type metadata for ACAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ACAccount);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs8Sendable_pGMd, &_ss18_DictionaryStorageCySOs8Sendable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(i, &v11, &_sSO_s8Sendable_ptMd, &_sSO_s8Sendable_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Sendable(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 1);
      v9 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t outlined destroy of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *outlined init with take of Sendable(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (ObjectIdentifier, Sendable)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t TNUIViewIdentifier.identifier.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return static ThreatNotification.Screens.EnableLDM.identifier.getter();
    }

    else
    {
      return static ThreatNotification.Screens.LDMEnabled.identifier.getter();
    }
  }

  else if (a1)
  {
    return static ThreatNotification.Screens.AttackDetectedLDMOn.identifier.getter();
  }

  else
  {
    return static ThreatNotification.Screens.AttackDetectedLDMOff.identifier.getter();
  }
}

Swift::Int TNUIViewIdentifier.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNUIViewIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNUIViewIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIViewIdentifier and conformance TNUIViewIdentifier()
{
  result = lazy protocol witness table cache variable for type TNUIViewIdentifier and conformance TNUIViewIdentifier;
  if (!lazy protocol witness table cache variable for type TNUIViewIdentifier and conformance TNUIViewIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIViewIdentifier and conformance TNUIViewIdentifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIViewIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TNUIViewIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TNUIAccountRemoteUIType.present()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v9(a1, a2);
}

ThreatNotificationUI::TNCUILink_optional __swiftcall TNCUILink.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCUILink.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t TNCUILink.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TNCUILink(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "emergencyAssistance";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "emergencyAssistance";
  }

  else
  {
    v6 = "reatNotifications";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "TNUIWebViewController";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "reatNotifications";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "TNUIWebViewController";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCUILink()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TNCUILink()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCUILink()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TNCUILink(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "emergencyAssistance";
  v4 = 0xD000000000000021;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "reatNotifications";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "TNUIWebViewController";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t specialized static TNUIActionIdentifier.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 5)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    if (v2 == 4)
    {
      return v3 == 4;
    }

    if (v2 != 5)
    {
      goto LABEL_18;
    }

    return v3 == 5;
  }

  if (*a1 <= 7u)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return v3 == 7;
      }

      goto LABEL_18;
    }

    return v3 == 6;
  }

  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v2 == 9)
  {
    return v3 == 9;
  }

LABEL_18:
  if ((v3 - 3) < 7)
  {
    return 0;
  }

  if (*a1)
  {
    if (v2 == 1)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v2 == 1)
    {
      v5 = "emergencyAssistance";
    }

    else
    {
      v5 = "reatNotifications";
    }
  }

  else
  {
    v4 = 0xD000000000000013;
    v5 = "TNUIWebViewController";
  }

  v7 = v5 | 0x8000000000000000;
  v8 = "emergencyAssistance";
  v9 = 0xD000000000000021;
  if (v3 != 1)
  {
    v9 = 0xD000000000000017;
    v8 = "reatNotifications";
  }

  if (*a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v11 = "TNUIWebViewController";
  }

  if (v4 == v10 && v7 == (v11 | 0x8000000000000000))
  {

    return 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v12 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type TNCUILink and conformance TNCUILink()
{
  result = lazy protocol witness table cache variable for type TNCUILink and conformance TNCUILink;
  if (!lazy protocol witness table cache variable for type TNCUILink and conformance TNCUILink)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCUILink and conformance TNCUILink);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIActionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TNUIActionIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for TNUIActionIdentifier(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for TNUIActionIdentifier(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNCUILink(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TNCUILink(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t one-time initialization function for container()
{
  v6 = 0;
  v0 = type metadata accessor for TNCLDMManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = TNCLDMManager.init()();
  v5[3] = v0;
  v5[4] = MEMORY[0x277D71448];
  v5[0] = v3;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v6, v5, &static TNUIOnBoardingFlow.container);
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t static TNUIOnBoardingFlow.isLDMEnabledOnBoardingViewControllerRequired()()
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(static TNUIOnBoardingFlow.container);
  swift_getObjectType();
  v0 = dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.getter();
  swift_unknownObjectRelease();
  return v0 & 1;
}

TNUIOnBoardingFlow __swiftcall TNUIOnBoardingFlow.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id specialized static TNUIOnBoardingFlow.makeLDMEnabledOnBoardingViewController()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21E646000, v5, v6, "Did create LDM enabled onboarding flow", v7, 2u);
    MEMORY[0x223D62010](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v8 = static TNUIOnBoardingFlow.container;
  v9 = type metadata accessor for TNUIOBFlowLDMEnabled();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v8;
  v12.receiver = v10;
  v12.super_class = v9;

  return objc_msgSendSuper2(&v12, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
}

unint64_t type metadata accessor for TNUIOnBoardingFlow()
{
  result = lazy cache variable for type metadata for TNUIOnBoardingFlow;
  if (!lazy cache variable for type metadata for TNUIOnBoardingFlow)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TNUIOnBoardingFlow);
  }

  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for TNUIAnalytics();
  result = swift_initStaticObject();
  static TNUIAnalytics.shared = result;
  return result;
}

uint64_t *TNUIAnalytics.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TNUIAnalytics.shared;
}

uint64_t static TNUIAnalytics.shared.getter()
{
  type metadata accessor for TNUIAnalytics();

  return swift_initStaticObject();
}

uint64_t static TNUIAnalytics.registerCFUReceiptIfNeeded(at:)(double a1)
{
  v2 = type metadata accessor for Logger();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TNCStorageKey();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v10 = type metadata accessor for TNCLDMManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = TNCLDMManager.init()();
  v31 = v10;
  v32 = MEMORY[0x277D71448];
  v30[0] = v13;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v33, v30, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v27 = v28[0];
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v28[0], v30);
  __swift_project_boxed_opaque_existential_0(v30, v31);
  v14 = *MEMORY[0x277D71450];
  v15 = v6[13];
  v15(v9, v14, v5);
  dispatch thunk of TNCKVStoring.value(for:)();
  v16 = v6[1];
  v16(v9, v5);
  v17 = v29;
  outlined destroy of Any?(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  if (v17)
  {

    v18 = v24;
    static TNCLogger.default.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21E646000, v19, v20, "CFU receipt already registered", v21, 2u);
      MEMORY[0x223D62010](v21, -1, -1);
    }

    return (*(v25 + 8))(v18, v26);
  }

  else
  {
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v27, v30);
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v29 = MEMORY[0x277D839F8];
    *v28 = a1;
    v15(v9, v14, v5);
    dispatch thunk of TNCKVStoring.set(value:for:)();
    v16(v9, v5);
    outlined destroy of Any?(v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v30[0] = v27;
    TNUIAnalytics.send(event:container:)(3, v30);
  }
}

uint64_t TNUIAnalytics.send(event:container:)(char a1, uint64_t *a2)
{
  v4 = type metadata accessor for Logger();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = *a2;
  v12 = static ThreatNotification.Analytics.eventIdentifier.getter();
  v14 = v13;
  aBlock[0] = v11;
  v15 = specialized TNUIAnalyticsEvent.payload(with:)(aBlock, a1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  aBlock[0] = v11;
  if (specialized TNUIAnalytics.shouldLog(payload:for:container:)(v15, v16 & 1, v18, v20 & 1, a1, aBlock))
  {
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v11, aBlock);
    v22 = v21 & 1;
    specialized TNUIAnalytics.store(payload:for:in:)(v15, v17 & 1, v19, v22, a1, aBlock);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);

    v23 = MEMORY[0x223D615B0](v12, v14);

    v24 = swift_allocObject();
    *(v24 + 16) = v15;
    *(v24 + 24) = v17 & 1;
    *(v24 + 32) = v19;
    *(v24 + 40) = v22;
    aBlock[4] = partial apply for closure #1 in TNUIAnalytics.send(event:container:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_0;
    v25 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v25);

    static TNCLogger.default.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      v30 = TNUIAnalyticsEvent.EventType.description.getter(a1);
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_21E646000, v26, v27, "Logged event %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x223D62010](v29, -1, -1);
      MEMORY[0x223D62010](v28, -1, -1);
    }

    else
    {
    }

    return (*(v44 + 8))(v10, v45);
  }

  else
  {
    static TNCLogger.default.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      v38 = TNUIAnalyticsEvent.EventType.description.getter(a1);
      v40 = v39;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, aBlock);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_21E646000, v34, v35, "Event %s was not logged", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x223D62010](v37, -1, -1);
      MEMORY[0x223D62010](v36, -1, -1);
    }

    else
    {
    }

    return (*(v44 + 8))(v8, v45);
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMd, &_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs8Sendable_pGMd, &_ss18_DictionaryStorageCySOs8Sendable_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        outlined init with take of Sendable(v22, v32);
      }

      else
      {
        outlined init with copy of Any(v22, v32);
      }

      result = MEMORY[0x223D619D0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of Sendable(v32, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v38 = *(v23 + 24);
      v24 = *(v23 + 16);
      v25 = *(v23 + 8);
      v26 = *v23;
      result = MEMORY[0x223D619D0](*(v8 + 40), v22);
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v26;
      *(v17 + 8) = v25;
      *(v17 + 16) = v24;
      *(v17 + 24) = v38;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v17 = *v4;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);

    return outlined init with take of Sendable(a1, v21);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v24 = *v7;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2 & 1;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a5, a1, a2 & 1, a3, a4 & 1, v26);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Sendable(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMd, &_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs8Sendable_pGMd, &_ss18_DictionaryStorageCySOs8Sendable_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of Sendable(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 24);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t specialized TNUIAnalytics.shouldLog(payload:for:container:)(uint64_t a1, int a2, uint64_t a3, int a4, char a5, uint64_t *a6)
{
  v12 = type metadata accessor for TNCStorageKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a6;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAC11EnvironmentO_Tt0B5(v17, v32);
  if (v32[0])
  {
    v18 = 0;
    return v18 & 1;
  }

  v29 = a4;
  v30 = a2;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v17, v32);
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  (*(v13 + 104))(v16, *MEMORY[0x277D71458], v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  lazy protocol witness table accessor for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B], lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  dispatch thunk of TNCKVStoring.decodedValue<A>(for:)();
  (*(v13 + 8))(v16, v12);
  v19 = v31;
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  if (!v19)
  {
LABEL_17:
    v18 = 1;
    return v18 & 1;
  }

  if ((a5 - 2) >= 6u)
  {
    if (a5)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    if (!*(v19 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = qword_21E674720[(a5 - 2)];
    if (!*(v19 + 16))
    {
      goto LABEL_16;
    }
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
  if ((v22 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v23 = *(v19 + 56) + 32 * v21;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);

  v18 = 1;
  if (v24 == a1 && ((v25 ^ v30) & 1) == 0 && v26 == a3)
  {
    v18 = v27 ^ v29;
  }

  return v18 & 1;
}

uint64_t specialized TNUIAnalytics.store(payload:for:in:)(uint64_t a1, int a2, uint64_t a3, int a4, char a5, void *a6)
{
  v27 = a2;
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v8 = type metadata accessor for TNCStorageKey();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a6[4];
  __swift_project_boxed_opaque_existential_0(a6, a6[3]);
  v14 = v9[13];
  v25 = *MEMORY[0x277D71458];
  v24 = v14;
  v14(v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  lazy protocol witness table accessor for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B], lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  v26 = v15;
  dispatch thunk of TNCKVStoring.decodedValue<A>(for:)();
  v16 = v9[1];
  v16(v12, v8);
  v17 = v31;
  if (!v31)
  {
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if ((a5 - 2) >= 6u)
  {
    if (a5)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    v18 = qword_21E674720[(a5 - 2)];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v27 & 1, v30, v28 & 1, v18, isUniquelyReferenced_nonNull_native);
  v20 = v31;
  v21 = a6[4];
  __swift_project_boxed_opaque_existential_0(a6, a6[3]);
  v31 = v20;
  v24(v12, v25, v8);
  lazy protocol witness table accessor for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B], lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  dispatch thunk of TNCKVStoring.set<A>(encodedValue:for:)();
  v16(v12, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload()
{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  }

  return result;
}

Swift::Int TNUIButtonStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](a1);
  return Hasher._finalize()();
}

uint64_t TNUIButtonConfiguration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TNUIButtonConfiguration.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TNUIButtonConfiguration.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TNUIButtonConfiguration.init(id:actionIdentifier:title:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  if (a6)
  {
    if (a6 == 1)
    {
      result = static ThreatNotification.Screens.secondaryActionButtonIdentifier.getter();
    }

    else
    {
      result = static ThreatNotification.Screens.destructiveActionButtonIdentifier.getter();
    }
  }

  else
  {
    result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  }

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v13;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = result;
  *(a7 + 56) = v15;
  *(a7 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.learnMore(link:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000011, 0x800000021E676010, 0, 0xE000000000000000);
  v12 = v11;
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v16 = static ThreatNotification.Screens.secondaryActionButtonIdentifier.getter();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v9;
  *(a2 + 17) = *v22;
  *(a2 + 20) = *&v22[3];
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = 1;
  *(a2 + 41) = *&v21[2];
  *(a2 + 44) = *&v21[5];
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = 1;
  if (v9 == 1)
  {

    v19 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v20 ^ 1;
  }

  *(a2 + 64) = v19 & 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.notNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0x5F574F4E5F544F4ELL, 0xEE004E4F49544341, 0, 0xE000000000000000);
  v9 = v8;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  result = static ThreatNotification.Screens.destructiveActionButtonIdentifier.getter();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = 7;
  *(a1 + 17) = *v16;
  *(a1 + 20) = *&v16[3];
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = 2;
  *(a1 + 41) = *&v15[2];
  *(a1 + 44) = *&v15[5];
  *(a1 + 48) = result;
  *(a1 + 56) = v14;
  *(a1 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.turnOnAndRestart.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676030, 0, 0xE000000000000000);
  v9 = v8;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = 8;
  *(a1 + 17) = *v16;
  *(a1 + 20) = *&v16[3];
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 41) = *&v15[2];
  *(a1 + 44) = *&v15[5];
  *(a1 + 48) = result;
  *(a1 + 56) = v14;
  *(a1 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.turnOnLDM.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000012, 0x800000021E676050, 0, 0xE000000000000000);
  v9 = v8;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = 8;
  *(a1 + 17) = *v16;
  *(a1 + 20) = *&v16[3];
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 41) = *&v15[2];
  *(a1 + 44) = *&v15[5];
  *(a1 + 48) = result;
  *(a1 + 56) = v14;
  *(a1 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.continue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(a1, a2, 0, 0xE000000000000000);
  v15 = v14;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = a3;
  *(a4 + 17) = *v22;
  *(a4 + 20) = *&v22[3];
  *(a4 + 24) = v13;
  *(a4 + 32) = v15;
  *(a4 + 40) = 0;
  *(a4 + 41) = *&v21[2];
  *(a4 + 44) = *&v21[5];
  *(a4 + 48) = result;
  *(a4 + 56) = v20;
  *(a4 + 64) = 1;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TNUIButtonConfiguration@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t specialized static TNUIButtonConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 64);
  v15 = *(a1 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v2;
  v18 = v6;
  if ((specialized static TNUIActionIdentifier.== infix(_:_:)(&v19, &v18) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v7 && v4 == v8)
  {
    if (v5 != v9)
    {
      return 0;
    }

LABEL_11:
    if (v16 == v10 && v17 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v12 & 1) != 0 && v5 == v9)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIButtonStyle and conformance TNUIButtonStyle()
{
  result = lazy protocol witness table cache variable for type TNUIButtonStyle and conformance TNUIButtonStyle;
  if (!lazy protocol witness table cache variable for type TNUIButtonStyle and conformance TNUIButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIButtonStyle and conformance TNUIButtonStyle);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIButtonConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for TNUIButtonConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id TNUIOBKViewController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id TNUIOBKViewController.init(viewModel:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TNUIOBKViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id TNUIOBKViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TNUIOBKViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall TNUIOBKViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TNUIOBKViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  TNUIOBKViewController.setup()();
}

void TNUIOBKViewController.setup()()
{
  v1 = v0;
  v2 = type metadata accessor for TNUIViewConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  (*(**&v0[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] + 96))();
  v8 = *v5;
  outlined destroy of TNUIViewConfiguration(v5);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = static ThreatNotification.Screens.EnableLDM.identifier.getter();
    }

    else
    {
      v9 = static ThreatNotification.Screens.LDMEnabled.identifier.getter();
    }
  }

  else if (v8)
  {
    v9 = static ThreatNotification.Screens.AttackDetectedLDMOn.identifier.getter();
  }

  else
  {
    v9 = static ThreatNotification.Screens.AttackDetectedLDMOff.identifier.getter();
  }

  v10 = MEMORY[0x223D615B0](v9);

  [v7 setAccessibilityIdentifier_];

  v11 = TNUIOBKViewController.makeOBKViewController()();
  [v1 addChildViewController_];
  v12 = [v11 view];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  v16 = [v11 view];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  [v15 addSubview_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v11 view];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  [v24 setActive_];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v11 view];
  if (!v28)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  [v31 setActive_];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v11 view];
  if (!v35)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  [v38 setActive_];

  v39 = [v1 view];
  if (!v39)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = [v11 view];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 leadingAnchor];

    v45 = [v41 constraintEqualToAnchor_];
    [v45 setActive_];

    [v11 didMoveToParentViewController_];
    return;
  }

LABEL_32:
  __break(1u);
}

id TNUIOBKViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x223D615B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TNUIOBKViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIOBKViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TNUIOBKViewController.showActivityIndicator(for:show:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-v9];
  v11 = type metadata accessor for TNUIViewConfiguration();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  (*(**(v2 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel) + 96))(v14);
  v18 = &v16[*(v12 + 40)];
  v19 = *(v18 + 3);
  v30 = *(v18 + 2);
  v31 = v19;
  v32 = v18[64];
  v20 = *(v18 + 1);
  v28 = *v18;
  v29 = v20;
  outlined init with copy of (ObjectIdentifier, Sendable)(&v28, v27, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined destroy of TNUIViewConfiguration(v16);
  if (*(&v28 + 1) && (v21 = v29, outlined destroy of CheckedContinuation<(), Error>?(&v28, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR), v21 != 10))
  {
    v27[0] = v21;
    if (v17 == 10)
    {
      return;
    }

    v26 = v17;
    if ((specialized static TNUIActionIdentifier.== infix(_:_:)(v27, &v26) & 1) == 0)
    {
      return;
    }
  }

  else if (v17 != 10)
  {
    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton);
  if (v22)
  {
    v23 = v22;
    UIButton.configuration.getter();
    v24 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v24 - 8) + 48))(v10, 1, v24))
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(v10, v8, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
      UIButton.configuration.setter();

      outlined destroy of CheckedContinuation<(), Error>?(v10, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    }

    else
    {
      UIButton.Configuration.showsActivityIndicator.setter();
      UIButton.configuration.setter();
    }
  }
}

uint64_t outlined destroy of TNUIViewConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for TNUIViewConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TNUIOBKViewController.makeOBKViewController()()
{
  v82 = type metadata accessor for AttributedString();
  v81 = *(v82 - 1);
  v1 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TNUIViewConfiguration();
  v3 = *(*(v86 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v86);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v85 = &v79 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v79 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v79 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v79 - v15;
  v84 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel);
  v18 = *(*v17 + 96);
  v87 = *v17 + 96;
  v88 = v18;
  (v18)(v14);
  v20 = *(v16 + 1);
  v19 = *(v16 + 2);
  v21 = *(v16 + 3);
  v22 = v16[32];
  outlined copy of TNUIImageConfiguration?(v20, v19, v21, v22);
  outlined destroy of TNUIViewConfiguration(v16);
  if (v19)
  {
    v79 = v20;
    v23 = objc_opt_self();
    v24 = [v23 configurationPreferringMonochrome];
    v25 = &off_278361000;
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21E6748D0;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      outlined copy of TNUIImageColorScheme(v21, v22 & 1);
      outlined copy of TNUIImageColorScheme(v21, v22 & 1);
      *(v26 + 32) = UIColor.init(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v28 = [v23 configurationWithPaletteColors_];

      v29 = [v24 configurationByApplyingConfiguration_];
      outlined consume of TNUIImageColorScheme(v21, v22 & 1);

      v25 = &off_278361000;
      v24 = v29;
    }

    v30 = [v23 configurationWithPointSize_];
    v31 = [v24 v25[60]];

    v32 = MEMORY[0x223D615B0](v79, v19);
    v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

    outlined consume of TNUIImageColorScheme(v21, v22 & 1);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v88;
  v88();
  v37 = *(v13 + 5);
  v36 = *(v13 + 6);

  outlined destroy of TNUIViewConfiguration(v13);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
  v35();
  (*(v81 + 16))(v80, &v10[*(v86 + 28)], v82);
  outlined destroy of TNUIViewConfiguration(v10);
  v38 = NSAttributedString.init(_:)();
  v39 = [v38 string];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = objc_allocWithZone(MEMORY[0x277D37698]);
  v44 = MEMORY[0x223D615B0](v37, v36);

  v45 = MEMORY[0x223D615B0](v40, v42);

  v46 = v34;
  v47 = [v43 initWithTitle:v44 detailText:v45 icon:v34 contentLayout:2];

  v82 = v46;
  v48 = [v47 headerView];
  v49 = static ThreatNotification.Screens.iconIdentifier.getter();
  v50 = MEMORY[0x223D615B0](v49);

  [v48 setIconAccessibilityIdentifier_];

  v51 = [v47 headerView];
  v52 = static ThreatNotification.Screens.titleIdentifier.getter();
  v53 = MEMORY[0x223D615B0](v52);

  [v51 setTitleAccessibilityIdentifier_];

  v54 = [v47 headerView];
  v55 = static ThreatNotification.Screens.subtitleIdentifier.getter();
  v56 = MEMORY[0x223D615B0](v55);

  [v54 setDetailTextAccessibilityIdentifier_];

  v57 = v85;
  v58 = (v35)();
  v59 = v83;
  (v35)(v58);
  v60 = v59 + *(v86 + 32);
  v61 = *(v60 + 48);
  *v92 = *(v60 + 32);
  *&v92[16] = v61;
  v92[32] = *(v60 + 64);
  v62 = *(v60 + 16);
  v90 = *v60;
  v91 = v62;
  outlined init with copy of (ObjectIdentifier, Sendable)(&v90, v89, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined destroy of TNUIViewConfiguration(v59);
  v63 = *(&v90 + 1);
  if (*(&v90 + 1))
  {
    v65 = *(&v91 + 1);
    v64 = *v92;
    v86 = v91;
    v83 = v90;
    v89[0] = *&v92[8];
    *(v89 + 9) = *&v92[17];
    v66 = [objc_opt_self() accessoryButton];
    v67 = MEMORY[0x223D615B0](v65, v64);
    [v66 setTitle:v67 forState:0];

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v68 = swift_allocObject();
    v69 = v84;
    swift_unknownObjectWeakInit();
    v70 = swift_allocObject();
    v71 = v83;
    *(v70 + 16) = v68;
    *(v70 + 24) = v71;
    v72 = v86;
    *(v70 + 32) = v63;
    *(v70 + 40) = v72;
    *(v70 + 48) = v65;
    *(v70 + 56) = v64;
    *(v70 + 64) = v89[0];
    *(v70 + 73) = *(v89 + 9);
    v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v66 addAction:v73 forControlEvents:64];

    v74 = [v47 headerView];
    [v74 addAccessoryButton_];

    outlined destroy of TNUIViewConfiguration(v85);
    v75 = *(v69 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton);
    *(v69 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton) = v66;
  }

  else
  {
    outlined destroy of TNUIViewConfiguration(v57);
  }

  v76 = v88;
  v88();
  TNUIOBKViewController.configureContentView(in:with:)(v47, v13);
  v77 = outlined destroy of TNUIViewConfiguration(v13);
  (v76)(v77);
  TNUIOBKViewController.configureButtons(in:with:)(v47);

  outlined destroy of TNUIViewConfiguration(v13);
  return v47;
}

void TNUIOBKViewController.configureContentView(in:with:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UIHostingControllerSizingOptions();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(a2 + *(type metadata accessor for TNUIViewConfiguration() + 36));
  if (v8 && *(v8 + 16))
  {
    v9 = *(v2 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for TNUIViewModel();
    lazy protocol witness table accessor for type TNUIViewModel and conformance TNUIViewModel(&lazy protocol witness table cache variable for type TNUIViewModel and conformance TNUIViewModel, type metadata accessor for TNUIViewModel);

    ObservedObject.init(wrappedValue:)();
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy018ThreatNotificationB027TNUIActionItemContainerViewVGMd, &_s7SwiftUI19UIHostingControllerCy018ThreatNotificationB027TNUIActionItemContainerViewVGMR));

    v11 = UIHostingController.init(rootView:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    v12 = *(v6 + 72);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_21E6748E0;
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    lazy protocol witness table accessor for type TNUIViewModel and conformance TNUIViewModel(&lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions, MEMORY[0x277CDE4B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    v14 = [v11 view];
    if (!v14)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    }

    [a1 addChildViewController_];
    v15 = [a1 contentView];
    [v15 addSubview_];

    [v11 didMoveToParentViewController_];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v34 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21E6748F0;
    v17 = [v14 topAnchor];
    v18 = [a1 contentView];
    v19 = [v18 topAnchor];

    v20 = [v17 constraintEqualToAnchor_];
    *(v16 + 32) = v20;
    v21 = [v14 leadingAnchor];
    v22 = [a1 contentView];
    v23 = [v22 leadingAnchor];

    v24 = [v21 constraintEqualToAnchor_];
    *(v16 + 40) = v24;
    v25 = [v14 bottomAnchor];
    v26 = [a1 contentView];
    v27 = [v26 bottomAnchor];

    v28 = [v25 constraintEqualToAnchor_];
    *(v16 + 48) = v28;
    v29 = [v14 trailingAnchor];
    v30 = [a1 contentView];
    v31 = [v30 trailingAnchor];

    v32 = [v29 constraintEqualToAnchor_];
    *(v16 + 56) = v32;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints_];
  }
}

uint64_t TNUIOBKViewController.configureButtons(in:with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TNUIViewConfiguration();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = [a1 buttonTray];
  (*(**(v2 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel) + 96))();
  v10 = *&v8[*(v5 + 48)];

  outlined destroy of TNUIViewConfiguration(v8);
  v32 = v10;
  v11 = *(v10 + 16);
  if (v11)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v12 = (v32 + 32);
    do
    {
      v26 = v12[3];
      v27 = *(v12 + 64);
      v28 = v12[1];
      v36 = v12[2];
      v29 = *v12;
      v38 = v27;
      v37 = v26;
      v34 = v29;
      v35 = v28;
      if (BYTE8(v36))
      {
        v13 = objc_opt_self();
        outlined init with copy of TNUIButtonConfiguration(&v34, v33);
        v14 = [v13 linkButton];
        v15 = static ThreatNotification.Screens.secondaryActionButtonIdentifier.getter();
      }

      else
      {
        v30 = objc_opt_self();
        outlined init with copy of TNUIButtonConfiguration(&v34, v33);
        v14 = [v30 boldButton];
        v15 = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
      }

      v16 = MEMORY[0x223D615B0](v15);

      [v14 setAccessibilityIdentifier_];

      v17 = *(&v35 + 1);
      v18 = v36;
      v19 = v14;
      v20 = MEMORY[0x223D615B0](v17, v18);
      [v19 setTitle:v20 forState:0];

      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v23 = v34;
      *(v22 + 40) = v35;
      v24 = v37;
      *(v22 + 56) = v36;
      *(v22 + 72) = v24;
      *(v22 + 88) = v38;
      *(v22 + 24) = v23;
      v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v19 addAction:v25 forControlEvents:64];

      [v9 addButton_];
      v12 = (v12 + 72);
      --v11;
    }

    while (v11);
  }
}

uint64_t closure #1 in TNUIOBKViewController.configureContentView(in:with:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel);
    v4 = result;

    v5 = *(a1 + 16);
    (*(*v3 + 184))(&v5);
  }

  return result;
}

uint64_t closure #1 in TNUIOBKViewController.configureLink(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel);
    v6 = Strong;

    v8 = *(a3 + 16);
    (*(*v5 + 184))(&v8);
  }
}

void outlined copy of TNUIImageConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    outlined copy of TNUIImageColorScheme(a3, a4 & 1);
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t lazy protocol witness table accessor for type TNUIViewModel and conformance TNUIViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for NSAttributedString(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t static TNUILocalization.helpAppleImproveMessage(url:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E6748E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676260, 0, 0xE000000000000000);
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t static TNUILocalization.lockDownModeTurnedOnMessage(account:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E674980;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000027, 0x800000021E676300, 0, 0xE000000000000000);
  v11 = String.init(format:_:)();

  return v11;
}

uint64_t static TNUILocalization.spywareAttackDetectedLDMOffMessage(account:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E6748E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x800000021E676370, 0, 0xE000000000000000);
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t static TNUILocalization.spywareAttackDetectedLDMOnMessage(account:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E6748E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002BLL, 0x800000021E6763A0, 0, 0xE000000000000000);
  v5 = String.init(format:_:)();

  return v5;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t specialized static TNUILocalization.lockDownModeTurnedOnMessage(date:)(uint64_t a1)
{
  v57 = a1;
  v1 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatStyleCapitalizationContext();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeZone();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for Calendar();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v48 - v22;
  v49 = type metadata accessor for Date.FormatStyle();
  v24 = *(v49 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v49);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v48 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v48 - v32;
  v34 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
  v35 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  v36 = static TimeZone.autoupdatingCurrent.getter();
  MEMORY[0x223D60AA0](v36);
  v37 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v38 = v51;
  MEMORY[0x223D60B90](v37);
  Date.FormatStyle.month(_:)();
  (*(v52 + 8))(v38, v53);
  v39 = *(v24 + 8);
  v40 = v49;
  v41 = v39(v28, v49);
  v42 = v54;
  MEMORY[0x223D60B70](v41);
  Date.FormatStyle.day(_:)();
  (*(v55 + 8))(v42, v56);
  v39(v31, v40);
  lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
  Date.formatted<A>(_:)();
  v39(v33, v40);
  v43 = v58;
  v44 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_21E6748E0;
  *(v45 + 56) = MEMORY[0x277D837D0];
  *(v45 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v45 + 32) = v43;
  *(v45 + 40) = v44;
  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000028, 0x800000021E6764D0, 0, 0xE000000000000000);
  v46 = String.init(format:_:)();

  return v46;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

uint64_t TNUIViewConfiguration.image.getter()
{
  v1 = *(v0 + 8);
  outlined copy of TNUIImageConfiguration?(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

uint64_t TNUIViewConfiguration.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t TNUIViewConfiguration.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TNUIViewConfiguration() + 28);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TNUIViewConfiguration()
{
  result = type metadata singleton initialization cache for TNUIViewConfiguration;
  if (!type metadata singleton initialization cache for TNUIViewConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIViewConfiguration.link.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TNUIViewConfiguration() + 32);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return outlined init with copy of (ObjectIdentifier, Sendable)(v10, v9, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
}

uint64_t TNUIViewConfiguration.actionItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNUIViewConfiguration() + 36));
}

uint64_t TNUIViewConfiguration.actionButtons.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNUIViewConfiguration() + 40));
}

__n128 TNUIViewConfiguration.init(identifier:image:title:markdownMessage:link:actionItems:actionButtons:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v63 = a7;
  v64 = a8;
  v62 = a6;
  v60 = a5;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v56 = a1;
  v66 = a12;
  v67 = a13;
  v65 = a10;
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v55 = *(v61 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v61);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v20 = *(v54 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v54);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v51 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v51 - v32;
  v34 = type metadata accessor for AttributedString();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v52 = &v51 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a11[3];
  v70 = a11[2];
  v71 = v38;
  v72 = *(a11 + 64);
  v39 = a11[1];
  v68 = *a11;
  v69 = v39;
  *a9 = v56;
  v40 = v58;
  *(a9 + 8) = v57;
  *(a9 + 16) = v40;
  *(a9 + 24) = v59;
  *(a9 + 32) = v60;
  v41 = v63;
  *(a9 + 40) = v62;
  *(a9 + 48) = v41;
  v42 = type metadata accessor for URL();
  (*(*(v42 - 8) + 56))(v29, 1, 1, v42);
  (*(v20 + 104))(v23, *MEMORY[0x277CC8BB0], v54);
  (*(v55 + 104))(v19, *MEMORY[0x277CC8B98], v61);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  (*(v35 + 56))(v33, 0, 1, v34);
  v43 = *(v35 + 32);
  v44 = v52;
  v43(v52, v33, v34);
  v45 = type metadata accessor for TNUIViewConfiguration();
  v43((a9 + v45[7]), v44, v34);
  type metadata accessor for TNUIViewConfiguration();
  v46 = a9 + v45[8];
  v47 = v71;
  *(v46 + 32) = v70;
  *(v46 + 48) = v47;
  *(v46 + 64) = v72;
  v48 = v69;
  *v46 = v68;
  *(v46 + 16) = v48;
  v49 = v67;
  *(a9 + v45[9]) = v66;
  *(a9 + v45[10]) = v49;
  TNUIViewConfiguration.removeMailHighlighting()();
  return result;
}

Swift::Void __swiftcall TNUIViewConfiguration.removeMailHighlighting()()
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v1 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v55 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v78 = &v55 - v9;
  v79 = type metadata accessor for URL();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString.Runs.Index();
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.Runs.Run();
  v18 = *(v17 - 8);
  v69 = v17;
  v70 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = type metadata accessor for AttributedString.Runs();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v55 - v32;
  v34 = *(type metadata accessor for TNUIViewConfiguration() + 28);
  v62 = v0;
  v57 = v34;
  AttributedString.runs.getter();
  (*(v25 + 16))(v33, v28, v24);
  v35 = *(v30 + 44);
  v36 = v16;
  v37 = lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08]);
  v76 = v35;
  dispatch thunk of Collection.startIndex.getter();
  v38 = *(v25 + 8);
  v39 = v28;
  v40 = v63;
  v77 = v24;
  v38(v39, v24);
  v41 = v69;
  v75 += 8;
  v72 = (v70 + 4);
  v73 = (v70 + 2);
  v71 = (v10 + 48);
  v67 = (v10 + 32);
  v55 = (v10 + 56);
  v66 = (v10 + 8);
  ++v70;
  v58 = v13;
  v68 = v23;
  v56 = v37;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8]);
    v42 = v37;
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v75)(v36, v13);
    if (v43)
    {
      break;
    }

    v44 = dispatch thunk of Collection.subscript.read();
    (*v73)(v23);
    v44(v80, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v72)(v40, v23, v41);
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
    v45 = v78;
    AttributedString.Runs.Run.subscript.getter();
    v46 = (*v71)(v45, 1, v79);
    v37 = v42;
    if (v46 == 1)
    {
      (*v70)(v40, v41);
      outlined destroy of CheckedContinuation<(), Error>?(v78, &_s10Foundation3URLVSgMd, "t-");
    }

    else
    {
      (*v67)(v74, v78, v79);
      v47 = URL.scheme.getter();
      if (v48)
      {
        if (v47 == 0x6F746C69616DLL && v48 == 0xE600000000000000)
        {

LABEL_10:
          AttributedString.Runs.Run.range.getter();
          v50 = v59;
          v51 = v79;
          (*v55)(v59, 1, 1, v79);
          lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>();
          v64 = AttributedString.subscript.modify();
          outlined init with copy of (ObjectIdentifier, Sendable)(v50, v60, &_s10Foundation3URLVSgMd, "t-");
          v40 = v63;
          AttributedSubstring.subscript.setter();
          v13 = v58;
          outlined destroy of CheckedContinuation<(), Error>?(v50, &_s10Foundation3URLVSgMd, "t-");
          v64(v80, 0);
          outlined destroy of CheckedContinuation<(), Error>?(v65, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
          v52 = v51;
          v37 = v56;
          (*v66)(v74, v52);
          v53 = *v70;
          v54 = v40;
          goto LABEL_12;
        }

        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v49)
        {
          goto LABEL_10;
        }
      }

      (*v66)(v74, v79);
      v53 = *v70;
      v54 = v40;
LABEL_12:
      v41 = v69;
      v53(v54, v69);
      v23 = v68;
    }
  }

  outlined destroy of CheckedContinuation<(), Error>?(v33, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>);
  }

  return result;
}

void static TNUIViewConfiguration.attackDetectedLDMOff(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = type metadata accessor for AttributeContainer();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v41 - v23;
  v50 = type metadata accessor for AttributedString();
  v25 = *(v50 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v50);
  v41[0] = v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0x800000021E676500;
  v43 = static Color.red.getter();
  v28 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  v42 = xmmword_21E6748E0;
  *(v31 + 16) = xmmword_21E6748E0;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v45;
  *(v31 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x800000021E676370, 0, 0xE000000000000000);
  String.init(format:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = v42;
  static TNUIButtonConfiguration.continueToLockDownMode.getter(v32 + 32);
  *a3 = 0;
  v33 = v43;
  v34 = v44;
  *(a3 + 8) = 0xD00000000000001DLL;
  *(a3 + 16) = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = 0;
  *(a3 + 40) = v28;
  *(a3 + 48) = v30;
  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
  (*(v48 + 104))(v46, *MEMORY[0x277CC8BB0], v49);
  (*(v52 + 104))(v51, *MEMORY[0x277CC8B98], v53);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  v36 = v50;
  (*(v25 + 56))(v24, 0, 1, v50);
  v37 = *(v25 + 32);
  v38 = v41[0];
  v37(v41[0], v24, v36);
  v39 = type metadata accessor for TNUIViewConfiguration();
  v37(a3 + v39[7], v38, v36);
  type metadata accessor for TNUIViewConfiguration();
  v40 = a3 + v39[8];
  *(v40 + 64) = 0;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(a3 + v39[9]) = 0;
  *(a3 + v39[10]) = v32;
  TNUIViewConfiguration.removeMailHighlighting()();
}

void static TNUIViewConfiguration.attackDetectedLDMOn(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = type metadata accessor for AttributeContainer();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v41 - v23;
  v50 = type metadata accessor for AttributedString();
  v25 = *(v50 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v50);
  v41[0] = v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0x800000021E676500;
  v43 = static Color.red.getter();
  v28 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  v42 = xmmword_21E6748E0;
  *(v31 + 16) = xmmword_21E6748E0;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v45;
  *(v31 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002BLL, 0x800000021E6763A0, 0, 0xE000000000000000);
  String.init(format:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = v42;
  static TNUIButtonConfiguration.continue.getter(v32 + 32);
  *a3 = 1;
  v33 = v43;
  v34 = v44;
  *(a3 + 8) = 0xD00000000000001DLL;
  *(a3 + 16) = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = 0;
  *(a3 + 40) = v28;
  *(a3 + 48) = v30;
  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
  (*(v48 + 104))(v46, *MEMORY[0x277CC8BB0], v49);
  (*(v52 + 104))(v51, *MEMORY[0x277CC8B98], v53);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  v36 = v50;
  (*(v25 + 56))(v24, 0, 1, v50);
  v37 = *(v25 + 32);
  v38 = v41[0];
  v37(v41[0], v24, v36);
  v39 = type metadata accessor for TNUIViewConfiguration();
  v37(a3 + v39[7], v38, v36);
  type metadata accessor for TNUIViewConfiguration();
  v40 = a3 + v39[8];
  *(v40 + 64) = 0;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(a3 + v39[9]) = 0;
  *(a3 + v39[10]) = v32;
  TNUIViewConfiguration.removeMailHighlighting()();
}

void static TNUIViewConfiguration.turnOnLockDownMode.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributeContainer();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v45 = type metadata accessor for AttributedString();
  v22 = *(v45 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v45);
  v37 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = static Color.accentColor.getter();
  v26 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676430, 0, 0xE000000000000000);
  v28 = v27;
  v39 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000021E676410, 0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21E6748E0;
  v42 = v29;
  static TNUIButtonConfiguration.turnOnAndRestart.getter(v29 + 32);
  *a1 = 2;
  *(a1 + 8) = 0xD000000000000010;
  *(a1 + 16) = 0x800000021E676520;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28;
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  (*(v43 + 104))(v40, *MEMORY[0x277CC8BB0], v44);
  (*(v47 + 104))(v46, *MEMORY[0x277CC8B98], v48);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  v31 = v45;
  (*(v22 + 56))(v21, 0, 1, v45);
  v32 = *(v22 + 32);
  v33 = v37;
  v32(v37, v21, v31);
  v34 = type metadata accessor for TNUIViewConfiguration();
  v32((a1 + v34[7]), v33, v31);
  type metadata accessor for TNUIViewConfiguration();
  v35 = a1 + v34[8];
  *(v35 + 64) = 0;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(a1 + v34[9]) = 0;
  *(a1 + v34[10]) = v42;
  TNUIViewConfiguration.removeMailHighlighting()();
}

__n128 static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v163) = a2;
  v143 = a1;
  v148 = a3;
  v155 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v145 = &v128 - v5;
  v147 = type metadata accessor for Date();
  v144 = *(v147 - 8);
  v6 = *(v144 + 64);
  MEMORY[0x28223BE20](v147);
  v132 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v152 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v151 = *(v11 - 8);
  v12 = *(v151 + 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v146 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v139 = &v128 - v25;
  MEMORY[0x28223BE20](v24);
  v135 = (&v128 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v141 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v128 - v32;
  MEMORY[0x28223BE20](v31);
  v133 = &v128 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v142 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v138 = &v128 - v39;
  MEMORY[0x28223BE20](v38);
  v136 = &v128 - v40;
  v41 = type metadata accessor for AttributedString();
  v159 = *(v41 - 8);
  v42 = *(v159 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v131 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v130 = &v128 - v46;
  MEMORY[0x28223BE20](v45);
  v129 = &v128 - v47;
  v149 = type metadata accessor for TNUIActionItemConfiguration();
  v150 = *(v149 - 8);
  v48 = *(v150 + 64);
  v49 = MEMORY[0x28223BE20](v149);
  v51 = &v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v140 = &v128 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v128 - v55;
  MEMORY[0x28223BE20](v54);
  v134 = &v128 - v57;
  v160 = v41;
  v161 = v14;
  v157 = v19;
  v158 = v15;
  v162 = v11;
  if (v163)
  {
    v163 = static ThreatNotification.Screens.LDMEnabled.ActionItem.shareAnalyticsIdentifier.getter();
    v154 = v58;
    v59 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E676350, 0, 0xE000000000000000);
    v156 = v16;
    v153 = v59;
    v128 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_21E6748E0;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v61 + 32) = 0xD000000000000017;
    *(v61 + 40) = 0x800000021E675CD0;
    specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676260, 0, 0xE000000000000000);
    v62 = String.init(format:_:)();

    v63 = v154;
    *v56 = v163;
    *(v56 + 1) = v63;
    v56[16] = 6;
    v64 = v128;
    *(v56 + 3) = v153;
    *(v56 + 4) = v64;
    v65 = type metadata accessor for URL();
    (*(*(v65 - 8) + 56))(v133, 1, 1, v65);
    v66 = v156;
    v67 = *(v156 + 104);
    LODWORD(v154) = *MEMORY[0x277CC8BB0];
    v67(v19);
    v68 = *(v151 + 13);
    LODWORD(v153) = *MEMORY[0x277CC8B98];
    v68(v161);

    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v163 = v62;
    v69 = v155;
    AttributedString.init(markdown:options:baseURL:)();
    v16 = v66;
    if (v69)
    {

      v70 = v136;
      (*(v159 + 56))(v136, 1, 1, v160);
      outlined destroy of CheckedContinuation<(), Error>?(v70, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      AttributeContainer.init()();
      v71 = &v56[*(v149 + 28)];
      AttributedString.init(_:attributes:)();
      v155 = 0;
    }

    else
    {
      v155 = 0;

      v74 = v159;
      v75 = v160;
      v76 = v136;
      (*(v159 + 56))(v136, 0, 1, v160);
      v77 = *(v74 + 32);
      v78 = v129;
      v77(v129, v76, v75);
      v77(&v56[*(v149 + 28)], v78, v75);
    }

    v79 = v134;
    outlined init with take of TNUIActionItemConfiguration(v56, v134);
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v82 = v80[2];
    v81 = v80[3];
    v163 = v80;
    if (v82 >= v81 >> 1)
    {
      v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v81 > 1, v82 + 1, 1, v163);
    }

    v83 = v163;
    v163[2] = v82 + 1;
    outlined init with take of TNUIActionItemConfiguration(v79, v83 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v82);
    v72 = v154;
    v73 = v153;
  }

  else
  {
    v72 = *MEMORY[0x277CC8BB0];
    v73 = *MEMORY[0x277CC8B98];
    v163 = MEMORY[0x277D84F90];
  }

  v84 = static ThreatNotification.Screens.LDMEnabled.ActionItem.emergencyAssistanceIdentifier.getter();
  v86 = v85;
  v87 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E676210, 0, 0xE000000000000000);
  v89 = v88;
  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x800000021E676230, 0, 0xE000000000000000);
  *v51 = v84;
  *(v51 + 1) = v86;
  v51[16] = 0;
  *(v51 + 3) = v87;
  *(v51 + 4) = v89;
  v90 = type metadata accessor for URL();
  v91 = *(v90 - 8);
  v92 = *(v91 + 56);
  v136 = v90;
  v135 = v92;
  v134 = v91 + 56;
  (v92)(v137, 1, 1);
  v93 = *(v16 + 104);
  LODWORD(v154) = v72;
  v156 = v16 + 104;
  v133 = v93;
  (v93)(v157, v72, v158);
  v94 = *(v151 + 13);
  LODWORD(v153) = v73;
  v151 = v94;
  v94(v161, v73, v162);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v95 = v138;
  v96 = v155;
  AttributedString.init(markdown:options:baseURL:)();
  if (v96)
  {

    v155 = *(v159 + 56);
    v155(v95, 1, 1, v160);
    outlined destroy of CheckedContinuation<(), Error>?(v95, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    AttributeContainer.init()();
    v97 = &v51[*(v149 + 28)];
    AttributedString.init(_:attributes:)();
  }

  else
  {

    v98 = v159;
    v99 = v160;
    v155 = *(v159 + 56);
    v155(v95, 0, 1, v160);
    v100 = *(v98 + 32);
    v101 = v130;
    v100(v130, v95, v99);
    v100(&v51[*(v149 + 28)], v101, v99);
  }

  v102 = v148;
  v103 = v140;
  v104 = v163;
  outlined init with take of TNUIActionItemConfiguration(v51, v140);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = v153;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104[2] + 1, 1, v104);
  }

  v107 = v147;
  v109 = v104[2];
  v108 = v104[3];
  if (v109 >= v108 >> 1)
  {
    v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v108 > 1, v109 + 1, 1, v104);
  }

  v104[2] = v109 + 1;
  outlined init with take of TNUIActionItemConfiguration(v103, v104 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v109);
  v110 = v145;
  outlined init with copy of (ObjectIdentifier, Sendable)(v143, v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v111 = v144;
  v112 = (*(v144 + 48))(v110, 1, v107);
  v163 = v104;
  if (v112 == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x800000021E6762E0, 0, 0xE000000000000000);
  }

  else
  {
    v113 = v132;
    (*(v111 + 32))(v132, v110, v107);
    specialized static TNUILocalization.lockDownModeTurnedOnMessage(date:)(v113);
    (*(v111 + 8))(v113, v107);
  }

  v114 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v116 = v115;
  v164 = 1;
  static TNUIButtonConfiguration.learnMore(link:)(&v164, v165);
  *v102 = 3;
  *(v102 + 16) = 0;
  *(v102 + 24) = 0;
  *(v102 + 8) = 0;
  *(v102 + 32) = 0;
  *(v102 + 40) = v114;
  *(v102 + 48) = v116;
  v135(v141, 1, 1, v136);
  (v133)(v157, v154, v158);
  v151(v161, v106, v162);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v117 = v142;
  AttributedString.init(markdown:options:baseURL:)();

  v119 = v159;
  v118 = v160;
  v155(v117, 0, 1, v160);
  v120 = *(v119 + 32);
  v121 = v131;
  v120(v131, v117, v118);
  v122 = type metadata accessor for TNUIViewConfiguration();
  v120((v102 + v122[7]), v121, v118);
  v123 = v163;
  type metadata accessor for TNUIViewConfiguration();
  v124 = v102 + v122[8];
  v125 = v165[3];
  *(v124 + 32) = v165[2];
  *(v124 + 48) = v125;
  *(v124 + 64) = v166;
  v126 = v165[1];
  *v124 = v165[0];
  *(v124 + 16) = v126;
  *(v102 + v122[9]) = v123;
  *(v102 + v122[10]) = MEMORY[0x277D84F90];
  TNUIViewConfiguration.removeMailHighlighting()();
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI27TNUIActionItemConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIActionItemConfiguration();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      v36 = "emergencyAssistance";
      v37 = "TNUIWebViewController";
      v35 = "reatNotifications";
      while (1)
      {
        outlined init with copy of TNUIActionItemConfiguration(v14, v11);
        outlined init with copy of TNUIActionItemConfiguration(v15, v8);
        v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_61:
          outlined destroy of TNUIActionItemConfiguration(v8);
          outlined destroy of TNUIActionItemConfiguration(v11);
          goto LABEL_62;
        }

        v18 = v11[16];
        v19 = v8[16];
        if (v18 <= 5)
        {
          switch(v18)
          {
            case 3u:
              if (v19 != 3)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            case 4u:
              if (v19 != 4)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            case 5u:
              if (v19 != 5)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
          }
        }

        else if (v11[16] > 7u)
        {
          if (v18 == 8)
          {
            if (v19 != 8)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }

          if (v18 == 9)
          {
            if (v19 != 9)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }
        }

        else
        {
          if (v18 == 6)
          {
            if (v19 != 6)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }

          if (v18 == 7)
          {
            if (v19 != 7)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }
        }

        if ((v19 - 3) < 7)
        {
          goto LABEL_61;
        }

        if (v11[16])
        {
          if (v18 == 1)
          {
            v20 = 0xD000000000000021;
          }

          else
          {
            v20 = 0xD000000000000017;
          }

          v22 = v35;
          v21 = v36;
          if (v18 == 1)
          {
            v23 = v36;
          }

          else
          {
            v23 = v35;
          }
        }

        else
        {
          v20 = 0xD000000000000013;
          v21 = v36;
          v23 = v37;
          v22 = v35;
        }

        v24 = v23 | 0x8000000000000000;
        v25 = 0xD000000000000021;
        if (v19 == 1)
        {
          v26 = v21;
        }

        else
        {
          v25 = 0xD000000000000017;
          v26 = v22;
        }

        v27 = v19 == 0;
        if (v8[16])
        {
          v28 = v25;
        }

        else
        {
          v28 = 0xD000000000000013;
        }

        v29 = v37;
        if (!v27)
        {
          v29 = v26;
        }

        if (v20 == v28 && v24 == (v29 | 0x8000000000000000))
        {
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v30 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

LABEL_54:
        if ((*(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_61;
        }

        v31 = *(v4 + 28);
        v32 = static AttributedString.== infix(_:_:)();
        outlined destroy of TNUIActionItemConfiguration(v8);
        outlined destroy of TNUIActionItemConfiguration(v11);
        if (v32)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v32 & 1;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_62:
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI23TNUIButtonConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
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

  v28 = v2;
  v29 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v20 = *v5;
    *v21 = v8;
    v9 = v5[3];
    *&v21[16] = v5[2];
    v22 = v9;
    v23 = *(v5 + 64);
    v10 = v6[3];
    *&v25[16] = v6[2];
    v26 = v10;
    v27 = *(v6 + 64);
    v11 = v6[1];
    v24 = *v6;
    *v25 = v11;
    if (v20 != v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v21[0] <= 5u)
    {
      switch(v21[0])
      {
        case 3:
          if (v25[0] != 3)
          {
            return 0;
          }

          goto LABEL_34;
        case 4:
          if (v25[0] != 4)
          {
            return 0;
          }

          goto LABEL_34;
        case 5:
          if (v25[0] != 5)
          {
            return 0;
          }

          goto LABEL_34;
      }
    }

    else if (v21[0] > 7u)
    {
      if (v21[0] == 8)
      {
        if (v25[0] != 8)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v21[0] == 9)
      {
        if (v25[0] != 9)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v21[0] == 6)
      {
        if (v25[0] != 6)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v21[0] == 7)
      {
        if (v25[0] != 7)
        {
          return 0;
        }

LABEL_34:
        outlined init with copy of TNUIButtonConfiguration(&v20, v19);
        outlined init with copy of TNUIButtonConfiguration(&v24, v19);
        goto LABEL_35;
      }
    }

    if (v25[0] - 3 < 7)
    {
      return 0;
    }

    v12 = 0xD000000000000013;
    if (v21[0])
    {
      if (v21[0] == 1)
      {
        v13 = 0xD000000000000021;
        v14 = "emergencyAssistance";
        if (!v25[0])
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0xD000000000000017;
        v14 = "reatNotifications";
        if (!v25[0])
        {
LABEL_48:
          v16 = "TNUIWebViewController";
          goto LABEL_50;
        }
      }
    }

    else
    {
      v13 = 0xD000000000000013;
      v14 = "TNUIWebViewController";
      if (!v25[0])
      {
        goto LABEL_48;
      }
    }

    if (v25[0] == 1)
    {
      v12 = 0xD000000000000021;
      v16 = "emergencyAssistance";
    }

    else
    {
      v12 = 0xD000000000000017;
      v16 = "reatNotifications";
    }

LABEL_50:
    if (v13 == v12 && (v14 | 0x8000000000000000) == (v16 | 0x8000000000000000))
    {
      outlined init with copy of TNUIButtonConfiguration(&v20, v19);
      outlined init with copy of TNUIButtonConfiguration(&v24, v19);
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of TNUIButtonConfiguration(&v20, v19);
      outlined init with copy of TNUIButtonConfiguration(&v24, v19);

      if ((v17 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_35:
    if (*&v21[8] != *&v25[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v21[24] != v25[24])
    {
LABEL_54:
      outlined destroy of TNUIButtonConfiguration(&v24);
      outlined destroy of TNUIButtonConfiguration(&v20);
      return 0;
    }

    if (v22 == v26)
    {
      outlined destroy of TNUIButtonConfiguration(&v24);
      outlined destroy of TNUIButtonConfiguration(&v20);
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of TNUIButtonConfiguration(&v24);
      outlined destroy of TNUIButtonConfiguration(&v20);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if (v23 != v27)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 = (v5 + 72);
  }

  return 1;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
  v10 = *(type metadata accessor for TNUIActionItemConfiguration() - 8);
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
  v15 = *(type metadata accessor for TNUIActionItemConfiguration() - 8);
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI28TNUIActivityIndicatorShowing_pGMd, "|3");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized static TNUIViewConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v80 = v2;
  v81 = v3;
  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = *(a1 + 1);
    v9 = *(a1 + 3);
    v10 = a1[32];
    v11 = *(a2 + 1);
    v12 = *(a2 + 3);
    v13 = a2[32];
    v14 = *(a2 + 2);

    outlined copy of TNUIImageColorScheme(v12, v13 & 1);
    v15 = specialized static TNUIImageConfiguration.== infix(_:_:)(v8, v6, v9, v10 & 1, v11, v7, v12, v13 & 1);

    outlined consume of TNUIImageColorScheme(v12, v13 & 1);
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  else if (v7)
  {
    goto LABEL_20;
  }

  if ((*(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = type metadata accessor for TNUIViewConfiguration();
  v18 = v17[7];
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v19 = &a1[v17[8]];
  v20 = *(v19 + 1);
  v21 = *(v19 + 3);
  v73 = *(v19 + 2);
  v74 = v21;
  v75 = v19[64];
  v22 = *(v19 + 1);
  v72[0] = *v19;
  v72[1] = v22;
  v23 = &a2[v17[8]];
  v24 = *(v23 + 3);
  v25 = *(v23 + 1);
  v77 = *(v23 + 2);
  v78 = v24;
  v26 = *(v23 + 1);
  v76[0] = *v23;
  v76[1] = v26;
  v68 = v20;
  v69 = v73;
  v70 = *(v19 + 3);
  v27 = *(v23 + 3);
  v65 = v77;
  v66 = v27;
  v79 = v23[64];
  v28 = v72[0];
  v71 = v19[64];
  v29 = v76[0];
  v67 = v23[64];
  v64 = v25;
  if (*(&v72[0] + 1))
  {
    v54 = v72[0];
    v30 = *(v19 + 2);
    v55 = *(v19 + 1);
    v56 = v30;
    v57 = *(v19 + 3);
    v58 = v19[64];
    v51 = v30;
    v52 = v57;
    v53 = v58;
    v49 = v72[0];
    v50 = v55;
    if (*(&v76[0] + 1))
    {
      v31 = *(v23 + 2);
      v45 = *(v23 + 1);
      v46 = v31;
      v47 = *(v23 + 3);
      v48 = v23[64];
      v44 = v76[0];
      outlined init with copy of (ObjectIdentifier, Sendable)(v72, v42, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      outlined init with copy of (ObjectIdentifier, Sendable)(v76, v42, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      outlined init with copy of (ObjectIdentifier, Sendable)(&v54, v42, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      v32 = specialized static TNUIButtonConfiguration.== infix(_:_:)(&v49, &v44);
      v40[2] = v46;
      v40[3] = v47;
      v41 = v48;
      v40[0] = v44;
      v40[1] = v45;
      outlined destroy of TNUIButtonConfiguration(v40);
      v42[2] = v51;
      v42[3] = v52;
      v43 = v53;
      v42[0] = v49;
      v42[1] = v50;
      outlined destroy of TNUIButtonConfiguration(v42);
      v44 = v28;
      v45 = v68;
      v46 = v69;
      v47 = v70;
      v48 = v71;
      outlined destroy of CheckedContinuation<(), Error>?(&v44, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      if ((v32 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v46 = v56;
    v47 = v57;
    v48 = v58;
    v44 = v54;
    v45 = v55;
    outlined init with copy of (ObjectIdentifier, Sendable)(v72, v42, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined init with copy of (ObjectIdentifier, Sendable)(v76, v42, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined init with copy of (ObjectIdentifier, Sendable)(&v54, v42, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined destroy of TNUIButtonConfiguration(&v44);
LABEL_19:
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v60 = v64;
    v54 = v28;
    v58 = v71;
    v59 = v29;
    v61 = v65;
    v62 = v66;
    v63 = v67;
    outlined destroy of CheckedContinuation<(), Error>?(&v54, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSg_ADtMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSg_ADtMR);
    goto LABEL_20;
  }

  if (*(&v76[0] + 1))
  {
    outlined init with copy of (ObjectIdentifier, Sendable)(v72, &v54, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined init with copy of (ObjectIdentifier, Sendable)(v76, &v54, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    goto LABEL_19;
  }

  v54 = *&v72[0];
  v34 = *(v19 + 2);
  v55 = *(v19 + 1);
  v56 = v34;
  v57 = *(v19 + 3);
  v58 = v19[64];
  outlined init with copy of (ObjectIdentifier, Sendable)(v72, &v49, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined init with copy of (ObjectIdentifier, Sendable)(v76, &v49, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined destroy of CheckedContinuation<(), Error>?(&v54, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
LABEL_23:
  v35 = v17[9];
  v36 = *&a1[v35];
  v37 = *&a2[v35];
  if (v36)
  {
    if (v37)
    {
      v38 = *&a2[v35];

      v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI27TNUIActionItemConfigurationV_Tt1g5(v36, v37);

      if (v39)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v37)
  {
LABEL_28:
    v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI23TNUIButtonConfigurationV_Tt1g5(*&a1[v17[10]], *&a2[v17[10]]);
    return v33 & 1;
  }

LABEL_20:
  v33 = 0;
  return v33 & 1;
}

uint64_t outlined init with take of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIActionItemConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for TNUIViewConfiguration()
{
  type metadata accessor for TNUIImageConfiguration?(319, &lazy cache variable for type metadata for TNUIImageConfiguration?, &type metadata for TNUIImageConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TNUIImageConfiguration?(319, &lazy cache variable for type metadata for TNUIButtonConfiguration?, &type metadata for TNUIButtonConfiguration, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [TNUIActionItemConfiguration]?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for TNUIImageConfiguration?(319, &lazy cache variable for type metadata for [TNUIButtonConfiguration], &type metadata for TNUIButtonConfiguration, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [TNUIActionItemConfiguration]?()
{
  if (!lazy cache variable for type metadata for [TNUIActionItemConfiguration]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TNUIActionItemConfiguration]?);
    }
  }
}

void type metadata accessor for TNUIImageConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIActionItemConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TNUIActionItemConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for TNUIActionItemConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TNUIActionItemView.action.getter()
{
  v1 = (v0 + *(type metadata accessor for TNUIActionItemView() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for TNUIActionItemView()
{
  result = type metadata singleton initialization cache for TNUIActionItemView;
  if (!type metadata singleton initialization cache for TNUIActionItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIActionItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_MR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMR);
  closure #1 in TNUIActionItemView.body.getter(v2, &v10[*(v16 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  v17 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v6, v23);
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  v18 = *v2;
  v19 = v2[1];
  v25 = v7;
  v26 = v17;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in TNUIActionItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for AttributedString();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v70 - v10;
  v11 = type metadata accessor for TNUIActionItemView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMR);
  v18 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v20 = &v70 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMR);
  v21 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v78 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v82 = &v70 - v27;
  type metadata accessor for MainActor();
  v77 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  outlined init with copy of TNUIActionItemConfiguration(a1, &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TNUIActionItemView);
  v28 = *(v12 + 80);
  v71 = a1;
  v29 = (v28 + 16) & ~v28;
  v30 = swift_allocObject();
  v31 = outlined init with take of TNUIActionItemConfiguration(&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for TNUIActionItemView);
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v32 = static Edge.Set.all.getter();
  v33 = &v17[*(v14 + 36)];
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 = v20;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v17, v20, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMR);
  v35 = &v20[*(v70 + 36)];
  v36 = v98;
  v37 = v100;
  *(v35 + 4) = v99;
  *(v35 + 5) = v37;
  *(v35 + 6) = v101;
  v38 = v96;
  *v35 = v95;
  *(v35 + 1) = v38;
  *(v35 + 2) = v97;
  *(v35 + 3) = v36;
  v39 = [objc_opt_self() secondarySystemBackgroundColor];
  v70 = Color.init(uiColor:)();
  v40 = v73;
  v41 = &v73[*(v72 + 36)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
  v43 = v41 + *(v42 + 52);
  v44 = *(type metadata accessor for RoundedRectangle() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #8.0 }

  *v43 = _Q0;
  *v41 = v70;
  *(v41 + *(v42 + 56)) = 256;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v34, v40, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMR);
  static ThreatNotification.Screens.actionItemButtonIdentifier.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();

  outlined destroy of CheckedContinuation<(), Error>?(v40, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMR);
  v52 = type metadata accessor for TNUIActionItemConfiguration();
  (*(v75 + 16))(v74, v71 + *(v52 + 28), v76);
  v53 = Text.init(_:)();
  v55 = v54;
  LOBYTE(v44) = v56;
  v58 = v57;
  KeyPath = swift_getKeyPath();
  v60 = static Font.subheadline.getter();
  v61 = swift_getKeyPath();
  LOBYTE(v40) = v44 & 1;
  LOBYTE(v91[0]) = v44 & 1;
  LODWORD(v44) = static HierarchicalShapeStyle.secondary.getter();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v93[52] = v105;
  *&v93[68] = v106;
  *&v93[84] = v107;
  *&v93[100] = v108;
  *&v93[4] = v102;
  *&v93[20] = v103;
  *&v93[36] = v104;
  v62 = static Edge.Set.horizontal.getter();
  *(&v87[4] + 4) = *&v93[64];
  *(&v87[5] + 4) = *&v93[80];
  *(&v87[6] + 4) = *&v93[96];
  *(v87 + 4) = *v93;
  *(&v87[1] + 4) = *&v93[16];
  *(&v87[2] + 4) = *&v93[32];
  v94 = 1;
  *&v83 = v53;
  *(&v83 + 1) = v55;
  LOBYTE(v84) = v40;
  *(&v84 + 1) = v58;
  *&v85 = KeyPath;
  BYTE8(v85) = 0;
  *&v86 = v61;
  *(&v86 + 1) = v60;
  LODWORD(v87[0]) = v44;
  DWORD1(v87[7]) = *&v93[112];
  *(&v87[3] + 4) = *&v93[48];
  BYTE8(v87[7]) = v62;
  v88 = 0u;
  v89 = 0u;
  v90 = 1;
  static ThreatNotification.Screens.actionItemFooterIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v63 = v79;
  View.accessibilityIdentifier(_:)();

  v91[12] = v88;
  v91[13] = v89;
  v92 = v90;
  v91[8] = v87[4];
  v91[9] = v87[5];
  v91[10] = v87[6];
  v91[11] = v87[7];
  v91[4] = v87[0];
  v91[5] = v87[1];
  v91[6] = v87[2];
  v91[7] = v87[3];
  v91[0] = v83;
  v91[1] = v84;
  v91[2] = v85;
  v91[3] = v86;
  outlined destroy of CheckedContinuation<(), Error>?(v91, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMR);
  v64 = v82;
  v65 = v78;
  outlined init with copy of (ObjectIdentifier, Sendable)(v82, v78, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  v66 = v80;
  outlined init with copy of (ObjectIdentifier, Sendable)(v63, v80, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  v67 = v81;
  outlined init with copy of (ObjectIdentifier, Sendable)(v65, v81, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VG_ACyACyACyACyACyACyAgA022_EnvironmentKeyWritingN0VyAA0F9AlignmentOGGA0_yAA4FontVSgGGAA016_ForegroundStyleN0VyAA012HierarchicalmZ0VGGAIGAMGAYGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VG_ACyACyACyACyACyACyAgA022_EnvironmentKeyWritingN0VyAA0F9AlignmentOGGA0_yAA4FontVSgGGAA016_ForegroundStyleN0VyAA012HierarchicalmZ0VGGAIGAMGAYGtMR);
  outlined init with copy of (ObjectIdentifier, Sendable)(v66, v67 + *(v68 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v64, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v66, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v65, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
}

uint64_t closure #1 in closure #1 in TNUIActionItemView.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in TNUIActionItemView.body.getter(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + *(type metadata accessor for TNUIActionItemView() + 20);
  v3 = *(v2 + 8);
  (*v2)();
}

__n128 closure #2 in closure #1 in TNUIActionItemView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + 24);
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.headline.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 96) = v21;
  *(a2 + 112) = v22;
  *(a2 + 128) = v23;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  result = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v20;
  return result;
}

uint64_t TNUIActionItemView.init(configuration:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of TNUIActionItemConfiguration(a1, a4, type metadata accessor for TNUIActionItemConfiguration);
  result = type metadata accessor for TNUIActionItemView();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TNUIActionItemView@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_MR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMR);
  closure #1 in TNUIActionItemView.body.getter(v2, &v10[*(v16 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  v17 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v6, v23);
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  v18 = *v2;
  v19 = v2[1];
  v25 = v7;
  v26 = v17;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v12 + 8))(v15, v11);
}

unint64_t type metadata completion function for TNUIActionItemView()
{
  result = type metadata accessor for TNUIActionItemConfiguration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0i10AttachmentW0VG_ACyACyACyACyACyACyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_A7_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0i10AttachmentW0VG_ACyACyACyACyACyACyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_A7_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

uint64_t outlined init with copy of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in TNUIActionItemView.body.getter()
{
  v0 = *(*(type metadata accessor for TNUIActionItemView() - 8) + 80);

  return closure #1 in closure #1 in TNUIActionItemView.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMR, lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t TNUIPresentationManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t static TNUIPresentationManager.shared.getter()
{
  type metadata accessor for TNUIPresentationManager();

  return swift_initStaticObject();
}

uint64_t TNUIPresentationManager.isPresenting.didset()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static TNCLogger.default.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    if (*(v1 + 16))
    {
      v11 = 0x7472617473;
    }

    else
    {
      v11 = 1886352499;
    }

    if (*(v1 + 16))
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E646000, v7, v8, "Did %s presenting CFU", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D62010](v10, -1, -1);
    MEMORY[0x223D62010](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t TNUIPresentationManager.startPresenting()(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return TNUIPresentationManager.isPresenting.didset();
}

uint64_t TNUIPresentationManager.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id TNUIOBFlowLDMEnabled.__allocating_init(container:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
}

uint64_t TNUIOBFlowLDMEnabled.onBoardingDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUIOBFlowLDMEnabled.onBoardingDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_onBoardingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return TNUIOBFlowLDMEnabled.onBoardingDelegate.modify;
}

void TNUIOBFlowLDMEnabled.onBoardingDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

id TNUIOBFlowLDMEnabled.init(container:)(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  return objc_msgSendSuper2(&v4, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
}

id TNUIOBFlowLDMEnabled.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TNUIOBFlowLDMEnabled.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v11 = 0;
  v3 = type metadata accessor for TNCLDMManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = TNCLDMManager.init()();
  v10[3] = v3;
  v10[4] = MEMORY[0x277D71448];
  v10[0] = v6;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v11, v10, &v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v12;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

Swift::Void __swiftcall TNUIOBFlowLDMEnabled.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  TNUIOBFlowLDMEnabled.showPage(page:animated:)(1, 0);
}

id TNUIOBFlowLDMEnabled.__allocating_init(transitionStyle:navigationOrientation:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for UIPageViewControllerOptionsKey(0);
    lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey, type metadata accessor for UIPageViewControllerOptionsKey);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithTransitionStyle:a1 navigationOrientation:a2 options:v7.super.isa];

  return v8;
}

id TNUIOBFlowLDMEnabled.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TNUIOBFlowLDMEnabled.showPage(page:animated:)(char a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v3;
    v3 = v13;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v6;
    v16 = v15;
    v31 = v15;
    *v3 = 138412546;
    *(v3 + 4) = v10;
    *v14 = v10;
    *(v3 + 12) = 2080;
    if (a1)
    {
      v17 = 7169132;
    }

    else
    {
      v17 = 0x636974796C616E61;
    }

    v28 = v5;
    v18 = a1;
    if (a1)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE900000000000073;
    }

    v20 = v10;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v31);

    *(v3 + 14) = v21;
    _os_log_impl(&dword_21E646000, v11, v12, "%@ showing page: %s", v3, 0x16u);
    outlined destroy of NSObject?(v14);
    MEMORY[0x223D62010](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D62010](v16, -1, -1);
    v22 = v3;
    LOBYTE(v3) = v30;
    MEMORY[0x223D62010](v22, -1, -1);

    (*(v29 + 8))(v9, v28);
    if ((v18 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v23 = TNUIOBFlowLDMEnabled.makeLDMScreen()();
    goto LABEL_12;
  }

  (*(v6 + 8))(v9, v5);
  if (a1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v23 = TNUIOBFlowLDMEnabled.makeAnalyticsScreen()();
LABEL_12:
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21E6748D0;
  *(v25 + 32) = v24;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v26 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setViewControllers:isa direction:0 animated:v3 & 1 completion:0];
}

void *TNUIOBFlowLDMEnabled.finishFlow()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA08TNUIUserB8Managing_p_Tt0B5(*&v0[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container], v32);
  v7 = v32[4];
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  (*(v7 + 8))(2.0);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(*&v0[v6]);
  swift_getObjectType();
  dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.setter();
  swift_unknownObjectRelease();
  static TNCLogger.default.getter();
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = MEMORY[0x277D85000];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v2;
    v15 = v14;
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v13 = 138412546;
    *(v13 + 4) = v8;
    *v15 = v8;
    *(v13 + 12) = 2080;
    v16 = *v8;
    v17 = *v12;
    v29 = v1;
    v18 = *((v17 & v16) + 0x60);
    v19 = v8;
    v31 = v18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo36TNUIOnBoardingViewControllerDelegate_pSgMd, &_sSo36TNUIOnBoardingViewControllerDelegate_pSgMR);
    v20 = Optional.debugDescription.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v32);
    v12 = MEMORY[0x277D85000];

    *(v13 + 14) = v23;
    _os_log_impl(&dword_21E646000, v9, v10, "%@ finishing flow and informing delegate: %s", v13, 0x16u);
    outlined destroy of NSObject?(v15);
    MEMORY[0x223D62010](v15, -1, -1);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223D62010](v24, -1, -1);
    MEMORY[0x223D62010](v13, -1, -1);

    v25 = (*(v30 + 8))(v5, v29);
  }

  else
  {

    v25 = (*(v2 + 8))(v5, v1);
  }

  result = (*((*v12 & *v8) + 0x60))(v25);
  if (result)
  {
    v27 = result;
    if ([result respondsToSelector_])
    {
      [v27 tnuiOnBoardingViewControllerDidComplete_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TNUIOBFlowLDMEnabled.presentPrivacyVC()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_21E646000, v7, v8, "%@ presenting privacy VC", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x223D62010](v10, -1, -1);
    MEMORY[0x223D62010](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  specialized static TNUIPrivacyViewController.privacyViewController(for:)(&outlined read-only object #0 of TNUIOBFlowLDMEnabled.presentPrivacyVC());
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 16);
  v16 = v6;
  v15(v6, ObjectType, v13);
  (*(v13 + 32))(ObjectType, v13);
  return swift_unknownObjectRelease();
}

uint64_t TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = *(v23[1] + OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container);
  v18 = swift_allocObject();
  v19 = v24;
  v20 = v25;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = partial apply for closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D617A0](0, v10, v6, v21);
  _Block_release(v21);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v26);
}

uint64_t closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(a1, aBlock);
  __swift_project_boxed_opaque_existential_0(aBlock, v22);
  dispatch thunk of TNCMCManaging.enableDiagnosticsSharing()();
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  *(v15 + 24) = a3;
  v23 = partial apply for closure #1 in closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:);
  v24 = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22 = &block_descriptor_25;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D617A0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t closure #1 in closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(void (*a1)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id TNUIOBFlowLDMEnabled.makeAnalyticsScreen()()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize_];
  v3 = MEMORY[0x223D615B0](0xD00000000000001DLL, 0x800000021E676740);
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000021E6762A0, 0, 0xE000000000000000);
  v7 = v6;
  v8 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x800000021E676280, 0, 0xE000000000000000);
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D37698]);
  v12 = v4;
  v13 = MEMORY[0x223D615B0](v5, v7);

  v14 = MEMORY[0x223D615B0](v8, v10);

  v42 = v12;
  v41 = [v11 initWithTitle:v13 detailText:v14 icon:v12];

  v15 = [v41 buttonTray];
  v16 = [objc_opt_self() boldButton];
  v17 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E676350, 0, 0xE000000000000000);
  v18 = MEMORY[0x223D615B0](v17);

  [v16 setTitle:v18 forState:0];

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container;
  v22 = *(v1 + OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v22;

  v39 = v23;
  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v16 addAction:v24 forControlEvents:{64, 0, 0, 0, partial apply for closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen(), v39}];

  v25 = [objc_opt_self() linkButton];
  v26 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0x5F574F4E5F544F4ELL, 0xEE004E4F49544341, 0, 0xE000000000000000);
  v27 = MEMORY[0x223D615B0](v26);

  [v25 setTitle:v27 forState:0];

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v28;
  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v25 0x278361EF8];

  v30 = [objc_opt_self() accessoryButton];
  v31 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000011, 0x800000021E676010, 0, 0xE000000000000000);
  v32 = MEMORY[0x223D615B0](v31);

  [v30 setTitle:v32 forState:0];

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = *(v1 + v21);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;

  v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v30 addAction:v36 forControlEvents:{64, 0, 0, 0, partial apply for closure #3 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen(), v35}];

  v37 = [v41 headerView];
  [v37 addAccessoryButton_];

  [v15 addButton_];
  [v15 addButton_];

  return v41;
}

id TNUIOBFlowLDMEnabled.makeLDMScreen()()
{
  v0 = [objc_opt_self() configurationWithPointSize_];
  v1 = MEMORY[0x223D615B0](0xD000000000000015, 0x800000021E676770);
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  v3 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000021E676330, 0, 0xE000000000000000);
  v5 = v4;
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x800000021E6762C0, 0, 0xE000000000000000);
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D37698]);
  v10 = v2;
  v11 = MEMORY[0x223D615B0](v3, v5);

  v12 = MEMORY[0x223D615B0](v6, v8);

  v13 = [v9 initWithTitle:v11 detailText:v12 icon:v10];

  v14 = [v13 buttonTray];
  v15 = [objc_opt_self() boldButton];
  v16 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0x45554E49544E4F43, 0xEF4E4F495443415FLL, 0, 0xE000000000000000);
  v17 = MEMORY[0x223D615B0](v16);

  [v15 setTitle:v17 forState:0];

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v15 addAction:v19 forControlEvents:{64, 0, 0, 0, partial apply for closure #1 in TNUIOBFlowLDMEnabled.makeLDMScreen(), v18}];

  [v14 addButton_];
  return v13;
}

void closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong view];

    if (!v9)
    {
      __break(1u);
      return;
    }

    [v9 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 showsBusyIndicator];
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a2;

    TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(partial apply for closure #1 in closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen(), v14);
  }

  type metadata accessor for TNUIAnalytics();
  swift_initStaticObject();
  v15 = a4;
  TNUIAnalytics.send(event:container:)(1, &v15);
}

void closure #1 in closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong hidesBusyIndicator];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    [v4 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    TNUIOBFlowLDMEnabled.finishFlow()();
  }
}

void closure #2 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    TNUIOBFlowLDMEnabled.finishFlow()();
  }

  else
  {
  }
}