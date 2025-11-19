uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OnScreenContextType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000495255;
  v3 = 0xD000000000000011;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6E65657263536E6FLL;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v4 == 1)
  {
    v6 = 0xEB00000000495255;
  }

  else
  {
    v6 = 0x80000002234D9340;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002234D9320;
  }

  if (*a2 == 1)
  {
    v3 = 0x6E65657263536E6FLL;
  }

  else
  {
    v2 = 0x80000002234D9340;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002234D9320;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OnScreenContextType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OnScreenContextType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OnScreenContextType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance OnScreenContextType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized OnScreenContextType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance OnScreenContextType(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000495255;
  v4 = 0x6E65657263536E6FLL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000002234D9340;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000002234D9320;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t type metadata accessor for OnScreenContextType.GeneratedClientEntity()
{
  result = type metadata singleton initialization cache for OnScreenContextType.GeneratedClientEntity;
  if (!type metadata singleton initialization cache for OnScreenContextType.GeneratedClientEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in OnScreenContextType.generateClientEntity(context:)()
{
  v1 = v0[4];
  outlined copy of Data._Representation(v0[2], v0[3]);
  Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
  v2 = *v1;
  return Apple_Parsec_Siri_Context_ClientEntity.score.setter();
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of Apple_Parsec_Siri_Context_ClientEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D835A0], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v5 = MEMORY[0x277D398B0];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277D398B0], &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, v5, MEMORY[0x277D398C0]);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v5 = MEMORY[0x277D5EE30];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277D5EE30], &lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, v5, MEMORY[0x277D5EE40]);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for PommesCandidateId();
  v5 = MEMORY[0x277D56628];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, MEMORY[0x277D56628]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277D56628], &lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, v5, MEMORY[0x277D56640]);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = MEMORY[0x277D39530];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277D39530], &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, v5, MEMORY[0x277D39540]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v5);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, CommonAudio.Decade.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, CommonAudio.MediaType.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v7 = Hasher._finalize()();

  return a3(a1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x636973756DLL;
    }

    else
    {
      v6 = 1701736302;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x636973756DLL : 1701736302;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *&a1920s_1[8 * a1];
    while (*&a1920s_1[8 * *(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x65726E6567;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x747369747261;
          break;
        case 2:
          v8 = 0x6F65646976;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x7473696C79616C70;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6974617473;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x80000002234D9C30;
          break;
        case 6:
          v8 = 0x6F68536F69646172;
          v7 = 0xE900000000000077;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1735290739;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x5573656E755469;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x74736163646F70;
          break;
        case 0xA:
          v8 = 0x646956636973756DLL;
          v7 = 0xEA00000000006F65;
          break;
        case 0xB:
          v8 = 0x636973756DLL;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1937204590;
          break;
        case 0xD:
          v7 = 0xE600000000000000;
          v8 = 0x776F68537674;
          break;
        case 0xE:
          v8 = 0x6D75626C61;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x656E6F74676E6972;
          break;
        case 0x10:
          v7 = 0xE200000000000000;
          v8 = 28780;
          break;
        case 0x11:
          v7 = 0xE400000000000000;
          v8 = 2003789939;
          break;
        case 0x12:
          v8 = 0x6174536F69646172;
          v7 = 0xEC0000006E6F6974;
          break;
        case 0x13:
          v7 = 0xE200000000000000;
          v8 = 28773;
          break;
        case 0x14:
          v7 = 0xE600000000000000;
          v8 = 0x656C676E6973;
          break;
        case 0x15:
          v7 = 0xE700000000000000;
          v8 = 0x65646F73697065;
          break;
        case 0x16:
          v8 = 0x5374736163646F70;
          v7 = 0xEE006E6F69746174;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x73646E756F73;
          break;
        case 0x18:
          v8 = 0x74616C69706D6F63;
          v7 = 0xEB000000006E6F69;
          break;
        case 0x19:
          v8 = 0x6569766F6DLL;
          break;
        case 0x1A:
          v8 = 0x6F6F426F69647561;
          v7 = 0xE90000000000006BLL;
          break;
        case 0x1B:
          v8 = 0x616C50636973756DLL;
          v7 = 0xED00007473696C79;
          break;
        default:
          break;
      }

      v9 = 0xE500000000000000;
      v10 = 0x65726E6567;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          if (v8 == 0x747369747261)
          {
            goto LABEL_84;
          }

          goto LABEL_85;
        case 2:
          if (v8 != 0x6F65646976)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 3:
          v9 = 0xE800000000000000;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 4:
          v9 = 0xE700000000000000;
          if (v8 != 0x6E6F6974617473)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 5:
          v9 = 0x80000002234D9C30;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 6:
          v9 = 0xE900000000000077;
          if (v8 != 0x6F68536F69646172)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 7:
          v9 = 0xE400000000000000;
          if (v8 != 1735290739)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 8:
          v9 = 0xE700000000000000;
          if (v8 != 0x5573656E755469)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 9:
          v9 = 0xE700000000000000;
          if (v8 != 0x74736163646F70)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 10:
          v9 = 0xEA00000000006F65;
          if (v8 != 0x646956636973756DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 11:
          if (v8 != 0x636973756DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1937204590)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 13:
          v9 = 0xE600000000000000;
          if (v8 != 0x776F68537674)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 14:
          if (v8 != 0x6D75626C61)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 15:
          v9 = 0xE800000000000000;
          if (v8 != 0x656E6F74676E6972)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 16:
          v9 = 0xE200000000000000;
          if (v8 != 28780)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 17:
          v9 = 0xE400000000000000;
          if (v8 != 2003789939)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 18:
          v9 = 0xEC0000006E6F6974;
          if (v8 != 0x6174536F69646172)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 19:
          v9 = 0xE200000000000000;
          if (v8 != 28773)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 20:
          v9 = 0xE600000000000000;
          if (v8 != 0x656C676E6973)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 21:
          v9 = 0xE700000000000000;
          if (v8 != 0x65646F73697065)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 22:
          v9 = 0xEE006E6F69746174;
          if (v8 != 0x5374736163646F70)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 23:
          v9 = 0xE600000000000000;
          v10 = 0x73646E756F73;
          goto LABEL_83;
        case 24:
          v9 = 0xEB000000006E6F69;
          if (v8 != 0x74616C69706D6F63)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 25:
          if (v8 != 0x6569766F6DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 26:
          v9 = 0xE90000000000006BLL;
          if (v8 != 0x6F6F426F69647561)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 27:
          v9 = 0xED00007473696C79;
          if (v8 != 0x616C50636973756DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        default:
LABEL_83:
          if (v8 != v10)
          {
            goto LABEL_85;
          }

LABEL_84:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_85:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DDFEE0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x6E65657263536E6FLL;
        v8 = 0xEB00000000495255;
        if (*(*(v2 + 48) + v4) != 1)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000002234D9340;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x80000002234D9320;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000013;
        v8 = 0x80000002234D9320;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6E65657263536E6FLL;
      }

      else
      {
        v10 = 0xD000000000000011;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000495255;
      }

      else
      {
        v11 = 0x80000002234D9340;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = 0xE900000000000072;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 1953719650;
        }

        else
        {
          v10 = 0x7473726F77;
        }

        if (v7 == 2)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (*(*(v2 + 48) + v4))
        {
          v12 = 0x616C75706F706E75;
        }

        else
        {
          v12 = 0x72616C75706F70;
        }

        if (*(*(v2 + 48) + v4))
        {
          v13 = 0xE900000000000072;
        }

        else
        {
          v13 = 0xE700000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v9 = v12;
        }

        else
        {
          v9 = v10;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      else if (*(*(v2 + 48) + v4) <= 5u)
      {
        v8 = 0xE600000000000000;
        if (v7 == 4)
        {
          v9 = 0x74736577656ELL;
        }

        else
        {
          v9 = 0x747365646C6FLL;
        }
      }

      else if (v7 == 6)
      {
        v8 = 0xE700000000000000;
        v9 = 0x74736574746F68;
      }

      else
      {
        v8 = 0xE800000000000000;
        if (v7 == 7)
        {
          v9 = 0x6572636F6964656DLL;
        }

        else
        {
          v9 = 0x7473657461657267;
        }
      }

      v14 = 0x7473657461657267;
      if (v6 == 7)
      {
        v14 = 0x6572636F6964656DLL;
      }

      v15 = 0xE800000000000000;
      if (v6 == 6)
      {
        v14 = 0x74736574746F68;
        v15 = 0xE700000000000000;
      }

      v16 = 0x74736577656ELL;
      if (v6 != 4)
      {
        v16 = 0x747365646C6FLL;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = 0xE600000000000000;
      }

      if (v6 == 2)
      {
        v17 = 1953719650;
      }

      else
      {
        v17 = 0x7473726F77;
      }

      if (v6 == 2)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      if (v6)
      {
        v19 = 0x616C75706F706E75;
      }

      else
      {
        v19 = 0x72616C75706F70;
      }

      if (!v6)
      {
        v5 = 0xE700000000000000;
      }

      if (v6 <= 1)
      {
        v17 = v19;
        v18 = v5;
      }

      v20 = v6 <= 3 ? v17 : v14;
      v21 = v6 <= 3 ? v18 : v15;
      if (v9 == v20 && v8 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        v5 = 0xE900000000000072;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8);
      lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(v25, v26);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t specialized OnScreenContextType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OnScreenContextType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type OnScreenContextType and conformance OnScreenContextType()
{
  result = lazy protocol witness table cache variable for type OnScreenContextType and conformance OnScreenContextType;
  if (!lazy protocol witness table cache variable for type OnScreenContextType and conformance OnScreenContextType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreenContextType and conformance OnScreenContextType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OnScreenContextType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OnScreenContextType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OnScreenContextType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch19OnScreenContextTypeOGMd, &_sSay21SiriInformationSearch19OnScreenContextTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OnScreenContextType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnScreenContextType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnScreenContextType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for OnScreenContextType.GeneratedClientEntity()
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t one-time initialization function for pommes(uint64_t a1)
{
  return one-time initialization function for pommes(a1, static Logger.pommes);
}

{
  return one-time initialization function for pommes(a1, static Signposter.pommes, &one-time initialization token for pommes, static Logger.pommes);
}

uint64_t one-time initialization function for music(uint64_t a1)
{
  return one-time initialization function for pommes(a1, static Logger.music);
}

{
  return one-time initialization function for pommes(a1, static Signposter.music, &one-time initialization token for music, static Logger.music);
}

uint64_t one-time initialization function for insightRequestSummaryLogger()
{
  v0 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_allocate_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  __swift_project_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  return InsightRequestSummaryLogger.init()();
}

uint64_t one-time initialization function for sage(uint64_t a1)
{
  return one-time initialization function for pommes(a1, static Logger.sage);
}

{
  return one-time initialization function for pommes(a1, static Signposter.sage, &one-time initialization token for sage, static Logger.sage);
}

uint64_t one-time initialization function for pommes(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for loc()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposter.loc);
  __swift_project_value_buffer(v0, static Signposter.loc);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t one-time initialization function for pommes(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v13, a2);
  __swift_project_value_buffer(v13, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v12, v14, v7);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.pommes.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static Logger.pommes.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t OSSignposter.makeSignpostID(from:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    OSSignposter.logHandle.getter();

    return OSSignpostID.init(log:object:)();
  }

  else
  {
    OSSignposter.logHandle.getter();

    return OSSignpostID.init(log:)();
  }
}

uint64_t SignpostToken.init(name:id:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for SignpostToken();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for OSSignpostID();
  result = (*(*(v11 - 8) + 32))(a6 + v10, a4, v11);
  *(a6 + *(v9 + 24)) = a5;
  return result;
}

uint64_t OSSignposter.end(name:context:message:)(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a1;
  v44 = a6;
  v41 = a5;
  LODWORD(v42) = a3;
  v7 = type metadata accessor for OSSignpostError();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v38[-v21];
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v38[-v24];
  if (a4)
  {
    swift_unknownObjectRetain();
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:object:)();
  }

  else
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
  }

  (*(v13 + 16))(v22, v25, v12);
  v26 = type metadata accessor for OSSignpostIntervalState();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();

  v29 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v39 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v42 & 1) == 0)
  {

    if (!v43)
    {
      __break(1u);
LABEL_8:

LABEL_17:

      v37 = *(v13 + 8);
      v37(v18, v12);
      return (v37)(v25, v12);
    }

LABEL_13:

    checkForErrorAndConsumeState(state:)();

    v31 = v40;
    if ((*(v40 + 88))(v11, v7) == *MEMORY[0x277D85B00])
    {
      v32 = 0;
      v33 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v31 + 8))(v11, v7);
      v42 = "%s";
      v33 = 2;
      v32 = 1;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = v33;
    *(v34 + 1) = v32;
    *(v34 + 2) = 2080;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v45);
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_2232BB000, v29, v39, v36, v43, v42, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223DE0F80](v35, -1, -1);
    MEMORY[0x223DE0F80](v34, -1, -1);
    goto LABEL_17;
  }

  if (v43 >> 32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {

      v43 = &v45;
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t SignpostToken.name.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t SignpostToken.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignpostToken() + 20);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignpostToken.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignpostToken() + 24));
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for SignpostToken()
{
  result = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignpostIntervalState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
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

uint64_t SASelectedUserAttributes.selectedUserAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 meetsUserSessionThreshold];
  if (v4)
  {
    v5 = v4;
    [v4 BOOLValue];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v5, v7, "#user-session: could not resolve meetsUserSessionThreshold", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }
  }

  v9 = [v2 meetsPersonalRequestThreshold];
  if (v9)
  {
    v10 = v9;
    [v9 BOOLValue];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v10, v12, "#user-session: could not resolve meetsPersonalRequestThreshold", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }
  }

  v14 = [v2 userIdentityClassification];
  if (!v14)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pommes);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_22;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "#user-session: could not resolve userIdentityClassification. Setting to unspecified";
    goto LABEL_21;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = *MEMORY[0x277D48D68];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v20 == v18)
  {
    goto LABEL_16;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_25;
  }

  v34 = *MEMORY[0x277D48D70];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v35 == v18)
  {
    goto LABEL_16;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_25;
  }

  v37 = *MEMORY[0x277D48D80];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v38 == v18)
  {
    goto LABEL_16;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_25;
  }

  v40 = *MEMORY[0x277D48D88];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v41 == v18)
  {
LABEL_16:

LABEL_25:

    goto LABEL_26;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_25;
  }

  v43 = *MEMORY[0x277D48D78];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v44 == v18)
  {

    goto LABEL_26;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.pommes);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_22;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "#user-session: unexpected value for userIdentityClassification. Setting to unspecified";
LABEL_21:
    _os_log_impl(&dword_2232BB000, v22, v23, v25, v24, 2u);
    MEMORY[0x223DE0F80](v24, -1, -1);
