BOOL sub_1B4F10AE0(void *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (v5 = *a2, v6 = a2[1], (sub_1B4F68D54())) && (a2[2] == a1[2] ? (v7 = a2[3] == a1[3]) : (v7 = 0), (v7 || (v8 = a2[2], v9 = a2[3], v10 = a1[2], v11 = a1[3], (sub_1B4F68D54())) && a2[4] == a1[4] && a2[5] == a1[5]))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1B4F68D54();
  }

  return (v12 & 1) == 0;
}

BOOL sub_1B4F10BB4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = *a1, (sub_1B4F68D54())) && (a1[2] == a2[2] ? (v6 = a1[3] == a2[3]) : (v6 = 0), (v6 || (v7 = a1[2], v8 = a1[3], v9 = a2[2], v10 = a2[3], (sub_1B4F68D54())) && a1[4] == a2[4] && a1[5] == a2[5]))
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return (v11 & 1) == 0;
}

uint64_t sub_1B4F10C88(void *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (v5 = *a2, v6 = a2[1], (sub_1B4F68D54() & 1) != 0))
  {
    v7 = a2[2] == a1[2] && a2[3] == a1[3];
    if (v7 || (v8 = a2[2], v9 = a2[3], v10 = a1[2], v11 = a1[3], (sub_1B4F68D54() & 1) != 0))
    {
      if (a2[4] == a1[4] && a2[5] == a1[5])
      {
        return 0;
      }
    }
  }

  return sub_1B4F68D54();
}

uint64_t SystemVersion.prefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SystemVersion.letter.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SystemVersion.suffix.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SystemVersion.rawValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall SystemVersion.init(rawValue:)(SeymourClient::SystemVersion_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  v6 = sub_1B4F118D4(0xD000000000000034, 0x80000001B4F84250, 0);
  *&v24[0] = countAndFlagsBits;
  *(&v24[0] + 1) = object;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F28, &qword_1B4F7B3E8);
  sub_1B4F119B0();
  sub_1B4DCAC7C();
  v22 = sub_1B4F68784();
  v8 = v7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v9 = sub_1B4F67F64();
  v10 = swift_allocObject();
  v10[2] = countAndFlagsBits;
  v10[3] = object;
  v10[4] = &v37;
  v10[5] = &v36;
  v10[6] = &v35;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B4F11A14;
  *(v11 + 24) = v10;
  v31 = sub_1B4F11A24;
  v32 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B4F112F8;
  v30 = &block_descriptor_16;
  v12 = _Block_copy(&aBlock);

  [v6 enumerateMatchesInString:v9 options:0 range:v22 usingBlock:{v8, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v37._object;
    if (v37._object && (v15 = v36._object, v16 = v35._object, v36._object) && v35._object)
    {
      v18 = v36._countAndFlagsBits;
      v19 = v35._countAndFlagsBits;
      v24[0] = v37;
      v17 = v37._countAndFlagsBits;
      v24[1] = v36;
      v25 = v35;
      v26._countAndFlagsBits = countAndFlagsBits;
      v26._object = object;
      v20 = v36;
      retstr->value.prefix = v37;
      retstr->value.letter = v20;
      v21 = v26;
      retstr->value.suffix = v25;
      retstr->value.rawValue = v21;
      aBlock = v17;
      v28 = v14;
      v29 = v18;
      v30 = v15;
      v31 = v19;
      v32 = v16;
      v33 = countAndFlagsBits;
      v34 = object;
      sub_1B4F11A4C(v24, v23);
      sub_1B4F11A84(&aBlock);
    }

    else
    {

      retstr->value.suffix = 0u;
      retstr->value.rawValue = 0u;
      retstr->value.prefix = 0u;
      retstr->value.letter = 0u;
    }
  }
}

void sub_1B4F1116C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a1)
  {
    v30 = a1;
    if ([v30 numberOfRanges] == 4)
    {
      [v30 rangeAtIndex_];
      sub_1B4F685A4();
      if ((v12 & 1) == 0)
      {
        v13 = sub_1B4F680B4();
        v14 = MEMORY[0x1B8C81870](v13);
        v16 = v15;

        v17 = a6[1];
        *a6 = v14;
        a6[1] = v16;

        [v30 rangeAtIndex_];
        sub_1B4F685A4();
        if ((v18 & 1) == 0)
        {
          v19 = sub_1B4F680B4();
          v20 = MEMORY[0x1B8C81870](v19);
          v22 = v21;

          v23 = a7[1];
          *a7 = v20;
          a7[1] = v22;

          [v30 rangeAtIndex_];
          sub_1B4F685A4();
          if ((v24 & 1) == 0)
          {
            v25 = sub_1B4F680B4();
            v26 = MEMORY[0x1B8C81870](v25);
            v28 = v27;

            v29 = a8[1];
            *a8 = v26;
            a8[1] = v28;

            *a3 = 0;
          }
        }
      }
    }
  }
}

void sub_1B4F112F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

void __swiftcall SystemVersion.init(prefix:letter:suffix:)(SeymourClient::SystemVersion *__return_ptr retstr, Swift::String prefix, Swift::String letter, Swift::String suffix)
{
  object = suffix._object;
  countAndFlagsBits = suffix._countAndFlagsBits;
  v6 = letter._object;
  v7 = letter._countAndFlagsBits;
  retstr->prefix = prefix;
  retstr->letter = letter;
  retstr->suffix = suffix;

  MEMORY[0x1B8C818C0](v7, v6);

  MEMORY[0x1B8C818C0](countAndFlagsBits, object);

  retstr->rawValue = prefix;
}

uint64_t sub_1B4F11420@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t SystemVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B4F689C4();

  MEMORY[0x1B8C818C0](v7, v8);
  MEMORY[0x1B8C818C0](0x3A7869666572500ALL, 0xE900000000000020);
  MEMORY[0x1B8C818C0](v1, v2);
  MEMORY[0x1B8C818C0](0x3A72657474654C0ALL, 0xE900000000000020);
  MEMORY[0x1B8C818C0](v3, v4);
  MEMORY[0x1B8C818C0](0x3A7869666675530ALL, 0xE900000000000020);
  MEMORY[0x1B8C818C0](v5, v6);
  return 0x203A776152;
}

uint64_t static SystemVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1B4F68D54()) && (v2 == v4 && v3 == v5 || (sub_1B4F68D54()) && v9 == v7 && v10 == v6)
  {
    return 0;
  }

  return sub_1B4F68D54();
}

uint64_t sub_1B4F1168C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1B4F68D54()) && (v2 == v4 && v3 == v5 || (sub_1B4F68D54()) && v9 == v7 && v10 == v6)
  {
    return 0;
  }

  return sub_1B4F68D54();
}

BOOL sub_1B4F117C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1B4F10AE0(v7, v8);
}

BOOL sub_1B4F1180C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1B4F10BB4(v7, v8);
}

uint64_t sub_1B4F11858(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1B4F10C88(v7, v8) & 1;
}

uint64_t sub_1B4F118A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1B4F68D54();
  }
}

id sub_1B4F118D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B4F67F64();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1B4F119B0()
{
  result = qword_1EB8F6F30;
  if (!qword_1EB8F6F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6F28, &qword_1B4F7B3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F30);
  }

  return result;
}

uint64_t sub_1B4F11A24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1B4F11AB8()
{
  result = qword_1EB8F6F38;
  if (!qword_1EB8F6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F38);
  }

  return result;
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

uint64_t sub_1B4F11B20(uint64_t a1, int a2)
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

uint64_t sub_1B4F11B68(uint64_t result, int a2, int a3)
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

uint64_t MediaMomentStarted.mediaMoment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64D34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaMomentStarted.init(mediaMoment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MediaMomentStarted()
{
  result = qword_1EB8F6F40;
  if (!qword_1EB8F6F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultiUserWorkoutUpdated.init(multiUserWorkoutUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F665B4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MultiUserWorkoutUpdated.multiUserWorkoutUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F665B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MultiUserWorkoutUpdated()
{
  result = qword_1EB8F6F50;
  if (!qword_1EB8F6F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F11E78()
{
  result = sub_1B4F665B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4F11EF8()
{
  result = qword_1EB8F6F60;
  if (!qword_1EB8F6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F60);
  }

  return result;
}

uint64_t static AssetBundleProgress.+ infix(_:_:)()
{
  v0 = _s13SeymourClient26AssetBundleProgressUpdatedV18debounceIdentifierSSvg_0();
  v2 = v1;
  v3 = sub_1B4F660D4();
  v4 = sub_1B4F65194();
  v10 = __OFADD__(v3, v4);
  v11 = v3 + v4;
  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = sub_1B4F660E4();
  v4 = sub_1B4F651A4();
  v13 = v12 + v4;
  if (__OFADD__(v12, v4))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE35BD0](v4, v5, v6, v7, v8, v9);
  }

  v8 = sub_1B4F66114();
  v9 = v14;
  v4 = v0;
  v5 = v2;
  v6 = v11;
  v7 = v13;

  return MEMORY[0x1EEE35BD0](v4, v5, v6, v7, v8, v9);
}

uint64_t URL.init(multiUserActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v23 - v6;
  v24 = sub_1B4F64724();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64714();
  sub_1B4F646F4();
  MEMORY[0x1B8C7DF90](0x65735569746C756DLL, 0xE900000000000072);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F68, &unk_1B4F7B6E0);
  v13 = *(sub_1B4F646A4() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1B4F7B6D0;
  sub_1B4F65ED4();
  sub_1B4F64674();

  sub_1B4F65EE4();
  sub_1B4F64674();

  v26 = sub_1B4F65EC4();
  sub_1B4F68D04();
  sub_1B4F64674();

  sub_1B4F646C4();
  sub_1B4F64704();
  sub_1B4F647D4();
  v16 = sub_1B4F65EF4();
  (*(*(v16 - 8) + 8))(a1, v16);
  (*(v8 + 8))(v12, v24);
  v17 = sub_1B4F64824();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17))
  {
    sub_1B4E97050(v7);
    v19 = 1;
    v20 = v25;
  }

  else
  {
    v21 = v25;
    (*(v18 + 32))(v25, v7, v17);
    v19 = 0;
    v20 = v21;
  }

  return (*(v18 + 56))(v20, v19, 1, v17);
}

uint64_t static Platform.internalOnlyFailure<A>(message:fallback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter() & 1) == 0 || (sub_1B4DF7094(88, 0))
    {
      return a3();
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

uint64_t static Platform.internalOnlyFailure(message:fallback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = MobileGestalt_get_current_device();
  if (!v4)
  {
    __break(1u);
LABEL_8:
    result = sub_1B4F68B24();
    __break(1u);
    return result;
  }

  v5 = v4;
  MobileGestalt_get_deviceClassNumber();

  result = Platform.internalInstall.getter();
  if (result)
  {
    result = sub_1B4DF7094(88, 0);
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t UnitPreferencesUpdated.unitPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65C34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnitPreferencesUpdated.init(unitPreferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65C34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for UnitPreferencesUpdated()
{
  result = qword_1EB8F6F70;
  if (!qword_1EB8F6F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F12760()
{
  result = sub_1B4F65C34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *EstimatedCaloriesClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *EstimatedCaloriesClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t EstimatedCaloriesClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EstimatedCaloriesClient.queryEstimatedCalories(activityType:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84340;
  v6._object = 0x80000001B4F84370;
  v6._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 309;
  v13 = a1;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65EA4();
  return v10(&v14, &v13, MEMORY[0x1E69E6810], v11, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v8);
}

uint64_t EstimatedCaloriesClient.queryEstimatedCalories()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84340;
  v4._object = 0x80000001B4F843A0;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 310;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F80, &qword_1B4F7B760);
  v10 = sub_1B4F1326C();
  v11 = sub_1B4F132F0();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t EstimatedCaloriesClient.lookupEstimatedCalories(activityType:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84340;
  v6._object = 0x80000001B4F843C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 311;
  v13 = a1;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65EA4();
  return v10(&v14, &v13, MEMORY[0x1E69E6810], v11, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v8);
}

uint64_t EstimatedCaloriesClient.generateEstimatedCalories()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84340;
  v4._object = 0x80000001B4F843F0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 312;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F12DE8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84340;
  v6._object = 0x80000001B4F84370;
  v6._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 309;
  v13 = a1;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65EA4();
  return v10(&v14, &v13, MEMORY[0x1E69E6810], v11, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v8);
}

uint64_t sub_1B4F12F1C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84340;
  v4._object = 0x80000001B4F843A0;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 310;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F80, &qword_1B4F7B760);
  v10 = sub_1B4F1326C();
  v11 = sub_1B4F132F0();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F1304C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84340;
  v6._object = 0x80000001B4F843C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 311;
  v13 = a1;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65EA4();
  return v10(&v14, &v13, MEMORY[0x1E69E6810], v11, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v8);
}

uint64_t sub_1B4F13180()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84340;
  v4._object = 0x80000001B4F843F0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 312;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

unint64_t sub_1B4F1326C()
{
  result = qword_1EB8F6F88;
  if (!qword_1EB8F6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6F80, &qword_1B4F7B760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F88);
  }

  return result;
}

unint64_t sub_1B4F132F0()
{
  result = qword_1EB8F6F90;
  if (!qword_1EB8F6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6F80, &qword_1B4F7B760);
    sub_1B4F13374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F90);
  }

  return result;
}

unint64_t sub_1B4F13374()
{
  result = qword_1EB8F6F98;
  if (!qword_1EB8F6F98)
  {
    sub_1B4F65EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F98);
  }

  return result;
}

uint64_t CountdownIntent.applyingTimestampOffset(_:)()
{
  sub_1B4F65AB4();

  return sub_1B4F65AC4();
}

uint64_t sub_1B4F134BC()
{
  sub_1B4F65AB4();

  return sub_1B4F65AC4();
}

uint64_t Trainer.metadata()()
{
  v0 = sub_1B4F64824();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C0, &qword_1B4F711A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  sub_1B4F67914();
  sub_1B4F678D4();
  sub_1B4F678F4();
  sub_1B4F67944();
  sub_1B4F678E4();
  sub_1B4F67904();
  return sub_1B4F65BD4();
}

uint64_t RemoteParticipantPasswordRequired.init(challenge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F674B4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoteParticipantPasswordRequired.challenge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F674B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteParticipantPasswordRequired()
{
  result = qword_1EDB6E280;
  if (!qword_1EDB6E280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F13818()
{
  result = sub_1B4F674B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t SessionStatus.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B4F1389C()
{
  result = qword_1EB8F6FA0;
  if (!qword_1EB8F6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6FA0);
  }

  return result;
}

uint64_t sub_1B4F138F0()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82760](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F13964()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82760](v1);
  return sub_1B4F68EC4();
}

uint64_t *sub_1B4F139A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B4F13A34()
{
  v0 = *MEMORY[0x1E696C788];
  result = sub_1B4F67F74();
  qword_1EB8F6FA8 = result;
  unk_1EB8F6FB0 = v2;
  return result;
}

uint64_t static HealthDataConstants.moveModeWorkoutProperty.getter()
{
  if (qword_1EB8F3D50 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB8F6FA8;

  return v0;
}

uint64_t sub_1B4F13B20()
{
  v0 = sub_1B4F66474();
  __swift_allocate_value_buffer(v0, qword_1EB8F6FB8);
  v1 = __swift_project_value_buffer(v0, qword_1EB8F6FB8);
  v2 = *MEMORY[0x1E69CC258];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static TransportCompression.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8F3D58 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F66474();
  v3 = __swift_project_value_buffer(v2, qword_1EB8F6FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B4F13C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6FD0, &qword_1B4F7B998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F13CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6FD0, &qword_1B4F7B998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4F13D54()
{
  result = qword_1EB8F7600;
  if (!qword_1EB8F7600)
  {
    sub_1B4F658F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7600);
  }

  return result;
}

void (*sub_1B4F13DD8(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t (*a4)(void, void (*)(void, void), unint64_t)))(char *, uint64_t)
{
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6FD0, &qword_1B4F7B998);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_1B4F66474();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v27 - v21;
  sub_1B4F13C7C(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B4F13CEC(v12);
    sub_1B4DD3014(a2, a3);
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    (*(v14 + 16))(v18, v22, v13);
    if ((*(v14 + 88))(v18, v13) == *MEMORY[0x1E69CC258])
    {
      v23 = v28(0, a2, a3);
      if (!v4)
      {
        a2 = v23;
      }

      (*(v14 + 8))(v22, v13);
    }

    else
    {
      v24 = sub_1B4F658F4();
      sub_1B4F13D54();
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69CB4E8], v24);
      swift_willThrow();
      a2 = *(v14 + 8);
      a2(v22, v13);
      a2(v18, v13);
    }
  }

  return a2;
}

SeymourClient::TransportEvent_optional __swiftcall TransportEvent.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 799)
  {
    if (rawValue > 400)
    {
      if (rawValue <= 499)
      {
        if (rawValue <= 402)
        {
          if (rawValue == 401)
          {
            *v1 = 11;
          }

          else
          {
            *v1 = 12;
          }

          return rawValue;
        }

        switch(rawValue)
        {
          case 403:
            *v1 = 13;
            return rawValue;
          case 404:
            *v1 = 14;
            return rawValue;
          case 405:
            *v1 = 15;
            return rawValue;
        }
      }

      else if (rawValue > 700)
      {
        switch(rawValue)
        {
          case 701:
            *v1 = 19;
            return rawValue;
          case 702:
            *v1 = 20;
            return rawValue;
          case 703:
            *v1 = 21;
            return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 500:
            *v1 = 16;
            return rawValue;
          case 600:
            *v1 = 17;
            return rawValue;
          case 601:
            *v1 = 18;
            return rawValue;
        }
      }
    }

    else if (rawValue <= 200)
    {
      if (rawValue <= 99)
      {
        if (!rawValue)
        {
          *v1 = 0;
          return rawValue;
        }

        if (rawValue == 1)
        {
          *v1 = 1;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 100:
            *v1 = 2;
            return rawValue;
          case 101:
            *v1 = 3;
            return rawValue;
          case 200:
            *v1 = 4;
            return rawValue;
        }
      }
    }

    else if (rawValue > 301)
    {
      switch(rawValue)
      {
        case 302:
          *v1 = 8;
          return rawValue;
        case 303:
          *v1 = 9;
          return rawValue;
        case 400:
          *v1 = 10;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 201:
          *v1 = 5;
          return rawValue;
        case 300:
          *v1 = 6;
          return rawValue;
        case 301:
          *v1 = 7;
          return rawValue;
      }
    }

LABEL_116:
    *v1 = 57;
    return rawValue;
  }

  if (rawValue > 1102)
  {
    if (rawValue <= 1201)
    {
      if (rawValue > 1107)
      {
        if (rawValue > 1199)
        {
          if (rawValue == 1200)
          {
            *v1 = 46;
          }

          else
          {
            *v1 = 47;
          }

          return rawValue;
        }

        if (rawValue == 1108)
        {
          *v1 = 44;
          return rawValue;
        }

        if (rawValue == 1109)
        {
          *v1 = 45;
          return rawValue;
        }
      }

      else
      {
        if (rawValue <= 1104)
        {
          if (rawValue == 1103)
          {
            *v1 = 40;
          }

          else
          {
            *v1 = 41;
          }

          return rawValue;
        }

        if (rawValue == 1105)
        {
          *v1 = 42;
          return rawValue;
        }

        if (rawValue == 1106)
        {
          *v1 = 43;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 1499)
    {
      if (rawValue > 1400)
      {
        if (rawValue == 1401)
        {
          *v1 = 50;
          return rawValue;
        }

        if (rawValue == 1402)
        {
          *v1 = 51;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 1202)
        {
          *v1 = 48;
          return rawValue;
        }

        if (rawValue == 1300)
        {
          *v1 = 49;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 1600)
    {
      if (rawValue == 1500)
      {
        *v1 = 52;
        return rawValue;
      }

      if (rawValue == 1600)
      {
        *v1 = 53;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 1601:
          *v1 = 54;
          return rawValue;
        case 1602:
          *v1 = 55;
          return rawValue;
        case 1700:
          *v1 = 56;
          return rawValue;
      }
    }

    goto LABEL_116;
  }

  if (rawValue > 999)
  {
    if (rawValue > 1100)
    {
      if (rawValue == 1101)
      {
        *v1 = 38;
      }

      else
      {
        *v1 = 39;
      }

      return rawValue;
    }

    if (rawValue == 1000)
    {
      *v1 = 36;
      return rawValue;
    }

    if (rawValue == 1100)
    {
      *v1 = 37;
      return rawValue;
    }

    goto LABEL_116;
  }

  switch(rawValue)
  {
    case 800:
      *v1 = 22;
      break;
    case 801:
      *v1 = 23;
      break;
    case 802:
      *v1 = 24;
      break;
    case 803:
      *v1 = 25;
      break;
    case 804:
      *v1 = 26;
      break;
    case 805:
      *v1 = 27;
      break;
    case 806:
      *v1 = 28;
      break;
    case 900:
      *v1 = 29;
      break;
    case 901:
      *v1 = 30;
      break;
    case 902:
      *v1 = 31;
      break;
    case 903:
      *v1 = 32;
      break;
    case 904:
      *v1 = 33;
      break;
    case 905:
      *v1 = 34;
      break;
    case 906:
      *v1 = 35;
      break;
    default:
      goto LABEL_116;
  }

  return rawValue;
}

uint64_t sub_1B4F146A0()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F7BBB8[v1]);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F14728()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F7BBB8[v1]);
  return sub_1B4F68EC4();
}

