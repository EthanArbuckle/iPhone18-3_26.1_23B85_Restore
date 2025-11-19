uint64_t closure #1 in variable initialization expression of static OutgoingEventModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t *a2@<X8>)
{
  if (sqlite3_column_type(a1, 1) == 5)
  {
    goto LABEL_13;
  }

  v4 = sqlite3_column_blob(a1, 1);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 1);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 2) == 5 || (v10 = sqlite3_column_blob(a1, 2)) == 0)
  {
    v25 = v7;
    v26 = v9;
LABEL_12:
    outlined consume of Data._Representation(v25, v26);
LABEL_13:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v27 = 3;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    return swift_willThrow();
  }

  v11 = v10;
  v12 = sqlite3_column_bytes(a1, 2);
  v13 = specialized Data.init(bytes:count:)(v11, v12);
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v16 = sqlite3_column_blob(a1, 3)) == 0)
  {
    outlined consume of Data._Representation(v7, v9);
    v25 = v13;
    v26 = v15;
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sqlite3_column_bytes(a1, 3);
  v40 = specialized Data.init(bytes:count:)(v17, v18);
  v39 = v19;
  if (sqlite3_column_type(a1, 4) == 5 || (v20 = sqlite3_column_blob(a1, 4)) == 0)
  {
    v37 = 0xF000000000000000;
    v38 = 0;
  }

  else
  {
    v21 = v20;
    v22 = sqlite3_column_bytes(a1, 4);
    v23 = specialized Data.init(bytes:count:)(v21, v22);
    v37 = v24;
    v38 = v23;
  }

  if (sqlite3_column_type(a1, 5) == 5)
  {
    v29 = 0;
LABEL_19:
    v32 = 0xF000000000000000;
    goto LABEL_20;
  }

  v29 = sqlite3_column_blob(a1, 5);
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = sqlite3_column_bytes(a1, 5);
  v29 = specialized Data.init(bytes:count:)(v29, v30);
  v32 = v31;
LABEL_20:
  if (sqlite3_column_type(a1, 6) == 5)
  {
    result = 0;
    v33 = 0xF000000000000000;
  }

  else
  {
    v36 = v29;
    result = sqlite3_column_blob(a1, 6);
    if (result)
    {
      v34 = result;
      v35 = sqlite3_column_bytes(a1, 6);
      result = specialized Data.init(bytes:count:)(v34, v35);
    }

    else
    {
      v33 = 0xF000000000000000;
    }

    v29 = v36;
  }

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v38;
  a2[5] = v37;
  a2[6] = v29;
  a2[7] = v32;
  a2[8] = result;
  a2[9] = v33;
  a2[10] = v40;
  a2[11] = v39;
  return result;
}

__n128 OutgoingEventModel.init(clientIdentifier:groupID:outgoingEventData:groupVersionData:outgoingEventStateData:eventIdentifier:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance OutgoingEventModel())@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v1 = static OutgoingEventModel.converter;
  v0 = *algn_281EF7B58;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)partial apply;
}

uint64_t *OutgoingEventQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static OutgoingEventQuery.converter;
}

uint64_t static OutgoingEventQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OutgoingEventQuery.converter;

  return v0;
}

uint64_t static OutgoingEventQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static OutgoingEventQuery.converter = a1;
  qword_2800167A8 = a2;
}

uint64_t (*static OutgoingEventQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static OutgoingEventQuery.converter : OutgoingEventQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static OutgoingEventQuery.converter;
  v2 = qword_2800167A8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static OutgoingEventQuery.converter : OutgoingEventQuery.Type(uint64_t *a1)
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
  static OutgoingEventQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out OutgoingEventModel?, @error @owned Error);
  qword_2800167A8 = v3;
}

sqlite3_stmt *OutgoingEventQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Outgoing_Event_Table WHERE client_id = ? ORDER BY id ASC;");
  if (!v6)
  {
LABEL_50:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v28 = a2;
      WORD4(v28) = a3;
      BYTE10(v28) = BYTE2(a3);
      BYTE11(v28) = BYTE3(a3);
      BYTE12(v28) = BYTE4(a3);
      BYTE13(v28) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v28;
        goto LABEL_39;
      }

LABEL_43:
      v26 = v9;
      swift_once();
      v9 = v26;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_47;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 < a2)
  {
    __break(1u);
LABEL_45:
    v27 = v7;
    swift_once();
    v7 = v27;
LABEL_33:
    if (!sqlite3_bind_blob(v7, 1, &v28, 0, SQLITE_TRANSIENT))
    {
      goto LABEL_34;
    }

LABEL_40:
    *&v28 = 0x726F7272456C7173;
    *(&v28 + 1) = 0xE90000000000003ALL;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v21);

    v22 = v28;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = v22;
    result = swift_willThrow();
    goto LABEL_41;
  }

  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_25:
  v9 = MEMORY[0x2667557A0]();
  if (v9 >= (a2 >> 32) - a2)
  {
    a2 = (a2 >> 32) - a2;
  }

  else
  {
    a2 = v9;
  }

  if (v14)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (a2 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_32:
      *(&v28 + 6) = 0;
      *&v28 = 0;
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(a2) = 0;
  }

LABEL_36:
  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v25 = ppStmt[0];
    swift_once();
    v9 = v25;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v14;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
  {
    goto LABEL_40;
  }

LABEL_34:
  result = ppStmt[0];
LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance OutgoingEventQuery())@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static OutgoingEventQuery.converter;
  v0 = qword_2800167A8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error);
}

uint64_t closure #1 in variable initialization expression of static OutgoingClientWithEventQuery.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5 || (v2 = sqlite3_column_blob(a1, 0)) == 0)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v3 = v2;
    v4 = sqlite3_column_bytes(a1, 0);
    return specialized Data.init(bytes:count:)(v3, v4);
  }
}

uint64_t static OutgoingEventModel.converter.getter(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t static OutgoingEventModel.converter.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t key path getter for static OutgoingEventModel.converter : OutgoingEventModel.Type@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X6>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *a1;
  v9 = *a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *a4 = a3;
  a4[1] = v10;
}

uint64_t key path setter for static OutgoingEventModel.converter : OutgoingEventModel.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  swift_beginAccess();
  v14 = *a7;
  *a6 = a8;
  *a7 = v13;
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance OutgoingClientWithEventQuery())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static OutgoingClientWithEventQuery.converter;
  v0 = *algn_281EF7B68;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned Data?, @error @owned Error);
}

sqlite3_stmt *specialized static OutgoingEventModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Outgoing_Event_Table (\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    client_id BLOB NOT NULL,\n    group_id BLOB NOT NULL,\n    event_identifier BLOB NOT NULL,\n    outgoing_event_data BLOB,\n    group_version_data BLOB,\n    outgoing_event_state_data BLOB\n);");
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

uint64_t specialized static OutgoingEventModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS Outgoing_Event_Table_Event_ID_Index ON Outgoing_Event_Table(event_identifier, group_id, client_id, id);");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static OutgoingEventModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Outgoing_Event_Table");
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

sqlite3_stmt *specialized OutgoingClientWithEventQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("SELECT DISTINCT client_id FROM Outgoing_Event_Table;");
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for OutgoingEventModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for OutgoingEventModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OutgoingEventQuery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for OutgoingEventQuery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26526EBB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out OutgoingEventModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out OutgoingEventModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v12 = a1;
  v5(v11, &v12);
  if (!v3)
  {
    v8 = v11[3];
    a2[2] = v11[2];
    a2[3] = v8;
    v9 = v11[5];
    a2[4] = v11[4];
    a2[5] = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    a2[1] = v10;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v11, *a1);
  if (!v3)
  {
    v8 = v11[3];
    a2[2] = v11[2];
    a2[3] = v8;
    v9 = v11[5];
    a2[4] = v11[4];
    a2[5] = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    a2[1] = v10;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)@<D0>(_OWORD *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v10);
  if (!v2)
  {
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = *(a1 + 40);
    v30 = *a1;
    v31 = *(a1 + 8);
    v32 = *(a1 + 24);
    v33 = v5;
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v30, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v29;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v30 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v30;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for MLS.UniqueClientIdentifier();
      v19 = *(v18 - 8);
      v28 = *(v19 + 8);
      v28(v17 + *(v19 + 72) * v13, v18);
      v20 = (*(v16 + 56) + 48 * v13);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v28)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v26 = type metadata accessor for MLS.UniqueClientIdentifier();
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v4;
    v9[2] = *(a1 + 32);
    v10 = *(a1 + 48);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of RegClientIdentifier(a2);
    *v2 = v8;
  }

  else
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMd, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    outlined destroy of RegClientIdentifier(a2);
    return outlined destroy of MLS.KeyPackageProvider?(v9, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMd, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMR);
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of MLS.SwiftMLSPersisterProtocol(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMd, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v10);
    v8 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v8 - 8) + 8))(a2, v8);
    return outlined destroy of MLS.KeyPackageProvider?(v10, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMd, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMR);
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, MEMORY[0x277D4CFD0], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    v14 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of MLS.KeyPackageProvider?(v8, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for MLS.KeyPackageProvider();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, MEMORY[0x277D4CF18], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    v14 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of MLS.KeyPackageProvider?(v8, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v28;
  }

  else
  {
    v12 = *v3;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v29 = *v4;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v29;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = (*(v18 + 56) + 16 * v15);
      v25 = *v23;
      v24 = v23[1];

      swift_unknownObjectRelease();
      specialized _NativeDictionary._delete(at:)(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v26 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
      v27 = *(*(v26 - 8) + 8);

      return v27(a3, v26);
    }
  }

  return result;
}

uint64_t ClientXPCServer.addClientXPCProxy(clientProxy:with:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(*v2 + 104);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v11 = v10(v18);
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v13;
  *v13 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  *v13 = v17;
  return v11(v18, 0);
}

uint64_t ClientXPCServer.removeClientXPCProxy(for:)(uint64_t a1)
{
  v3 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6, a1);
  memset(v11, 0, sizeof(v11));
  v8 = (*(*v1 + 104))(v10);
  specialized Dictionary.subscript.setter(v11, v6);
  return v8(v10, 0);
}

uint64_t ClientXPCServer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ClientXPCServer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ClientXPCServer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_0cD9AgentCore0G8XPCProxyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t ClientXPCProxy.clientKPExchanger.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t ClientXPCProxy.init(client:swiftMLSClientCoordinator:clientCommunicator:clientDelegate:clientKPExchanger:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ClientXPCServer.clientProxyByUUID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ClientXPCServer.clientProxyByUUID.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RegistrationClientServer.addRegClientProxy(regClientProxy:with:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RegClientIdentifier();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of RegClientIdentifier(a2, v8);
  outlined init with copy of RegistrationClientProxy(a1, v13);
  v9 = (*(*v2 + 104))(v12);
  specialized Dictionary.subscript.setter(v13, v8);
  return v9(v12, 0);
}

uint64_t RegistrationClientServer.removeRegClientProxy(for:)(uint64_t a1)
{
  v3 = type metadata accessor for RegClientIdentifier();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of RegClientIdentifier(a1, v6);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = (*(*v1 + 104))(v9);
  specialized Dictionary.subscript.setter(v10, v6);
  return v7(v9, 0);
}

uint64_t RegistrationClientServer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24SecureMessagingAgentCore19RegClientIdentifierV_AC012RegistrationH5ProxyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t RegistrationClientProxy.keyPackageExchanger.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t RegistrationClientProxy.init(client:keyPackageExchanger:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = outlined init with take of MLS.SwiftMLSPersisterProtocol(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t RegClientIdentifier.clientIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.ClientIdentifier();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RegClientIdentifier.init(clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static RegClientIdentifier.== infix(_:_:)()
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RegClientIdentifier.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegClientIdentifier.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegClientIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026534A490 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RegClientIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t RegClientIdentifier.hash(into:)()
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int RegClientIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t RegClientIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RegClientIdentifier();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of RegClientIdentifier(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RegClientIdentifier()
{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RegClientIdentifier()
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegClientIdentifier()
{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RegClientIdentifier(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RegClientIdentifier()
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v17;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for RegClientIdentifier();
    outlined destroy of RegClientIdentifier(v12 + *(*(v13 - 8) + 72) * v8);
    v14 = *(v11 + 56) + 56 * v8;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    *(a2 + 48) = *(v14 + 48);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    outlined init with take of MLS.SwiftMLSPersisterProtocol((*(v11 + 56) + 40 * v8), a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for MLS.UniqueClientIdentifier();
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    a3(v20, v17);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t type metadata accessor for RegClientIdentifier()
{
  result = type metadata singleton initialization cache for RegClientIdentifier;
  if (!type metadata singleton initialization cache for RegClientIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26527112C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_265271178(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t sub_2652711CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_265271218(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t dispatch thunk of ClientXPCServer.addClientXPCProxy(clientProxy:with:)(_OWORD *a1)
{
  v2 = *(*v1 + 112);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t getEnumTagSinglePayload for ClientXPCProxy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientXPCProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for RegistrationClientProxy(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for RegistrationClientProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26527161C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26527169C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for RegClientIdentifier()
{
  result = type metadata accessor for MLS.ClientIdentifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegClientIdentifier.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RegClientIdentifier.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t outlined destroy of MLS.KeyPackageProvider?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DelegateBroadcaster.__allocating_init(clientConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DelegateBroadcaster.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DelegateBroadcaster.receive(event:forGroup:), v6, v5);
}

uint64_t DelegateBroadcaster.receive(event:forGroup:)()
{
  v1 = type metadata accessor for MLS.ReceiveResult();
  v2 = type metadata accessor for MLS.ReceiveError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = *(MEMORY[0x277D4D290] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v6 = MEMORY[0x277D4CCC0];
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult, MEMORY[0x277D4CCC0]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult, v6);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError, MEMORY[0x277D4CC98]);
  *v5 = v0;
  v5[1] = DelegateBroadcaster.receive(event:forGroup:);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v8, v1, v2, partial apply for closure #1 in DelegateBroadcaster.receive(event:forGroup:), v3, partial apply for closure #2 in DelegateBroadcaster.receive(event:forGroup:), v7, v1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = DelegateBroadcaster.receive(event:forGroup:);
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = DelegateBroadcaster.receive(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t closure #1 in DelegateBroadcaster.receive(event:forGroup:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    v10 = *(v3 + 48);
    v11 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for MLS.Group();
    lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0]);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v12;
    a1[3] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in DelegateBroadcaster.receive(event:forGroup:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in DelegateBroadcaster.receive(event:forGroup:)(a1);
}

uint64_t DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:), v6, v5);
}

uint64_t DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)()
{
  GroupRecoveryInfoResult = type metadata accessor for MLS.FetchGroupRecoveryInfoResult();
  GroupRecoveryInfoError = type metadata accessor for MLS.FetchGroupRecoveryInfoError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = *(MEMORY[0x277D4D290] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v6 = MEMORY[0x277D4D168];
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult, MEMORY[0x277D4D168]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult, v6);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError, MEMORY[0x277D4D158]);
  *v5 = v0;
  v5[1] = DelegateBroadcaster.receive(event:forGroup:);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v8, GroupRecoveryInfoResult, GroupRecoveryInfoError, partial apply for closure #1 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:), v3, partial apply for closure #2 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:), v7, GroupRecoveryInfoResult);
}

uint64_t closure #1 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for MLS.Group();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0]);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    v10 = *(v3 + 48);
    v11 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?();
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v12;
    a1[3] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)(a1);
}

uint64_t DelegateBroadcaster.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DelegateBroadcaster.fetchMember(uri:context:), v6, v5);
}

uint64_t DelegateBroadcaster.fetchMember(uri:context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMd, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMR);
  MemberError = type metadata accessor for MLS.FetchMemberError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = *(MEMORY[0x277D4D290] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMd, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMR);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMd, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMR);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError, MEMORY[0x277D4CD80]);
  *v5 = v0;
  v5[1] = DelegateBroadcaster.fetchMember(uri:context:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v7, v1, MemberError, partial apply for closure #1 in DelegateBroadcaster.fetchMember(uri:context:), v3, partial apply for closure #2 in DelegateBroadcaster.fetchMember(uri:context:), v6, v1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = DelegateBroadcaster.fetchMember(uri:context:);
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = DelegateBroadcaster.fetchMember(uri:context:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t closure #1 in DelegateBroadcaster.fetchMember(uri:context:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for URI();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    v10 = *(v3 + 48);
    v11 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?();
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v12;
    a1[3] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in DelegateBroadcaster.fetchMember(uri:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in DelegateBroadcaster.fetchMember(uri:context:)(a1);
}

uint64_t closure #2 in DelegateBroadcaster.receive(event:forGroup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a4 + 16);
  outlined copy of Data._Representation(*a1, v10);
  outlined copy of Data._Representation(v11, v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  [v13 *a6];
  _Block_release(v16);

  outlined consume of Data._Representation(v11, v12);
  return outlined consume of Data._Representation(v9, v10);
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

uint64_t DelegateBroadcaster.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DelegateBroadcaster.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
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

uint64_t protocol witness for MLS.Delegate.receive(event:forGroup:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D4D1F8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MEMORY[0x2821ACB38](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for MLS.Delegate.fetchGroupRecoveryInfo(group:context:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchMember(uri:context:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DelegateBroadcaster.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DelegateBroadcaster.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext, MEMORY[0x277D4CEE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
    lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext, MEMORY[0x277D4D180]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLSActor and conformance MLSActor(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiy24SecureMessagingAgentCore26KDSRegistrationPushHandlerC_SDys11AnyHashableVypGt0cD017RegistrationActorCYcc_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x266756B80](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DaemonPersister.inMemoryPersister.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister;
  if (*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for MLS.InMemoryPersister();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = MLS.InMemoryPersister.init()();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t DaemonPersister.inMemoryPersister.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister);
  *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister) = a1;
}

uint64_t (*DaemonPersister.inMemoryPersister.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DaemonPersister.inMemoryPersister.getter();
  return DaemonPersister.inMemoryPersister.modify;
}

uint64_t DaemonPersister.fileDir.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir + 8);

  return v1;
}

uint64_t DaemonPersister.dbFileName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName + 8);

  return v1;
}

uint64_t DaemonPersister.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DaemonPersister.ongoingTransaction.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_ongoingTransaction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DaemonPersister.ongoingTransaction.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_ongoingTransaction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DaemonPersister.clientIDToSwiftMLSPersister.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_clientIDToSwiftMLSPersister;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t DaemonPersister.clientIDToSwiftMLSPersister.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_clientIDToSwiftMLSPersister;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DaemonPersister.persistenceQueue.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue;
  if (*(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue))
  {
    v7 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v9 = type metadata accessor for MLS.PersistenceQueue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v7 = MLS.PersistenceQueue.init(queueingPublisher:beginTransactionBlock:endTransactionBlock:rollbackTransactionBlock:)();
    v12 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_265273E9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in DaemonPersister.persistenceQueue.getter(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MLSActor();
  v1[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v8 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #1 in DaemonPersister.persistenceQueue.getter()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = closure #1 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.prepare(_:)(0xD000000000000012, 0x800000026534A630);
  }

  else
  {
    v5 = v0[9];

    v6 = v0[8];
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      (*(*v7 + 200))(1);
    }

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #1 in DaemonPersister.persistenceQueue.getter;
    v3 = v0[12];

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    v5 = v0[12];
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v6 = swift_allocError();
    *v7 = 2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    swift_willThrow();

    v0[17] = v6;
    v8 = v0[10];
    v9 = v0[11];

    return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v8, v9);
  }
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = v2[12];

  if (v0)
  {
    v3[17] = v0;
    v7 = v3[10];
    v8 = v3[11];
    v9 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  v1 = v0[12];

  v0[17] = v0[15];
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v2, v3);
}

{
  v1 = v0[9];

  v2 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 200))(1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in DaemonPersister.persistenceQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in DaemonPersister.persistenceQueue.getter(v0);
}

uint64_t closure #2 in DaemonPersister.persistenceQueue.getter(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MLSActor();
  v1[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](closure #2 in DaemonPersister.persistenceQueue.getter, v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v8 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #2 in DaemonPersister.persistenceQueue.getter()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = closure #2 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.prepare(_:)(0x3B54494D4D4F43, 0xE700000000000000);
  }

  else
  {
    v5 = v0[9];

    v6 = v0[8];
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      (*(*v7 + 200))(0);
    }

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #2 in DaemonPersister.persistenceQueue.getter;
    v3 = v0[12];

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    v5 = v0[12];
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v6 = swift_allocError();
    *v7 = 2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    swift_willThrow();

    v0[17] = v6;
    v8 = v0[10];
    v9 = v0[11];

    return MEMORY[0x2822009F8](closure #2 in DaemonPersister.persistenceQueue.getter, v8, v9);
  }
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = v2[12];

  if (v0)
  {
    v3[17] = v0;
    v7 = v3[10];
    v8 = v3[11];
    v9 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  v1 = v0[12];

  v0[17] = v0[15];
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822009F8](closure #2 in DaemonPersister.persistenceQueue.getter, v2, v3);
}

{
  v1 = v0[9];

  v2 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 200))(0);
  }

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t partial apply for closure #2 in DaemonPersister.persistenceQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in DaemonPersister.persistenceQueue.getter(v0);
}

uint64_t closure #3 in DaemonPersister.persistenceQueue.getter(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MLSActor();
  v1[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](closure #3 in DaemonPersister.persistenceQueue.getter, v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v8 = closure #3 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #3 in DaemonPersister.persistenceQueue.getter()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = closure #3 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.prepare(_:)(0x4B4341424C4C4F52, 0xE90000000000003BLL);
  }

  else
  {
    v5 = v0[9];

    v6 = v0[8];
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      (*(*v7 + 200))(0);
    }

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #3 in DaemonPersister.persistenceQueue.getter;
    v3 = v0[12];

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    v5 = v0[12];
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v6 = swift_allocError();
    *v7 = 2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    swift_willThrow();

    v0[17] = v6;
    v8 = v0[10];
    v9 = v0[11];

    return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v8, v9);
  }
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = v2[12];

  if (v0)
  {
    v3[17] = v0;
    v7 = v3[10];
    v8 = v3[11];
    v9 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = closure #3 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t partial apply for closure #3 in DaemonPersister.persistenceQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #3 in DaemonPersister.persistenceQueue.getter(v0);
}

