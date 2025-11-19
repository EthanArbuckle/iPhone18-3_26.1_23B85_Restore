Swift::Int RequestManagerError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestManagerResultCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](qword_265348848[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestManagerResultCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](qword_265348848[v1]);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance RequestManagerResultCode@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *RequestManager.ftMessageDelivery.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t RequestManager.send(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for KDSRegistration.RequestManagerError.ErrorType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestManager.send(request:), 0, 0);
}

uint64_t RequestManager.send(request:)()
{
  v1 = *(v0[4] + 16);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[9] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = v1;
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
    *v6 = v0;
    v6[1] = RequestManager.send(request:);
    v8 = v0[2];

    return MEMORY[0x2822008A0](v8, 0, 0, 0x71657228646E6573, 0xEE00293A74736575, partial apply for closure #1 in RequestManager.send(request:), v3, v7);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], *MEMORY[0x277D4CAA0], v0[5]);
    type metadata accessor for KDSRegistration.RequestManagerError();
    lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v9 = v0[7];

    v10 = v0[1];

    return v10();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = RequestManager.send(request:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = RequestManager.send(request:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

void closure #1 in RequestManager.send(request:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 8))(a1, v11, v12);
  Logger.init(subsystem:category:)();
  v14 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_6;
  }

  v30 = v7;
  v32 = a3;
  v33 = v6;
  v17 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v34 = v31;
  *v17 = 136315394;
  v18 = [v14 additionalMessageHeaders];

  if (v18)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v34);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v14 additionalInternalHeaders];

    if (v23)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = Dictionary.description.getter();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v34);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_26524C000, v15, v16, "RequestManager sending message AdditionalMessageHeaders: %s AdditionalInternalHeaders: %s", v17, 0x16u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);

      a3 = v32;
      v6 = v33;
      v7 = v30;
LABEL_6:
      [a3 sendMessage_];

      (*(v7 + 8))(v10, v6);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t RequestManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t RequestManager.init()()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v2)
  {
    [v2 setLogToRegistration_];
  }

  *(v0 + 16) = v2;
  return v0;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    type metadata accessor for KDSRegistration.RequestManagerError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestManagerResultCode and conformance RequestManagerResultCode()
{
  result = lazy protocol witness table cache variable for type RequestManagerResultCode and conformance RequestManagerResultCode;
  if (!lazy protocol witness table cache variable for type RequestManagerResultCode and conformance RequestManagerResultCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestManagerResultCode and conformance RequestManagerResultCode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestManagerResultCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequestManagerResultCode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of RequestManager.send(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2);
}

_BYTE *Data.init(statement:column:)(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    return 0;
  }

  result = sqlite3_column_blob(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sqlite3_column_bytes(a1, a2);
    return specialized Data.init(bytes:count:)(v5, v6);
  }

  return result;
}

Swift::String_optional __swiftcall String.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  if (sqlite3_column_type(statement._rawValue, column) == 5)
  {
    v4 = 0;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sqlite3_column_text(statement._rawValue, column);
  if (!v4)
  {
    goto LABEL_5;
  }

  v4 = String.init(cString:)();
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Double_optional __swiftcall Double.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  if (sqlite3_column_type(statement._rawValue, column) == 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = sqlite3_column_double(statement._rawValue, column);
    v5 = LOBYTE(v4);
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

Swift::Int32_optional __swiftcall Int32.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  v4 = sqlite3_column_type(statement._rawValue, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(statement._rawValue, column);
  }

  return (v5 | ((v4 == 5) << 32));
}

Swift::Int64_optional __swiftcall Int64.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  v4 = sqlite3_column_type(statement._rawValue, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int64(statement._rawValue, column);
  }

  v6 = v4 == 5;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance String@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    result = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  result = sqlite3_column_text(a1, a2);
  if (!result)
  {
    goto LABEL_5;
  }

  result = String.init(cString:)();
LABEL_6:
  *a3 = result;
  a3[1] = v7;
  return result;
}

Swift::Int_optional __swiftcall Int.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  v4 = sqlite3_column_type(statement._rawValue, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(statement._rawValue, column);
  }

  v6 = v4 == 5;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Int@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_type(a1, a2);
  v7 = result;
  if (result == 5)
  {
    v8 = 0;
  }

  else
  {
    result = sqlite3_column_int(a1, a2);
    v8 = result;
  }

  *a3 = v8;
  *(a3 + 8) = v7 == 5;
  return result;
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Int32@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(a1, a2);
  if (v6 == 5)
  {
    result = 0;
  }

  else
  {
    result = sqlite3_column_int(a1, a2);
  }

  *a3 = result;
  *(a3 + 4) = v6 == 5;
  return result;
}

Swift::Bool_optional __swiftcall Bool.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  if (sqlite3_column_type(statement._rawValue, column) == 5)
  {
    return 2;
  }

  else
  {
    return (sqlite3_column_int(statement._rawValue, column) != 0);
  }
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Bool@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  result = sqlite3_column_type(a1, a2);
  if (result == 5)
  {
    v7 = 2;
  }

  else
  {
    result = sqlite3_column_int(a1, a2);
    v7 = result != 0;
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Data@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    result = 0;
LABEL_5:
    v9 = 0xF000000000000000;
    goto LABEL_6;
  }

  result = sqlite3_column_blob(a1, a2);
  if (!result)
  {
    goto LABEL_5;
  }

  v7 = result;
  v8 = sqlite3_column_bytes(a1, a2);
  result = specialized Data.init(bytes:count:)(v7, v8);
LABEL_6:
  *a3 = result;
  a3[1] = v9;
  return result;
}

void protocol witness for SqlAccessor.init(statement:column:) in conformance Double(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(a1, a2);
  v7 = 0.0;
  if (v6 != 5)
  {
    v7 = sqlite3_column_double(a1, a2);
  }

  *a3 = v7;
  *(a3 + 8) = v6 == 5;
}