uint64_t getEnumTagSinglePayload for TransportEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4F148B4()
{
  result = qword_1EB8F6FD8;
  if (!qword_1EB8F6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6FD8);
  }

  return result;
}

uint64_t PaceMetricUpdated.paceMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64B04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PaceMetricUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PaceMetricUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for PaceMetricUpdated()
{
  result = qword_1EB8F6FE0;
  if (!qword_1EB8F6FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PaceMetricUpdated.init(paceMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F64B04();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PaceMetricUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4F14AB8()
{
  result = sub_1B4F64B04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MultiUserParticipantUpdated()
{
  result = qword_1EB8F6FF0;
  if (!qword_1EB8F6FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F14F24()
{
  result = sub_1B4F66E54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t XPCError.hashValue.getter(char a1)
{
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](a1 & 1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F15014()
{
  result = qword_1EB8F7000;
  if (!qword_1EB8F7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7000);
  }

  return result;
}

uint64_t RemoteDisplayConnectionUpdated.connection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66914();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteDisplayConnectionUpdated.init(connection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66914();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RemoteDisplayConnectionUpdated()
{
  result = qword_1EB8F7008;
  if (!qword_1EB8F7008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F151D0()
{
  result = sub_1B4F66914();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4F1523C(uint64_t a1)
{
  v34 = sub_1B4F64F74();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v34, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v32[1] = v1;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B4E259BC(0, v8, 0);
  v9 = v43;
  v10 = -1 << *(a1 + 32);
  v42 = a1 + 56;
  result = sub_1B4F688B4();
  v12 = result;
  v13 = 0;
  v37 = v3 + 32;
  v38 = v3 + 16;
  v33 = a1 + 64;
  v14 = v34;
  v35 = v8;
  v36 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v42 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    v39 = v13;
    v41 = *(a1 + 36);
    v17 = *(v3 + 72);
    (*(v3 + 16))(v7, *(a1 + 48) + v17 * v12, v14);
    v43 = v9;
    v18 = v14;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      v40 = v20 + 1;
      sub_1B4E259BC(v19 > 1, v20 + 1, 1);
      v21 = v40;
      v9 = v43;
    }

    *(v9 + 16) = v21;
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v40 = v9;
    v23 = v9 + v22 + v20 * v17;
    v24 = v3;
    result = (*(v3 + 32))(v23, v7, v18);
    v15 = 1 << *(v36 + 32);
    if (v12 >= v15)
    {
      goto LABEL_23;
    }

    v25 = *(v42 + 8 * v16);
    if ((v25 & (1 << v12)) == 0)
    {
      goto LABEL_24;
    }

    v14 = v18;
    a1 = v36;
    if (v41 != *(v36 + 36))
    {
      goto LABEL_25;
    }

    v26 = v25 & (-2 << (v12 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v16 << 6;
      v28 = v16 + 1;
      v29 = (v33 + 8 * v16);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1B4DF3104(v12, v41, 0);
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_19;
        }
      }

      result = sub_1B4DF3104(v12, v41, 0);
LABEL_19:
      v14 = v34;
    }

    v13 = v39 + 1;
    v12 = v15;
    v3 = v24;
    v9 = v40;
    if (v39 + 1 == v35)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B4F15560(uint64_t a1)
{
  v38 = sub_1B4F64F74();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30 = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v7, 0);
    v41 = v42;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_1B4F688B4();
    v11 = result;
    v12 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v3;
    v34 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v15 = v37;
      v16 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v11, v38);
      v40 = sub_1B4F64F64();
      v18 = v17;
      result = (*(v3 + 8))(v15, v16);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B4E257A4((v20 > 1), v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v34;
      v23 = *(v34 + 8 * v14);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v27 = (v31 + 8 * v14);
        v3 = v33;
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1B4DF3104(v11, v39, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v32)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t Set<>.themes()(uint64_t a1)
{
  v36 = sub_1B4F663F4();
  v2 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36, v3);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v4;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v33[0] = v4 + 8;
  v33[1] = v4 + 16;
  v37 = a1;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v9)
  {
    v38 = v13;
LABEL_11:
    v15 = v36;
    v16 = v34;
    v17 = v35;
    (*(v35 + 16))(v34, *(v37 + 48) + *(v35 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v36);
    v18 = sub_1B4F663E4();
    v19 = sub_1B4F1523C(v18);

    result = (*(v17 + 8))(v16, v15);
    v20 = *(v19 + 16);
    v13 = v38;
    v21 = v38[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v22 > v13[3] >> 1)
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v13 = sub_1B4E78BA0(isUniquelyReferenced_nonNull_native, v24, 1, v13);
    }

    v9 &= v9 - 1;
    if (*(v19 + 16))
    {
      v25 = (v13[3] >> 1) - v13[2];
      result = sub_1B4F64F74();
      v26 = *(result - 8);
      if (v25 < v20)
      {
        goto LABEL_27;
      }

      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = *(v26 + 72);
      swift_arrayInitWithCopy();

      if (v20)
      {
        v29 = v13[2];
        v30 = __OFADD__(v29, v20);
        v31 = v29 + v20;
        if (v30)
        {
          goto LABEL_28;
        }

        v13[2] = v31;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v32 = sub_1B4DF2CBC(v13);

      return v32;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v38 = v13;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

char *Set<>.themeIdentifiers()(uint64_t a1)
{
  v31 = sub_1B4F663F4();
  v2 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v3);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v28[0] = v4 + 8;
  v28[1] = v4 + 16;
  v32 = a1;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v9)
  {
    v33 = v13;
LABEL_11:
    v15 = v31;
    v16 = v29;
    v17 = v30;
    (*(v30 + 16))(v29, *(v32 + 48) + *(v30 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v31);
    v18 = sub_1B4F663E4();
    v19 = sub_1B4F15560(v18);

    result = (*(v17 + 8))(v16, v15);
    v20 = *(v19 + 16);
    v13 = v33;
    v21 = *(v33 + 16);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v22 > *(v13 + 24) >> 1)
    {
      if (v21 <= v22)
      {
        v23 = v21 + v20;
      }

      else
      {
        v23 = v21;
      }

      result = sub_1B4E7884C(result, v23, 1, v13);
      v13 = result;
    }

    v9 &= v9 - 1;
    if (*(v19 + 16))
    {
      if ((*(v13 + 24) >> 1) - *(v13 + 16) < v20)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v24 = *(v13 + 16);
        v25 = __OFADD__(v24, v20);
        v26 = v24 + v20;
        if (v25)
        {
          goto LABEL_28;
        }

        *(v13 + 16) = v26;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v27 = sub_1B4DF2208(v13);

      return v27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v33 = v13;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t MultiUserSessionIdentities.applyingTimestampOffset(_:)()
{
  sub_1B4F66E64();

  return sub_1B4F66E74();
}

uint64_t sub_1B4F15E44()
{
  sub_1B4F66E64();

  return sub_1B4F66E74();
}

uint64_t sub_1B4F15EBC()
{
  v0 = sub_1B4F67134();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4F65F84();
  __swift_allocate_value_buffer(v6, qword_1EB8F7018);
  __swift_project_value_buffer(v6, qword_1EB8F7018);
  (*(v1 + 104))(v5, *MEMORY[0x1E69CCE50], v0);
  return sub_1B4F65F64();
}

uint64_t static RemoteParticipant.local.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8F3D60 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F65F84();
  v3 = __swift_project_value_buffer(v2, qword_1EB8F7018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t dispatch thunk of FetchedResourceGating.fetch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for CatalogUpdated(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t ContentAvailabilityUpdated.init(availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ContentAvailabilityUpdated.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *SyncClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));

  result = swift_allocObject();
  result[2] = v10;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  result[5] = a1;
  result[6] = a2;
  return result;
}

void *SyncClient.__allocating_init(connection:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B4F16DD0(a1, a4, a5, v5, ObjectType, a2, a3);
}

uint64_t SyncClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SyncClient.fetchRemoteSyncables(forced:)(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 257;
  v7 = a1;
  return (*(v4 + 16))(&v8, &v7, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v4);
}

uint64_t SyncClient.fetchRemoteSyncableCounts(for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 262;
  v12 = a1;
  v6 = *(v4 + 32);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v8 = sub_1B4F658E4();
  v9 = sub_1B4F16E2C();
  v10 = sub_1B4F16EB0();
  return v6(&v13, &v12, v7, v8, v9, v10, MEMORY[0x1E69CB4D0], MEMORY[0x1E69CB4D8], ObjectType, v4);
}

uint64_t sub_1B4F167A8(__int16 a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v7 = a1;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

Swift::Void __swiftcall SyncClient.startSync()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = 36;
  (*(v2 + 40))(&v4, ObjectType, v2);
}

uint64_t sub_1B4F168A0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v13 = a1;
  return (*(v10 + 24))(&v13, a2, a3, a4, ObjectType, v10);
}

uint64_t sub_1B4F1693C(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = a2;
  v13 = a1;
  v8 = *(v6 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v10 = sub_1B4F16E2C();
  v11 = sub_1B4F16EB0();
  return v8(&v14, &v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F169F8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  v8 = 257;
  v7 = a1;
  return (*(v3 + 16))(&v8, &v7, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v3);
}

uint64_t sub_1B4F16A88(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  v13 = 262;
  v12 = a1;
  v6 = *(v3 + 32);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v8 = sub_1B4F658E4();
  v9 = sub_1B4F16E2C();
  v10 = sub_1B4F16EB0();
  return v6(&v13, &v12, v7, v8, v9, v10, MEMORY[0x1E69CB4D0], MEMORY[0x1E69CB4D8], ObjectType, v3);
}

uint64_t sub_1B4F16B88(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  v12 = 265;
  v11 = a1;
  v6 = *(v3 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v8 = sub_1B4F16E2C();
  v9 = sub_1B4F16EB0();
  return v6(&v12, &v11, v7, v8, v9, ObjectType, v3);
}

uint64_t sub_1B4F16C54(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *(*v3 + 24);
  v6 = *(*v3 + 16);
  ObjectType = swift_getObjectType();
  v9 = a3;
  return (*(v5 + 8))(&v9, ObjectType, v5);
}

uint64_t sub_1B4F16CE0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*v6 + 24);
  v12 = *(*v6 + 16);
  ObjectType = swift_getObjectType();
  v15 = a3;
  return (*(v11 + 24))(&v15, a4, a5, a6, ObjectType, v11);
}

uint64_t sub_1B4F16D74()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  v5 = 36;
  return (*(v1 + 40))(&v5, ObjectType, v1);
}

void *sub_1B4F16DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a6;
  result[4] = a7;
  result[5] = a2;
  result[6] = a3;
  return result;
}

unint64_t sub_1B4F16E2C()
{
  result = qword_1EDB6DAC8;
  if (!qword_1EDB6DAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7030, &qword_1B4F7C000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAC8);
  }

  return result;
}

unint64_t sub_1B4F16EB0()
{
  result = qword_1EDB6DAC0;
  if (!qword_1EDB6DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7030, &qword_1B4F7C000);
    sub_1B4F16F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAC0);
  }

  return result;
}

unint64_t sub_1B4F16F34()
{
  result = qword_1EDB70010;
  if (!qword_1EDB70010)
  {
    sub_1B4F67AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70010);
  }

  return result;
}

uint64_t SessionUpdated.init(sessionUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SessionUpdated.sessionUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65504();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SessionUpdated()
{
  result = qword_1EDB70DD8;
  if (!qword_1EDB70DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionDeactivated.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SessionDeactivated.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F678C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SessionDeactivated()
{
  result = qword_1EDB70B80;
  if (!qword_1EDB70B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackUpdated.playback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67A34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaybackUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaybackUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for PlaybackUpdated()
{
  result = qword_1EDB6EF10;
  if (!qword_1EDB6EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackUpdated.init(playback:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F67A34();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PlaybackUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t DistributedSessionActivated.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F678C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DistributedSessionActivated.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for DistributedSessionActivated()
{
  result = qword_1EDB6E630;
  if (!qword_1EDB6E630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static EngagementRequestProcessor.isAppInstalledRequest(_:)(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v1 = v15[0];
  v11 = sub_1B4F661A4();
  sub_1B4F68954();
  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v2 = sub_1B4DF4440(v14);
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B4DC4F2C(*(v1 + 56) + 32 * v2, v15);
  sub_1B4DF4850(v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    return v9 & 1;
  }

  v4 = v11;
  v12 = sub_1B4F661C4();
  v13 = v5;
  sub_1B4F68954();
  if (!*(v4 + 16) || (v6 = sub_1B4DF4440(v14), (v7 & 1) == 0))
  {
LABEL_11:

    sub_1B4DF4850(v14);
    goto LABEL_12;
  }

  sub_1B4DC4F2C(*(v4 + 56) + 32 * v6, v15);
  sub_1B4DF4850(v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v12 == sub_1B4F661D4() && v13 == v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_1B4F68D54();
  }

  return v9 & 1;
}

uint64_t static EngagementRequestProcessor.validateEngagementRequest(_:)(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  if (!swift_dynamicCast())
  {
    v7 = sub_1B4F65AF4();
    sub_1B4F17B4C();
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69CB5D0], v7);
    *(swift_allocObject() + 16) = v8;
    return sub_1B4F67604();
  }

  v1 = v20[0];
  v17 = sub_1B4F66194();
  v18 = v2;
  sub_1B4F68954();
  if (!*(v1 + 16) || (v3 = sub_1B4DF4440(v19), (v4 & 1) == 0))
  {

    sub_1B4DF4850(v19);
    goto LABEL_9;
  }

  sub_1B4DC4F2C(*(v1 + 56) + 32 * v3, v20);
  sub_1B4DF4850(v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v10 = sub_1B4F65AF4();
    sub_1B4F17B4C();
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69CB5E0], v10);
    *(swift_allocObject() + 16) = v11;
    return sub_1B4F67604();
  }

  v5 = sub_1B4F67FF4();
  if (v5 >= sub_1B4F661B4())
  {

    v14 = sub_1B4F65AF4();
    sub_1B4F17B4C();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69CB5C8], v14);
    *(swift_allocObject() + 16) = v15;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v17;
    *(v6 + 24) = v18;
  }

  return sub_1B4F67604();
}

unint64_t sub_1B4F17B4C()
{
  result = qword_1EB8F7038;
  if (!qword_1EB8F7038)
  {
    sub_1B4F65AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7038);
  }

  return result;
}

uint64_t sub_1B4F17BA4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void HealthKitSource.init(_:)(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_1B4F67F74();

  sub_1B4F65B14();
}

uint64_t HealthWorkoutSession.SessionState.init(state:elapsedTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  *(a2 + 8) = a3;
  return result;
}

NSObject *HealthWorkoutSession.init(session:healthStore:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v164 = a2;
  v169 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v151 = &v144 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v149 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v144 - v14;
  v153 = sub_1B4F65804();
  v155 = *(v153 - 8);
  v15 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v153, v16);
  v150 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v148 = &v144 - v20;
  v21 = sub_1B4F65CA4();
  v146 = *(v21 - 8);
  v147 = v21;
  v22 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v30 = &v144 - v29;
  v31 = sub_1B4F678C4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workout;
  v38 = sub_1B4F679A4();
  v39 = *(*(v38 - 8) + 56);
  v160 = v37;
  v39(&v37[v3], 1, 1, v38);
  v40 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  v41 = sub_1B4F67B64();
  v159 = v40;
  *&v40[v3] = v41;
  v42 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  v43 = sub_1B4F67B64();
  v158 = v42;
  *&v42[v3] = v43;
  v44 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  v45 = sub_1B4F67B64();
  v157 = v44;
  *(v3 + v44) = v45;
  v46 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  v47 = sub_1B4F67B64();
  v156 = v46;
  *(v3 + v46) = v47;
  sub_1B4DD8804(0, &unk_1EB8F70A0, 0x1E696C5A8);
  v163 = v32;
  v48 = v32;
  v49 = v169;
  (*(v48 + 16))(v36, v169, v31);
  v50 = v161;
  v51 = sub_1B4E4505C(v36);
  if (!v50)
  {
    v67 = v51;
    v161 = v30;
    v144 = v25;
    v145 = v3;
    v154 = v31;
    v68 = v164[7];
    __swift_project_boxed_opaque_existential_1(v164, v164[3]);
    v69 = *(v68 + 16);
    v70 = v67;
    v78 = v69();

    v79 = v78;
    v80 = [v79 associatedWorkoutBuilder];
    v81 = v164;
    v82 = v164[3];
    v83 = v164[7];
    __swift_project_boxed_opaque_existential_1(v164, v82);
    v84 = *(v83 + 24);
    v160 = v70;
    v85 = v84(v70, v82, v83);
    [v80 setDataSource_];

    v86 = v145;
    v159 = v79;
    *(v145 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession) = v79;
    *(v86 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder) = v80;
    v158 = v80;
    v87 = sub_1B4F676B4();
    v88 = (v86 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier);
    *v88 = v87;
    v88[1] = v89;
    v90 = v81[3];
    v91 = v81[5];
    __swift_project_boxed_opaque_existential_1(v81, v90);
    v92 = (*(v91 + 56))(v90, v91);
    v157 = 0;
    v93 = v92 & 1;
    v94 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70C8, &unk_1B4F7C1E0);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000029;
    v161 = (inited + 32);
    *(inited + 16) = xmmword_1B4F7C190;
    *(inited + 40) = 0x80000001B4F82480;
    v96 = v148;
    sub_1B4F67734();
    v97 = sub_1B4F655E4();
    v99 = v98;
    v100 = v94;
    v101 = v155 + 8;
    v156 = *(v155 + 8);
    v156(v96, v100);
    v102 = MEMORY[0x1E69E6158];
    *(inited + 48) = v97;
    *(inited + 56) = v99;
    *(inited + 72) = v102;
    *(inited + 80) = 0xD000000000000022;
    *(inited + 88) = 0x80000001B4F82450;
    *(inited + 96) = sub_1B4F676B4();
    *(inited + 104) = v103;
    *(inited + 120) = v102;
    *(inited + 128) = 0xD00000000000001ALL;
    *(inited + 136) = 0x80000001B4F84440;
    v104 = sub_1B4F65CD4();
    *(inited + 168) = v102;
    *(inited + 144) = v104;
    *(inited + 152) = v105;
    if (qword_1EB8F3D50 != -1)
    {
      swift_once();
    }

    v106 = unk_1EB8F6FB0;
    *(inited + 176) = qword_1EB8F6FA8;
    *(inited + 184) = v106;
    v155 = v101;
    if (v93)
    {
      v107 = 2;
    }

    else
    {
      v107 = 1;
    }

    v108 = MEMORY[0x1E69E6530];
    *(inited + 192) = v107;
    *(inited + 216) = v108;
    *(inited + 224) = 0xD00000000000002BLL;
    *(inited + 232) = 0x80000001B4F84460;

    sub_1B4F67794();
    v109 = v152;
    v110 = sub_1B4F65BC4();
    v111 = *(v110 - 8);
    v112 = *(v111 + 48);
    if (v112(v109, 1, v110) == 1)
    {
      sub_1B4DD2BC4(v109, &qword_1EB8F4098, &unk_1B4F78910);
      *(inited + 240) = 0u;
      *(inited + 256) = 0u;
    }

    else
    {
      v113 = sub_1B4F65BB4();
      *(inited + 264) = MEMORY[0x1E69E6158];
      *(inited + 240) = v113;
      *(inited + 248) = v114;
      (*(v111 + 8))(v109, v110);
    }

    *(inited + 272) = 0xD00000000000002CLL;
    *(inited + 280) = 0x80000001B4F84490;
    v115 = v149;
    sub_1B4F67794();
    if (v112(v115, 1, v110) == 1)
    {
      sub_1B4DD2BC4(v115, &qword_1EB8F4098, &unk_1B4F78910);
      v116 = v150;
      v117 = v151;
      v118 = v153;
    }

    else
    {
      v119 = sub_1B4F65BA4();
      v120 = v115;
      v122 = v121;
      (*(v111 + 8))(v120, v110);
      v116 = v150;
      v117 = v151;
      v118 = v153;
      if (v122)
      {
        *(inited + 312) = MEMORY[0x1E69E6158];
        *(inited + 288) = v119;
        *(inited + 296) = v122;
LABEL_23:
        v123 = *MEMORY[0x1E696BA30];
        *(inited + 320) = sub_1B4F67F74();
        *(inited + 328) = v124;
        *(inited + 360) = MEMORY[0x1E69E6370];
        *(inited + 336) = 1;
        v125 = *MEMORY[0x1E696BA28];
        *(inited + 368) = sub_1B4F67F74();
        *(inited + 376) = v126;
        sub_1B4F67734();
        v127 = sub_1B4F655E4();
        v128 = v116;
        v130 = v129;
        v156(v128, v118);
        *(inited + 408) = MEMORY[0x1E69E6158];
        *(inited + 384) = v127;
        *(inited + 392) = v130;
        v131 = sub_1B4E2BFE8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70D0, &qword_1B4F6CFF0);
        swift_arrayDestroy();
        v132 = v157;
        v133 = sub_1B4F18D5C(v131);
        v161 = v132;

        v134 = v145;
        *(v145 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_metadata) = v133;
        v166.receiver = v134;
        v166.super_class = ObjectType;
        v135 = objc_msgSendSuper2(&v166, sel_init);
        v136 = v159;
        [v159 setDelegate_];

        v137 = v158;
        [v158 setDelegate_];
        v138 = sub_1B4F68324();
        v139 = *(*(v138 - 8) + 56);
        v139(v117, 1, 1, v138);
        v140 = swift_allocObject();
        v140[2] = 0;
        v140[3] = 0;
        v140[4] = v135;
        v141 = v135;
        sub_1B4E4E620(0, 0, v117, &unk_1B4F7C1F8, v140);

        v139(v117, 1, 1, v138);
        v142 = swift_allocObject();
        v142[2] = 0;
        v142[3] = 0;
        v142[4] = v141;
        v56 = v141;
        sub_1B4E4E620(0, 0, v117, &unk_1B4F7C208, v142);

        v139(v117, 1, 1, v138);
        v143 = swift_allocObject();
        v143[2] = 0;
        v143[3] = 0;
        v143[4] = v56;
        sub_1B4E4E620(0, 0, v117, &unk_1B4F7C218, v143);

        (*(v163 + 8))(v169, v154);
        __swift_destroy_boxed_opaque_existential_1Tm(v164);
        return v56;
      }
    }

    *(inited + 288) = 0u;
    *(inited + 304) = 0u;
    goto LABEL_23;
  }

  v52 = v49;
  v161 = v50;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v53 = sub_1B4F67C54();
  __swift_project_value_buffer(v53, qword_1EDB6DF00);
  v54 = v161;
  v55 = v161;
  v56 = sub_1B4F67C34();
  v57 = sub_1B4F685E4();

  v58 = v52;
  if (os_log_type_enabled(v56, v57))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v154 = v31;
    v61 = v60;
    v165[0] = v60;
    *v59 = 136315138;
    swift_getErrorValue();
    v62 = MEMORY[0x1B8C826C0](v167, v168);
    v64 = sub_1B4DC4F88(v62, v63, v165);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_1B4DC2000, v56, v57, "HealthWorkoutSession - failed to make HKWorkoutConfiguration: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v65 = v61;
    v31 = v154;
    MEMORY[0x1B8C831D0](v65, -1, -1);
    v66 = v164;
    MEMORY[0x1B8C831D0](v59, -1, -1);
  }

  else
  {

    v66 = v164;
  }

  swift_willThrow();
  (*(v163 + 8))(v58, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  sub_1B4DD2BC4(v160 + v3, &qword_1EB8F4068, &qword_1B4F6A5C0);
  v71 = *&v159[v3];

  v72 = *&v158[v3];

  v73 = *&v157[v3];

  v74 = *(v156 + v3);

  v75 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v76 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v56;
}

uint64_t sub_1B4F18D5C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B4F25690(*(a1 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_1B4F25690(&v36, &v29);
    if (v30)
    {
      sub_1B4E2C940(&v29, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_1B4E2C940(v34, v31);
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {

        sub_1B4E27F34(v17 + 1, 1);
        v2 = v40;
      }

      else
      {
      }

      v18 = v32;
      v19 = *(v2 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v2 + 48) + 16 * v24) = v18;
      sub_1B4E2C940(v31, (*(v2 + 56) + 32 * v24));
      ++*(v2 + 16);
      v10 = v33;
    }

    else
    {

      sub_1B4DD2BC4(&v35, &unk_1EB8F72F0, &qword_1B4F7C4D0);
      v10 = &v29;
    }

    result = sub_1B4DD2BC4(v10, &unk_1EB8F7680, &qword_1B4F795D0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B4F19028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1B4F64FD4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E0, &qword_1B4F7C230);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E8, &qword_1B4F7C238);
  v4[11] = v12;
  v13 = *(v12 - 8);
  v4[12] = v13;
  v14 = *(v13 + 64) + 15;
  v4[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D8, &unk_1B4F7C4C0);
  v4[14] = v15;
  v16 = *(v15 - 8);
  v4[15] = v16;
  v17 = *(v16 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19264, 0, 0);
}

uint64_t sub_1B4F19264()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[17] = *(v0[2] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8);
  v5 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19360, v5, v4);
}

uint64_t sub_1B4F19360()
{
  v1 = v0[17];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  sub_1B4F67B44();
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1B4F193F8, 0, 0);
}

uint64_t sub_1B4F193F8()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  sub_1B4F68384();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1B4F194D4;
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[7];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1B4F194D4()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4F195D0, 0, 0);
}

uint64_t sub_1B4F195D0()
{
  v37 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    v5 = v0[10];
    v7 = v0[5];
    v6 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v3 + 32))(v0[6], v1, v2);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v14 = sub_1B4F67C54();
    __swift_project_value_buffer(v14, qword_1EDB6DFB0);
    (*(v13 + 16))(v10, v11, v12);
    v15 = sub_1B4F67C34();
    v16 = sub_1B4F685E4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[5];
    v19 = v0[6];
    v21 = v0[3];
    v20 = v0[4];
    if (v17)
    {
      v35 = v0[6];
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v22 = 136315138;
      sub_1B4F25648(&unk_1EB8F72E0, MEMORY[0x1E69CB198]);
      v23 = sub_1B4F68D04();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v18, v21);
      v27 = sub_1B4DC4F88(v23, v25, &v36);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B4DC2000, v15, v16, "HealthWorkoutSession: caloriesUpdated: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v22, -1, -1);

      v26(v35, v21);
    }

    else
    {

      v28 = *(v20 + 8);
      v28(v18, v21);
      v28(v19, v21);
    }

    v29 = *(MEMORY[0x1E69E8678] + 4);
    v30 = swift_task_alloc();
    v0[18] = v30;
    *v30 = v0;
    v30[1] = sub_1B4F194D4;
    v31 = v0[16];
    v32 = v0[14];
    v33 = v0[7];

    return MEMORY[0x1EEE6D9C8](v33, 0, 0, v32);
  }
}