LABEL_22:
  }

LABEL_26:
  v27 = [v2 score];
  if (v27)
  {
    v28 = v27;
    [v27 intValue];
  }

  v29 = [v2 lowScoreThreshold];
  if (v29)
  {
    v30 = v29;
    [v29 intValue];
  }

  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  v31 = type metadata accessor for SelectedUserAttributes();
  v32 = *(*(v31 - 8) + 56);

  return v32(a1, 0, 1, v31);
}

uint64_t PommesServerFallbackPreferences.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PommesServerFallbackPreferences.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

size_t UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(void *a1, char a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(v6, a2, v2, v4, v5);
}

uint64_t closure #1 in UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for ResolveQuery();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:)();
  a3();
}

size_t specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(uint64_t *a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  v129 = a1;
  v130 = a3;
  v133 = type metadata accessor for RREntity();
  v135 = *(v133 - 8);
  v8 = *(v135 + 64);
  v10 = MEMORY[0x28223BE20](v133, v9);
  v124 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v125 = &v123 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v126 = &v123 - v16;
  v136 = type metadata accessor for RRCandidate();
  v131 = *(v136 - 8);
  v17 = *(v131 + 64);
  MEMORY[0x28223BE20](v136, v18);
  v134 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RRResult();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v127 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v128 = &v123 - v27;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = (&v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = (&v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37, v40);
  v132 = &v123 - v41;
  v138[3] = a4;
  v138[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v138);
  v43 = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v129, a4);
  if (a2)
  {
    if (one-time initialization token for shared != -1)
    {
LABEL_68:
      v43 = swift_once();
    }

    v129 = &v123;
    v45 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v43, v44);
    v121 = v138;
    v122 = v130;
    Date.init()();
    v46 = *(*v45 + 200);
    LOBYTE(v120) = 2;
    v47 = v132;
    v46(0xD000000000000027, 0x80000002234DA930, 0, v33, "SiriInformationSearch/UsoEntity+SRR.swift", 41, 2, 20, "resolveFromSRR(rrClient:useSRREntityAPI:)", 41, v120, partial apply for closure #1 in UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:), &v120, v34);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      v43 = swift_once();
    }

    v129 = &v123;
    v48 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v43, v44);
    v121 = v138;
    v122 = v130;
    Date.init()();
    v49 = *(*v48 + 200);
    LOBYTE(v120) = 2;
    v47 = v132;
    v49(0xD00000000000001CLL, 0x80000002234DA8B0, 0, v33, "SiriInformationSearch/UsoEntity+SRR.swift", 41, 2, 24, "resolveFromSRR(rrClient:useSRREntityAPI:)", 41, v120, partial apply for closure #2 in UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:), &v120, v34);
  }

  (*(v29 + 8))(v33, v28);
  outlined init with copy of Result<RRResult, Error>(v47, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v39;
    v137 = *v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.pommes);
    v52 = v50;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v137 = v56;
      *v55 = 136315138;
      swift_getErrorValue();
      v57 = Error.localizedDescription.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v137);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2232BB000, v53, v54, "Could not resolve from SRR: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x223DE0F80](v56, -1, -1);
      MEMORY[0x223DE0F80](v55, -1, -1);
    }

    else
    {
    }

    outlined destroy of Result<RRResult, Error>(v132);
    v69 = 0;
    goto LABEL_32;
  }

  v60 = v128;
  (v21[4])(v128, v39, v20);
  v33 = v127;
  (v21[2])(v127, v60, v20);
  v61 = (v21[11])(v33, v20);
  if (v61 == *MEMORY[0x277D5FEC0])
  {
    (v21[12])(v33, v20);
    v62 = v131;
    v63 = v134;
    v64 = v33;
    v65 = v136;
    (*(v131 + 32))(v134, v64, v136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
    v66 = *(v135 + 72);
    v67 = v47;
    v68 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_2234CF920;
    RRCandidate.entity.getter();
    (*(v62 + 8))(v63, v65);
    (v21[1])(v60, v20);
    v70 = v67;
LABEL_31:
    outlined destroy of Result<RRResult, Error>(v70);
LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(v138);
    return v69;
  }

  v71 = v61 == *MEMORY[0x277D5FED0];
  v129 = v21;
  v123 = v20;
  if (v71)
  {
    (v21[12])(v33, v20);
    v72 = *v33;
    v73 = *(v72 + 2);
    if (v73)
    {
      v137 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
      v69 = v137;
      v74 = v131 + 16;
      v75 = *(v131 + 16);
      v76 = *(v131 + 80);
      v127 = v72;
      v77 = &v72[(v76 + 32) & ~v76];
      v130 = *(v131 + 72);
      v131 = v75;
      v78 = (v74 - 8);
      v79 = v126;
      do
      {
        v80 = v134;
        v81 = v136;
        (v131)(v134, v77, v136);
        RRCandidate.entity.getter();
        (*v78)(v80, v81);
        v137 = v69;
        v83 = *(v69 + 16);
        v82 = *(v69 + 24);
        if (v83 >= v82 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83 + 1, 1);
          v69 = v137;
        }

        *(v69 + 16) = v83 + 1;
        (*(v135 + 32))(v69 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v83, v79, v133);
        v77 = &v130[v77];
        --v73;
      }

      while (v73);
      goto LABEL_30;
    }

LABEL_55:

    (v21[1])(v60, v20);
    v111 = v47;
    goto LABEL_56;
  }

  if (v61 == *MEMORY[0x277D5FEC8])
  {
    (v21[12])(v33, v20);
    v84 = *v33;
    v85 = *(*v33 + 16);
    if (v85)
    {
      v137 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85, 0);
      v69 = v137;
      v86 = v131 + 16;
      v87 = *(v131 + 16);
      v88 = *(v131 + 80);
      v127 = v84;
      v89 = &v84[(v88 + 32) & ~v88];
      v130 = *(v131 + 72);
      v131 = v87;
      v90 = (v86 - 8);
      v91 = v125;
      do
      {
        v92 = v134;
        v93 = v136;
        (v131)(v134, v89, v136);
        RRCandidate.entity.getter();
        (*v90)(v92, v93);
        v137 = v69;
        v95 = *(v69 + 16);
        v94 = *(v69 + 24);
        if (v95 >= v94 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1);
          v69 = v137;
        }

        *(v69 + 16) = v95 + 1;
        (*(v135 + 32))(v69 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v95, v91, v133);
        v89 = &v130[v89];
        --v85;
      }

      while (v85);
LABEL_30:

      (v129[1])(v128, v123);
      v70 = v132;
      goto LABEL_31;
    }

    goto LABEL_55;
  }

  if (v61 != *MEMORY[0x277D5FED8])
  {
    v107 = *MEMORY[0x277D5FEE0];
    v108 = v47;
    v109 = v21[1];
    v110 = v61;
    v109(v60, v20);
    outlined destroy of Result<RRResult, Error>(v108);
    if (v110 != v107)
    {
      v109(v33, v20);
    }

    v69 = 0;
    goto LABEL_32;
  }

  (v21[12])(v33, v20);
  v97 = *v33;
  v39 = *(*v33 + 16);
  v28 = MEMORY[0x277D84F90];
  if (!v39)
  {
    v98 = MEMORY[0x277D84F90];
LABEL_58:

    v112 = v98[2];
    if (v112)
    {
      v137 = v28;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112, 0);
      v69 = v137;
      v130 = *(v131 + 16);
      v131 += 16;
      v113 = v98 + ((*(v131 + 64) + 32) & ~*(v131 + 64));
      v127 = *(v131 + 56);
      v114 = (v131 - 8);
      v115 = v124;
      do
      {
        v116 = v134;
        v117 = v136;
        (v130)(v134, v113, v136);
        RRCandidate.entity.getter();
        (*v114)(v116, v117);
        v137 = v69;
        v119 = *(v69 + 16);
        v118 = *(v69 + 24);
        if (v119 >= v118 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v118 > 1, v119 + 1, 1);
          v69 = v137;
        }

        *(v69 + 16) = v119 + 1;
        (*(v135 + 32))(v69 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v119, v115, v133);
        v113 = &v127[v113];
        --v112;
      }

      while (v112);
      goto LABEL_30;
    }

    (v21[1])(v128, v20);
    v111 = v132;
LABEL_56:
    outlined destroy of Result<RRResult, Error>(v111);
    v69 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v29 = 0;
  v34 = v97 + 32;
  v98 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 >= *(v97 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v33 = *(v34 + 8 * v29);
    v99 = v33[2];
    v21 = v98[2];
    v20 = v21 + v99;
    if (__OFADD__(v21, v99))
    {
      goto LABEL_66;
    }

    v100 = *(v34 + 8 * v29);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v20 > v98[3] >> 1)
    {
      if (v21 <= v20)
      {
        v101 = v21 + v99;
      }

      else
      {
        v101 = v21;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v101, 1, v98);
      v98 = result;
    }

    v21 = v129;
    v20 = v123;
    if (!v33[2])
    {

      if (v99)
      {
        goto LABEL_67;
      }

      goto LABEL_37;
    }

    if ((v98[3] >> 1) - v98[2] < v99)
    {
      break;
    }

    v102 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v103 = *(v131 + 72);
    swift_arrayInitWithCopy();

    if (v99)
    {
      v104 = v98[2];
      v105 = __OFADD__(v104, v99);
      v106 = v104 + v99;
      if (v105)
      {
        goto LABEL_70;
      }

      v98[2] = v106;
    }