sqlite3_int64 protocol witness for SqlAccessor.init(statement:column:) in conformance Int64@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(a1, a2);
  if (v6 == 5)
  {
    result = 0;
  }

  else
  {
    result = sqlite3_column_int64(a1, a2);
  }

  *a3 = result;
  *(a3 + 8) = v6 == 5;
  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t KeyUpdateModel.init(clientIdentifier:groupID:messagesSinceLastUpdate:timeOfLastUpdate:isFirstUpdate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t KeyUpdateModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KeyUpdateModel.groupID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

sqlite3_stmt *KeyUpdateModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("INSERT OR REPLACE INTO Key_Update_Table (client_id, group_id, messages, time, is_first) VALUES (?, ?, ?, ?, ?);");
  if (!v3)
  {
LABEL_65:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (!v4)
  {
    v5 = *v1;
    v6 = *(v1 + 8);
    v7 = v6 >> 62;
    if ((v6 >> 62) <= 1)
    {
      if (!v7)
      {
        *&v43 = *v1;
        DWORD2(v43) = v6;
        WORD6(v43) = WORD2(v6);
        v4 = ppStmt[0];
        LODWORD(v8) = BYTE6(v6);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_6:
          v9 = SQLITE_TRANSIENT;
          v10 = &v43;
          LODWORD(v11) = v8;
          goto LABEL_42;
        }

LABEL_57:
        v41 = v4;
        swift_once();
        v4 = v41;
        goto LABEL_6;
      }

LABEL_20:
      v20 = v5;
      v21 = v5 >> 32;
      v13 = v21 - v20;
      if (v21 >= v20)
      {
        v12 = v1;
        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = v22;
          v24 = __DataStorage._offset.getter();
          if (!__OFSUB__(v20, v24))
          {
            v8 = (v20 - v24 + v23);
LABEL_30:
            v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v4 = MEMORY[0x2667557A0]();
            if (v4 >= v13)
            {
              v11 = v13;
            }

            else
            {
              v11 = v4;
            }

            if (v8)
            {
              if (v11 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_57;
              }

              v1 = v12;
              if (v11 <= 0x7FFFFFFF)
              {
                goto LABEL_39;
              }

              __break(1u);
            }

            LODWORD(v11) = 0;
LABEL_38:
            v1 = v12;
LABEL_39:
            v4 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v37 = ppStmt[0];
              v38 = v11;
              swift_once();
              v4 = v37;
              LODWORD(v11) = v38;
            }

            v9 = SQLITE_TRANSIENT;
            v10 = v8;
LABEL_42:
            if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
            {
              goto LABEL_43;
            }

            v30 = ppStmt[0];
            v31 = *(v1 + 16);
            v32 = *(v1 + 24);
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v39 = *(v1 + 16);
              v40 = *(v1 + 24);
              swift_once();
            }

            v33 = String.utf8CString.getter();
            v34 = sqlite3_bind_text(v30, 2, (v33 + 32), -1, v9);

            if (v34)
            {
              *&v43 = 0x726F7272456C7173;
              *(&v43 + 1) = 0xE90000000000003ALL;
              goto LABEL_44;
            }

            v35 = *(v1 + 32);
            if (!(v35 >> 31))
            {
              if (sqlite3_bind_int(ppStmt[0], 3, v35))
              {
                goto LABEL_43;
              }

              v36 = *(v1 + 40);
              if ((v36 & 0x8000000000000000) == 0)
              {
                if (!sqlite3_bind_int64(ppStmt[0], 4, v36) && !sqlite3_bind_int(ppStmt[0], 5, *(v1 + 48) & 1))
                {
                  result = ppStmt[0];
                  goto LABEL_45;
                }

                goto LABEL_43;
              }

              goto LABEL_64;
            }

LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_29:
        v8 = 0;
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_59;
    }

    if (v7 != 2)
    {
      *(&v43 + 6) = 0;
      *&v43 = 0;
      v4 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_25:
        v9 = SQLITE_TRANSIENT;
        v10 = &v43;
        LODWORD(v11) = 0;
        goto LABEL_42;
      }

LABEL_59:
      v42 = v4;
      swift_once();
      v4 = v42;
      goto LABEL_25;
    }

    v12 = v1;
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v17))
      {
        goto LABEL_61;
      }

      v8 = (v13 - v17 + v16);
      v18 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
LABEL_11:
        v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = MEMORY[0x2667557A0]();
        if (v4 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v4;
        }

        if (v8)
        {
          v11 = v19;
        }

        else
        {
          v11 = 0;
        }

        if (v11 >= 0xFFFFFFFF80000000)
        {
          v5 = 0x7FFFFFFFLL;
          if (v11 <= 0x7FFFFFFF)
          {
            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_20;
        }

        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      v8 = 0;
      v18 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_43:
  *&v43 = 0x726F7272456C7173;
  *(&v43 + 1) = 0xE90000000000003ALL;
LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v43;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *KeyUpdateModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Key_Update_Table SET \n    messages = ?, time = ?, is_first = ?\nWHERE\n    client_id = ? AND group_id = ?;");
  if (!v4)
  {
LABEL_65:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_46;
  }

  v7 = *(v1 + 32);
  if (v7 >> 31)
  {
    __break(1u);
    goto LABEL_55;
  }

  v5 = sqlite3_bind_int(ppStmt[0], 1, v7);
  if (v5)
  {
LABEL_46:
    *&v42 = 0x726F7272456C7173;
    *(&v42 + 1) = 0xE90000000000003ALL;
    goto LABEL_47;
  }

  v8 = *(v1 + 40);
  if (v8 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (sqlite3_bind_int64(ppStmt[0], 2, v8))
  {
    goto LABEL_46;
  }

  v5 = sqlite3_bind_int(ppStmt[0], 3, *(v1 + 48) & 1);
  if (v5)
  {
    goto LABEL_46;
  }

  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      *(&v42 + 6) = 0;
      *&v42 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_21:
        v12 = SQLITE_TRANSIENT;
        v13 = &v42;
        LODWORD(v6) = 0;
        goto LABEL_45;
      }

LABEL_60:
      v41 = v5;
      swift_once();
      v5 = v41;
      goto LABEL_21;
    }

    v14 = v1;
    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    v17 = __DataStorage._bytes.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v19))
      {
        goto LABEL_63;
      }

      v2 = (v15 - v19 + v18);
    }

    else
    {
      v2 = 0;
    }

    if (__OFSUB__(v16, v15))
    {
      __break(1u);
    }

    else
    {
      v25 = MEMORY[0x2667557A0]();
      if (v25 >= v16 - v15)
      {
        v26 = v16 - v15;
      }

      else
      {
        v26 = v25;
      }

      if (v2)
      {
        v6 = v26;
      }

      else
      {
        v6 = 0;
      }

      if (v6 >= 0xFFFFFFFF80000000)
      {
        if (v6 <= 0x7FFFFFFF)
        {
LABEL_42:
          v1 = v14;
          goto LABEL_43;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (!v11)
  {
    *&v42 = *v1;
    DWORD2(v42) = v10;
    WORD6(v42) = WORD2(v10);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v10);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_11:
      v12 = SQLITE_TRANSIENT;
      v13 = &v42;
      LODWORD(v6) = v2;
      goto LABEL_45;
    }

LABEL_58:
    v40 = v5;
    swift_once();
    v5 = v40;
    goto LABEL_11;
  }

  v20 = v9;
  v21 = v9 >> 32;
  v15 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_60;
  }

  v14 = v1;
  v22 = __DataStorage._bytes.getter();
  if (v22)
  {
    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v24))
    {
      v2 = (v20 - v24 + v23);
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_33:
  v2 = 0;
LABEL_34:
  v1 = v10 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v15)
  {
    v6 = v15;
  }

  else
  {
    v6 = v5;
  }

  if (!v2)
  {
    goto LABEL_41;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_58;
  }

  v1 = v14;
  if (v6 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_41:
    LODWORD(v6) = 0;
    goto LABEL_42;
  }

