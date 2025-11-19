void specialized Trace_Handle.write<A>(_:omit:)(unint64_t a1, char a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(25, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49) == 1)
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x19;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_BeginEvent);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 419430400;
      }

      else
      {
        v32 = v14 | 0x19000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, uint64_t a2, char a3)
{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(27, 1u, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x1B;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_GraphCreated);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 33)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 452984832;
      }

      else
      {
        v33 = v15 | 0x1B000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(28, 1u, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x1C;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_GraphDestroy);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 33)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 469762048;
      }

      else
      {
        v33 = v15 | 0x1C000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(30, 1u, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x1E;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_SubgraphCreated);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 33)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 503316480;
      }

      else
      {
        v33 = v15 | 0x1E000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 != 1)
  {
    return;
  }

  v5 = v3;
  v9 = *(v3 + 3);
  v10 = *(v3 + 14);
  if (prepareTrace)
  {
    v11 = *(v3 + 14);
  }

  else
  {
    v11 = *(v3 + 14);
    if ((a3 & 1) == 0)
    {
      if (kdebug_using_continuous_time())
      {
        v12 = mach_continuous_time();
      }

      else
      {
        v12 = mach_absolute_time();
      }

      v11 = v12;
    }
  }

  v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v4 = *(v3 + 7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v3 = &v38;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(46, 1u, v4, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v38;
  }

  v15 = v11 - v10;
  if ((*(v9 + 49) & 1) == 0)
  {
    if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 771751936;
      }

      else
      {
        v33 = v15 | 0x2E000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  if (v11 < v10)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_17;
  }

  v3 = *(v5 + 7);
  if ((a3 & 1) != 0 && v15)
  {
    goto LABEL_42;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v13 = v16;
  LOBYTE(v4) = v17;
  LODWORD(v9) = (v17 << 12) | 0x2E;
  if (!readingDebug)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_43;
  }

LABEL_17:
  v18 = readingDebugLog;
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v13;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v20 = 134218498;
    *(v20 + 4) = v3;
    *(v20 + 12) = 2080;
    v38 = xmmword_26C32DAD0;
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v42 = 512;
    v21 = T_TracepointID.describe(state:)(&v38, v9);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v43);

    *(v20 + 14) = v23;
    *(v20 + 22) = 1024;
    *(v20 + 24) = 0;
    _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x26D69EAB0](v36, -1, -1);
    v24 = v20;
    v13 = v37;
    MEMORY[0x26D69EAB0](v24, -1, -1);
  }

