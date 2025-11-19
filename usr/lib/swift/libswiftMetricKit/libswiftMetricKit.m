uint64_t mxSignpost(_:dso:log:name:signpostID:_:_:)(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v47 = a8;
  v45 = a2;
  v46 = a1;
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  (MEMORY[0x2A1C7C4A8])();
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.invalid.getter();
  lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v16 + 8);
  v21(v19, v15);
  if (v20)
  {
    return OS_os_log.signpostsEnabled.getter();
  }

  static OSSignpostID.null.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21(v19, v15);
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) != 0 && (v23 & 1) == 0)
  {
    v24 = _swift_os_log_return_address();
    if (a6)
    {
      v25 = HIDWORD(a4);
      if (!HIDWORD(a4))
      {
        v25 = a4 & 0xFFFFF800;
        if (v25 == 55296)
        {
          __break(1u);
          goto LABEL_38;
        }

        v25 = a4 >> 16;
        if (a4 >> 16 <= 0x10)
        {
          if (a4 <= 0x7F)
          {
            v30 = a4 + 1;
            goto LABEL_15;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        v33 = (a4 & 0x3F) << 8;
        if (a4 >= 0x800)
        {
          goto LABEL_50;
        }

        v30 = (a4 >> 6) + v33 + 33217;
        goto LABEL_15;
      }
    }

    else
    {
      if (a4)
      {
        if (a10)
        {
          v26 = v47;
          v25 = HIDWORD(v47);
          if (!HIDWORD(v47))
          {
            v25 = v47 & 0xFFFFF800;
            v33 = 55296;
            if (v25 == 55296)
            {
              __break(1u);
              while (1)
              {
                __break(1u);
LABEL_50:
                v41 = (v33 | (a4 >> 6) & 0x3F) << 8;
                v30 = v25 ? (a4 >> 18) + ((v41 | (a4 >> 12) & 0x3F) << 8) - 2122219023 : (a4 >> 12) + v41 + 8487393;
LABEL_15:
                v25 = 0xFEFEFEFEFEFEFFLL;
                v26 = -1 << (32 - (__clz(v30) & 0x18));
                v49 = (v30 + 0xFEFEFEFEFEFEFFLL) & ~v26;
                if ((a10 & 1) == 0)
                {
                  break;
                }

                v36 = v47;
                if (HIDWORD(v47))
                {
                  goto LABEL_42;
                }

                v33 = v47 & 0xFFFFF800;
                if ((v47 & 0xFFFFF800) != 0xD800)
                {
                  if (v47 > 0x10FFFF)
                  {
                    __break(1u);
                  }

                  else if (v47 <= 0x7F)
                  {
                    v37 = v47 + 1;
LABEL_29:
                    v48 = (v37 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v37) & 0x18)));
                    v38 = MEMORY[0x2A1C7C4A8](v24);
                    *(&v44 - 8) = v45;
                    *(&v44 - 7) = v38;
                    *(&v44 - 6) = a3;
                    *(&v44 - 40) = v46;
                    *(&v44 - 4) = &v49;
                    *(&v44 - 3) = a7;
                    *(&v44 - 2) = &v48;
                    v29 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:);
                    return specialized withVaList<A>(_:_:)(a11, v29);
                  }

                  v40 = (v36 & 0x3F) << 8;
                  if (v36 >= 0x800)
                  {
                    v43 = (v40 | (v47 >> 6) & 0x3F) << 8;
                    if (v47 >> 16)
                    {
                      v37 = (v47 >> 18) + ((v43 | (v47 >> 12) & 0x3F) << 8) - 2122219023;
                    }

                    else
                    {
                      v37 = (v47 >> 12) + v43 + 8487393;
                    }
                  }

                  else
                  {
                    v37 = (v47 >> 6) + v40 + 33217;
                  }

                  goto LABEL_29;
                }
              }

              if (!v47)
              {
                goto LABEL_40;
              }

              v31 = MEMORY[0x2A1C7C4A8](v24);
              *(&v44 - 8) = v45;
              *(&v44 - 7) = v31;
              *(&v44 - 6) = a3;
              *(&v44 - 40) = v46;
              *(&v44 - 4) = &v49;
              *(&v44 - 3) = a7;
              *(&v44 - 2) = v32;
              v29 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply;
              return specialized withVaList<A>(_:_:)(a11, v29);
            }

            v25 = v47 >> 16;
            if (v47 >> 16 <= 0x10)
            {
              if (v47 <= 0x7F)
              {
                v34 = v47 + 1;
LABEL_23:
                v49 = (v34 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v34) & 0x18)));
                v35 = MEMORY[0x2A1C7C4A8](v24);
                *(&v44 - 8) = v45;
                *(&v44 - 7) = v35;
                *(&v44 - 6) = a3;
                *(&v44 - 40) = v46;
                *(&v44 - 4) = a4;
                *(&v44 - 3) = a7;
                *(&v44 - 2) = &v49;
                v29 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply;
                return specialized withVaList<A>(_:_:)(a11, v29);
              }

LABEL_43:
              v39 = (v26 & 0x3F) << 8;
              if (v26 >= 0x800)
              {
                v42 = (v39 | (v47 >> 6) & 0x3F) << 8;
                if (v25)
                {
                  v34 = (v47 >> 18) + ((v42 | (v47 >> 12) & 0x3F) << 8) - 2122219023;
                }

                else
                {
                  v34 = (v47 >> 12) + v42 + 8487393;
                }
              }

              else
              {
                v34 = (v47 >> 6) + v39 + 33217;
              }

              goto LABEL_23;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v47)
        {
          v27 = MEMORY[0x2A1C7C4A8](v24);
          *(&v44 - 8) = v45;
          *(&v44 - 7) = v27;
          *(&v44 - 6) = a3;
          *(&v44 - 40) = v46;
          *(&v44 - 4) = a4;
          *(&v44 - 3) = a7;
          *(&v44 - 2) = v28;
          v29 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply;
          return specialized withVaList<A>(_:_:)(a11, v29);
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID()
{
  result = lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID;
  if (!lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID)
  {
    type metadata accessor for OSSignpostID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID);
  }

  return result;
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v25 = __VaListBuilder.va_list()();
    a2(v25);
    v10 = v3;

    return MEMORY[0x2A1C735A8](v10);
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    v8 = (v7 + 40 * v6);
    v9 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v10 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v11 = *v4;
    v12 = *(v10 + 16);
    v13 = __OFADD__(*v4, v12);
    v14 = *v4 + v12;
    if (v13)
    {
      break;
    }

    v15 = v3[4];
    if (v15 >= v14)
    {
      goto LABEL_18;
    }

    if (v15 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v16 = v3[5];
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    v3[4] = v14;
    if ((v14 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v17 = v10;
    v18 = swift_slowAlloc();
    v19 = v18;
    v3[5] = v18;
    if (v16)
    {
      if (v18 != v16 || v18 >= &v16[8 * v11])
      {
        memmove(v18, v16, 8 * v11);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v10 = v17;
LABEL_18:
      v19 = v3[5];
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v10 = v17;
    if (!v19)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v21 = *(v10 + 16);
    if (v21)
    {
      v22 = (v10 + 32);
      v23 = *v4;
      while (1)
      {
        v24 = *v22++;
        *&v19[8 * v23] = v24;
        v23 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v23;
        if (!--v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return MEMORY[0x2A1C735A8](v10);
}

uint64_t mxSignpostAnimationIntervalBegin(dso:log:name:signpostID:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v44 = a1;
  v45 = a7;
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = static os_signpost_type_t.begin.getter();
  static OSSignpostID.invalid.getter();
  lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v15 + 8);
  v20(v18, v14);
  if (v19)
  {
    return OS_os_log.signpostsEnabled.getter();
  }

  static OSSignpostID.null.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20(v18, v14);
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) != 0 && (v22 & 1) == 0)
  {
    v23 = _swift_os_log_return_address();
    if (a5)
    {
      v24 = HIDWORD(a3);
      if (!HIDWORD(a3))
      {
        v24 = a3 & 0xFFFFF800;
        if (v24 == 55296)
        {
          __break(1u);
          goto LABEL_38;
        }

        v24 = a3 >> 16;
        if (a3 >> 16 <= 0x10)
        {
          if (a3 <= 0x7F)
          {
            v28 = a3 + 1;
            goto LABEL_15;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        v31 = (a3 & 0x3F) << 8;
        if (a3 >= 0x800)
        {
          goto LABEL_50;
        }

        v28 = (a3 >> 6) + v31 + 33217;
        goto LABEL_15;
      }
    }

    else
    {
      if (a3)
      {
        if (a9)
        {
          v25 = v45;
          v24 = HIDWORD(v45);
          if (!HIDWORD(v45))
          {
            v24 = v45 & 0xFFFFF800;
            v31 = 55296;
            if (v24 == 55296)
            {
              __break(1u);
              while (1)
              {
                __break(1u);
LABEL_50:
                v39 = (v31 | (a3 >> 6) & 0x3F) << 8;
                v28 = v24 ? (a3 >> 18) + ((v39 | (a3 >> 12) & 0x3F) << 8) - 2122219023 : (a3 >> 12) + v39 + 8487393;
LABEL_15:
                v24 = 0xFEFEFEFEFEFEFFLL;
                v25 = -1 << (32 - (__clz(v28) & 0x18));
                v47 = (v28 + 0xFEFEFEFEFEFEFFLL) & ~v25;
                if ((a9 & 1) == 0)
                {
                  break;
                }

                v34 = v45;
                if (HIDWORD(v45))
                {
                  goto LABEL_42;
                }

                v31 = v45 & 0xFFFFF800;
                if ((v45 & 0xFFFFF800) != 0xD800)
                {
                  if (v45 > 0x10FFFF)
                  {
                    __break(1u);
                  }

                  else if (v45 <= 0x7F)
                  {
                    v35 = v45 + 1;
LABEL_29:
                    v46 = (v35 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v35) & 0x18)));
                    v36 = MEMORY[0x2A1C7C4A8](v23);
                    *&v42[-64] = v44;
                    *&v42[-56] = v36;
                    *&v42[-48] = a2;
                    v42[-40] = v43;
                    *&v42[-32] = &v47;
                    *&v42[-24] = a6;
                    *&v42[-16] = &v46;
                    return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
                  }

                  v38 = (v34 & 0x3F) << 8;
                  if (v34 >= 0x800)
                  {
                    v41 = (v38 | (v45 >> 6) & 0x3F) << 8;
                    if (v45 >> 16)
                    {
                      v35 = (v45 >> 18) + ((v41 | (v45 >> 12) & 0x3F) << 8) - 2122219023;
                    }

                    else
                    {
                      v35 = (v45 >> 12) + v41 + 8487393;
                    }
                  }

                  else
                  {
                    v35 = (v45 >> 6) + v38 + 33217;
                  }

                  goto LABEL_29;
                }
              }

              if (!v45)
              {
                goto LABEL_40;
              }

              v29 = MEMORY[0x2A1C7C4A8](v23);
              *&v42[-64] = v44;
              *&v42[-56] = v29;
              *&v42[-48] = a2;
              v42[-40] = v43;
              *&v42[-32] = &v47;
              *&v42[-24] = a6;
              *&v42[-16] = v30;
              return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
            }

            v24 = v45 >> 16;
            if (v45 >> 16 <= 0x10)
            {
              if (v45 <= 0x7F)
              {
                v32 = v45 + 1;
LABEL_23:
                v47 = (v32 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v32) & 0x18)));
                v33 = MEMORY[0x2A1C7C4A8](v23);
                *&v42[-64] = v44;
                *&v42[-56] = v33;
                *&v42[-48] = a2;
                v42[-40] = v43;
                *&v42[-32] = a3;
                *&v42[-24] = a6;
                *&v42[-16] = &v47;
                return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
              }

LABEL_43:
              v37 = (v25 & 0x3F) << 8;
              if (v25 >= 0x800)
              {
                v40 = (v37 | (v45 >> 6) & 0x3F) << 8;
                if (v24)
                {
                  v32 = (v45 >> 18) + ((v40 | (v45 >> 12) & 0x3F) << 8) - 2122219023;
                }

                else
                {
                  v32 = (v45 >> 12) + v40 + 8487393;
                }
              }

              else
              {
                v32 = (v45 >> 6) + v37 + 33217;
              }

              goto LABEL_23;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v45)
        {
          v26 = MEMORY[0x2A1C7C4A8](v23);
          *&v42[-64] = v44;
          *&v42[-56] = v26;
          *&v42[-48] = a2;
          v42[-40] = v43;
          *&v42[-32] = a3;
          *&v42[-24] = a6;
          *&v42[-16] = v27;
          return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 56);
  v10 = OSSignpostID.rawValue.getter();

  return MEMORY[0x2A1C73E98](v3, v4, v5, v6, v7, v10, v8, a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}