LABEL_43:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_56:
    v37 = v5;
    v38 = v6;
    swift_once();
    v5 = v37;
    LODWORD(v6) = v38;
  }

  v12 = SQLITE_TRANSIENT;
  v13 = v2;
LABEL_45:
  if (sqlite3_bind_blob(v5, 4, v13, v6, v12))
  {
    goto LABEL_46;
  }

  v32 = ppStmt[0];
  v33 = *(v1 + 16);
  v34 = *(v1 + 24);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v39 = *(v1 + 16);
    swift_once();
  }

  v35 = String.utf8CString.getter();
  v36 = sqlite3_bind_text(v32, 5, (v35 + 32), -1, v12);

  if (!v36)
  {
    result = ppStmt[0];
    goto LABEL_48;
  }

  *&v42 = 0x726F7272456C7173;
  *(&v42 + 1) = 0xE90000000000003ALL;
LABEL_47:
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v27);

  v28 = v42;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v29 = 0;
  *(v29 + 8) = v28;
  result = swift_willThrow();
LABEL_48:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *KeyUpdateModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM Key_Update_Table WHERE client_id = ? AND group_id = ?;");
  if (!v3)
  {
LABEL_58:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_43:
    *&v40 = 0x726F7272456C7173;
    *(&v40 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v40 = *v1;
      DWORD2(v40) = v6;
      WORD6(v40) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v40;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_52:
      v38 = v4;
      swift_once();
      v4 = v38;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v40 + 6) = 0;
    *&v40 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v40;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_54:
    v39 = v4;
    swift_once();
    v4 = v39;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    v8 = 0;
    v18 = v14 - v13;
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v17))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = (v13 - v17 + v16);
  v18 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v4;
  }

  if (v8)
  {
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_56;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v20 = v5;
  v21 = v5 >> 32;
  v13 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_54;
  }

  v12 = v1;
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v24))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v8 = (v20 - v24 + v23);
LABEL_30:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_52;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v35 = ppStmt[0];
    v36 = v11;
    swift_once();
    v4 = v35;
    LODWORD(v11) = v36;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_43;
  }

  v30 = ppStmt[0];
  v31 = v1[2];
  v32 = v1[3];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v37 = v1[2];
    swift_once();
  }

  v33 = String.utf8CString.getter();
  v34 = sqlite3_bind_text(v30, 2, (v33 + 32), -1, v9);

  if (!v34)
  {
    result = ppStmt[0];
    goto LABEL_45;
  }

  *&v40 = 0x726F7272456C7173;
  *(&v40 + 1) = 0xE90000000000003ALL;
LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v40;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static KeyUpdateModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_10;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_9:
    outlined consume of Data._Representation(v7, v9);
LABEL_10:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || (v13 = sqlite3_column_int(a1, 2), sqlite3_column_type(a1, 3) == 5) || (v14 = sqlite3_column_int64(a1, 3), sqlite3_column_type(a1, 4) == 5))
  {

    goto LABEL_9;
  }

  result = sqlite3_column_int(a1, 4);
  if ((v13 & 0x80000000) != 0 || v14 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = result > 0;
  }

  return result;
}

uint64_t (*static KeyUpdateModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static KeyUpdateModel.converter;

  return v0;
}

uint64_t static KeyUpdateModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static KeyUpdateModel.converter = a1;
  qword_281EF8C18 = a2;
}

uint64_t key path getter for static KeyUpdateModel.converter : KeyUpdateModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static KeyUpdateModel.converter;
  v2 = qword_281EF8C18;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static KeyUpdateModel.converter : KeyUpdateModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static KeyUpdateModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out KeyUpdateModel?, @error @owned Error)partial apply;
  qword_281EF8C18 = v3;
}

double thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out KeyUpdateModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v11 = a1;
  a2(v9, &v11);
  if (!v3)
  {
    v6 = v10;
    result = *v9;
    v7 = v9[1];
    v8 = v9[2];
    *a3 = v9[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 48) = v6;
  }

  return result;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance KeyUpdateModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static KeyUpdateModel.converter;
  v0 = qword_281EF8C18;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)partial apply;
}

uint64_t *KeyUpdateQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static KeyUpdateQuery.converter;
}

uint64_t static KeyUpdateQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static KeyUpdateQuery.converter;

  return v0;
}

uint64_t static KeyUpdateQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyUpdateQuery.converter = a1;
  qword_280016A10 = a2;
}

uint64_t (*static KeyUpdateQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static KeyUpdateQuery.converter : KeyUpdateQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static KeyUpdateQuery.converter;
  v2 = qword_280016A10;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static KeyUpdateQuery.converter : KeyUpdateQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyUpdateQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out KeyUpdateModel?, @error @owned Error);
  qword_280016A10 = v3;
}

sqlite3_stmt *KeyUpdateQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Key_Update_Table WHERE client_id = ? AND group_id = ? LIMIT 1;");
  if (!v6)
  {
LABEL_56:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
LABEL_40:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v14))
      {
        goto LABEL_54;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v7;
      }

      if (v13)
      {
        a3 = v17;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v8)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_51;
    }

    v13 = __DataStorage._bytes.getter();
    if (!v13)
    {
LABEL_25:
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v7;
      }

      if (v13)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_49;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v31 + 6) = 0;
          *&v31 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v9 = SQLITE_TRANSIENT;
            v10 = &v31;
            v19 = 0;
            goto LABEL_39;
          }