LABEL_37:
    if (v39 == ++v29)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<RRResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for numberToWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t one-time initialization function for leetSpeakMappings()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJ_SaySSGtGMd, _ss23_ContiguousArrayStorageCySJ_SaySSGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0F10;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = &outlined read-only object #0 of one-time initialization function for leetSpeakMappings;
  *(inited + 56) = 49;
  *(inited + 64) = 0xE100000000000000;
  *(inited + 72) = &outlined read-only object #1 of one-time initialization function for leetSpeakMappings;
  *(inited + 80) = 50;
  v1 = MEMORY[0x277D84F90];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v1;
  *(inited + 104) = 51;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = &outlined read-only object #2 of one-time initialization function for leetSpeakMappings;
  *(inited + 128) = 52;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = &outlined read-only object #3 of one-time initialization function for leetSpeakMappings;
  *(inited + 152) = 53;
  *(inited + 160) = 0xE100000000000000;
  *(inited + 168) = &outlined read-only object #4 of one-time initialization function for leetSpeakMappings;
  *(inited + 176) = 54;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = &outlined read-only object #5 of one-time initialization function for leetSpeakMappings;
  *(inited + 200) = 55;
  *(inited + 208) = 0xE100000000000000;
  *(inited + 216) = &outlined read-only object #6 of one-time initialization function for leetSpeakMappings;
  *(inited + 224) = 56;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = &outlined read-only object #7 of one-time initialization function for leetSpeakMappings;
  *(inited + 248) = 57;
  *(inited + 256) = 0xE100000000000000;
  *(inited + 264) = &outlined read-only object #8 of one-time initialization function for leetSpeakMappings;
  *(inited + 272) = 64;
  *(inited + 280) = 0xE100000000000000;
  *(inited + 288) = &outlined read-only object #9 of one-time initialization function for leetSpeakMappings;
  *(inited + 296) = 36;
  *(inited + 304) = 0xE100000000000000;
  *(inited + 312) = &outlined read-only object #10 of one-time initialization function for leetSpeakMappings;
  *(inited + 320) = 33;
  *(inited + 328) = 0xE100000000000000;
  *(inited + 336) = &outlined read-only object #11 of one-time initialization function for leetSpeakMappings;
  *(inited + 344) = 43;
  *(inited + 352) = 0xE100000000000000;
  *(inited + 360) = &outlined read-only object #12 of one-time initialization function for leetSpeakMappings;
  *(inited + 368) = 124;
  *(inited + 376) = 0xE100000000000000;
  *(inited + 384) = &outlined read-only object #13 of one-time initialization function for leetSpeakMappings;
  *(inited + 392) = 40;
  *(inited + 400) = 0xE100000000000000;
  *(inited + 408) = &outlined read-only object #14 of one-time initialization function for leetSpeakMappings;
  *(inited + 416) = 41;
  *(inited + 424) = 0xE100000000000000;
  *(inited + 432) = &outlined read-only object #15 of one-time initialization function for leetSpeakMappings;
  *(inited + 440) = 43458;
  *(inited + 448) = 0xA200000000000000;
  *(inited + 456) = &outlined read-only object #16 of one-time initialization function for leetSpeakMappings;
  *(inited + 464) = 44738;
  *(inited + 472) = 0xA200000000000000;
  *(inited + 480) = &outlined read-only object #17 of one-time initialization function for leetSpeakMappings;
  *(inited + 488) = 42434;
  *(inited + 496) = 0xA200000000000000;
  *(inited + 504) = &outlined read-only object #18 of one-time initialization function for leetSpeakMappings;
  *(inited + 512) = 9537762;
  *(inited + 520) = 0xA300000000000000;
  *(inited + 528) = &outlined read-only object #19 of one-time initialization function for leetSpeakMappings;
  *(inited + 536) = 9864418;
  *(inited + 544) = 0xA300000000000000;
  *(inited + 552) = &outlined read-only object #20 of one-time initialization function for leetSpeakMappings;
  *(inited + 560) = 42691;
  *(inited + 568) = 0xA200000000000000;
  *(inited + 576) = &outlined read-only object #21 of one-time initialization function for leetSpeakMappings;
  *(inited + 584) = 34499;
  *(inited + 592) = 0xA200000000000000;
  *(inited + 600) = &outlined read-only object #22 of one-time initialization function for leetSpeakMappings;
  *(inited + 608) = 40899;
  *(inited + 616) = 0xA200000000000000;
  *(inited + 624) = &outlined read-only object #23 of one-time initialization function for leetSpeakMappings;
  *(inited + 632) = 47299;
  *(inited + 640) = 0xA200000000000000;
  *(inited + 648) = &outlined read-only object #24 of one-time initialization function for leetSpeakMappings;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySSGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSJ_SaySSGtMd, &_sSJ_SaySSGtMR);
  result = swift_arrayDestroy();
  static SynonymGenerator.leetSpeakMappings = v2;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
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

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized static SynonymGenerator.leetDecode(leetText:)(uint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static SynonymGenerator.leetDecode(leetText:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(v2 + 48) + v11);
    v13 = (*(v2 + 56) + v11);
    v16 = *v12;
    v17 = v12[1];
    v14 = *v13;
    v15 = v13[1];
    lazy protocol witness table accessor for type String and conformance String();

    a1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return a1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static SynonymGenerator.decodeLeetSpeak(_:)()
{

  v3 = String.Iterator.next()();
  countAndFlagsBits = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {
LABEL_12:

    return 0;
  }

  object = v3.value._object;
  while (1)
  {
    if (one-time initialization token for leetSpeakMappings != -1)
    {
      v14 = countAndFlagsBits;
      swift_once();
      countAndFlagsBits = v14;
    }

    v6 = static SynonymGenerator.leetSpeakMappings;
    if (*(static SynonymGenerator.leetSpeakMappings + 2))
    {
      v7 = countAndFlagsBits;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
      countAndFlagsBits = v7;
      if (v9)
      {
        v10 = *(v6[7] + 8 * v8);
        if (v10[2])
        {
          break;
        }
      }
    }

    MEMORY[0x223DDF6C0](countAndFlagsBits, object, v1, v2);
LABEL_4:

    v5 = String.Iterator.next()();
    countAndFlagsBits = v5.value._countAndFlagsBits;
    object = v5.value._object;
    if (!v5.value._object)
    {
      goto LABEL_12;
    }
  }

  if (v10[2])
  {
    v12 = v10[4];
    v13 = v10[5];

    MEMORY[0x223DDF6A0](v12, v13);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t specialized static SynonymGenerator.generateLeetSpeakVariants(_:)()
{
  v67 = MEMORY[0x277D84FA0];
  v0 = String.lowercased()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySSGTt0g5Tf4g_n(outlined read-only object #14 of static SynonymGenerator.generateLeetSpeakVariants(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSJ_SaySSGtMd, &_sSJ_SaySSGtMR);
  swift_arrayDestroy();
  result = v1;
  v3 = 0;
  v54 = v1 + 8;
  v55 = v1;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v1[8];
  v52 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_10:
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v9 = v8 | (v3 << 6);
    v10 = *(*(result + 56) + 8 * v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (*(result + 48) + 16 * v9);
      v58 = *v12;
      v60 = v12[1];

      lazy protocol witness table accessor for type String and conformance String();
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v62 = v0;
        v65 = v58;
        v66 = v60;
        v63 = v14;
        v64 = v15;

        v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v18 = v17;
        if (v16 == v0._countAndFlagsBits && v17 == v0._object)
        {
        }

        else
        {
          v20 = v16;
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            specialized Set._Variant.insert(_:)(&v62._countAndFlagsBits, v20, v18);
          }
        }

        v13 += 2;
        --v11;
      }

      while (v11);

      result = v55;
    }
  }

  while (1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v7 >= v52)
    {

      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #15 of static SynonymGenerator.generateLeetSpeakVariants(_:));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
      result = swift_arrayDestroy();
      v23 = 0;
      v51 = v22 + 64;
      v53 = v22;
      v24 = 1 << *(v22 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v22 + 64);
      v50 = (v24 + 63) >> 6;
      while (v26)
      {
LABEL_29:
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v29 = v28 | (v23 << 6);
        v30 = *(*(v22 + 56) + 8 * v29);
        v31 = *(v30 + 16);
        if (v31)
        {
          v56 = v26;
          v57 = v23;
          v32 = (*(v22 + 48) + 16 * v29);
          v59 = *v32;
          v61 = v32[1];

          lazy protocol witness table accessor for type String and conformance String();
          v33 = (v30 + 40);
          do
          {
            v34 = *(v33 - 1);
            v35 = *v33;
            v62 = v0;
            v65 = v59;
            v66 = v61;
            v63 = v34;
            v64 = v35;

            v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v38 = v37;
            if (v36 == v0._countAndFlagsBits && v37 == v0._object)
            {
            }

            else
            {
              v40 = v36;
              v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v41 & 1) == 0)
              {
                specialized Set._Variant.insert(_:)(&v62._countAndFlagsBits, v40, v38);
              }
            }

            v62 = v0;
            v65 = v34;
            v66 = v35;
            v63 = v59;
            v64 = v61;

            v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v44 = v43;

            if (v42 == v0._countAndFlagsBits && v44 == v0._object)
            {
            }

            else
            {
              v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v45 & 1) == 0)
              {
                specialized Set._Variant.insert(_:)(&v62._countAndFlagsBits, v42, v44);
              }
            }

            v33 += 2;
            --v31;
          }

          while (v31);

          v22 = v53;
          v26 = v56;
          v23 = v57;
        }
      }

      while (1)
      {
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_51;
        }

        if (v27 >= v50)
        {
          break;
        }

        v26 = *(v51 + 8 * v27);
        ++v23;
        if (v26)
        {
          v23 = v27;
          goto LABEL_29;
        }
      }

      v46 = v67;
      v47 = *(v67 + 16);
      if (v47)
      {
        v48 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v67 + 16), 0);
        v49 = specialized Sequence._copySequenceContents(initializing:)(&v62, v48 + 4, v47, v46);
        outlined consume of Set<String>.Iterator._Variant();
        if (v49 != v47)
        {
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
LABEL_48:

        return MEMORY[0x277D84F90];
      }

      return v48;
    }

    v6 = v54[v7];
    ++v3;
    if (v6)
    {
      v3 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *specialized static SynonymGenerator.generatePhoneticSynonyms(_:)()
{
  v27 = MEMORY[0x277D84FA0];
  v0 = String.lowercased()();
  object = v0._object;
  v2 = &unk_283697F50;
  v3 = 9;
  lazy protocol witness table accessor for type String and conformance String();
  do
  {
    v4 = *(v2 - 3);
    v5 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    countAndFlagsBits = v0._countAndFlagsBits;
    v22 = object;
    v20 = v4;
    v25 = v4;
    v26 = v5;
    v23 = v6;
    v24 = v7;

    v8 = v0._object;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v9;
    if ((v10 != v0._countAndFlagsBits || v9 != v0._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      specialized Set._Variant.insert(_:)(&countAndFlagsBits, v10, v11);
      v8 = v0._object;
    }

    countAndFlagsBits = v0._countAndFlagsBits;
    v22 = v8;
    v25 = v6;
    v26 = v7;
    v23 = v20;
    v24 = v5;
    object = v0._object;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    if ((v12 != v0._countAndFlagsBits || v14 != v0._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      specialized Set._Variant.insert(_:)(&countAndFlagsBits, v12, v14);
      object = v0._object;
    }

    v2 += 4;
    --v3;
  }

  while (v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  v15 = v27;
  v16 = *(v27 + 16);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v27 + 16), 0);
  v18 = specialized Sequence._copySequenceContents(initializing:)(&countAndFlagsBits, v17 + 4, v16, v15);
  outlined consume of Set<String>.Iterator._Variant();
  if (v18 != v16)
  {
    __break(1u);
LABEL_15:

    return MEMORY[0x277D84F90];
  }

  return v17;
}

char *specialized static SynonymGenerator.generateSynonyms(for:)(char *a1, char *a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96[0] = a1;
  v96[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.trimmingCharacters(in:)();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  v90 = v10;
  v95 = String.lowercased()();
  v97 = MEMORY[0x277D84FA0];
  if (one-time initialization token for numberToWord != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v13 = static SynonymGenerator.numberToWord;
    if (*(static SynonymGenerator.numberToWord + 2))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v12);
      if (v15)
      {
        v16 = v13[7];
        v17 = *(v16 + 8 * v14);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v16 + 8 * v14);

          v20 = (v17 + 40);
          do
          {
            v21 = *(v20 - 1);
            v22 = *v20;
            v23 = String.lowercased()();
            specialized Set._Variant.insert(_:)(v96, v23._countAndFlagsBits, v23._object);

            v20 += 2;
            --v18;
          }

          while (v18);
        }
      }
    }

    if (one-time initialization token for wordToNumber != -1)
    {
      swift_once();
    }

    v24 = static SynonymGenerator.wordToNumber;
    if (*(static SynonymGenerator.wordToNumber + 2))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v95._countAndFlagsBits, v95._object);
      if (v26)
      {
        v27 = v24[7];
        v28 = *(v27 + 8 * v25);
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = *(v27 + 8 * v25);

          v31 = (v28 + 40);
          do
          {
            v32 = *(v31 - 1);
            v33 = *v31;
            v34 = String.lowercased()();
            specialized Set._Variant.insert(_:)(v96, v34._countAndFlagsBits, v34._object);

            v31 += 2;
            --v29;
          }

          while (v29);
        }
      }
    }

    if (one-time initialization token for commonAbbreviations != -1)
    {
      swift_once();
    }

    v35 = static SynonymGenerator.commonAbbreviations;
    if (*(static SynonymGenerator.commonAbbreviations + 2))
    {
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v95._countAndFlagsBits, v95._object);
      if (v37)
      {
        v38 = v35[7];
        v39 = *(v38 + 8 * v36);
        v40 = *(v39 + 16);
        if (v40)
        {
          v41 = *(v38 + 8 * v36);

          v42 = (v39 + 40);
          do
          {
            v43 = *(v42 - 1);
            v44 = *v42;
            v45 = String.lowercased()();
            specialized Set._Variant.insert(_:)(v96, v45._countAndFlagsBits, v45._object);

            v42 += 2;
            --v40;
          }

          while (v40);
        }
      }
    }

    v89[1] = v12;
    v46 = (v35 + 8);
    v47 = 1 << *(v35 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v12 = v48 & v35[8];
    v49 = (v47 + 63) >> 6;

    v50 = 0;
    v91 = (v35 + 8);
    v92 = v35;
LABEL_29:
    if (!v12)
    {
      break;
    }

    v51 = v50;
LABEL_34:
    v52 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v53 = v52 | (v51 << 6);
    v54 = v35[7];
    v55 = (v35[6] + 16 * v53);
    v56 = v55[1];
    v93 = *v55;
    v94 = v56;
    v57 = *(v54 + 8 * v53);
    v58 = *(v57 + 16);

    v59 = 0;
    v60 = (v57 + 40);
    v61 = (v57 + 40);
    while (1)
    {
      if (v58 == v59)
      {

        goto LABEL_28;
      }

      if (v59 >= *(v57 + 16))
      {
        break;
      }

      v62 = *(v61 - 1);
      v63 = *v61;
      v64 = String.lowercased()();
      if (v64._countAndFlagsBits == v95._countAndFlagsBits && v64._object == v95._object)
      {

LABEL_44:
        v67 = String.lowercased()();

        specialized Set._Variant.insert(_:)(v96, v67._countAndFlagsBits, v67._object);

        do
        {
          v68 = *(v60 - 1);
          v69 = *v60;
          v70 = String.lowercased()();
          specialized Set._Variant.insert(_:)(v96, v70._countAndFlagsBits, v70._object);

          v60 += 2;
          --v58;
        }

        while (v58);
LABEL_28:

        v50 = v51;
        v46 = v91;
        v35 = v92;
        goto LABEL_29;
      }

      ++v59;
      v61 += 2;
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v66)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_64;
    }

    if (v51 >= v49)
    {
      break;
    }

    v12 = *&v46[8 * v51];
    ++v50;
    if (v12)
    {
      goto LABEL_34;
    }
  }

  specialized static SynonymGenerator.decodeLeetSpeak(_:)();
  v71 = String.lowercased()();

  if ((v71._countAndFlagsBits != v95._countAndFlagsBits || v71._object != v95._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    specialized Set._Variant.insert(_:)(v96, v71._countAndFlagsBits, v71._object);
  }

  v72 = specialized static SynonymGenerator.generateLeetSpeakVariants(_:)();
  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = (v72 + 40);
    do
    {
      v75 = *(v74 - 1);
      v76 = *v74;
      v77 = String.lowercased()();
      specialized Set._Variant.insert(_:)(v96, v77._countAndFlagsBits, v77._object);

      v74 += 2;
      --v73;
    }

    while (v73);
  }

  v78 = specialized static SynonymGenerator.generatePhoneticSynonyms(_:)();

  v79 = v78[2];
  if (v79)
  {
    v80 = v78 + 5;
    do
    {
      v81 = *(v80 - 1);
      v82 = *v80;
      v83 = String.lowercased()();
      specialized Set._Variant.insert(_:)(v96, v83._countAndFlagsBits, v83._object);

      v80 += 2;
      --v79;
    }

    while (v79);
  }

  specialized Set._Variant.remove(_:)(v95._countAndFlagsBits, v95._object);

  v84 = v97;
  v85 = *(v97 + 16);
  if (!v85)
  {
    goto LABEL_61;
  }

  v86 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v97 + 16), 0);
  v87 = specialized Sequence._copySequenceContents(initializing:)(v96, v86 + 4, v85, v84);
  outlined consume of Set<String>.Iterator._Variant();
  if (v87 != v85)
  {
    __break(1u);
LABEL_61:

    v86 = MEMORY[0x277D84F90];
  }

  v96[0] = v86;

  specialized MutableCollection<>.sort(by:)(v96);

  return v96[0];
}

Swift::tuple_hasAddress_Bool_hasPhoneNumber_Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.contactsAddressAndPhoneFlags(id:)(Swift::String id)
{
  v1.value._rawValue = 0;
  v3 = CNContactStore.contactsAddressAndPhoneFlags(id:contactFetchKeys:)(id, v1);
  hasPhoneNumber = v3.hasPhoneNumber;
  hasAddress = v3.hasAddress;
  result.hasPhoneNumber = hasPhoneNumber;
  result.hasAddress = hasAddress;
  return result;
}

