void (*specialized Dictionary._Variant.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = OUTLINED_FUNCTION_34_3();
  v2(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v10 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v11 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v10 + 40) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSShy11SiriNetwork21MessageCenterEndpointVGGMd, &_ss17_NativeDictionaryVySSShy11SiriNetwork21MessageCenterEndpointVGGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = *v5;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v10[4] = v17;
  if (v18)
  {
    v22 = *(*(*v5 + 56) + 8 * v17);
  }

  else
  {
    v22 = 0;
  }

  *v10 = v22;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    outlined destroy of String(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork21MessageCenterEndpointVGMd, &_sShy11SiriNetwork21MessageCenterEndpointVGMR);
    _NativeDictionary._delete(at:)();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t type metadata accessor for UMUserPersona()
{
  result = lazy cache variable for type metadata for UMUserPersona;
  if (!lazy cache variable for type metadata for UMUserPersona)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UMUserPersona);
  }

  return result;
}

uint64_t outlined assign with take of MessageCenterBrowserProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()()
{
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  v4 = *(type metadata accessor for NWBrowser.Result.Change() - 8);
  OUTLINED_FUNCTION_57_0();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()(v3, v8, v9, v0 + v6, v10);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  OUTLINED_FUNCTION_6_3();

  return v5();
}

uint64_t outlined init with copy of MessageCenterBrowserProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_71(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_14_3();
  v9(v8);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5();
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(uint64_t a1, uint64_t a2)
{
  v28[3] = &type metadata for MessageCenterEndpoint;
  v28[4] = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  v4 = swift_allocObject();
  v28[0] = v4;
  outlined init with copy of MessageCenterEndpoint(a1, (v4 + 2));
  if (*(a2 + 152))
  {
    v5 = 0x80000002235F64B0;
  }

  else
  {
    v5 = 0xEF726573776F7242;
  }

  if ((*(a2 + 152) & 1) != 0 || v5 != 0xEF726573776F7242)
  {
    *(a2 + 152);
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  outlined init with copy of UMUserPersonProtocol(v28, v27);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v27, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(v27);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_223515000, v8, v9, "checking device for remote intelligence %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DE38F0](v11, -1, -1);
    MEMORY[0x223DE38F0](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v16 = v4[5];
  v17 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v16);
  v18 = (*(v17 + 32))(v16, v17);
  v19 = specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)((v4 + 2));
  v20 = v19;
  if (v18 & 1) != 0 && (v19)
  {
    v7 = 1;
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109376;
      *(v23 + 4) = v18 & 1;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v20 & 1;
      _os_log_impl(&dword_223515000, v21, v22, "Device is not eligible for remote intelligence. meDevice = %{BOOL}d, supportsAI = %{BOOL}d", v23, 0xEu);
      MEMORY[0x223DE38F0](v23, -1, -1);
    }

    v7 = 0;
  }

LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v7;
}

uint64_t specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v84[-2] - v4;
  v89 = &type metadata for MessageCenterEndpoint;
  v6 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  v90 = v6;
  v88[0] = swift_allocObject();
  outlined init with copy of MessageCenterEndpoint(a1, v88[0] + 16);
  __swift_project_boxed_opaque_existential_1(v88, &type metadata for MessageCenterEndpoint);
  (*(v6 + 48))(&v86, &type metadata for MessageCenterEndpoint, v6);
  LOBYTE(v7) = v86;
  if (v86 == 2)
  {
    outlined init with copy of UMUserPersonProtocol(v88, &v86);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v85 = v11;
      *v10 = 136315138;
      outlined init with copy of UMUserPersonProtocol(&v86, v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(&v86);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v85);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_223515000, v8, v9, "Payload missing on endpoint %s. Falling back to builtin list", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DE38F0](v11, -1, -1);
      MEMORY[0x223DE38F0](v10, -1, -1);
    }

    else
    {

      v16 = __swift_destroy_boxed_opaque_existential_0(&v86);
    }

    MEMORY[0x28223BE20](v16);
    v81 = v88;
    if (specialized Sequence.contains(where:)(partial apply for closure #1 in MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:), (&v83 - 4), &outlined read-only object #0 of one-time initialization function for kSupportedDevices))
    {
      LOBYTE(v7) = 1;
      goto LABEL_30;
    }

    v20 = v89;
    v21 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v22 = (*(v21 + 24))(v20, v21);
    v7 = v23;
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v22;
    v86 = v22;
    v87 = v23;
    strcpy(v84, "^iPhone(\\d+)");
    BYTE1(v84[3]) = 0;
    HIWORD(v84[3]) = -5120;
    v25 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
    v26 = lazy protocol witness table accessor for type String and conformance String();
    v81 = v26;
    v82 = v26;
    StringProtocol.range<A>(of:options:range:locale:)();
    v28 = v27;
    outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v28)
    {
      v86 = v24;
      v87 = v7;
      strcpy(v84, "^iPad(\\d+)");
      HIBYTE(v84[2]) = 0;
      v84[3] = -369098752;
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
      v81 = v26;
      v82 = v26;
      StringProtocol.range<A>(of:options:range:locale:)();
      v30 = v29;
      outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v30 & 1) == 0)
      {
        v53 = String.subscript.getter();
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v60 = MEMORY[0x223DE2130](v53, v55, v57, v59);
        v62 = v61;

        v63 = specialized Collection.dropFirst(_:)(4uLL, v60, v62);
        v67 = v66;
        if ((v63 ^ v64) >= 0x4000)
        {
          v68 = v63;
          v69 = v64;
          v70 = v65;
          v71 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v63, v64, v65, v66, 10);
          if ((v72 & 0x100) != 0)
          {
            v73 = specialized _parseInteger<A, B>(ascii:radix:)(v68, v69, v70, v67, 10);
            v79 = v78;

            if ((v79 & 1) == 0)
            {
LABEL_26:
              v77 = v73 <= 13;
LABEL_27:
              LOBYTE(v7) = !v77;
              goto LABEL_30;
            }
          }

          else
          {
            v73 = v71;
            v74 = v72;

            if ((v74 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_25:
          LOBYTE(v7) = 0;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v31 = String.subscript.getter();
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = MEMORY[0x223DE2130](v31, v33, v35, v37);
      v40 = v39;

      v41 = specialized Collection.dropFirst(_:)(6uLL, v38, v40);
      v45 = v44;
      if ((v41 ^ v42) >= 0x4000)
      {
        v46 = v41;
        v47 = v42;
        v48 = v43;
        v49 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v41, v42, v43, v44, 10);
        if ((v50 & 0x100) != 0)
        {
          v51 = specialized _parseInteger<A, B>(ascii:radix:)(v46, v47, v48, v45, 10);
          v76 = v75;

          if (v76)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v51 = v49;
          v52 = v50;

          if (v52)
          {
            goto LABEL_25;
          }
        }

        v77 = v51 <= 15;
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v7 & 1;
    _os_log_impl(&dword_223515000, v17, v18, "Found endpoint with Apple Intelligence support: %{BOOL}d", v19, 8u);
    MEMORY[0x223DE38F0](v19, -1, -1);
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v88);
  return v7 & 1;
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a2;
  v4 = type metadata accessor for NWEndpoint();
  v2[5] = v4;
  v2[6] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  v2[18] = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v4 - 8) + 16))();

  return MEMORY[0x2822009F8](specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:), a2, 0);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  v21 = v18[17];
  outlined init with copy of UMUserPersonProtocol((v18 + 2), (v18 + 7));

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[17];
    v25 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = MessageCenterEndpointBrowser.description.getter();
    v28 = v27;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &a10);

    OUTLINED_FUNCTION_47_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_55_1();
    v29 = __swift_destroy_boxed_opaque_existential_0(v18 + 7);
    OUTLINED_FUNCTION_70_0(v29, v30, &a10);
    OUTLINED_FUNCTION_68_2();
    *(v25 + 14) = v28;
    OUTLINED_FUNCTION_16_7();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v18 + 7);
  }

  v36 = v18[17];
  Strong = swift_unknownObjectWeakLoadStrong();
  v18[19] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterActorBrowser.handleEndpointFound(_:on:));
    v57 = v38;
    v39 = swift_task_alloc();
    v18[20] = v39;
    *v39 = v18;
    OUTLINED_FUNCTION_31_3(v39);
    OUTLINED_FUNCTION_26_3();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, v57, a10);
  }

  else
  {
    OUTLINED_FUNCTION_2_18(v18 + 2);
    OUTLINED_FUNCTION_26_3();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
  }
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[17];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_18((v0 + 16));

  return v1();
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a2;
  v4 = type metadata accessor for NWEndpoint();
  v2[5] = v4;
  v2[6] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  v2[18] = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v4 - 8) + 16))();

  return MEMORY[0x2822009F8](specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:), a2, 0);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  v21 = v18[17];
  outlined init with copy of UMUserPersonProtocol((v18 + 2), (v18 + 7));

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[17];
    v25 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = MessageCenterEndpointBrowser.description.getter();
    v28 = v27;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &a10);

    OUTLINED_FUNCTION_47_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_55_1();
    v29 = __swift_destroy_boxed_opaque_existential_0(v18 + 7);
    OUTLINED_FUNCTION_70_0(v29, v30, &a10);
    OUTLINED_FUNCTION_68_2();
    *(v25 + 14) = v28;
    OUTLINED_FUNCTION_16_7();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v18 + 7);
  }

  v36 = v18[17];
  Strong = swift_unknownObjectWeakLoadStrong();
  v18[19] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_4_15(async function pointer to specialized MessageCenterActorBrowser.handleEndpointLost(_:on:));
    v57 = v38;
    v39 = swift_task_alloc();
    v18[20] = v39;
    *v39 = v18;
    OUTLINED_FUNCTION_31_3(v39);
    OUTLINED_FUNCTION_26_3();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, v57, a10);
  }

  else
  {
    OUTLINED_FUNCTION_2_18(v18 + 2);
    OUTLINED_FUNCTION_26_3();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
  }
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[17];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a3;
  v6 = type metadata accessor for NWEndpoint();
  v3[5] = v6;
  v7 = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  v3[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  v9 = *(*(v6 - 8) + 16);
  (v9)(boxed_opaque_existential_1, a1, v6);
  v3[10] = v6;
  v3[11] = v7;
  v3[33] = __swift_allocate_boxed_opaque_existential_1(v3 + 7);
  v9();

  return MEMORY[0x2822009F8](specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:), a3, 0);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:)()
{
  v24 = v0;
  v1 = v0[32];
  outlined init with copy of UMUserPersonProtocol((v0 + 2), (v0 + 12));
  outlined init with copy of UMUserPersonProtocol((v0 + 7), (v0 + 17));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v4 = 136315394;
    outlined init with copy of UMUserPersonProtocol((v0 + 12), (v0 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v23);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    outlined init with copy of UMUserPersonProtocol((v0 + 17), (v0 + 27));
    v9 = String.init<A>(describing:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v23);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_223515000, v2, v3, "Browser changed endpoint %s->%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  v13 = v0[32];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v15 = Strong;
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:));
    v22 = v16;
    v17 = swift_task_alloc();
    v0[35] = v17;
    *v17 = v0;
    v17[1] = specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:);
    v18 = v0[32];
    v19 = v0[33];

    return v22(v19, v18, v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_2_18(v0 + 7);

    return v21();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[35];
  v3 = v1[34];
  v4 = v1[32];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_2_18((v0 + 56));

  return v1();
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[106] = a3;
  v3[105] = a2;
  v6 = type metadata accessor for NWEndpoint();
  v3[41] = v6;
  v3[42] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 38);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  v3[107] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser);

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:), a3, 0);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)()
{
  OUTLINED_FUNCTION_40_3();
  outlined init with copy of UMUserPersonProtocol(v0 + 304, v0 + 384);
  MessageCenterEndpoint.init(_:)((v0 + 384), v0 + 344);
  *(v0 + 864) = 0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  *(v0 + 944) = specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(v0 + 344, *(v0 + 848)) & 1;
  swift_getObjectType();
  v3 = *(v1 + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:), v5, v4);
}

{
  v35 = v0;
  v1 = v0[113];
  OUTLINED_FUNCTION_59_0();
  v2 = v0[106];
  MessageCenterActorBrowser.addActiveEndpoint(_:to:)();
  OUTLINED_FUNCTION_20_3();
  v33 = &type metadata for MessageCenterEndpoint;
  v34 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_67(v3);
  MessageCenterDevice.init(actor:endpoint:)(&v31, v32, (v0 + 2));
  if (v1)
  {
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v4, v5, v6);
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v7, v8, v9);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    v10 = v0[106];
    v11 = v1;
    v12 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_52_2())
    {
      OUTLINED_FUNCTION_55();
      v13 = OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_69_0(5.7779e-34);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_58_1(v14);
      OUTLINED_FUNCTION_15_5(&dword_223515000, v15, v16, "Ignoring endpoint %@");
      outlined destroy of NetworkConnectionProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

LABEL_10:
    OUTLINED_FUNCTION_2_18(v0 + 38);

    return v30();
  }

  v17 = v0[106];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[114] = Strong;
  if (!Strong)
  {
    outlined destroy of MessageCenterDevice((v0 + 2));
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v24, v25, v26);
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v27, v28, v29);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    goto LABEL_10;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  v0[115] = v19;
  *v19 = v20;
  v19[1] = specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:);
  OUTLINED_FUNCTION_59_0();

  return MessageCenter.didFindDevice(_:for:)((v0 + 2), v21, v22);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[115];
  v3 = v1[114];
  v4 = v1[106];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined destroy of MessageCenterDevice(v0 + 16);
  OUTLINED_FUNCTION_25_3();
  outlined destroy of NetworkConnectionProtocol?(v1, v2, v3);
  OUTLINED_FUNCTION_25_3();
  outlined destroy of NetworkConnectionProtocol?(v4, v5, v6);
  outlined destroy of MessageCenterEndpoint(v0 + 344);
  OUTLINED_FUNCTION_2_18((v0 + 304));

  return v7();
}

