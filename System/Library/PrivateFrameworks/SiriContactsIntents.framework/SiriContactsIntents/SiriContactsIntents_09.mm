_BYTE *storeEnumTagSinglePayload for ContactsLabeledAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v20 = OUTLINED_FUNCTION_18_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v33 - v25;
  if (v3)
  {

    UsoEntity_common_Person.contactId.getter();
    if (v27 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v28))
    {

      goto LABEL_18;
    }

    if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter() && !dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      (*(v7 + 104))(v1, *MEMORY[0x277D5E828], v4);
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
      v29 = *(v13 + 48);
      outlined init with copy of Result<RRResult, Error>(v26, v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v34 = v29;
      outlined init with copy of Result<RRResult, Error>(v1, &v18[v29], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_57(v18, 1, v4);
      if (v31)
      {

        OUTLINED_FUNCTION_68_2(v1);
        OUTLINED_FUNCTION_68_2(v26);
        OUTLINED_FUNCTION_57(&v18[v34], 1, v4);
        if (v31)
        {
          outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }
      }

      else
      {
        outlined init with copy of Result<RRResult, Error>(v18, v0, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v30 = v34;
        OUTLINED_FUNCTION_57(&v18[v34], 1, v4);
        if (!v31)
        {
          (*(v7 + 32))(v12, &v18[v30], v4);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          dispatch thunk of static Equatable.== infix(_:_:)();

          v32 = *(v7 + 8);
          v32(v12, v4);
          outlined destroy of Result<TemplatingResult, Error>(v1, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of Result<TemplatingResult, Error>(v26, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v32(v0, v4);
          outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_68_2(v1);
        OUTLINED_FUNCTION_68_2(v26);
        (*(v7 + 8))(v0, v4);
      }

      outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_48_0();
  }

LABEL_18:
  OUTLINED_FUNCTION_14();
}

uint64_t specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(uint64_t a1, void (*a2)(uint64_t, _BYTE *))
{
  swift_unknownObjectWeakInit();
  a2(a1, v5);
  return MEMORY[0x26D5E33A0](v5);
}

void _s19SiriContactsIntents0A18KitGetEntityIntentPAAE18resolveAddressType4fromAA017SpecifyingContactiJ0OSg0A8Ontology03Usof8_common_mI0CSg_tFZAA0emG0C_Tt1g5(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v131 = type metadata accessor for UsoIdentifier();
  v4 = *(v131 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v131);
  v125 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v130 = &v121 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v127 = (&v121 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v121 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v128 = &v121 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v121 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v121 - v20;
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    v23 = __swift_project_value_buffer(v22, static Logger.siriContacts);

    v129 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    v26 = os_log_type_enabled(v24, v25);
    v126 = v19;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v132 = a1;
      v133 = v124;
      *v27 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
      v28 = String.init<A>(describing:)();
      v30 = a1;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v133);

      *(v27 + 4) = v31;
      a1 = v30;
      _os_log_impl(&dword_26686A000, v24, v25, "#SiriKitGetEntityIntent resolveAddressType from address %s", v27, 0xCu);
      v32 = v124;
      __swift_destroy_boxed_opaque_existential_0Tm(v124);
      MEMORY[0x26D5E3300](v32, -1, -1);
      MEMORY[0x26D5E3300](v27, -1, -1);
    }

    if (!a1)
    {
      goto LABEL_70;
    }

    swift_retain_n();
    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    v19 = MEMORY[0x277D84F70];
    if (v135)
    {
      type metadata accessor for UsoEntity_common_PhoneNumber();
      if (swift_dynamicCast())
      {
        v122 = v132;
        v123 = a2;
        v33 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        v34 = a1;
        a1 = v33;
        v124 = v34;

        v35 = 0;
        v36 = *(a1 + 16);
        v130 = (v4 + 16);
        v14 = (v4 + 8);
        v125 = (v4 + 32);
        v127 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            if (v36 == v35)
            {

              if (v127[2])
              {
                v57 = v126;
                v58 = v131;
                (*(v4 + 16))(v126, v127 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v131);

                v59 = UsoIdentifier.value.getter();
                v61 = v60;
                (*(v4 + 8))(v57, v58);
              }

              else
              {

                v87 = dispatch thunk of UsoEntity_common_PhoneNumber.label.getter();
                v59 = v87;
                if (v88)
                {
                  v59 = String.convertToContactAttributeLabel.getter(v87, v88);
                  v61 = v89;
                }

                else
                {
                  v61 = 0;
                }
              }

              v96 = Logger.logObject.getter();
              v97 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                v132 = v99;
                v133 = v59;
                *v98 = 136315138;
                v134 = v61;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v100 = String.init<A>(describing:)();
                v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v132);

                *(v98 + 4) = v102;
                _os_log_impl(&dword_26686A000, v96, v97, "#SiriKitGetEntityIntent address was converted to a phone number with value %s", v98, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v99);
                MEMORY[0x26D5E3300](v99, -1, -1);
                MEMORY[0x26D5E3300](v98, -1, -1);
              }

              v103 = v123;
              *v123 = v59;
              v103[1] = v61;
              *(v103 + 16) = 1;
              return;
            }

            if (v35 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_94;
            }

            a2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
            v19 = *(v4 + 72);
            (*(v4 + 16))(v21, a1 + a2 + v19 * v35, v131);
            v37 = UsoIdentifier.namespace.getter();
            if (v38)
            {
              break;
            }

LABEL_16:
            (*v14)(v21, v131);
            ++v35;
          }

          if (v37 == 0x707954656E6F6870 && v38 == 0xE900000000000065)
          {
          }

          else
          {
            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v40 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v41 = *v125;
          (*v125)(v128, v21, v131);
          v42 = v127;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v42;
          v133 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v45 = *(v42 + 16);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v44 = v133;
          }

          v46 = *(v44 + 16);
          v47 = (v46 + 1);
          if (v46 >= *(v44 + 24) >> 1)
          {
            v121 = v41;
            v127 = (v46 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v47 = v127;
            v41 = v121;
            v44 = v133;
          }

          ++v35;
          *(v44 + 16) = v47;
          v127 = v44;
          (v41)(v44 + a2 + v46 * v19, v128, v131);
        }
      }
    }

    else
    {
      outlined destroy of Result<TemplatingResult, Error>(&v133, &_sypSgMd, &_sypSgMR);
    }

    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (!v135)
    {
      break;
    }

    type metadata accessor for UsoEntity_common_EmailAddress();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_45;
    }

    v123 = a2;
    v121 = v132;
    v48 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v124 = a1;

    a1 = 0;
    v21 = *(v48 + 16);
    v130 = (v4 + 16);
    v125 = (v4 + 32);
    v128 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21 == a1)
      {

        if (*(v128 + 2))
        {
          v72 = v126;
          v73 = v131;
          (*(v4 + 16))(v126, &v128[(*(v4 + 80) + 32) & ~*(v4 + 80)], v131);

          v74 = UsoIdentifier.value.getter();
          v76 = v75;
          (*(v4 + 8))(v72, v73);
        }

        else
        {

          v90 = dispatch thunk of UsoEntity_common_EmailAddress.label.getter();
          v74 = v90;
          if (v91)
          {
            v74 = String.convertToContactAttributeLabel.getter(v90, v91);
            v76 = v92;
          }

          else
          {
            v76 = 0;
          }
        }

        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v132 = v107;
          v133 = v74;
          *v106 = 136315138;
          v134 = v76;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v108 = String.init<A>(describing:)();
          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v132);

          *(v106 + 4) = v110;
          _os_log_impl(&dword_26686A000, v104, v105, "#SiriKitGetEntityIntent address was converted to an email with value %s", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v107);
          MEMORY[0x26D5E3300](v107, -1, -1);
          MEMORY[0x26D5E3300](v106, -1, -1);
        }

        v111 = v123;
        *v123 = v74;
        v111[1] = v76;
        *(v111 + 16) = 0;
        return;
      }

      if (a1 >= *(v48 + 16))
      {
        break;
      }

      a2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v49 = *(v4 + 72);
      (*(v4 + 16))(v14, v48 + a2 + v49 * a1, v131);
      v50 = UsoIdentifier.namespace.getter();
      if (!v51)
      {
        goto LABEL_35;
      }

      if (v50 == 0x7079546C69616D65 && v51 == 0xE900000000000065)
      {

LABEL_37:
        v122 = *v125;
        (v122)(v127, v14, v131);
        v53 = v128;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v53;
        if ((v54 & 1) == 0)
        {
          v55 = *(v53 + 16);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v53 = v133;
        }

        v19 = *(v53 + 16);
        v56 = (v19 + 1);
        if (v19 >= *(v53 + 24) >> 1)
        {
          v128 = (v19 + 1);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v56 = v128;
          v53 = v133;
        }

        ++a1;
        *(v53 + 16) = v56;
        v128 = v53;
        (v122)(v53 + a2 + v19 * v49, v127, v131);
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_37;
        }

LABEL_35:
        (*(v4 + 8))(v14, v131);
        ++a1;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  outlined destroy of Result<TemplatingResult, Error>(&v133, &_sypSgMd, &_sypSgMR);
LABEL_45:
  CodeGenBase.entity.getter();
  static UsoEntity_CodeGenConverter.convert(entity:)();

  if (!v135)
  {

    outlined destroy of Result<TemplatingResult, Error>(&v133, &_sypSgMd, &_sypSgMR);
LABEL_67:
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_26686A000, v77, v78, "#SiriKitGetEntityIntent address did not convert to a known contact address type", v79, 2u);
      MEMORY[0x26D5E3300](v79, -1, -1);
    }

LABEL_70:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return;
  }

  type metadata accessor for UsoEntity_common_PostalAddress();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_67;
  }

  v123 = a2;
  v121 = v132;
  v62 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v124 = a1;

  v63 = 0;
  v14 = *(v62 + 16);
  a1 = v4 + 16;
  v127 = (v4 + 32);
  v128 = MEMORY[0x277D84F90];
  while (v14 != v63)
  {
    if (v63 >= *(v62 + 16))
    {
      goto LABEL_95;
    }

    a2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = *(v4 + 72);
    (*(v4 + 16))(v130, v62 + a2 + v21 * v63, v131);
    v64 = UsoIdentifier.namespace.getter();
    if (v65)
    {
      if (v64 == 0x5473736572646461 && v65 == 0xEB00000000657079)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v67 = *v127;
      (*v127)(v125, v130, v131);
      v68 = v128;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v68;
      v122 = v67;
      if ((v69 & 1) == 0)
      {
        v70 = *(v68 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v68 = v133;
      }

      v19 = *(v68 + 16);
      v71 = (v19 + 1);
      if (v19 >= *(v68 + 24) >> 1)
      {
        v128 = (v19 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v71 = v128;
        v68 = v133;
      }

      ++v63;
      *(v68 + 16) = v71;
      v128 = v68;
      (v122)(v68 + a2 + v19 * v21, v125, v131);
    }

    else
    {
LABEL_56:
      (*(v4 + 8))(v130, v131);
      ++v63;
    }
  }

  if (*(v128 + 2))
  {
    v80 = v126;
    v81 = v131;
    (*(v4 + 16))(v126, &v128[(*(v4 + 80) + 32) & ~*(v4 + 80)], v131);

    v82 = UsoIdentifier.value.getter();
    v84 = v83;
    (*(v4 + 8))(v80, v81);
    v85 = v123;
    v86 = &off_266966000;
  }

  else
  {

    v93 = dispatch thunk of UsoEntity_common_PostalAddress.label.getter();
    if (v94)
    {
      v82 = String.convertToContactAttributeLabel.getter(v93, v94);
      v84 = v95;

      v85 = v123;
      v86 = &off_266966000;
    }

    else
    {
      v112 = UsoEntity_common_PostalAddress.requestedAddressField.getter();
      v85 = v123;
      v86 = &off_266966000;
      if (v112 == 5)
      {
        v82 = 0;
        v84 = 0;
      }

      else
      {
        v82 = ContactNLIntent.ContactPostalAddressField.rawValue.getter(v112);
        v84 = v113;
      }
    }
  }

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v132 = v117;
    v133 = v82;
    *v116 = *(v86 + 327);
    v134 = v84;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v118 = String.init<A>(describing:)();
    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, &v132);

    *(v116 + 4) = v120;
    _os_log_impl(&dword_26686A000, v114, v115, "#SiriKitGetEntityIntent address was converted to a postal address with value %s", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v117);
    MEMORY[0x26D5E3300](v117, -1, -1);
    MEMORY[0x26D5E3300](v116, -1, -1);
  }

  *v85 = v82;
  v85[1] = v84;
  *(v85 + 16) = 2;
}

void UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter()
{
  OUTLINED_FUNCTION_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v86 = v7 - v8;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v11 = &v81 - v10;
  v12 = type metadata accessor for UsoIdentifier();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_27();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_6();
  v84 = v19;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_6();
  v94 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_6();
  v89 = v23;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_49_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26_6();
  v26 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v85 = v0;
  if (!v26)
  {
    v93 = 0x800000026696E150;
    goto LABEL_28;
  }

  v27 = v26;
  v82 = v2;
  v83 = v11;
  v28 = 0;
  v29 = *(v26 + 16);
  v91 = v15 + 16;
  v92 = v29;
  v93 = 0x800000026696E150;
  v88 = (v15 + 32);
  v30 = (v15 + 8);
  v90 = MEMORY[0x277D84F90];
  while (v92 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
LABEL_51:
      __break(1u);
      return;
    }

    v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v32 = *(v15 + 72);
    (*(v15 + 16))(v1, v27 + v31 + v32 * v28, v12);
    UsoIdentifier.namespace.getter();
    if (!v33)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_47_6();
    v35 = v35 && v34 == v93;
    if (v35)
    {
LABEL_18:

LABEL_19:
      v44 = *v88;
      (*v88)(v89, v1, v12);
      v45 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v45;
      v95 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v45[2];
        OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v95;
      }

      v50 = v47[2];
      v49 = v47[3];
      v51 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_28_6(v49);
        v81 = v44;
        v90 = v52;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v51 = v90;
        v44 = v81;
        v47 = v95;
      }

      ++v28;
      v47[2] = v51;
      v90 = v47;
      v44(v47 + v31 + v50 * v32, v89, v12);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_54_5();

      if (v36)
      {
        goto LABEL_19;
      }

LABEL_11:
      v37 = UsoIdentifier.namespace.getter();
      if (!v38)
      {
        goto LABEL_17;
      }

      if (v37 == 0x6369746E616D6573 && v38 == 0xEE0065756C61765FLL)
      {
        goto LABEL_18;
      }

      v40 = OUTLINED_FUNCTION_57_4();

      if (v40)
      {
        goto LABEL_19;
      }

LABEL_17:
      v41 = *v30;
      v42 = OUTLINED_FUNCTION_61_1();
      v43(v42);
      ++v28;
    }
  }

  v53 = v83;
  specialized Collection.first.getter(v90, v83);

  OUTLINED_FUNCTION_11_23(v53);
  if (!v35)
  {
    v78 = *v88;
    v79 = v82;
    OUTLINED_FUNCTION_2_18();
    v80();
    UsoIdentifier.value.getter();
    (*v30)(v79, v12);
    goto LABEL_49;
  }

  outlined destroy of Result<TemplatingResult, Error>(v53, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
LABEL_28:
  v54 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v55 = 0;
  v56 = *(v54 + 16);
  v92 = v15 + 16;
  v90 = (v15 + 32);
  v57 = (v15 + 8);
  v91 = MEMORY[0x277D84F90];
  while (v56 != v55)
  {
    if (v55 >= *(v54 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v58 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v59 = *(v15 + 72);
    v60 = *(v15 + 16);
    v61 = OUTLINED_FUNCTION_36_10();
    v62(v61);
    UsoIdentifier.namespace.getter();
    if (!v63)
    {
LABEL_37:
      (*v57)(v94, v12);
      ++v55;
      continue;
    }

    OUTLINED_FUNCTION_47_6();
    if (v35 && v64 == v93)
    {
    }

    else
    {
      v66 = OUTLINED_FUNCTION_54_5();

      if ((v66 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v89 = *v90;
    v89(v87, v94, v12);
    v67 = v91;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v67;
    if ((v68 & 1) == 0)
    {
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_18_17();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v67 = v95;
    }

    v70 = *(v67 + 16);
    v69 = *(v67 + 24);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      OUTLINED_FUNCTION_28_6(v69);
      v91 = v72;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v71 = v91;
      v67 = v95;
    }

    ++v55;
    *(v67 + 16) = v71;
    v91 = v67;
    v89(v67 + v58 + v70 * v59, v87, v12);
  }

  v73 = v86;
  specialized Collection.first.getter(v91, v86);

  OUTLINED_FUNCTION_11_23(v73);
  if (v35)
  {
    outlined destroy of Result<TemplatingResult, Error>(v73, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter();
    if (!v74 && dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter())
    {
      dispatch thunk of CodeGenExpression.operand.getter();
    }
  }

  else
  {
    v75 = *v90;
    v76 = v84;
    OUTLINED_FUNCTION_2_18();
    v77();
    UsoIdentifier.value.getter();
    (*v57)(v76, v12);
  }

LABEL_49:
  OUTLINED_FUNCTION_14();
}

uint64_t one-time initialization function for transformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMd, &_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for ContactAttribute();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology46UsoEntityBuilderProtocol_common_ContactAddress_pSgMd, &_s12SiriOntology46UsoEntityBuilderProtocol_common_ContactAddress_pSgMR);
  return Transformer.init(transform:)();
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 contactAttributeType];
  if (v4 == 1)
  {
    type metadata accessor for UsoEntityBuilder_common_EmailAddress();
    v5 = UsoEntityBuilder_common_EmailAddress.init(emailAddress:)(v3);
    v6 = MEMORY[0x277D5F270];
    goto LABEL_10;
  }

  if (v4 == 3)
  {
    v5 = [v3 postalAddress];
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v7 = v5;
      v8 = CNLabeledValue<>.init(address:)(v7);
      type metadata accessor for UsoEntityBuilder_common_PostalAddress();
      static UsoEntityBuilder_common_PostalAddress.from(_:)();
      v5 = v9;

      v6 = MEMORY[0x277D5F2F8];
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
  v5 = UsoEntityBuilder_common_PhoneNumber.init(phoneNumber:)(v3);
  v6 = MEMORY[0x277D5F218];
LABEL_10:
  *a2 = v5;
  a2[1] = v6;
}

void closure #1 in static Transformer<>.transformer(_:referenceResolver:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(a1, a2, a3, MEMORY[0x277D5EA08], a4);
}

{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(a1, a2, a3, MEMORY[0x277D5F098], a4);
}

void *specialized SiriKitGetEntityIntent.resolveReference(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v57[-v3];
  v5 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v57[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v57[-v20];
  v61 = v0;
  specialized SiriKitGetEntityIntent.setIsMe(reference:)();
  if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter())
  {
    v23 = dispatch thunk of UsoEntity_common_Person.name.getter();
    v25 = v61;
    if (v24)
    {
      v26 = v23;
      v27 = v24;
      v64 = v23;
      v65 = v24;
      v62 = 39;
      v63 = 0xE100000000000000;
      v28 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v28);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.range<A>(of:options:range:locale:)();
      v30 = v29;
      outlined destroy of Result<TemplatingResult, Error>(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v30 & 1) == 0)
      {
        v64 = v26;
        v65 = v27;
        v26 = StringProtocol.substring(to:)();
        v32 = v31;

        v27 = v32;
      }

      v33 = MEMORY[0x26D5E2470](v26, v27);

      v34 = MEMORY[0x26D5E2470](0x656D614E6C6C7566, 0xE800000000000000);
      [v25 setValue:v33 forKey:v34];
    }

    if (dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      v35 = dispatch thunk of UsoEntity_common_Organization.name.getter();
      v37 = v36;

      if (v37)
      {
        v38 = MEMORY[0x26D5E2470](v35, v37);

        v39 = MEMORY[0x26D5E2470](0xD000000000000010, 0x800000026696E320);
        [v25 setValue:v38 forKey:v39];
      }
    }

    v40 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
    _s19SiriContactsIntents0A18KitGetEntityIntentPAAE18resolveAddressType4fromAA017SpecifyingContactiJ0OSg0A8Ontology03Usof8_common_mI0CSg_tFZAA0emG0C_Tt1g5(v40, &v64);

    v41 = v64;
    v42 = v65;
    v43 = v66;
    if (v66)
    {
      if (v66 != 1)
      {
        if (v66 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v65)
      {
        v51 = MEMORY[0x26D5E2470](v64, v65);
      }

      else
      {
        v51 = 0;
      }

      v52 = 0x6D754E656E6F6870;
      v53 = 0xEB00000000726562;
    }

    else
    {
      if (v65)
      {
        v51 = MEMORY[0x26D5E2470](v64, v65);
      }

      else
      {
        v51 = 0;
      }

      v52 = 0x6464416C69616D65;
      v53 = 0xEC00000073736572;
    }

    v54 = MEMORY[0x26D5E2470](v52, v53);
    [v25 setValue:v51 forKey:v54];
    swift_unknownObjectRelease();

LABEL_35:
    outlined consume of SpecifyingContactAddressType?(v41, v42, v43);
LABEL_36:
    v55 = v25;
    return v25;
  }

  if (!dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
  {
LABEL_22:
    UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
    if (v48)
    {
      v49 = MEMORY[0x26D5E2470]();
    }

    else
    {
      v49 = 0;
    }

    v25 = v61;
    v50 = MEMORY[0x26D5E2470](0x52746361746E6F63, 0xEF6E6F6974616C65);
    [v25 setValue:v49 forKey:v50];

    swift_unknownObjectRelease();

    goto LABEL_36;
  }

  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  (*(v60 + 104))(v19, *MEMORY[0x277D5E828], v5);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  v22 = *(v8 + 48);
  outlined init with copy of Result<RRResult, Error>(v21, v11, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined init with copy of Result<RRResult, Error>(v19, &v11[v22], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {

    outlined destroy of Result<TemplatingResult, Error>(v19, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v5) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v11, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  outlined init with copy of Result<RRResult, Error>(v11, v16, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v5) == 1)
  {

    outlined destroy of Result<TemplatingResult, Error>(v19, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    (*(v60 + 8))(v16, v5);
LABEL_19:
    outlined destroy of Result<TemplatingResult, Error>(v11, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
    goto LABEL_20;
  }

  v44 = v60;
  v45 = &v11[v22];
  v46 = v59;
  (*(v60 + 32))(v59, v45, v5);
  lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();

  v47 = *(v44 + 8);
  v47(v46, v5);
  outlined destroy of Result<TemplatingResult, Error>(v19, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v47(v16, v5);
  outlined destroy of Result<TemplatingResult, Error>(v11, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (v58)
  {
    goto LABEL_22;
  }

LABEL_20:

  return 0;
}

void SiriKitGetEntityIntent.resolveReference(_:)()
{
  OUTLINED_FUNCTION_15();
  v86[1] = v2;
  v87 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  v11 = v86 - v10;
  v12 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v88 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v86[0] = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v22);
  v24 = v86 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v26 = OUTLINED_FUNCTION_18_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v86 - v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_26_6();
  v89 = v0;
  SiriKitGetEntityIntent.setIsMe(reference:)(v5);
  if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter())
  {
    v43 = dispatch thunk of UsoEntity_common_Person.name.getter();
    v45 = v89;
    if (v44)
    {
      v46 = v43;
      v47 = v44;
      v92 = v43;
      v93 = v44;
      v90 = 39;
      v91 = 0xE100000000000000;
      v48 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v48);
      lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_16_1();
      StringProtocol.range<A>(of:options:range:locale:)();
      v50 = v49;
      outlined destroy of Result<TemplatingResult, Error>(v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v50 & 1) == 0)
      {
        v92 = v46;
        v93 = v47;
        StringProtocol.substring(to:)();
      }

      v51 = OUTLINED_FUNCTION_61_1();
      v52 = MEMORY[0x26D5E2470](v51);

      v53 = MEMORY[0x26D5E2470](0x656D614E6C6C7566, 0xE800000000000000);
      OUTLINED_FUNCTION_40_6();
      [v54 v55];
    }

    if (dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      v56 = dispatch thunk of UsoEntity_common_Organization.name.getter();
      v58 = v57;

      if (v58)
      {
        v59 = MEMORY[0x26D5E2470](v56, v58);

        v60 = MEMORY[0x26D5E2470](0xD000000000000010, 0x800000026696E320);
        [v45 setValue:v59 forKey:v60];
      }
    }

    dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
    static SiriKitGetEntityIntent.resolveAddressType(from:)();

    v61 = v94;
    if (v94)
    {
      if (v94 != 1)
      {
        if (v94 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v93)
      {
        v77 = OUTLINED_FUNCTION_22_0();
        v78 = MEMORY[0x26D5E2470](v77);
      }

      else
      {
        v78 = 0;
      }

      v80 = 0x6D754E656E6F6870;
      v81 = 0xEB00000000726562;
    }

    else
    {
      if (v93)
      {
        v79 = OUTLINED_FUNCTION_22_0();
        v78 = MEMORY[0x26D5E2470](v79);
      }

      else
      {
        v78 = 0;
      }

      v80 = 0x6464416C69616D65;
      v81 = 0xEC00000073736572;
    }

    v82 = MEMORY[0x26D5E2470](v80, v81);
    [v45 setValue:v78 forKey:v82];
    swift_unknownObjectRelease();

LABEL_37:
    v83 = OUTLINED_FUNCTION_22_0();
    outlined consume of SpecifyingContactAddressType?(v83, v84, v61);
LABEL_38:
    v85 = v45;
    goto LABEL_39;
  }

  if (!dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
  {
    goto LABEL_25;
  }

  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  (*(v88 + 104))(v35, *MEMORY[0x277D5E828], v12);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v12);
  v36 = *(v19 + 48);
  outlined init with copy of Result<RRResult, Error>(v1, v24, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined init with copy of Result<RRResult, Error>(v35, &v24[v36], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_57(v24, 1, v12);
  if (v62)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v37, v38, v39);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v40, v41, v42);
    OUTLINED_FUNCTION_57(&v24[v36], 1, v12);
    if (!v62)
    {
      goto LABEL_22;
    }

    outlined destroy of Result<TemplatingResult, Error>(v24, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_25:
    UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
    if (v73)
    {
      MEMORY[0x26D5E2470]();
    }

    v45 = v89;
    v74 = MEMORY[0x26D5E2470](0x52746361746E6F63, 0xEF6E6F6974616C65);
    OUTLINED_FUNCTION_40_6();
    [v75 v76];

    swift_unknownObjectRelease();

    goto LABEL_38;
  }

  outlined init with copy of Result<RRResult, Error>(v24, v31, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_57(&v24[v36], 1, v12);
  if (v62)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v63, v64, v65);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v66, v67, v68);
    (*(v88 + 8))(v31, v12);
LABEL_22:
    outlined destroy of Result<TemplatingResult, Error>(v24, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
    goto LABEL_23;
  }

  v69 = v88;
  v70 = &v24[v36];
  v71 = v86[0];
  (*(v88 + 32))(v86[0], v70, v12);
  lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
  LODWORD(v87) = dispatch thunk of static Equatable.== infix(_:_:)();

  v72 = *(v69 + 8);
  v72(v71, v12);
  outlined destroy of Result<TemplatingResult, Error>(v35, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v1, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v72(v31, v12);
  outlined destroy of Result<TemplatingResult, Error>(v24, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (v87)
  {
    goto LABEL_25;
  }

LABEL_23:

LABEL_39:
  OUTLINED_FUNCTION_14();
}

void closure #1 in static Transformer<>.transformer(_:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:)(a1, a2, MEMORY[0x277D5E228], a3);
}

{
  sub_26686DBC8(a1, a2, a3);
}

void closure #1 in static Transformer<>.transformer(_:referenceResolver:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, void *)@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = [objc_allocWithZone(type metadata accessor for GetContactIntent()) init];
  }

  a4(&v14, a2);
  if (v14)
  {

    specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
    v12 = v11;

    if (v12)
    {
      specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(a3, _s19SiriContactsIntents0A16KitContactIntentPAAE22runReferenceResolution_10completiony0ahI027RRReferenceResolverProtocol_p_yAA0adeF13ResolvedValueOctFZAA03GeteF0C_Tt1g504_s19ab11Intents0A18dp6Entityf9PAAE22runh19Resolutionyy0aiJ027klm10_pFyAA0ad7e3G13nO24OcfU_Tf0ns_nAA0enG0C_Tg5AKSgXwTf1nc_n);
    }

    v13 = specialized SiriKitGetEntityIntent.resolveReference(_:)();
  }

  else
  {
    v13 = v10;
  }

  *a5 = v13;
}

void closure #1 in static Transformer<>.transformer(_:)(uint64_t *a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *)@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for GetContactIntent()) init];
  }

  a3(&v10, a2);
  if (v10)
  {
    v9 = specialized SiriKitGetEntityIntent.resolveReference(_:)();
  }

  else
  {
    v9 = v8;
  }

  *a4 = v9;
}

uint64_t static GetContactAttributeIntent.from(_:_:referenceResolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_3();
}

{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_3();
}

{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_3();
}

{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t static GetContactAttributeIntent.from(_:_:referenceResolver:)()
{
  v2 = v1[4];
  if (v2)
  {
    v0 = v1[4];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[6] = v0;
  v3 = v1[3];
  v4 = v2;
  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v5 = v1[2];
  v1[7] = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    v1[8] = v6;
    *v6 = v1;
    OUTLINED_FUNCTION_8_30(v6);

    return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
  }

  else
  {

    OUTLINED_FUNCTION_12_14();

    return v8(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = v1[4];
  if (v2)
  {
    v0 = v1[4];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[6] = v0;
  v3 = v1[3];
  v4 = v2;
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v5 = v1[2];
  v1[7] = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    v1[8] = v6;
    *v6 = v1;
    OUTLINED_FUNCTION_8_30(v6);

    return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
  }

  else
  {

    OUTLINED_FUNCTION_12_14();

    return v8(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  if (v1)
  {

    GetContactAttributeIntent.resolveStructuredName(from:)(v2);
    specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
    v4 = v3;

    if (v4)
    {
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      OUTLINED_FUNCTION_16_16();
      specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(v7, v8);
    }

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
  }

  else
  {

    v10 = 0;
  }

  OUTLINED_FUNCTION_12_14();

  return v11(v10);
}

{
  v2 = v1[4];
  if (v2)
  {
    v0 = v1[4];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[6] = v0;
  v3 = v1[3];
  v4 = v2;
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v5 = v1[2];
  v1[7] = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    v1[8] = v6;
    *v6 = v1;
    OUTLINED_FUNCTION_8_30(v6);

    return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
  }

  else
  {

    OUTLINED_FUNCTION_12_14();

    return v8(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v1[7];
  if (v2)
  {
    v0 = v1[7];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[9] = v0;
  v3 = v1[6];
  v4 = v2;
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v1[10] = v1[2];
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_8_30(v5);

  return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 80);
  v11 = *v0;
  *(v1 + 96) = v6;

  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = *(v0 + 96);
  if (!v1)
  {

    goto LABEL_22;
  }

  v2 = *(v0 + 48);

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = [*(v0 + 72) contactAttributeToGet];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 contactAttributeType];

      if (v6 == 4)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    if (dispatch thunk of UsoEntity_common_Person.age.getter() || dispatch thunk of UsoEntity_common_Person.birthdate.getter())
    {
      v7 = *(v0 + 72);

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
    }

    else
    {
      dispatch thunk of UsoEntity_common_Person.phoneticName.getter();
      if (v8 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v9))
      {
        v7 = *(v0 + 72);

        type metadata accessor for ContactAttribute();
        OUTLINED_FUNCTION_15_20();
      }

      else
      {
        v34 = dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter();
        v7 = *(v0 + 72);
        if (!v34)
        {
          v35 = *(v0 + 72);
          GetContactAttributeIntent.resolveStructuredName(from:)(v3);
          goto LABEL_13;
        }

        type metadata accessor for ContactAttribute();
        OUTLINED_FUNCTION_15_20();
      }
    }

    OUTLINED_FUNCTION_0_51();
    v17 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v10, v11, v12, v13, v14, v15, v16, 0, v36);
    [v7 setContactAttributeToGet_];

LABEL_13:
    v18 = *(v0 + 48);
    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
    if (*(v0 + 40) && (v19 = *(v0 + 40), dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter(), OUTLINED_FUNCTION_41_10(), , v20 = *(v0 + 72), , (v21 = [v20 contactAttributeToGet]) != 0))
    {
    }

    else if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
    {
      v22 = *(v0 + 72);
      GetContactAttributeIntent.setHandleAttribute(from:)();
    }

    goto LABEL_18;
  }

LABEL_19:
  v23 = *(v0 + 72);
  v24 = *(v0 + 48);
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v25 = *(v0 + 32);
  specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
  LOBYTE(v24) = v26;

  if (v24)
  {
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    OUTLINED_FUNCTION_16_16();
    specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(v29, v30);
  }

  v31 = *(v0 + 72);
LABEL_22:
  OUTLINED_FUNCTION_12_14();

  return v32();
}

uint64_t GetContactAttributeIntent.resolveReferenceAndAttribute(_:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = type metadata accessor for UsoIdentifier();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  if (!v0[2])
  {
    goto LABEL_6;
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  SiriKitGetEntityIntent.resolveReference(_:)();
  if (!v4)
  {

LABEL_6:
    v6 = 0;
    goto LABEL_58;
  }

  if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
  {
    v5 = v0[3];
    GetContactAttributeIntent.setHandleAttribute(from:)();
    goto LABEL_56;
  }

  v7 = dispatch thunk of UsoEntity_common_Person.associatedDate.getter();
  v0[10] = v7;
  if (!v7)
  {
    v36 = dispatch thunk of UsoEntity_common_Person.age.getter();
    v0[13] = v36;
    if (!v36)
    {
      goto LABEL_57;
    }

    if (!dispatch thunk of UsoEntity_common_Age.referenceDateTime.getter() || (v37 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), v0[14] = v37, , !v37))
    {
      v49 = v0[3];
      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_0_51();
      v57 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v50, v51, v52, v53, v54, v55, v56, 0, v88);
      v58 = OUTLINED_FUNCTION_27_11();
      [v58 v59];

      v60 = v0[13];
      v61 = v0[2];
      goto LABEL_56;
    }

    v38 = swift_task_alloc();
    v0[15] = v38;
    *v38 = v0;
    v38[1] = GetContactAttributeIntent.resolveReferenceAndAttribute(_:);
    OUTLINED_FUNCTION_24_13();
LABEL_51:

    return static DateTimeUtil.getRequestedAgeDateTime(from:)();
  }

  v8 = 0x7961646874726962;
  v9 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  result = dispatch thunk of UsoEntity_common_Date.name.getter();
  if (!v12)
  {
    goto LABEL_17;
  }

  if (result == 0x7961646874726962 && v12 == 0xE800000000000000)
  {

    goto LABEL_39;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_39:

    v40 = v0[3];
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_0_51();
    v48 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v41, v42, v43, v44, v45, v46, v47, 0, v88);
    [v40 setContactAttributeToGet_];

    goto LABEL_56;
  }

LABEL_17:
  v15 = 0;
  v16 = v0[6];
  v93 = *(v10 + 16);
  v17 = (v16 + 8);
  v90 = (v16 + 32);
  v91 = MEMORY[0x277D84F90];
  while (v93 != v15)
  {
    if (v15 >= *(v10 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    v18 = v0[9];
    v19 = v0[5];
    OUTLINED_FUNCTION_21_17();
    v22 = v21 & ~v20;
    v23 = *(v16 + 72);
    (*(v16 + 16))(v18, v10 + v22 + v23 * v15);
    if (UsoIdentifier.value.getter() == v8 && v24 == 0xE800000000000000)
    {
      v26 = v8;

LABEL_27:
      v28 = *v90;
      (*v90)(v0[8], v0[9], v0[5]);
      v29 = v91;
      v94 = v91;
      v89 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_42_8();
        OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v91;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_28_6(v30);
        v92 = v35;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v92;
        v29 = v94;
      }

      ++v15;
      v33 = v0[8];
      v34 = v0[5];
      *(v29 + 16) = v32;
      v91 = v29;
      result = v89(v29 + v22 + v31 * v23, v33, v34);
      v8 = v26;
    }

    else
    {
      v26 = v8;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_27;
      }

      result = (*v17)(v0[9], v0[5]);
      ++v15;
      v8 = v26;
    }
  }

  v39 = *(v91 + 16);

  if (v39)
  {
    goto LABEL_39;
  }

  v62 = 0;
  while (1)
  {
    if (v93 == v62)
    {

      v73 = swift_task_alloc();
      v0[11] = v73;
      *v73 = v0;
      v73[1] = GetContactAttributeIntent.resolveReferenceAndAttribute(_:);
      goto LABEL_51;
    }

    if (v62 >= *(v10 + 16))
    {
      goto LABEL_62;
    }

    v63 = v0[7];
    v64 = v0[5];
    OUTLINED_FUNCTION_21_17();
    (*(v16 + 16))(v63, v10 + (v66 & ~v65) + *(v16 + 72) * v62);
    v67 = UsoIdentifier.value.getter();
    v69 = v0[7];
    v70 = v0[5];
    if (v67 == 0x73726576696E6E61 && v68 == 0xEB00000000797261)
    {
      break;
    }

    ++v62;
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v17)(v69, v70);
    if (v72)
    {
      goto LABEL_55;
    }
  }

  (*v17)(v69, v70);
LABEL_55:
  v74 = v0[3];

  type metadata accessor for ContactAttribute();
  OUTLINED_FUNCTION_15_20();
  OUTLINED_FUNCTION_0_51();
  v82 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v75, v76, v77, v78, v79, v80, v81, 0, v88);
  [v74 setContactAttributeToGet_];

LABEL_56:

LABEL_57:
  v6 = v0[3];

  v83 = v6;
LABEL_58:
  v85 = v0[8];
  v84 = v0[9];
  v86 = v0[7];

  OUTLINED_FUNCTION_12_14();

  return v87(v6);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[3];
    type metadata accessor for ContactAttribute();
    v3 = v1;
    OUTLINED_FUNCTION_0_51();
    v11 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v4, v5, v6, v7, v8, v9, v10, v1, 0);
    v12 = OUTLINED_FUNCTION_27_11();
    [v12 v13];
  }

  v14 = v0[2];
  v15 = v0[10];

  v16 = v0[3];

  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[7];
  v20 = v16;

  OUTLINED_FUNCTION_12_14();

  return v21(v16);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[16];
  v2 = v0[14];
  if (v1)
  {
    v3 = v0[3];
    type metadata accessor for ContactAttribute();
    v4 = v1;
    OUTLINED_FUNCTION_0_51();
    v12 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v5, v6, v7, v8, v9, v10, v11, v1, 0);
    [v3 setContactAttributeToGet_];
  }

  else
  {
    v13 = v0[14];

    v14 = v0[3];
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_0_51();
    v22 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v15, v16, v17, v18, v19, v20, v21, 0, v34);
    v23 = OUTLINED_FUNCTION_27_11();
    [v23 v24];
  }

  v25 = v0[13];
  v26 = v0[2];

  v27 = v0[3];

  v29 = v0[8];
  v28 = v0[9];
  v30 = v0[7];
  v31 = v27;

  OUTLINED_FUNCTION_12_14();

  return v32(v27);
}