Swift::tuple_hasAddress_Bool_hasPhoneNumber_Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.contactsAddressAndPhoneFlags(id:contactFetchKeys:)(Swift::String id, Swift::OpaquePointer_optional contactFetchKeys)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v28[1] = *MEMORY[0x277D85DE8];
  if (contactFetchKeys.value._rawValue)
  {
    rawValue = contactFetchKeys.value._rawValue;
    if (!(contactFetchKeys.value._rawValue >> 62))
    {
LABEL_3:
      v6 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    rawValue = swift_allocObject();
    *(rawValue + 16) = xmmword_2234D0FF0;
    v19 = *MEMORY[0x277CBD0C8];
    v20 = *MEMORY[0x277CBD098];
    *(rawValue + 32) = *MEMORY[0x277CBD0C8];
    *(rawValue + 40) = v20;
    v21 = v19;
    v22 = v20;

    if (!(rawValue >> 62))
    {
      goto LABEL_3;
    }
  }

  v6 = __CocoaSet.count.getter();
LABEL_4:
  swift_bridgeObjectRetain_n();

  if (v6)
  {
    v7 = MEMORY[0x223DDF550](countAndFlagsBits, object);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28[0] = 0;
    v9 = [v2 unifiedContactWithIdentifier:v7 keysToFetch:isa error:v28];

    if (v9)
    {
      v10 = v28[0];
      v11 = [v9 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = [v9 phoneNumbers];
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v15 >> 62)
      {
        __CocoaSet.count.getter();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v13 != 0;
    }

    else
    {
      v23 = v28[0];
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v18 = 0;
    }
  }

  else
  {

    v18 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  v26 = v18;
  result.hasPhoneNumber = v17;
  result.hasAddress = v26;
  return result;
}

uint64_t UsoTask.isRecipeTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v4)
  {
    goto LABEL_19;
  }

  outlined init with copy of Any?(v3, v2);
  type metadata accessor for UsoTask_start_common_Recipe();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_start_common_RecipeStep();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_pause_common_Recipe();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_pause_common_RecipeStep();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_request_common_Recipe();
          if (!swift_dynamicCast())
          {
            type metadata accessor for UsoTask_request_common_RecipeStep();
            if (!swift_dynamicCast())
            {
              type metadata accessor for UsoTask_resume_common_Recipe();
              if (!swift_dynamicCast())
              {
                type metadata accessor for UsoTask_resume_common_RecipeStep();
                if (!swift_dynamicCast())
                {
                  type metadata accessor for UsoTask_seekTo_common_RecipeStep();
                  if (!swift_dynamicCast())
                  {
                    type metadata accessor for UsoTask_skipBackward_common_RecipeStep();
                    if (!swift_dynamicCast())
                    {
                      type metadata accessor for UsoTask_skipForward_common_RecipeStep();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for UsoTask_stop_common_Recipe();
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for UsoTask_stop_common_RecipeStep();
                          if (!swift_dynamicCast())
                          {
                            type metadata accessor for UsoTask_summarise_common_Recipe();
                            if (!swift_dynamicCast())
                            {
                              type metadata accessor for UsoTask_unrequest_common_Recipe();
                              if (!swift_dynamicCast())
                              {
                                __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_19:
                                v0 = 0;
                                goto LABEL_20;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  v0 = 1;
LABEL_20:
  outlined destroy of Any?(v3);
  return v0;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Siri_Nlu_External_UserParse.firstRecipeTask()()
{
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x223DDFF80](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v1;
          }

LABEL_8:
          if (UsoTask.isRecipeTask.getter())
          {
            goto LABEL_14;
          }

          ++v4;
          if (v5 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }

      v1 = *(v2 + 8 * v4 + 32);

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return v1;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v30 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v29 = *(v5 + 72);
  while (1)
  {
    v8 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v2)
    {

      return v6;
    }

    v9 = v8;
    v10 = v8 >> 62;
    v11 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_39;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v12)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v14 = v6 & 0xFFFFFFFFFFFFFF8, v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v12)
      {
        __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v10)
    {
      v19 = v14;
      result = __CocoaSet.count.getter();
      v14 = v19;
      v18 = result;
      if (result)
      {
LABEL_22:
        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_41;
        }

        v33 = 0;
        v20 = v14 + 8 * v16 + 32;
        v28 = v14;
        if (v10)
        {
          if (v18 < 1)
          {
            goto LABEL_43;
          }

          lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v9);
            v24 = *v23;

            (v22)(v32, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = v33;
        if (v11 >= 1)
        {
          v25 = *(v28 + 16);
          v26 = __OFADD__(v25, v11);
          v27 = v25 + v11;
          if (v26)
          {
            goto LABEL_42;
          }

          *(v28 + 16) = v27;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    if (v11 > 0)
    {
      goto LABEL_40;
    }

LABEL_4:
    if (++v4 == v31)
    {
      return v6;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result + v11;
  if (!__OFADD__(result, v11))
  {
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for Siri_Nlu_External_UserParse() - 8);
  v30 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v29 = *(v5 + 72);
  while (1)
  {
    v8 = Siri_Nlu_External_UserParse.playRadioStationRelevantTasks()();
    if (v2)
    {

      return v6;
    }

    v9 = v8;
    v10 = v8 >> 62;
    v11 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_39;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v12)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v14 = v6 & 0xFFFFFFFFFFFFFF8, v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v12)
      {
        __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v10)
    {
      v19 = v14;
      result = __CocoaSet.count.getter();
      v14 = v19;
      v18 = result;
      if (result)
      {
LABEL_22:
        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_41;
        }

        v33 = 0;
        v20 = v14 + 8 * v16 + 32;
        v28 = v14;
        if (v10)
        {
          if (v18 < 1)
          {
            goto LABEL_43;
          }

          lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v9);
            v24 = *v23;

            (v22)(v32, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = v33;
        if (v11 >= 1)
        {
          v25 = *(v28 + 16);
          v26 = __OFADD__(v25, v11);
          v27 = v25 + v11;
          if (v26)
          {
            goto LABEL_42;
          }

          *(v28 + 16) = v27;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    if (v11 > 0)
    {
      goto LABEL_40;
    }

LABEL_4:
    if (++v4 == v31)
    {
      return v6;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result + v11;
  if (!__OFADD__(result, v11))
  {
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for Siri_Nlu_External_UserParse() - 8);
  v30 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v29 = *(v5 + 72);
  while (1)
  {
    v8 = Siri_Nlu_External_UserParse.resumeMediaItemRelevantTasks()();
    if (v2)
    {

      return v6;
    }

    v9 = v8;
    v10 = v8 >> 62;
    v11 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_39;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v12)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v14 = v6 & 0xFFFFFFFFFFFFFF8, v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v12)
      {
        __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v10)
    {
      v19 = v14;
      result = __CocoaSet.count.getter();
      v14 = v19;
      v18 = result;
      if (result)
      {
LABEL_22:
        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_41;
        }

        v33 = 0;
        v20 = v14 + 8 * v16 + 32;
        v28 = v14;
        if (v10)
        {
          if (v18 < 1)
          {
            goto LABEL_43;
          }

          lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v9);
            v24 = *v23;

            (v22)(v32, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = v33;
        if (v11 >= 1)
        {
          v25 = *(v28 + 16);
          v26 = __OFADD__(v25, v11);
          v27 = v25 + v11;
          if (v26)
          {
            goto LABEL_42;
          }

          *(v28 + 16) = v27;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    if (v11 > 0)
    {
      goto LABEL_40;
    }

LABEL_4:
    if (++v4 == v31)
    {
      return v6;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result + v11;
  if (!__OFADD__(result, v11))
  {
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

{
  return specialized Sequence.flatMap<A>(_:)(a1);
}

{
  v2 = v1;
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v27 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v26 = *(v5 + 72);
  while (1)
  {
    v8 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v2)
    {

      return v6;
    }

    v9 = v8;
    v10 = v8 >> 62;
    v11 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_39;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v12)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v14 = v6 & 0xFFFFFFFFFFFFFF8, v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v12)
      {
        __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
    }

    v30 = v11;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v10)
    {
      result = __CocoaSet.count.getter();
      v18 = result;
      if (result)
      {
LABEL_22:
        if (((v17 >> 1) - v16) < v30)
        {
          goto LABEL_41;
        }

        if (v10)
        {
          if (v18 < 1)
          {
            goto LABEL_43;
          }

          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoTask] and conformance [A], &_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v20 = specialized protocol witness for Collection.subscript.read in conformance [A](v29, i, v9);
            v22 = *v21;

            (v20)(v29, 0);
            *(v14 + 8 * v16 + 32 + 8 * i) = v22;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v30 >= 1)
        {
          v23 = *(v14 + 16);
          v24 = __OFADD__(v23, v30);
          v25 = v23 + v30;
          if (v24)
          {
            goto LABEL_42;
          }

          *(v14 + 16) = v25;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    if (v30 > 0)
    {
      goto LABEL_40;
    }

LABEL_4:
    if (++v4 == v28)
    {
      return v6;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result + v11;
  if (!__OFADD__(result, v11))
  {
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UsoTask] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoTask] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTask] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoTask] and conformance [A]);
  }

  return result;
}

void *one-time initialization function for shared()
{
  type metadata accessor for PommesSearch();
  v0 = PommesSearch.__allocating_init()();
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static PommesBridgeInstrumentationUtil.sharedInstance;

  v2 = default argument 2 of PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)();
  type metadata accessor for PommesSearchService();
  v3 = swift_allocObject();
  result = PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)(v0, v1, v2);
  static PommesSearchService.shared = v3;
  return result;
}

uint64_t PommesSearchService.__allocating_init(pommesSearch:instrumentationUtil:searchToolHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)(a1, a2, a3);
  return v6;
}

uint64_t static PommesSearchService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for defaultSessionId()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static PommesSearchService.defaultSessionId);
  __swift_project_value_buffer(v0, static PommesSearchService.defaultSessionId);
  return UUID.init(uuidString:)();
}

uint64_t PommesSearchService.defaultSessionId.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultSessionId != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return __swift_project_value_buffer(v0, static PommesSearchService.defaultSessionId);
}

uint64_t static PommesSearchService.defaultSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultSessionId != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = __swift_project_value_buffer(v2, static PommesSearchService.defaultSessionId);
  return outlined init with copy of MediaUserStateCenter?(v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void *PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = one-time initialization token for pommes;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2232BB000, v7, v8, "PommesSearchService init successfully", v9, 2u);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  return v4;
}

uint64_t PommesSearchService.searchInfiEntity(request:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = PommesSearchService.searchInfiEntity(request:);

  return v8(a1, 2);
}

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

uint64_t @objc closure #1 in PommesSearchService.searchInfiEntity(request:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = *(*a3 + 128);
  v7 = a1;

  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = @objc closure #1 in PommesSearchService.searchInfiEntity(request:);

  return v11(v7, 2);
}

uint64_t @objc closure #1 in PommesSearchService.searchInfiEntity(request:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v3[10] = v6;
  v3[11] = *(v6 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for ParseStateXPC(0);
  v3[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = type metadata accessor for PommesCandidateId();
  v3[16] = v9;
  v10 = *(v9 - 8);
  v3[17] = v10;
  v3[18] = *(v10 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

uint64_t PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "PommesSearchService entering searchInfiEntity...", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[5];

  outlined init with copy of ParseStateXPC(v7 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState, v6, type metadata accessor for ParseStateXPC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v6;
  v9 = v6[1];
  v11 = v0[20];
  v12 = v0[16];
  v13 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    v14 = v0[15];
    v15 = v6[2];
    v16 = *(v14 + 24);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR) + 64);
    *v11 = v10;
    v11[1] = v9;
    v11[2] = v15;
    v11[3] = v16;
    (*(v13 + 104))(v11, *MEMORY[0x277D56620], v12);
    outlined destroy of MediaUserStateCenter?(v14 + v17, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {
    v18 = v6[2];

    *v11 = v10;
    v11[1] = v9;
    (*(v13 + 104))(v11, *MEMORY[0x277D56618], v12);
  }

  v19 = v0[17];
  v46 = v0[18];
  v41 = v0[16];
  v42 = v0[19];
  v21 = v0[12];
  v20 = v0[13];
  v38 = v21;
  v39 = v0[20];
  v43 = v0[11];
  v22 = v0[9];
  v40 = v0[10];
  v23 = v0[7];
  v47 = v0[6];
  v24 = v0[5];
  v25 = v24 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId;
  v26 = *(v24 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId);
  v0[22] = v26;
  v27 = *(v25 + 8);
  v0[23] = v27;
  v28 = v23[3];
  v0[24] = v28;
  (*(*v28 + 128))();
  (*(*v23 + 152))(v24);
  v45 = type metadata accessor for TaskPriority();
  v44 = *(*(v45 - 8) + 56);
  v44(v22, 1, 1, v45);
  outlined init with copy of ParseStateXPC(v20, v21, type metadata accessor for PommesSearchRequest);
  (*(v19 + 16))(v42, v39, v41);
  v29 = (*(v40 + 80) + 56) & ~*(v40 + 80);
  v30 = (v43 + *(v19 + 80) + v29) & ~*(v19 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v23;
  *(v31 + 5) = v26;
  *(v31 + 6) = v27;
  outlined init with take of PommesSearchRequest(v38, &v31[v29]);
  (*(v19 + 32))(&v31[v30], v42, v41);

  v32 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCs6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pG_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), v31);
  v0[25] = v32;
  v44(v22, 1, 1, v45);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v47;
  v33[5] = v32;

  v0[26] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5Tm(0, 0, v22, &async function pointer to partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), v33);
  v34 = *(MEMORY[0x277D857E0] + 4);
  v35 = swift_task_alloc();
  v0[27] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  *v35 = v0;
  v35[1] = PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return MEMORY[0x282200460](v0 + 2, v32, v36);
}

{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  isCancelled = swift_task_isCancelled();
  v5 = *(v0 + 208);
  if (isCancelled)
  {
    v6 = *(v0 + 200);
    v48 = *(v0 + 160);
    v7 = v2;
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 104);
    v11 = type metadata accessor for PommesError();
    lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesError and conformance PommesError, MEMORY[0x277D5CEF8]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D5CEE8], v11);
    swift_willThrow();

    outlined consume of Result<PommesResponse, Error>(v7);

    outlined destroy of PommesSearchRequest(v10);
    (*(v8 + 8))(v48, v9);
LABEL_7:
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v33 = *(v0 + 120);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v37 = *(v0 + 64);
    v36 = *(v0 + 72);
    $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving searchInfiEntity...");

    v38 = *(v0 + 8);

    return v38();
  }

  v13 = *(v0 + 168);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x223DDF9A0](v5, MEMORY[0x277D84F78] + 8, v14, MEMORY[0x277D84950]);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2232BB000, v15, v16, "PommesSearchService search has completed, cancel the timeout task", v17, 2u);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = *(v0 + 176);
  v21 = *(v0 + 160);
  v22 = *(v0 + 64);

  outlined destroy of MediaUserStateCenter?(v22, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v23 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(v0 + 160);
  v26 = v2;
  if (v3)
  {
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 104);
    *(v0 + 32) = v26;
    v30 = v26;
    swift_willThrowTypedImpl();

    outlined consume of Result<PommesResponse, Error>(v26);

    outlined destroy of PommesSearchRequest(v29);
    (*(v27 + 8))(v25, v28);
    goto LABEL_7;
  }

  v40 = *(v0 + 152);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);
  v43 = *(v0 + 120);
  v44 = *(v0 + 104);
  v46 = *(v0 + 96);
  v47 = *(v0 + 72);
  v49 = *(v0 + 64);

  outlined destroy of PommesSearchRequest(v44);
  (*(v41 + 8))(v25, v42);
  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving searchInfiEntity...");

  v45 = *(v0 + 8);

  return v45(v26);
}