uint64_t sub_1B4F19960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1B4F65B84();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7120, &qword_1B4F7C260);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7128, &qword_1B4F7C268);
  v4[11] = v12;
  v13 = *(v12 - 8);
  v4[12] = v13;
  v14 = *(v13 + 64) + 15;
  v4[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72C0, &unk_1B4F7C4B0);
  v4[14] = v15;
  v16 = *(v15 - 8);
  v4[15] = v16;
  v17 = *(v16 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19B9C, 0, 0);
}

uint64_t sub_1B4F19B9C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[17] = *(v0[2] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8);
  v5 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19C98, v5, v4);
}

uint64_t sub_1B4F19C98()
{
  v1 = v0[17];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  sub_1B4F67B44();
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1B4F19D30, 0, 0);
}

uint64_t sub_1B4F19D30()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  sub_1B4F68384();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1B4F19E0C;
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[7];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1B4F19E0C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4F19F08, 0, 0);
}

uint64_t sub_1B4F19F08()
{
  v37 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    v5 = v0[10];
    v7 = v0[5];
    v6 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v3 + 32))(v0[6], v1, v2);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v14 = sub_1B4F67C54();
    __swift_project_value_buffer(v14, qword_1EDB6DFB0);
    (*(v13 + 16))(v10, v11, v12);
    v15 = sub_1B4F67C34();
    v16 = sub_1B4F685E4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[5];
    v19 = v0[6];
    v21 = v0[3];
    v20 = v0[4];
    if (v17)
    {
      v35 = v0[6];
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v22 = 136315138;
      sub_1B4F25648(&qword_1EB8F72C8, MEMORY[0x1E69CB618]);
      v23 = sub_1B4F68D04();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v18, v21);
      v27 = sub_1B4DC4F88(v23, v25, &v36);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B4DC2000, v15, v16, "HealthWorkoutSession: heartRateUpdated: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v22, -1, -1);

      v26(v35, v21);
    }

    else
    {

      v28 = *(v20 + 8);
      v28(v18, v21);
      v28(v19, v21);
    }

    v29 = *(MEMORY[0x1E69E8678] + 4);
    v30 = swift_task_alloc();
    v0[18] = v30;
    *v30 = v0;
    v30[1] = sub_1B4F19E0C;
    v31 = v0[16];
    v32 = v0[14];
    v33 = v0[7];

    return MEMORY[0x1EEE6D9C8](v33, 0, 0, v32);
  }
}

