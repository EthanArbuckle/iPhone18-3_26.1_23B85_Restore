id sub_299AE7EE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 usesMeteredFare];
  *a2 = result;
  return result;
}

id INParameter.init<A, B>(keyPath:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x29EDCA118]);
  if (swift_isClassType())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (v3 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter(), !v4))
  {

    return 0;
  }

  else
  {
    v5 = v3;
    v6 = v4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = swift_getObjCClassFromMetadata();
    v9 = MEMORY[0x29C2AAC80](v5, v6);

    v10 = [ObjCClassFromMetadata parameterForClass:v8 keyPath:v9];

    return v10;
  }
}

INSetCarLockStatusIntent __swiftcall INSetCarLockStatusIntent.init(locked:carName:)(Swift::Bool_optional locked, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  if (locked.value == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocked:v3 carName:isa];

  return v4;
}

uint64_t INSetCarLockStatusIntent.locked.getter()
{
  v1 = [v0 locked];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INRequestRideIntent.partySize.getter()
{
  v1 = [v0 partySize];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id static INNotebookItemTypeResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x29EDCA190];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [ObjCClassFromMetadata disambiguationWithNotebookItemTypesToDisambiguate_];

  return v8;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

id INRideOption.usesMeteredFare.getter()
{
  v1 = [v0 usesMeteredFare];

  return v1;
}

void INRideOption.usesMeteredFare.setter(void *a1)
{
  [v1 setUsesMeteredFare_];
}

void (*INRideOption.usesMeteredFare.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 usesMeteredFare];
  return INRideOption.usesMeteredFare.modify;
}

void INRideOption.usesMeteredFare.modify(id *a1)
{
  v1 = *a1;
  [a1[1] setUsesMeteredFare_];
}

uint64_t INRideOption.usesMeteredFare.getter()
{
  v1 = [v0 usesMeteredFare];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void key path getter for INRideOption.usesMeteredFare : INRideOption(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 usesMeteredFare];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void key path setter for INRideOption.usesMeteredFare : INRideOption(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = v4;
  [v3 setUsesMeteredFare_];
}

void INRideOption.usesMeteredFare.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v3 = v2;
  [v1 setUsesMeteredFare_];
}

void (*INRideOption.usesMeteredFare.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 usesMeteredFare];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return INRideOption.usesMeteredFare.modify;
}

void INRideOption.usesMeteredFare.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = v3;
  [*a1 setUsesMeteredFare_];
}

id static INIntegerResolutionResult.confirmationRequired(with:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v3 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v3;
}

unint64_t type metadata accessor for INMediaItem()
{
  result = lazy cache variable for type metadata for INMediaItem;
  if (!lazy cache variable for type metadata for INMediaItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INMediaItem);
  }

  return result;
}