LABEL_19:
  v25 = *(v5 + 4);
  if (!*(v25 + 56))
  {
    goto LABEL_46;
  }

  if (*(v25 + 52) != 2)
  {
    v26 = *(v25 + 32);
    LODWORD(v27) = *(v25 + 48);
    v28 = v27 | (*(v25 + 52) << 32);
    if (v26)
    {
      v29 = *(v25 + 40) - v26;
      v30 = v29 < v27;
      v31 = v29 - v27;
      if (!v30)
      {
        if (v31 >= 30)
        {
          v32 = 4;
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!*(v25 + 48))
    {
LABEL_31:
      CircularBuffer.Transaction.commit()();
      goto LABEL_32;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_32:
  v32 = CircularBuffer.Transaction.begin()() + 4;
  v27 = *(v25 + 48);
  v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
  if (BYTE4(v28) == 2)
  {
LABEL_47:
    __break(1u);
    return;
  }

  *(*(v25 + 32) + v27) = v9;
  *(v25 + 48) = v27 + 4;
  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
  *(v5 + 14) = v11;
  if (*(*(v5 + 3) + 49) == 1)
  {
    specialized Trace_Handle.write<A>(struct:)(a1, a2 & 0xFFFFFFFFFFLL);
  }

  else
  {
    type metadata accessor for T_SubgraphTreeUpdate(0);
    v40 = v34;
    v41 = &protocol witness table for T_SubgraphTreeUpdate;
    *&v38 = a1;
    DWORD2(v38) = a2;
    BYTE12(v38) = BYTE4(a2);
    v35 = __swift_project_boxed_opaque_existential_1(&v38, v34);
    specialized Trace_Handle.write<A>(v0:)(*v35, *(v35 + 2) | (*(v35 + 12) << 32));
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  ++*(v5 + 7);
}

{
  v42[1] = *MEMORY[0x277D85DE8];
  if (*v3 != 1)
  {
LABEL_46:
    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = v3;
  v11 = *(v3 + 112);
  if (*(*(v3 + 24) + 49) == 1 && (a3 & 4) == 0)
  {
    v37[0] = -1;
    pthread_threadid_np(0, v37);
    v13 = v37[0];
    if (v37[0] == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    if ((*(v3 + 72) & 1) != 0 || v37[0] != *(v3 + 64))
    {
      *(v3 + 64) = v37[0];
      *(v3 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v13);
    }
  }

  if (*(*(v3 + 24) + 49) == 1 && (a3 & 2) == 0)
  {
    v4 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v4 = 0;
  }

  if (tracepointAssertion.value._rawValue)
  {
    v5 = *(v3 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(32, 1u, v5, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v37[0];
  }

  if (*(*(v3 + 24) + 49) != 1)
  {
    specialized Trace_Handle.write<A>(struct:)(0x20000000, type metadata accessor for T_TracepointIDV0);
LABEL_45:
    specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_SubgraphAddChild);
    ++v7[7];
    goto LABEL_46;
  }

  v16 = *(v3 + 112);
  if (v11 < v16)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = *(v3 + 56);
  if ((a3 & 1) != 0 && v11 != v16)
  {
    goto LABEL_50;
  }

  specialized T_TracepointID.Size.init(raw:)();
  if ((a3 & 2) != 0)
  {
    v18 = 32;
  }

  else
  {
    v18 = 2080;
  }

  LODWORD(v5) = v18 & 0xFFF00FFF | (v17 << 12);
  if (!readingDebug)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v19 = readingDebugLog;
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42[0] = v36;
      *v21 = 134218498;
      *(v21 + 4) = v6;
      *(v21 + 12) = 2080;
      *v37 = xmmword_26C32DAD0;
      v38 = 1;
      v39 = 0;
      v40 = 0;
      v41 = 512;
      v22 = T_TracepointID.describe(state:)(v37, v5);
      v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v42);

      *(v21 + 14) = v6;
      *(v21 + 22) = 1024;
      *(v21 + 24) = v4;
      _os_log_impl(&dword_26C161000, v19, v20, "w %ld: %s, back: %u", v21, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x26D69EAB0](v36, -1, -1);
      MEMORY[0x26D69EAB0](v21, -1, -1);
    }

LABEL_30:
    v24 = v7[4];
    if (!*(v24 + 56))
    {
      break;
    }

    if (*(v24 + 52) == 2)
    {
      goto LABEL_39;
    }

    v25 = *(v24 + 32);
    LODWORD(v26) = *(v24 + 48);
    v27 = v26 | (*(v24 + 52) << 32);
    if (!v25)
    {
      if (*(v24 + 48))
      {
        goto LABEL_53;
      }

LABEL_38:
      CircularBuffer.Transaction.commit()();
LABEL_39:
      v31 = CircularBuffer.Transaction.begin()() + 4;
      v26 = *(v24 + 48);
      v27 = v26 | (*(v24 + 52) << 32);
      goto LABEL_40;
    }

    v28 = *(v24 + 40) - v25;
    v29 = v28 < v26;
    v30 = v28 - v26;
    if (v29)
    {
      __break(1u);
LABEL_53:
      __break(1u);
    }

    if (v30 < 33)
    {
      goto LABEL_38;
    }

    v31 = 4;
LABEL_40:
    if (BYTE4(v27) == 2)
    {
      goto LABEL_55;
    }

    *(*(v24 + 32) + v26) = v5;
    *(v24 + 48) = v26 + 4;
    if (!v4)
    {
      goto LABEL_44;
    }

    if (*(v24 + 52) == 2)
    {
      goto LABEL_56;
    }

    v32 = *(v24 + 48);
    *(*(v24 + 32) + v32) = v4;
    *(v24 + 48) = v32 + 4;
    v33 = __OFADD__(v31, 4);
    v31 += 4;
    if (!v33)
    {
LABEL_44:
      v34 = v7[15] + v31;
      v7[14] = v11;
      v7[15] = v34;
      goto LABEL_45;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t a1, int a2, char a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*v3 != 1)
  {
    goto LABEL_55;
  }

  v7 = v3;
  if ((*(v3[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v11 = v3[14];
  if ((a3 & 4) == 0)
  {
    v51[0] = -1;
    pthread_threadid_np(0, v51);
    v12 = v51[0];
    if (v51[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v3[9] & 1) != 0 || v51[0] != v3[8])
    {
      v3[8] = v51[0];
      *(v3 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v12);
    }
  }

  if (!prepareTrace && (a3 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v13 = mach_continuous_time();
    }

    else
    {
      v13 = mach_absolute_time();
    }

    v11 = v13;
  }

  if (*(v3[3] + 49) == 1 && (a3 & 2) == 0)
  {
    v6 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v6 = 0;
  }

  v5 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v4 = v3[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v3 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(66, 1u, v4, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v51[0];
  }

  v16 = v7[14];
  v17 = v11 - v16;
  v18 = v11 < v16;
  if (*(v7[3] + 49) != 1)
  {
    if (v18)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v17 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
      v36 = 1107296256;
    }

    else
    {
      v36 = v17 | 0x42000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v36, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v7[14] = v11;
    if ((*(v7[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_ObservableFired(0);
      v42 = v41;
      v43 = swift_conformsToProtocol2();
      if (v43)
      {
        if (v42 && (*(v43 + 24))(v42, v43) != 12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v56, v51);
            v44 = v53;
            v45 = __swift_project_boxed_opaque_existential_1(v51, v53);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v7, &type metadata for Trace.SwiftUI, v42, v44, v46);
            __swift_destroy_boxed_opaque_existential_1(v51);
            goto LABEL_54;
          }

          v57 = 0;
          memset(v56, 0, sizeof(v56));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v56, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_ObservableFired);
LABEL_54:
    ++v7[7];
LABEL_55:
    v40 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v50 = v6;
  v3 = v7[7];
  if ((a3 & 1) != 0 && v17)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v4 = v20;
  LOBYTE(v5) = v19;
  if ((a3 & 2) != 0)
  {
    v21 = 66;
  }

  else
  {
    v21 = 2114;
  }

  v6 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v49 = v4;
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v56[0] = v48;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v51 = xmmword_26C32DAD0;
      v52 = 1;
      v53 = 0;
      v54 = 0;
      v55 = 512;
      v25 = T_TracepointID.describe(state:)(v51, v6);
      log = v22;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v56);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v50;
      _os_log_impl(&dword_26C161000, log, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x26D69EAB0](v48, -1, -1);
      v28 = v24;
      v4 = v49;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_33:
    v3 = v7[4];
    if (!v3[7])
    {
      break;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_46;
    }

    v29 = v3[4];
    LODWORD(v30) = *(v3 + 12);
    v31 = v30 | (*(v3 + 52) << 32);
    if (!v29)
    {
      if (*(v3 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v35 = CircularBuffer.Transaction.begin()() + 4;
      v30 = *(v3 + 12);
      v31 = v30 | (*(v3 + 52) << 32);
      goto LABEL_47;
    }

    v32 = v3[5] - v29;
    v33 = v32 < v30;
    v34 = v32 - v30;
    if (v33)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v34 < 29)
    {
      goto LABEL_45;
    }

    v35 = 4;
LABEL_47:
    if (BYTE4(v31) == 2)
    {
      goto LABEL_71;
    }

    *(v3[4] + v30) = v6;
    *(v3 + 12) = v30 + 4;
    v37 = CircularBuffer.Transaction.write(size:)(v4, v5) + v35;
    if (!v50)
    {
      goto LABEL_51;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_72;
    }

    v38 = *(v3 + 12);
    *(v3[4] + v38) = v50;
    *(v3 + 12) = v38 + 4;
    v39 = __OFADD__(v37, 4);
    v37 += 4;
    if (!v39)
    {
LABEL_51:
      v7[15] += v37;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, uint64_t a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(67, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x43;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1124073472;
        }

        else
        {
          v31 = v13 | 0x43000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_TransactionBegin(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_TransactionBegin);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(68, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x44;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1140850688;
        }

        else
        {
          v31 = v13 | 0x44000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_TransactionEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_TransactionEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(85, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x55;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1426063360;
        }

        else
        {
          v31 = v13 | 0x55000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_AnimationEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(86, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x56;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1442840576;
        }

        else
        {
          v31 = v13 | 0x56000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationAttrUpdate(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_AnimationAttrUpdate);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(90, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5A;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1509949440;
        }

        else
        {
          v31 = v13 | 0x5A000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_InstantiateBegin(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_InstantiateBegin);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(91, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5B;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1526726656;
        }

        else
        {
          v31 = v13 | 0x5B000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_InstantiateEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_InstantiateEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(92, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5C;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1543503872;
        }

        else
        {
          v31 = v13 | 0x5C000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_UninstantiateBegin(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_UninstantiateBegin);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(93, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5D;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1560281088;
        }

        else
        {
          v31 = v13 | 0x5D000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_UninstantiateEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_UninstantiateEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(61, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49))
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x3D;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1023410176;
        }

        else
        {
          v31 = v13 | 0x3D000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_SetDeadline(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_SetDeadline);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(20, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v34;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49))
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x14;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v33 = v4;
                v18 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                v39 = v32;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v34 = xmmword_26C32DAD0;
                v35 = 1;
                v36 = 0;
                v37 = 0;
                v38 = 512;
                v19 = T_TracepointID.describe(state:)(&v34, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v32);
                MEMORY[0x26D69EAB0](v32, -1, -1);
                v22 = v18;
                v4 = v33;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
LABEL_36:
                    v5[14] = v9;
                    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_EndGraphUpdate);
                    ++v5[7];
                    return;
                  }

LABEL_45:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_41:
            swift_once();
            goto LABEL_18;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 335544320;
        }

        else
        {
          v31 = v13 | 0x14000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_40;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, unsigned __int8 a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(70, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1174405120;
    }

    else
    {
      v35 = v16 | 0x46000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_TransactionAppend(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v43 = v50;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v41, v43, v45);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_TransactionAppend);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 70;
  }

  else
  {
    v20 = 2118;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 21)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(69, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1157627904;
    }

    else
    {
      v35 = v16 | 0x45000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_TransactionEnqueue(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v43 = v50;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v41, v43, v45);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_TransactionEnqueue);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 69;
  }

  else
  {
    v20 = 2117;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 21)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v58 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v49[0] = -1;
    pthread_threadid_np(0, v49);
    v10 = v49[0];
    if (v49[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v49[0] != v2[8])
    {
      v2[8] = v49[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(84, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v49[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1409286144;
    }

    else
    {
      v35 = v16 | 0x54000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_AnimationBegin(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 40)
        {
          v43 = *(a1 + 16);
          v56[0] = *a1;
          v56[1] = v43;
          v57 = *(a1 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v54, v49);
            v44 = v51;
            v45 = __swift_project_boxed_opaque_existential_1(v49, v51);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v6, &type metadata for Trace.SwiftUI, v41, v44, v46);
            __swift_destroy_boxed_opaque_existential_1(v49);
            goto LABEL_54;
          }

          v55 = 0;
          memset(v54, 0, sizeof(v54));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v54, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_AnimationBegin);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 84;
  }

  else
  {
    v20 = 2132;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v48 = v5;
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v56[0] = v47;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v49 = xmmword_26C32DAD0;
      v50 = 1;
      v51 = 0;
      v52 = 0;
      v53 = 512;
      v24 = T_TracepointID.describe(state:)(v49, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v56);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D69EAB0](v47, -1, -1);
      v27 = v23;
      v5 = v48;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 57)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v58 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v49[0] = -1;
    pthread_threadid_np(0, v49);
    v10 = v49[0];
    if (v49[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v49[0] != v2[8])
    {
      v2[8] = v49[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(89, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v49[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1493172224;
    }

    else
    {
      v35 = v16 | 0x59000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_AnimationRetarget(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 40)
        {
          v43 = *(a1 + 16);
          v56[0] = *a1;
          v56[1] = v43;
          v57 = *(a1 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v54, v49);
            v44 = v51;
            v45 = __swift_project_boxed_opaque_existential_1(v49, v51);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v6, &type metadata for Trace.SwiftUI, v41, v44, v46);
            __swift_destroy_boxed_opaque_existential_1(v49);
            goto LABEL_54;
          }

          v55 = 0;
          memset(v54, 0, sizeof(v54));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v54, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_AnimationRetarget);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 89;
  }

  else
  {
    v20 = 2137;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v48 = v5;
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v56[0] = v47;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v49 = xmmword_26C32DAD0;
      v50 = 1;
      v51 = 0;
      v52 = 0;
      v53 = 512;
      v24 = T_TracepointID.describe(state:)(v49, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v56);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D69EAB0](v47, -1, -1);
      v27 = v23;
      v5 = v48;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 57)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(29, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 486539264;
    }

    else
    {
      v35 = v16 | 0x1D000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_GraphNeedsUpdate(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v43 = v50;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v41, v43, v45);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_GraphNeedsUpdate);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 29;
  }

  else
  {
    v20 = 2077;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 25)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(47, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 788529152;
    }

    else
    {
      v35 = v16 | 0x2F000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_NodeMarkValue(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v43 = v50;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v41, v43, v45);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_NodeMarkValue);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 47;
  }

  else
  {
    v20 = 2095;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 21)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t a1, unsigned __int8 a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_55;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(80, 1u, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1342177280;
    }

    else
    {
      v35 = v16 | 0x50000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_ActionEnqueue(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v43 = v50;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v41, v43, v45);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_ActionEnqueue);
LABEL_54:
    ++v6[7];
LABEL_55:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 80;
  }

  else
  {
    v20 = 2128;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 25)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v48[1] = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_51;
  }

  v5 = v2;
  if (*(v2[3] + 49) == 1)
  {
    goto LABEL_51;
  }

  v6 = a2;
  v7 = v2[14];
  if (!prepareTrace && (a2 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v8 = mach_continuous_time();
    }

    else
    {
      v8 = mach_absolute_time();
    }

    v7 = v8;
  }

  if (*(v2[3] + 49) == 1 && (v6 & 2) == 0)
  {
    v10 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v10 = 0;
  }

  v11 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v3 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(41, 1u, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v43;
  }

  v13 = v2[14];
  v14 = v7 - v13;
  v15 = v7 < v13;
  if (*(v2[3] + 49) != 1)
  {
    if (!v15)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
        v34 = 687865856;
      }

      else
      {
        v34 = v14 | 0x29000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v34, type metadata accessor for T_TracepointIDV0);
      v35 = a1;
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  if (v15)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
LABEL_26:
    v19 = readingDebugLog;
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v41 = v4;
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v21 = 134218498;
      *(v21 + 4) = v3;
      *(v21 + 12) = 2080;
      v43 = xmmword_26C32DAD0;
      v44 = 1;
      v45 = 0;
      v46 = 0;
      v47 = 512;
      v22 = T_TracepointID.describe(state:)(&v43, v6);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v48);

      *(v21 + 14) = v24;
      *(v21 + 22) = 1024;
      *(v21 + 24) = v10;
      _os_log_impl(&dword_26C161000, v19, v20, "w %ld: %s, back: %u", v21, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D69EAB0](v40, -1, -1);
      v25 = v21;
      v4 = v41;
      MEMORY[0x26D69EAB0](v25, -1, -1);
    }

    goto LABEL_28;
  }

  v3 = v2[7];
  if ((v6 & 1) != 0 && v14)
  {
    goto LABEL_54;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v4 = v17;
  LOBYTE(v11) = v16;
  if ((v6 & 2) != 0)
  {
    v18 = 41;
  }

  else
  {
    v18 = 2089;
  }

  v6 = v18 & 0xFFF00FFF | (v16 << 12);
  if (readingDebug)
  {
    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_28:
  v26 = v5[4];
  if (!*(v26 + 56))
  {
    __break(1u);
    goto LABEL_59;
  }

  if (*(v26 + 52) == 2)
  {
    goto LABEL_41;
  }

  v27 = *(v26 + 32);
  LODWORD(v28) = *(v26 + 48);
  v29 = v28 | (*(v26 + 52) << 32);
  if (v27)
  {
    v30 = *(v26 + 40) - v27;
    v31 = v30 < v28;
    v32 = v30 - v28;
    if (!v31)
    {
      if (v32 >= 25)
      {
        v33 = 4;
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  if (*(v26 + 48))
  {
    goto LABEL_57;
  }

LABEL_40:
  CircularBuffer.Transaction.commit()();
LABEL_41:
  v33 = CircularBuffer.Transaction.begin()() + 4;
  v28 = *(v26 + 48);
  v29 = v28 | (*(v26 + 52) << 32);
LABEL_42:
  if (BYTE4(v29) == 2)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(*(v26 + 32) + v28) = v6;
  *(v26 + 48) = v28 + 4;
  v36 = CircularBuffer.Transaction.write(size:)(v4, v11) + v33;
  if (!v10)
  {
    goto LABEL_48;
  }

  v35 = a1;
  if (*(v26 + 52) != 2)
  {
    v37 = *(v26 + 48);
    *(*(v26 + 32) + v37) = v10;
    *(v26 + 48) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_48:
    v35 = a1;
LABEL_49:
    v5[15] += v36;
LABEL_50:
    v5[14] = v7;
    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_NodeSetValueExtendedV0);
    ++v5[7];
LABEL_51:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_60:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t a1, uint64_t a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(81, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x51;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1358954496;
        }

        else
        {
          v31 = v13 | 0x51000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_ActionStart(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_ActionStart);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(82, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x52;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1375731712;
        }

        else
        {
          v31 = v13 | 0x52000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_ActionFinish(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_ActionFinish);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(83, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x53;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1392508928;
        }

        else
        {
          v31 = v13 | 0x53000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_ActionGestureAttribute(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v47 = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_ActionGestureAttribute);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(95, 1u, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v40;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5F;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v39 = v4;
                v18 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                *&v45[0] = v38;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v40 = xmmword_26C32DAD0;
                v41 = 1;
                v42 = 0;
                v43 = 0;
                v44 = 512;
                v19 = T_TracepointID.describe(state:)(&v40, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v45);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v38);
                MEMORY[0x26D69EAB0](v38, -1, -1);
                v22 = v18;
                v4 = v39;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 23)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1593835520;
        }

        else
        {
          v31 = v13 | 0x5F000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_RecordNamedProperty(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 6)
            {
              v47 = a1;
              v48 = a1 >> 16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v45, &v40);
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v40, v42);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for Trace.SwiftUI, v33, v35, v37);
                __swift_destroy_boxed_opaque_existential_1(&v40);
                goto LABEL_38;
              }

              v46 = 0;
              memset(v45, 0, sizeof(v45));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v45, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1 & 0xFFFFFFFFFFFFLL);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(__uint64_t a1, __int16 a2, unsigned __int8 a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v50[0] = a1;
  LOWORD(v50[1]) = a2;
  if (*v3 != 1)
  {
    goto LABEL_55;
  }

  v6 = v3;
  if ((*(v3[3] + 49) & 1) == 0)
  {
    goto LABEL_55;
  }

  v7 = a1;
  v8 = a3;
  v9 = *(v50 + 2);
  v10 = v3[14];
  if ((a3 & 4) == 0)
  {
    v50[0] = -1;
    pthread_threadid_np(0, v50);
    v11 = v50[0];
    if (v50[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v3[9] & 1) != 0 || v50[0] != v3[8])
    {
      v3[8] = v50[0];
      *(v3 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v11);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v12 = mach_continuous_time();
    }

    else
    {
      v12 = mach_absolute_time();
    }

    v10 = v12;
  }

  if (*(v3[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v4 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v4 = 0;
  }

  v5 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v14 = v3[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v3 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(72, 1u, v14, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v50[0];
  }

  v16 = v6[14];
  v17 = v10 - v16;
  v18 = v10 < v16;
  if (*(v6[3] + 49) != 1)
  {
    if (v18)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v17 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
      v36 = 1207959552;
    }

    else
    {
      v36 = v17 | 0x48000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v36, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v10;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_ViewGraphRootValueChangeV2(0);
      v42 = v41;
      v43 = swift_conformsToProtocol2();
      if (v43)
      {
        if (v42 && (*(v43 + 24))(v42, v43) != 10)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v55, v50);
            v44 = v52;
            v45 = __swift_project_boxed_opaque_existential_1(v50, v52);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v6, &type metadata for Trace.SwiftUI, v42, v44, v46);
            __swift_destroy_boxed_opaque_existential_1(v50);
            goto LABEL_54;
          }

          v56 = 0;
          memset(v55, 0, sizeof(v55));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v55, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    LOWORD(v50[0]) = v7;
    *(v50 + 2) = v9;
    specialized Trace_Handle.write<A>(struct:)(v50[0], SHIWORD(v9));
LABEL_54:
    ++v6[7];
LABEL_55:
    v40 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v3 = v6[7];
  if ((v8 & 1) != 0 && v17)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v49 = v20;
  LOBYTE(v5) = v19;
  if ((v8 & 2) != 0)
  {
    v21 = 72;
  }

  else
  {
    v21 = 2120;
  }

  v8 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v48 = v9;
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v55[0] = v47;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v50 = xmmword_26C32DAD0;
      v51 = 1;
      v52 = 0;
      v53 = 0;
      v54 = 512;
      v25 = T_TracepointID.describe(state:)(v50, v8);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v55);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v4;
      _os_log_impl(&dword_26C161000, v22, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D69EAB0](v47, -1, -1);
      v28 = v24;
      v9 = v48;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_33:
    v3 = v6[4];
    if (!v3[7])
    {
      break;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_46;
    }

    v29 = v3[4];
    LODWORD(v30) = *(v3 + 12);
    v31 = v30 | (*(v3 + 52) << 32);
    if (!v29)
    {
      if (*(v3 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v35 = CircularBuffer.Transaction.begin()() + 4;
      v30 = *(v3 + 12);
      v31 = v30 | (*(v3 + 52) << 32);
      goto LABEL_47;
    }

    v32 = v3[5] - v29;
    v33 = v32 < v30;
    v34 = v32 - v30;
    if (v33)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v34 < 27)
    {
      goto LABEL_45;
    }

    v35 = 4;
LABEL_47:
    if (BYTE4(v31) == 2)
    {
      goto LABEL_71;
    }

    *(v3[4] + v30) = v8;
    *(v3 + 12) = v30 + 4;
    v37 = CircularBuffer.Transaction.write(size:)(v49, v5) + v35;
    if (!v4)
    {
      goto LABEL_51;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_72;
    }

    v38 = *(v3 + 12);
    *(v3[4] + v38) = v4;
    *(v3 + 12) = v38 + 4;
    v39 = __OFADD__(v37, 4);
    v37 += 4;
    if (!v39)
    {
LABEL_51:
      v6[15] += v37;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, int a2, uint64_t a3)
{
  *&v42 = a1;
  DWORD2(v42) = a2;
  if (*v3 == 1)
  {
    v6 = v3;
    v7 = v3[3];
    if (*(v7 + 49))
    {
      v8 = a1;
      v9 = *(&v42 + 4);
      v10 = v3[14];
      if (prepareTrace)
      {
        v11 = v3[14];
      }

      else
      {
        v11 = v3[14];
        if ((a3 & 1) == 0)
        {
          v12 = a3;
          if (kdebug_using_continuous_time())
          {
            v13 = mach_continuous_time();
          }

          else
          {
            v13 = mach_absolute_time();
          }

          v11 = v13;
          a3 = v12;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v4 = v6[7];
        v5 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v42 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(87, 1u, v4, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v42;

        LOBYTE(a3) = v5;
      }

      v15 = v11 - v10;
      if (*(v7 + 49) == 1)
      {
        if (v11 >= v10)
        {
          v4 = v6[7];
          if ((a3 & 1) == 0 || !v15)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v5 = v16;
            LOBYTE(v7) = v17;
            LODWORD(v10) = (v17 << 12) | 0x57;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v18 = readingDebugLog;
              v19 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v18, v19))
              {
                v41 = v5;
                v20 = swift_slowAlloc();
                v40 = swift_slowAlloc();
                *&v47[0] = v40;
                *v20 = 134218498;
                *(v20 + 4) = v4;
                *(v20 + 12) = 2080;
                v42 = xmmword_26C32DAD0;
                v43 = 1;
                v44 = 0;
                v45 = 0;
                v46 = 512;
                v21 = T_TracepointID.describe(state:)(&v42, v10);
                v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v47);

                *(v20 + 14) = v23;
                *(v20 + 22) = 1024;
                *(v20 + 24) = 0;
                _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v40);
                MEMORY[0x26D69EAB0](v40, -1, -1);
                v24 = v20;
                v5 = v41;
                MEMORY[0x26D69EAB0](v24, -1, -1);
              }

LABEL_20:
              v25 = v6[4];
              if (*(v25 + 56))
              {
                if (*(v25 + 52) == 2)
                {
LABEL_33:
                  v32 = CircularBuffer.Transaction.begin()() + 4;
                  v27 = *(v25 + 48);
                  v28 = v27 | (*(v25 + 52) << 32);
LABEL_34:
                  if (BYTE4(v28) != 2)
                  {
                    *(*(v25 + 32) + v27) = v10;
                    *(v25 + 48) = v27 + 4;
                    v6[15] += CircularBuffer.Transaction.write(size:)(v5, v7) + v32;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v26 = *(v25 + 32);
                LODWORD(v27) = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
                if (v26)
                {
                  v29 = *(v25 + 40) - v26;
                  v30 = v29 < v27;
                  v31 = v29 - v27;
                  if (!v30)
                  {
                    if (v31 >= 29)
                    {
                      v32 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v25 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v11 >= v10)
      {
        if (v15 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
          v33 = 1459617792;
        }

        else
        {
          v33 = v15 | 0x57000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v6[14] = v11;
        if ((*(v6[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationScheduleTick(0);
          v35 = v34;
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            if (v35 && (*(v36 + 24))(v35, v36) != 12)
            {
              v49 = v8;
              v50 = v9;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v47, &v42);
                v37 = v44;
                v38 = __swift_project_boxed_opaque_existential_1(&v42, v44);
                v39 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v38, v6, &type metadata for Trace.SwiftUI, v35, v37, v39);
                __swift_destroy_boxed_opaque_existential_1(&v42);
                goto LABEL_38;
              }

              v48 = 0;
              memset(v47, 0, sizeof(v47));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v47, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        LODWORD(v42) = v8;
        *(&v42 + 4) = v9;
        specialized Trace_Handle.write<A>(struct:)(v42, SHIDWORD(v9));
LABEL_38:
        ++v6[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, char a2, uint64_t a3)
{
  *&v42 = a1;
  BYTE8(v42) = a2;
  if (*v3 == 1)
  {
    v6 = v3;
    v7 = v3[3];
    if (*(v7 + 49))
    {
      v8 = a1;
      v9 = *(&v42 + 1);
      v10 = v3[14];
      if (prepareTrace)
      {
        v11 = v3[14];
      }

      else
      {
        v11 = v3[14];
        if ((a3 & 1) == 0)
        {
          v12 = a3;
          if (kdebug_using_continuous_time())
          {
            v13 = mach_continuous_time();
          }

          else
          {
            v13 = mach_absolute_time();
          }

          v11 = v13;
          a3 = v12;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v4 = v6[7];
        v5 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v42 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(88, 1u, v4, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v42;

        LOBYTE(a3) = v5;
      }

      v15 = v11 - v10;
      if (*(v7 + 49) == 1)
      {
        if (v11 >= v10)
        {
          v4 = v6[7];
          if ((a3 & 1) == 0 || !v15)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v5 = v16;
            LOBYTE(v7) = v17;
            LODWORD(v10) = (v17 << 12) | 0x58;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v18 = readingDebugLog;
              v19 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v18, v19))
              {
                v41 = v5;
                v20 = swift_slowAlloc();
                v40 = swift_slowAlloc();
                *&v47[0] = v40;
                *v20 = 134218498;
                *(v20 + 4) = v4;
                *(v20 + 12) = 2080;
                v42 = xmmword_26C32DAD0;
                v43 = 1;
                v44 = 0;
                v45 = 0;
                v46 = 512;
                v21 = T_TracepointID.describe(state:)(&v42, v10);
                v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v47);

                *(v20 + 14) = v23;
                *(v20 + 22) = 1024;
                *(v20 + 24) = 0;
                _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v40);
                MEMORY[0x26D69EAB0](v40, -1, -1);
                v24 = v20;
                v5 = v41;
                MEMORY[0x26D69EAB0](v24, -1, -1);
              }

LABEL_20:
              v25 = v6[4];
              if (*(v25 + 56))
              {
                if (*(v25 + 52) == 2)
                {
LABEL_33:
                  v32 = CircularBuffer.Transaction.begin()() + 4;
                  v27 = *(v25 + 48);
                  v28 = v27 | (*(v25 + 52) << 32);
LABEL_34:
                  if (BYTE4(v28) != 2)
                  {
                    *(*(v25 + 32) + v27) = v10;
                    *(v25 + 48) = v27 + 4;
                    v6[15] += CircularBuffer.Transaction.write(size:)(v5, v7) + v32;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v26 = *(v25 + 32);
                LODWORD(v27) = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
                if (v26)
                {
                  v29 = *(v25 + 40) - v26;
                  v30 = v29 < v27;
                  v31 = v29 - v27;
                  if (!v30)
                  {
                    if (v31 >= 26)
                    {
                      v32 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v25 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v11 >= v10)
      {
        if (v15 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
          v33 = 1476395008;
        }

        else
        {
          v33 = v15 | 0x58000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v6[14] = v11;
        if ((*(v6[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationTick(0);
          v35 = v34;
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            if (v35 && (*(v36 + 24))(v35, v36) != 9)
            {
              v49 = v8;
              v50 = v9;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v47, &v42);
                v37 = v44;
                v38 = __swift_project_boxed_opaque_existential_1(&v42, v44);
                v39 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v38, v6, &type metadata for Trace.SwiftUI, v35, v37, v39);
                __swift_destroy_boxed_opaque_existential_1(&v42);
                goto LABEL_38;
              }

              v48 = 0;
              memset(v47, 0, sizeof(v47));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v47, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        LOBYTE(v42) = v8;
        *(&v42 + 1) = v9;
        specialized Trace_Handle.write<A>(struct:)(v42, SHIBYTE(v9));
LABEL_38:
        ++v6[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, int a2, __int128 *a3)
{
  if (*v3 == 1)
  {
    v5 = v3;
    v6 = *(v3 + 3);
    if (*(v6 + 49) != 1)
    {
      v9 = *(v3 + 14);
      if (prepareTrace)
      {
        v10 = *(v3 + 14);
      }

      else
      {
        v10 = *(v3 + 14);
        if ((a3 & 1) == 0)
        {
          v3 = a3;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v10 = v11;
          a3 = v3;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v12 = *(v5 + 7);
        v4 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v35 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        v3 = &v35;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(20, 1u, v12, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v35;

        LOBYTE(a3) = v4;
      }

      v14 = v10 - v9;
      if (*(v6 + 49))
      {
        if (v10 >= v9)
        {
          v3 = *(v5 + 7);
          if ((a3 & 1) == 0 || !v14)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v15;
            LOBYTE(v6) = v16;
            LODWORD(v9) = (v16 << 12) | 0x14;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v17 = readingDebugLog;
              v18 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v17, v18))
              {
                v34 = v4;
                v19 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v40 = v33;
                *v19 = 134218498;
                *(v19 + 4) = v3;
                *(v19 + 12) = 2080;
                v35 = xmmword_26C32DAD0;
                v36 = 1;
                v37 = 0;
                v38 = 0;
                v39 = 512;
                v20 = T_TracepointID.describe(state:)(&v35, v9);
                v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

                *(v19 + 14) = v22;
                *(v19 + 22) = 1024;
                *(v19 + 24) = 0;
                _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v33);
                MEMORY[0x26D69EAB0](v33, -1, -1);
                v23 = v19;
                v4 = v34;
                MEMORY[0x26D69EAB0](v23, -1, -1);
              }

LABEL_20:
              v24 = *(v5 + 4);
              if (*(v24 + 56))
              {
                if (*(v24 + 52) == 2)
                {
LABEL_33:
                  v31 = CircularBuffer.Transaction.begin()() + 4;
                  v26 = *(v24 + 48);
                  v27 = v26 | (*(v24 + 52) << 32);
LABEL_34:
                  if (BYTE4(v27) != 2)
                  {
                    *(*(v24 + 32) + v26) = v9;
                    *(v24 + 48) = v26 + 4;
                    *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v4, v6) + v31;
LABEL_36:
                    *(v5 + 14) = v10;
                    specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_EndGraphUpdateV0);
                    ++*(v5 + 7);
                    return;
                  }

LABEL_45:
                  __break(1u);
                  return;
                }

                v25 = *(v24 + 32);
                LODWORD(v26) = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
                if (v25)
                {
                  v28 = *(v24 + 40) - v25;
                  v29 = v28 < v26;
                  v30 = v28 - v26;
                  if (!v29)
                  {
                    if (v30 >= 29)
                    {
                      v31 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v24 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_41:
            swift_once();
            goto LABEL_18;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        __break(1u);
      }

      else if (v10 >= v9)
      {
        if (v14 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
          v32 = 335544320;
        }

        else
        {
          v32 = v14 | 0x14000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_40;
    }
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v6 = *(v3 + 3);
    if (*(v6 + 49) != 1)
    {
      v9 = *(v3 + 14);
      if (prepareTrace)
      {
        v10 = *(v3 + 14);
      }

      else
      {
        v10 = *(v3 + 14);
        if ((a3 & 1) == 0)
        {
          v3 = a3;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v10 = v11;
          a3 = v3;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v12 = *(v5 + 7);
        v4 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v35 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        v3 = &v35;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(29, 1u, v12, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v35;

        LOBYTE(a3) = v4;
      }

      v14 = v10 - v9;
      if (*(v6 + 49) == 1)
      {
        if (v10 >= v9)
        {
          v3 = *(v5 + 7);
          if ((a3 & 1) == 0 || !v14)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v15;
            LOBYTE(v6) = v16;
            LODWORD(v9) = (v16 << 12) | 0x1D;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v17 = readingDebugLog;
              v18 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v17, v18))
              {
                v34 = v4;
                v19 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v40 = v33;
                *v19 = 134218498;
                *(v19 + 4) = v3;
                *(v19 + 12) = 2080;
                v35 = xmmword_26C32DAD0;
                v36 = 1;
                v37 = 0;
                v38 = 0;
                v39 = 512;
                v20 = T_TracepointID.describe(state:)(&v35, v9);
                v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

                *(v19 + 14) = v22;
                *(v19 + 22) = 1024;
                *(v19 + 24) = 0;
                _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v33);
                MEMORY[0x26D69EAB0](v33, -1, -1);
                v23 = v19;
                v4 = v34;
                MEMORY[0x26D69EAB0](v23, -1, -1);
              }

LABEL_20:
              v24 = *(v5 + 4);
              if (*(v24 + 56))
              {
                if (*(v24 + 52) == 2)
                {
LABEL_33:
                  v31 = CircularBuffer.Transaction.begin()() + 4;
                  v26 = *(v24 + 48);
                  v27 = v26 | (*(v24 + 52) << 32);
LABEL_34:
                  if (BYTE4(v27) != 2)
                  {
                    *(*(v24 + 32) + v26) = v9;
                    *(v24 + 48) = v26 + 4;
                    *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v4, v6) + v31;
LABEL_36:
                    *(v5 + 14) = v10;
                    specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_GraphNeedsUpdateV0);
                    ++*(v5 + 7);
                    return;
                  }

LABEL_45:
                  __break(1u);
                  return;
                }

                v25 = *(v24 + 32);
                LODWORD(v26) = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
                if (v25)
                {
                  v28 = *(v24 + 40) - v25;
                  v29 = v28 < v26;
                  v30 = v28 - v26;
                  if (!v29)
                  {
                    if (v30 >= 29)
                    {
                      v31 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v24 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_41:
            swift_once();
            goto LABEL_18;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        __break(1u);
      }

      else if (v10 >= v9)
      {
        if (v14 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
          v32 = 486539264;
        }

        else
        {
          v32 = v14 | 0x1D000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_40;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t a1, unint64_t a2, unint64_t a3, __int128 *a4)
{
  if (*v4 == 1)
  {
    v5 = v4;
    v6 = *(v4 + 3);
    if (*(v6 + 49))
    {
      v10 = *(v4 + 14);
      if (prepareTrace)
      {
        v11 = *(v4 + 14);
      }

      else
      {
        v11 = *(v4 + 14);
        if ((a4 & 1) == 0)
        {
          v4 = a4;
          if (kdebug_using_continuous_time())
          {
            v12 = mach_continuous_time();
          }

          else
          {
            v12 = mach_absolute_time();
          }

          v11 = v12;
          LOBYTE(a4) = v4;
        }
      }

      v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      if (tracepointAssertion.value._rawValue)
      {
        v14 = *(v5 + 7);
        v46 = a1;
        v15 = a2;
        v16 = a3;
        v17 = v11;
        v18 = a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v48 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        v4 = &v48;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(63, 1u, v14, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v48;

        LOBYTE(a4) = v18;
        v11 = v17;
        a3 = v16;
        a2 = v15;
        a1 = v46;
      }

      v20 = v11 - v10;
      if (*(v6 + 49))
      {
        if (v11 >= v10)
        {
          v4 = *(v5 + 7);
          if ((a4 & 1) == 0 || !v20)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v13 = v21;
            LOBYTE(v6) = v22;
            LODWORD(v10) = (v22 << 12) | 0x3F;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v23 = readingDebugLog;
              v47 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v23, v47))
              {
                log = v23;
                v24 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                *&v53[0] = v43;
                *v24 = 134218498;
                *(v24 + 4) = v4;
                *(v24 + 12) = 2080;
                v48 = xmmword_26C32DAD0;
                v49 = 1;
                v50 = 0;
                v51 = 0;
                v52 = 512;
                v25 = T_TracepointID.describe(state:)(&v48, v10);
                v45 = v6;
                v6 = v13;
                v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v53);

                *(v24 + 14) = v27;
                v13 = v6;
                *(v24 + 22) = 1024;
                *(v24 + 24) = 0;
                LOBYTE(v6) = v45;
                _os_log_impl(&dword_26C161000, log, v47, "w %ld: %s, back: %u", v24, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v43);
                MEMORY[0x26D69EAB0](v43, -1, -1);
                MEMORY[0x26D69EAB0](v24, -1, -1);
              }

LABEL_20:
              v28 = *(v5 + 4);
              if (*(v28 + 56))
              {
                if (*(v28 + 52) == 2)
                {
LABEL_33:
                  v35 = CircularBuffer.Transaction.begin()() + 4;
                  v30 = *(v28 + 48);
                  v31 = v30 | (*(v28 + 52) << 32);
LABEL_34:
                  if (BYTE4(v31) != 2)
                  {
                    *(*(v28 + 32) + v30) = v10;
                    *(v28 + 48) = v30 + 4;
                    *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v6) + v35;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v29 = *(v28 + 32);
                LODWORD(v30) = *(v28 + 48);
                v31 = v30 | (*(v28 + 52) << 32);
                if (v29)
                {
                  v32 = *(v28 + 40) - v29;
                  v33 = v32 < v30;
                  v34 = v32 - v30;
                  if (!v33)
                  {
                    if (v34 >= 41)
                    {
                      v35 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v28 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v11 >= v10)
      {
        if (v20 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
          v36 = 1056964608;
        }

        else
        {
          v36 = v20 | 0x3F000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v36, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        *(v5 + 14) = v11;
        if ((*(*(v5 + 3) + 49) & 1) == 0)
        {
          type metadata accessor for T_CompareFailed(0);
          v38 = v37;
          v39 = swift_conformsToProtocol2();
          if (v39)
          {
            if (v38 && (*(v39 + 24))(v38, v39) != 24)
            {
              v55 = a1;
              v56 = a2;
              v57 = a3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v53, &v48);
                v40 = v50;
                v41 = __swift_project_boxed_opaque_existential_1(&v48, v50);
                v42 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v41, v5, &type metadata for Trace.SwiftUI, v38, v40, v42);
                __swift_destroy_boxed_opaque_existential_1(&v48);
                goto LABEL_38;
              }

              v54 = 0;
              memset(v53, 0, sizeof(v53));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(a1, a2, a3);
LABEL_38:
        ++*(v5 + 7);
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

double protocol witness for Interpreter_Handle.init() in conformance TestingSupport.TraceHandle@<D0>(_OWORD *a1@<X8>)
{
  Trace_Handle_Storage.init()(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double protocol witness for static Trace_Handle.types.getter in conformance TestingSupport.TraceHandle@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_26C32F2A0;
  *(v2 + 32) = &type metadata for TestingSupport.TestEvent;
  *(v2 + 40) = &protocol witness table for TestingSupport.TestEvent;
  *(v2 + 48) = &type metadata for TestingSupport.TestEventWBacktrace;
  *(v2 + 56) = &protocol witness table for TestingSupport.TestEventWBacktrace;
  *a1 = v2;
  return result;
}

void ReferenceAccessor<>.doWriteTest(opt:bigTest:)(char a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 30000000;
  }

  else
  {
    v3 = 100000;
  }

  type metadata accessor for OS_os_log();
  v4 = OS_os_log.init(subsystem:category:)();
  info = 0;
  mach_timebase_info(&info);
  mach_absolute_time();
  if (info.denom)
  {
    while (1)
    {
LABEL_7:
      if (a1)
      {
        v6 = 0;
        pthread_threadid_np(0, &v6);
        if ((a1 & 2) != 0)
        {
LABEL_12:
          mach_absolute_time();
          if ((a1 & 4) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      else if ((a1 & 2) != 0)
      {
        goto LABEL_12;
      }

      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      specialized Trace_Handle.write<A>(_:omit:)(0);
      if (!--v3)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_6:
  specialized Trace_Handle.write<A>(_:omit:)();
  if (--v3)
  {
    goto LABEL_7;
  }

LABEL_14:
  mach_absolute_time();

  if (!info.denom)
  {
    __break(1u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t specialized Trace_Handle.writtenBacktrace()()
{
  v1 = type metadata accessor for SHA256();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  backtrace()();
  v44 = v19;
  v45 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v5 + 56);
  v24(v17, 1, 1, v4);
  v25 = *(v0 + 24);
  if (*(v25 + 49) != 1 || (*(v25 + 1) & 1) == 0)
  {
    goto LABEL_9;
  }

  result = SHA256.init()();
  if (v21 < 0)
  {
    __break(1u);
  }

  else if ((v21 * v23) >> 64 == (v21 * v23) >> 63)
  {
    v39 = v0;
    MEMORY[0x26D69C930](v45, &v45[v21 * v23]);
    SHA256.finalize()();
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v17, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    (*(v5 + 16))(v17, v9, v4);
    v24(v17, 0, 1, v4);
    v27 = v9;
    v28 = v39;
    v29 = **(v39 + 104);
    if (*(v29 + 16))
    {
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v31)
      {
        v32 = *(*(v29 + 56) + 4 * v30);
        (*(v5 + 8))(v27, v4);
        (*(v40 + 8))(v43, v41);
        goto LABEL_12;
      }
    }

    (*(v5 + 8))(v9, v4);
    (*(v40 + 8))(v43, v41);
    v0 = v28;
LABEL_9:
    v32 = specialized Trace_Handle.write<A>(attachment:)(v45, v21, v44, v23);
    outlined init with copy of SHA256Digest?(v17, v15);
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v17, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      v33 = v15;
LABEL_13:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v33, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      return v32;
    }

    v34 = v42;
    (*(v5 + 32))(v42, v15, v4);
    v35 = *(v0 + 104);
    v36 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v35;
    *v35 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v34, isUniquelyReferenced_nonNull_native);
    v38 = *v35;
    *v35 = v46;

    (*(v5 + 8))(v34, v4);
LABEL_12:
    v33 = v17;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  v1 = type metadata accessor for SHA256();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  backtrace()();
  v44 = v19;
  v45 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v5 + 56);
  v24(v17, 1, 1, v4);
  v25 = *(v0 + 24);
  if (*(v25 + 49) != 1 || (*(v25 + 1) & 1) == 0)
  {
    goto LABEL_9;
  }

  result = SHA256.init()();
  if (v21 < 0)
  {
    __break(1u);
  }

  else if ((v21 * v23) >> 64 == (v21 * v23) >> 63)
  {
    v39 = v0;
    MEMORY[0x26D69C930](v45, v45 + v21 * v23);
    SHA256.finalize()();
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v17, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    (*(v5 + 16))(v17, v9, v4);
    v24(v17, 0, 1, v4);
    v27 = v9;
    v28 = v39;
    v29 = **(v39 + 104);
    if (*(v29 + 16))
    {
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v31)
      {
        v32 = *(*(v29 + 56) + 4 * v30);
        (*(v5 + 8))(v27, v4);
        (*(v40 + 8))(v43, v41);
        goto LABEL_12;
      }
    }

    (*(v5 + 8))(v9, v4);
    (*(v40 + 8))(v43, v41);
    v0 = v28;
LABEL_9:
    v32 = specialized Trace_Handle.write<A>(attachment:)(v45, v21, v44, v23);
    outlined init with copy of SHA256Digest?(v17, v15);
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v17, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      v33 = v15;
LABEL_13:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v33, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      return v32;
    }

    v34 = v42;
    (*(v5 + 32))(v42, v15, v4);
    v35 = *(v0 + 104);
    v36 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v35;
    *v35 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v34, isUniquelyReferenced_nonNull_native);
    v38 = *v35;
    *v35 = v46;

    (*(v5 + 8))(v34, v4);
LABEL_12:
    v33 = v17;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, unint64_t a2, int a3)
{
  v4 = v3;
  v6 = a2;
  v7 = result;
  v8 = HIDWORD(result);
  v9 = HIDWORD(a2);
  if (readingDebug)
  {
    v10 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v11 = readingDebugLog;
    v12 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v11, v12);
    if (result)
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v13 = 134218242;
      *(v13 + 4) = v10;
      *(v13 + 12) = 2080;
      type metadata accessor for T_ModeDecl(0);
      v14 = String.init<A>(describing:)();
      log = v11;
      v16 = v9;
      v17 = v8;
      v18 = a3;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

      *(v13 + 14) = v19;
      a3 = v18;
      LODWORD(v8) = v17;
      LODWORD(v9) = v16;
      _os_log_impl(&dword_26C161000, log, v12, "w %ld: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D69EAB0](v30, -1, -1);
      result = MEMORY[0x26D69EAB0](v13, -1, -1);
    }
  }

  v20 = *(v4 + 32);
  if (!*(v20 + 56))
  {
    goto LABEL_19;
  }

  if (*(v20 + 52) != 2)
  {
    v21 = *(v20 + 32);
    LODWORD(v22) = *(v20 + 48);
    v23 = v22 | (*(v20 + 52) << 32);
    if (v21)
    {
      v24 = *(v20 + 40) - v21;
      v25 = v24 < v22;
      v26 = v24 - v22;
      if (!v25)
      {
        if (v26 >= 20)
        {
          v27 = 20;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v20 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v27 = result + 20;
  v22 = *(v20 + 48);
  v23 = v22 | (*(v20 + 52) << 32);
LABEL_15:
  if (BYTE4(v23) != 2)
  {
    v28 = (*(v20 + 32) + v22);
    *v28 = v7;
    v28[1] = v8;
    v28[2] = v6;
    v28[3] = v9;
    v28[4] = a3;
    *(v20 + 48) = v22 + 20;
    *(v4 + 120) += v27;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      v22 = *v3;
      v23 = *(v3 + 16);
      v24 = *(v3 + 32);
      type metadata accessor for T_TypeDecl(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 36)
        {
          v19 = 36;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 36;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    v20 = *(v12 + 32) + v14;
    v21 = *(v3 + 16);
    *v20 = *v3;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(v3 + 32);
    *(v12 + 48) = v14 + 36;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      type metadata accessor for T_TracepointIDV0(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 4)
        {
          v19 = 4;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 4;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    *(*(v12 + 32) + v14) = v3;
    *(v12 + 48) = v14 + 4;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      type metadata accessor for T_ExecutionContext(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 8)
        {
          v19 = 8;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 8;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    *(*(v12 + 32) + v14) = v3;
    *(v12 + 48) = v14 + 8;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      v22 = *v3;
      v23 = *(v3 + 16);
      v24 = *(v3 + 32);
      v25 = *(v3 + 48);
      v26 = v8;
      type metadata accessor for T_Header(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 56)
        {
          v19 = 56;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 56;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    v20 = *(v12 + 32) + v14;
    v21 = *(v3 + 16);
    *v20 = *v3;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(v3 + 32);
    *(v20 + 48) = *(v3 + 48);
    *(v12 + 48) = v14 + 56;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  if (readingDebug)
  {
    v3 = result;
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      v3(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 48) | (*(v12 + 52) << 32);
  if ((v13 & 0xFF00000000) == 0x200000000)
  {
    result = CircularBuffer.Transaction.begin()();
    v13 = *(v12 + 48) | (*(v12 + 52) << 32);
    goto LABEL_14;
  }

  v14 = *(v12 + 32);
  if (!v14)
  {
LABEL_12:
    if (!v13)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v12 + 52);
  if (*(v12 + 40) - v14 < *(v12 + 48))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  result = 0;
LABEL_14:
  if ((v13 & 0xFF00000000) != 0x200000000)
  {
    *(v2 + 120) += result;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = HIDWORD(result);
  if (readingDebug)
  {
    v5 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v6 = readingDebugLog;
    v7 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v6, v7);
    if (result)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2080;
      type metadata accessor for T_AnyAttachmentV0(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26C161000, v6, v7, "w %ld: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69EAB0](v9, -1, -1);
      result = MEMORY[0x26D69EAB0](v8, -1, -1);
    }
  }

  v13 = *(v2 + 32);
  if (!*(v13 + 56))
  {
    goto LABEL_19;
  }

  if (*(v13 + 52) != 2)
  {
    v14 = *(v13 + 32);
    LODWORD(v15) = *(v13 + 48);
    v16 = v15 | (*(v13 + 52) << 32);
    if (v14)
    {
      v17 = *(v13 + 40) - v14;
      v18 = v17 < v15;
      v19 = v17 - v15;
      if (!v18)
      {
        if (v19 >= 8)
        {
          v20 = 8;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v13 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v20 = result + 8;
  v15 = *(v13 + 48);
  v16 = v15 | (*(v13 + 52) << 32);
LABEL_15:
  if (BYTE4(v16) != 2)
  {
    v21 = (*(v13 + 32) + v15);
    *v21 = v3;
    v21[1] = v4;
    *(v13 + 48) = v15 + 8;
    *(v2 + 120) += v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  v4 = result >> 16;
  if (readingDebug)
  {
    v5 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v6 = readingDebugLog;
    v7 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v6, v7);
    if (result)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2080;
      type metadata accessor for T_RecordNamedProperty(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26C161000, v6, v7, "w %ld: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69EAB0](v9, -1, -1);
      result = MEMORY[0x26D69EAB0](v8, -1, -1);
    }
  }

  v13 = *(v2 + 32);
  if (!*(v13 + 56))
  {
    goto LABEL_19;
  }

  if (*(v13 + 52) != 2)
  {
    v14 = *(v13 + 32);
    LODWORD(v15) = *(v13 + 48);
    v16 = v15 | (*(v13 + 52) << 32);
    if (v14)
    {
      v17 = *(v13 + 40) - v14;
      v18 = v17 < v15;
      v19 = v17 - v15;
      if (!v18)
      {
        if (v19 >= 6)
        {
          v20 = 6;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v13 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v20 = result + 6;
  v15 = *(v13 + 48);
  v16 = v15 | (*(v13 + 52) << 32);
LABEL_15:
  if (BYTE4(v16) != 2)
  {
    v21 = *(v13 + 32) + v15;
    *v21 = v3;
    *(v21 + 2) = v4;
    *(v13 + 48) = v15 + 6;
    *(v2 + 120) += v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  v4 = HIDWORD(result);
  if (readingDebug)
  {
    v5 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v6 = readingDebugLog;
    v7 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v6, v7);
    if (result)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2080;
      type metadata accessor for T_EndNodeUpdate(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26C161000, v6, v7, "w %ld: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69EAB0](v9, -1, -1);
      result = MEMORY[0x26D69EAB0](v8, -1, -1);
    }
  }

  v13 = *(v2 + 32);
  if (!*(v13 + 56))
  {
    goto LABEL_19;
  }

  if (*(v13 + 52) != 2)
  {
    v14 = *(v13 + 32);
    LODWORD(v15) = *(v13 + 48);
    v16 = v15 | (*(v13 + 52) << 32);
    if (v14)
    {
      v17 = *(v13 + 40) - v14;
      v18 = v17 < v15;
      v19 = v17 - v15;
      if (!v18)
      {
        if (v19 >= 6)
        {
          v20 = 6;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v13 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v20 = result + 6;
  v15 = *(v13 + 48);
  v16 = v15 | (*(v13 + 52) << 32);
LABEL_15:
  if (BYTE4(v16) != 2)
  {
    v21 = *(v13 + 32) + v15;
    *v21 = v3;
    *(v21 + 4) = v4;
    *(v13 + 48) = v15 + 6;
    *(v2 + 120) += v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

void specialized Trace_Handle.write<A>(struct:)()
{
  v1 = v0;
  if (readingDebug)
  {
    v2 = *(v0 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v3 = readingDebugLog;
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 134218242;
      *(v5 + 4) = v2;
      *(v5 + 12) = 2080;
      v7 = String.init<A>(describing:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_26C161000, v3, v4, "w %ld: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x26D69EAB0](v6, -1, -1);
      MEMORY[0x26D69EAB0](v5, -1, -1);
    }
  }

  v10 = *(v1 + 32);
  if (!*(v10 + 56))
  {
    goto LABEL_17;
  }

  v11 = *(v10 + 48) | (*(v10 + 52) << 32);
  if ((v11 & 0xFF00000000) == 0x200000000)
  {
    v12 = CircularBuffer.Transaction.begin()();
    v11 = *(v10 + 48) | (*(v10 + 52) << 32);
    goto LABEL_14;
  }

  v13 = *(v10 + 32);
  if (!v13)
  {
LABEL_12:
    if (!v11)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v10 + 52);
  if (*(v10 + 40) - v13 < *(v10 + 48))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v12 = 0;
LABEL_14:
  if ((v11 & 0xFF00000000) != 0x200000000)
  {
    *(v1 + 120) += v12;
    return;
  }

LABEL_18:
  __break(1u);
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v6 = HIDWORD(result);
  v7 = HIDWORD(a2);
  if (readingDebug)
  {
    v8 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v9 = readingDebugLog;
    v10 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v11 = 134218242;
      *(v11 + 4) = v8;
      *(v11 + 12) = 2080;
      type metadata accessor for T_KeypathDecl(0);
      v12 = String.init<A>(describing:)();
      v14 = v6;
      v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

      *(v11 + 14) = v6;
      LODWORD(v6) = v14;
      _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D69EAB0](v24, -1, -1);
      result = MEMORY[0x26D69EAB0](v11, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 16)
        {
          v22 = 16;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 16;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = (*(v15 + 32) + v17);
    *v23 = v5;
    v23[1] = v6;
    v23[2] = v4;
    v23[3] = v7;
    *(v15 + 48) = v17 + 16;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v6 = a2 >> 16;
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      type metadata accessor for T_HeaderV0(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 14)
        {
          v22 = 14;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 14;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v5;
    *(v23 + 8) = v4;
    *(v23 + 10) = v6;
    *(v15 + 48) = v17 + 14;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = result;
  *&v25 = result;
  *(&v25 + 1) = a2;
  v5 = *(&v25 + 4);
  v6 = HIDWORD(a2);
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      LODWORD(v25) = v4;
      *(&v25 + 4) = v5;
      HIDWORD(v25) = v6;
      type metadata accessor for T_IndirectNodeAdded(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 16)
        {
          v22 = 16;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 16;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v4;
    *(v23 + 4) = v5;
    *(v23 + 12) = v6;
    *(v15 + 48) = v17 + 16;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      type metadata accessor for T_SubgraphTreeUpdate(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 13)
        {
          v22 = 13;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 13;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v5;
    *(v23 + 8) = v4;
    *(v23 + 12) = v6;
    *(v15 + 48) = v17 + 13;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}