{
  v23 = v0;
  v1 = v0[111];
  OUTLINED_FUNCTION_59_0();
  v2 = v0[106];
  MessageCenterActorBrowser.addActiveIneligibleEndpoint(_:to:)();
  OUTLINED_FUNCTION_20_3();
  v21 = &type metadata for MessageCenterEndpoint;
  v22 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_67(v3);
  MessageCenterDevice.init(actor:endpoint:)(&v19, v20, (v0 + 20));
  if (v1)
  {
    outlined destroy of NetworkConnectionProtocol?((v0 + 53), &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    v4 = v0[106];
    v5 = v1;
    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_52_2())
    {
      OUTLINED_FUNCTION_55();
      v7 = OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_69_0(5.7779e-34);
      v8 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_58_1(v8);
      OUTLINED_FUNCTION_15_5(&dword_223515000, v9, v10, "Ignoring endpoint %@");
      outlined destroy of NetworkConnectionProtocol?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

LABEL_10:
    OUTLINED_FUNCTION_2_18(v0 + 38);

    return v18();
  }

  v11 = v0[106];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[116] = Strong;
  if (!Strong)
  {
    outlined destroy of MessageCenterDevice((v0 + 20));
    outlined destroy of NetworkConnectionProtocol?((v0 + 53), &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    goto LABEL_10;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  v0[117] = v13;
  *v13 = v14;
  v13[1] = specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:);
  OUTLINED_FUNCTION_59_0();

  return MessageCenter.didLoseDevice(_:for:)((v0 + 20), v15, v16);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[117];
  v3 = v1[116];
  v4 = v1[106];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined destroy of MessageCenterDevice(v0 + 160);
  outlined destroy of NetworkConnectionProtocol?(v0 + 424, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  outlined destroy of MessageCenterEndpoint(v0 + 344);
  OUTLINED_FUNCTION_2_18((v0 + 304));

  return v1();
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)(uint64_t a1)
{
  v2 = v1[106];
  v3 = v1[105];
  v1[109] = *(v3 + 192);
  v1[110] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  v21 = *(v18 + 880);
  v22 = *(v18 + 872);
  v23 = *(v18 + 848);
  v24 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  swift_beginAccess();
  v25 = *(v23 + v24);

  v26 = OUTLINED_FUNCTION_32();
  v27 = specialized Dictionary.subscript.getter(v26);

  if (!v27)
  {
    *(v18 + 456) = 0;
    *(v18 + 424) = 0u;
    *(v18 + 440) = 0u;
    v28 = *(v18 + 864);
    goto LABEL_8;
  }

  v28 = *(v18 + 864);
  *(swift_task_alloc() + 16) = v18 + 344;
  specialized Sequence.first(where:)(partial apply for closure #1 in MessageCenterActorBrowser.handleEndpointChanged(_:on:), v27, v18 + 424);
  *(v18 + 888) = v28;

  if (!*(v18 + 448))
  {
LABEL_8:
    *(v18 + 896) = v28;
    v38 = *(v18 + 848);
    goto LABEL_13;
  }

  if (*(v18 + 944) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v18 + 424, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    outlined destroy of MessageCenterEndpoint(v18 + 344);
    OUTLINED_FUNCTION_2_18((v18 + 304));
    OUTLINED_FUNCTION_26_3();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }

  v39 = *(v18 + 848);
  outlined init with copy of MessageCenterEndpoint(v18 + 344, v18 + 584);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_55();
    v43 = OUTLINED_FUNCTION_54();
    a9 = v43;
    *v42 = 136315138;
    MessageCenterEndpoint.description.getter();
    OUTLINED_FUNCTION_55_1();
    v44 = outlined destroy of MessageCenterEndpoint(v18 + 584);
    OUTLINED_FUNCTION_70_0(v44, v45, &a9);
    OUTLINED_FUNCTION_68_2();
    *(v42 + 4) = v18 + 584;
    OUTLINED_FUNCTION_16_7();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    outlined destroy of MessageCenterEndpoint(v18 + 584);
  }

  v51 = *(v18 + 848);
LABEL_13:
  OUTLINED_FUNCTION_26_3();

  return MEMORY[0x2822009F8](v52, v53, v54);
}

{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  v21 = *(v18 + 880);
  v22 = *(v18 + 872);
  v23 = *(v18 + 848);
  v24 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints;
  swift_beginAccess();
  v25 = *(v23 + v24);

  v26 = OUTLINED_FUNCTION_32();
  v27 = specialized Dictionary.subscript.getter(v26);

  if (v27)
  {
    v28 = *(v18 + 896);
    *(swift_task_alloc() + 16) = v18 + 344;
    specialized Sequence.first(where:)(partial apply for closure #1 in MessageCenterActorBrowser.handleEndpointChanged(_:on:), v27, v18 + 464);
    *(v18 + 904) = v28;

    if (*(v18 + 488) && *(v18 + 944) == 1)
    {
      v29 = *(v18 + 848);
      outlined init with copy of MessageCenterEndpoint(v18 + 344, v18 + 504);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_55();
        v33 = OUTLINED_FUNCTION_54();
        a9 = v33;
        *v32 = 136315138;
        MessageCenterEndpoint.description.getter();
        OUTLINED_FUNCTION_55_1();
        v34 = outlined destroy of MessageCenterEndpoint(v18 + 504);
        OUTLINED_FUNCTION_70_0(v34, v35, &a9);
        OUTLINED_FUNCTION_68_2();
        *(v32 + 4) = v18 + 504;
        OUTLINED_FUNCTION_16_7();
        _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        OUTLINED_FUNCTION_7_13();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        outlined destroy of MessageCenterEndpoint(v18 + 504);
      }

      v50 = *(v18 + 848);
      OUTLINED_FUNCTION_26_3();

      return MEMORY[0x2822009F8](v51, v52, v53);
    }
  }

  else
  {
    *(v18 + 496) = 0;
    *(v18 + 464) = 0u;
    *(v18 + 480) = 0u;
  }

  outlined destroy of NetworkConnectionProtocol?(v18 + 464, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  outlined destroy of NetworkConnectionProtocol?(v18 + 424, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  outlined destroy of MessageCenterEndpoint(v18 + 344);
  OUTLINED_FUNCTION_2_18((v18 + 304));
  OUTLINED_FUNCTION_26_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointLost(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v6 = type metadata accessor for NWEndpoint();
  v3[23] = v6;
  v3[24] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 20);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  v3[46] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser);

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointLost(_:on:), a3, 0);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointLost(_:on:)()
{
  OUTLINED_FUNCTION_40_3();
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[23];
  v5 = v0[24];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 20, v4);
  LOBYTE(v4) = specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(v6, v1, v4, v5);
  swift_getObjectType();
  v7 = *(v2 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v4)
  {
    v10 = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
  }

  else
  {
    v10 = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v21 = v0;
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  *(v0 + 392) = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = specialized Dictionary.subscript.getter(v2);

  if (!v6)
  {
LABEL_8:
    OUTLINED_FUNCTION_2_18((v0 + 160));
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X1, X16 }
  }

  *(swift_task_alloc() + 16) = v0 + 160;
  specialized Sequence.first(where:)(partial apply for closure #1 in MessageCenterActorBrowser.handleEndpointLost(_:on:), v6, v0 + 240);

  if (!*(v0 + 264))
  {
    outlined destroy of NetworkConnectionProtocol?(v0 + 240, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    goto LABEL_8;
  }

  v7 = *(v0 + 256);
  *(v0 + 200) = *(v0 + 240);
  *(v0 + 216) = v7;
  *(v0 + 232) = *(v0 + 272);
  OUTLINED_FUNCTION_20_3();
  v19 = &type metadata for MessageCenterEndpoint;
  v20 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_66_1(v8);
  MessageCenterDevice.init(actor:endpoint:)(&v17, v18, v0 + 16);
  v9 = *(v0 + 360);
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_29();
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[45];
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_32();
  specialized Dictionary._Variant.removeValue(forKey:)(v4, v5);
  swift_endAccess();

  OUTLINED_FUNCTION_2_18(v0 + 20);

  return v6();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[45];
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_32();
  specialized Dictionary._Variant.removeValue(forKey:)(v5, v6);
  swift_endAccess();

  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
  v8 = v0[47];
  v9 = v0[48];
  v10 = v0[45];

  return MessageCenterActorBrowser.handleActorInvalidation(error:for:)(0, v8, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 416);
  v3 = *(v1 + 360);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointLost(_:on:), v3, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[45];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[53] = Strong;
  if (Strong)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_27_2();
    v0[54] = v3;
    *v3 = v4;
    v3[1] = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
    v5 = v0[47];
    v6 = v0[48];

    return MessageCenter.didLoseDevice(_:for:)((v0 + 2), v5, v6);
  }

  else
  {
    outlined destroy of MessageCenterDevice((v0 + 2));
    outlined destroy of MessageCenterEndpoint((v0 + 25));
    OUTLINED_FUNCTION_2_18(v0 + 20);

    return v8();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[54];
  v3 = v1[53];
  v4 = v1[45];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined destroy of MessageCenterDevice(v0 + 16);
  outlined destroy of MessageCenterEndpoint(v0 + 200);
  OUTLINED_FUNCTION_2_18((v0 + 160));

  return v1();
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointLost(_:on:)(uint64_t a1)
{
  v3 = v1[44];
  v2 = v1[45];
  v1[47] = *(v3 + 192);
  v1[48] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

{
  v3 = v1[44];
  v2 = v1[45];
  v1[50] = *(v3 + 192);
  v1[51] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointFound(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v5 = type metadata accessor for NWEndpoint();
  v3[23] = v5;
  v3[24] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 20);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  v7 = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser);
  swift_getObjectType();
  v8 = *(v7 + 8);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointFound(_:on:), v10, v9);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointFound(_:on:)(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v1[37] = *(v3 + 192);
  v1[38] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointFound(_:on:)()
{
  v47 = v0;
  outlined init with copy of UMUserPersonProtocol((v0 + 20), (v0 + 30));
  MessageCenterEndpoint.init(_:)(v0 + 30, (v0 + 25));
  OUTLINED_FUNCTION_20_3();
  v46[3] = &type metadata for MessageCenterEndpoint;
  v46[4] = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_66_1(v1);
  MessageCenterDevice.init(actor:endpoint:)(&v45, v46, (v0 + 2));
  v4 = v0[38];
  v5 = specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)((v0 + 25), v0[36]);
  v6 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;

  v7 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_43_2();

  v8 = OUTLINED_FUNCTION_52_2();
  if ((v5 & 1) == 0)
  {
    if (v8)
    {
      v33 = v0[37];
      v32 = v0[38];
      v34 = OUTLINED_FUNCTION_55();
      v35 = OUTLINED_FUNCTION_54();
      v46[0] = v35;
      *(v34 + 4) = OUTLINED_FUNCTION_65_1(4.8149e-34, v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_51_2(&dword_223515000, v41, v6, "Endpoint for persona %s does not support remote intelligence");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_13();
    }

    v42 = v0[37];
    v43 = v0[38];
    v44 = v0[36];
    MessageCenterActorBrowser.addActiveIneligibleEndpoint(_:to:)();
LABEL_15:
    outlined destroy of MessageCenterDevice((v0 + 2));
    outlined destroy of MessageCenterEndpoint((v0 + 25));
    OUTLINED_FUNCTION_2_18(v0 + 20);
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X1, X16 }
  }

  if (v8)
  {
    v10 = v0[37];
    v9 = v0[38];
    v11 = OUTLINED_FUNCTION_55();
    v12 = OUTLINED_FUNCTION_54();
    v46[0] = v12;
    *(v11 + 4) = OUTLINED_FUNCTION_65_1(4.8149e-34, v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_51_2(&dword_223515000, v18, v6, "Endpoint created for persona %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  v19 = v0[37];
  v20 = v0[38];
  v21 = v0[36];
  MessageCenterActorBrowser.addActiveEndpoint(_:to:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  if (!Strong)
  {
    goto LABEL_15;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  v0[40] = v23;
  *v23 = v24;
  v23[1] = specialized MessageCenterActorBrowser.handleEndpointFound(_:on:);
  v25 = v0[37];
  v26 = v0[38];
  OUTLINED_FUNCTION_64_0();

  return MessageCenter.didFindDevice(_:for:)(v27, v28, v29);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[40];
  v3 = v1[39];
  v4 = v1[36];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint()
{
  result = lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined init with copy of UMUserPersonProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_13_4(v3);
  (*v4)(a2);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload()
{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_61_0()
{
  v2 = v1[110];
  v3 = v1[109];
  v4 = v1[106];
  return v0;
}

id OUTLINED_FUNCTION_69_0(float a1)
{
  *v2 = a1;

  return v1;
}

void (*MessageCenterProtocol.errorDelegate.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MessageCenterProtocol.errorDelegate.modify(v2);
  return MessageCenterProtocol.errorDelegate.modify;
}

void MessageCenterProtocol.errorDelegate.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*MessageCenterProtocol.errorDelegate.modify(void *a1))(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return MessageCenterProtocol.errorDelegate.modify;
}

uint64_t MessageCenterProtocol.instrumentationEventStream.getter@<X0>(uint64_t a1@<X8>)
{
  return MessageCenterProtocol.instrumentationEventStream.getter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMR);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)();
}

{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v5 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4);
  v6 = *(v5 + 104);
  v22 = v5 + 104;
  OUTLINED_FUNCTION_57_0();
  v23 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_34(v10);
  *v11 = v12;
  v11[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t specialized MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:toPersona:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toPersona:)();
}

{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v5 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4);
  v6 = *(v5 + 120);
  v22 = v5 + 120;
  OUTLINED_FUNCTION_57_0();
  v23 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_34(v10);
  *v11 = v12;
  v11[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t specialized MessageCenterProtocol.sendMessage(_:toPersona:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:toPersona:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:toPersona:timeout:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:to:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:to:)();
}

{
  OUTLINED_FUNCTION_21();
  v4 = *(OUTLINED_FUNCTION_13_5(v0, v1, v2, v3) + 136);
  OUTLINED_FUNCTION_10_6();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_34(v8);
  *v9 = v10;
  v9[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  v11 = OUTLINED_FUNCTION_7_14();

  return v12(v11);
}

uint64_t specialized MessageCenterProtocol.sendMessage(_:to:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:to:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:to:timeout:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:to:timeout:)();
}

uint64_t MessageCenterProtocol.reset()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.reset()();
}

uint64_t key path setter for MessageCenterProtocol.errorDelegate : <A>A(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_unknownObjectRetain();
  return MessageCenterProtocol.errorDelegate.setter(v2);
}

uint64_t key path setter for MessageCenterProtocol.instrumentationEventStream : <A>A(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(a1, &v7 - v4, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  return MessageCenterProtocol.instrumentationEventStream.setter(v5);
}

void (*MessageCenterProtocol.instrumentationEventStream.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  OUTLINED_FUNCTION_11_1(v2);
  v4 = *(v3 + 64);
  *a1 = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  a1[1] = v5;
  MessageCenterProtocol.instrumentationEventStream.getter(v5);
  return MessageCenterProtocol.instrumentationEventStream.modify;
}

void MessageCenterProtocol.instrumentationEventStream.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(*(a1 + 8), v2, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v2, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  }

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  free(v3);

  free(v2);
}

SiriNetwork::MessageCenter::MessageCenterApplicationType_optional __swiftcall MessageCenter.MessageCenterApplicationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MessageCenter.MessageCenterApplicationType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MessageCenter.MessageCenterApplicationType@<X0>(void *a1@<X8>)
{
  result = MessageCenter.MessageCenterApplicationType.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for actorSystem()
{
  v0 = type metadata accessor for NWListener.Service();
  v1 = OUTLINED_FUNCTION_11_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  NWListener.Service.init(applicationService:)();
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  v4 = type metadata accessor for NWActorSystem();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14_3();
  result = NWActorSystem.init(service:parameters:)();
  qword_281327350 = v4;
  unk_281327358 = &protocol witness table for NWActorSystem;
  static MessageCenter.actorSystem = result;
  return result;
}

uint64_t key path getter for MessageCenter.messageDelegate : MessageCenter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 168);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for MessageCenter.messageDelegate : MessageCenter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 168) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t MessageCenter.messageDelegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 168);
  return result;
}

uint64_t MessageCenter.messageDelegate.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_95();
  *(v1 + 168) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MessageCenter.messageDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 168);
  v3[3] = Strong;
  v3[4] = v5;
  return MessageCenter.messageDelegate.modify;
}

uint64_t key path getter for MessageCenter.errorDelegate : MessageCenter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 184);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for MessageCenter.errorDelegate : MessageCenter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 184) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t MessageCenter.errorDelegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 184);
  return result;
}

uint64_t MessageCenter.errorDelegate.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_95();
  *(v1 + 184) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MessageCenter.errorDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 184);
  v3[3] = Strong;
  v3[4] = v5;
  return MessageCenter.errorDelegate.modify;
}

uint64_t MessageCenter.init(_:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *a1;
  swift_defaultActor_initialize();
  *(v2 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 168) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 184) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  if (one-time initialization token for messageCenter != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.messageCenter);
  (*(*(v18 - 8) + 16))(v2 + v17, v19, v18);
  *(v2 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_started) = 0;
  v20 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_registeredMessages;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork23MessageCenterMessagable_pXpMd, &_s11SiriNetwork23MessageCenterMessagable_pXpMR);
  *(v2 + v20) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 152) = v16;
  v21 = type metadata accessor for MessageCenterActorBrowser();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v2 + 112) = MessageCenterActorBrowser.init(browserType:usePersona:)(0, 1);
  v24 = type metadata accessor for MessageCenterActorListenerPublisher();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = MessageCenterActorListenerPublisher.init()();
  v28 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher, type metadata accessor for MessageCenterActorListenerPublisher);
  *(v2 + 120) = v27;
  *(v2 + 128) = v28;
  v29 = *(v9 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterEventProtocol_pMd, &_s11SiriNetwork26MessageCenterEventProtocol_pMR);
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v8, v4);
  v30 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_instrumentationEventStream;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v15, v13, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMR);
  v31 = *(v9 + 48);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMR);
  v33 = *(v32 - 8);
  (*(v33 + 32))(v2 + v30, v13, v32);
  __swift_storeEnumTagSinglePayload(v2 + v30, 0, 1, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v35 = *(v34 - 8);
  (*(v35 + 8))(&v13[v31], v34);
  v36 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  outlined init with take of (stream: AsyncStream<MessageCenterEventProtocol>, continuation: AsyncStream<MessageCenterEventProtocol>.Continuation)(v15, v13);
  (*(v35 + 32))(v2 + v36, &v13[*(v9 + 48)], v34);
  __swift_storeEnumTagSinglePayload(v2 + v36, 0, 1, v34);
  (*(v33 + 8))(v13, v32);
  return v2;
}

uint64_t MessageCenter.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v3 = OUTLINED_FUNCTION_11_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, &v21 - v6, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v10 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_66_2(v10, v11, v9);
  if (v12)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v7, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    OUTLINED_FUNCTION_13_4(v9);
    (*(v13 + 8))(v7, v9);
  }

  v14 = *(v1 + 112);

  v15 = *(v1 + 120);
  swift_unknownObjectRelease();
  outlined destroy of weak ConnectionProviderDelegate?(v1 + 136);
  outlined destroy of weak ConnectionProviderDelegate?(v1 + 160);
  outlined destroy of weak ConnectionProviderDelegate?(v1 + 176);
  v16 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_4(v17);
  (*(v18 + 8))(v1 + v16);
  v19 = *(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_registeredMessages);

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_instrumentationEventStream, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v1 + v8, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MessageCenter.__deallocating_deinit()
{
  MessageCenter.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t MessageCenter.setMessageDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.setMessageDelegate(_:), v2);
}

uint64_t MessageCenter.setMessageDelegate(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  OUTLINED_FUNCTION_95();
  *(v1 + 168) = v2;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_6_3();

  return v4();
}

uint64_t MessageCenter.setErrorDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.setErrorDelegate(_:), v2);
}

uint64_t MessageCenter.setErrorDelegate(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  OUTLINED_FUNCTION_95();
  *(v1 + 184) = v2;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_6_3();

  return v4();
}

uint64_t MessageCenter.getActiveDevices()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenter.getActiveDevices(), v0);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[3] = *(v0[2] + 112);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterActorBrowser.getActiveEndpointsDevices()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74_1();

  return v7(v6);
}

uint64_t static MessageCenter.makeMessageCenter(applicationType:)(char *a1)
{
  v5 = *a1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return MessageCenter.init(_:)(&v5);
}