uint64_t INPlayMediaIntent.playShuffled.getter(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

id INPlayMediaIntent.playbackSpeed.getter()
{
  result = [v0 playbackSpeed];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t INSearchCallHistoryIntent.unseen.getter()
{
  v1 = [v0 unseen];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

INSetDefrosterSettingsInCarIntent __swiftcall INSetDefrosterSettingsInCarIntent.init(enable:defroster:carName:)(Swift::Bool_optional enable, INCarDefroster defroster, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  if (enable.value == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnable:v5 defroster:defroster carName:isa];

  return v6;
}

INSetDefrosterSettingsInCarIntent __swiftcall INSetDefrosterSettingsInCarIntent.init(enable:defroster:)(Swift::Bool_optional enable, INCarDefroster defroster)
{
  if (enable.value == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnable:v3 defroster:defroster];

  return v4;
}

uint64_t INSetDefrosterSettingsInCarIntent.enable.getter()
{
  v1 = [v0 enable];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
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

uint64_t outlined init with copy of Measurement<NSUnitTemperature>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Measurement<NSUnitTemperature>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id INSetClimateSettingsInCarIntent.fanSpeedIndex.getter()
{
  v1 = [v0 fanSpeedIndex];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id INSetClimateSettingsInCarIntent.fanSpeedPercentage.getter()
{
  result = [v0 fanSpeedPercentage];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileNumber:profileName:isDefaultProfile:carName:)(Swift::Int_optional profileNumber, Swift::String_optional profileName, Swift::Bool_optional isDefaultProfile, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  object = profileName.value._object;
  countAndFlagsBits = profileName.value._countAndFlagsBits;
  if (profileNumber.is_nil)
  {
    v8 = 0;
    if (profileName.value._object)
    {
LABEL_3:
      v9 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (object)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (isDefaultProfile.value == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v8 profileName:v9 defaultProfile:v10 carName:isa];

  return v11;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(defaultProfile:)(Swift::Int_optional defaultProfile)
{
  if (defaultProfile.is_nil)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:0 defaultProfile:v1];

  return v2;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileLabel:)(Swift::String_optional profileLabel)
{
  if (profileLabel.value._object)
  {
    v1 = MEMORY[0x29C2AAC80](profileLabel.value._countAndFlagsBits);
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:v1 defaultProfile:0];

  return v2;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileLabel:isDefaultProfile:)(Swift::String_optional profileLabel, Swift::Bool_optional isDefaultProfile)
{
  if (profileLabel.value._object)
  {
    v3 = MEMORY[0x29C2AAC80](profileLabel.value._countAndFlagsBits);
  }

  else
  {
    v3 = 0;
  }

  if (isDefaultProfile.value == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:v3 defaultProfile:v4];

  return v5;
}

id INSetProfileInCarIntent.init(profileLabel:defaultProfile:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    goto LABEL_6;
  }

  v6 = MEMORY[0x29C2AAC80]();

  if ((a4 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_6:
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:v6 defaultProfile:v7];

  return v8;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileNumber:defaultProfile:)(Swift::Int_optional profileNumber, Swift::Int_optional defaultProfile)
{
  is_nil = defaultProfile.is_nil;
  value = defaultProfile.value;
  if (!profileNumber.is_nil)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (!is_nil)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if (defaultProfile.is_nil)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_6:
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v4 profileName:0 defaultProfile:v5];

  return v6;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileNumber:profileLabel:)(Swift::Int_optional profileNumber, Swift::String_optional profileLabel)
{
  object = profileLabel.value._object;
  countAndFlagsBits = profileLabel.value._countAndFlagsBits;
  if (!profileNumber.is_nil)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (object)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if (!profileLabel.value._object)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

LABEL_6:
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v4 profileName:v5 defaultProfile:0];

  return v6;
}

id INSetProfileInCarIntent.init(profileNumber:profileName:isDefaultProfile:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v8 = 0;
    if (a4)
    {
LABEL_3:
      v9 = MEMORY[0x29C2AAC80](a3, a4);

      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (a5 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v8 profileName:v9 defaultProfile:v10];

  return v11;
}

id INSetProfileInCarIntent.init(profileNumber:profileLabel:defaultProfile:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = MEMORY[0x29C2AAC80](a3, a4);

  if ((a6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = 0;
LABEL_8:
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v10 profileName:v11 defaultProfile:v12];

  return v13;
}

uint64_t INSetProfileInCarIntent.isDefaultProfile.getter()
{
  v1 = [v0 defaultProfile];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INSetProfileInCarIntent.defaultProfile.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = [v2 integerValue];

  return v4;
}

INSetSeatSettingsInCarIntent __swiftcall INSetSeatSettingsInCarIntent.init(enableHeating:enableCooling:enableMassage:seat:level:relativeLevel:carName:)(Swift::Bool_optional enableHeating, Swift::Bool_optional enableCooling, Swift::Bool_optional enableMassage, INCarSeat seat, Swift::Int_optional level, INRelativeSetting relativeLevel, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  is_nil = level.is_nil;
  value = level.value;
  if (enableHeating.value == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableCooling.value == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableMassage.value != 2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    if (!is_nil)
    {
      goto LABEL_9;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  if (is_nil)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_12:
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnableHeating:v13 enableCooling:v14 enableMassage:v15 seat:seat level:v16 relativeLevelSetting:relativeLevel carName:isa];

  return v17;
}

INSetSeatSettingsInCarIntent __swiftcall INSetSeatSettingsInCarIntent.init(enableHeating:enableCooling:enableMassage:seat:level:relativeLevel:)(Swift::Bool_optional enableHeating, Swift::Bool_optional enableCooling, Swift::Bool_optional enableMassage, INCarSeat seat, Swift::Int_optional level, INRelativeSetting relativeLevel)
{
  is_nil = level.is_nil;
  value = level.value;
  if (enableHeating.value == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableCooling.value == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableMassage.value != 2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    if (!is_nil)
    {
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  if (is_nil)
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_12:
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnableHeating:v12 enableCooling:v13 enableMassage:v14 seat:seat level:v15 relativeLevelSetting:relativeLevel];

  return v16;
}

id INSetSeatSettingsInCarIntent.level.getter()
{
  v1 = [v0 level];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t static NSString.deferredLocalizedIntentsString(with:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized withVaList<A>(_:_:)(a3, v3, a1, a2);
  v8 = v7;

  return v8;
}

uint64_t static NSString.deferredLocalizedIntentsString(with:table:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  specialized withVaList<A>(_:_:)(a5, v5, a1, a2, a3, a4);
  v12 = v11;

  return v12;
}

void static NSString.deferredLocalizedIntentsString(with:table:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = MEMORY[0x29C2AAC80](a1, a2);
  v12 = MEMORY[0x29C2AAC80](a3, a4);
  v13 = [ObjCClassFromMetadata deferredLocalizedIntentsStringWithFormat:v11 fromTable:v12 arguments:a5];

  if (!v13)
  {
    __break(1u);
  }
}

void specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v6 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    while (1)
    {
      v10 = (v9 + 40 * v8);
      v11 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v12 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v13 = *v6;
      v14 = *(v12 + 16);
      v15 = __OFADD__(*v6, v14);
      v16 = *v6 + v14;
      if (v15)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v17 = v5[4];
      if (v17 >= v16)
      {
        goto LABEL_18;
      }

      if (v17 + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v18 = v5[5];
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      v5[4] = v16;
      if ((v16 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v19 = v12;
      v20 = swift_slowAlloc();
      v21 = v20;
      v5[5] = v20;
      if (v18)
      {
        break;
      }

      v12 = v19;
      if (!v21)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_19:
      v23 = *(v12 + 16);
      if (v23)
      {
        v24 = (v12 + 32);
        v25 = *v6;
        while (1)
        {
          v26 = *v24++;
          *&v21[8 * v25] = v26;
          v25 = *v6 + 1;
          if (__OFADD__(*v6, 1))
          {
            break;
          }

          *v6 = v25;
          if (!--v23)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_3:

      if (++v8 == v7)
      {
        goto LABEL_26;
      }
    }

    if (v20 != v18 || v20 >= &v18[8 * v13])
    {
      memmove(v20, v18, 8 * v13);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v12 = v19;
LABEL_18:
    v21 = v5[5];
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_26:
  v27 = __VaListBuilder.va_list()();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = MEMORY[0x29C2AAC80](a3, a4);
  v30 = [ObjCClassFromMetadata deferredLocalizedIntentsStringWithFormat:v29 fromTable:0 arguments:v27];

  if (!v30)
  {
    goto LABEL_32;
  }
}

void specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for __VaListBuilder();
  v7 = swift_allocObject();
  v7[2] = 8;
  v7[3] = 0;
  v8 = v7 + 3;
  v7[4] = 0;
  v7[5] = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a1 + 32;
    while (1)
    {
      v12 = (v11 + 40 * v10);
      v13 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v14 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v15 = *v8;
      v16 = *(v14 + 16);
      v17 = __OFADD__(*v8, v16);
      v18 = *v8 + v16;
      if (v17)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v19 = v7[4];
      if (v19 >= v18)
      {
        goto LABEL_18;
      }

      if (v19 + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v20 = v7[5];
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      v7[4] = v18;
      if ((v18 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v21 = v14;
      v22 = swift_slowAlloc();
      v23 = v22;
      v7[5] = v22;
      if (v20)
      {
        break;
      }

      v14 = v21;
      if (!v23)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_19:
      v25 = *(v14 + 16);
      if (v25)
      {
        v26 = (v14 + 32);
        v27 = *v8;
        while (1)
        {
          v28 = *v26++;
          *&v23[8 * v27] = v28;
          v27 = *v8 + 1;
          if (__OFADD__(*v8, 1))
          {
            break;
          }

          *v8 = v27;
          if (!--v25)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_3:

      if (++v10 == v9)
      {
        goto LABEL_26;
      }
    }

    if (v22 != v20 || v22 >= &v20[8 * v15])
    {
      memmove(v22, v20, 8 * v15);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v14 = v21;
LABEL_18:
    v23 = v7[5];
    if (!v23)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_26:
  v29 = __VaListBuilder.va_list()();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = MEMORY[0x29C2AAC80](a3, a4);
  v32 = MEMORY[0x29C2AAC80](a5, a6);
  v33 = [ObjCClassFromMetadata deferredLocalizedIntentsStringWithFormat:v31 fromTable:v32 arguments:v29];

  if (!v33)
  {
    goto LABEL_32;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id INCallRecord.init(identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:numberOfCalls:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, char a11)
{
  v30 = a5;
  v31 = a6;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v19 = &v30 - v18;
  v20 = MEMORY[0x29C2AAC80](a1, a2);

  outlined init with copy of Date?(a3, v19);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  isa = 0;
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v19, v21);
  }

  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  if (a9 != 2)
  {
    v25 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    if ((a11 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v25 = 0;
  if (a11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v26 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_11:
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v28 = [v27 initWithIdentifier:v20 dateCreated:isa caller:a4 callRecordType:v30 callCapability:v31 callDuration:v24 unseen:v25 numberOfCalls:v26];

  outlined destroy of Date?(a3);
  return v28;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id INCallRecord.init(identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v27 = a5;
  v28 = a6;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v17 = &v27 - v16;
  v18 = MEMORY[0x29C2AAC80](a1, a2);

  outlined init with copy of Date?(a3, v17);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  isa = 0;
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v20 + 8))(v17, v19);
  }

  if (a8)
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  if (a9 == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = [v24 initWithIdentifier:v18 dateCreated:isa caller:a4 callRecordType:v27 callCapability:v28 callDuration:v22 unseen:v23];

  outlined destroy of Date?(a3);
  return v25;
}

id INCallRecord.callDuration.getter()
{
  result = [v0 callDuration];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t INCallRecord.unseen.getter()
{
  v1 = [v0 unseen];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INCallRecord.numberOfCalls.getter()
{
  v1 = [v0 numberOfCalls];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id static INDoubleResolutionResult.confirmationRequired(with:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  v3 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v3;
}

id INMediaUserContext.numberOfLibraryItems.getter()
{
  v1 = [v0 numberOfLibraryItems];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void key path getter for INMediaUserContext.numberOfLibraryItems : INMediaUserContext(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 numberOfLibraryItems];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void key path setter for INMediaUserContext.numberOfLibraryItems : INMediaUserContext(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v5 = isa;
  [v2 setNumberOfLibraryItems_];
}

void INMediaUserContext.numberOfLibraryItems.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = isa;
  [v2 setNumberOfLibraryItems_];
}

void (*INMediaUserContext.numberOfLibraryItems.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 numberOfLibraryItems];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INMediaUserContext.numberOfLibraryItems.modify;
}

void INMediaUserContext.numberOfLibraryItems.modify(uint64_t *a1)
{
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v3 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = isa;
  [a1[2] setNumberOfLibraryItems_];
}

void _INIntentSetImageKeyPath.setImage<A>(_:forParameterNamed:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(*a2 + *MEMORY[0x29EDCA118]);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v9 = v16 - v8;
  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    (*(v6 + 16))(v9, v3, v5);
    type metadata accessor for INIntent();
    swift_dynamicCast();
    v14 = v16[1];
    v15 = MEMORY[0x29C2AAC80](v12, v13);

    [v14 setImage:a1 forParameterNamed:v15];
  }
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

id _INIntentSetImageKeyPath.image<A>(forParameterNamed:)(void *a1)
{
  v2 = v1;
  v3 = *(*a1 + *MEMORY[0x29EDCA118]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = v16 - v6;
  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = v9;
  (*(v4 + 16))(v7, v2, v3);
  type metadata accessor for INIntent();
  swift_dynamicCast();
  v12 = v16[1];
  v13 = MEMORY[0x29C2AAC80](v10, v11);

  v14 = [v12 imageForParameterNamed_];

  return v14;
}

unint64_t type metadata accessor for INTask()
{
  result = lazy cache variable for type metadata for INTask;
  if (!lazy cache variable for type metadata for INTask)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INTask);
  }

  return result;
}

uint64_t INDeleteTasksIntent.all.getter()
{
  v1 = [v0 all];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void (*INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 fuelPercentRemaining];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v5 == 0;
  return INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.modify;
}

unint64_t INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 | ((v3 == 0) << 32);
}

void key path getter for INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining : INGetCarPowerLevelStatusIntentResponse(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 4) = v5 == 0;
}

void key path setter for INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining : INGetCarPowerLevelStatusIntentResponse(int *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v9 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    LODWORD(v10) = v8;
    v7 = [v9 initWithFloat_];
  }

  v11 = v7;
  [v6 *a5];
}

void INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.setter(uint64_t a1, SEL *a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = a1;
    v5 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    LODWORD(v6) = v4;
    v7 = [v5 initWithFloat_];
  }

  v8 = v7;
  [v2 *a2];
}

void (*INGetCarPowerLevelStatusIntentResponse.chargePercentRemaining.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 chargePercentRemaining];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v5 == 0;
  return INGetCarPowerLevelStatusIntentResponse.chargePercentRemaining.modify;
}

void INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.modify(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + 12))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    LODWORD(v8) = v6;
    v5 = [v7 initWithFloat_];
  }

  v9 = v5;
  [*a1 *a3];
}

uint64_t INGetCarPowerLevelStatusIntentResponse.charging.getter()
{
  v1 = [v0 charging];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void key path getter for INGetCarPowerLevelStatusIntentResponse.charging : INGetCarPowerLevelStatusIntentResponse(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 charging];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void key path setter for INGetCarPowerLevelStatusIntentResponse.charging : INGetCarPowerLevelStatusIntentResponse(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = v4;
  [v3 setCharging_];
}

void INGetCarPowerLevelStatusIntentResponse.charging.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v3 = v2;
  [v1 setCharging_];
}

void (*INGetCarPowerLevelStatusIntentResponse.charging.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 charging];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return INGetCarPowerLevelStatusIntentResponse.charging.modify;
}

void INGetCarPowerLevelStatusIntentResponse.charging.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = v3;
  [*a1 setCharging_];
}

id INGetCarPowerLevelStatusIntentResponse.minutesToFull.getter()
{
  v1 = [v0 minutesToFull];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void key path getter for INGetCarPowerLevelStatusIntentResponse.minutesToFull : INGetCarPowerLevelStatusIntentResponse(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 minutesToFull];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void key path setter for INGetCarPowerLevelStatusIntentResponse.minutesToFull : INGetCarPowerLevelStatusIntentResponse(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setMinutesToFull_];
}

void INGetCarPowerLevelStatusIntentResponse.minutesToFull.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setMinutesToFull_];
}

void (*INGetCarPowerLevelStatusIntentResponse.minutesToFull.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 minutesToFull];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INGetCarPowerLevelStatusIntentResponse.minutesToFull.modify;
}

void INGetCarPowerLevelStatusIntentResponse.minutesToFull.modify(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v3 = v2;
  [*(a1 + 16) setMinutesToFull_];
}

id INSearchForPhotosIntentResponse.searchResultsCount.getter()
{
  v1 = [v0 searchResultsCount];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void key path getter for INSearchForPhotosIntentResponse.searchResultsCount : INSearchForPhotosIntentResponse(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 searchResultsCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void key path setter for INSearchForPhotosIntentResponse.searchResultsCount : INSearchForPhotosIntentResponse(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setSearchResultsCount_];
}

void INSearchForPhotosIntentResponse.searchResultsCount.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setSearchResultsCount_];
}

void (*INSearchForPhotosIntentResponse.searchResultsCount.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 searchResultsCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INSearchForPhotosIntentResponse.searchResultsCount.modify;
}

void INSearchForPhotosIntentResponse.searchResultsCount.modify(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v3 = v2;
  [*(a1 + 16) setSearchResultsCount_];
}

uint64_t INSnoozeTasksIntent.all.getter()
{
  v1 = [v0 all];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

INSaveProfileInCarIntent __swiftcall INSaveProfileInCarIntent.init(profileNumber:profileLabel:)(Swift::Int_optional profileNumber, Swift::String_optional profileLabel)
{
  object = profileLabel.value._object;
  countAndFlagsBits = profileLabel.value._countAndFlagsBits;
  if (!profileNumber.is_nil)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (object)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if (!profileLabel.value._object)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

LABEL_6:
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v4 profileLabel:v5];

  return v6;
}

id INSaveProfileInCarIntent.profileNumber.getter()
{
  v1 = [v0 profileNumber];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t INMediaDestination.playlistName.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INMediaDestination.description.getter(SEL *a1)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1;
    v5 = objc_opt_self();
    v6 = MEMORY[0x29C2AAC80](v4, v3);
    v7 = [v5 playlistDestinationWithName_];
  }

  else
  {
    v7 = [objc_opt_self() libraryDestination];
  }

  v8 = [v7 *a1];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance INMediaDestination(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3[1];
  if (v5)
  {
    v6 = *v3;
    v7 = objc_opt_self();
    v8 = MEMORY[0x29C2AAC80](v6, v5);
    v9 = [v7 playlistDestinationWithName_];
  }

  else
  {
    v9 = [objc_opt_self() libraryDestination];
  }

  v10 = [v9 *a3];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v11;
}

void INMediaDestination.hash(into:)()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v2, v1);
    v5 = [v3 playlistDestinationWithName_];
  }

  else
  {
    v5 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();
}

Swift::Int INMediaDestination.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v1, v2);
    v5 = [v3 playlistDestinationWithName_];
  }

  else
  {
    v5 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance INMediaDestination()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v2, v1);
    v5 = [v3 playlistDestinationWithName_];
  }

  else
  {
    v5 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INMediaDestination()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v1, v2);
    v5 = [v3 playlistDestinationWithName_];
  }

  else
  {
    v5 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();

  return Hasher._finalize()();
}

INMediaDestination __swiftcall INMediaDestination._bridgeToObjectiveC()()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v2, v1);
    v5 = [v3 playlistDestinationWithName_];

    return v5;
  }

  else
  {
    v7 = [objc_opt_self() libraryDestination];

    return v7;
  }
}

void static INMediaDestination._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t static INMediaDestination._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  return 1;
}