uint64_t closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  return MEMORY[0x2822009F8](closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

uint64_t closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  *v6 = v0;
  v6[1] = closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000027, 0x80000002234DAAC0, partial apply for closure #1 in closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), v3, v7);
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2232BB000, v4, v5, "PommesSearchService search has started, check if search task is canceled", v6, 2u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(**(*(v0 + 40) + 24) + 144))(3, *(v0 + 72), *(v0 + 48), *(v0 + 56), *(v0 + 48), *(v0 + 56));
    v7 = type metadata accessor for PommesError();
    lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesError and conformance PommesError, MEMORY[0x277D5CEF8]);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D5CEE8], v7);
    outlined consume of Result<PommesResponse, Error>(v1);
    v2 = 1;
    v1 = v8;
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "PommesSearchService search has completed, and search task hasn't been canceled, returning the search result", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }
  }

  v13 = *(v0 + 32);
  *v13 = v1;
  *(v13 + 8) = v2;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v26 - v19;
  v21 = *(a2 + 16);
  (*(*v21 + 336))(a3, a4, 0);
  (*(v11 + 16))(v15, a1, v10);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + v22, v15, v10);
  v24 = swift_allocObject();
  *(v24 + 16) = _s21SiriInformationSearch06PommesC7ServiceC16searchInfiEntity7request12timeoutInSecAA0D8ResponseCAA0dC10RequestXPCC_s6UInt64VtYaKFs6ResultOyAHs5Error_pGyYacfU_yScCyAPs5NeverOGXEfU_yAPnYucAScfu_yAPnYucfu0_TA;
  *(v24 + 24) = v23;
  (*(*v21 + 272))(a5, _ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGIegxT_AGIegg_TRTA, v24);

  return outlined destroy of MediaUserStateCenter?(v20, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  outlined init with copy of MediaUserStateCenter?(a3, v28 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCs6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  outlined init with copy of MediaUserStateCenter?(a3, v28 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

uint64_t closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0x3B9ACA00uLL))
  {
    v4 = 1000000000 * v3;
    v5 = *(MEMORY[0x277D857E8] + 4);
    v6 = swift_task_alloc();
    *(v1 + 32) = v6;
    *v6 = v1;
    v6[1] = closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
  }
}