uint64_t DaemonPersister.persistenceQueue.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue);
  *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue) = a1;
}

uint64_t (*DaemonPersister.persistenceQueue.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DaemonPersister.persistenceQueue.getter();
  return DaemonPersister.persistenceQueue.modify;
}

uint64_t DaemonPersister.inMemoryPersister.modify(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + *a3);
  *(v3 + *a3) = v4;
}

uint64_t DaemonPersister.useDatabase.getter()
{
  v0 = type metadata accessor for SMAFeatureFlagsKey();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D4CC30], v0);
  v5 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t DaemonPersister.__allocating_init(fileDir:dbFileName:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a5;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LogCategory();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11[13];
  v15(v14, *MEMORY[0x277D4C8F8], v10);
  secureMessagingLogger(category:)();
  v16 = v11[1];
  v16(v14, v10);
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister) = 0;
  v17 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store;
  v18 = type metadata accessor for SqliteStore();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  v15(v14, *MEMORY[0x277D4C920], v10);
  secureMessagingLogger(category:)();
  v16(v14, v10);
  *(v21 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  *(v6 + v17) = v21;
  v22 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder;
  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v6 + v22) = JSONEncoder.init()();
  v26 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder;
  v27 = type metadata accessor for JSONDecoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v6 + v26) = JSONDecoder.init()();
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_ongoingTransaction) = 0;
  v30 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_clientIDToSwiftMLSPersister;
  *(v6 + v30) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue) = 0;
  v31 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
  v32 = v42;
  *v31 = v41;
  v31[1] = v32;
  v33 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;
  v35 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_featureFlagStore;
  v36 = type metadata accessor for SMAFeatureFlagsStore();
  v37 = *(v36 - 8);
  v38 = v46;
  (*(v37 + 16))(v6 + v35, v46, v36);
  v39 = *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v37 + 8))(v38, v36);
  return v6;
}

uint64_t DaemonPersister.setupDB()()
{
  v6 = *MEMORY[0x277D85DE8];
  v1[3] = v0;
  type metadata accessor for MLSActor();
  v1[4] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v2;
  v1[6] = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v2, v3);
}

{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(*v0[3] + 264))())
  {
    v1 = v0[3];
    v0[7] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister setting up DB.", v4, 2u);
      MEMORY[0x2667577B0](v4, -1, -1);
    }

    v5 = v0[3];

    v6 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v7 = v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir;
    v8 = *(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
    v9 = *(v7 + 8);
    v10 = MEMORY[0x266756A10](v8, v9);
    v0[2] = 0;
    v11 = [v6 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

    v12 = v0[2];
    if (v11)
    {
      v13 = v0[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_265343880;
      v15 = MEMORY[0x277D837D0];
      *(v14 + 56) = MEMORY[0x277D837D0];
      v16 = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 64) = v16;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      v17 = *(v13 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
      v18 = *(v13 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName + 8);
      *(v14 + 96) = v15;
      *(v14 + 104) = v16;
      *(v14 + 72) = v17;
      *(v14 + 80) = v18;
      v19 = v12;

      v20 = String.init(format:_:)();
      v22 = v21;
      v0[8] = v21;
      v0[9] = *(v13 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      v23 = swift_task_alloc();
      v0[10] = v23;
      *v23 = v0;
      v23[1] = DaemonPersister.setupDB();
      v24 = *MEMORY[0x277D85DE8];

      return SqliteStore.open(filePath:)(v20, v22);
    }

    v33 = v0[4];
    v34 = v12;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v31 = v0[1];
    v35 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v27 = v0[3];
    v26 = v0[4];

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26524C000, v28, v29, "DaemonPersister feature flag off. Not setting up DB.", v30, 2u);
      MEMORY[0x2667577B0](v30, -1, -1);
    }

    v31 = v0[1];
    v32 = *MEMORY[0x277D85DE8];
  }

  return v31();
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  v5 = v2[8];

  if (v0)
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v6, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    v2[12] = v9;
    *v9 = v4;
    v9[1] = DaemonPersister.setupDB();
    v10 = v2[9];
    v11 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for ClientStateModel, &protocol witness table for ClientStateModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[14] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for SecureMessagingClientModel, &protocol witness table for SecureMessagingClientModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[16] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for GroupStateModel, &protocol witness table for GroupStateModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[18] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for EpochModel, &protocol witness table for EpochModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[20] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for GroupMemberModel, &protocol witness table for GroupMemberModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[22] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for SecureMessagingGroupModel, &protocol witness table for SecureMessagingGroupModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[24] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for KeyPackageModel, &protocol witness table for KeyPackageModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[26] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for FailureToDecryptRetryModel, &protocol witness table for FailureToDecryptRetryModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[28] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for IncomingEventModel, &protocol witness table for IncomingEventModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[30] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for OutgoingEventModel, &protocol witness table for OutgoingEventModel);
  }
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[32] = v7;
    *v7 = v3;
    v7[1] = DaemonPersister.setupDB();
    v8 = v3[9];
    v9 = *MEMORY[0x277D85DE8];

    return SqliteStore.createTable(_:)(&type metadata for KeyUpdateModel, &protocol witness table for KeyUpdateModel);
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = DaemonPersister.setupDB();
  }

  else
  {
    v7 = DaemonPersister.setupDB();
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister finished setting up DB.", v6, 2u);
    MEMORY[0x2667577B0](v6, -1, -1);
  }

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[11];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[13];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[15];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[17];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[19];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[21];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[23];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[25];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[27];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[29];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[31];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];

  v2 = v0[33];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t DaemonPersister.closeDB()()
{
  v1[2] = v0;
  type metadata accessor for MLSActor();
  v1[3] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](DaemonPersister.closeDB(), v3, v2);
}

{
  if ((*(*v0[2] + 264))())
  {
    v1 = v0[2];
    v0[6] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister closing DB.", v4, 2u);
      MEMORY[0x2667577B0](v4, -1, -1);
    }

    v5 = v0[2];

    v6 = *(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = DaemonPersister.closeDB();

    return SqliteStore.close()();
  }

  else
  {
    v10 = v0[2];
    v9 = v0[3];

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26524C000, v11, v12, "DaemonPersister feature flag off. Not closing DB.", v13, 2u);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = DaemonPersister.closeDB();
  }

  else
  {
    v7 = DaemonPersister.closeDB();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister finished closing DB.", v6, 2u);
    MEMORY[0x2667577B0](v6, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t DaemonPersister.deleteDB()()
{
  v6 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  type metadata accessor for MLSActor();
  *(v1 + 32) = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](DaemonPersister.deleteDB(), v2, v3);
}

{
  v31 = *MEMORY[0x277D85DE8];
  v2 = v0[3];
  v1 = v0[4];

  v4 = (*(*v2 + 264))(v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "DaemonPersister feature flag off. Not deleting DB.";
      goto LABEL_9;
    }

LABEL_10:

    v26 = v0[1];
    v27 = *MEMORY[0x277D85DE8];
    goto LABEL_12;
  }

  if (v7)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister deleting DB.", v8, 2u);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v9 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_265343880;
  v12 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
  v11 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir + 8);
  v13 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v14;
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  v15 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
  v16 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName + 8);
  *(v10 + 96) = v13;
  *(v10 + 104) = v14;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;

  v17 = String.init(format:_:)();
  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v21 = MEMORY[0x266756A10](v17, v19);

  v0[2] = 0;
  LODWORD(v19) = [v20 removeItemAtPath:v21 error:v0 + 2];

  v22 = v0[2];
  if (v19)
  {
    v23 = v22;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "DaemonPersister finished deleting DB.";
LABEL_9:
      _os_log_impl(&dword_26524C000, v5, v6, v25, v24, 2u);
      MEMORY[0x2667577B0](v24, -1, -1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v28 = v22;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v26 = v0[1];
  v29 = *MEMORY[0x277D85DE8];
LABEL_12:

  return v26();
}

uint64_t DaemonPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  type metadata accessor for MLSActor();
  v9[11] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[12] = v11;
  v9[13] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.atomically<A>(with:do:rollback:), v11, v10);
}

uint64_t DaemonPersister.atomically<A>(with:do:rollback:)()
{
  v29 = v0;
  v1 = *(v0 + 32);
  v2 = (*(**(v0 + 80) + 264))();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v28);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister atomically using persistence mode { transactionID: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    *(v0 + 112) = (*(**(v0 + 80) + 240))();
    v10 = *(MEMORY[0x277D4CD98] + 4);
    v27 = (*MEMORY[0x277D4CD98] + MEMORY[0x277D4CD98]);
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v12 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  else
  {
    if (v5)
    {
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v28);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister atomically using inMemory mode { transactionID: %s }", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2667577B0](v16, -1, -1);
      MEMORY[0x2667577B0](v15, -1, -1);
    }

    *(v0 + 136) = (*(**(v0 + 80) + 168))();
    v17 = *(MEMORY[0x277D4CDE8] + 4);
    v27 = (*MEMORY[0x277D4CDE8] + MEMORY[0x277D4CDE8]);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v12 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  v11[1] = v12;
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 48);
  v21 = *(v0 + 56);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  v24 = *(v0 + 16);
  v25 = *(v0 + 24);

  return v27(v24, v25, v22, v23, v20, v21, v18, v19);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  else
  {
    v7 = v2[14];

    v4 = v2[12];
    v5 = v2[13];
    v6 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  else
  {
    v7 = v2[17];

    v4 = v2[12];
    v5 = v2[13];
    v6 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t DaemonPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[20] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v11;
  v3[22] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.save(swiftMLSClientID:forIdentifier:), v11, v10);
}

uint64_t DaemonPersister.save(swiftMLSClientID:forIdentifier:)()
{
  v120 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = (*(**(v0 + 72) + 264))();
  v4 = *(v1 + 16);
  v5 = (v2 + 16);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  if (v3)
  {
    v10 = *(v0 + 112);
    v108 = *(v1 + 16);
    v4(*(v0 + 152), v8, v6);
    v107 = *v5;
    (*v5)(v10, v9, v7);
    v11 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v11, v105);
    v13 = *(v0 + 152);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v112 = v16;
    v115 = *(v0 + 112);
    if (v12)
    {
      v18 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v119[0] = v104;
      *v18 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v11;
      v21 = v20;
      v106 = *(v14 + 8);
      v106(v13, v15);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v119);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v17 + 8);
      v26(v115, v112);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v119);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_26524C000, log, v105, "DaemonPersister saveSwiftMLSClientID using persistence mode { swiftMLSClientID: %s, identifier: %s }", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v104, -1, -1);
      MEMORY[0x2667577B0](v18, -1, -1);
    }

    else
    {

      v26 = *(v17 + 8);
      v26(v115, v112);
      v106 = *(v14 + 8);
      v28 = (v106)(v13, v15);
    }

    if ((*(**(v0 + 72) + 192))(v28))
    {
      v50 = *(v0 + 80);
      v51 = *(v0 + 64);
      v52 = *(*(v0 + 72) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v53 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 184) = v53;
      *(v0 + 192) = v54;
      v93 = *(v0 + 72);
      v94 = *(v0 + 56);
      v95 = v53;
      v96 = v54;
      outlined copy of Data._Representation(v53, v54);
      v97 = UUID.uuidString.getter();
      v99 = v98;
      *(v0 + 200) = v98;
      v100 = *(v93 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 40) = &type metadata for SecureMessagingClientModel;
      *(v0 + 48) = &protocol witness table for SecureMessagingClientModel;
      v101 = swift_allocObject();
      *(v0 + 16) = v101;
      v101[2] = v95;
      v101[3] = v96;
      v101[4] = v97;
      v101[5] = v99;
      outlined copy of Data._Representation(v95, v96);

      v102 = swift_task_alloc();
      *(v0 + 208) = v102;
      *v102 = v0;
      v102[1] = DaemonPersister.save(swiftMLSClientID:forIdentifier:);

      return SqliteStore.insert(_:)(v0 + 16);
    }

    else
    {
      v118 = v26;
      v60 = *(v0 + 160);
      v61 = *(v0 + 144);
      v62 = *(v0 + 120);
      v63 = *(v0 + 104);
      v64 = *(v0 + 80);
      v66 = *(v0 + 56);
      v65 = *(v0 + 64);

      v108(v61, v66, v62);
      v107(v63, v65, v64);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.fault.getter();
      v69 = os_log_type_enabled(v67, v68);
      v70 = *(v0 + 144);
      v72 = *(v0 + 120);
      v71 = *(v0 + 128);
      v73 = *(v0 + 104);
      v75 = *(v0 + 80);
      v74 = *(v0 + 88);
      if (v69)
      {
        v111 = v68;
        v76 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v119[0] = v114;
        *v76 = 136315394;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        v106(v70, v72);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v119);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        v118(v73, v75);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v119);

        *(v76 + 14) = v84;
        _os_log_impl(&dword_26524C000, v67, v111, "DaemonPersister saveSwiftMLSClientID called outside atomically block { swiftMLSClientID: %s, identifier: %s }", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v114, -1, -1);
        MEMORY[0x2667577B0](v76, -1, -1);
      }

      else
      {

        v118(v73, v75);
        v106(v70, v72);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v85 = 6;
      *(v85 + 8) = 0;
      *(v85 + 16) = 0;
      swift_willThrow();
      v87 = *(v0 + 144);
      v86 = *(v0 + 152);
      v88 = *(v0 + 136);
      v90 = *(v0 + 104);
      v89 = *(v0 + 112);
      v91 = *(v0 + 96);

      v92 = *(v0 + 8);

      return v92();
    }
  }

  else
  {
    v29 = *(v0 + 96);
    v4(*(v0 + 136), v8, v6);
    (*v5)(v29, v9, v7);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v35 = *(v0 + 120);
    v36 = *(v0 + 88);
    v37 = *(v0 + 96);
    v38 = *(v0 + 80);
    if (v32)
    {
      v113 = v31;
      v39 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v119[0] = v116;
      *v39 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v109 = v38;
      v110 = v30;
      v40 = v37;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v34 + 8))(v33, v35);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v119);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v36 + 8))(v40, v109);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v119);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_26524C000, v110, v113, "DaemonPersister saveSwiftMLSClientID using inMemory mode { swiftMLSClientID: %s, identifier: %s }", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v116, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
      v49 = (*(v34 + 8))(v33, v35);
    }

    *(v0 + 224) = (*(**(v0 + 72) + 168))(v49);
    v55 = *(MEMORY[0x277D4CE80] + 4);
    v117 = (*MEMORY[0x277D4CE80] + MEMORY[0x277D4CE80]);
    v56 = swift_task_alloc();
    *(v0 + 232) = v56;
    *v56 = v0;
    v56[1] = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
    v58 = *(v0 + 56);
    v57 = *(v0 + 64);

    return v117(v58, v57);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[23], v2[24]);
    v4 = v2[21];
    v5 = v2[22];
    v6 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v4 = v2[21];
    v5 = v2[22];
    v6 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  outlined consume of Data._Representation(v3, v1);

  outlined consume of Data._Representation(v3, v1);
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  else
  {
    v7 = v2[28];

    v4 = v2[21];
    v5 = v2[22];
    v6 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[20];

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[28];
  v2 = v0[20];

  v3 = v0[30];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[25];
  v2 = v0[20];
  outlined consume of Data._Representation(v0[23], v0[24]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[27];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t DaemonPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[15] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v8;
  v3[17] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.loadSwiftMLSClientID(identifier:), v8, v7);
}

