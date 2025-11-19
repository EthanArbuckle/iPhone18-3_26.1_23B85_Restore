void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_IndirectNodeAddeda_Tt0g5(unint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  *v40 = v2;
  *&v40[8] = v3;
  if (!*(a1 + 48))
  {
    v4 = *&v40[4];
    v5 = *(a1 + 1) << 8;
    if (v5 == 512 || v5 == 1024 || v5 == 768)
    {
      v6 = HIDWORD(v3);
      if (readingDebug)
      {
        v7 = (a1 + 56);
        v8 = *(a1 + 72);
        v67[0] = *(a1 + 56);
        v67[1] = v8;
        v68[0] = *(a1 + 88);
        *(v68 + 9) = *(a1 + 97);
        v9 = (a1 + 88);
        v10 = (a1 + 100);
        v11 = (a1 + 104);
        v12 = *(a1 + 116);
        while (1)
        {
          v13 = *v11;
          if (v12 < *v10)
          {
            v14 = (*v9 + 8 * v12);
            if ((v14[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v13)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v67);
          }

          v9 = (v13 + 32);
          v10 = (v13 + 44);
          v11 = (v13 + 48);
          v7 = v13;
        }

        if (!*v7)
        {
          __break(1u);
          return;
        }

        if ((*(*(*v7 + 24 * *v14) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
        {
          v33 = v2;
          v15 = *a1;
          v16 = *(a1 + 24);
          v64 = *(a1 + 8);
          v65 = v16;
          v66 = *(a1 + 40);
          v17 = *(a1 + 48);
          v18 = *(a1 + 129);
          v61 = *(a1 + 113);
          v62 = v18;
          v63[0] = *(a1 + 145);
          *(v63 + 15) = *(a1 + 160);
          v19 = *(a1 + 65);
          v57 = *(a1 + 49);
          v58 = v19;
          v20 = *(a1 + 97);
          v59 = *(a1 + 81);
          v60 = v20;
          v56 = *(a1 + 192);
          v21 = *(a1 + 176);
          v55 = *(a1 + 184);
          v22 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v23 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v22))
          {
            v24 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v24 = 136446466;
            *&v40[8] = v64;
            v41 = v65;
            v48 = v61;
            v49 = v62;
            *v50 = v63[0];
            *&v50[15] = *(v63 + 15);
            v44 = v57;
            v45 = v58;
            v46 = v59;
            v54 = v32;
            if (v17)
            {
              v25 = 0;
            }

            else
            {
              v25 = v15;
            }

            *v40 = v15;
            v42 = v66;
            v43 = v17;
            v47 = v60;
            v51 = v21;
            v52 = v55;
            v53 = v56;
            v34 = xmmword_26C32DAD0;
            v35 = 0;
            v36 = 0;
            v37 = v21;
            v38 = v25;
            v39 = 1;
            v26 = Interpreter.Iterator.describe(state:)(&v34);
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v54);

            *(v24 + 4) = v28;
            *(v24 + 12) = 2082;
            *v40 = v33;
            *&v40[4] = v4;
            *&v40[12] = v6;
            type metadata accessor for T_IndirectNodeAdded(0);
            v29 = String.init<A>(describing:)();
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v54);

            *(v24 + 14) = v31;
            _os_log_impl(&dword_26C161000, v23, v22, "%{public}s %{public}s", v24, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v32, -1, -1);
            MEMORY[0x26D69EAB0](v24, -1, -1);
            LODWORD(v2) = v33;
          }

          else
          {
            LODWORD(v2) = v33;
          }
        }
      }

      *v40 = v2;
      *&v40[4] = v4;
      *&v40[12] = v6;
      T_IndirectNodeAdded.model(within:)(a1, *v40, *&v40[8]);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_EndSubgraphUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v3 = a1 + 7;
    v4 = *(a1 + 9);
    v70[0] = *(a1 + 7);
    v70[1] = v4;
    v71[0] = *(a1 + 11);
    *(v71 + 9) = *(a1 + 97);
    v5 = a1 + 11;
    v6 = a1 + 25;
    v7 = a1 + 13;
    v8 = *(a1 + 29);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v70);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (!*v3)
    {
      goto LABEL_33;
    }

    if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v40 = v2;
      v11 = *a1;
      v12 = *(a1 + 3);
      v67 = *(a1 + 1);
      v68 = v12;
      v69 = a1[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v64 = *(a1 + 113);
      v65 = v14;
      v66[0] = *(a1 + 145);
      *(v66 + 15) = *(a1 + 10);
      v15 = *(a1 + 65);
      v60 = *(a1 + 49);
      v61 = v15;
      v16 = *(a1 + 97);
      v62 = *(a1 + 81);
      v63 = v16;
      v59 = *(a1 + 192);
      v17 = a1[22];
      v58 = a1[23];
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v47[8] = v67;
        *&v47[24] = v68;
        v51 = v64;
        v52 = v65;
        *v53 = v66[0];
        *&v53[15] = *(v66 + 15);
        *&v47[49] = v60;
        v48 = v61;
        v49 = v62;
        v57 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *v47 = v11;
        *&v47[40] = v69;
        v47[48] = v13;
        v50 = v63;
        v54 = v17;
        v55 = v58;
        v56 = v59;
        v41 = xmmword_26C32DAD0;
        v42 = 0;
        v43 = 0;
        v44 = v17;
        v45 = v22;
        v46 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v41);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v47 = v40;
        type metadata accessor for T_EndSubgraphUpdate(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }
    }
  }

  v29 = a1 + 7;
  v30 = *(a1 + 9);
  *v47 = *(a1 + 7);
  *&v47[16] = v30;
  *&v47[32] = *(a1 + 11);
  *&v47[41] = *(a1 + 97);
  v31 = (a1 + 9);
  v32 = a1 + 21;
  v33 = a1 + 13;
  while (1)
  {
    v34 = *v33;
    if (*v32)
    {
      v35 = *v31;
      if ((v35[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v47);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v29 = v34;
  }

  v36 = *v29;
  if (!v36)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v37 = *(*(v36 + 24 * *v35) + 112);
  if (!v37)
  {
    __break(1u);
    goto LABEL_32;
  }

  v38 = *(v37 + 32);
  v39 = v38[1] - 1;
  v38[1] = v39;
  if (!v39)
  {
    ++*v38;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_AnimationRetargeta_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()(v71);
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v2 = a1 + 7;
    v3 = *(a1 + 9);
    v75[0] = *(a1 + 7);
    v75[1] = v3;
    v76[0] = *(a1 + 11);
    *(v76 + 9) = *(a1 + 97);
    v4 = a1 + 11;
    v5 = a1 + 25;
    v6 = a1 + 13;
    v7 = *(a1 + 29);
    while (1)
    {
      v8 = *v6;
      if (v7 < *v5)
      {
        v9 = (*v4 + 8 * v7);
        if ((v9[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v75);
      }

      v4 = (v8 + 32);
      v5 = (v8 + 44);
      v6 = (v8 + 48);
      v2 = v8;
    }

    v10 = *v2;
    if (!v10)
    {
      goto LABEL_45;
    }

    if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v11 = *a1;
      v12 = *(a1 + 3);
      v68 = *(a1 + 1);
      v69 = v12;
      v70 = a1[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v65 = *(a1 + 113);
      v66 = v14;
      v67[0] = *(a1 + 145);
      *(v67 + 15) = *(a1 + 10);
      v15 = *(a1 + 65);
      v62 = *(a1 + 49);
      v63 = v15;
      v16 = *(a1 + 97);
      *v64 = *(a1 + 81);
      *&v64[16] = v16;
      v61 = *(a1 + 192);
      v17 = a1[22];
      v60 = a1[23];
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v49[8] = v68;
        *&v49[24] = v69;
        v53 = v65;
        v54 = v66;
        *v55 = v67[0];
        *&v55[15] = *(v67 + 15);
        *&v49[49] = v62;
        v50 = v63;
        v51 = *v64;
        v59 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *&v49[40] = v70;
        v49[48] = v13;
        v52 = *&v64[16];
        v56 = v17;
        v57 = v60;
        v58 = v61;
        *v72 = xmmword_26C32DAD0;
        v72[16] = 0;
        *&v73 = 0;
        *(&v73 + 1) = v17;
        LOBYTE(v74) = v22;
        BYTE1(v74) = 1;
        v23 = Interpreter.Iterator.describe(state:)(v72);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v59);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v49 = *v71;
        *&v49[16] = *&v71[16];
        *&v49[32] = *&v71[32];
        type metadata accessor for T_AnimationRetarget(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v59);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }
    }
  }

  v29 = *v71;
  v30 = (a1 + 7);
  v31 = *(a1 + 9);
  *v49 = *(a1 + 7);
  *&v49[16] = v31;
  *&v49[32] = *(a1 + 11);
  v32 = a1 + 9;
  v33 = a1 + 21;
  v34 = a1 + 13;
  *&v49[41] = *(a1 + 97);
  v35 = a1 + 7;
  v36 = a1 + 9;
  v37 = a1 + 21;
  v38 = a1 + 13;
  while (1)
  {
    v39 = *v38;
    if (*v37 >= 2u)
    {
      v40 = *v36;
      if ((*(v40 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v39)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v49);
    }

    v36 = (v39 + 16);
    v37 = (v39 + 28);
    v38 = (v39 + 48);
    v35 = v39;
  }

  v41 = *v35;
  if (!v41)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = *(*(v41 + 24 * *(v40 + 8)) + 112);
  if (!v42)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (*(**(v42 + 56) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(*v71);
    if (v43)
    {
      *v72 = v29;
      *&v72[4] = *&v71[4];
      *&v72[8] = *&v71[8];
      v73 = *&v71[24];
      v74 = 0x7FF8000000000000;
      v44 = specialized Interpreter.Iterator.observe<A>(invalidation:)(v72);
      if ((v44 & 0x100000000) == 0)
      {
        v45 = *(a1 + 9);
        v62 = *v30;
        v63 = v45;
        *v64 = *(a1 + 11);
        *&v64[9] = *(a1 + 97);
        while (1)
        {
          v46 = *v34;
          if (*v33 >= 2u && (*(*v32 + 12) & 1) == 0)
          {
            break;
          }

          if (!v46)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v62);
          }

          v32 = (v46 + 16);
          v33 = (v46 + 28);
          v34 = (v46 + 48);
          v30 = v46;
        }

        if (!*v30)
        {
          goto LABEL_46;
        }

        v47 = *(*(*v30 + 24 * *(*v32 + 8)) + 112);
        if (v47)
        {
          v48 = *(v47 + 56);
          LOBYTE(v68) = 0;
          specialized Dictionary.subscript.setter(v44, v29);
          return;
        }

        goto LABEL_44;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_UninstantiateEnda_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v3 = a1 + 7;
      v4 = *(a1 + 9);
      v64[0] = *(a1 + 7);
      v64[1] = v4;
      v65[0] = *(a1 + 11);
      *(v65 + 9) = *(a1 + 97);
      v5 = a1 + 11;
      v6 = a1 + 25;
      v7 = a1 + 13;
      v8 = *(a1 + 29);
      while (1)
      {
        v9 = *v7;
        if (v8 < *v6)
        {
          v10 = (*v5 + 8 * v8);
          if ((v10[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v9)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v64);
        }

        v5 = (v9 + 32);
        v6 = (v9 + 44);
        v7 = (v9 + 48);
        v3 = v9;
      }

      if (!*v3)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v29 = v2;
        v11 = *a1;
        v12 = *(a1 + 3);
        v61 = *(a1 + 1);
        v62 = v12;
        v63 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v58 = *(a1 + 113);
        v59 = v14;
        v60[0] = *(a1 + 145);
        *(v60 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v54 = *(a1 + 49);
        v55 = v15;
        v16 = *(a1 + 97);
        v56 = *(a1 + 81);
        v57 = v16;
        v53 = *(a1 + 192);
        v17 = a1[22];
        v52 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v37 = v61;
          v38 = v62;
          v45 = v58;
          v46 = v59;
          *v47 = v60[0];
          *&v47[15] = *(v60 + 15);
          v41 = v54;
          v42 = v55;
          v43 = v56;
          v51 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v36 = v11;
          v39 = v63;
          v40 = v13;
          v44 = v57;
          v48 = v17;
          v49 = v52;
          v50 = v53;
          v30 = xmmword_26C32DAD0;
          v31 = 0;
          v32 = 0;
          v33 = v17;
          v34 = v22;
          v35 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v30);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v51);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          v36 = v29;
          type metadata accessor for T_UninstantiateEnd(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v51);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Uninstantiate);
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_TransactionAppenda_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v8 = result;
    if (readingDebug)
    {
      v9 = a1 + 7;
      v10 = *(a1 + 9);
      v70[0] = *(a1 + 7);
      v70[1] = v10;
      v71[0] = *(a1 + 11);
      *(v71 + 9) = *(a1 + 97);
      v11 = a1 + 11;
      v12 = a1 + 25;
      v13 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v14 = *v13;
        if (result < *v12)
        {
          v15 = (*v11 + 8 * result);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v70);
        }

        v11 = (v14 + 32);
        v12 = (v14 + 44);
        v13 = (v14 + 48);
        v9 = v14;
      }

      v16 = *v9;
      if (!v16)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v16 + 24 * *v15) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v17 = *a1;
        v18 = *(a1 + 3);
        v67 = *(a1 + 1);
        v68 = v18;
        v69 = a1[5];
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v20;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 10);
        v21 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v21;
        v22 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v22;
        v59 = *(a1 + 192);
        v23 = a1[22];
        v58 = a1[23];
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v24;
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v43 = v67;
          v44 = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v57 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v42 = v17;
          v45 = v69;
          v46 = v19;
          v50 = v63;
          v54 = v23;
          v55 = v58;
          v56 = v59;
          v36 = xmmword_26C32DAD0;
          v37 = 0;
          v38 = 0;
          v39 = v23;
          v40 = v27;
          v41 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v36);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v57);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          LODWORD(v42) = v8;
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v57);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
        }
      }
    }

    return a4(a1, v8);
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo21T_SubgraphRemoveChilda_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 512)
  {
    v9 = v8;
    v10 = result;
    if (readingDebug)
    {
      v11 = a1 + 7;
      v12 = *(a1 + 9);
      v72[0] = *(a1 + 7);
      v72[1] = v12;
      v73[0] = *(a1 + 11);
      *(v73 + 9) = *(a1 + 97);
      v13 = a1 + 11;
      v14 = a1 + 25;
      v15 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v16 = *v15;
        if (result < *v14)
        {
          v17 = (*v13 + 8 * result);
          if ((v17[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v16)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v72);
        }

        v13 = (v16 + 32);
        v14 = (v16 + 44);
        v15 = (v16 + 48);
        v11 = v16;
      }

      v18 = *v11;
      if (!v18)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v18 + 24 * *v17) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v19 = *a1;
        v20 = *(a1 + 3);
        v69 = *(a1 + 1);
        v70 = v20;
        v71 = a1[5];
        v37 = *(a1 + 48);
        v21 = *(a1 + 129);
        v66 = *(a1 + 113);
        v67 = v21;
        v68[0] = *(a1 + 145);
        *(v68 + 15) = *(a1 + 10);
        v22 = *(a1 + 65);
        v62 = *(a1 + 49);
        v63 = v22;
        v23 = *(a1 + 97);
        v64 = *(a1 + 81);
        v65 = v23;
        v61 = *(a1 + 192);
        v24 = a1[22];
        v60 = a1[23];
        v25 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v26 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v25))
        {
          log = v26;
          v27 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v27 = 136446466;
          v45 = v69;
          v46 = v70;
          v53 = v66;
          v54 = v67;
          *v55 = v68[0];
          *&v55[15] = *(v68 + 15);
          v49 = v62;
          v50 = v63;
          v51 = v64;
          v59 = v35;
          if (v37)
          {
            v28 = 0;
          }

          else
          {
            v28 = v19;
          }

          v44 = v19;
          v47 = v71;
          v48 = v37;
          v52 = v65;
          v56 = v24;
          v57 = v60;
          v58 = v61;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v24;
          v42 = v28;
          v43 = 1;
          v29 = Interpreter.Iterator.describe(state:)(&v38);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v59);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          v44 = v10;
          *&v45 = v9;
          a3(0);
          v32 = String.init<A>(describing:)();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v59);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_26C161000, log, v25, "%{public}s %{public}s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v35, -1, -1);
          MEMORY[0x26D69EAB0](v27, -1, -1);
        }
      }
    }

    return a4(a1, v10, v9);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_InstantiateBegina_Tt0g5(unsigned __int8 *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (a1[48] || a1[1] << 8 != 1024)
  {
    return;
  }

  if (!readingDebug)
  {
    goto LABEL_20;
  }

  v1 = &v90;
  v7 = v81;
  v8 = a1 + 56;
  v9 = *(a1 + 72);
  v100[0] = *(a1 + 56);
  v100[1] = v9;
  v101[0] = *(a1 + 88);
  *(v101 + 9) = *(a1 + 97);
  v10 = a1 + 88;
  v11 = a1 + 100;
  v12 = (a1 + 104);
  v13 = *(a1 + 29);
  while (1)
  {
    v14 = *v12;
    if (v13 < *v11)
    {
      v15 = (*v10 + 8 * v13);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v100);
    }

    v10 = (v14 + 32);
    v11 = (v14 + 44);
    v12 = (v14 + 48);
    v8 = v14;
  }

  if (!*v8)
  {
LABEL_61:
    __break(1u);
    return;
  }

  if (((*(*(*v8 + 24 * *v15) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
  {
    goto LABEL_20;
  }

  v74 = v6;
  v3 = *a1;
  v16 = *(a1 + 24);
  v97 = *(a1 + 8);
  v98 = v16;
  v99 = *(a1 + 5);
  v4 = a1[48];
  v17 = *(a1 + 129);
  v94 = *(a1 + 113);
  v95 = v17;
  v96[0] = *(a1 + 145);
  *(v96 + 15) = *(a1 + 10);
  v18 = *(a1 + 65);
  v90 = *(a1 + 49);
  v91 = v18;
  v19 = *(a1 + 97);
  v92 = *(a1 + 81);
  v93 = v19;
  v89 = a1[192];
  v2 = *(a1 + 22);
  v88 = *(a1 + 23);
  LOBYTE(v20) = static os_log_type_t.default.getter();
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v21 = readingDebugLog;
    if (os_log_type_enabled(readingDebugLog, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446466;
      *&v81[8] = v97;
      *&v81[24] = v98;
      v24 = v95;
      *(v7 + 113) = v94;
      *(v7 + 129) = v24;
      *(v7 + 145) = v96[0];
      v83 = *(v1 + 111);
      *&v81[49] = v90;
      v82 = v91;
      v25 = v93;
      *(v7 + 81) = v92;
      v87 = v23;
      if (v4)
      {
        v26 = 0;
      }

      else
      {
        v26 = v3;
      }

      *v81 = v3;
      *&v81[40] = v99;
      v81[48] = v4;
      *(v7 + 97) = v25;
      v84 = v2;
      v85 = v88;
      v86 = v89;
      v75 = xmmword_26C32DAD0;
      v76 = 0;
      v77 = 0;
      v78 = v2;
      v79 = v26;
      v80 = 1;
      v27 = Interpreter.Iterator.describe(state:)(&v75);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v87);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2082;
      v2 = v74;
      *v81 = v74;
      type metadata accessor for T_InstantiateBegin(0);
      v30 = String.init<A>(describing:)();
      v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v87);

      *(v22 + 14) = v1;
      _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v23, -1, -1);
      MEMORY[0x26D69EAB0](v22, -1, -1);
      v6 = v74;
    }

    else
    {
      v6 = v74;
    }

LABEL_20:
    v20 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v6, a1);
    v32 = (a1 + 56);
    v33 = *(a1 + 72);
    *v81 = *(a1 + 56);
    *&v81[16] = v33;
    *&v81[32] = *(a1 + 88);
    *&v81[41] = *(a1 + 97);
    v34 = a1 + 88;
    v35 = a1 + 100;
    v36 = (a1 + 104);
    v37 = *(a1 + 29);
    while (1)
    {
      v38 = *v36;
      if (v37 < *v35)
      {
        v39 = (*v34 + 8 * v37);
        if ((v39[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v38)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v37, 0, v81);
      }

      v34 = (v38 + 32);
      v35 = (v38 + 44);
      v36 = (v38 + 48);
      v32 = v38;
    }

    v40 = *v32;
    if (!v40)
    {
      goto LABEL_60;
    }

    v7 = a1;
    v41 = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v20, *(*(v40 + 24 * *v39) + 32), 0xFFFFFFFFFFFFFFFFLL, 0);
    if (a1[48])
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v42 = *(a1 + 22);
    v43 = *a1;
    if (v43 >= *(v42 + 116))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v44 = *(v42 + 104);
    if (!v44)
    {
      goto LABEL_56;
    }

    v45 = *(*(v44 + 8 * v43) + 8);
    if (v20 >= *(v45 + 124))
    {
      goto LABEL_51;
    }

    v46 = *(v45 + 112);
    if (!v46)
    {
      goto LABEL_57;
    }

    v47 = v46 + 168 * v20;
    *(v47 + 124) = v41;
    *(v47 + 128) = 0;
    if (a1[48])
    {
      goto LABEL_58;
    }

    v48 = *(v42 + 116);
    v49 = *a1;
    if (v49 >= v48)
    {
      goto LABEL_52;
    }

    v50 = *(*(v44 + 8 * v49) + 8);
    if (v41 < *(v50 + 44))
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v51 = *(v50 + 32);
  if (!v51)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v52 = v51 + (v41 << 7);
  v53 = *(v52 + 8);
  v54 = *(v52 + 16);
  v55 = v52 + 8;
  v56 = *(v55 + 17);
  v58 = *(v55 + 20);
  v57 = *(v55 + 24);
  LOBYTE(v90) = *(v55 + 16);
  v59 = v56 == 0;
  v60 = 256;
  if (v59)
  {
    v60 = 0;
  }

  v61 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(v53, v54, v60 | (v58 << 32) | v90, v57);
  if (v61)
  {
    v62 = *v61;
    v63 = v61[1];
  }

  else
  {
    v63 = MEMORY[0x277D84FA0];
    v62 = MEMORY[0x277D84FA0];
  }

  *&v90 = v62;
  specialized Set._Variant.insert(_:)(&v75, v20);
  v64 = v90;
  v65 = *v55;
  v66 = *(v55 + 8);
  v67 = *(v55 + 17);
  v69 = *(v55 + 20);
  v68 = *(v55 + 24);
  LOBYTE(v97) = *(v55 + 16);
  v59 = v67 == 0;
  v70 = 256;
  if (v59)
  {
    v70 = 0;
  }

  v71 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(v65, v66, v70 | (v69 << 32) | v97, v68);
  if (v71)
  {
    v72 = *v71;
    v73 = v71[1];
    *v71 = v64;
    v71[1] = v63;
  }

  else
  {
    specialized HeterogeneousBuffer.insert<A>(_:)(v64, v63);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_GraphNeedsUpdatea_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v4 = (a1 + 56);
    v5 = *(a1 + 72);
    v88[0] = *(a1 + 56);
    v88[1] = v5;
    v89[0] = *(a1 + 88);
    *(v89 + 9) = *(a1 + 97);
    v6 = (a1 + 88);
    v7 = (a1 + 100);
    v8 = (a1 + 104);
    v9 = *(a1 + 116);
    while (1)
    {
      v10 = *v8;
      if (v9 < *v7)
      {
        v11 = (*v6 + 8 * v9);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v88);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    if (!*v4)
    {
      goto LABEL_48;
    }

    if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
    {
      v58 = v3;
      v12 = *a1;
      v13 = *(a1 + 24);
      v85 = *(a1 + 8);
      v86 = v13;
      v87 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 129);
      v82 = *(a1 + 113);
      v83 = v15;
      v84[0] = *(a1 + 145);
      *(v84 + 15) = *(a1 + 160);
      v16 = *(a1 + 65);
      v78 = *(a1 + 49);
      v79 = v16;
      v17 = *(a1 + 97);
      v80 = *(a1 + 81);
      v81 = v17;
      v77 = *(a1 + 192);
      v18 = *(a1 + 176);
      v76 = *(a1 + 184);
      v19 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v1 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v65[8] = v85;
        *&v65[24] = v86;
        v69 = v82;
        v70 = v83;
        *v71 = v84[0];
        *&v71[15] = *(v84 + 15);
        *&v65[49] = v78;
        v66 = v79;
        v67 = v80;
        v75 = v21;
        if (v14)
        {
          v22 = 0;
        }

        else
        {
          v22 = v12;
        }

        *v65 = v12;
        *&v65[40] = v87;
        v65[48] = v14;
        v68 = v81;
        v72 = v18;
        v73 = v76;
        v74 = v77;
        v59 = xmmword_26C32DAD0;
        v60 = 0;
        v61 = 0;
        v62 = v18;
        v63 = v22;
        v64 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v59);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v75);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v65 = v58;
        type metadata accessor for T_GraphNeedsUpdate(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v75);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v1, v19, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
        v3 = v58;
      }

      else
      {
        v3 = v58;
      }
    }
  }

  v29 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v3, a1);
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v29);
  if ((v30 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v31 = v30;
  v32 = (a1 + 56);
  v33 = *(a1 + 72);
  *v65 = *(a1 + 56);
  *&v65[16] = v33;
  *&v65[32] = *(a1 + 88);
  *&v65[41] = *(a1 + 97);
  v34 = (a1 + 72);
  v35 = (a1 + 84);
  v36 = (a1 + 104);
  while (1)
  {
    v37 = *v36;
    if (*v35 >= 2u)
    {
      v38 = *v34;
      if ((*(v38 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v37)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v65);
    }

    v34 = (v37 + 16);
    v35 = (v37 + 28);
    v36 = (v37 + 48);
    v32 = v37;
  }

  v39 = *v32;
  if (!v39)
  {
    goto LABEL_47;
  }

  v40 = *(*(v39 + 24 * *(v38 + 8)) + 112);
  if (!v40)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v41 = *(v40 + 32);
  v42 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v78 = *v41;
  isa = v78;
  *v41 = 0x8000000000000000;
  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
  v47 = *(isa + 2);
  v48 = (v45 & 1) == 0;
  v49 = v47 + v48;
  if (!__OFADD__(v47, v48))
  {
    v50 = v45;
    if (*(isa + 3) >= v49)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        isa = v78;
      }

LABEL_36:
      v53 = *v41;
      *v41 = isa;

      v54 = *v41;
      if ((v50 & 1) == 0)
      {
        specialized thunk for @callee_guaranteed () -> (@owned [EventRef])(&v78);
        specialized _NativeDictionary._insert(at:key:value:)(v46, v29, v78, v54);
      }

      v1 = *(v54 + 7);
      isa = v1[v46].isa;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v1[v46].isa = isa;
      if (v55)
      {
        goto LABEL_39;
      }

      goto LABEL_44;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
    isa = v78;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if ((v50 & 1) == (v52 & 1))
    {
      v46 = v51;
      goto LABEL_36;
    }

LABEL_49:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  __break(1u);
LABEL_44:
  isa = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(isa + 2) + 1, 1, isa);
  v1[v46].isa = isa;
LABEL_39:
  v57 = *(isa + 2);
  v56 = *(isa + 3);
  if (v57 >= v56 >> 1)
  {
    isa = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, isa);
    v1[v46].isa = isa;
  }

  *(isa + 2) = v57 + 1;
  *&isa[4 * v57 + 32] = v31;
}