{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  MEMORY[0x223DDF9A0](v1, v2, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2232BB000, v4, v5, "PommesSearchService search has timed out, cancel the search task", v6, 2u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  outlined init with copy of MediaUserStateCenter?(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = String.utf8CString.getter() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

void PommesSearchService.invalidate(cachedResponse:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2232BB000, v5, v6, "PommesSearchService invalidating cached response...", v7, 2u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  v8 = *(**(*(v2 + 16) + 40) + 248);

  v8(a1, 2);

  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving invalidating cached response...");
}

uint64_t PommesSearchService.searchToolGlobalSearch(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](PommesSearchService.searchToolGlobalSearch(request:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = PommesSearchService.searchToolGlobalSearch(request:);
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = PommesSearchService.searchToolGlobalSearch(request:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t PommesSearchService.searchToolGlobalSearch(request:)()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "PommesSearchService entering search tool global search...", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(**(v5 + 32) + 136);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = PommesSearchService.searchToolGlobalSearch(request:);
  v9 = v0[2];

  return v11(v9);
}

{
  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving search tool global search...");
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

{
  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving search tool global search...");
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

void $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(const char *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v3, a1, v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }
}

uint64_t @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in PommesSearchService.searchInfiEntity(request:);

  return PommesSearchService.searchToolGlobalSearch(request:)(v5);
}

uint64_t PommesSearchService.buildPommesSearchRequest(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v361 = a2;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = *(*(v325 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v325, v4);
  v334 = &v320 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v341 = &v320 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v365 = &v320 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v324 = &v320 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v340 = &v320 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v362 = &v320 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v335 = &v320 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v337 = &v320 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v331 = &v320 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v333 = &v320 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v336 = &v320 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v332 = &v320 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v330 = &v320 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v329 = &v320 - v46;
  v366 = type metadata accessor for PommesSearchRequest(0);
  v47 = *(*(v366 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v366, v48);
  v360 = &v320 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v357 = &v320 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v54 = *(*(v53 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v53 - 8, v55);
  v359 = &v320 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56, v58);
  v356 = &v320 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v61 = *(*(v60 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v60 - 8, v62);
  v358 = &v320 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63, v65);
  v364 = &v320 - v66;
  v328 = type metadata accessor for PommesCandidateId();
  v327 = *(v328 - 8);
  v67 = *(v327 + 64);
  v69 = MEMORY[0x28223BE20](v328, v68);
  v323 = (&v320 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v69, v71);
  v322 = (&v320 - v72);
  v363 = type metadata accessor for ParseStateXPC(0);
  v73 = *(*(v363 - 8) + 64);
  v75 = MEMORY[0x28223BE20](v363, v74);
  v321 = (&v320 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = MEMORY[0x28223BE20](v75, v77);
  v320 = (&v320 - v79);
  MEMORY[0x28223BE20](v78, v80);
  v353 = &v320 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8, v84);
  v355 = &v320 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86, v88);
  v90 = &v320 - v89;
  v91 = type metadata accessor for UUID();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91, v94);
  v367 = &v320 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PommesContext.Source();
  v97 = *(v96 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96, v99);
  v101 = &v320 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PommesContext();
  v368 = *(v102 - 8);
  v369 = v102;
  v103 = *(v368 + 64);
  v105 = MEMORY[0x28223BE20](v102, v104);
  v339 = &v320 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x28223BE20](v105, v107);
  v338 = &v320 - v109;
  MEMORY[0x28223BE20](v108, v110);
  v112 = &v320 - v111;
  (*(v97 + 104))(v101, *MEMORY[0x277D56680], v96);
  v113 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  v114 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain + 8];
  v115 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking];

  v370 = v112;
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  v116 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId + 8];
  v351 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  v117 = one-time initialization token for defaultSessionId;
  v352 = v116;

  if (v117 != -1)
  {
    swift_once();
  }

  v118 = __swift_project_value_buffer(v86, static PommesSearchService.defaultSessionId);
  outlined init with copy of MediaUserStateCenter?(v118, v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v119 = *(v92 + 48);
  v120 = v119(v90, 1, v91);
  v354 = v92;
  v350 = v91;
  if (v120 == 1)
  {
    v121 = v367;
    UUID.init()();
    if (v119(v90, 1, v91) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v121 = v367;
    (*(v92 + 32))(v367, v90, v91);
  }

  v122 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId + 8];
  v349 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  v123 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource + 8];
  v348 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  v124 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination + 8];
  v346 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  v347 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree];
  v345 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled];
  v344 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled];
  v343 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest];
  v126 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  v125 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode + 8];
  v342 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup];
  v127 = type metadata accessor for DateInterval();
  v128 = v355;
  (*(*(v127 - 8) + 56))(v355, 1, 1, v127);
  v129 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions];
  v130 = type metadata accessor for PommesRequestContext();
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  v326 = v130;
  v133 = swift_allocObject();
  v134 = v352;
  *(v133 + 16) = v351;
  *(v133 + 24) = v134;
  (*(v354 + 32))(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v121, v350);
  v135 = (v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v135 = v349;
  v135[1] = v122;
  v136 = (v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v136 = v348;
  v136[1] = v123;
  v137 = (v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v137 = v346;
  v137[1] = v124;
  v138 = (v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v138 = v126;
  v138[1] = v125;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = v347;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = v345;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = v344;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = v343;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = v342;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
  outlined init with take of PommesSearchReason?(v128, v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v129;
  *(v133 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  v139 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState;
  v140 = v353;
  outlined init with copy of ParseStateXPC(&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState], v353, type metadata accessor for ParseStateXPC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v142 = *(v140 + 1);
  v354 = *v140;
  v355 = v142;
  v367 = v133;
  v352 = v139;
  if (EnumCaseMultiPayload == 1)
  {
    v143 = *(v140 + 3);
    v364 = *(v140 + 2);
    v357 = v143;
    v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
    v144 = v362;
    outlined init with take of PommesSearchReason?(&v140[*(v350 + 64)], v362, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v145 = one-time initialization token for pommes;

    v146 = v145 == -1;
    v148 = v368;
    v147 = v369;
    if (!v146)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    __swift_project_value_buffer(v149, static Logger.pommes);
    v150 = *(v148 + 16);
    v151 = v339;
    v356 = v148 + 16;
    v353 = v150;
    (v150)(v339, v370, v147);
    v152 = v144;
    v153 = v340;
    outlined init with copy of MediaUserStateCenter?(v144, v340, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v154 = a1;

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.debug.getter();
    v157 = v155;

    LODWORD(v351) = v156;
    v158 = os_log_type_enabled(v155, v156);
    v159 = v341;
    if (v158)
    {
      v160 = a1;
      v349 = v157;
      v161 = swift_slowAlloc();
      v348 = swift_slowAlloc();
      v372 = v348;
      *v161 = 136316418;
      v162 = v154;
      *(v161 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v154[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance], *&v154[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8], &v372);
      *(v161 + 12) = 2080;
      v163 = v321;
      outlined init with copy of ParseStateXPC(&v160[v352], v321, type metadata accessor for ParseStateXPC);
      v164 = swift_getEnumCaseMultiPayload();
      v166 = *v163;
      v165 = v163[1];
      if (v164 == 1)
      {
        v167 = v163[2];
        v168 = v163[3];
        v169 = *(v350 + 64);
        v170 = v323;
        *v323 = v166;
        v170[1] = v165;
        v170[2] = v167;
        v170[3] = v168;
        v171 = v327;
        v172 = v328;
        (*(v327 + 104))(v170, *MEMORY[0x277D56620], v328);
        outlined destroy of MediaUserStateCenter?(v163 + v169, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      else
      {
        v204 = v163[2];

        v170 = v323;
        *v323 = v166;
        v170[1] = v165;
        v171 = v327;
        v172 = v328;
        (*(v327 + 104))(v170, *MEMORY[0x277D56618], v328);
      }

      v199 = v366;
      v205 = v340;
      v206 = PommesCandidateId.description.getter();
      v208 = v207;
      (*(v171 + 8))(v170, v172);
      v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v206, v208, &v372);

      *(v161 + 14) = v209;
      *(v161 + 22) = 1024;
      v210 = v162;
      LODWORD(v209) = v162[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];

      *(v161 + 24) = v209;
      *(v161 + 28) = 2080;
      v371 = v367;

      v211 = String.init<A>(describing:)();
      v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v211, v212, &v372);

      *(v161 + 30) = v213;
      *(v161 + 38) = 2080;
      lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x277D56698]);
      v214 = v339;
      v215 = v369;
      v216 = dispatch thunk of CustomStringConvertible.description.getter();
      v218 = v217;
      v219 = v368;
      (*(v368 + 8))(v214, v215);
      v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v218, &v372);

      *(v161 + 40) = v220;
      *(v161 + 48) = 2080;
      v221 = v219;
      outlined init with copy of MediaUserStateCenter?(v205, v324, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v222 = String.init<A>(describing:)();
      v223 = v205;
      v225 = v224;
      v200 = v210;
      v148 = v221;
      outlined destroy of MediaUserStateCenter?(v223, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v226 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v225, &v372);
      v147 = v369;

      *(v161 + 50) = v226;
      v227 = v349;
      _os_log_impl(&dword_2232BB000, v349, v351, "    Constructing Pommes search request:\n    utterance: %s,\n    %s,\n    isMultiUser: %{BOOL}d,\n    requestContext: %s,\n    pommesContext: %s,\n    response: %s,\n    isFallback: true", v161, 0x3Au);
      v228 = v348;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v228, -1, -1);
      MEMORY[0x223DE0F80](v161, -1, -1);

      v152 = v362;
      v159 = v341;
    }

    else
    {

      outlined destroy of MediaUserStateCenter?(v153, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      (*(v148 + 8))(v151, v147);
      v199 = v366;
      v200 = v154;
    }

    v230 = *&v200[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
    v229 = *&v200[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8];
    LODWORD(v366) = v200[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];
    v231 = v358;
    (v353)(v358, v370, v147);
    (*(v148 + 56))(v231, 0, 1, v147);
    v232 = type metadata accessor for InputOrigin();
    (*(*(v232 - 8) + 56))(v359, 1, 1, v232);
    v233 = v365;
    outlined init with copy of MediaUserStateCenter?(v152, v365, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v234 = v360;
    *&v360[v199[23]] = MEMORY[0x277D84F90];
    v235 = &v234[v199[5]];
    *v235 = v230;
    *(v235 + 1) = v229;
    v236 = v199[6];
    v237 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
    (*(*(v237 - 8) + 56))(&v234[v236], 1, 1, v237);
    v238 = *&v367[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8];
    v239 = &v234[v199[8]];
    *v239 = *&v367[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId];
    *(v239 + 1) = v238;
    v240 = &v234[v199[9]];
    *v240 = 0;
    *(v240 + 1) = 0;
    v241 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
    v242 = v355;
    *v234 = v354;
    *(v234 + 1) = v242;
    v243 = v357;
    *(v234 + 2) = v364;
    *(v234 + 3) = v243;
    outlined init with copy of MediaUserStateCenter?(v233, &v234[v241], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of MediaUserStateCenter?(v231, &v234[v199[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined init with copy of MediaUserStateCenter?(v233, v159, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v244 = type metadata accessor for TCUMappedNLResponse();
    v245 = *(v244 - 8);
    v246 = *(v245 + 48);
    v247 = v246(v159, 1, v244);

    if (v247 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v159, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v248 = MEMORY[0x277D84F90];
    }

    else
    {
      v249 = TCUMappedNLResponse.nlResponse.getter();
      (*(v245 + 8))(v159, v244);
      v248 = NLParseResponse.userParses.getter();
    }

    v250 = v336;
    v251 = v334;
    outlined init with copy of MediaUserStateCenter?(v365, v334, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    if (v246(v251, 1, v244) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v251, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v252 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v253 = v332;
      (*(*(v252 - 8) + 56))(v332, 1, 1, v252);
    }

    else
    {
      v254 = v251;
      v255 = TCUMappedNLResponse.nlResponse.getter();
      (*(v245 + 8))(v254, v244);
      v253 = v332;
      NLParseResponse.fallbackParse.getter();
    }

    v256 = v368;
    v257 = v337;
    v258 = v335;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v248, v253, v337);
    outlined destroy of MediaUserStateCenter?(v253, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    outlined init with copy of MediaUserStateCenter?(v257, v258, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v259 - 8) + 48))(v258, 1, v259) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v258, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v260 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      (*(*(v260 - 8) + 56))(v250, 1, 1, v260);
    }

    else
    {
      v261 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v262 = *(v261 - 8);
      (*(v262 + 32))(v250, v258, v261);
      (*(v262 + 56))(v250, 0, 1, v261);
    }

    v263 = v360;
    outlined init with take of PommesSearchReason?(v250, &v360[v199[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *(v263 + v199[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v257, 0);
    v264 = v367;
    v265 = *(v367 + 3);
    v266 = (v263 + v199[7]);
    *v266 = *(v367 + 2);
    v266[1] = v265;
    *(v263 + v199[13]) = v264;
    v267 = v359;
    outlined init with copy of MediaUserStateCenter?(v359, v263 + v199[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    *(v263 + v199[15]) = v366;
    *(v263 + v199[18]) = 0;

    v268 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v248);

    outlined destroy of MediaUserStateCenter?(v257, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    outlined destroy of MediaUserStateCenter?(v365, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of MediaUserStateCenter?(v267, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    outlined destroy of MediaUserStateCenter?(v358, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of MediaUserStateCenter?(v362, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v269 = v369;
  }

  else
  {
    v173 = *(v140 + 2);
    v174 = one-time initialization token for pommes;

    v146 = v174 == -1;
    v176 = v368;
    v175 = v369;
    if (!v146)
    {
      swift_once();
    }

    v177 = type metadata accessor for Logger();
    __swift_project_value_buffer(v177, static Logger.pommes);
    v178 = *(v176 + 16);
    v179 = v338;
    v362 = v176 + 16;
    v360 = v178;
    (v178)(v338, v370, v175);
    v180 = a1;
    swift_bridgeObjectRetain_n();

    v181 = a1;
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.debug.getter();

    LODWORD(v359) = v183;
    v184 = os_log_type_enabled(v182, v183);
    v365 = v173;
    if (v184)
    {
      v185 = swift_slowAlloc();
      v358 = swift_slowAlloc();
      v372 = v358;
      *v185 = 136316418;
      v353 = v180;
      *(v185 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v180[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance], *&v180[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8], &v372);
      *(v185 + 12) = 2080;
      v186 = v320;
      outlined init with copy of ParseStateXPC(&v181[v352], v320, type metadata accessor for ParseStateXPC);
      v187 = swift_getEnumCaseMultiPayload();
      v189 = *v186;
      v188 = v186[1];
      if (v187 == 1)
      {
        v190 = v186[2];
        v191 = v186[3];
        v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR) + 64);
        v193 = v322;
        *v322 = v189;
        v193[1] = v188;
        v194 = v193;
        v193[2] = v190;
        v193[3] = v191;
        v176 = v368;
        v195 = v327;
        v196 = v328;
        (*(v327 + 104))(v193, *MEMORY[0x277D56620], v328);
        v197 = v186 + v192;
        v198 = v195;
        outlined destroy of MediaUserStateCenter?(v197, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      else
      {
        v270 = v186[2];

        v271 = v322;
        *v322 = v189;
        v271[1] = v188;
        v194 = v271;
        v198 = v327;
        v196 = v328;
        (*(v327 + 104))(v271, *MEMORY[0x277D56618], v328);
      }

      v272 = PommesCandidateId.description.getter();
      v274 = v273;
      (*(v198 + 8))(v194, v196);
      v275 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v272, v274, &v372);

      *(v185 + 14) = v275;
      *(v185 + 22) = 1024;
      v202 = v353;
      LODWORD(v275) = v353[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];

      *(v185 + 24) = v275;
      *(v185 + 28) = 2080;
      v203 = v367;
      v371 = v367;

      v276 = String.init<A>(describing:)();
      v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v277, &v372);

      *(v185 + 30) = v278;
      *(v185 + 38) = 2080;
      lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x277D56698]);
      v279 = v338;
      v280 = v369;
      v281 = dispatch thunk of CustomStringConvertible.description.getter();
      v283 = v282;
      (*(v176 + 8))(v279, v280);
      v284 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v281, v283, &v372);

      *(v185 + 40) = v284;
      *(v185 + 48) = 2048;
      v285 = *(v365 + 16);

      *(v185 + 50) = v285;

      _os_log_impl(&dword_2232BB000, v182, v359, "    Constructing Pommes search request:\n    utterance: %s,\n    %s,\n    isMultiUser: %{BOOL}d,\n    requestContext: %s,\n    pommesContext: %s,\n    userParses: %ld,\n    isFallback: true", v185, 0x3Au);
      v286 = v358;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v286, -1, -1);
      MEMORY[0x223DE0F80](v185, -1, -1);

      v201 = v280;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v176 + 8))(v179, v175);
      v201 = v175;
      v202 = v180;
      v203 = v133;
    }

    v287 = *&v202[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
    v359 = *&v202[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8];
    v288 = v359;
    LODWORD(v363) = v202[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];
    v289 = v364;
    (v360)(v364, v370, v201);
    (*(v176 + 56))(v289, 0, 1, v201);
    v290 = type metadata accessor for InputOrigin();
    (*(*(v290 - 8) + 56))(v356, 1, 1, v290);
    v291 = v366;
    v292 = v357;
    *&v357[*(v366 + 92)] = MEMORY[0x277D84F90];
    v293 = &v292[v291[5]];
    *v293 = v287;
    *(v293 + 1) = v288;
    v294 = v291[6];
    v295 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
    (*(*(v295 - 8) + 56))(&v292[v294], 1, 1, v295);
    v296 = *&v203[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8];
    v297 = &v292[v291[8]];
    *v297 = *&v203[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId];
    *(v297 + 1) = v296;
    v298 = &v292[v291[9]];
    *v298 = 0;
    *(v298 + 1) = 0;
    v299 = &v292[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
    v300 = v355;
    *v292 = v354;
    *(v292 + 1) = v300;
    v301 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v362 = *(v301 - 8);
    v302 = *(v362 + 56);
    v303 = v329;
    v302(v329, 1, 1, v301);
    v304 = type metadata accessor for NLXResultCandidate();
    v305 = *(v304 + 20);
    v302(&v299[v305], 1, 1, v301);
    v306 = &v299[*(v304 + 24)];
    v307 = v365;
    *v299 = v365;

    v308 = &v299[v305];
    v199 = v366;
    outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(v303, v308);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    *v306 = 0;
    *(v306 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of MediaUserStateCenter?(v364, &v292[v199[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v302(v303, 1, 1, v301);
    v309 = v333;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v307, v303, v333);
    outlined destroy of MediaUserStateCenter?(v303, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v310 = v331;
    outlined init with copy of MediaUserStateCenter?(v309, v331, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v311 - 8) + 48))(v310, 1, v311) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v310, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v312 = 1;
      v313 = v330;
    }

    else
    {
      v313 = v330;
      (*(v362 + 32))(v330, v310, v301);
      v312 = 0;
    }

    v302(v313, v312, 1, v301);
    v263 = v357;
    outlined init with take of PommesSearchReason?(v313, &v357[v199[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *(v263 + v199[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v309, 1);
    v314 = v367;
    v315 = *(v367 + 3);
    v316 = (v263 + v199[7]);
    *v316 = *(v367 + 2);
    v316[1] = v315;
    *(v263 + v199[13]) = v314;
    v317 = v356;
    outlined init with copy of MediaUserStateCenter?(v356, v263 + v199[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    *(v263 + v199[15]) = v363;
    *(v263 + v199[18]) = 0;

    v268 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v365);

    outlined destroy of MediaUserStateCenter?(v309, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    outlined destroy of MediaUserStateCenter?(v317, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    outlined destroy of MediaUserStateCenter?(v364, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v256 = v368;
    v269 = v369;
  }

  (*(v256 + 8))(v370, v269);
  *(v263 + v199[19]) = v268;
  *(v263 + v199[20]) = 1;
  v318 = (v263 + v199[21]);
  *v318 = 0;
  v318[1] = 0;
  *(v263 + v199[22]) = 0;
  *(v263 + v199[16]) = 0;
  *(v263 + v199[17]) = 0;
  return outlined init with take of PommesSearchRequest(v263, v361);
}

void *PommesSearchService.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t PommesSearchService.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

unint64_t PommesSearchServiceError.description.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000048;
  }

  *v0;
  return result;
}

Swift::Int PommesSearchServiceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesSearchServiceError()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000048;
  }

  *v0;
  return result;
}

uint64_t specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v66 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v88 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v87 = &v66 - v14;
  v86 = type metadata accessor for Siri_Nlu_External_Parser();
  v15 = *(v86 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v86, v17);
  v85 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserParse();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v69 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v66 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v68 = &v66 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v66 - v33;
  v35 = *(a1 + 16);
  v81 = a1;
  v36 = v35;

  if (!v36)
  {
    v71 = MEMORY[0x277D84F90];
LABEL_22:

    return v71;
  }

  v38 = 0;
  v80 = v20 + 16;
  v84 = (v15 + 8);
  v76 = *MEMORY[0x277D5DA78];
  v82 = (v8 + 8);
  v83 = (v8 + 104);
  v72 = *MEMORY[0x277D5DA80];
  v73 = (v20 + 8);
  v70 = (v20 + 32);
  v71 = MEMORY[0x277D84F90];
  v67 = v6;
  v78 = v20;
  v79 = v19;
  v66 = v34;
  v77 = v36;
  while (v38 < v36)
  {
    v40 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v41 = *(v20 + 72);
    result = (*(v20 + 16))(v28, v81 + v40 + v41 * v38, v19);
    if (__OFADD__(v38, 1))
    {
      goto LABEL_24;
    }

    v74 = v41;
    v75 = v40;
    v89 = v38 + 1;
    v42 = v85;
    Siri_Nlu_External_UserParse.parser.getter();
    v43 = v28;
    v44 = v87;
    Siri_Nlu_External_Parser.parserID.getter();
    v45 = *v84;
    (*v84)(v42, v86);
    v46 = *v83;
    v47 = v88;
    (*v83)(v88, v76, v7);
    lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v48 = *v82;
    (*v82)(v47, v7);
    v49 = v44;
    v28 = v43;
    v48(v49, v7);
    if (v91 != v90)
    {
      v50 = v85;
      Siri_Nlu_External_UserParse.parser.getter();
      v51 = v87;
      Siri_Nlu_External_Parser.parserID.getter();
      v45(v50, v86);
      v52 = v88;
      v46(v88, v72, v7);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v48(v52, v7);
      v53 = v51;
      v28 = v43;
      v48(v53, v7);
      if (v91 != v90)
      {
        goto LABEL_4;
      }
    }

    Siri_Nlu_External_UserParse.comparableProbability.getter();
    if (v39 > 0.05)
    {
      v54 = *v70;
      v55 = v68;
      v19 = v79;
      (*v70)(v68, v28, v79);
      v56 = v66;
      v54(v66, v55, v19);
      v57 = v67;
      Siri_Nlu_External_UserParse.firstUserDialogAct.getter(v67);
      v58 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v57, 1, v58) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v20 = v78;
LABEL_14:
        v54(v69, v56, v19);
        v61 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1);
          v61 = v92;
        }

        v64 = *(v61 + 16);
        v63 = *(v61 + 24);
        v65 = v61;
        if (v64 >= v63 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1);
          v65 = v92;
        }

        *(v65 + 16) = v64 + 1;
        v71 = v65;
        result = (v54)(v65 + v75 + v64 * v74, v69, v19);
        goto LABEL_19;
      }

      v60 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
      (*(v59 + 8))(v57, v58);
      v20 = v78;
      if ((v60 & 1) == 0)
      {
        goto LABEL_14;
      }

      result = (*v73)(v56, v19);
LABEL_19:
      v36 = v77;
      v38 = v89;
      if (v89 == v77)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_4:
      v19 = v79;
      result = (*v73)(v28, v79);
      ++v38;
      v36 = v77;
      v20 = v78;
      if (v89 == v77)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ParseStateXPC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PommesSearchRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PommesCandidateId() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(a1, v4, v5, v7, v6);
}

uint64_t outlined destroy of PommesSearchRequest(uint64_t a1)
{
  v2 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  outlined init with copy of MediaUserStateCenter?(a3, v26 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = String.utf8CString.getter() + 32;
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

    outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

    return v24;
  }

LABEL_8:
  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PommesSearchServiceError and conformance PommesSearchServiceError()
{
  result = lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError;
  if (!lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError;
  if (!lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError);
  }

  return result;
}

uint64_t dispatch thunk of PommesSearchService.searchInfiEntity(request:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v8(a1);
}

uint64_t dispatch thunk of PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v8(a1);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t partial apply for @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t objectdestroy_23Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in PommesSearchService.searchInfiEntity(request:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in PommesSearchService.searchInfiEntity(request:)(v2, v3, v4);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t lazy protocol witness table accessor for type PommesError and conformance PommesError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5(a1, v5);
}

uint64_t _s21SiriInformationSearch06PommesC7ServiceC16searchInfiEntity7request12timeoutInSecAA0D8ResponseCAA0dC10RequestXPCC_s6UInt64VtYaKFs6ResultOyAHs5Error_pGyYacfU_yScCyAPs5NeverOGXEfU_yAPnYucAScfu_yAPnYucfu0_TA()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t _ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGIegxT_AGIegg_TRTA(void *a1, char a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  outlined copy of Result<PommesResponse, Error>(a1);
  return v6(a1, a2 & 1);
}

void protocol witness for CurareInteractionStream.init(streamId:) in conformance FSFCurareInteractionStream(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = MEMORY[0x223DDF550]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStreamId_];

  *a2 = v4;
}

id @nonobjc FSFCurareInteractionStream.insert(_:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([v1 insert:a1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static CurareJSONBuilder.lazySetup()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.pommes);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, v1, v2, "CURARE: performing one-time setup for FeatureStore donation", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  v4 = type metadata accessor for Searchfoundation_Card();
  v5 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, MEMORY[0x277D38E40]);

  return MEMORY[0x28217E090](v4, v5);
}

uint64_t static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v34 - v13;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.pommes);
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v6;
    v35 = v20;
    *&v39[0] = v20;
    *v19 = 136315138;
    v36 = v16;
    v21 = PommesResponse.curareDescription.getter();
    v23 = a1;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v39);

    *(v19 + 4) = v24;
    a1 = v23;
    _os_log_impl(&dword_2232BB000, v17, v18, "POMMES-CURARE: %s", v19, 0xCu);
    v25 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v6 = v37;
    MEMORY[0x223DE0F80](v25, -1, -1);
    MEMORY[0x223DE0F80](v19, -1, -1);

    v26 = v36;
  }

  else
  {

    v26 = v16;
  }

  static TaskPriority.background.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  outlined init with copy of CurareInteractionStream?(a3, v39);
  v28 = v38;
  (*(v7 + 16))(v38, a1, v6);
  v29 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v31 = v39[1];
  *(v30 + 32) = v39[0];
  *(v30 + 48) = v31;
  *(v30 + 64) = v40;
  *(v30 + 72) = v26;
  (*(v7 + 32))(v30 + v29, v28, v6);
  v32 = v26;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:with:into:), v30);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Date();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static CurareDonation.donateCurareInfo(for:with:into:), 0, 0);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = static PerformanceUtil.shared;
  v7 = swift_task_alloc();
  *(v7 + 16) = *(v0 + 24);
  *(v7 + 32) = v4;
  Date.init()();
  (*(*v6 + 200))(0xD00000000000002ALL, 0x80000002234DAC30, 0, v1, "SiriInformationSearch/CurareDonation.swift", 42, 2, 194, "donateCurareInfo(for:with:into:)", 32, 2, partial apply for closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:with:into:), v7, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PommesCurareInteractionValue();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 24))
  {
    outlined init with copy of CurareInteractionStream?(a1, v17);
  }

  else
  {
    type metadata accessor for PommesResponse();
    static PommesResponse.makeDefaultInteractionStream()(v17);
  }

  v10 = PommesResponse.requestId.getter();
  v12 = v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v14 = *(*(v13 - 8) + 16);
  v14(v9, a3, v13);
  swift_storeEnumTagMultiPayload();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v9, v10, v12, v17);
  outlined destroy of PommesCurareInteractionValue(v9);
  v14(v9, a3, v13);
  swift_storeEnumTagMultiPayload();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v9, v10, v12, v17);

  outlined destroy of PommesCurareInteractionValue(v9);
  return outlined destroy of CurareInteractionStream?(v17);
}

uint64_t static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v18 - v11;
  static TaskPriority.background.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  outlined init with copy of CurareInteractionStream?(a2, v19);
  (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v19[1];
  *(v15 + 32) = v19[0];
  *(v15 + 48) = v16;
  *(v15 + 64) = v20;
  (*(v5 + 32))(v15 + v14, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:into:), v15);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static CurareDonation.donateCurareInfo(for:into:), 0, 0);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:into:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = static PerformanceUtil.shared;
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 24);
  Date.init()();
  (*(*v5 + 200))(0xD000000000000025, 0x80000002234DABE0, 0, v1, "SiriInformationSearch/CurareDonation.swift", 42, 2, 208, "donateCurareInfo(for:into:)", 27, 2, partial apply for closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:into:), v6, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesCurareInteractionValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 24))
  {
    outlined init with copy of CurareInteractionStream?(a1, v22);
  }

  else
  {
    type metadata accessor for PommesResponse();
    static PommesResponse.makeDefaultInteractionStream()(v22);
  }

  v15 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter();
  v16 = MEMORY[0x223DDB6D0](v15);
  v18 = v17;
  (*(v10 + 8))(v14, v9);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v19 - 8) + 16))(v8, a2, v19);
  swift_storeEnumTagMultiPayload();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v8, v16, v18, v22);

  outlined destroy of PommesCurareInteractionValue(v8);
  return outlined destroy of CurareInteractionStream?(v22);
}