void GetContactAttributeIntent.resolveStructuredName(from:)(uint64_t a1)
{
  v2 = v1;
  if (dispatch thunk of UsoEntity_common_Person.structuredName.getter())
  {

    v4 = CodeGenBase.entity.getter();
    UsoEntity.attributes.getter();
    OUTLINED_FUNCTION_24_13();

    specialized Dictionary.subscript.getter(0x6D614E6E65766967, 0xE900000000000065, a1);
    OUTLINED_FUNCTION_48_0();

    if (v4 || (v15 = CodeGenBase.entity.getter(), UsoEntity.attributes.getter(), OUTLINED_FUNCTION_24_13(), , specialized Dictionary.subscript.getter(0x614E796C696D6166, 0xEA0000000000656DLL, a1), OUTLINED_FUNCTION_48_0(), , v15))
    {

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
    }

    else
    {
      CodeGenBase.entity.getter();
      OUTLINED_FUNCTION_41_10();

      UsoEntity.attributes.getter();
      OUTLINED_FUNCTION_24_13();

      specialized Dictionary.subscript.getter(0x656D614E6B63696ELL, 0xE800000000000000, a1);
      OUTLINED_FUNCTION_48_0();

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
    }

    OUTLINED_FUNCTION_0_51();
    v28 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v21, v22, v23, v24, v25, v26, v27, 0, v31);
    v29 = OUTLINED_FUNCTION_27_11();
    [v29 v30];

    return;
  }

  v5 = CodeGenBase.entity.getter();
  v6 = UsoEntity.attributes.getter();

  specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, v6);
  OUTLINED_FUNCTION_41_10();

  if (v5)
  {
    if (specialized Array._getCount()(v5))
    {
      OUTLINED_FUNCTION_6_32();
      if (v6)
      {
        MEMORY[0x26D5E29D0](0, v5);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
      if (!v9)
      {
        v16 = v8;
        type metadata accessor for ContactAttribute();
        OUTLINED_FUNCTION_15_20();
        v17 = v16;
        v18 = v16;
        v19 = v16;
        goto LABEL_26;
      }
    }
  }

  v10 = CodeGenBase.entity.getter();
  v11 = UsoEntity.attributes.getter();

  specialized Dictionary.subscript.getter(0x636974656E6F6870, 0xEC000000656D614ELL, v11);
  OUTLINED_FUNCTION_41_10();

  if (!v10)
  {
    return;
  }

  if (!specialized Array._getCount()(v10))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_6_32();
  if (v11)
  {
    MEMORY[0x26D5E29D0](0, v10);
  }

  else
  {
    v12 = *(v10 + 32);
  }

  v13 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
  if (v14)
  {

LABEL_21:

    return;
  }

  v20 = v13;
  type metadata accessor for ContactAttribute();
  v31 = 0;
  v17 = v20;
  v18 = v20;
  v19 = v20;
LABEL_26:
  v32 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(9, v17, 0, v18, 0, v19, 0, 0, v31);
  [v2 setContactAttributeToGet_];
}

void GetContactAttributeIntent.setHandleAttribute(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UsoIdentifier();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_6();
  v179 = v13;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_6();
  v188 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_6();
  v182 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_27();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  v190 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  v180 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_6();
  v186 = v24;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v27 = (v176 - v26);
  OUTLINED_FUNCTION_44_6();
  v28 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!v28)
  {
    goto LABEL_109;
  }

  v29 = v28;
  v176[1] = ObjectType;
  if (one-time initialization token for siriContacts != -1)
  {
LABEL_119:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriContacts);

  v192 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v181 = v2;
  v177 = v1;
  v178 = v4;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v193[0] = v2;
    *v35 = 136315138;
    v36 = MEMORY[0x26D5E2610](v29, v6);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v193);

    *(v35 + 4) = v38;
    _os_log_impl(&dword_26686A000, v32, v33, "#GetContactAttributeIntent: checking against %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    OUTLINED_FUNCTION_6();
    v4 = v178;
    OUTLINED_FUNCTION_6();
  }

  static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:)();
  v41 = v40;
  if (v42)
  {
    v43 = v39;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v193[0] = v47;
      *v46 = 136315138;
      if (v41)
      {
        v48 = v43;
      }

      else
      {
        v48 = 7104878;
      }

      if (v41)
      {
        v49 = v41;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v193);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_26686A000, v44, v45, "#GetContactAttributeIntent: ambiguous address case; assuming user wants postalAddress for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v51 = v181;
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_14_16();
    v192 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v52, v53, v54, v55, v56, v57, v58, v59, 0);
    [v51 setContactAttributeToGet_];
    OUTLINED_FUNCTION_14();

    return;
  }

  v62 = 0;
  v191 = *(v29 + 16);
  v192 = (v9 + 16);
  v185 = (v9 + 32);
  v1 = (v9 + 8);
  v184 = MEMORY[0x277D84F90];
  v189 = v6;
  while (v191 != v62)
  {
    if (v62 >= *(v29 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_21_17();
    v4 = v64 & ~v63;
    v65 = *(v9 + 72);
    (*(v9 + 16))(v27, v29 + v4 + v65 * v62, v6);
    v66 = UsoIdentifier.namespace.getter();
    if (v67)
    {
      v68 = v66 == 0x707954656E6F6870 && v67 == 0xE900000000000065;
      if (v68)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_59_7();
      if (v2)
      {
        goto LABEL_40;
      }
    }

    v69 = UsoIdentifier.namespace.getter();
    if (!v70)
    {
      goto LABEL_32;
    }

    if (v69 == 0x7079546C69616D65 && v70 == 0xE900000000000065)
    {
LABEL_39:

LABEL_40:
      v75 = *v185;
      (*v185)(v186, v27, v6);
      v76 = v184;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193[0] = v76;
      v183 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_42_8();
        OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v76 = v193[0];
      }

      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      v2 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        OUTLINED_FUNCTION_28_6(v78);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v76 = v193[0];
      }

      ++v62;
      *(v76 + 16) = v2;
      v184 = v76;
      v80 = v76 + v4 + v79 * v65;
      v6 = v189;
      v183(v80, v186, v189);
    }

    else
    {
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_59_7();
      if (v2)
      {
        goto LABEL_40;
      }

LABEL_32:
      UsoIdentifier.namespace.getter();
      if (!v72)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_6_36();
      if (v68 && v73 == 0xEB00000000657079)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_59_7();
      if (v2)
      {
        goto LABEL_40;
      }

LABEL_38:
      (*v1)(v27, v6);
      ++v62;
    }
  }

  v81 = v184;
  if (*(v184 + 2))
  {

    if (*(v81 + 2))
    {
      OUTLINED_FUNCTION_21_17();
      v84 = v83 & ~v82;
      v85 = *(v9 + 16);
      v86 = v180;
      v87 = v189;
      v85(v180, &v81[v84], v189);
      v191 = UsoIdentifier.value.getter();
      v88 = *(v9 + 8);
      v88(v86, v87);
      v85(v86, &v81[v84], v87);

      v89 = UsoIdentifier.namespace.getter();
      v91 = v90;
      v88(v86, v87);
      static UsoIdentifierNamespace.attributeType(for:)(v89, v91);

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_16_1();
LABEL_78:
      OUTLINED_FUNCTION_14_16();
      v132 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v124, v125, v126, v127, v128, v129, v130, v131, v176[0]);
      [v181 setContactAttributeToGet_];
      goto LABEL_114;
    }

    __break(1u);
    goto LABEL_121;
  }

  v27 = 0;
  v186 = MEMORY[0x277D84F90];
  while (v191 != v27)
  {
    if (v27 >= *(v29 + 16))
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_21_17();
    v4 = v93 & ~v92;
    v94 = *(v9 + 72);
    v95 = *(v9 + 16);
    v96 = OUTLINED_FUNCTION_36_10();
    v97(v96);
    v98 = UsoIdentifier.namespace.getter();
    if (!v99)
    {
LABEL_57:
      (*v1)(v190, v6);
      v27 = (v27 + 1);
      continue;
    }

    if (v98 == 0xD000000000000011 && v99 == 0x800000026696E1A0)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_59_7();
      if ((v2 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v184 = *v185;
    (v184)(v182, v190, v6);
    v101 = v186;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v193[0] = v101;
    if ((v102 & 1) == 0)
    {
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_18_17();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v101 = v193[0];
    }

    v104 = *(v101 + 16);
    v103 = *(v101 + 24);
    v2 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      OUTLINED_FUNCTION_28_6(v103);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v101 = v193[0];
    }

    v27 = (v27 + 1);
    *(v101 + 16) = v2;
    v186 = v101;
    v105 = v101 + v4 + v104 * v94;
    v6 = v189;
    (v184)(v105, v182, v189);
  }

  v106 = *(v186 + 16);
  if (v106)
  {
    OUTLINED_FUNCTION_21_17();
    v110 = v109 + (v108 & ~v107);
    v4 = *(v9 + 72);
    v27 = *(v9 + 16);
    v2 = MEMORY[0x277D84F90];
    v190 = v4;
    do
    {
      v111 = v187;
      OUTLINED_FUNCTION_2_18();
      v27();
      v112._countAndFlagsBits = UsoIdentifier.value.getter();
      ContactNLv3Intent.NLContactAttributesValue.init(rawValue:)(v112);
      (*v1)(v111, v6);
      v113 = v193[0];
      if (LOBYTE(v193[0]) != 70)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = *(v2 + 16);
          v117 = OUTLINED_FUNCTION_18_17();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v117, v118, v119, v2);
          v2 = v120;
        }

        v115 = *(v2 + 16);
        v114 = *(v2 + 24);
        if (v115 >= v114 >> 1)
        {
          v121 = OUTLINED_FUNCTION_28_6(v114);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121, v115 + 1, 1, v2);
          v2 = v122;
        }

        *(v2 + 16) = v115 + 1;
        *(v2 + v115 + 32) = v113;
        v4 = v190;
      }

      v110 += v4;
      --v106;
      v6 = v189;
    }

    while (v106);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  if (*(v2 + 16))
  {

    if (*(v2 + 16))
    {
      v123 = *(v2 + 32);

      LOBYTE(v193[0]) = v123;
      ContactNLv3Intent.NLContactAttributesValue.attributeTypeAndLabel()();
      OUTLINED_FUNCTION_33_10();
      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_28_7();
      goto LABEL_78;
    }

LABEL_121:
    __break(1u);
    return;
  }

  v133 = 0;
  v190 = MEMORY[0x277D84F90];
  while (v191 != v133)
  {
    if (v133 >= *(v29 + 16))
    {
      goto LABEL_118;
    }

    OUTLINED_FUNCTION_21_17();
    v27 = (v135 & ~v134);
    v2 = *(v9 + 72);
    v136 = *(v9 + 16);
    v137 = OUTLINED_FUNCTION_36_10();
    v138(v137);
    v139 = UsoIdentifier.namespace.getter();
    if (!v140)
    {
LABEL_88:
      (*v1)(v188, v6);
      ++v133;
      continue;
    }

    if (v139 == 0x54746361746E6F63 && v140 == 0xEB00000000657079)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    v187 = *v185;
    v187(v177, v188, v6);
    v142 = v190;
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v193[0] = v142;
    if ((v143 & 1) == 0)
    {
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_18_17();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v142 = v193[0];
    }

    v145 = *(v142 + 16);
    v144 = *(v142 + 24);
    v4 = v145 + 1;
    if (v145 >= v144 >> 1)
    {
      OUTLINED_FUNCTION_28_6(v144);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v142 = v193[0];
    }

    ++v133;
    *(v142 + 16) = v4;
    v190 = v142;
    v146 = v27 + v142 + v145 * v2;
    v6 = v189;
    v187(v146, v177, v189);
  }

  v147 = *(v190 + 16);
  if (v147)
  {
    OUTLINED_FUNCTION_21_17();
    v151 = v150 + (v149 & ~v148);
    v152 = *(v9 + 72);
    v153 = *(v9 + 16);
    v154 = MEMORY[0x277D84F90];
    v155 = v179;
    do
    {
      v153(v155, v151, v6);
      v156._countAndFlagsBits = UsoIdentifier.value.getter();
      v157.value = ContactNLIntent.NLContactTypeValue.init(rawValue:)(v156).value;
      (*v1)(v155, v6);
      if (v157.value != SiriContactsIntents_ContactNLIntent_NLContactTypeValue_unknownDefault)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = *(v154 + 16);
          v161 = OUTLINED_FUNCTION_18_17();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v161, v162, v163, v154);
          v154 = v164;
        }

        v159 = *(v154 + 16);
        v158 = *(v154 + 24);
        if (v159 >= v158 >> 1)
        {
          v165 = OUTLINED_FUNCTION_28_6(v158);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v165, v159 + 1, 1, v154);
          v154 = v166;
        }

        *(v154 + 16) = v159 + 1;
        *(v154 + v159 + 32) = v157;
      }

      v151 += v152;
      --v147;
      v6 = v189;
    }

    while (v147);
  }

  else
  {

    v154 = MEMORY[0x277D84F90];
  }

  v2 = v181;
  if (*(v154 + 16))
  {
    v167 = *(v154 + 32);

    ContactNLIntent.NLContactTypeValue.attributeTypeAndLabel()(v167);
    OUTLINED_FUNCTION_33_10();
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_28_7();
    goto LABEL_113;
  }

LABEL_109:
  static SiriKitGetEntityIntent.resolveAddressType(from:)();
  if (!v194 || v194 == 1 || v194 == 2)
  {
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_32_8();
    OUTLINED_FUNCTION_16_1();
LABEL_113:
    OUTLINED_FUNCTION_14_16();
    v132 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v168, v169, v170, v171, v172, v173, v174, v175, v176[0]);
    [v2 setContactAttributeToGet_];
LABEL_114:
  }

  OUTLINED_FUNCTION_14();
}