uint64_t DaemonPersister.loadSwiftMLSClientID(identifier:)()
{
  v48 = v0;
  v1 = *(v0 + 96);
  v2 = (*(**(v0 + 80) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  if (v2)
  {
    v3(*(v0 + 112), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47[0] = v13;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v47);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadSwiftMLSClientID using persistence mode { identifier: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v30 = *(v0 + 88);
    v31 = *(v0 + 72);
    v32 = *(*(v0 + 80) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 144) = v33;
    *(v0 + 152) = v34;
    v40 = *(*(v0 + 80) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v41 = v33;
    v42 = v34;
    outlined copy of Data._Representation(v33, v34);
    v43 = swift_task_alloc();
    *(v0 + 160) = v43;
    *v43 = v0;
    v43[1] = DaemonPersister.loadSwiftMLSClientID(identifier:);
    v37 = v41;
    v38 = v42;
    v39 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    v3(*(v0 + 104), v5, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v24 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v47);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_26524C000, v18, v19, "DaemonPersister loadSwiftMLSClientID using inMemory mode { identifier: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2667577B0](v45, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {

      v29 = (*(v22 + 8))(v21, v23);
    }

    *(v0 + 184) = (*(**(v0 + 80) + 168))(v29);
    v35 = *(MEMORY[0x277D4CE38] + 4);
    v46 = (*MEMORY[0x277D4CE38] + MEMORY[0x277D4CE38]);
    v36 = swift_task_alloc();
    *(v0 + 192) = v36;
    *v36 = v0;
    v36[1] = DaemonPersister.loadSwiftMLSClientID(identifier:);
    v37 = *(v0 + 64);
    v38 = *(v0 + 72);
    v39 = v46;
  }

  return v39(v37, v38);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);

  if (*(v1 + 16))
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v5 = *(v0 + 64);
    v6 = v3[4];
    v7 = v3[5];
    v9 = v3[6];
    v8 = v3[7];
    outlined copy of Data._Representation(v6, v7);
    swift_bridgeObjectRetain_n();

    outlined consume of Data._Representation(v6, v7);

    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    *(v0 + 16) = 4;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF();
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    if (v4)
    {

      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      v15 = *(v0 + 56);
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v16 = v13;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
      outlined consume of Data._Representation(v11, v12);

      v18 = *(v0 + 104);
      v17 = *(v0 + 112);

      v19 = *(v0 + 8);
      goto LABEL_7;
    }

    outlined consume of Data._Representation(*(v0 + 144), *(v0 + 152));
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 144);
    v22 = *(v0 + 152);
    v23 = *(v0 + 64);

    outlined consume of Data._Representation(v21, v22);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  v26 = *(v0 + 104);
  v25 = *(v0 + 112);

  v19 = *(v0 + 8);
LABEL_7:

  return v19();
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  else
  {
    v7 = v2[23];

    v4 = v2[16];
    v5 = v2[17];
    v6 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[15];

  v3 = v0[13];
  v2 = v0[14];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[23];
  v2 = v0[15];

  v3 = v0[25];
  v5 = v0[13];
  v4 = v0[14];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[15];
  outlined consume of Data._Representation(v0[18], v0[19]);

  v2 = v0[22];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t DaemonPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  outlined consume of Data._Representation(v3[18], v3[19]);
  v7 = v3[17];
  v8 = v3[16];
  if (v1)
  {
    v9 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  else
  {
    v9 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  type metadata accessor for MLSActor();
  v6[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v8;
  v6[31] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)()
{
  v75 = v0;
  if ((*(**(v0 + 224) + 264))())
  {
    v1 = *(v0 + 216);
    v2 = *(*(v0 + 224) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 256) = v3;
    *(v0 + 264) = v4;
    v71 = v3;
    v73 = v4;
    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);

    outlined copy of Data._Representation(v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v30, v29);
    if (os_log_type_enabled(v31, v32))
    {
      v35 = *(v0 + 200);
      v34 = *(v0 + 208);
      v36 = *(v0 + 184);
      v70 = *(v0 + 192);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v74[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v74);
      *(v37 + 12) = 2080;
      v39 = Data.readableDebugDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v74);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_26524C000, v31, v32, "DaemonPersister saveSwiftMLSGroupID using persistence mode { identifier: %s, swiftMLSGroupID: %s }", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v38, -1, -1);
      MEMORY[0x2667577B0](v37, -1, -1);
    }

    if ((*(**(v0 + 224) + 192))())
    {
      v42 = *(v0 + 224);
      v43 = *(v0 + 200);
      v44 = *(v0 + 208);
      v46 = *(v0 + 184);
      v45 = *(v0 + 192);
      *(v0 + 16) = v71;
      *(v0 + 24) = v73;
      *(v0 + 32) = v43;
      *(v0 + 40) = v44;
      *(v0 + 48) = v46;
      *(v0 + 56) = v45;
      *(v0 + 64) = xmmword_2653419D0;
      v47 = *(v42 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 168) = &type metadata for SecureMessagingGroupModel;
      *(v0 + 176) = &protocol witness table for SecureMessagingGroupModel;
      v48 = swift_allocObject();
      *(v0 + 144) = v48;
      v49 = *(v0 + 32);
      v50 = *(v0 + 48);
      v48[1] = *(v0 + 16);
      v48[2] = v49;
      v51 = *(v0 + 64);
      v48[3] = v50;
      v48[4] = v51;

      outlined copy of Data._Representation(v46, v45);
      outlined copy of Data._Representation(v71, v73);
      outlined init with copy of SecureMessagingGroupModel(v0 + 16, v0 + 80);
      v52 = swift_task_alloc();
      *(v0 + 272) = v52;
      *v52 = v0;
      v52[1] = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);

      return SqliteStore.insert(_:)(v0 + 144);
    }

    else
    {
      v53 = *(v0 + 232);
      v54 = *(v0 + 208);
      v56 = *(v0 + 184);
      v55 = *(v0 + 192);

      outlined copy of Data._Representation(v56, v55);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      outlined consume of Data._Representation(v56, v55);
      if (os_log_type_enabled(v57, v58))
      {
        v60 = *(v0 + 200);
        v59 = *(v0 + 208);
        v62 = *(v0 + 184);
        v61 = *(v0 + 192);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v74[0] = v64;
        *v63 = 136315394;
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, v74);
        *(v63 + 12) = 2080;
        v65 = Data.readableDebugDescription.getter();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v74);

        *(v63 + 14) = v67;
        _os_log_impl(&dword_26524C000, v57, v58, "DaemonPersister saveSwiftMLSGroupID called outside atomically block { identifier: %s, swiftMLSGroupID: %s }", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v64, -1, -1);
        MEMORY[0x2667577B0](v63, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v68 = 6;
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v71, v73);
      v69 = *(v0 + 8);

      return v69();
    }
  }

  else
  {
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);

    outlined copy of Data._Representation(v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v7, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 200);
      v10 = *(v0 + 208);
      v13 = *(v0 + 184);
      v12 = *(v0 + 192);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v74[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v74);
      *(v14 + 12) = 2080;
      v16 = Data.readableDebugDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v74);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister saveSwiftMLSGroupID using inMemory mode { identifier: %s, swiftMLSGroupID: %s }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v15, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    *(v0 + 288) = (*(**(v0 + 224) + 168))();
    v19 = *(MEMORY[0x277D4CE78] + 4);
    v72 = (*MEMORY[0x277D4CE78] + MEMORY[0x277D4CE78]);
    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    *v20 = v0;
    v20[1] = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);

    return v72(v25, v23, v24, v21, v22);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[32], v2[33]);
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[29];

  outlined destroy of SecureMessagingGroupModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  else
  {
    v7 = v2[36];

    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[29];
  outlined destroy of SecureMessagingGroupModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v2 = v0[35];
  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)()
{
  v36 = v0;
  if ((*(*v0[5] + 264))())
  {
    v1 = v0[4];
    v2 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[9] = v3;
    v0[10] = v4;
    v18 = v4;
    v19 = v3;
    v20 = v0[5];
    v21 = v0[3];

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v26 = v0[2];
      v25 = v0[3];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v35);
      _os_log_impl(&dword_26524C000, v22, v23, "DaemonPersister loadSwiftMLSGroupID using persistence mode { identifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    v29 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v30 = v0[3];

    v31 = swift_task_alloc();
    v0[11] = v31;
    *v31 = v0;
    v31[1] = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
    v32 = v0[2];
    v33 = v0[3];

    return specialized SqliteStore.query<A>(_:)(v19, v18, v32, v33);
  }

  else
  {
    v5 = v0[3];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[2];
      v8 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v35);
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadSwiftMLSGroupID using inMemory mode { identifier: %s }", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2667577B0](v11, -1, -1);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    v0[14] = (*(*v0[5] + 168))();
    v12 = *(MEMORY[0x277D4CE28] + 4);
    v34 = (*MEMORY[0x277D4CE28] + MEMORY[0x277D4CE28]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v34(v16, v14, v15);
  }
}

{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];
  if (*(v1 + 16))
  {
    v14 = v3[5];
    v15 = v3[4];
    v8 = v3[7];
    v7 = v3[8];
    v9 = v3[9];
    v10 = v3[10];
    v11 = v3[11];
    outlined copy of Data._Representation(v15, v14);

    outlined copy of Data?(v7, v9);
    outlined copy of Data?(v10, v11);
    outlined consume of Data._Representation(v5, v4);

    outlined copy of Data?(v7, v9);
    outlined consume of Data._Representation(v15, v14);

    outlined consume of Data?(v7, v9);
    outlined consume of Data?(v10, v11);
  }

  else
  {
    outlined consume of Data._Representation(v0[9], v0[10]);

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v7, v9);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[3];

  outlined consume of Data._Representation(v1, v2);

  v5 = v0[13];
  v6 = v0[1];

  return v6();
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 64);
  v8 = *(v3 + 56);
  if (v1)
  {
    v9 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = v6[7];
    v10 = v6[8];
    v11 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  else
  {
    v12 = v6[14];

    v6[17] = a2;
    v6[18] = a1;
    v9 = v6[7];
    v10 = v6[8];
    v11 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)()
{
  v43 = v0;
  if ((*(*v0[5] + 264))())
  {
    v1 = v0[4];
    v2 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[9] = v3;
    v0[10] = v4;
    v22 = v4;
    v23 = v3;
    v24 = v0[5];
    v26 = v0[2];
    v25 = v0[3];
    outlined copy of Data._Representation(v26, v25);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v26, v25);
    if (os_log_type_enabled(v27, v28))
    {
      v31 = v0[2];
      v30 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v32 = 136315138;
      v34 = Data.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v42);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_26524C000, v27, v28, "DaemonPersister loadSecureMessagingGroupID using persistence mode { swiftMLSGroupID: %s }", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2667577B0](v33, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    v37 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    outlined copy of Data._Representation(v0[2], v0[3]);
    v38 = swift_task_alloc();
    v0[11] = v38;
    *v38 = v0;
    v38[1] = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
    v39 = v0[2];
    v40 = v0[3];

    return specialized SqliteStore.query<A>(_:)(v23, v22, v39, v40);
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    outlined copy of Data._Representation(v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[2];
      v9 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42[0] = v12;
      *v11 = 136315138;
      v13 = Data.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v42);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26524C000, v7, v8, "DaemonPersister loadSecureMessagingGroupID using inMemory mode { swiftMLSGroupID: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v0[14] = (*(*v0[5] + 168))();
    v16 = *(MEMORY[0x277D4CDD8] + 4);
    v41 = (*MEMORY[0x277D4CDD8] + MEMORY[0x277D4CDD8]);
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
    v18 = v0[3];
    v19 = v0[4];
    v20 = v0[2];

    return v41(v20, v18, v19);
  }
}

{
  v1 = v0[12];
  v2 = v0[6];

  v3 = *(v1 + 16);
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[2];
  v7 = v0[3];
  if (v3)
  {
    v18 = v4[5];
    v19 = v4[4];
    v9 = v4[7];
    v20 = v4[6];
    v11 = v4[8];
    v10 = v4[9];
    v17 = v0[3];
    v12 = v4[10];
    v13 = v4[11];
    outlined copy of Data._Representation(v19, v18);

    outlined copy of Data?(v11, v10);
    outlined copy of Data?(v12, v13);
    outlined consume of Data._Representation(v6, v5);
    outlined consume of Data._Representation(v8, v17);

    outlined consume of Data._Representation(v19, v18);

    outlined consume of Data?(v11, v10);
    outlined consume of Data?(v12, v13);
    v14 = v20;
  }

  else
  {
    outlined consume of Data._Representation(v0[9], v0[10]);
    outlined consume of Data._Representation(v8, v7);

    v14 = 0;
    v9 = 0;
  }

  v15 = v0[1];

  return v15(v14, v9);
}

{
  v1 = v0[6];

  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[1];

  return v4(v2, v3);
}

{
  v1 = v0[14];
  v2 = v0[6];

  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  outlined consume of Data._Representation(v1, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[13];
  v7 = v0[1];

  return v7();
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 64);
  v8 = *(v3 + 56);
  if (v1)
  {
    v9 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = v6[7];
    v10 = v6[8];
    v11 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  else
  {
    v12 = v6[14];

    v6[17] = a2;
    v6[18] = a1;
    v9 = v6[7];
    v10 = v6[8];
    v11 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  type metadata accessor for MLSActor();
  v6[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v8;
  v6[31] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)()
{
  v75 = v0;
  if ((*(**(v0 + 224) + 264))())
  {
    v1 = *(v0 + 216);
    v2 = *(*(v0 + 224) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 256) = v3;
    *(v0 + 264) = v4;
    v71 = v3;
    v73 = v4;
    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);

    outlined copy of Data._Representation(v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v30, v29);
    if (os_log_type_enabled(v31, v32))
    {
      v35 = *(v0 + 200);
      v34 = *(v0 + 208);
      v36 = *(v0 + 184);
      v70 = *(v0 + 192);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v74[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v74);
      *(v37 + 12) = 2080;
      v39 = Data.readableDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v74);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_26524C000, v31, v32, "DaemonPersister saveGroupClientContextBlob using persistence mode { identifier: %s, groupClientContextBlob: %s }", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v38, -1, -1);
      MEMORY[0x2667577B0](v37, -1, -1);
    }

    if ((*(**(v0 + 224) + 192))())
    {
      v42 = *(v0 + 224);
      v43 = *(v0 + 200);
      v44 = *(v0 + 208);
      v46 = *(v0 + 184);
      v45 = *(v0 + 192);
      *(v0 + 16) = v71;
      *(v0 + 24) = v73;
      *(v0 + 32) = v43;
      *(v0 + 40) = v44;
      *(v0 + 48) = xmmword_2653419D0;
      *(v0 + 64) = v46;
      *(v0 + 72) = v45;
      v47 = *(v42 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 168) = &type metadata for SecureMessagingGroupModel;
      *(v0 + 176) = &protocol witness table for SecureMessagingGroupModel;
      v48 = swift_allocObject();
      *(v0 + 144) = v48;
      v49 = *(v0 + 32);
      v50 = *(v0 + 48);
      v48[1] = *(v0 + 16);
      v48[2] = v49;
      v51 = *(v0 + 64);
      v48[3] = v50;
      v48[4] = v51;

      outlined copy of Data._Representation(v46, v45);
      outlined copy of Data._Representation(v71, v73);
      outlined init with copy of SecureMessagingGroupModel(v0 + 16, v0 + 80);
      v52 = swift_task_alloc();
      *(v0 + 272) = v52;
      *v52 = v0;
      v52[1] = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);

      return SqliteStore.update(_:)(v0 + 144);
    }

    else
    {
      v53 = *(v0 + 232);
      v54 = *(v0 + 208);
      v56 = *(v0 + 184);
      v55 = *(v0 + 192);

      outlined copy of Data._Representation(v56, v55);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      outlined consume of Data._Representation(v56, v55);
      if (os_log_type_enabled(v57, v58))
      {
        v60 = *(v0 + 200);
        v59 = *(v0 + 208);
        v62 = *(v0 + 184);
        v61 = *(v0 + 192);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v74[0] = v64;
        *v63 = 136315394;
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, v74);
        *(v63 + 12) = 2080;
        v65 = Data.readableDescription.getter();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v74);

        *(v63 + 14) = v67;
        _os_log_impl(&dword_26524C000, v57, v58, "DaemonPersister saveGroupClientContextBlob called outside atomically block { identifier: %s, groupClientContextBlob: %s }", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v64, -1, -1);
        MEMORY[0x2667577B0](v63, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v68 = 6;
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v71, v73);
      v69 = *(v0 + 8);

      return v69();
    }
  }

  else
  {
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);

    outlined copy of Data._Representation(v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v7, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 200);
      v10 = *(v0 + 208);
      v13 = *(v0 + 184);
      v12 = *(v0 + 192);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v74[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v74);
      *(v14 + 12) = 2080;
      v16 = Data.readableDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v74);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister saveGroupClientContextBlob using inMemory mode { identifier: %s, groupClientContextBlob: %s }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v15, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    *(v0 + 288) = (*(**(v0 + 224) + 168))();
    v19 = *(MEMORY[0x277D4CE90] + 4);
    v72 = (*MEMORY[0x277D4CE90] + MEMORY[0x277D4CE90]);
    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    *v20 = v0;
    v20[1] = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);

    return v72(v25, v23, v24, v21, v22);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[32], v2[33]);
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)()
{
  v36 = v0;
  if ((*(*v0[5] + 264))())
  {
    v1 = v0[4];
    v2 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[9] = v3;
    v0[10] = v4;
    v18 = v4;
    v19 = v3;
    v20 = v0[5];
    v21 = v0[3];

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v26 = v0[2];
      v25 = v0[3];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v35);
      _os_log_impl(&dword_26524C000, v22, v23, "DaemonPersister loadGroupClientContextBlob using persistence mode { identifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    v29 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v30 = v0[3];

    v31 = swift_task_alloc();
    v0[11] = v31;
    *v31 = v0;
    v31[1] = DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:);
    v32 = v0[2];
    v33 = v0[3];

    return specialized SqliteStore.query<A>(_:)(v19, v18, v32, v33);
  }

  else
  {
    v5 = v0[3];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[2];
      v8 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v35);
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadGroupClientContextBlob using inMemory mode { identifier: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2667577B0](v11, -1, -1);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    v0[14] = (*(*v0[5] + 168))();
    v12 = *(MEMORY[0x277D4CE48] + 4);
    v34 = (*MEMORY[0x277D4CE48] + MEMORY[0x277D4CE48]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v34(v16, v14, v15);
  }
}