uint64_t MessageCenter.start()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenter.start(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_started) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_57_1(v3))
    {
      v4 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v4);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "message center is already running");
      OUTLINED_FUNCTION_42_0();
    }

    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    OUTLINED_FUNCTION_60();
    *v7 = 0;
    *(v7 + 8) = 8;
    swift_willThrow();
    OUTLINED_FUNCTION_6_3();

    return v8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_started) = 1;
    v0[3] = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_57_1(v11))
    {
      v12 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v12);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v13, v14, "starting MessageCenter...");
      OUTLINED_FUNCTION_42_0();
    }

    v15 = v0[2];

    v0[4] = *(v15 + 120);
    OUTLINED_FUNCTION_54_2();
    swift_unknownObjectRetain();
    v16 = OUTLINED_FUNCTION_14_5();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 16);
  *(*(v0 + 32) + 184) = &protocol witness table for MessageCenter;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[5] = *(v0[2] + 120);
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterActorListenerPublisher.publish()();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;

  swift_unknownObjectRelease();
  if (v0)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    v12 = *(v3 + 16);
    OUTLINED_FUNCTION_86_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[2] + v0[3];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_57_1(v3))
  {
    v4 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v4);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "published listener");
    OUTLINED_FUNCTION_42_0();
  }

  v7 = v0[2];

  if (*(v7 + 152))
  {
    v8 = "remoteIntelligenceClient";
  }

  else
  {
    v8 = "mits = %@ tfoSynDataAcked = %@}";
  }

  if ((v8 | 0x8000000000000000) == 0x80000002235F6460)
  {

LABEL_9:
    v0[7] = *(v0[2] + 112);
    OUTLINED_FUNCTION_54_2();

    v10 = OUTLINED_FUNCTION_14_5();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_4();

  return v13();
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 16);
  *(*(v0 + 56) + 144) = &protocol witness table for MessageCenter;
  swift_unknownObjectWeakAssign();

  v2 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[8] = *(v0[2] + 112);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterActorBrowser.start()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = MessageCenter.start();
  }

  else
  {
    v11 = v3[8];
    v12 = v3[2];

    v10 = MessageCenter.start();
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16) + *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_57_1(v3))
  {
    v4 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v4);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "started browser");
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_26_4();

  return v7();
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t MessageCenter.register(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.register(_:), v2);
}

uint64_t MessageCenter.register(_:)()
{
  OUTLINED_FUNCTION_43();
  v18 = v0;
  *(v0 + 16) = *(v0 + 40);
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork23MessageCenterMessagable_pXpMd, &_s11SiriNetwork23MessageCenterMessagable_pXpMR);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    v7 = OUTLINED_FUNCTION_55();
    v8 = OUTLINED_FUNCTION_54();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v17);
    _os_log_impl(&dword_223515000, v5, v6, "Registering message of type: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_registeredMessages;
  swift_beginAccess();
  v13 = *(v10 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v10 + v12);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v9, v2, v4, isUniquelyReferenced_nonNull_native);
  *(v10 + v12) = v17;

  swift_endAccess();
  OUTLINED_FUNCTION_6_3();

  return v15();
}

uint64_t MessageCenter.sendMessage(_:to:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[104] = v0;
  v1[103] = v2;
  v1[102] = v3;
  v1[101] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v5);
  v7 = *(v6 + 64);
  v1[105] = OUTLINED_FUNCTION_68();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v8);
  v10 = *(v9 + 64);
  v1[106] = OUTLINED_FUNCTION_68();
  v11 = type metadata accessor for MessageCenterEvent();
  v1[107] = v11;
  OUTLINED_FUNCTION_11_1(v11);
  v13 = *(v12 + 64);
  v1[108] = OUTLINED_FUNCTION_68();
  v14 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *(v1 + 872);
  *v4 = *v2;
  *(v3 + 880) = v0;

  OUTLINED_FUNCTION_108_0();
  v7 = *(v6 + 832);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[105];
  __swift_destroy_boxed_opaque_existential_0(v0 + 89);
  outlined destroy of MessageCenterDevice((v0 + 2));

  OUTLINED_FUNCTION_26_4();

  return v4();
}

{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v0 + 89);
  outlined destroy of MessageCenterDevice((v0 + 2));
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[105];

  OUTLINED_FUNCTION_6_3();

  return v5();
}

uint64_t MessageCenter.sendMessage(_:to:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_82_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_105_0();
  a22 = v24;
  outlined init with copy of UMUserPersonProtocol(*(v24 + 816), v24 + 592);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27MessageCenterDeviceProtocol_pMd, &_s11SiriNetwork27MessageCenterDeviceProtocol_pMR);
  if (swift_dynamicCast())
  {
    memcpy((v24 + 16), (v24 + 160), 0x90uLL);
    outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v24 + 80, v24 + 752, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    if (*(v24 + 776))
    {
      v27 = *(v24 + 832);
      v28 = *(v24 + 808);
      outlined init with take of RPCOspreyConnectionProtocol((v24 + 752), v24 + 712);
      outlined init with copy of MessageCenterDevice(v24 + 16, v24 + 304);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v24 + 808);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_105();
        *v28 = 136315394;
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v31 + 16), *(v31 + 24), &a10);
        OUTLINED_FUNCTION_81_0(v32);
        outlined init with copy of MessageCenterDevice(v24 + 304, v24 + 448);
        OUTLINED_FUNCTION_65_2();

        OUTLINED_FUNCTION_29_4();
        MEMORY[0x223DE2180](*(v24 + 448), *(v24 + 456));
        OUTLINED_FUNCTION_41_4();
        v33 = *(v24 + 472);
        *(v24 + 792) = *(v24 + 464);
        *(v24 + 800) = v33;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v34 = String.init<A>(describing:)();
        MEMORY[0x223DE2180](v34);

        OUTLINED_FUNCTION_101_0();
        v35 = a11;
        outlined destroy of MessageCenterDevice(v24 + 304);
        v36 = outlined destroy of MessageCenterDevice(v24 + 448);
        OUTLINED_FUNCTION_67_0(v36);
        OUTLINED_FUNCTION_68_2();
        *(v28 + 14) = v35;
        OUTLINED_FUNCTION_62_1(&dword_223515000, v37, v38, "Sending %s to %s");
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_7_13();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        outlined destroy of MessageCenterDevice(v24 + 304);
      }

      v106 = swift_task_alloc();
      *(v24 + 872) = v106;
      *v106 = v24;
      v106[1] = MessageCenter.sendMessage(_:to:timeout:);
      v107 = *(v24 + 832);
      v108 = *(v24 + 824);
      OUTLINED_FUNCTION_90(*(v24 + 808));
      OUTLINED_FUNCTION_56_2();

      return MessageCenter.sendMessage(_:to:for:timeout:)();
    }

    outlined destroy of MessageCenterDevice(v24 + 16);
    v39 = &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd;
    v40 = &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR;
    v41 = v24 + 752;
  }

  else
  {
    bzero((v24 + 160), 0x90uLL);
    v39 = &_s11SiriNetwork19MessageCenterDeviceVSgMd;
    v40 = &_s11SiriNetwork19MessageCenterDeviceVSgMR;
    v41 = v24 + 160;
  }

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v41, v39, v40);
  v42 = *(v24 + 832);
  outlined init with copy of UMUserPersonProtocol(*(v24 + 816), v24 + 632);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_1(v44))
  {
    v45 = OUTLINED_FUNCTION_55();
    a11 = OUTLINED_FUNCTION_54();
    *v45 = 136315138;
    v46 = *(v24 + 656);
    v47 = *(v24 + 664);
    v48 = __swift_project_boxed_opaque_existential_1((v24 + 632), v46);
    v49 = *(v46 - 8);
    v50 = *(v49 + 64);
    OUTLINED_FUNCTION_68();
    (*(v49 + 16))();
    v51 = *(v47 + 8);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_2();

    __swift_destroy_boxed_opaque_existential_0((v24 + 632));
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &a11);

    *(v45 + 4) = v52;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v24 + 632));
  }

  v58 = *(v24 + 864);
  v59 = *(v24 + 856);
  v60 = *(v24 + 840);
  v61 = *(v24 + 832);
  v62 = *(v24 + 808);
  v63 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  OUTLINED_FUNCTION_38_2();
  v64 = swift_allocError();
  OUTLINED_FUNCTION_18_0(v65, 20);
  OUTLINED_FUNCTION_0_32();
  v68 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v66, v67);
  v110 = v63;
  OUTLINED_FUNCTION_38_2();
  v69 = swift_allocError();
  OUTLINED_FUNCTION_50_3(v69, v70);
  v71 = v59[6];
  v72 = v64;

  Date.init()();
  v73 = v59[10];
  *(v58 + v73) = mach_absolute_time();
  OUTLINED_FUNCTION_49_4();
  *v74 = v61;
  v74[1] = v68;
  *(v58 + v59[8]) = v69;
  OUTLINED_FUNCTION_31_4(v58 + v59[9]);
  OUTLINED_FUNCTION_124(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR, OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  OUTLINED_FUNCTION_22_5(v75);
  if (v76)
  {
    v77 = *(v24 + 840);
    v78 = *(v24 + 808);

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v77, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    v79 = *(v24 + 864);
    v80 = *(v24 + 848);
    v81 = *(v24 + 840);
    v82 = *(v24 + 808);
    *(v24 + 696) = *(v24 + 856);
    *(v24 + 704) = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1((v24 + 672));
    v83 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v83, v84);

    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_13_4(v61);
    v86 = *(v85 + 8);
    v87 = OUTLINED_FUNCTION_18();
    v88(v87);
  }

  v89 = *(v24 + 864);
  v90 = *(v24 + 848);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_64_1(v91);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v90, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v92 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_50_3(v92, v93);
  swift_willThrow();
  outlined destroy of MessageCenterEvent(v89);
  v94 = *(v24 + 864);
  v95 = *(v24 + 848);
  v96 = *(v24 + 840);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_56_2();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, v110, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[98] = v0;
  v1[97] = v2;
  v1[96] = v3;
  v1[95] = v4;
  v5 = type metadata accessor for TimeoutError();
  v1[99] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_57_0();
  v1[100] = v7;
  v9 = *(v8 + 64);
  v1[101] = OUTLINED_FUNCTION_68();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v10);
  v12 = *(v11 + 64) + 15;
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v13);
  v15 = *(v14 + 64) + 15;
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v16 = type metadata accessor for MessageCenterEvent();
  v1[108] = v16;
  OUTLINED_FUNCTION_11_1(v16);
  v18 = *(v17 + 64) + 15;
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v1[112] = v19;
  v20 = *(v19 - 8);
  OUTLINED_FUNCTION_57_0();
  v1[113] = v21;
  v23 = *(v22 + 64);
  v1[114] = OUTLINED_FUNCTION_68();
  v24 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_114_0();
  v1 = v0[95];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[92] = v1;
  type metadata accessor for MessageCenterMessage();
  lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenterMessage and conformance MessageCenterMessage, type metadata accessor for MessageCenterMessage);
  v0[115] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[116] = v5;
  v6 = v0[98];
  v7 = v0[95];

  v0[93] = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork013MessageCenterC0CmMd, &_s11SiriNetwork013MessageCenterC0CmMR);
  v0[117] = String.init<A>(describing:)();
  v0[118] = v8;
  v0[119] = *(v6 + 120);
  OUTLINED_FUNCTION_54_2();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_61_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[119];
  v2 = v0[98];
  v3 = MessageCenterActorListenerPublisher.localIDSIdentifier.getter();
  v5 = v4;
  swift_unknownObjectRelease();
  v0[120] = v3;
  v0[121] = v5;
  v6 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 976) = *(*(v0 + 784) + 120);
  OUTLINED_FUNCTION_54_2();
  swift_unknownObjectRetain();
  v1 = OUTLINED_FUNCTION_14_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[122];
  v2 = v0[98];
  v3 = MessageCenterActorListenerPublisher.deviceModel.getter();
  v5 = v4;
  swift_unknownObjectRelease();
  v0[123] = v3;
  v0[124] = v5;
  v6 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v18 = *(v0 + 984);
  v19 = *(v0 + 992);
  v17 = *(v0 + 960);
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 896);
  v16 = *(v0 + 784);
  outlined copy of Data._Representation(v4, v3);
  UUID.init()();
  UUID.uuidString.getter();
  OUTLINED_FUNCTION_11_2();
  (*(v6 + 8))(v5, v7);
  v8 = specialized Collection.prefix(_:)(5);
  v9 = MEMORY[0x223DE2130](v8);
  v11 = v10;

  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  *(v0 + 72) = v19;
  *(v0 + 80) = v9;
  *(v0 + 88) = v11;
  *(v0 + 1000) = *(v16 + 120);
  OUTLINED_FUNCTION_54_2();
  swift_unknownObjectRetain();
  v12 = OUTLINED_FUNCTION_14_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 1000);
  v2 = *(v0 + 784);
  MessageCenterActorListenerPublisher.sourceActor.getter(v0 + 376);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v6 = *(v5 + 1024);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[129] = v0;

  if (v0)
  {
    v9 = v3[98];
    v10 = MessageCenter.sendMessage(_:to:for:timeout:);
  }

  else
  {
    v11 = v3[127];
    v12 = v3[98];

    v10 = MessageCenter.sendMessage(_:to:for:timeout:);
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *(v1 + 1048);
  *v4 = *v2;
  *(v3 + 1056) = v0;

  OUTLINED_FUNCTION_108_0();
  v7 = *(v6 + 784);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  v12 = *(v10 + 784);
  *(v10 + 1008) = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  outlined init with copy of MessageCenterActorMessage(v10 + 16, v10 + 96);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  outlined destroy of MessageCenterActorMessage(v10 + 16);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_105();
    *v15 = 136315138;
    outlined init with copy of MessageCenterActorMessage(v10 + 16, v10 + 256);
    v16 = MessageCenterActorMessage.description.getter();
    v17 = outlined destroy of MessageCenterActorMessage(v10 + 16);
    OUTLINED_FUNCTION_67_0(v17);
    OUTLINED_FUNCTION_68_2();
    *(v15 + 4) = v16;
    _os_log_impl(&dword_223515000, v13, v14, "Sending %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  v18 = *(v10 + 784);
  v19 = *(v10 + 760);
  outlined init with copy of UMUserPersonProtocol(*(v10 + 768), v10 + 416);
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v10 + 376, v10 + 456, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  v20 = swift_allocObject();
  *(v10 + 1016) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  outlined init with take of RPCOspreyConnectionProtocol((v10 + 416), v20 + 32);
  memcpy((v20 + 72), (v10 + 16), 0x50uLL);
  v21 = *(v10 + 472);
  *(v20 + 152) = *(v10 + 456);
  *(v20 + 168) = v21;
  *(v20 + 184) = *(v10 + 488);
  outlined init with copy of MessageCenterActorMessage(v10 + 16, v10 + 176);
  v22 = *(MEMORY[0x277D61CC0] + 4);

  v23 = swift_task_alloc();
  *(v10 + 1024) = v23;
  *v23 = v10;
  v23[1] = MessageCenter.sendMessage(_:to:for:timeout:);
  v24 = *(v10 + 776);
  OUTLINED_FUNCTION_26_3();

  return MEMORY[0x2821C8618](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_105_0();
  v17 = v16[116];
  v18 = v16[115];
  v19 = v16[114];
  v20 = v16[111];
  v21 = v16[110];
  v22 = v16[109];
  v23 = v16[107];
  v24 = v16[106];
  v25 = v16[105];
  v35 = v16[104];
  v36 = v16[103];
  v37 = v16[102];
  v38 = v16[101];
  outlined destroy of MessageCenterActorMessage((v16 + 2));
  outlined consume of Data._Representation(v18, v17);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?((v16 + 47), &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_56_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_82_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_105_0();
  a22 = v24;
  v27 = *(v24 + 1032);
  v28 = *(v24 + 1016);
  v29 = *(v24 + 808);
  v30 = *(v24 + 792);

  *(v24 + 752) = v27;
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v24 + 800) + 88))(*(v24 + 808), *(v24 + 792)) == *MEMORY[0x277D61CE8])
    {
      v32 = *(v24 + 880);
      v33 = *(v24 + 864);
      v34 = *(v24 + 824);
      v35 = *(v24 + 784);
      v36 = *(v24 + 760);

      OUTLINED_FUNCTION_0_32();
      v39 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v37, v38);
      *(v24 + 1040) = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
      v40 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_18_0(v41, 17);
      v42 = v33[6];

      Date.init()();
      v43 = v33[10];
      *(v32 + v43) = mach_absolute_time();
      *v32 = v36;
      *(v32 + 8) = 1;
      v44 = (v32 + v33[7]);
      *v44 = v35;
      v44[1] = v39;
      *(v32 + v33[8]) = v40;
      v45 = v32 + v33[9];
      *v45 = 0;
      *(v45 + 8) = 1;
      outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v35 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v34, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      v47 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_2(v47, v48, v46);
      if (v49)
      {
        v50 = *(v24 + 824);
        v51 = *(v24 + 760);

        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v50, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
        v128 = 1;
      }

      else
      {
        v118 = *(v24 + 880);
        v119 = *(v24 + 848);
        v120 = *(v24 + 824);
        v121 = *(v24 + 760);
        *(v24 + 720) = *(v24 + 864);
        *(v24 + 728) = &protocol witness table for MessageCenterEvent;
        __swift_allocate_boxed_opaque_existential_1((v24 + 696));
        v122 = OUTLINED_FUNCTION_53_2();
        outlined init with copy of MessageCenterEvent(v122, v123);

        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_13_4(v46);
        v125 = *(v124 + 8);
        v126 = OUTLINED_FUNCTION_88_0();
        v127(v126);
        v128 = 0;
      }

      v129 = *(v24 + 848);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
      __swift_storeEnumTagSinglePayload(v129, v128, 1, v130);
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v129, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
      v131 = swift_task_alloc();
      *(v24 + 1048) = v131;
      *v131 = v24;
      v131[1] = MessageCenter.sendMessage(_:to:for:timeout:);
      v132 = *(v24 + 784);
      OUTLINED_FUNCTION_90(*(v24 + 768));
      OUTLINED_FUNCTION_56_2();

      return MessageCenter.invalidateActor(_:)(v133);
    }

    (*(*(v24 + 800) + 8))(*(v24 + 808), *(v24 + 792));
  }

  v52 = *(v24 + 1032);
  v53 = *(v24 + 872);
  v54 = *(v24 + 864);
  v55 = *(v24 + 816);
  v56 = *(v24 + 784);
  v57 = *(v24 + 760);

  OUTLINED_FUNCTION_0_32();
  v60 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v58, v59);
  lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  v61 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_73_0(v61, v62);
  v63 = v54[6];
  v64 = v52;

  v65 = v52;
  Date.init()();
  v66 = v54[10];
  *(v53 + v66) = mach_absolute_time();
  *v53 = v57;
  *(v53 + 8) = 1;
  v67 = (v53 + v54[7]);
  *v67 = v56;
  v67[1] = v60;
  *(v53 + v54[8]) = v61;
  v68 = v53 + v54[9];
  *v68 = 0;
  *(v68 + 8) = 1;
  OUTLINED_FUNCTION_124(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR, OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  OUTLINED_FUNCTION_22_5(v69);
  if (v49)
  {
    v70 = *(v24 + 816);
    v71 = *(v24 + 760);

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v70, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    v72 = *(v24 + 872);
    v73 = *(v24 + 840);
    v74 = *(v24 + 816);
    v75 = *(v24 + 760);
    *(v24 + 600) = *(v24 + 864);
    *(v24 + 608) = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1((v24 + 576));
    v76 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v76, v77);

    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_13_4(v56);
    v79 = *(v78 + 8);
    v80 = OUTLINED_FUNCTION_18();
    v81(v80);
  }

  v82 = *(v24 + 1032);
  v83 = *(v24 + 1008);
  v84 = *(v24 + 840);
  v85 = *(v24 + 784);
  v86 = *(v24 + 768);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_64_1(v87);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v84, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  outlined init with copy of UMUserPersonProtocol(v86, v24 + 496);
  v88 = v82;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = *(v24 + 1032);
    v92 = OUTLINED_FUNCTION_89();
    v93 = swift_slowAlloc();
    v94 = OUTLINED_FUNCTION_54();
    a12 = v94;
    *v92 = 136315394;
    outlined init with copy of UMUserPersonProtocol(v24 + 496, v24 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    v95 = String.init<A>(describing:)();
    v97 = v96;
    __swift_destroy_boxed_opaque_existential_0((v24 + 496));
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &a12);

    *(v92 + 4) = v98;
    *(v92 + 12) = 2112;
    v99 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_73_0(v99, v100);
    v101 = v91;
    v102 = _swift_stdlib_bridgeErrorToNSError();
    *(v92 + 14) = v102;
    *v93 = v102;
    _os_log_impl(&dword_223515000, v89, v90, "Message send to actor %s failed with error %@", v92, 0x16u);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v93, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_12();
    __swift_destroy_boxed_opaque_existential_0(v94);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_11();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v24 + 496));
  }

  v103 = *(v24 + 1032);
  v104 = *(v24 + 928);
  v105 = *(v24 + 920);
  v106 = *(v24 + 872);
  v136 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_73_0(v136, v107);
  swift_willThrow();

  outlined destroy of MessageCenterActorMessage(v24 + 16);
  outlined consume of Data._Representation(v105, v104);
  outlined destroy of MessageCenterEvent(v106);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v24 + 376, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  OUTLINED_FUNCTION_3_15();
  v135 = v108;

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_56_2();

  return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, v135, v136, a12, a13, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_82_0();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_105_0();
  a22 = v24;
  v29 = *(v24 + 1008);
  v30 = *(v24 + 784);
  outlined init with copy of UMUserPersonProtocol(*(v24 + 768), v24 + 616);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_1(v32))
  {
    v33 = OUTLINED_FUNCTION_55();
    a12 = OUTLINED_FUNCTION_54();
    *v33 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v24 + 616, v24 + 656);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_2();
    __swift_destroy_boxed_opaque_existential_0((v24 + 616));
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &a12);

    *(v33 + 4) = v34;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v24 + 616));
  }

  v40 = *(v24 + 1040);
  v41 = *(v24 + 928);
  v42 = *(v24 + 920);
  v43 = *(v24 + 880);
  v58 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_18_0(v44, 17);
  swift_willThrow();
  outlined destroy of MessageCenterActorMessage(v24 + 16);
  v45 = OUTLINED_FUNCTION_88_0();
  outlined consume of Data._Representation(v45, v46);
  outlined destroy of MessageCenterEvent(v43);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v24 + 376, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);

  OUTLINED_FUNCTION_3_15();
  v57 = v47;

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_56_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, a12, a13, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_114_0();
  v15 = *(v14 + 928);
  v16 = *(v14 + 920);
  v17 = *(v14 + 880);
  outlined destroy of MessageCenterActorMessage(v14 + 16);
  v18 = OUTLINED_FUNCTION_14_3();
  outlined consume of Data._Representation(v18, v19);
  outlined destroy of MessageCenterEvent(v17);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v14 + 376, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);

  v20 = *(v14 + 1056);
  OUTLINED_FUNCTION_3_15();
  v32 = v21;
  v33 = v22;

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_61_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[11] = v0;
  v1[10] = v2;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v6);
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_68();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v9);
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_68();
  v12 = type metadata accessor for MessageCenterEvent();
  v1[14] = v12;
  OUTLINED_FUNCTION_11_1(v12);
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_68();
  v15 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 128) = *(*(v0 + 88) + 112);
  OUTLINED_FUNCTION_54_2();

  v1 = OUTLINED_FUNCTION_14_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[11];
  v0[17] = *(v0[16] + 120);

  v2 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[11];

    return MEMORY[0x2822009F8](MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:), v9, 0);
  }

  else
  {
    v10 = v3[18];
    v11 = v3[19];
    v12 = v3[15];
    v15 = v3 + 12;
    v13 = v3[12];
    v14 = v15[1];

    OUTLINED_FUNCTION_26_4();

    return v16();
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[21];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  OUTLINED_FUNCTION_6_3();

  return v7();
}

void MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_114_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = 0;
  v26 = v22[17];
  v27 = *(v26 + 56);
  OUTLINED_FUNCTION_19_4();
  if (v32 != v33)
  {
    v30 = ~v31;
  }

  v34 = v30 & v28;
  v35 = (63 - v29) >> 6;
  while (v34)
  {
LABEL_10:
    v37 = v22[8];
    v38 = v22[9];
    v39 = (*(v26 + 48) + ((v25 << 11) | (32 * __clz(__rbit64(v34)))));
    v40 = *v39;
    v41 = v39[1];
    v22[18] = v41;
    v42 = v39[2];
    v43 = v39[3];
    v22[19] = v43;
    v44 = v40 == v37 && v41 == v38;
    if (v44)
    {
      goto LABEL_16;
    }

    v34 &= v34 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v45 = v22[9];
LABEL_16:
      v46 = v22[17];
      v47 = v22[11];
      v48 = v22[7];

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = v22[8];
        v116 = v22[9];
        v52 = v22[7];
        v53 = OUTLINED_FUNCTION_54();
        a10 = swift_slowAlloc();
        *v53 = 136315650;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v52 + 16), *(v52 + 24), &a10);
        *(v53 + 12) = 2080;

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &a10);

        *(v53 + 14) = v54;
        *(v53 + 22) = 2080;
        *(v53 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v116, &a10);
        _os_log_impl(&dword_223515000, v49, v50, "Sending %s to persona %s for sharedSiriIdentifier %s", v53, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_7_13();
      }

      v55 = swift_task_alloc();
      v22[20] = v55;
      *v55 = v22;
      v55[1] = MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:);
      v56 = v22[11];
      v57 = v22[10];
      OUTLINED_FUNCTION_90(v22[7]);
      OUTLINED_FUNCTION_61_1();

      MessageCenter.sendMessage(_:toPersona:timeout:)();
      return;
    }
  }

  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v36 >= v35)
    {
      break;
    }

    v34 = *(v26 + 56 + 8 * v36);
    ++v25;
    if (v34)
    {
      v25 = v36;
      goto LABEL_10;
    }
  }

  v59 = v22[17];
  v60 = v22[11];
  v61 = v22[9];

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v65 = v22[8];
    v64 = v22[9];
    v66 = OUTLINED_FUNCTION_55();
    v67 = OUTLINED_FUNCTION_54();
    a10 = v67;
    *v66 = 136315138;
    *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, &a10);
    _os_log_impl(&dword_223515000, v62, v63, "No device found for SharedSiriIdentifier %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  v69 = v22[14];
  v68 = v22[15];
  v71 = v22[11];
  v70 = v22[12];
  v72 = v22[7];
  v73 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  OUTLINED_FUNCTION_38_2();
  v74 = swift_allocError();
  OUTLINED_FUNCTION_18_0(v75, 21);
  OUTLINED_FUNCTION_0_32();
  v78 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v76, v77);
  v117 = v73;
  OUTLINED_FUNCTION_38_2();
  v79 = swift_allocError();
  OUTLINED_FUNCTION_50_3(v79, v80);
  v81 = v69[6];
  v82 = v74;

  Date.init()();
  v83 = v69[10];
  *(v68 + v83) = mach_absolute_time();
  OUTLINED_FUNCTION_49_4();
  *v84 = v71;
  v84[1] = v78;
  *(v68 + v69[8]) = v79;
  OUTLINED_FUNCTION_31_4(v68 + v69[9]);
  OUTLINED_FUNCTION_124(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR, OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  OUTLINED_FUNCTION_22_5(v85);
  if (v44)
  {
    v87 = v22[12];
    v86 = v22[13];
    v88 = v22[7];

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v87, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v100 = OUTLINED_FUNCTION_44_0();
  }

  else
  {
    v89 = v22[15];
    v91 = v22[12];
    v90 = v22[13];
    v92 = v22[7];
    v22[5] = v22[14];
    v22[6] = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1(v22 + 2);
    v93 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v93, v94);

    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_13_4(v71);
    v96 = *(v95 + 8);
    v97 = OUTLINED_FUNCTION_18();
    v98(v97);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v100 = v90;
    v101 = 0;
  }

  __swift_storeEnumTagSinglePayload(v100, v101, 1, v99);
  v102 = v22[15];
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v22[13], &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v103 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_50_3(v103, v104);
  swift_willThrow();
  outlined destroy of MessageCenterEvent(v102);
  v105 = v22[15];
  v107 = v22[12];
  v106 = v22[13];

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_61_1();

  v109(v108, v109, v110, v111, v112, v113, v114, v115, v117, a10, a11, a12, a13, a14);
}

uint64_t MessageCenter.sendMessage(_:toPersona:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[21] = v0;
  v1[20] = v2;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v6);
  v8 = *(v7 + 64);
  v1[22] = OUTLINED_FUNCTION_68();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v9);
  v11 = *(v10 + 64);
  v1[23] = OUTLINED_FUNCTION_68();
  v12 = type metadata accessor for MessageCenterEvent();
  v1[24] = v12;
  OUTLINED_FUNCTION_11_1(v12);
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_68();
  v15 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[26] = *(v0[21] + 112);

  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = MessageCenter.sendMessage(_:toPersona:timeout:);
  v2 = v0[18];
  v3 = v0[19];

  return MessageCenterActorBrowser.createActorIfNeeded(for:)();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = MessageCenter.sendMessage(_:toPersona:timeout:);
  }

  else
  {
    v11 = v3[26];
    v12 = v3[21];

    v10 = MessageCenter.sendMessage(_:toPersona:timeout:);
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined init with take of RPCOspreyConnectionProtocol((v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = MessageCenter.sendMessage(_:toPersona:timeout:);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  OUTLINED_FUNCTION_90(*(v0 + 136));

  return MessageCenter.sendMessage(_:to:for:timeout:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *(v1 + 232);
  *v4 = *v2;
  *(v3 + 240) = v0;

  OUTLINED_FUNCTION_108_0();
  v7 = *(v6 + 168);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_26_4();

  return v4();
}

{
  OUTLINED_FUNCTION_43();
  v60 = v0;
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[19];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v10 = v0[18];
    v9 = v0[19];
    v11 = OUTLINED_FUNCTION_89();
    v12 = swift_slowAlloc();
    v59 = OUTLINED_FUNCTION_54();
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v59);
    *(v11 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  v20 = v0[28];
  v22 = v0[24];
  v21 = v0[25];
  v24 = v0[21];
  v23 = v0[22];
  v25 = v0[17];
  OUTLINED_FUNCTION_0_32();
  v28 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v26, v27);
  v29 = v22[6];
  v30 = v20;

  Date.init()();
  v31 = v22[10];
  *(v21 + v31) = mach_absolute_time();
  *v21 = v25;
  *(v21 + 8) = 0;
  v32 = (v21 + v22[7]);
  *v32 = v24;
  v32[1] = v28;
  *(v21 + v22[8]) = v20;
  OUTLINED_FUNCTION_31_4(v21 + v22[9]);
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v24 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v23, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v34 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_66_2(v34, v35, v33);
  if (v36)
  {
    v37 = v0[22];
    v38 = v0[17];

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v37, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    v39 = v0[25];
    v41 = v0[22];
    v40 = v0[23];
    v42 = v0[17];
    v0[15] = v0[24];
    v0[16] = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v43 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v43, v44);

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_13_4(v33);
    v46 = *(v45 + 8);
    v47 = OUTLINED_FUNCTION_88_0();
    v48(v47);
  }

  v49 = v0[28];
  v50 = v0[25];
  v51 = v0[23];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_35_2(v52);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v51, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  swift_willThrow();
  outlined destroy of MessageCenterEvent(v50);
  v53 = v0[28];
  v54 = v0[25];
  v56 = v0[22];
  v55 = v0[23];

  OUTLINED_FUNCTION_6_3();

  return v57();
}

{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[30];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  OUTLINED_FUNCTION_6_3();

  return v5();
}

uint64_t closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for MessageCenterEvent();
  v6[21] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MessageCenter.sendMessage(_:to:for:timeout:), 0, 0);
}

uint64_t closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  OUTLINED_FUNCTION_0_32();
  v8 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v6, v7);
  v0[24] = v8;
  v9 = v2[6];

  Date.init()();
  v10 = v2[10];
  *(v1 + v10) = mach_absolute_time();
  *v1 = v5;
  *(v1 + 8) = 0;
  v11 = (v1 + v2[7]);
  *v11 = v4;
  v11[1] = v8;
  *(v1 + v2[8]) = 0;
  OUTLINED_FUNCTION_31_4(v1 + v2[9]);
  v12 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  v0[25] = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v4 + v12, v3, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v0[26] = v13;
  v14 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_66_2(v14, v15, v13);
  if (v16)
  {
    v17 = v0[20];
    v18 = v0[18];
    v19 = v0[12];

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v18, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v31 = OUTLINED_FUNCTION_44_0();
  }

  else
  {
    v20 = v0[23];
    v21 = v0[20];
    v22 = v0[18];
    v23 = v0[12];
    v0[10] = v0[21];
    v0[11] = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    v24 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v24, v25);

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_13_4(v13);
    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_88_0();
    v29(v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v31 = v21;
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  v33 = v0[14];
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v0[20], &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v35 = *(v34 + 16);
  OUTLINED_FUNCTION_10_6();
  v43 = (v36 + *v36);
  v38 = *(v37 + 4);
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = closure #1 in MessageCenter.sendMessage(_:to:for:timeout:);
  v40 = v0[16];
  v41 = OUTLINED_FUNCTION_90(v0[15]);

  return v43(v41);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 216);
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 224) = v0;

  if (v0)
  {
    v7 = closure #1 in MessageCenter.sendMessage(_:to:for:timeout:);
  }

  else
  {
    v7 = closure #1 in MessageCenter.sendMessage(_:to:for:timeout:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_40_3();
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  outlined destroy of MessageCenterEvent(v0[23]);

  OUTLINED_FUNCTION_6_3();
  v7 = v0[28];

  return v6();
}

uint64_t closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v14 = v12[25];
  v13 = v12[26];
  v15 = v12[24];
  v17 = v12[21];
  v16 = v12[22];
  v18 = v12[17];
  v20 = v12[12];
  v19 = v12[13];
  v21 = v17[6];

  Date.init()();
  v22 = v17[10];
  *(v16 + v22) = mach_absolute_time();
  *v16 = v20;
  *(v16 + 8) = 1;
  v23 = (v16 + v17[7]);
  *v23 = v19;
  v23[1] = v15;
  *(v16 + v17[8]) = 0;
  v24 = v16 + v17[9];
  *v24 = 0;
  *(v24 + 8) = 1;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v19 + v14, v18, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_66_2(v18, 1, v13);
  if (v25)
  {
    v26 = v12[22];
    v27 = v12[23];
    v28 = v12[17];
    v29 = v12[12];

    outlined destroy of MessageCenterEvent(v26);
    outlined destroy of MessageCenterEvent(v27);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v28, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    v30 = v12[26];
    v32 = v12[22];
    v31 = v12[23];
    v33 = v12[19];
    v34 = v12[17];
    v35 = v12[12];
    v12[5] = v12[21];
    v12[6] = &protocol witness table for MessageCenterEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 2);
    outlined init with copy of MessageCenterEvent(v32, boxed_opaque_existential_1);

    AsyncStream.Continuation.yield(_:)();
    outlined destroy of MessageCenterEvent(v32);
    outlined destroy of MessageCenterEvent(v31);
    OUTLINED_FUNCTION_13_4(v30);
    (*(v37 + 8))(v34, v30);
  }

  v39 = v12[22];
  v38 = v12[23];
  v41 = v12[19];
  v40 = v12[20];
  v43 = v12[17];
  v42 = v12[18];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_64_1(v44);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v41, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t MessageCenter.invalidateActor(_:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.invalidateActor(_:), v1);
}