unint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_ExecutionContexta_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  v3 = v2;
  if (readingDebug)
  {
    v4 = a1 + 7;
    v5 = *(a1 + 9);
    v69[0] = *(a1 + 7);
    v69[1] = v5;
    v70[0] = *(a1 + 11);
    *(v70 + 9) = *(a1 + 97);
    v6 = a1 + 11;
    v7 = a1 + 25;
    v8 = a1 + 13;
    result = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (result < *v7)
      {
        v11 = (*v6 + 8 * result);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v69);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    v12 = *v4;
    if (!v12)
    {
      goto LABEL_27;
    }

    if ((*(*(v12 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v13 = *a1;
      v14 = *(a1 + 3);
      v66 = *(a1 + 1);
      v67 = v14;
      v68 = a1[5];
      v15 = *(a1 + 48);
      v16 = *(a1 + 129);
      v63 = *(a1 + 113);
      v64 = v16;
      v65[0] = *(a1 + 145);
      *(v65 + 15) = *(a1 + 10);
      v17 = *(a1 + 65);
      v59 = *(a1 + 49);
      v60 = v17;
      v18 = *(a1 + 97);
      v61 = *(a1 + 81);
      v62 = v18;
      v58 = *(a1 + 192);
      v19 = a1[22];
      v57 = a1[23];
      v20 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v21 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v20))
      {
        v22 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v22 = 136446466;
        *&v46[8] = v66;
        *&v46[24] = v67;
        v50 = v63;
        v51 = v64;
        *v52 = v65[0];
        *&v52[15] = *(v65 + 15);
        *&v46[49] = v59;
        v47 = v60;
        v48 = v61;
        v56 = v39;
        if (v15)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13;
        }

        *v46 = v13;
        *&v46[40] = v68;
        v46[48] = v15;
        v49 = v62;
        v53 = v19;
        v54 = v57;
        v55 = v58;
        v40 = xmmword_26C32DAD0;
        v41 = 0;
        v42 = 0;
        v43 = v19;
        v44 = v23;
        v45 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v40);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v56);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        *v46 = v3;
        type metadata accessor for T_ExecutionContext(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v56);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v39, -1, -1);
        MEMORY[0x26D69EAB0](v22, -1, -1);
      }
    }
  }

  result = *(a1 + 29);
  v30 = a1 + 7;
  v31 = *(a1 + 9);
  *v46 = *(a1 + 7);
  *&v46[16] = v31;
  *&v46[32] = *(a1 + 11);
  *&v46[41] = *(a1 + 97);
  v32 = a1 + 11;
  v33 = a1 + 25;
  v34 = a1 + 13;
  while (1)
  {
    v35 = *v34;
    if (result < *v33)
    {
      v36 = (*v32 + 8 * result);
      if ((v36[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v46);
    }

    v32 = (v35 + 32);
    v33 = (v35 + 44);
    v34 = (v35 + 48);
    v30 = v35;
  }

  v37 = *v30;
  if (v37)
  {
    result = v37 + 24 * *v36;
    v38 = *result;
    *(v38 + 56) = v3;
    *(v38 + 64) = 0;
    return result;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_EndGraphUpdateV0a_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v4 = (a1 + 56);
    v5 = *(a1 + 72);
    v74[0] = *(a1 + 56);
    v74[1] = v5;
    v75[0] = *(a1 + 88);
    *(v75 + 9) = *(a1 + 97);
    v6 = (a1 + 88);
    v7 = (a1 + 100);
    v8 = (a1 + 104);
    v9 = *(a1 + 116);
    while (1)
    {
      v10 = *v8;
      if (v9 < *v7)
      {
        v11 = (*v6 + 8 * v9);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v74);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    if (!*v4)
    {
      goto LABEL_37;
    }

    if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
    {
      v44 = v3;
      v43 = v2;
      v12 = *a1;
      v13 = *(a1 + 24);
      v71 = *(a1 + 8);
      v72 = v13;
      v73 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 129);
      v68 = *(a1 + 113);
      v69 = v15;
      v70[0] = *(a1 + 145);
      *(v70 + 15) = *(a1 + 160);
      v16 = *(a1 + 65);
      v64 = *(a1 + 49);
      v65 = v16;
      v17 = *(a1 + 97);
      v66 = *(a1 + 81);
      v67 = v17;
      v63 = *(a1 + 192);
      v18 = *(a1 + 176);
      v62 = *(a1 + 184);
      v19 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v20 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 136446466;
        *&v51[8] = v71;
        *&v51[24] = v72;
        v55 = v68;
        v56 = v69;
        *v57 = v70[0];
        *&v57[15] = *(v70 + 15);
        *&v51[49] = v64;
        v52 = v65;
        v53 = v66;
        v61 = v22;
        if (v14)
        {
          v23 = 0;
        }

        else
        {
          v23 = v12;
        }

        *v51 = v12;
        *&v51[40] = v73;
        v51[48] = v14;
        v54 = v67;
        v58 = v18;
        v59 = v62;
        v60 = v63;
        v45 = xmmword_26C32DAD0;
        v46 = 0;
        v47 = 0;
        v48 = v18;
        v49 = v23;
        v50 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v45);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v61);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        *v51 = v43;
        *&v51[8] = v44;
        type metadata accessor for T_EndGraphUpdateV0(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v61);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v22, -1, -1);
        MEMORY[0x26D69EAB0](v21, -1, -1);
        v3 = v44;
        v2 = v43;
      }

      else
      {
        v2 = v43;
        v3 = v44;
      }
    }
  }

  v30 = *(a1 + 116);
  if (v3)
  {
    v31 = v3;
  }

  else
  {
    v30 = 0;
    v31 = -1;
  }

  *(a1 + 160) = v30;
  *(a1 + 164) = v3 != 0;
  *(a1 + 168) = v3 == 0;
  *(a1 + 172) = v31;
  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v2, a1);
  Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v32 = (a1 + 56);
  v33 = *(a1 + 72);
  *v51 = *(a1 + 56);
  *&v51[16] = v33;
  *&v51[32] = *(a1 + 88);
  *&v51[41] = *(a1 + 97);
  v34 = (a1 + 72);
  v35 = (a1 + 84);
  v36 = (a1 + 104);
  while (1)
  {
    v37 = *v36;
    if (*v35)
    {
      v38 = *v34;
      if ((v38[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v37)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v51);
    }

    v34 = (v37 + 16);
    v35 = (v37 + 28);
    v36 = (v37 + 48);
    v32 = v37;
  }

  v39 = *v32;
  if (!v39)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v40 = *(*(v39 + 24 * *v38) + 112);
  if (!v40)
  {
    __break(1u);
    goto LABEL_36;
  }

  v41 = *(v40 + 32);
  v42 = v41[1] - 1;
  v41[1] = v42;
  if (!v42)
  {
    ++*v41;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo17T_SubgraphDestroya_Tt0g5(uint64_t a1)
{
  v7 = a1;
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48))
  {
    v9 = *(a1 + 1) << 8;
    if (v9 == 512 || v9 == 1024 || v9 == 768)
    {
      if (!readingDebug)
      {
        goto LABEL_23;
      }

      v2 = &v67;
      v7 = v58;
      v10 = (a1 + 56);
      v11 = *(a1 + 72);
      v77[0] = *(a1 + 56);
      v77[1] = v11;
      v78[0] = *(a1 + 88);
      *(v78 + 9) = *(a1 + 97);
      v12 = (a1 + 88);
      v13 = (a1 + 100);
      v14 = (a1 + 104);
      v15 = *(a1 + 116);
      v1 = *(a1 + 176);
      while (1)
      {
        v16 = *v14;
        if (v15 < *v13)
        {
          v17 = (*v12 + 8 * v15);
          if ((v17[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v16)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v77);
        }

        v12 = (v16 + 32);
        v13 = (v16 + 44);
        v14 = (v16 + 48);
        v10 = v16;
      }

      if (*v10)
      {
        if (((*(*(*v10 + 24 * *v17) + 48) >= 0) & *(a1 + 192)) != 1 || (*(v1 + 160) & 1) == 0)
        {
          goto LABEL_23;
        }

        v51 = v8;
        v4 = *a1;
        v18 = *(a1 + 24);
        v74 = *(a1 + 8);
        v75 = v18;
        v76 = *(a1 + 40);
        v5 = *(a1 + 48);
        v19 = *(a1 + 129);
        v71 = *(a1 + 113);
        v72 = v19;
        v73[0] = *(a1 + 145);
        *(v73 + 15) = *(a1 + 160);
        v20 = *(a1 + 65);
        v67 = *(a1 + 49);
        v68 = v20;
        v21 = *(a1 + 97);
        v69 = *(a1 + 81);
        v70 = v21;
        v66 = *(a1 + 192);
        v3 = *(a1 + 176);
        v65 = *(a1 + 184);
        LOBYTE(v1) = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          goto LABEL_43;
        }

        while (1)
        {
          v22 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v1))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *v23 = 136446466;
            *&v58[8] = v74;
            *&v58[24] = v75;
            v25 = v72;
            *(v7 + 113) = v71;
            *(v7 + 129) = v25;
            *(v7 + 145) = v73[0];
            v60 = *(v2 + 111);
            *&v58[49] = v67;
            v59 = v68;
            v26 = v70;
            *(v7 + 81) = v69;
            v64 = v24;
            if (v5)
            {
              v27 = 0;
            }

            else
            {
              v27 = v4;
            }

            *v58 = v4;
            *&v58[40] = v76;
            v58[48] = v5;
            *(v7 + 97) = v26;
            v61 = v3;
            v62 = v65;
            v63 = v66;
            v52 = xmmword_26C32DAD0;
            v53 = 0;
            v54 = 0;
            v55 = v3;
            v56 = v27;
            v57 = 1;
            v28 = Interpreter.Iterator.describe(state:)(&v52);
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v64);

            *(v23 + 4) = v30;
            *(v23 + 12) = 2082;
            v3 = v51;
            *v58 = v51;
            type metadata accessor for T_SubgraphDestroy(0);
            v31 = String.init<A>(describing:)();
            v7 = v32;
            v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v64);

            *(v23 + 14) = v2;
            _os_log_impl(&dword_26C161000, v22, v1, "%{public}s %{public}s", v23, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v24, -1, -1);
            MEMORY[0x26D69EAB0](v23, -1, -1);
            v8 = v51;
          }

          else
          {
            v8 = v51;
          }