uint64_t static CurareDonation.donateCurareResponseUsedMarker(from:into:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  static TaskPriority.background.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  outlined init with copy of CurareInteractionStream?(a2, v15);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = v15[1];
  *(v10 + 32) = v15[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v16;
  *(v10 + 72) = a1;
  v12 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:), v10);
}

uint64_t closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:), 0, 0);
}

uint64_t closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = static PerformanceUtil.shared;
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 24);
  Date.init()();
  (*(*v5 + 200))(0xD000000000000034, 0x80000002234DAB20, 0, v1, "SiriInformationSearch/CurareDonation.swift", 42, 2, 222, "donateCurareResponseUsedMarker(from:into:)", 42, 2, partial apply for closure #1 in closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:), v6, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(uint64_t a1)
{
  v2 = type metadata accessor for PommesCurareInteractionValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 24))
  {
    outlined init with copy of CurareInteractionStream?(a1, v11);
  }

  else
  {
    type metadata accessor for PommesResponse();
    static PommesResponse.makeDefaultInteractionStream()(v11);
  }

  swift_storeEnumTagMultiPayload();
  v7 = PommesResponse.requestId.getter();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v6, v7, v8, v11);

  outlined destroy of PommesCurareInteractionValue(v6);
  return outlined destroy of CurareInteractionStream?(v11);
}