{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];
  if (*(v1 + 16))
  {
    v14 = v3[5];
    v15 = v3[4];
    v7 = v3[7];
    v8 = v3[8];
    v10 = v3[9];
    v9 = v3[10];
    v11 = v3[11];
    outlined copy of Data._Representation(v15, v14);

    outlined copy of Data?(v8, v10);
    outlined copy of Data?(v9, v11);
    outlined consume of Data._Representation(v5, v4);

    outlined copy of Data?(v9, v11);
    outlined consume of Data._Representation(v15, v14);

    outlined consume of Data?(v8, v10);
    outlined consume of Data?(v9, v11);
  }

  else
  {
    outlined consume of Data._Representation(v0[9], v0[10]);

    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v9, v11);
}

uint64_t DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 64);
  v8 = *(v3 + 56);
  if (v1)
  {
    v9 = DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 376) = a4;
  *(v5 + 384) = v4;
  *(v5 + 85) = a3;
  *(v5 + 360) = a1;
  *(v5 + 368) = a2;
  v6 = type metadata accessor for MLS.PersistedMember();
  *(v5 + 392) = v6;
  v7 = *(v6 - 8);
  *(v5 + 400) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  type metadata accessor for MLSActor();
  *(v5 + 416) = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 424) = v10;
  *(v5 + 432) = v9;

  return MEMORY[0x2822009F8](DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:), v10, v9);
}

uint64_t DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)()
{
  v41 = v0;
  if ((*(**(v0 + 384) + 264))())
  {
    v1 = *(v0 + 376);
    v2 = *(*(v0 + 384) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 440) = v3;
    *(v0 + 448) = v4;
    v20 = v3;
    v21 = v4;
    v22 = *(v0 + 384);
    v23 = *(v0 + 368);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 85);
      v29 = *(v0 + 360);
      v28 = *(v0 + 368);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v40);
      *(v30 + 12) = 1024;
      *(v30 + 14) = v27;
      _os_log_impl(&dword_26524C000, v24, v25, "DaemonPersister loadGroupMembers using persistence mode. { identifier: %s, includePendingMembers: %{BOOL}d }", v30, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2667577B0](v31, -1, -1);
      MEMORY[0x2667577B0](v30, -1, -1);
    }

    v32 = *(v0 + 85);
    v33 = *(v0 + 368);
    v34 = *(*(v0 + 384) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    outlined copy of Data._Representation(v20, v21);
    if (v32 == 1)
    {
      v39 = specialized SqliteStore.query<A>(_:);
      v35 = swift_task_alloc();
      *(v0 + 456) = v35;
      *v35 = v0;
      v36 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
    }

    else
    {
      v39 = specialized SqliteStore.query<A>(_:);
      v35 = swift_task_alloc();
      *(v0 + 472) = v35;
      *v35 = v0;
      v36 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
    }

    v35[1] = v36;
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = v20;
    v15 = v21;
    v19 = v39;
  }

  else
  {
    v5 = *(v0 + 368);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 85);
      v10 = *(v0 + 360);
      v9 = *(v0 + 368);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v40);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v8;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadGroupMembers using inMemory mode { identifier: %s, includePendingMembers: %{BOOL}d }", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    *(v0 + 488) = (*(**(v0 + 384) + 168))();
    v13 = *(MEMORY[0x277D4CE18] + 4);
    v38 = (*MEMORY[0x277D4CE18] + MEMORY[0x277D4CE18]);
    v14 = swift_task_alloc();
    *(v0 + 496) = v14;
    *v14 = v0;
    v14[1] = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
    v15 = *(v0 + 368);
    v16 = *(v0 + 376);
    v17 = *(v0 + 85);
    v18 = *(v0 + 360);
    v19 = v38;
  }

  return v19(v18, v15, v17, v16);
}

{
  v57 = v0;
  v4 = *(v0 + 464);
  v5 = *(v0 + 312);
  v6 = *(v0 + 416);

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v0 + 400);
    v52 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = *(v5 + 16);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v52;
    v11 = *(v0 + 408);
    *(v0 + 16) = *(v5 + 32);
    v13 = *(v5 + 64);
    v12 = *(v5 + 80);
    v14 = *(v5 + 48);
    *(v0 + 77) = *(v5 + 93);
    *(v0 + 48) = v13;
    *(v0 + 64) = v12;
    *(v0 + 32) = v14;
    v15 = *(v5 + 80);
    v55 = *(v5 + 64);
    v56[0] = v15;
    *(v56 + 13) = *(v5 + 93);
    v16 = *(v5 + 48);
    v53 = *(v5 + 32);
    v54 = v16;
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
    closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v53, (v0 + 352), v11);
    if (v4)
    {
      v18 = *(v0 + 440);
      v17 = *(v0 + 448);
      v19 = v56[0];
      *(v0 + 192) = v55;
      *(v0 + 208) = v19;
      *(v0 + 221) = *(v56 + 13);
      v20 = v54;
      *(v0 + 160) = v53;
      *(v0 + 176) = v20;
      outlined destroy of GroupMemberModel(v0 + 160);

      outlined consume of Data._Representation(v18, v17);

      v21 = *(v0 + 352);
      v22 = *(v0 + 408);

      v23 = *(v0 + 8);

      return v23();
    }

    v1 = v0 + 232;
    v2 = (v8 + 2);
    v27 = v56[0];
    *(v0 + 264) = v55;
    *(v0 + 280) = v27;
    *(v0 + 293) = *(v56 + 13);
    v28 = v54;
    *(v0 + 232) = v53;
    *(v0 + 248) = v28;
    outlined destroy of GroupMemberModel(v0 + 232);
    v3 = *(v52 + 16);
    v9 = *(v52 + 24);
    v4 = v3 + 1;
    if (v3 >= v9 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v29 = *(v0 + 408);
      v30 = *(v0 + 392);
      *(v10 + 16) = v4;
      v51 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v49 = *(v8 + 4);
      v50 = *(v8 + 9);
      v49(v10 + v51 + v50 * v3, v29, v30);
      if (v7 == 1)
      {
        break;
      }

      v9 = *(v5 + 16);
      if (v9 >= 2)
      {
        v8 = (v5 + 104);
        v48 = 2 - v7;
        v7 = 1;
        do
        {
          v35 = *(v0 + 408);
          *(v0 + 16) = *v8;
          v37 = v8[2];
          v36 = v8[3];
          v38 = v8[1];
          *(v0 + 77) = *(v8 + 61);
          *(v0 + 48) = v37;
          *(v0 + 64) = v36;
          *(v0 + 32) = v38;
          v39 = v8[3];
          v55 = v8[2];
          v56[0] = v39;
          *(v56 + 13) = *(v8 + 61);
          v40 = v8[1];
          v53 = *v8;
          v54 = v40;
          outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
          closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v53, (v0 + 352), v35);
          v3 = v2;
          v41 = v56[0];
          *(v1 + 32) = v55;
          *(v1 + 48) = v41;
          *(v1 + 61) = *(v56 + 13);
          v42 = v54;
          *v1 = v53;
          *(v1 + 16) = v42;
          outlined destroy of GroupMemberModel(v1);
          v52 = v10;
          v44 = *(v10 + 16);
          v43 = *(v10 + 24);
          v4 = v44 + 1;
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
          }

          v45 = *(v0 + 408);
          v46 = *(v0 + 392);
          *(v10 + 16) = v4;
          v47 = v10 + v51 + v50 * v44;
          v2 = v3;
          v49(v47, v45, v46);
          if (v48 + v7 == 1)
          {
            goto LABEL_10;
          }

          v9 = *(v5 + 16);
          v8 = (v8 + 72);
        }

        while (++v7 < v9);
      }

LABEL_20:
      __break(1u);
LABEL_21:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v4, 1);
      v10 = v52;
    }

LABEL_10:
    v32 = *(v0 + 440);
    v31 = *(v0 + 448);

    outlined consume of Data._Representation(v32, v31);
  }

  else
  {
    v26 = *(v0 + 440);
    v25 = *(v0 + 448);

    outlined consume of Data._Representation(v26, v25);
    v10 = MEMORY[0x277D84F90];
  }

  v33 = *(v0 + 408);

  v34 = *(v0 + 8);

  return v34(v10);
}

{
  v57 = v0;
  v4 = *(v0 + 480);
  v5 = *(v0 + 336);
  v6 = *(v0 + 416);

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v0 + 400);
    v52 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = *(v5 + 16);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v52;
    v11 = *(v0 + 408);
    *(v0 + 16) = *(v5 + 32);
    v13 = *(v5 + 64);
    v12 = *(v5 + 80);
    v14 = *(v5 + 48);
    *(v0 + 77) = *(v5 + 93);
    *(v0 + 48) = v13;
    *(v0 + 64) = v12;
    *(v0 + 32) = v14;
    v15 = *(v5 + 80);
    v55 = *(v5 + 64);
    v56[0] = v15;
    *(v56 + 13) = *(v5 + 93);
    v16 = *(v5 + 48);
    v53 = *(v5 + 32);
    v54 = v16;
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
    closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v53, (v0 + 352), v11);
    if (v4)
    {
      v18 = *(v0 + 440);
      v17 = *(v0 + 448);
      v19 = v56[0];
      *(v0 + 192) = v55;
      *(v0 + 208) = v19;
      *(v0 + 221) = *(v56 + 13);
      v20 = v54;
      *(v0 + 160) = v53;
      *(v0 + 176) = v20;
      outlined destroy of GroupMemberModel(v0 + 160);

      outlined consume of Data._Representation(v18, v17);

      v21 = *(v0 + 352);
      v22 = *(v0 + 408);

      v23 = *(v0 + 8);

      return v23();
    }

    v1 = v0 + 232;
    v2 = (v8 + 2);
    v27 = v56[0];
    *(v0 + 264) = v55;
    *(v0 + 280) = v27;
    *(v0 + 293) = *(v56 + 13);
    v28 = v54;
    *(v0 + 232) = v53;
    *(v0 + 248) = v28;
    outlined destroy of GroupMemberModel(v0 + 232);
    v3 = *(v52 + 16);
    v9 = *(v52 + 24);
    v4 = v3 + 1;
    if (v3 >= v9 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v29 = *(v0 + 408);
      v30 = *(v0 + 392);
      *(v10 + 16) = v4;
      v51 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v49 = *(v8 + 4);
      v50 = *(v8 + 9);
      v49(v10 + v51 + v50 * v3, v29, v30);
      if (v7 == 1)
      {
        break;
      }

      v9 = *(v5 + 16);
      if (v9 >= 2)
      {
        v8 = (v5 + 104);
        v48 = 2 - v7;
        v7 = 1;
        do
        {
          v35 = *(v0 + 408);
          *(v0 + 16) = *v8;
          v37 = v8[2];
          v36 = v8[3];
          v38 = v8[1];
          *(v0 + 77) = *(v8 + 61);
          *(v0 + 48) = v37;
          *(v0 + 64) = v36;
          *(v0 + 32) = v38;
          v39 = v8[3];
          v55 = v8[2];
          v56[0] = v39;
          *(v56 + 13) = *(v8 + 61);
          v40 = v8[1];
          v53 = *v8;
          v54 = v40;
          outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
          closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v53, (v0 + 352), v35);
          v3 = v2;
          v41 = v56[0];
          *(v1 + 32) = v55;
          *(v1 + 48) = v41;
          *(v1 + 61) = *(v56 + 13);
          v42 = v54;
          *v1 = v53;
          *(v1 + 16) = v42;
          outlined destroy of GroupMemberModel(v1);
          v52 = v10;
          v44 = *(v10 + 16);
          v43 = *(v10 + 24);
          v4 = v44 + 1;
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
          }

          v45 = *(v0 + 408);
          v46 = *(v0 + 392);
          *(v10 + 16) = v4;
          v47 = v10 + v51 + v50 * v44;
          v2 = v3;
          v49(v47, v45, v46);
          if (v48 + v7 == 1)
          {
            goto LABEL_10;
          }

          v9 = *(v5 + 16);
          v8 = (v8 + 72);
        }

        while (++v7 < v9);
      }

LABEL_20:
      __break(1u);
LABEL_21:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v4, 1);
      v10 = v52;
    }

LABEL_10:
    v32 = *(v0 + 440);
    v31 = *(v0 + 448);

    outlined consume of Data._Representation(v32, v31);
  }

  else
  {
    v26 = *(v0 + 440);
    v25 = *(v0 + 448);

    outlined consume of Data._Representation(v26, v25);
    v10 = MEMORY[0x277D84F90];
  }

  v33 = *(v0 + 408);

  v34 = *(v0 + 8);

  return v34(v10);
}

{
  v1 = v0[52];

  v2 = v0[64];
  v3 = v0[51];

  v4 = v0[1];

  return v4(v2);
}

{
  v1 = v0[61];
  v2 = v0[52];

  v3 = v0[63];
  v4 = v0[51];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[52];
  outlined consume of Data._Representation(v0[55], v0[56]);

  v2 = v0[58];
  v3 = v0[51];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[52];
  outlined consume of Data._Representation(v0[55], v0[56]);

  v2 = v0[60];
  v3 = v0[51];

  v4 = v0[1];

  return v4();
}