uint64_t sub_1B4F1A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7140, &qword_1B4F7C278);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7148, &qword_1B4F7C280);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F72B0, &unk_1B4F7C4A0);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A434, 0, 0);
}

uint64_t sub_1B4F1A434()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[14] = *(v0[4] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0);
  v5 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A52C, v5, v4);
}

uint64_t sub_1B4F1A52C()
{
  v1 = v0[14];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  sub_1B4F67B44();
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A5C4, 0, 0);
}

uint64_t sub_1B4F1A5C4()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_1B4F68384();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1B4F1A6A0;
  v7 = v0[13];
  v8 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1B4F1A6A0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A79C, 0, 0);
}

uint64_t sub_1B4F1A79C()
{
  if ((~v0[2] & 0xFF00000000) != 0)
  {
    v5 = v0[3];
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B4F67C54();
    __swift_project_value_buffer(v6, qword_1EDB6DFB0);
    v7 = sub_1B4F67C34();
    v8 = sub_1B4F685E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      _os_log_impl(&dword_1B4DC2000, v7, v8, "HealthWorkoutSession: sessionStateUpdated: %f", v9, 0xCu);
      MEMORY[0x1B8C831D0](v9, -1, -1);
    }

    v10 = *(MEMORY[0x1E69E8678] + 4);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_1B4F1A6A0;
    v12 = v0[13];
    v13 = v0[11];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v13);
  }

  else
  {
    v1 = v0[10];
    v2 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }
}

id HealthWorkoutSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthWorkoutSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthWorkoutSession.makeCalorieStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E0, &qword_1B4F7C230);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1AC04, 0, 0);
}

uint64_t sub_1B4F1AC04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E8, &qword_1B4F7C238);
  v4[4] = sub_1B4E21468(&qword_1EB8F70F0, &qword_1EB8F70E8, &qword_1B4F7C238);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25750, v6, v5);
}

uint64_t HealthWorkoutSession.makeDistanceStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7100, &qword_1B4F7C248);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1AE24, 0, 0);
}

uint64_t sub_1B4F1AE24()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7108, &qword_1B4F7C250);
  v4[4] = sub_1B4E21468(&qword_1EB8F7110, &qword_1EB8F7108, &qword_1B4F7C250);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  sub_1B4E21468(&qword_1EB8F7118, &qword_1EB8F7078, &qword_1B4F7C1C0);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25750, v6, v5);
}

uint64_t HealthWorkoutSession.makeHeartRateStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7120, &qword_1B4F7C260);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B044, 0, 0);
}

uint64_t sub_1B4F1B044()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7128, &qword_1B4F7C268);
  v4[4] = sub_1B4E21468(&qword_1EB8F7130, &qword_1EB8F7128, &qword_1B4F7C268);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25750, v6, v5);
}

uint64_t HealthWorkoutSession.makeSessionStateStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7140, &qword_1B4F7C278);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B264, 0, 0);
}

uint64_t sub_1B4F1B264()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7148, &qword_1B4F7C280);
  v4[4] = sub_1B4E21468(&qword_1EB8F7150, &qword_1EB8F7148, &qword_1B4F7C280);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B3B8, v6, v5);
}

uint64_t sub_1B4F1B3B8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_1B4F67B44();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t HealthWorkoutSession.activate()()
{
  v1[34] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B518, 0, 0);
}

uint64_t sub_1B4F1B518()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v11 = *(v3 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  v5 = *(v3 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_metadata);
  v6 = sub_1B4F67EE4();
  v0[38] = v6;
  v0[2] = v0;
  v0[3] = sub_1B4F1B724;
  swift_continuation_init();
  v0[25] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  v8 = *(v2 + 32);
  v0[40] = v8;
  v0[41] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(boxed_opaque_existential_1, v1, v4);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B4ECD214;
  v0[21] = &block_descriptor_17;
  [v11 addMetadata:v6 completion:v0 + 18];
  v9 = *(v2 + 8);
  v0[42] = v9;
  v0[43] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(boxed_opaque_existential_1, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B4F1B724()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_1B4F1BC98;
  }

  else
  {
    v3 = sub_1B4F1B834;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1B834()
{
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v8 = *(v0 + 328);
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);

  v9 = *(v5 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1B4F1B9E0;
  swift_continuation_init();
  *(v0 + 264) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  sub_1B4F68294();
  v1(boxed_opaque_existential_1, v3, v4);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1B4ECD214;
  *(v0 + 232) = &block_descriptor_12;
  [v9 prepareWithCompletion_];
  v10(boxed_opaque_existential_1, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1B4F1B9E0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_1B4F1BD14;
  }

  else
  {
    v3 = sub_1B4F1BAF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1BAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1BB84;
  v2 = *(v0 + 272);

  return sub_1B4F1BD88(0);
}

uint64_t sub_1B4F1BB84()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 296);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B4F1BC98()
{
  v1 = v0[44];
  v2 = v0[38];
  swift_willThrow();

  v3 = v0[44];
  v4 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4F1BD14()
{
  v1 = v0[45];
  swift_willThrow();
  v2 = v0[45];
  v3 = v0[37];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4F1BD88(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1BE28, 0, 0);
}

uint64_t sub_1B4F1BE28()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 80);
  [*(v2 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder) elapsedTime];
  v5 = v4;
  sub_1B4F684B4();
  sub_1B4F67964();
  v6 = sub_1B4F679A4();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workout;
  swift_beginAccess();
  sub_1B4F255D8(v1, v2 + v7);
  swift_endAccess();
  *(v0 + 72) = *(v2 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  *(v0 + 40) = v3;
  *(v0 + 44) = 1;
  *(v0 + 48) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0);
  v9 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1BFD0, v9, v8);
}

uint64_t sub_1B4F1BFD0()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1B4F67B54();

  v3 = v0[1];

  return v3();
}

uint64_t HealthWorkoutSession.pause()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1C108, 0, 0);
}

uint64_t sub_1B4F1C108()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  v2 = [v1 state];
  if ((v2 - 3) < 4 || v2 == 1)
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB6DFB0);
    v5 = sub_1B4F67C34();
    v6 = sub_1B4F685E4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B4DC2000, v5, v6, "HealthWorkoutSession: The workout is not going.", v7, 2u);
    v8 = v7;
  }

  else
  {
    if (v2 == 2)
    {
      v13 = v0[20];
      v12 = v0[21];
      v14 = v0[19];
      v0[2] = v0;
      v0[3] = sub_1B4F1C4C0;
      swift_continuation_init();
      v0[17] = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F68294();
      (*(v13 + 32))(boxed_opaque_existential_1, v12, v14);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1B4ECD214;
      v0[13] = &block_descriptor_17_0;
      [v1 pauseWithCompletion_];
      (*(v13 + 8))(boxed_opaque_existential_1, v14);

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v16 = v0[18];
    v17 = sub_1B4F67C54();
    __swift_project_value_buffer(v17, qword_1EDB6DFB0);
    v18 = v16;
    v5 = sub_1B4F67C34();
    v19 = sub_1B4F685E4();
    v20 = os_log_type_enabled(v5, v19);
    v21 = v0[18];
    if (!v20)
    {

      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = [v1 state];

    _os_log_impl(&dword_1B4DC2000, v5, v19, "HealthWorkoutSession: Unknown HealthWorkoutSession state: %ld", v22, 0xCu);
    v8 = v22;
  }

  MEMORY[0x1B8C831D0](v8, -1, -1);
LABEL_11:

  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B4F1C4C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1B4F1C778;
  }

  else
  {
    v3 = sub_1B4F1C5D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1C5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1C664;
  v2 = *(v0 + 144);

  return sub_1B4F1BD88(1);
}

uint64_t sub_1B4F1C664()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 168);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B4F1C778()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t HealthWorkoutSession.resume()()
{
  v1[50] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[51] = v2;
  v3 = *(v2 - 8);
  v1[52] = v3;
  v4 = *(v3 + 64) + 15;
  v1[53] = swift_task_alloc();
  v5 = sub_1B4F64964();
  v1[54] = v5;
  v6 = *(v5 - 8);
  v1[55] = v6;
  v7 = *(v6 + 64) + 15;
  v1[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1C914, 0, 0);
}

uint64_t sub_1B4F1C914()
{
  v1 = *(v0[50] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  v2 = [v1 state];
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v21 = v0[52];
      v20 = v0[53];
      v22 = v0[51];
      v0[2] = v0;
      v0[3] = sub_1B4F1D470;
      swift_continuation_init();
      v0[33] = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F68294();
      (*(v21 + 32))(boxed_opaque_existential_1, v20, v22);
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1B4ECD214;
      v0[29] = &block_descriptor_22;
      [v1 resumeWithCompletion_];
      (*(v21 + 8))(boxed_opaque_existential_1, v22);
      v14 = v0 + 2;
      goto LABEL_15;
    }

    if (v2 == 6)
    {
      goto LABEL_10;
    }

    if (v2 != 5)
    {
LABEL_18:
      if (qword_1EDB6DFA8 != -1)
      {
        swift_once();
      }

      v24 = v0[50];
      v25 = sub_1B4F67C54();
      __swift_project_value_buffer(v25, qword_1EDB6DFB0);
      v26 = v24;
      v16 = sub_1B4F67C34();
      v27 = sub_1B4F685E4();
      v28 = os_log_type_enabled(v16, v27);
      v29 = v0[50];
      if (!v28)
      {

        goto LABEL_24;
      }

      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = [v1 state];

      _os_log_impl(&dword_1B4DC2000, v16, v27, "HealthWorkoutSession: Unknown HealthWorkoutSession state: %ld", v30, 0xCu);
      v19 = v30;
LABEL_22:
      MEMORY[0x1B8C831D0](v19, -1, -1);
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (v2 != 1)
  {
    if (v2 == 2)
    {
LABEL_25:
      v31 = v0[56];
      v32 = v0[53];

      v33 = v0[1];

      return v33();
    }

    if (v2 != 3)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4F67C54();
    __swift_project_value_buffer(v15, qword_1EDB6DFB0);
    v16 = sub_1B4F67C34();
    v17 = sub_1B4F685E4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_24;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "HealthWorkoutSession: The workout has ended. Cannot resume.", v18, 2u);
    v19 = v18;
    goto LABEL_22;
  }

  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[53];
  v6 = v0[54];
  v7 = v0[51];
  v8 = v0[52];
  sub_1B4F64954();
  v9 = sub_1B4F648F4();
  v0[57] = v9;
  v10 = *(v3 + 8);
  v0[58] = v10;
  v0[59] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v0[10] = v0;
  v0[11] = sub_1B4F1CEA4;
  swift_continuation_init();
  v0[41] = v7;
  v11 = __swift_allocate_boxed_opaque_existential_1(v0 + 38);
  v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  v12 = *(v8 + 32);
  v0[61] = v12;
  v0[62] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11, v5, v7);
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = sub_1B4ECD214;
  v0[37] = &block_descriptor_27;
  [v1 startActivityWithDate:v9 completion:?];
  v13 = *(v8 + 8);
  v0[63] = v13;
  v0[64] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11, v7);
  v14 = v0 + 10;