LABEL_51:
          v30 = v7;
          swift_once();
          v7 = v30;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v28 = ppStmt[0];
        swift_once();
        v7 = v28;
      }

      v9 = SQLITE_TRANSIENT;
      v10 = v13;
      goto LABEL_38;
    }

    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v18))
    {
      v13 += a2 - v18;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  *&v31 = a2;
  WORD4(v31) = a3;
  BYTE10(v31) = BYTE2(a3);
  BYTE11(v31) = BYTE3(a3);
  BYTE12(v31) = BYTE4(a3);
  BYTE13(v31) = BYTE5(a3);
  v7 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_49:
    v29 = v7;
    swift_once();
    v7 = v29;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = &v31;
LABEL_38:
  v19 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v7, 1, v10, v19, v9))
  {
    goto LABEL_40;
  }

  v25 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v26 = String.utf8CString.getter();
  v27 = sqlite3_bind_text(v25, 2, (v26 + 32), -1, v9);

  if (!v27)
  {
    result = ppStmt[0];
    goto LABEL_42;
  }

  *&v31 = 0x726F7272456C7173;
  *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_41:
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v20);

  v21 = v31;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = v21;
  result = swift_willThrow();
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance KeyUpdateQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static KeyUpdateQuery.converter;
  v0 = qword_280016A10;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error);
}

sqlite3_stmt *protocol witness for SqlQuery.queryStatement(_:) in conformance KeyUpdateQuery(sqlite3 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return KeyUpdateQuery.queryStatement(_:)(a1, *v1, v1[1]);
}

sqlite3_stmt *specialized static KeyUpdateModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Key_Update_Table (\n    client_id BLOB NOT NULL,\n    group_id TEXT NOT NULL,\n    messages INT NOT NULL,\n    time BIGINT NOT NULL,\n    is_first INT NOT NULL,\n    PRIMARY KEY (group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static KeyUpdateModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Key_Update_Table;");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KeyUpdateModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyUpdateModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2653382CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v9, *a1);
  if (!v3)
  {
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = *&v10;
    *(a2 + 32) = v10;
    *(a2 + 48) = v11;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)@<D0>(uint64_t a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    result = *&v9;
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
  }

  return result;
}

uint64_t KDSRegistrationPersister.__allocating_init(fileDir:dbFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  KDSRegistrationPersister.init(fileDir:dbFileName:)(a1, a2, a3, a4);
  return v11;
}

uint64_t KDSRegistrationPersister.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KDSRegistrationPersister.fileDir.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);

  return v1;
}

uint64_t KDSRegistrationPersister.dbFileName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);

  return v1;
}

uint64_t KDSRegistrationPersister.useDatabase.getter()
{
  v0 = type metadata accessor for SMAFeatureFlagsKey();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D4CC30], v0);
  v5 = SMAFeatureFlagsKey.isEnabled.getter();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t KDSRegistrationPersister.init(fileDir:dbFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v5 = type metadata accessor for LogCategory();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[13];
  v10(v9, *MEMORY[0x277D4C910], v5);
  secureMessagingLogger(category:)();
  v11 = v6[1];
  v11(v9, v5);
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store;
  v13 = type metadata accessor for SqliteStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  v10(v9, *MEMORY[0x277D4C920], v5);
  secureMessagingLogger(category:)();
  v11(v9, v5);
  *(v16 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  *(v4 + v12) = v16;
  v17 = (v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  v19 = (v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  return v4;
}

uint64_t KDSRegistrationPersister.setupDB()()
{
  v6 = *MEMORY[0x277D85DE8];
  v1[3] = v0;
  type metadata accessor for RegistrationActor();
  v1[4] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v2;
  v1[6] = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KDSRegistrationPersister.setupDB(), v2, v3);
}

{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(*v0[3] + 112))())
  {
    v1 = v0[3];
    v2 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v3 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
    v4 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);
    v5 = MEMORY[0x266756A10](v3, v4);
    v0[2] = 0;
    v6 = [v2 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

    v7 = v0[2];
    if (v6)
    {
      v8 = v0[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_265343880;
      v10 = MEMORY[0x277D837D0];
      *(v9 + 56) = MEMORY[0x277D837D0];
      v11 = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 64) = v11;
      *(v9 + 32) = v3;
      *(v9 + 40) = v4;
      v12 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
      v13 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 72) = v12;
      *(v9 + 80) = v13;
      v14 = v7;

      v15 = String.init(format:_:)();
      v17 = v16;
      v0[7] = v16;
      v0[8] = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);
      v18 = swift_task_alloc();
      v0[9] = v18;
      *v18 = v0;
      v18[1] = KDSRegistrationPersister.setupDB();
      v19 = *MEMORY[0x277D85DE8];

      return SqliteStore.open(filePath:)(v15, v17);
    }

    v28 = v0[4];
    v29 = v7;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = v0[1];
    v30 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v22 = v0[3];
    v21 = v0[4];

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26524C000, v23, v24, "DaemonPersister feature flag off. Not setting up DB.", v25, 2u);
      MEMORY[0x2667577B0](v25, -1, -1);
    }

    v26 = v0[1];
    v27 = *MEMORY[0x277D85DE8];
  }

  return v26();
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[7];

  if (v0)
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](KDSRegistrationPersister.setupDB(), v6, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    v2[11] = v9;
    *v9 = v4;
    v9[1] = KDSRegistrationPersister.setupDB();
    v10 = v2[8];
    v11 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for StateMachineModel, &protocol witness table for StateMachineModel);
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = KDSRegistrationPersister.setupDB();
  }

  else
  {
    v7 = KDSRegistrationPersister.setupDB();
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[10];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[12];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t KDSRegistrationPersister.closeDB()()
{
  v1[2] = v0;
  type metadata accessor for RegistrationActor();
  v1[3] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.closeDB(), v3, v2);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = KDSRegistrationStateMachine.saveState();

  return SqliteStore.close()();
}