uint64_t DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[57];
  v6 = *v2;
  v4[58] = v1;

  v7 = v3[46];
  outlined consume of Data._Representation(v3[55], v3[56]);

  v8 = v3[54];
  v9 = v3[53];
  if (v1)
  {
    v10 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  else
  {
    v10 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = v1;
  v5 = v3[59];
  v6 = *v2;
  v4[60] = v1;

  v7 = v3[46];
  outlined consume of Data._Representation(v3[55], v3[56]);

  v8 = v3[54];
  v9 = v3[53];
  if (v1)
  {
    v10 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  else
  {
    v10 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = v4[53];
    v8 = v4[54];
    v9 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  else
  {
    v10 = v4[61];

    v4[64] = a1;
    v7 = v4[53];
    v8 = v4[54];
    v9 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMd, &_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for MLS.PersistedMember.MemberState();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = type metadata accessor for MLS.AllMember();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v23 = &v39 - v22;
  v24 = *(a1 + 56);
  if (v24 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v25 = swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    result = swift_willThrow();
  }

  else
  {
    v40 = v8;
    v43 = v21;
    v44 = &v39;
    v28 = *(a1 + 48);
    v29 = *(a1 + 68);
    v41 = *(a1 + 64);
    v42 = v29;
    MEMORY[0x28223BE20](v20);
    v51 = 4;
    v52 = 0;
    v53 = 0;
    outlined copy of Data._Representation(v28, v24);
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v30 = v47;
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF();
    if (v30)
    {
      v31 = v48;
      v32 = v49;
      v33 = v50;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      v25 = swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v32;
      *(v34 + 16) = v33;
      result = outlined consume of Data?(v28, v24);
    }

    else
    {
      v47 = v28;
      if ((v42 & 1) == 0)
      {
        v44 = 0;
        MLS.PersistedMember.MemberState.init(rawValue:)();
        v35 = v46;
        v36 = v40;
        if ((*(v46 + 48))(v7, 1, v40) != 1)
        {
          (*(v35 + 32))(v14, v7, v36);
          v38 = v43;
          (*(v43 + 16))(v19, v23, v15);
          (*(v35 + 16))(v12, v14, v36);
          MLS.PersistedMember.init(member:state:)();
          outlined consume of Data?(v47, v24);
          (*(v35 + 8))(v14, v36);
          return (*(v38 + 8))(v23, v15);
        }

        outlined destroy of MLS.KeyPackageProvider?(v7, &_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMd, &_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMR);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      v25 = swift_allocError();
      *v37 = 4;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      swift_willThrow();
      outlined consume of Data?(v47, v24);
      result = (*(v43 + 8))(v23, v15);
    }
  }

  *v54 = v25;
  return result;
}

uint64_t DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[85] = v5;
  v6[84] = a5;
  v6[83] = a4;
  v6[82] = a3;
  v6[81] = a2;
  v6[80] = a1;
  v7 = type metadata accessor for MLS.PersistedMember.MemberState();
  v6[86] = v7;
  v8 = *(v7 - 8);
  v6[87] = v8;
  v9 = *(v8 + 64) + 15;
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v10 = type metadata accessor for URI();
  v6[90] = v10;
  v11 = *(v10 - 8);
  v6[91] = v11;
  v12 = *(v11 + 64) + 15;
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v13 = type metadata accessor for MLS.AllMember();
  v6[94] = v13;
  v14 = *(v13 - 8);
  v6[95] = v14;
  v15 = *(v14 + 64) + 15;
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v16 = type metadata accessor for MLS.PersistedMember();
  v6[100] = v16;
  v17 = *(v16 - 8);
  v6[101] = v17;
  v18 = *(v17 + 64) + 15;
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v6[104] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[105] = v20;
  v6[106] = v19;

  return MEMORY[0x2822009F8](DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:), v20, v19);
}

uint64_t DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)()
{
  v244 = v0;
  v1 = v0;
  if (((*(**(v0 + 680) + 264))() & 1) == 0)
  {
    v6 = *(v0 + 664);
    v7 = *(v1 + 656);
    v8 = *(v1 + 648);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v1 + 800);
      v236 = *(v1 + 664);
      v12 = *(v1 + 656);
      v13 = *(v1 + 648);
      v14 = v1;
      v15 = *(v1 + 640);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v243[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v13, v243);
      *(v16 + 12) = 2080;
      v18 = MEMORY[0x266756AF0](v12, v11);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v243);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      v1 = v14;
      v21 = MEMORY[0x266756AF0](v236, v11);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v243);

      *(v16 + 24) = v23;
      _os_log_impl(&dword_26524C000, v9, v10, "DaemonPersister saveGroupMembers using inMemory mode { identifier: %s, membersToAdd: %s, membersToDelete: %s }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    *(v1 + 984) = (*(**(v1 + 680) + 168))();
    v24 = *(MEMORY[0x277D4CE20] + 4);
    v237 = (*MEMORY[0x277D4CE20] + MEMORY[0x277D4CE20]);
    v25 = swift_task_alloc();
    *(v1 + 992) = v25;
    *v25 = v1;
    v25[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v26 = *(v1 + 672);
    v27 = *(v1 + 664);
    v28 = *(v1 + 656);
    v29 = *(v1 + 648);
    v30 = *(v1 + 640);

    return v237(v30, v29, v28, v27, v26);
  }

  v2 = *(v0 + 672);
  v3 = *(*(v0 + 680) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
  type metadata accessor for MLS.UniqueClientIdentifier();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 856) = v4;
  *(v0 + 864) = v5;
  v32 = v4;
  v33 = v5;
  v34 = *(v0 + 680);
  v35 = *(v0 + 664);
  v36 = *(v0 + 656);
  v37 = *(v0 + 648);
  *(v0 + 872) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v235 = v33;
  v234 = v32;
  if (v40)
  {
    v41 = *(v0 + 800);
    v238 = *(v0 + 664);
    v42 = *(v0 + 656);
    v43 = *(v0 + 648);
    v44 = *(v0 + 640);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v243[0] = v46;
    *v45 = 136315650;
    v47 = v43;
    v1 = v0;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, v243);
    *(v45 + 12) = 2080;
    v48 = MEMORY[0x266756AF0](v42, v41);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v243);

    *(v45 + 14) = v50;
    v32 = v234;
    *(v45 + 22) = 2080;
    v51 = MEMORY[0x266756AF0](v238, v41);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v243);

    *(v45 + 24) = v53;
    v33 = v235;
    _os_log_impl(&dword_26524C000, v38, v39, "DaemonPersister saveGroupMembers using persistence mode. { identifier: %s, membersToAdd: %s, membersToDelete: %s }", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v46, -1, -1);
    MEMORY[0x2667577B0](v45, -1, -1);
  }

  if (((*(**(v1 + 680) + 192))() & 1) == 0)
  {
    v88 = *(v1 + 832);
    v89 = *(v1 + 664);
    v90 = *(v1 + 656);
    v91 = *(v1 + 648);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = *(v1 + 800);
      v95 = *(v1 + 664);
      v96 = *(v1 + 656);
      v97 = *(v1 + 648);
      v98 = *(v1 + 640);
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v243[0] = v100;
      *v99 = 136315650;
      *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v97, v243);
      *(v99 + 12) = 2080;
      v101 = MEMORY[0x266756AF0](v96, v94);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v243);

      *(v99 + 14) = v103;
      v33 = v235;
      *(v99 + 22) = 2080;
      v32 = v234;
      v104 = MEMORY[0x266756AF0](v95, v94);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v243);

      *(v99 + 24) = v106;
      _os_log_impl(&dword_26524C000, v92, v93, "DaemonPersister saveGroupMembers called outside atomically block { identifier: %s, membersToAdd: %s, membersToDelete: %s }", v99, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v100, -1, -1);
      MEMORY[0x2667577B0](v99, -1, -1);
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v107 = 6;
    *(v107 + 8) = 0;
    *(v107 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v32, v33);
    v108 = *(v1 + 824);
    v109 = *(v1 + 816);
    v110 = *(v1 + 792);
    v111 = *(v1 + 784);
    v112 = *(v1 + 776);
    v113 = *(v1 + 768);
    v114 = *(v1 + 744);
    v115 = *(v1 + 736);
    v240 = *(v1 + 712);
    v116 = v1;
    v117 = *(v1 + 704);

    v118 = *(v116 + 8);
    goto LABEL_20;
  }

  v54 = *(v1 + 656);
  v55 = *(v54 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v57 = *(v1 + 808);
    v58 = *(v1 + 760);
    v59 = *(v1 + 728);
    v60 = *(v1 + 696);
    v243[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v56 = v243[0];
    v61 = *(v57 + 16);
    v57 += 16;
    v62 = v54 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
    v63 = (v58 + 8);
    v218 = (v59 + 8);
    v220 = v61;
    v222 = (v57 - 8);
    v212 = *(v57 + 56);
    v214 = (v60 + 8);
    v216 = (v58 + 8);
    do
    {
      v230 = v55;
      v239 = v56;
      v64 = *(v1 + 800);
      v65 = *(v1 + 792);
      v66 = *(v1 + 784);
      v67 = *(v1 + 752);
      v68 = *(v1 + 744);
      v69 = *(v1 + 720);
      v228 = v62;
      v220(*(v1 + 824));
      MLS.PersistedMember.member.getter();
      MLS.AllMember.uri.getter();
      v70 = *v63;
      v71 = (*v63)(v65, v67);
      v72 = MEMORY[0x266756630](v71);
      v232 = v73;
      (*v218)(v68, v69);
      MLS.PersistedMember.member.getter();
      v74 = MLS.AllMember.dataRepresentation.getter();
      v76 = v75;
      v224 = v74;
      v226 = v72;
      v77 = *(v1 + 824);
      v78 = *(v1 + 800);
      v79 = *(v1 + 712);
      v80 = *(v1 + 688);
      v81 = *(v1 + 648);
      v70(*(v1 + 784), *(v1 + 752));
      MLS.PersistedMember.state.getter();
      v82 = MLS.PersistedMember.MemberState.rawValue.getter();
      (*v214)(v79, v80);
      (*v222)(v77, v78);

      outlined copy of Data._Representation(v234, v235);
      v56 = v239;
      v243[0] = v239;
      v84 = *(v239 + 16);
      v83 = *(v239 + 24);
      if (v84 >= v83 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        v56 = v243[0];
      }

      v85 = *(v1 + 648);
      v86 = *(v1 + 640);
      *(v56 + 16) = v84 + 1;
      v87 = v56 + 72 * v84;
      *(v87 + 32) = v234;
      *(v87 + 40) = v235;
      *(v87 + 48) = v86;
      *(v87 + 56) = v85;
      *(v87 + 64) = v226;
      *(v87 + 72) = v232;
      *(v87 + 80) = v224;
      *(v87 + 88) = v76;
      *(v87 + 96) = v82;
      *(v87 + 100) = 0;
      v62 = v228 + v212;
      v55 = v230 - 1;
      v63 = v216;
    }

    while (v230 != 1);
  }

  *(v1 + 880) = v56;
  v119 = *(v1 + 664);
  v120 = *(v119 + 16);
  v121 = MEMORY[0x277D84F90];
  if (v120)
  {
    v241 = v56;
    v122 = *(v1 + 808);
    v123 = *(v1 + 760);
    v124 = *(v1 + 728);
    v125 = *(v1 + 696);
    v243[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 0);
    v121 = v243[0];
    v126 = *(v122 + 16);
    v122 += 16;
    v127 = v119 + ((*(v122 + 64) + 32) & ~*(v122 + 64));
    v128 = (v123 + 8);
    v217 = (v124 + 8);
    v219 = v126;
    v221 = (v122 - 8);
    v213 = *(v122 + 56);
    v215 = (v125 + 8);
    do
    {
      v227 = v127;
      v229 = v120;
      v233 = v121;
      v129 = *(v1 + 800);
      v130 = *(v1 + 776);
      v131 = *(v1 + 768);
      v132 = *(v1 + 752);
      v133 = *(v1 + 736);
      v134 = *(v1 + 720);
      v219(*(v1 + 816));
      MLS.PersistedMember.member.getter();
      MLS.AllMember.uri.getter();
      v135 = v128;
      v136 = *v128;
      v137 = v136(v130, v132);
      v138 = MEMORY[0x266756630](v137);
      v231 = v139;
      (*v217)(v133, v134);
      MLS.PersistedMember.member.getter();
      v140 = MLS.AllMember.dataRepresentation.getter();
      v142 = v141;
      v223 = v140;
      v225 = v138;
      v143 = *(v1 + 816);
      v144 = *(v1 + 800);
      v145 = *(v1 + 712);
      v146 = *(v1 + 688);
      v147 = *(v1 + 648);
      v136(*(v1 + 768), *(v1 + 752));
      MLS.PersistedMember.state.getter();
      v148 = MLS.PersistedMember.MemberState.rawValue.getter();
      (*v215)(v145, v146);
      (*v221)(v143, v144);

      outlined copy of Data._Representation(v234, v235);
      v121 = v233;
      v243[0] = v233;
      v150 = *(v233 + 16);
      v149 = *(v233 + 24);
      v128 = v135;
      if (v150 >= v149 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1);
        v121 = v243[0];
      }

      v151 = *(v1 + 648);
      v152 = *(v1 + 640);
      *(v121 + 16) = v150 + 1;
      v153 = v121 + 72 * v150;
      *(v153 + 32) = v234;
      *(v153 + 40) = v235;
      *(v153 + 48) = v152;
      *(v153 + 56) = v151;
      *(v153 + 64) = v225;
      *(v153 + 72) = v231;
      *(v153 + 80) = v223;
      *(v153 + 88) = v142;
      *(v153 + 96) = v148;
      *(v153 + 100) = 0;
      v127 = v227 + v213;
      v120 = v229 - 1;
    }

    while (v229 != 1);
    v56 = v241;
  }

  *(v1 + 888) = v121;
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    *v156 = 0;
    _os_log_impl(&dword_26524C000, v154, v155, "DaemonPersister saveGroupMembers inserting members", v156, 2u);
    MEMORY[0x2667577B0](v156, -1, -1);
  }

  v157 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store;
  *(v1 + 896) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store;
  if (*(v56 + 16))
  {
    *(v1 + 904) = 0;
    v158 = *(v1 + 880);
    v159 = *(v1 + 680);
    *(v1 + 16) = *(v158 + 32);
    v161 = *(v158 + 64);
    v160 = *(v158 + 80);
    v162 = *(v158 + 48);
    *(v1 + 77) = *(v158 + 93);
    *(v1 + 48) = v161;
    *(v1 + 64) = v160;
    *(v1 + 32) = v162;
    v163 = *(v159 + v157);
    *(v1 + 544) = &type metadata for GroupMemberModel;
    *(v1 + 552) = &protocol witness table for GroupMemberModel;
    v164 = swift_allocObject();
    *(v1 + 520) = v164;
    memmove((v164 + 16), (v158 + 32), 0x45uLL);
    outlined init with copy of GroupMemberModel(v1 + 16, v1 + 88);
    outlined init with copy of GroupMemberModel(v1 + 16, v1 + 160);
    v165 = swift_task_alloc();
    *(v1 + 912) = v165;
    *v165 = v1;
    v165[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v166 = v1 + 520;
LABEL_33:

    return SqliteStore.insert(_:)(v166);
  }

  v167 = *(v1 + 880);
  v168 = *(v1 + 872);
  v169 = *(v1 + 680);

  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    *v172 = 0;
    _os_log_impl(&dword_26524C000, v170, v171, "DaemonPersister saveGroupMembers deleting members", v172, 2u);
    MEMORY[0x2667577B0](v172, -1, -1);
  }

  v173 = *(v1 + 888);

  v174 = *(v173 + 16);
  *(v1 + 928) = v174;
  v175 = *(v1 + 888);
  if (!v174)
  {
    v195 = *(v1 + 864);
    v196 = *(v1 + 856);
    v197 = *(v1 + 832);

    outlined consume of Data._Representation(v196, v195);
    v198 = *(v1 + 824);
    v199 = *(v1 + 816);
    v200 = *(v1 + 792);
    v201 = *(v1 + 784);
    v202 = *(v1 + 776);
    v203 = *(v1 + 768);
    v204 = *(v1 + 744);
    v205 = *(v1 + 736);
    v206 = *(v1 + 712);
    v207 = *(v1 + 704);

    v118 = *(v1 + 8);
LABEL_20:

    return v118();
  }

  v176 = v1 + 232;
  v177 = *(v1 + 696);
  *(v1 + 1008) = *MEMORY[0x277D4CD28];
  v178 = *(v177 + 104);
  *(v1 + 936) = v178;
  *(v1 + 944) = 0;
  v242 = *(v1 + 896);
  v179 = *(v1 + 704);
  v180 = *(v1 + 688);
  v181 = *(v1 + 680);
  *(v1 + 232) = *(v175 + 32);
  v183 = *(v175 + 64);
  v182 = *(v175 + 80);
  v184 = *(v175 + 48);
  *(v1 + 293) = *(v175 + 93);
  *(v1 + 264) = v183;
  *(v1 + 280) = v182;
  *(v1 + 248) = v184;
  v185 = v1;
  v186 = *(v1 + 300);
  v187 = *(v185 + 296);
  v178(v179);
  v188 = v185;
  outlined init with copy of GroupMemberModel(v176, v185 + 304);
  v189 = MLS.PersistedMember.MemberState.rawValue.getter();
  (*(v177 + 8))(v179, v180);
  v190 = *(v181 + v242);
  if ((v186 & 1) == 0 && v187 == v189)
  {
    v188[78] = &type metadata for GroupMemberModel;
    v188[79] = &protocol witness table for GroupMemberModel;
    v191 = swift_allocObject();
    v188[75] = v191;
    v192 = *(v176 + 48);
    *(v191 + 48) = *(v176 + 32);
    *(v191 + 64) = v192;
    *(v191 + 77) = *(v176 + 61);
    v193 = *(v176 + 16);
    *(v191 + 16) = *v176;
    *(v191 + 32) = v193;
    outlined init with copy of GroupMemberModel(v176, (v188 + 56));
    v194 = swift_task_alloc();
    v188[119] = v194;
    *v194 = v188;
    v194[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v166 = (v188 + 75);
    goto LABEL_33;
  }

  v188[73] = &type metadata for GroupMemberModel;
  v188[74] = &protocol witness table for GroupMemberModel;
  v208 = swift_allocObject();
  v188[70] = v208;
  v209 = *(v176 + 48);
  *(v208 + 48) = *(v176 + 32);
  *(v208 + 64) = v209;
  *(v208 + 77) = *(v176 + 61);
  v210 = *(v176 + 16);
  *(v208 + 16) = *v176;
  *(v208 + 32) = v210;
  outlined init with copy of GroupMemberModel(v176, (v188 + 47));
  v211 = swift_task_alloc();
  v188[121] = v211;
  *v211 = v188;
  v211[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

  return SqliteStore.delete(_:)((v188 + 70));
}

{
  v2 = *v1;
  v3 = (*v1)[114];
  v10 = *v1;
  (*v1)[115] = v0;

  if (v0)
  {
    v4 = v2[111];
    v5 = v2[110];

    v6 = v2[106];
    v7 = v2[105];
    v8 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 65);
    v6 = v2[106];
    v7 = v2[105];
    v8 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 904) + 1;
  result = outlined destroy of GroupMemberModel(v0 + 16);
  v4 = *(v1 + 16);
  if (v2 != v4)
  {
    v32 = *(v0 + 904) + 1;
    *(v0 + 904) = v32;
    if (v32 >= v4)
    {
      __break(1u);
      return result;
    }

    v33 = *(v0 + 896);
    v34 = *(v0 + 680);
    v35 = *(v0 + 880) + 72 * v32;
    *(v0 + 16) = *(v35 + 32);
    v37 = *(v35 + 64);
    v36 = *(v35 + 80);
    v38 = *(v35 + 48);
    *(v0 + 77) = *(v35 + 93);
    *(v0 + 48) = v37;
    *(v0 + 64) = v36;
    *(v0 + 32) = v38;
    v39 = *(v34 + v33);
    *(v0 + 544) = &type metadata for GroupMemberModel;
    *(v0 + 552) = &protocol witness table for GroupMemberModel;
    v40 = swift_allocObject();
    *(v0 + 520) = v40;
    memmove((v40 + 16), (v35 + 32), 0x45uLL);
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 160);
    v41 = swift_task_alloc();
    *(v0 + 912) = v41;
    *v41 = v0;
    v41[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v31 = v0 + 520;
    goto LABEL_10;
  }

  v5 = *(v0 + 880);
  v6 = *(v0 + 872);
  v7 = *(v0 + 680);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister saveGroupMembers deleting members", v10, 2u);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  v11 = *(v0 + 888);

  v12 = *(v11 + 16);
  *(v0 + 928) = v12;
  v13 = *(v0 + 888);
  if (v12)
  {
    v14 = (v0 + 232);
    v15 = *(v0 + 696);
    *(v0 + 1008) = *MEMORY[0x277D4CD28];
    v16 = *(v15 + 104);
    *(v0 + 936) = v16;
    *(v0 + 944) = 0;
    v60 = *(v0 + 896);
    v17 = *(v0 + 704);
    v18 = *(v0 + 688);
    v19 = *(v0 + 680);
    *(v0 + 232) = *(v13 + 32);
    v21 = *(v13 + 64);
    v20 = *(v13 + 80);
    v22 = *(v13 + 48);
    *(v0 + 293) = *(v13 + 93);
    *(v0 + 264) = v21;
    *(v0 + 280) = v20;
    *(v0 + 248) = v22;
    v23 = *(v0 + 300);
    v24 = *(v0 + 296);
    v16(v17);
    outlined init with copy of GroupMemberModel(v0 + 232, v0 + 304);
    v25 = MLS.PersistedMember.MemberState.rawValue.getter();
    (*(v15 + 8))(v17, v18);
    v26 = *(v19 + v60);
    if ((v23 & 1) == 0 && v24 == v25)
    {
      *(v0 + 624) = &type metadata for GroupMemberModel;
      *(v0 + 632) = &protocol witness table for GroupMemberModel;
      v27 = swift_allocObject();
      *(v0 + 600) = v27;
      v28 = *(v0 + 280);
      *(v27 + 48) = *(v0 + 264);
      *(v27 + 64) = v28;
      *(v27 + 77) = *(v0 + 293);
      v29 = *(v0 + 248);
      *(v27 + 16) = *v14;
      *(v27 + 32) = v29;
      outlined init with copy of GroupMemberModel(v0 + 232, v0 + 448);
      v30 = swift_task_alloc();
      *(v0 + 952) = v30;
      *v30 = v0;
      v30[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
      v31 = v0 + 600;
LABEL_10:

      return SqliteStore.insert(_:)(v31);
    }

    *(v0 + 584) = &type metadata for GroupMemberModel;
    *(v0 + 592) = &protocol witness table for GroupMemberModel;
    v56 = swift_allocObject();
    *(v0 + 560) = v56;
    v57 = *(v0 + 280);
    *(v56 + 48) = *(v0 + 264);
    *(v56 + 64) = v57;
    *(v56 + 77) = *(v0 + 293);
    v58 = *(v0 + 248);
    *(v56 + 16) = *v14;
    *(v56 + 32) = v58;
    outlined init with copy of GroupMemberModel(v0 + 232, v0 + 376);
    v59 = swift_task_alloc();
    *(v0 + 968) = v59;
    *v59 = v0;
    v59[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

    return SqliteStore.delete(_:)(v0 + 560);
  }

  else
  {
    v42 = *(v0 + 864);
    v43 = *(v0 + 856);
    v44 = *(v0 + 832);

    outlined consume of Data._Representation(v43, v42);
    v45 = *(v0 + 824);
    v46 = *(v0 + 816);
    v47 = *(v0 + 792);
    v48 = *(v0 + 784);
    v49 = *(v0 + 776);
    v50 = *(v0 + 768);
    v51 = *(v0 + 744);
    v52 = *(v0 + 736);
    v53 = *(v0 + 712);
    v54 = *(v0 + 704);

    v55 = *(v0 + 8);

    return v55();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[119];
  v9 = *v1;
  (*v1)[120] = v0;

  if (v0)
  {
    v4 = v2[111];

    v5 = v2[106];
    v6 = v2[105];
    v7 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 75);
    v5 = v2[106];
    v6 = v2[105];
    v7 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = (v0 + 232);
  v2 = *(v0 + 928);
  v3 = *(v0 + 944) + 1;
  result = outlined destroy of GroupMemberModel(v0 + 232);
  if (v3 == v2)
  {
    v5 = *(v0 + 888);
    v6 = *(v0 + 864);
    v7 = *(v0 + 856);
    v8 = *(v0 + 832);

    outlined consume of Data._Representation(v7, v6);
    v9 = *(v0 + 824);
    v10 = *(v0 + 816);
    v11 = *(v0 + 792);
    v12 = *(v0 + 784);
    v13 = *(v0 + 776);
    v14 = *(v0 + 768);
    v15 = *(v0 + 744);
    v16 = *(v0 + 736);
    v17 = *(v0 + 712);
    v18 = *(v0 + 704);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v20 = *(v0 + 888);
    v21 = *(v0 + 944) + 1;
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 944) = v21;
      v22 = *(v0 + 936);
      v23 = *(v0 + 1008);
      v24 = *(v0 + 896);
      v25 = *(v0 + 704);
      v26 = *(v0 + 696);
      v27 = *(v0 + 688);
      v28 = *(v0 + 680);
      v29 = v20 + 72 * v21;
      *v1 = *(v29 + 32);
      v31 = *(v29 + 64);
      v30 = *(v29 + 80);
      v32 = *(v29 + 48);
      *(v0 + 293) = *(v29 + 93);
      *(v0 + 264) = v31;
      *(v0 + 280) = v30;
      *(v0 + 248) = v32;
      v33 = *(v0 + 300);
      v34 = *(v0 + 296);
      v22(v25, v23, v27);
      outlined init with copy of GroupMemberModel(v0 + 232, v0 + 304);
      v35 = MLS.PersistedMember.MemberState.rawValue.getter();
      (*(v26 + 8))(v25, v27);
      v36 = *(v28 + v24);
      if ((v33 & 1) != 0 || v34 != v35)
      {
        *(v0 + 584) = &type metadata for GroupMemberModel;
        *(v0 + 592) = &protocol witness table for GroupMemberModel;
        v41 = swift_allocObject();
        *(v0 + 560) = v41;
        v42 = *(v0 + 280);
        *(v41 + 48) = *(v0 + 264);
        *(v41 + 64) = v42;
        *(v41 + 77) = *(v0 + 293);
        v43 = *(v0 + 248);
        *(v41 + 16) = *v1;
        *(v41 + 32) = v43;
        outlined init with copy of GroupMemberModel(v0 + 232, v0 + 376);
        v44 = swift_task_alloc();
        *(v0 + 968) = v44;
        *v44 = v0;
        v44[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

        return SqliteStore.delete(_:)(v0 + 560);
      }

      else
      {
        *(v0 + 624) = &type metadata for GroupMemberModel;
        *(v0 + 632) = &protocol witness table for GroupMemberModel;
        v37 = swift_allocObject();
        *(v0 + 600) = v37;
        v38 = *(v0 + 280);
        *(v37 + 48) = *(v0 + 264);
        *(v37 + 64) = v38;
        *(v37 + 77) = *(v0 + 293);
        v39 = *(v0 + 248);
        *(v37 + 16) = *v1;
        *(v37 + 32) = v39;
        outlined init with copy of GroupMemberModel(v0 + 232, v0 + 448);
        v40 = swift_task_alloc();
        *(v0 + 952) = v40;
        *v40 = v0;
        v40[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

        return SqliteStore.insert(_:)(v0 + 600);
      }
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = (*v1)[121];
  v9 = *v1;
  (*v1)[122] = v0;

  if (v0)
  {
    v4 = v2[111];

    v5 = v2[106];
    v6 = v2[105];
    v7 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 70);
    v5 = v2[106];
    v6 = v2[105];
    v7 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v9 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v4 = v2[106];
    v5 = v2[105];
    v6 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    v7 = v2[123];

    v4 = v2[106];
    v5 = v2[105];
    v6 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[104];

  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[123];
  v2 = v0[104];

  v15 = v0[125];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[89];
  v12 = v0[88];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[104];
  outlined consume of Data._Representation(v0[107], v0[108]);
  outlined destroy of GroupMemberModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 65);
  v14 = v0[115];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[104];
  outlined consume of Data._Representation(v0[107], v0[108]);

  outlined destroy of GroupMemberModel((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 75);
  v14 = v0[120];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[104];
  outlined consume of Data._Representation(v0[107], v0[108]);

  outlined destroy of GroupMemberModel((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);
  v14 = v0[122];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];

  v12 = v0[1];

  return v12();
}

uint64_t DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[60] = a4;
  v5[61] = v4;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v6 = type metadata accessor for MLS.PersistedMember.MemberState();
  v5[62] = v6;
  v7 = *(v6 - 8);
  v5[63] = v7;
  v8 = *(v7 + 64) + 15;
  v5[64] = swift_task_alloc();
  v9 = type metadata accessor for URI();
  v5[65] = v9;
  v10 = *(v9 - 8);
  v5[66] = v10;
  v11 = *(v10 + 64) + 15;
  v5[67] = swift_task_alloc();
  v12 = type metadata accessor for MLS.AllMember();
  v5[68] = v12;
  v13 = *(v12 - 8);
  v5[69] = v13;
  v14 = *(v13 + 64) + 15;
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v15 = type metadata accessor for MLS.PersistedMember();
  v5[72] = v15;
  v16 = *(v15 - 8);
  v5[73] = v16;
  v17 = *(v16 + 64) + 15;
  v5[74] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[75] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[76] = v19;
  v5[77] = v18;

  return MEMORY[0x2822009F8](DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:), v19, v18);
}

uint64_t DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)()
{
  v120 = v0;
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = (*(**(v0 + 488) + 264))();
  *(v0 + 624) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      v7 = *(v0 + 576);
      v9 = *(v0 + 464);
      v8 = *(v0 + 472);
      v10 = *(v0 + 456);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v119[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v119);
      *(v11 + 12) = 2080;
      v13 = MEMORY[0x266756AF0](v8, v7);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v119);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister replaceGroupMembers using persistence mode. { identifier: %s, newMembers: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    if ((*(**(v0 + 488) + 192))())
    {
      v16 = *(v0 + 480);
      v17 = *(*(v0 + 488) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v117 = v19;
      v57 = v18;
      v58 = *(v0 + 472);
      v59 = *(v58 + 16);
      v60 = MEMORY[0x277D84F90];
      if (v59)
      {
        v61 = *(v0 + 584);
        v62 = *(v0 + 552);
        v63 = *(v0 + 528);
        v64 = *(v0 + 504);
        v119[0] = MEMORY[0x277D84F90];
        v114 = v59;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
        v60 = v119[0];
        v65 = *(v61 + 16);
        v61 += 16;
        v66 = v58 + ((*(v61 + 64) + 32) & ~*(v61 + 64));
        v106 = (v63 + 8);
        v107 = v65;
        v108 = (v61 - 8);
        v109 = (v62 + 8);
        v110 = v57;
        v104 = *(v61 + 56);
        v105 = (v64 + 8);
        do
        {
          v116 = v60;
          v67 = *(v0 + 576);
          v68 = *(v0 + 568);
          v69 = *(v0 + 560);
          v70 = *(v0 + 544);
          v71 = *(v0 + 536);
          v72 = *(v0 + 520);
          v113 = v66;
          v107(*(v0 + 592));
          MLS.PersistedMember.member.getter();
          MLS.AllMember.uri.getter();
          v73 = *v109;
          v74 = (*v109)(v68, v70);
          v75 = MEMORY[0x266756630](v74);
          v115 = v76;
          (*v106)(v71, v72);
          MLS.PersistedMember.member.getter();
          v77 = MLS.AllMember.dataRepresentation.getter();
          v111 = v78;
          v112 = v75;
          v79 = *(v0 + 592);
          v80 = *(v0 + 576);
          v81 = *(v0 + 512);
          v82 = *(v0 + 496);
          v83 = *(v0 + 464);
          v73(*(v0 + 560), *(v0 + 544));
          MLS.PersistedMember.state.getter();
          v84 = MLS.PersistedMember.MemberState.rawValue.getter();
          (*v105)(v81, v82);
          (*v108)(v79, v80);

          v57 = v110;
          outlined copy of Data._Representation(v110, v117);
          v60 = v116;
          v119[0] = v116;
          v86 = *(v116 + 16);
          v85 = *(v116 + 24);
          if (v86 >= v85 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
            v60 = v119[0];
          }

          v88 = *(v0 + 456);
          v87 = *(v0 + 464);
          *(v60 + 16) = v86 + 1;
          v89 = v60 + 72 * v86;
          *(v89 + 32) = v110;
          *(v89 + 40) = v117;
          *(v89 + 48) = v88;
          *(v89 + 56) = v87;
          *(v89 + 64) = v112;
          *(v89 + 72) = v115;
          *(v89 + 80) = v77;
          *(v89 + 88) = v111;
          *(v89 + 96) = v84;
          *(v89 + 100) = 0;
          v66 = v113 + v104;
          --v114;
        }

        while (v114);
      }

      *(v0 + 632) = v60;
      v90 = *(v0 + 464);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v94 = *(v0 + 456);
        v93 = *(v0 + 464);
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v119[0] = v96;
        *v95 = 136315138;
        *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v93, v119);
        _os_log_impl(&dword_26524C000, v91, v92, "DaemonPersister replaceGroupMembers clearing old members { group: %s }", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x2667577B0](v96, -1, -1);
        MEMORY[0x2667577B0](v95, -1, -1);
      }

      v97 = *(v0 + 488);
      v98 = *(v0 + 456);
      v99 = *(v0 + 464);
      *(v0 + 16) = v57;
      *(v0 + 24) = v117;
      *(v0 + 32) = v98;
      *(v0 + 40) = v99;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xF000000000000000;
      *(v0 + 80) = 0;
      *(v0 + 84) = 1;
      *(v0 + 640) = *(v97 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 400) = &type metadata for GroupMemberModel;
      *(v0 + 408) = &protocol witness table for GroupMemberModel;
      v100 = swift_allocObject();
      *(v0 + 376) = v100;
      v101 = *(v0 + 32);
      v102 = *(v0 + 64);
      *(v100 + 48) = *(v0 + 48);
      *(v100 + 64) = v102;
      *(v100 + 77) = *(v0 + 77);
      *(v100 + 16) = *(v0 + 16);
      *(v100 + 32) = v101;

      outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
      v103 = swift_task_alloc();
      *(v0 + 648) = v103;
      *v103 = v0;
      v103[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 376);
    }

    else
    {
      v36 = *(v0 + 600);
      v38 = *(v0 + 464);
      v37 = *(v0 + 472);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 576);
        v43 = *(v0 + 464);
        v42 = *(v0 + 472);
        v44 = *(v0 + 456);
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v119[0] = v46;
        *v45 = 136315394;
        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, v119);
        *(v45 + 12) = 2080;
        v47 = MEMORY[0x266756AF0](v42, v41);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v119);

        *(v45 + 14) = v49;
        _os_log_impl(&dword_26524C000, v39, v40, "DaemonPersister replaceGroupMembers called outside atomically block { identifier: %s, newMembers: %s }", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v46, -1, -1);
        MEMORY[0x2667577B0](v45, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v50 = 6;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      swift_willThrow();
      v51 = *(v0 + 592);
      v52 = *(v0 + 568);
      v53 = *(v0 + 560);
      v54 = *(v0 + 536);
      v55 = *(v0 + 512);

      v56 = *(v0 + 8);

      return v56();
    }
  }

  else
  {
    if (v6)
    {
      v20 = *(v0 + 576);
      v22 = *(v0 + 464);
      v21 = *(v0 + 472);
      v23 = *(v0 + 456);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v119[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v119);
      *(v24 + 12) = 2080;
      v26 = MEMORY[0x266756AF0](v21, v20);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v119);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister replaceGroupMembers using inMemory mode { group: %s, newMembers: %s }", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v25, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    *(v0 + 688) = (*(**(v0 + 488) + 168))();
    v29 = *(MEMORY[0x277D4CE30] + 4);
    v118 = (*MEMORY[0x277D4CE30] + MEMORY[0x277D4CE30]);
    v30 = swift_task_alloc();
    *(v0 + 696) = v30;
    *v30 = v0;
    v30[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
    v31 = *(v0 + 472);
    v32 = *(v0 + 480);
    v34 = *(v0 + 456);
    v33 = *(v0 + 464);

    return v118(v34, v33, v31, v32);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[81];
  v9 = *v1;
  (*v1)[82] = v0;

  if (v0)
  {
    v4 = v2[79];

    v5 = v2[77];
    v6 = v2[76];
    v7 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 47);
    v5 = v2[77];
    v6 = v2[76];
    v7 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v27 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 488);
  v3 = *(v0 + 464);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 456);
    v6 = *(v0 + 464);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v26);
    _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister replaceGroupMembers inserting members { group: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v10 = *(v0 + 632);
  if (*(v10 + 16))
  {
    *(v0 + 664) = 0;
    *(v0 + 160) = *(v10 + 32);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    v13 = *(v10 + 80);
    *(v0 + 221) = *(v10 + 93);
    *(v0 + 192) = v12;
    *(v0 + 208) = v13;
    *(v0 + 176) = v11;
    *(v0 + 440) = &type metadata for GroupMemberModel;
    *(v0 + 448) = &protocol witness table for GroupMemberModel;
    v14 = swift_allocObject();
    *(v0 + 416) = v14;
    memmove((v14 + 16), (v10 + 32), 0x45uLL);
    outlined init with copy of GroupMemberModel(v0 + 160, v0 + 232);
    outlined init with copy of GroupMemberModel(v0 + 160, v0 + 304);
    v15 = swift_task_alloc();
    *(v0 + 672) = v15;
    *v15 = v0;
    v15[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
    v16 = *(v0 + 640);

    return SqliteStore.insert(_:)(v0 + 416);
  }

  else
  {
    v18 = *(v0 + 600);
    v19 = *(v0 + 632);

    outlined destroy of GroupMemberModel(v0 + 16);

    v20 = *(v0 + 592);
    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 536);
    v24 = *(v0 + 512);

    v25 = *(v0 + 8);

    return v25();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[84];
  v9 = *v1;
  (*v1)[85] = v0;

  if (v0)
  {
    v4 = v2[79];

    v5 = v2[77];
    v6 = v2[76];
    v7 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 52);
    v5 = v2[77];
    v6 = v2[76];
    v7 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 664) + 1;
  result = outlined destroy of GroupMemberModel(v0 + 160);
  v4 = *(v1 + 16);
  if (v2 == v4)
  {
    v5 = *(v0 + 632);
    v6 = *(v0 + 600);

    outlined destroy of GroupMemberModel(v0 + 16);

    v7 = *(v0 + 592);
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v10 = *(v0 + 536);
    v11 = *(v0 + 512);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = *(v0 + 664) + 1;
    *(v0 + 664) = v13;
    if (v13 >= v4)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v0 + 632) + 72 * v13;
      *(v0 + 160) = *(v14 + 32);
      v15 = *(v14 + 48);
      v16 = *(v14 + 64);
      v17 = *(v14 + 80);
      *(v0 + 221) = *(v14 + 93);
      *(v0 + 192) = v16;
      *(v0 + 208) = v17;
      *(v0 + 176) = v15;
      *(v0 + 440) = &type metadata for GroupMemberModel;
      *(v0 + 448) = &protocol witness table for GroupMemberModel;
      v18 = swift_allocObject();
      *(v0 + 416) = v18;
      memmove((v18 + 16), (v14 + 32), 0x45uLL);
      outlined init with copy of GroupMemberModel(v0 + 160, v0 + 232);
      outlined init with copy of GroupMemberModel(v0 + 160, v0 + 304);
      v19 = swift_task_alloc();
      *(v0 + 672) = v19;
      *v19 = v0;
      v19[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
      v20 = *(v0 + 640);

      return SqliteStore.insert(_:)(v0 + 416);
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v9 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v4 = v2[77];
    v5 = v2[76];
    v6 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  else
  {
    v7 = v2[86];

    v4 = v2[77];
    v5 = v2[76];
    v6 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[75];

  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[67];
  v6 = v0[64];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[86];
  v2 = v0[75];

  v3 = v0[88];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[64];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[75];
  outlined destroy of GroupMemberModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  v2 = v0[82];
  v3 = v0[74];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[64];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[75];
  outlined destroy of GroupMemberModel((v0 + 2));
  outlined destroy of GroupMemberModel((v0 + 20));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
  v2 = v0[85];
  v3 = v0[74];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[64];

  v8 = v0[1];

  return v8();
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  type metadata accessor for MLSActor();
  v6[14] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v8;
  v6[16] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)()
{
  v40 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = (*(**(v0 + 104) + 264))();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      v8 = *(v0 + 80);
      v7 = *(v0 + 88);
      v10 = *(v0 + 64);
      v9 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v39);
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v39);
      _os_log_impl(&dword_26524C000, v4, v5, "loadRetryCount saveGroupClientContextBlob using persistence mode { group: %s, messageID: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v13 = *(v0 + 96);
    v14 = *(*(v0 + 104) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 136) = v15;
    *(v0 + 144) = v16;
    v31 = *(v0 + 104);
    v32 = *(v0 + 80);
    v33 = *(v0 + 88);
    v35 = *(v0 + 64);
    v34 = *(v0 + 72);
    *(v0 + 16) = v15;
    *(v0 + 24) = v16;
    *(v0 + 32) = v35;
    *(v0 + 40) = v34;
    *(v0 + 48) = v32;
    *(v0 + 56) = v33;
    v36 = *(v31 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v37 = swift_task_alloc();
    *(v0 + 152) = v37;
    *v37 = v0;
    v37[1] = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)(v0 + 16);
  }

  else
  {
    if (v6)
    {
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      v20 = *(v0 + 64);
      v19 = *(v0 + 72);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v39);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v39);
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister loadRetryCount using inMemory mode { group: %s, messageID: %s }", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v22, -1, -1);
      MEMORY[0x2667577B0](v21, -1, -1);
    }

    *(v0 + 176) = (*(**(v0 + 104) + 168))();
    v23 = *(MEMORY[0x277D4CE08] + 4);
    v38 = (*MEMORY[0x277D4CE08] + MEMORY[0x277D4CE08]);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 64);

    return v38(v29, v27, v28, v25, v26);
  }
}