LABEL_23:
          if (!v8)
          {
            return;
          }

          v33 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v8, a1);
          if (*(a1 + 48) || (*a1 & 0xFF00) != 0x200)
          {
            Interpreter.Iterator.updateDeallocates(_:)(v33);
            return;
          }

          v34 = *(a1 + 176);
          v35 = *a1;
          if (v35 >= *(v34 + 116))
          {
            break;
          }

          v36 = *(v34 + 104);
          if (!v36)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v7 = *(*(v36 + 8 * v35) + 8);
          v37 = (a1 + 56);
          v38 = *(a1 + 72);
          *v58 = *(a1 + 56);
          *&v58[16] = v38;
          *&v58[32] = *(a1 + 88);
          *&v58[41] = *(a1 + 97);
          v39 = (a1 + 88);
          v40 = (a1 + 100);
          v41 = (a1 + 104);
          v42 = *(a1 + 116);
          while (1)
          {
            v43 = *v41;
            if (v42 < *v40)
            {
              v44 = (*v39 + 8 * v42);
              if ((v44[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v43)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v42, 0, v58);
            }

            v39 = (v43 + 32);
            v40 = (v43 + 44);
            v41 = (v43 + 48);
            v37 = v43;
          }

          if (!*v37)
          {
            goto LABEL_47;
          }

          v45 = *v37 + 24 * *v44;
          if (v33 >= *(v7 + 31))
          {
            goto LABEL_41;
          }

          v46 = *(v7 + 14);
          if (!v46)
          {
            goto LABEL_45;
          }

          v47 = *(*v45 + 32);
          v48 = v46 + 168 * v33;
          v50 = *(v48 + 144);
          v49 = v48 + 144;
          if (v47 >= v50)
          {
            *(v49 + 8) = v47;
            return;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          swift_once();
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_BeginValueUpdatea_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  result = a2();
  if (!*(a1 + 48))
  {
    v8 = *(a1 + 1) << 8;
    if (v8 == 512 || v8 == 1024 || v8 == 768)
    {
      v9 = result;
      if (readingDebug)
      {
        v10 = a1 + 7;
        v11 = *(a1 + 9);
        v71[0] = *(a1 + 7);
        v71[1] = v11;
        v72[0] = *(a1 + 11);
        *(v72 + 9) = *(a1 + 97);
        v12 = a1 + 11;
        v13 = a1 + 25;
        v14 = a1 + 13;
        result = *(a1 + 29);
        while (1)
        {
          v15 = *v14;
          if (result < *v13)
          {
            v16 = (*v12 + 8 * result);
            if ((v16[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v15)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v71);
          }

          v12 = (v15 + 32);
          v13 = (v15 + 44);
          v14 = (v15 + 48);
          v10 = v15;
        }

        v17 = *v10;
        if (!v17)
        {
          __break(1u);
          return result;
        }

        if ((*(*(v17 + 24 * *v16) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v18 = *a1;
          v19 = *(a1 + 3);
          v68 = *(a1 + 1);
          v69 = v19;
          v70 = a1[5];
          v20 = *(a1 + 48);
          v21 = *(a1 + 129);
          v65 = *(a1 + 113);
          v66 = v21;
          v67[0] = *(a1 + 145);
          *(v67 + 15) = *(a1 + 10);
          v22 = *(a1 + 65);
          v61 = *(a1 + 49);
          v62 = v22;
          v23 = *(a1 + 97);
          v63 = *(a1 + 81);
          v64 = v23;
          v60 = *(a1 + 192);
          v24 = a1[22];
          v59 = a1[23];
          v25 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v26 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v25))
          {
            v36 = v25;
            v27 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v27 = 136446466;
            v44 = v68;
            v45 = v69;
            v52 = v65;
            v53 = v66;
            *v54 = v67[0];
            *&v54[15] = *(v67 + 15);
            v48 = v61;
            v49 = v62;
            v50 = v63;
            v58 = v35;
            if (v20)
            {
              v28 = 0;
            }

            else
            {
              v28 = v18;
            }

            v43 = v18;
            v46 = v70;
            v47 = v20;
            v51 = v64;
            v55 = v24;
            v56 = v59;
            v57 = v60;
            v37 = xmmword_26C32DAD0;
            v38 = 0;
            v39 = 0;
            v40 = v24;
            v41 = v28;
            v42 = 1;
            v29 = Interpreter.Iterator.describe(state:)(&v37);
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v58);

            *(v27 + 4) = v31;
            *(v27 + 12) = 2082;
            LODWORD(v43) = v9;
            a3(0);
            v32 = String.init<A>(describing:)();
            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v58);

            *(v27 + 14) = v34;
            _os_log_impl(&dword_26C161000, v26, v36, "%{public}s %{public}s", v27, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v35, -1, -1);
            MEMORY[0x26D69EAB0](v27, -1, -1);
          }
        }
      }

      return specialized StateUpdateWithStructure.model(within:)(a1, v9, a4);
    }
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_TransactionEnda_Tt0g5(uint64_t (*a1)())
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v3 = v2;
    if (readingDebug)
    {
      v4 = (a1 + 56);
      v5 = *(a1 + 72);
      v90[0] = *(a1 + 56);
      v90[1] = v5;
      v91[0] = *(a1 + 88);
      *(v91 + 9) = *(a1 + 97);
      v6 = (a1 + 88);
      v7 = (a1 + 100);
      v8 = (a1 + 104);
      v9 = *(a1 + 29);
      while (1)
      {
        v10 = *v8;
        if (v9 < *v7)
        {
          v11 = (*v6 + 8 * v9);
          if ((v11[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v90);
        }

        v6 = (v10 + 32);
        v7 = (v10 + 44);
        v8 = (v10 + 48);
        v4 = v10;
      }

      v12 = *v4;
      if (!v12)
      {
        goto LABEL_55;
      }

      if ((*(*(v12 + 24 * *v11) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 22) + 160))
      {
        v13 = *a1;
        v14 = *(a1 + 24);
        v84 = *(a1 + 8);
        v85 = v14;
        v86 = *(a1 + 5);
        v15 = *(a1 + 48);
        v16 = *(a1 + 129);
        v81 = *(a1 + 113);
        v82 = v16;
        v83[0] = *(a1 + 145);
        *(v83 + 15) = *(a1 + 10);
        v17 = *(a1 + 65);
        v78 = *(a1 + 49);
        v79 = v17;
        v18 = *(a1 + 97);
        *v80 = *(a1 + 81);
        *&v80[16] = v18;
        v77 = *(a1 + 192);
        v19 = *(a1 + 22);
        v76 = *(a1 + 23);
        v20 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v21 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v20))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 136446466;
          *&v65[8] = v84;
          *&v65[24] = v85;
          v69 = v81;
          v70 = v82;
          *v71 = v83[0];
          *&v71[15] = *(v83 + 15);
          *&v65[49] = v78;
          v66 = v79;
          v67 = *v80;
          v75 = v23;
          if (v15)
          {
            v24 = 0;
          }

          else
          {
            v24 = v13;
          }

          *&v65[4] = HIDWORD(v13);
          *&v65[40] = v86;
          v65[48] = v15;
          v68 = *&v80[16];
          v72 = v19;
          v73 = v76;
          v74 = v77;
          v87 = xmmword_26C32DAD0;
          LOBYTE(v88) = 0;
          *(&v88 + 1) = 0;
          *&v89[0] = v19;
          BYTE8(v89[0]) = v24;
          BYTE9(v89[0]) = 1;
          v25 = Interpreter.Iterator.describe(state:)(&v87);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v75);

          *(v22 + 4) = v27;
          *(v22 + 12) = 2082;
          *v65 = v3;
          type metadata accessor for T_TransactionEnd(0);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v75);

          *(v22 + 14) = v30;
          _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v23, -1, -1);
          MEMORY[0x26D69EAB0](v22, -1, -1);
        }
      }
    }

    v31 = (a1 + 56);
    v32 = *(a1 + 72);
    *v65 = *(a1 + 56);
    *&v65[16] = v32;
    *&v65[32] = *(a1 + 88);
    v33 = a1 + 72;
    v34 = (a1 + 84);
    v35 = (a1 + 104);
    *&v65[41] = *(a1 + 97);
    v36 = (a1 + 56);
    v37 = (a1 + 72);
    v38 = (a1 + 84);
    v39 = (a1 + 104);
    while (1)
    {
      v40 = *v39;
      if (*v38 >= 2u)
      {
        v41 = *v37;
        if ((*(v41 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v40)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v65);
      }

      v37 = (v40 + 16);
      v38 = (v40 + 28);
      v39 = (v40 + 48);
      v36 = v40;
    }

    v42 = *v36;
    if (v42)
    {
      v43 = *(*(v42 + 24 * *(v41 + 8)) + 112);
      if (v43)
      {
        v44 = *(v43 + 40);
        v45 = specialized Strong.subscript.read();
        if (!*(*v46 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v3), (v47 & 1) == 0))
        {
          (v45)(&v78, 0);
          static os_log_type_t.error.getter();
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
          v55 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          return;
        }

        (v45)(&v78, 0);
        Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Transaction);
        v48 = *(a1 + 72);
        v78 = *v31;
        v79 = v48;
        *v80 = *(a1 + 88);
        *&v80[9] = *(a1 + 97);
        v49 = (a1 + 56);
        v50 = (a1 + 72);
        v51 = (a1 + 84);
        v52 = (a1 + 104);
        while (1)
        {
          v53 = *v52;
          if (*v51 >= 2u)
          {
            v54 = *v50;
            if ((*(v54 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v53)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v78);
          }

          v50 = (v53 + 16);
          v51 = (v53 + 28);
          v52 = (v53 + 48);
          v49 = v53;
        }

        v56 = *v49;
        if (!v56)
        {
          goto LABEL_56;
        }

        v57 = *(*(v56 + 24 * *(v54 + 8)) + 112);
        if (v57)
        {
          v58 = *(v57 + 40);
          a1 = specialized Strong.subscript.read();
          if (!*(*v59 + 16))
          {
            goto LABEL_58;
          }

          specialized __RawDictionaryStorage.find<A>(_:)(v3);
          if ((v60 & 1) == 0)
          {
            goto LABEL_58;
          }

          (a1)(&v87, 0);
          v61 = v31[1];
          v87 = *v31;
          v88 = v61;
          v89[0] = v31[2];
          *(v89 + 9) = *(v31 + 41);
          while (1)
          {
            v62 = *v35;
            if (*v34 >= 2u && (*(*v33 + 12) & 1) == 0)
            {
              break;
            }

            if (!v62)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v87);
            }

            v33 = (v62 + 16);
            v34 = (v62 + 28);
            v35 = (v62 + 48);
            v31 = v62;
          }

          if (!*v31)
          {
LABEL_57:
            __break(1u);
LABEL_58:
            (a1)(&v87, 0);
            *&v87 = 0;
            *(&v87 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(45);
            MEMORY[0x26D69CDB0](0xD00000000000001FLL, 0x800000026C33DF90);
            LODWORD(v84) = v3;
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x26D69CDB0](0x206E6920746F6E20, 0xEC0000007473696CLL);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v63 = *(*(*v31 + 24 * *(*v33 + 8)) + 112);
          if (v63)
          {
            v64 = *(v63 + 40);
            specialized Dictionary.subscript.setter(0, v3);
            return;
          }

          goto LABEL_54;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_PassedDeadlinea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = a1 + 7;
      v3 = *(a1 + 9);
      v63[0] = *(a1 + 7);
      v63[1] = v3;
      v64[0] = *(a1 + 11);
      *(v64 + 9) = *(a1 + 97);
      v4 = a1 + 11;
      v5 = a1 + 25;
      v6 = a1 + 13;
      v7 = *(a1 + 29);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v63);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        __break(1u);
        return;
      }

      if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = *a1;
        v12 = *(a1 + 3);
        v60 = *(a1 + 1);
        v61 = v12;
        v62 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v57 = *(a1 + 113);
        v58 = v14;
        v59[0] = *(a1 + 145);
        *(v59 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v53 = *(a1 + 49);
        v54 = v15;
        v16 = *(a1 + 97);
        v55 = *(a1 + 81);
        v56 = v16;
        v52 = *(a1 + 192);
        v17 = a1[22];
        v51 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v36 = v60;
          v37 = v61;
          v44 = v57;
          v45 = v58;
          *v46 = v59[0];
          *&v46[15] = *(v59 + 15);
          v40 = v53;
          v41 = v54;
          v42 = v55;
          v50 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v35 = v11;
          v38 = v62;
          v39 = v13;
          v43 = v56;
          v47 = v17;
          v48 = v51;
          v49 = v52;
          v29 = xmmword_26C32DAD0;
          v30 = 0;
          v31 = 0;
          v32 = v17;
          v33 = v22;
          v34 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v29);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v50);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          type metadata accessor for T_PassedDeadline(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v50);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    specialized T_PassedDeadline.model(within:)(a1);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_InstantiateEnda_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v3 = a1 + 7;
      v4 = *(a1 + 9);
      v64[0] = *(a1 + 7);
      v64[1] = v4;
      v65[0] = *(a1 + 11);
      *(v65 + 9) = *(a1 + 97);
      v5 = a1 + 11;
      v6 = a1 + 25;
      v7 = a1 + 13;
      v8 = *(a1 + 29);
      while (1)
      {
        v9 = *v7;
        if (v8 < *v6)
        {
          v10 = (*v5 + 8 * v8);
          if ((v10[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v9)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v64);
        }

        v5 = (v9 + 32);
        v6 = (v9 + 44);
        v7 = (v9 + 48);
        v3 = v9;
      }

      if (!*v3)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v29 = v2;
        v11 = *a1;
        v12 = *(a1 + 3);
        v61 = *(a1 + 1);
        v62 = v12;
        v63 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v58 = *(a1 + 113);
        v59 = v14;
        v60[0] = *(a1 + 145);
        *(v60 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v54 = *(a1 + 49);
        v55 = v15;
        v16 = *(a1 + 97);
        v56 = *(a1 + 81);
        v57 = v16;
        v53 = *(a1 + 192);
        v17 = a1[22];
        v52 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v37 = v61;
          v38 = v62;
          v45 = v58;
          v46 = v59;
          *v47 = v60[0];
          *&v47[15] = *(v60 + 15);
          v41 = v54;
          v42 = v55;
          v43 = v56;
          v51 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v36 = v11;
          v39 = v63;
          v40 = v13;
          v44 = v57;
          v48 = v17;
          v49 = v52;
          v50 = v53;
          v30 = xmmword_26C32DAD0;
          v31 = 0;
          v32 = 0;
          v33 = v17;
          v34 = v22;
          v35 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v30);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v51);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          v36 = v29;
          type metadata accessor for T_InstantiateEnd(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v51);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    specialized T_InstantiateEnd.model(within:)(a1);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_EndValueUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48))
  {
    v3 = *(a1 + 1) << 8;
    if (v3 == 512 || v3 == 1024 || v3 == 768)
    {
      if (readingDebug)
      {
        v4 = a1 + 7;
        v5 = *(a1 + 9);
        v67[0] = *(a1 + 7);
        v67[1] = v5;
        v68[0] = *(a1 + 11);
        *(v68 + 9) = *(a1 + 97);
        v6 = a1 + 11;
        v7 = a1 + 25;
        v8 = a1 + 13;
        v9 = *(a1 + 29);
        while (1)
        {
          v10 = *v8;
          if (v9 < *v7)
          {
            v11 = (*v6 + 8 * v9);
            if ((v11[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v10)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v67);
          }

          v6 = (v10 + 32);
          v7 = (v10 + 44);
          v8 = (v10 + 48);
          v4 = v10;
        }

        if (!*v4)
        {
          __break(1u);
          return;
        }

        if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v12 = v2;
          v13 = *a1;
          v14 = *(a1 + 3);
          v64 = *(a1 + 1);
          v65 = v14;
          v66 = a1[5];
          v15 = *(a1 + 48);
          v16 = *(a1 + 129);
          v61 = *(a1 + 113);
          v62 = v16;
          v63[0] = *(a1 + 145);
          *(v63 + 15) = *(a1 + 10);
          v17 = *(a1 + 65);
          v57 = *(a1 + 49);
          v58 = v17;
          v18 = *(a1 + 97);
          v59 = *(a1 + 81);
          v60 = v18;
          v56 = *(a1 + 192);
          v19 = a1[22];
          v55 = a1[23];
          v20 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v21 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v20))
          {
            v31 = v12;
            v32 = HIDWORD(v12);
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 136446466;
            v40 = v64;
            v41 = v65;
            v48 = v61;
            v49 = v62;
            *v50 = v63[0];
            *&v50[15] = *(v63 + 15);
            v44 = v57;
            v45 = v58;
            v46 = v59;
            v54 = v23;
            if (v15)
            {
              v24 = 0;
            }

            else
            {
              v24 = v13;
            }

            v39 = v13;
            v42 = v66;
            v43 = v15;
            v47 = v60;
            v51 = v19;
            v52 = v55;
            v53 = v56;
            v33 = xmmword_26C32DAD0;
            v34 = 0;
            v35 = 0;
            v36 = v19;
            v37 = v24;
            v38 = 1;
            v25 = Interpreter.Iterator.describe(state:)(&v33);
            v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v54);

            *(v22 + 4) = v27;
            *(v22 + 12) = 2082;
            LODWORD(v39) = v31;
            BYTE4(v39) = v32;
            type metadata accessor for T_EndValueUpdate(0);
            v28 = String.init<A>(describing:)();
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v54);

            *(v22 + 14) = v30;
            _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v23, -1, -1);
            MEMORY[0x26D69EAB0](v22, -1, -1);
            v2 = v31;
          }

          else
          {
            v2 = v12;
          }
        }
      }

      specialized StateUpdateWithStructure.model(within:)(a1, v2 & 0xFFFFFFFFFFLL);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_EndGraphUpdatea_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v3 = (a1 + 56);
    v4 = *(a1 + 72);
    v70[0] = *(a1 + 56);
    v70[1] = v4;
    v71[0] = *(a1 + 88);
    *(v71 + 9) = *(a1 + 97);
    v5 = (a1 + 88);
    v6 = (a1 + 100);
    v7 = (a1 + 104);
    v8 = *(a1 + 116);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v70);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (!*v3)
    {
      goto LABEL_34;
    }

    if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
    {
      v40 = v2;
      v11 = *a1;
      v12 = *(a1 + 24);
      v67 = *(a1 + 8);
      v68 = v12;
      v69 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v64 = *(a1 + 113);
      v65 = v14;
      v66[0] = *(a1 + 145);
      *(v66 + 15) = *(a1 + 160);
      v15 = *(a1 + 65);
      v60 = *(a1 + 49);
      v61 = v15;
      v16 = *(a1 + 97);
      v62 = *(a1 + 81);
      v63 = v16;
      v59 = *(a1 + 192);
      v17 = *(a1 + 176);
      v58 = *(a1 + 184);
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v47[8] = v67;
        *&v47[24] = v68;
        v51 = v64;
        v52 = v65;
        *v53 = v66[0];
        *&v53[15] = *(v66 + 15);
        *&v47[49] = v60;
        v48 = v61;
        v49 = v62;
        v57 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *v47 = v11;
        *&v47[40] = v69;
        v47[48] = v13;
        v50 = v63;
        v54 = v17;
        v55 = v58;
        v56 = v59;
        v41 = xmmword_26C32DAD0;
        v42 = 0;
        v43 = 0;
        v44 = v17;
        v45 = v22;
        v46 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v41);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v47 = v40;
        type metadata accessor for T_EndGraphUpdate(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
        v2 = v40;
      }

      else
      {
        v2 = v40;
      }
    }
  }

  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v2, a1);
  Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v29 = (a1 + 56);
  v30 = *(a1 + 72);
  *v47 = *(a1 + 56);
  *&v47[16] = v30;
  *&v47[32] = *(a1 + 88);
  *&v47[41] = *(a1 + 97);
  v31 = (a1 + 72);
  v32 = (a1 + 84);
  v33 = (a1 + 104);
  while (1)
  {
    v34 = *v33;
    if (*v32)
    {
      v35 = *v31;
      if ((v35[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v47);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v29 = v34;
  }

  v36 = *v29;
  if (!v36)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v37 = *(*(v36 + 24 * *v35) + 112);
  if (!v37)
  {
    __break(1u);
    goto LABEL_33;
  }

  v38 = *(v37 + 32);
  v39 = v38[1] - 1;
  v38[1] = v39;
  if (!v39)
  {
    ++*v38;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_BeginTreeWritea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = a1 + 7;
      v3 = *(a1 + 9);
      v67[0] = *(a1 + 7);
      v67[1] = v3;
      v68[0] = *(a1 + 11);
      *(v68 + 9) = *(a1 + 97);
      v4 = a1 + 11;
      v5 = a1 + 25;
      v6 = a1 + 13;
      v7 = *(a1 + 29);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v67);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        goto LABEL_30;
      }

      if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = *a1;
        v12 = *(a1 + 3);
        v64 = *(a1 + 1);
        v65 = v12;
        v66 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v61 = *(a1 + 113);
        v62 = v14;
        v63[0] = *(a1 + 145);
        *(v63 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v57 = *(a1 + 49);
        v58 = v15;
        v16 = *(a1 + 97);
        v59 = *(a1 + 81);
        v60 = v16;
        v56 = *(a1 + 192);
        v17 = a1[22];
        v55 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          *&v44[8] = v64;
          *&v44[24] = v65;
          v48 = v61;
          v49 = v62;
          *v50 = v63[0];
          *&v50[15] = *(v63 + 15);
          *&v44[49] = v57;
          v45 = v58;
          v46 = v59;
          v54 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          *v44 = v11;
          *&v44[40] = v66;
          v44[48] = v13;
          v47 = v60;
          v51 = v17;
          v52 = v55;
          v53 = v56;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v17;
          v42 = v22;
          v43 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v38);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v54);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          type metadata accessor for T_BeginTreeWrite(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v54);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    v29 = a1 + 7;
    v30 = *(a1 + 9);
    *v44 = *(a1 + 7);
    *&v44[16] = v30;
    *&v44[32] = *(a1 + 11);
    *&v44[41] = *(a1 + 97);
    v31 = a1 + 11;
    v32 = a1 + 25;
    v33 = a1 + 13;
    v34 = *(a1 + 29);
    while (1)
    {
      v35 = *v33;
      if (v34 < *v32)
      {
        v36 = (*v31 + 8 * v34);
        if ((v36[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v34, 0, v44);
      }

      v31 = (v35 + 32);
      v32 = (v35 + 44);
      v33 = (v35 + 48);
      v29 = v35;
    }

    v37 = *v29;
    if (v37)
    {
      specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(*(*(v37 + 24 * *v36) + 32), -1, 0);
      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_AnimationBegina_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()(v71);
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = a1 + 7;
      v3 = *(a1 + 9);
      v75[0] = *(a1 + 7);
      v75[1] = v3;
      v76[0] = *(a1 + 11);
      *(v76 + 9) = *(a1 + 97);
      v4 = a1 + 11;
      v5 = a1 + 25;
      v6 = a1 + 13;
      v7 = *(a1 + 29);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v75);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        goto LABEL_46;
      }

      if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = *a1;
        v12 = *(a1 + 3);
        v68 = *(a1 + 1);
        v69 = v12;
        v70 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v65 = *(a1 + 113);
        v66 = v14;
        v67[0] = *(a1 + 145);
        *(v67 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v62 = *(a1 + 49);
        v63 = v15;
        v16 = *(a1 + 97);
        *v64 = *(a1 + 81);
        *&v64[16] = v16;
        v61 = *(a1 + 192);
        v17 = a1[22];
        v60 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          *&v49[8] = v68;
          *&v49[24] = v69;
          v53 = v65;
          v54 = v66;
          *v55 = v67[0];
          *&v55[15] = *(v67 + 15);
          *&v49[49] = v62;
          v50 = v63;
          v51 = *v64;
          v59 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          *&v49[40] = v70;
          v49[48] = v13;
          v52 = *&v64[16];
          v56 = v17;
          v57 = v60;
          v58 = v61;
          *v72 = xmmword_26C32DAD0;
          v72[16] = 0;
          *&v73 = 0;
          *(&v73 + 1) = v17;
          LOBYTE(v74) = v22;
          BYTE1(v74) = 1;
          v23 = Interpreter.Iterator.describe(state:)(v72);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v59);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          *v49 = *v71;
          *&v49[16] = *&v71[16];
          *&v49[32] = *&v71[32];
          type metadata accessor for T_AnimationBegin(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v59);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    v29 = *v71;
    v30 = (a1 + 7);
    v31 = *(a1 + 9);
    *v49 = *(a1 + 7);
    *&v49[16] = v31;
    *&v49[32] = *(a1 + 11);
    v32 = a1 + 9;
    v33 = a1 + 21;
    v34 = a1 + 13;
    *&v49[41] = *(a1 + 97);
    v35 = a1 + 7;
    v36 = a1 + 9;
    v37 = a1 + 21;
    v38 = a1 + 13;
    while (1)
    {
      v39 = *v38;
      if (*v37 >= 2u)
      {
        v40 = *v36;
        if ((*(v40 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v39)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v49);
      }

      v36 = (v39 + 16);
      v37 = (v39 + 28);
      v38 = (v39 + 48);
      v35 = v39;
    }

    v41 = *v35;
    if (!v41)
    {
      goto LABEL_44;
    }

    v42 = *(*(v41 + 24 * *(v40 + 8)) + 112);
    if (!v42)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (!*(**(v42 + 56) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(*v71), (v43 & 1) == 0))
    {
      *v72 = v29;
      *&v72[4] = *&v71[4];
      *&v72[8] = *&v71[8];
      v73 = *&v71[24];
      v74 = 0x7FF8000000000000;
      v44 = specialized Interpreter.Iterator.observe<A>(invalidation:)(v72);
      if ((v44 & 0x100000000) == 0)
      {
        v45 = *(a1 + 9);
        v62 = *v30;
        v63 = v45;
        *v64 = *(a1 + 11);
        *&v64[9] = *(a1 + 97);
        while (1)
        {
          v46 = *v34;
          if (*v33 >= 2u && (*(*v32 + 12) & 1) == 0)
          {
            break;
          }

          if (!v46)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v62);
          }

          v32 = (v46 + 16);
          v33 = (v46 + 28);
          v34 = (v46 + 48);
          v30 = v46;
        }

        if (!*v30)
        {
          goto LABEL_45;
        }

        v47 = *(*(*v30 + 24 * *(*v32 + 8)) + 112);
        if (v47)
        {
          v48 = *(v47 + 56);
          LOBYTE(v68) = 0;
          specialized Dictionary.subscript.setter(v44, v29);
          return;
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo26T_ReuseViewInputsDifferenta_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v8 = a1 + 7;
      v9 = *(a1 + 9);
      v71[0] = *(a1 + 7);
      v71[1] = v9;
      v72[0] = *(a1 + 11);
      *(v72 + 9) = *(a1 + 97);
      v10 = a1 + 11;
      v11 = a1 + 25;
      v12 = a1 + 13;
      v13 = *(a1 + 29);
      while (1)
      {
        v14 = *v12;
        if (v13 < *v11)
        {
          v15 = (*v10 + 8 * v13);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v71);
        }

        v10 = (v14 + 32);
        v11 = (v14 + 44);
        v12 = (v14 + 48);
        v8 = v14;
      }

      if (!*v8)
      {
        __break(1u);
        return result;
      }

      if ((*(*(*v8 + 24 * *v15) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v16 = result;
        v17 = *a1;
        v18 = *(a1 + 3);
        v68 = *(a1 + 1);
        v69 = v18;
        v70 = a1[5];
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v65 = *(a1 + 113);
        v66 = v20;
        v67[0] = *(a1 + 145);
        *(v67 + 15) = *(a1 + 10);
        v21 = *(a1 + 65);
        v61 = *(a1 + 49);
        v62 = v21;
        v22 = *(a1 + 97);
        v63 = *(a1 + 81);
        v64 = v22;
        v60 = *(a1 + 192);
        v23 = a1[22];
        v59 = a1[23];
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v16;
          v36 = HIDWORD(v16);
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v44 = v68;
          v45 = v69;
          v52 = v65;
          v53 = v66;
          *v54 = v67[0];
          *&v54[15] = *(v67 + 15);
          v48 = v61;
          v49 = v62;
          v50 = v63;
          v58 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v43 = v17;
          v46 = v70;
          v47 = v19;
          v51 = v64;
          v55 = v23;
          v56 = v59;
          v57 = v60;
          v37 = xmmword_26C32DAD0;
          v38 = 0;
          v39 = 0;
          v40 = v23;
          v41 = v27;
          v42 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v37);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v58);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          LODWORD(v43) = v35;
          BYTE4(v43) = v36;
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v58);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v24, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
          result = v35;
        }

        else
        {
          result = v16;
        }
      }
    }

    return a4(a1, result & 0xFFFFFFFFFFLL);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo15T_NodeMarkValuea_Tt0g5(unsigned __int8 *a1)
{
  v5 = a1;
  specialized Interpreter.Iterator.iterate<A>()();
  if (a1[48] || a1[1] << 8 != 1024)
  {
    return;
  }

  if (!readingDebug)
  {
    goto LABEL_20;
  }

  v5 = v63;
  v7 = a1 + 56;
  v8 = *(a1 + 72);
  v82[0] = *(a1 + 56);
  v82[1] = v8;
  v83[0] = *(a1 + 88);
  *(v83 + 9) = *(a1 + 97);
  v9 = a1 + 88;
  v10 = a1 + 100;
  v11 = (a1 + 104);
  v12 = *(a1 + 29);
  while (1)
  {
    v13 = *v11;
    if (v12 < *v10)
    {
      v14 = (*v9 + 8 * v12);
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v82);
    }

    v9 = (v13 + 32);
    v10 = (v13 + 44);
    v11 = (v13 + 48);
    v7 = v13;
  }

  if (!*v7)
  {
    goto LABEL_53;
  }

  if (((*(*(*v7 + 24 * *v14) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
  {
    goto LABEL_20;
  }

  v56 = v6;
  v1 = *a1;
  v15 = *(a1 + 24);
  v79 = *(a1 + 8);
  v80 = v15;
  v81 = *(a1 + 5);
  v3 = a1[48];
  v16 = *(a1 + 129);
  v76 = *(a1 + 113);
  v77 = v16;
  v78[0] = *(a1 + 145);
  *(v78 + 15) = *(a1 + 10);
  v17 = *(a1 + 65);
  v72 = *(a1 + 49);
  v73 = v17;
  v18 = *(a1 + 97);
  v74 = *(a1 + 81);
  v75 = v18;
  v71 = a1[192];
  v2 = *(a1 + 22);
  v70 = *(a1 + 23);
  LOBYTE(v19) = static os_log_type_t.default.getter();
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v20 = readingDebugLog;
    if (os_log_type_enabled(readingDebugLog, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136446466;
      *&v63[8] = v79;
      *&v63[24] = v80;
      v23 = v77;
      *(v5 + 113) = v76;
      *(v5 + 129) = v23;
      *(v5 + 145) = v78[0];
      v65 = *(v78 + 15);
      *&v63[49] = v72;
      v64 = v73;
      v24 = v75;
      *(v5 + 81) = v74;
      v69 = v22;
      if (v3)
      {
        v25 = 0;
      }

      else
      {
        v25 = v1;
      }

      *v63 = v1;
      *&v63[40] = v81;
      v63[48] = v3;
      *(v5 + 97) = v24;
      v66 = v2;
      v67 = v70;
      v68 = v71;
      v57 = xmmword_26C32DAD0;
      v58 = 0;
      v59 = 0;
      v60 = v2;
      v61 = v25;
      v62 = 1;
      v26 = Interpreter.Iterator.describe(state:)(&v57);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v69);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2082;
      v2 = v56;
      *v63 = v56;
      type metadata accessor for T_NodeMarkValue(0);
      v29 = String.init<A>(describing:)();
      v5 = v30;
      v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v69);

      *(v21 + 14) = v1;
      _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v22, -1, -1);
      MEMORY[0x26D69EAB0](v21, -1, -1);
      v6 = v56;
    }

    else
    {
      v6 = v56;
    }

LABEL_20:
    v31 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v6, a1);
    if (a1[48])
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v19 = *(a1 + 22);
    v32 = *a1;
    if (v32 >= *(v19 + 116))
    {
      goto LABEL_41;
    }

    v33 = *(v19 + 104);
    if (!v33)
    {
      goto LABEL_48;
    }

    v5 = v31;
    v34 = *(*(v33 + 8 * v32) + 8);
    if (v31 >= *(v34 + 84))
    {
      goto LABEL_42;
    }

    v35 = *(v34 + 72);
    if (!v35)
    {
      goto LABEL_49;
    }

    v36 = v35 + 312 * v31;
    v37 = *(v36 + 264);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_43;
    }

    *(v36 + 264) = v39;
    v40 = *a1;
    v41 = 312 * v31;
    v42 = a1[48];
    v43 = (a1 + 56);
    v44 = *(a1 + 72);
    *v63 = *(a1 + 56);
    *&v63[16] = v44;
    *&v63[32] = *(a1 + 88);
    *&v63[41] = *(a1 + 97);
    v45 = a1 + 88;
    v46 = a1 + 100;
    v47 = (a1 + 104);
    v48 = *(a1 + 29);
    while (1)
    {
      v49 = *v47;
      if (v48 < *v46)
      {
        v50 = (*v45 + 8 * v48);
        if ((v50[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v49)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v48, 0, v63);
      }

      v45 = (v49 + 32);
      v46 = (v49 + 44);
      v47 = (v49 + 48);
      v43 = v49;
    }

    v54 = *v43;
    if (!v54)
    {
      goto LABEL_52;
    }

    v55 = v54 + 24 * *v50;
    if (v42)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v40 >= *(v19 + 116))
    {
      goto LABEL_44;
    }

    v51 = *(v19 + 104);
    if (!v51)
    {
      goto LABEL_50;
    }

    v52 = *(*(v51 + 8 * v40) + 8);
    if (v5 < *(v52 + 84))
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v53 = *(v52 + 72);
  if (v53)
  {
    *(v53 + v41 + 184) = *(*v55 + 32);
    LOBYTE(v57) = 1;
    LOBYTE(v79) = 1;
    LOBYTE(v70) = 0;
    LODWORD(v72) = v5;
    BYTE4(v72) = 0;
    *(&v72 + 1) = 0;
    LOBYTE(v73) = 1;
    *(&v73 + 4) = 0xFFFFFFFFLL;
    HIDWORD(v73) = 0;
    LOBYTE(v74) = 1;
    DWORD1(v74) = -1;
    *(&v74 + 1) = 0;
    LODWORD(v75) = 0;
    BYTE4(v75) = 0;
    specialized Interpreter.Iterator.observe<A>(invalidation:)(&v72);
    return;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo15T_EndNodeUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48))
  {
    v3 = *(a1 + 1) << 8;
    if (v3 == 512 || v3 == 1024 || v3 == 768)
    {
      if (readingDebug)
      {
        v4 = a1 + 7;
        v5 = *(a1 + 9);
        v67[0] = *(a1 + 7);
        v67[1] = v5;
        v68[0] = *(a1 + 11);
        *(v68 + 9) = *(a1 + 97);
        v6 = a1 + 11;
        v7 = a1 + 25;
        v8 = a1 + 13;
        v9 = *(a1 + 29);
        while (1)
        {
          v10 = *v8;
          if (v9 < *v7)
          {
            v11 = (*v6 + 8 * v9);
            if ((v11[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v10)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v67);
          }

          v6 = (v10 + 32);
          v7 = (v10 + 44);
          v8 = (v10 + 48);
          v4 = v10;
        }

        if (!*v4)
        {
          __break(1u);
          return;
        }

        if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v12 = v2;
          v13 = *a1;
          v14 = *(a1 + 3);
          v64 = *(a1 + 1);
          v65 = v14;
          v66 = a1[5];
          v15 = *(a1 + 48);
          v16 = *(a1 + 129);
          v61 = *(a1 + 113);
          v62 = v16;
          v63[0] = *(a1 + 145);
          *(v63 + 15) = *(a1 + 10);
          v17 = *(a1 + 65);
          v57 = *(a1 + 49);
          v58 = v17;
          v18 = *(a1 + 97);
          v59 = *(a1 + 81);
          v60 = v18;
          v56 = *(a1 + 192);
          v19 = a1[22];
          v55 = a1[23];
          v20 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v21 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v20))
          {
            v31 = v12;
            v32 = HIDWORD(v12);
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 136446466;
            v40 = v64;
            v41 = v65;
            v48 = v61;
            v49 = v62;
            *v50 = v63[0];
            *&v50[15] = *(v63 + 15);
            v44 = v57;
            v45 = v58;
            v46 = v59;
            v54 = v23;
            if (v15)
            {
              v24 = 0;
            }

            else
            {
              v24 = v13;
            }

            v39 = v13;
            v42 = v66;
            v43 = v15;
            v47 = v60;
            v51 = v19;
            v52 = v55;
            v53 = v56;
            v33 = xmmword_26C32DAD0;
            v34 = 0;
            v35 = 0;
            v36 = v19;
            v37 = v24;
            v38 = 1;
            v25 = Interpreter.Iterator.describe(state:)(&v33);
            v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v54);

            *(v22 + 4) = v27;
            *(v22 + 12) = 2082;
            LODWORD(v39) = v31;
            WORD2(v39) = v32;
            type metadata accessor for T_EndNodeUpdate(0);
            v28 = String.init<A>(describing:)();
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v54);

            *(v22 + 14) = v30;
            _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v23, -1, -1);
            MEMORY[0x26D69EAB0](v22, -1, -1);
            v2 = v31;
          }

          else
          {
            v2 = v12;
          }
        }
      }

      specialized StateUpdateWithStructure.model(within:)(a1, v2 & 0xFFFFFFFFFFFFLL);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo15T_CompareFaileda_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v5 = HIDWORD(v2);
      v6 = HIDWORD(v3);
      v7 = HIDWORD(v4);
      v8 = (a1 + 56);
      v9 = *(a1 + 72);
      v72[0] = *(a1 + 56);
      v72[1] = v9;
      v73[0] = *(a1 + 88);
      *(v73 + 9) = *(a1 + 97);
      v10 = (a1 + 88);
      v11 = (a1 + 100);
      v12 = (a1 + 104);
      v13 = *(a1 + 116);
      while (1)
      {
        v14 = *v12;
        if (v13 < *v11)
        {
          v15 = (*v10 + 8 * v13);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v72);
        }

        v10 = (v14 + 32);
        v11 = (v14 + 44);
        v12 = (v14 + 48);
        v8 = v14;
      }

      if (!*v8)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v8 + 24 * *v15) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v36 = v3;
        v37 = v4;
        v35 = v2;
        v16 = *a1;
        v17 = *(a1 + 24);
        v69 = *(a1 + 8);
        v70 = v17;
        v71 = *(a1 + 40);
        v18 = *(a1 + 48);
        v19 = *(a1 + 129);
        v66 = *(a1 + 113);
        v67 = v19;
        v68[0] = *(a1 + 145);
        *(v68 + 15) = *(a1 + 160);
        v20 = *(a1 + 65);
        v62 = *(a1 + 49);
        v63 = v20;
        v21 = *(a1 + 97);
        v64 = *(a1 + 81);
        v65 = v21;
        v61 = *(a1 + 192);
        v22 = *(a1 + 176);
        v60 = *(a1 + 184);
        v23 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v24 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v23))
        {
          v34 = v23;
          v25 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v25 = 136446466;
          v45 = v69;
          v46 = v70;
          v53 = v66;
          v54 = v67;
          *v55 = v68[0];
          *&v55[15] = *(v68 + 15);
          v49 = v62;
          v50 = v63;
          v51 = v64;
          v59 = v33;
          if (v18)
          {
            v26 = 0;
          }

          else
          {
            v26 = v16;
          }

          v44 = v16;
          v47 = v71;
          v48 = v18;
          v52 = v65;
          v56 = v22;
          v57 = v60;
          v58 = v61;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v22;
          v42 = v26;
          v43 = 1;
          v27 = Interpreter.Iterator.describe(state:)(&v38);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v59);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          v44 = __PAIR64__(v5, v35);
          *&v45 = __PAIR64__(v6, v36);
          *(&v45 + 1) = __PAIR64__(v7, v37);
          type metadata accessor for T_CompareFailed(0);
          v30 = String.init<A>(describing:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v59);

          *(v25 + 14) = v32;
          _os_log_impl(&dword_26C161000, v24, v34, "%{public}s %{public}s", v25, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v33, -1, -1);
          MEMORY[0x26D69EAB0](v25, -1, -1);
          v4 = v37;
          v3 = v36;
          v2 = v35;
        }

        else
        {
          v2 = v35;
          v3 = v36;
          v4 = v37;
        }
      }
    }

    T_CompareFailed.model(within:)(a1, v2, v3, v4);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo15T_AnimationTicka_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  *v38 = v2;
  v38[8] = v3;
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v4 = *&v38[1];
    if (readingDebug)
    {
      v5 = a1 + 7;
      v6 = *(a1 + 9);
      v65[0] = *(a1 + 7);
      v65[1] = v6;
      v66[0] = *(a1 + 11);
      *(v66 + 9) = *(a1 + 97);
      v7 = a1 + 11;
      v8 = a1 + 25;
      v9 = a1 + 13;
      v10 = *(a1 + 29);
      while (1)
      {
        v11 = *v9;
        if (v10 < *v8)
        {
          v12 = (*v7 + 8 * v10);
          if ((v12[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v11)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v65);
        }

        v7 = (v11 + 32);
        v8 = (v11 + 44);
        v9 = (v11 + 48);
        v5 = v11;
      }

      if (!*v5)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v5 + 24 * *v12) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v31 = v2;
        v13 = *a1;
        v14 = *(a1 + 3);
        v62 = *(a1 + 1);
        v63 = v14;
        v64 = a1[5];
        v15 = *(a1 + 48);
        v16 = *(a1 + 129);
        v59 = *(a1 + 113);
        v60 = v16;
        v61[0] = *(a1 + 145);
        *(v61 + 15) = *(a1 + 10);
        v17 = *(a1 + 65);
        v55 = *(a1 + 49);
        v56 = v17;
        v18 = *(a1 + 97);
        v57 = *(a1 + 81);
        v58 = v18;
        v54 = *(a1 + 192);
        v19 = a1[22];
        v53 = a1[23];
        v20 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v21 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v20))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 136446466;
          *&v38[8] = v62;
          v39 = v63;
          v46 = v59;
          v47 = v60;
          *v48 = v61[0];
          *&v48[15] = *(v61 + 15);
          v42 = v55;
          v43 = v56;
          v44 = v57;
          v52 = v23;
          if (v15)
          {
            v24 = 0;
          }

          else
          {
            v24 = v13;
          }

          *v38 = v13;
          v40 = v64;
          v41 = v15;
          v45 = v58;
          v49 = v19;
          v50 = v53;
          v51 = v54;
          v32 = xmmword_26C32DAD0;
          v33 = 0;
          v34 = 0;
          v35 = v19;
          v36 = v24;
          v37 = 1;
          v25 = Interpreter.Iterator.describe(state:)(&v32);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v52);

          *(v22 + 4) = v27;
          *(v22 + 12) = 2082;
          v38[0] = v31;
          *&v38[1] = v4;
          type metadata accessor for T_AnimationTick(0);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v52);

          *(v22 + 14) = v30;
          _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v23, -1, -1);
          MEMORY[0x26D69EAB0](v22, -1, -1);
          LOBYTE(v2) = v31;
        }

        else
        {
          LOBYTE(v2) = v31;
        }
      }
    }

    v38[0] = v2;
    *&v38[1] = v4;
    T_AnimationTick.model(within:)(a1, *v38, SHIBYTE(v4));
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo15T_ActionEnqueuea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v3 = v2;
    v4 = HIDWORD(v2);
    if (readingDebug)
    {
      v5 = a1 + 7;
      v6 = *(a1 + 9);
      v81[0] = *(a1 + 7);
      v81[1] = v6;
      v82[0] = *(a1 + 11);
      *(v82 + 9) = *(a1 + 97);
      v7 = a1 + 11;
      v8 = a1 + 25;
      v9 = a1 + 13;
      v10 = *(a1 + 29);
      while (1)
      {
        v11 = *v9;
        if (v10 < *v8)
        {
          v12 = (*v7 + 8 * v10);
          if ((v12[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v11)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v81);
        }

        v7 = (v11 + 32);
        v8 = (v11 + 44);
        v9 = (v11 + 48);
        v5 = v11;
      }

      v13 = *v5;
      if (!v13)
      {
        goto LABEL_49;
      }

      if ((*(*(v13 + 24 * *v12) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v14 = *a1;
        v15 = *(a1 + 3);
        v75 = *(a1 + 1);
        v76 = v15;
        v77 = a1[5];
        v16 = *(a1 + 48);
        v17 = *(a1 + 129);
        v72 = *(a1 + 113);
        v73 = v17;
        v74[0] = *(a1 + 145);
        *(v74 + 15) = *(a1 + 10);
        v18 = *(a1 + 65);
        v69 = *(a1 + 49);
        v70 = v18;
        v19 = *(a1 + 97);
        *v71 = *(a1 + 81);
        *&v71[16] = v19;
        v68 = *(a1 + 192);
        v20 = a1[22];
        v67 = a1[23];
        v21 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v22 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v21))
        {
          v23 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v23 = 136446466;
          *&v56[8] = v75;
          *&v56[24] = v76;
          v60 = v72;
          v61 = v73;
          *v62 = v74[0];
          *&v62[15] = *(v74 + 15);
          *&v56[49] = v69;
          v57 = v70;
          v58 = *v71;
          v66 = v55;
          if (v16)
          {
            v24 = 0;
          }

          else
          {
            v24 = v14;
          }

          *&v56[40] = v77;
          v56[48] = v16;
          v59 = *&v71[16];
          v63 = v20;
          v64 = v67;
          v65 = v68;
          *v78 = xmmword_26C32DAD0;
          v78[16] = 0;
          *&v79 = 0;
          *(&v79 + 1) = v20;
          LOBYTE(v80) = v24;
          BYTE1(v80) = 1;
          v25 = Interpreter.Iterator.describe(state:)(v78);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v66);

          *(v23 + 4) = v27;
          *(v23 + 12) = 2082;
          *v56 = v3;
          *&v56[4] = v4;
          type metadata accessor for T_ActionEnqueue(0);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v66);

          *(v23 + 14) = v30;
          _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v55, -1, -1);
          MEMORY[0x26D69EAB0](v23, -1, -1);
        }
      }
    }

    Event.Action.Kind.init(rawValue:)(v4);
    v31 = v56[0];
    if (v56[0] == 6)
    {
      v31 = 0;
    }

    *v78 = v3;
    v78[4] = v31;
    *&v78[8] = 0u;
    v79 = 0u;
    v80 = 0;
    v32 = specialized Interpreter.Iterator.observe<A>(invalidation:)(v78);
    if ((v32 & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v33 = v32;
      v34 = (a1 + 7);
      v35 = *(a1 + 9);
      *v56 = *(a1 + 7);
      *&v56[16] = v35;
      *&v56[32] = *(a1 + 11);
      v36 = a1 + 9;
      v37 = a1 + 21;
      v38 = a1 + 13;
      *&v56[41] = *(a1 + 97);
      v39 = a1 + 7;
      v40 = a1 + 9;
      v41 = a1 + 21;
      v42 = a1 + 13;
      while (1)
      {
        v43 = *v42;
        if (*v41 >= 2u)
        {
          v44 = *v40;
          if ((*(v44 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v43)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v56);
        }

        v40 = (v43 + 16);
        v41 = (v43 + 28);
        v42 = (v43 + 48);
        v39 = v43;
      }

      v45 = *v39;
      if (!v45)
      {
        goto LABEL_47;
      }

      v46 = *(*(v45 + 24 * *(v44 + 8)) + 112);
      if (v46)
      {
        if (*(**(v46 + 48) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v3);
          if (v47)
          {
            goto LABEL_46;
          }
        }

        v48 = *(a1 + 9);
        v69 = *v34;
        v70 = v48;
        *v71 = *(a1 + 11);
        *&v71[9] = *(a1 + 97);
        while (1)
        {
          v49 = *v38;
          if (*v37 >= 2u && (*(*v36 + 12) & 1) == 0)
          {
            break;
          }

          if (!v49)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v69);
          }

          v36 = (v49 + 16);
          v37 = (v49 + 28);
          v38 = (v49 + 48);
          v34 = v49;
        }

        if (!*v34)
        {
          goto LABEL_48;
        }

        v50 = *(*(*v34 + 24 * *(*v36 + 8)) + 112);
        if (v50)
        {
          v51 = *(v50 + 48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_26C328DC0;
          *(v52 + 32) = v33;
          v53 = *v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v75 = *v51;
          *v51 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v3, isUniquelyReferenced_nonNull_native);
          *v51 = v75;
          outlined destroy of Event.Action(v78);
          return;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_45;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo14T_NodeSetValuea_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v5 = v4;
    if (!readingDebug)
    {
      goto LABEL_19;
    }

    v6 = (a1 + 56);
    v7 = *(a1 + 72);
    v78[0] = *(a1 + 56);
    v78[1] = v7;
    v79[0] = *(a1 + 88);
    *(v79 + 9) = *(a1 + 97);
    v8 = (a1 + 88);
    v9 = (a1 + 100);
    v10 = (a1 + 104);
    v11 = *(a1 + 116);
    while (1)
    {
      v12 = *v10;
      if (v11 < *v9)
      {
        v13 = (*v8 + 8 * v11);
        if ((v13[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v12)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v78);
      }

      v8 = (v12 + 32);
      v9 = (v12 + 44);
      v10 = (v12 + 48);
      v6 = v12;
    }

    v14 = *v6;
    if (v14)
    {
      if (((*(*(v14 + 24 * *v13) + 48) >= 0) & *(a1 + 192)) != 1 || (*(*(a1 + 176) + 160) & 1) == 0)
      {
        goto LABEL_19;
      }

      v1 = *a1;
      v15 = *(a1 + 24);
      v72 = *(a1 + 8);
      v73 = v15;
      v74 = *(a1 + 40);
      v2 = *(a1 + 48);
      v16 = *(a1 + 129);
      v69 = *(a1 + 113);
      v70 = v16;
      v71[0] = *(a1 + 145);
      *(v71 + 15) = *(a1 + 160);
      v17 = *(a1 + 65);
      v66 = *(a1 + 49);
      v67 = v17;
      v18 = *(a1 + 97);
      *v68 = *(a1 + 81);
      *&v68[16] = v18;
      v65 = *(a1 + 192);
      v19 = *(a1 + 176);
      v64 = *(a1 + 184);
      LOBYTE(v20) = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v21 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v20))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 136446466;
          *&v53[8] = v72;
          *&v53[24] = v73;
          v57 = v69;
          v58 = v70;
          *v59 = v71[0];
          *&v59[15] = *(v71 + 15);
          *&v53[49] = v66;
          v54 = v67;
          v55 = *v68;
          v63 = v23;
          v24 = v23;
          if (v2)
          {
            v25 = 0;
          }

          else
          {
            v25 = v1;
          }

          *&v53[4] = HIDWORD(v1);
          *&v53[40] = v74;
          v53[48] = v2;
          v56 = *&v68[16];
          v60 = v19;
          v61 = v64;
          v62 = v65;
          v75 = xmmword_26C32DAD0;
          LOBYTE(v76) = 0;
          *(&v76 + 1) = 0;
          *&v77[0] = v19;
          BYTE8(v77[0]) = v25;
          BYTE9(v77[0]) = 1;
          v26 = Interpreter.Iterator.describe(state:)(&v75);
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v63);

          *(v22 + 4) = v28;
          *(v22 + 12) = 2082;
          *v53 = v5;
          type metadata accessor for T_NodeSetValue(0);
          v29 = String.init<A>(describing:)();
          v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v63);

          *(v22 + 14) = v1;
          _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v24, -1, -1);
          MEMORY[0x26D69EAB0](v22, -1, -1);
        }