uint64_t closure #1 in static Transformer<>.transformer(_:referenceResolver:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a4;
  v62 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_50_7();
  v11 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v23 = *a1;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v25 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntent());
    v24 = [v25 init];
  }

  v65 = v24;
  v26 = a2;
  OUTLINED_FUNCTION_23_15();
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  if (v64)
  {
    dispatch thunk of UsoEntity_common_Person.definedValue.getter();
    if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v4, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    }

    else
    {
      (*(v14 + 32))(v22, v4, v11);
      (*(v14 + 104))(v19, *MEMORY[0x277D5E828], v11);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v14 + 8);
      v28(v19, v11);
      v28(v22, v11);
      if ((v27 & 1) == 0)
      {
LABEL_27:

        v24 = 0;
        goto LABEL_32;
      }
    }

    dispatch thunk of UsoEntity_common_Person.name.getter();
    if (v29)
    {
      OUTLINED_FUNCTION_33_10();
      type metadata accessor for Contact();
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_1_48();
      v38 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v30, v31, v32, v33, v34, v35, v36, v37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      [v24 setRelatedContact_];
    }
  }

  result = UsoTask_update_common_Person.updateTaskType.getter();
  if (result)
  {
    if (result == 1)
    {
      if (UsoTask_update_common_Person.updateRelationshipInfoLocation.getter())
      {
        OUTLINED_FUNCTION_23_15();
        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
        if (v64)
        {
          OUTLINED_FUNCTION_23_15();
          dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
          if (v64)
          {
            dispatch thunk of UsoEntity_common_Person.name.getter();
            OUTLINED_FUNCTION_33_10();

            type metadata accessor for Contact();
            OUTLINED_FUNCTION_40_6();
            OUTLINED_FUNCTION_1_48();
            v48 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v40, v41, v42, v43, v44, v45, v46, v47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            [v24 setRelatedContact_];
          }

          UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)();
          if ((v49 & 1) == 0)
          {
            OUTLINED_FUNCTION_23_15();
            dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      result = UsoTask_update_common_Person.updateRelationshipInfoLocation.getter();
      if (result != 2 && (result & 1) == 0)
      {
        OUTLINED_FUNCTION_23_15();
        result = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
        if (v64)
        {
          OUTLINED_FUNCTION_23_15();
          dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
          if (v64)
          {
            dispatch thunk of UsoEntity_common_Person.name.getter();
            OUTLINED_FUNCTION_33_10();

            type metadata accessor for Contact();
            OUTLINED_FUNCTION_40_6();
            OUTLINED_FUNCTION_1_48();
            v58 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v50, v51, v52, v53, v54, v55, v56, v57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            [v24 setRelatedContact_];
          }

          UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)();
          if ((v59 & 1) == 0)
          {
            OUTLINED_FUNCTION_23_15();
            dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
LABEL_29:
            specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
            v61 = v60;

            if (v61)
            {
              ModifyContactAttributeIntent.runReferenceResolution(_:)();
            }

            goto LABEL_31;
          }

          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_15();
    result = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v64)
    {
      UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)();
LABEL_31:
    }
  }

LABEL_32:
  *v63 = v24;
  return result;
}

void UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v133 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v128 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v13);
  v131 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v130 = v19 - v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_27();
  MEMORY[0x28223BE20](v22);
  v137 = &v122 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
  v25 = OUTLINED_FUNCTION_18_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  v129 = v28 - v29;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  v32 = &v122 - v31;
  v135 = type metadata accessor for PrimitiveStringOperators();
  v33 = OUTLINED_FUNCTION_1_0(v135);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_4();
  v126 = v38 - v39;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_6();
  v127 = v41;
  OUTLINED_FUNCTION_16();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v122 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v122 - v46;
  v136 = v0;
  v48 = dispatch thunk of UsoEntity_common_Person.structuredName.getter();
  v134 = v2;
  if (!v48)
  {
    goto LABEL_14;
  }

  v132 = *v2;
  [v132 setContactAttributeToModify_];
  if (!dispatch thunk of UsoEntity_common_PersonName.nickNameAsExpression.getter())
  {
    dispatch thunk of UsoEntity_common_PersonName.nickName.getter();
    if (v57)
    {
      OUTLINED_FUNCTION_33_10();
      v58 = v132;
      [v132 setModifyOperation_];

      OUTLINED_FUNCTION_14_20();
      specialized Collection.prefix(_:)(v59);
      v60 = Substring.uppercased()();

      OUTLINED_FUNCTION_14_20();
      v64 = specialized Collection.dropFirst(_:)(v61, v62, v63);
      v144 = v60;
      v140 = v64;
      v141 = v65;
      v142 = v66;
      v143 = v67;
      lazy protocol witness table accessor for type Substring and conformance Substring();

      String.append<A>(contentsOf:)();

      outlined bridged method (mbnn) of @objc ModifyContactAttributeIntent.modifyNickName.setter(v144._countAndFlagsBits, v144._object, v58);
    }

    goto LABEL_13;
  }

  dispatch thunk of CodeGenExpression.operand.getter();
  object = v144._object;
  if (v144._object)
  {
    v124 = v3;
    countAndFlagsBits = v144._countAndFlagsBits;

    specialized Collection.prefix(_:)(1);
    v51 = Substring.uppercased()();
    v125 = v35;
    v123 = v10;

    v52 = specialized Collection.dropFirst(_:)(1uLL, countAndFlagsBits, object);
    v139 = v51;
    v140 = v52;
    v141 = v53;
    v142 = v54;
    v143 = v55;
    lazy protocol witness table accessor for type Substring and conformance Substring();

    object = &v139;
    v35 = v125;
    String.append<A>(contentsOf:)();
    v10 = v123;

    MEMORY[0x26D5E2470](v139._countAndFlagsBits, v139._object);
    OUTLINED_FUNCTION_41_10();
    v3 = v124;
  }

  [v132 setModifyNickName_];

  dispatch thunk of CodeGenExpression.operatorAsString.getter();
  if (!v56)
  {
LABEL_9:
    [v132 setModifyOperation_];

LABEL_13:

LABEL_14:
    v68 = v138;
    goto LABEL_15;
  }

  PrimitiveStringOperators.init(rawValue:)();
  OUTLINED_FUNCTION_57(v32, 1, v135);
  if (v83)
  {
    outlined destroy of Result<TemplatingResult, Error>(v32, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
    goto LABEL_9;
  }

  v90 = v135;
  (*(v35 + 32))(v47, v32, v135);
  (*(v35 + 16))(v45, v47, v90);
  v91 = (*(v35 + 88))(v45, v90);
  if (v91 == *MEMORY[0x277D5E860] || v91 == *MEMORY[0x277D5E868])
  {
    v120 = 3;
  }

  else
  {
    (*(v35 + 8))(v45, v135);
    v120 = 0;
  }

  v68 = v138;
  [v132 setModifyOperation_];

  (*(v35 + 8))(v47, v135);
LABEL_15:
  v69 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();
  v70 = v137;
  if (!v69)
  {
    goto LABEL_46;
  }

  v71 = *v134;
  [*v134 setContactAttributeToModify_];
  UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
  if (v72)
  {
    v73 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v73 = 0;
  }

  [v71 setModifyRelationship_];

  if (!dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
  {
    goto LABEL_38;
  }

  v125 = v35;
  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  (*(v133 + 104))(v68, *MEMORY[0x277D5E828], v3);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v3);
  v74 = *(v10 + 48);
  v75 = v131;
  outlined init with copy of Result<RRResult, Error>(v70, v131, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined init with copy of Result<RRResult, Error>(v68, v75 + v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_11_23(v75);
  if (v83)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v76, v77, v78);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v79, v80, v81);
    OUTLINED_FUNCTION_11_23(v75 + v74);
    if (v83)
    {
      outlined destroy of Result<TemplatingResult, Error>(v75, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v35 = v125;
      goto LABEL_38;
    }

LABEL_29:
    outlined destroy of Result<TemplatingResult, Error>(v75, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
    goto LABEL_45;
  }

  v82 = v130;
  outlined init with copy of Result<RRResult, Error>(v75, v130, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_11_23(v75 + v74);
  if (v83)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v84, v85, v86);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v87, v88, v89);
    (*(v133 + 8))(v82, v3);
    goto LABEL_29;
  }

  v93 = v133;
  v94 = v75 + v74;
  v95 = v128;
  (*(v133 + 32))(v128, v94, v3);
  lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
  v96 = dispatch thunk of static Equatable.== infix(_:_:)();

  v97 = *(v93 + 8);
  v97(v95, v3);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of Result<TemplatingResult, Error>(v98, v99, v100);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of Result<TemplatingResult, Error>(v101, v102, v103);
  v97(v82, v3);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of Result<TemplatingResult, Error>(v104, v105, v106);
  v35 = v125;
  if ((v96 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (!dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter())
  {
    [v71 setModifyOperation_];
    goto LABEL_45;
  }

  dispatch thunk of CodeGenExpression.operatorAsString.getter();
  if (!v107)
  {
LABEL_43:
    v109 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
    v111 = static ModifyOperation.from(_:)(v109, v110);

    [v71 setModifyOperation_];

LABEL_45:

    goto LABEL_46;
  }

  v108 = v129;
  PrimitiveStringOperators.init(rawValue:)();
  OUTLINED_FUNCTION_57(v108, 1, v135);
  if (v83)
  {
    outlined destroy of Result<TemplatingResult, Error>(v108, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
    goto LABEL_43;
  }

  v112 = *(v35 + 32);
  v113 = v127;
  v114 = OUTLINED_FUNCTION_22_0();
  v115 = v135;
  v116(v114);
  v117 = v126;
  (*(v35 + 16))(v126, v113, v115);
  v118 = (*(v35 + 88))(v117, v115);
  if (v118 == *MEMORY[0x277D5E860] || v118 == *MEMORY[0x277D5E868])
  {
    v121 = 3;
  }

  else
  {
    (*(v35 + 8))(v117, v135);
    v121 = 0;
  }

  [v71 setModifyOperation_];

  (*(v35 + 8))(v113, v135);
LABEL_46:
  OUTLINED_FUNCTION_14();
}

void specialized SiriKitGetEntityIntent.setIsMe(reference:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v5, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 104))(v11, *MEMORY[0x277D5E828], v6);
    v14 = specialized == infix<A>(_:_:)(v13, v11);
    v15 = *(v7 + 8);
    v15(v11, v6);
    if (v14)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v17 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
      [v1 setValue:isa forKey:v17];

      v15(v13, v6);
      return;
    }

    v15(v13, v6);
  }

  v18 = Bool._bridgeToObjectiveC()().super.super.isa;
  v19 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
  [v1 setValue:v18 forKey:v19];
}