uint64_t specialized FSFCurareInteractionStream.shouldInsertInteraction()()
{
  v0 = objc_opt_self();
  if (![v0 isSupportedPlatform])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "FSFUtils: unsupported platform.";
    goto LABEL_12;
  }

  if ([v0 isSupportedUser])
  {
    return 1;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "FSFUtils: unsupported user.";
LABEL_12:
    _os_log_impl(&dword_2232BB000, v3, v4, v6, v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t outlined init with copy of CurareInteractionStream?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in static CurareDonation.donateCurareInfo(for:into:)(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t partial apply for closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t getEnumTagSinglePayload for CurareDonation(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CurareDonation(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for PommesCurareInteractionValue()
{
  result = type metadata singleton initialization cache for PommesCurareInteractionValue;
  if (!type metadata singleton initialization cache for PommesCurareInteractionValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static CurareJSONBuilder.stripAssetInfo(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v14 = *(v100 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v100, v16);
  v99 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v74 = *(v18 - 8);
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v101 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v79 = *(v78 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v78, v23);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v25 = *(v76 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v76, v27);
  v75 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a1;
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  if (result)
  {
    v98 = v14;
    v97 = v9;
    v30 = v75;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    v31 = v77;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
    v32 = *(v25 + 8);
    v33 = v30;
    v34 = v97;
    v73 = v25 + 8;
    v72 = v32;
    v35 = v32(v33, v76);
    v36 = MEMORY[0x223DDB8B0](v35);
    v37 = *(v79 + 8);
    v79 += 8;
    v71 = v37;
    v37(v31, v78);
    v38 = v98;
    v39 = *(v36 + 16);

    v70 = v39;
    if (v39)
    {
      v40 = 0;
      v69 = v74 + 16;
      v98 = v38 + 1;
      v97 = v34 + 1;
      v93 = v3 + 16;
      v92 = (v3 + 8);
      v67 = (v74 + 8);
      v83 = v7;
      v82 = v8;
      v81 = v13;
      v68 = v18;
      v80 = v3;
      while (1)
      {
        v87 = v40;
        v41 = v75;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
        v42 = v77;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
        v43 = v72(v41, v76);
        v44 = MEMORY[0x223DDB8B0](v43);
        v45 = v87;
        v46 = v44;
        result = v71(v42, v78);
        if (v45 >= *(v46 + 16))
        {
          break;
        }

        v85 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v47 = *(v74 + 16);
        v84 = *(v74 + 72) * v45;
        v47(v101, v46 + v85 + v84, v18);

        v48 = v99;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter();
        v96 = *v98;
        v96(v48, v100);
        v49 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
        v95 = *v97;
        v95(v13, v8);
        v50 = *(v49 + 16);

        v94 = v50;
        if (v50)
        {
          v51 = 0;
          while (1)
          {
            v52 = v99;
            Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter();
            v96(v52, v100);
            v53 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
            result = (v95)(v13, v8);
            if (v51 >= *(v53 + 16))
            {
              break;
            }

            (*(v3 + 16))(v7, v53 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v51, v2);

            Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.getter();
            v54 = String.count.getter();

            if (v54 >= 101)
            {
              v107 = 0;
              v108 = 0xE000000000000000;
              _StringGuts.grow(_:)(18);

              v107 = 0x4445564F4D45525FLL;
              v108 = 0xEA0000000000205FLL;
              v106 = v54;
              v55 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x223DDF6D0](v55);

              MEMORY[0x223DDF6D0](0x736574796220, 0xE600000000000000);
              v89 = v107;
              v88 = v108;
              v56 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.modify();
              v91 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.modify();
              v90 = Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.components.modify();
              v58 = v57;
              v59 = *v57;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v58 = v59;
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
                v59 = result;
                *v58 = result;
              }

              if (v87 >= v59[2])
              {
                goto LABEL_21;
              }

              v60 = v2;
              v61 = Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.modify();
              v62 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.modify();
              v63 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.modify();
              v65 = v64;
              v66 = *v64;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v65 = v66;
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
                v66 = result;
                *v65 = result;
              }

              if (v51 >= v66[2])
              {
                goto LABEL_22;
              }

              Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.setter();
              v63(v102, 0);
              v62(v103, 0);
              v61(v104, 0);
              v90(v105, 0);
              v91(&v106, 0);
              v56(&v107, 0);
              v2 = v60;
              v3 = v80;
              v7 = v83;
              v8 = v82;
              v13 = v81;
            }

            ++v51;
            (*v92)(v7, v2);
            if (v94 == v51)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        v40 = v87 + 1;
        v18 = v68;
        result = (*v67)(v101, v68);
        if (v40 == v70)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized static CurareJSONBuilder.copyFields(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v34 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v33 = &v28 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v28 - v19;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.setter();
  v30 = a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v29 = v12[1];
  v29(v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter();
  v21 = v12[2];
  v37 = v17;
  v21(v17, v20, v11);
  v31 = v21;
  v32 = v12 + 2;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
  v22 = v29;
  v29(v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.mathOperationContainsRandom.getter();
  v22(v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.mathOperationContainsRandom.setter();
  v21(v37, v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
  v22(v20, v11);
  v23 = v22;
  v24 = v33;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v25 = v35;
  v26 = v36;
  (*(v35 + 16))(v34, v24, v36);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter();
  (*(v25 + 8))(v24, v26);
  specialized static CurareJSONBuilder.stripAssetInfo(_:)(a2);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
  v23(v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.setter();
  v31(v37, v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
  v23(v20, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.getter();
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.setter();
}

uint64_t specialized static CurareJSONBuilder.build(from:)(uint64_t a1)
{
  v2 = v1;
  v47 = type metadata accessor for JSONEncodingOptions();
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v47, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40 - v16;
  if (one-time initialization token for lazySetup != -1)
  {
    swift_once();
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.init()();
  specialized static CurareJSONBuilder.copyFields(from:to:)(a1, v17);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v44 = __swift_project_value_buffer(v18, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = v21;
    v43 = swift_slowAlloc();
    v46 = v43;
    *v21 = 136315138;
    swift_beginAccess();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v41 = v19;
    v22 = Message.textFormatString()();
    v23 = v9;
    v24 = v8;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22._countAndFlagsBits, v22._object, &v46);

    v26 = v42;
    *(v42 + 1) = v25;
    v8 = v24;
    v9 = v23;
    v2 = v1;
    v27 = v41;
    _os_log_impl(&dword_2232BB000, v41, v20, "CURARE: filtered to %s", v26, 0xCu);
    v28 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  (*(v9 + 16))(v14, v17, v8);
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
  v29 = Message.jsonString(options:)();
  v30 = v7;
  v31 = v29;
  if (v2)
  {
    (*(v45 + 8))(v30, v47);
    v32 = *(v9 + 8);
    v32(v14, v8);
    v32(v17, v8);
  }

  else
  {
    (*(v45 + 8))(v30, v47);
    v33 = *(v9 + 8);
    v47 = v9 + 8;
    v33(v14, v8);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v8;
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = String.count.getter();

      _os_log_impl(&dword_2232BB000, v34, v35, "CURARE: generated JSON (%ldb) for donation", v37, 0xCu);
      v38 = v37;
      v8 = v36;
      MEMORY[0x223DE0F80](v38, -1, -1);
    }

    else
    {
    }

    v33(v17, v8);
  }

  return v31;
}

uint64_t specialized static CurareDonation.makeCurareFeatureStoreInteraction(forID:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v162 = a2;
  v161 = a1;
  v4 = type metadata accessor for JSONEncodingOptions();
  v191 = *(v4 - 8);
  v5 = v191[8];
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v190 = *(v9 - 8);
  v10 = *(v190 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v157 - v16;
  v18 = type metadata accessor for String.Encoding();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v159 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for Google_Protobuf_Any();
  v168 = *(v189 - 8);
  v22 = *(v168 + 64);
  MEMORY[0x28223BE20](v189, v23);
  v188 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Debuglevelspb_AnyArray();
  v174 = *(v182 - 8);
  v25 = *(v174 + 64);
  v27 = MEMORY[0x28223BE20](v182, v26);
  v180 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v173 = &v157 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMR);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v179 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v175 = (&v157 - v37);
  v164 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v163 = *(v164 - 8);
  v38 = *(v163 + 64);
  v40 = MEMORY[0x28223BE20](v164, v39);
  v160 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v157 - v43;
  v45 = type metadata accessor for PommesCurareInteractionValue();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v47);
  v49 = &v157 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesCurareInteractionValue(a3, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v51 = v163;
      v52 = v164;
      (*(v163 + 32))(v44, v49, v164);
      v53 = v172;
      v54 = specialized static CurareJSONBuilder.build(from:)(v44);
      if (!v53)
      {
        v142 = v54;
        v141 = v55;
        v172 = 0;
        (*(v51 + 8))(v44, v52);
        goto LABEL_50;
      }

      v56 = v52;
      v57 = v53;
      (*(v51 + 8))(v44, v56);
      return v57;
    }

    v63 = v163;
    v64 = v160;
    v65 = v164;
    (*(v163 + 32))(v160, v49, v164);
    v57 = *(Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.serviceDebug.getter() + 16);

    if (!v57)
    {
      (*(v63 + 8))(v64, v65);
      return v57;
    }

    v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySDyS2SGGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v67 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.serviceDebug.getter();
    v68 = 0;
    v69 = *(v67 + 64);
    v158 = v67 + 64;
    v166 = v67;
    v70 = 1 << *(v67 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v69;
    v157 = (v70 + 63) >> 6;
    v165 = v174 + 16;
    v176 = (v174 + 32);
    v183 = (v168 + 8);
    v184 = v168 + 16;
    v167 = (v174 + 8);
    v73 = v179;
    while (1)
    {
      v181 = v66;
      if (!v72)
      {
        if (v157 <= v68 + 1)
        {
          v78 = v68 + 1;
        }

        else
        {
          v78 = v157;
        }

        v79 = v78 - 1;
        while (1)
        {
          v77 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_61;
          }

          if (v77 >= v157)
          {
            v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMR);
            (*(*(v138 - 8) + 56))(v73, 1, 1, v138);
            v178 = 0;
            goto LABEL_24;
          }

          v72 = *(v158 + 8 * v77);
          ++v68;
          if (v72)
          {
            goto LABEL_23;
          }
        }
      }

      v77 = v68;
LABEL_23:
      v178 = (v72 - 1) & v72;
      v80 = __clz(__rbit64(v72)) | (v77 << 6);
      v81 = (*(v166 + 48) + 16 * v80);
      v83 = *v81;
      v82 = v81[1];
      v84 = v174;
      v85 = v173;
      v86 = v182;
      (*(v174 + 16))(v173, *(v166 + 56) + *(v174 + 72) * v80, v182);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMR);
      v88 = *(v87 + 48);
      v89 = v179;
      *v179 = v83;
      *(v89 + 1) = v82;
      v73 = v89;
      (*(v84 + 32))(&v89[v88], v85, v86);
      (*(*(v87 - 8) + 56))(v73, 0, 1, v87);

      v79 = v77;
      v66 = v181;
LABEL_24:
      v90 = v175;
      outlined init with take of (key: String, value: Debuglevelspb_AnyArray)?(v73, v175);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMR);
      if ((*(*(v91 - 8) + 48))(v90, 1, v91) == 1)
      {

        v148 = type metadata accessor for JSONEncoder();
        v149 = *(v148 + 48);
        v150 = *(v148 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        v199 = v66;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDyS2SGGGMd, &_sSDySSSaySDyS2SGGGMR);
        lazy protocol witness table accessor for type [String : [[String : String]]] and conformance <> [A : B]();
        v151 = v172;
        v152 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v172 = v151;
        if (v151)
        {

          (*(v163 + 8))(v160, v164);
          return v57;
        }

        v154 = v152;
        v155 = v153;

        static String.Encoding.utf8.getter();
        v142 = String.init(data:encoding:)();
        v141 = v156;
        outlined consume of Data._Representation(v154, v155);

        (*(v163 + 8))(v160, v164);
        if (!v141)
        {
          return 0;
        }

LABEL_50:
        v144 = objc_allocWithZone(MEMORY[0x277D08438]);
        v145 = MEMORY[0x223DDF550](v142, v141);

        v146 = MEMORY[0x223DDF550](v161, v162);
        v57 = [v144 initWithJsonStr:v145 interactionId:v146 dataVersion:0];

        return v57;
      }

      v177 = v79;
      v93 = *v90;
      v92 = v90[1];
      v94 = v182;
      v95 = (*v176)(v180, v90 + *(v91 + 48), v182);
      v96 = MEMORY[0x223DDA050](v95);
      v97 = *(v96 + 16);
      if (v97)
      {
        v170 = v93;
        v171 = v92;
        v199 = MEMORY[0x277D84F90];
        v190 = v97;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
        v98 = v199;
        v99 = v168;
        v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v169 = v96;
        v101 = v96 + v100;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v185 = *(v99 + 72);
        v186 = *(v99 + 16);
        v187 = v102;
        while (1)
        {
          v191 = v98;
          v186(v188, v101, v189);
          v192 = 0x656D614E65707974;
          v193 = 0xE800000000000000;
          v103 = Google_Protobuf_Any.typeURL.getter();
          v105 = v104;
          v194 = v103;
          v195 = v104;
          v196 = 1635017060;
          v197 = 0xE400000000000000;
          v106 = Google_Protobuf_Any.value.getter();
          v108 = v107;
          v109 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v106, v108);
          v198 = v109;
          v110 = static _DictionaryStorage.allocate(capacity:)();

          v111 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E65707974, 0xE800000000000000);
          if (v112)
          {
            break;
          }

          *(v110 + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v111;
          v113 = (v110[6] + 16 * v111);
          *v113 = 0x656D614E65707974;
          v113[1] = 0xE800000000000000;
          v114 = (v110[7] + 16 * v111);
          *v114 = v103;
          v114[1] = v105;
          v115 = v110[2];
          v116 = __OFADD__(v115, 1);
          v117 = v115 + 1;
          if (v116)
          {
            goto LABEL_58;
          }

          v110[2] = v117;

          v118 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000);
          if (v119)
          {
            goto LABEL_59;
          }

          *(v110 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v118;
          v120 = (v110[6] + 16 * v118);
          *v120 = 1635017060;
          v120[1] = 0xE400000000000000;
          *(v110[7] + 16 * v118) = v109;
          v121 = v110[2];
          v116 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v116)
          {
            goto LABEL_60;
          }

          v110[2] = v122;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
          swift_arrayDestroy();
          (*v183)(v188, v189);
          v98 = v191;
          v199 = v191;
          v124 = v191[2];
          v123 = v191[3];
          if (v124 >= v123 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1);
            v98 = v199;
          }

          v98[2] = v124 + 1;
          v98[v124 + 4] = v110;
          v101 += v185;
          if (!--v190)
          {

            v94 = v182;
            v66 = v181;
            v92 = v171;
            v93 = v170;
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v98 = MEMORY[0x277D84F90];
LABEL_36:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v199 = v66;
      v126 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v92);
      v128 = v66[2];
      v129 = (v127 & 1) == 0;
      v116 = __OFADD__(v128, v129);
      v130 = v128 + v129;
      if (v116)
      {
        goto LABEL_62;
      }

      v131 = v127;
      v191 = v98;
      v132 = v66[3];
      v133 = v177;
      if (v132 >= v130)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v139 = v94;
          v140 = v126;
          specialized _NativeDictionary.copy()();
          v126 = v140;
          v94 = v139;
        }

        v73 = v179;
        v68 = v133;
        if (v131)
        {
          goto LABEL_12;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, isUniquelyReferenced_nonNull_native);
        v126 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v92);
        if ((v131 & 1) != (v134 & 1))
        {
          goto LABEL_64;
        }

        v73 = v179;
        v68 = v133;
        if (v131)
        {
LABEL_12:
          v74 = v126;

          v66 = v199;
          v75 = v199[7];
          v76 = *(v75 + 8 * v74);
          *(v75 + 8 * v74) = v191;

          (*v167)(v180, v94);
          goto LABEL_13;
        }
      }

      v66 = v199;
      v199[(v126 >> 6) + 8] |= 1 << v126;
      v135 = (v66[6] + 16 * v126);
      *v135 = v93;
      v135[1] = v92;
      *(v66[7] + 8 * v126) = v191;
      (*v167)(v180, v94);
      v136 = v66[2];
      v116 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v116)
      {
        goto LABEL_63;
      }

      v66[2] = v137;
LABEL_13:
      v72 = v178;
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
    v141 = 0x80000002234DABC0;
    v142 = 0xD00000000000001FLL;
    goto LABEL_50;
  }

  v58 = v4;
  v59 = v190;
  (*(v190 + 32))(v17, v49, v9);
  (*(v59 + 16))(v14, v17, v9);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearAsrContext()();
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, MEMORY[0x277D38D70]);
  v60 = v172;
  v61 = Message.jsonString(options:)();
  v172 = v60;
  if (!v60)
  {
    v142 = v61;
    v141 = v62;
    (v191[1])(v8, v58);
    v143 = *(v59 + 8);
    v143(v14, v9);
    v143(v17, v9);
    goto LABEL_50;
  }

  (v191[1])(v8, v4);
  v57 = *(v59 + 8);
  v57(v14, v9);
  v57(v17, v9);
  return v57;
}

void specialized static CurareDonation.donateCurareValue(_:with:into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    outlined init with copy of CurareInteractionStream?(a4, &v30);
    if (v31)
    {
      outlined init with take of DomainWarmupHandling(&v30, v32);
      v7 = v33;
      v8 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      if ((*(v8 + 24))(v7, v8))
      {
        if (specialized static CurareDonation.makeCurareFeatureStoreInteraction(forID:value:)(a2, a3, a1))
        {
          v16 = v33;
          v17 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v18 = *(v17 + 16);
          v19 = swift_unknownObjectRetain();
          v18(v19, v16, v17);
          swift_unknownObjectRelease();
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.pommes);

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *&v30 = v28;
            *v27 = 136315138;
            *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v30);
            _os_log_impl(&dword_2232BB000, v25, v26, "Inserted Curare feature for interaction ID: %s", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            MEMORY[0x223DE0F80](v28, -1, -1);
            MEMORY[0x223DE0F80](v27, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          __swift_project_value_buffer(v20, static Logger.pommes);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&dword_2232BB000, v21, v22, "Interaction returned by makeCurareFeatureStoreInteraction was nil", v23, 2u);
            MEMORY[0x223DE0F80](v23, -1, -1);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      outlined destroy of CurareInteractionStream?(&v30);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "Skipping Curare feature donation: no stream available, or stream not accepting interactions.", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v10, "Skipping Curare donation because this POMMES response doesn't have a request ID", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }
  }
}

uint64_t outlined destroy of PommesCurareInteractionValue(uint64_t a1)
{
  v2 = type metadata accessor for PommesCurareInteractionValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of CurareInteractionStream?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PommesCurareInteractionValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesCurareInteractionValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: Debuglevelspb_AnyArray)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for PommesCurareInteractionValue()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id PommesAssistantIDManager.init(pommesSearchRequest:)(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for PommesSearchRequest(0) + 52));
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
  }

  v5 = specialized PommesAssistantIDManager.init(realAssistantID:)();
  outlined destroy of PommesSearchRequest(a1);
  return v5;
}

uint64_t static PommesAssistantIDManager.shouldReplaceAssistantID.getter()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 longLivedIdentifierUploadingEnabled];

  return v1 ^ 1;
}

Swift::String_optional __swiftcall PommesAssistantIDManager.effectiveAssistantID()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedPreferences];
  v13 = [v12 longLivedIdentifierUploadingEnabled];

  if (v13)
  {
  }

  else
  {
    PommesAssistantIDManager.replacementAssistantID()(v5, v4, v3, v11);
    v4 = UUID.uuidString.getter();
    v3 = v14;
    (*(v7 + 8))(v11, v6);
  }

  v15 = v4;
  v16 = v3;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

void PommesAssistantIDManager.replacementAssistantID()(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v75[-v11];
  v13 = type metadata accessor for Date();
  v81 = *(v13 - 8);
  v14 = v81[8];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v75[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v75[-v25];
  v27 = type metadata accessor for UUID();
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v33 = &v75[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v78 = v21;
    v79 = v13;
    v80 = v31;
    v34 = v30;
    v83 = a2;
    v84 = a3;
    v85 = a4;
    v82 = a1;
    v35 = a1;
    v36 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    v86 = v35;
    v37 = [v35 objectForKey_];

    if (v37)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (!*(&v88 + 1))
    {
      v40 = &_sypSgMd;
      v41 = &_sypSgMR;
      v42 = &v89;
      goto LABEL_13;
    }

    v38 = v34;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_14:
      v43 = v85;
      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.overrides);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2232BB000, v45, v46, "No assistant ID saved in user defaults.", v47, 2u);
        MEMORY[0x223DE0F80](v47, -1, -1);
      }

      PommesAssistantIDManager.mintReplacementAssistantID()(v82, v43);
      return;
    }

    UUID.init(uuidString:)();

    v39 = v80;
    if ((*(v80 + 48))(v26, 1, v34) == 1)
    {
      v40 = &_s10Foundation4UUIDVSgMd;
      v41 = &_s10Foundation4UUIDVSgMR;
      v42 = v26;
LABEL_13:
      outlined destroy of MediaUserStateCenter?(v42, v40, v41);
      goto LABEL_14;
    }

    v48 = *(v39 + 32);
    v77 = v33;
    v49 = v48;
    v48();
    v50 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    v51 = [v86 objectForKey_];

    if (v51)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v52 = v81;
    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      v53 = v79;
      v54 = swift_dynamicCast();
      (v52[7])(v12, v54 ^ 1u, 1, v53);
      v55 = (v52[6])(v12, 1, v53);
      v56 = v85;
      if (v55 != 1)
      {
        v57 = v78;
        (v52[4])(v78, v12, v53);
        Date.timeIntervalSinceNow.getter();
        if (v58 >= 0.0)
        {
          (v52[1])(v57, v53);

          (v49)(v56, v77, v38);
          return;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.pommes);
        v60 = v79;
        (v52[2])(v18, v78, v79);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *&v89 = v81;
          *v63 = 136315138;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v64 = dispatch thunk of CustomStringConvertible.description.getter();
          v76 = v62;
          v65 = v64;
          v67 = v66;
          v68 = v52[1];
          v68(v18, v60);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v89);

          *(v63 + 4) = v69;
          _os_log_impl(&dword_2232BB000, v61, v76, "Replacement assistant ID is expired (at %s).", v63, 0xCu);
          v70 = v81;
          __swift_destroy_boxed_opaque_existential_1(v81);
          MEMORY[0x223DE0F80](v70, -1, -1);
          MEMORY[0x223DE0F80](v63, -1, -1);
        }

        else
        {

          v68 = v52[1];
          v68(v18, v60);
        }

        PommesAssistantIDManager.mintReplacementAssistantID()(v82, v85);

        v68(v78, v60);
LABEL_35:
        (*(v80 + 8))(v77, v38);
        return;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v89, &_sypSgMd, &_sypSgMR);
      (v52[7])(v12, 1, 1, v79);
      v56 = v85;
    }

    outlined destroy of MediaUserStateCenter?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for overrides != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.overrides);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2232BB000, v72, v73, "Unable to read expiration date for assistantID from user defaults. This should have been registered; why is it missing?", v74, 2u);
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

    PommesAssistantIDManager.mintReplacementAssistantID()(v82, v56);
    goto LABEL_35;
  }

  UUID.init()();
}

uint64_t PommesAssistantIDManager.mintReplacementAssistantID()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v42 = &v39 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  (*(v13 + 16))(v17, a2, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v4;
    v22 = v21;
    v39 = swift_slowAlloc();
    v40 = a1;
    v44 = v39;
    *v22 = 136315138;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v13 + 8))(v17, v12);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v44);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2232BB000, v19, v20, "Minted new replacement assistantID: %s", v22, 0xCu);
    v27 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v28 = v27;
    a1 = v40;
    MEMORY[0x223DE0F80](v28, -1, -1);
    v29 = v22;
    v4 = v41;
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  static Date.now.getter();
  v30 = v42;
  Date.addingTimeInterval(_:)();
  v31 = *(v43 + 8);
  v31(v9, v4);
  if (a1)
  {
    v32 = a1;
    v33 = UUID.uuidString.getter();
    v34 = MEMORY[0x223DDF550](v33);

    v35 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    [v32 setObject:v34 forKey:v35];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v37 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    [v32 setObject:isa forKey:v37];
  }

  return (v31)(v30, v4);
}

Swift::Void __swiftcall PommesAssistantIDManager.reset()()
{
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    [v1 removeObjectForKey_];

    v3 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    [v1 removeObjectForKey_];
  }
}

id specialized PommesAssistantIDManager.init(realAssistantID:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x80000002234DACB0;
    *(inited + 72) = type metadata accessor for Date();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v4 = v2;
    static Date.distantPast.getter();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 registerDefaults_];
  }

  else
  {
    if (one-time initialization token for overrides != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.overrides);
    v5.super.isa = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5.super.isa, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000002234DA020, &v11);
      _os_log_impl(&dword_2232BB000, v5.super.isa, v7, "No user defaults access to %s! This may impact dialog randomization from Pegasus.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DE0F80](v9, -1, -1);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }
  }

  return v2;
}

void specialized PommesAssistantIDManager.save(assistantID:expiringAt:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = UUID.uuidString.getter();
    v5 = MEMORY[0x223DDF550](v4);

    v6 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    [v3 setObject:v5 forKey:v6];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    [v3 setObject:isa forKey:v8];
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesAssistantIDManager(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesAssistantIDManager(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PommesEngagement.tapEngagement(engagementContext:with:)()
{
  v1 = *(v0 + 16);
  Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}