LABEL_19:
        v20 = (a1 + 56);
        v31 = *(a1 + 72);
        *v53 = *(a1 + 56);
        *&v53[16] = v31;
        *&v53[32] = *(a1 + 88);
        *&v53[41] = *(a1 + 97);
        v32 = (a1 + 88);
        v33 = (a1 + 100);
        v34 = (a1 + 104);
        v35 = *(a1 + 116);
        v36 = (a1 + 56);
        v37 = (a1 + 104);
        while (1)
        {
          v38 = *v37;
          if (v35 < *v33)
          {
            v39 = (*v32 + 8 * v35);
            if ((v39[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v38)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v35, 0, v53);
          }

          v32 = (v38 + 32);
          v33 = (v38 + 44);
          v37 = (v38 + 48);
          v36 = v38;
        }

        if (!*v36)
        {
          goto LABEL_51;
        }

        v19 = *(*(*v36 + 24 * *v39) + 32);
        if ((_s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v5, a1) & 0x100000000) == 0)
        {
          T_NodeSetValue.Closure.apply(within:)(a1, v19, v5);
          return;
        }

        v40 = *(a1 + 72);
        v66 = *v20;
        v67 = v40;
        *v68 = *(a1 + 88);
        v41 = (a1 + 72);
        a1 += 84;
        *&v68[9] = *(v20 + 41);
        v42 = v20;
        v43 = v41;
        v44 = a1;
        v45 = v34;
        while (1)
        {
          v46 = *v45;
          if (*v44 >= 2u)
          {
            v47 = *v43;
            if ((*(v47 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v46)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v66);
          }

          v43 = (v46 + 16);
          v44 = (v46 + 28);
          v45 = (v46 + 48);
          v42 = v46;
        }

        v48 = *v42;
        if (!v48)
        {
          goto LABEL_53;
        }

        v49 = *(*(v48 + 24 * *(v47 + 8)) + 112);
        if (!v49)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (*(v49 + 124) == 1)
        {
          break;
        }

        __break(1u);
LABEL_48:
        swift_once();
      }

      v50 = v20[1];
      v75 = *v20;
      v76 = v50;
      v77[0] = v20[2];
      *(v77 + 9) = *(v20 + 41);
      while (1)
      {
        v51 = *v34;
        if (*a1 >= 2u && (*(*v41 + 12) & 1) == 0)
        {
          break;
        }

        if (!v51)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v75);
        }

        v41 = (v51 + 16);
        a1 = v51 + 28;
        v34 = (v51 + 48);
        v20 = v51;
      }

      if (*v20)
      {
        v52 = *(*(*v20 + 24 * *(*v41 + 8)) + 112);
        if (v52)
        {
          *(v52 + 112) = v19;
          *(v52 + 120) = v5;
          *(v52 + 124) = 0;
          return;
        }

        goto LABEL_50;
      }
    }

    else
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo14T_NodeSetDirtya_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024 && readingDebug)
  {
    v3 = a1 + 7;
    v4 = *(a1 + 9);
    v66[0] = *(a1 + 7);
    v66[1] = v4;
    v67[0] = *(a1 + 11);
    *(v67 + 9) = *(a1 + 97);
    v5 = a1 + 11;
    v6 = a1 + 25;
    v7 = a1 + 13;
    v8 = *(a1 + 29);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v66);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (*v3)
    {
      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = v2;
        v12 = *a1;
        v13 = *(a1 + 3);
        v63 = *(a1 + 1);
        v64 = v13;
        v65 = a1[5];
        v14 = *(a1 + 48);
        v15 = *(a1 + 129);
        v60 = *(a1 + 113);
        v61 = v15;
        v62[0] = *(a1 + 145);
        *(v62 + 15) = *(a1 + 10);
        v16 = *(a1 + 65);
        v56 = *(a1 + 49);
        v57 = v16;
        v17 = *(a1 + 97);
        v58 = *(a1 + 81);
        v59 = v17;
        v55 = *(a1 + 192);
        v18 = a1[22];
        v54 = a1[23];
        v19 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v20 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v19))
        {
          v30 = v11;
          v31 = HIDWORD(v11);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 136446466;
          v39 = v63;
          v40 = v64;
          v47 = v60;
          v48 = v61;
          *v49 = v62[0];
          *&v49[15] = *(v62 + 15);
          v43 = v56;
          v44 = v57;
          v45 = v58;
          v53 = v22;
          if (v14)
          {
            v23 = 0;
          }

          else
          {
            v23 = v12;
          }

          v38 = v12;
          v41 = v65;
          v42 = v14;
          v46 = v59;
          v50 = v18;
          v51 = v54;
          v52 = v55;
          v32 = xmmword_26C32DAD0;
          v33 = 0;
          v34 = 0;
          v35 = v18;
          v36 = v23;
          v37 = 1;
          v24 = Interpreter.Iterator.describe(state:)(&v32);
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v53);

          *(v21 + 4) = v26;
          *(v21 + 12) = 2082;
          LODWORD(v38) = v30;
          BYTE4(v38) = v31;
          type metadata accessor for T_NodeSetDirty(0);
          v27 = String.init<A>(describing:)();
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v53);

          *(v21 + 14) = v29;
          _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v22, -1, -1);
          MEMORY[0x26D69EAB0](v21, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo14T_GraphDestroya_Tt0g5(unsigned __int8 *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!a1[48] && a1[1] << 8 == 512)
  {
    if (!readingDebug)
    {
      goto LABEL_20;
    }

    v1 = &v69;
    v8 = v60;
    v9 = a1 + 56;
    v10 = *(a1 + 72);
    v79[0] = *(a1 + 56);
    v79[1] = v10;
    v80[0] = *(a1 + 88);
    *(v80 + 9) = *(a1 + 97);
    v11 = a1 + 88;
    v12 = a1 + 100;
    v13 = (a1 + 104);
    v14 = *(a1 + 29);
    while (1)
    {
      v15 = *v13;
      if (v14 < *v12)
      {
        v16 = (*v11 + 8 * v14);
        if ((v16[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v15)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v79);
      }

      v11 = (v15 + 32);
      v12 = (v15 + 44);
      v13 = (v15 + 48);
      v9 = v15;
    }

    if (*v9)
    {
      if (((*(*(*v9 + 24 * *v16) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
      {
        goto LABEL_20;
      }

      v52 = v7;
      v53 = v6;
      v4 = *a1;
      v17 = *(a1 + 24);
      v76 = *(a1 + 8);
      v77 = v17;
      v78 = *(a1 + 5);
      v2 = a1[48];
      v18 = *(a1 + 129);
      v73 = *(a1 + 113);
      v74 = v18;
      v75[0] = *(a1 + 145);
      *(v75 + 15) = *(a1 + 10);
      v19 = *(a1 + 65);
      v69 = *(a1 + 49);
      v70 = v19;
      v20 = *(a1 + 97);
      v71 = *(a1 + 81);
      v72 = v20;
      v68 = a1[192];
      v3 = *(a1 + 22);
      v67 = *(a1 + 23);
      LOBYTE(v21) = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v22 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v21))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136446466;
          *&v60[8] = v76;
          *&v60[24] = v77;
          v25 = v74;
          *(v8 + 113) = v73;
          *(v8 + 129) = v25;
          *(v8 + 145) = v75[0];
          v62 = *(v1 + 111);
          *&v60[49] = v69;
          v61 = v70;
          v26 = v72;
          *(v8 + 81) = v71;
          v66 = v24;
          if (v2)
          {
            v27 = 0;
          }

          else
          {
            v27 = v4;
          }

          *v60 = v4;
          *&v60[40] = v78;
          v60[48] = v2;
          *(v8 + 97) = v26;
          v63 = v3;
          v64 = v67;
          v65 = v68;
          v54 = xmmword_26C32DAD0;
          v55 = 0;
          v56 = 0;
          v57 = v3;
          v58 = v27;
          v59 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v54);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v66);

          *(v23 + 4) = v30;
          *(v23 + 12) = 2082;
          v2 = v53;
          *v60 = v53;
          *&v60[8] = v52;
          type metadata accessor for T_GraphDestroy(0);
          v31 = String.init<A>(describing:)();
          v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v66);

          *(v23 + 14) = v1;
          _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v24, -1, -1);
          MEMORY[0x26D69EAB0](v23, -1, -1);
          v6 = v53;
        }

        else
        {
          v6 = v53;
        }

LABEL_20:
        v8 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v6, a1);
        v21 = *a1;
        v33 = a1[48];
        v34 = *(a1 + 22);
        v35 = (a1 + 56);
        v36 = *(a1 + 72);
        *v60 = *(a1 + 56);
        *&v60[16] = v36;
        *&v60[32] = *(a1 + 88);
        v37 = a1 + 88;
        v38 = a1 + 100;
        v39 = (a1 + 104);
        v40 = *(a1 + 29);
        *&v60[41] = *(a1 + 97);
        while (1)
        {
          v41 = *v39;
          if (v40 < *v38)
          {
            v42 = (*v37 + 8 * v40);
            if ((v42[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v41)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v40, 0, v60);
          }

          v37 = (v41 + 32);
          v38 = (v41 + 44);
          v39 = (v41 + 48);
          v35 = v41;
        }

        v50 = *v35;
        if (!v50)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v51 = v50 + 24 * *v42;
        if (v33)
        {
          break;
        }

        if (v21 >= *(v34 + 116))
        {
          goto LABEL_36;
        }

        v43 = *(v34 + 104);
        if (!v43)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v44 = *(*(v43 + 8 * v21) + 8);
        if (v8 >= *(v44 + 148))
        {
          goto LABEL_37;
        }

        v45 = *(v44 + 136);
        if (!v45)
        {
          goto LABEL_41;
        }

        v46 = *(*v51 + 32);
        v47 = v45 + 80 * v8;
        v49 = *(v47 + 32);
        v48 = v47 + 32;
        if (v46 >= v49)
        {
          *(v48 + 8) = v46;
          return;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        swift_once();
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_43:
    __break(1u);
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo17T_SubgraphCreateda_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  result = a2();
  if (!*(a1 + 48))
  {
    v9 = *(a1 + 1) << 8;
    if (v9 == 512 || v9 == 1024 || v9 == 768)
    {
      v10 = v8;
      v11 = result;
      if (readingDebug)
      {
        v12 = a1 + 7;
        v13 = *(a1 + 9);
        v73[0] = *(a1 + 7);
        v73[1] = v13;
        v74[0] = *(a1 + 11);
        *(v74 + 9) = *(a1 + 97);
        v14 = a1 + 11;
        v15 = a1 + 25;
        v16 = a1 + 13;
        result = *(a1 + 29);
        while (1)
        {
          v17 = *v16;
          if (result < *v15)
          {
            v18 = (*v14 + 8 * result);
            if ((v18[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v17)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v73);
          }

          v14 = (v17 + 32);
          v15 = (v17 + 44);
          v16 = (v17 + 48);
          v12 = v17;
        }

        v19 = *v12;
        if (!v19)
        {
          __break(1u);
          return result;
        }

        if ((*(*(v19 + 24 * *v18) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v20 = *a1;
          v21 = *(a1 + 3);
          v70 = *(a1 + 1);
          v71 = v21;
          v72 = a1[5];
          v38 = *(a1 + 48);
          v22 = *(a1 + 129);
          v67 = *(a1 + 113);
          v68 = v22;
          v69[0] = *(a1 + 145);
          *(v69 + 15) = *(a1 + 10);
          v23 = *(a1 + 65);
          v63 = *(a1 + 49);
          v64 = v23;
          v24 = *(a1 + 97);
          v65 = *(a1 + 81);
          v66 = v24;
          v62 = *(a1 + 192);
          v25 = a1[22];
          v61 = a1[23];
          v26 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v27 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v26))
          {
            log = v27;
            v28 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v28 = 136446466;
            v46 = v70;
            v47 = v71;
            v54 = v67;
            v55 = v68;
            *v56 = v69[0];
            *&v56[15] = *(v69 + 15);
            v50 = v63;
            v51 = v64;
            v52 = v65;
            v60 = v36;
            if (v38)
            {
              v29 = 0;
            }

            else
            {
              v29 = v20;
            }

            v45 = v20;
            v48 = v72;
            v49 = v38;
            v53 = v66;
            v57 = v25;
            v58 = v61;
            v59 = v62;
            v39 = xmmword_26C32DAD0;
            v40 = 0;
            v41 = 0;
            v42 = v25;
            v43 = v29;
            v44 = 1;
            v30 = Interpreter.Iterator.describe(state:)(&v39);
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v60);

            *(v28 + 4) = v32;
            *(v28 + 12) = 2082;
            v45 = v11;
            *&v46 = v10;
            a3(0);
            v33 = String.init<A>(describing:)();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v60);

            *(v28 + 14) = v35;
            _os_log_impl(&dword_26C161000, log, v26, "%{public}s %{public}s", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v36, -1, -1);
            MEMORY[0x26D69EAB0](v28, -1, -1);
          }
        }
      }

      return a4(a1, v11, v10);
    }
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo14T_EndTreeWritea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = a1 + 7;
      v3 = *(a1 + 9);
      v63[0] = *(a1 + 7);
      v63[1] = v3;
      v64[0] = *(a1 + 11);
      *(v64 + 9) = *(a1 + 97);
      v4 = a1 + 11;
      v5 = a1 + 25;
      v6 = a1 + 13;
      v7 = *(a1 + 29);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v63);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        __break(1u);
        return;
      }

      if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = *a1;
        v12 = *(a1 + 3);
        v60 = *(a1 + 1);
        v61 = v12;
        v62 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v57 = *(a1 + 113);
        v58 = v14;
        v59[0] = *(a1 + 145);
        *(v59 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v53 = *(a1 + 49);
        v54 = v15;
        v16 = *(a1 + 97);
        v55 = *(a1 + 81);
        v56 = v16;
        v52 = *(a1 + 192);
        v17 = a1[22];
        v51 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v36 = v60;
          v37 = v61;
          v44 = v57;
          v45 = v58;
          *v46 = v59[0];
          *&v46[15] = *(v59 + 15);
          v40 = v53;
          v41 = v54;
          v42 = v55;
          v50 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v35 = v11;
          v38 = v62;
          v39 = v13;
          v43 = v56;
          v47 = v17;
          v48 = v51;
          v49 = v52;
          v29 = xmmword_26C32DAD0;
          v30 = 0;
          v31 = 0;
          v32 = v17;
          v33 = v22;
          v34 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v29);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v50);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          type metadata accessor for T_EndTreeWrite(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v50);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Ignorable);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo14T_AnimationEnda_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v3 = a1 + 7;
    v4 = *(a1 + 9);
    v77[0] = *(a1 + 7);
    v77[1] = v4;
    v78[0] = *(a1 + 11);
    *(v78 + 9) = *(a1 + 97);
    v5 = a1 + 11;
    v6 = a1 + 25;
    v7 = a1 + 13;
    v8 = *(a1 + 29);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v77);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (!*v3)
    {
      goto LABEL_36;
    }

    if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v47 = v2;
      v11 = *a1;
      v12 = *(a1 + 3);
      v74 = *(a1 + 1);
      v75 = v12;
      v76 = a1[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v71 = *(a1 + 113);
      v72 = v14;
      v73[0] = *(a1 + 145);
      *(v73 + 15) = *(a1 + 10);
      v15 = *(a1 + 65);
      v67 = *(a1 + 49);
      v68 = v15;
      v16 = *(a1 + 97);
      v69 = *(a1 + 81);
      v70 = v16;
      v66 = *(a1 + 192);
      v17 = a1[22];
      v65 = a1[23];
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v54[8] = v74;
        *&v54[24] = v75;
        v58 = v71;
        v59 = v72;
        *v60 = v73[0];
        *&v60[15] = *(v73 + 15);
        *&v54[49] = v67;
        v55 = v68;
        v56 = v69;
        v64 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *v54 = v11;
        *&v54[40] = v76;
        v54[48] = v13;
        v57 = v70;
        v61 = v17;
        v62 = v65;
        v63 = v66;
        v48 = xmmword_26C32DAD0;
        v49 = 0;
        v50 = 0;
        v51 = v17;
        v52 = v22;
        v53 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v48);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v64);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v54 = v47;
        type metadata accessor for T_AnimationEnd(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v64);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
        v2 = v47;
      }

      else
      {
        v2 = v47;
      }
    }
  }

  v29 = a1 + 7;
  v30 = *(a1 + 9);
  *v54 = *(a1 + 7);
  *&v54[16] = v30;
  *&v54[32] = *(a1 + 11);
  *&v54[41] = *(a1 + 97);
  v31 = a1 + 9;
  v32 = a1 + 21;
  v33 = a1 + 13;
  while (1)
  {
    v34 = *v33;
    if (*v32 >= 2u)
    {
      v35 = *v31;
      if ((*(v35 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v54);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v29 = v34;
  }

  v36 = *v29;
  if (!v36)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v37 = *(*(v36 + 24 * *(v35 + 8)) + 112);
  if (!v37)
  {
    __break(1u);
    goto LABEL_35;
  }

  v38 = *(v37 + 56);
  v39 = *v38;
  v40 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if (v41)
  {
    v42 = v40;
    v43 = *v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v38;
    *&v67 = *v38;
    *v38 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v45 = v67;
    }

    specialized _NativeDictionary._delete(at:)(v42, v45);
    v46 = *v38;
    *v38 = v45;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo14T_ActionFinisha_Tt0g5(uint64_t (*a1)())
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  v3 = v2;
  if (readingDebug)
  {
    v4 = HIDWORD(v2);
    v5 = (a1 + 56);
    v6 = *(a1 + 72);
    v80[0] = *(a1 + 56);
    v80[1] = v6;
    v81[0] = *(a1 + 88);
    *(v81 + 9) = *(a1 + 97);
    v7 = (a1 + 88);
    v8 = (a1 + 100);
    v9 = (a1 + 104);
    v10 = *(a1 + 29);
    while (1)
    {
      v11 = *v9;
      if (v10 < *v8)
      {
        v12 = (*v7 + 8 * v10);
        if ((v12[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v80);
      }

      v7 = (v11 + 32);
      v8 = (v11 + 44);
      v9 = (v11 + 48);
      v5 = v11;
    }

    v13 = *v5;
    if (!v13)
    {
      goto LABEL_45;
    }

    if ((*(*(v13 + 24 * *v12) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 22) + 160))
    {
      v14 = *a1;
      v15 = *(a1 + 24);
      v77 = *(a1 + 8);
      v78 = v15;
      v79 = *(a1 + 5);
      v16 = *(a1 + 48);
      v17 = *(a1 + 129);
      v74 = *(a1 + 113);
      v75 = v17;
      v76[0] = *(a1 + 145);
      *(v76 + 15) = *(a1 + 10);
      v18 = *(a1 + 65);
      v71 = *(a1 + 49);
      v72 = v18;
      v19 = *(a1 + 97);
      *v73 = *(a1 + 81);
      *&v73[16] = v19;
      v70 = *(a1 + 192);
      v20 = *(a1 + 22);
      v69 = *(a1 + 23);
      v21 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v22 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v21))
      {
        v23 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v23 = 136446466;
        *&v58[8] = v77;
        *&v58[24] = v78;
        v62 = v74;
        v63 = v75;
        *v64 = v76[0];
        *&v64[15] = *(v76 + 15);
        *&v58[49] = v71;
        v59 = v72;
        v60 = *v73;
        v68 = v51;
        if (v16)
        {
          v24 = 0;
        }

        else
        {
          v24 = v14;
        }

        *v58 = v14;
        *&v58[40] = v79;
        v58[48] = v16;
        v61 = *&v73[16];
        v65 = v20;
        v66 = v69;
        v67 = v70;
        v52 = xmmword_26C32DAD0;
        v53 = 0;
        v54 = 0;
        v55 = v20;
        v56 = v24;
        v57 = 1;
        v25 = Interpreter.Iterator.describe(state:)(&v52);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v68);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        *v58 = v3;
        *&v58[4] = v4;
        type metadata accessor for T_ActionFinish(0);
        v28 = String.init<A>(describing:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v68);

        *(v23 + 14) = v30;
        _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v51, -1, -1);
        MEMORY[0x26D69EAB0](v23, -1, -1);
      }
    }
  }

  v31 = (a1 + 56);
  v32 = *(a1 + 72);
  *v58 = *(a1 + 56);
  *&v58[16] = v32;
  *&v58[32] = *(a1 + 88);
  v33 = a1 + 72;
  v34 = (a1 + 84);
  v35 = (a1 + 104);
  *&v58[41] = *(a1 + 97);
  v36 = (a1 + 56);
  v37 = (a1 + 72);
  v38 = (a1 + 84);
  v39 = (a1 + 104);
  while (1)
  {
    v40 = *v39;
    if (*v38 >= 2u)
    {
      v41 = *v37;
      if ((*(v41 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v40)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v58);
    }

    v37 = (v40 + 16);
    v38 = (v40 + 28);
    v39 = (v40 + 48);
    v36 = v40;
  }

  v42 = *v36;
  if (!v42)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v43 = *(*(v42 + 24 * *(v41 + 8)) + 112);
  if (!v43)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (*(**(v43 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v44)
    {
      Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Action);
      v45 = *(a1 + 72);
      v71 = *v31;
      v72 = v45;
      *v73 = *(a1 + 88);
      *&v73[9] = *(a1 + 97);
      while (1)
      {
        v46 = *v35;
        if (*v34 >= 2u && (*(*v33 + 12) & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v71);
        }

        v33 = (v46 + 16);
        v34 = (v46 + 28);
        v35 = (v46 + 48);
        v31 = v46;
      }

      if (!*v31)
      {
        goto LABEL_46;
      }

      v47 = *(*(*v31 + 24 * *(*v33 + 8)) + 112);
      if (v47)
      {
        v48 = *(v47 + 48);
        a1 = specialized Strong.subscript.read();
        if (*(*v49 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v3);
          if (v50)
          {
            (a1)(&v52, 0);
            return;
          }
        }

LABEL_47:
        (a1)(&v52, 0);
        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33DF40);
        LODWORD(v77) = v3;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](0x206E6920746F6E20, 0xEC0000007473696CLL);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      goto LABEL_44;
    }
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_BeginGraphUpdatea_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v8 = result;
    if (readingDebug)
    {
      v9 = a1 + 7;
      v10 = *(a1 + 9);
      v70[0] = *(a1 + 7);
      v70[1] = v10;
      v71[0] = *(a1 + 11);
      *(v71 + 9) = *(a1 + 97);
      v11 = a1 + 11;
      v12 = a1 + 25;
      v13 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v14 = *v13;
        if (result < *v12)
        {
          v15 = (*v11 + 8 * result);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v70);
        }

        v11 = (v14 + 32);
        v12 = (v14 + 44);
        v13 = (v14 + 48);
        v9 = v14;
      }

      v16 = *v9;
      if (!v16)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v16 + 24 * *v15) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v17 = *a1;
        v18 = *(a1 + 3);
        v67 = *(a1 + 1);
        v68 = v18;
        v69 = a1[5];
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v20;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 10);
        v21 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v21;
        v22 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v22;
        v59 = *(a1 + 192);
        v23 = a1[22];
        v58 = a1[23];
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v24;
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v43 = v67;
          v44 = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v57 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v42 = v17;
          v45 = v69;
          v46 = v19;
          v50 = v63;
          v54 = v23;
          v55 = v58;
          v56 = v59;
          v36 = xmmword_26C32DAD0;
          v37 = 0;
          v38 = 0;
          v39 = v23;
          v40 = v27;
          v41 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v36);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v57);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          v42 = v8;
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v57);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
        }
      }
    }

    return a4(a1, v8);
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo17T_BeginModifyNodea_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024 && readingDebug)
  {
    v6 = a1 + 7;
    v7 = *(a1 + 9);
    v68[0] = *(a1 + 7);
    v68[1] = v7;
    v69[0] = *(a1 + 11);
    *(v69 + 9) = *(a1 + 97);
    v8 = a1 + 11;
    v9 = a1 + 25;
    v10 = a1 + 13;
    v11 = *(a1 + 29);
    while (1)
    {
      v12 = *v10;
      if (v11 < *v9)
      {
        v13 = (*v8 + 8 * v11);
        if ((v13[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v12)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v68);
      }

      v8 = (v12 + 32);
      v9 = (v12 + 44);
      v10 = (v12 + 48);
      v6 = v12;
    }

    if (*v6)
    {
      if ((*(*(*v6 + 24 * *v13) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v33 = result;
        v14 = *a1;
        v15 = *(a1 + 3);
        v65 = *(a1 + 1);
        v66 = v15;
        v67 = a1[5];
        v16 = *(a1 + 48);
        v17 = *(a1 + 129);
        v62 = *(a1 + 113);
        v63 = v17;
        v64[0] = *(a1 + 145);
        *(v64 + 15) = *(a1 + 10);
        v18 = *(a1 + 65);
        v58 = *(a1 + 49);
        v59 = v18;
        v19 = *(a1 + 97);
        v60 = *(a1 + 81);
        v61 = v19;
        v57 = *(a1 + 192);
        v20 = a1[22];
        v56 = a1[23];
        v21 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v22 = readingDebugLog;
        result = os_log_type_enabled(readingDebugLog, v21);
        if (result)
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136446466;
          v41 = v65;
          v42 = v66;
          v49 = v62;
          v50 = v63;
          *v51 = v64[0];
          *&v51[15] = *(v64 + 15);
          v45 = v58;
          v46 = v59;
          v47 = v60;
          v55 = v24;
          v25 = v24;
          if (v16)
          {
            v26 = 0;
          }

          else
          {
            v26 = v14;
          }

          v40 = v14;
          v43 = v67;
          v44 = v16;
          v48 = v61;
          v52 = v20;
          v53 = v56;
          v54 = v57;
          v34 = xmmword_26C32DAD0;
          v35 = 0;
          v36 = 0;
          v37 = v20;
          v38 = v26;
          v39 = 1;
          v27 = Interpreter.Iterator.describe(state:)(&v34);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v55);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2082;
          LODWORD(v40) = v33;
          a3(0);
          v30 = String.init<A>(describing:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v55);

          *(v23 + 14) = v32;
          _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v25, -1, -1);
          return MEMORY[0x26D69EAB0](v23, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo17T_ObservableFireda_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v9 = v8;
    if (readingDebug)
    {
      v10 = HIDWORD(result);
      v11 = (a1 + 56);
      v12 = *(a1 + 72);
      v73[0] = *(a1 + 56);
      v73[1] = v12;
      v74[0] = *(a1 + 88);
      *(v74 + 9) = *(a1 + 97);
      v13 = (a1 + 88);
      v14 = (a1 + 100);
      v15 = (a1 + 104);
      v16 = *(a1 + 116);
      while (1)
      {
        v17 = *v15;
        if (v16 < *v14)
        {
          v18 = (*v13 + 8 * v16);
          if ((v18[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v17)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v73);
        }

        v13 = (v17 + 32);
        v14 = (v17 + 44);
        v15 = (v17 + 48);
        v11 = v17;
      }

      if (!*v11)
      {
        __break(1u);
        return result;
      }

      if ((*(*(*v11 + 24 * *v18) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v37 = *a1;
        v38 = result;
        v19 = *(a1 + 24);
        v70 = *(a1 + 8);
        v71 = v19;
        v72 = *(a1 + 40);
        v20 = *(a1 + 48);
        v21 = *(a1 + 129);
        v67 = *(a1 + 113);
        v68 = v21;
        v69[0] = *(a1 + 145);
        *(v69 + 15) = *(a1 + 160);
        v22 = *(a1 + 65);
        v63 = *(a1 + 49);
        v64 = v22;
        v23 = *(a1 + 97);
        v65 = *(a1 + 81);
        v66 = v23;
        v62 = *(a1 + 192);
        v24 = *(a1 + 176);
        v61 = *(a1 + 184);
        v25 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v26 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v25))
        {
          v36 = v25;
          v27 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v27 = 136446466;
          v46 = v70;
          v47 = v71;
          v54 = v67;
          v55 = v68;
          *v56 = v69[0];
          *&v56[15] = *(v69 + 15);
          v50 = v63;
          v51 = v64;
          v52 = v65;
          v60 = v35;
          if (v20)
          {
            v28 = 0;
          }

          else
          {
            v28 = v37;
          }

          v45 = v37;
          v48 = v72;
          v49 = v20;
          v53 = v66;
          v57 = v24;
          v58 = v61;
          v59 = v62;
          v39 = xmmword_26C32DAD0;
          v40 = 0;
          v41 = 0;
          v42 = v24;
          v43 = v28;
          v44 = 1;
          v29 = Interpreter.Iterator.describe(state:)(&v39);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v60);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          v45 = __PAIR64__(v10, v38);
          LODWORD(v46) = v9;
          a3(0);
          v32 = String.init<A>(describing:)();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v60);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_26C161000, v26, v36, "%{public}s %{public}s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v35, -1, -1);
          MEMORY[0x26D69EAB0](v27, -1, -1);
          result = v38;
        }

        else
        {
          result = v38;
        }
      }
    }

    return a4(a1, result, v9);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo13T_KeypathDecla_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  v4 = v2;
  v5 = v3;
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      return;
    }
  }

  else if (*(a1 + 1) << 8 != 256)
  {
    return;
  }

  if (readingDebug)
  {
    v6 = HIDWORD(v2);
    v7 = HIDWORD(v3);
    v8 = (a1 + 56);
    v9 = *(a1 + 72);
    v70[0] = *(a1 + 56);
    v70[1] = v9;
    v71[0] = *(a1 + 88);
    *(v71 + 9) = *(a1 + 97);
    v10 = (a1 + 88);
    v11 = (a1 + 100);
    v12 = (a1 + 104);
    v13 = *(a1 + 116);
    while (1)
    {
      v14 = *v12;
      if (v13 < *v11)
      {
        v15 = (*v10 + 8 * v13);
        if ((v15[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v14)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, v70);
      }

      v10 = (v14 + 32);
      v11 = (v14 + 44);
      v12 = (v14 + 48);
      v8 = v14;
    }

    v16 = *v8;
    if (!v16)
    {
      __break(1u);
      return;
    }

    if ((*(*(v16 + 24 * *v15) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
    {
      v17 = *a1;
      v18 = *(a1 + 24);
      v67 = *(a1 + 8);
      v68 = v18;
      v69 = *(a1 + 40);
      v35 = *(a1 + 48);
      v19 = *(a1 + 129);
      v64 = *(a1 + 113);
      v65 = v19;
      v66[0] = *(a1 + 145);
      *(v66 + 15) = *(a1 + 160);
      v20 = *(a1 + 65);
      v60 = *(a1 + 49);
      v61 = v20;
      v21 = *(a1 + 97);
      v62 = *(a1 + 81);
      v63 = v21;
      v59 = *(a1 + 192);
      v22 = *(a1 + 176);
      v58 = *(a1 + 184);
      v23 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v24 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v23))
      {
        log = v24;
        v25 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v25 = 136446466;
        v43 = v67;
        v44 = v68;
        v51 = v64;
        v52 = v65;
        *v53 = v66[0];
        *&v53[15] = *(v66 + 15);
        v47 = v60;
        v48 = v61;
        v49 = v62;
        v57 = v33;
        if (v35)
        {
          v26 = 0;
        }

        else
        {
          v26 = v17;
        }

        v42 = v17;
        v45 = v69;
        v46 = v35;
        v50 = v63;
        v54 = v22;
        v55 = v58;
        v56 = v59;
        v36 = xmmword_26C32DAD0;
        v37 = 0;
        v38 = 0;
        v39 = v22;
        v40 = v26;
        v41 = 1;
        v27 = Interpreter.Iterator.describe(state:)(&v36);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v57);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        v42 = __PAIR64__(v6, v4);
        *&v43 = __PAIR64__(v7, v5);
        type metadata accessor for T_KeypathDecl(0);
        v30 = String.init<A>(describing:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v57);

        *(v25 + 14) = v32;
        _os_log_impl(&dword_26C161000, log, v23, "%{public}s %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v33, -1, -1);
        MEMORY[0x26D69EAB0](v25, -1, -1);
      }
    }
  }

  T_KeypathDecl.model(within:)(a1, v4, v5);
}

unint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_NodeRemoveEdgea_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v8 = HIDWORD(result);
      v9 = (a1 + 56);
      v10 = *(a1 + 72);
      v71[0] = *(a1 + 56);
      v71[1] = v10;
      v72[0] = *(a1 + 88);
      *(v72 + 9) = *(a1 + 97);
      v11 = (a1 + 88);
      v12 = (a1 + 100);
      v13 = (a1 + 104);
      v14 = *(a1 + 116);
      while (1)
      {
        v15 = *v13;
        if (v14 < *v12)
        {
          v16 = (*v11 + 8 * v14);
          if ((v16[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v15)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v71);
        }

        v11 = (v15 + 32);
        v12 = (v15 + 44);
        v13 = (v15 + 48);
        v9 = v15;
      }

      if (!*v9)
      {
        __break(1u);
        return result;
      }

      if ((*(*(*v9 + 24 * *v16) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v36 = result;
        v17 = *a1;
        v18 = *(a1 + 24);
        v68 = *(a1 + 8);
        v69 = v18;
        v70 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v65 = *(a1 + 113);
        v66 = v20;
        v67[0] = *(a1 + 145);
        *(v67 + 15) = *(a1 + 160);
        v21 = *(a1 + 65);
        v61 = *(a1 + 49);
        v62 = v21;
        v22 = *(a1 + 97);
        v63 = *(a1 + 81);
        v64 = v22;
        v60 = *(a1 + 192);
        v23 = *(a1 + 176);
        v59 = *(a1 + 184);
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v24;
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v44 = v68;
          v45 = v69;
          v52 = v65;
          v53 = v66;
          *v54 = v67[0];
          *&v54[15] = *(v67 + 15);
          v48 = v61;
          v49 = v62;
          v50 = v63;
          v58 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v43 = v17;
          v46 = v70;
          v47 = v19;
          v51 = v64;
          v55 = v23;
          v56 = v59;
          v57 = v60;
          v37 = xmmword_26C32DAD0;
          v38 = 0;
          v39 = 0;
          v40 = v23;
          v41 = v27;
          v42 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v37);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v58);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          v43 = __PAIR64__(v8, v36);
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v58);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
          result = v36;
        }

        else
        {
          result = v36;
        }
      }
    }

    return a4(a1, result);
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo12T_ReuseEventa_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v8 = result;
    if (readingDebug)
    {
      v9 = a1 + 7;
      v10 = *(a1 + 9);
      v70[0] = *(a1 + 7);
      v70[1] = v10;
      v71[0] = *(a1 + 11);
      *(v71 + 9) = *(a1 + 97);
      v11 = a1 + 11;
      v12 = a1 + 25;
      v13 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v14 = *v13;
        if (result < *v12)
        {
          v15 = (*v11 + 8 * result);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v70);
        }

        v11 = (v14 + 32);
        v12 = (v14 + 44);
        v13 = (v14 + 48);
        v9 = v14;
      }

      v16 = *v9;
      if (!v16)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v16 + 24 * *v15) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v17 = *a1;
        v18 = *(a1 + 3);
        v67 = *(a1 + 1);
        v68 = v18;
        v69 = a1[5];
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v20;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 10);
        v21 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v21;
        v22 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v22;
        v59 = *(a1 + 192);
        v23 = a1[22];
        v58 = a1[23];
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v24;
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v43 = v67;
          v44 = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v57 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v42 = v17;
          v45 = v69;
          v46 = v19;
          v50 = v63;
          v54 = v23;
          v55 = v58;
          v56 = v59;
          v36 = xmmword_26C32DAD0;
          v37 = 0;
          v38 = 0;
          v39 = v23;
          v40 = v27;
          v41 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v36);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v57);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          LOBYTE(v42) = v8;
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v57);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
        }
      }
    }

    return a4(a1, v8);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo11T_NodeAddeda_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48))
  {
    v6 = v4;
    v7 = v5;
    v8 = *(a1 + 1) << 8;
    if (v8 == 512 || v8 == 1024 || v8 == 768)
    {
      v9 = v3;
      v10 = v2;
      if (readingDebug)
      {
        v11 = HIDWORD(v4);
        v12 = HIDWORD(v5);
        v13 = (a1 + 56);
        v14 = *(a1 + 72);
        v75[0] = *(a1 + 56);
        v75[1] = v14;
        v76[0] = *(a1 + 88);
        *(v76 + 9) = *(a1 + 97);
        v15 = (a1 + 88);
        v16 = (a1 + 100);
        v17 = (a1 + 104);
        v18 = *(a1 + 116);
        while (1)
        {
          v19 = *v17;
          if (v18 < *v16)
          {
            v20 = (*v15 + 8 * v18);
            if ((v20[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v19)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v75);
          }

          v15 = (v19 + 32);
          v16 = (v19 + 44);
          v17 = (v19 + 48);
          v13 = v19;
        }

        v21 = *v13;
        if (!v21)
        {
          __break(1u);
          return;
        }

        if ((*(*(v21 + 24 * *v20) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
        {
          v39 = *a1;
          v22 = *(a1 + 24);
          v72 = *(a1 + 8);
          v73 = v22;
          v74 = *(a1 + 40);
          v38 = *(a1 + 48);
          v23 = *(a1 + 129);
          v69 = *(a1 + 113);
          v70 = v23;
          v71[0] = *(a1 + 145);
          *(v71 + 15) = *(a1 + 160);
          v24 = *(a1 + 65);
          v65 = *(a1 + 49);
          v66 = v24;
          v25 = *(a1 + 97);
          v67 = *(a1 + 81);
          v68 = v25;
          v64 = *(a1 + 192);
          v26 = *(a1 + 176);
          v63 = *(a1 + 184);
          v27 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          log = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v27))
          {
            v37 = v27;
            v28 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v28 = 136446466;
            v48 = v72;
            v49 = v73;
            v56 = v69;
            v57 = v70;
            *v58 = v71[0];
            *&v58[15] = *(v71 + 15);
            v52 = v65;
            v53 = v66;
            v54 = v67;
            v62 = v36;
            if (v38)
            {
              v29 = 0;
            }

            else
            {
              v29 = v39;
            }

            v47 = v39;
            v50 = v74;
            v51 = v38;
            v55 = v68;
            v59 = v26;
            v60 = v63;
            v61 = v64;
            v41 = xmmword_26C32DAD0;
            v42 = 0;
            v43 = 0;
            v44 = v26;
            v45 = v29;
            v46 = 1;
            v30 = Interpreter.Iterator.describe(state:)(&v41);
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v62);

            *(v28 + 4) = v32;
            *(v28 + 12) = 2082;
            v47 = v10;
            *&v48 = v9;
            *(&v48 + 1) = __PAIR64__(v11, v6);
            *&v49 = __PAIR64__(v12, v7);
            type metadata accessor for T_NodeAdded(0);
            v33 = String.init<A>(describing:)();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v62);

            *(v28 + 14) = v35;
            _os_log_impl(&dword_26C161000, log, v37, "%{public}s %{public}s", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v36, -1, -1);
            MEMORY[0x26D69EAB0](v28, -1, -1);
          }
        }
      }

      T_NodeAdded.model(within:)(a1, v10, v9, v6, v7);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo10T_TypeDecla_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()(&v64);
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      return;
    }
  }

  else if (*(a1 + 1) << 8 != 256)
  {
    return;
  }

  if (readingDebug)
  {
    v2 = (a1 + 56);
    v3 = *(a1 + 72);
    v67[0] = *(a1 + 56);
    v67[1] = v3;
    v68[0] = *(a1 + 88);
    *(v68 + 9) = *(a1 + 97);
    v4 = (a1 + 88);
    v5 = (a1 + 100);
    v6 = (a1 + 104);
    v7 = *(a1 + 116);
    while (1)
    {
      v8 = *v6;
      if (v7 < *v5)
      {
        v9 = (*v4 + 8 * v7);
        if ((v9[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v67);
      }

      v4 = (v8 + 32);
      v5 = (v8 + 44);
      v6 = (v8 + 48);
      v2 = v8;
    }

    v10 = *v2;
    if (!v10)
    {
      __break(1u);
      return;
    }

    if ((*(*(v10 + 24 * *v9) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
    {
      v11 = *a1;
      v12 = *(a1 + 24);
      v58 = *(a1 + 8);
      v59 = v12;
      v60 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v55 = *(a1 + 113);
      v56 = v14;
      v57[0] = *(a1 + 145);
      *(v57 + 15) = *(a1 + 160);
      v15 = *(a1 + 65);
      v51 = *(a1 + 49);
      v52 = v15;
      v16 = *(a1 + 97);
      v53 = *(a1 + 81);
      v54 = v16;
      v50 = *(a1 + 192);
      v17 = *(a1 + 176);
      v49 = *(a1 + 184);
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      v61 = v64;
      v62 = v65;
      v63 = v66;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v35[8] = v58;
        *&v35[24] = v59;
        v42 = v55;
        v43 = v56;
        *v44 = v57[0];
        *&v44[15] = *(v57 + 15);
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v48 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *v35 = v11;
        v36 = v60;
        v37 = v13;
        v41 = v54;
        v45 = v17;
        v46 = v49;
        v47 = v50;
        v29 = xmmword_26C32DAD0;
        v30 = 0;
        v31 = 0;
        v32 = v17;
        v33 = v22;
        v34 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v29);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v48);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v35 = v61;
        *&v35[16] = v62;
        *&v35[32] = v63;
        type metadata accessor for T_TypeDecl(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v48);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }
    }
  }

  *v35 = v64;
  *&v35[16] = v65;
  *&v35[32] = v66;
  T_TypeDecl.model(within:)(a1);
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo10T_TimeSynca_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  v3 = v2;
  if (readingDebug)
  {
    v4 = a1 + 7;
    v5 = *(a1 + 9);
    v68[0] = *(a1 + 7);
    v68[1] = v5;
    v69[0] = *(a1 + 11);
    *(v69 + 9) = *(a1 + 97);
    v6 = a1 + 11;
    v7 = a1 + 25;
    v8 = a1 + 13;
    result = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (result < *v7)
      {
        v11 = (*v6 + 8 * result);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v68);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    v12 = *v4;
    if (!v12)
    {
      goto LABEL_27;
    }

    if ((*(*(v12 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v13 = *a1;
      v14 = *(a1 + 3);
      v65 = *(a1 + 1);
      v66 = v14;
      v67 = a1[5];
      v15 = *(a1 + 48);
      v16 = *(a1 + 129);
      v62 = *(a1 + 113);
      v63 = v16;
      v64[0] = *(a1 + 145);
      *(v64 + 15) = *(a1 + 10);
      v17 = *(a1 + 65);
      v58 = *(a1 + 49);
      v59 = v17;
      v18 = *(a1 + 97);
      v60 = *(a1 + 81);
      v61 = v18;
      v57 = *(a1 + 192);
      v19 = a1[22];
      v56 = a1[23];
      v20 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v21 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v20))
      {
        v22 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v22 = 136446466;
        *&v45[8] = v65;
        *&v45[24] = v66;
        v49 = v62;
        v50 = v63;
        *v51 = v64[0];
        *&v51[15] = *(v64 + 15);
        *&v45[49] = v58;
        v46 = v59;
        v47 = v60;
        v55 = v38;
        if (v15)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13;
        }

        *v45 = v13;
        *&v45[40] = v67;
        v45[48] = v15;
        v48 = v61;
        v52 = v19;
        v53 = v56;
        v54 = v57;
        v39 = xmmword_26C32DAD0;
        v40 = 0;
        v41 = 0;
        v42 = v19;
        v43 = v23;
        v44 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v39);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v55);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        *v45 = v3;
        type metadata accessor for T_TimeSync(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v55);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v38, -1, -1);
        MEMORY[0x26D69EAB0](v22, -1, -1);
      }
    }
  }

  result = *(a1 + 29);
  v30 = a1 + 7;
  v31 = *(a1 + 9);
  *v45 = *(a1 + 7);
  *&v45[16] = v31;
  *&v45[32] = *(a1 + 11);
  *&v45[41] = *(a1 + 97);
  v32 = a1 + 11;
  v33 = a1 + 25;
  v34 = a1 + 13;
  while (1)
  {
    v35 = *v34;
    if (result < *v33)
    {
      v36 = (*v32 + 8 * result);
      if ((v36[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v45);
    }

    v32 = (v35 + 32);
    v33 = (v35 + 44);
    v34 = (v35 + 48);
    v30 = v35;
  }

  v37 = *v30;
  if (v37)
  {
    result = v37 + 24 * *v36;
    *(*result + 32) = v3;
    return result;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo10T_ModeDecla_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  v4 = v2;
  v5 = v3;
  v7 = v6;
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      return;
    }
  }

  else if (*(a1 + 1) << 8 != 256)
  {
    return;
  }

  if (readingDebug)
  {
    v8 = HIDWORD(v2);
    v9 = HIDWORD(v3);
    v10 = (a1 + 56);
    v11 = *(a1 + 72);
    v72[0] = *(a1 + 56);
    v72[1] = v11;
    v73[0] = *(a1 + 88);
    *(v73 + 9) = *(a1 + 97);
    v12 = (a1 + 88);
    v13 = (a1 + 100);
    v14 = (a1 + 104);
    v15 = *(a1 + 116);
    while (1)
    {
      v16 = *v14;
      if (v15 < *v13)
      {
        v17 = (*v12 + 8 * v15);
        if ((v17[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v16)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v72);
      }

      v12 = (v16 + 32);
      v13 = (v16 + 44);
      v14 = (v16 + 48);
      v10 = v16;
    }

    v18 = *v10;
    if (!v18)
    {
      __break(1u);
      return;
    }

    if ((*(*(v18 + 24 * *v17) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
    {
      v37 = *a1;
      v19 = *(a1 + 24);
      v69 = *(a1 + 8);
      v70 = v19;
      v71 = *(a1 + 40);
      v36 = *(a1 + 48);
      v20 = *(a1 + 129);
      v66 = *(a1 + 113);
      v67 = v20;
      v68[0] = *(a1 + 145);
      *(v68 + 15) = *(a1 + 160);
      v21 = *(a1 + 65);
      v62 = *(a1 + 49);
      v63 = v21;
      v22 = *(a1 + 97);
      v64 = *(a1 + 81);
      v65 = v22;
      v61 = *(a1 + 192);
      v23 = *(a1 + 176);
      v60 = *(a1 + 184);
      v24 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v25 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v24))
      {
        v35 = v24;
        v26 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v26 = 136446466;
        v45 = v69;
        v46 = v70;
        v53 = v66;
        v54 = v67;
        *v55 = v68[0];
        *&v55[15] = *(v68 + 15);
        v49 = v62;
        v50 = v63;
        v51 = v64;
        v59 = v34;
        if (v36)
        {
          v27 = 0;
        }

        else
        {
          v27 = v37;
        }

        v44 = v37;
        v47 = v71;
        v48 = v36;
        v52 = v65;
        v56 = v23;
        v57 = v60;
        v58 = v61;
        v38 = xmmword_26C32DAD0;
        v39 = 0;
        v40 = 0;
        v41 = v23;
        v42 = v27;
        v43 = 1;
        v28 = Interpreter.Iterator.describe(state:)(&v38);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v44 = __PAIR64__(v8, v4);
        *&v45 = __PAIR64__(v9, v5);
        DWORD2(v45) = v7;
        type metadata accessor for T_ModeDecl(0);
        v31 = String.init<A>(describing:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v59);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v34, -1, -1);
        MEMORY[0x26D69EAB0](v26, -1, -1);
      }
    }
  }

  T_ModeDecl.model(within:)(a1, v4, v5, v7);
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo12T_BeginTracea_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *))
{
  result = a2();
  if (!*(a1 + 48))
  {
    v10 = *(a1 + 1) << 8;
    if (v10 == 512 || v10 == 1024 || v10 == 768)
    {
      if (readingDebug)
      {
        v11 = a1 + 7;
        v12 = *(a1 + 9);
        v73[0] = *(a1 + 7);
        v73[1] = v12;
        v74[0] = *(a1 + 11);
        *(v74 + 9) = *(a1 + 97);
        v13 = a1 + 11;
        v14 = a1 + 25;
        v15 = a1 + 13;
        v16 = *(a1 + 29);
        while (1)
        {
          v17 = *v15;
          if (v16 < *v14)
          {
            v18 = (*v13 + 8 * v16);
            if ((v18[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v17)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v73);
          }

          v13 = (v17 + 32);
          v14 = (v17 + 44);
          v15 = (v17 + 48);
          v11 = v17;
        }

        if (!*v11)
        {
          __break(1u);
          return result;
        }

        if ((*(*(*v11 + 24 * *v18) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          *&v38 = v8;
          *(&v38 + 1) = v9;
          v37 = result;
          v19 = *a1;
          v20 = *(a1 + 3);
          v70 = *(a1 + 1);
          v71 = v20;
          v72 = a1[5];
          v21 = *(a1 + 48);
          v22 = *(a1 + 129);
          v67 = *(a1 + 113);
          v68 = v22;
          v69[0] = *(a1 + 145);
          *(v69 + 15) = *(a1 + 10);
          v23 = *(a1 + 65);
          v63 = *(a1 + 49);
          v64 = v23;
          v24 = *(a1 + 97);
          v65 = *(a1 + 81);
          v66 = v24;
          v62 = *(a1 + 192);
          v25 = a1[22];
          v61 = a1[23];
          v26 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v27 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v26))
          {
            v28 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v28 = 136446466;
            v46 = v70;
            v47 = v71;
            v54 = v67;
            v55 = v68;
            *v56 = v69[0];
            *&v56[15] = *(v69 + 15);
            v50 = v63;
            v51 = v64;
            v52 = v65;
            v60 = v36;
            if (v21)
            {
              v29 = 0;
            }

            else
            {
              v29 = v19;
            }

            v45 = v19;
            v48 = v72;
            v49 = v21;
            v53 = v66;
            v57 = v25;
            v58 = v61;
            v59 = v62;
            v39 = xmmword_26C32DAD0;
            v40 = 0;
            v41 = 0;
            v42 = v25;
            v43 = v29;
            v44 = 1;
            v30 = Interpreter.Iterator.describe(state:)(&v39);
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v60);

            *(v28 + 4) = v32;
            *(v28 + 12) = 2082;
            v45 = v37;
            v46 = v38;
            a3(0);
            v33 = String.init<A>(describing:)();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v60);

            *(v28 + 14) = v35;
            _os_log_impl(&dword_26C161000, v27, v26, "%{public}s %{public}s", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v36, -1, -1);
            MEMORY[0x26D69EAB0](v28, -1, -1);
          }
        }
      }

      return a4(a1);
    }
  }

  return result;
}