void SiriKitGetEntityIntent.setIsMe(reference:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_50_7();
  v9 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_6();
  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  OUTLINED_FUNCTION_11_23(v2);
  if (v16)
  {
    outlined destroy of Result<TemplatingResult, Error>(v2, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  }

  else
  {
    (*(v12 + 32))(v1, v2, v9);
    (*(v12 + 104))(v3, *MEMORY[0x277D5E828], v9);
    a1 = specialized == infix<A>(_:_:)(v1, v3);
    v17 = *(v12 + 8);
    v17(v3, v9);
    if (a1)
    {
      Bool._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_55_6();
      v19 = v18;
      v20 = OUTLINED_FUNCTION_27_11();
      [v20 v21];

      v22 = OUTLINED_FUNCTION_61_1();
      (v17)(v22);
      return;
    }

    v23 = OUTLINED_FUNCTION_61_1();
    (v17)(v23);
  }

  Bool._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_55_6();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_27_11();
  [v26 v27];
}

void static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:)()
{
  OUTLINED_FUNCTION_15();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v1 = OUTLINED_FUNCTION_18_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v76 = v8;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  v82 = type metadata accessor for UsoIdentifier();
  v12 = OUTLINED_FUNCTION_1_0(v82);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v78 = (v17 - v18);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_27();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v71 - v24;
  OUTLINED_FUNCTION_44_6();
  v26 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!v26)
  {
    goto LABEL_48;
  }

  v81 = *(v26 + 16);
  if (!v81)
  {
LABEL_14:

    goto LABEL_48;
  }

  v72 = v11;
  v73 = v6;
  v27 = 0;
  v75 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v79 = (v26 + v75);
  v80 = v26;
  v83 = (v14 + 8);
  v84 = v14 + 16;
  v28 = v82;
  while (1)
  {
    if (v27 >= *(v26 + 16))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    v29 = *(v14 + 72);
    v30 = *(v14 + 16);
    v31 = OUTLINED_FUNCTION_27_11();
    v30(v31);
    UsoIdentifier.namespace.getter();
    if (!v32)
    {
      (*v83)(v25, v28);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_6_36();
    v34 = v34 && v33 == 0xEB00000000657079;
    if (v34)
    {
      break;
    }

    v35 = OUTLINED_FUNCTION_57_4();

    v28 = v82;
    v36 = *v83;
    (*v83)(v25, v82);
    if (v35)
    {
      v79 = v36;
      goto LABEL_17;
    }

LABEL_13:
    ++v27;
    v26 = v80;
    if (v81 == v27)
    {
      goto LABEL_14;
    }
  }

  v79 = *v83;
  v79(v25, v82);
LABEL_17:
  v37 = 0;
  v74 = (v14 + 32);
  v38 = v80 + v75;
  v39 = MEMORY[0x277D84F90];
  v71 = v80 + v75;
LABEL_18:
  v40 = v38 + v29 * v37;
  while (v81 != v37)
  {
    if (v37 >= *(v80 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    v41 = v82;
    v42 = (v30)(v23, v40, v82);
    MEMORY[0x28223BE20](v42);
    *(&v71 - 2) = v23;
    if (specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:), (&v71 - 4), outlined read-only object #0 of static ContactNLIntent.ContactIntentAddressAttributes.allCases.getter))
    {
      v43 = *v74;
      (*v74)(v77, v23, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = *(v39 + 16);
        OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v85;
      }

      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_28_6(v46);
        v50 = v49;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v48 = v50;
        v39 = v85;
      }

      ++v37;
      *(v39 + 16) = v48;
      (v43)(v39 + v75 + v47 * v29, v77);
      v38 = v71;
      goto LABEL_18;
    }

    v79(v23, v41);
    v40 += v29;
    ++v37;
  }

  v51 = *(v39 + 16);
  if (v51)
  {
    v52 = 0;
    v53 = v39 + v75;
    v54 = v79;
    while (1)
    {
      if (v52 >= *(v39 + 16))
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_14_20();
      (v30)();
      UsoIdentifier.namespace.getter();
      if (v55)
      {
        OUTLINED_FUNCTION_6_36();
        if (v34 && v56 == 0xEB00000000657079)
        {

          goto LABEL_42;
        }

        v58 = OUTLINED_FUNCTION_57_4();

        if (v58)
        {
          break;
        }
      }

      ++v52;
      v59 = v82;
      v54(v78, v82);
      v53 += v29;
      if (v51 == v52)
      {

        v60 = 1;
        v62 = v72;
        v61 = v73;
        goto LABEL_43;
      }
    }

LABEL_42:
    v62 = v72;
    v59 = v82;
    (*v74)(v72, v78, v82);
    v60 = 0;
    v61 = v73;
LABEL_43:
    v63 = v76;
    v64 = v80;
    __swift_storeEnumTagSinglePayload(v62, v60, 1, v59);
    outlined init with copy of Result<RRResult, Error>(v62, v63, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    OUTLINED_FUNCTION_57(v63, 1, v59);
    if (v34)
    {
      outlined destroy of Result<TemplatingResult, Error>(v63, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      specialized Collection.first.getter(v64, v61);

      OUTLINED_FUNCTION_57(v61, 1, v59);
      if (v34)
      {
        OUTLINED_FUNCTION_14_20();
        outlined destroy of Result<TemplatingResult, Error>(v65, v66, v67);
        OUTLINED_FUNCTION_14_20();
        outlined destroy of Result<TemplatingResult, Error>(v68, v69, v70);
      }

      else
      {
        UsoIdentifier.value.getter();
        outlined destroy of Result<TemplatingResult, Error>(v62, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v54(v61, v59);
      }
    }

    else
    {
      UsoIdentifier.value.getter();
      v54(v63, v59);

      outlined destroy of Result<TemplatingResult, Error>(v62, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    goto LABEL_48;
  }

LABEL_48:
  OUTLINED_FUNCTION_14();
}

uint64_t closure #1 in closure #2 in static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:)(char *a1)
{
  v1 = ContactNLIntent.ContactIntentAddressAttributes.rawValue.getter(*a1);
  v3 = v2;
  if (v1 == UsoIdentifier.value.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t outlined consume of SpecifyingContactAddressType?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of SiriKitContactIntentResolvedValue(a1, a2, a3);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_36_10()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_55_6()
{

  JUMPOUT(0x26D5E2470);
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_59_7()
{
}

uint64_t static Dictionary<>.cnLabel(forNLSemantic:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Signpost.OpenSignpost();
  v6 = OUTLINED_FUNCTION_3_33(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = &v10[*(v2 + 20)];
  *v12 = "RelationshipLabelValueForKey";
  *(v12 + 1) = 28;
  v12[16] = 2;
  if (one-time initialization token for NLSemanticValueToCNRelationLabel != -1)
  {
    OUTLINED_FUNCTION_0_52();
  }

  swift_beginAccess();
  v13 = specialized Dictionary.subscript.getter(a1, a2, static Dictionary<>.NLSemanticValueToCNRelationLabel);
  v15 = v14;
  swift_endAccess();
  if (v15)
  {
    a1 = v13;
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v10);
  return a1;
}

uint64_t static Dictionary<>.nlSemantic(forCNLabel:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Signpost.OpenSignpost();
  v6 = OUTLINED_FUNCTION_3_33(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v11 = static Signpost.contactsLog;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_2_47();
    os_signpost(_:dso:log:name:signpostID:)();
    v12 = &v10[*(v2 + 5)];
    *v12 = "RelationshipLabelKeyForValue";
    *(v12 + 1) = 28;
    v12[16] = 2;
    if (!a2)
    {
      break;
    }

    v13 = one-time initialization token for GenderedCNRelationLabelToNLSemanticValue;

    if (v13 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = specialized Dictionary.subscript.getter(a1, a2, static Dictionary<>.GenderedCNRelationLabelToNLSemanticValue);
    v16 = v15;
    swift_endAccess();
    if (v16)
    {

      a1 = v14;
      goto LABEL_29;
    }

    v35 = v11;
    if (one-time initialization token for NLSemanticValueToCNRelationLabel != -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    v2 = &static Dictionary<>.NLSemanticValueToCNRelationLabel;
    swift_beginAccess();
    v21 = 0;
    v22 = static Dictionary<>.NLSemanticValueToCNRelationLabel;
    v23 = static Dictionary<>.NLSemanticValueToCNRelationLabel + 64;
    v24 = 1 << *(static Dictionary<>.NLSemanticValueToCNRelationLabel + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(static Dictionary<>.NLSemanticValueToCNRelationLabel + 64);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_22:
      v29 = (v21 << 10) | (16 * __clz(__rbit64(v26)));
      v30 = (*(v22 + 48) + v29);
      v31 = *v30;
      v2 = v30[1];
      v32 = (*(v22 + 56) + v29);
      if (*v32 != a1 || v32[1] != a2)
      {
        v26 &= v26 - 1;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      a1 = v31;
      goto LABEL_29;
    }

    while (1)
    {
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        goto LABEL_29;
      }

      v26 = *(v23 + 8 * v28);
      ++v21;
      if (v26)
      {
        v21 = v28;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_30_2();
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriContacts);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26686A000, v18, v19, "#NLSemanticForCNLabel provided value was nil, returning empty string for key", v20, 2u);
    MEMORY[0x26D5E3300](v20, -1, -1);
  }

  a1 = static String.EMPTY.getter();
LABEL_29:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v10);
  return a1;
}

uint64_t one-time initialization function for NLSemanticValueToCNRelationLabel()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26696C7C0;
  *(v0 + 32) = 0x656972666C726967;
  *(v0 + 40) = 0xEA0000000000646ELL;
  v1 = *MEMORY[0x277CBD4F0];
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = 0x6E65697266796F62;
  *(v0 + 72) = 0xE900000000000064;
  v3 = *MEMORY[0x277CBD2C0];
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  *(v0 + 96) = 0x726568746166;
  *(v0 + 104) = 0xE600000000000000;
  v5 = *MEMORY[0x277CBD4A8];
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v6;
  *(v0 + 128) = 0x726568746F6DLL;
  *(v0 + 136) = 0xE600000000000000;
  v7 = *MEMORY[0x277CBD5F0];
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v8;
  *(v0 + 160) = 0x746E65726170;
  *(v0 + 168) = 0xE600000000000000;
  v9 = *MEMORY[0x277CBD678];
  *(v0 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 184) = v10;
  *(v0 + 192) = 0x726568746F7262;
  *(v0 + 200) = 0xE700000000000000;
  v11 = *MEMORY[0x277CBD2C8];
  *(v0 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 216) = v12;
  *(v0 + 224) = 0x726574736973;
  *(v0 + 232) = 0xE600000000000000;
  v13 = *MEMORY[0x277CBD6F0];
  *(v0 + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 248) = v14;
  *(v0 + 256) = 0x676E696C626973;
  *(v0 + 264) = 0xE700000000000000;
  v15 = *MEMORY[0x277CBD6D8];
  *(v0 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 280) = v16;
  strcpy((v0 + 288), "sibling_female");
  *(v0 + 303) = -18;
  *(v0 + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 312) = v17;
  *(v0 + 320) = 0x646E65697266;
  *(v0 + 328) = 0xE600000000000000;
  v18 = *MEMORY[0x277CBD4E8];
  *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 344) = v19;
  *(v0 + 352) = 0x6573756F7073;
  *(v0 + 360) = 0xE600000000000000;
  v20 = *MEMORY[0x277CBD760];
  *(v0 + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 376) = v21;
  strcpy((v0 + 384), "female_spouse");
  *(v0 + 398) = -4864;
  *(v0 + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 408) = v22;
  *(v0 + 416) = 0x6F70735F656C616DLL;
  *(v0 + 424) = 0xEB00000000657375;
  *(v0 + 432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 440) = v23;
  *(v0 + 448) = 1701210487;
  *(v0 + 456) = 0xE400000000000000;
  v24 = *MEMORY[0x277CBD820];
  *(v0 + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 472) = v25;
  *(v0 + 480) = 0x646E6162737568;
  *(v0 + 488) = 0xE700000000000000;
  v26 = *MEMORY[0x277CBD5C8];
  *(v0 + 496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 504) = v27;
  *(v0 + 512) = 0x72656E74726170;
  *(v0 + 520) = 0xE700000000000000;
  v28 = *MEMORY[0x277CBD6D0];
  *(v0 + 528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 536) = v29;
  *(v0 + 544) = 0x6E61747369737361;
  *(v0 + 552) = 0xE900000000000074;
  v30 = *MEMORY[0x277CBD248];
  *(v0 + 560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 568) = v31;
  strcpy((v0 + 576), "male_assistant");
  *(v0 + 591) = -18;
  *(v0 + 592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 600) = v32;
  *(v0 + 608) = 0xD000000000000010;
  *(v0 + 616) = 0x8000000266972030;
  *(v0 + 624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 632) = v33;
  *(v0 + 640) = 0xD000000000000010;
  *(v0 + 648) = 0x8000000266972050;
  *(v0 + 656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 664) = v34;
  *(v0 + 672) = 0x726567616E616DLL;
  *(v0 + 680) = 0xE700000000000000;
  v35 = *MEMORY[0x277CBD5E8];
  *(v0 + 688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 696) = v36;
  strcpy((v0 + 704), "manager_female");
  *(v0 + 719) = -18;
  *(v0 + 720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 728) = v37;
  strcpy((v0 + 736), "female_manager");
  *(v0 + 751) = -18;
  *(v0 + 752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 760) = v38;
  strcpy((v0 + 768), "male_manager");
  *(v0 + 781) = 0;
  *(v0 + 782) = -5120;
  *(v0 + 784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 792) = v39;
  *(v0 + 800) = 0x756761656C6C6F63;
  *(v0 + 808) = 0xE900000000000065;
  v40 = *MEMORY[0x277CBD358];
  *(v0 + 816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 824) = v41;
  strcpy((v0 + 832), "male_colleague");
  *(v0 + 847) = -18;
  *(v0 + 848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 856) = v42;
  *(v0 + 864) = 0xD000000000000010;
  *(v0 + 872) = 0x8000000266972070;
  *(v0 + 880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 888) = v43;
  *(v0 + 896) = 0x72656863616574;
  *(v0 + 904) = 0xE700000000000000;
  v44 = *MEMORY[0x277CBD7A8];
  *(v0 + 912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 920) = v45;
  strcpy((v0 + 928), "male_teacher");
  *(v0 + 941) = 0;
  *(v0 + 942) = -5120;
  *(v0 + 944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 952) = v46;
  strcpy((v0 + 960), "female_teacher");
  *(v0 + 975) = -18;
  *(v0 + 976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 984) = v47;
  *(v0 + 992) = 0x646C696863;
  *(v0 + 1000) = 0xE500000000000000;
  v48 = *MEMORY[0x277CBD318];
  *(v0 + 1008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1016) = v49;
  *(v0 + 1024) = 7237491;
  *(v0 + 1032) = 0xE300000000000000;
  v50 = *MEMORY[0x277CBD740];
  *(v0 + 1040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1048) = v51;
  *(v0 + 1056) = 0x7265746867756164;
  *(v0 + 1064) = 0xE800000000000000;
  v52 = *MEMORY[0x277CBD3E0];
  *(v0 + 1072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1080) = v53;
  *(v0 + 1088) = 0x77656870656ELL;
  *(v0 + 1096) = 0xE600000000000000;
  v54 = *MEMORY[0x277CBD618];
  *(v0 + 1104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1112) = v55;
  *(v0 + 1120) = 0x656365696ELL;
  *(v0 + 1128) = 0xE500000000000000;
  v56 = *MEMORY[0x277CBD648];
  *(v0 + 1136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1144) = v57;
  *(v0 + 1152) = 0x656C636E75;
  *(v0 + 1160) = 0xE500000000000000;
  v58 = *MEMORY[0x277CBD7B0];
  *(v0 + 1168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1176) = v59;
  *(v0 + 1184) = 1953396065;
  *(v0 + 1192) = 0xE400000000000000;
  v60 = *MEMORY[0x277CBD250];
  *(v0 + 1200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1208) = v61;
  *(v0 + 1216) = 0x746F6D646E617267;
  *(v0 + 1224) = 0xEB00000000726568;
  v62 = *MEMORY[0x277CBD538];
  *(v0 + 1232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1240) = v63;
  *(v0 + 1248) = 0x746166646E617267;
  *(v0 + 1256) = 0xEB00000000726568;
  v64 = *MEMORY[0x277CBD520];
  *(v0 + 1264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1272) = v65;
  *(v0 + 1280) = 0x726170646E617267;
  *(v0 + 1288) = 0xEB00000000746E65;
  v66 = *MEMORY[0x277CBD580];
  *(v0 + 1296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1304) = v67;
  *(v0 + 1312) = 0x6E6F73646E617267;
  *(v0 + 1320) = 0xE800000000000000;
  v68 = *MEMORY[0x277CBD588];
  *(v0 + 1328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1336) = v69;
  strcpy((v0 + 1344), "granddaughter");
  *(v0 + 1358) = -4864;
  v70 = *MEMORY[0x277CBD518];
  *(v0 + 1360) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1368) = v71;
  *(v0 + 1376) = 0x696863646E617267;
  *(v0 + 1384) = 0xEA0000000000646CLL;
  v72 = *MEMORY[0x277CBD508];
  *(v0 + 1392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1400) = v73;
  strcpy((v0 + 1408), "brother-in-law");
  *(v0 + 1423) = -18;
  v74 = *MEMORY[0x277CBD2D0];
  *(v0 + 1424) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1432) = v75;
  *(v0 + 1440) = 0x6C2D6E692D6E6F73;
  *(v0 + 1448) = 0xEA00000000007761;
  v76 = *MEMORY[0x277CBD748];
  *(v0 + 1456) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1464) = v77;
  strcpy((v0 + 1472), "sister-in-law");
  *(v0 + 1486) = -4864;
  v78 = *MEMORY[0x277CBD6F8];
  *(v0 + 1488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1496) = v79;
  *(v0 + 1504) = 0x7265746867756164;
  *(v0 + 1512) = 0xEF77616C2D6E692DLL;
  v80 = *MEMORY[0x277CBD3E8];
  *(v0 + 1520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1528) = v81;
  strcpy((v0 + 1536), "child-in-law");
  *(v0 + 1549) = 0;
  *(v0 + 1550) = -5120;
  v82 = *MEMORY[0x277CBD320];
  *(v0 + 1552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1560) = v83;
  strcpy((v0 + 1568), "mother-in-law");
  *(v0 + 1582) = -4864;
  v84 = *MEMORY[0x277CBD5F8];
  *(v0 + 1584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1592) = v85;
  strcpy((v0 + 1600), "father-in-law");
  *(v0 + 1614) = -4864;
  v86 = *MEMORY[0x277CBD4B0];
  *(v0 + 1616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1624) = v87;
  *(v0 + 1632) = 0x6E7561646E617267;
  *(v0 + 1640) = 0xE900000000000074;
  v88 = *MEMORY[0x277CBD500];
  *(v0 + 1648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1656) = v89;
  *(v0 + 1664) = 0x636E75646E617267;
  *(v0 + 1672) = 0xEA0000000000656CLL;
  v90 = *MEMORY[0x277CBD590];
  *(v0 + 1680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1688) = v91;
  *(v0 + 1696) = 0x70656E646E617267;
  *(v0 + 1704) = 0xEB00000000776568;
  v92 = *MEMORY[0x277CBD550];
  *(v0 + 1712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1720) = v93;
  *(v0 + 1728) = 0x65696E646E617267;
  *(v0 + 1736) = 0xEA00000000006563;
  v94 = *MEMORY[0x277CBD568];
  *(v0 + 1744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1752) = v95;
  *(v0 + 1760) = 0xD000000000000013;
  *(v0 + 1768) = 0x8000000266972090;
  v96 = *MEMORY[0x277CBD5A0];
  *(v0 + 1776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1784) = v97;
  strcpy((v0 + 1792), "great grandson");
  *(v0 + 1807) = -18;
  v98 = *MEMORY[0x277CBD5C0];
  *(v0 + 1808) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1816) = v99;
  *(v0 + 1824) = 0xD000000000000011;
  *(v0 + 1832) = 0x80000002669720B0;
  v100 = *MEMORY[0x277CBD5B8];
  *(v0 + 1840) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1848) = v101;
  *(v0 + 1856) = 0xD000000000000011;
  *(v0 + 1864) = 0x80000002669720D0;
  v102 = *MEMORY[0x277CBD5B0];
  *(v0 + 1872) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1880) = v103;
  *(v0 + 1888) = 0xD000000000000011;
  *(v0 + 1896) = 0x80000002669720F0;
  v104 = *MEMORY[0x277CBD5A8];
  *(v0 + 1904) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1912) = v105;
  *(v0 + 1920) = 0x6572617070657473;
  *(v0 + 1928) = 0xEA0000000000746ELL;
  v106 = *MEMORY[0x277CBD790];
  *(v0 + 1936) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1944) = v107;
  *(v0 + 1952) = 0x6874616670657473;
  *(v0 + 1960) = 0xEA00000000007265;
  v108 = *MEMORY[0x277CBD780];
  *(v0 + 1968) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1976) = v109;
  *(v0 + 1984) = 0x68746F6D70657473;
  *(v0 + 1992) = 0xEA00000000007265;
  v110 = *MEMORY[0x277CBD788];
  *(v0 + 2000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2008) = v111;
  *(v0 + 2016) = 0x6C69686370657473;
  *(v0 + 2024) = 0xE900000000000064;
  v112 = *MEMORY[0x277CBD770];
  *(v0 + 2032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2040) = v113;
  *(v0 + 2048) = 0x6E6F7370657473;
  *(v0 + 2056) = 0xE700000000000000;
  v114 = *MEMORY[0x277CBD7A0];
  *(v0 + 2064) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2072) = v115;
  strcpy((v0 + 2080), "stepdaughter");
  *(v0 + 2093) = 0;
  *(v0 + 2094) = -5120;
  v116 = *MEMORY[0x277CBD778];
  *(v0 + 2096) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2104) = v117;
  *(v0 + 2112) = 0x746F726270657473;
  *(v0 + 2120) = 0xEB00000000726568;
  v118 = *MEMORY[0x277CBD768];
  *(v0 + 2128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2136) = v119;
  *(v0 + 2144) = 0x7473697370657473;
  *(v0 + 2152) = 0xEA00000000007265;
  v120 = *MEMORY[0x277CBD798];
  *(v0 + 2160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2168) = v121;
  *(v0 + 2176) = 0x207265676E756F79;
  *(v0 + 2184) = 0xEF676E696C626973;
  v122 = *MEMORY[0x277CBD8A0];
  *(v0 + 2192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2200) = v123;
  strcpy((v0 + 2208), "elder sibling");
  *(v0 + 2222) = -4864;
  v124 = *MEMORY[0x277CBD478];
  *(v0 + 2224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2232) = v125;
  strcpy((v0 + 2240), "younger sister");
  *(v0 + 2255) = -18;
  v126 = *MEMORY[0x277CBD8B0];
  *(v0 + 2256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2264) = v127;
  *(v0 + 2272) = 0x747365676E756F79;
  *(v0 + 2280) = 0xEF72657473697320;
  v128 = *MEMORY[0x277CBD8C8];
  *(v0 + 2288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2296) = v129;
  strcpy((v0 + 2304), "elder sister");
  *(v0 + 2317) = 0;
  *(v0 + 2318) = -5120;
  v130 = *MEMORY[0x277CBD488];
  *(v0 + 2320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2328) = v131;
  strcpy((v0 + 2336), "eldest sister");
  *(v0 + 2350) = -4864;
  v132 = *MEMORY[0x277CBD4A0];
  *(v0 + 2352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2360) = v133;
  *(v0 + 2368) = 0x207265676E756F79;
  *(v0 + 2376) = 0xEF726568746F7262;
  v134 = *MEMORY[0x277CBD828];
  *(v0 + 2384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2392) = v135;
  *(v0 + 2400) = 0xD000000000000010;
  *(v0 + 2408) = 0x8000000266972110;
  v136 = *MEMORY[0x277CBD8C0];
  *(v0 + 2416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2424) = v137;
  strcpy((v0 + 2432), "elder brother");
  *(v0 + 2446) = -4864;
  v138 = *MEMORY[0x277CBD400];
  *(v0 + 2448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2456) = v139;
  strcpy((v0 + 2464), "eldest brother");
  *(v0 + 2479) = -18;
  v140 = *MEMORY[0x277CBD498];
  *(v0 + 2480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2488) = v141;
  *(v0 + 2496) = 0xD000000000000013;
  *(v0 + 2504) = 0x8000000266972130;
  v142 = *MEMORY[0x277CBD2B0];
  *(v0 + 2512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2520) = v143;
  *(v0 + 2528) = 0xD00000000000001BLL;
  *(v0 + 2536) = 0x8000000266972150;
  v144 = *MEMORY[0x277CBD2B8];
  *(v0 + 2544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2552) = v145;
  *(v0 + 2560) = 0xD000000000000019;
  *(v0 + 2568) = 0x8000000266972170;
  v146 = *MEMORY[0x277CBD2A8];
  *(v0 + 2576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2584) = v147;
  *(v0 + 2592) = 0xD000000000000013;
  *(v0 + 2600) = 0x8000000266972190;
  v148 = *MEMORY[0x277CBD270];
  *(v0 + 2608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2616) = v149;
  *(v0 + 2624) = 0xD00000000000001BLL;
  *(v0 + 2632) = 0x80000002669721B0;
  v150 = *MEMORY[0x277CBD280];
  *(v0 + 2640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2648) = v151;
  *(v0 + 2656) = 0xD000000000000019;
  *(v0 + 2664) = 0x80000002669721D0;
  v152 = *MEMORY[0x277CBD268];
  *(v0 + 2672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2680) = v153;
  *(v0 + 2688) = 0xD000000000000019;
  *(v0 + 2696) = 0x80000002669721F0;
  v154 = *MEMORY[0x277CBD258];
  *(v0 + 2704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2712) = v155;
  *(v0 + 2720) = 0xD000000000000022;
  *(v0 + 2728) = 0x8000000266972210;
  v156 = *MEMORY[0x277CBD278];
  *(v0 + 2736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2744) = v157;
  *(v0 + 2752) = 0xD000000000000020;
  *(v0 + 2760) = 0x8000000266972240;
  v158 = *MEMORY[0x277CBD260];
  *(v0 + 2768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2776) = v159;
  *(v0 + 2784) = 0xD000000000000013;
  *(v0 + 2792) = 0x8000000266972270;
  v160 = *MEMORY[0x277CBD298];
  *(v0 + 2800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2808) = v161;
  *(v0 + 2816) = 0xD00000000000001BLL;
  *(v0 + 2824) = 0x8000000266972290;
  v162 = *MEMORY[0x277CBD2A0];
  *(v0 + 2832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2840) = v163;
  *(v0 + 2848) = 0xD000000000000019;
  *(v0 + 2856) = 0x80000002669722B0;
  v164 = *MEMORY[0x277CBD290];
  *(v0 + 2864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2872) = v165;
  *(v0 + 2880) = 0xD00000000000001ALL;
  *(v0 + 2888) = 0x80000002669722D0;
  v166 = *MEMORY[0x277CBD288];
  *(v0 + 2896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2904) = v167;
  *(v0 + 2912) = 0xD000000000000015;
  *(v0 + 2920) = 0x80000002669722F0;
  v168 = *MEMORY[0x277CBD808];
  *(v0 + 2928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2936) = v169;
  *(v0 + 2944) = 0xD00000000000001DLL;
  *(v0 + 2952) = 0x8000000266972310;
  v170 = *MEMORY[0x277CBD818];
  *(v0 + 2960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2968) = v171;
  *(v0 + 2976) = 0xD00000000000001BLL;
  *(v0 + 2984) = 0x8000000266972330;
  v172 = *MEMORY[0x277CBD810];
  *(v0 + 2992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3000) = v173;
  *(v0 + 3008) = 0xD000000000000015;
  *(v0 + 3016) = 0x8000000266972350;
  v174 = *MEMORY[0x277CBD7E8];
  *(v0 + 3024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3032) = v175;
  *(v0 + 3040) = 0xD00000000000001DLL;
  *(v0 + 3048) = 0x8000000266972370;
  v176 = *MEMORY[0x277CBD800];
  *(v0 + 3056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3064) = v177;
  *(v0 + 3072) = 0xD00000000000001BLL;
  *(v0 + 3080) = 0x8000000266972390;
  v178 = *MEMORY[0x277CBD7F0];
  *(v0 + 3088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3096) = v179;
  *(v0 + 3104) = 0xD00000000000001DLL;
  *(v0 + 3112) = 0x80000002669723B0;
  v180 = *MEMORY[0x277CBD7F8];
  *(v0 + 3120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3128) = v181;
  *(v0 + 3136) = 0xD000000000000015;
  *(v0 + 3144) = 0x80000002669723D0;
  v182 = *MEMORY[0x277CBD7B8];
  *(v0 + 3152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3160) = v183;
  *(v0 + 3168) = 0xD00000000000001DLL;
  *(v0 + 3176) = 0x80000002669723F0;
  v184 = *MEMORY[0x277CBD7D8];
  *(v0 + 3184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3192) = v185;
  *(v0 + 3200) = 0xD00000000000001BLL;
  *(v0 + 3208) = 0x8000000266972410;
  v186 = *MEMORY[0x277CBD7C0];
  *(v0 + 3216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3224) = v187;
  *(v0 + 3232) = 0xD00000000000001DLL;
  *(v0 + 3240) = 0x8000000266972430;
  v188 = *MEMORY[0x277CBD7D0];
  *(v0 + 3248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3256) = v189;
  *(v0 + 3264) = 0xD000000000000025;
  *(v0 + 3272) = 0x8000000266972450;
  v190 = *MEMORY[0x277CBD7E0];
  *(v0 + 3280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3288) = v191;
  *(v0 + 3296) = 0xD000000000000023;
  *(v0 + 3304) = 0x8000000266972480;
  v192 = *MEMORY[0x277CBD7C8];
  *(v0 + 3312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3320) = v193;
  *(v0 + 3328) = 0x5F73746E65726170;
  *(v0 + 3336) = 0xEF676E696C626973;
  v194 = *MEMORY[0x277CBD690];
  *(v0 + 3344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3352) = v195;
  *(v0 + 3360) = 0xD000000000000017;
  *(v0 + 3368) = 0x80000002669724B0;
  v196 = *MEMORY[0x277CBD6C8];
  *(v0 + 3376) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3384) = v197;
  *(v0 + 3392) = 0xD000000000000015;
  *(v0 + 3400) = 0x80000002669724D0;
  v198 = *MEMORY[0x277CBD688];
  *(v0 + 3408) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3416) = v199;
  *(v0 + 3424) = 0xD00000000000001FLL;
  *(v0 + 3432) = 0x80000002669724F0;
  v200 = *MEMORY[0x277CBD6B8];
  *(v0 + 3440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3448) = v201;
  *(v0 + 3456) = 0xD000000000000027;
  *(v0 + 3464) = 0x8000000266972510;
  v202 = *MEMORY[0x277CBD6C0];
  *(v0 + 3472) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3480) = v203;
  *(v0 + 3488) = 0xD000000000000025;
  *(v0 + 3496) = 0x8000000266972540;
  v204 = *MEMORY[0x277CBD6B0];
  *(v0 + 3504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3512) = v205;
  *(v0 + 3520) = 0xD00000000000001FLL;
  *(v0 + 3528) = 0x8000000266972570;
  v206 = *MEMORY[0x277CBD6A0];
  *(v0 + 3536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3544) = v207;
  *(v0 + 3552) = 0xD000000000000027;
  *(v0 + 3560) = 0x8000000266972590;
  v208 = *MEMORY[0x277CBD6A8];
  *(v0 + 3568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3576) = v209;
  *(v0 + 3584) = 0xD000000000000025;
  *(v0 + 3592) = 0x80000002669725C0;
  v210 = *MEMORY[0x277CBD698];
  *(v0 + 3600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3608) = v211;
  *(v0 + 3616) = 0xD000000000000016;
  *(v0 + 3624) = 0x80000002669725F0;
  v212 = *MEMORY[0x277CBD830];
  *(v0 + 3632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3640) = v213;
  *(v0 + 3648) = 0xD000000000000014;
  *(v0 + 3656) = 0x8000000266972610;
  v214 = *MEMORY[0x277CBD408];
  *(v0 + 3664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3672) = v215;
  *(v0 + 3680) = 0xD00000000000001ELL;
  *(v0 + 3688) = 0x8000000266972630;
  v216 = *MEMORY[0x277CBD2F8];
  *(v0 + 3696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3704) = v217;
  *(v0 + 3712) = 0xD00000000000001FLL;
  *(v0 + 3720) = 0x8000000266972650;
  v218 = *MEMORY[0x277CBD2E0];
  *(v0 + 3728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3736) = v219;
  *(v0 + 3744) = 0xD00000000000001CLL;
  *(v0 + 3752) = 0x8000000266972670;
  v220 = *MEMORY[0x277CBD300];
  *(v0 + 3760) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3768) = v221;
  *(v0 + 3776) = 0xD00000000000001ELL;
  *(v0 + 3784) = 0x8000000266972690;
  v222 = *MEMORY[0x277CBD2F0];
  *(v0 + 3792) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3800) = v223;
  *(v0 + 3808) = 0xD000000000000026;
  *(v0 + 3816) = 0x80000002669726B0;
  v224 = *MEMORY[0x277CBD310];
  *(v0 + 3824) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3832) = v225;
  *(v0 + 3840) = 0xD000000000000024;
  *(v0 + 3848) = 0x80000002669726E0;
  v226 = *MEMORY[0x277CBD2D8];
  *(v0 + 3856) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3864) = v227;
  *(v0 + 3872) = 0xD000000000000024;
  *(v0 + 3880) = 0x8000000266972710;
  v228 = *MEMORY[0x277CBD308];
  *(v0 + 3888) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3896) = v229;
  *(v0 + 3904) = 0xD000000000000027;
  *(v0 + 3912) = 0x8000000266972740;
  v230 = *MEMORY[0x277CBD2E8];
  *(v0 + 3920) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3928) = v231;
  *(v0 + 3936) = 0xD000000000000021;
  *(v0 + 3944) = 0x8000000266972770;
  v232 = *MEMORY[0x277CBD728];
  *(v0 + 3952) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3960) = v233;
  *(v0 + 3968) = 0xD000000000000024;
  *(v0 + 3976) = 0x80000002669727A0;
  v234 = *MEMORY[0x277CBD710];
  *(v0 + 3984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3992) = v235;
  *(v0 + 4000) = 0xD000000000000010;
  *(v0 + 4008) = 0x80000002669727D0;
  v236 = *MEMORY[0x277CBD340];
  *(v0 + 4016) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4024) = v237;
  *(v0 + 4032) = 0xD000000000000010;
  *(v0 + 4040) = 0x80000002669727F0;
  v238 = *MEMORY[0x277CBD338];
  *(v0 + 4048) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4056) = v239;
  *(v0 + 4064) = 0xD000000000000010;
  *(v0 + 4072) = 0x8000000266972810;
  v240 = *MEMORY[0x277CBD330];
  *(v0 + 4080) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4088) = v241;
  *(v0 + 4096) = 0xD000000000000011;
  *(v0 + 4104) = 0x8000000266972830;
  v242 = *MEMORY[0x277CBD348];
  *(v0 + 4112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4120) = v243;
  *(v0 + 4128) = 0xD000000000000010;
  *(v0 + 4136) = 0x8000000266972850;
  v244 = *MEMORY[0x277CBD350];
  *(v0 + 4144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4152) = v245;
  *(v0 + 4160) = 0xD000000000000011;
  *(v0 + 4168) = 0x8000000266972870;
  v246 = *MEMORY[0x277CBD328];
  *(v0 + 4176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4184) = v247;
  strcpy((v0 + 4192), "parent-in-law");
  *(v0 + 4206) = -4864;
  v248 = *MEMORY[0x277CBD680];
  *(v0 + 4208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4216) = v249;
  *(v0 + 4224) = 0xD00000000000001ALL;
  *(v0 + 4232) = 0x8000000266972890;
  v250 = *MEMORY[0x277CBD610];
  *(v0 + 4240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4248) = v251;
  *(v0 + 4256) = 0xD00000000000001DLL;
  *(v0 + 4264) = 0x80000002669728B0;
  v252 = *MEMORY[0x277CBD600];
  *(v0 + 4272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4280) = v253;
  *(v0 + 4288) = 0xD00000000000001ALL;
  *(v0 + 4296) = 0x80000002669728D0;
  v254 = *MEMORY[0x277CBD4C8];
  *(v0 + 4304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4312) = v255;
  *(v0 + 4320) = 0xD00000000000001DLL;
  *(v0 + 4328) = 0x80000002669728F0;
  v256 = *MEMORY[0x277CBD4B8];
  *(v0 + 4336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4344) = v257;
  strcpy((v0 + 4352), "sibling-in-law");
  *(v0 + 4367) = -18;
  v258 = *MEMORY[0x277CBD6E0];
  *(v0 + 4368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4376) = v259;
  *(v0 + 4384) = 0xD000000000000016;
  *(v0 + 4392) = 0x8000000266972910;
  v260 = *MEMORY[0x277CBD8A8];
  *(v0 + 4400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4408) = v261;
  *(v0 + 4416) = 0xD000000000000014;
  *(v0 + 4424) = 0x8000000266972930;
  v262 = *MEMORY[0x277CBD480];
  *(v0 + 4432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4440) = v263;
  *(v0 + 4448) = 0xD000000000000015;
  *(v0 + 4456) = 0x8000000266972950;
  v264 = *MEMORY[0x277CBD8B8];
  *(v0 + 4464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4472) = v265;
  *(v0 + 4480) = 0xD000000000000013;
  *(v0 + 4488) = 0x8000000266972970;
  v266 = *MEMORY[0x277CBD490];
  *(v0 + 4496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4504) = v267;
  *(v0 + 4512) = 0xD00000000000001CLL;
  *(v0 + 4520) = 0x8000000266972990;
  v268 = *MEMORY[0x277CBD720];
  *(v0 + 4528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4536) = v269;
  *(v0 + 4544) = 0xD00000000000001ALL;
  *(v0 + 4552) = 0x80000002669729B0;
  v270 = *MEMORY[0x277CBD730];
  *(v0 + 4560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4568) = v271;
  *(v0 + 4576) = 0xD00000000000001DLL;
  *(v0 + 4584) = 0x80000002669729D0;
  v272 = *MEMORY[0x277CBD718];
  *(v0 + 4592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4600) = v273;
  *(v0 + 4608) = 0xD00000000000001BLL;
  *(v0 + 4616) = 0x80000002669729F0;
  v274 = *MEMORY[0x277CBD700];
  *(v0 + 4624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4632) = v275;
  *(v0 + 4640) = 0xD000000000000023;
  *(v0 + 4648) = 0x8000000266972A10;
  v276 = *MEMORY[0x277CBD738];
  *(v0 + 4656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4664) = v277;
  *(v0 + 4672) = 0xD000000000000020;
  *(v0 + 4680) = 0x8000000266972A40;
  v278 = *MEMORY[0x277CBD708];
  *(v0 + 4688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4696) = v279;
  *(v0 + 4704) = 0x6E6973756F63;
  *(v0 + 4712) = 0xE600000000000000;
  v280 = *MEMORY[0x277CBD360];
  *(v0 + 4720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4728) = v281;
  *(v0 + 4736) = 0x756F635F656C616DLL;
  *(v0 + 4744) = 0xEB000000006E6973;
  v282 = *MEMORY[0x277CBD5D0];
  *(v0 + 4752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4760) = v283;
  strcpy((v0 + 4768), "female_cousin");
  *(v0 + 4782) = -4864;
  v284 = *MEMORY[0x277CBD4D0];
  *(v0 + 4784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4792) = v285;
  *(v0 + 4800) = 0xD00000000000001DLL;
  *(v0 + 4808) = 0x8000000266972A70;
  v286 = *MEMORY[0x277CBD3C8];
  *(v0 + 4816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4824) = v287;
  *(v0 + 4832) = 0xD00000000000001BLL;
  *(v0 + 4840) = 0x8000000266972A90;
  v288 = *MEMORY[0x277CBD3D8];
  *(v0 + 4848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4856) = v289;
  *(v0 + 4864) = 0xD000000000000023;
  *(v0 + 4872) = 0x8000000266972AB0;
  v290 = *MEMORY[0x277CBD898];
  *(v0 + 4880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4888) = v291;
  *(v0 + 4896) = 0xD000000000000021;
  *(v0 + 4904) = 0x8000000266972AE0;
  v292 = *MEMORY[0x277CBD470];
  *(v0 + 4912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4920) = v293;
  *(v0 + 4928) = 0xD000000000000020;
  *(v0 + 4936) = 0x8000000266972B10;
  v294 = *MEMORY[0x277CBD3D0];
  *(v0 + 4944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4952) = v295;
  *(v0 + 4960) = 0xD000000000000028;
  *(v0 + 4968) = 0x8000000266972B40;
  v296 = *MEMORY[0x277CBD890];
  *(v0 + 4976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4984) = v297;
  *(v0 + 4992) = 0xD000000000000026;
  *(v0 + 5000) = 0x8000000266972B70;
  v298 = *MEMORY[0x277CBD468];
  *(v0 + 5008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5016) = v299;
  *(v0 + 5024) = 0xD00000000000001FLL;
  *(v0 + 5032) = 0x8000000266972BA0;
  v300 = *MEMORY[0x277CBD3B0];
  *(v0 + 5040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5048) = v301;
  *(v0 + 5056) = 0xD000000000000027;
  *(v0 + 5064) = 0x8000000266972BC0;
  v302 = *MEMORY[0x277CBD880];
  *(v0 + 5072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5080) = v303;
  *(v0 + 5088) = 0xD000000000000025;
  *(v0 + 5096) = 0x8000000266972BF0;
  v304 = *MEMORY[0x277CBD458];
  *(v0 + 5104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5112) = v305;
  *(v0 + 5120) = 0xD00000000000001ALL;
  *(v0 + 5128) = 0x8000000266972C20;
  v306 = *MEMORY[0x277CBD3B8];
  *(v0 + 5136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5144) = v307;
  *(v0 + 5152) = 0xD000000000000022;
  *(v0 + 5160) = 0x8000000266972C40;
  v308 = *MEMORY[0x277CBD888];
  *(v0 + 5168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5176) = v309;
  *(v0 + 5184) = 0xD000000000000020;
  *(v0 + 5192) = 0x8000000266972C70;
  v310 = *MEMORY[0x277CBD460];
  *(v0 + 5200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5208) = v311;
  *(v0 + 5216) = 0xD000000000000020;
  *(v0 + 5224) = 0x8000000266972CA0;
  v312 = *MEMORY[0x277CBD3A0];
  *(v0 + 5232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5240) = v313;
  *(v0 + 5248) = 0xD000000000000028;
  *(v0 + 5256) = 0x8000000266972CD0;
  v314 = *MEMORY[0x277CBD860];
  *(v0 + 5264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5272) = v315;
  *(v0 + 5280) = 0xD000000000000026;
  *(v0 + 5288) = 0x8000000266972D00;
  v316 = *MEMORY[0x277CBD438];
  *(v0 + 5296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5304) = v317;
  *(v0 + 5312) = 0xD00000000000001BLL;
  *(v0 + 5320) = 0x8000000266972D30;
  v318 = *MEMORY[0x277CBD3A8];
  *(v0 + 5328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5336) = v319;
  *(v0 + 5344) = 0xD000000000000023;
  *(v0 + 5352) = 0x8000000266972D50;
  v320 = *MEMORY[0x277CBD868];
  *(v0 + 5360) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5368) = v321;
  *(v0 + 5376) = 0xD000000000000021;
  *(v0 + 5384) = 0x8000000266972D80;
  v322 = *MEMORY[0x277CBD440];
  *(v0 + 5392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5400) = v323;
  *(v0 + 5408) = 0xD00000000000001FLL;
  *(v0 + 5416) = 0x8000000266972DB0;
  v324 = *MEMORY[0x277CBD378];
  *(v0 + 5424) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5432) = v325;
  *(v0 + 5440) = 0xD000000000000027;
  *(v0 + 5448) = 0x8000000266972DD0;
  v326 = *MEMORY[0x277CBD850];
  *(v0 + 5456) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5464) = v327;
  *(v0 + 5472) = 0xD000000000000025;
  *(v0 + 5480) = 0x8000000266972E00;
  v328 = *MEMORY[0x277CBD428];
  *(v0 + 5488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5496) = v329;
  *(v0 + 5504) = 0xD00000000000001ALL;
  *(v0 + 5512) = 0x8000000266972E30;
  v330 = *MEMORY[0x277CBD380];
  *(v0 + 5520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5528) = v331;
  *(v0 + 5536) = 0xD000000000000022;
  *(v0 + 5544) = 0x8000000266972E50;
  v332 = *MEMORY[0x277CBD858];
  *(v0 + 5552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5560) = v333;
  *(v0 + 5568) = 0xD000000000000020;
  *(v0 + 5576) = 0x8000000266972E80;
  v334 = *MEMORY[0x277CBD430];
  *(v0 + 5584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5592) = v335;
  *(v0 + 5600) = 0xD000000000000020;
  *(v0 + 5608) = 0x8000000266972EB0;
  v336 = *MEMORY[0x277CBD368];
  *(v0 + 5616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5624) = v337;
  *(v0 + 5632) = 0xD000000000000028;
  *(v0 + 5640) = 0x8000000266972EE0;
  v338 = *MEMORY[0x277CBD840];
  *(v0 + 5648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5656) = v339;
  *(v0 + 5664) = 0xD000000000000026;
  *(v0 + 5672) = 0x8000000266972F10;
  v340 = *MEMORY[0x277CBD418];
  *(v0 + 5680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5688) = v341;
  *(v0 + 5696) = 0xD00000000000001BLL;
  *(v0 + 5704) = 0x8000000266972F40;
  v342 = *MEMORY[0x277CBD370];
  *(v0 + 5712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5720) = v343;
  *(v0 + 5728) = 0x1000000000000025;
  *(v0 + 5736) = 0x8000000266972F60;
  v344 = *MEMORY[0x277CBD848];
  *(v0 + 5744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5752) = v345;
  *(v0 + 5760) = 0xD000000000000021;
  *(v0 + 5768) = 0x8000000266972F90;
  v346 = *MEMORY[0x277CBD420];
  *(v0 + 5776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5784) = v347;
  *(v0 + 5792) = 0xD000000000000022;
  *(v0 + 5800) = 0x8000000266972FC0;
  v348 = *MEMORY[0x277CBD388];
  *(v0 + 5808) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5816) = v349;
  *(v0 + 5824) = 0xD000000000000025;
  *(v0 + 5832) = 0x8000000266972FF0;
  v350 = *MEMORY[0x277CBD390];
  *(v0 + 5840) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5848) = v351;
  *(v0 + 5856) = 0xD000000000000020;
  *(v0 + 5864) = 0x8000000266973020;
  v352 = *MEMORY[0x277CBD398];
  *(v0 + 5872) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5880) = v353;
  *(v0 + 5888) = 0xD00000000000003ALL;
  *(v0 + 5896) = 0x8000000266973050;
  v354 = *MEMORY[0x277CBD878];
  *(v0 + 5904) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5912) = v355;
  *(v0 + 5920) = 0xD000000000000038;
  *(v0 + 5928) = 0x8000000266973090;
  v356 = *MEMORY[0x277CBD450];
  *(v0 + 5936) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5944) = v357;
  *(v0 + 5952) = 0xD000000000000044;
  *(v0 + 5960) = 0x80000002669730D0;
  v358 = *MEMORY[0x277CBD870];
  *(v0 + 5968) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5976) = v359;
  *(v0 + 5984) = 0xD000000000000042;
  *(v0 + 5992) = 0x8000000266973120;
  v360 = *MEMORY[0x277CBD448];
  *(v0 + 6000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6008) = v361;
  strcpy((v0 + 6016), "male_partner");
  *(v0 + 6029) = 0;
  *(v0 + 6030) = -5120;
  v362 = *MEMORY[0x277CBD5E0];
  *(v0 + 6032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6040) = v363;
  strcpy((v0 + 6048), "female_partner");
  *(v0 + 6063) = -18;
  v364 = *MEMORY[0x277CBD4E0];
  *(v0 + 6064) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6072) = v365;
  *(v0 + 6080) = 0x6972665F656C616DLL;
  *(v0 + 6088) = 0xEB00000000646E65;
  v366 = *MEMORY[0x277CBD5D8];
  *(v0 + 6096) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6104) = v367;
  strcpy((v0 + 6112), "female_friend");
  *(v0 + 6126) = -4864;
  v368 = *MEMORY[0x277CBD4D8];
  *(v0 + 6128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6136) = v369;
  *(v0 + 6144) = 0xD000000000000020;
  *(v0 + 6152) = 0x8000000266973170;
  v370 = *MEMORY[0x277CBD578];
  *(v0 + 6160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6168) = v371;
  *(v0 + 6176) = 0xD000000000000021;
  *(v0 + 6184) = 0x80000002669731A0;
  v372 = *MEMORY[0x277CBD570];
  *(v0 + 6192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6200) = v373;
  *(v0 + 6208) = 0xD00000000000001CLL;
  *(v0 + 6216) = 0x80000002669731D0;
  v374 = *MEMORY[0x277CBD560];
  *(v0 + 6224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6232) = v375;
  *(v0 + 6240) = 0xD00000000000001DLL;
  *(v0 + 6248) = 0x80000002669731F0;
  v376 = *MEMORY[0x277CBD558];
  *(v0 + 6256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6264) = v377;
  *(v0 + 6272) = 0xD00000000000001ALL;
  *(v0 + 6280) = 0x8000000266973210;
  v378 = *MEMORY[0x277CBD548];
  *(v0 + 6288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6296) = v379;
  *(v0 + 6304) = 0xD00000000000001ALL;
  *(v0 + 6312) = 0x8000000266973230;
  v380 = *MEMORY[0x277CBD540];
  *(v0 + 6320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6328) = v381;
  *(v0 + 6336) = 0xD00000000000001ALL;
  *(v0 + 6344) = 0x8000000266973250;
  v382 = *MEMORY[0x277CBD530];
  *(v0 + 6352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6360) = v383;
  *(v0 + 6368) = 0xD00000000000001ALL;
  *(v0 + 6376) = 0x8000000266973270;
  v384 = *MEMORY[0x277CBD528];
  *(v0 + 6384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6392) = v385;
  strcpy((v0 + 6400), "siblings_child");
  *(v0 + 6415) = -18;
  v386 = *MEMORY[0x277CBD6E8];
  *(v0 + 6416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6424) = v387;
  *(v0 + 6432) = 0xD000000000000016;
  *(v0 + 6440) = 0x8000000266973290;
  v388 = *MEMORY[0x277CBD668];
  *(v0 + 6448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6456) = v389;
  *(v0 + 6464) = 0xD000000000000016;
  *(v0 + 6472) = 0x80000002669732B0;
  v390 = *MEMORY[0x277CBD650];
  *(v0 + 6480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6488) = v391;
  *(v0 + 6496) = 0xD000000000000031;
  *(v0 + 6504) = 0x80000002669732D0;
  v392 = *MEMORY[0x277CBD670];
  *(v0 + 6512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6520) = v393;
  *(v0 + 6528) = 0xD000000000000035;
  *(v0 + 6536) = 0x8000000266973310;
  v394 = *MEMORY[0x277CBD658];
  *(v0 + 6544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6552) = v395;
  *(v0 + 6560) = 0xD000000000000012;
  *(v0 + 6568) = 0x8000000266973350;
  v396 = *MEMORY[0x277CBD638];
  *(v0 + 6576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6584) = v397;
  *(v0 + 6592) = 0xD000000000000013;
  *(v0 + 6600) = 0x8000000266973370;
  v398 = *MEMORY[0x277CBD620];
  *(v0 + 6608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6616) = v399;
  *(v0 + 6624) = 0xD00000000000002CLL;
  *(v0 + 6632) = 0x8000000266973390;
  v400 = *MEMORY[0x277CBD628];
  *(v0 + 6640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6648) = v401;
  *(v0 + 6656) = 0xD000000000000028;
  *(v0 + 6664) = 0x80000002669733C0;
  v402 = *MEMORY[0x277CBD640];
  *(v0 + 6672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6680) = v403;
  *(v0 + 6688) = 0xD00000000000001BLL;
  *(v0 + 6696) = 0x80000002669733F0;
  v404 = *MEMORY[0x277CBD608];
  *(v0 + 6704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6712) = v405;
  *(v0 + 6720) = 0x100000000000001DLL;
  *(v0 + 6728) = 0x8000000266973410;
  v406 = *MEMORY[0x277CBD4C0];
  *(v0 + 6736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6744) = v407;
  *(v0 + 6752) = 0xD00000000000001FLL;
  *(v0 + 6760) = 0x8000000266973430;
  v408 = *MEMORY[0x277CBD3F8];
  *(v0 + 6768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6776) = v409;
  *(v0 + 6784) = 0xD000000000000015;
  *(v0 + 6792) = 0x8000000266973450;
  v410 = *MEMORY[0x277CBD758];
  *(v0 + 6800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6808) = v411;
  *(v0 + 6816) = 0xD000000000000018;
  *(v0 + 6824) = 0x8000000266973470;
  v412 = *MEMORY[0x277CBD3C0];
  *(v0 + 6832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6840) = v413;
  *(v0 + 6848) = 0x726F5F656365696ELL;
  *(v0 + 6856) = 0xEF6E6973756F635FLL;
  v414 = *MEMORY[0x277CBD660];
  *(v0 + 6864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6872) = v415;
  *(v0 + 6880) = 0xD000000000000010;
  *(v0 + 6888) = 0x8000000266973490;
  v416 = *MEMORY[0x277CBD630];
  *(v0 + 6896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6904) = v417;
  *(v0 + 6912) = 0xD00000000000001CLL;
  *(v0 + 6920) = 0x80000002669734B0;
  v418 = *MEMORY[0x277CBD510];
  *(v0 + 6928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6936) = v419;
  *(v0 + 6944) = 0xD000000000000027;
  *(v0 + 6952) = 0x80000002669734D0;
  v420 = *MEMORY[0x277CBD598];
  *(v0 + 6960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6968) = v421;
  *(v0 + 6976) = 0xD000000000000020;
  *(v0 + 6984) = 0x8000000266973500;
  v422 = *MEMORY[0x277CBD3F0];
  *(v0 + 6992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7000) = v423;
  *(v0 + 7008) = 0xD00000000000001CLL;
  *(v0 + 7016) = 0x8000000266973530;
  v424 = *MEMORY[0x277CBD750];
  *(v0 + 7024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7032) = v425;
  *(v0 + 7040) = 0xD000000000000016;
  *(v0 + 7048) = 0x8000000266973550;
  v426 = *MEMORY[0x277CBD838];
  *(v0 + 7056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7064) = v427;
  *(v0 + 7072) = 0xD000000000000017;
  *(v0 + 7080) = 0x8000000266973570;
  *(v0 + 7088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7096) = v428;
  *(v0 + 7104) = 0xD000000000000014;
  *(v0 + 7112) = 0x8000000266973590;
  *(v0 + 7120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7128) = v429;
  *(v0 + 7136) = 0xD000000000000014;
  *(v0 + 7144) = 0x80000002669735B0;
  *(v0 + 7152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7160) = v430;
  *(v0 + 7168) = 0xD000000000000014;
  *(v0 + 7176) = 0x80000002669735D0;
  *(v0 + 7184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7192) = v431;
  *(v0 + 7200) = 0xD000000000000018;
  *(v0 + 7208) = 0x80000002669735F0;
  *(v0 + 7216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7224) = v432;
  *(v0 + 7232) = 0xD000000000000015;
  *(v0 + 7240) = 0x8000000266973610;
  *(v0 + 7248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7256) = v433;
  *(v0 + 7264) = 0xD000000000000014;
  *(v0 + 7272) = 0x8000000266973630;
  v434 = *MEMORY[0x277CBD410];
  *(v0 + 7280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7288) = v435;
  *(v0 + 7296) = 0xD000000000000015;
  *(v0 + 7304) = 0x8000000266973650;
  *(v0 + 7312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7320) = v436;
  *(v0 + 7328) = 0xD000000000000012;
  *(v0 + 7336) = 0x8000000266973670;
  *(v0 + 7344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7352) = v437;
  *(v0 + 7360) = 0xD000000000000012;
  *(v0 + 7368) = 0x8000000266973690;
  *(v0 + 7376) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7384) = v438;
  *(v0 + 7392) = 0xD000000000000012;
  *(v0 + 7400) = 0x80000002669736B0;
  *(v0 + 7408) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7416) = v439;
  *(v0 + 7424) = 0xD000000000000016;
  *(v0 + 7432) = 0x80000002669736D0;
  *(v0 + 7440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7448) = v440;
  *(v0 + 7456) = 0xD000000000000013;
  *(v0 + 7464) = 0x80000002669736F0;
  *(v0 + 7472) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7480) = v441;
  *(v0 + 7488) = 0xD00000000000001FLL;
  *(v0 + 7496) = 0x8000000266973710;
  v442 = *MEMORY[0x277CBD4F8];
  *(v0 + 7504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7512) = v443;
  *(v0 + 7520) = 0xD000000000000020;
  *(v0 + 7528) = 0x8000000266973730;
  *(v0 + 7536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7544) = v444;
  *(v0 + 7552) = 0xD00000000000001DLL;
  *(v0 + 7560) = 0x8000000266973760;
  *(v0 + 7568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7576) = v445;
  *(v0 + 7584) = 0xD00000000000001DLL;
  *(v0 + 7592) = 0x8000000266973780;
  *(v0 + 7600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7608) = v446;
  *(v0 + 7616) = 0xD00000000000001DLL;
  *(v0 + 7624) = 0x80000002669737A0;
  *(v0 + 7632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7640) = v447;
  *(v0 + 7648) = 0xD000000000000021;
  *(v0 + 7656) = 0x80000002669737C0;
  *(v0 + 7664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7672) = v448;
  *(v0 + 7680) = 0xD00000000000001ELL;
  *(v0 + 7688) = 0x80000002669737F0;
  *(v0 + 7696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7704) = v449;
  *(v0 + 7712) = 0xD000000000000014;
  *(v0 + 7720) = 0x8000000266973810;
  *(v0 + 7728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7736) = v450;
  result = Dictionary.init(dictionaryLiteral:)();
  static Dictionary<>.NLSemanticValueToCNRelationLabel = result;
  return result;
}