{
  v1 = v0[20];
  v2 = v0[14];

  v3 = *(v1 + 16);
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[11];
  v8 = v0[9];
  if (v3)
  {
    v9 = *(v4 + 32);
    v10 = *(v4 + 40);
    v11 = *(v4 + 56);
    v17 = v3;
    v12 = *(v4 + 72);
    v16 = *(v4 + 80);
    outlined copy of Data._Representation(v9, v10);

    outlined consume of Data._Representation(v6, v5);

    outlined consume of Data._Representation(v9, v10);

    v3 = v17;

    v13 = v16;
  }

  else
  {
    outlined consume of Data._Representation(v0[17], v0[18]);

    v13 = 0;
  }

  v14 = v0[1];

  return v14(v13, v3 == 0);
}

{
  v1 = *(v0 + 112);

  v2 = *(v0 + 200);
  v3 = *(v0 + 8);
  v4 = *(v0 + 208) & 1;

  return v3(v2, v4);
}

{
  v1 = v0[22];
  v2 = v0[14];

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  outlined consume of Data._Representation(v1, v2);

  v6 = v0[21];
  v7 = v0[1];

  return v7();
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 128);
  v8 = *(v3 + 120);
  if (v1)
  {
    v9 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v9 = *(v6 + 120);
    v10 = *(v6 + 128);
    v11 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  else
  {
    v12 = *(v6 + 176);

    *(v6 + 208) = a2;
    *(v6 + 200) = a1;
    v9 = *(v6 + 120);
    v10 = *(v6 + 128);
    v11 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  v8 = type metadata accessor for Date();
  v7[30] = v8;
  v9 = *(v8 - 8);
  v7[31] = v9;
  v10 = *(v9 + 64) + 15;
  v7[32] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v7[33] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[34] = v12;
  v7[35] = v11;

  return MEMORY[0x2822009F8](DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:), v12, v11);
}