unint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo12T_BeginEventa_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024 && readingDebug)
  {
    v6 = HIDWORD(result);
    v7 = (a1 + 56);
    v8 = *(a1 + 72);
    v69[0] = *(a1 + 56);
    v69[1] = v8;
    v70[0] = *(a1 + 88);
    *(v70 + 9) = *(a1 + 97);
    v9 = (a1 + 88);
    v10 = (a1 + 100);
    v11 = (a1 + 104);
    v12 = *(a1 + 116);
    while (1)
    {
      v13 = *v11;
      if (v12 < *v10)
      {
        v14 = (*v9 + 8 * v12);
        if ((v14[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v13)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v69);
      }

      v9 = (v13 + 32);
      v10 = (v13 + 44);
      v11 = (v13 + 48);
      v7 = v13;
    }

    if (*v7)
    {
      if ((*(*(*v7 + 24 * *v14) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v34 = result;
        v15 = *a1;
        v16 = *(a1 + 24);
        v66 = *(a1 + 8);
        v67 = v16;
        v68 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = *(a1 + 129);
        v63 = *(a1 + 113);
        v64 = v18;
        v65[0] = *(a1 + 145);
        *(v65 + 15) = *(a1 + 160);
        v19 = *(a1 + 65);
        v59 = *(a1 + 49);
        v60 = v19;
        v20 = *(a1 + 97);
        v61 = *(a1 + 81);
        v62 = v20;
        v58 = *(a1 + 192);
        v21 = *(a1 + 176);
        v57 = *(a1 + 184);
        v22 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v23 = readingDebugLog;
        result = os_log_type_enabled(readingDebugLog, v22);
        if (result)
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 136446466;
          v42 = v66;
          v43 = v67;
          v50 = v63;
          v51 = v64;
          *v52 = v65[0];
          *&v52[15] = *(v65 + 15);
          v46 = v59;
          v47 = v60;
          v48 = v61;
          v56 = v25;
          v26 = v25;
          if (v17)
          {
            v27 = 0;
          }

          else
          {
            v27 = v15;
          }

          v41 = v15;
          v44 = v68;
          v45 = v17;
          v49 = v62;
          v53 = v21;
          v54 = v57;
          v55 = v58;
          v35 = xmmword_26C32DAD0;
          v36 = 0;
          v37 = 0;
          v38 = v21;
          v39 = v27;
          v40 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v35);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v56);

          *(v24 + 4) = v30;
          *(v24 + 12) = 2082;
          v41 = __PAIR64__(v6, v34);
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v56);

          *(v24 + 14) = v33;
          _os_log_impl(&dword_26C161000, v23, v22, "%{public}s %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v26, -1, -1);
          return MEMORY[0x26D69EAB0](v24, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo21T_ReuseCacheItemEventa_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v9 = v8;
    v10 = result;
    if (readingDebug)
    {
      v11 = a1 + 7;
      v12 = *(a1 + 9);
      v72[0] = *(a1 + 7);
      v72[1] = v12;
      v73[0] = *(a1 + 11);
      *(v73 + 9) = *(a1 + 97);
      v13 = a1 + 11;
      v14 = a1 + 25;
      v15 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v16 = *v15;
        if (result < *v14)
        {
          v17 = (*v13 + 8 * result);
          if ((v17[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v16)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v72);
        }

        v13 = (v16 + 32);
        v14 = (v16 + 44);
        v15 = (v16 + 48);
        v11 = v16;
      }

      v18 = *v11;
      if (!v18)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v18 + 24 * *v17) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v19 = *a1;
        v20 = *(a1 + 3);
        v69 = *(a1 + 1);
        v70 = v20;
        v71 = a1[5];
        v37 = *(a1 + 48);
        v21 = *(a1 + 129);
        v66 = *(a1 + 113);
        v67 = v21;
        v68[0] = *(a1 + 145);
        *(v68 + 15) = *(a1 + 10);
        v22 = *(a1 + 65);
        v62 = *(a1 + 49);
        v63 = v22;
        v23 = *(a1 + 97);
        v64 = *(a1 + 81);
        v65 = v23;
        v61 = *(a1 + 192);
        v24 = a1[22];
        v60 = a1[23];
        v25 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v26 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v25))
        {
          log = v26;
          v27 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v27 = 136446466;
          v45 = v69;
          v46 = v70;
          v53 = v66;
          v54 = v67;
          *v55 = v68[0];
          *&v55[15] = *(v68 + 15);
          v49 = v62;
          v50 = v63;
          v51 = v64;
          v59 = v35;
          if (v37)
          {
            v28 = 0;
          }

          else
          {
            v28 = v19;
          }

          v44 = v19;
          v47 = v71;
          v48 = v37;
          v52 = v65;
          v56 = v24;
          v57 = v60;
          v58 = v61;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v24;
          v42 = v28;
          v43 = 1;
          v29 = Interpreter.Iterator.describe(state:)(&v38);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v59);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          v44 = v10;
          LOBYTE(v45) = v9;
          a3(0);
          v32 = String.init<A>(describing:)();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v59);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_26C161000, log, v25, "%{public}s %{public}s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v35, -1, -1);
          MEMORY[0x26D69EAB0](v27, -1, -1);
        }
      }
    }

    return a4(a1, v10, v9);
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZAA07TestingC0O9TimestampV_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 512)
  {
    if (readingDebug)
    {
      v6 = a1 + 7;
      v7 = *(a1 + 9);
      v67[0] = *(a1 + 7);
      v67[1] = v7;
      v68[0] = *(a1 + 11);
      *(v68 + 9) = *(a1 + 97);
      v8 = a1 + 11;
      v9 = a1 + 25;
      v10 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v11 = *v10;
        if (result < *v9)
        {
          v12 = (*v8 + 8 * result);
          if ((v12[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v11)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v67);
        }

        v8 = (v11 + 32);
        v9 = (v11 + 44);
        v10 = (v11 + 48);
        v6 = v11;
      }

      v13 = *v6;
      if (!v13)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v13 + 24 * *v12) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v14 = *a1;
        v15 = *(a1 + 3);
        v64 = *(a1 + 1);
        v65 = v15;
        v66 = a1[5];
        v16 = *(a1 + 48);
        v17 = *(a1 + 129);
        v61 = *(a1 + 113);
        v62 = v17;
        v63[0] = *(a1 + 145);
        *(v63 + 15) = *(a1 + 10);
        v18 = *(a1 + 65);
        v57 = *(a1 + 49);
        v58 = v18;
        v19 = *(a1 + 97);
        v59 = *(a1 + 81);
        v60 = v19;
        v56 = *(a1 + 192);
        v20 = a1[22];
        v55 = a1[23];
        v21 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v22 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v21))
        {
          v23 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v23 = 136446466;
          v40 = v64;
          v41 = v65;
          v48 = v61;
          v49 = v62;
          *v50 = v63[0];
          *&v50[15] = *(v63 + 15);
          v44 = v57;
          v45 = v58;
          v46 = v59;
          v54 = v31;
          if (v16)
          {
            v24 = 0;
          }

          else
          {
            v24 = v14;
          }

          v39 = v14;
          v42 = v66;
          v43 = v16;
          v47 = v60;
          v51 = v20;
          v52 = v55;
          v53 = v56;
          v33 = xmmword_26C32DAD0;
          v34 = 0;
          v35 = 0;
          v36 = v20;
          v37 = v24;
          v38 = 1;
          v25 = Interpreter.Iterator.describe(state:)(&v33);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v54);

          *(v23 + 4) = v27;
          *(v23 + 12) = 2082;
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v54);

          *(v23 + 14) = v30;
          _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v31, -1, -1);
          MEMORY[0x26D69EAB0](v23, -1, -1);
        }
      }
    }

    return a4(a1);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZAA07TestingC0O19TestEventWBacktraceV_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = (a1 + 56);
      v3 = *(a1 + 72);
      v63[0] = *(a1 + 56);
      v63[1] = v3;
      v64[0] = *(a1 + 88);
      *(v64 + 9) = *(a1 + 97);
      v4 = (a1 + 88);
      v5 = (a1 + 100);
      v6 = (a1 + 104);
      v7 = *(a1 + 116);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v63);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        __break(1u);
        return;
      }

      if (((*(*(v10 + 24 * *v9) + 48) >= 0) & *(a1 + 192)) != 0 && *(*(a1 + 176) + 160) == 1)
      {
        v11 = *a1;
        v12 = *(a1 + 24);
        v60 = *(a1 + 8);
        v61 = v12;
        v62 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v57 = *(a1 + 113);
        v58 = v14;
        v59[0] = *(a1 + 145);
        *(v59 + 15) = *(a1 + 160);
        v15 = *(a1 + 65);
        v53 = *(a1 + 49);
        v54 = v15;
        v16 = *(a1 + 97);
        v55 = *(a1 + 81);
        v56 = v16;
        v52 = *(a1 + 192);
        v17 = *(a1 + 176);
        v51 = *(a1 + 184);
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v36 = v60;
          v37 = v61;
          v44 = v57;
          v45 = v58;
          *v46 = v59[0];
          *&v46[15] = *(v59 + 15);
          v40 = v53;
          v41 = v54;
          v42 = v55;
          v50 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v35 = v11;
          v38 = v62;
          v39 = v13;
          v43 = v56;
          v47 = v17;
          v48 = v51;
          v49 = v52;
          v29 = xmmword_26C32DAD0;
          v30 = 0;
          v31 = 0;
          v32 = v17;
          v33 = v22;
          v34 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v29);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v50);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v50);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    specialized TestingSupport.TestEventWBacktrace.model(within:)(a1);
  }
}