uint64_t one-time initialization function for GenderedCNRelationLabelToNLSemanticValue()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266969B60;
  v1 = *MEMORY[0x277CBD6D8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = 0x676E696C626973;
  *(inited + 56) = 0xE700000000000000;
  v3 = *MEMORY[0x277CBD760];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v4;
  *(inited + 80) = 0x6573756F7073;
  *(inited + 88) = 0xE600000000000000;
  v5 = *MEMORY[0x277CBD248];
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v6;
  *(inited + 112) = 0x6E61747369737361;
  *(inited + 120) = 0xE900000000000074;
  v7 = *MEMORY[0x277CBD5E8];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v8;
  *(inited + 144) = 0x726567616E616DLL;
  *(inited + 152) = 0xE700000000000000;
  v9 = *MEMORY[0x277CBD358];
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v10;
  *(inited + 176) = 0x756761656C6C6F63;
  *(inited + 184) = 0xE900000000000065;
  v11 = *MEMORY[0x277CBD7A8];
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v12;
  *(inited + 208) = 0x72656863616574;
  *(inited + 216) = 0xE700000000000000;
  v13 = *MEMORY[0x277CBD5E0];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v14;
  *(inited + 240) = 0x72656E74726170;
  *(inited + 248) = 0xE700000000000000;
  v15 = *MEMORY[0x277CBD4E0];
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v16;
  *(inited + 272) = 0x72656E74726170;
  *(inited + 280) = 0xE700000000000000;
  v17 = *MEMORY[0x277CBD5D8];
  *(inited + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 296) = v18;
  *(inited + 304) = 0x646E65697266;
  *(inited + 312) = 0xE600000000000000;
  v19 = *MEMORY[0x277CBD4D8];
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v20;
  *(inited + 336) = 0x646E65697266;
  *(inited + 344) = 0xE600000000000000;
  v21 = *MEMORY[0x277CBD5D0];
  *(inited + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 360) = v22;
  *(inited + 368) = 0x6E6973756F63;
  *(inited + 376) = 0xE600000000000000;
  v23 = *MEMORY[0x277CBD4D0];
  *(inited + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 392) = v24;
  *(inited + 400) = 0x6E6973756F63;
  *(inited + 408) = 0xE600000000000000;
  result = Dictionary.init(dictionaryLiteral:)();
  static Dictionary<>.GenderedCNRelationLabelToNLSemanticValue = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return swift_once();
}

uint64_t ContactsNeedsValueStrategy.deinit()
{
  v0 = ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));
  return v0;
}

uint64_t ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = *(v2 + 112);
  v9 = type metadata accessor for NLContextUpdate();
  (*(*(v9 - 8) + 16))(v7, a2, v9);
  v10 = OUTLINED_FUNCTION_5_39();
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t ContactsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = type metadata accessor for Parse();
  v1[12] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[15] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[16] = v10;
  v12 = *(v11 + 64);
  v1[17] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for Signpost.OpenSignpost();
  v1[18] = v13;
  v14 = *(*(v13 - 8) + 64);
  v1[19] = OUTLINED_FUNCTION_10_0();
  v15 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  v38 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v36 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = static Signpost.contactsLog;
  *(v0 + 160) = static Signpost.contactsLog;
  v7;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = v1 + *(v2 + 20);
  *v8 = "ParseResponseValueNeedsValue";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  *(v0 + 168) = *(v5 + 240);
  *(v0 + 176) = type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.name.getter();
  v11 = v10;
  (*(v4 + 8))(v3, v36);

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  v13.value = GetContactSlots.init(rawValue:)(v12).value;
  *(v0 + 216) = v13;
  if (v13.value == SiriContactsIntents_GetContactSlots_unknownDefault)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriContacts);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v17 = 136315394;
      OUTLINED_FUNCTION_5_39();
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v37);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v37);
      _os_log_impl(&dword_26686A000, v15, v16, "#ContactsNeedsValueStrategyAsync<%s> parseValueResponse: encountered invalid parameter %s, throwing", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v21 = *(v0 + 152);
    v22 = *(v0 + 136);
    v23 = *(v0 + 112);
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    *v24 = v9;
    v24[1] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_2_47();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v21);

    OUTLINED_FUNCTION_3();

    return v25();
  }

  else
  {
    v27 = *(v0 + 112);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);

    Input.parse.getter();
    v32 = ParameterResolutionRecord.intent.getter();
    *(v0 + 184) = v32;
    v33 = *(v28 + 264);
    *(v0 + 192) = v33;
    v34 = swift_task_alloc();
    *(v0 + 200) = v34;
    *v34 = v0;
    v34[1] = ContactsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    v35 = *(v0 + 112);

    return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v29 + 192, v32, v33);
  }
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1[25];
  v3 = v1[23];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = *v0;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v10 + 208) = v9;

  (*(v5 + 8))(v4, v6);
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v48 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 208);
    if (swift_dynamicCastUnknownClass())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.siriContacts);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 168);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v47[0] = v9;
        *v8 = 136315138;
        OUTLINED_FUNCTION_5_39();
        v10 = _typeName(_:qualified:)();
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v47);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_26686A000, v5, v6, "#ContactsNeedsValueStrategyAsync<%s> parseValueResponse: Converted ContactIntent to SK intent.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v13 = *(v0 + 192);
      v14 = *(v0 + 216);
      v16 = *(v0 + 168);
      v15 = *(v0 + 176);
      v17 = *(v0 + 152);
      v18 = *(v0 + 160);
      v19 = *(v0 + 72);
      v20 = *(v0 + 56);
      v21 = ParameterResolutionRecord.intent.getter();
      *(v0 + 40) = &type metadata for GetContactSlots;
      *(v0 + 48) = &protocol witness table for GetContactSlots;
      *(v0 + 16) = v14;
      (*(v13 + 56))(v47, v0 + 16, v16, v13);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v22 = type metadata accessor for IntentPromptAnswer();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_2_47();
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriContacts);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 168);
    v27 = swift_slowAlloc();
    *&v47[0] = swift_slowAlloc();
    *v27 = 136315394;
    OUTLINED_FUNCTION_5_39();
    v28 = _typeName(_:qualified:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v47);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    OUTLINED_FUNCTION_5_39();
    v31 = _typeName(_:qualified:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v47);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_26686A000, v24, v25, "#ContactsNeedsValueStrategyAsync<%s> parseValueResponse: failed to convert parse to expected intent type %s, returning empty answeredValue and same intent", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v37 = *(v0 + 152);
  v36 = *(v0 + 160);
  v38 = *(v0 + 72);
  v39 = *(v0 + 56);
  memset(v47, 0, sizeof(v47));
  ParameterResolutionRecord.intent.getter();
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  type metadata accessor for IntentPromptAnswer();
  v40 = OUTLINED_FUNCTION_5_39();
  __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_47();
LABEL_14:
  os_signpost(_:dso:log:name:signpostID:)();
  v43 = *(v0 + 136);
  v44 = *(v0 + 112);
  outlined destroy of Signpost.OpenSignpost(*(v0 + 152));

  OUTLINED_FUNCTION_3();

  return v45();
}

uint64_t ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = type metadata accessor for NLContextUpdate();
  v1[5] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for TemplatingResult();
  v1[8] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v5 = (**(v0[3] + 96) + class metadata base offset for ContactsCommonCATs + 416);
  v6 = (*v5 + **v5);
  v1 = (*v5)[1];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  v3 = v0[10];

  return v6(v3);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = *(v2 + 88);
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v7 = ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  default argument 1 of ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)();
  v9 = type metadata accessor for AceOutput();
  v10 = MEMORY[0x277D5C1D8];
  v8[3] = v9;
  v8[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v8);
  ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v1, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v11();
}

{
  OUTLINED_FUNCTION_4();
  v1 = v0[10];
  v2 = v0[7];

  OUTLINED_FUNCTION_3();
  v4 = v0[12];

  return v3();
}

uint64_t ContactsNeedsValueStrategy.__deallocating_deinit()
{
  v0 = ContactsNeedsValueStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 312);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v10(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B370] + 4);
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  v11 = *(a3 + 272);
  v12 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v12;
  *(v4 + 48) = v11;
  v13 = type metadata accessor for ContactsNeedsValueStrategy();
  *v10 = v4;
  v10[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>;

  return MEMORY[0x2821B9BF8](a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B378] + 4);
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  v11 = *(a3 + 272);
  v12 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v12;
  *(v4 + 48) = v11;
  v13 = type metadata accessor for ContactsNeedsValueStrategy();
  *v10 = v4;
  v10[1] = protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>;

  return MEMORY[0x2821B9C00](a1, a2, v13, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 56) = v14;
  v15 = *(a5 + 272);
  v16 = *(a5 + 256);
  *(v6 + 16) = *(a5 + 240);
  *(v6 + 32) = v16;
  *(v6 + 48) = v15;
  v17 = type metadata accessor for ContactsNeedsValueStrategy();
  *v14 = v6;
  v14[1] = protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 56) = v16;
  v17 = *(a6 + 272);
  v18 = *(a6 + 256);
  *(v7 + 16) = *(a6 + 240);
  *(v7 + 32) = v18;
  *(v7 + 48) = v17;
  v19 = type metadata accessor for ContactsNeedsValueStrategy();
  *v16 = v7;
  v16[1] = protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v19, a7);
}

uint64_t GetContactNeedsValueStrategy.__deallocating_deinit()
{
  v0 = ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t type metadata accessor for GetContactNeedsValueStrategy()
{
  result = type metadata singleton initialization cache for GetContactNeedsValueStrategy;
  if (!type metadata singleton initialization cache for GetContactNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t USOParse.toSiriKitIntent(previousIntent:referenceResolver:)()
{
  OUTLINED_FUNCTION_4();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents28ModifyContactAttributeIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents28ModifyContactAttributeIntentCSgGMR);
  v1[49] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[50] = v5;
  v7 = *(v6 + 64);
  v1[51] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v1[52] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[53] = v9;
  v11 = *(v10 + 64);
  v1[54] = OUTLINED_FUNCTION_10_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  v1[55] = v12;
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v1[56] = OUTLINED_FUNCTION_10_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[60] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[61] = v19;
  v21 = *(v20 + 64);
  v1[62] = OUTLINED_FUNCTION_10_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology36UsoTask_checkExistence_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology36UsoTask_checkExistence_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[63] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[64] = v23;
  v25 = *(v24 + 64);
  v1[65] = OUTLINED_FUNCTION_10_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology26UsoTask_read_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology26UsoTask_read_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[66] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v1[67] = v27;
  v29 = *(v28 + 64);
  v1[68] = OUTLINED_FUNCTION_10_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_summarise_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_summarise_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[69] = v30;
  OUTLINED_FUNCTION_1_1(v30);
  v1[70] = v31;
  v33 = *(v32 + 64);
  v1[71] = OUTLINED_FUNCTION_10_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_noVerb_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_noVerb_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[72] = v34;
  OUTLINED_FUNCTION_1_1(v34);
  v1[73] = v35;
  v37 = *(v36 + 64);
  v1[74] = OUTLINED_FUNCTION_10_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v38);
  v40 = *(v39 + 64);
  v1[75] = OUTLINED_FUNCTION_10_0();
  v41 = type metadata accessor for Signpost.OpenSignpost();
  v1[76] = v41;
  OUTLINED_FUNCTION_18_0(v41);
  v43 = *(v42 + 64);
  v1[77] = OUTLINED_FUNCTION_10_0();
  v44 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

{
  v174 = v0;
  v0[5] = MEMORY[0x277D837D0];
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v0[2] = 5198677;
  v0[6] = v1;
  v0[3] = 0xE300000000000000;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v169 = v0[48];
  v5 = static Signpost.contactsLog;
  v0[78] = static Signpost.contactsLog;
  v6 = v5;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_266966D90;
  outlined init with copy of ContactServiceProtocol((v0 + 2), v7 + 32);
  v170 = v0;
  v8 = v0 + 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v9 = v2 + *(v3 + 20);
  *v9 = "ToSiriKitIntent";
  *(v9 + 8) = 15;
  v10 = v170;
  v11 = v8;
  *(v9 + 16) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  USOParse.preferredUserDialogAct.getter(v4);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v12);
  v14 = v170[75];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v170[75], &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_13:
    *(v8 + 12) = 0u;
    *(v8 + 13) = 0u;
    goto LABEL_14;
  }

  v15 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52(v12);
  (*(v16 + 8))(v14, v12);
  if (!v15)
  {
    goto LABEL_13;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v170[29])
  {
LABEL_14:
    outlined destroy of Result<TemplatingResult, Error>((v8 + 24), &_sypSgMd, &_sypSgMR);
    goto LABEL_15;
  }

  v17 = v8 + 32;
  outlined init with take of Any(v8 + 12, v8 + 10);
  outlined init with copy of Any((v8 + 20), (v8 + 28));
  type metadata accessor for UsoTask_create_common_Person();
  OUTLINED_FUNCTION_17_16();
  if (swift_dynamicCast() & 1) != 0 || (v17 = v8 + 33, type metadata accessor for UsoTask_delete_common_Person(), OUTLINED_FUNCTION_17_16(), (swift_dynamicCast()) || (v17 = v8 + 34, type metadata accessor for UsoTask_update_common_Communication(), OUTLINED_FUNCTION_17_16(), swift_dynamicCast()))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v8 + 20);
    v18 = *v17;
LABEL_11:

LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(v8 + 28);
    goto LABEL_15;
  }

  type metadata accessor for UsoTask_noVerb_common_Person();
  if (OUTLINED_FUNCTION_10_32())
  {
    v32 = v170[37];
    v170[79] = v32;
    if ((UsoTask_noVerb_common_Person.isRequestForMultipleContacts.getter() & 1) == 0)
    {
      v33 = v170[46];
      if (UsoTask_noVerb_common_Person.isGetAttributeIntent.getter())
      {
        if (v33)
        {
          OUTLINED_FUNCTION_23_16();
          type metadata accessor for GetContactAttributeIntent();
          OUTLINED_FUNCTION_73();
          swift_dynamicCastClass();
        }

        type metadata accessor for GetContactAttributeIntent();
        v59 = swift_task_alloc();
        v170[80] = v59;
        *v59 = v170;
        OUTLINED_FUNCTION_4_34(v59);
        OUTLINED_FUNCTION_20_14();

        return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v60, v61, v62);
      }

      if (v33)
      {
        OUTLINED_FUNCTION_23_16();
        type metadata accessor for GetContactIntent();
        OUTLINED_FUNCTION_73();
        v44 = swift_dynamicCastClass();
      }

      else
      {
        v44 = 0;
      }

      v73 = v170[74];
      v74 = v170[73];
      v75 = v170[72];
      OUTLINED_FUNCTION_36_11();
      *(swift_allocObject() + 16) = v44;
      v76 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
      goto LABEL_51;
    }