LABEL_15:

  return MEMORY[0x1EEE6DEC8](v14);
}

uint64_t sub_1B4F1CEA4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 520) = v2;
  if (v2)
  {
    v3 = sub_1B4F1D7C4;
  }

  else
  {
    v3 = sub_1B4F1CFB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1CFB4()
{
  v15 = *(v0 + 504);
  v16 = *(v0 + 512);
  v12 = *(v0 + 488);
  v13 = *(v0 + 496);
  v11 = *(v0 + 480);
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  v14 = *(v6 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  sub_1B4F64954();
  v8 = sub_1B4F648F4();
  *(v0 + 528) = v8;
  v2(v3, v5);
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_1B4F1D194;
  swift_continuation_init();
  *(v0 + 392) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
  sub_1B4F68294();
  v12(boxed_opaque_existential_1, v4, v7);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1B4ECD214;
  *(v0 + 360) = &block_descriptor_30;
  [v14 beginCollectionWithStartDate:v8 completion:?];
  v15(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1B4F1D194()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_1B4F1D84C;
  }

  else
  {
    v3 = sub_1B4F1D2A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1D2A4()
{
  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1D340;
  v2 = *(v0 + 400);

  return sub_1B4F1BD88(0);
}

uint64_t sub_1B4F1D340()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v7 = *v0;

  v3 = *(v1 + 448);
  v4 = *(v1 + 424);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1B4F1D470()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 552) = v2;
  if (v2)
  {
    v3 = sub_1B4F1D744;
  }

  else
  {
    v3 = sub_1B4F1D580;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1D580()
{
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1D614;
  v2 = *(v0 + 400);

  return sub_1B4F1BD88(0);
}

uint64_t sub_1B4F1D614()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v7 = *v0;

  v3 = *(v1 + 448);
  v4 = *(v1 + 424);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1B4F1D744()
{
  v1 = v0[69];
  swift_willThrow();
  v2 = v0[69];
  v3 = v0[56];
  v4 = v0[53];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4F1D7C4()
{
  v1 = v0[65];
  v2 = v0[57];
  swift_willThrow();

  v3 = v0[65];
  v4 = v0[56];
  v5 = v0[53];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B4F1D84C()
{
  v1 = v0[67];
  v2 = v0[66];
  swift_willThrow();

  v3 = v0[67];
  v4 = v0[56];
  v5 = v0[53];

  v6 = v0[1];

  return v6();
}

uint64_t HealthWorkoutSession.deactivate()()
{
  v1[83] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7170, &unk_1B4F7C2C0);
  v1[84] = v2;
  v3 = *(v2 - 8);
  v1[85] = v3;
  v4 = *(v3 + 64) + 15;
  v1[86] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8) - 8) + 64) + 15;
  v1[87] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[88] = v6;
  v7 = *(v6 - 8);
  v1[89] = v7;
  v8 = *(v7 + 64) + 15;
  v1[90] = swift_task_alloc();
  v9 = sub_1B4F64964();
  v1[91] = v9;
  v10 = *(v9 - 8);
  v1[92] = v10;
  v11 = *(v10 + 64) + 15;
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1DAA8, 0, 0);
}

uint64_t sub_1B4F1DAA8()
{
  v83 = v0;
  v1 = *(v0 + 752);
  sub_1B4F64954();
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 664);
  v7 = sub_1B4F67C54();
  *(v0 + 760) = __swift_project_value_buffer(v7, qword_1EDB6DFB0);
  (*(v4 + 16))(v3, v2, v5);
  v8 = v6;
  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 744);
  v13 = *(v0 + 736);
  v14 = *(v0 + 728);
  if (v11)
  {
    v15 = *(v0 + 664);
    v16 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82 = v80;
    *v16 = 136315394;
    *(v16 + 4) = sub_1B4DC4F88(*(v15 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v15 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v82);
    *(v16 + 12) = 2080;
    sub_1B4F25648(&unk_1EB8F7188, MEMORY[0x1E6969530]);
    v17 = sub_1B4F68D04();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_1B4DC4F88(v17, v19, &v82);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "HealthWorkoutSession: Ending workout: %s at %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v80, -1, -1);
    MEMORY[0x1B8C831D0](v16, -1, -1);
  }

  else
  {

    v20 = *(v13 + 8);
    v20(v12, v14);
  }

  *(v0 + 768) = v20;
  v22 = *(*(v0 + 664) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  *(v0 + 776) = v22;
  v23 = [v22 state];
  if (v23 > 6)
  {
    goto LABEL_10;
  }

  if (((1 << v23) & 0x14) != 0)
  {
    v35 = *(v0 + 752);
    v36 = *(v0 + 720);
    v37 = *(v0 + 712);
    v38 = *(v0 + 704);
    v39 = sub_1B4F648F4();
    *(v0 + 792) = v39;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_1B4F1EE20;
    swift_continuation_init();
    *(v0 + 520) = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    *(v0 + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    v41 = *(v37 + 32);
    *(v0 + 808) = v41;
    *(v0 + 816) = (v37 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v41(boxed_opaque_existential_1, v36, v38);
    *(v0 + 464) = MEMORY[0x1E69E9820];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_1B4ECD214;
    *(v0 + 488) = &block_descriptor_43;
    [v22 stopActivityWithDate:v39 completion:?];
    v42 = *(v37 + 8);
    *(v0 + 824) = v42;
    *(v0 + 832) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(boxed_opaque_existential_1, v38);
    v43 = v0 + 144;
LABEL_23:

    return MEMORY[0x1EEE6DEC8](v43);
  }

  if (((1 << v23) & 0x22) != 0)
  {
    v30 = v0 + 272;
    v31 = *(v0 + 720);
    v32 = *(v0 + 712);
    v33 = *(v0 + 704);
    *(v0 + 272) = v0;
    *(v0 + 280) = sub_1B4F1E6DC;
    swift_continuation_init();
    *(v0 + 648) = v33;
    v34 = __swift_allocate_boxed_opaque_existential_1((v0 + 624));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v32 + 32))(v34, v31, v33);
    *(v0 + 592) = MEMORY[0x1E69E9820];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_1B4ECD214;
    *(v0 + 616) = &block_descriptor_49;
    [v22 endWithCompletion_];
    (*(v32 + 8))(v34, v33);
LABEL_22:
    v43 = v30;
    goto LABEL_23;
  }

  if (((1 << v23) & 0x48) == 0)
  {
LABEL_10:
    v24 = *(v0 + 664);
    v25 = sub_1B4F67C34();
    v26 = sub_1B4F685E4();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 664);
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = [v22 state];

      _os_log_impl(&dword_1B4DC2000, v25, v26, "HealthWorkoutSession: Unknown HealthWorkoutSession state: %ld", v29, 0xCu);
      MEMORY[0x1B8C831D0](v29, -1, -1);
    }

    else
    {
    }
  }

  v44 = *(*(v0 + 664) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  *(v0 + 856) = v44;
  v45 = [v44 startDate];
  if (v45)
  {
    v46 = *(v0 + 752);
    v47 = *(v0 + 736);
    v48 = *(v0 + 728);
    v79 = *(v0 + 720);
    v49 = *(v0 + 712);
    v50 = *(v0 + 704);
    v51 = *(v0 + 696);
    v52 = v45;
    sub_1B4F64934();

    (*(v47 + 56))(v51, 0, 1, v48);
    sub_1B4DD2BC4(v51, &qword_1EB8F54A0, &qword_1B4F730F8);
    v53 = sub_1B4F648F4();
    *(v0 + 864) = v53;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B4F1F1F0;
    swift_continuation_init();
    *(v0 + 456) = v50;
    v54 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v49 + 32))(v54, v79, v50);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1B4ECD214;
    *(v0 + 424) = &block_descriptor_40_0;
    [v44 endCollectionWithEndDate:v53 completion:?];
    (*(v49 + 8))(v54, v50);
    v43 = v0 + 80;
    goto LABEL_23;
  }

  v55 = *(v0 + 696);
  (*(*(v0 + 736) + 56))(v55, 1, 1, *(v0 + 728));
  sub_1B4DD2BC4(v55, &qword_1EB8F54A0, &qword_1B4F730F8);
  v56 = *(v0 + 760);
  v57 = *(v0 + 664);
  [*(v0 + 856) elapsedTime];
  v59 = v58;
  sub_1B4DF7310(59, 60.0);
  v61 = v60;
  v62 = v57;
  v63 = sub_1B4F67C34();
  v64 = sub_1B4F685E4();

  v65 = os_log_type_enabled(v63, v64);
  if (v61 < v59)
  {
    if (v65)
    {
      v66 = *(v0 + 664);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v82 = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_1B4DC4F88(*(v66 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v66 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v82);
      _os_log_impl(&dword_1B4DC2000, v63, v64, "HealthWorkoutSession: Saving workout: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1B8C831D0](v68, -1, -1);
      MEMORY[0x1B8C831D0](v67, -1, -1);
    }

    v30 = v0 + 16;
    v81 = *(v0 + 856);
    v69 = *(v0 + 688);
    v70 = *(v0 + 680);
    v71 = *(v0 + 672);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 656;
    *(v0 + 24) = sub_1B4F1F714;
    swift_continuation_init();
    *(v0 + 392) = v71;
    v72 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7180, &qword_1B4F7C2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v70 + 32))(v72, v69, v71);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B4F1FFC4;
    *(v0 + 360) = &block_descriptor_35;
    [v81 finishWorkoutWithCompletion_];
    (*(v70 + 8))(v72, v71);
    goto LABEL_22;
  }

  if (v65)
  {
    v73 = *(v0 + 664);
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v82 = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1B4DC4F88(*(v73 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v73 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v82);
    _os_log_impl(&dword_1B4DC2000, v63, v64, "HealthWorkoutSession: Discarding workout: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x1B8C831D0](v75, -1, -1);
    MEMORY[0x1B8C831D0](v74, -1, -1);
  }

  [*(v0 + 856) discardWorkout];
  v76 = swift_task_alloc();
  *(v0 + 896) = v76;
  *v76 = v0;
  v76[1] = sub_1B4F1FA84;
  v77 = *(v0 + 664);

  return sub_1B4F1BD88(4);
}

uint64_t sub_1B4F1E6DC()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 784) = v2;
  if (v2)
  {
    v3 = sub_1B4F1FB80;
  }

  else
  {
    v3 = sub_1B4F1E7EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1E7EC()
{
  v40 = v0;
  v1 = *(*(v0 + 664) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  *(v0 + 856) = v1;
  v2 = [v1 startDate];
  if (v2)
  {
    v3 = *(v0 + 752);
    v4 = *(v0 + 736);
    v5 = *(v0 + 728);
    v37 = *(v0 + 720);
    v6 = *(v0 + 712);
    v7 = *(v0 + 704);
    v8 = *(v0 + 696);
    v9 = v2;
    sub_1B4F64934();

    (*(v4 + 56))(v8, 0, 1, v5);
    sub_1B4DD2BC4(v8, &qword_1EB8F54A0, &qword_1B4F730F8);
    v10 = sub_1B4F648F4();
    *(v0 + 864) = v10;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B4F1F1F0;
    swift_continuation_init();
    *(v0 + 456) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v6 + 32))(boxed_opaque_existential_1, v37, v7);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1B4ECD214;
    *(v0 + 424) = &block_descriptor_40_0;
    [v1 endCollectionWithEndDate:v10 completion:?];
    (*(v6 + 8))(boxed_opaque_existential_1, v7);
    v12 = v0 + 80;
LABEL_7:

    return MEMORY[0x1EEE6DEC8](v12);
  }

  v13 = *(v0 + 696);
  (*(*(v0 + 736) + 56))(v13, 1, 1, *(v0 + 728));
  sub_1B4DD2BC4(v13, &qword_1EB8F54A0, &qword_1B4F730F8);
  v14 = *(v0 + 760);
  v15 = *(v0 + 664);
  [*(v0 + 856) elapsedTime];
  v17 = v16;
  sub_1B4DF7310(59, 60.0);
  v19 = v18;
  v20 = v15;
  v21 = sub_1B4F67C34();
  v22 = sub_1B4F685E4();

  v23 = os_log_type_enabled(v21, v22);
  if (v19 < v17)
  {
    if (v23)
    {
      v24 = *(v0 + 664);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1B4DC4F88(*(v24 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v24 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v39);
      _os_log_impl(&dword_1B4DC2000, v21, v22, "HealthWorkoutSession: Saving workout: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B8C831D0](v26, -1, -1);
      MEMORY[0x1B8C831D0](v25, -1, -1);
    }

    v38 = *(v0 + 856);
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v29 = *(v0 + 672);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 656;
    *(v0 + 24) = sub_1B4F1F714;
    swift_continuation_init();
    *(v0 + 392) = v29;
    v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7180, &qword_1B4F7C2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v28 + 32))(v30, v27, v29);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B4F1FFC4;
    *(v0 + 360) = &block_descriptor_35;
    [v38 finishWorkoutWithCompletion_];
    (*(v28 + 8))(v30, v29);
    v12 = v0 + 16;
    goto LABEL_7;
  }

  if (v23)
  {
    v31 = *(v0 + 664);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1B4DC4F88(*(v31 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v31 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v39);
    _os_log_impl(&dword_1B4DC2000, v21, v22, "HealthWorkoutSession: Discarding workout: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B8C831D0](v33, -1, -1);
    MEMORY[0x1B8C831D0](v32, -1, -1);
  }

  [*(v0 + 856) discardWorkout];
  v34 = swift_task_alloc();
  *(v0 + 896) = v34;
  *v34 = v0;
  v34[1] = sub_1B4F1FA84;
  v35 = *(v0 + 664);

  return sub_1B4F1BD88(4);
}

uint64_t sub_1B4F1EE20()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 840) = v2;
  if (v2)
  {
    v3 = sub_1B4F1FC54;
  }

  else
  {
    v3 = sub_1B4F1EF30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1EF30()
{
  v9 = *(v0 + 824);
  v10 = *(v0 + 832);
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v7 = *(v0 + 816);
  v8 = *(v0 + 776);
  v3 = *(v0 + 720);
  v4 = *(v0 + 704);

  *(v0 + 208) = v0;
  *(v0 + 216) = sub_1B4F1F0E0;
  swift_continuation_init();
  *(v0 + 584) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
  sub_1B4F68294();
  v1(boxed_opaque_existential_1, v3, v4);
  *(v0 + 528) = MEMORY[0x1E69E9820];
  *(v0 + 536) = 1107296256;
  *(v0 + 544) = sub_1B4ECD214;
  *(v0 + 552) = &block_descriptor_46;
  [v8 endWithCompletion_];
  v9(boxed_opaque_existential_1, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 208);
}

uint64_t sub_1B4F1F0E0()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 848) = v2;
  if (v2)
  {
    v3 = sub_1B4F1FD38;
  }

  else
  {
    v3 = sub_1B4F2575C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1F1F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 872) = v2;
  if (v2)
  {
    v3 = sub_1B4F1FE0C;
  }

  else
  {
    v3 = sub_1B4F1F300;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1F300()
{
  v26 = v0;

  v1 = *(v0 + 760);
  v2 = *(v0 + 664);
  [*(v0 + 856) elapsedTime];
  v4 = v3;
  sub_1B4DF7310(59, 60.0);
  v6 = v5;
  v7 = v2;
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();

  v10 = os_log_type_enabled(v8, v9);
  if (v6 >= v4)
  {
    if (v10)
    {
      v18 = *(v0 + 664);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1B4DC4F88(*(v18 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v18 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v25);
      _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Discarding workout: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B8C831D0](v20, -1, -1);
      MEMORY[0x1B8C831D0](v19, -1, -1);
    }

    [*(v0 + 856) discardWorkout];
    v21 = swift_task_alloc();
    *(v0 + 896) = v21;
    *v21 = v0;
    v21[1] = sub_1B4F1FA84;
    v22 = *(v0 + 664);

    return sub_1B4F1BD88(4);
  }

  else
  {
    if (v10)
    {
      v11 = *(v0 + 664);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B4DC4F88(*(v11 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v11 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v25);
      _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Saving workout: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B8C831D0](v13, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }

    v24 = *(v0 + 856);
    v14 = *(v0 + 688);
    v15 = *(v0 + 680);
    v16 = *(v0 + 672);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 656;
    *(v0 + 24) = sub_1B4F1F714;
    swift_continuation_init();
    *(v0 + 392) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7180, &qword_1B4F7C2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v15 + 32))(boxed_opaque_existential_1, v14, v16);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B4F1FFC4;
    *(v0 + 360) = &block_descriptor_35;
    [v24 finishWorkoutWithCompletion_];
    (*(v15 + 8))(boxed_opaque_existential_1, v16);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1B4F1F714()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 880) = v2;
  if (v2)
  {
    v3 = sub_1B4F1FEF0;
  }

  else
  {
    v3 = sub_1B4F1F824;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F1F824()
{
  v1 = swift_task_alloc();
  *(v0 + 888) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1F8C0;
  v2 = *(v0 + 664);

  return sub_1B4F1BD88(3);
}

uint64_t sub_1B4F1F8C0()
{
  v1 = *(*v0 + 888);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4F1F9BC, 0, 0);
}

uint64_t sub_1B4F1F9BC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 736) + 8;
  (*(v0 + 768))(*(v0 + 752), *(v0 + 728));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B4F1FA84()
{
  v1 = *(*v0 + 896);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4F25760, 0, 0);
}