uint64_t MessageCenter.invalidateActor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  v23 = v18[13];
  outlined init with copy of UMUserPersonProtocol(v18[12], (v18 + 2));
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_1(v25))
  {
    v26 = OUTLINED_FUNCTION_55();
    a10 = OUTLINED_FUNCTION_54();
    *v26 = 136315138;
    outlined init with copy of UMUserPersonProtocol((v18 + 2), (v18 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_2();
    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &a10);

    *(v26 + 4) = v27;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
  }

  if (one-time initialization token for actorSystem != -1)
  {
    swift_once();
  }

  v33 = v18[12];
  v34 = *__swift_project_boxed_opaque_existential_1(static MessageCenter.actorSystem, qword_281327350);
  specialized MessageCenterNWActorSystemProtocol.invalidateMessageCenterActor(_:)(v33);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_26_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t MessageCenter.reset()()
{
  *(v1 + 320) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenter.reset(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[40] + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_57_1(v3))
  {
    v4 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v4);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "Message Center Reset");
    OUTLINED_FUNCTION_42_0();
  }

  v7 = v0[40];

  v0[41] = *(v7 + 112);

  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_33(v8);

  return MessageCenterActorBrowser.getActiveActorsDevices()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[42];
  v3 = v1[41];
  v4 = v1[40];
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v8 + 344) = v7;

  v9 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *(v1 + 368);
  *v4 = *v2;
  *(v3 + 376) = v0;

  OUTLINED_FUNCTION_108_0();
  v7 = *(v6 + 320);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[43];

  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  OUTLINED_FUNCTION_6_3();
  v3 = v0[47];

  return v2();
}

uint64_t MessageCenter.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v13 = *(v12 + 344);
  v14 = *(v13 + 32);
  *(v12 + 384) = v14;
  v15 = 1 << v14;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = *(v12 + 344);
LABEL_10:
      *(v12 + 352) = v17;
      *(v12 + 360) = v19;
      outlined init with copy of UMUserPersonProtocol(*(v20 + 56) + 40 * (__clz(__rbit64(v17)) | (v19 << 6)), v12 + 160);
      outlined init with take of RPCOspreyConnectionProtocol((v12 + 160), v12 + 280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27MessageCenterDeviceProtocol_pMd, &_s11SiriNetwork27MessageCenterDeviceProtocol_pMR);
      if (OUTLINED_FUNCTION_94_0())
      {
        OUTLINED_FUNCTION_115_0();
        outlined destroy of MessageCenterDevice(v12 + 16);
        if (*(v12 + 264))
        {
          outlined init with take of RPCOspreyConnectionProtocol((v12 + 240), v12 + 200);
          v31 = swift_task_alloc();
          *(v12 + 368) = v31;
          *v31 = v12;
          OUTLINED_FUNCTION_30_5(v31);
          OUTLINED_FUNCTION_63_0();

          return MessageCenter.invalidateActor(_:)(v32);
        }
      }

      else
      {
        bzero((v12 + 16), 0x90uLL);
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v12 + 16, &_s11SiriNetwork19MessageCenterDeviceVSgMd, &_s11SiriNetwork19MessageCenterDeviceVSgMR);
        *(v12 + 240) = 0u;
        *(v12 + 256) = 0u;
        *(v12 + 272) = 0;
      }

      OUTLINED_FUNCTION_98_0();
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    v20 = *(v12 + 344);
    if (v21 >= (((1 << *(v12 + 384)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v20 + 8 * v21 + 64);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_10;
    }
  }

  v22 = *(v12 + 344);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  result = __swift_destroy_boxed_opaque_existential_0((v12 + 200));
  v14 = *(v12 + 360);
  v15 = (*(v12 + 352) - 1) & *(v12 + 352);
  if (v15)
  {
    while (1)
    {
      v16 = *(v12 + 344);
LABEL_7:
      *(v12 + 352) = v15;
      *(v12 + 360) = v14;
      outlined init with copy of UMUserPersonProtocol(*(v16 + 56) + 40 * (__clz(__rbit64(v15)) | (v14 << 6)), v12 + 160);
      outlined init with take of RPCOspreyConnectionProtocol((v12 + 160), v12 + 280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27MessageCenterDeviceProtocol_pMd, &_s11SiriNetwork27MessageCenterDeviceProtocol_pMR);
      if (OUTLINED_FUNCTION_94_0())
      {
        OUTLINED_FUNCTION_115_0();
        outlined destroy of MessageCenterDevice(v12 + 16);
        if (*(v12 + 264))
        {
          outlined init with take of RPCOspreyConnectionProtocol((v12 + 240), v12 + 200);
          v27 = swift_task_alloc();
          *(v12 + 368) = v27;
          *v27 = v12;
          OUTLINED_FUNCTION_30_5();
          OUTLINED_FUNCTION_63_0();

          return MessageCenter.invalidateActor(_:)(v28);
        }
      }

      else
      {
        bzero((v12 + 16), 0x90uLL);
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v12 + 16, &_s11SiriNetwork19MessageCenterDeviceVSgMd, &_s11SiriNetwork19MessageCenterDeviceVSgMR);
        *(v12 + 240) = 0u;
        *(v12 + 256) = 0u;
        *(v12 + 272) = 0;
      }

      OUTLINED_FUNCTION_98_0();
    }
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    v16 = *(v12 + 344);
    if (v17 >= (((1 << *(v12 + 384)) + 63) >> 6))
    {
      break;
    }

    v15 = *(v16 + 8 * v17 + 64);
    ++v14;
    if (v15)
    {
      v14 = v17;
      goto LABEL_7;
    }
  }

  v18 = *(v12 + 344);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t MessageCenter.didFindDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return OUTLINED_FUNCTION_1_0(MessageCenter.didFindDevice(_:for:), v3);
}

uint64_t MessageCenter.didFindDevice(_:for:)()
{
  OUTLINED_FUNCTION_43();
  v2 = v0[42];
  v1 = v0[43];
  outlined init with copy of MessageCenterDevice(v0[40], (v0 + 2));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[41];
    v5 = v0[42];
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_105();
    v8 = OUTLINED_FUNCTION_122_0(4.8151e-34, v7);
    OUTLINED_FUNCTION_81_0(v8);
    outlined init with copy of MessageCenterDevice((v0 + 2), (v0 + 20));
    OUTLINED_FUNCTION_65_2();

    OUTLINED_FUNCTION_29_4();
    MEMORY[0x223DE2180](v0[20], v0[21]);
    OUTLINED_FUNCTION_41_4();
    v9 = v0[23];
    v0[38] = v0[22];
    v0[39] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v10);

    OUTLINED_FUNCTION_101_0();
    outlined destroy of MessageCenterDevice((v0 + 2));
    v11 = outlined destroy of MessageCenterDevice((v0 + 20));
    OUTLINED_FUNCTION_67_0(v11);
    OUTLINED_FUNCTION_68_2();
    *(v2 + 14) = v23;
    OUTLINED_FUNCTION_62_1(&dword_223515000, v12, v13, "message center found device for persona %s %s");
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    outlined destroy of MessageCenterDevice((v0 + 2));
  }

  v14 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  v0[45] = *(v14 + 144);
  if (!Strong)
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v0[46] = *(v0[43] + 112);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_120_0();

  v0 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void MessageCenter.didFindDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v19 = 0;
  v20 = v12[47];
  v22 = *(v20 + 56);
  v21 = v20 + 56;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_109_0();
  while (v17)
  {
LABEL_7:
    OUTLINED_FUNCTION_47_2();
    v26 = v26 && v13 == v25;
    if (v26)
    {
      v15 = v24;
LABEL_15:
      OUTLINED_FUNCTION_96_0();

      outlined init with copy of MessageCenterDevice(v17, (v12 + 2));
      v29 = v12[8];
      v30 = v12[9];
      outlined consume of MessageCenterUser?(v12[6], v12[7]);
      v12[6] = v18;
      v12[7] = v14;
      v12[8] = v15;
      v12[9] = v13;
      swift_getObjectType();
      OUTLINED_FUNCTION_0_32();
      lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v31, v32);
      v12[23] = &type metadata for MessageCenterDevice;
      v12[24] = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      OUTLINED_FUNCTION_107_0();
      v33 = swift_allocObject();
      OUTLINED_FUNCTION_121_0(v33);
      v34 = *(v21 + 8);
      v35 = OUTLINED_FUNCTION_84_0();
      v36(v35);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v12 + 20);
      outlined destroy of MessageCenterDevice((v12 + 2));
LABEL_16:
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_63_0();

      v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
      return;
    }

    v17 &= v17 - 1;
    OUTLINED_FUNCTION_18();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      v27 = v12[47];
      v28 = v12[44];

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v17 = *(v21 + 8 * v23);
    ++v19;
    if (v17)
    {
      v19 = v23;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t MessageCenter.didLoseDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return OUTLINED_FUNCTION_1_0(MessageCenter.didLoseDevice(_:for:), v3);
}

uint64_t MessageCenter.didLoseDevice(_:for:)()
{
  OUTLINED_FUNCTION_43();
  v2 = v0[42];
  v1 = v0[43];
  outlined init with copy of MessageCenterDevice(v0[40], (v0 + 2));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[41];
    v5 = v0[42];
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_105();
    v8 = OUTLINED_FUNCTION_122_0(4.8151e-34, v7);
    OUTLINED_FUNCTION_81_0(v8);
    outlined init with copy of MessageCenterDevice((v0 + 2), (v0 + 20));
    OUTLINED_FUNCTION_65_2();

    OUTLINED_FUNCTION_29_4();
    MEMORY[0x223DE2180](v0[20], v0[21]);
    OUTLINED_FUNCTION_41_4();
    v9 = v0[23];
    v0[38] = v0[22];
    v0[39] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v10);

    OUTLINED_FUNCTION_101_0();
    outlined destroy of MessageCenterDevice((v0 + 2));
    v11 = outlined destroy of MessageCenterDevice((v0 + 20));
    OUTLINED_FUNCTION_67_0(v11);
    OUTLINED_FUNCTION_68_2();
    *(v2 + 14) = v23;
    OUTLINED_FUNCTION_62_1(&dword_223515000, v12, v13, "message center lost device for persona %s %s");
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    outlined destroy of MessageCenterDevice((v0 + 2));
  }

  v14 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  v0[45] = *(v14 + 144);
  if (!Strong)
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v0[46] = *(v0[43] + 112);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_120_0();

  v0 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void MessageCenter.didLoseDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v19 = 0;
  v20 = v12[47];
  v22 = *(v20 + 56);
  v21 = v20 + 56;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_109_0();
  while (v17)
  {
LABEL_7:
    OUTLINED_FUNCTION_47_2();
    v26 = v26 && v13 == v25;
    if (v26)
    {
      v15 = v24;
LABEL_15:
      OUTLINED_FUNCTION_96_0();

      outlined init with copy of MessageCenterDevice(v17, (v12 + 2));
      v29 = v12[8];
      v30 = v12[9];
      outlined consume of MessageCenterUser?(v12[6], v12[7]);
      v12[6] = v18;
      v12[7] = v14;
      v12[8] = v15;
      v12[9] = v13;
      swift_getObjectType();
      OUTLINED_FUNCTION_0_32();
      lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v31, v32);
      v12[23] = &type metadata for MessageCenterDevice;
      v12[24] = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      OUTLINED_FUNCTION_107_0();
      v33 = swift_allocObject();
      OUTLINED_FUNCTION_121_0(v33);
      v34 = *(v21 + 16);
      v35 = OUTLINED_FUNCTION_84_0();
      v36(v35);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v12 + 20);
      outlined destroy of MessageCenterDevice((v12 + 2));
LABEL_16:
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_63_0();

      v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
      return;
    }

    v17 &= v17 - 1;
    OUTLINED_FUNCTION_18();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      v27 = v12[47];
      v28 = v12[44];

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v17 = *(v21 + 8 * v23);
    ++v19;
    if (v17)
    {
      v19 = v23;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void MessageCenter.didReceiveMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v123 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v28 = OUTLINED_FUNCTION_11_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v35);
  v120 = &v118 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v38 = OUTLINED_FUNCTION_11_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v42);
  v121 = (&v118 - v43);
  v44 = type metadata accessor for MessageCenterEvent();
  OUTLINED_FUNCTION_13_4(v44);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v49);
  v51 = &v118 - v50;
  v52 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  outlined init with copy of MessageCenterActorMessage(v26, v137);
  v132 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  outlined destroy of MessageCenterActorMessage(v26);
  v55 = os_log_type_enabled(v53, v54);
  v122 = v51;
  v127 = v33;
  if (v55)
  {
    v56 = OUTLINED_FUNCTION_89();
    v137[0] = swift_slowAlloc();
    *v56 = 136315394;
    v57 = MessageCenterActorMessage.description.getter();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v137);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2080;
    *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v26, v26[1], v137);
    _os_log_impl(&dword_223515000, v53, v54, "message Center Received message %s of type %s", v56, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v130 = v44;
    v131 = Strong;
    v119 = *(v23 + 168);
    v61 = MEMORY[0x223DE13E0](v26[2], v26[3]);
    v63 = *v26;
    v62 = v26[1];
    v64 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_registeredMessages;
    swift_beginAccess();
    v65 = *(v23 + v64);
    v66 = OUTLINED_FUNCTION_18();
    v69 = specialized Dictionary.subscript.getter(v66, v67, v68);
    if (v69)
    {
      v71 = v69;
      v72 = v70;
      v126 = v61;
      swift_endAccess();
      v73 = type metadata accessor for JSONDecoder();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      v138 = v71;
      v139 = v72;
      __swift_allocate_boxed_opaque_existential_1(v137);
      v76 = *(v72 + 8);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined init with copy of UMUserPersonProtocol(v137, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork23MessageCenterMessagable_pMd, &_s11SiriNetwork23MessageCenterMessagable_pMR);
      type metadata accessor for MessageCenterMessage();
      v92 = swift_dynamicCast();
      v93 = v130;
      if (v92)
      {
        v94 = v133;
      }

      else
      {
        swift_allocObject();
        v94 = MessageCenterMessage.init()();
      }

      v103 = v122;
      v104 = v120;
      v105 = v126;
      OUTLINED_FUNCTION_0_32();
      v108 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v106, v107);
      v109 = v93[6];

      Date.init()();
      v110 = v93[10];
      *(v103 + v110) = mach_absolute_time();
      *v103 = v94;
      *(v103 + 8) = 2;
      v111 = (v103 + v93[7]);
      *v111 = v23;
      v111[1] = v108;
      *(v103 + v93[8]) = 0;
      v112 = v103 + v93[9];
      *v112 = v105;
      *(v112 + 8) = 0;
      outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v23 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v104, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      OUTLINED_FUNCTION_66_2(v104, 1, v113);
      if (v91)
      {
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v104, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
        v93 = v121;
      }

      else
      {
        v135 = v93;
        v136 = &protocol witness table for MessageCenterEvent;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v134);
        outlined init with copy of MessageCenterEvent(v103, boxed_opaque_existential_1);
        OUTLINED_FUNCTION_80_1(&v140);
        AsyncStream.Continuation.yield(_:)();
        OUTLINED_FUNCTION_13_4(v113);
        (*(v115 + 8))(v104, v113);
      }

      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
      OUTLINED_FUNCTION_35_2(v116);
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v93, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
      ObjectType = swift_getObjectType();
      v135 = &type metadata for MessageCenterDevice;
      v136 = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      OUTLINED_FUNCTION_107_0();
      v134[0] = swift_allocObject();
      outlined init with copy of MessageCenterDevice(v123, v134[0] + 16);
      (*(v119 + 8))(v23, v108, v137, v134, ObjectType);
      swift_unknownObjectRelease();
      outlined destroy of MessageCenterEvent(v103);
      __swift_destroy_boxed_opaque_existential_0(v134);
      __swift_destroy_boxed_opaque_existential_0(v137);
    }

    else
    {
      v128 = v62;
      v129 = v63;
      swift_endAccess();
      type metadata accessor for MessageCenterMessage();
      swift_allocObject();
      v77 = MessageCenterMessage.init()();
      OUTLINED_FUNCTION_0_32();
      v80 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v78, v79);
      lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
      v81 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_18_0(v82, 1);
      OUTLINED_FUNCTION_116_0();
      v83 = v124;
      Date.init()();
      v84 = v62[10];
      *(v83 + v84) = mach_absolute_time();
      *v83 = v77;
      *(v83 + 8) = 2;
      v85 = (v83 + v62[7]);
      *v85 = v23;
      v85[1] = v80;
      *(v83 + v62[8]) = v81;
      v86 = v83 + v62[9];
      *v86 = v61;
      *(v86 + 8) = 0;
      v87 = v125;
      outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v23 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v125, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      v89 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_2(v89, v90, v88);
      if (v91)
      {
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v87, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
        v62 = v126;
      }

      else
      {
        v138 = v62;
        v139 = &protocol witness table for MessageCenterEvent;
        v95 = __swift_allocate_boxed_opaque_existential_1(v137);
        outlined init with copy of MessageCenterEvent(v83, v95);
        OUTLINED_FUNCTION_80_1(&a13);
        AsyncStream.Continuation.yield(_:)();
        OUTLINED_FUNCTION_13_4(v88);
        (*(v96 + 8))(v87, v88);
      }

      v97 = v129;
      v98 = v128;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
      OUTLINED_FUNCTION_35_2(v99);
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v62, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
      outlined init with copy of MessageCenterActorMessage(v26, v137);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      outlined destroy of MessageCenterActorMessage(v26);
      if (os_log_type_enabled(v100, v101))
      {
        v102 = OUTLINED_FUNCTION_55();
        v137[0] = OUTLINED_FUNCTION_54();
        *v102 = 136315138;
        *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v137);
        _os_log_impl(&dword_223515000, v100, v101, "Received unknown type: %s", v102, 0xCu);
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      outlined destroy of MessageCenterEvent(v83);
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t (*protocol witness for MessageCenterProtocol.messageDelegate.modify in conformance MessageCenter(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 168);
  v3[3] = Strong;
  v3[4] = v5;
  return protocol witness for MessageCenterProtocol.messageDelegate.modify in conformance MessageCenter;
}