LABEL_36:
    __swift_destroy_boxed_opaque_existential_0Tm(v8 + 20);
    goto LABEL_11;
  }

  v34 = type metadata accessor for UsoTask_summarise_common_Person();
  v35 = OUTLINED_FUNCTION_10_32();
  if (v35)
  {
    v38 = v8[36];
    if ((UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter(v35, v36, v37) & 1) == 0)
    {
      if (v170[46])
      {
        type metadata accessor for GetContactIntent();
        OUTLINED_FUNCTION_73();
        v39 = swift_dynamicCastClass();
      }

      else
      {
        v39 = 0;
      }

      v64 = v170[71];
      v65 = v170[70];
      v66 = v170[69];
      outlined init with copy of ContactServiceProtocol(v170[47], (v11 + 15));
      OUTLINED_FUNCTION_38_7();
      v67 = swift_allocObject();
      *(v67 + 16) = v39;
      outlined init with take of DeviceState((v11 + 15), v67 + 24);
      v68 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
      OUTLINED_FUNCTION_21_18();
      v69 = Transformer.transform.getter();
      (*(v65 + 8))(v64, v66);
      OUTLINED_FUNCTION_7_27();
      v69(v70, v71, v72);
      if (v34)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v11 + 20);

LABEL_53:
        __swift_destroy_boxed_opaque_existential_0Tm(v11 + 28);
        goto LABEL_15;
      }

LABEL_52:

      __swift_destroy_boxed_opaque_existential_0Tm(v11 + 20);

      goto LABEL_53;
    }

    goto LABEL_36;
  }

  type metadata accessor for UsoTask_read_common_Person();
  if (OUTLINED_FUNCTION_10_32())
  {
    v32 = v170[39];
    v170[82] = v32;
    common = UsoTask_read_common_Person.isRequestForMultipleContacts.getter();
    if (common)
    {
      goto LABEL_36;
    }

    v43 = v170[46];
    if (UsoTask_read_common_Person.isGetAttributeIntent.getter(common, v41, v42))
    {
      if (v43)
      {
        OUTLINED_FUNCTION_23_16();
        type metadata accessor for GetContactAttributeIntent();
        OUTLINED_FUNCTION_73();
        swift_dynamicCastClass();
      }

      type metadata accessor for GetContactAttributeIntent();
      v89 = swift_task_alloc();
      v170[83] = v89;
      *v89 = v170;
      OUTLINED_FUNCTION_4_34(v89);
      OUTLINED_FUNCTION_20_14();

      return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v90, v91, v92);
    }

    if (v43)
    {
      OUTLINED_FUNCTION_23_16();
      type metadata accessor for GetContactIntent();
      OUTLINED_FUNCTION_73();
      v78 = swift_dynamicCastClass();
    }

    else
    {
      v78 = 0;
    }

    v73 = v170[68];
    v74 = v170[67];
    v75 = v170[66];
    OUTLINED_FUNCTION_36_11();
    *(swift_allocObject() + 16) = v78;
    v94 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
LABEL_51:
    Transformer.init(transform:)();
    v77 = Transformer.transform.getter();
    (*(v74 + 8))(v73, v75);
    v172 = v32;
    v77(&v173, &v172);
    goto LABEL_52;
  }

  type metadata accessor for UsoTask_checkExistence_common_Person();
  v45 = OUTLINED_FUNCTION_10_32();
  if (!v45)
  {
    type metadata accessor for UsoTask_request_common_Person();
    OUTLINED_FUNCTION_17_16();
    if (swift_dynamicCast())
    {
      v51 = v170[46];
      v170[88] = v170[41];
      if (v51)
      {
        type metadata accessor for GetContactAttributeIntent();
        swift_dynamicCastClass();
      }

      type metadata accessor for GetContactAttributeIntent();
      v52 = swift_task_alloc();
      v170[89] = v52;
      *v52 = v170;
      v52[1] = USOParse.toSiriKitIntent(previousIntent:referenceResolver:);
      v53 = v170[47];
      OUTLINED_FUNCTION_20_14();

      return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v54, v55, v56);
    }

    updated = type metadata accessor for UsoTask_update_common_Person();
    if (!OUTLINED_FUNCTION_10_32())
    {
LABEL_94:
      __swift_destroy_boxed_opaque_existential_0Tm(v8 + 20);
      goto LABEL_12;
    }

    v81 = v8[40];

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v8[41])
    {
      v82 = v8[41];
      v83 = dispatch thunk of UsoEntity_common_Person.phoneticStructuredName.getter();

      if (v83)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v84 = type metadata accessor for Logger();
        v85 = OUTLINED_FUNCTION_52_0(v84, static Logger.siriContacts);
        v86 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v86))
        {
          *OUTLINED_FUNCTION_30() = 0;
          OUTLINED_FUNCTION_33_11(&dword_26686A000, v87, updated, "Learning pronunciation is unsupported");
          OUTLINED_FUNCTION_6();
        }

        else
        {
        }

        goto LABEL_94;
      }
    }

    if (UsoTask_update_common_Person.isChangeContactPoster.getter())
    {

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v95 = type metadata accessor for Logger();
      v96 = OUTLINED_FUNCTION_52_0(v95, static Logger.siriContacts);
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = OUTLINED_FUNCTION_30();
        *v98 = 0;
        _os_log_impl(&dword_26686A000, v96, v97, "Encountered contact poster update request, treating as GetContact", v98, 2u);
        OUTLINED_FUNCTION_6();
      }

      v99 = v170[46];

      if (v99)
      {
        v100 = v170[46];
        type metadata accessor for GetContactIntent();
        OUTLINED_FUNCTION_73();
        v101 = swift_dynamicCastClass();
      }

      else
      {
        v101 = 0;
      }

      v129 = v170[61];
      v128 = v170[62];
      v130 = v170[60];
      outlined init with copy of ContactServiceProtocol(v170[47], (v8 + 10));
      OUTLINED_FUNCTION_38_7();
      v131 = swift_allocObject();
      *(v131 + 16) = v101;
      outlined init with take of DeviceState(v8 + 5, v131 + 24);
      v132 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
      OUTLINED_FUNCTION_21_18();
      v133 = Transformer.transform.getter();
      (*(v129 + 8))(v128, v130);
      OUTLINED_FUNCTION_7_27();
      v133(v134, v135, v136);
      if (!updated)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v8[42] && (v108 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , v108))
    {

      if (dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
      {
        v110 = v170[58];
        v109 = v170[59];
        v111 = v170[55];
        v112 = v170[56];
        v114 = v170[52];
        v113 = v170[53];
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
        (*(v113 + 104))(v110, *MEMORY[0x277D5E828], v114);
        OUTLINED_FUNCTION_50();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
        v118 = *(v111 + 48);
        outlined init with copy of Result<RRResult, Error>(v109, v112, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined init with copy of Result<RRResult, Error>(v110, v112 + v118, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        OUTLINED_FUNCTION_57(v112, 1, v114);
        if (v119)
        {
          v120 = v170[59];
          v121 = v170[52];
          outlined destroy of Result<TemplatingResult, Error>(v170[58], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of Result<TemplatingResult, Error>(v120, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          OUTLINED_FUNCTION_57(v112 + v118, 1, v121);
          if (!v119)
          {
            goto LABEL_108;
          }

          outlined destroy of Result<TemplatingResult, Error>(v170[56], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        }

        else
        {
          v137 = v170[52];
          outlined init with copy of Result<RRResult, Error>(v170[56], v170[57], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v138 = __swift_getEnumTagSinglePayload(v112 + v118, 1, v137);
          v166 = v170[58];
          v168 = v170[59];
          v139 = v170[57];
          if (v138 == 1)
          {
            v141 = v170[52];
            v140 = v170[53];
            updated = &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd;
            outlined destroy of Result<TemplatingResult, Error>(v166, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
            outlined destroy of Result<TemplatingResult, Error>(v168, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
            (*(v140 + 8))(v139, v141);
LABEL_108:
            outlined destroy of Result<TemplatingResult, Error>(v170[56], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_109:
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v142 = type metadata accessor for Logger();
            v125 = OUTLINED_FUNCTION_52_0(v142, static Logger.siriContacts);
            v143 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_13_16(v143))
            {
              *OUTLINED_FUNCTION_30() = 0;
              OUTLINED_FUNCTION_33_11(&dword_26686A000, v144, updated, "Modifying other contacts' relationships is unsupported");
              OUTLINED_FUNCTION_6();

              goto LABEL_113;
            }

            goto LABEL_116;
          }

          v164 = v170[56];
          v146 = v170[53];
          v145 = v170[54];
          v147 = v170[52];
          (*(v146 + 32))(v145, v112 + v118, v147);
          OUTLINED_FUNCTION_11_24();
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(v148, v149);
          v150 = dispatch thunk of static Equatable.== infix(_:_:)();
          v151 = *(v146 + 8);
          v151(v145, v147);
          outlined destroy of Result<TemplatingResult, Error>(v166, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of Result<TemplatingResult, Error>(v168, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v151(v139, v147);
          outlined destroy of Result<TemplatingResult, Error>(v164, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          if ((v150 & 1) == 0)
          {
            goto LABEL_109;
          }
        }
      }
    }

    else
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (!v8[43])
      {
        goto LABEL_121;
      }

      v122 = v8[43];
      dispatch thunk of UsoEntity_common_Person.name.getter();
      if (v123)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v124 = type metadata accessor for Logger();
        v125 = OUTLINED_FUNCTION_52_0(v124, static Logger.siriContacts);
        v126 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v126))
        {
          v127 = OUTLINED_FUNCTION_30();
          *v127 = 0;
          _os_log_impl(&dword_26686A000, v125, updated, "Modifying other contacts' attributes is unsupported", v127, 2u);
          OUTLINED_FUNCTION_6();
LABEL_113:

LABEL_117:
          __swift_destroy_boxed_opaque_existential_0Tm(v8 + 20);
          __swift_destroy_boxed_opaque_existential_0Tm(v8 + 28);
LABEL_128:
          v10 = v170;
LABEL_15:
          v19 = v10;
          v20 = v10[78];
          v21 = v19[77];
          v22 = v19[75];
          v23 = v19[74];
          v24 = v19[71];
          v25 = v19[68];
          v26 = v19[65];
          v27 = v19[62];
          v28 = v19[59];
          v162 = v19[58];
          v163 = v19[57];
          v165 = v19[56];
          v167 = v19[54];
          v171 = v19[51];
          static os_signpost_type_t.end.getter();
          OUTLINED_FUNCTION_6_37();
          outlined destroy of Signpost.OpenSignpost(v21);

          v29 = v19[1];
          OUTLINED_FUNCTION_20_14();

          __asm { BRAA            X3, X16 }
        }

LABEL_116:

        goto LABEL_117;
      }
    }

LABEL_121:
    if (v170[46])
    {
      type metadata accessor for ModifyContactAttributeIntent();
      OUTLINED_FUNCTION_73();
      v152 = swift_dynamicCastClass();
    }

    else
    {
      v152 = 0;
    }

    v153 = v170[50];
    v154 = v170[51];
    v155 = v170[49];
    outlined init with copy of ContactServiceProtocol(v170[47], (v8 + 5));
    OUTLINED_FUNCTION_38_7();
    v156 = swift_allocObject();
    *(v156 + 16) = v152;
    outlined init with take of DeviceState((v8 + 5), v156 + 24);
    v157 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents28ModifyContactAttributeIntentCSgMd, &_s19SiriContactsIntents28ModifyContactAttributeIntentCSgMR);
    OUTLINED_FUNCTION_21_18();
    v158 = Transformer.transform.getter();
    (*(v153 + 8))(v154, v155);
    OUTLINED_FUNCTION_7_27();
    v158(v159, v160, v161);
    if (!updated)
    {
LABEL_126:

      __swift_destroy_boxed_opaque_existential_0Tm(v8 + 20);

      goto LABEL_127;
    }

LABEL_125:

    __swift_destroy_boxed_opaque_existential_0Tm(v8 + 20);

LABEL_127:
    __swift_destroy_boxed_opaque_existential_0Tm(v8 + 28);
    goto LABEL_128;
  }

  v32 = v170[40];
  v170[85] = v32;
  v48 = UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter(v45, v46, v47);
  if (v48)
  {
    goto LABEL_36;
  }

  v79 = v170[46];
  if ((UsoTask_checkExistence_common_Person.isGetAttributeIntent.getter(v48, v49, v50) & 1) == 0)
  {
    if (v79)
    {
      OUTLINED_FUNCTION_23_16();
      type metadata accessor for GetContactIntent();
      OUTLINED_FUNCTION_73();
      v88 = swift_dynamicCastClass();
    }

    else
    {
      v88 = 0;
    }

    v73 = v170[65];
    v75 = v170[63];
    v74 = v170[64];
    OUTLINED_FUNCTION_36_11();
    *(swift_allocObject() + 16) = v88;
    v107 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
    goto LABEL_51;
  }

  if (v79)
  {
    OUTLINED_FUNCTION_23_16();
    type metadata accessor for GetContactAttributeIntent();
    OUTLINED_FUNCTION_73();
    swift_dynamicCastClass();
  }

  type metadata accessor for GetContactAttributeIntent();
  v102 = swift_task_alloc();
  v170[86] = v102;
  *v102 = v170;
  OUTLINED_FUNCTION_4_34(v102);
  OUTLINED_FUNCTION_20_14();

  return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v103, v104, v105);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 640);
  *v2 = *v0;
  *(v1 + 648) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 664);
  *v2 = *v0;
  *(v1 + 672) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 688);
  *v2 = *v0;
  *(v1 + 696) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  v4 = *(v3 + 712);
  *v2 = *v0;
  *(v1 + 720) = v5;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t USOParse.getSiriKitIntentType()()
{
  v0 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v116 = OUTLINED_FUNCTION_1_0(v0);
  v117 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v116);
  v113 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v115 = &v112 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v114 = v14 - v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v118 = &v112 - v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v119 = &v112 - v19;
  v20 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  v120 = OUTLINED_FUNCTION_1_0(v20);
  v121 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v120);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v29);
  v31 = &v112 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v33 = OUTLINED_FUNCTION_18_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_4();
  v38 = v36 - v37;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v112 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v112 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v48);
  v50 = &v112 - v49;
  USOParse.preferredUserDialogAct.getter(&v112 - v49);
  v51 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_57(v50, 1, v51);
  if (v71)
  {
    outlined destroy of Result<TemplatingResult, Error>(v50, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_10:
    v123 = 0u;
    v124 = 0u;
    goto LABEL_11;
  }

  v52 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52(v51);
  (*(v53 + 8))(v50, v51);
  if (!v52)
  {
    goto LABEL_10;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v124 + 1))
  {
LABEL_11:
    outlined destroy of Result<TemplatingResult, Error>(&v123, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  outlined init with take of Any(&v123, v125);
  outlined init with copy of Any(v125, &v123);
  type metadata accessor for UsoTask_create_common_Person();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_delete_common_Person();
  if (OUTLINED_FUNCTION_2_48())
  {
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_noVerb_common_Person();
  if (OUTLINED_FUNCTION_2_48())
  {

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v122 && (v56 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter(), , v56) || (OUTLINED_FUNCTION_22_14(), dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter(), v122) && (v57 = dispatch thunk of UsoEntity_common_Person.structuredName.getter(), , v57))
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v125);
LABEL_29:
      ContactAttributeIntent = type metadata accessor for GetContactAttributeIntent();
      __swift_destroy_boxed_opaque_existential_0Tm(&v123);
      return ContactAttributeIntent;
    }

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v122)
    {
      v60 = dispatch thunk of UsoEntity_common_Person.age.getter();

      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      if (v60)
      {
        goto LABEL_28;
      }

LABEL_56:
      ContactAttributeIntent = type metadata accessor for GetContactIntent();
      __swift_destroy_boxed_opaque_existential_0Tm(&v123);
      return ContactAttributeIntent;
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0Tm(v125);
    goto LABEL_56;
  }

  type metadata accessor for UsoTask_summarise_common_Person();
  if (OUTLINED_FUNCTION_2_48())
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

    if (v122 && (v58 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v58))
    {
      dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();

      v59 = v120;
    }

    else
    {
      v59 = v120;
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v120);
    }

    (*(v121 + 104))(v42, *MEMORY[0x277D5EA28], v59);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);
    v64 = *(v26 + 48);
    outlined init with copy of Result<RRResult, Error>(v44, v31, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined init with copy of Result<RRResult, Error>(v42, &v31[v64], &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_57(v31, 1, v59);
    if (v71)
    {

      OUTLINED_FUNCTION_43_8(v42);
      OUTLINED_FUNCTION_43_8(v44);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      OUTLINED_FUNCTION_57(&v31[v64], 1, v59);
      if (v71)
      {
        outlined destroy of Result<TemplatingResult, Error>(v31, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        goto LABEL_9;
      }
    }

    else
    {
      outlined init with copy of Result<RRResult, Error>(v31, v38, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_57(&v31[v64], 1, v59);
      if (!v71)
      {
        v79 = v121;
        (*(v121 + 32))(v25, &v31[v64], v59);
        lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, MEMORY[0x277D5EA60]);
        LODWORD(v120) = dispatch thunk of static Equatable.== infix(_:_:)();

        v80 = *(v79 + 8);
        v80(v25, v59);
        outlined destroy of Result<TemplatingResult, Error>(v42, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        outlined destroy of Result<TemplatingResult, Error>(v44, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v125);
        v80(v38, v59);
        outlined destroy of Result<TemplatingResult, Error>(v31, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        if (v120)
        {
          goto LABEL_9;
        }

        goto LABEL_56;
      }

      OUTLINED_FUNCTION_43_8(v42);
      OUTLINED_FUNCTION_43_8(v44);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      (*(v121 + 8))(v38, v59);
    }

    outlined destroy of Result<TemplatingResult, Error>(v31, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    goto LABEL_56;
  }

  type metadata accessor for UsoTask_request_common_Person();
  if (OUTLINED_FUNCTION_2_48())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v125);
LABEL_28:

    goto LABEL_29;
  }

  type metadata accessor for UsoTask_update_common_Person();
  if (OUTLINED_FUNCTION_2_48())
  {

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    v65 = v122;
    if (v122)
    {
      v66 = dispatch thunk of UsoEntity_common_Person.phoneticStructuredName.getter();

      if (v66)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v67 = type metadata accessor for Logger();
        v68 = OUTLINED_FUNCTION_52_0(v67, static Logger.siriContacts);
        v69 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v69))
        {
          v70 = OUTLINED_FUNCTION_30();
          *v70 = 0;
          _os_log_impl(&dword_26686A000, v68, v65, "Learning pronunciation is unsupported", v70, 2u);
          OUTLINED_FUNCTION_6();

LABEL_93:
          __swift_destroy_boxed_opaque_existential_0Tm(v125);
          goto LABEL_9;
        }

LABEL_92:

        goto LABEL_93;
      }
    }

    if (UsoTask_update_common_Person.isChangeContactPoster.getter())
    {

      goto LABEL_55;
    }

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (!v122 || (v84 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , !v84))
    {
      OUTLINED_FUNCTION_22_14();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (!v122)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v125);
LABEL_97:

        goto LABEL_98;
      }

      dispatch thunk of UsoEntity_common_Person.name.getter();
      if (!v94)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v125);
LABEL_98:
        ContactAttributeIntent = type metadata accessor for ModifyContactAttributeIntent();
        __swift_destroy_boxed_opaque_existential_0Tm(&v123);
        return ContactAttributeIntent;
      }

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v95 = type metadata accessor for Logger();
      v96 = OUTLINED_FUNCTION_52_0(v95, static Logger.siriContacts);
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = OUTLINED_FUNCTION_30();
        *v98 = 0;
        _os_log_impl(&dword_26686A000, v96, v97, "Modifying other contacts' attributes is unsupported", v98, 2u);
        OUTLINED_FUNCTION_6();

        goto LABEL_92;
      }

LABEL_91:

      goto LABEL_92;
    }

    v85 = dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter();
    if (!v85)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
LABEL_96:

      goto LABEL_97;
    }

    v86 = v119;
    v121 = v85;
    dispatch thunk of UsoEntity_common_Person.definedValue.getter();
    v87 = v118;
    v88 = v116;
    (*(v117 + 104))(v118, *MEMORY[0x277D5E828], v116);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
    v92 = *(v5 + 48);
    v93 = v115;
    outlined init with copy of Result<RRResult, Error>(v86, v115, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    outlined init with copy of Result<RRResult, Error>(v87, v93 + v92, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_57(v93, 1, v88);
    if (v71)
    {
      OUTLINED_FUNCTION_42_9(v118);
      OUTLINED_FUNCTION_42_9(v119);
      OUTLINED_FUNCTION_57(v93 + v92, 1, v88);
      if (v71)
      {
        outlined destroy of Result<TemplatingResult, Error>(v93, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_95:
        __swift_destroy_boxed_opaque_existential_0Tm(v125);

        goto LABEL_96;
      }
    }

    else
    {
      v100 = v114;
      outlined init with copy of Result<RRResult, Error>(v93, v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_57(v93 + v92, 1, v88);
      if (!v101)
      {
        v106 = v117;
        v107 = v113;
        (*(v117 + 32))(v113, v93 + v92, v88);
        OUTLINED_FUNCTION_11_24();
        lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(v108, v109);
        v110 = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(v106 + 8);
        v111(v107, v88);
        outlined destroy of Result<TemplatingResult, Error>(v118, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of Result<TemplatingResult, Error>(v119, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v111(v100, v88);
        outlined destroy of Result<TemplatingResult, Error>(v93, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v110)
        {
          goto LABEL_95;
        }

        goto LABEL_85;
      }

      OUTLINED_FUNCTION_42_9(v118);
      OUTLINED_FUNCTION_42_9(v119);
      (*(v117 + 8))(v100, v88);
    }

    outlined destroy of Result<TemplatingResult, Error>(v93, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_85:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v102 = type metadata accessor for Logger();
    v103 = OUTLINED_FUNCTION_52_0(v102, static Logger.siriContacts);
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v103, v104))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_33_11(&dword_26686A000, v105, v104, "Modifying other contacts' relationships is unsupported");
      OUTLINED_FUNCTION_6();

      goto LABEL_92;
    }

    goto LABEL_91;
  }

  type metadata accessor for UsoTask_checkExistence_common_Person();
  v72 = OUTLINED_FUNCTION_2_48();
  if (v72)
  {
    v75 = UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter(v72, v73, v74);
    if ((v75 & 1) == 0)
    {
      Attribute = UsoTask_checkExistence_common_Person.isGetAttributeIntent.getter(v75, v76, v77);
      goto LABEL_76;
    }
  }

  else
  {
    type metadata accessor for UsoTask_read_common_Person();
    if (!OUTLINED_FUNCTION_2_48())
    {
      goto LABEL_93;
    }

    common = UsoTask_read_common_Person.isRequestForMultipleContacts.getter();
    if ((common & 1) == 0)
    {
      Attribute = UsoTask_read_common_Person.isGetAttributeIntent.getter(common, v82, v83);
LABEL_76:
      v99 = Attribute;

      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      if (v99)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0Tm(v125);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(&v123);
  return 0;
}

uint64_t USOParse.preferredUserDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v66 = v8 - v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v69 = &v64 - v11;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v67 = v19 - v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  v75 = &v64 - v22;
  v23 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_4();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v65 = &v64 - v33;
  OUTLINED_FUNCTION_16();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v64 - v36;
  MEMORY[0x28223BE20](v35);
  v68 = &v64 - v38;
  v72 = v1;
  v39 = USOParse.userParse.getter();
  v40 = MEMORY[0x26D5E0460](v39);
  v41 = *(v5 + 8);
  v73 = v2;
  v70 = v41;
  v71 = v5 + 8;
  result = v41(v14, v2);
  v43 = 0;
  v44 = *(v40 + 16);
  for (i = (v26 + 8); ; result = (*i)(v37, v23))
  {
    if (v44 == v43)
    {

      v46 = 1;
      v47 = v75;
      goto LABEL_8;
    }

    if (v43 >= *(v40 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    (*(v26 + 16))(v37, v40 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v43, v23);
    if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
    {
      break;
    }

    ++v43;
  }

  v47 = v75;
  (*(v26 + 32))(v75, v37, v23);
  v46 = 0;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v47, v46, 1, v23);
  OUTLINED_FUNCTION_57(v47, 1, v23);
  if (v48)
  {
    outlined destroy of Result<TemplatingResult, Error>(v47, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v49 = USOParse.userParse.getter();
    MEMORY[0x26D5E0460](v49);
    v50 = OUTLINED_FUNCTION_40_7();
    result = v51(v50);
    v52 = 0;
    v53 = *(v44 + 16);
    while (1)
    {
      if (v53 == v52)
      {

        v56 = 1;
        v57 = v67;
        goto LABEL_17;
      }

      if (v52 >= *(v44 + 16))
      {
        goto LABEL_23;
      }

      (*(v26 + 16))(v31, v44 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v52, v23);
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        break;
      }

      ++v52;
      result = (*i)(v31, v23);
    }

    v57 = v67;
    (*(v26 + 32))(v67, v31, v23);
    v56 = 0;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v57, v56, 1, v23);
    OUTLINED_FUNCTION_57(v57, 1, v23);
    if (v48)
    {
      outlined destroy of Result<TemplatingResult, Error>(v57, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v58 = USOParse.userParse.getter();
      MEMORY[0x26D5E0460](v58);
      v59 = OUTLINED_FUNCTION_40_7();
      v60(v59);
      specialized Collection.first.getter(v44, v74);
    }

    v54 = *(v26 + 32);
    v55 = v65;
    v54(v65, v57, v23);
  }

  else
  {
    v54 = *(v26 + 32);
    v55 = v68;
    v54(v68, v47, v23);
  }

  v54(v74, v55, v23);
  OUTLINED_FUNCTION_50();
  return __swift_storeEnumTagSinglePayload(v61, v62, v63, v23);
}

uint64_t USOParse.isOrdinalDisambiguation.getter(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  USOParse.preferredUserDialogAct.getter(&v13 - v6);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_57(v7, 1, v8);
  if (v9)
  {
    outlined destroy of Result<TemplatingResult, Error>(v7, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  v10 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52(v8);
  (*(v11 + 8))(v7, v8);
  if (!v10)
  {
    goto LABEL_8;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v15 + 1))
  {
LABEL_9:
    outlined destroy of Result<TemplatingResult, Error>(&v14, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  a1(0);
  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  OUTLINED_FUNCTION_38_7();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void partial apply for closure #1 in static Transformer<>.transformer(_:referenceResolver:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(a1, *(v2 + 16), v2 + 24, a2);
}

{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(a1, *(v2 + 16), v2 + 24, a2);
}

void partial apply for closure #1 in static Transformer<>.transformer(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:)(a1, *(v2 + 16), a2);
}

{
  closure #1 in static Transformer<>.transformer(_:)(a1, *(v2 + 16), a2);
}

uint64_t OUTLINED_FUNCTION_1_49()
{
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[71];
  v7 = v0[68];
  v8 = v0[65];
  v9 = v0[62];
  v10 = v0[58];
  v12 = v0[57];
  v13 = v0[56];
  v14 = v0[54];
  v15 = v0[51];

  return static os_signpost_type_t.end.getter();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_34(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 376);
  return v2;
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + 240));
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return Transformer.init(transform:)();
}

void OUTLINED_FUNCTION_33_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_40_7()
{
  result = v0;
  v3 = *(v1 - 104);
  v5 = *(v1 - 128);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1)
{

  return outlined destroy of Result<TemplatingResult, Error>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_8(uint64_t a1)
{

  return outlined destroy of Result<TemplatingResult, Error>(a1, v1, v2);
}

uint64_t ModifyContactAttributeIntent.__allocating_init(_:referenceResolver:)(uint64_t a1, uint64_t *a2)
{
  v150 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v147 = &v136 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v146 = &v136 - v9;
  v10 = type metadata accessor for PersonIntentNode();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v151 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v148 = &v136 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v136 - v25;
  v27 = [objc_allocWithZone(v2) init];
  v28 = one-time initialization token for setRelationship;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for ContactNLv3Intent();
  v31 = lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  OUTLINED_FUNCTION_4_35();
  v32 = v154;
  if (v154)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for removeRelationship != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_35();
  v32 = v154;
  if (v154)
  {
LABEL_7:
    v33 = MEMORY[0x26D5E2470](v153, v32);
  }

  else
  {
    v33 = 0;
  }

  [v29 setModifyRelationship_];

  ContactNLv3Intent.person.getter(v34, v35, v36, v37, v38, v39, v40, v41, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
  OUTLINED_FUNCTION_13_23(v26);
  if (v42)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v26, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  }

  else
  {
    v43 = PersonIntentNodeContaining.relationship.getter();
    v45 = v44;
    (*(v13 + 8))(v26, v10);
    if (v45)
    {
      outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v43, v45, v29, &selRef_setModifyRelationship_);
    }
  }

  if (one-time initialization token for setNickName != -1)
  {
    swift_once();
  }

  v152 = v31;
  IntentNodeTraversable.value<A>(forNode:)();
  v46 = v154;
  if (v154)
  {
    v47 = v153;

    specialized Collection.prefix(_:)(1);
    Substring.uppercased()();
    OUTLINED_FUNCTION_7_28();
    v13 = v30;
    v49 = v48;
    v51 = v50;

    v52 = specialized Collection.dropFirst(_:)(1uLL, v47, v46);
    v157 = v49;
    v158 = v51;
    v153 = v52;
    v154 = v53;
    v155 = v54;
    v156 = v55;
    lazy protocol witness table accessor for type Substring and conformance Substring();

    String.append<A>(contentsOf:)();

    v46 = MEMORY[0x26D5E2470](v157, v158);
    v30 = v13;
    OUTLINED_FUNCTION_8_31();
  }

  [v29 setModifyNickName_];

  v56 = ContactNLv3Intent.hasPersonNickName.getter();
  if (v56)
  {
    v64 = outlined bridged method (pb) of @objc PostalAddress.street.getter(v29, &selRef_modifyRelationship);
    if (v71)
    {

      goto LABEL_28;
    }

    v72 = v148;
    ContactNLv3Intent.person.getter(v64, 0, v65, v66, v67, v68, v69, v70, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
    OUTLINED_FUNCTION_13_23(v72);
    if (v42)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v72, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    }

    else
    {
      v73 = PersonIntentNodeContaining.nickName.getter();
      v75 = v74;
      (*(v13 + 8))(v72, v10);
      if (v75)
      {

        specialized Collection.prefix(_:)(1);
        v148 = v30;
        Substring.uppercased()();
        OUTLINED_FUNCTION_7_28();
        v77 = v76;
        v79 = v78;

        v80 = specialized Collection.dropFirst(_:)(1uLL, v73, v75);
        v157 = v77;
        v158 = v79;
        v153 = v80;
        v154 = v81;
        v155 = v82;
        v156 = v83;
        v13 = lazy protocol witness table accessor for type Substring and conformance Substring();

        OUTLINED_FUNCTION_8_31();
        String.append<A>(contentsOf:)();

        v84 = MEMORY[0x26D5E2470](v157, v158);

LABEL_27:
        [v29 setModifyNickName_];

        goto LABEL_28;
      }
    }

    v84 = 0;
    goto LABEL_27;
  }

LABEL_28:
  v85 = v151;
  ContactNLv3Intent.person.getter(v56, v57, v58, v59, v60, v61, v62, v63, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
  OUTLINED_FUNCTION_13_23(v85);
  if (v42)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v85, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    goto LABEL_50;
  }

  v86 = (*(v13 + 32))(v18, v85, v10);
  v87 = ContactNLv3Intent.hasPersonNameNode.getter(v86);
  if (v87 & 1) == 0 || (ContactNLv3Intent.isForgetNickname.getter())
  {
    (*(v13 + 8))(v18, v10);
    goto LABEL_50;
  }

  result = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v29);
  if (!result)
  {
    v148 = 0;
    v149 = 0;
    goto LABEL_40;
  }

  v89 = v29;
  v90 = a1;
  if ((result & 0xC000000000000001) != 0)
  {
    v91 = v18;
    v92 = MEMORY[0x26D5E29D0](0, result);
    goto LABEL_38;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v91 = v18;
    v92 = *(result + 32);
LABEL_38:
    v93 = v92;

    v94 = outlined bridged method (ob) of @objc INObject.identifier.getter(v93, &selRef_identifier);
    v148 = v95;
    v149 = v94;
    v18 = v91;
    a1 = v90;
    v29 = v89;
LABEL_40:
    v96 = PersonIntentNodeContaining.firstName.getter();
    if (v97)
    {
      v144 = v97;
      v145 = v96;
      v98 = v18;
    }

    else
    {
      v98 = v18;
      v99 = PersonIntentNodeContaining.fullName.getter();
      v144 = v100;
      v145 = v99;
    }

    OUTLINED_FUNCTION_11_25();
    v101 = PersonIntentNodeContaining.middleName.getter();
    v142 = v102;
    v143 = v101;
    OUTLINED_FUNCTION_11_25();
    v103 = PersonIntentNodeContaining.lastName.getter();
    v140 = v104;
    v141 = v103;
    OUTLINED_FUNCTION_11_25();
    v105 = PersonIntentNodeContaining.nickName.getter();
    v138 = v106;
    v139 = v105;
    v107 = v146;
    OUTLINED_FUNCTION_11_25();
    v151 = v98;
    PersonIntentNodeContaining.namePrefix.getter();
    v108 = v107;
    v109 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v109);
    v111 = v13;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v108, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
      v137 = 0;
      v112 = 0;
    }

    else
    {
      v137 = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
      v112 = v113;
      (*(*(v109 - 8) + 8))(v108, v109);
    }

    v114 = v147;
    PersonIntentNodeContaining.namePostfix.getter();
    v115 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
    if (__swift_getEnumTagSinglePayload(v114, 1, v115) == 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v114, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
      v116 = 0;
      v117 = 0;
    }

    else
    {
      v116 = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
      v118 = v114;
      v117 = v119;
      (*(*(v115 - 8) + 8))(v118, v115);
    }

    type metadata accessor for Contact();
    v120 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v149, v148, v145, v144, v143, v142, v141, v140, v139, v138, 0, 0, v137, v112, v116, v117, 0, 0, 0, 0);
    [v29 setRelatedContact_];

    (*(v111 + 8))(v151, v10);
LABEL_50:
    [v29 setContactAttributeToModify_];
    [v29 setModifyOperation_];
    if (one-time initialization token for contactId != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_35();
    v121 = &selRef_isoCountryCode;
    if (v154)
    {
      v122 = String.sanitizeContactIdURL.getter(v153, v154);
      v124 = v123;

      v125 = [v29 relatedContact];
      if (v125)
      {
        v126 = v125;
        v127 = Contact.formattedFullName.getter();
        v129 = v128;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v121 = &selRef_isoCountryCode;
        v131 = SiriMatch.__allocating_init(identifier:fullName:)(v122, v124, v127, v129);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v132 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        v131 = @nonobjc INObject.init(identifier:display:)(v122, v124, v122, v124);
      }

      *(v130 + 32) = v131;
      outlined bridged method (mbnn) of @objc ModifyContactAttributeIntent.relatedSiriMatches.setter(v130, v29);
    }

    v133 = [v29 v121[91]];
    if (v133)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_35();
      if (!v154)
      {
        v135 = ContactNLv3Intent.isForgetNickname.getter();
        v134 = v150;
        if ((v135 & 1) == 0)
        {
          ModifyContactAttributeIntent.runReferenceResolution(_:)();
        }

        goto LABEL_62;
      }
    }

    v134 = v150;
LABEL_62:
    __swift_destroy_boxed_opaque_existential_0Tm(v134);
    outlined destroy of ContactNLv3Intent(a1);
    return v29;
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      String.subscript.getter();
      OUTLINED_FUNCTION_30_3();

      return OUTLINED_FUNCTION_37_0();
    }
  }

  __break(1u);
  return result;
}