uint64_t sub_1B4F1FB80()
{
  v1 = v0[98];
  v2 = v0[96];
  v3 = v0[94];
  v4 = v0[92];
  v5 = v0[91];
  swift_willThrow();
  v2(v3, v5);
  v6 = v0[98];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B4F1FC54()
{
  v1 = v0[105];
  v2 = v0[99];
  v3 = v0[96];
  v4 = v0[94];
  v5 = v0[92];
  v6 = v0[91];
  swift_willThrow();
  v3(v4, v6);

  v7 = v0[105];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[90];
  v11 = v0[87];
  v12 = v0[86];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B4F1FD38()
{
  v1 = v0[106];
  v2 = v0[96];
  v3 = v0[94];
  v4 = v0[92];
  v5 = v0[91];
  swift_willThrow();
  v2(v3, v5);
  v6 = v0[106];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B4F1FE0C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[96];
  v4 = v0[94];
  v5 = v0[92];
  v6 = v0[91];
  swift_willThrow();
  v3(v4, v6);

  v7 = v0[109];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[90];
  v11 = v0[87];
  v12 = v0[86];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B4F1FEF0()
{
  v1 = v0[110];
  v2 = v0[96];
  v3 = v0[94];
  v4 = v0[92];
  v5 = v0[91];
  swift_willThrow();
  v2(v3, v5);
  v6 = v0[110];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];

  v12 = v0[1];

  return v12();
}

void sub_1B4F1FFC4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7170, &unk_1B4F7C2C0);
    sub_1B4F682A4();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7170, &unk_1B4F7C2C0);
    sub_1B4F682B4();
  }
}

id HealthWorkoutSession.makeQuantityQuery(type:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v8 = MEMORY[0x1B8C81EA0](a1);
  v9 = *(v4 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = objc_allocWithZone(MEMORY[0x1E696C5A0]);
  v15[4] = sub_1B4F2406C;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B4F23D98;
  v15[3] = &block_descriptor_55;
  v12 = _Block_copy(v15);

  v13 = [v11 initWithQuantityType:v8 workoutBuilder:v9 quantitiesAddedHandler:v12];

  _Block_release(v12);

  return v13;
}

void sub_1B4F201B8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, void))
{

  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72A8, &qword_1B4F7C498);
  sub_1B4F68EE4();
  a4(v7, v8);
  sub_1B4E6B7A8(v7, v8);
}

uint64_t sub_1B4F20250(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E0, &qword_1B4F7C230);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4F20320, 0, 0);
}

uint64_t sub_1B4F20320()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E8, &qword_1B4F7C238);
  v4[4] = sub_1B4E21468(&qword_1EB8F70F0, &qword_1EB8F70E8, &qword_1B4F7C238);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25754, v6, v5);
}

uint64_t sub_1B4F20474(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7100, &qword_1B4F7C248);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4F20544, 0, 0);
}

uint64_t sub_1B4F20544()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7108, &qword_1B4F7C250);
  v4[4] = sub_1B4E21468(&qword_1EB8F7110, &qword_1EB8F7108, &qword_1B4F7C250);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  sub_1B4E21468(&qword_1EB8F7118, &qword_1EB8F7078, &qword_1B4F7C1C0);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25754, v6, v5);
}

uint64_t sub_1B4F20698(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7120, &qword_1B4F7C260);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4F20768, 0, 0);
}

uint64_t sub_1B4F20768()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7128, &qword_1B4F7C268);
  v4[4] = sub_1B4E21468(&qword_1EB8F7130, &qword_1EB8F7128, &qword_1B4F7C268);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25754, v6, v5);
}

uint64_t sub_1B4F208BC(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7140, &qword_1B4F7C278);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4F2098C, 0, 0);
}

uint64_t sub_1B4F2098C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7148, &qword_1B4F7C280);
  v4[4] = sub_1B4E21468(&qword_1EB8F7150, &qword_1EB8F7148, &qword_1B4F7C280);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F20AE0, v6, v5);
}

uint64_t sub_1B4F20AE0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_1B4F67B44();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B4F20B74()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthWorkoutSession.activate()();
}

uint64_t sub_1B4F20C04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthWorkoutSession.pause()();
}

uint64_t sub_1B4F20C94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthWorkoutSession.resume()();
}

uint64_t sub_1B4F20D24()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE13F0;

  return HealthWorkoutSession.deactivate()();
}

uint64_t HealthWorkoutSession.workoutBuilder(_:didCollectDataOf:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v53 - v9;
  v11 = sub_1B4F679A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4F67C54();
  __swift_project_value_buffer(v17, qword_1EDB6DFB0);

  v18 = sub_1B4F67C34();
  v19 = sub_1B4F685B4();

  v20 = os_log_type_enabled(v18, v19);
  v55 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v53 = v16;
    v24 = v23;
    v59[0] = v23;
    *v22 = 136315138;
    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    sub_1B4F243D8();
    v25 = sub_1B4F68514();
    v27 = v10;
    v28 = v3;
    v29 = a1;
    v30 = sub_1B4DC4F88(v25, v26, v59);

    *(v22 + 4) = v30;
    a1 = v29;
    v3 = v28;
    v10 = v27;
    _os_log_impl(&dword_1B4DC2000, v18, v19, "Got event for %s types.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v31 = v24;
    v16 = v53;
    MEMORY[0x1B8C831D0](v31, -1, -1);
    v32 = v22;
    v12 = v54;
    MEMORY[0x1B8C831D0](v32, -1, -1);
  }

  v33 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workout;
  swift_beginAccess();
  if (!(*(v12 + 48))(&v3[v33], 1, v11))
  {
    (*(v12 + 16))(v16, &v3[v33], v11);
    v34 = sub_1B4F67984();
    (*(v12 + 8))(v16, v11);
    v57 = v34;
    v58 = BYTE4(v34) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7198, &qword_1B4F7C308);
    sub_1B4F65044();
    v35 = v56;
    if (v56 != 5)
    {
      v36 = sub_1B4F68324();
      (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = v3;
      *(v37 + 40) = v35;
      v38 = v3;
      sub_1B4E4E620(0, 0, v10, &unk_1B4F7C318, v37);
    }
  }

  v39 = v55;
  if (sub_1B4F2143C(v55))
  {
    v40 = sub_1B4F68324();
    (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v3;
    v41[5] = a1;
    v42 = v3;
    v43 = a1;
    sub_1B4E4E620(0, 0, v10, &unk_1B4F7C300, v41);
  }

  if (sub_1B4F227C0(v39, MEMORY[0x1E696BCF8]))
  {
    v44 = sub_1B4F68324();
    (*(*(v44 - 8) + 56))(v10, 1, 1, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v3;
    v45[5] = a1;
    v46 = v3;
    v47 = a1;
    sub_1B4E4E620(0, 0, v10, &unk_1B4F7C2F0, v45);
  }

  result = sub_1B4F227C0(v39, MEMORY[0x1E696BD30]);
  if (result)
  {
    v49 = sub_1B4F68324();
    (*(*(v49 - 8) + 56))(v10, 1, 1, v49);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v3;
    v50[5] = a1;
    v51 = v3;
    v52 = a1;
    sub_1B4E4E620(0, 0, v10, &unk_1B4F7C2E0, v50);
  }

  return result;
}

uint64_t sub_1B4F213A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1B4DE13F0;

  return sub_1B4F1BD88(a5);
}

uint64_t sub_1B4F2143C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B4F688E4();
    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    sub_1B4F243D8();
    result = sub_1B4F68544();
    v1 = v37;
    v3 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v32 = *MEMORY[0x1E696BC78];
  v33 = *MEMORY[0x1E696BC38];
  v34 = v1;
  while (v1 < 0)
  {
    if (!sub_1B4F68914() || (sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0), swift_dynamicCast(), v15 = v36, v13 = v5, v14 = v6, !v36))
    {
LABEL_29:
      v31 = 0;
LABEL_30:
      sub_1B4E632A0();
      return v31;
    }

LABEL_18:
    v35 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4F7C1A0;
    *(inited + 32) = sub_1B4F67F74();
    *(inited + 40) = v17;
    *(inited + 48) = sub_1B4F67F74();
    *(inited + 56) = v18;
    v19 = sub_1B4E2A75C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v20 = [v15 identifier];
    v21 = sub_1B4F67F74();
    v23 = v22;

    if (*(v19 + 16))
    {
      v24 = *(v19 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      v25 = sub_1B4F68EC4();
      v26 = -1 << *(v19 + 32);
      v27 = v25 & ~v26;
      if ((*(v19 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v19 + 48) + 16 * v27);
          v30 = *v29 == v21 && v29[1] == v23;
          if (v30 || (sub_1B4F68D54() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v19 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v31 = 1;
        goto LABEL_30;
      }
    }

LABEL_8:

    v5 = v13;
    v1 = v34;
    v6 = v35;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4F217C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B4F64FD4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F21884, 0, 0);
}

uint64_t sub_1B4F21884()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_1B4F23C90(*MEMORY[0x1E696BC78]);
  sub_1B4F23C90(*MEMORY[0x1E696BC38]);
  sub_1B4F684B4();
  sub_1B4F64FA4();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B4F21980;
  v4 = v0[6];
  v5 = v0[2];

  return sub_1B4F21AD8(v4);
}

uint64_t sub_1B4F21980()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1B4F21AD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F21AF8, 0, 0);
}

uint64_t sub_1B4F21AF8()
{
  v18 = v0;
  v1 = v0[2];
  sub_1B4F64F84();
  v3 = v2;
  sub_1B4F64FB4();
  v5 = v4;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB6DFB0);
  v8 = v6;
  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_1B4DC4F88(*(v11 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v11 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v17);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v3;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "HealthWorkoutSession: Updating calories for session %s: Basal: %f Active: %f", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B8C831D0](v13, -1, -1);
    MEMORY[0x1B8C831D0](v12, -1, -1);
  }

  v0[4] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8);
  v15 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F21D20, v15, v14);
}

uint64_t sub_1B4F21D20()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1B4F67B54();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B4F21D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B4F65854();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F21E44, 0, 0);
}

uint64_t sub_1B4F21E44()
{
  v1 = v0[3];
  sub_1B4F21EE8(v0[6]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1B4F25758;
  v3 = v0[6];
  v4 = v0[2];

  return sub_1B4F22410(v3);
}

uint64_t sub_1B4F21EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7290, &qword_1B4F7C480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v39 - v16;
  v18 = sub_1B4F64964();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v28 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BCF8]);
  v29 = [v2 statisticsForType_];

  if (v29)
  {
    v30 = [v29 mostRecentQuantityDateInterval];
    if (v30)
    {
      v31 = v30;
      sub_1B4F64644();

      v32 = sub_1B4F64664();
      (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
    }

    else
    {
      v32 = sub_1B4F64664();
      (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    }

    sub_1B4F25568(v8, v12);
    sub_1B4F64664();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) != 1)
    {
      sub_1B4F64654();
      (*(v33 + 8))(v12, v32);
      (*(v19 + 56))(v17, 0, 1, v18);
      (*(v19 + 32))(v27, v17, v18);
      goto LABEL_10;
    }

    sub_1B4DD2BC4(v12, &unk_1EB8F7290, &qword_1B4F7C480);
  }

  (*(v19 + 56))(v17, 1, 1, v18);
  sub_1B4F648D4();
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_1B4DD2BC4(v17, &qword_1EB8F54A0, &qword_1B4F730F8);
  }

LABEL_10:
  sub_1B4F64954();
  sub_1B4F648E4();
  v34 = *(v19 + 8);
  v34(v23, v18);
  if (qword_1EB8F3D30 != -1)
  {
    swift_once();
  }

  if (v29)
  {
    v35 = [v29 sumQuantity];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() meterUnit];
      [v36 doubleValueForUnit_];
    }
  }

  sub_1B4F684B4();
  v40 = 1;
  sub_1B4F65824();

  return (v34)(v27, v18);
}

uint64_t sub_1B4F22410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B4F65854();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F224D0, 0, 0);
}

uint64_t sub_1B4F224D0()
{
  v23 = v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v10)
  {
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B4DC4F88(*(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v22);
    *(v15 + 12) = 2048;
    sub_1B4F65834();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    *(v15 + 14) = v18;
    _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Updating distance for session %s: Distance: %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B8C831D0](v16, -1, -1);
    MEMORY[0x1B8C831D0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  sub_1B4E21468(&qword_1EB8F7118, &qword_1EB8F7078, &qword_1B4F7C1C0);
  v20 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F22754, v20, v19);
}

uint64_t sub_1B4F22754()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  sub_1B4F67B54();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4F227C0(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B4F688E4();
    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    sub_1B4F243D8();
    result = sub_1B4F68544();
    v3 = v26;
    v23 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v22 = v5;
  v24 = *a2;
  while (v3 < 0)
  {
    if (!sub_1B4F68914())
    {
      v13 = 0;
      goto LABEL_25;
    }

    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    swift_dynamicCast();
    v13 = v25;
    if (!v25)
    {
      goto LABEL_25;
    }

LABEL_17:
    v14 = v3;
    v15 = [v13 identifier];
    v16 = sub_1B4F67F74();
    v18 = v17;

    if (v16 == sub_1B4F67F74() && v18 == v19)
    {

      v13 = 1;
      goto LABEL_25;
    }

    v21 = sub_1B4F68D54();

    v3 = v14;
    if (v21)
    {
      v13 = 1;
LABEL_25:
      sub_1B4E632A0();
      return v13;
    }
  }

  v11 = v6;
  v12 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      v13 = 0;
      goto LABEL_25;
    }

    v12 = *(v23 + 8 * v6);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4F22A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B4F65B84();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F22B28, 0, 0);
}