void MessageCenter.messageDelegate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_87_0(a1);
  *(v3 + 168) = v4;
  swift_unknownObjectWeakAssign();
  if (v2)
  {
    v5 = v1[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t (*protocol witness for MessageCenterProtocol.errorDelegate.modify in conformance MessageCenter(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 184);
  v3[3] = Strong;
  v3[4] = v5;
  return protocol witness for MessageCenterProtocol.errorDelegate.modify in conformance MessageCenter;
}

void MessageCenter.errorDelegate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_87_0(a1);
  *(v3 + 184) = v4;
  swift_unknownObjectWeakAssign();
  if (v2)
  {
    v5 = v1[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t protocol witness for MessageCenterProtocol.getActiveDevices() in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MessageCenterProtocol.getActiveDevices() in conformance MessageCenter;

  return MessageCenter.getActiveDevices()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74_1();

  return v6(v5);
}

uint64_t protocol witness for MessageCenterProtocol.start() in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.start()();
}

uint64_t protocol witness for MessageCenterProtocol.register(_:) in conformance MessageCenter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.register(_:)(a1, a2);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:) in conformance MessageCenter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return (specialized MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:))(a1, a2, a3);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toPersona:) in conformance MessageCenter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return (specialized MessageCenterProtocol.sendMessage(_:toPersona:))(a1, a2, a3);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toPersona:timeout:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:toPersona:timeout:)();
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:to:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return specialized MessageCenterProtocol.sendMessage(_:to:)();
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:to:timeout:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:to:timeout:)();
}

uint64_t protocol witness for MessageCenterProtocol.reset() in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.reset()();
}

uint64_t protocol witness for MessageCenterProtocol.setMessageDelegate(_:) in conformance MessageCenter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return MessageCenter.setMessageDelegate(_:)(a1, a2);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

uint64_t specialized MessageCenterNWActorSystemProtocol.invalidateMessageCenterActor(_:)(uint64_t a1)
{
  outlined init with copy of UMUserPersonProtocol(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
  type metadata accessor for MessageCenterActor(0);
  result = swift_dynamicCast();
  if (result)
  {
    lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
    NWActorSystem.invalidateActor<A>(_:)();
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void closure #1 in OSLogArguments.append(_:)()
{
  OUTLINED_FUNCTION_13_3();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_2_19(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_16_8();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0((v19[7] + 32 * v14));
    v20 = OUTLINED_FUNCTION_14_3();

    return outlined init with take of Any(v20, v21);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v23);
    return specialized _NativeDictionary._insert(at:key:value:)(v14, v23, a1, v19);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = v4;
  OUTLINED_FUNCTION_13_3();
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  OUTLINED_FUNCTION_2_19(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VySbcGMd, &_ss17_NativeDictionaryVys6UInt32VySbcGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    v15 = *v8;
    specialized __RawDictionaryStorage.find<A>(_:)(a3);
    OUTLINED_FUNCTION_16_8();
    if (!v17)
    {
      goto LABEL_14;
    }

    v7 = v16;
  }

  if (v6)
  {
    v18 = (*(*v8 + 56) + 16 * v7);
    v19 = v18[1];
    *v18 = v5;
    v18[1] = v3;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    OUTLINED_FUNCTION_106_0();

    return specialized _NativeDictionary._insert(at:key:value:)(v22, v23, v24, v25, v26);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v15 = OUTLINED_FUNCTION_78_0(a1, a2, a3);
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v17, v18);
  OUTLINED_FUNCTION_2_19(v19, v20);
  if (v23)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = v21;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMd, &_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a7 & 1, v7))
  {
    goto LABEL_5;
  }

  v26 = *v7;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
  if ((v25 & 1) != (v28 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = v27;
LABEL_5:
  v29 = *v8;
  if (v25)
  {
    v30 = (v29[7] + 16 * v24);
    v31 = *v30;
    *v30 = a1;
    v30[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v24, a3, a4, a5, a6, a1, a2, v29);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork23MessageCenterMessagable_pXpGMd, &_ss17_NativeDictionaryVySS11SiriNetwork23MessageCenterMessagable_pXpGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = result;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v23);
  }

  return result;
}

uint64_t type metadata accessor for MessageCenter()
{
  result = type metadata singleton initialization cache for MessageCenter;
  if (!type metadata singleton initialization cache for MessageCenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of MessageCenterEvent(uint64_t a1)
{
  v2 = type metadata accessor for MessageCenterEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MessageCenterEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageCenterEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AsyncStream<MessageCenterEventProtocol>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType()
{
  result = lazy protocol witness table cache variable for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType;
  if (!lazy protocol witness table cache variable for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MessageCenter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenter and conformance MessageCenter, type metadata accessor for MessageCenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of MessageCenterProtocol.getActiveDevices()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_10_6();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_33(v6);
  v8 = OUTLINED_FUNCTION_75_1();

  return v9(v8);
}

uint64_t dispatch thunk of MessageCenterProtocol.start()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_10_6();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_33(v6);
  v8 = OUTLINED_FUNCTION_75_1();

  return v9(v8);
}

uint64_t dispatch thunk of MessageCenterProtocol.register(_:)()
{
  OUTLINED_FUNCTION_21();
  v4 = *(OUTLINED_FUNCTION_13_5(v0, v1, v2, v3) + 88);
  OUTLINED_FUNCTION_10_6();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_34(v8);
  *v9 = v10;
  v9[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  v11 = OUTLINED_FUNCTION_7_14();

  return v12(v11);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v5 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4);
  v6 = *(v5 + 96);
  v22 = v5 + 96;
  OUTLINED_FUNCTION_57_0();
  v23 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_34(v10);
  *v11 = v12;
  v11[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_9_9();
  v5 = *(OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4) + 104);
  OUTLINED_FUNCTION_10_6();
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_34(v9);
  *v10 = v11;
  v10[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_8_11();
  v13.n128_f64[0] = OUTLINED_FUNCTION_83_0();

  return v12(v13);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toPersona:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v5 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4);
  v6 = *(v5 + 112);
  v22 = v5 + 112;
  OUTLINED_FUNCTION_57_0();
  v23 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_34(v10);
  *v11 = v12;
  v11[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toPersona:timeout:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_9_9();
  v5 = *(OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4) + 120);
  OUTLINED_FUNCTION_10_6();
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_34(v9);
  *v10 = v11;
  v10[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_8_11();
  v13.n128_f64[0] = OUTLINED_FUNCTION_83_0();

  return v12(v13);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:to:)()
{
  OUTLINED_FUNCTION_21();
  v4 = *(OUTLINED_FUNCTION_13_5(v0, v1, v2, v3) + 128);
  OUTLINED_FUNCTION_10_6();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_34(v8);
  *v9 = v10;
  v9[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  v11 = OUTLINED_FUNCTION_7_14();

  return v12(v11);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:to:timeout:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 136);
  OUTLINED_FUNCTION_57_0();
  v19 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_34(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_33(v15);
  v17.n128_u64[0] = v7;

  return v19(v9, v5, v3, v1, v17);
}

uint64_t dispatch thunk of MessageCenterProtocol.reset()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_10_6();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_33(v6);
  v8 = OUTLINED_FUNCTION_75_1();

  return v9(v8);
}

uint64_t dispatch thunk of MessageCenterProtocol.setMessageDelegate(_:)()
{
  OUTLINED_FUNCTION_21();
  v4 = *(OUTLINED_FUNCTION_13_5(v0, v1, v2, v3) + 152);
  OUTLINED_FUNCTION_10_6();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_34(v8);
  *v9 = v10;
  v9[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
  v11 = OUTLINED_FUNCTION_7_14();

  return v12(v11);
}

void type metadata completion function for MessageCenter()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for AsyncStream<MessageCenterEventProtocol>?(319, &lazy cache variable for type metadata for AsyncStream<MessageCenterEventProtocol>?, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMR);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for AsyncStream<MessageCenterEventProtocol>?(319, &lazy cache variable for type metadata for AsyncStream<MessageCenterEventProtocol>.Continuation?, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for AsyncStream<MessageCenterEventProtocol>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_53_2();
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageCenter.MessageCenterApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_2_19(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    v14 = *v6;
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_16_8();
    if (!v16)
    {
      goto LABEL_14;
    }

    v5 = v15;
  }

  v17 = *v6;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0((v17[7] + 32 * v5));
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_106_0();

    return outlined init with take of Any(v18, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v5, a2, a3, a1, v17);
    OUTLINED_FUNCTION_106_0();
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x223DE38F0);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t partial apply for closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)(v2, v3, v4, v0 + 32, v0 + 72, v0 + 152);
}

uint64_t lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_53_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_14_3();
  v9(v8);
  return a2;
}

uint64_t outlined init with take of (stream: AsyncStream<MessageCenterEventProtocol>, continuation: AsyncStream<MessageCenterEventProtocol>.Continuation)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_95_0()
{
  v4 = *v2;

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[40];
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v0 + 240, v1, v2);
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1)
{
  *(v1 + 160) = a1;

  return outlined init with copy of MessageCenterDevice(v1 + 16, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_122_0(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v3 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, va);
}

uint64_t MessageCenterActorMessage.description.getter()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x223DE2180](0xD000000000000022, 0x80000002235F83E0);
  MEMORY[0x223DE2180](*v0, v0[1]);
  MEMORY[0x223DE2180](0x30203A444958202CLL, 0xE900000000000078);
  v3 = v0[8];
  v2 = v0[9];
  if (v2)
  {
    v4 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v1 = v0[9];
  }

  MEMORY[0x223DE2180](v4, v1);

  MEMORY[0x223DE2180](0x203A657A6973202CLL, 0xE800000000000000);
  MEMORY[0x223DE13E0](v0[2], v0[3]);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v5);

  MEMORY[0x223DE2180](0x3E736574796220, 0xE700000000000000);
  return 0;
}

uint64_t MessageCenterActorMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000002235F8410 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F4D656372756F73 && a2 == 0xEB000000006C6564;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 6580600 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

Swift::Int MessageCenterActorMessage.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a1);
  return Hasher._finalize()();
}

unint64_t MessageCenterActorMessage.CodingKeys.stringValue.getter(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 1635017060;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6F4D656372756F73;
      break;
    case 4:
      result = 6580600;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MessageCenterActorMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMd, &_ss22KeyedEncodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMR);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_6_17();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v25 = *(v3 + 1);
    v26 = v25;
    v24[23] = 1;
    outlined init with copy of Data(&v26, v24);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v25, *(&v25 + 1));
    v16 = v3[4];
    v17 = v3[5];
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_6_17();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[6];
    v19 = v3[7];
    LOBYTE(v25) = 3;
    OUTLINED_FUNCTION_6_17();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[8];
    v21 = v3[9];
    LOBYTE(v25) = 4;
    OUTLINED_FUNCTION_6_17();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

void *MessageCenterActorMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMd, &_ss22KeyedDecodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMR);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37) = 0;
  OUTLINED_FUNCTION_19_5();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v15;
  LOBYTE(__src[0]) = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v37;
  v34 = v38;
  LOBYTE(v37) = 2;
  OUTLINED_FUNCTION_19_5();
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v16;
  LOBYTE(v37) = 3;
  OUTLINED_FUNCTION_19_5();
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v17;
  v47 = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  (*(v8 + 8))(v12, v5);
  __src[0] = v14;
  __src[1] = v35;
  v21 = v33;
  v22 = v34;
  __src[2] = v33;
  __src[3] = v34;
  v23 = v32;
  __src[4] = v30;
  __src[5] = v32;
  OUTLINED_FUNCTION_22_6();
  __src[6] = v25;
  __src[7] = v24;
  __src[8] = v18;
  __src[9] = v20;
  outlined init with copy of MessageCenterActorMessage(__src, &v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37 = v14;
  v38 = v35;
  v39 = v21;
  v40 = v22;
  v41 = v30;
  v42 = v23;
  OUTLINED_FUNCTION_22_6();
  v43 = v27;
  v44 = v26;
  v45 = v18;
  v46 = v20;
  outlined destroy of MessageCenterActorMessage(&v37);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageCenterActorMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageCenterActorMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MessageCenterActorMessage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MessageCenterActorMessage.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageCenterActorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageCenterActorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance MessageCenterActorMessage@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = MessageCenterActorMessage.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t MessageCenterActorWrapper.sendMessage(_:from:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorWrapper.sendMessage(_:from:), 0);
}

uint64_t MessageCenterActorWrapper.sendMessage(_:from:)()
{
  v1 = v0[9];
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  outlined init with copy of MessageCenterActorProtocol?(v1 + *(v2 + 20), (v0 + 2));
  if (v0[5])
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = *(v3 + 16);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = MessageCenterActorWrapper.sendMessage(_:from:);
    v7 = v0[8];
    v8 = OUTLINED_FUNCTION_90(v0[7]);

    return v11(v8);
  }

  else
  {
    outlined destroy of MessageCenterActorProtocol?((v0 + 2));
    OUTLINED_FUNCTION_26_4();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_7();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    v9 = MessageCenterActorWrapper.sendMessage(_:from:);
  }

  else
  {
    v9 = MessageCenterActorWrapper.sendMessage(_:from:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_26_4();

  return v1();
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_6_3();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t MessageCenterActorWrapper.hash(into:)()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MessageCenterActorWrapper.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for MessageCenterActorProtocol.sendMessage(_:from:) in conformance MessageCenterActorWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterActorWrapper.sendMessage(_:from:)(a1, a2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterActorWrapper()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MessageCenterActor.init(actorSystem:handler:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v18 = type metadata accessor for NWActorID();
  v4 = OUTLINED_FUNCTION_0_0(v18);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem;
  *(v2 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem) = a1;
  type metadata accessor for MessageCenterActor(0);
  v20 = a1;
  type metadata accessor for NWActorSystem();
  OUTLINED_FUNCTION_2_20();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v12, v13);
  OUTLINED_FUNCTION_0_33();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v14, v15);

  OUTLINED_FUNCTION_21_5();
  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id, v10, v18);
  *(v2 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_handler) = v19;
  v20 = *(v2 + v11);

  OUTLINED_FUNCTION_21_5();
  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  return v2;
}

uint64_t MessageCenterActor.sendMessage(_:from:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for RemoteCallTarget();
  v1[26] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[27] = v5;
  v7 = *(v6 + 64);
  v1[28] = OUTLINED_FUNCTION_68();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed18RemoteCallArgumentVy11SiriNetwork18MessageCenterActorCGMd, &_s11Distributed18RemoteCallArgumentVy11SiriNetwork18MessageCenterActorCGMR);
  v1[29] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[30] = v9;
  v11 = *(v10 + 64);
  v1[31] = OUTLINED_FUNCTION_68();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed18RemoteCallArgumentVy11SiriNetwork018MessageCenterActorG0VGMd, &_s11Distributed18RemoteCallArgumentVy11SiriNetwork018MessageCenterActorG0VGMR);
  v1[32] = v12;
  OUTLINED_FUNCTION_15(v12);
  v1[33] = v13;
  v15 = *(v14 + 64);
  v1[34] = OUTLINED_FUNCTION_68();
  v16 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[35] = v16;
  OUTLINED_FUNCTION_15(v16);
  v1[36] = v17;
  v19 = *(v18 + 64);
  v1[37] = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](MessageCenterActor.sendMessage(_:from:), 0, 0);
}

{
  v1 = v0[25];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[37];
    v3 = v0[34];
    v4 = v0[23];
    v5 = *(v0[25] + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    memcpy(v0 + 2, v4, 0x50uLL);
    outlined init with copy of MessageCenterActorMessage(v4, (v0 + 12));
    RemoteCallArgument.init(label:name:value:)();
    lazy protocol witness table accessor for type MessageCenterActorMessage and conformance MessageCenterActorMessage();
    lazy protocol witness table accessor for type MessageCenterActorMessage and conformance MessageCenterActorMessage();
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v6 = v0[37];
    v14 = v0[31];
    v0[22] = v0[24];
    type metadata accessor for MessageCenterActor(0);

    RemoteCallArgument.init(label:name:value:)();
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v15 = v0[37];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v16 = v0[37];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v17)
    {
      v18 = v0[37];
      v19 = v0[35];
      v20 = v0[36];
      v22 = v0[33];
      v21 = v0[34];
      v23 = v0[32];
      (*(v0[30] + 8))(v0[31], v0[29]);
      (*(v22 + 8))(v21, v23);
      v24 = *(v20 + 8);
      v25 = OUTLINED_FUNCTION_41_0();
      v26(v25);
      v27 = v0[37];
      v28 = v0[34];
      v29 = v0[31];
      v30 = v0[28];

      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_25_4();

      __asm { BRAA            X1, X16 }
    }

    v33 = v0[28];
    MEMORY[0x223DE15D0](0xD000000000000046, 0x80000002235F2D60);
    v34 = *(MEMORY[0x277CD8E40] + 4);
    v35 = swift_task_alloc();
    v0[38] = v35;
    OUTLINED_FUNCTION_0_33();
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v36, v37);
    *v35 = v0;
    v35[1] = MessageCenterActor.sendMessage(_:from:);
    v38 = v0[37];
    v39 = v0[28];
    v40 = v0[25];
    OUTLINED_FUNCTION_25_4();

    return MEMORY[0x282125BC8]();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = MessageCenterActor.sendMessage(_:from:);
    v8 = v0[24];
    v9 = v0[25];
    OUTLINED_FUNCTION_90(v0[23]);
    OUTLINED_FUNCTION_25_4();

    return MessageCenterActor.sendMessage(_:from:)(v10, v11);
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_7();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;
  *(v8 + 312) = v0;

  if (v0)
  {
    v9 = MessageCenterActor.sendMessage(_:from:);
  }

  else
  {
    v9 = MessageCenterActor.sendMessage(_:from:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[31];
  v8 = v1[28];

  v9 = *(v3 + 8);

  return v9();
}

{
  OUTLINED_FUNCTION_7_0();
  v0[5] = *(v0[4] + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_handler);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = MessageCenterActor.sendMessage(_:from:);
  v2 = v0[3];
  v3 = OUTLINED_FUNCTION_90(v0[2]);

  return MessageCenterActorHandler.handleMessage(_:from:)(v3, v4);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_7();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[4];

    return MEMORY[0x2822009F8](MessageCenterActor.sendMessage(_:from:), v9, 0);
  }

  else
  {
    v10 = v3[5];

    OUTLINED_FUNCTION_6_3();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_3();
  v3 = *(v0 + 56);

  return v2();
}

{
  outlined init with copy of MessageCenterActorProtocol?(v0[9], (v0 + 2));
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    type metadata accessor for MessageCenterActor(0);
    if (swift_dynamicCast())
    {
      v0[11] = v0[7];
      v1 = swift_task_alloc();
      v0[12] = v1;
      *v1 = v0;
      v1[1] = MessageCenterActor.sendMessage(_:from:);
      v2 = v0[10];
      OUTLINED_FUNCTION_90(v0[8]);

      return MessageCenterActor.sendMessage(_:from:)();
    }
  }

  else
  {
    outlined destroy of MessageCenterActorProtocol?((v0 + 2));
  }

  lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  swift_allocError();
  *v4 = 1;
  *(v4 + 8) = 8;
  swift_willThrow();
  OUTLINED_FUNCTION_6_3();

  return v5();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_7();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = MessageCenterActor.sendMessage(_:from:);
  }

  else
  {
    v9 = MessageCenterActor.sendMessage(_:from:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_26_4();

  return v2();
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t MessageCenterActor.sendMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  v20 = OUTLINED_FUNCTION_17_7();
  v21(v20);
  (*(v19 + 8))(v15, v16);
  (*(v18 + 8))(v12, v14);
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_41_0();
  v24(v23);
  v25 = v13[37];
  v26 = v13[34];
  v27 = v13[31];
  v28 = v13[28];

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_63();
  v20 = OUTLINED_FUNCTION_17_7();
  v21(v20);
  (*(v19 + 8))(v15, v16);
  (*(v18 + 8))(v12, v14);
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_41_0();
  v24(v23);
  v25 = v13[39];
  v26 = v13[37];
  v27 = v13[34];
  v28 = v13[31];
  v29 = v13[28];

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_63_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_11_0();
  v14 = v13[8];
  v15 = v13[7];
  v16 = v13[6];
  v17 = v13[5];
  v18 = v13[4];
  v19 = v13[3];
  v20 = v13[2];
  v21 = *v12;
  OUTLINED_FUNCTION_5_1();
  *v22 = v21;

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_63_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t MessageCenterActor.sendMessage(_:from:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = MessageCenterActor.sendMessage(_:from:);

  return MessageCenterActor.sendMessage(_:from:)();
}

uint64_t MessageCenterActor.sendMessage(_:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActor.sendMessage(_:from:), v2);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActor.sendMessage(_:from:), 0);
}