char *ModifyContactAttributeIntentResponse.__allocating_init(relationshipLabel:contactName:code:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = ModifyContactAttributeIntentResponse.init(code:userActivity:)(a5, 0);
  type metadata accessor for ContactRelation();
  v13 = v12;
  v14 = ContactRelation.__allocating_init(relationship:relatedFullName:)(a1, a2, a3, a4);
  [v13 setUpdatedRelationship_];

  return v13;
}

uint64_t ModifyContactAttributeIntent.runReferenceResolution(_:)()
{
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(swift_allocObject() + 16) = v1;
  static SiriKitContactIntent.runReferenceResolution(_:completion:)();

  return MEMORY[0x26D5E33A0](v1);
}

uint64_t ModifyContactAttributeIntent.getContactAttributeToModify(from:)()
{
  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_modifyRelationship);
  if (v1)
  {

    return 10;
  }

  outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v0);
  if (v3)
  {
    goto LABEL_4;
  }

  v4[0] = 44;
  if (ContactNLv3Intent.containsAttribute(_:)(v4) || (ContactNLv3Intent.isForgetNickname.getter() & 1) != 0)
  {
    return 6;
  }

  if (one-time initialization token for setNickName != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLv3Intent();
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  IntentNodeTraversable.value<A>(forNode:)();
  result = v5;
  if (v5)
  {
LABEL_4:

    return 6;
  }

  return result;
}

uint64_t ModifyContactAttributeIntent.modifyOperation(from:)()
{
  if (one-time initialization token for contactVerb != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLv3Intent();
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 != 17 && (specialized == infix<A>(_:_:)(v1, 15) & 1) != 0)
  {
    return 3;
  }

  if (one-time initialization token for removeRelationship != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v2)
  {

    return 3;
  }

  if (one-time initialization token for setRelationship != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (one-time initialization token for setNickName != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  IntentNodeTraversable.value<A>(forNode:)();
  result = 0;
  if (v1 != 17)
  {
    IntentNodeTraversable.value<A>(forNode:)();
    if (specialized == infix<A>(_:_:)(v1, 4))
    {
      return 1;
    }
  }

  return result;
}

id ModifyContactAttributeIntent.__allocating_init(_:)(char *a1)
{
  v3 = type metadata accessor for Parse.DirectInvocation();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000026 && 0x800000026696DFC0 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriContacts);
      (*(v6 + 16))(v11, a1, v3);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v65 = v21;
        *v20 = 136315138;
        v22 = Parse.DirectInvocation.identifier.getter();
        v23 = v3;
        v25 = v24;
        v62 = a1;
        v26 = *(v6 + 8);
        v26(v11, v23);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, &v65);

        *(v20 + 4) = v27;
        _os_log_impl(&dword_26686A000, v18, v19, "DirectInvocation %s that cannot be handled. No object constructed", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        v26(v62, v23);
      }

      else
      {

        v35 = *(v6 + 8);
        v35(a1, v3);
        v35(v11, v3);
      }

      return 0;
    }
  }

  v28 = [objc_allocWithZone(v1) init];
  v29 = Parse.DirectInvocation.userData.getter();
  if (!v29)
  {
    goto LABEL_21;
  }

  specialized Dictionary.subscript.getter(v29, &v65);

  if (!*(&v66 + 1))
  {
LABEL_22:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(&v65, &_sypSgMd, &_sypSgMR);
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_12_19() & 1) == 0)
  {
LABEL_23:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriContacts);
    (*(v6 + 16))(v13, a1, v3);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v60 = v28;
      v61 = v3;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v65 = v40;
      *v39 = 136315138;
      v41 = Parse.DirectInvocation.userData.getter();
      v62 = a1;
      if (!v41)
      {
        Dictionary.init(dictionaryLiteral:)();
      }

      v42 = Dictionary.description.getter();
      v44 = v43;

      v45 = *(v6 + 8);
      v46 = v13;
      v47 = v61;
      v45(v46, v61);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v65);

      *(v39 + 4) = v48;
      _os_log_impl(&dword_26686A000, v37, v38, "Unable to extract nickname and modify operation from provided userData: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      v45(v62, v47);
    }

    else
    {

      v49 = *(v6 + 8);
      v49(a1, v3);
      v49(v13, v3);
    }

    return 0;
  }

  v30 = v63;
  v31 = v64;
  v32 = Parse.DirectInvocation.userData.getter();
  if (!v32)
  {

LABEL_21:
    v65 = 0u;
    v66 = 0u;
    goto LABEL_22;
  }

  specialized Dictionary.subscript.getter(v32, &v65);

  if (!*(&v66 + 1))
  {

    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_12_19() & 1) == 0 || (v33 = ModifyOperation.init(rawValue:)(v63), (v34))
  {

    goto LABEL_23;
  }

  v51 = v33;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.siriContacts);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v61 = v3;
    v56 = v55;
    v57 = a1;
    v58 = swift_slowAlloc();
    *&v65 = v58;
    *v56 = 136315138;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v65);
    _os_log_impl(&dword_26686A000, v53, v54, "Received updated nickname value %s from DirectInvocation", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    a1 = v57;
    OUTLINED_FUNCTION_6();
    v3 = v61;
    OUTLINED_FUNCTION_6();
  }

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v30, v31, v28, &selRef_setModifyNickName_);
  [v28 setModifyOperation_];
  [v28 setContactAttributeToModify_];
  (*(v6 + 8))(a1, v3);
  return v28;
}

id ModifyContactAttributeIntent.siriInferenceContact.getter()
{
  v1 = type metadata accessor for ContactHandle.HandleType();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for ContactHandle();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v54 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  Contact.init()();
  v18 = [v0 relatedContact];
  if (v18)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v18, &selRef_identifier);
    if (v19)
    {
      Contact.id.setter();
    }
  }

  v20 = OUTLINED_FUNCTION_6_38();
  if (v20)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v20, &selRef_givenName);
    if (v21)
    {
      Contact.givenName.setter();
    }
  }

  v22 = OUTLINED_FUNCTION_6_38();
  if (v22)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v22, &selRef_middleName);
    if (v23)
    {
      Contact.middleName.setter();
    }
  }

  v24 = OUTLINED_FUNCTION_6_38();
  if (v24)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v24, &selRef_familyName);
    if (v25)
    {
      Contact.familyName.setter();
    }
  }

  v26 = OUTLINED_FUNCTION_6_38();
  if (v26)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v26, &selRef_nickName);
    if (v27)
    {
      Contact.nickname.setter();
    }
  }

  v28 = OUTLINED_FUNCTION_6_38();
  if (v28)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v28, &selRef_namePrefix);
    if (v29)
    {
      Contact.namePrefix.setter();
    }
  }

  v30 = OUTLINED_FUNCTION_6_38();
  if (v30)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v30, &selRef_nameSuffix);
    if (v31)
    {
      Contact.nameSuffix.setter();
    }
  }

  v32 = OUTLINED_FUNCTION_6_38();
  if (v32)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v32, &selRef_fullName);
    if (v33)
    {
      Contact.givenName.setter();
    }
  }

  v34 = OUTLINED_FUNCTION_6_38();
  if (v34)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v34, &selRef_phoneNumber);
    if (v35)
    {
      (*(v4 + 104))(v9, *MEMORY[0x277D56010], v1);
      OUTLINED_FUNCTION_2_49();
      ContactHandle.init(id:type:label:value:isSuggested:)();
      v36 = Contact.handles.modify();
      v38 = v37;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v39 = v9;
      v40 = v17;
      v41 = v4;
      v42 = v1;
      v43 = v10;
      v44 = *(*v38 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v44);
      v45 = *v38;
      *(v45 + 16) = v44 + 1;
      v46 = v45 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v44;
      v10 = v43;
      v1 = v42;
      v4 = v41;
      v17 = v40;
      v9 = v39;
      (*(v54 + 32))(v46, v17, v10);
      v36(v55, 0);
    }
  }

  result = OUTLINED_FUNCTION_6_38();
  if (result)
  {
    result = outlined bridged method (ob) of @objc INObject.identifier.getter(result, &selRef_emailAddress);
    if (v48)
    {
      (*(v4 + 104))(v9, *MEMORY[0x277D56008], v1);
      OUTLINED_FUNCTION_2_49();
      ContactHandle.init(id:type:label:value:isSuggested:)();
      v49 = Contact.handles.modify();
      v51 = v50;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v52 = *(*v51 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v52);
      v53 = *v51;
      *(v53 + 16) = v52 + 1;
      (*(v54 + 32))(v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, v17, v10);
      return v49(v55, 0);
    }
  }

  return result;
}

uint64_t ModifyContactAttributeIntent.contactIdentifier.getter()
{
  v1 = [v0 relatedContact];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 identifier];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_30_3();
    }

    return OUTLINED_FUNCTION_37_0();
  }

  v5 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v0);
  if (!v5)
  {
    return OUTLINED_FUNCTION_37_0();
  }

  v6 = v5;
  result = specialized Array._getCount()(v5);
  if (!result)
  {

    return OUTLINED_FUNCTION_37_0();
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26D5E29D0](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:
    v9 = v8;

    outlined bridged method (ob) of @objc INObject.identifier.getter(v9, &selRef_identifier);
    OUTLINED_FUNCTION_30_3();
    return OUTLINED_FUNCTION_37_0();
  }

  __break(1u);
  return result;
}

uint64_t ModifyContactAttributeIntent.requestedName.getter()
{
  v1 = [v0 relatedContact];
  if (v1)
  {
    v2 = v1;
    outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_fullName);
    if (v3 || (outlined bridged method (pb) of @objc PostalAddress.street.getter(v2, &selRef_givenName), v4) || (outlined bridged method (pb) of @objc PostalAddress.street.getter(v2, &selRef_middleName), v5) || (outlined bridged method (pb) of @objc PostalAddress.street.getter(v2, &selRef_familyName), v6))
    {
      OUTLINED_FUNCTION_30_3();
    }

    else
    {
      v7 = [v2 nickName];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_30_3();
      }
    }
  }

  return OUTLINED_FUNCTION_37_0();
}

void specialized closure #1 in ModifyContactAttributeIntent.runReferenceResolution(_:)(uint64_t a1, unint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    switch(a3)
    {
      case 1:
        v28 = one-time initialization token for siriContacts;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.siriContacts);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v38 = a2;
          v39 = v33;
          *v32 = 136315138;
          v37 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v34 = String.init<A>(describing:)();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v39);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_26686A000, v30, v31, "#ModifyContactAttributeIntent: Resolved an email from reference resolution: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          MEMORY[0x26D5E3300](v33, -1, -1);
          MEMORY[0x26D5E3300](v32, -1, -1);
        }

        type metadata accessor for Contact();
        v14 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a1, a2);
        goto LABEL_22;
      case 2:
        v15 = one-time initialization token for siriContacts;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.siriContacts);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v38 = a2;
          v39 = v20;
          *v19 = 136315138;
          v37 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v21 = String.init<A>(describing:)();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v39);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_26686A000, v17, v18, "#ModifyContactAttributeIntent: Resolved a phone number from reference resolution: %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x26D5E3300](v20, -1, -1);
          MEMORY[0x26D5E3300](v19, -1, -1);
        }

        type metadata accessor for Contact();
        v14 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a1, a2, 0, 0);
        goto LABEL_22;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.siriContacts);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_26686A000, v25, v26, "#ModifyContactAttributeIntent: no value found from reference resolution", v27, 2u);
          MEMORY[0x26D5E3300](v27, -1, -1);
        }

        goto LABEL_23;
      default:
        v8 = one-time initialization token for siriContacts;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.siriContacts);

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v37 = v13;
          *v12 = 136315138;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v37);
          _os_log_impl(&dword_26686A000, v10, v11, "#ModifyContactAttributeIntent: Resolved a contact from reference resolution with identifier: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v13);
          MEMORY[0x26D5E3300](v13, -1, -1);
          MEMORY[0x26D5E3300](v12, -1, -1);
        }

        type metadata accessor for Contact();
        v14 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(a1, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
LABEL_22:
        v25 = v14;
        [v7 setRelatedContact_];
LABEL_23:

        break;
    }
  }
}

id @nonobjc INObject.init(identifier:display:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x26D5E2470](a3, a4);

  v9 = [v4 initWithIdentifier:v7 displayString:v8];

  return v9;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc ModifyContactAttributeIntent.relatedSiriMatches.setter(uint64_t a1, void *a2)
{
  type metadata accessor for SiriMatch();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRelatedSiriMatches_];
}

uint64_t outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(void *a1)
{
  v1 = [a1 relatedSiriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INObject.identifier.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_3();
  }

  return OUTLINED_FUNCTION_37_0();
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

id OUTLINED_FUNCTION_6_38()
{

  return [v1 (v0 + 2142)];
}

uint64_t OUTLINED_FUNCTION_12_19()
{

  return swift_dynamicCast();
}

uint64_t Parse.toSiriKitIntent(referenceResolver:previousIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ContactsError();
  v4[6] = v5;
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for ContactNLv3Intent();
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for NLIntent();
  v4[9] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v4[10] = v12;
  v14 = *(v13 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v15 = type metadata accessor for USOParse();
  v4[14] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v4[15] = v16;
  v18 = *(v17 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v19 = type metadata accessor for Parse.DirectInvocation();
  v4[18] = v19;
  OUTLINED_FUNCTION_1_1(v19);
  v4[19] = v20;
  v22 = *(v21 + 64) + 15;
  v4[20] = swift_task_alloc();
  v23 = type metadata accessor for Parse();
  v4[21] = v23;
  OUTLINED_FUNCTION_1_1(v23);
  v4[22] = v24;
  v26 = *(v25 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](Parse.toSiriKitIntent(referenceResolver:previousIntent:), 0, 0);
}

uint64_t Parse.toSiriKitIntent(referenceResolver:previousIntent:)()
{
  v150 = v0;
  v2 = v0 + 24;
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0 + 21;
  v4 = v0[21];
  v6 = *(v3 + 16);
  (v6)(v1, v0[5], v4);
  v7 = (*(v3 + 88))(v1, v4);
  if (v7 == *MEMORY[0x277D5C128])
  {
    v2 = v0 + 13;
    v8 = v0[13];
    v9 = v0[10];
    v5 = v0 + 9;
    v10 = v0[9];
    (*(v0[22] + 96))(v0[24], v0[21]);
    v11 = OUTLINED_FUNCTION_66_2();
    v12(v11);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[9];
    v16 = v0[10];
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriContacts);
    v18 = *(v16 + 16);
    v19 = OUTLINED_FUNCTION_26_3();
    v145 = v20;
    v20(v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = OUTLINED_FUNCTION_33_12(v22);
    v24 = v0[12];
    v26 = v0[9];
    v25 = v0[10];
    if (v23)
    {
      OUTLINED_FUNCTION_5_5();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v149 = swift_slowAlloc();
      *v27 = 136315138;
      OUTLINED_FUNCTION_24_14();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v28, v29);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v25;
      v32 = v30;
      v34 = v33;
      v35 = *(v31 + 8);
      v36 = OUTLINED_FUNCTION_60_0();
      v38 = v37;
      (v37)(v36);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v149);
      v5 = v0 + 9;

      *(v27 + 4) = v39;
      OUTLINED_FUNCTION_37_8(&dword_26686A000, v40, v22, "#Parse.toSiriKitIntent Converting NLv3IntentOnly Parse to SiriKit Intent: %s");
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      v41 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v41);
    }

    else
    {

      v56 = *(v25 + 8);
      v57 = OUTLINED_FUNCTION_60_0();
      v38 = v58;
      (v58)(v57);
    }

    v59 = v0[11];
    v60 = v0[8];
    v62 = v0[3];
    v61 = v0[4];
    v63 = v0[2];
    v145(v59, v0[13], v0[9]);
    ContactNLv3Intent.init(intent:)(v59, v60);
    v64 = ContactNLv3Intent.toSiriKitIntent(referenceResolver:previousIntent:)(v63);
    v144 = v65;
    v146 = v64;
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v60, v66);
    v55 = v38;
LABEL_14:
    v67 = *v2;
    v68 = *v5;
    v70 = v0[23];
    v69 = v0[24];
    v71 = v0[20];
    v73 = v0[16];
    v72 = v0[17];
    v75 = v0[12];
    v74 = v0[13];
    v76 = v0[11];
    v77 = v0[8];
    v142 = v0[7];
    v55(v67, v68);

    v78 = v0[1];

    return v78(v146, v144);
  }

  if (v7 == *MEMORY[0x277D5C150])
  {
    v2 = v0 + 20;
    v42 = v0[20];
    v43 = v0[19];
    v5 = v0 + 18;
    v44 = v0[18];
    (*(v0[22] + 96))(v0[24], v0[21]);
    v45 = OUTLINED_FUNCTION_66_2();
    v46(v45);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v47, static Logger.siriContacts);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_11_4();
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26686A000, v48, v49, "#Parse.toSiriKitIntent Converting DirectInvocation Parse to SiriKit Intent", v50, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    v51 = v0[19];
    v52 = v0[20];

    Parse.DirectInvocation.toSiriKitIntent()();
    v144 = v54;
    v146 = v53;
    v55 = *(v51 + 8);
    goto LABEL_14;
  }

  if (v7 != *MEMORY[0x277D5C160])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v111 = v0[23];
    v112 = v0[21];
    v113 = v0[5];
    v114 = type metadata accessor for Logger();
    v115 = __swift_project_value_buffer(v114, static Logger.siriContacts);
    (v6)(v111, v113, v112);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();
    v118 = OUTLINED_FUNCTION_21_2(v117);
    v119 = v0[23];
    v143 = v0[22];
    v120 = v0[21];
    if (v118)
    {
      v148 = v115;
      v122 = v0[6];
      v121 = v0[7];
      OUTLINED_FUNCTION_5_5();
      v123 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v149 = swift_slowAlloc();
      *v123 = 136315138;
      v124 = OUTLINED_FUNCTION_60_0();
      v6(v124);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_50();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v125, v126);
      v127 = Error.localizedDescription.getter();
      v129 = v128;
      OUTLINED_FUNCTION_25_12();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v121, v130);
      v131 = *(v143 + 8);
      v131(v119, v120);
      v132 = v127;
      v5 = v0 + 21;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v129, &v149);
      OUTLINED_FUNCTION_59_8();

      *(v123 + 4) = v131;
      OUTLINED_FUNCTION_37_8(&dword_26686A000, v133, v148, "%s");
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      v134 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v134);
    }

    else
    {

      v131 = *(v143 + 8);
      v131(v119, v120);
    }

    v55 = v131;
    v144 = 0;
    v146 = 0;
    goto LABEL_14;
  }

  v80 = v0[17];
  v81 = v0[14];
  v82 = v0[15];
  (*(v0[22] + 96))(v0[24], v0[21]);
  v83 = *(v82 + 32);
  v84 = OUTLINED_FUNCTION_26_3();
  v85(v84);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v86 = v0[16];
  v87 = v0[17];
  v88 = v0[14];
  v89 = v0[15];
  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, static Logger.siriContacts);
  v91 = *(v89 + 16);
  v92 = OUTLINED_FUNCTION_26_3();
  v93(v92);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();
  v96 = OUTLINED_FUNCTION_33_12(v95);
  v98 = v0[15];
  v97 = v0[16];
  v99 = v0[14];
  if (v96)
  {
    OUTLINED_FUNCTION_5_5();
    v100 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v101 = swift_slowAlloc();
    v149 = v101;
    *v100 = 136315138;
    v147 = USOParse.debugDescription.getter();
    v103 = v102;
    v106 = *(v98 + 8);
    v104 = v98 + 8;
    v105 = v106;
    v107 = OUTLINED_FUNCTION_54_6();
    v106(v107);
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v103, &v149);

    *(v100 + 4) = v108;
    OUTLINED_FUNCTION_37_8(&dword_26686A000, v109, v95, "#Parse.toSiriKitIntent Converting USO Parse to SiriKit Intent: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    v110 = OUTLINED_FUNCTION_10_33();
    MEMORY[0x26D5E3300](v110);
  }

  else
  {

    v135 = *(v98 + 8);
    v104 = v98 + 8;
    v105 = v135;
    v136 = OUTLINED_FUNCTION_54_6();
    v135(v136);
  }

  v0[25] = v104;
  v0[26] = v105;
  v137 = swift_task_alloc();
  v0[27] = v137;
  *v137 = v0;
  v137[1] = Parse.toSiriKitIntent(referenceResolver:previousIntent:);
  v138 = v0[17];
  v140 = v0[3];
  v139 = v0[4];
  v141 = v0[2];

  return USOParse.toSiriKitIntent(previousIntent:referenceResolver:)();
}