uint64_t DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:)()
{
  v70 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = (*(**(v0 + 232) + 264))();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      v7 = *(v0 + 208);
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v65 = *(v0 + 216);
      v66 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v69[0] = v11;
      *v10 = 136315650;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v69);
      *(v10 + 12) = 2080;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v65, v69);
      *(v10 + 22) = 2048;
      *(v10 + 24) = v66;
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister saveRetryCount using persistence mode { group: %s, messageID: %s, retryCount: %ld }", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v11, -1, -1);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    if ((*(**(v0 + 232) + 192))())
    {
      v12 = *(v0 + 224);
      v13 = *(*(v0 + 232) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      result = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 288) = result;
      *(v0 + 296) = v15;
      v45 = *(v0 + 184);
      if (v45 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v45 <= 0x7FFFFFFF)
      {
        v47 = *(v0 + 248);
        v46 = *(v0 + 256);
        v48 = *(v0 + 240);
        v49 = result;
        v50 = v15;
        outlined copy of Data._Representation(result, v15);
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v52 = v51;
        v53 = v51;
        result = (*(v47 + 8))(v46, v48);
        if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v52 > -9.22337204e18)
          {
            if (v52 < 9.22337204e18)
            {
              v54 = v49;
              v55 = *(v0 + 232);
              v56 = *(v0 + 208);
              v57 = *(v0 + 216);
              v58 = *(v0 + 192);
              v59 = *(v0 + 200);
              *(v0 + 16) = v54;
              *(v0 + 24) = v50;
              *(v0 + 32) = v58;
              *(v0 + 40) = v59;
              *(v0 + 48) = v56;
              *(v0 + 56) = v57;
              *(v0 + 64) = v45;
              *(v0 + 72) = v52;
              v60 = *(v55 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
              *(v0 + 168) = &type metadata for FailureToDecryptRetryModel;
              *(v0 + 176) = &protocol witness table for FailureToDecryptRetryModel;
              v61 = swift_allocObject();
              *(v0 + 144) = v61;
              v62 = *(v0 + 32);
              v61[1] = *(v0 + 16);
              v61[2] = v62;
              v63 = *(v0 + 64);
              v61[3] = *(v0 + 48);
              v61[4] = v63;

              outlined init with copy of FailureToDecryptRetryModel(v0 + 16, v0 + 80);
              v64 = swift_task_alloc();
              *(v0 + 304) = v64;
              *v64 = v0;
              v64[1] = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);

              return SqliteStore.insert(_:)(v0 + 144);
            }

LABEL_28:
            __break(1u);
            return result;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_26;
    }

    v30 = *(v0 + 264);
    v31 = *(v0 + 216);
    v32 = *(v0 + 200);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v36 = *(v0 + 208);
      v35 = *(v0 + 216);
      v38 = *(v0 + 192);
      v37 = *(v0 + 200);
      v39 = *(v0 + 184);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v69[0] = v41;
      *v40 = 136315650;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v69);
      *(v40 + 12) = 2080;
      *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v69);
      *(v40 + 22) = 2048;
      *(v40 + 24) = v39;
      _os_log_impl(&dword_26524C000, v33, v34, "DaemonPersister saveRetryCount called outside atomically block { group: %s, messageID: %s, retryCount: %ld }", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v41, -1, -1);
      MEMORY[0x2667577B0](v40, -1, -1);
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v42 = 6;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    swift_willThrow();
    v43 = *(v0 + 256);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    if (v6)
    {
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      v19 = *(v0 + 192);
      v18 = *(v0 + 200);
      v67 = *(v0 + 184);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v69[0] = v21;
      *v20 = 136315650;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v69);
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v69);
      *(v20 + 22) = 2048;
      *(v20 + 24) = v67;
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister saveRetryCount using inMemory mode { group: %s, messageID: %s, retryCount: %ld }", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    *(v0 + 320) = (*(**(v0 + 232) + 168))();
    v22 = *(MEMORY[0x277D4CE68] + 4);
    v68 = (*MEMORY[0x277D4CE68] + MEMORY[0x277D4CE68]);
    v23 = swift_task_alloc();
    *(v0 + 328) = v23;
    *v23 = v0;
    v23[1] = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    v29 = *(v0 + 184);
    v28 = *(v0 + 192);

    return v68(v29, v28, v26, v27, v24, v25);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[38];
  v8 = *v1;
  (*v1)[39] = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v4 = v2[34];
    v5 = v2[35];
    v6 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];

  outlined destroy of FailureToDecryptRetryModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v4 = v0[32];

  v5 = v0[1];

  return v5();
}

{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  else
  {
    v7 = v2[40];

    v4 = v2[34];
    v5 = v2[35];
    v6 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[33];

  v2 = v0[32];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[40];
  v2 = v0[33];

  v3 = v0[42];
  v4 = v0[32];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[33];
  outlined consume of Data._Representation(v0[36], v0[37]);
  outlined destroy of FailureToDecryptRetryModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v2 = v0[39];
  v3 = v0[32];

  v4 = v0[1];

  return v4();
}

uint64_t DaemonPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  type metadata accessor for MLSActor();
  v4[50] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[51] = v6;
  v4[52] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.deleteGroup(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.deleteGroup(identifier:clientIdentifier:)()
{
  v45 = v0;
  v1 = *(v0 + 376);
  v2 = (*(**(v0 + 392) + 264))();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v7 = *(v0 + 368);
      v6 = *(v0 + 376);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v44);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister deleteGroup using persistence mode { identifier: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    if ((*(**(v0 + 392) + 192))())
    {
      v10 = *(v0 + 384);
      v11 = *(*(v0 + 392) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 424) = v12;
      *(v0 + 432) = v13;
      v34 = *(v0 + 392);
      v35 = *(v0 + 368);
      v36 = *(v0 + 376);
      *(v0 + 16) = v12;
      *(v0 + 24) = v13;
      *(v0 + 32) = v35;
      *(v0 + 40) = v36;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xF000000000000000;
      *(v0 + 80) = 0;
      *(v0 + 84) = 1;
      *(v0 + 440) = *(v34 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 312) = &type metadata for GroupMemberModel;
      *(v0 + 320) = &protocol witness table for GroupMemberModel;
      v37 = v12;
      v38 = v13;
      v39 = swift_allocObject();
      *(v0 + 288) = v39;
      v40 = *(v0 + 32);
      v41 = *(v0 + 64);
      *(v39 + 48) = *(v0 + 48);
      *(v39 + 64) = v41;
      *(v39 + 77) = *(v0 + 77);
      *(v39 + 16) = *(v0 + 16);
      *(v39 + 32) = v40;

      outlined copy of Data._Representation(v37, v38);
      outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
      v42 = swift_task_alloc();
      *(v0 + 448) = v42;
      *v42 = v0;
      v42[1] = DaemonPersister.deleteGroup(identifier:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 288);
    }

    else
    {
      v24 = *(v0 + 400);
      v25 = *(v0 + 376);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v29 = *(v0 + 368);
        v28 = *(v0 + 376);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v44[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v44);
        _os_log_impl(&dword_26524C000, v26, v27, "DaemonPersister deleteGroup called outside atomically block { identifier: %s }", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v32 = 6;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      swift_willThrow();
      v33 = *(v0 + 8);

      return v33();
    }
  }

  else
  {
    if (v5)
    {
      v15 = *(v0 + 368);
      v14 = *(v0 + 376);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v44[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v44);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister deleteGroup using inMemory mode { identifier: %s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    *(v0 + 480) = (*(**(v0 + 392) + 168))();
    v18 = *(MEMORY[0x277D4CDF8] + 4);
    v43 = (*MEMORY[0x277D4CDF8] + MEMORY[0x277D4CDF8]);
    v19 = swift_task_alloc();
    *(v0 + 488) = v19;
    *v19 = v0;
    v19[1] = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
    v20 = *(v0 + 376);
    v21 = *(v0 + 384);
    v22 = *(v0 + 368);

    return v43(v22, v20, v21);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v8 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[53], v2[54]);
    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 36);
    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = xmmword_2653419D0;
  *(v0 + 208) = xmmword_2653419D0;
  *(v0 + 352) = &type metadata for SecureMessagingGroupModel;
  *(v0 + 360) = &protocol witness table for SecureMessagingGroupModel;
  v5 = swift_allocObject();
  *(v0 + 328) = v5;
  v6 = *(v0 + 176);
  v7 = *(v0 + 192);
  v5[1] = *(v0 + 160);
  v5[2] = v6;
  v8 = *(v0 + 208);
  v5[3] = v7;
  v5[4] = v8;

  outlined copy of Data._Representation(v1, v2);
  outlined init with copy of SecureMessagingGroupModel(v0 + 160, v0 + 224);
  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *v9 = v0;
  v9[1] = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  v10 = *(v0 + 440);

  return SqliteStore.delete(_:)(v0 + 328);
}

{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v8 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[53], v2[54]);
    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 41);
    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[50];

  outlined destroy of SecureMessagingGroupModel((v0 + 20));
  outlined destroy of GroupMemberModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v9 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  else
  {
    v7 = v2[60];

    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 400);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[60];
  v2 = v0[50];

  v3 = v0[62];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[50];
  outlined destroy of GroupMemberModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v2 = v0[57];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[50];
  outlined destroy of GroupMemberModel((v0 + 2));
  outlined destroy of SecureMessagingGroupModel((v0 + 20));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);
  v2 = v0[59];
  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  type metadata accessor for MLSActor();
  v4[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[30] = v6;
  v4[31] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)()
{
  v46 = v0;
  v1 = *(v0 + 208);
  v2 = (*(**(v0 + 224) + 264))();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v7 = *(v0 + 200);
      v6 = *(v0 + 208);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v45[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v45);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister deleteSecureMessagingGroup using persistence mode { identifier: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    if ((*(**(v0 + 224) + 192))())
    {
      v10 = *(v0 + 216);
      v11 = *(*(v0 + 224) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 256) = v12;
      *(v0 + 264) = v13;
      v34 = *(v0 + 224);
      v35 = *(v0 + 200);
      v36 = *(v0 + 208);
      *(v0 + 16) = v12;
      *(v0 + 24) = v13;
      *(v0 + 32) = v35;
      *(v0 + 40) = v36;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xF000000000000000;
      *(v0 + 80) = 0;
      *(v0 + 84) = 1;
      v37 = *(v34 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 184) = &type metadata for GroupMemberModel;
      *(v0 + 192) = &protocol witness table for GroupMemberModel;
      v38 = v12;
      v39 = v13;
      v40 = swift_allocObject();
      *(v0 + 160) = v40;
      v41 = *(v0 + 32);
      v42 = *(v0 + 64);
      *(v40 + 48) = *(v0 + 48);
      *(v40 + 64) = v42;
      *(v40 + 77) = *(v0 + 77);
      *(v40 + 16) = *(v0 + 16);
      *(v40 + 32) = v41;

      outlined copy of Data._Representation(v38, v39);
      outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
      v43 = swift_task_alloc();
      *(v0 + 272) = v43;
      *v43 = v0;
      v43[1] = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 160);
    }

    else
    {
      v24 = *(v0 + 232);
      v25 = *(v0 + 208);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v29 = *(v0 + 200);
        v28 = *(v0 + 208);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v45);
        _os_log_impl(&dword_26524C000, v26, v27, "DaemonPersister deleteSecureMessagingGroup called outside atomically block { identifier: %s }", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2667577B0](v31, -1, -1);
        MEMORY[0x2667577B0](v30, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v32 = 6;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      swift_willThrow();
      v33 = *(v0 + 8);

      return v33();
    }
  }

  else
  {
    if (v5)
    {
      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v45);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister deleteSecureMessagingGroup using inMemory mode { identifier: %s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    *(v0 + 288) = (*(**(v0 + 224) + 168))();
    v18 = *(MEMORY[0x277D4CDE0] + 4);
    v44 = (*MEMORY[0x277D4CDE0] + MEMORY[0x277D4CDE0]);
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);

    return v44(v22, v20, v21);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[32], v2[33]);
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 20);
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[29];

  outlined destroy of GroupMemberModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  else
  {
    v7 = v2[36];

    v4 = v2[30];
    v5 = v2[31];
    v6 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[36];
  v2 = v0[29];

  v3 = v0[38];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[29];
  outlined destroy of GroupMemberModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v2 = v0[35];
  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[101] = v4;
  v5[100] = a4;
  v5[99] = a3;
  v5[98] = a2;
  v5[97] = a1;
  v6 = type metadata accessor for MLS.OutgoingEventState();
  v5[102] = v6;
  v7 = *(v6 - 8);
  v5[103] = v7;
  v8 = *(v7 + 64) + 15;
  v5[104] = swift_task_alloc();
  v9 = type metadata accessor for MLS.GroupVersion();
  v5[105] = v9;
  v10 = *(v9 - 8);
  v5[106] = v10;
  v11 = *(v10 + 64) + 15;
  v5[107] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR) - 8) + 64) + 15;
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5[110] = v13;
  v14 = *(v13 - 8);
  v5[111] = v14;
  v15 = *(v14 + 64) + 15;
  v5[112] = swift_task_alloc();
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[113] = v16;
  v17 = *(v16 - 8);
  v5[114] = v17;
  v18 = *(v17 + 64) + 15;
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();
  v19 = type metadata accessor for MLS.OutgoingEventUpdate();
  v5[117] = v19;
  v20 = *(v19 - 8);
  v5[118] = v20;
  v21 = *(v20 + 64) + 15;
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[124] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v23 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[125] = v23;
  v5[126] = v22;

  return MEMORY[0x2822009F8](DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:), v23, v22);
}