uint64_t KDSRegistrationPersister.deleteDB()()
{
  v6 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  type metadata accessor for RegistrationActor();
  *(v1 + 32) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KDSRegistrationPersister.deleteDB(), v2, v3);
}

{
  v23 = *MEMORY[0x277D85DE8];
  v2 = v0[3];
  v1 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265343880;
  v5 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
  v4 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);
  v6 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v7 = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  v8 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
  v9 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = v9;

  v10 = String.init(format:_:)();
  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v14 = MEMORY[0x266756A10](v10, v12);

  v0[2] = 0;
  LODWORD(v5) = [v13 removeItemAtPath:v14 error:v0 + 2];

  v15 = v0[2];
  if (v5)
  {
    v22 = v0[1];
    v16 = v15;
    v17 = *MEMORY[0x277D85DE8];
    v18 = v22;
  }

  else
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = v0[1];
    v20 = *MEMORY[0x277D85DE8];
  }

  return v18();
}

uint64_t KDSRegistrationPersister.save(stateMachine:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  type metadata accessor for RegistrationActor();
  v2[31] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[32] = v4;
  v2[33] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.save(stateMachine:), v4, v3);
}

uint64_t KDSRegistrationPersister.save(stateMachine:)()
{
  if ((*(*v0[30] + 112))())
  {
    v1 = v0[29];
    v0[34] = *(v0[30] + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);
    v2 = *(*v1 + 680);
    v13 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[35] = v4;
    *v4 = v0;
    v4[1] = KDSRegistrationPersister.save(stateMachine:);
    v5 = v0[29];

    return v13(v0 + 2);
  }

  else
  {
    v8 = v0[30];
    v7 = v0[31];

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26524C000, v9, v10, "DaemonPersister feature flag off. Not saving.", v11, 2u);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = KDSRegistrationPersister.save(stateMachine:);
  }

  else
  {
    v7 = KDSRegistrationPersister.save(stateMachine:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  *(v0 + 216) = &type metadata for StateMachineModel;
  *(v0 + 224) = &protocol witness table for StateMachineModel;
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  v2 = *(v0 + 160);
  v1[9] = *(v0 + 144);
  v1[10] = v2;
  *(v1 + 169) = *(v0 + 169);
  v3 = *(v0 + 96);
  v1[5] = *(v0 + 80);
  v1[6] = v3;
  v4 = *(v0 + 128);
  v1[7] = *(v0 + 112);
  v1[8] = v4;
  v5 = *(v0 + 32);
  v1[1] = *(v0 + 16);
  v1[2] = v5;
  v6 = *(v0 + 64);
  v1[3] = *(v0 + 48);
  v1[4] = v6;
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = KDSRegistrationPersister.save(stateMachine:);
  v8 = *(v0 + 272);

  return SqliteStore.insert(_:)(v0 + 192);
}

{
  v2 = *v1;
  v3 = (*v1)[37];
  v8 = *v1;
  (*v1)[38] = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = v2[33];
    v6 = KDSRegistrationPersister.save(stateMachine:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 24);
    v4 = v2[32];
    v5 = v2[33];
    v6 = KDSRegistrationPersister.save(stateMachine:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[31];

  v2 = v0[36];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  v2 = v0[38];
  v3 = v0[1];

  return v3();
}

uint64_t KDSRegistrationPersister.loadRegistrationStateMachines(with:)(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  type metadata accessor for RegistrationActor();
  v2[93] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[94] = v4;
  v2[95] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.loadRegistrationStateMachines(with:), v4, v3);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  *(v4 + 776) = a1;
  *(v4 + 784) = v1;

  v7 = *(v3 + 760);
  v8 = *(v3 + 752);
  if (v1)
  {
    v9 = KDSRegistrationPersister.loadRegistrationStateMachines(with:);
  }

  else
  {
    v9 = KDSRegistrationPersister.loadRegistrationStateMachines(with:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t KDSRegistrationPersister.loadRegistrationStateMachines(with:)()
{
  if ((*(*v0[92] + 112))())
  {
    v1 = *(v0[92] + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);
    v2 = swift_task_alloc();
    v0[96] = v2;
    *v2 = v0;
    v2[1] = KDSRegistrationPersister.loadRegistrationStateMachines(with:);

    return specialized SqliteStore.query<A>(_:)();
  }

  else
  {
    v4 = v0[93];
    v5 = v0[92];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister feature flag off. Not loading", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = v0[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

{
  v77 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 744);

  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v6 = *(v1 + 16);
  v7 = *(v0 + 776);
  if (v6)
  {
    v65 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (*(v1 + 16))
    {
      v9 = *(v0 + 784);
      v10 = *(v0 + 728);
      v12 = v7[3];
      v11 = v7[4];
      *(v0 + 16) = v7[2];
      *(v0 + 32) = v12;
      *(v0 + 48) = v11;
      v13 = v7[8];
      v15 = v7[5];
      v14 = v7[6];
      *(v0 + 96) = v7[7];
      *(v0 + 112) = v13;
      *(v0 + 64) = v15;
      *(v0 + 80) = v14;
      v17 = v7[10];
      v16 = v7[11];
      v18 = v7[9];
      *(v0 + 169) = *(v7 + 185);
      *(v0 + 144) = v17;
      *(v0 + 160) = v16;
      *(v0 + 128) = v18;
      v19 = v7[11];
      v75 = v7[10];
      v76[0] = v19;
      *(v76 + 9) = *(v7 + 185);
      v20 = v7[7];
      v71 = v7[6];
      v72 = v20;
      v21 = v7[9];
      v73 = v7[8];
      v74 = v21;
      v22 = v7[3];
      v67 = v7[2];
      v68 = v22;
      v23 = v7[5];
      v69 = v7[4];
      v70 = v23;
      outlined init with copy of StateMachineModel(v0 + 16, v0 + 192);
      closure #1 in KDSRegistrationPersister.loadRegistrationStateMachines(with:)(&v67, v10, (v0 + 720), &v66);
      if (v9)
      {
        v24 = *(v0 + 776);
        v25 = v76[0];
        *(v0 + 496) = v75;
        *(v0 + 512) = v25;
        v26 = v72;
        *(v0 + 432) = v71;
        *(v0 + 448) = v26;
        v27 = v74;
        *(v0 + 464) = v73;
        *(v0 + 480) = v27;
        v28 = v68;
        *(v0 + 368) = v67;
        *(v0 + 384) = v28;
        v29 = v70;
        *(v0 + 400) = v69;
        *(v0 + 416) = v29;
        *(v0 + 521) = *(v76 + 9);
        outlined destroy of StateMachineModel(v0 + 368);

        v30 = *(v0 + 720);
        v31 = *(v0 + 8);

        return v31();
      }

      v34 = v76[0];
      *(v0 + 672) = v75;
      *(v0 + 688) = v34;
      *(v0 + 697) = *(v76 + 9);
      v35 = v72;
      *(v0 + 608) = v71;
      *(v0 + 624) = v35;
      v36 = v74;
      *(v0 + 640) = v73;
      *(v0 + 656) = v36;
      v37 = v68;
      *(v0 + 544) = v67;
      *(v0 + 560) = v37;
      v38 = v70;
      *(v0 + 576) = v69;
      *(v0 + 592) = v38;
      outlined destroy of StateMachineModel(v0 + 544);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v39 = *(v65 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v6 == 1)
      {
        goto LABEL_9;
      }

      if (*(v1 + 16) >= 2uLL)
      {
        v42 = v7 + 13;
        v64 = 2 - v6;
        v43 = 1;
        while (1)
        {
          v44 = *(v0 + 728);
          v46 = v42[1];
          v45 = v42[2];
          *(v0 + 16) = *v42;
          *(v0 + 32) = v46;
          *(v0 + 48) = v45;
          v47 = v42[6];
          v49 = v42[3];
          v48 = v42[4];
          *(v0 + 96) = v42[5];
          *(v0 + 112) = v47;
          *(v0 + 64) = v49;
          *(v0 + 80) = v48;
          v51 = v42[8];
          v50 = v42[9];
          v52 = v42[7];
          *(v0 + 169) = *(v42 + 153);
          *(v0 + 144) = v51;
          *(v0 + 160) = v50;
          *(v0 + 128) = v52;
          v53 = v42[9];
          v75 = v42[8];
          v76[0] = v53;
          *(v76 + 9) = *(v42 + 153);
          v54 = v42[5];
          v71 = v42[4];
          v72 = v54;
          v55 = v42[7];
          v73 = v42[6];
          v74 = v55;
          v56 = v42[1];
          v67 = *v42;
          v68 = v56;
          v57 = v42[3];
          v69 = v42[2];
          v70 = v57;
          outlined init with copy of StateMachineModel(v0 + 16, v0 + 192);
          closure #1 in KDSRegistrationPersister.loadRegistrationStateMachines(with:)(&v67, v44, (v0 + 720), &v66);
          v58 = v76[0];
          *(v0 + 672) = v75;
          *(v0 + 688) = v58;
          *(v0 + 697) = *(v76 + 9);
          v59 = v72;
          *(v0 + 608) = v71;
          *(v0 + 624) = v59;
          v60 = v74;
          *(v0 + 640) = v73;
          *(v0 + 656) = v60;
          v61 = v68;
          *(v0 + 544) = v67;
          *(v0 + 560) = v61;
          v62 = v70;
          *(v0 + 576) = v69;
          *(v0 + 592) = v62;
          outlined destroy of StateMachineModel(v0 + 544);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v63 = *(v65 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          if (v64 + v43 == 1)
          {
            break;
          }

          v42 += 11;
          if (++v43 >= *(v1 + 16))
          {
            goto LABEL_17;
          }
        }

LABEL_9:
        v40 = *(v0 + 776);

        v33 = v65;
        goto LABEL_10;
      }
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v32 = *(v0 + 776);

  v33 = MEMORY[0x277D84F90];
LABEL_10:
  v41 = *(v0 + 8);

  return v41(v33);
}

{
  v1 = v0[93];

  v2 = v0[98];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in KDSRegistrationPersister.loadRegistrationStateMachines(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v158 = a3;
  v133 = a2;
  v136 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v135 = &v119 - v7;
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v134 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for LogCategory();
  v129 = *(v130 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v142 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v156 = &v119 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v123 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v119 - v22;
  v147 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v141 = *(v147 - 8);
  v23 = v141[8];
  v24 = MEMORY[0x28223BE20](v147);
  v140 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v148 = &v119 - v26;
  v27 = type metadata accessor for KDSRegistration.URISupportedState();
  v153 = *(v27 - 8);
  v28 = v153[8];
  v29 = MEMORY[0x28223BE20](v27);
  v143 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v157 = &v119 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v139 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v119 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v119 - v39;
  v41 = *(a1 + 8);
  v146 = *a1;
  v145 = v41;
  v42 = *(a1 + 24);
  v125 = *(a1 + 16);
  v43 = *(a1 + 40);
  v124 = *(a1 + 32);
  v45 = *(a1 + 48);
  v44 = *(a1 + 56);
  v46 = *(a1 + 72);
  v155 = *(a1 + 64);
  v154 = v46;
  v47 = *(a1 + 88);
  v152 = *(a1 + 80);
  v151 = v47;
  v48 = *(a1 + 104);
  v137 = *(a1 + 96);
  v138 = v48;
  v49 = *(a1 + 136);
  v127 = *(a1 + 128);
  v126 = v49;
  v50 = *(a1 + 152);
  v121 = *(a1 + 144);
  v122 = v50;
  v132 = *(a1 + 160);
  v131 = *(a1 + 168);
  v51 = type metadata accessor for URI();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v164 = v40;
  v150 = v53;
  v149 = v52 + 56;
  v53(v40, 1, 1, v51);
  v161 = v42;

  v160 = v43;

  if (v44 >> 60 == 15)
  {
    v54 = v159;
  }

  else
  {
    outlined copy of Data?(v45, v44);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v55 = v159;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v54 = v55;
    if (v55)
    {
      outlined destroy of MLS.KeyPackageProvider?(v164, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
      outlined consume of Data?(v45, v44);
LABEL_8:

      *v158 = v54;
      return result;
    }

    v56 = v164;
    outlined destroy of MLS.KeyPackageProvider?(v164, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    outlined consume of Data?(v45, v44);
    v150(v38, 0, 1, v51);
    outlined init with take of MLS.OutgoingEventState?(v38, v56, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  }

  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState, MEMORY[0x277D4CA38]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v57 = v156;
  if (v54)
  {
    outlined destroy of MLS.KeyPackageProvider?(v164, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    goto LABEL_8;
  }

  v120 = v27;
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v59 = LOBYTE(v163[0]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  LODWORD(v154) = v59;
  v60 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v61 = *(v60 - 8);
  *&v159 = *(v61 + 56);
  v155 = v61 + 56;
  (v159)(v144, 1, 1, v60);
  v62 = v138;
  if (v138 >> 60 == 15)
  {
    v152 = v60;
  }

  else
  {
    outlined copy of Data._Representation(v137, v138);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, MEMORY[0x277D4C938]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v63 = v144;
    outlined destroy of MLS.KeyPackageProvider?(v144, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
    outlined consume of Data?(v137, v62);
    v64 = v123;
    v152 = v60;
    (v159)(v123, 0, 1, v60);
    outlined init with take of MLS.OutgoingEventState?(v64, v63, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  }

  v65 = type metadata accessor for MLS.KeyPackageInfo();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v158 = (v66 + 56);
  v67(v57, 1, 1, v65);
  v68 = v57;
  if (v122 >> 60 != 15)
  {
    outlined copy of Data._Representation(v121, v122);
    v69 = v142;
    MLS.KeyPackageInfo.init(keyPackage:)();
    outlined destroy of MLS.KeyPackageProvider?(v57, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
    v67(v69, 0, 1, v65);
    outlined init with take of MLS.OutgoingEventState?(v69, v57, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  }

  v70 = v133;
  v71 = *&v133[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator];
  v137 = v67;
  v72 = v153[2];
  v145 = v153 + 2;
  v151 = v72;
  v72(v143, v157, v120);
  v73 = v141[2];
  v138 = (v141 + 2);
  v146 = v73;
  v73(v140, v148, v147);
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v164, v139, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v68, v142, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v74 = type metadata accessor for KDSRegistrationStateMachine();
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  v77 = swift_allocObject();
  v163[3] = type metadata accessor for KDSRegistrationDaemon();
  v163[4] = &protocol witness table for KDSRegistrationDaemon;
  v163[0] = v70;
  v162[3] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v162[4] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
  v162[0] = v71;
  v78 = *MEMORY[0x277D4C918];
  v79 = v129;
  v80 = *(v129 + 104);
  v81 = v128;
  v123 = v65;
  v82 = v130;
  v80(v128, v78, v130);

  v83 = v70;
  secureMessagingLogger(category:)();
  (*(v79 + 8))(v81, v82);
  (v159)(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo, 1, 1, v152);
  v159 = xmmword_2653419D0;
  *(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v150((v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI), 1, 1, v51);
  v84 = (v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v84 = 0;
  v84[1] = 0;
  *(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v85 = (v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v85 = 0;
  v85[1] = 0;
  v137(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage, 1, 1, v123);
  v86 = v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v86 = 0;
  *(v86 + 8) = 1;
  *(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = v159;
  *(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v87 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  v88 = type metadata accessor for JSONEncoder();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  *(v77 + v87) = JSONEncoder.init()();
  outlined init with copy of SMAUserDefaultsProtocol(v163, v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol(v162, v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v91 = v161;
  *(v77 + 24) = v125;
  *(v77 + 32) = v91;
  v92 = v160;
  *(v77 + 40) = v124;
  *(v77 + 48) = v92;
  v93 = v77;
  v151(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState, v143, v120);
  v94 = v140;
  v95 = v147;
  v146(v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier, v140, v147);
  *(v77 + 16) = v154;
  v96 = (v77 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = v127;
  v100 = v126;
  *v96 = v127;
  v96[1] = v100;
  outlined copy of Data?(v99, v100);
  outlined consume of Data?(v97, v98);
  v101 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  swift_beginAccess();
  v102 = v139;
  outlined assign with copy of URI?(v139, v77 + v101, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  swift_endAccess();
  v103 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  swift_beginAccess();
  v104 = v77 + v103;
  v105 = v142;
  outlined assign with copy of URI?(v142, v104, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  swift_endAccess();
  v106 = v93 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  swift_beginAccess();
  *v106 = v132;
  *(v106 + 8) = v131;
  v107 = (v93 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  *v107 = v159;
  outlined consume of Data?(v108, v109);
  v110 = *(v93 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v111 = type metadata accessor for TaskPriority();
  v112 = v135;
  (*(*(v111 - 8) + 56))(v135, 1, 1, v111);
  type metadata accessor for RegistrationActor();

  v113 = static RegistrationActor.shared.getter();
  v114 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v115 = swift_allocObject();
  v115[2] = v113;
  v115[3] = v114;
  v115[4] = v93;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v112, &async function pointer to partial apply for closure #1 in KDSRegistrationStateMachine.rerun(), v115);

  outlined destroy of MLS.KeyPackageProvider?(v105, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v102, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v116 = v141[1];
  v116(v94, v95);
  v117 = v153[1];
  v118 = v120;
  v117(v143, v120);
  outlined destroy of MLS.KeyPackageProvider?(v156, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v144, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v116(v148, v95);
  v117(v157, v118);
  outlined destroy of MLS.KeyPackageProvider?(v164, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v163);
  *v136 = v93;
  return result;
}

uint64_t KDSRegistrationPersister.deleteRegistration(_:)()
{
  type metadata accessor for RegistrationActor();
  *(v0 + 16) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationPersister.deleteRegistration(_:), v2, v1);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t KDSRegistrationPersister.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);

  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);

  v5 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);

  return v0;
}

uint64_t KDSRegistrationPersister.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);

  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);

  v5 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_26533BB28()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v3);
  }

  outlined consume of Data._Representation(v0[10], v0[11]);
  outlined consume of Data._Representation(v0[12], v0[13]);
  v4 = v0[15];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[14], v4);
  }

  v5 = v0[17];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[16], v5);
  }

  v6 = v0[19];
  if (v6 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[18], v6);
  }

  v7 = v0[21];
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[20], v7);
  }

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t type metadata accessor for KDSRegistrationPersister()
{
  result = type metadata singleton initialization cache for KDSRegistrationPersister;
  if (!type metadata singleton initialization cache for KDSRegistrationPersister)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for KDSRegistrationPersister()
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

uint64_t dispatch thunk of KDSRegistrationPersister.setupDB()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationPersister.closeDB()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationPersister.deleteDB()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationPersister.save(stateMachine:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1);
}

uint64_t dispatch thunk of KDSRegistrationPersister.loadRegistrationStateMachines(with:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v8(a1);
}

uint64_t dispatch thunk of KDSRegistrationPersister.deleteRegistration(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2);
}

uint64_t sub_26533C4E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhoneNumberProvider.__allocating_init()()
{
  v1 = type metadata accessor for LogCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  (*(v2 + 104))(v5, *MEMORY[0x277D4C908], v1);
  secureMessagingLogger(category:)();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t PhoneNumberInfo.init(uri:credential:credentialType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for URI();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PhoneNumberInfo(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CredentialType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0x7373654C534D53;
  if (a1 != 2)
  {
    v2 = 0x6E656B6F54534352;
  }

  if (a1)
  {
    v1 = 5459283;
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

uint64_t PhoneNumberInfo.uri.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URI();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PhoneNumberInfo.credential.getter()
{
  v1 = (v0 + *(type metadata accessor for PhoneNumberInfo(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CredentialType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x7373654C534D53;
  if (v3 != 2)
  {
    v6 = 0x6E656B6F54534352;
    v5 = 0xE800000000000000;
  }

  v7 = 5459283;
  if (*a1)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v7 = 0x6E776F6E6B6E55;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE700000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x7373654C534D53;
  if (*a2 != 2)
  {
    v12 = 0x6E656B6F54534352;
    v11 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 5459283;
    v10 = 0xE300000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CredentialType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CredentialType()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CredentialType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CredentialType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CredentialType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CredentialType(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  v4 = 0xE700000000000000;
  v5 = 0x7373654C534D53;
  if (*v1 != 2)
  {
    v5 = 0x6E656B6F54534352;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 5459283;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t PhoneNumberProvider.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore19PhoneNumberProvider_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6863746546534449;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746546534449 && a2 == 0xED0000726F727245;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534D0B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys(uint64_t a1)
{
  found = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();

  return MEMORY[0x2821FE718](a1, found);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys(uint64_t a1)
{
  found = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();

  return MEMORY[0x2821FE720](a1, found);
}

uint64_t PhoneNumberProvider.PhoneNumberProviderError.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

Swift::Int PhoneNumberProvider.PhoneNumberProviderError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneNumberProvider.PhoneNumberProviderError@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneNumberProvider.PhoneNumberProviderError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t PhoneNumberProvider.obtainPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for URI();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](PhoneNumberProvider.obtainPhoneNumberInfo(for:), 0, 0);
}

uint64_t PhoneNumberProvider.obtainPhoneNumberInfo(for:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[27] = [objc_allocWithZone(MEMORY[0x277D18748]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D18748]) init];
  v0[28] = v3;
  v4 = MEMORY[0x266756A10](v2, v1);
  v0[29] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = PhoneNumberProvider.obtainPhoneNumberInfo(for:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo24IDSPhoneNumberCredentialCs5Error_pGMd, &_sSccySo24IDSPhoneNumberCredentialCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPhoneNumberCredential?, @unowned NSError?) -> () with result type IDSPhoneNumberCredential;
  v0[13] = &block_descriptor_10;
  v0[14] = v5;
  [v3 requestPhoneNumberCredentialForService:2 simLabelID:v4 requestOption:1 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = PhoneNumberProvider.obtainPhoneNumberInfo(for:);
  }

  else
  {
    v3 = PhoneNumberProvider.obtainPhoneNumberInfo(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v46 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);

  v4 = [v3 telURI];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URI.init(unprefixedTelURI:)();
  v5 = [v3 credential];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v43 = v3;
  v9 = [v3 credentialType];
  if (v9 >= 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 184);
  v41 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(*(v0 + 192) + 16);
  v15(v14, v11, v13);
  v16 = type metadata accessor for PhoneNumberInfo(0);
  v17 = (v14 + *(v16 + 20));
  v40 = v6;
  *v17 = v6;
  v17[1] = v8;
  *(v14 + *(v16 + 24)) = v10;
  v15(v12, v11, v13);
  v44 = v8;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25 = *(v0 + 184);
  if (v20)
  {
    v26 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45[0] = v38;
    *v26 = 136315394;
    lazy protocol witness table accessor for type URI and conformance URI();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v22;
    v29 = v28;
    v39 = v21;
    v30 = *(v24 + 8);
    v30(v23, v25);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v45);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v44, v45);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_26524C000, v18, v19, "Received phone number information. { uri: %s, credential: %s }", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v38, -1, -1);
    MEMORY[0x2667577B0](v26, -1, -1);

    v33 = v42;
  }

  else
  {

    v30 = *(v24 + 8);
    v30(v23, v25);
    v33 = v22;
  }

  v30(v33, v25);
  v35 = *(v0 + 200);
  v34 = *(v0 + 208);

  v36 = *(v0 + 8);

  return v36();
}

{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  swift_willThrow();

  v4 = v0[30];
  v5 = v0[22];
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26524C000, v7, v8, "Hit an error fetching phone number information. %@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x2667577B0](v10, -1, -1);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];

  lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPhoneNumberCredential?, @unowned NSError?) -> () with result type IDSPhoneNumberCredential(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t PhoneNumberProvider.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore19PhoneNumberProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhoneNumberProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore19PhoneNumberProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t PhoneNumberProvider.init()()
{
  v1 = type metadata accessor for LogCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D4C908], v1);
  secureMessagingLogger(category:)();
  (*(v2 + 8))(v5, v1);
  return v0;
}

unint64_t specialized CredentialType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CredentialType.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys);
  }

  return result;
}

uint64_t specialized PhoneNumberProvider.PhoneNumberProviderError.init(from:)(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();
  v14 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = KeyedDecodingContainer.allKeys.getter();
  if (*(v18 + 16) != 1)
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v22 = &type metadata for PhoneNumberProvider.PhoneNumberProviderError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v32;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URI and conformance URI()
{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    type metadata accessor for URI();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CredentialType and conformance CredentialType()
{
  result = lazy protocol witness table cache variable for type CredentialType and conformance CredentialType;
  if (!lazy protocol witness table cache variable for type CredentialType and conformance CredentialType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CredentialType and conformance CredentialType);
  }

  return result;
}

uint64_t sub_26533E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URI();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26533E858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URI();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for PhoneNumberInfo()
{
  result = type metadata accessor for URI();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CredentialType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CredentialType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for PhoneNumberProvider()
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

uint64_t dispatch thunk of PhoneNumberProvider.obtainPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}