{
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 64);
  v12 = *(v0 + 56);
  v9 = *(v0 + 200) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 208))(*(v0 + 136), *(v0 + 112));

  v10 = *(v0 + 8);

  return v10(v13, v14);
}

uint64_t Parse.toSiriKitIntent(referenceResolver:previousIntent:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v6 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return MEMORY[0x2822009F8](Parse.toSiriKitIntent(referenceResolver:previousIntent:), 0, 0);
}

void Parse.isLearnPronunciation.getter()
{
  OUTLINED_FUNCTION_15();
  v2 = type metadata accessor for ContactNLv3Intent();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v6 = type metadata accessor for NLIntent();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  v21 = type metadata accessor for USOParse();
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v76 = v23;
  v77 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v75 = v27 - v26;
  OUTLINED_FUNCTION_13_8();
  v28 = type metadata accessor for Parse();
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v34 = v31[2];
  v35 = OUTLINED_FUNCTION_58();
  v36(v35);
  v37 = v31[11];
  v38 = OUTLINED_FUNCTION_36_12();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277D5C128])
  {
    v41 = v31[12];
    v42 = OUTLINED_FUNCTION_36_12();
    v43(v42);
    v44 = *(v9 + 32);
    v45 = OUTLINED_FUNCTION_40_8();
    v46(v45);
    OUTLINED_FUNCTION_56_6();
    v47(v1, v14, v6);
    ContactNLv3Intent.init(intent:)(v1, v0);
    ContactNLv3Intent.isLearnPronunciation.getter();
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v48);
    (*(v9 + 8))(v14, v6);
    goto LABEL_17;
  }

  if (v40 != *MEMORY[0x277D5C160])
  {
    v59 = v31[1];
    v60 = OUTLINED_FUNCTION_36_12();
    v61(v60);
    goto LABEL_17;
  }

  v49 = v31[12];
  v50 = OUTLINED_FUNCTION_36_12();
  v51(v50);
  v52 = *(v76 + 32);
  v53 = OUTLINED_FUNCTION_40_8();
  v54(v53);
  USOParse.preferredUserDialogAct.getter(v20);
  v55 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_57(v20, 1, v55);
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_12_20();
    v58(v57);
    outlined destroy of Result<TemplatingResult, Error>(v20, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_15:
    OUTLINED_FUNCTION_46_1();
LABEL_16:
    outlined destroy of Result<TemplatingResult, Error>(v78, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  v62 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52(v55);
  (*(v63 + 8))(v20, v55);
  if (!v62)
  {
    v67 = OUTLINED_FUNCTION_12_20();
    v68(v67);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v78[3])
  {
    v69 = OUTLINED_FUNCTION_12_20();
    v70(v69);
    goto LABEL_16;
  }

  type metadata accessor for UsoTask_update_common_Person();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

    if (v78[0])
    {
      v64 = dispatch thunk of UsoEntity_common_Person.phoneticStructuredName.getter();

      v65 = OUTLINED_FUNCTION_12_20();
      v66(v65);
      if (v64)
      {
      }
    }

    else
    {
      v73 = OUTLINED_FUNCTION_12_20();
      v74(v73);
    }
  }

  else
  {
    v71 = OUTLINED_FUNCTION_12_20();
    v72(v71);
  }

LABEL_17:
  OUTLINED_FUNCTION_14();
}

void Parse.isRequestForMultipleContacts.getter()
{
  OUTLINED_FUNCTION_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_16();
  v72 = v7;
  OUTLINED_FUNCTION_16();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v73[-v10];
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_65_4();
  v13 = type metadata accessor for USOParse();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = type metadata accessor for Parse();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  (*(v25 + 16))(v29 - v28, v0, v22);
  v31 = *(v25 + 88);
  v32 = OUTLINED_FUNCTION_46_0();
  if (v33(v32) == *MEMORY[0x277D5C160])
  {
    v34 = *(v25 + 96);
    v35 = OUTLINED_FUNCTION_46_0();
    v36(v35);
    (*(v16 + 32))(v21, v30, v13);
    USOParse.preferredUserDialogAct.getter(v2);
    v37 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    OUTLINED_FUNCTION_60_6();
    if (__swift_getEnumTagSinglePayload(v38, v39, v40) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v2, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_13_24();
      (*(v44 + 8))(v2, v37);
      if (v2)
      {
        OUTLINED_FUNCTION_52_1();

        if (v74)
        {
          type metadata accessor for UsoTask_summarise_common_Person();
          if (OUTLINED_FUNCTION_14_21())
          {
LABEL_35:
            OUTLINED_FUNCTION_72_3();
            UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter();
            goto LABEL_36;
          }

LABEL_11:
          USOParse.preferredUserDialogAct.getter(v1);
          OUTLINED_FUNCTION_60_6();
          OUTLINED_FUNCTION_57(v45, v46, v47);
          if (v48)
          {
            outlined destroy of Result<TemplatingResult, Error>(v1, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
          }

          else
          {
            Siri_Nlu_External_UserDialogAct.usoTask.getter();
            OUTLINED_FUNCTION_13_24();
            (*(v49 + 8))(v1, v37);
            if (v1)
            {
              OUTLINED_FUNCTION_52_1();

              if (v74)
              {
                type metadata accessor for UsoTask_read_common_Person();
                if (OUTLINED_FUNCTION_14_21())
                {
                  OUTLINED_FUNCTION_72_3();
                  UsoTask_read_common_Person.isRequestForMultipleContacts.getter();
LABEL_36:

                  v64 = OUTLINED_FUNCTION_18_18();
                  v65(v64);
                  goto LABEL_40;
                }

LABEL_20:
                USOParse.preferredUserDialogAct.getter(v11);
                OUTLINED_FUNCTION_60_6();
                OUTLINED_FUNCTION_57(v50, v51, v52);
                if (v48)
                {
                  outlined destroy of Result<TemplatingResult, Error>(v11, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                }

                else
                {
                  Siri_Nlu_External_UserDialogAct.usoTask.getter();
                  OUTLINED_FUNCTION_13_24();
                  v54 = *(v53 + 8);
                  v55 = OUTLINED_FUNCTION_43();
                  v56(v55);
                  if (v11)
                  {
                    OUTLINED_FUNCTION_52_1();

                    v57 = v72;
                    if (v74)
                    {
                      type metadata accessor for UsoTask_noVerb_common_Person();
                      if (OUTLINED_FUNCTION_14_21())
                      {
                        OUTLINED_FUNCTION_72_3();
                        UsoTask_noVerb_common_Person.isRequestForMultipleContacts.getter();
                        goto LABEL_36;
                      }

LABEL_29:
                      USOParse.preferredUserDialogAct.getter(v57);
                      OUTLINED_FUNCTION_60_6();
                      OUTLINED_FUNCTION_57(v58, v59, v60);
                      if (v48)
                      {
                        v61 = OUTLINED_FUNCTION_18_18();
                        v62(v61);
                        outlined destroy of Result<TemplatingResult, Error>(v57, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                      }

                      else
                      {
                        Siri_Nlu_External_UserDialogAct.usoTask.getter();
                        OUTLINED_FUNCTION_13_24();
                        (*(v63 + 8))(v57, v37);
                        if (v57)
                        {
                          OUTLINED_FUNCTION_52_1();

                          if (v74)
                          {
                            type metadata accessor for UsoTask_checkExistence_common_Person();
                            if ((OUTLINED_FUNCTION_14_21() & 1) == 0)
                            {
                              v70 = OUTLINED_FUNCTION_18_18();
                              v71(v70);
                              goto LABEL_40;
                            }

                            goto LABEL_35;
                          }

                          v68 = OUTLINED_FUNCTION_18_18();
                          v69(v68);
LABEL_39:
                          outlined destroy of Result<TemplatingResult, Error>(v73, &_sypSgMd, &_sypSgMR);
                          goto LABEL_40;
                        }

                        v66 = OUTLINED_FUNCTION_18_18();
                        v67(v66);
                      }

                      OUTLINED_FUNCTION_46_1();
                      goto LABEL_39;
                    }

LABEL_28:
                    outlined destroy of Result<TemplatingResult, Error>(v73, &_sypSgMd, &_sypSgMR);
                    goto LABEL_29;
                  }
                }

                OUTLINED_FUNCTION_46_1();
                v57 = v72;
                goto LABEL_28;
              }

LABEL_19:
              outlined destroy of Result<TemplatingResult, Error>(v73, &_sypSgMd, &_sypSgMR);
              goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_46_1();
          goto LABEL_19;
        }

LABEL_10:
        outlined destroy of Result<TemplatingResult, Error>(v73, &_sypSgMd, &_sypSgMR);
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_46_1();
    goto LABEL_10;
  }

  v41 = *(v25 + 8);
  v42 = OUTLINED_FUNCTION_46_0();
  v43(v42);
LABEL_40:
  OUTLINED_FUNCTION_14();
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.DirectInvocation.getSelectionIndex()()
{
  v1 = v0;
  v2 = Parse.DirectInvocation.userData.getter();
  if (!v2)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_6;
  }

  specialized Dictionary.subscript.getter(v2, &v21);

  if (!*(&v22 + 1))
  {
LABEL_6:
    outlined destroy of Result<TemplatingResult, Error>(&v21, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v20;
  }

LABEL_7:
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_11_4();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_64_3();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_10_33();
    MEMORY[0x26D5E3300](v13);
  }

  type metadata accessor for ContactsError();
  OUTLINED_FUNCTION_2_50();
  _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v14, v15);
  OUTLINED_FUNCTION_56();
  v17 = v16;
  v18 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_10_1(v18);
  (*(v19 + 16))(v17, v1);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.toContactId(existingCandidates:)(Swift::OpaquePointer existingCandidates)
{
  v4 = v1;
  rawValue = existingCandidates._rawValue;
  v131 = type metadata accessor for ContactNLv3Intent();
  v5 = OUTLINED_FUNCTION_10_1(v131);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_16();
  v135 = v8;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_65_4();
  v10 = type metadata accessor for NLIntent();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v134 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_6();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v20 = OUTLINED_FUNCTION_18_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_16();
  v127 = v23;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19_4();
  v126 = v25;
  OUTLINED_FUNCTION_13_8();
  v130 = type metadata accessor for USOParse();
  v26 = OUTLINED_FUNCTION_1_0(v130);
  v133 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v132 = (v31 - v30);
  OUTLINED_FUNCTION_13_8();
  v32 = type metadata accessor for Parse();
  v33 = OUTLINED_FUNCTION_1_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v40 = v39 - v38;
  v128 = v35[2];
  v129 = v4;
  v128(v39 - v38, v4, v32);
  v41 = v35[11];
  v42 = OUTLINED_FUNCTION_61_5();
  v44 = v43(v42);
  if (v44 == *MEMORY[0x277D5C128])
  {
    v45 = v35[12];
    v46 = OUTLINED_FUNCTION_61_5();
    v47(v46);
    v48 = v134;
    v49 = OUTLINED_FUNCTION_63_4(v134);
    v50(v49, v40, v10);
    (*(v134 + 16))(v17, v2, v10);
    ContactNLv3Intent.init(intent:)(v17, v3);
    v51 = v2;
    v52 = v135;
    if ((ContactNLv3Intent.isContactDomain.getter() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (one-time initialization token for contactId == -1)
    {
LABEL_4:
      OUTLINED_FUNCTION_5_40();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v53, v54);
      IntentNodeTraversable.value<A>(forNode:)();
      if (v137)
      {
        rawValue = v10;
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.siriContacts);
        outlined init with copy of ContactNLv3Intent(v3, v52);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v56, v57))
        {
          OUTLINED_FUNCTION_5_5();
          v58 = swift_slowAlloc();
          v133 = v51;
          v59 = v58;
          OUTLINED_FUNCTION_8_3();
          v132 = swift_slowAlloc();
          v136 = v132;
          *v59 = 136315138;
          OUTLINED_FUNCTION_5_40();
          _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v60, v61);
          LODWORD(v130) = v57;
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v63 = v3;
          v65 = v64;
          OUTLINED_FUNCTION_2_25();
          v66 = v52;
          v68 = v67;
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v66, v69);
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v65, &v136);

          *(v59 + 4) = v70;
          _os_log_impl(&dword_26686A000, v56, v130, "ContactIntent: %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v132);
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();

          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v63, v68);
          (*(v48 + 8))(v133, rawValue);
        }

        else
        {

          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v52, type metadata accessor for ContactNLv3Intent);
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v3, type metadata accessor for ContactNLv3Intent);
          (*(v48 + 8))(v51, rawValue);
        }

        goto LABEL_34;
      }

LABEL_13:
      type metadata accessor for ContactsError();
      OUTLINED_FUNCTION_2_50();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v78, v79);
      OUTLINED_FUNCTION_56();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v3, v80);
      (*(v48 + 8))(v51, v10);
      goto LABEL_34;
    }

LABEL_37:
    swift_once();
    goto LABEL_4;
  }

  if (v44 == *MEMORY[0x277D5C160])
  {
    v71 = v35[12];
    v51 = v35 + 12;
    v72 = OUTLINED_FUNCTION_61_5();
    v73(v72);
    v74 = OUTLINED_FUNCTION_63_4(v133);
    v75 = v130;
    v76(v74, v40, v130);
    if (rawValue[2])
    {
      USOParse.preferredUserDialogAct.getter(v126);
      v77 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      if (__swift_getEnumTagSinglePayload(v126, 1, v77) != 1)
      {
        Siri_Nlu_External_UserDialogAct.contactIds.getter();
        v93 = v92;
        OUTLINED_FUNCTION_52(v77);
        v95 = *(v94 + 8);
        v96 = OUTLINED_FUNCTION_19_11();
        v98 = v97(v96);
        v10 = 0;
        v48 = *(v93 + 16);
        v3 = (v93 + 40);
        v52 = v132;
        while (1)
        {
          if (v48 == v10)
          {

            v75 = v130;
            goto LABEL_27;
          }

          if (v10 >= *(v93 + 16))
          {
            break;
          }

          v51 = &v125;
          v99 = *v3;
          v136 = *(v3 - 1);
          v137 = v99;
          MEMORY[0x28223BE20](v98);
          *(&v125 - 2) = &v136;

          if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v125 - 4), rawValue))
          {
            v122 = OUTLINED_FUNCTION_46_5();
            v123(v122, v130);

            goto LABEL_34;
          }

          ++v10;
          v3 += 2;
        }

        __break(1u);
        goto LABEL_37;
      }

      outlined destroy of Result<TemplatingResult, Error>(v126, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

LABEL_27:
    type metadata accessor for ReferenceResolutionClient();
    ReferenceResolutionClient.__allocating_init()();
    v100 = v127;
    USOParse.preferredUserDialogAct.getter(v127);
    v101 = v100;
    v102 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    OUTLINED_FUNCTION_60_6();
    if (__swift_getEnumTagSinglePayload(v103, v104, v105) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v101, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      Siri_Nlu_External_UserDialogAct.contactId.getter();
      v107 = v106;
      OUTLINED_FUNCTION_52(v102);
      v109 = *(v108 + 8);
      v110 = OUTLINED_FUNCTION_54_6();
      v111(v110);
      if (v107)
      {
LABEL_32:
        v114 = OUTLINED_FUNCTION_46_5();
        v115(v114, v75);

        goto LABEL_34;
      }
    }

    if (!specialized RRReferenceResolverProtocol.resolvePersonDisambiguationReference(from:)() || (UsoEntity_common_Person.contactId.getter(), v113 = v112, , !v113))
    {
      type metadata accessor for ContactsError();
      OUTLINED_FUNCTION_2_50();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v116, v117);
      OUTLINED_FUNCTION_56();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v118 = OUTLINED_FUNCTION_46_5();
      v119(v118, v75);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, static Logger.siriContacts);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v82, v83))
  {
    OUTLINED_FUNCTION_5_5();
    v84 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v85 = swift_slowAlloc();
    v136 = v85;
    *v84 = 136315138;
    *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573726150, 0xE500000000000000, &v136);
    _os_log_impl(&dword_26686A000, v82, v83, "Unexpected parse type: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  type metadata accessor for ContactsError();
  OUTLINED_FUNCTION_2_50();
  _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v86, v87);
  OUTLINED_FUNCTION_56();
  v128(v88, v129, v32);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v89 = v35[1];
  v90 = OUTLINED_FUNCTION_61_5();
  v91(v90);
LABEL_34:
  v120 = OUTLINED_FUNCTION_61_5();
  result._object = v121;
  result._countAndFlagsBits = v120;
  return result;
}

void Parse.confirmationResponse.getter()
{
  OUTLINED_FUNCTION_15();
  v235 = v1;
  v236 = v0;
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v229 = v4;
  v230 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_16();
  v218 = v7;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_4();
  v228 = v9;
  OUTLINED_FUNCTION_13_8();
  v10 = type metadata accessor for ContactNLv3Intent();
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v14 = type metadata accessor for NLIntent();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v217 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v29);
  v225 = &v217 - v30;
  OUTLINED_FUNCTION_13_8();
  v231 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v31 = OUTLINED_FUNCTION_1_0(v231);
  v222 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_16();
  v219 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_6();
  v226 = v37;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19_4();
  v227 = v39;
  OUTLINED_FUNCTION_13_8();
  v40 = type metadata accessor for USOParse();
  v41 = OUTLINED_FUNCTION_1_0(v40);
  v233 = v42;
  v234 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_16();
  v221 = v45;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_6();
  v224 = v47;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_19_4();
  v232 = v49;
  OUTLINED_FUNCTION_13_8();
  v50 = type metadata accessor for Parse();
  v51 = OUTLINED_FUNCTION_1_0(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_16();
  v220 = v56;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_6();
  v223 = v58;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  v61 = &v217 - v60;
  v62 = v53[2];
  v62(&v217 - v60, v236, v50);
  v63 = v53[11];
  v64 = OUTLINED_FUNCTION_43();
  v66 = v65(v64);
  if (v66 == *MEMORY[0x277D5C128])
  {
    v67 = v53[12];
    v68 = OUTLINED_FUNCTION_43();
    v69(v68);
    v70 = *(v17 + 32);
    v71 = OUTLINED_FUNCTION_19_11();
    v72(v71);
    (*(v17 + 16))(v22, v25, v14);
    ContactNLv3Intent.init(intent:)(v22, v0);
    ContactNLv3Intent.confirmationResponse.getter(v235);
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v73);
    (*(v17 + 8))(v25, v14);
    goto LABEL_56;
  }

  if (v66 == *MEMORY[0x277D5C150])
  {
    v74 = v53[12];
    v75 = OUTLINED_FUNCTION_43();
    v76(v75);
    v77 = v229;
    v78 = v230;
    (*(v229 + 32))(v228, v61, v230);
    Parse.DirectInvocation.identifier.getter();
    v80 = v79;
    OUTLINED_FUNCTION_21_11();
    v83 = v81 == 0xD00000000000001FLL && v82 == v80;
    if (v83 || (v84 = v81, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v85 = *(v77 + 8);
      v86 = OUTLINED_FUNCTION_58();
      v87(v86);

LABEL_10:
      v88 = MEMORY[0x277D5BED8];
LABEL_54:
      v201 = *v88;
      v202 = type metadata accessor for ConfirmationResponse();
      OUTLINED_FUNCTION_10_1(v202);
      v204 = v235;
      (*(v203 + 104))(v235, v201, v202);
      v159 = v204;
      v160 = 0;
      v158 = v202;
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_21_11();
    if (v84 == 0xD00000000000001CLL && v127 == v80)
    {
    }

    else
    {
      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v129 & 1) == 0)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v130 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v130, static Logger.siriContacts);
        v131 = *(v77 + 16);
        v132 = v218;
        v133 = OUTLINED_FUNCTION_40_8();
        v134(v133);
        v135 = Logger.logObject.getter();
        v136 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_33_12(v136))
        {
          OUTLINED_FUNCTION_5_5();
          v137 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_3();
          v138 = swift_slowAlloc();
          v237[0] = v138;
          *v137 = 136315138;
          Parse.DirectInvocation.identifier.getter();
          v139 = OUTLINED_FUNCTION_59_8();
          v140 = *(v77 + 8);
          v140(v139, v78);
          v141 = OUTLINED_FUNCTION_54_6();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v143);
          OUTLINED_FUNCTION_59_8();

          *(v137 + 4) = v132;
          OUTLINED_FUNCTION_74_3(&dword_26686A000, v144, v145, "Direct invocation %s is not a confirmation response.");
          __swift_destroy_boxed_opaque_existential_0Tm(v138);
          v146 = OUTLINED_FUNCTION_10_33();
          MEMORY[0x26D5E3300](v146);
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();

          v147 = OUTLINED_FUNCTION_58();
          (v140)(v147);
        }

        else
        {

          v205 = *(v77 + 8);
          v205(v132, v78);
          v206 = OUTLINED_FUNCTION_58();
          (v205)(v206);
        }

        v207 = v235;
        v158 = type metadata accessor for ConfirmationResponse();
        v159 = v207;
        goto LABEL_36;
      }
    }

    v178 = *(v77 + 8);
    v179 = OUTLINED_FUNCTION_58();
    v180(v179);
LABEL_53:
    v88 = MEMORY[0x277D5BED0];
    goto LABEL_54;
  }

  if (v66 == *MEMORY[0x277D5C160])
  {
    v89 = v53[12];
    v90 = OUTLINED_FUNCTION_43();
    v91(v90);
    v92 = v232;
    v93 = v233;
    (*(v233 + 32))(v232, v61, v234);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v94, static Logger.siriContacts);
    v95 = *(v93 + 16);
    v96 = v224;
    v95(v224, v92, v234);
    v236 = v0;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    v99 = OUTLINED_FUNCTION_21_2(v98);
    v100 = v225;
    if (v99)
    {
      OUTLINED_FUNCTION_5_5();
      v101 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v230 = swift_slowAlloc();
      v237[0] = v230;
      *v101 = 136315138;
      v102 = OUTLINED_FUNCTION_58();
      v103 = v234;
      (v95)(v102);
      v104 = String.init<A>(describing:)();
      v105 = v96;
      v107 = v106;
      v108 = *(v93 + 8);
      v108(v105, v103);
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v107, v237);

      *(v101 + 4) = v109;
      OUTLINED_FUNCTION_37_8(&dword_26686A000, v110, v0, "#confirmationResponse usoParse: %s");
      OUTLINED_FUNCTION_53_5();
      v92 = v232;
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      v111 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v111);
    }

    else
    {

      v108 = *(v93 + 8);
      v108(v96, v234);
    }

    v148 = v231;
    v149 = v226;
    USOParse.preferredUserDialogAct.getter(v100);
    OUTLINED_FUNCTION_57(v100, 1, v148);
    if (v83)
    {
      outlined destroy of Result<TemplatingResult, Error>(v100, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v151))
      {
        OUTLINED_FUNCTION_11_4();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_16_17();
        _os_log_impl(v152, v153, v154, v155, v156, 2u);
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      v157 = v92;
    }

    else
    {
      v164 = v222;
      v165 = v227;
      (*(v222 + 32))(v227, v100, v148);
      v166 = *(v164 + 16);
      v166(v149, v165, v148);
      v167 = v236;
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v169))
      {
        OUTLINED_FUNCTION_5_5();
        v171 = swift_slowAlloc();
        v230 = v108;
        v172 = v171;
        OUTLINED_FUNCTION_8_3();
        v173 = swift_slowAlloc();
        v237[0] = v173;
        *v172 = 136315138;
        v166(v219, v149, v231);
        v174 = String.init<A>(describing:)();
        v166 = v175;
        v176 = *(v164 + 8);
        v176(v149, v231);
        v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v166, v237);

        *(v172 + 4) = v177;
        _os_log_impl(&dword_26686A000, v168, v167, "#confirmationResponse userDialogAct: %s", v172, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v173);
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
        v108 = v230;
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      else
      {

        v176 = *(v164 + 8);
        v176(v149, v148);
      }

      v181 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
      v182 = v232;
      if (v181)
      {
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v184))
        {
          OUTLINED_FUNCTION_11_4();
          v185 = swift_slowAlloc();
          OUTLINED_FUNCTION_42_10(v185);
          OUTLINED_FUNCTION_16_17();
          _os_log_impl(v186, v187, v188, v189, v190, 2u);
          v176 = v166;
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();
        }

        v191 = OUTLINED_FUNCTION_41_11();
        (v176)(v191);
        v108(v182, v234);
        goto LABEL_10;
      }

      if (Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
      {
        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v193))
        {
          OUTLINED_FUNCTION_11_4();
          v194 = swift_slowAlloc();
          OUTLINED_FUNCTION_42_10(v194);
          OUTLINED_FUNCTION_16_17();
          _os_log_impl(v195, v196, v197, v198, v199, 2u);
          v176 = v166;
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();
        }

        v200 = OUTLINED_FUNCTION_41_11();
        (v176)(v200);
        v108(v182, v234);
        goto LABEL_53;
      }

      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v209))
      {
        OUTLINED_FUNCTION_11_4();
        v210 = swift_slowAlloc();
        OUTLINED_FUNCTION_42_10(v210);
        OUTLINED_FUNCTION_16_17();
        _os_log_impl(v211, v212, v213, v214, v215, 2u);
        v176 = v166;
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      v216 = OUTLINED_FUNCTION_41_11();
      (v176)(v216);
      v157 = v182;
    }

    v108(v157, v234);
    v158 = type metadata accessor for ConfirmationResponse();
    v159 = v235;
LABEL_36:
    v160 = 1;
LABEL_55:
    __swift_storeEnumTagSinglePayload(v159, v160, 1, v158);
    goto LABEL_56;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v112 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v112, static Logger.siriContacts);
  v62(v223, v236, v50);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_21_2(v114))
  {
    OUTLINED_FUNCTION_5_5();
    v115 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v236 = swift_slowAlloc();
    v237[0] = v236;
    *v115 = 136315138;
    v116 = OUTLINED_FUNCTION_36_12();
    (v62)(v116);
    v117 = String.init<A>(describing:)();
    v119 = v118;
    v120 = v53[1];
    OUTLINED_FUNCTION_67_4();
    v120();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, v237);

    *(v115 + 4) = v121;
    OUTLINED_FUNCTION_16_17();
    _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  else
  {

    v120 = v53[1];
    OUTLINED_FUNCTION_67_4();
    v161 = OUTLINED_FUNCTION_46_0();
    (v120)(v161);
  }

  v162 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v235, 1, 1, v162);
  v163 = OUTLINED_FUNCTION_43();
  (v120)(v163);
LABEL_56:
  OUTLINED_FUNCTION_14();
}