uint64_t static Tracepoint.model(within:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  Interpreter.Iterator.iterate<A>()(v15, v16, &v49 - v13);
  v17 = *(a3 + 24);
  v17(&v65, a2, a3);
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      if (v65 == 5)
      {
        goto LABEL_13;
      }
    }

    else if (v65 == 1)
    {
      goto LABEL_13;
    }
  }

  else if (v65 == *(a1 + 1))
  {
    goto LABEL_13;
  }

  v17(&v65, a2, a3);
  if (v65)
  {
    if (*(a1 + 48))
    {
      return (*(v6 + 8))(v14, a2);
    }

    v18 = *(a1 + 1) << 8;
    if (v18 != 1024 && v18 != 512)
    {
      return (*(v6 + 8))(v14, a2);
    }

    v17(&v65, a2, a3);
    if (v65 != 3)
    {
      return (*(v6 + 8))(v14, a2);
    }
  }

LABEL_13:
  if (!readingDebug)
  {
LABEL_31:
    (*(a3 + 32))(a1, a2, a3);
    return (*(v6 + 8))(v14, a2);
  }

  v19 = a1 + 7;
  v20 = *(a1 + 9);
  v93[0] = *(a1 + 7);
  v93[1] = v20;
  v94[0] = *(a1 + 11);
  *(v94 + 9) = *(a1 + 97);
  v21 = a1 + 11;
  v22 = a1 + 25;
  v23 = a1 + 13;
  result = *(a1 + 29);
  while (1)
  {
    v25 = *v23;
    if (result < *v22)
    {
      v26 = (*v21 + 8 * result);
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v25)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v93);
    }

    v21 = (v25 + 32);
    v22 = (v25 + 44);
    v23 = (v25 + 48);
    v19 = v25;
  }

  v27 = *v19;
  if (v27)
  {
    if ((*(*(v27 + 24 * *v26) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v28 = *a1;
      v29 = *(a1 + 3);
      v90 = *(a1 + 1);
      v91 = v29;
      v92 = a1[5];
      v55 = *(a1 + 48);
      v30 = *(a1 + 129);
      v87 = *(a1 + 113);
      v88 = v30;
      v89[0] = *(a1 + 145);
      *(v89 + 15) = *(a1 + 10);
      v31 = *(a1 + 65);
      v83 = *(a1 + 49);
      v84 = v31;
      v32 = *(a1 + 97);
      v85 = *(a1 + 81);
      v86 = v32;
      v82 = *(a1 + 192);
      v33 = a1[22];
      v81 = a1[23];
      v57 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v34 = readingDebugLog;
      v53 = *(v6 + 16);
      v54 = v6 + 16;
      v53(v12, v14, a2);
      v56 = v34;
      if (os_log_type_enabled(v34, v57))
      {
        v35 = swift_slowAlloc();
        v50 = v33;
        v51 = v35;
        v36 = v35;
        v37 = swift_slowAlloc();
        v52 = v37;
        *v36 = 136446466;
        v66 = v90;
        v67 = v91;
        v74 = v87;
        v75 = v88;
        *v76 = v89[0];
        *&v76[15] = *(v89 + 15);
        v70 = v83;
        v71 = v84;
        v72 = v85;
        v80 = v37;
        if (v55)
        {
          v38 = 0;
        }

        else
        {
          v38 = v28;
        }

        v65 = v28;
        v68 = v92;
        v69 = v55;
        v73 = v86;
        v77 = v50;
        v78 = v81;
        v79 = v82;
        v59 = xmmword_26C32DAD0;
        v60 = 0;
        v61 = 0;
        v62 = v50;
        v63 = v38;
        v64 = 1;
        v39 = Interpreter.Iterator.describe(state:)(&v59);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v80);

        v42 = v51;
        *(v51 + 4) = v41;
        *(v42 + 12) = 2082;
        v43 = v42;
        v53(v58, v12, a2);
        v44 = String.init<A>(describing:)();
        v46 = v45;
        (*(v6 + 8))(v12, a2);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v80);

        *(v43 + 14) = v47;
        _os_log_impl(&dword_26C161000, v56, v57, "%{public}s %{public}s", v43, 0x16u);
        v48 = v52;
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v48, -1, -1);
        MEMORY[0x26D69EAB0](v43, -1, -1);
      }

      else
      {
        (*(v6 + 8))(v12, a2);
      }
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

{
  return static Tracepoint.model(within:)(a1, a2, a3);
}

uint64_t *static Tracepoint.peak(within:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  result = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 32));
  v6 = *(a1 + 184);
  if (v6)
  {
    UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, v6, a2, result);
    print(_:separator:terminator:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  return static Tracepoint.peak(within:)(a1, a2);
}

uint64_t BufferAttachment.makeIterator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = 0;
  return result;
}

uint64_t BufferAttachment.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < v2[1])
  {
    v4 = v2[3];
    if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
    {
      v5 = *(result + 16);
      UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(v3 * v4, *v2, v5, a2);
      result = (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
      v7 = v2[4];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        v2[4] = v9;
        return result;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = *(*(*(result + 16) - 8) + 56);

  return v10(a2, 1, 1);
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_ModeDecl(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 1)
  {
    __break(1u);
  }

  else if (v1 == 2)
  {
    return *(result + 48);
  }

  __break(1u);
  return result;
}

__int128 *static V1ABIRequirement.size(in:)(__int128 *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 4);
  if (v3 == 1)
  {
    __break(1u);
  }

  else if (v3 == 2)
  {
    v4 = result;
    (*(a3 + 16))(a2, a3);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = *(v4 + 6);
    swift_getAtKeyPath();

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_ModeDecl(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 16);
  *(v4 + 32) = *v5;
  *(v4 + 48) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_TypeDecl(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 1)
  {
    return 16;
  }

  if (v1 == 2)
  {
    return *(result + 50);
  }

  __break(1u);
  return result;
}

uint64_t static V1ABIRequirement<>.size(in:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == 1)
  {
    v5 = *(a3 + 24);

    return v5(a2, a3);
  }

  else if (v4 == 2)
  {
    v6 = result;
    (*(a4 + 16))(a2, a4);
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 48);
    swift_getAtKeyPath();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_TypeDecl(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  v6 = *(a1 + 184);
  v8 = *v6;
  v7 = v6[1];
  *(v5 + 48) = *(v6 + 8);
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_KeypathDecl(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  *(v4 + 32) = **(a1 + 184);
  print(_:separator:terminator:)();
}

double _s21SwiftUITracingSupport10AttachmentPAAE9construct10attachment4fromxSW_AA11InterpreterC8IteratorVtFZSo15T_TreeValueNodea_Tt1t2g5@<D0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!__src || a2 - __src < 32)
  {
    return specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__src, a2, a3);
  }

  v3 = *(__src + 3);
  *a3 = *__src;
  result = *(__src + 2);
  *(a3 + 16) = result;
  *(a3 + 24) = v3;
  return result;
}

const void *static Attachment.construct(attachment:from:)@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *(*(a3 - 8) + 64);
  if (result)
  {
    if (a2 - result >= v4)
    {
      return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, result, a3, a4);
    }

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  if (v4 >= 1)
  {
    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t static Attachment.serialize(value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a2;
  v9[3] = a3;
  return _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawBufferPointer) -> (), v9, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], a8);
}