uint64_t DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)()
{
  v211 = v0;
  v1 = *(v0 + 944);
  v2 = (*(**(v0 + 808) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 936);
  if (v2)
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 912);
    v7 = *(v0 + 904);
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v3(*(v0 + 984), *(v0 + 776), v4);
    v192 = *(v6 + 16);
    v192(v5, v8, v7);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    log = v10;
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 984);
    v202 = v3;
    if (v12)
    {
      v14 = *(v0 + 976);
      v183 = v11;
      v15 = *(v0 + 944);
      v16 = *(v0 + 936);
      v189 = *(v0 + 928);
      v17 = *(v0 + 912);
      v176 = *(v0 + 792);
      v177 = *(v0 + 904);
      v175 = *(v0 + 784);
      v18 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v210[0] = v180;
      *v18 = 136315650;
      v3(v14, v13, v16);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      v22 = *(v15 + 8);
      v22(v13, v16);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v210);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v176, v210);
      *(v18 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v24 = v189;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v190 = *(v17 + 8);
      v190(v24, v177);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v210);

      *(v18 + 24) = v28;
      _os_log_impl(&dword_26524C000, log, v183, "DaemonPersister saveOutgoingEventUpdate using persistence mode { outgoingEventUpdate: %s, group: %s, client: %s }", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v180, -1, -1);
      MEMORY[0x2667577B0](v18, -1, -1);
    }

    else
    {
      v42 = *(v0 + 944);
      v43 = *(v0 + 936);
      v44 = *(v0 + 928);
      v45 = *(v0 + 912);
      v46 = *(v0 + 904);

      v190 = *(v45 + 8);
      v190(v44, v46);
      v22 = *(v42 + 8);
      v29 = (v22)(v13, v43);
    }

    if ((*(**(v0 + 808) + 192))(v29))
    {
      v47 = *(v0 + 904);
      v48 = *(v0 + 800);
      v49 = *(*(v0 + 808) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 1016) = v50;
      *(v0 + 1024) = v51;
      v196 = v50;
      loga = v51;
      v92 = *(v0 + 792);
      *(v0 + 712) = *(v0 + 784);
      *(v0 + 720) = v92;
      v93 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 1032) = v93;
      *(v0 + 1040) = v94;
      v191 = v93;
      v194 = v94;
      v106 = *(v0 + 968);
      v107 = *(v0 + 944);
      v108 = *(v0 + 936);
      v202(v106, *(v0 + 776), v108);
      v109 = (*(v107 + 88))(v106, v108);
      if (v109 == *MEMORY[0x277D4CF78])
      {
        v110 = *(v0 + 968);
        v111 = *(v0 + 896);
        v112 = *(v0 + 888);
        v113 = *(v0 + 880);
        v187 = *(v0 + 872);
        v114 = *(v0 + 848);
        v205 = *(v0 + 840);
        v208 = *(v0 + 856);
        (*(*(v0 + 944) + 96))(v110, *(v0 + 936));
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
        v116 = *(v115 + 48);
        v117 = *(v115 + 64);
        (*(v112 + 32))(v111, v110, v113);
        outlined init with take of MLS.OutgoingEventState?(v110 + v116, v187, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        (*(v114 + 32))(v208, v110 + v117, v205);
        *(v0 + 760) = MLS.OutgoingEventType.storageIdentifier.getter();
        *(v0 + 768) = v118;
        v119 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1048) = v119;
        *(v0 + 1056) = v120;
        v188 = v119;
        v206 = v120;
        v139 = *(v0 + 896);
        v140 = *(v0 + 880);

        lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
        v141 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1064) = v141;
        *(v0 + 1072) = v142;
        v182 = v141;
        v185 = v142;
        v144 = *(v0 + 856);
        v145 = *(v0 + 840);
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion, MEMORY[0x277D4CC78]);
        v146 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1080) = v146;
        *(v0 + 1088) = v147;
        v158 = v147;
        v179 = v146;
        v159 = *(v0 + 864);
        v160 = *(v0 + 824);
        v161 = *(v0 + 816);
        outlined init with copy of MLS.OutgoingEventState?(*(v0 + 872), v159);
        v162 = (*(v160 + 48))(v159, 1, v161);
        v163 = *(v0 + 864);
        if (v162 == 1)
        {
          outlined destroy of MLS.KeyPackageProvider?(*(v0 + 864), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
          v164 = 0;
          v165 = 0xF000000000000000;
        }

        else
        {
          (*(*(v0 + 824) + 32))(*(v0 + 832), *(v0 + 864), *(v0 + 816));
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20]);
          v166 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          v165 = v167;
          v168 = v166;
          (*(*(v0 + 824) + 8))(*(v0 + 832), *(v0 + 816));
          v164 = v168;
        }

        v169 = *(v0 + 808);
        *(v0 + 400) = v196;
        *(v0 + 408) = loga;
        *(v0 + 416) = v191;
        *(v0 + 424) = v194;
        *(v0 + 432) = v182;
        *(v0 + 440) = v185;
        *(v0 + 448) = v179;
        *(v0 + 456) = v158;
        *(v0 + 464) = v164;
        *(v0 + 472) = v165;
        *(v0 + 480) = v188;
        *(v0 + 488) = v206;
        v209 = *(v169 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        *(v0 + 696) = &type metadata for OutgoingEventModel;
        *(v0 + 704) = &protocol witness table for OutgoingEventModel;
        v170 = swift_allocObject();
        *(v0 + 672) = v170;
        v171 = *(v0 + 448);
        v170[3] = *(v0 + 432);
        v170[4] = v171;
        v172 = *(v0 + 480);
        v170[5] = *(v0 + 464);
        v170[6] = v172;
        v173 = *(v0 + 416);
        v170[1] = *(v0 + 400);
        v170[2] = v173;
        outlined copy of Data._Representation(v196, loga);
        outlined copy of Data._Representation(v191, v194);
        outlined copy of Data._Representation(v182, v185);
        outlined copy of Data._Representation(v179, v158);
        outlined copy of Data._Representation(v188, v206);
        outlined init with copy of OutgoingEventModel(v0 + 400, v0 + 496);
        v174 = swift_task_alloc();
        *(v0 + 1096) = v174;
        *v174 = v0;
        v174[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);

        return SqliteStore.insert(_:)(v0 + 672);
      }

      else if (v109 == *MEMORY[0x277D4CF80])
      {
        v121 = *(v0 + 968);
        (*(*(v0 + 944) + 96))(v121, *(v0 + 936));
        v122 = v121[1];
        *(v0 + 744) = *v121;
        *(v0 + 752) = v122;
        v123 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1112) = v123;
        *(v0 + 1120) = v124;
        v125 = *(v0 + 808);
        v126 = v123;
        v127 = v124;

        *(v0 + 208) = v196;
        *(v0 + 216) = loga;
        *(v0 + 224) = v191;
        *(v0 + 232) = v194;
        *(v0 + 240) = xmmword_2653419D0;
        *(v0 + 256) = xmmword_2653419D0;
        *(v0 + 272) = xmmword_2653419D0;
        *(v0 + 288) = v126;
        *(v0 + 296) = v127;
        v128 = *(v125 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        *(v0 + 656) = &type metadata for OutgoingEventModel;
        *(v0 + 664) = &protocol witness table for OutgoingEventModel;
        v129 = swift_allocObject();
        *(v0 + 632) = v129;
        v130 = *(v0 + 256);
        v131 = *(v0 + 272);
        v132 = *(v0 + 224);
        v129[3] = *(v0 + 240);
        v129[4] = v130;
        v133 = *(v0 + 288);
        v129[5] = v131;
        v129[6] = v133;
        v129[1] = *(v0 + 208);
        v129[2] = v132;
        outlined copy of Data._Representation(v126, v127);
        outlined init with copy of OutgoingEventModel(v0 + 208, v0 + 304);
        v134 = swift_task_alloc();
        *(v0 + 1128) = v134;
        *v134 = v0;
        v134[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);

        return SqliteStore.delete(_:)(v0 + 632);
      }

      else if (v109 == *MEMORY[0x277D4CF70])
      {
        v135 = *(v0 + 968);
        (*(*(v0 + 944) + 96))(v135, *(v0 + 936));
        v136 = v135[1];
        *(v0 + 728) = *v135;
        *(v0 + 736) = v136;
        v137 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1144) = v137;
        *(v0 + 1152) = v138;
        v148 = *(v0 + 808);
        v149 = v137;
        v150 = v138;

        *(v0 + 16) = v196;
        *(v0 + 24) = loga;
        *(v0 + 32) = v191;
        *(v0 + 40) = v194;
        *(v0 + 48) = xmmword_2653419D0;
        *(v0 + 64) = xmmword_2653419D0;
        *(v0 + 80) = xmmword_2653419D0;
        *(v0 + 96) = v149;
        *(v0 + 104) = v150;
        v151 = *(v148 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        *(v0 + 616) = &type metadata for OutgoingEventModel;
        *(v0 + 624) = &protocol witness table for OutgoingEventModel;
        v152 = swift_allocObject();
        *(v0 + 592) = v152;
        v153 = *(v0 + 64);
        v154 = *(v0 + 80);
        v155 = *(v0 + 32);
        v152[3] = *(v0 + 48);
        v152[4] = v153;
        v156 = *(v0 + 96);
        v152[5] = v154;
        v152[6] = v156;
        v152[1] = *(v0 + 16);
        v152[2] = v155;
        outlined copy of Data._Representation(v149, v150);
        outlined init with copy of OutgoingEventModel(v0 + 16, v0 + 112);
        v157 = swift_task_alloc();
        *(v0 + 1160) = v157;
        *v157 = v0;
        v157[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);

        return SqliteStore.update(_:)(v0 + 592);
      }

      else
      {
        v143 = *(v0 + 936);

        return MEMORY[0x2821FDEB8](v143, v143);
      }
    }

    else
    {
      logb = v22;
      v62 = *(v0 + 992);
      v63 = *(v0 + 960);
      v64 = *(v0 + 936);
      v65 = *(v0 + 920);
      v66 = *(v0 + 904);
      v67 = *(v0 + 800);
      v68 = *(v0 + 792);
      v69 = *(v0 + 776);

      v202(v63, v69, v64);
      v192(v65, v67, v66);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = *(v0 + 976);
        v73 = *(v0 + 960);
        v74 = *(v0 + 944);
        v75 = *(v0 + 936);
        v193 = *(v0 + 912);
        v184 = *(v0 + 904);
        v186 = *(v0 + 920);
        v178 = *(v0 + 784);
        v181 = *(v0 + 792);
        v76 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v210[0] = v195;
        *v76 = 136315650;
        v202(v72, v73, v75);
        v77 = String.init<A>(describing:)();
        v79 = v78;
        (logb)(v73, v75);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v210);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v181, v210);
        *(v76 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        v190(v186, v184);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v210);

        *(v76 + 24) = v84;
        _os_log_impl(&dword_26524C000, v70, v71, "DaemonPersister saveOutgoingEventUpdate called outside atomically block { outgoingEventUpdate: %s, group: %s, client: %s }", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v195, -1, -1);
        MEMORY[0x2667577B0](v76, -1, -1);
      }

      else
      {
        v85 = *(v0 + 960);
        v86 = *(v0 + 944);
        v87 = *(v0 + 936);
        v88 = *(v0 + 920);
        v89 = *(v0 + 912);
        v90 = *(v0 + 904);

        v190(v88, v90);
        (logb)(v85, v87);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v91 = 6;
      *(v91 + 8) = 0;
      *(v91 + 16) = 0;
      swift_willThrow();
      v95 = *(v0 + 984);
      v96 = *(v0 + 976);
      v97 = *(v0 + 968);
      v98 = *(v0 + 960);
      v99 = *(v0 + 952);
      v100 = *(v0 + 928);
      v101 = *(v0 + 920);
      v102 = *(v0 + 896);
      v103 = *(v0 + 872);
      v104 = *(v0 + 864);
      logd = *(v0 + 856);
      v204 = *(v0 + 832);

      v105 = *(v0 + 8);

      return v105();
    }
  }

  else
  {
    v3(*(v0 + 952), *(v0 + 776), v4);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 976);
      v33 = *(v0 + 952);
      v203 = v3;
      v34 = *(v0 + 944);
      v35 = *(v0 + 936);
      v36 = swift_slowAlloc();
      logc = swift_slowAlloc();
      v210[0] = logc;
      *v36 = 136315138;
      v203(v32, v33, v35);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v210);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_26524C000, v30, v31, "DaemonPersister saveOutgoingEventUpdate using inMemory mode { outgoingEventUpdate: %s }", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(logc);
      MEMORY[0x2667577B0](logc, -1, -1);
      MEMORY[0x2667577B0](v36, -1, -1);
    }

    else
    {
      v52 = *(v0 + 952);
      v53 = *(v0 + 944);
      v54 = *(v0 + 936);

      v41 = (*(v53 + 8))(v52, v54);
    }

    *(v0 + 1176) = (*(**(v0 + 808) + 168))(v41);
    v55 = *(MEMORY[0x277D4CE88] + 4);
    v207 = (*MEMORY[0x277D4CE88] + MEMORY[0x277D4CE88]);
    v56 = swift_task_alloc();
    *(v0 + 1184) = v56;
    *v56 = v0;
    v56[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
    v57 = *(v0 + 800);
    v58 = *(v0 + 792);
    v59 = *(v0 + 784);
    v60 = *(v0 + 776);

    return v207(v60, v59, v58, v57);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[137];
  v8 = *v1;
  (*v1)[138] = v0;

  if (v0)
  {
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 84);
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v8 = v0[124];
  v31 = v0[112];
  v9 = v0[111];
  v29 = v0[110];
  v27 = v0[128];
  v28 = v0[109];
  v25 = v0[127];
  v26 = v0[107];
  v10 = v0[106];
  v23 = v0[130];
  v24 = v0[105];

  outlined destroy of OutgoingEventModel((v0 + 50));
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v7, v23);
  outlined consume of Data._Representation(v25, v27);
  (*(v10 + 8))(v26, v24);
  outlined destroy of MLS.KeyPackageProvider?(v28, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  (*(v9 + 8))(v31, v29);
  v11 = v0[123];
  v12 = v0[122];
  v13 = v0[121];
  v14 = v0[120];
  v15 = v0[119];
  v16 = v0[116];
  v17 = v0[115];
  v18 = v0[112];
  v19 = v0[109];
  v20 = v0[108];
  v30 = v0[107];
  v32 = v0[104];

  v21 = v0[1];

  return v21();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v8 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[139], v2[140]);
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 79);
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[124];

  outlined destroy of OutgoingEventModel((v0 + 26));
  outlined consume of Data._Representation(v2, v1);
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[116];
  v10 = v0[115];
  v11 = v0[112];
  v12 = v0[109];
  v13 = v0[108];
  v16 = v0[107];
  v17 = v0[104];

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v8 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[143], v2[144]);
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 74);
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[144];
  v2 = v0[143];
  v3 = v0[124];

  outlined destroy of OutgoingEventModel((v0 + 2));
  outlined consume of Data._Representation(v2, v1);
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[116];
  v10 = v0[115];
  v11 = v0[112];
  v12 = v0[109];
  v13 = v0[108];
  v16 = v0[107];
  v17 = v0[104];

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v9 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    v7 = v2[147];

    v4 = v2[126];
    v5 = v2[125];
    v6 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[124];

  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[109];
  v11 = v0[108];
  v14 = v0[107];
  v15 = v0[104];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[147];
  v2 = v0[124];

  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[116];
  v9 = v0[115];
  v10 = v0[112];
  v11 = v0[109];
  v12 = v0[108];
  v15 = v0[107];
  v16 = v0[104];
  v17 = v0[149];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v8 = v0[124];
  v32 = v0[112];
  v9 = v0[111];
  v30 = v0[110];
  v27 = v0[128];
  v28 = v0[109];
  v25 = v0[127];
  v26 = v0[107];
  v10 = v0[106];
  v23 = v0[130];
  v24 = v0[105];

  outlined destroy of OutgoingEventModel((v0 + 50));
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v7, v23);
  outlined consume of Data._Representation(v25, v27);
  (*(v10 + 8))(v26, v24);
  outlined destroy of MLS.KeyPackageProvider?(v28, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  (*(v9 + 8))(v32, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 84);
  v11 = v0[123];
  v12 = v0[122];
  v13 = v0[121];
  v14 = v0[120];
  v15 = v0[119];
  v16 = v0[116];
  v17 = v0[115];
  v18 = v0[112];
  v19 = v0[109];
  v20 = v0[108];
  v29 = v0[107];
  v31 = v0[104];
  v33 = v0[138];

  v21 = v0[1];

  return v21();
}

{
  v1 = v0[124];
  outlined destroy of OutgoingEventModel((v0 + 26));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 79);
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[109];
  v11 = v0[108];
  v14 = v0[107];
  v15 = v0[104];
  v16 = v0[142];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[124];
  outlined destroy of OutgoingEventModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 74);
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[109];
  v11 = v0[108];
  v14 = v0[107];
  v15 = v0[104];
  v16 = v0[146];

  v12 = v0[1];

  return v12();
}