uint64_t sub_1B4F22B28()
{
  v1 = v0[3];
  sub_1B4F22BCC(v0[6]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1B4F25758;
  v3 = v0[6];
  v4 = v0[2];

  return sub_1B4F23368(v3);
}

uint64_t sub_1B4F22BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7290, &qword_1B4F7C480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v61 - v15;
  v17 = sub_1B4F64964();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - v25;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v27 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BD30]);
  v28 = [v2 statisticsForType_];

  if (v28)
  {
    v29 = [v28 mostRecentQuantityDateInterval];
    if (v29)
    {
      v30 = v29;
      sub_1B4F64644();

      v31 = sub_1B4F64664();
      (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
    }

    else
    {
      v31 = sub_1B4F64664();
      (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    }

    sub_1B4F25568(v7, v11);
    sub_1B4F64664();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v11, 1, v31) != 1)
    {
      sub_1B4F64654();
      (*(v32 + 8))(v11, v31);
      (*(v18 + 56))(v16, 0, 1, v17);
      (*(v18 + 32))(v26, v16, v17);
      goto LABEL_10;
    }

    sub_1B4DD2BC4(v11, &unk_1EB8F7290, &qword_1B4F7C480);
  }

  (*(v18 + 56))(v16, 1, 1, v17);
  sub_1B4F648D4();
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_1B4DD2BC4(v16, &qword_1EB8F54A0, &qword_1B4F730F8);
  }

LABEL_10:
  sub_1B4F64954();
  sub_1B4F648E4();
  v33 = *(v18 + 8);
  v33(v22, v17);
  if (qword_1EB8F3D30 != -1)
  {
    swift_once();
  }

  if (v28)
  {
    v62 = v33;
    v34 = [v28 mostRecentQuantity];
    v35 = 0x1FBD82000;
    if (v34)
    {
      v36 = v34;
      v37 = objc_opt_self();
      v38 = [v37 countUnit];
      v39 = [v37 minuteUnit];
      v40 = [v38 unitDividedByUnit_];

      v35 = &off_1E7C14000;
      [v36 doubleValueForUnit_];
    }

    v41 = [v28 averageQuantity];
    if (v41)
    {
      v42 = v41;
      v43 = objc_opt_self();
      v44 = [v43 countUnit];
      v45 = [v43 minuteUnit];
      v46 = [v44 unitDividedByUnit_];

      v35 = &off_1E7C14000;
      [v42 doubleValueForUnit_];
    }

    v47 = [v28 minimumQuantity];
    if (v47)
    {
      v48 = v47;
      v49 = objc_opt_self();
      v50 = [v49 countUnit];
      v51 = [v49 minuteUnit];
      v52 = [v50 unitDividedByUnit_];

      v35 = &off_1E7C14000;
      [v48 doubleValueForUnit_];
    }

    v53 = [v28 maximumQuantity];
    if (v53)
    {
      v54 = v53;
      v55 = v35;
      v56 = objc_opt_self();
      v57 = [v56 countUnit];
      v58 = [v56 minuteUnit];
      v59 = [v57 unitDividedByUnit_];

      [v54 v55 + 3267];
    }

    v33 = v62;
  }

  sub_1B4F684B4();
  v64 = 1;
  sub_1B4F65B44();

  return (v33)(v26, v17);
}

uint64_t sub_1B4F23368(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B4F65B84();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F23428, 0, 0);
}

uint64_t sub_1B4F23428()
{
  v23 = v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v10)
  {
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B4DC4F88(*(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v22);
    *(v15 + 12) = 2048;
    sub_1B4F65B54();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    *(v15 + 14) = v18;
    _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Updating heart rate for session %s: Heart Rate: %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B8C831D0](v16, -1, -1);
    MEMORY[0x1B8C831D0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8);
  v20 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F2574C, v20, v19);
}

Swift::Void __swiftcall HealthWorkoutSession.workoutBuilder(_:didEnd:)(HKLiveWorkoutBuilder _, HKWorkoutActivity didEnd)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB6DFB0);
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x80000001B4F845B0;
  v11._object = 0x80000001B4F845E0;
  v11._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v10, v11);
  v12 = sub_1B4F68324();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v14 = v3;
  sub_1B4E4E620(0, 0, v8, &unk_1B4F7C328, v13);
}

uint64_t sub_1B4F238D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return sub_1B4F1BD88(3);
}

uint64_t sub_1B4F23C90(void *a1)
{
  v2 = v1;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v4 = MEMORY[0x1B8C81EA0](a1);
  v5 = [v2 statisticsForType_];

  if (v5)
  {
    v6 = [v5 sumQuantity];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() kilocalorieUnit];
      [v7 doubleValueForUnit_];
      v10 = v9;

      return v10;
    }
  }

  return 0;
}

uint64_t sub_1B4F23D98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1B4DD8804(0, &qword_1EB8F72A0, 0x1E696C598);
    v5 = sub_1B4F681C4();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_1B4F23E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F19028(a1, v4, v5, v6);
}

uint64_t sub_1B4F23F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F19960(a1, v4, v5, v6);
}

uint64_t sub_1B4F23FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F1A298(a1, v4, v5, v6);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4F2408C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F22A68(a1, v4, v5, v7, v6);
}

uint64_t sub_1B4F2414C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F21D84(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4F24254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE13F0;

  return sub_1B4F217C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1B4F24314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F213A0(a1, v4, v5, v6, v7);
}

unint64_t sub_1B4F243D8()
{
  result = qword_1EB8F71A8;
  if (!qword_1EB8F71A8)
  {
    sub_1B4DD8804(255, &qword_1EDB6DA90, 0x1E696C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F71A8);
  }

  return result;
}

void _s13SeymourClient20HealthWorkoutSessionC29workoutBuilderDidCollectEventyySo06HKLivedG0CF_0()
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4F67C54();
  __swift_project_value_buffer(v0, qword_1EDB6DFB0);
  oslog = sub_1B4F67C34();
  v1 = sub_1B4F685E4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B4DC2000, oslog, v1, "HealthWorkoutSession: Workout Builder Collected Event.", v2, 2u);
    MEMORY[0x1B8C831D0](v2, -1, -1);
  }
}

uint64_t sub_1B4F24528()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B4DE0D94;

  return sub_1B4F238D8();
}

void sub_1B4F245DC()
{
  v1 = HKWorkoutSessionStateToString();
  v2 = sub_1B4F67F74();
  v4 = v3;

  v5 = HKWorkoutSessionStateToString();
  v6 = sub_1B4F67F74();
  v8 = v7;

  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB6DFB0);
  v10 = v0;

  oslog = sub_1B4F67C34();
  v11 = sub_1B4F685E4();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_1B4DC4F88(*&v10[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier], *&v10[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8], &v17);
    *(v12 + 12) = 2080;
    v14 = sub_1B4DC4F88(v2, v4, &v17);

    *(v12 + 14) = v14;
    *(v12 + 22) = 2080;
    v15 = sub_1B4DC4F88(v6, v8, &v17);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_1B4DC2000, oslog, v11, "HealthWorkoutSession (%s) changed from %s to %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v13, -1, -1);
    MEMORY[0x1B8C831D0](v12, -1, -1);
  }

  else
  {
  }
}

void sub_1B4F24818(void *a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4 = v1;
  v5 = a1;
  oslog = sub_1B4F67C34();
  v6 = sub_1B4F685C4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1B4DC4F88(*&v4[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier], *&v4[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8], &v13);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = MEMORY[0x1B8C826C0]();
    v11 = sub_1B4DC4F88(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_1B4DC2000, oslog, v6, "HealthWorkoutSession (%s) error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v8, -1, -1);
    MEMORY[0x1B8C831D0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeCalorieStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeDistanceStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeHeartRateStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeSessionStateStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.pause()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.resume()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.deactivate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE13F0;

  return v9(a1, a2);
}

uint64_t type metadata accessor for HealthWorkoutSession()
{
  result = qword_1EB8F71B8;
  if (!qword_1EB8F71B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B4F2536C()
{
  sub_1B4F25478();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B4F25478()
{
  if (!qword_1EB8F71C8)
  {
    sub_1B4F679A4();
    v0 = sub_1B4F687D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8F71C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthWorkoutSession.SessionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for HealthWorkoutSession.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B4F25568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7290, &qword_1B4F7C480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F255D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F25648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4F25690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7680, &qword_1B4F795D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CatalogClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F2DC20(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F258B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB72490);
    v3._countAndFlagsBits = 0xD000000000000021;
    v3._object = 0x80000001B4F84720;
    v4._object = 0x80000001B4F85080;
    v4._countAndFlagsBits = 0xD000000000000016;
    Logger.trace(file:function:)(v3, v4);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for CatalogDeleted, &protocol witness table for CatalogDeleted, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F259CC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB72490);
    v5._countAndFlagsBits = 0xD000000000000021;
    v5._object = 0x80000001B4F84720;
    v6._object = 0x80000001B4F85060;
    v6._countAndFlagsBits = 0xD000000000000018;
    Logger.trace(file:function:)(v5, v6);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v10 = v1;
    (*(v8 + 8))(&v10, &type metadata for CatalogUpdated, &protocol witness table for CatalogUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1B4F25AEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB72490);
    v3._countAndFlagsBits = 0xD000000000000021;
    v3._object = 0x80000001B4F84720;
    v4._object = 0x80000001B4F85040;
    v4._countAndFlagsBits = 0xD00000000000001ELL;
    Logger.trace(file:function:)(v3, v4);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for CatalogMetadataUpdated, &protocol witness table for CatalogMetadataUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F25C00(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB72490);
    v5._object = 0x80000001B4F84720;
    v6._countAndFlagsBits = 0xD000000000000030;
    v6._object = 0x80000001B4F85000;
    v5._countAndFlagsBits = 0xD000000000000021;
    Logger.trace(file:function:)(v5, v6);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v11 = v1;
    v10 = *(v8 + 8);

    v10(&v11, &type metadata for CatalogTipJournalsUpdated, &protocol witness table for CatalogTipJournalsUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1B4F25D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E0, &qword_1B4F6CF88);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25E18, 0, 0);
}

uint64_t sub_1B4F25E18()
{
  v19 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000032;
  v6._object = 0x80000001B4F84FC0;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v18 = 101;
  v0[2] = v3;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v12 = sub_1B4F2E5D0();
  v13 = sub_1B4F2E654();
  v10(&v18, v0 + 2, MEMORY[0x1E69E6530], v11, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v12, v13, ObjectType, v8);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *(v14 + 16) = "SeymourClient/CatalogClient.swift";
  *(v14 + 24) = 33;
  *(v14 + 32) = 2;
  *(v14 + 40) = 66;
  *(v14 + 48) = v1;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_1B4F26050;

  return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4E2B834, v14, v11);
}

uint64_t sub_1B4F26050()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {

    v6 = sub_1B4F262F0;
  }

  else
  {
    v8 = v2[9];
    v7 = v2[10];
    v9 = v2[8];
    v2[14] = v2[3];

    (*(v8 + 8))(v7, v9);
    v6 = sub_1B4F261B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B4F261B0()
{
  if (*(v0[14] + 16))
  {
    v8 = (v0[5] + *v0[5]);
    v1 = *(v0[5] + 4);
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1B4F2636C;
    v3 = v0[14];
    v4 = v0[6];

    return v8(v3);
  }

  else
  {

    v6 = v0[10];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B4F262F0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B4F2636C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1B4F2664C;
  }

  else
  {
    v3 = sub_1B4F26480;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F26480()
{
  v1 = v0[4];
  v2 = *(v0[14] + 16);

  v4 = __OFADD__(v1, v2);
  v5 = v1 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1B4F26534;
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[5];

    return sub_1B4F25D48(v5, v9, v7);
  }

  return result;
}

uint64_t sub_1B4F26534()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 80);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B4F2664C()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t CatalogClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CatalogClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CatalogClient.deleteAllCatalogTipJournals()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84750;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 92;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t CatalogClient.deleteCatalog()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0x61436574656C6564;
  v3._object = 0xEF2928676F6C6174;
  v4._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 62;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t CatalogClient.deleteCatalogSyncAnchor()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84770;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 63;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteCatalogEditorialCollectionDetail(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x80000001B4F84790;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 88;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F67394();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CCFF0], MEMORY[0x1E69CCFF8], ObjectType, v10);
}

uint64_t CatalogClient.fetchRemoteCatalogModalityDetail(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x80000001B4F847C0;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 65;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F664C4();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC2B8], MEMORY[0x1E69CC2C0], ObjectType, v10);
}

uint64_t CatalogClient.fetchRemoteCatalogProgramDetail(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001B4F847F0;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 66;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F663D4();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC0F0], MEMORY[0x1E69CC0F8], ObjectType, v10);
}

uint64_t CatalogClient.fetchRemoteCatalogWorkoutDetail(_:completedCountOverride:)()
{
  v1 = v0;
  v2 = sub_1B4F66FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9._object = 0x80000001B4F84720;
  v10._countAndFlagsBits = 0xD00000000000003ALL;
  v10._object = 0x80000001B4F84820;
  v9._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v9, v10);

  sub_1B4F66FB4();
  v11 = *(v0 + 16);
  v12 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v18 = 68;
  v14 = *(v12 + 32);
  v15 = sub_1B4F66404();
  v14(&v18, v7, v2, v15, MEMORY[0x1E69CCCB0], MEMORY[0x1E69CCCB8], MEMORY[0x1E69CC198], MEMORY[0x1E69CC1A0], ObjectType, v12);
  return (*(v3 + 8))(v7, v2);
}

uint64_t CatalogClient.fetchRemoteCatalogWorkouts(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84860;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 86;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66FD4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7300, &qword_1B4F7C4F8);
  v12 = sub_1B4E2F2A0(&qword_1EB8F7308, &qword_1EB8F7300, &qword_1B4F7C4F8);
  v13 = sub_1B4F2DF28();
  return v9(&v16, a1, v10, v11, MEMORY[0x1E69CCCC0], MEMORY[0x1E69CCCC8], v12, v13, ObjectType, v7);
}

uint64_t CatalogClient.fetchRemoteNavigationEditorialContent()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001B4F84880;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 106;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66E94();
  return v8(&v11, v9, MEMORY[0x1E69CCBB8], MEMORY[0x1E69CCBC0], ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteSummaryShelfLockupDescriptors()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F848B0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 110;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteTipShelfLockupDescriptors()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000026;
  v4._object = 0x80000001B4F848E0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 90;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteWorkoutShelfLockupDescriptors()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F84910;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 112;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteTrainerDetail(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x80000001B4F84720;
  v8._object = 0x80000001B4F84940;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 73;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65514();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB3B8], MEMORY[0x1E69CB3C0], ObjectType, v10);
}

uint64_t CatalogClient.fetchRemoteCatalogLockups(displayStyle:placeholders:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v22 = sub_1B4F65FE4();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9._object = 0x80000001B4F84720;
  v10._countAndFlagsBits = 0xD000000000000035;
  v10._object = 0x80000001B4F84960;
  v9._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v9, v10);

  sub_1B4F65FD4();
  v11 = *(v1 + 16);
  v12 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v23 = 67;
  v14 = *(v12 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7328, &qword_1B4F7C508);
  v16 = sub_1B4E2F2A0(&qword_1EDB6DBF0, &qword_1EB8F7328, &qword_1B4F7C508);
  v17 = sub_1B4F2E090();
  v20 = v12;
  v18 = v22;
  v14(&v23, v7, v22, v15, MEMORY[0x1E69CBC30], MEMORY[0x1E69CBC38], v16, v17, ObjectType, v20);
  return (*(v3 + 8))(v7, v18);
}