void static INMediaDestination._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 playlistName];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {

      v6 = 0;
      v8 = 0;
    }

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance INMediaDestination()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v2, v1);
    v5 = [v3 playlistDestinationWithName_];

    return v5;
  }

  else
  {
    v7 = [objc_opt_self() libraryDestination];

    return v7;
  }
}

void protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance INMediaDestination(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance INMediaDestination(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  return 1;
}

uint64_t specialized static INMediaDestination.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return MEMORY[0x2A1C73088]();
}

uint64_t outlined consume of INMediaDestination?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INMediaDestination and conformance INMediaDestination()
{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for INMediaDestination(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for INMediaDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for INMediaDestination(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for INMediaDestination(void *result, int a2)
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

id INStartWorkoutIntent.goalValue.getter()
{
  result = [v0 goalValue];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t INStartWorkoutIntent.isOpenEnded.getter()
{
  v1 = [v0 isOpenEnded];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INRestaurantReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:reservationDuration:partySize:restaurantLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char a11, void *a12)
{
  v34 = a5;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v21 = &v33 - v20;
  if (a3)
  {
    v22 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v22 = 0;
  }

  outlined init with copy of Date?(a4, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  isa = 0;
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v21, v23);
  }

  if (a7)
  {
    v26 = MEMORY[0x29C2AAC80](a6, a7);

    v27 = a11;
    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v28.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0;
    v27 = a11;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v28.super.isa = 0;
LABEL_11:
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v31 = [v30 initWithItemReference:a1 reservationNumber:v22 bookingTime:isa reservationStatus:v34 reservationHolderName:v26 actions:v28.super.isa reservationDuration:a9 partySize:v29 restaurantLocation:a12];

  outlined destroy of Date?(a4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v31;
}

unint64_t type metadata accessor for INReservationAction()
{
  result = lazy cache variable for type metadata for INReservationAction;
  if (!lazy cache variable for type metadata for INReservationAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INReservationAction);
  }

  return result;
}

id INRestaurantReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:url:reservationDuration:partySize:restaurantLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  v43 = a5;
  v44 = a1;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v21 = &v41 - v20;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v24 = &v41 - v23;
  if (a3)
  {
    v42 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v42 = 0;
  }

  v45 = a4;
  outlined init with copy of Date?(a4, v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  isa = 0;
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v24, v25);
  }

  if (a7)
  {
    v28 = MEMORY[0x29C2AAC80](a6, a7);

    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v28 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v29.super.isa = 0;
LABEL_11:
  v41 = a9;
  outlined init with copy of Date?(a9, v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v21, 1, v30) != 1)
  {
    URL._bridgeToObjectiveC()(v32);
    v33 = v34;
    (*(v31 + 8))(v21, v30);
  }

  if (a12)
  {
    v35 = 0;
  }

  else
  {
    v35 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v37 = v44;
  v38 = v42;
  v39 = [v36 initWithItemReference:v44 reservationNumber:v42 bookingTime:isa reservationStatus:v43 reservationHolderName:v28 actions:v29.super.isa URL:v33 reservationDuration:a10 partySize:v35 restaurantLocation:a13];

  outlined destroy of Date?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of Date?(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v39;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id INRestaurantReservation.partySize.getter()
{
  v1 = [v0 partySize];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id static INBooleanResolutionResult.confirmationRequired(with:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v2 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v2;
}

void INShortcut.init(intent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDBB228]) initWithIntent_];
  if (!v4)
  {

    *a2 = 0;
    *(a2 + 8) = -1;
    return;
  }

  v5 = v4;
  v6 = [v4 intent];
  if (v6)
  {
    v7 = v6;
LABEL_7:
    v9 = v6 == 0;

    *a2 = v7;
    *(a2 + 8) = v9;
    return;
  }

  v8 = [v5 userActivity];
  if (v8)
  {
    v7 = v8;
    v6 = 0;
    goto LABEL_7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t INShortcut.init(userActivity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

id INShortcut.intent.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id INShortcut.userActivity.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id INShortcut.description.getter(SEL *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v4)
  {
    v6 = [v5 initWithUserActivity_];
LABEL_4:
    v8 = [v6 *a1];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v9;
  }

  result = [v5 initWithIntent_];
  v6 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id protocol witness for CustomStringConvertible.description.getter in conformance INShortcut(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v6)
  {
    v8 = [v7 initWithUserActivity_];
LABEL_4:
    v10 = [v8 *a3];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v11;
  }

  result = [v7 initWithIntent_];
  v8 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void INShortcut.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
  }

  else
  {
    v4 = [v3 initWithIntent_];
    if (!v4)
    {
      __break(1u);
      return;
    }
  }

  v5 = v4;
  NSObject.hash(into:)();
}

id INShortcut.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
LABEL_4:
    NSObject.hash(into:)();

    return Hasher._finalize()();
  }

  result = [v3 initWithIntent_];
  v4 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id protocol witness for Hashable.hashValue.getter in conformance INShortcut()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
LABEL_4:
    NSObject.hash(into:)();

    return Hasher._finalize()();
  }

  result = [v3 initWithIntent_];
  v4 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance INShortcut()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
  }

  else
  {
    v4 = [v3 initWithIntent_];
    if (!v4)
    {
      __break(1u);
      return;
    }
  }

  v5 = v4;
  NSObject.hash(into:)();
}