{
  return static Attachment.serialize(value:to:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *protocol witness for static Attachment.construct(attachment:from:) in conformance KeypathID@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a1 && a2 - a1 >= 4)
  {
    result = *a1;
  }

  else
  {
    result = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_DynamicPropertyChange(int *a1, uint64_t (*a2)(int *, uint64_t *))
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  result = a2(&v4, &v5);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance TypeID(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 1)
  {
    __break(1u);
  }

  else if (v1 == 2)
  {
    return *(result + 50);
  }

  __break(1u);
  return result;
}

char *protocol witness for static Attachment.construct(attachment:from:) in conformance T_TypeField@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a1 && a2 - a1 >= 12)
  {
    result = *a1;
    LODWORD(v7) = a1[1];
    v6 = a1[2];
  }

  else
  {
    result = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(a1, a2);
    v7 = result >> 32;
  }

  *a3 = result;
  a3[1] = v7;
  a3[2] = v6;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_TypeField(uint64_t *a1, uint64_t (*a2)(uint64_t *, _BYTE *))
{
  *&v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  v5 = *a1;
  v6 = v2;
  result = a2(&v5, v7);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_TypeField(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 1)
  {
    __break(1u);
  }

  else if (v1 == 2)
  {
    return *(result + 52);
  }

  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.iterate<A>()()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_68;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17)
    {
      v20 = *v16;
      if ((v20[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v22 = v21 + 24 * *v20;
  if (!*(*v22 + 64))
  {
    v37 = *(v0 + 184);
    v38 = v37;
LABEL_62:
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v37, v38);
    return;
  }

  v63 = *(*v22 + 64);
  v64 = v0;
  v24 = v0 + 56;
  v25 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v23 = *&v70[0];
  v70[1] = v25;
  *(v71 + 9) = *(v0 + 97);
  v27 = (v0 + 88);
  v26 = *(v0 + 88);
  v29 = (v24 + 44);
  v28 = *(v24 + 44);
  v31 = (v24 + 48);
  v30 = *(v24 + 48);
  v71[0] = *v27;
  v65 = *(v24 + 128);
  v32 = *&v70[0];
  v33 = v26;
  v34 = v30;
  if (v1 >= v28)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v35 = (v33 + v8);
    if ((v35[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v32 = *v34;
      v33 = v34[4];
      v36 = *(v34 + 11);
      v34 = v34[6];
    }

    while (v1 >= v36);
  }

  if (!v32)
  {
    goto LABEL_69;
  }

  v39 = v32 + 24 * *v35;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v28)
  {
    goto LABEL_26;
  }

  while ((*(v26 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v30)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v23 = *v30;
      v26 = v30[4];
      v42 = *(v30 + 11);
      v30 = v30[6];
    }

    while (v1 >= v42);
  }

  if (!v23)
  {
    goto LABEL_70;
  }

  v44 = *(*(v23 + 24 * *(v26 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v65 - v44)
  {
    __break(1u);
    goto LABEL_66;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v65 - v44, v45, v40, v41);
  if (v46 >= v63)
  {
    v47 = v63;
  }

  else
  {
    v47 = v46;
  }

  v48 = v65 + v47;
  *(v64 + 184) = v65 + v47;
  v49 = *(v24 + 16);
  v68[0] = *v24;
  v68[1] = v49;
  v69[0] = *(v24 + 32);
  *(v69 + 9) = *(v24 + 41);
  v50 = (v24 + 48);
  v51 = (v24 + 44);
  v52 = v27;
  for (i = v24; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_71;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v59;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  while (1)
  {
    v60 = *v31;
    if (v1 < *v29)
    {
      v61 = (*v27 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v27 = (v60 + 32);
    v29 = (v60 + 44);
    v31 = (v60 + 48);
    v24 = v60;
  }

  if (!*v24)
  {
LABEL_72:
    __break(1u);
    return;
  }

  *(*(*v24 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 < 8)
  {
    v37 = v65;
    v38 = v65 + v47;
    goto LABEL_62;
  }

  v62 = *v65;
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v78[0] = *(v2 + 40);
  v78[1] = v4;
  v79[0] = *(v2 + 72);
  *(v79 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v78);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v76[0] = *v14;
  v76[1] = v15;
  v77[0] = *(v13 + 88);
  *(v77 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x48u)
    {
      v20 = *v16;
      if ((*(v20 + 580) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x48u, 1, v76);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 576);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    *&v74[0] = v39;
    WORD4(v74[0]) = v40;
    v41 = *(v74 + 2);
LABEL_63:
    LOWORD(v78[0]) = v39;
    *(v78 + 2) = v41;
    return;
  }

  v67 = v0;
  v26 = *(v0 + 56);
  v24 = v0 + 56;
  v25 = v26;
  v27 = *(v24 + 16);
  v74[0] = *v24;
  v74[1] = v27;
  *(v75 + 9) = *(v24 + 41);
  v29 = (v24 + 32);
  v31 = (v24 + 44);
  v30 = *(v24 + 44);
  v33 = (v24 + 48);
  v32 = *(v24 + 48);
  v75[0] = *(v24 + 32);
  v28 = *&v75[0];
  v68 = *(v24 + 128);
  v34 = v26;
  v35 = *&v75[0];
  v36 = v32;
  v66 = v23;
  if (v1 >= v30)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v37 = (v35 + v8);
    if ((v37[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v34 = *v36;
      v35 = v36[4];
      v38 = *(v36 + 11);
      v36 = v36[6];
    }

    while (v1 >= v38);
  }

  if (!v34)
  {
    goto LABEL_68;
  }

  v42 = v34 + 24 * *v37;
  v43 = *(*v42 + 136);
  v44 = *(*v42 + 144);
  if (v1 >= v30)
  {
    goto LABEL_26;
  }

  while ((*(v28 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v32)
      {
        v46 = *(*v42 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v25 = *v32;
      v28 = v32[4];
      v45 = *(v32 + 11);
      v32 = v32[6];
    }

    while (v1 >= v45);
  }

  if (!v25)
  {
    goto LABEL_69;
  }

  v47 = *(*(v25 + 24 * *(v28 + 8 * v1)) + 136);
  if (!v47)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v43)
  {
    v48 = v44 - v43;
  }

  else
  {
    v48 = 0;
  }

  if (v48 < &v68[-v47])
  {
    __break(1u);
    goto LABEL_65;
  }

  v49 = specialized RandomAccessCollection<>.distance(from:to:)(&v68[-v47], v48, v43, v44);
  if (v49 >= v66)
  {
    v50 = v66;
  }

  else
  {
    v50 = v49;
  }

  v51 = &v68[v50];
  *(v67 + 184) = &v68[v50];
  v52 = *(v24 + 16);
  v72[0] = *v24;
  v72[1] = v52;
  v73[0] = *(v24 + 32);
  *(v73 + 9) = *(v24 + 41);
  v53 = (v24 + 48);
  v54 = (v24 + 44);
  v55 = (v24 + 32);
  for (i = v24; ; i = v57)
  {
    v57 = *v53;
    if (v1 < *v54)
    {
      v58 = (*v55 + v8);
      if ((v58[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v55 = (v57 + 32);
    v54 = (v57 + 44);
    v53 = (v57 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v59 = *i + 24 * *v58;
  v60 = *(*v59 + 136);
  if (v60)
  {
    if (v51 >= v60 && v51 < *(*v59 + 144))
    {
      goto LABEL_60;
    }
  }

  v62 = *(v24 + 16);
  v70[0] = *v24;
  v70[1] = v62;
  v71[0] = *(v24 + 32);
  *(v71 + 9) = *(v24 + 41);
  while (1)
  {
    v63 = *v33;
    if (v1 < *v31)
    {
      v64 = (*v29 + v8);
      if ((v64[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v29 = (v63 + 32);
    v31 = (v63 + 44);
    v33 = (v63 + 48);
    v24 = v63;
  }

  if (*v24)
  {
    *(*(*v24 + 24 * *v64) + 41) = 1;
LABEL_60:
    if (v50 >= 10)
    {
      LOWORD(v39) = *v68;
      v41 = *(v68 + 2);
    }

    else
    {
      v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v68, &v68[v50]);
      *&v69 = v39;
      WORD4(v69) = v65;
      v41 = *(&v69 + 2);
    }

    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v76[0] = *(v2 + 40);
  v76[1] = v4;
  v77[0] = *(v2 + 72);
  *(v77 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v76);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v74[0] = *v14;
  v74[1] = v15;
  v75[0] = *(v13 + 88);
  *(v75 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x33u)
    {
      v20 = *v16;
      if ((*(v20 + 412) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x33u, 1, v74);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 408);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v66 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v72[0] = *(v0 + 56);
  v24 = *&v72[0];
  v72[1] = v26;
  *(v73 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v73[0] = *v28;
  v67 = *(v25 + 128);
  v33 = *&v72[0];
  v34 = v27;
  v35 = v31;
  v65 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v67[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v67[-v44], v45, v40, v41);
  if (v46 >= v65)
  {
    v47 = v65;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v67[v47];
  *(v66 + 184) = &v67[v47];
  v49 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v49;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v59;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 9)
  {
    v62 = *v67;
    v63 = *(v67 + 1);
    v64 = v67[8];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v67, &v67[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Cu)
    {
      v20 = *v16;
      if ((*(v20 + 356) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Cu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 352);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x47u)
    {
      v20 = *v16;
      if ((*(v20 + 572) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x47u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 568);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v66 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v66 - v44, v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = v66 + v47;
  *(v65 + 184) = v66 + v47;
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 6)
  {
    v62 = *v66;
    v63 = v66[2];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, v66 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x32u)
    {
      v20 = *v16;
      if ((*(v20 + 404) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x32u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 400);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x60u)
    {
      v20 = *v16;
      if ((*(v20 + 772) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x60u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 768);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Fu)
    {
      v20 = *v16;
      if ((*(v20 + 380) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Fu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 376);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x39u)
    {
      v20 = *v16;
      if ((*(v20 + 460) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x39u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 456);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v76[0] = *(v2 + 40);
  v76[1] = v4;
  v77[0] = *(v2 + 72);
  *(v77 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v76);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v74[0] = *v14;
  v74[1] = v15;
  v75[0] = *(v13 + 88);
  *(v75 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Bu)
    {
      v20 = *v16;
      if ((*(v20 + 476) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Bu, 1, v74);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 472);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v66 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v72[0] = *(v0 + 56);
  v24 = *&v72[0];
  v72[1] = v26;
  *(v73 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v73[0] = *v28;
  v67 = *(v25 + 128);
  v33 = *&v72[0];
  v34 = v27;
  v35 = v31;
  v65 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v67[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v67[-v44], v45, v40, v41);
  if (v46 >= v65)
  {
    v47 = v65;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v67[v47];
  *(v66 + 184) = &v67[v47];
  v49 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v49;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v59;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 9)
  {
    v62 = *v67;
    v63 = *(v67 + 1);
    v64 = v67[8];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v67, &v67[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x29u)
    {
      v20 = *v16;
      if ((*(v20 + 332) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x29u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 328);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x15u)
    {
      v20 = *v16;
      if ((*(v20 + 172) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x15u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 168);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 12)
  {
    v61 = *v65;
    v62 = *(v65 + 2);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x53u)
    {
      v20 = *v16;
      if ((*(v20 + 668) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x53u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 664);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Bu)
    {
      v20 = *v16;
      if ((*(v20 + 348) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Bu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 344);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v77[0] = *(v2 + 40);
  v77[1] = v4;
  v78[0] = *(v2 + 72);
  *(v78 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v77);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v75[0] = *v14;
  v75[1] = v15;
  v76[0] = *(v13 + 88);
  *(v76 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x57u)
    {
      v20 = *v16;
      if ((*(v20 + 700) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x57u, 1, v75);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 696);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    *&v73[0] = v39;
    DWORD2(v73[0]) = v40;
    v41 = *(v73 + 4);
LABEL_63:
    LODWORD(v77[0]) = v39;
    *(v77 + 4) = v41;
    return;
  }

  v67 = v0;
  v26 = *(v0 + 56);
  v24 = v0 + 56;
  v25 = v26;
  v27 = *(v24 + 16);
  v73[0] = *v24;
  v73[1] = v27;
  *(v74 + 9) = *(v24 + 41);
  v29 = (v24 + 32);
  v31 = (v24 + 44);
  v30 = *(v24 + 44);
  v33 = (v24 + 48);
  v32 = *(v24 + 48);
  v74[0] = *(v24 + 32);
  v28 = *&v74[0];
  v68 = *(v24 + 128);
  v34 = v26;
  v35 = *&v74[0];
  v36 = v32;
  v66 = v23;
  if (v1 >= v30)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v37 = (v35 + v8);
    if ((v37[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
      }

      v34 = *v36;
      v35 = v36[4];
      v38 = *(v36 + 11);
      v36 = v36[6];
    }

    while (v1 >= v38);
  }

  if (!v34)
  {
    goto LABEL_68;
  }

  v42 = v34 + 24 * *v37;
  v43 = *(*v42 + 136);
  v44 = *(*v42 + 144);
  if (v1 >= v30)
  {
    goto LABEL_26;
  }

  while ((*(v28 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v32)
      {
        v46 = *(*v42 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
      }

      v25 = *v32;
      v28 = v32[4];
      v45 = *(v32 + 11);
      v32 = v32[6];
    }

    while (v1 >= v45);
  }

  if (!v25)
  {
    goto LABEL_69;
  }

  v47 = *(*(v25 + 24 * *(v28 + 8 * v1)) + 136);
  if (!v47)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v43)
  {
    v48 = v44 - v43;
  }

  else
  {
    v48 = 0;
  }

  if (v48 < &v68[-v47])
  {
    __break(1u);
    goto LABEL_65;
  }

  v49 = specialized RandomAccessCollection<>.distance(from:to:)(&v68[-v47], v48, v43, v44);
  if (v49 >= v66)
  {
    v50 = v66;
  }

  else
  {
    v50 = v49;
  }

  v51 = &v68[v50];
  *(v67 + 184) = &v68[v50];
  v52 = *(v24 + 16);
  v71[0] = *v24;
  v71[1] = v52;
  v72[0] = *(v24 + 32);
  *(v72 + 9) = *(v24 + 41);
  v53 = (v24 + 48);
  v54 = (v24 + 44);
  v55 = (v24 + 32);
  for (i = v24; ; i = v57)
  {
    v57 = *v53;
    if (v1 < *v54)
    {
      v58 = (*v55 + v8);
      if ((v58[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
    }

    v55 = (v57 + 32);
    v54 = (v57 + 44);
    v53 = (v57 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v59 = *i + 24 * *v58;
  v60 = *(*v59 + 136);
  if (v60)
  {
    if (v51 >= v60 && v51 < *(*v59 + 144))
    {
      goto LABEL_60;
    }
  }

  v62 = *(v24 + 16);
  v69[0] = *v24;
  v69[1] = v62;
  v70[0] = *(v24 + 32);
  *(v70 + 9) = *(v24 + 41);
  while (1)
  {
    v63 = *v33;
    if (v1 < *v31)
    {
      v64 = (*v29 + v8);
      if ((v64[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v29 = (v63 + 32);
    v31 = (v63 + 44);
    v33 = (v63 + 48);
    v24 = v63;
  }

  if (*v24)
  {
    *(*(*v24 + 24 * *v64) + 41) = 1;
LABEL_60:
    if (v50 >= 12)
    {
      LODWORD(v39) = *v68;
      v41 = *(v68 + 4);
    }

    else
    {
      v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v68, &v68[v50]);
      v41 = __PAIR64__(v65, HIDWORD(v39));
    }

    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x38u)
    {
      v20 = *v16;
      if ((*(v20 + 452) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x38u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 448);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x35u)
    {
      v20 = *v16;
      if ((*(v20 + 428) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x35u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 424);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v66 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v66 - v43, v44, v39, v40);
  if (v45 >= v64)
  {
    v46 = v64;
  }

  else
  {
    v46 = v45;
  }

  v47 = v66 + v46;
  *(v65 + 184) = v66 + v46;
  v48 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v48;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v58;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 17)
  {
    v61 = *v66;
    v62 = v66[1];
    v63 = *(v66 + 16);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, v66 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x16u)
    {
      v20 = *v16;
      if ((*(v20 + 180) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x16u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 176);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 12)
  {
    v61 = *v65;
    v62 = *(v65 + 2);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x21u)
    {
      v20 = *v16;
      if ((*(v20 + 268) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x21u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 264);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v65 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v65 - v43, v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = v65 + v46;
  *(v64 + 184) = v65 + v46;
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 16)
  {
    v61 = *v65;
    v62 = v65[1];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, v65 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x37u)
    {
      v20 = *v16;
      if ((*(v20 + 444) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x37u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 440);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x34u)
    {
      v20 = *v16;
      if ((*(v20 + 420) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x34u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 416);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 9)
  {
    v61 = *v65;
    v62 = v65[8];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x5Fu)
    {
      v20 = *v16;
      if ((*(v20 + 764) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x5Fu, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 760);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 16;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 6)
  {
    v62 = *v66;
    v63 = *(v66 + 2);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0xCu)
    {
      v20 = *v16;
      if ((*(v20 + 100) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0xCu, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 96);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 12)
  {
    v61 = *v65;
    v62 = *(v65 + 2);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x56u)
    {
      v20 = *v16;
      if ((*(v20 + 692) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x56u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 688);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x5Cu)
    {
      v20 = *v16;
      if ((*(v20 + 740) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x5Cu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 736);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x45u)
    {
      v20 = *v16;
      if ((*(v20 + 556) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x45u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 552);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Eu)
    {
      v20 = *v16;
      if ((*(v20 + 372) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Eu, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 368);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v66 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v66 - v43, v44, v39, v40);
  if (v45 >= v64)
  {
    v46 = v64;
  }

  else
  {
    v46 = v45;
  }

  v47 = v66 + v46;
  *(v65 + 184) = v66 + v46;
  v48 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v48;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v58;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 13)
  {
    v61 = *v66;
    v62 = v66[2];
    v63 = *(v66 + 12);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, v66 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v76[0] = *(v2 + 40);
  v76[1] = v4;
  v77[0] = *(v2 + 72);
  *(v77 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v76);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v74[0] = *v14;
  v74[1] = v15;
  v75[0] = *(v13 + 88);
  *(v75 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x25u)
    {
      v20 = *v16;
      if ((*(v20 + 300) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x25u, 1, v74);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 296);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v66 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v72[0] = *(v0 + 56);
  v24 = *&v72[0];
  v72[1] = v26;
  *(v73 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v73[0] = *v28;
  v67 = *(v25 + 128);
  v33 = *&v72[0];
  v34 = v27;
  v35 = v31;
  v65 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v67[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v67[-v44], v45, v40, v41);
  if (v46 >= v65)
  {
    v47 = v65;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v67[v47];
  *(v66 + 184) = &v67[v47];
  v49 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v49;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v59;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 9)
  {
    v62 = *v67;
    v63 = *(v67 + 1);
    v64 = v67[8];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v67, &v67[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Du)
    {
      v20 = *v16;
      if ((*(v20 + 236) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Du, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 232);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 12)
  {
    v61 = *v65;
    v62 = *(v65 + 2);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v76[0] = *(v2 + 40);
  v76[1] = v4;
  v77[0] = *(v2 + 72);
  *(v77 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v76);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v74[0] = *v14;
  v74[1] = v15;
  v75[0] = *(v13 + 88);
  *(v75 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x5Eu)
    {
      v20 = *v16;
      if ((*(v20 + 756) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x5Eu, 1, v74);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 752);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v66 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v72[0] = *(v0 + 56);
  v24 = *&v72[0];
  v72[1] = v26;
  *(v73 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v73[0] = *v28;
  v67 = *(v25 + 128);
  v33 = *&v72[0];
  v34 = v27;
  v35 = v31;
  v65 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v67 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v67 - v43, v44, v39, v40);
  if (v45 >= v65)
  {
    v46 = v65;
  }

  else
  {
    v46 = v45;
  }

  v47 = v67 + v46;
  *(v66 + 184) = v67 + v46;
  v48 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v48;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v58;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 26)
  {
    v61 = *v67;
    v62 = v67[1];
    v63 = v67[2];
    v64 = *(v67 + 12);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v67, v67 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x46u)
    {
      v20 = *v16;
      if ((*(v20 + 564) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x46u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 560);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Cu)
    {
      v20 = *v16;
      if ((*(v20 + 484) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Cu, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 480);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v78[0] = *(v2 + 40);
  v78[1] = v4;
  v79[0] = *(v2 + 72);
  *(v79 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v78);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v76[0] = *v14;
  v76[1] = v15;
  v77[0] = *(v13 + 88);
  *(v77 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Au)
    {
      v20 = *v16;
      if ((*(v20 + 340) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Au, 1, v76);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 336);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    *&v74[0] = v39;
    *(&v74[0] + 1) = v40;
    v41 = *(v74 + 4);
    v42 = HIDWORD(v40);
LABEL_63:
    *(v78 + 4) = v41;
    LODWORD(v78[0]) = v39;
    HIDWORD(v78[0]) = v42;
    return;
  }

  v68 = v0;
  v26 = *(v0 + 56);
  v24 = v0 + 56;
  v25 = v26;
  v27 = *(v24 + 16);
  v74[0] = *v24;
  v74[1] = v27;
  *(v75 + 9) = *(v24 + 41);
  v29 = (v24 + 32);
  v31 = (v24 + 44);
  v30 = *(v24 + 44);
  v33 = (v24 + 48);
  v32 = *(v24 + 48);
  v75[0] = *(v24 + 32);
  v28 = *&v75[0];
  v69 = *(v24 + 128);
  v34 = v26;
  v35 = *&v75[0];
  v36 = v32;
  v67 = v23;
  if (v1 >= v30)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v37 = (v35 + v8);
    if ((v37[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v34 = *v36;
      v35 = v36[4];
      v38 = *(v36 + 11);
      v36 = v36[6];
    }

    while (v1 >= v38);
  }

  if (!v34)
  {
    goto LABEL_68;
  }

  v43 = v34 + 24 * *v37;
  v44 = *(*v43 + 136);
  v45 = *(*v43 + 144);
  if (v1 >= v30)
  {
    goto LABEL_26;
  }

  while ((*(v28 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v32)
      {
        v47 = *(*v43 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v25 = *v32;
      v28 = v32[4];
      v46 = *(v32 + 11);
      v32 = v32[6];
    }

    while (v1 >= v46);
  }

  if (!v25)
  {
    goto LABEL_69;
  }

  v48 = *(*(v25 + 24 * *(v28 + 8 * v1)) + 136);
  if (!v48)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v44)
  {
    v49 = v45 - v44;
  }

  else
  {
    v49 = 0;
  }

  if (v49 < &v69[-v48])
  {
    __break(1u);
    goto LABEL_65;
  }

  v50 = specialized RandomAccessCollection<>.distance(from:to:)(&v69[-v48], v49, v44, v45);
  if (v50 >= v67)
  {
    v51 = v67;
  }

  else
  {
    v51 = v50;
  }

  v52 = &v69[v51];
  *(v68 + 184) = &v69[v51];
  v53 = *(v24 + 16);
  v72[0] = *v24;
  v72[1] = v53;
  v73[0] = *(v24 + 32);
  *(v73 + 9) = *(v24 + 41);
  v54 = (v24 + 48);
  v55 = (v24 + 44);
  v56 = (v24 + 32);
  for (i = v24; ; i = v58)
  {
    v58 = *v54;
    if (v1 < *v55)
    {
      v59 = (*v56 + v8);
      if ((v59[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v58)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v56 = (v58 + 32);
    v55 = (v58 + 44);
    v54 = (v58 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v60 = *i + 24 * *v59;
  v61 = *(*v60 + 136);
  if (v61)
  {
    if (v52 >= v61 && v52 < *(*v60 + 144))
    {
      goto LABEL_60;
    }
  }

  v63 = *(v24 + 16);
  v70[0] = *v24;
  v70[1] = v63;
  v71[0] = *(v24 + 32);
  *(v71 + 9) = *(v24 + 41);
  while (1)
  {
    v64 = *v33;
    if (v1 < *v31)
    {
      v65 = (*v29 + v8);
      if ((v65[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v64)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v29 = (v64 + 32);
    v31 = (v64 + 44);
    v33 = (v64 + 48);
    v24 = v64;
  }

  if (*v24)
  {
    *(*(*v24 + 24 * *v65) + 41) = 1;
LABEL_60:
    if (v51 >= 16)
    {
      LODWORD(v39) = *v69;
      v41 = *(v69 + 4);
      LODWORD(v42) = *(v69 + 3);
    }

    else
    {
      v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v69, &v69[v51]);
      v41 = __PAIR64__(v66, HIDWORD(v39));
      v42 = HIDWORD(v66);
    }

    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0xEu)
    {
      v20 = *v16;
      if ((*(v20 + 116) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0xEu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 112);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x5Du)
    {
      v20 = *v16;
      if ((*(v20 + 748) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x5Du, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 744);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x43u)
    {
      v20 = *v16;
      if ((*(v20 + 540) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x43u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 536);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x20u)
    {
      v20 = *v16;
      if ((*(v20 + 260) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x20u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 256);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v65 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v65 - v43, v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = v65 + v46;
  *(v64 + 184) = v65 + v46;
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 16)
  {
    v61 = *v65;
    v62 = v65[1];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, v65 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x5Au)
    {
      v20 = *v16;
      if ((*(v20 + 724) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x5Au, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 720);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Du)
    {
      v20 = *v16;
      if ((*(v20 + 236) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Du, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 232);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 6u)
    {
      v20 = *v16;
      if ((*(v20 + 52) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(6u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 48);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x14u)
    {
      v20 = *v16;
      if ((*(v20 + 164) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x14u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 160);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 12)
  {
    v61 = *v65;
    v62 = *(v65 + 2);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x11u)
    {
      v20 = *v16;
      if ((*(v20 + 140) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x11u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 136);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x13u)
    {
      v20 = *v16;
      if ((*(v20 + 156) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x13u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 152);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Fu)
    {
      v20 = *v16;
      if ((*(v20 + 252) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Fu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 248);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Eu)
    {
      v20 = *v16;
      if ((*(v20 + 244) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Eu, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 240);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v65 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v65 - v43, v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = v65 + v46;
  *(v64 + 184) = v65 + v46;
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 16)
  {
    v61 = *v65;
    v62 = v65[1];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, v65 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v76[0] = *(v2 + 40);
  v76[1] = v4;
  v77[0] = *(v2 + 72);
  *(v77 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v76);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v74[0] = *v14;
  v74[1] = v15;
  v75[0] = *(v13 + 88);
  *(v75 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x42u)
    {
      v20 = *v16;
      if ((*(v20 + 532) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x42u, 1, v74);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 528);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v66 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v72[0] = *(v0 + 56);
  v24 = *&v72[0];
  v72[1] = v26;
  *(v73 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v73[0] = *v28;
  v67 = *(v25 + 128);
  v33 = *&v72[0];
  v34 = v27;
  v35 = v31;
  v65 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v67 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v67 - v44, v45, v40, v41);
  if (v46 >= v65)
  {
    v47 = v65;
  }

  else
  {
    v47 = v46;
  }

  v48 = v67 + v47;
  *(v66 + 184) = v67 + v47;
  v49 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v49;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v59;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 12)
  {
    v62 = *v67;
    v63 = v67[1];
    v64 = v67[2];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v67, v67 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0xFu)
    {
      v20 = *v16;
      if ((*(v20 + 124) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0xFu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 120);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x17u)
    {
      v20 = *v16;
      if ((*(v20 + 188) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x17u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 184);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x44u)
    {
      v20 = *v16;
      if ((*(v20 + 548) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x44u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 544);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v72[0] = *(v2 + 40);
  v72[1] = v4;
  v73[0] = *(v2 + 72);
  *(v73 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v70[0] = *v14;
  v70[1] = v15;
  v71[0] = *(v13 + 88);
  *(v71 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Eu)
    {
      v20 = *v16;
      if ((*(v20 + 500) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Eu, 1, v70);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21 + 24 * *(v20 + 496);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    return;
  }

  v62 = v0;
  v24 = v0 + 56;
  v26 = *(v0 + 72);
  v68[0] = *(v0 + 56);
  v25 = *&v68[0];
  v68[1] = v26;
  *(v69 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v24 + 44);
  v29 = *(v24 + 44);
  v32 = (v24 + 48);
  v31 = *(v24 + 48);
  v69[0] = *v28;
  v63 = *(v24 + 128);
  v33 = *&v68[0];
  v34 = v27;
  v35 = v31;
  v61 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_25;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_25:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v25 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v25)
  {
    goto LABEL_64;
  }

  v43 = *(*(v25 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v63 - v43)
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v63 - v43, v44, v39, v40);
  v46 = v61;
  if (v45 < v61)
  {
    v46 = v45;
  }

  v47 = v63 + v46;
  *(v62 + 184) = v63 + v46;
  v48 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v48;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  v49 = (v24 + 48);
  v50 = (v24 + 44);
  v51 = v28;
  for (i = v24; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_65;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (!v56 || (v47 >= v56 ? (v57 = v47 >= *(*v55 + 144)) : (v57 = 1), v57))
  {
    v58 = *(v24 + 16);
    v64[0] = *v24;
    v64[1] = v58;
    v65[0] = *(v24 + 32);
    *(v65 + 9) = *(v24 + 41);
    while (1)
    {
      v59 = *v32;
      if (v1 < *v30)
      {
        v60 = (*v28 + v8);
        if ((v60[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v64);
      }

      v28 = (v59 + 32);
      v30 = (v59 + 44);
      v32 = (v59 + 48);
      v24 = v59;
    }

    if (*v24)
    {
      *(*(*v24 + 24 * *v60) + 41) = 1;
      return;
    }

LABEL_66:
    __break(1u);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x27u)
    {
      v20 = *v16;
      if ((*(v20 + 316) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x27u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 312);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x24u)
    {
      v20 = *v16;
      if ((*(v20 + 292) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x24u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 288);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x5Bu)
    {
      v20 = *v16;
      if ((*(v20 + 732) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x5Bu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 728);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x12u)
    {
      v20 = *v16;
      if ((*(v20 + 148) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x12u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 144);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x14u)
    {
      v20 = *v16;
      if ((*(v20 + 164) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x14u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 160);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v72[0] = *(v2 + 40);
  v72[1] = v4;
  v73[0] = *(v2 + 72);
  *(v73 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v70[0] = *v14;
  v70[1] = v15;
  v71[0] = *(v13 + 88);
  *(v71 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x40u)
    {
      v20 = *v16;
      if ((*(v20 + 516) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x40u, 1, v70);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21 + 24 * *(v20 + 512);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    return;
  }

  v62 = v0;
  v24 = v0 + 56;
  v26 = *(v0 + 72);
  v68[0] = *(v0 + 56);
  v25 = *&v68[0];
  v68[1] = v26;
  *(v69 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v24 + 44);
  v29 = *(v24 + 44);
  v32 = (v24 + 48);
  v31 = *(v24 + 48);
  v69[0] = *v28;
  v63 = *(v24 + 128);
  v33 = *&v68[0];
  v34 = v27;
  v35 = v31;
  v61 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_25;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_25:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v25 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v25)
  {
    goto LABEL_64;
  }

  v43 = *(*(v25 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v63 - v43)
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v63 - v43, v44, v39, v40);
  v46 = v61;
  if (v45 < v61)
  {
    v46 = v45;
  }

  v47 = v63 + v46;
  *(v62 + 184) = v63 + v46;
  v48 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v48;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  v49 = (v24 + 48);
  v50 = (v24 + 44);
  v51 = v28;
  for (i = v24; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_65;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (!v56 || (v47 >= v56 ? (v57 = v47 >= *(*v55 + 144)) : (v57 = 1), v57))
  {
    v58 = *(v24 + 16);
    v64[0] = *v24;
    v64[1] = v58;
    v65[0] = *(v24 + 32);
    *(v65 + 9) = *(v24 + 41);
    while (1)
    {
      v59 = *v32;
      if (v1 < *v30)
      {
        v60 = (*v28 + v8);
        if ((v60[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v64);
      }

      v28 = (v59 + 32);
      v30 = (v59 + 44);
      v32 = (v59 + 48);
      v24 = v59;
    }

    if (*v24)
    {
      *(*(*v24 + 24 * *v60) + 41) = 1;
      return;
    }

LABEL_66:
    __break(1u);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x31u)
    {
      v20 = *v16;
      if ((*(v20 + 396) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x31u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 392);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Fu)
    {
      v20 = *v16;
      if ((*(v20 + 380) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Fu, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 376);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x10u)
    {
      v20 = *v16;
      if ((*(v20 + 132) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x10u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 128);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v66 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v66 - v44, v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = v66 + v47;
  *(v65 + 184) = v66 + v47;
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 6)
  {
    v62 = *v66;
    v63 = v66[2];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, v66 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x18u)
    {
      v20 = *v16;
      if ((*(v20 + 196) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x18u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 192);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v79[0] = *(v2 + 40);
  v79[1] = v4;
  v80[0] = *(v2 + 72);
  *(v80 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v79);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v77[0] = *v14;
  v77[1] = v15;
  v78[0] = *(v13 + 88);
  *(v78 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Fu)
    {
      v20 = *v16;
      if ((*(v20 + 508) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Fu, 1, v77);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 504);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v69 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v75[0] = *(v0 + 56);
  v24 = *&v75[0];
  v75[1] = v26;
  *(v76 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v76[0] = *v28;
  v70 = *(v25 + 128);
  v33 = *&v75[0];
  v34 = v27;
  v35 = v31;
  v68 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v70 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v70 - v44, v45, v40, v41);
  if (v46 >= v68)
  {
    v47 = v68;
  }

  else
  {
    v47 = v46;
  }

  v48 = v70 + v47;
  *(v69 + 184) = v70 + v47;
  v49 = *(v25 + 16);
  v73[0] = *v25;
  v73[1] = v49;
  v74[0] = *(v25 + 32);
  *(v74 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v71[0] = *v25;
  v71[1] = v59;
  v72[0] = *(v25 + 32);
  *(v72 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 24)
  {
    v62 = *v70;
    v63 = v70[1];
    v64 = v70[2];
    v65 = v70[3];
    v66 = v70[4];
    v67 = v70[5];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v70, v70 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v78[0] = *(v2 + 40);
  v78[1] = v4;
  v79[0] = *(v2 + 72);
  *(v79 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v78);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v76[0] = *v14;
  v76[1] = v15;
  v77[0] = *(v13 + 88);
  *(v77 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x58u)
    {
      v20 = *v16;
      if ((*(v20 + 708) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x58u, 1, v76);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 704);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    *&v74[0] = v39;
    BYTE8(v74[0]) = v40;
    v41 = *(v74 + 1);
LABEL_63:
    LOBYTE(v78[0]) = v39;
    *(v78 + 1) = v41;
    return;
  }

  v67 = v0;
  v26 = *(v0 + 56);
  v24 = v0 + 56;
  v25 = v26;
  v27 = *(v24 + 16);
  v74[0] = *v24;
  v74[1] = v27;
  *(v75 + 9) = *(v24 + 41);
  v29 = (v24 + 32);
  v31 = (v24 + 44);
  v30 = *(v24 + 44);
  v33 = (v24 + 48);
  v32 = *(v24 + 48);
  v75[0] = *(v24 + 32);
  v28 = *&v75[0];
  v68 = *(v24 + 128);
  v34 = v26;
  v35 = *&v75[0];
  v36 = v32;
  v66 = v23;
  if (v1 >= v30)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v37 = (v35 + v8);
    if ((v37[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v34 = *v36;
      v35 = v36[4];
      v38 = *(v36 + 11);
      v36 = v36[6];
    }

    while (v1 >= v38);
  }

  if (!v34)
  {
    goto LABEL_68;
  }

  v42 = v34 + 24 * *v37;
  v43 = *(*v42 + 136);
  v44 = *(*v42 + 144);
  if (v1 >= v30)
  {
    goto LABEL_26;
  }

  while ((*(v28 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v32)
      {
        v46 = *(*v42 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v25 = *v32;
      v28 = v32[4];
      v45 = *(v32 + 11);
      v32 = v32[6];
    }

    while (v1 >= v45);
  }

  if (!v25)
  {
    goto LABEL_69;
  }

  v47 = *(*(v25 + 24 * *(v28 + 8 * v1)) + 136);
  if (!v47)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v43)
  {
    v48 = v44 - v43;
  }

  else
  {
    v48 = 0;
  }

  if (v48 < &v68[-v47])
  {
    __break(1u);
    goto LABEL_65;
  }

  v49 = specialized RandomAccessCollection<>.distance(from:to:)(&v68[-v47], v48, v43, v44);
  if (v49 >= v66)
  {
    v50 = v66;
  }

  else
  {
    v50 = v49;
  }

  v51 = &v68[v50];
  *(v67 + 184) = &v68[v50];
  v52 = *(v24 + 16);
  v72[0] = *v24;
  v72[1] = v52;
  v73[0] = *(v24 + 32);
  *(v73 + 9) = *(v24 + 41);
  v53 = (v24 + 48);
  v54 = (v24 + 44);
  v55 = (v24 + 32);
  for (i = v24; ; i = v57)
  {
    v57 = *v53;
    if (v1 < *v54)
    {
      v58 = (*v55 + v8);
      if ((v58[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v55 = (v57 + 32);
    v54 = (v57 + 44);
    v53 = (v57 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v59 = *i + 24 * *v58;
  v60 = *(*v59 + 136);
  if (v60)
  {
    if (v51 >= v60 && v51 < *(*v59 + 144))
    {
      goto LABEL_60;
    }
  }

  v62 = *(v24 + 16);
  v70[0] = *v24;
  v70[1] = v62;
  v71[0] = *(v24 + 32);
  *(v71 + 9) = *(v24 + 41);
  while (1)
  {
    v63 = *v33;
    if (v1 < *v31)
    {
      v64 = (*v29 + v8);
      if ((v64[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v29 = (v63 + 32);
    v31 = (v63 + 44);
    v33 = (v63 + 48);
    v24 = v63;
  }

  if (*v24)
  {
    *(*(*v24 + 24 * *v64) + 41) = 1;
LABEL_60:
    if (v50 >= 9)
    {
      LOBYTE(v39) = *v68;
      v41 = *(v68 + 1);
    }

    else
    {
      v39 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v68, &v68[v50]);
      *&v69 = v39;
      BYTE8(v69) = v65;
      v41 = *(&v69 + 1);
    }

    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x50u)
    {
      v20 = *v16;
      if ((*(v20 + 644) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x50u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 640);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x28u)
    {
      v20 = *v16;
      if ((*(v20 + 324) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x28u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 320);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x26u)
    {
      v20 = *v16;
      if ((*(v20 + 308) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x26u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 304);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < &v66[-v44])
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v44], v45, v40, v41);
  if (v46 >= v64)
  {
    v47 = v64;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v66[v47];
  *(v65 + 184) = &v66[v47];
  v49 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v49;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v59;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 5)
  {
    v62 = *v66;
    v63 = v66[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, &v66[v47]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Cu)
    {
      v20 = *v16;
      if ((*(v20 + 228) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Cu, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 224);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v65 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v65 - v43, v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = v65 + v46;
  *(v64 + 184) = v65 + v46;
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 16)
  {
    v61 = *v65;
    v62 = v65[1];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, v65 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Bu)
    {
      v20 = *v16;
      if ((*(v20 + 220) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Bu, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 216);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v65 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v65 - v43, v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = v65 + v46;
  *(v64 + 184) = v65 + v46;
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 16)
  {
    v61 = *v65;
    v62 = v65[1];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, v65 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v72[0] = *(v2 + 40);
  v72[1] = v4;
  v73[0] = *(v2 + 72);
  *(v73 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v70[0] = *v14;
  v70[1] = v15;
  v71[0] = *(v13 + 88);
  *(v71 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x41u)
    {
      v20 = *v16;
      if ((*(v20 + 524) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x41u, 1, v70);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21 + 24 * *(v20 + 520);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    return;
  }

  v62 = v0;
  v24 = v0 + 56;
  v26 = *(v0 + 72);
  v68[0] = *(v0 + 56);
  v25 = *&v68[0];
  v68[1] = v26;
  *(v69 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v24 + 44);
  v29 = *(v24 + 44);
  v32 = (v24 + 48);
  v31 = *(v24 + 48);
  v69[0] = *v28;
  v63 = *(v24 + 128);
  v33 = *&v68[0];
  v34 = v27;
  v35 = v31;
  v61 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_25;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_25:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v25 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v25)
  {
    goto LABEL_64;
  }

  v43 = *(*(v25 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v63 - v43)
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v63 - v43, v44, v39, v40);
  v46 = v61;
  if (v45 < v61)
  {
    v46 = v45;
  }

  v47 = v63 + v46;
  *(v62 + 184) = v63 + v46;
  v48 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v48;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  v49 = (v24 + 48);
  v50 = (v24 + 44);
  v51 = v28;
  for (i = v24; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_65;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (!v56 || (v47 >= v56 ? (v57 = v47 >= *(*v55 + 144)) : (v57 = 1), v57))
  {
    v58 = *(v24 + 16);
    v64[0] = *v24;
    v64[1] = v58;
    v65[0] = *(v24 + 32);
    *(v65 + 9) = *(v24 + 41);
    while (1)
    {
      v59 = *v32;
      if (v1 < *v30)
      {
        v60 = (*v28 + v8);
        if ((v60[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v64);
      }

      v28 = (v59 + 32);
      v30 = (v59 + 44);
      v32 = (v59 + 48);
      v24 = v59;
    }

    if (*v24)
    {
      *(*(*v24 + 24 * *v60) + 41) = 1;
      return;
    }

LABEL_66:
    __break(1u);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x55u)
    {
      v20 = *v16;
      if ((*(v20 + 684) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x55u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 680);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x52u)
    {
      v20 = *v16;
      if ((*(v20 + 660) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x52u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 656);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Du)
    {
      v20 = *v16;
      if ((*(v20 + 492) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Du, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 488);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x2Du)
    {
      v20 = *v16;
      if ((*(v20 + 364) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x2Du, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 360);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 4)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v76[0] = *(v2 + 40);
  v76[1] = v4;
  v77[0] = *(v2 + 72);
  *(v77 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v76);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v74[0] = *v14;
  v74[1] = v15;
  v75[0] = *(v13 + 88);
  *(v75 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x23u)
    {
      v20 = *v16;
      if ((*(v20 + 284) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x23u, 1, v74);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 280);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v66 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v72[0] = *(v0 + 56);
  v24 = *&v72[0];
  v72[1] = v26;
  *(v73 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v73[0] = *v28;
  v67 = *(v25 + 128);
  v33 = *&v72[0];
  v34 = v27;
  v35 = v31;
  v65 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v67 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v67 - v44, v45, v40, v41);
  if (v46 >= v65)
  {
    v47 = v65;
  }

  else
  {
    v47 = v46;
  }

  v48 = v67 + v47;
  *(v66 + 184) = v67 + v47;
  v49 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v49;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v59;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 12)
  {
    v62 = *v67;
    v63 = v67[1];
    v64 = v67[2];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v67, v67 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v77[0] = *(v2 + 40);
  v77[1] = v4;
  v78[0] = *(v2 + 72);
  *(v78 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v77);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v75[0] = *v14;
  v75[1] = v15;
  v76[0] = *(v13 + 88);
  *(v76 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 7u)
    {
      v20 = *v16;
      if ((*(v20 + 60) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(7u, 1, v75);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 56);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v67 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v73[0] = *(v0 + 56);
  v24 = *&v73[0];
  v73[1] = v26;
  *(v74 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v74[0] = *v28;
  v68 = *(v25 + 128);
  v33 = *&v73[0];
  v34 = v27;
  v35 = v31;
  v66 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v68 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v68 - v44, v45, v40, v41);
  if (v46 >= v66)
  {
    v47 = v66;
  }

  else
  {
    v47 = v46;
  }

  v48 = v68 + v47;
  *(v67 + 184) = v68 + v47;
  v49 = *(v25 + 16);
  v71[0] = *v25;
  v71[1] = v49;
  v72[0] = *(v25 + 32);
  *(v72 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v59;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 16)
  {
    v62 = *v68;
    v63 = v68[1];
    v64 = v68[2];
    v65 = v68[3];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v68, v68 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x51u)
    {
      v20 = *v16;
      if ((*(v20 + 652) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x51u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 648);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x30u)
    {
      v20 = *v16;
      if ((*(v20 + 388) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x30u, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_68;
  }

  v22 = v21 + 24 * *(v20 + 384);
  v23 = *(*v22 + 64);
  if (*(*v22 + 64))
  {
    v65 = v0;
    v25 = v0 + 56;
    v26 = *(v0 + 72);
    v71[0] = *(v0 + 56);
    v24 = *&v71[0];
    v71[1] = v26;
    *(v72 + 9) = *(v0 + 97);
    v28 = (v0 + 88);
    v27 = *(v0 + 88);
    v30 = (v25 + 44);
    v29 = *(v25 + 44);
    v32 = (v25 + 48);
    v31 = *(v25 + 48);
    v72[0] = *v28;
    v66 = *(v25 + 128);
    v33 = *&v71[0];
    v34 = v27;
    v35 = v31;
    v64 = v23;
    if (v1 >= v29)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v37 = (v34 + v8);
      if ((v37[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_20:
        if (!v35)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
        }

        v33 = *v35;
        v34 = v35[4];
        v36 = *(v35 + 11);
        v35 = v35[6];
      }

      while (v1 >= v36);
    }

    if (!v33)
    {
      goto LABEL_69;
    }

    v40 = v33 + 24 * *v37;
    v41 = *(*v40 + 136);
    v42 = *(*v40 + 144);
    if (v1 >= v29)
    {
      goto LABEL_28;
    }

    while ((*(v27 + v8 + 4) & 1) != 0)
    {
      do
      {
LABEL_28:
        if (!v31)
        {
          v44 = *(*v40 + 136);
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
        }

        v24 = *v31;
        v27 = v31[4];
        v43 = *(v31 + 11);
        v31 = v31[6];
      }

      while (v1 >= v43);
    }

    if (!v24)
    {
      goto LABEL_70;
    }

    v45 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
    if (v45)
    {
      if (v41)
      {
        v46 = v42 - v41;
      }

      else
      {
        v46 = 0;
      }

      if (v46 >= &v66[-v45])
      {
        v47 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v45], v46, v41, v42);
        if (v47 >= v64)
        {
          v48 = v64;
        }

        else
        {
          v48 = v47;
        }

        v49 = &v66[v48];
        *(v65 + 184) = &v66[v48];
        v50 = *(v25 + 16);
        v69[0] = *v25;
        v69[1] = v50;
        v70[0] = *(v25 + 32);
        *(v70 + 9) = *(v25 + 41);
        v51 = (v25 + 48);
        v52 = (v25 + 44);
        v53 = v28;
        for (i = v25; ; i = v55)
        {
          v55 = *v51;
          if (v1 < *v52)
          {
            v56 = (*v53 + v8);
            if ((v56[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v55)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
          }

          v53 = (v55 + 32);
          v52 = (v55 + 44);
          v51 = (v55 + 48);
        }

        if (*i)
        {
          v57 = *i + 24 * *v56;
          v58 = *(*v57 + 136);
          if (v58)
          {
            if (v49 >= v58 && v49 < *(*v57 + 144))
            {
              goto LABEL_60;
            }
          }

          v60 = *(v25 + 16);
          v67[0] = *v25;
          v67[1] = v60;
          v68[0] = *(v25 + 32);
          *(v68 + 9) = *(v25 + 41);
          while (1)
          {
            v61 = *v32;
            if (v1 < *v30)
            {
              v62 = (*v28 + v8);
              if ((v62[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v61)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
            }

            v28 = (v61 + 32);
            v30 = (v61 + 44);
            v32 = (v61 + 48);
            v25 = v61;
          }

          if (*v25)
          {
            *(*(*v25 + 24 * *v62) + 41) = 1;
LABEL_60:
            if (v48 >= 1)
            {
              v63 = *v66;
              return;
            }

            v38 = v66;
            v39 = &v66[v48];
            goto LABEL_63;
          }

LABEL_72:
          __break(1u);
          return;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_67;
  }

  v38 = *(v0 + 184);
  v39 = v38;
LABEL_63:
  specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v38, v39);
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0xAu)
    {
      v20 = *v16;
      if ((*(v20 + 84) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0xAu, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 80);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v66 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v66 - v43, v44, v39, v40);
  if (v45 >= v64)
  {
    v46 = v64;
  }

  else
  {
    v46 = v45;
  }

  v47 = v66 + v46;
  *(v65 + 184) = v66 + v46;
  v48 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v48;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v58;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 24)
  {
    v61 = *v66;
    v62 = v66[1];
    v63 = v66[2];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, v66 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x19u)
    {
      v20 = *v16;
      if ((*(v20 + 204) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x19u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 200);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Au)
    {
      v20 = *v16;
      if ((*(v20 + 468) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Au, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_68;
  }

  v22 = v21 + 24 * *(v20 + 464);
  v23 = *(*v22 + 64);
  if (*(*v22 + 64))
  {
    v65 = v0;
    v25 = v0 + 56;
    v26 = *(v0 + 72);
    v71[0] = *(v0 + 56);
    v24 = *&v71[0];
    v71[1] = v26;
    *(v72 + 9) = *(v0 + 97);
    v28 = (v0 + 88);
    v27 = *(v0 + 88);
    v30 = (v25 + 44);
    v29 = *(v25 + 44);
    v32 = (v25 + 48);
    v31 = *(v25 + 48);
    v72[0] = *v28;
    v66 = *(v25 + 128);
    v33 = *&v71[0];
    v34 = v27;
    v35 = v31;
    v64 = v23;
    if (v1 >= v29)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v37 = (v34 + v8);
      if ((v37[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_20:
        if (!v35)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
        }

        v33 = *v35;
        v34 = v35[4];
        v36 = *(v35 + 11);
        v35 = v35[6];
      }

      while (v1 >= v36);
    }

    if (!v33)
    {
      goto LABEL_69;
    }

    v40 = v33 + 24 * *v37;
    v41 = *(*v40 + 136);
    v42 = *(*v40 + 144);
    if (v1 >= v29)
    {
      goto LABEL_28;
    }

    while ((*(v27 + v8 + 4) & 1) != 0)
    {
      do
      {
LABEL_28:
        if (!v31)
        {
          v44 = *(*v40 + 136);
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
        }

        v24 = *v31;
        v27 = v31[4];
        v43 = *(v31 + 11);
        v31 = v31[6];
      }

      while (v1 >= v43);
    }

    if (!v24)
    {
      goto LABEL_70;
    }

    v45 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
    if (v45)
    {
      if (v41)
      {
        v46 = v42 - v41;
      }

      else
      {
        v46 = 0;
      }

      if (v46 >= &v66[-v45])
      {
        v47 = specialized RandomAccessCollection<>.distance(from:to:)(&v66[-v45], v46, v41, v42);
        if (v47 >= v64)
        {
          v48 = v64;
        }

        else
        {
          v48 = v47;
        }

        v49 = &v66[v48];
        *(v65 + 184) = &v66[v48];
        v50 = *(v25 + 16);
        v69[0] = *v25;
        v69[1] = v50;
        v70[0] = *(v25 + 32);
        *(v70 + 9) = *(v25 + 41);
        v51 = (v25 + 48);
        v52 = (v25 + 44);
        v53 = v28;
        for (i = v25; ; i = v55)
        {
          v55 = *v51;
          if (v1 < *v52)
          {
            v56 = (*v53 + v8);
            if ((v56[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v55)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
          }

          v53 = (v55 + 32);
          v52 = (v55 + 44);
          v51 = (v55 + 48);
        }

        if (*i)
        {
          v57 = *i + 24 * *v56;
          v58 = *(*v57 + 136);
          if (v58)
          {
            if (v49 >= v58 && v49 < *(*v57 + 144))
            {
              goto LABEL_60;
            }
          }

          v60 = *(v25 + 16);
          v67[0] = *v25;
          v67[1] = v60;
          v68[0] = *(v25 + 32);
          *(v68 + 9) = *(v25 + 41);
          while (1)
          {
            v61 = *v32;
            if (v1 < *v30)
            {
              v62 = (*v28 + v8);
              if ((v62[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v61)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
            }

            v28 = (v61 + 32);
            v30 = (v61 + 44);
            v32 = (v61 + 48);
            v25 = v61;
          }

          if (*v25)
          {
            *(*(*v25 + 24 * *v62) + 41) = 1;
LABEL_60:
            if (v48 >= 1)
            {
              v63 = *v66;
              return;
            }

            v38 = v66;
            v39 = &v66[v48];
            goto LABEL_63;
          }

LABEL_72:
          __break(1u);
          return;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_67;
  }

  v38 = *(v0 + 184);
  v39 = v38;
LABEL_63:
  specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v38, v39);
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v78[0] = *(v2 + 40);
  v78[1] = v4;
  v79[0] = *(v2 + 72);
  *(v79 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v78);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v76[0] = *v14;
  v76[1] = v15;
  v77[0] = *(v13 + 88);
  *(v77 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x22u)
    {
      v20 = *v16;
      if ((*(v20 + 276) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x22u, 1, v76);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 272);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v68 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v74[0] = *(v0 + 56);
  v24 = *&v74[0];
  v74[1] = v26;
  *(v75 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v75[0] = *v28;
  v69 = *(v25 + 128);
  v33 = *&v74[0];
  v34 = v27;
  v35 = v31;
  v67 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v69 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v69 - v43, v44, v39, v40);
  if (v45 >= v67)
  {
    v46 = v67;
  }

  else
  {
    v46 = v45;
  }

  v47 = v69 + v46;
  *(v68 + 184) = v69 + v46;
  v48 = *(v25 + 16);
  v72[0] = *v25;
  v72[1] = v48;
  v73[0] = *(v25 + 32);
  *(v73 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v58;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 32)
  {
    v61 = *v69;
    v62 = v69[1];
    v63 = *(v69 + 4);
    v64 = *(v69 + 5);
    v65 = *(v69 + 6);
    v66 = *(v69 + 7);
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v69, v69 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 2u)
    {
      v20 = *v16;
      if ((*(v20 + 20) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(2u, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 16);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v78[0] = *(v2 + 40);
  v78[1] = v4;
  v79[0] = *(v2 + 72);
  *(v79 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v78);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_65;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v76[0] = *v14;
  v76[1] = v15;
  v77[0] = *(v13 + 88);
  *(v77 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 5u)
    {
      v20 = *v16;
      if ((*(v20 + 44) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(5u, 1, v76);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21 + 24 * *(v20 + 40);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    v38 = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184)) >> 32;
    return;
  }

  v68 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v74[0] = *(v0 + 56);
  v24 = *&v74[0];
  v74[1] = v26;
  *(v75 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v75[0] = *v28;
  v69 = *(v25 + 128);
  v33 = *&v74[0];
  v34 = v27;
  v35 = v31;
  v67 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_67;
  }

  v39 = v33 + 24 * *v36;
  v40 = *(*v39 + 136);
  v41 = *(*v39 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v43 = *(*v39 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
      }

      v24 = *v31;
      v27 = v31[4];
      v42 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v42);
  }

  if (!v24)
  {
    goto LABEL_68;
  }

  v44 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v44)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v40)
  {
    v45 = v41 - v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v69 - v44)
  {
    __break(1u);
    goto LABEL_64;
  }

  v46 = specialized RandomAccessCollection<>.distance(from:to:)(v69 - v44, v45, v40, v41);
  if (v46 >= v67)
  {
    v47 = v67;
  }

  else
  {
    v47 = v46;
  }

  v48 = v69 + v47;
  *(v68 + 184) = v69 + v47;
  v49 = *(v25 + 16);
  v72[0] = *v25;
  v72[1] = v49;
  v73[0] = *(v25 + 32);
  *(v73 + 9) = *(v25 + 41);
  v50 = (v25 + 48);
  v51 = (v25 + 44);
  v52 = v28;
  for (i = v25; ; i = v54)
  {
    v54 = *v50;
    if (v1 < *v51)
    {
      v55 = (*v52 + v8);
      if ((v55[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v54)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v52 = (v54 + 32);
    v51 = (v54 + 44);
    v50 = (v54 + 48);
  }

  if (!*i)
  {
    goto LABEL_69;
  }

  v56 = *i + 24 * *v55;
  v57 = *(*v56 + 136);
  if (v57)
  {
    if (v48 >= v57 && v48 < *(*v56 + 144))
    {
      goto LABEL_60;
    }
  }

  v59 = *(v25 + 16);
  v70[0] = *v25;
  v70[1] = v59;
  v71[0] = *(v25 + 32);
  *(v71 + 9) = *(v25 + 41);
  while (1)
  {
    v60 = *v32;
    if (v1 < *v30)
    {
      v61 = (*v28 + v8);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
    }

    v28 = (v60 + 32);
    v30 = (v60 + 44);
    v32 = (v60 + 48);
    v25 = v60;
  }

  if (!*v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v61) + 41) = 1;
LABEL_60:
  if (v47 >= 20)
  {
    v62 = *v69;
    v63 = v69[1];
    v64 = v69[2];
    v65 = v69[3];
    v66 = v69[4];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v69, v69 + v47);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v75[0] = *(v2 + 40);
  v75[1] = v4;
  v76[0] = *(v2 + 72);
  *(v76 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v75);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v73[0] = *v14;
  v73[1] = v15;
  v74[0] = *(v13 + 88);
  *(v74 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0xBu)
    {
      v20 = *v16;
      if ((*(v20 + 92) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0xBu, 1, v73);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 88);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v65 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v71[0] = *(v0 + 56);
  v24 = *&v71[0];
  v71[1] = v26;
  *(v72 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v72[0] = *v28;
  v66 = *(v25 + 128);
  v33 = *&v71[0];
  v34 = v27;
  v35 = v31;
  v64 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v71);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v66 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v66 - v43, v44, v39, v40);
  if (v45 >= v64)
  {
    v46 = v64;
  }

  else
  {
    v46 = v45;
  }

  v47 = v66 + v46;
  *(v65 + 184) = v66 + v46;
  v48 = *(v25 + 16);
  v69[0] = *v25;
  v69[1] = v48;
  v70[0] = *(v25 + 32);
  *(v70 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v58;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 24)
  {
    v61 = *v66;
    v62 = v66[1];
    v63 = v66[2];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v66, v66 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v73[0] = *(v2 + 40);
  v73[1] = v4;
  v74[0] = *(v2 + 72);
  *(v74 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v73);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v71[0] = *v14;
  v71[1] = v15;
  v72[0] = *(v13 + 88);
  *(v72 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x1Au)
    {
      v20 = *v16;
      if ((*(v20 + 212) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x1Au, 1, v71);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 208);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v63 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v69[0] = *(v0 + 56);
  v24 = *&v69[0];
  v69[1] = v26;
  *(v70 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v70[0] = *v28;
  v64 = *(v25 + 128);
  v33 = *&v69[0];
  v34 = v27;
  v35 = v31;
  v62 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v69);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v64 - v43)
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v64 - v43, v44, v39, v40);
  if (v45 >= v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = v45;
  }

  v47 = v64 + v46;
  *(v63 + 184) = v64 + v46;
  v48 = *(v25 + 16);
  v67[0] = *v25;
  v67[1] = v48;
  v68[0] = *(v25 + 32);
  *(v68 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v67);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v58;
  v66[0] = *(v25 + 32);
  *(v66 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v65);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 8)
  {
    v61 = *v64;
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v64, v64 + v46);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v74[0] = *(v2 + 40);
  v74[1] = v4;
  v75[0] = *(v2 + 72);
  *(v75 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v74);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v72[0] = *v14;
  v72[1] = v15;
  v73[0] = *(v13 + 88);
  *(v73 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x36u)
    {
      v20 = *v16;
      if ((*(v20 + 436) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x36u, 1, v72);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_67;
  }

  v22 = v21 + 24 * *(v20 + 432);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v0 + 184), *(v0 + 184));
    return;
  }

  v64 = v0;
  v25 = v0 + 56;
  v26 = *(v0 + 72);
  v70[0] = *(v0 + 56);
  v24 = *&v70[0];
  v70[1] = v26;
  *(v71 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v25 + 44);
  v29 = *(v25 + 44);
  v32 = (v25 + 48);
  v31 = *(v25 + 48);
  v71[0] = *v28;
  v65 = *(v25 + 128);
  v33 = *&v70[0];
  v34 = v27;
  v35 = v31;
  v63 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_68;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_26;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v70);
      }

      v24 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v24)
  {
    goto LABEL_69;
  }

  v43 = *(*(v24 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < &v65[-v43])
  {
    __break(1u);
    goto LABEL_65;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(&v65[-v43], v44, v39, v40);
  if (v45 >= v63)
  {
    v46 = v63;
  }

  else
  {
    v46 = v45;
  }

  v47 = &v65[v46];
  *(v64 + 184) = &v65[v46];
  v48 = *(v25 + 16);
  v68[0] = *v25;
  v68[1] = v48;
  v69[0] = *(v25 + 32);
  *(v69 + 9) = *(v25 + 41);
  v49 = (v25 + 48);
  v50 = (v25 + 44);
  v51 = v28;
  for (i = v25; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (v56)
  {
    if (v47 >= v56 && v47 < *(*v55 + 144))
    {
      goto LABEL_60;
    }
  }

  v58 = *(v25 + 16);
  v66[0] = *v25;
  v66[1] = v58;
  v67[0] = *(v25 + 32);
  *(v67 + 9) = *(v25 + 41);
  while (1)
  {
    v59 = *v32;
    if (v1 < *v30)
    {
      v60 = (*v28 + v8);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v28 = (v59 + 32);
    v30 = (v59 + 44);
    v32 = (v59 + 48);
    v25 = v59;
  }

  if (!*v25)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(*(*v25 + 24 * *v60) + 41) = 1;
LABEL_60:
  if (v46 >= 9)
  {
    v61 = *v65;
    v62 = v65[8];
  }

  else
  {
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v65, &v65[v46]);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v72[0] = *(v2 + 40);
  v72[1] = v4;
  v73[0] = *(v2 + 72);
  *(v73 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v70[0] = *v14;
  v70[1] = v15;
  v71[0] = *(v13 + 88);
  *(v71 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x46u)
    {
      v20 = *v16;
      if ((*(v20 + 564) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x46u, 1, v70);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21 + 24 * *(v20 + 560);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    return;
  }

  v62 = v0;
  v24 = v0 + 56;
  v26 = *(v0 + 72);
  v68[0] = *(v0 + 56);
  v25 = *&v68[0];
  v68[1] = v26;
  *(v69 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v24 + 44);
  v29 = *(v24 + 44);
  v32 = (v24 + 48);
  v31 = *(v24 + 48);
  v69[0] = *v28;
  v63 = *(v24 + 128);
  v33 = *&v68[0];
  v34 = v27;
  v35 = v31;
  v61 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_25;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_25:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v25 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v25)
  {
    goto LABEL_64;
  }

  v43 = *(*(v25 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v63 - v43)
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v63 - v43, v44, v39, v40);
  v46 = v61;
  if (v45 < v61)
  {
    v46 = v45;
  }

  v47 = v63 + v46;
  *(v62 + 184) = v63 + v46;
  v48 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v48;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  v49 = (v24 + 48);
  v50 = (v24 + 44);
  v51 = v28;
  for (i = v24; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_65;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (!v56 || (v47 >= v56 ? (v57 = v47 >= *(*v55 + 144)) : (v57 = 1), v57))
  {
    v58 = *(v24 + 16);
    v64[0] = *v24;
    v64[1] = v58;
    v65[0] = *(v24 + 32);
    *(v65 + 9) = *(v24 + 41);
    while (1)
    {
      v59 = *v32;
      if (v1 < *v30)
      {
        v60 = (*v28 + v8);
        if ((v60[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v64);
      }

      v28 = (v59 + 32);
      v30 = (v59 + 44);
      v32 = (v59 + 48);
      v24 = v59;
    }

    if (*v24)
    {
      *(*(*v24 + 24 * *v60) + 41) = 1;
      return;
    }

LABEL_66:
    __break(1u);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v72[0] = *(v2 + 40);
  v72[1] = v4;
  v73[0] = *(v2 + 72);
  *(v73 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v70[0] = *v14;
  v70[1] = v15;
  v71[0] = *(v13 + 88);
  *(v71 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x32u)
    {
      v20 = *v16;
      if ((*(v20 + 404) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x32u, 1, v70);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21 + 24 * *(v20 + 400);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    return;
  }

  v62 = v0;
  v24 = v0 + 56;
  v26 = *(v0 + 72);
  v68[0] = *(v0 + 56);
  v25 = *&v68[0];
  v68[1] = v26;
  *(v69 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v24 + 44);
  v29 = *(v24 + 44);
  v32 = (v24 + 48);
  v31 = *(v24 + 48);
  v69[0] = *v28;
  v63 = *(v24 + 128);
  v33 = *&v68[0];
  v34 = v27;
  v35 = v31;
  v61 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_25;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_25:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v25 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v25)
  {
    goto LABEL_64;
  }

  v43 = *(*(v25 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v63 - v43)
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v63 - v43, v44, v39, v40);
  v46 = v61;
  if (v45 < v61)
  {
    v46 = v45;
  }

  v47 = v63 + v46;
  *(v62 + 184) = v63 + v46;
  v48 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v48;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  v49 = (v24 + 48);
  v50 = (v24 + 44);
  v51 = v28;
  for (i = v24; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_65;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (!v56 || (v47 >= v56 ? (v57 = v47 >= *(*v55 + 144)) : (v57 = 1), v57))
  {
    v58 = *(v24 + 16);
    v64[0] = *v24;
    v64[1] = v58;
    v65[0] = *(v24 + 32);
    *(v65 + 9) = *(v24 + 41);
    while (1)
    {
      v59 = *v32;
      if (v1 < *v30)
      {
        v60 = (*v28 + v8);
        if ((v60[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v64);
      }

      v28 = (v59 + 32);
      v30 = (v59 + 44);
      v32 = (v59 + 48);
      v24 = v59;
    }

    if (*v24)
    {
      *(*(*v24 + 24 * *v60) + 41) = 1;
      return;
    }

LABEL_66:
    __break(1u);
  }
}

{
  v1 = *(v0 + 116);
  v2 = *(v0 + 176);
  v3 = (v2 + 40);
  v4 = *(v2 + 56);
  v72[0] = *(v2 + 40);
  v72[1] = v4;
  v73[0] = *(v2 + 72);
  *(v73 + 9) = *(v2 + 81);
  v5 = (v2 + 72);
  v6 = (v2 + 84);
  v7 = (v2 + 88);
  v8 = 8 * v1;
  while (1)
  {
    v9 = *v7;
    if (v1 < *v6)
    {
      v10 = (*v5 + v8);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v72);
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = (v11 + 24 * *v10);
  v13 = *v12;
  v14 = (*v12 + 56);
  v15 = *(*v12 + 72);
  v70[0] = *v14;
  v70[1] = v15;
  v71[0] = *(v13 + 88);
  *(v71 + 9) = *(v13 + 97);
  v16 = (v13 + 72);
  v17 = (v13 + 84);
  v18 = (v13 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17 > 0x3Cu)
    {
      v20 = *v16;
      if ((*(v20 + 484) & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x3Cu, 1, v70);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v14 = v19;
  }

  v21 = *v14;
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21 + 24 * *(v20 + 480);
  v23 = *(*v22 + 64);
  if (!*(*v22 + 64))
  {
    return;
  }

  v62 = v0;
  v24 = v0 + 56;
  v26 = *(v0 + 72);
  v68[0] = *(v0 + 56);
  v25 = *&v68[0];
  v68[1] = v26;
  *(v69 + 9) = *(v0 + 97);
  v28 = (v0 + 88);
  v27 = *(v0 + 88);
  v30 = (v24 + 44);
  v29 = *(v24 + 44);
  v32 = (v24 + 48);
  v31 = *(v24 + 48);
  v69[0] = *v28;
  v63 = *(v24 + 128);
  v33 = *&v68[0];
  v34 = v27;
  v35 = v31;
  v61 = v23;
  if (v1 >= v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = (v34 + v8);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v1 >= v37);
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v38 = v33 + 24 * *v36;
  v39 = *(*v38 + 136);
  v40 = *(*v38 + 144);
  if (v1 >= v29)
  {
    goto LABEL_25;
  }

  while ((*(v27 + v8 + 4) & 1) != 0)
  {
    do
    {
LABEL_25:
      if (!v31)
      {
        v42 = *(*v38 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v68);
      }

      v25 = *v31;
      v27 = v31[4];
      v41 = *(v31 + 11);
      v31 = v31[6];
    }

    while (v1 >= v41);
  }

  if (!v25)
  {
    goto LABEL_64;
  }

  v43 = *(*(v25 + 24 * *(v27 + 8 * v1)) + 136);
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39)
  {
    v44 = v40 - v39;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v63 - v43)
  {
    __break(1u);
    goto LABEL_60;
  }

  v45 = specialized RandomAccessCollection<>.distance(from:to:)(v63 - v43, v44, v39, v40);
  v46 = v61;
  if (v45 < v61)
  {
    v46 = v45;
  }

  v47 = v63 + v46;
  *(v62 + 184) = v63 + v46;
  v48 = *(v24 + 16);
  v66[0] = *v24;
  v66[1] = v48;
  v67[0] = *(v24 + 32);
  *(v67 + 9) = *(v24 + 41);
  v49 = (v24 + 48);
  v50 = (v24 + 44);
  v51 = v28;
  for (i = v24; ; i = v53)
  {
    v53 = *v49;
    if (v1 < *v50)
    {
      v54 = (*v51 + v8);
      if ((v54[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v53)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v66);
    }

    v51 = (v53 + 32);
    v50 = (v53 + 44);
    v49 = (v53 + 48);
  }

  if (!*i)
  {
    goto LABEL_65;
  }

  v55 = *i + 24 * *v54;
  v56 = *(*v55 + 136);
  if (!v56 || (v47 >= v56 ? (v57 = v47 >= *(*v55 + 144)) : (v57 = 1), v57))
  {
    v58 = *(v24 + 16);
    v64[0] = *v24;
    v64[1] = v58;
    v65[0] = *(v24 + 32);
    *(v65 + 9) = *(v24 + 41);
    while (1)
    {
      v59 = *v32;
      if (v1 < *v30)
      {
        v60 = (*v28 + v8);
        if ((v60[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v1, 0, v64);
      }

      v28 = (v59 + 32);
      v30 = (v59 + 44);
      v32 = (v59 + 48);
      v24 = v59;
    }

    if (*v24)
    {
      *(*(*v24 + 24 * *v60) + 41) = 1;
      return;
    }

LABEL_66:
    __break(1u);
  }
}