uint64_t CatalogClient.fetchRemoteExploreShelfLockupDescriptors()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F849A0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 102;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteGalleryLockups(displayStyle:identifier:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v22 = sub_1B4F66B14();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9._object = 0x80000001B4F84720;
  v10._countAndFlagsBits = 0xD000000000000033;
  v10._object = 0x80000001B4F849D0;
  v9._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v9, v10);

  sub_1B4F66B04();
  v11 = *(v1 + 16);
  v12 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v23 = 69;
  v14 = *(v12 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7330, &qword_1B4F7C510);
  v16 = sub_1B4E2F2A0(&qword_1EB8F7338, &qword_1EB8F7330, &qword_1B4F7C510);
  v17 = sub_1B4F2E144();
  v20 = v12;
  v18 = v22;
  v14(&v23, v7, v22, v15, MEMORY[0x1E69CCA40], MEMORY[0x1E69CCA48], v16, v17, ObjectType, v20);
  return (*(v3 + 8))(v7, v18);
}

uint64_t CatalogClient.fetchRemoteShelfLockupDescriptors()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84A10;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 70;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteShowcaseLockupContent()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F84A40;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 71;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7350, &qword_1B4F7C518);
  v10 = sub_1B4E2F2A0(&qword_1EB8F7358, &qword_1EB8F7350, &qword_1B4F7C518);
  v11 = sub_1B4F2E1F8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteTopShelfCatalogWorkoutDetails()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F84A70;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 72;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7370, &qword_1B4F7C520);
  v10 = sub_1B4E2F2A0(&qword_1EB8F7378, &qword_1EB8F7370, &qword_1B4F7C520);
  v11 = sub_1B4F2E2AC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteTrainerTipGalleryDetail()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F84AA0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 104;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66934();
  return v8(&v11, v9, MEMORY[0x1E69CC7C0], MEMORY[0x1E69CC7C8], ObjectType, v6);
}

uint64_t CatalogClient.fetchRemoteExploreTrainerTipShelfLockupDescriptor()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000033;
  v4._object = 0x80000001B4F84AD0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 109;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66514();
  return v8(&v11, v9, MEMORY[0x1E69CC390], MEMORY[0x1E69CC398], ObjectType, v6);
}

uint64_t CatalogClient.filterCatalog(filter:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B10;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 74;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65284();
  v12 = sub_1B4F66144();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CB2B8], MEMORY[0x1E69CB2C0], MEMORY[0x1E69CBEC0], MEMORY[0x1E69CBEC8], ObjectType, v8);
}

uint64_t CatalogClient.queryFilterOptions(for:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B30;
  v6._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 81;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65E74();
  v12 = sub_1B4F663C4();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CB980], MEMORY[0x1E69CB988], MEMORY[0x1E69CC0E0], MEMORY[0x1E69CC0E8], ObjectType, v8);
}

uint64_t CatalogClient.insertCatalogTipJournal(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 91;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65E94();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB9A0], MEMORY[0x1E69CB9A8], ObjectType, v8);
}

uint64_t CatalogClient.insertChangeset(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B70;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 75;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65CC4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB708], MEMORY[0x1E69CB710], ObjectType, v8);
}

uint64_t CatalogClient.queryAllCatalogModalityReferences()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84B90;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 76;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7390, &qword_1B4F7C528);
  v10 = sub_1B4F2E360();
  v11 = sub_1B4F2E3E4();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllCatalogProgramReferences()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F84BC0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 77;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7398, &qword_1B4F7C530);
  v10 = sub_1B4F2E498();
  v11 = sub_1B4F2E51C();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryCatalogWorkoutReferenceCount()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84BF0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 107;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t CatalogClient.queryCatalogWorkoutReferences(workoutIdentifiers:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000032;
  v6._object = 0x80000001B4F84C20;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 89;
  v18 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  v15 = sub_1B4F2E5D0();
  v16 = sub_1B4F2E654();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v8);
}

uint64_t CatalogClient.filterCatalogWorkoutReferenceIdentifiers(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001B4F84C60;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 98;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66414();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CC1D0], MEMORY[0x1E69CC1D8], v13, v14, ObjectType, v8);
}

uint64_t CatalogClient.queryAllBodyFocuses()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84C90;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 94;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A0, &qword_1B4F7C538);
  v10 = sub_1B4F2E708();
  v11 = sub_1B4F2E78C();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllCatalogThemeCategories()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84CB0;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 95;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A8, &qword_1B4F7C540);
  v10 = sub_1B4F2E840();
  v11 = sub_1B4F2E8C4();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllCatalogThemes()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84CE0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 87;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73C8, &qword_1B4F7C548);
  v10 = sub_1B4F2E978();
  v11 = sub_1B4F2E9FC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllEquipment()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D00;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 96;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73D0, &qword_1B4F7C550);
  v10 = sub_1B4F2EAB0();
  v11 = sub_1B4F2EB34();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllMusicGenres()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D20;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 93;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73D8, &qword_1B4F7C558);
  v10 = sub_1B4F2EBE8();
  v11 = sub_1B4F2EC6C();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllSkillLevels()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D40;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 97;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73E0, &qword_1B4F7C560);
  v10 = sub_1B4F2ED20();
  v11 = sub_1B4F2EDA4();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryAllTrainerReferences()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D60;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 78;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73E8, &qword_1B4F7C568);
  v10 = sub_1B4F2EE58();
  v11 = sub_1B4F2EEDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryCachedCatalogWorkoutLockups(inclusion:displayStyle:sortMode:limit:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25[1] = a3;
  v26 = sub_1B4F67414();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4F67C54();
  __swift_project_value_buffer(v12, qword_1EDB72490);
  v13._object = 0x80000001B4F84720;
  v14._countAndFlagsBits = 0xD000000000000048;
  v14._object = 0x80000001B4F84D80;
  v13._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v13, v14);
  sub_1B4F2EF90(a1, a2 & 1);
  sub_1B4F67404();
  v15 = *(v3 + 16);
  v16 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v27 = 79;
  v18 = *(v16 + 32);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7328, &qword_1B4F7C508);
  v20 = sub_1B4E2F2A0(&qword_1EDB6DBF0, &qword_1EB8F7328, &qword_1B4F7C508);
  v21 = sub_1B4F2E090();
  v24 = ObjectType;
  v22 = v26;
  v18(&v27, v11, v26, v19, MEMORY[0x1E69CD0B8], MEMORY[0x1E69CD0C0], v20, v21, v24, v16);
  return (*(v7 + 8))(v11, v22);
}

uint64_t CatalogClient.queryCachedCatalogWorkoutDetail(_:completedCountOverride:)()
{
  v1 = v0;
  v2 = sub_1B4F66FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9._object = 0x80000001B4F84720;
  v10._countAndFlagsBits = 0xD00000000000003ALL;
  v10._object = 0x80000001B4F84DD0;
  v9._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v9, v10);

  sub_1B4F66FB4();
  v11 = *(v0 + 16);
  v12 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v18 = 80;
  v14 = *(v12 + 32);
  v15 = sub_1B4F66404();
  v14(&v18, v7, v2, v15, MEMORY[0x1E69CCCB0], MEMORY[0x1E69CCCB8], MEMORY[0x1E69CC198], MEMORY[0x1E69CC1A0], ObjectType, v12);
  return (*(v3 + 8))(v7, v2);
}

uint64_t CatalogClient.requestCatalogLockupPlaceholderBackfill(request:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD000000000000031;
  v5._object = 0x80000001B4F84E10;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 105;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65964();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v12 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v13 = sub_1B4E598F4();
  return v9(&v16, a1, v10, v11, MEMORY[0x1E69CB560], MEMORY[0x1E69CB568], v12, v13, ObjectType, v7);
}

uint64_t CatalogClient.refreshRemoteCatalogWorkoutMetadata(mediaTypes:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000030;
  v6._object = 0x80000001B4F84E50;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v17 = 82;
  v16 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73F0, &qword_1B4F7C570);
  v12 = sub_1B4F674C4();
  v13 = sub_1B4E2F2A0(&qword_1EB8F73F8, &qword_1EB8F73F0, &qword_1B4F7C570);
  v14 = sub_1B4F2EFE4();
  return v10(&v17, &v16, v11, v12, v13, v14, MEMORY[0x1E69CD188], MEMORY[0x1E69CD190], ObjectType, v8);
}

uint64_t CatalogClient.queryCatalogSyncAnchor()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F29DE0, 0, 0);
}

uint64_t sub_1B4F29DE0()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84E90;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 108;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F65E84();
  *(v0 + 40) = v9;
  *v8 = v0;
  v8[1] = sub_1B4F29F54;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CB990];
  v12 = MEMORY[0x1E69CB998];

  return TransportClient.sendRequest<A>(_:)(v10, (v0 + 56), ObjectType, v9, v5, v11, v12);
}

uint64_t sub_1B4F29F54()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B4E40AEC;
  }

  else
  {
    v3 = sub_1B4F2A068;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F2A068()
{
  (*(*(v0[5] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t CatalogClient.requestCatalogSync(mode:)(char a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84EB0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 85;
  v11 = a1;
  return (*(v8 + 16))(&v12, &v11, MEMORY[0x1E69CC3F8], MEMORY[0x1E69CC3E8], MEMORY[0x1E69CC3F0], ObjectType, v8);
}

uint64_t CatalogClient.queryCatalogWorkoutReferences(releasedSince:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001B4F84ED0;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 100;
  v10 = *(v8 + 32);
  v11 = sub_1B4F64964();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v13 = sub_1B4F2E5D0();
  v14 = sub_1B4F2E654();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CAE50], MEMORY[0x1E69CAE58], v13, v14, ObjectType, v8);
}

uint64_t CatalogClient.queryLatestCatalogWorkoutReferences(limit:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F84F00;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 103;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v12 = sub_1B4F2E5D0();
  v13 = sub_1B4F2E654();
  return v10(&v16, &v15, MEMORY[0x1E69E6530], v11, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v12, v13, ObjectType, v8);
}

uint64_t CatalogClient.queryCatalogWorkoutReferences(request:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x80000001B4F84F30;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 111;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66154();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v13 = sub_1B4F2E5D0();
  v14 = sub_1B4F2E654();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CBEF0], MEMORY[0x1E69CBEF8], v13, v14, ObjectType, v8);
}

uint64_t CatalogClient.enumerateCatalogWorkoutReferences(handler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F2A63C, 0, 0);
}

uint64_t sub_1B4F2A63C()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84F60;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F2A758;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_1B4F25D48(0, v7, v5);
}

uint64_t sub_1B4F2A758()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B4F2A84C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84750;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 92;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F2A938()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0x61436574656C6564;
  v3._object = 0xEF2928676F6C6174;
  v4._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 62;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F2AA28()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84770;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 63;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F2AB14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x80000001B4F84790;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 88;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F67394();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CCFF0], MEMORY[0x1E69CCFF8], ObjectType, v10);
}

uint64_t sub_1B4F2AC4C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x80000001B4F847C0;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 65;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F664C4();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC2B8], MEMORY[0x1E69CC2C0], ObjectType, v10);
}

uint64_t sub_1B4F2AD84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001B4F847F0;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 66;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F663D4();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC0F0], MEMORY[0x1E69CC0F8], ObjectType, v10);
}

uint64_t sub_1B4F2AEE4(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84860;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 86;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66FD4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7300, &qword_1B4F7C4F8);
  v12 = sub_1B4E2F2A0(&qword_1EB8F7308, &qword_1EB8F7300, &qword_1B4F7C4F8);
  v13 = sub_1B4F2DF28();
  return v9(&v16, a1, v10, v11, MEMORY[0x1E69CCCC0], MEMORY[0x1E69CCCC8], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F2B060()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001B4F84880;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 106;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66E94();
  return v8(&v11, v9, MEMORY[0x1E69CCBB8], MEMORY[0x1E69CCBC0], ObjectType, v6);
}

uint64_t sub_1B4F2B174()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F848B0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 110;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2B2CC()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000026;
  v4._object = 0x80000001B4F848E0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 90;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2B424()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F84910;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 112;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2B57C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x80000001B4F84720;
  v8._object = 0x80000001B4F84940;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 73;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65514();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB3B8], MEMORY[0x1E69CB3C0], ObjectType, v10);
}

uint64_t sub_1B4F2B6FC()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F849A0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 102;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2B854()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84A10;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 70;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v11 = sub_1B4F2DFDC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2B9AC()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F84A40;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 71;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7350, &qword_1B4F7C518);
  v10 = sub_1B4E2F2A0(&qword_1EB8F7358, &qword_1EB8F7350, &qword_1B4F7C518);
  v11 = sub_1B4F2E1F8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2BB04()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F84A70;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 72;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7370, &qword_1B4F7C520);
  v10 = sub_1B4E2F2A0(&qword_1EB8F7378, &qword_1EB8F7370, &qword_1B4F7C520);
  v11 = sub_1B4F2E2AC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2BC5C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F84AA0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 104;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66934();
  return v8(&v11, v9, MEMORY[0x1E69CC7C0], MEMORY[0x1E69CC7C8], ObjectType, v6);
}

uint64_t sub_1B4F2BD70()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000033;
  v4._object = 0x80000001B4F84AD0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 109;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66514();
  return v8(&v11, v9, MEMORY[0x1E69CC390], MEMORY[0x1E69CC398], ObjectType, v6);
}

uint64_t sub_1B4F2BE88(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B10;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 74;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65284();
  v12 = sub_1B4F66144();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CB2B8], MEMORY[0x1E69CB2C0], MEMORY[0x1E69CBEC0], MEMORY[0x1E69CBEC8], ObjectType, v8);
}

uint64_t sub_1B4F2BFC8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 91;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65E94();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB9A0], MEMORY[0x1E69CB9A8], ObjectType, v8);
}

uint64_t sub_1B4F2C0EC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B70;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 75;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65CC4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB708], MEMORY[0x1E69CB710], ObjectType, v8);
}

uint64_t sub_1B4F2C210()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84C90;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 94;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A0, &qword_1B4F7C538);
  v10 = sub_1B4F2E708();
  v11 = sub_1B4F2E78C();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2C340()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84B90;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 76;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7390, &qword_1B4F7C528);
  v10 = sub_1B4F2E360();
  v11 = sub_1B4F2E3E4();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2C470()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F84BC0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 77;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7398, &qword_1B4F7C530);
  v10 = sub_1B4F2E498();
  v11 = sub_1B4F2E51C();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2C5A0()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84BF0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 107;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t sub_1B4F2C6A4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000032;
  v6._object = 0x80000001B4F84C20;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 89;
  v18 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  v15 = sub_1B4F2E5D0();
  v16 = sub_1B4F2E654();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v8);
}

uint64_t sub_1B4F2C818(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001B4F84C60;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 98;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66414();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CC1D0], MEMORY[0x1E69CC1D8], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4F2C974()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84CB0;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 95;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A8, &qword_1B4F7C540);
  v10 = sub_1B4F2E840();
  v11 = sub_1B4F2E8C4();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F2CAA4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84CE0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 87;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73C8, &qword_1B4F7C548);
  v10 = sub_1B4F2E978();
  v11 = sub_1B4F2E9FC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}