unint64_t lazy protocol witness table accessor for type MessageCenterActorMessage and conformance MessageCenterActorMessage()
{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of MessageCenterActorDelegate.didReceiveMesage(_:from:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = (OUTLINED_FUNCTION_13_6(a1, a2, a3, a4) + 8);
  v17 = *v16 + **v16;
  v7 = (*v16)[1];
  v8 = swift_task_alloc();
  *(v4 + 88) = v6;
  *(v4 + 96) = v8;
  *(v4 + 16) = v15;
  *(v4 + 32) = v14;
  *(v4 + 48) = v13;
  *(v4 + 64) = v12;
  *(v4 + 80) = v5;
  *v8 = v4;
  v9 = OUTLINED_FUNCTION_16_9(v8, v4 + 16);

  return v10(v9);
}

uint64_t dispatch thunk of MessageCenterActorDelegate.didReceiveMesage(_:from:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  OUTLINED_FUNCTION_6_3();

  return v5();
}

uint64_t dispatch thunk of MessageCenterActorProtocol.sendMessage(_:from:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = (OUTLINED_FUNCTION_13_6(a1, a2, a3, a4) + 16);
  v17 = *v16 + **v16;
  v7 = (*v16)[1];
  v8 = swift_task_alloc();
  *(v4 + 88) = v6;
  *(v4 + 96) = v8;
  *(v4 + 16) = v15;
  *(v4 + 32) = v14;
  *(v4 + 48) = v13;
  *(v4 + 64) = v12;
  *(v4 + 80) = v5;
  *v8 = v4;
  v9 = OUTLINED_FUNCTION_16_9(v8, v4 + 16);

  return v10(v9);
}

uint64_t static MessageCenterActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessageCenterActor(0);
  type metadata accessor for NWActorSystem();
  OUTLINED_FUNCTION_2_20();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v5, v6);
  OUTLINED_FUNCTION_0_33();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v7, v8);
  v9 = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
    v12 = type metadata accessor for NWActorID();
    OUTLINED_FUNCTION_71(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem) = a2;
  }

  return v10;
}

uint64_t MessageCenterActor.deinit()
{
  v1 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
  v2 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem;
  type metadata accessor for NWActorSystem();
  OUTLINED_FUNCTION_2_20();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v3, v4);
  dispatch thunk of DistributedActorSystem.resignID(_:)();
  v5 = type metadata accessor for NWActorID();
  OUTLINED_FUNCTION_71(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_handler);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActor.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
    v2 = type metadata accessor for NWActorID();
    OUTLINED_FUNCTION_71(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    MessageCenterActor.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata completion function for MessageCenterActor()
{
  result = type metadata accessor for NWActorID();
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

Swift::Int MessageCenterActor.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MessageCenterActor(0);
  OUTLINED_FUNCTION_0_33();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MessageCenterActor.unownedExecutor.getter()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for MessageCenterActor(0);
    OUTLINED_FUNCTION_0_33();
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v1, v2);
    OUTLINED_FUNCTION_41_0();
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MessageCenterActor@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessageCenterActor(0);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type NWActorID and conformance NWActorID, MEMORY[0x277CD9070]);
  result = DistributedActor<>.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MessageCenterActor()
{
  v1 = *v0;
  type metadata accessor for MessageCenterActor(0);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type NWActorID and conformance NWActorID, MEMORY[0x277CD9070]);
  return DistributedActor<>.encode(to:)();
}

uint64_t protocol witness for MessageCenterActorProtocol.sendMessage(_:from:) in conformance MessageCenterActor(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return MessageCenterActor.sendMessage(_:from:)(a1, a2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MessageCenterActor()
{
  v1 = *v0;
  type metadata accessor for MessageCenterActor(0);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
  return DistributedActor.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterActor()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for MessageCenterActor(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance MessageCenterActor@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MessageCenterActor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for MessageCenterActor(0);
  v5 = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t MessageCenterActorHandler.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  swift_defaultActor_initialize();
  *(v3 + 120) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorHandler_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.messageCenterActor);
  (*(*(v10 - 8) + 16))(v3 + v9, v11, v10);
  *(v3 + 120) = a2;
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  v13 = type metadata accessor for AsyncSequentialExecutor();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = AsyncSequentialExecutor.init(label:priority:)(0xD000000000000012, 0x80000002235F2E20, v8);
  swift_unknownObjectRelease();
  *(v3 + 128) = v16;
  return v3;
}

uint64_t MessageCenterActorHandler.handleMessage(_:from:)(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorHandler.handleMessage(_:from:), v2);
}

void MessageCenterActorHandler.handleMessage(_:from:)()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  outlined init with copy of MessageCenterActorMessage(v2, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of MessageCenterActorMessage(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 400);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315394;
    v8 = MessageCenterActorMessage.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 32), *(v5 + 40), &v26);
    _os_log_impl(&dword_223515000, v3, v4, "actor received %s from IDS %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v7, -1, -1);
    MEMORY[0x223DE38F0](v6, -1, -1);
  }

  v11 = *(v0 + 416);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    v16 = *(v0 + 400);
    v17 = *(v14 + 120);
    *(v0 + 184) = type metadata accessor for MessageCenterActor(0);
    OUTLINED_FUNCTION_0_33();
    v20 = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v18, v19);
    *(v0 + 80) = 0u;
    *(v0 + 192) = v20;
    *(v0 + 160) = v15;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 384) = *(v16 + 32);
    *(v0 + 16) = *(v16 + 32);
    v21 = *(v16 + 56);
    *(v0 + 32) = *(v16 + 48);
    *(v0 + 40) = v21;

    outlined init with copy of String(v0 + 384, v0 + 304);

    outlined destroy of MessageCenterActorProtocol?(v0 + 80);
    outlined init with take of MessageCenterDeviceProtocol(v0 + 160, v0 + 80);
    v22 = *(v14 + 128);
    outlined init with copy of MessageCenterDevice(v0 + 16, v0 + 160);
    v23 = swift_allocObject();
    v23[2] = v13;
    v23[3] = v17;
    memcpy(v23 + 4, v16, 0x50uLL);
    memcpy(v23 + 14, (v0 + 160), 0x90uLL);
    outlined init with copy of MessageCenterActorMessage(v16, v0 + 304);
    swift_unknownObjectRetain();
    AsyncSequentialExecutor.submit(taskName:task:)(0x6F6D796E6F6E613CLL, 0xEB000000003E7375, &async function pointer to partial apply for closure #1 in MessageCenterActorHandler.handleMessage(_:from:), v23);

    swift_unknownObjectRelease();
    outlined destroy of MessageCenterDevice(v0 + 16);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_4();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in MessageCenterActorHandler.handleMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in MessageCenterActorHandler.handleMessage(_:from:), a1, 0);
}

uint64_t MessageCenterActorHandler.deinit()
{
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 112);
  v1 = *(v0 + 128);

  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorHandler_logger;
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_71(v3);
  (*(v4 + 8))(v0 + v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActorHandler.__deallocating_deinit()
{
  MessageCenterActorHandler.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata completion function for MessageCenterActorHandler()
{
  result = type metadata accessor for Logger();
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

void type metadata completion function for MessageCenterActorWrapper()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageCenterActorProtocol?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for MessageCenterActorProtocol?()
{
  if (!lazy cache variable for type metadata for MessageCenterActorProtocol?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MessageCenterActorProtocol?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageCenterActorMessage(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageCenterActorMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MessageCenterActorWrapper(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActorWrapper and conformance MessageCenterActorWrapper, type metadata accessor for MessageCenterActorWrapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MessageCenterActor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with copy of MessageCenterActorProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessageCenterActorProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in MessageCenterActorHandler.handleMessage(_:from:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in MessageCenterActorHandler.handleMessage(_:from:)(v2, v3, v0 + 32, v0 + 112);
}

uint64_t getEnumTagSinglePayload for MessageCenterActorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageCenterActorMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageCenterActorListenerPublisherDelegate.didReceiveMessage(_:from:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1[1];
  v20 = *a1;
  v17 = a1[3];
  v18 = a1[2];
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a4 + 8);
  OUTLINED_FUNCTION_57_0();
  v21 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  *(v4 + 88) = v9;
  *(v4 + 96) = v14;
  *(v4 + 16) = v20;
  *(v4 + 32) = v19;
  *(v4 + 48) = v18;
  *(v4 + 64) = v17;
  *(v4 + 80) = v8;
  *v14 = v4;
  OUTLINED_FUNCTION_33(v14);

  return v21(v15, a2, a3, a4);
}

uint64_t dispatch thunk of MessageCenterActorListenerPublisherProtocol.publish()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  OUTLINED_FUNCTION_57_0();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_34(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_33(v9);

  return v12(a1, a2);
}

uint64_t dispatch thunk of MessageCenterActorListenerPublisherProtocol.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 72);
  OUTLINED_FUNCTION_57_0();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_34(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_33(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_13_4(v12);
    (*(v14 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = OUTLINED_FUNCTION_10_8();

      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
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

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return OUTLINED_FUNCTION_10_8();
}

void closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.deviceModelProvider()
{
  v0 = MEMORY[0x223DE2070](0x536C65646F4D5748, 0xEA00000000007274);
  v1 = MGGetStringAnswer();

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.idsIdentifierProvider()
{
  result = IDSCopyLocalDeviceUniqueID();
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.nwSystemProvider@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for actorSystem != -1)
  {
    swift_once();
  }

  return outlined init with copy of UMUserPersonProtocol(static MessageCenter.actorSystem, a1);
}

double MessageCenterActorListenerPublisher.sourceActor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[14];
  if (v4)
  {
    v5 = v1[15];
    v6 = v2[15];

    v4(v7);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v4);
  }

  else
  {
    v10 = v1[20];
    v9 = v1[21];
    v11 = v2[21];

    v10(v29, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMd, &_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMR);
    type metadata accessor for NWActorSystem();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = v2[23];
      v15 = type metadata accessor for MessageCenterActorHandler(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = MessageCenterActorHandler.init(delegate:)(Strong, v14);
      v19 = type metadata accessor for MessageCenterActor(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();

      v22 = MessageCenterActor.init(actorSystem:handler:)(v28, v18);
      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for closure #1 in MessageCenterActorListenerPublisher.sourceActor.getter;
      *(v23 + 24) = v22;
      v24 = v2[14];
      v25 = v2[15];
      v2[14] = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned MessageCenterActor);
      v2[15] = v23;
      swift_retain_n();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v24);
      *(a1 + 24) = v19;
      OUTLINED_FUNCTION_0_34();
      *(a1 + 32) = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(v26, v27);

      *a1 = v22;
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@owned MessageCenterActor)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  a2[3] = type metadata accessor for MessageCenterActor(0);
  result = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t MessageCenterActorListenerPublisher.deviceModel.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = v1(v3);

  return v4;
}

uint64_t MessageCenterActorListenerPublisher.localIDSIdentifier.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = v1(v3);

  return v4;
}

uint64_t MessageCenterActorListenerPublisher.nwActorSystem.getter()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  v2(v3);
}

uint64_t MessageCenterActorListenerPublisher.publish()()
{
  OUTLINED_FUNCTION_7_0();
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](MessageCenterActorListenerPublisher.publish(), v0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(&lazy protocol witness table cache variable for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher, type metadata accessor for MessageCenterActorListenerPublisher);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MessageCenterActorListenerPublisher.publish(), v5);

  OUTLINED_FUNCTION_6_3();

  return v6();
}

uint64_t closure #1 in MessageCenterActorListenerPublisher.publish()()
{
  v18 = v0;
  v1 = v0[17];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000002235F81F0, &v17);
    _os_log_impl(&dword_223515000, v2, v3, "publishing actor with service name %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DE38F0](v5, -1, -1);
    MEMORY[0x223DE38F0](v4, -1, -1);
  }

  v6 = v0[17];
  MessageCenterActorListenerPublisher.sourceActor.getter((v0 + 7));
  if (v0[10])
  {
    v7 = v0[17];
    outlined init with take of MessageCenterDeviceProtocol(v0 + 7, v0 + 2);
    MessageCenterActorListenerPublisher.nwActorSystem.getter();
    v8 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = closure #1 in MessageCenterActorListenerPublisher.publish();

    return NWActorSystem.publishActor(_:)((v0 + 2));
  }

  else
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?((v0 + 7), &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_223515000, v11, v12, "no source actor", v13, 2u);
      MEMORY[0x223DE38F0](v13, -1, -1);
    }

    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_4_17(v14, v15);
    OUTLINED_FUNCTION_6_3();

    return v16();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = closure #1 in MessageCenterActorListenerPublisher.publish();
  }

  else
  {
    v6 = closure #1 in MessageCenterActorListenerPublisher.publish();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_6_3();

  return v1();
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[19];
  OUTLINED_FUNCTION_6_3();

  return v2();
}

uint64_t *MessageCenterActorListenerPublisher.deinit()
{
  v1 = v0[15];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v0[14]);
  v2 = v0[17];

  v3 = v0[19];

  v4 = v0[21];

  outlined destroy of weak ConnectionProviderDelegate?((v0 + 22));
  v5 = OBJC_IVAR____TtC11SiriNetwork35MessageCenterActorListenerPublisher_logger;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_4(v6);
  (*(v7 + 8))(v0 + v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActorListenerPublisher.__deallocating_deinit()
{
  MessageCenterActorListenerPublisher.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MessageCenterActorListenerPublisher()
{
  result = type metadata singleton initialization cache for MessageCenterActorListenerPublisher;
  if (!type metadata singleton initialization cache for MessageCenterActorListenerPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MessageCenterActorListenerPublisher()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MessageCenterNWActorSystemProtocol.publishActor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  OUTLINED_FUNCTION_57_0();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_34(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_33(v11);

  return v14(a1, a2, a3);
}

uint64_t dispatch thunk of MessageCenterNWActorSystemProtocol.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  OUTLINED_FUNCTION_57_0();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_34(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_33(v15);

  return v18(a1, a2, a3, a4, a5);
}

uint64_t instantiation function for generic protocol witness table for MessageCenterActorListenerPublisher(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(&lazy protocol witness table cache variable for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher, type metadata accessor for MessageCenterActorListenerPublisher);
  *(a1 + 8) = result;
  return result;
}

char *MessageCenterActorListenerPublisher.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  *(v0 + 15) = 0;
  *(v0 + 16) = closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.deviceModelProvider;
  *(v0 + 17) = 0;
  *(v0 + 18) = closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.idsIdentifierProvider;
  *(v0 + 19) = 0;
  *(v0 + 20) = closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.nwSystemProvider;
  *(v0 + 21) = 0;
  *(v0 + 23) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11SiriNetwork35MessageCenterActorListenerPublisher_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4(v2);
  (*(v3 + 16))(&v0[v1]);
  return v0;
}

uint64_t partial apply for closure #1 in MessageCenterActorListenerPublisher.publish()(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_34(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return closure #1 in MessageCenterActorListenerPublisher.publish()(a1, v3, v4, v5);
}

uint64_t NWActorSystem.publishActor(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](NWActorSystem.publishActor(_:), 0, 0);
}

uint64_t NWActorSystem.publishActor(_:)()
{
  outlined init with copy of UMUserPersonProtocol(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
  v1 = type metadata accessor for MessageCenterActor(0);
  if (swift_dynamicCast())
  {
    v2 = v0[7];
    v0[10] = v2;
    v3 = *(MEMORY[0x277CD8E50] + 4);
    v4 = swift_task_alloc();
    v0[11] = v4;
    OUTLINED_FUNCTION_0_34();
    v7 = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(v5, v6);
    *v4 = v0;
    v4[1] = NWActorSystem.publishActor(_:);
    v8 = v0[9];

    return MEMORY[0x282125BF8](v2, v1, v7);
  }

  else
  {
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_4_17(v9, v10);
    OUTLINED_FUNCTION_6_3();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 88);
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = NWActorSystem.publishActor(_:);
  }

  else
  {
    v7 = NWActorSystem.publishActor(_:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_6_3();

  return v2();
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of MessageCenterActorBrowseDelegate.didFindDevice(_:for:)()
{
  OUTLINED_FUNCTION_21();
  v6 = *(OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5) + 8);
  OUTLINED_FUNCTION_57_0();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 16) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_33(v10);
  v11 = OUTLINED_FUNCTION_15_6();

  return v13(v11);
}

uint64_t dispatch thunk of MessageCenterActorBrowseDelegate.didLoseDevice(_:for:)()
{
  OUTLINED_FUNCTION_21();
  v6 = *(OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5) + 16);
  OUTLINED_FUNCTION_57_0();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 16) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_33(v10);
  v11 = OUTLINED_FUNCTION_15_6();

  return v13(v11);
}

SiriNetwork::MessageCenterActorBrowserType_optional __swiftcall MessageCenterActorBrowserType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MessageCenterActorBrowserType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriNetwork_MessageCenterActorBrowserType_universalBrowser;
  }

  else
  {
    v4.value = SiriNetwork_MessageCenterActorBrowserType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MessageCenterActorBrowserType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6563697665444941;
  }
}