id protocol witness for Hashable._rawHashValue(seed:) in conformance INShortcut()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
LABEL_4:
    NSObject.hash(into:)();

    return Hasher._finalize()();
  }

  result = [v3 initWithIntent_];
  v4 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

INShortcut __swiftcall INShortcut._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {

    return [v3 initWithUserActivity_];
  }

  else
  {
    result.super.isa = [v3 initWithIntent_];
    if (!result.super.isa)
    {
      __break(1u);
    }
  }

  return result;
}

id static INShortcut._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  result = [a1 intent];
  v5 = result;
  if (result)
  {
    goto LABEL_4;
  }

  result = [a1 userActivity];
  if (result)
  {
    v5 = 0;
LABEL_4:
    *a2 = result;
    *(a2 + 8) = v5 == 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static INShortcut._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  v4 = [a1 intent];
  v5 = v4;
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = [a1 userActivity];
  if (v4)
  {
    v5 = 0;
LABEL_4:
    *a2 = v4;
    *(a2 + 8) = v5 == 0;
    return 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void static INShortcut._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 intent];
    if (v4)
    {
      v5 = v4;
LABEL_6:
      v7 = v4 == 0;

      *a2 = v5;
      *(a2 + 8) = v7;
      return;
    }

    v6 = [v3 userActivity];
    if (v6)
    {
      v5 = v6;
      v4 = 0;
      goto LABEL_6;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance INShortcut()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {

    return [v3 initWithUserActivity_];
  }

  else
  {
    result = [v3 initWithIntent_];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance INShortcut(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  result = [a1 intent];
  v5 = result;
  if (result)
  {
    goto LABEL_4;
  }

  result = [a1 userActivity];
  if (result)
  {
    v5 = 0;
LABEL_4:
    *a2 = result;
    *(a2 + 8) = v5 == 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance INShortcut(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  v4 = [a1 intent];
  v5 = v4;
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = [a1 userActivity];
  if (v4)
  {
    v5 = 0;
LABEL_4:
    *a2 = v4;
    *(a2 + 8) = v5 == 0;
    return 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static INShortcut.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for NSObject();
  v5 = v3;
  v6 = v2;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

void outlined consume of INShortcut?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type INShortcut and conformance INShortcut()
{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
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

uint64_t getEnumTagSinglePayload for INShortcut(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for INShortcut(uint64_t result, unsigned int a2, unsigned int a3)
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

id INLodgingReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:lodgingBusinessLocation:reservationDuration:numberOfAdults:numberOfChildren:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v40 = a5;
  v41 = a1;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v22 = &v38 - v21;
  if (a3)
  {
    v39 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v39 = 0;
  }

  v42 = a4;
  outlined init with copy of Date?(a4, v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  isa = 0;
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v22, v23);
  }

  if (a7)
  {
    v26 = MEMORY[0x29C2AAC80](a6, a7);

    v27 = a12;
    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v28.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0;
    v27 = a12;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v28.super.isa = 0;
LABEL_11:
  if ((v27 & 1) == 0)
  {
    v29 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    v30 = a9;
    v31 = a10;
    if ((a14 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  v29 = 0;
  v30 = a9;
  v31 = a10;
  if (a14)
  {
    goto LABEL_15;
  }

LABEL_13:
  v32 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_16:
  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = v41;
  v35 = v39;
  v36 = [v33 initWithItemReference:v41 reservationNumber:v39 bookingTime:isa reservationStatus:v40 reservationHolderName:v26 actions:v28.super.isa lodgingBusinessLocation:v30 reservationDuration:v31 numberOfAdults:v29 numberOfChildren:v32];

  outlined destroy of Date?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v36;
}

id INLodgingReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:url:lodgingBusinessLocation:reservationDuration:numberOfAdults:numberOfChildren:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v53 = a5;
  v54 = a1;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v23 = &v49 - v22;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v26 = &v49 - v25;
  if (a3)
  {
    v52 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v52 = 0;
  }

  v55 = a4;
  outlined init with copy of Date?(a4, v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  isa = 0;
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v26, v27);
  }

  if (a7)
  {
    v50 = MEMORY[0x29C2AAC80](a6, a7);

    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v49 = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v50 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v49 = 0;
LABEL_11:
  v51 = a9;
  outlined init with copy of Date?(a9, v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v23, 1, v30) != 1)
  {
    URL._bridgeToObjectiveC()(v32);
    v33 = v34;
    (*(v31 + 8))(v23, v30);
  }

  if ((a13 & 1) == 0)
  {
    v35 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    v37 = a10;
    v36 = a11;
    if ((a15 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    v38 = 0;
    goto LABEL_18;
  }

  v35 = 0;
  v37 = a10;
  v36 = a11;
  if (a15)
  {
    goto LABEL_17;
  }

LABEL_15:
  v38 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_18:
  v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v40 = v33;
  v48 = v33;
  v41 = v54;
  v42 = v52;
  v43 = isa;
  v44 = isa;
  v45 = v49;
  v46 = v50;
  v53 = [v39 initWithItemReference:v54 reservationNumber:v52 bookingTime:v43 reservationStatus:v53 reservationHolderName:v50 actions:v49 URL:v48 lodgingBusinessLocation:v37 reservationDuration:v36 numberOfAdults:v35 numberOfChildren:v38];

  outlined destroy of Date?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of Date?(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v53;
}

uint64_t INGetCarLockStatusIntentResponse.locked.getter()
{
  v1 = [v0 locked];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void key path getter for INGetCarLockStatusIntentResponse.locked : INGetCarLockStatusIntentResponse(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 locked];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void key path setter for INGetCarLockStatusIntentResponse.locked : INGetCarLockStatusIntentResponse(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = v4;
  [v3 setLocked_];
}

void INGetCarLockStatusIntentResponse.locked.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v3 = v2;
  [v1 setLocked_];
}

void (*INGetCarLockStatusIntentResponse.locked.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 locked];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return INGetCarLockStatusIntentResponse.locked.modify;
}

void INGetCarLockStatusIntentResponse.locked.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = v3;
  [*a1 setLocked_];
}

INFocusStatus __swiftcall INFocusStatus.init(isFocused:)(Swift::Bool_optional isFocused)
{
  if (isFocused.value == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIsFocused_];

  return v2;
}

uint64_t INFocusStatus.isFocused.getter()
{
  v1 = [v0 isFocused];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INSetRadioStationIntent.frequency.getter()
{
  result = [v0 frequency];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

id INSetRadioStationIntent.presetNumber.getter()
{
  v1 = [v0 presetNumber];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id INStartPhotoPlaybackIntentResponse.searchResultsCount.getter()
{
  v1 = [v0 searchResultsCount];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void INStartPhotoPlaybackIntentResponse.searchResultsCount.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setSearchResultsCount_];
}

void (*INStartPhotoPlaybackIntentResponse.searchResultsCount.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 searchResultsCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INSearchForPhotosIntentResponse.searchResultsCount.modify;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x2A1C5A2B8]();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}