SiriNetwork::MessageCenterActorBrowserType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance MessageCenterActorBrowserType@<W0>(Swift::String *a1@<X0>, SiriNetwork::MessageCenterActorBrowserType_optional *a2@<X8>)
{
  result.value = MessageCenterActorBrowserType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MessageCenterActorBrowserType@<X0>(uint64_t *a1@<X8>)
{
  result = MessageCenterActorBrowserType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *MessageCenterActorBrowser.init(browserType:usePersona:)(char a1, char a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  type metadata accessor for MessageCenterUserManager();
  swift_allocObject();
  v6 = MessageCenterUserManager.init(userProvider:)(0, 0);
  v7 = MEMORY[0x277D84FA0];
  v2[14] = v6;
  v2[15] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMd, &_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMR);
  lazy protocol witness table accessor for type MessageCenterUser and conformance MessageCenterUser();
  v2[16] = Dictionary.init(dictionaryLiteral:)();
  v2[18] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4(v9);
  (*(v10 + 16))(v3 + v8);
  *(v3 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_started) = 0;
  v11 = (v3 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + 152) = a1 & 1;
  *(v3 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_usePersona) = a2 & 1;
  v12 = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints) = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints) = v12;
  *(v3 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors) = v12;
  return v3;
}

uint64_t MessageCenterActorBrowser.addActiveEndpoint(_:to:)()
{
  OUTLINED_FUNCTION_41_5();
  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  OUTLINED_FUNCTION_57_3();
  v3 = *(v0 + v2);

  v4 = OUTLINED_FUNCTION_2_13();
  v5 = specialized Dictionary.subscript.getter(v4);

  if (v5)
  {
    outlined init with copy of MessageCenterEndpoint(v1, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v11, v12, v13, v37);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v47, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    OUTLINED_FUNCTION_22_7();

    v14 = *(v0 + v2);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = OUTLINED_FUNCTION_8_12();
    OUTLINED_FUNCTION_36_4(v15, v16, v17, v18, v19, v20, v21, v22, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_53_3(inited, xmmword_2235EFCB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork21MessageCenterEndpointVGMd, &_sShy11SiriNetwork21MessageCenterEndpointVGMR);
    v24 = Dictionary.init(dictionaryLiteral:)();
    v25 = *(v0 + v2);
    *(v0 + v2) = v24;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_2235EFCB0;
    outlined init with copy of MessageCenterEndpoint(v1, v27 + 32);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21MessageCenterEndpointV_Tt0g5(v27);
    OUTLINED_FUNCTION_22_7();
    v28 = *(v0 + v2);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = OUTLINED_FUNCTION_8_12();
    return OUTLINED_FUNCTION_36_4(v29, v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, v46[0]);
  }
}

uint64_t MessageCenterActorBrowser.addActiveIneligibleEndpoint(_:to:)()
{
  OUTLINED_FUNCTION_41_5();
  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints;
  OUTLINED_FUNCTION_57_3();
  v3 = *(v0 + v2);

  v4 = OUTLINED_FUNCTION_2_13();
  v5 = specialized Dictionary.subscript.getter(v4);

  if (v5)
  {
    outlined init with copy of MessageCenterEndpoint(v1, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v11, v12, v13, v28);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v37, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_53_3(inited, xmmword_2235EFCB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork21MessageCenterEndpointVGMd, &_sShy11SiriNetwork21MessageCenterEndpointVGMR);
    v15 = Dictionary.init(dictionaryLiteral:)();
    v16 = *(v0 + v2);
    *(v0 + v2) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_2235EFCB0;
    outlined init with copy of MessageCenterEndpoint(v1, v18 + 32);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21MessageCenterEndpointV_Tt0g5(v18);
    OUTLINED_FUNCTION_22_7();
    v19 = *(v0 + v2);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = OUTLINED_FUNCTION_8_12();
    return OUTLINED_FUNCTION_36_4(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
  }
}

uint64_t MessageCenterActorBrowser.addActiveActor(_:to:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = type metadata accessor for MessageCenterActorWrapper(0);
  v1[29] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_57_0();
  v1[30] = v7;
  v9 = *(v8 + 64) + 15;
  v1[31] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t MessageCenterActorBrowser.addActiveActor(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();
  v13 = *(v12 + 216);
  v14 = *(v12 + 224);
  v15 = *(v12 + 208);
  v16 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors;
  swift_beginAccess();
  v17 = *(v14 + v16);

  v18 = OUTLINED_FUNCTION_14_3();
  specialized Dictionary.subscript.getter(v18);
  OUTLINED_FUNCTION_52();

  if (v13)
  {
    v20 = *(v12 + 248);
    v19 = *(v12 + 256);
    v21 = *(v12 + 232);
    v23 = *(v12 + 208);
    v22 = *(v12 + 216);
    outlined init with copy of UMUserPersonProtocol(*(v12 + 200), v12 + 112);
    UUID.init()();
    v24 = v20 + *(v21 + 20);
    *(v24 + 32) = 0;
    *v24 = 0u;
    *(v24 + 16) = 0u;
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v24, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    outlined init with take of RPCOspreyConnectionProtocol((v12 + 112), v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v13;
    specialized _NativeSet.update(with:isUnique:)(v20, isUniquelyReferenced_nonNull_native, v19);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v19, &_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork25MessageCenterActorWrapperVGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork25MessageCenterActorWrapperVGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2235EFCB0;
    *(inited + 32) = v23;
    *(inited + 40) = v22;
    *(inited + 48) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork25MessageCenterActorWrapperVGMd, &_sShy11SiriNetwork25MessageCenterActorWrapperVGMR);
    v27 = Dictionary.init(dictionaryLiteral:)();
    v28 = *(v14 + v16);
    *(v14 + v16) = v27;
  }

  else
  {
    v30 = *(v12 + 232);
    v29 = *(v12 + 240);
    v32 = *(v12 + 208);
    v31 = *(v12 + 216);
    v33 = *(v12 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
    v34 = *(v29 + 72);
    v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2235EFCB0;
    v37 = v36 + v35;
    outlined init with copy of UMUserPersonProtocol(v33, v12 + 72);
    UUID.init()();
    v38 = v37 + *(v30 + 20);
    *(v38 + 32) = 0;
    *v38 = 0u;
    *(v38 + 16) = 0u;
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v38, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    outlined init with take of RPCOspreyConnectionProtocol((v12 + 72), v38);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork25MessageCenterActorWrapperV_Tt0g5();
    OUTLINED_FUNCTION_27_3();
    v39 = *(v14 + v16);
    swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v14 + v16);
    OUTLINED_FUNCTION_5_2();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v14 + v16) = v51;
    swift_endAccess();
  }

  v41 = *(v12 + 248);
  v40 = *(v12 + 256);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v51, a11, a12);
}

uint64_t MessageCenterActorBrowser.start()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.start(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_started) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_57_1(v3))
    {
      v4 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v4);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "ActorBrowser has already been started");
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_6_3();

    return v7();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_started) = 1;
    v9 = (v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider);
    if (!*v9)
    {
      v10 = *(v0 + 16);
      v11 = v9[1];
      *v9 = partial apply for closure #1 in MessageCenterActorBrowser.start();
      v9[1] = v10;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(0);
    }

    v12 = *(v0 + 16) + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_57_1(v14))
    {
      v15 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v15);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v16, v17, "setting up user manager");
      OUTLINED_FUNCTION_12();
    }

    v18 = *(v0 + 16);

    *(v0 + 24) = *(v18 + 112);

    v19 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v19, v20, 0);
  }
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 16);
  *(*(v0 + 24) + 136) = &protocol witness table for MessageCenterActorBrowser;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](MessageCenterActorBrowser.start(), v1, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[4] = *(v0[2] + 112);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterUserManager.start()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  OUTLINED_FUNCTION_6_3();

  return v6();
}

uint64_t closure #1 in MessageCenterActorBrowser.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageCenterEndpointBrowser(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();

  v10 = specialized MessageCenterEndpointBrowser.init(persona:delegate:usePersona:browserProvider:)(a1, a2, a3, 1, 0, 0, v9);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser);
  return v10;
}

uint64_t closure #1 in MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 24))(v4, v5);
  if (v7)
  {
    if (v2 == v6 && v7 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t MessageCenterActorBrowser.didUpdateUsers()()
{
  *(v1 + 80) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.didUpdateUsers(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[10];
  v0[11] = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_57_1(v3))
  {
    v4 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v4);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "Users updated. Re-fetching list");
    OUTLINED_FUNCTION_12();
  }

  v7 = v0[10];

  v0[12] = *(v7 + 112);

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_33(v8);

  return MessageCenterUserManager.allUsers()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = v2[13];
  v11 = *v1;
  v3[14] = v5;
  v3[15] = v0;

  if (v0)
  {
    v6 = v3[10];
    v7 = MessageCenterActorBrowser.didUpdateUsers();
  }

  else
  {
    v8 = v3[12];
    v9 = v3[10];

    v7 = MessageCenterActorBrowser.didUpdateUsers();
    v6 = v9;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 80) + 120);

  v4 = specialized Set.subtracting(_:)(v3, v1);
  *(v0 + 128) = v4;

  v5 = *(v4 + 32);
  *(v0 + 224) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 128);
LABEL_8:
    *(v0 + 136) = v8;
    *(v0 + 144) = v9;
    v13 = OUTLINED_FUNCTION_5_16(v10, v9);
    OUTLINED_FUNCTION_18_6(v13, v14);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_3_17(v15);

    return MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(v16);
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    v10 = *(v0 + 128);
    while (v12 != v11)
    {
      v9 = v11 + 1;
      v8 = *(v10 + 8 * v11++ + 64);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_38_3();
    v18 = *(v2 + 120);

    v19 = OUTLINED_FUNCTION_41_0();
    v21 = specialized Set.subtracting(_:)(v19, v20);
    *(v0 + 176) = v21;
    *(v0 + 225) = *(v21 + 32);
    v22 = *(v21 + 56);
    OUTLINED_FUNCTION_7_15();
    v26 = v25 & v24;
    if (v26)
    {
      v27 = 0;
LABEL_16:
      *(v0 + 184) = v26;
      *(v0 + 192) = v27;
      v30 = *(v23 + 48);
      OUTLINED_FUNCTION_2_21((v27 << 11) | (32 * __clz(__rbit64(v26))));

      v31 = swift_task_alloc();
      *(v0 + 216) = v31;
      *v31 = v0;
      v32 = OUTLINED_FUNCTION_1_17(v31);

      return MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(v32);
    }

    else
    {
      OUTLINED_FUNCTION_34_4();
      while (v29 != v28)
      {
        v23 = OUTLINED_FUNCTION_52_4(v23);
        if (v26)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_38_3();
      v33 = *(v18 + 120);
      *(v18 + 120) = v4;

      OUTLINED_FUNCTION_6_3();

      return v34();
    }
  }
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[21];
  v3 = v1[20];
  v4 = v1[19];
  v5 = v1[10];
  v6 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;

  return MEMORY[0x2822009F8](MessageCenterActorBrowser.didUpdateUsers(), v5, 0);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[27];
  v3 = v1[26];
  v4 = v1[25];
  v5 = v1[10];
  v6 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;

  return MEMORY[0x2822009F8](MessageCenterActorBrowser.didUpdateUsers(), v5, 0);
}

{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_55();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_223515000, v6, v7, "Failed to re-fetch users %@", v10, 0xCu);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_3();

  return v14();
}

void MessageCenterActorBrowser.didUpdateUsers()()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 144);
  v4 = (*(v2 + 136) - 1) & *(v2 + 136);
  if (v4)
  {
    v5 = *(v2 + 128);
LABEL_7:
    *(v2 + 136) = v4;
    *(v2 + 144) = v3;
    v7 = OUTLINED_FUNCTION_5_16(v5, v3);
    OUTLINED_FUNCTION_18_6(v7, v8);

    v9 = swift_task_alloc();
    *(v2 + 168) = v9;
    *v9 = v2;
    v10 = OUTLINED_FUNCTION_3_17(v9);

    MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(v10);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 128);
      if (v6 >= (((1 << *(v2 + 224)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_38_3();
    v11 = *(v0 + 120);

    v12 = OUTLINED_FUNCTION_41_0();
    v14 = specialized Set.subtracting(_:)(v12, v13);
    *(v2 + 176) = v14;
    *(v2 + 225) = *(v14 + 32);
    v15 = *(v14 + 56);
    OUTLINED_FUNCTION_7_15();
    v19 = v18 & v17;
    if (v19)
    {
      v20 = 0;
LABEL_15:
      *(v2 + 184) = v19;
      *(v2 + 192) = v20;
      v23 = *(v16 + 48);
      OUTLINED_FUNCTION_2_21((v20 << 11) | (32 * __clz(__rbit64(v19))));

      v24 = swift_task_alloc();
      *(v2 + 216) = v24;
      *v24 = v2;
      v25 = OUTLINED_FUNCTION_1_17(v24);

      MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(v25);
    }

    else
    {
      OUTLINED_FUNCTION_34_4();
      while (v22 != v21)
      {
        v16 = OUTLINED_FUNCTION_52_4(v16);
        if (v19)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_38_3();
      v26 = *(v11 + 120);
      *(v11 + 120) = v1;

      OUTLINED_FUNCTION_6_3();

      v27();
    }
  }
}

{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 192);
  v4 = (*(v2 + 184) - 1) & *(v2 + 184);
  if (v4)
  {
    v5 = *(v2 + 176);
LABEL_7:
    *(v2 + 184) = v4;
    *(v2 + 192) = v3;
    v7 = *(v5 + 48);
    OUTLINED_FUNCTION_2_21((v3 << 11) | (32 * __clz(__rbit64(v4))));

    v8 = swift_task_alloc();
    *(v2 + 216) = v8;
    *v8 = v2;
    v9 = OUTLINED_FUNCTION_1_17();

    MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(v9);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 176);
      if (v6 >= (((1 << *(v2 + 225)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_38_3();
    v10 = *(v0 + 120);
    *(v0 + 120) = v1;

    OUTLINED_FUNCTION_6_3();

    v11();
  }
}

uint64_t specialized Set.subtracting(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(a1);
    return a2;
  }

  else
  {

    return specialized _NativeSet.subtracting<A>(_:)(a1, a2);
  }
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = *(a1 + 1);
  *(v2 + 72) = a1[3];
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.startDeviceBrowserForUser(_:), v1);
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)()
{
  v38 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v0[10] = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v34 = v0[8];
    v8 = v0[6];
    v7 = v0[7];
    v9 = OUTLINED_FUNCTION_55();
    v10 = OUTLINED_FUNCTION_54();
    v35 = v10;
    *v9 = 136315138;

    _StringGuts.grow(_:)(30);

    OUTLINED_FUNCTION_40_4();
    v36 = v11;
    v37 = 0xEE00203A44496972;
    MEMORY[0x223DE2180](v8, v7);
    v12 = OUTLINED_FUNCTION_4_18();
    MEMORY[0x223DE2180](v12);
    MEMORY[0x223DE2180](v34, v6);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, 0xEE00203A44496972, &v35);

    *(v9 + 4) = v13;
    OUTLINED_FUNCTION_21_6(&dword_223515000, v14, v15, "Starting device browser for user %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  v16 = v0[5] + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider;
  v17 = *v16;
  if (*v16)
  {
    v19 = v0[8];
    v18 = v0[9];
    v20 = *(v16 + 8);

    v21 = v17(v19, v18);
    v23 = v22;
    v0[11] = v21;
    v0[12] = v22;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v17);
    swift_getObjectType();
    v24 = *(v23 + 8);
    v26 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MessageCenterActorBrowser.startDeviceBrowserForUser(_:), v26, v25);
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_57_1(v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v29);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v30, v31, "Failed to start a device browser because we're missing a browser provider");
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_6_3();

    return v32();
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[11];
  MessageCenterEndpointBrowser.start()();
  v0[13] = v2;
  v3 = v0[5];
  if (v2)
  {
    v4 = MessageCenterActorBrowser.startDeviceBrowserForUser(_:);
  }

  else
  {
    v4 = MessageCenterActorBrowser.startDeviceBrowserForUser(_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}