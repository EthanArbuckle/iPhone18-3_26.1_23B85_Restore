uint64_t sub_29B275AB0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_2A1787820 == -1)
  {
    if (qword_2A1787828)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_29B2D1DD8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2A1787828)
    {
      return _availability_version_check();
    }
  }

  if (qword_2A1787818 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_29B2D1DF0();
    a3 = v10;
    a4 = v9;
    v8 = dword_2A1787808 < v11;
    if (dword_2A1787808 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2A178780C > a3)
      {
        return 1;
      }

      if (dword_2A178780C >= a3)
      {
        return dword_2A1787810 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_2A1787808 < a2;
  if (dword_2A1787808 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_29B275C44(uint64_t result)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = qword_2A1787828;
  if (qword_2A1787828)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x2A1C7C4E8])
    {
      v1 = MEMORY[0x2A1C7C4E8];
      qword_2A1787828 = MEMORY[0x2A1C7C4E8];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x29C2C4BE0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_2A1787808, &dword_2A178780C, &dword_2A1787810);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t CxxConvertibleToCollection.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v22 = &v21 - ((*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v32 = &v21 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v32;
  v10 = v32;
  (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v36 = v9;
  v31 = v12;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v13 = *(v8 + 8);
    v13(v36, v7);
    return (v13)(v10, v7);
  }

  else
  {
    v14 = *(AssociatedConformanceWitness + 24);
    v26 = (v30 + 16);
    v27 = v14;
    v28 = AssociatedConformanceWitness + 24;
    v29 = (v30 + 8);
    v30 = v8 + 8;
    v24 = (v8 + 32);
    v25 = AssociatedConformanceWitness + 32;
    v16 = v22;
    v15 = AssociatedTypeWitness;
    while (1)
    {
      v17 = v27(v35, v7, AssociatedConformanceWitness);
      (*v26)(v16);
      v17(v35, 0);
      v33(v16);
      if (v4)
      {
        break;
      }

      (*v29)(v16, v15);
      v18 = v32;
      (*(AssociatedConformanceWitness + 32))(v7, AssociatedConformanceWitness);
      v13 = *v30;
      (*v30)(v10, v7);
      (*v24)(v10, v18, v7);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v13(v36, v7);
        return (v13)(v10, v7);
      }
    }

    (*v29)(v16, v15);
    v20 = *v30;
    (*v30)(v36, v7);
    return (v20)(v10, v7);
  }
}

uint64_t CxxConvertibleToCollection<>.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v8 = &v19 - ((*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v19 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = &v19 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v21 = *(v12 - 8);
  v13 = &v19 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v11, v27, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v13;
  v15 = v20;
  v27 = v12;
  v23 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v22 = *(v15 + 48);
  if (v22(v9, 1, AssociatedTypeWitness) != 1)
  {
    v16 = *(v15 + 32);
    v17 = (v15 + 8);
    while (1)
    {
      v16(v8, v9, AssociatedTypeWitness);
      v24(v8);
      if (v5)
      {
        break;
      }

      (*v17)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v22(v9, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v21 + 8))(v26, v27);
      }
    }

    (*v17)(v8, AssociatedTypeWitness);
  }

  return (*(v21 + 8))(v26, v27);
}

uint64_t sub_29B2766CC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v4 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0), a1, AssociatedTypeWitness);
  return dispatch thunk of RangeReplaceableCollection.append(_:)();
}

uint64_t sub_29B276810@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, void (*a6)(char *)@<X6>, uint64_t a7@<X8>)
{
  a5(a1, a3);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a7;
  return CxxConvertibleToCollection.forEach(_:)(a6, v14, a2, a4);
}

uint64_t sub_29B2768A0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = v6 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  dispatch thunk of SetAlgebra.insert(_:)();
  return (*(v3 + 8))(v4, AssociatedTypeWitness);
}

uint64_t CxxDictionary.init<>(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = &v45 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(AssociatedTypeWitness - 8);
  v52 = &v45 - ((*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v49 = *(v9 - 8);
  v66 = &v45 - ((*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v9;
  v51 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = type metadata accessor for Optional();
  v69 = *(v64 - 8);
  v11 = &v45 - ((*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v11;
  v12 = *(a3 + 88);
  v56 = a4;
  v57 = a2;
  v58 = a3;
  result = v12(a2, a3);
  v14 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v46 = 0;
    v15 = 0;
    v16 = 0;
    v14 = result | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v18 = *(a1 + 64);
    v46 = a1 + 64;
    v15 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & v18;
  }

  v21 = 0;
  v68 = (v49 + 32);
  v22 = (v50 + 32);
  v61 = TupleTypeMetadata2 - 8;
  v45 = v15;
  v23 = (v15 + 64) >> 6;
  v48 = v49 + 16;
  v47 = v50 + 16;
  v60 = (v69 + 32);
  v53 = v11;
  v54 = (v50 + 56);
  v65 = v14;
  v24 = v51;
  v25 = v66;
  v26 = v67;
  while (1)
  {
    v62 = v16;
    v59 = v21;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v36 = v21;
      v35 = v52;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v28 = v36;
      v69 = v16;
      goto LABEL_20;
    }

    v38 = 1;
    v44 = v16;
    v30 = v21;
    v69 = v44;
    v11 = v53;
LABEL_21:
    v39 = *(TupleTypeMetadata2 - 8);
    (*(v39 + 56))(v11, v38, 1, TupleTypeMetadata2);
    v40 = v63;
    (*v60)(v63, v11, v64);
    if ((*(v39 + 48))(v40, 1, TupleTypeMetadata2) == 1)
    {
      return sub_29B277038();
    }

    v41 = *(TupleTypeMetadata2 + 48);
    v26 = v67;
    v25 = v66;
    (*v68)(v66, v40, v67);
    v42 = &v40[v41];
    v43 = v55;
    (*v22)(v55, v42, v24);
    (*v54)(v43, 0, 1, v24);
    result = CxxDictionary.subscript.setter(v43, v25, v57, v58);
    v21 = v30;
    v16 = v69;
    v14 = v65;
  }

  v27 = v16;
  v28 = v21;
  if (v16)
  {
LABEL_17:
    v69 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v28 << 6);
    v33 = v14;
    (*(v49 + 16))(v25, *(v14 + 48) + *(v49 + 72) * v32, v26);
    v34 = *(v33 + 56);
    v24 = v51;
    v35 = v52;
    (*(v50 + 16))(v52, v34 + *(v50 + 72) * v32, v51);
LABEL_20:
    v37 = *(TupleTypeMetadata2 + 48);
    v11 = v53;
    (*v68)(v53);
    (*v22)(&v11[v37], v35, v24);
    v38 = 0;
    v30 = v28;
    goto LABEL_21;
  }

  if (v23 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v31 = v21;
  while (1)
  {
    v28 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v69 = 0;
      v38 = 1;
      goto LABEL_21;
    }

    v27 = *(v46 + 8 * v28);
    ++v31;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 1);
  v38 = &v31 - ((*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v35 = *(v7 - 8);
  v36 = v7;
  v34 = &v31 - ((*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_getAssociatedTypeWitness();
  v33 = *(v41 - 8);
  v32 = &v31 - ((*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v40 = *(v8 - 8);
  v9 = &v31 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v42 = &v31 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v42;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v14 = type metadata accessor for Optional();
    (*(*(v14 - 8) + 8))(a1, v14);
    v15 = v38;
    v16 = v43;
    (*(a4 + 120))(v43, a3, a4);
    v17 = swift_getAssociatedTypeWitness();
    (*(*(v17 - 8) + 8))(v16, v17);
    return (*(v37 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(v12 + 32);
    v38 = v10;
    AssociatedTypeWitness = v19;
    v19(v13, a1, v11);
    (*(a4 + 104))(v43, a3, a4);
    (*(a4 + 152))(a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = *(v40 + 8);
    (v40)(v9, v8);
    if (v21)
    {
      (v40)(v9, v8);
      v22 = v42;
      AssociatedTypeWitness(v42, v13, v11);
      v23 = v41;
      v24 = swift_getAssociatedConformanceWitness();
      v25 = v32;
      (*(v24 + 24))(v43, v22, v23, v24);
      v26 = v34;
      (*(a4 + 112))(v25, a3, a4);
      (*(v35 + 8))(v26, v36);
      return (*(v33 + 8))(v25, v23);
    }

    else
    {
      v27 = swift_getAssociatedTypeWitness();
      (*(*(v27 - 8) + 8))(v43, v27);
      AssociatedTypeWitness(v42, v13, v11);
      v28 = (*(AssociatedConformanceWitness + 24))(v44, v8, AssociatedConformanceWitness);
      v29 = v41;
      v30 = swift_getAssociatedConformanceWitness();
      (*(v30 + 64))(v42, v29, v30);
      v28(v44, 0);
      return (v40)(v9, v8);
    }
  }
}

uint64_t CxxDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = &v24 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v32 = &v24 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v25 = *(v12 + 64);
  v13 = &v24 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 88);
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v14(a2, a3);
  if (MEMORY[0x29C2B98C0](a1, TupleTypeMetadata2))
  {
    v15 = 0;
    v16 = *(TupleTypeMetadata2 + 48);
    v29 = AssociatedTypeWitness;
    v30 = (v12 + 16);
    v27 = (v10 + 32);
    v28 = v16;
    v26 = AssociatedTypeWitness - 8;
    v17 = v31;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v13, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, TupleTypeMetadata2);
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        (*v30)(v13, &v37, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v20 = v32;
      (*v27)(v32, v13, v33);
      v21 = v29;
      v22 = *(v29 - 8);
      (*(v22 + 32))(v17, &v13[v28], v29);
      (*(v22 + 56))(v17, 0, 1, v21);
      CxxDictionary.subscript.setter(v17, v20, v35, v36);
      ++v15;
      if (v19 == MEMORY[0x29C2B98C0](a1, TupleTypeMetadata2))
      {
      }
    }
  }
}

uint64_t CxxDictionary.init<A>(grouping:by:)@<X0>(void (**a1)(char *, void *)@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v81 = a7;
  v74 = a2;
  v75 = a6;
  v73 = a3;
  v80 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = &v48 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = AssociatedTypeWitness;
  v64 = *(AssociatedTypeWitness - 8);
  v57 = &v48 - ((*(v64 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_getAssociatedTypeWitness();
  v65 = *(v59 - 1);
  v71 = &v48 - ((*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v71;
  v84 = a4;
  v11 = a5;
  v70 = swift_getAssociatedTypeWitness();
  v53 = *(v70 - 8);
  v56 = &v48 - ((*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v56;
  v13 = swift_getAssociatedTypeWitness();
  v79 = *(v13 - 8);
  v83 = &v48 - ((*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = &v48 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v49 = *(v14 - 8);
  v15 = &v48 - ((*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 88))(v84, v11);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = v15;
  v77 = v14;
  v17 = v78;
  v69 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = v79;
  v19 = *(v79 + 48);
  v68 = v79 + 48;
  v67 = v19;
  if (v19(v17, 1, v13) == 1)
  {
    return (*(v49 + 8))(v76, v77);
  }

  v66 = *(v18 + 32);
  v62 = v11 + 104;
  v61 = v11 + 152;
  v80 = (v65 + 8);
  v55 = (v53 + 8);
  v60 = v75 + 64;
  v79 = v18 + 32;
  v65 = v18 + 8;
  v54 = v75 + 56;
  v53 += 32;
  v52 = (v64 + 32);
  v51 = (v64 + 56);
  v21 = v59;
  v64 = v12;
  v63 = v13;
  v50 = v10;
  while (1)
  {
    v31 = v83;
    v66(v83, v17, v13);
    v32 = v87;
    v74(v31);
    v87 = v32;
    if (v32)
    {
      break;
    }

    v33 = v84;
    (*(v11 + 104))(v12, v84, v11);
    v34 = v10;
    v35 = v71;
    (*(v11 + 152))(v33, v11);
    v36 = v12;
    v37 = swift_getAssociatedConformanceWitness();
    v38 = v34;
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v82 = *v80;
    v82(v35, v21);
    if (v39)
    {
      v82(v34, v21);
      v22 = v75;
      v23 = v57;
      v24 = v72;
      (*(v75 + 56))(v72, v75);
      v25 = v83;
      (*(v22 + 64))(v83, v24, v22);
      v26 = v63;
      (*v65)(v25, v63);
      v27 = v56;
      v28 = v36;
      v13 = v26;
      (*v53)(v56, v28, v70);
      v29 = v58;
      (*v52)(v58, v23, v24);
      (*v51)(v29, 0, 1, v24);
      CxxDictionary.subscript.setter(v29, v27, v84, v11);
      v10 = v38;
    }

    else
    {
      (*v55)(v36, v70);
      v59 = (*(v37 + 24))(v86, v21, v37);
      swift_getAssociatedTypeWitness();
      v40 = swift_getAssociatedConformanceWitness();
      v41 = v11;
      v42 = *(v40 + 72);
      v43 = swift_checkMetadataState();
      v44 = v75;
      v45 = v42(v85, v43, v40);
      v11 = v41;
      v46 = v45;
      v47 = v83;
      (*(v44 + 64))(v83, v72, v44);
      v13 = v63;
      (*v65)(v47, v63);
      v46(v85, 0);
      (v59)(v86, 0);
      v10 = v50;
      v82(v50, v21);
    }

    v17 = v78;
    dispatch thunk of IteratorProtocol.next()();
    v30 = v67(v17, 1, v13);
    v12 = v64;
    if (v30 == 1)
    {
      return (*(v49 + 8))(v76, v77);
    }
  }

  (*v65)(v83, v13);
  (*(v49 + 8))(v76, v77);
  return (*(*(v84 - 8) + 8))(v81, v84);
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v23 = &v22 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 96))(a1, a2, a3);
  (*(a3 + 144))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v9 + 8);
  v13(v10, v8);
  if (v12)
  {
    v13(v10, v8);
    v14 = 1;
    v15 = v25;
  }

  else
  {
    v16 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v17 = v23;
    v18 = AssociatedTypeWitness;
    (*(v7 + 16))(v23);
    v16(v26, 0);
    v13(v10, v8);
    v19 = swift_getAssociatedConformanceWitness();
    v15 = v25;
    (*(v19 + 56))(v18, v19);
    (*(v7 + 8))(v17, v18);
    v14 = 0;
  }

  v20 = swift_getAssociatedTypeWitness();
  return (*(*(v20 - 8) + 56))(v15, v14, 1, v20);
}

uint64_t sub_29B2787C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = &v14 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = &v14 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a3, AssociatedTypeWitness);
  (*(v9 + 16))(v10, a1, v8);
  return CxxDictionary.subscript.setter(v10, v12, v6, v7);
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  v15 = v9;
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v16 = malloc(v14);
  }

  v17 = v16;
  v11[6] = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[7] = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = v19;
  v11[8] = v19;
  v21 = *(v19 + 64);
  if (v15)
  {
    v11[9] = swift_coroFrameAlloc();
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v11[9] = malloc(*(v19 + 64));
    v22 = malloc(v21);
  }

  v11[10] = v22;
  (*(v20 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, v17);
  return sub_29B278B94;
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v24 = v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v22 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 96))(a1, a4, a5);
  (*(a5 + 144))(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v11 + 8);
  v15(v12, v10);
  if (v14)
  {
    v16 = (v15)(v12, v10);
    return v23(v16);
  }

  else
  {
    v18 = (*(AssociatedConformanceWitness + 24))(v27, v10, AssociatedConformanceWitness);
    v19 = v24;
    v20 = AssociatedTypeWitness;
    (*(v9 + 16))(v24);
    v18(v27, 0);
    v15(v12, v10);
    v21 = swift_getAssociatedConformanceWitness();
    (*(v21 + 56))(v20, v21);
    return (*(v9 + 8))(v19, v20);
  }
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x58uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a6;
  v12[2] = v6;
  *v12 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  v17 = v11;
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v18 = malloc(v16);
  }

  v19 = v18;
  v13[6] = v18;
  v20 = swift_getAssociatedTypeWitness();
  v13[7] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v13[8] = v21;
  v23 = *(v21 + 64);
  if (v17)
  {
    v13[9] = swift_coroFrameAlloc();
    v24 = swift_coroFrameAlloc();
  }

  else
  {
    v13[9] = malloc(*(v21 + 64));
    v24 = malloc(v23);
  }

  v13[10] = v24;
  (*(v22 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, a5, a6, v19);
  return sub_29B2790C4;
}

void sub_29B2790DC(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[9];
  v6 = (*a1)[10];
  if (a2)
  {
    v7 = v4[8];
    v9 = v4[5];
    v8 = v4[6];
    v10 = v4[3];
    v11 = v4[4];
    v14 = v4[7];
    v13 = v4[1];
    v12 = *v4;
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v14);
    a3(v9, v5, v12, v13);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];
    a3(v8, v6, *v4, v4[1]);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t CxxDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v54 = a1;
  v55 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v36 = &v33 - ((*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_getAssociatedTypeWitness();
  v57 = *(v53 - 8);
  v52 = &v33 - ((v57[8] + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_getAssociatedTypeWitness();
  v46 = *(v51 - 8);
  v50 = &v33 - ((*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v43 = *(v8 - 8);
  v9 = &v33 - ((*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v39 = *(v10 - 8);
  v49 = &v33 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v49;
  v12 = v49;
  v13 = a4[11];
  v38 = a5;
  v14 = a4;
  v13(a3, a4);
  a4[17](a3, a4);
  a4[18](a3, a4);
  v59 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 8);
  v56 = v11;
  v48 = v16;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v17 = *(v39 + 8);
    v17(v56, v10);
  }

  else
  {
    v18 = v14;
    v19 = v33;
    v42 = *(AssociatedConformanceWitness + 24);
    v41 = (v43 + 16);
    v44 = (v57 + 1);
    v45 = (v46 + 8);
    v46 = v43 + 8;
    v57 = v18;
    v35 = v18 + 14;
    v34 = (v47 + 8);
    v43 = AssociatedConformanceWitness + 24;
    v40 = AssociatedConformanceWitness + 32;
    v47 = v39 + 8;
    v39 += 32;
    for (i = v42(v58, v10, AssociatedConformanceWitness); ; i = v42(v58, v10, AssociatedConformanceWitness))
    {
      v22 = i;
      (*v41)(v9);
      v22(v58, 0);
      v23 = swift_getAssociatedConformanceWitness();
      v24 = v50;
      (*(v23 + 32))(v8, v23);
      v25 = *(v23 + 56);
      v26 = v23;
      v27 = v52;
      v25(v8, v26);
      v28 = v54(v24, v27);
      if (v19)
      {
        (*v44)(v27, v53);
        (*v45)(v24, v51);
        (*v46)(v9, v8);
        v31 = *v47;
        (*v47)(v56, v10);
        v31(v12, v10);
        return (*(*(v59 - 8) + 8))(v38);
      }

      v29 = v28;
      (*v44)(v27, v53);
      (*v45)(v24, v51);
      if (v29)
      {
        v30 = v36;
        v57[14](v9, v59);
        (*v34)(v30, AssociatedTypeWitness);
      }

      (*v46)(v9, v8);
      v21 = v49;
      (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
      v17 = *v47;
      (*v47)(v12, v10);
      (*v39)(v12, v21, v10);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }
    }

    v17(v56, v10);
  }

  return (v17)(v12, v10);
}

uint64_t CxxDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v9 = &v27 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v27 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  (*(a3 + 104))(a1, a2, a3);
  v14 = *(a3 + 152);
  v31 = v4;
  v14(a2, a3);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v28 = (*(v15 + 24))(v33, v10, v15);
    v19 = v29;
    v20 = v9;
    v21 = v9;
    v22 = v30;
    (*(v29 + 16))(v21);
    v28(v33, 0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v22, AssociatedConformanceWitness);
    (*(v19 + 8))(v20, v22);
    (*(a3 + 128))(v12, a2, a3);
    v17(v12, v10);
    v18 = 0;
  }

  v24 = v32;
  v17(v13, v10);
  v25 = swift_getAssociatedTypeWitness();
  return (*(*(v25 - 8) + 56))(v24, v18, 1, v25);
}

uint64_t CxxDictionary.merge<A>(_:uniquingKeysWith:)(void (**a1)(char *, uint64_t), void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a3;
  v66 = a2;
  v87 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v64 = &v54 - ((*(v86 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = swift_getAssociatedTypeWitness();
  v85 = *(v80 - 8);
  v63 = &v54 - ((*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = swift_getAssociatedTypeWitness();
  v69 = *(v78 - 8);
  v79 = &v54 - ((*(v69 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v79;
  v93 = a6;
  v9 = swift_getAssociatedTypeWitness();
  v68 = *(v9 - 8);
  v62 = &v54 - ((*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v62;
  v77 = v62;
  v92 = v62;
  v90 = a4;
  v10 = swift_getAssociatedTypeWitness();
  v88 = *(v10 - 8);
  v60 = &v54 - ((*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v60;
  v91 = v10;
  v89 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = &v54 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v54 = *(v13 - 8);
  v14 = &v54 - ((*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = v14;
  v84 = v13;
  v16 = v12;
  v76 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v17 = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 - 8);
  v75 = *(v18 + 48);
  v74 = v18 + 48;
  if (v75(v12, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v54 + 8))(v83, v84);
  }

  v20 = *(v88 + 32);
  v21 = (v68 + 32);
  v73 = v93 + 104;
  v72 = v93 + 152;
  v87 = (v69 + 8);
  v88 += 32;
  v58 = (v88 - 24);
  v59 = (v68 + 8);
  v57 = v93 + 112;
  v56 = (v86 + 8);
  v55 = (v85 + 8);
  v95 = v8;
  v22 = v91;
  v23 = v92;
  v24 = v81;
  v69 = v20;
  v68 += 32;
  v71 = TupleTypeMetadata2;
  v70 = v16;
  while (1)
  {
    v34 = *(v17 + 48);
    (v20)(v24, v16, v22);
    v86 = *v21;
    (v86)(v23, &v16[v34], v89);
    v35 = v93;
    v36 = v90;
    (*(v93 + 104))(v24, v90, v93);
    v37 = v79;
    (*(v35 + 152))(v36, v35);
    v38 = v78;
    v39 = v24;
    v85 = swift_getAssociatedConformanceWitness();
    v40 = *(v85 + 8);
    LOBYTE(v34) = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = v38;
    v42 = *v87;
    (*v87)(v37, v41);
    if ((v34 & 1) == 0)
    {
      break;
    }

    v42(v95, v41);
    v25 = v60;
    (v20)(v60, v39, v91);
    v26 = v62;
    (v86)(v62, v92, v89);
    v27 = v93;
    v28 = v90;
    v29 = v80;
    v30 = swift_getAssociatedConformanceWitness();
    v31 = v63;
    (*(v30 + 24))(v25, v26, v29, v30);
    v32 = v64;
    (*(v27 + 112))(v31, v28, v27);
    (*v56)(v32, AssociatedTypeWitness);
    (*v55)(v31, v29);
LABEL_5:
    v16 = v70;
    dispatch thunk of IteratorProtocol.next()();
    v17 = v71;
    v33 = v75(v16, 1, v71);
    v22 = v91;
    v23 = v92;
    v24 = v81;
    v20 = v69;
    v21 = v68;
    if (v33 == 1)
    {
      return (*(v54 + 8))(v83, v84);
    }
  }

  v86 = v42;
  v43 = v89;
  (*v58)(v39, v91);
  v44 = (*(v40 + 24))(v94, v41, v40);
  v45 = v80;
  v46 = swift_getAssociatedConformanceWitness();
  v47 = v61;
  (*(v46 + 56))(v45, v46);
  v44(v94, 0);
  v48 = v92;
  v49 = v82;
  v66(v47, v92);
  if (!v49)
  {
    v82 = 0;
    v50 = *v59;
    (*v59)(v47, v43);
    v50(v48, v43);
    v51 = v95;
    v52 = (*(v85 + 24))(v94, v41);
    (*(v46 + 64))(v77, v45, v46);
    v52(v94, 0);
    (v86)(v51, v41);
    goto LABEL_5;
  }

  v53 = *v59;
  (*v59)(v47, v43);
  (v86)(v95, v41);
  v53(v48, v43);
  return (*(v54 + 8))(v83, v84);
}

uint64_t CxxDictionary.merge<>(_:uniquingKeysWith:)(unint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a3;
  v88 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v86 = &v76 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = swift_getAssociatedTypeWitness();
  v9 = *(v103 - 8);
  v85 = &v76 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v120 = *(v10 - 8);
  v102 = &v76 - ((*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v102;
  v11 = swift_getAssociatedTypeWitness();
  v93 = *(v11 - 8);
  v84 = &v76 - ((*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v84;
  v121 = v84;
  v117 = v84;
  v100 = a4;
  v127 = swift_getAssociatedTypeWitness();
  v92 = *(v127 - 8);
  v101 = &v76 - ((*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v101;
  v123 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  v108 = result;
  v15 = *(result - 8);
  v107 = &v76 - ((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v107;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v77 = 0;
    v16 = 0;
    v17 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v19 = *(a1 + 64);
    v77 = a1 + 64;
    v16 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & v19;
  }

  v22 = 0;
  v124 = (v92 + 32);
  v116 = (v93 + 32);
  v109 = TupleTypeMetadata2;
  v105 = TupleTypeMetadata2 - 8;
  v76 = v16;
  v23 = (v16 + 64) >> 6;
  v91 = v92 + 16;
  v90 = v93 + 16;
  v104 = (v15 + 32);
  v97 = a5 + 104;
  v96 = a5 + 152;
  v98 = (v120 + 8);
  v81 = (v92 + 8);
  v82 = (v93 + 8);
  v80 = a5 + 112;
  v79 = (v8 + 8);
  v78 = (v9 + 8);
  v94 = v23;
  v118 = a1;
  v122 = a5;
  v95 = v12;
  v99 = v10;
  while (1)
  {
    v111 = v22;
    v112 = v17;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v34 = __CocoaDictionary.Iterator.next()();
    v30 = v123;
    v31 = v117;
    if (v34)
    {
      v35 = v12;
      v36 = v127;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v33 = v111;
      v120 = v112;
LABEL_23:
      v42 = v109;
      v43 = *(v109 + 48);
      v44 = v107;
      (*v124)(v107, v35, v36);
      v45 = v31;
      v46 = v116;
      (*v116)(&v44[v43], v45, v30);
      v47 = 0;
      v119 = v33;
      goto LABEL_27;
    }

    v47 = 1;
    v119 = v111;
    v120 = v112;
LABEL_26:
    v42 = v109;
    v44 = v107;
    v46 = v116;
LABEL_27:
    v48 = *(v42 - 8);
    (*(v48 + 56))(v44, v47, 1, v42);
    v49 = v106;
    (*v104)(v106, v44, v108);
    if ((*(v48 + 48))(v49, 1, v42) == 1)
    {
      return sub_29B277038();
    }

    v50 = *(v42 + 48);
    v51 = v101;
    v115 = *v124;
    v115(v101, v49, v127);
    v114 = *v46;
    v114(v121, &v49[v50], v30);
    v52 = v122;
    v53 = v100;
    (*(v122 + 104))(v51, v100, v122);
    v54 = v102;
    (*(v52 + 152))(v53, v52);
    v55 = v99;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = *(AssociatedConformanceWitness + 8);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = v55;
    v59 = v55;
    v60 = *v98;
    (*v98)(v54, v59);
    if (v57)
    {
      v60(v125, v58);
      v12 = v95;
      v115(v95, v51, v127);
      v24 = v117;
      v114(v117, v121, v123);
      v25 = v122;
      v26 = v103;
      v27 = swift_getAssociatedConformanceWitness();
      v28 = v85;
      (*(v27 + 24))(v12, v24, v26, v27);
      v29 = v86;
      (*(v25 + 112))(v28, v53, v25);
      (*v79)(v29, AssociatedTypeWitness);
      result = (*v78)(v28, v26);
      v22 = v119;
      v17 = v120;
      a1 = v118;
    }

    else
    {
      v115 = v60;
      (*v81)(v51, v127);
      v61 = (*(v56 + 24))(v126, v58, v56);
      v62 = v103;
      v63 = swift_getAssociatedConformanceWitness();
      v64 = v84;
      (*(v63 + 56))(v62, v63);
      v61(v126, 0);
      v65 = v83;
      v66 = v121;
      v67 = v110;
      v88(v64, v121);
      v110 = v67;
      if (v67)
      {
        sub_29B277038();
        v74 = *v82;
        v75 = v123;
        (*v82)(v64, v123);
        (v115)(v125, v58);
        return (v74)(v66, v75);
      }

      v68 = *v82;
      v69 = v64;
      v70 = v66;
      v71 = v123;
      (*v82)(v69, v123);
      v68(v70, v71);
      v72 = v125;
      v73 = (*(AssociatedConformanceWitness + 24))(v126, v58);
      (*(v63 + 64))(v65, v62, v63);
      v73(v126, 0);
      result = (v115)(v72, v58);
      v22 = v119;
      v17 = v120;
      a1 = v118;
      v12 = v95;
    }

    v23 = v94;
  }

  v30 = v123;
  v31 = v117;
  if (v17)
  {
    v32 = v17;
    v33 = v22;
LABEL_22:
    v120 = (v32 - 1) & v32;
    v40 = __clz(__rbit64(v32)) | (v33 << 6);
    v41 = a1;
    v36 = v127;
    (*(v92 + 16))(v12, *(a1 + 48) + *(v92 + 72) * v40, v127);
    v35 = v12;
    (*(v93 + 16))(v31, *(v41 + 56) + *(v93 + 72) * v40, v30);
    goto LABEL_23;
  }

  if (v23 <= v22 + 1)
  {
    v37 = v22 + 1;
  }

  else
  {
    v37 = v23;
  }

  v38 = v37 - 1;
  v39 = v22;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v23)
    {
      v119 = v38;
      v120 = 0;
      v47 = 1;
      goto LABEL_26;
    }

    v32 = *(v77 + 8 * v33);
    ++v39;
    if (v32)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.merging<A>(_:uniquingKeysWith:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  CxxDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6);
  v11 = *(a4 - 8);
  if (v8)
  {
    return (*(v11 + 8))(v7, a4);
  }

  else
  {
    return (*(v11 + 32))(a7, v7, a4);
  }
}

uint64_t CxxDictionary.merging<>(_:uniquingKeysWith:)@<X0>(unint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  CxxDictionary.merge<>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5);
  v10 = *(a4 - 8);
  if (v7)
  {
    return (*(v10 + 8))(v6, a4);
  }

  else
  {
    return (*(v10 + 32))(a6, v6, a4);
  }
}

uint64_t CxxDictionary.merging(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_29B2806D4(a1, a2, a3, a4, a5);
  v11 = *(a4 - 8);
  v12 = *(v11 + 8);
  v12(a1, a4);
  if (v7)
  {
    return (v12)(v6, a4);
  }

  else
  {
    return (*(v11 + 32))(a6, v6, a4);
  }
}

uint64_t CxxOptional.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 32))())
  {
    (*(a2 + 40))(a1, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 56);

  return v8(a3, v6, 1, AssociatedTypeWitness);
}

uint64_t Optional.init<A>(fromCxx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 32))(a3, a4))
  {
    (*(a4 + 40))(a3, a4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  (*(*(a3 - 8) + 8))(a1, a3);
  v11 = *(*(a2 - 8) + 56);

  return v11(a5, v10, 1, a2);
}

uint64_t CxxSet.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a1;
  v32 = a5;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v33 = &v28 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v39 = *(v9 - 8);
  v10 = &v28 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v28 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v28 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v29 = *(v14 - 8);
  v15 = &v28 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 48);
  v35 = a6;
  v36 = a4;
  v16(v38, a4);
  (*(v12 + 16))(v13, v37, a3);
  dispatch thunk of Sequence.makeIterator()();
  v17 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v15;
  v32 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = v39;
  v20 = *(v39 + 48);
  if (v20(v11, 1, v9) != 1)
  {
    v21 = *(v19 + 32);
    v30 = v36 + 56;
    v31 = v21;
    v22 = (v28 + 8);
    v39 = v19 + 32;
    v23 = (v19 + 8);
    do
    {
      v31(v10, v11, v9);
      v24 = v17;
      v25 = v33;
      (*(v36 + 56))(v10, v38);
      v26 = v25;
      v17 = v24;
      (*v22)(v26, AssociatedTypeWitness);
      (*v23)(v10, v9);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v20(v11, 1, v9) != 1);
  }

  return (*(v29 + 8))(v37, v17);
}

uint64_t CxxSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v14 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a1, a2, a3);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a3) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v9 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((a3 & 1) == 0)
  {
    if (v9 > 63)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v7 + 8))(v8, AssociatedTypeWitness);
    v10 = v12 > 0;
    return v10 & 1;
  }

  if (v9 < 65)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[1] = 0;
  sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v10 = dispatch thunk of static Comparable.< infix(_:_:)();
  v11 = *(v7 + 8);
  v11(v8, AssociatedTypeWitness);
  v11(v8, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t CxxUniqueSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = &v21 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v21 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 56))(a2, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
  (*(AssociatedConformanceWitness + 56))(v23, v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v12, v10);
  v14 = LOBYTE(v23[0]);
  v15 = swift_getAssociatedConformanceWitness();
  v16 = (*(v15 + 24))(v23, AssociatedTypeWitness, v15);
  v18 = v17;
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 16))(v22, v18, v19);
  v16(v23, 0);
  (*(v21 + 8))(v8, AssociatedTypeWitness);
  return v14;
}

uint64_t CxxUniqueSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v22 = &v20 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v20 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 56))(a1, a2, a3);
  (*(a3 + 72))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v9 + 8);
  v12(v10, v8);
  if (a1)
  {
    v12(v10, v8);
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(v25, 1, 1, v13);
  }

  else
  {
    v15 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v20 = v16;
    v21 = v15;
    v17 = swift_getAssociatedTypeWitness();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v25, v20, v17);
    v21(v26, 0);
    v19 = v22;
    (*(a3 + 64))(v10, a2, a3);
    (*(v23 + 8))(v19, v24);
    v12(v10, v8);
    return (*(v18 + 56))(v25, 0, 1, v17);
  }
}

uint64_t CxxRandomAccessCollection.count.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  v30 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v27 = *(*(v31 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = &v25 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_checkMetadataState();
  v5 = *(v4 - 8);
  v6 = &v25 - ((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_checkMetadataState();
  v29 = *(v7 - 8);
  v28 = &v25 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v28;
  v9 = v30;
  (*(v2 + 40))(v30, v2);
  (*(v2 + 32))(v9, v2);
  (*(AssociatedConformanceWitness + 32))(v6, v6, v4, AssociatedConformanceWitness);
  v10 = *(v5 + 8);
  v10(v6, v4);
  v11 = v4;
  v12 = v29;
  v10(v6, v11);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v32 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v13)
    {
      if (v14 > 64)
      {
LABEL_8:
        sub_29B0B9C30();
        v15 = v28;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v16 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v12 + 8))(v15, v7);
        if ((v16 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v18 = v28;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v19 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v12 + 8))(v18, v7);
      if (v19)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v14 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_29B0B9C30();
    v22 = v28;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v12 + 8))(v22, v7);
    if (v23)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v24 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v12 + 8))(v8, v7);
  return v24;
}

uint64_t CxxRandomAccessCollection._getRawIterator(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v6 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v21 = &v18 - ((*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v20 = &v18 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v20;
  (*(v6 + 32))(a2, v6);
  v25 = v24;
  swift_getAssociatedConformanceWitness();
  v18 = sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(a4, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v23 = *(v10 + 8);
  v24 = v10 + 8;
  v23(v11, v9);
  v12 = v21;
  v13 = v20;
  (*(v6 + 40))(v19, v6);
  (*(AssociatedConformanceWitness + 32))(v12, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v22 + 8))(v12, AssociatedTypeWitness);
  LOBYTE(AssociatedConformanceWitness) = dispatch thunk of static BinaryInteger.isSigned.getter();
  result = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((AssociatedConformanceWitness & 1) == 0)
  {
    goto LABEL_5;
  }

  if (result <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v25 = 0;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    v16 = v23;
    v23(v11, v9);
    result = v16(v13, v9);
    if (v15)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (result > 63)
      {
        break;
      }

LABEL_6:
      v17 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (v23)(v13, v9);
      if (v17 > 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t (*CxxRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x80uLL);
  }

  v10 = v9;
  *a1 = v9;
  v11 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v13 = *(v35 + 64);
  if (v8)
  {
    v32 = swift_coroFrameAlloc();
    v10[7] = v32;
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v32 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v10[7] = v32;
    v14 = malloc(v13);
  }

  v33 = v14;
  v10[8] = v14;
  v15 = swift_checkMetadataState();
  v10[9] = v15;
  v16 = *(*(v15 - 8) + 64);
  v31 = *(v15 - 8);
  if (v8)
  {
    v29 = swift_coroFrameAlloc();
    v10[10] = v29;
    v17 = swift_coroFrameAlloc();
    v10[11] = v17;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v29 = malloc(*(*(v15 - 8) + 64));
    v10[10] = v29;
    v17 = malloc(v16);
    v10[11] = v17;
    v18 = malloc(v16);
  }

  v26 = v18;
  v10[12] = v18;
  (*(v11 + 32))(a3, v11);
  v10[4] = a2;
  v27 = a3;
  v19 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v19 + 40))(v17, v33, v15, v19);
  v30 = *(v35 + 8);
  v30(v33, AssociatedTypeWitness);
  (*(v11 + 40))(v27, v11);
  v28 = v17;
  (*(v19 + 32))(v29, v17, v15, v19);
  v20 = *(v31 + 8);
  v10[13] = v20;
  v10[14] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v29, v15);
  v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v21)
  {
    if (v22 > 64)
    {
      v10[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v22 >= 64)
  {
    v10[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v30(v33, AssociatedTypeWitness);
    result = (v30)(v32, AssociatedTypeWitness);
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v31 + 32))(v26, v28, v15);
    v10[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v10, v15);
    return sub_29B27D340;
  }

  v23 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v30)(v32, AssociatedTypeWitness);
  if (v23 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CxxRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v39 = a4;
  v5 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v44 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = &v34 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v41;
  v10 = swift_checkMetadataState();
  v40 = *(v10 - 8);
  v38 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v38;
  v12 = v38;
  (*(v5 + 32))(&v34, a2, v5);
  v46[0] = v43;
  swift_getAssociatedConformanceWitness();
  v34 = sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v13 = *(v8 + 8);
  v35 = v9;
  v42 = v13;
  v43 = v8 + 8;
  v13(v9, AssociatedTypeWitness);
  v14 = *(v5 + 40);
  v45 = v5;
  v15 = v5;
  v16 = v40;
  v14(v44, v15);
  v17 = *(AssociatedConformanceWitness + 32);
  v37 = v12;
  v18 = v12;
  v19 = AssociatedConformanceWitness;
  v20 = v41;
  v17(v11, v18, v10, v19);
  v36 = *(v16 + 8);
  v36(v11, v10);
  LOBYTE(v11) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v23 = __OFSUB__(v21, 64);
  v22 = v21 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v21 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v46[0] = 0;
    v24 = v35;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26 = v42;
    v42(v24, AssociatedTypeWitness);
    v26(v20, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 == v23)
      {
        break;
      }

LABEL_7:
      v27 = dispatch thunk of BinaryInteger._lowWord.getter();
      v42(v20, AssociatedTypeWitness);
      v23 = 0;
      v22 = v27 < 0;
      if (v27 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v28 = v38;
  (*(v16 + 32))(v38, v37, v10);
  v29 = (*(*(v19 + 8) + 24))(v46, v10);
  v31 = v30;
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 16))(v39, v31, v32);
  v29(v46, 0);
  return (v36)(v28, v10);
}

uint64_t CxxMutableRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v39 = a4;
  v5 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v44 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = &v34 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v41;
  v10 = swift_checkMetadataState();
  v40 = *(v10 - 8);
  v38 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v38;
  v12 = v38;
  (*(v5 + 32))(&v34, a2, v5);
  v46[0] = v43;
  swift_getAssociatedConformanceWitness();
  v34 = sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v13 = *(v8 + 8);
  v35 = v9;
  v42 = v13;
  v43 = v8 + 8;
  v13(v9, AssociatedTypeWitness);
  v14 = *(v5 + 40);
  v45 = v5;
  v15 = v5;
  v16 = v40;
  v14(v44, v15);
  v17 = *(AssociatedConformanceWitness + 32);
  v37 = v12;
  v18 = v12;
  v19 = AssociatedConformanceWitness;
  v20 = v41;
  v17(v11, v18, v10, v19);
  v36 = *(v16 + 8);
  v36(v11, v10);
  LOBYTE(v11) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v23 = __OFSUB__(v21, 64);
  v22 = v21 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v21 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v46[0] = 0;
    v24 = v35;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26 = v42;
    v42(v24, AssociatedTypeWitness);
    v26(v20, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 == v23)
      {
        break;
      }

LABEL_7:
      v27 = dispatch thunk of BinaryInteger._lowWord.getter();
      v42(v20, AssociatedTypeWitness);
      v23 = 0;
      v22 = v27 < 0;
      if (v27 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v28 = v38;
  (*(v16 + 32))(v38, v37, v10);
  v29 = (*(*(v19 + 8) + 24))(v46, v10);
  v31 = v30;
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 16))(v39, v31, v32);
  v29(v46, 0);
  return (v36)(v28, v10);
}

uint64_t sub_29B27DC6C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = CxxMutableRandomAccessCollection.subscript.read(v9, *a1, *(a1 + a2 - 16), *(a1 + a2 - 8));
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v6, AssociatedTypeWitness);
  return (v4)(v9, 0);
}

uint64_t (*CxxMutableRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x80uLL);
  }

  v10 = v9;
  *a1 = v9;
  v11 = *(*(*(a4 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v13 = *(v35 + 64);
  if (v8)
  {
    v32 = swift_coroFrameAlloc();
    v10[7] = v32;
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v32 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v10[7] = v32;
    v14 = malloc(v13);
  }

  v33 = v14;
  v10[8] = v14;
  v15 = swift_checkMetadataState();
  v10[9] = v15;
  v16 = *(*(v15 - 8) + 64);
  v31 = *(v15 - 8);
  if (v8)
  {
    v29 = swift_coroFrameAlloc();
    v10[10] = v29;
    v17 = swift_coroFrameAlloc();
    v10[11] = v17;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v29 = malloc(*(*(v15 - 8) + 64));
    v10[10] = v29;
    v17 = malloc(v16);
    v10[11] = v17;
    v18 = malloc(v16);
  }

  v26 = v18;
  v10[12] = v18;
  (*(v11 + 32))(a3, v11);
  v10[4] = a2;
  v27 = a3;
  v19 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v19 + 40))(v17, v33, v15, v19);
  v30 = *(v35 + 8);
  v30(v33, AssociatedTypeWitness);
  (*(v11 + 40))(v27, v11);
  v28 = v17;
  (*(v19 + 32))(v29, v17, v15, v19);
  v20 = *(v31 + 8);
  v10[13] = v20;
  v10[14] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v29, v15);
  v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v21)
  {
    if (v22 > 64)
    {
      v10[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v22 >= 64)
  {
    v10[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v30(v33, AssociatedTypeWitness);
    result = (v30)(v32, AssociatedTypeWitness);
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v31 + 32))(v26, v28, v15);
    v10[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v10, v15);
    return sub_29B282574;
  }

  v23 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v30)(v32, AssociatedTypeWitness);
  if (v23 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_29B27E230(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v7 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v3(v2, v6);
  free(v2);
  free(v4);
  free(v5);
  free(v7);
  free(v8);

  free(v1);
}

uint64_t sub_29B27E2E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = CxxMutableRandomAccessCollection.subscript.modify(v10, *a3, *(a3 + a4 - 16), *(a3 + a4 - 8));
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v7, a1, AssociatedTypeWitness);
  return (v5)(v10, 0);
}

void (*CxxMutableRandomAccessCollection.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x80uLL);
  }

  v9 = v8;
  *a1 = v8;
  swift_getAssociatedTypeWitness();
  v29 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  if (v7)
  {
    v30 = swift_coroFrameAlloc();
    v9[7] = v30;
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v30 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v9[7] = v30;
    v12 = malloc(v11);
  }

  v31 = v12;
  v9[8] = v12;
  v13 = swift_checkMetadataState();
  v9[9] = v13;
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  if (v7)
  {
    v26 = swift_coroFrameAlloc();
    v9[10] = v26;
    v25 = swift_coroFrameAlloc();
    v9[11] = v25;
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v26 = malloc(*(v14 + 64));
    v9[10] = v26;
    v25 = malloc(v15);
    v9[11] = v25;
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[12] = v16;
  (*(v29 + 40))(a3, v29);
  v9[4] = a2;
  swift_getAssociatedConformanceWitness();
  sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v10 + 40))(v17, v31, v32, v10);
  v28 = *(v34 + 8);
  v28(v31, AssociatedTypeWitness);
  (*(v29 + 48))(a3, v29);
  (*(v14 + 16))(v26, v17, v32);
  (*(v10 + 32))(v25, v26, v32, v10);
  v18 = *(v14 + 8);
  v9[13] = v18;
  v9[14] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v26, v32);
  v18(v25, v32);
  v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v19)
  {
    if (v20 > 64)
    {
      v9[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v20 > 63)
  {
    v9[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    v28(v31, AssociatedTypeWitness);
    result = (v28)(v30, AssociatedTypeWitness);
    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    v9[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v9, v32);
    return sub_29B27E8D0;
  }

  v21 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v28)(v30, AssociatedTypeWitness);
  if (v21 > 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_29B27E8D0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v7 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v3(v2, v6);
  free(v2);
  free(v4);
  free(v5);
  free(v7);
  free(v8);

  free(v1);
}

uint64_t CxxMutableRandomAccessCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v34 = a2;
  v31 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v33 = v28 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v33;
  v9 = swift_checkMetadataState();
  v32 = *(v9 - 8);
  v10 = v28 - ((*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(v36, a4);
  v37[0] = v34;
  swift_getAssociatedConformanceWitness();
  v28[1] = sub_29B0B9C30();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v5 + 40))(v10, v8, v9, v5);
  v11 = *(v7 + 8);
  v29 = v8;
  v34 = v7 + 8;
  v11(v8, AssociatedTypeWitness);
  v12 = v32;
  (*(a4 + 48))(v36, a4);
  v13 = *(v5 + 32);
  v35 = v10;
  v14 = v33;
  v13(v10, v10, v9, v5);
  v15 = *(v12 + 8);
  v15(v10, v9);
  LOBYTE(v10) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v18 = __OFSUB__(v16, 64);
  v17 = v16 - 64 < 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v16 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v37[0] = 0;
    v19 = v29;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    v11(v19, AssociatedTypeWitness);
    v11(v14, AssociatedTypeWitness);
    if (v20)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v17 == v18)
      {
        break;
      }

LABEL_7:
      v21 = dispatch thunk of BinaryInteger._lowWord.getter();
      v11(v14, AssociatedTypeWitness);
      v18 = 0;
      v17 = v21 < 0;
      if (v21 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v22 = v35;
  v23 = (*(*(AssociatedConformanceWitness + 8) + 24))(v37, v9);
  v25 = v24;
  v26 = swift_getAssociatedTypeWitness();
  (*(*(v26 - 8) + 40))(v25, v31, v26);
  v23(v37, 0);
  return (v15)(v22, v9);
}

uint64_t CxxSequenceBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 16))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t CxxSequenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t CxxIterator.rawIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.rawIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t CxxIterator.endIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.init(sequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for CxxSequenceBox();
  *a4 = CxxSequenceBox.__allocating_init(_:)(a1);
  v8 = *(a3 + 24);
  type metadata accessor for CxxIterator();

  v8(a2, a3);
  (*(a3 + 32))(a2, a3);
}

uint64_t CxxIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v7 = &v17 - ((*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }

  else
  {
    v17 = (*(AssociatedConformanceWitness + 24))(v19, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = v13;
    v15 = swift_getAssociatedTypeWitness();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a2, v14, v15);
    v17(v19, 0);
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v18 + 40))(v3 + v8, v7, AssociatedTypeWitness);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }
}

uint64_t CxxVector.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v25 = a5;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v10 = &v23 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v23 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v23 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v24 = *(v14 - 8);
  v15 = &v23 - ((*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 56);
  v26 = a6;
  v27 = a4;
  v16(v30, a4);
  (*(v12 + 16))(v13, v29, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v15;
  v29 = v14;
  v25 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = v23;
  v19 = *(v23 + 48);
  if (v19(v11, 1, AssociatedTypeWitness) != 1)
  {
    v20 = *(v18 + 32);
    v21 = (v18 + 8);
    do
    {
      v20(v10, v11, AssociatedTypeWitness);
      (*(v27 + 64))(v10, v30);
      (*v21)(v10, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v19(v11, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v24 + 8))(v28, v29);
}

uint64_t sub_29B27F8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a1;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  a6(&v12, a2, v9, a3, WitnessTable);
}

uint64_t _s3Cxx13unsafeBitCast_2toq_xn_q_mtRi_zRi0_zr0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t Optional<A>.pointee.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v18[-((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v18[-((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    v13 = (*(a2 + 24))(v18, v10, a2);
    v15 = v14;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a3, v15, AssociatedTypeWitness);
    v13(v18, 0);
    return (*(v11 + 8))(v12, v10);
  }

  return result;
}

uint64_t Optional<A>.successor()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v14 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v14 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    (*(a2 + 32))(v10, a2);
    (*(v11 + 8))(v12, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  return result;
}

void (*sub_29B27FF40(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_29B280010(v6, a2, *(a3 - 8));
  return sub_29B27FFC8;
}

void sub_29B27FFC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_29B280010(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x29EDCA1B0])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  Optional<A>.pointee.getter(a2, a3, v8);
  return sub_29B2800FC;
}

void sub_29B2800FC(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_29B280150(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 8))(v4, v5);
  v6 = *(v8 + 32);

  return v6(v4, a1, v5);
}

void *sub_29B280238@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(*(*(a3 + 16) - 8) + 72);
  if (v4)
  {
    v5 = *result - *a2;
    if (v5 != 0x8000000000000000 || v4 != -1)
    {
      *a4 = v5 / v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29B2802B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v27 = &v25 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v26 = *(v9 - 8);
  v25 = &v25 - ((*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v25 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 104);
  v31 = a2;
  v13(a2, a3, a4);
  v14 = *(a4 + 152);
  v30 = v4;
  v14(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v17(v12, v10);
    v18 = swift_getAssociatedConformanceWitness();
    v19 = v25;
    (*(v18 + 24))(v31, v32, v9, v18);
    v20 = v27;
    (*(a4 + 112))(v19, a3, a4);
    (*(v28 + 8))(v20, v29);
    return (*(v26 + 8))(v19, v9);
  }

  else
  {
    v22 = swift_getAssociatedTypeWitness();
    (*(*(v22 - 8) + 8))(v31, v22);
    v23 = (*(AssociatedConformanceWitness + 24))(v33, v10, AssociatedConformanceWitness);
    v24 = swift_getAssociatedConformanceWitness();
    (*(v24 + 64))(v32, v9, v24);
    v23(v33, 0);
    return (v17)(v12, v10);
  }
}

uint64_t sub_29B2806D4(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v83 = a2;
  v98 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(AssociatedTypeWitness - 8);
  v81 = &v69 - ((*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = swift_getAssociatedTypeWitness();
  v114 = *(v80 - 8);
  v79 = &v69 - ((*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v79;
  v77 = v79;
  v76 = v79;
  v94 = swift_getAssociatedTypeWitness();
  v113 = *(v94 - 8);
  v112 = &v69 - ((*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = swift_getAssociatedTypeWitness();
  v7 = *(v93 - 8);
  v75 = &v69 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v75;
  v73 = v75;
  v8 = v75;
  v105 = swift_getAssociatedTypeWitness();
  v109 = *(v105 - 8);
  v92 = &v69 - ((*(v109 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v92;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = &v69 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11;
  (*(a5 + 136))(a4, a5);
  v96 = *(a5 + 144);
  v110 = (v7 + 16);
  v115 = (v7 + 8);
  v13 = (v10 + 8);
  v90 = a5 + 104;
  v89 = (v113 + 8);
  v88 = a5 + 152;
  v102 = (v109 + 8);
  v72 = (v114 + 8);
  v97 = a5 + 144;
  v71 = a5 + 112;
  v70 = (v118 + 8);
  v85 = (v10 + 32);
  v14 = a5;
  v116 = a4;
  v101 = v8;
  v87 = a5;
  v111 = v9;
  v103 = v11;
  v91 = v13;
  v86 = v11;
  v96(a4, a5);
  while (1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = v11;
    v31 = v29;
    v32 = *v13;
    (*v13)(v30, v9);
    if (v31)
    {
      return v32(v12, v9);
    }

    v109 = v32;
    v33 = *(AssociatedConformanceWitness + 24);
    v113 = AssociatedConformanceWitness + 24;
    v106 = v33;
    v34 = v33(v117, v9, AssociatedConformanceWitness);
    v35 = v8;
    v36 = v8;
    v37 = v93;
    v107 = *v110;
    v107(v35);
    v34(v117, 0);
    v38 = v116;
    v39 = swift_getAssociatedConformanceWitness();
    v40 = *(v39 + 32);
    v41 = v112;
    v108 = v39;
    v100 = (v39 + 32);
    v99 = v40;
    (v40)(v37);
    v114 = *v115;
    (v114)(v36, v37);
    v42 = v104;
    (*(v14 + 104))(v41, v38, v14);
    (*v89)(v41, v94);
    v43 = *(v14 + 152);
    v118 = AssociatedConformanceWitness;
    v44 = v92;
    v43(v38, v14);
    v45 = v105;
    v46 = v42;
    v47 = swift_getAssociatedConformanceWitness();
    v48 = *(v47 + 8);
    LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *v102;
    (*v102)(v44, v45);
    if (v36)
    {
      v49(v46, v45);
      v12 = v103;
      v15 = v111;
      v16 = v106;
      v17 = v106(v117, v111, v118);
      v18 = v74;
      v19 = v107;
      v107(v74);
      v17(v117, 0);
      v20 = v108;
      v99(v37, v108);
      (v114)(v18, v37);
      v21 = v16(v117, v15, v118);
      v22 = v75;
      v19(v75);
      v21(v117, 0);
      v23 = v79;
      (*(v20 + 56))(v37, v20);
      v24 = v114;
      (v114)(v22, v37);
      v25 = v101;
      (*(v20 + 24))(v112, v23, v37, v20);
      v26 = v81;
      v27 = v87;
      (*(v87 + 112))(v25, v116);
      (*v70)(v26, AssociatedTypeWitness);
      v24(v25, v37);
      v14 = v27;
      v9 = v111;
      goto LABEL_3;
    }

    v100 = v49;
    v50 = (*(v48 + 24))(v117, v45, v48);
    v51 = v108;
    v52 = *(v108 + 56);
    v53 = v77;
    v52(v37, v108);
    v50(v117, 0);
    v54 = v106(v117, v111, v118);
    v55 = v73;
    v107(v73);
    v54(v117, 0);
    v56 = v78;
    v52(v37, v51);
    (v114)(v55, v37);
    v57 = v76;
    v58 = v95;
    v83(v53, v56);
    if (v58)
    {
      break;
    }

    v95 = 0;
    v59 = *v72;
    v60 = v80;
    (*v72)(v56, v80);
    v59(v53, v60);
    v61 = v47;
    v62 = *(v47 + 24);
    v63 = v104;
    v64 = v105;
    v65 = v62(v117, v105, v61);
    (*(v51 + 64))(v57, v37, v51);
    v65(v117, 0);
    v100(v63, v64);
    v14 = v87;
    v9 = v111;
    v12 = v103;
LABEL_3:
    v11 = v86;
    (*(v118 + 32))(v9);
    v13 = v91;
    v109(v12, v9);
    (*v85)(v12, v11, v9);
    v8 = v101;
    v96(v116, v14);
  }

  v67 = *v72;
  v68 = v80;
  (*v72)(v56, v80);
  v67(v53, v68);
  v100(v104, v105);
  return v109(v103, v111);
}

uint64_t sub_29B2813E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B281420(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B28145C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B2814B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B2814F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B28152C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_29B281598(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_29B281834()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29B2818FC()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_29B2819B0(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v7 + v6;
  v9 = ((((-9 - v6) | v6) - (v7 + v6)) | v6) - v7;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = (a2 + v6 + 8) & ~v6;
    v15 = *(v5 + 16);

    v15((a1 + v6 + 8) & ~v6, v14, v13);
    v15((v8 + ((a1 + v6 + 8) & ~v6)) & ~v6, (v8 + v14) & ~v6, v13);
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_29B281B14(uint64_t a1)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v8 = v3 + 8;
  v9 = *(v3 + 8);
  v4 = *(v3 + 80);
  v5 = (a1 + v4 + 8) & ~v4;
  v9(v5, AssociatedTypeWitness);
  v6 = (*(v8 + 56) + v4 + v5) & ~v4;

  return (v9)(v6, AssociatedTypeWitness);
}

void *sub_29B281BEC(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v8 = *(v5 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;

  v6(v9, v10, AssociatedTypeWitness);
  v6((*(v7 + 48) + v8 + v9) & ~v8, (*(v7 + 48) + v8 + v10) & ~v8, AssociatedTypeWitness);
  return a1;
}

void *sub_29B281CD4(void *a1, void *a2)
{
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 8) & ~v8;
  v6((a1 + v8 + 8) & ~v8, v9, AssociatedTypeWitness);
  v6((*(v7 + 40) + v8 + ((a1 + v8 + 8) & ~v8)) & ~v8, (*(v7 + 40) + v8 + v9) & ~v8, AssociatedTypeWitness);
  return a1;
}

void *sub_29B281DC8(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 8) & ~v8;
  v6((a1 + v8 + 8) & ~v8, v9, AssociatedTypeWitness);
  v6((*(v7 + 32) + v8 + ((a1 + v8 + 8) & ~v8)) & ~v8, (*(v7 + 32) + v8 + v9) & ~v8, AssociatedTypeWitness);
  return a1;
}

void *sub_29B281EA8(void *a1, void *a2)
{
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 8) & ~v8;
  v6((a1 + v8 + 8) & ~v8, v9, AssociatedTypeWitness);
  v6((*(v7 + 24) + v8 + ((a1 + v8 + 8) & ~v8)) & ~v8, (*(v7 + 24) + v8 + v9) & ~v8, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_29B281F94(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 48);

        return v17((a1 + v8 + 8) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        return (v16 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_29B282178(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((*(v6 + 64) + v8 + ((v8 + 8) & ~v8)) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_47:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v18 = *(v6 + 56);

    v18(&a1[v8 + 8] & ~v8, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v17 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v17 = (a2 - 1);
    }

    *a1 = v17;
  }
}

uint64_t sub_29B282580@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29B283CB0(a3);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_12;
    }

    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
LABEL_8:
      _StringObject.sharedUTF8.getter();
    }

LABEL_18:
    for (i = _decodeScalar(_:startingAt:)(); ; i = _StringGuts.foreignErrorCorrectedScalar(startingAt:)())
    {
      v11 = i;
      v8 += v10;
      if (i >= 0x10000)
      {
        v7 = Unicode.Scalar.UTF16View.subscript.getter();
        LOWORD(i) = Unicode.Scalar.UTF16View.subscript.getter();
      }

      sub_29B283D64(a3, i);
      if (v11 >= 0x10000)
      {
        sub_29B283D64(a3, v7);
        v7 = 0;
      }

      if (v8 >= v6)
      {
        break;
      }

      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }

LABEL_12:
      ;
    }
  }
}

uint64_t sub_29B282704@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29B283CB0(a3);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    for (i = 0; i < v6; i += v12)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v12 = v11;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v9 = v15 + i;
        }

        else
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + i);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v13 = (__clz(v10 ^ 0xFF) - 24);
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
            v12 = 3;
          }

          else
          {
            v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
            v12 = 4;
          }

          goto LABEL_15;
        }

        if (v13 == 1)
        {
LABEL_14:
          v12 = 1;
        }

        else
        {
          v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
          v12 = 2;
        }
      }

LABEL_15:
      sub_29B283CBC(a3, v10);
    }
  }
}

Swift::Int sub_29B282C44(uint64_t (*a1)(uint64_t))
{
  Hasher.init(_seed:)();
  v3 = a1(v1);
  MEMORY[0x29C2B9F80](v3);
  return Hasher._finalize()();
}

Swift::Int sub_29B282CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(v3);
  MEMORY[0x29C2B9F80](v5);
  return Hasher._finalize()();
}

Swift::Int sub_29B282D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  Hasher.init(_seed:)();
  v6 = a4(v4);
  MEMORY[0x29C2B9F80](v6);
  return Hasher._finalize()();
}

uint64_t sub_29B282E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29B283194()
{
  v6 = 0x697274732E647473;
  v7 = 0xEB0000000028676ELL;
  std::string::basic_string(&v5, v0);
  sub_29B283A28(&v5);
  sub_29B283A3C(&v5);
  v1 = static String._fromUTF8Repairing(_:)();
  v3 = v2;
  std::string::~string(&v5);
  MEMORY[0x29C2B97D0](v1, v3);

  MEMORY[0x29C2B97D0](41, 0xE100000000000000);
  return v6;
}

uint64_t sub_29B283260()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v6, "std.u16string(");
  HIBYTE(v6[1]) = -18;
  sub_29B283860(v5, v0);
  sub_29B283A28(v5);
  sub_29B283A3C(v5);
  sub_29B0B7DC8(&qword_2A153EBA0);
  sub_29B283AA8(&qword_2A153EBA8, &qword_2A153EBA0);
  sub_29B283AFC();
  result = static String._fromCodeUnits<A, B>(_:encoding:repair:)();
  if (v2)
  {
    v3 = result;
    v4 = v2;
    sub_29B28371C(v5);
    MEMORY[0x29C2B97D0](v3, v4);

    MEMORY[0x29C2B97D0](41, 0xE100000000000000);
    return v6[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29B2833A0()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v4, "std.u32string(");
  HIBYTE(v4[1]) = -18;
  sub_29B283704(v3, v0);
  v1 = sub_29B283448(v3);
  MEMORY[0x29C2B97D0](v1);

  MEMORY[0x29C2B97D0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_29B283448(char *a1)
{
  v2 = sub_29B283A28(a1);
  sub_29B283A3C(a1);
  if (v2)
  {
    sub_29B0B7DC8(&qword_2A153EB88);
    sub_29B283AA8(&qword_2A153EB90, &qword_2A153EB88);
    sub_29B283A54();
    result = static String._fromCodeUnits<A, B>(_:encoding:repair:)();
    if (v4)
    {
LABEL_5:
      v6 = result;
      sub_29B28371C(a1);
      return v6;
    }

    __break(1u);
  }

  sub_29B0B7DC8(&qword_2A153EB88);
  sub_29B283AA8(&qword_2A153EB90, &qword_2A153EB88);
  sub_29B283A54();
  result = static String._fromCodeUnits<A, B>(_:encoding:repair:)();
  if (v5)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_29B283580()
{
  std::string::basic_string(&v3, v0);
  sub_29B283A28(&v3);
  sub_29B283A3C(&v3);
  v1 = static String._fromUTF8Repairing(_:)();
  std::string::~string(&v3);
  return v1;
}

uint64_t sub_29B2835FC()
{
  sub_29B283860(v4, v0);
  sub_29B283A28(v4);
  sub_29B283A3C(v4);
  sub_29B0B7DC8(&qword_2A153EBA0);
  sub_29B283AA8(&qword_2A153EBA8, &qword_2A153EBA0);
  sub_29B283AFC();
  result = static String._fromCodeUnits<A, B>(_:encoding:repair:)();
  if (v2)
  {
    v3 = result;
    sub_29B28371C(v4);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29B28371C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_29B28379C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void sub_29B2837E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_29B283830(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_29B283878(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, void, void))
{
  if (*(a2 + 23) < 0)
  {
    a3(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  return a1;
}

__n128 *sub_29B283920(__n128 *a1, __n128 *a2)
{
  sub_29B28379C(a1, a2);
  sub_29B28371C(a2);
  return a1;
}

uint64_t sub_29B283980(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B2839A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_29B2839CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  a4();
  a5(a1, a2);
  (a4)(a2);
  return a1;
}

char *sub_29B283A28(char *result)
{
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_29B283A3C(uint64_t a1)
{
  result = *(a1 + 23);
  if (result < 0)
  {
    return *(a1 + 8);
  }

  return result;
}

unint64_t sub_29B283A54()
{
  result = qword_2A153EB98;
  if (!qword_2A153EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A153EB98);
  }

  return result;
}

uint64_t sub_29B283AA8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29B0B7EBC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29B283AFC()
{
  result = qword_2A153EBB0;
  if (!qword_2A153EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A153EBB0);
  }

  return result;
}

uint64_t sub_29B283B50(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *a2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v3 = a2;
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1;
    a1 = *a1;
    v4 = v5[1];
  }

  if (v2 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    while (1)
    {
      if (*a1 < *v3)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v3 < *a1)
      {
        return 1;
      }

      a1 = (a1 + 4);
      ++v3;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (v4 < v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v2 < v4;
    }
  }
}

uint64_t sub_29B283BCC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 23);
  v3 = *a2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  else
  {
    v3 = a2;
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1;
    a1 = *a1;
    v4 = *(v5 + 1);
  }

  if (v2 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    while (1)
    {
      v7 = *a1;
      v8 = *v3;
      if (v7 < v8)
      {
        return 0xFFFFFFFFLL;
      }

      if (v8 < v7)
      {
        return 1;
      }

      ++a1;
      ++v3;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (v4 < v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v2 < v4;
    }
  }
}

uint64_t sub_29B283C48(const void **a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

void *sub_29B283CB0(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_29B283CBC(uint64_t a1, int a2)
{
  v3 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) != 4)
    {
      v5 = *(a1 + 23);
      *(a1 + 23) = (*(a1 + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v4 = 4;
    goto LABEL_5;
  }

  v5 = *(a1 + 8);
  v4 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v5 == v4)
  {
LABEL_5:
    sub_29B2840B0(a1, v4, 1uLL, v4, v4, 0, 0);
    v5 = v4;
  }

  v3[1] = v5 + 1;
  v3 = *v3;
LABEL_8:
  v6 = v3 + v5;
  *v6 = a2;
  v6[1] = 0;
}

void sub_29B283D64(uint64_t a1, __int16 a2)
{
  v3 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) != 10)
    {
      v5 = *(a1 + 23);
      *(a1 + 23) = (*(a1 + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v4 = 10;
    goto LABEL_5;
  }

  v5 = *(a1 + 8);
  v4 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v5 == v4)
  {
LABEL_5:
    sub_29B2841D0(a1, v4, 1uLL, v4, v4, 0, 0);
    v5 = v4;
  }

  v3[1] = v5 + 1;
  v3 = *v3;
LABEL_8:
  v6 = v3 + v5;
  *v6 = a2;
  v6[1] = 0;
}

unint64_t sub_29B283E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_29A12A748(&v5, a2, v3);
}

unint64_t sub_29B283E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 8);
  if ((v2 & 0x80u) != 0)
  {
    a2 = *a2;
    v2 = v3;
  }

  return sub_29A12A748(&v5, a2, 2 * v2);
}

unint64_t sub_29B283E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 8);
  if ((v2 & 0x80u) != 0)
  {
    a2 = *a2;
    v2 = v3;
  }

  return sub_29A12A748(&v5, a2, 4 * v2);
}

void *sub_29B283ED8(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 4)
  {
    if (a3 >= 0x3FFFFFFFFFFFFFF8)
    {
      sub_29B283F74();
    }

    if ((a3 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (a3 | 1) + 1;
    }

    v7 = sub_29A00E7A8(__dst, v6);
    v5[1] = a3;
    v5[2] = v8 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, 4 * a3 + 4);
}

void sub_29B283F8C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_29B283FE8(exception, a1);
  __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_29B283FE8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *sub_29B284014(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0xA)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_29B283F74();
    }

    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    v7 = sub_29A010BBC(__dst, v6);
    v5[1] = a3;
    v5[2] = v8 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, 2 * a3 + 2);
}

void sub_29B2840B0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (0x3FFFFFFFFFFFFFF7 - a2 < a3)
  {
    sub_29B283F74();
  }

  v13 = a1;
  if (*(a1 + 23) < 0)
  {
    v13 = *a1;
  }

  v14 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v14 = 2 * a2;
  }

  if ((v14 | 1) == 5)
  {
    v15 = 7;
  }

  else
  {
    v15 = (v14 | 1) + 1;
  }

  v16 = v14 >= 5;
  v17 = 5;
  if (v16)
  {
    v17 = v15;
  }

  if (a2 <= 0x1FFFFFFFFFFFFFF2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x3FFFFFFFFFFFFFF7;
  }

  v19 = sub_29A00E7A8(a1, v18);
  v20 = v19;
  v22 = v21;
  if (a5)
  {
    memmove(v19, v13, 4 * a5);
  }

  if (a4 != a6 + a5)
  {
    memmove(&v20[4 * a5 + 4 * a7], &v13[4 * a5 + 4 * a6], 4 * (a4 - (a6 + a5)));
  }

  if (a2 != 4)
  {
    operator delete(v13);
  }

  *a1 = v20;
  *(a1 + 16) = v22 | 0x8000000000000000;
}

void sub_29B2841D0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (0x7FFFFFFFFFFFFFF7 - a2 < a3)
  {
    sub_29B283F74();
  }

  v13 = a1;
  if (*(a1 + 23) < 0)
  {
    v13 = *a1;
  }

  v14 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v14 = 2 * a2;
  }

  if ((v14 | 3) == 0xB)
  {
    v15 = 13;
  }

  else
  {
    v15 = (v14 | 3) + 1;
  }

  v16 = v14 >= 0xB;
  v17 = 11;
  if (v16)
  {
    v17 = v15;
  }

  if (a2 <= 0x3FFFFFFFFFFFFFF2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFF7;
  }

  v19 = sub_29A010BBC(a1, v18);
  v20 = v19;
  v22 = v21;
  if (a5)
  {
    memmove(v19, v13, 2 * a5);
  }

  if (a4 != a6 + a5)
  {
    memmove(&v20[2 * a5 + 2 * a7], &v13[2 * a5 + 2 * a6], 2 * (a4 - (a6 + a5)));
  }

  if (a2 != 10)
  {
    operator delete(v13);
  }

  *a1 = v20;
  *(a1 + 16) = v22 | 0x8000000000000000;
}

void sub_29B284328(const char *a1, int a2, const char *a3, const char *a4)
{
  byte_2A153EBD8 = 1;
  v5 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "Assertion %s failed on line %d of file %s\n", a1, a2, a3);
  if (a4)
  {
    fprintf(*v5, "Detailed description: %s\n", a4);
  }

  fflush(*v5);
  abort();
}

void sub_29B2843AC(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_299FE7000, a2, OS_LOG_TYPE_ERROR, "TBB failed to acquire key from pthread_key_create. Error Code: %d\n ", v2, 8u);
}

void sub_29B284438(os_log_t log)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = tbb::internal::__TBB_InitOnce::count;
  __dmb(0xBu);
  v2[0] = 67109120;
  v2[1] = v1;
  _os_log_error_impl(&dword_299FE7000, log, OS_LOG_TYPE_ERROR, "TBB Global TLS count is not == 1, instead it is: %d", v2, 8u);
}

void sub_29B284508(uint64_t a1, uint64_t a2, char *__p)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a2 - 16;
  if (a2 != 16)
  {
    v7 = &__p[a2 - 96];
    do
    {
      v7 = (sub_29A01A7E8(v7) - 96);
      v6 -= 96;
    }

    while (v6);
  }

  operator delete[](__p);
}

void sub_29B2845B0(uint64_t a1, uint64_t a2, char *__p)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a2 - 16;
  if (a2 != 16)
  {
    v7 = &__p[a2 - 96];
    do
    {
      v7 = (sub_29A020684(v7) - 96);
      v6 -= 96;
    }

    while (v6);
  }

  operator delete[](__p);
}

uint64_t sub_29B284610()
{
  sub_29A028DB4();
  do
  {
    if (*(v1 + result))
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 >> 23;
    if (v12 >> 23 <= 0x70)
    {
      if (v12 >= v7)
      {
        v15 = v12 & 0x7FFFFF | 0x800000;
        v16 = v15 << (v13 - 94);
        v14 = v15 >> (v8 - (v12 >> 23));
        if (v16 >= v9 || (v16 == 0x80000000 ? (v17 = ((v15 >> (v8 - (v12 >> 23))) & 1) == 0) : (v17 = 1), !v17))
        {
          LOWORD(v14) = v14 + 1;
        }
      }

      else
      {
        LOWORD(v14) = 0;
      }
    }

    else
    {
      if (v13 < 0xFF)
      {
        if (v12 <= v5)
        {
          v14 = (v12 + v6 + ((v12 >> 13) & 1)) >> 13;
          goto LABEL_17;
        }

LABEL_20:
        LOWORD(v14) = 31744;
        goto LABEL_17;
      }

      if (v12 == v3)
      {
        goto LABEL_20;
      }

      LOWORD(v14) = v4 & (v12 >> 13) | ((v4 & (v12 >> 13)) == 0) | 0x7C00;
    }

LABEL_17:
    *(v2 + 2 * result--) = v14;
  }

  while (result);
  return result;
}

uint64_t sub_29B2846F8()
{
  sub_29A028DB4();
  do
  {
    LOBYTE(v10) = *(v1 + result);
    v10 = LODWORD(v10);
    v11 = LODWORD(v10) >> 23;
    if (LODWORD(v10) >> 23 <= 0x70)
    {
      if (LODWORD(v10) >= v7)
      {
        v13 = LODWORD(v10) & 0x7FFFFF | 0x800000;
        v14 = v13 << (v11 - 94);
        v12 = v13 >> (v8 - (LODWORD(v10) >> 23));
        if (v14 >= v9 || (v14 == 0x80000000 ? (v15 = ((v13 >> (v8 - (LODWORD(v10) >> 23))) & 1) == 0) : (v15 = 1), !v15))
        {
          LOWORD(v12) = v12 + 1;
        }
      }

      else
      {
        LOWORD(v12) = 0;
      }
    }

    else
    {
      if (v11 < 0xFF)
      {
        if (LODWORD(v10) <= v5)
        {
          v12 = (LODWORD(v10) + v6 + ((LODWORD(v10) >> 13) & 1)) >> 13;
          goto LABEL_14;
        }

LABEL_17:
        LOWORD(v12) = 31744;
        goto LABEL_14;
      }

      if (LODWORD(v10) == v3)
      {
        goto LABEL_17;
      }

      LOWORD(v12) = v4 & (LODWORD(v10) >> 13) | ((v4 & (LODWORD(v10) >> 13)) == 0) | 0x7C00;
    }

LABEL_14:
    *(v2 + 2 * result--) = v12;
  }

  while (result);
  return result;
}

uint64_t sub_29B2847D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 >> 1;
  v4 = a3 - 2;
  result = 2147483649;
  do
  {
    v6 = *(a2 - 2 + 2 * v3);
    if (v6 >= 0xFFE0)
    {
      v6 = 65504;
    }

    v7 = v6;
    v8 = LODWORD(v7) >> 23;
    if (LODWORD(v7) >> 23 <= 0x70)
    {
      if (LODWORD(v7) >= 0x33000001)
      {
        v9 = LODWORD(v7) & 0x7FFFFF | 0x800000;
        v10 = v9 << (v8 - 94);
        LODWORD(v7) = v9 >> (126 - (LODWORD(v7) >> 23));
        if (v10 >= 0x80000001 || (v10 == 0x80000000 ? (v11 = (LOBYTE(v7) & 1) == 0) : (v11 = 1), !v11))
        {
          ++LOWORD(v7);
        }
      }

      else
      {
        LOWORD(v7) = 0;
      }
    }

    else
    {
      if (v8 <= 0xFE)
      {
        if (LODWORD(v7) <= 0x477FEFFF)
        {
          LODWORD(v7) = (LODWORD(v7) + 134221823 + ((LODWORD(v7) >> 13) & 1)) >> 13;
          goto LABEL_16;
        }

LABEL_19:
        LOWORD(v7) = 31744;
        goto LABEL_16;
      }

      if (v7 == INFINITY)
      {
        goto LABEL_19;
      }

      LOWORD(v7) = (LODWORD(v7) >> 13) & 0x3FF | (((LODWORD(v7) >> 13) & 0x3FF) == 0) | 0x7C00;
    }

LABEL_16:
    *(v4 + 2 * v3--) = LOWORD(v7);
  }

  while (v3);
  return result;
}

void sub_29B28491C(std::__shared_weak_count **a1, uint64_t a2, void **a3)
{
  v5 = *a1;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (*(a2 + 39) < 0)
  {
    v6 = *a3;

    operator delete(v6);
  }
}

void sub_29B284974(std::__shared_weak_count **a1, uint64_t a2, void **a3)
{
  v5 = *a1;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (*(a2 + 39) < 0)
  {
    operator delete(*a3);
  }
}

void sub_29B2849B4(uint64_t a1, void **a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (*(a1 + 39) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void sub_29B284A0C(float64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v42.f64[0] = *a1;
  v42.f64[1] = v3;
  v43 = v4;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v40.f64[0] = v5;
  v40.f64[1] = v6;
  v41 = v7;
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v38.f64[0] = v8;
  v38.f64[1] = v9;
  v39 = v10;
  v11 = v3 * v3 + v42.f64[0] * v42.f64[0] + v4 * v4;
  if (v11 < 4.45014772e-308)
  {
    v12 = sub_29B284C54(&v42);
  }

  else
  {
    v12 = sqrt(v11);
  }

  if (v12 != 0.0)
  {
    v42 = vdivq_f64(v42, vdupq_lane_s64(*&v12, 0));
    v43 = v43 / v12;
  }

  v13 = v6 * v6 + v5 * v5 + v7 * v7;
  if (v13 < 4.45014772e-308)
  {
    v14 = sub_29B284C54(&v40);
  }

  else
  {
    v14 = sqrt(v13);
  }

  if (v14 != 0.0)
  {
    v40 = vdivq_f64(v40, vdupq_lane_s64(*&v14, 0));
    v41 = v41 / v14;
  }

  v15 = v9 * v9 + v8 * v8 + v10 * v10;
  if (v15 < 4.45014772e-308)
  {
    v16 = sub_29B284C54(&v38);
    v9 = v38.f64[1];
    v8 = v38.f64[0];
    v10 = v39;
  }

  else
  {
    v16 = sqrt(v15);
  }

  if (v16 == 0.0)
  {
    v37 = v9;
  }

  else
  {
    v8 = v8 / v16;
    v37 = v9 / v16;
    v10 = v10 / v16;
  }

  v17 = v42;
  v36 = v43;
  v18 = v40;
  v19 = v41;
  v20 = atan2(v41, v10);
  *a2 = v20;
  v21 = __sincos_stret(v20);
  v22 = v21.__sinval * -0.0 + v21.__cosval * -0.0;
  v23 = v21.__cosval + v21.__sinval * -0.0;
  v24 = v23 * 0.0;
  v25 = v22 + v23 * 0.0 + v21.__sinval * -0.0;
  v26 = v23 + v22 * 0.0 + v21.__sinval * -0.0;
  v27 = v24 + v22 * 0.0;
  v28 = v27 - v21.__sinval;
  v29 = v10;
  v30 = v27 + v21.__sinval * -0.0;
  v31 = v17.f64[0] + v18.f64[0] * 0.0 + v8 * 0.0 + 0.0;
  v32 = v17.f64[1] + v18.f64[1] * 0.0 + v37 * 0.0 + 0.0;
  v33 = v36 + v19 * 0.0 + v29 * 0.0 + 0.0;
  v34 = v18.f64[0] * v26 + v25 * v17.f64[0] + v28 * v8;
  v35 = v18.f64[1] * v26 + v25 * v17.f64[1] + v28 * v37 + v30 * 0.0;
  *(a2 + 8) = atan2(-v33, sqrt(v32 * v32 + v31 * v31));
  *(a2 + 16) = atan2(-(v34 + v30 * 0.0), v35);
}

double sub_29B284C54(float64x2_t *a1)
{
  v1 = vbslq_s8(vcgezq_f64(*a1), *a1, vnegq_f64(*a1));
  v2 = a1[1].f64[0];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (*v1.i64 >= *&v1.i64[1])
  {
    v3 = *v1.i64;
  }

  else
  {
    v3 = *&v1.i64[1];
  }

  if (v3 < v2)
  {
    v3 = v2;
  }

  if (v3 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return v3 * sqrt(*&v1.i64[1] / v3 * (*&v1.i64[1] / v3) + *v1.i64 / v3 * (*v1.i64 / v3) + v2 / v3 * (v2 / v3));
  }
}

void Alembic::AbcGeom::v12::XformSample::getAxis(Alembic::AbcGeom::v12::XformSample *this@<X0>, float64x2_t *a2@<X8>)
{
  Alembic::AbcGeom::v12::XformSample::getMatrix(this, v7);
  sub_29A085C74(v7, &v8);
  v3 = v9.f64[1] * v9.f64[1] + v9.f64[0] * v9.f64[0] + v10 * v10;
  if (v3 < 4.45014772e-308)
  {
    v4 = sub_29B284C54(&v9);
  }

  else
  {
    v4 = sqrt(v3);
  }

  if (v4 == 0.0)
  {
    v5 = 0uLL;
    v6 = 0.0;
  }

  else
  {
    v5 = vdivq_f64(v9, vdupq_lane_s64(*&v4, 0));
    v6 = v10 / v4;
  }

  *a2 = v5;
  a2[1].f64[0] = v6;
}

double Alembic::AbcGeom::v12::XformSample::getYRotation(Alembic::AbcGeom::v12::XformSample *this)
{
  Alembic::AbcGeom::v12::XformSample::getMatrix(this, v2);
  sub_29B284A0C(v2, v3);
  return v4 * 57.2957795;
}

double Alembic::AbcGeom::v12::XformSample::getZRotation(Alembic::AbcGeom::v12::XformSample *this)
{
  Alembic::AbcGeom::v12::XformSample::getMatrix(this, v2);
  sub_29B284A0C(v2, v3);
  return v4 * 57.2957795;
}

uint64_t sub_29B284DE0(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 248;
  v4 = (a1 - 248);
  v5 = (a1 - 248);
  do
  {
    v6 = *v5;
    v5 -= 31;
    result = (*v6)(v4);
    v3 -= 248;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void sub_29B284E4C(uint64_t *a1, uint64_t a2)
{
  sub_29A0A02D4(a1, 0);
  v3 = *(a2 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_29B284E98(uint64_t a1)
{
  v1 = a1 + 704;
  v2 = -864;
  do
  {
    operator delete(*(v1 + 176));
    sub_29A0B32EC();
    v1 -= 216;
    v2 += 216;
  }

  while (v2);
}

void sub_29B284EE0(uint64_t a1)
{
  v1 = a1 + 736;
  v2 = -896;
  do
  {
    operator delete(*(v1 + 176));
    sub_29A0B32EC();
    v1 -= 224;
    v2 += 224;
  }

  while (v2);
}

void sub_29B284F28(uint64_t a1)
{
  v1 = a1 + 384;
  v2 = -504;
  do
  {
    operator delete(*(v1 + 136));
    sub_29A0B32EC();
    v1 -= 168;
    v2 += 168;
  }

  while (v2);
}

void sub_29B284F70(uint64_t a1)
{
  v1 = a1 + 408;
  v2 = -528;
  do
  {
    operator delete(*(v1 + 136));
    sub_29A0B32EC();
    v1 -= 176;
    v2 += 176;
  }

  while (v2);
}

void sub_29B284FB8(uint64_t a1)
{
  v4 = sub_29A0C34D4(a1);
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[3] = v6;

    operator delete(v6);
  }
}

void sub_29B285060(char *a1, int a2, regex_t *a3, uint64_t a4)
{
  *a1 = 0;
  regerror(a2, a3, a1, 0x100uLL);
  sub_29A0DA1D8(a4, a1);
}

void sub_29B2850A4()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = v0;
  __cxa_throw(exception, MEMORY[0x29EDC94D0], 0);
}

void sub_29B2850C0()
{
  if (__cxa_guard_acquire(&qword_2A153EEA8))
  {
    qword_2A153EEC8 = 0;
    __cxa_atexit(sub_29A0DD8DC, &unk_2A153EEB0, &dword_299FE7000);

    __cxa_guard_release(&qword_2A153EEA8);
  }
}

void sub_29B285134()
{
  if (__cxa_guard_acquire(&qword_2A153EEF0))
  {
    dword_2A153EEF8 = 9;
    qword_2A153EF00 = "Infinity";
    unk_2A153EF08 = "NaN";
    byte_2A153EF10 = 101;
    unk_2A153EF14 = xmmword_29B4362D0;
    dword_2A153EF24 = 0;

    __cxa_guard_release(&qword_2A153EEF0);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *a2, char *a3, char *a4, int a5)
{
  v8 = 0;
  v266 = a2;
  if (this && (this & 7) == 0)
  {
    bzero(this, 0x4020uLL);
    a2 = v266;
    v8 = this;
  }

  v10 = &a2[-*(v8 + 4096)];
  sub_29A0E8F8C();
  v262 = v16 << 6;
  v17 = v11 + a4;
  if (v18 <= a5)
  {
    if (a4 <= 65546)
    {
      if (a4 > 0x7E000000)
      {
        return 0;
      }

      *(v14 + 24) += a4;
      *v14 = v13 + a4;
      *(v14 + 6) = 3;
      v20 = v11;
      v70 = a3;
      if (a4 < 0xD)
      {
        goto LABEL_237;
      }

      v251 = v11 + a4;
      v255 = a4;
      v70 = a3;
      v71 = (v17 - 11);
      v264 = (v17 - 5);
      *(v8 + ((-1640531535 * *v11) >> 19)) = v13;
      v72 = (v17 - 12);
      v243 = (v17 - 6);
      v247 = (v17 - 8);
      v73 = 255;
      v74 = -1;
      v259 = v70;
      v20 = v11;
LABEL_64:
      v75 = (v20 + 1);
      v76 = *(v20 + 1);
      v77 = 1;
      v78 = v262;
      do
      {
        v79 = v75;
        v75 = (v75 + v77);
        if (v75 > v71)
        {
          goto LABEL_236;
        }

        v77 = v78++ >> 6;
        v80 = (-1640531535 * v76) >> 19;
        v81 = *(v8 + v80);
        v76 = *v75;
        *(v8 + v80) = v79 - v10;
      }

      while (*&v10[v81] != *v79);
      v82 = 0;
      v83 = &v10[v81];
      v84 = v79 - v20;
      v85 = v79 - v20 - 15;
      v86 = v79 - v20 - 14;
      v87 = v85;
      do
      {
        v88 = v87;
        v89 = v82;
        v90 = &v83[v82];
        v91 = (v79 + v82);
        if (&v83[v82] <= v11 || v91 <= v20)
        {
          break;
        }

        --v87;
        --v82;
      }

      while (*(v91 - 1) == *(v90 - 1));
      v93 = v91 - v20;
      v94 = v70 + 1;
      if ((v84 + v89) < 0xF)
      {
        *v70 = 16 * v93;
      }

      else
      {
        v95 = v89 + v85;
        *v70 = -16;
        if (v89 + v85 > 254)
        {
          v231 = v86;
          v234 = v84 + 239;
          if (v88 >= 509)
          {
            v96 = 509;
          }

          else
          {
            v96 = v88;
          }

          v237 = v96;
          sub_29A0E8F28();
          memset(v97, v98, v99);
          sub_29A0E9088();
          v11 = v266;
          v100 = (v234 - v237 + v89) / v73;
          v94 = &v70[v100 + 2];
          v95 = v100 + v231 + v89;
        }

        *v94++ = v95;
      }

      v101 = &v94[v93];
      do
      {
        v102 = *v20;
        v20 += 2;
        *v94 = v102;
        v94 += 8;
      }

      while (v94 < v101);
      while (1)
      {
        *v101 = v91 - v90;
        v105 = (v101 + 2);
        v106 = v91 + 1;
        v103 = v90 + 4;
        if (v72 <= (v91 + 1))
        {
          v104 = v91 + 1;
          goto LABEL_100;
        }

        if (*v103 != *v106)
        {
          break;
        }

        v104 = v91 + 3;
        v103 = v90 + 12;
LABEL_100:
        while (v104 < v72)
        {
          if (*v103 != *v104)
          {
            v104 = (v104 + (__clz(__rbit64(*v104 ^ *v103)) >> 3));
            goto LABEL_105;
          }

          ++v104;
          ++v103;
        }

        if (v104 < v247 && *v103 == *v104)
        {
          v103 = (v103 + 4);
          v104 = (v104 + 4);
        }

        if (v104 < v243 && *v103 == *v104)
        {
          v103 = (v103 + 2);
          v104 = (v104 + 2);
        }

        if (v104 < v264 && *v103 == *v104)
        {
          LODWORD(v104) = v104 + 1;
        }

LABEL_105:
        v107 = v104 - v106;
        v91 = (v91 + v107 + 4);
        v108 = v107 - 15;
        if (v107 < 0xF)
        {
          goto LABEL_109;
        }

        *v70 += 15;
        *v105 = v74;
        if (v108 >= 0x3FC)
        {
          v109 = v101 + 6;
          v110 = v107 - 1035;
          v111 = (v107 - 1035) / 0x3FC;
          v112 = 2 * v111;
          sub_29A0E8FD4(v94, v11, v112 * 2 + 4);
          sub_29A0E9088();
          v11 = v266;
          LOWORD(v108) = v110 - 1020 * v111;
          v105 = &v109[v112];
        }

        v113 = v108 / v73;
        v114 = v105 + v113;
        *v114 = v108 + v113;
        v105 = (v114 + 1);
LABEL_110:
        if (v91 >= v71)
        {
          v20 = v91;
          v70 = v105;
LABEL_236:
          a4 = v255;
          LODWORD(a3) = v259;
          v17 = v251;
LABEL_237:
          v219 = v17 - v20;
          if ((v17 - v20) < 0xF)
          {
            *v70 = 16 * v219;
          }

          else
          {
            v220 = sub_29A0E8E4C(v70);
            if (v166)
            {
              sub_29A0E8DB4(v220, v221 + a4 - v20);
              v222 = a4 + a3;
              v220 = &v70[a4 + 2];
            }

            *v220 = v222;
            v70 = v220;
          }

          v223 = v70 + 1;
          goto LABEL_255;
        }

        *(v8 + ((-1640531535 * *(v91 - 2)) >> 19)) = v91 - 2 - v10;
        v115 = (-1640531535 * *v91) >> 19;
        v90 = &v10[*(v8 + v115)];
        *(v8 + v115) = v91 - v10;
        if (*v90 != *v91)
        {
          v70 = v105;
          v20 = v91;
          goto LABEL_64;
        }

        *v105 = 0;
        v101 = v105 + 1;
        v70 = v105;
      }

      v107 = __clz(__rbit64(*v106 ^ *v103)) >> 3;
      v91 = (v91 + v107 + 4);
LABEL_109:
      *v70 += v107;
      goto LABEL_110;
    }

    if (a4 > 0x7E000000)
    {
      return 0;
    }

    v236 = a4;
    *(v14 + 24) += a4;
    *v14 = v13 + a4;
    *(v14 + 6) = 2;
    v167 = v11 + 2;
    v168 = a3;
    v169 = v15 - 11;
    *(v8 + (((*v11 * v12) >> 50) & 0x3FFC)) = v13;
    v265 = v15 - 5;
    v170 = v15 - 12;
    v253 = v15 - 8;
    v257 = v15;
    v249 = v15 - 6;
    v171 = v11;
    v261 = v168;
LABEL_177:
    v172 = (v171 + 1);
    v173 = *(v171 + 1);
    v174 = v262;
    while (1)
    {
      v175 = v167;
      v176 = ((v173 * v12) >> 50) & 0x3FFC;
      v177 = *(v8 + v176);
      v173 = *v175;
      *(v8 + v176) = v172 - v10;
      if (v177 + 0xFFFF >= (v172 - v10) && *&v10[v177] == *v172)
      {
        break;
      }

      v167 = v175 + (v174++ >> 6);
      v172 = v175;
      if (v167 > v169)
      {
        goto LABEL_228;
      }
    }

    v178 = 0;
    v179 = &v10[v177];
    v180 = v172 - v171;
    v181 = v172 - v171 - 15;
    v182 = v181;
    do
    {
      v183 = v178;
      v184 = &v179[v178];
      v185 = (v172 + v178);
      if (&v179[v178] <= v11 || v185 <= v171)
      {
        break;
      }

      --v182;
      --v178;
    }

    while (*(v185 - 1) == *(v184 - 1));
    v187 = v185 - v171;
    v188 = v168 + 1;
    if ((v180 + v183) < 0xF)
    {
      *v168 = 16 * v187;
    }

    else
    {
      v189 = v183 + v181;
      *v168 = -16;
      if (v183 + v181 > 254)
      {
        v241 = v180 + 239;
        sub_29A0E8F34();
        if (v48 != v49)
        {
          v190 = v191;
        }

        v245 = v190;
        sub_29A0E8F28();
        v239 = v192;
        memset(v193, v194, v195);
        v12 = 0xCF1BBCDCBB000000;
        v11 = v266;
        v196 = (v241 - v245 + v183) / 0xFFu;
        v188 = &v168[v196 + 2];
        v189 = v196 + v239 + v183;
      }

      *v188++ = v189;
    }

    v197 = &v188[v187];
    do
    {
      v198 = *v171++;
      *v188 = v198;
      v188 += 8;
    }

    while (v188 < v197);
    v199 = v168;
    v171 = v185;
    while (1)
    {
      *v197 = v171 - v184;
      v168 = v197 + 2;
      v200 = (v171 + 4);
      v201 = v184 + 4;
      if (v170 > v171 + 4)
      {
        break;
      }

      v202 = (v171 + 4);
LABEL_202:
      while (v202 < v170)
      {
        if (*v201 != *v202)
        {
          v202 = (v202 + (__clz(__rbit64(*v202 ^ *v201)) >> 3));
          goto LABEL_207;
        }

        ++v202;
        ++v201;
      }

      if (v202 < v253 && *v201 == *v202)
      {
        v201 = (v201 + 4);
        v202 = (v202 + 4);
      }

      if (v202 < v249 && *v201 == *v202)
      {
        v201 = (v201 + 2);
        v202 = (v202 + 2);
      }

      if (v202 < v265 && *v201 == *v202)
      {
        LODWORD(v202) = v202 + 1;
      }

LABEL_207:
      v203 = v202 - v200;
      v171 = (v171 + v203 + 4);
      v204 = v203 - 15;
      if (v203 < 0xF)
      {
        goto LABEL_211;
      }

      *v199 += 15;
      *v168 = -1;
      if (v204 >= 0x3FC)
      {
        v205 = v197 + 6;
        v206 = v203 - 1035;
        v207 = (v203 - 1035) / 0x3FC;
        v208 = 2 * v207;
        v188 = sub_29A0E8FD4(v188, v11, v208 * 2 + 4);
        v12 = 0xCF1BBCDCBB000000;
        v11 = v266;
        LOWORD(v204) = v206 - 1020 * v207;
        v168 = &v205[v208];
      }

      v209 = v204 / 0xFFu;
      v210 = &v168[v209];
      *v210 = v204 + v209;
      v168 = v210 + 1;
LABEL_212:
      if (v171 >= v169)
      {
        goto LABEL_228;
      }

      *(v8 + (((*(v171 - 2) * v12) >> 50) & 0x3FFC)) = v171 - 2 - v10;
      v211 = ((*v171 * v12) >> 50) & 0x3FFC;
      v212 = *(v8 + v211);
      *(v8 + v211) = v171 - v10;
      if (v212 + 0xFFFF < (v171 - v10) || (v184 = &v10[v212], *&v10[v212] != *v171))
      {
        v167 = v171 + 2;
        if (v171 + 2 > v169)
        {
LABEL_228:
          v213 = v257 - v171;
          if ((v257 - v171) < 0xF)
          {
            *v168 = 16 * v213;
            v217 = v261;
          }

          else
          {
            v214 = sub_29A0E8E4C(v168);
            if (v166)
            {
              sub_29A0E8DB4(v214, v215 + v236 - v171);
              v214 = sub_29A0E8F40();
            }

            v217 = v261;
            *v214 = v216;
            LODWORD(v168) = v214;
          }

          sub_29A0E9048();
          return (v168 + 1 + v213 - v217);
        }

        goto LABEL_177;
      }

      *v168 = 0;
      v197 = v168 + 1;
      v199 = v168;
    }

    if (*v201 == *v200)
    {
      v202 = (v171 + 12);
      v201 = v184 + 12;
      goto LABEL_202;
    }

    v203 = __clz(__rbit64(*v200 ^ *v201)) >> 3;
    v171 = (v171 + v203 + 4);
LABEL_211:
    *v199 += v203;
    goto LABEL_212;
  }

  v19 = &a3[a5];
  v263 = v19;
  if (a4 > 65546)
  {
    if (a4 > 0x7E000000)
    {
      return 0;
    }

    v229 = a4;
    *(v14 + 24) += a4;
    *v14 = v13 + a4;
    *(v14 + 6) = 2;
    v116 = v11 + 2;
    v117 = v15 - 11;
    *(v8 + (((*v11 * v12) >> 50) & 0x3FFC)) = v13;
    v118 = v15 - 12;
    v248 = v15 - 8;
    v252 = v15 - 5;
    v256 = v15;
    v260 = a3;
    v244 = v15 - 6;
    v119 = 255;
    v120 = v11;
LABEL_115:
    v121 = (v120 + 1);
    v122 = *(v120 + 1);
    v123 = v262;
    while (1)
    {
      v124 = v116;
      v125 = ((v122 * v12) >> 50) & 0x3FFC;
      v126 = *(v8 + v125);
      v122 = *v124;
      *(v8 + v125) = v121 - v10;
      if (v126 + 0xFFFF >= (v121 - v10) && *&v10[v126] == *v121)
      {
        break;
      }

      v116 = v124 + (v123++ >> 6);
      v121 = v124;
      if (v116 > v117)
      {
        goto LABEL_169;
      }
    }

    v127 = 0;
    v128 = &v10[v126];
    v129 = v121 - v120;
    v130 = v121 - v120 - 15;
    v131 = v130;
    do
    {
      v132 = v127;
      v133 = &v128[v127];
      v134 = (v121 + v127);
      if (&v128[v127] <= v11 || v134 <= v120)
      {
        break;
      }

      --v131;
      --v127;
    }

    while (*(v134 - 1) == *(v133 - 1));
    v136 = v134 - v120;
    v137 = a3 + 1;
    if (&a3[v134 - v120 + 9 + (v129 + v132) / v119] > v19)
    {
      return 0;
    }

    if ((v129 + v132) < 0xF)
    {
      *a3 = 16 * v136;
    }

    else
    {
      v138 = v132 + v130;
      *a3 = -16;
      if (v132 + v130 > 254)
      {
        v238 = v129 + 239;
        sub_29A0E8F34();
        if (v48 != v49)
        {
          v140 = v141;
        }

        v232 = v139;
        v235 = v140;
        sub_29A0E8F28();
        memset(v142, v143, v144);
        sub_29A0E8F8C();
        v19 = v263;
        v11 = v266;
        v145 = (v238 - v235 + v132) / v119;
        v137 = &a3[v145 + 2];
        v138 = v145 + v232 + v132;
      }

      *v137++ = v138;
    }

    v146 = &v137[v136];
    do
    {
      v147 = *v120++;
      *v137 = v147;
      v137 += 8;
    }

    while (v137 < v146);
    v148 = a3;
    v120 = v134;
    while (1)
    {
      *v146 = v120 - v133;
      a3 = v146 + 2;
      v149 = (v120 + 4);
      v150 = v133 + 4;
      if (v118 <= v120 + 4)
      {
        v151 = v120 + 1;
      }

      else
      {
        if (*v150 != *v149)
        {
          v153 = __clz(__rbit64(*v149 ^ *v150)) >> 3;
          goto LABEL_157;
        }

        v151 = v120 + 3;
        v150 = v133 + 12;
      }

      if (v151 >= v118)
      {
LABEL_145:
        if (v151 < v248 && *v150 == *v151)
        {
          v150 = (v150 + 4);
          ++v151;
        }

        if (v151 < v244 && *v150 == *v151)
        {
          v150 = (v150 + 2);
          v151 = (v151 + 2);
        }

        if (v151 < v252 && *v150 == *v151)
        {
          LODWORD(v151) = v151 + 1;
        }

        v153 = v151 - v149;
      }

      else
      {
        v152 = v151 - v120 - 4;
        while (*v150 == *v151)
        {
          v151 += 2;
          ++v150;
          v152 += 8;
          if (v151 >= v118)
          {
            goto LABEL_145;
          }
        }

        v153 = (__clz(__rbit64(*v151 ^ *v150)) >> 3) + v152;
      }

LABEL_157:
      if (&v146[(v153 + 240) / v119 + 8] > v19)
      {
        return 0;
      }

      v154 = *v148;
      v155 = v153 - 15;
      if (v153 < 0xF)
      {
        *v148 = v154 + v153;
      }

      else
      {
        *v148 = v154 + 15;
        *a3 = -1;
        if (v155 >= 0x3FC)
        {
          v156 = v146 + 6;
          v157 = 4 * ((v153 - 1035) / 0x3FC);
          sub_29A0E8FD4(v137, v11, v157 + 4);
          sub_29A0E8F8C();
          v19 = v263;
          v11 = v266;
          LOWORD(v155) = (v153 - 1035) % 0x3FC;
          a3 = &v156[v157];
        }

        v158 = v155 / v119;
        v159 = &a3[v158];
        *v159 = v155 + v158;
        a3 = v159 + 1;
      }

      v120 = (v120 + v153 + 4);
      if (v120 >= v117)
      {
        goto LABEL_169;
      }

      *(v8 + (((*(v120 - 2) * v12) >> 50) & 0x3FFC)) = v120 - 2 - v10;
      v160 = ((*v120 * v12) >> 50) & 0x3FFC;
      v161 = *(v8 + v160);
      *(v8 + v160) = v120 - v10;
      if (v161 + 0xFFFF < (v120 - v10) || (v133 = &v10[v161], *&v10[v161] != *v120))
      {
        v116 = v120 + 2;
        if (v120 + 2 > v117)
        {
LABEL_169:
          v162 = v256 - v120;
          if (&a3[v256 - v120 + 1 + (v256 - v120 + 240) / 0xFFuLL] > v19)
          {
            return 0;
          }

          if (v162 < 0xF)
          {
            *a3 = 16 * v162;
          }

          else
          {
            v163 = sub_29A0E8DEC();
            if (v166)
            {
              sub_29A0E8FAC(v163, v164 + v229);
              v163 = sub_29A0E90A0();
            }

            sub_29A0E9008(v163, v165);
          }

          sub_29A0E9048();
          return (a3 + 1 + v162 - v260);
        }

        goto LABEL_115;
      }

      *a3 = 0;
      v146 = a3 + 1;
      v148 = a3;
    }
  }

  if (a4 > 0x7E000000)
  {
    return 0;
  }

  *(v14 + 24) += a4;
  *v14 = v13 + a4;
  *(v14 + 6) = 3;
  v20 = v11;
  v21 = a3;
  if (a4 < 0xD)
  {
    goto LABEL_246;
  }

  v250 = v11 + a4;
  v254 = a4;
  v21 = a3;
  v22 = (v17 - 11);
  *(v8 + ((-1640531535 * *v11) >> 19)) = v13;
  v23 = (v17 - 12);
  v242 = (v17 - 8);
  v246 = (v17 - 5);
  v240 = (v17 - 6);
  v24 = 255;
  v25 = -1;
  v258 = v21;
  v20 = v11;
LABEL_9:
  v26 = (v20 + 1);
  v27 = *(v20 + 1);
  v28 = 1;
  v29 = v262;
  do
  {
    v30 = v26;
    v26 = (v26 + v28);
    if (v26 > v22)
    {
      goto LABEL_245;
    }

    v28 = v29++ >> 6;
    v31 = (-1640531535 * v27) >> 19;
    v32 = *(v8 + v31);
    v27 = *v26;
    *(v8 + v31) = v30 - v10;
  }

  while (*&v10[v32] != *v30);
  v33 = 0;
  v34 = &v10[v32];
  v35 = v30 - v20;
  v36 = v30 - v20 - 15;
  v37 = v36;
  do
  {
    v38 = v33;
    v39 = &v34[v33];
    v40 = (v30 + v33);
    if (&v34[v33] <= v11 || v40 <= v20)
    {
      break;
    }

    --v37;
    --v33;
  }

  while (*(v40 - 1) == *(v39 - 1));
  v42 = v40 - v20;
  v43 = v21 + 1;
  if (&v21[v40 - v20 + 9 + (v35 + v38) / v24] > v19)
  {
    return 0;
  }

  if ((v35 + v38) < 0xF)
  {
    *v21 = 16 * v42;
  }

  else
  {
    v44 = v38 + v36;
    *v21 = -16;
    if (v38 + v36 > 254)
    {
      sub_29A0E8EC0();
      if (v48 != v49)
      {
        v45 = v46;
      }

      v230 = v45;
      v233 = v47;
      sub_29A0E8EB0();
      v228 = v50;
      memset(v51, v52, v53);
      sub_29A0E8EA0();
      v11 = v266;
      v54 = (v233 - v230 + v38) / v24;
      v43 = &v21[v54 + 2];
      v44 = v54 + v228 + v38;
    }

    *v43++ = v44;
  }

  v55 = &v43[v42];
  do
  {
    v56 = *v20;
    v20 += 2;
    *v43 = v56;
    v43 += 8;
  }

  while (v43 < v55);
  while (1)
  {
    *v55 = v40 - v39;
    v58 = (v55 + 2);
    v59 = v40 + 1;
    v60 = v39 + 4;
    if (v23 <= (v40 + 1))
    {
      v57 = v40 + 1;
    }

    else
    {
      if (*v60 != *v59)
      {
        v62 = __clz(__rbit64(*v59 ^ *v60)) >> 3;
        goto LABEL_51;
      }

      v57 = v40 + 3;
      v60 = v39 + 12;
    }

    if (v57 >= v23)
    {
LABEL_39:
      if (v57 < v242 && *v60 == *v57)
      {
        v60 = (v60 + 4);
        ++v57;
      }

      if (v57 < v240 && *v60 == *v57)
      {
        v60 = (v60 + 2);
        v57 = (v57 + 2);
      }

      if (v57 < v246 && *v60 == *v57)
      {
        LODWORD(v57) = v57 + 1;
      }

      v62 = v57 - v59;
    }

    else
    {
      v61 = v57 - v40 - 4;
      while (*v60 == *v57)
      {
        v57 += 2;
        ++v60;
        v61 += 8;
        if (v57 >= v23)
        {
          goto LABEL_39;
        }
      }

      v62 = (__clz(__rbit64(*v57 ^ *v60)) >> 3) + v61;
    }

LABEL_51:
    if (&v55[(v62 + 240) / v24 + 8] > v19)
    {
      return 0;
    }

    v63 = *v21;
    v64 = v62 - 15;
    if (v62 < 0xF)
    {
      *v21 = v63 + v62;
    }

    else
    {
      *v21 = v63 + 15;
      *v58 = v25;
      if (v64 >= 0x3FC)
      {
        v65 = v55 + 6;
        v66 = 2 * ((v62 - 1035) / 0x3FC);
        sub_29A0E8FD4(v43, v11, v66 * 2 + 4);
        sub_29A0E8EA0();
        v11 = v266;
        LOWORD(v64) = (v62 - 1035) % 0x3FC;
        v58 = &v65[v66];
      }

      v67 = v64 / v24;
      v68 = v58 + v67;
      *v68 = v64 + v67;
      v58 = (v68 + 1);
    }

    v40 = (v40 + v62 + 4);
    if (v40 >= v22)
    {
      break;
    }

    *(v8 + ((-1640531535 * *(v40 - 2)) >> 19)) = v40 - 2 - v10;
    v69 = (-1640531535 * *v40) >> 19;
    v39 = &v10[*(v8 + v69)];
    *(v8 + v69) = v40 - v10;
    if (*v39 != *v40)
    {
      v21 = v58;
      v20 = v40;
      goto LABEL_9;
    }

    *v58 = 0;
    v55 = v58 + 1;
    v21 = v58;
  }

  v20 = v40;
  v21 = v58;
LABEL_245:
  a4 = v254;
  LODWORD(a3) = v258;
  v17 = v250;
LABEL_246:
  v219 = v17 - v20;
  if (&v21[v17 - v20 + 1 + (v17 - v20 + 240) / 0xFFuLL] > v19)
  {
    return 0;
  }

  if (v219 < 0xF)
  {
    *v21 = 16 * v219;
  }

  else
  {
    v224 = sub_29A0E8E4C(v21);
    if (v166)
    {
      sub_29A0E8F7C();
      sub_29A0E8DB4(v227, v226 - v20);
      v225 = a4 + a3;
      v224 = &v21[a4 + 2];
    }

    *v224 = v225;
    v21 = v224;
  }

  v223 = v21 + 1;
LABEL_255:
  memcpy(v223, v20, v219);
  return (v223 + v219 - a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState_fastReset(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *a2, char *a3, char *a4, signed int a5, int a6)
{
  v6 = a4;
  v7 = a3;
  v9 = this + 0x4000;
  if (a6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a6;
  }

  if (a4 <= 0x7E000000)
  {
    v11 = a4 + a4 / 0xFF + 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = &a2[a4];
  v383 = v10 << 6;
  v13 = &a2[a4];
  v388 = a2;
  if (v11 <= a5)
  {
    if (a4 <= 65546)
    {
      if (*(this + 8194))
      {
        sub_29A0E90E8();
        a2 = v388;
LABEL_350:
        if (v6 > 0x7E000000)
        {
          return 0;
        }

        *(v9 + 6) = v6;
        *v9 = v6;
        *(v9 + 3) = 3;
        v183 = a2;
        v184 = v7;
        if (v6 < 0xD)
        {
          goto LABEL_405;
        }

        v374 = v13;
        v283 = v13 - 11;
        v387 = v13 - 5;
        *(this + ((-1640531535 * *a2) >> 19)) = 0;
        v184 = v7;
        v284 = (v13 - 12);
        v362 = v13 - 6;
        v368 = v13 - 8;
        v285 = 255;
        v286 = -1;
        v382 = v184;
        v183 = a2;
LABEL_354:
        v287 = v183 + 1;
        v288 = *(v183 + 1);
        v289 = 1;
        v290 = v383;
        do
        {
          v291 = v287;
          v287 = (v287 + v289);
          if (v287 > v283)
          {
            goto LABEL_404;
          }

          v289 = v290++ >> 6;
          v292 = (-1640531535 * v288) >> 19;
          v293 = *(this + v292);
          v288 = *v287;
          *(this + v292) = v291 - a2;
        }

        while (*&a2[v293] != *v291);
        v294 = 0;
        v295 = &a2[v293];
        v296 = v291 - v183;
        v297 = v291 - v183 - 15;
        v298 = v297;
        do
        {
          v299 = v298;
          v300 = v294;
          v301 = &v295[v294];
          v302 = v291 + v294;
          if (&v295[v294] <= a2 || v302 <= v183)
          {
            break;
          }

          --v298;
          --v294;
        }

        while (*(v302 - 1) == *(v301 - 1));
        v304 = v302 - v183;
        v305 = v184 + 1;
        if ((v296 + v300) < 0xF)
        {
          *v184 = 16 * v304;
        }

        else
        {
          v306 = v300 + v297;
          *v184 = -16;
          if (v300 + v297 > 254)
          {
            v350 = v296 + 239;
            if (v299 >= 509)
            {
              v307 = 509;
            }

            else
            {
              v307 = v299;
            }

            v356 = v307;
            sub_29A0E8F28();
            v344 = v308;
            memset(v309, v310, v311);
            sub_29A0E9088();
            a2 = v388;
            v312 = (v350 - v356 + v300) / v285;
            v305 = &v184[v312 + 2];
            v306 = v312 + v344 + v300;
          }

          *v305++ = v306;
        }

        v313 = &v305[v304];
        do
        {
          v314 = *v183;
          v183 += 8;
          *v305 = v314;
          v305 += 8;
        }

        while (v305 < v313);
        while (1)
        {
          *v313 = v302 - v301;
          v317 = (v313 + 2);
          v318 = v302 + 4;
          v315 = v301 + 4;
          if (v284 <= (v302 + 4))
          {
            v316 = v302 + 4;
            goto LABEL_390;
          }

          if (*v315 != *v318)
          {
            break;
          }

          v316 = v302 + 12;
          v315 = v301 + 12;
LABEL_390:
          while (v316 < v284)
          {
            if (*v315 != *v316)
            {
              v316 = (v316 + (__clz(__rbit64(*v316 ^ *v315)) >> 3));
              goto LABEL_395;
            }

            ++v316;
            ++v315;
          }

          if (v316 < v368 && *v315 == *v316)
          {
            v315 = (v315 + 4);
            v316 = (v316 + 4);
          }

          if (v316 < v362 && *v315 == *v316)
          {
            v315 = (v315 + 2);
            v316 = (v316 + 2);
          }

          if (v316 < v387 && *v315 == *v316)
          {
            LODWORD(v316) = v316 + 1;
          }

LABEL_395:
          v319 = v316 - v318;
          v302 += v319 + 4;
          v320 = v319 - 15;
          if (v319 < 0xF)
          {
            goto LABEL_399;
          }

          *v184 += 15;
          *v317 = v286;
          if (v320 >= 0x3FC)
          {
            v321 = v313 + 6;
            v322 = v319 - 1035;
            v323 = (v319 - 1035) / 0x3FC;
            v324 = 2 * v323;
            sub_29A0E90D0(v305, a2, v324 * 2 + 4);
            sub_29A0E9088();
            a2 = v388;
            LOWORD(v320) = v322 - 1020 * v323;
            v317 = &v321[v324];
          }

          v325 = v320 / v285;
          v326 = v317 + v325;
          *v326 = v320 + v325;
          v317 = (v326 + 1);
LABEL_400:
          if (v302 >= v283)
          {
            v183 = v302;
            v184 = v317;
LABEL_404:
            LODWORD(v7) = v382;
            v13 = v374;
LABEL_405:
            v178 = v13 - v183;
            goto LABEL_406;
          }

          *(this + ((-1640531535 * *(v302 - 2)) >> 19)) = v302 - 2 - a2;
          v327 = (-1640531535 * *v302) >> 19;
          v301 = &a2[*(this + v327)];
          *(this + v327) = v302 - a2;
          if (*v301 != *v302)
          {
            v184 = v317;
            v183 = v302;
            goto LABEL_354;
          }

          *v317 = 0;
          v313 = v317 + 1;
          v184 = v317;
        }

        v319 = __clz(__rbit64(*v318 ^ *v315)) >> 3;
        v302 += v319 + 4;
LABEL_399:
        *v184 += v319;
        goto LABEL_400;
      }

      v19 = (this + 16390);
      if (*(this + 8195) == 3)
      {
        v20 = *v9;
        if (a4 <= 4095 && (*v9 + a4) < 0xFFFF)
        {
          goto LABEL_289;
        }
      }

      else if (!*(this + 8195))
      {
        v20 = *v9;
LABEL_289:
        *(this + 4102) = 0;
        *(this + 16392) = 0u;
        if (!v20)
        {
          goto LABEL_350;
        }

        if (a4 > 0x7E000000)
        {
          return 0;
        }

        *(this + 4102) = a4;
        *v9 = v20 + a4;
        *(this + 8195) = 3;
        v231 = a2;
        v232 = a3;
        if (a4 < 0xD)
        {
LABEL_345:
          LODWORD(v178) = v13 - v231;
          if ((v13 - v231) < 0xF)
          {
            *v232 = 16 * v178;
          }

          else
          {
            v279 = sub_29A0E8DEC();
            if (v127)
            {
              sub_29A0E8E10(v279, v280 + v6 - v231);
              sub_29A0E8F9C();
              v279 = (v282 + 2);
            }

            sub_29A0E9008(v279, v281);
          }

          v332 = v232 + 1;
          goto LABEL_413;
        }

        v373 = &a2[a4];
        v377 = a4;
        v233 = &a2[-v20];
        v232 = a3;
        v234 = (v13 - 11);
        v386 = v13 - 5;
        v235 = a2 + 2;
        *(this + ((-1640531535 * *a2) >> 19)) = v20;
        v236 = (v13 - 12);
        v361 = v13 - 6;
        v367 = v13 - 8;
        v231 = a2;
        v381 = a3;
LABEL_293:
        v237 = v231 + 1;
        v238 = *(v231 + 1);
        v239 = v383;
        while (1)
        {
          v240 = (-1640531535 * v238) >> 19;
          v241 = *(this + v240);
          v242 = v235;
          v238 = *v235;
          *(this + v240) = v237 - v233;
          if (v20 <= v241 && *&v233[v241] == *v237)
          {
            break;
          }

          v235 = (v235 + (v239++ >> 6));
          v237 = v242;
          if (v235 > v234)
          {
LABEL_344:
            v6 = v377;
            LODWORD(v7) = v381;
            v13 = v373;
            goto LABEL_345;
          }
        }

        v243 = 0;
        v244 = &v233[v241];
        v245 = v237 - v231;
        v246 = v237 - v231 - 15;
        v247 = v246;
        do
        {
          v248 = v243;
          v249 = &v244[v243];
          v250 = v237 + v243;
          if (&v244[v243] <= a2 || v250 <= v231)
          {
            break;
          }

          --v247;
          --v243;
        }

        while (*(v250 - 1) == *(v249 - 1));
        v252 = v250 - v231;
        v253 = v232 + 1;
        if ((v245 + v248) < 0xF)
        {
          *v232 = 16 * v252;
        }

        else
        {
          v254 = v248 + v246;
          *v232 = -16;
          if (v248 + v246 > 254)
          {
            v343 = v245 + 239;
            sub_29A0E8F34();
            if (v49 != v50)
            {
              v255 = v256;
            }

            v349 = v255;
            sub_29A0E8EB0();
            v355 = v257;
            v338 = v258;
            memset(v259, v260, v261);
            v252 = v355;
            a2 = v388;
            v262 = (v343 - v349 + v248) / 0xFFu;
            v253 = &v232[v262 + 2];
            v254 = v262 + v338 + v248;
          }

          *v253++ = v254;
        }

        v263 = &v253[v252];
        do
        {
          v264 = *v231;
          v231 += 8;
          *v253 = v264;
          v253 += 8;
        }

        while (v253 < v263);
        v265 = v232;
        v231 = v250;
        while (1)
        {
          *v263 = v231 - v249;
          v232 = v263 + 2;
          v266 = v231 + 4;
          v267 = v249 + 4;
          if (v236 > (v231 + 4))
          {
            break;
          }

          v268 = v231 + 4;
LABEL_318:
          while (v268 < v236)
          {
            if (*v267 != *v268)
            {
              v268 = (v268 + (__clz(__rbit64(*v268 ^ *v267)) >> 3));
              goto LABEL_323;
            }

            ++v268;
            ++v267;
          }

          if (v268 < v367 && *v267 == *v268)
          {
            v267 = (v267 + 4);
            v268 = (v268 + 4);
          }

          if (v268 < v361 && *v267 == *v268)
          {
            v267 = (v267 + 2);
            v268 = (v268 + 2);
          }

          if (v268 < v386 && *v267 == *v268)
          {
            LODWORD(v268) = v268 + 1;
          }

LABEL_323:
          v269 = v268 - v266;
          v231 += v269 + 4;
          v270 = v269 - 15;
          if (v269 < 0xF)
          {
            goto LABEL_327;
          }

          *v265 += 15;
          *v232 = -1;
          if (v270 >= 0x3FC)
          {
            v271 = v263 + 6;
            v272 = v269 - 1035;
            v273 = (v269 - 1035) / 0x3FC;
            v274 = 2 * v273;
            memset(v263 + 6, 255, v274 * 2 + 4);
            a2 = v388;
            LOWORD(v270) = v272 - 1020 * v273;
            v232 = &v271[v274];
          }

          v275 = v270 / 0xFFu;
          v276 = &v232[v275];
          *v276 = v270 + v275;
          v232 = v276 + 1;
LABEL_328:
          if (v231 >= v234)
          {
            goto LABEL_344;
          }

          *(this + ((-1640531535 * *(v231 - 2)) >> 19)) = v231 - 2 - v233;
          v277 = (-1640531535 * *v231) >> 19;
          v278 = *(this + v277);
          *(this + v277) = v231 - v233;
          if (v20 > v278 || (v249 = &v233[v278], *&v233[v278] != *v231))
          {
            v235 = v231 + 2;
            if ((v231 + 2) > v234)
            {
              goto LABEL_344;
            }

            goto LABEL_293;
          }

          *v232 = 0;
          v263 = v232 + 1;
          v265 = v232;
        }

        if (*v267 == *v266)
        {
          v268 = v231 + 12;
          v267 = v249 + 12;
          goto LABEL_318;
        }

        v269 = __clz(__rbit64(*v266 ^ *v267)) >> 3;
        v231 += v269 + 4;
LABEL_327:
        *v265 += v269;
        goto LABEL_328;
      }

      sub_29A0E9100();
      a2 = v388;
      *v19 = 0;
      *(v9 + 14) = 0;
      *(v9 + 20) = 0;
      goto LABEL_350;
    }

    if (*(this + 8194))
    {
      sub_29A0E90E8();
      a2 = v388;
      v16 = 0;
    }

    else
    {
      if (*(this + 8195))
      {
        *(this + 8195) = 0;
        sub_29A0E9100();
        a2 = v388;
        v16 = 0;
      }

      else
      {
        v16 = *v9;
        if (*v9)
        {
          v16 += 0x10000;
          *v9 = v16;
        }
      }

      *(this + 4102) = 0;
      *(this + 16392) = 0u;
    }

    if (v6 > 0x7E000000)
    {
      return 0;
    }

    v75 = v12;
    v76 = &a2[-v16];
    v335 = v6;
    *(v9 + 6) = v6;
    *v9 = v16 + v6;
    *(v9 + 3) = 2;
    v77 = a2 + 2;
    v78 = (v75 - 11);
    *(this + (((0xCF1BBCDCBB000000 * *a2) >> 50) & 0x3FFC)) = v16;
    v385 = (v75 - 5);
    v79 = (v75 - 12);
    v370 = (v75 - 8);
    v376 = v75;
    v364 = (v75 - 6);
    v28 = v7;
    v27 = a2;
    v378 = v7;
LABEL_94:
    v80 = (v27 + 1);
    v81 = *(v27 + 1);
    v82 = v383;
    while (1)
    {
      v83 = v77;
      v84 = ((0xCF1BBCDCBB000000 * v81) >> 50) & 0x3FFC;
      v85 = *(this + v84);
      v81 = *v83;
      *(this + v84) = v80 - v76;
      if (v85 + 0xFFFF >= (v80 - v76) && *&v76[v85] == *v80)
      {
        break;
      }

      v77 = v83 + (v82++ >> 6);
      v80 = v83;
      if (v77 > v78)
      {
        goto LABEL_146;
      }
    }

    v86 = 0;
    v87 = &v76[v85];
    v88 = v80 - v27;
    v89 = v80 - v27 - 15;
    v90 = v80 - v27 - 14;
    v91 = v89;
    do
    {
      v92 = v91;
      v93 = v86;
      v94 = &v87[v86];
      v95 = (v80 + v86);
      if (&v87[v86] <= a2 || v95 <= v27)
      {
        break;
      }

      --v91;
      --v86;
    }

    while (*(v95 - 1) == *(v94 - 1));
    v97 = v95 - v27;
    v98 = v28 + 1;
    if ((v88 + v93) < 0xF)
    {
      *v28 = 16 * v97;
    }

    else
    {
      v99 = v93 + v89;
      *v28 = -16;
      if (v93 + v89 > 254)
      {
        v340 = v88 + 239;
        if (v92 >= 509)
        {
          v100 = 509;
        }

        else
        {
          v100 = v92;
        }

        v346 = v100;
        v352 = v90;
        sub_29A0E8F28();
        v358 = v101;
        memset(v102, v103, v104);
        v97 = v358;
        a2 = v388;
        v105 = (v340 - v346 + v93) / 0xFFu;
        v98 = &v28[v105 + 2];
        v99 = v105 + v352 + v93;
      }

      *v98++ = v99;
    }

    v106 = &v98[v97];
    do
    {
      v107 = *v27++;
      *v98 = v107;
      v98 += 8;
    }

    while (v98 < v106);
    v108 = v28;
    v27 = v95;
    while (1)
    {
      *v106 = v27 - v94;
      v28 = v106 + 2;
      v109 = (v27 + 4);
      v110 = v94 + 4;
      if (v79 > v27 + 4)
      {
        break;
      }

      v111 = (v27 + 4);
LABEL_120:
      while (v111 < v79)
      {
        if (*v110 != *v111)
        {
          v111 = (v111 + (__clz(__rbit64(*v111 ^ *v110)) >> 3));
          goto LABEL_125;
        }

        ++v111;
        ++v110;
      }

      if (v111 < v370 && *v110 == *v111)
      {
        v110 = (v110 + 4);
        v111 = (v111 + 4);
      }

      if (v111 < v364 && *v110 == *v111)
      {
        v110 = (v110 + 2);
        v111 = (v111 + 2);
      }

      if (v111 < v385 && *v110 == *v111)
      {
        LODWORD(v111) = v111 + 1;
      }

LABEL_125:
      v112 = v111 - v109;
      v27 = (v27 + v112 + 4);
      v113 = v112 - 15;
      if (v112 < 0xF)
      {
        goto LABEL_129;
      }

      *v108 += 15;
      *v28 = -1;
      if (v113 >= 0x3FC)
      {
        v114 = v106 + 6;
        v115 = v112 - 1035;
        v116 = (v112 - 1035) / 0x3FC;
        v117 = 2 * v116;
        v98 = sub_29A0E90D0(v98, a2, v117 * 2 + 4);
        a2 = v388;
        LOWORD(v113) = v115 - 1020 * v116;
        v28 = &v114[v117];
      }

      v118 = v113 / 0xFFu;
      v119 = &v28[v118];
      *v119 = v113 + v118;
      v28 = v119 + 1;
LABEL_130:
      if (v27 >= v78)
      {
        goto LABEL_146;
      }

      *(this + (((0xCF1BBCDCBB000000 * *(v27 - 2)) >> 50) & 0x3FFC)) = v27 - 2 - v76;
      v120 = ((0xCF1BBCDCBB000000 * *v27) >> 50) & 0x3FFC;
      v121 = *(this + v120);
      *(this + v120) = v27 - v76;
      if (v121 + 0xFFFF < (v27 - v76) || (v94 = &v76[v121], *&v76[v121] != *v27))
      {
        v77 = v27 + 2;
        if (v27 + 2 > v78)
        {
LABEL_146:
          v74 = v376 - v27;
LABEL_147:
          if (v74 < 0xF)
          {
            *v28 = 16 * v74;
            v125 = v378;
          }

          else
          {
            v122 = sub_29A0E8E4C(v28);
            v125 = v378;
            if (v127)
            {
              sub_29A0E8DB4(v122, v123 + v335 - v27);
              v122 = sub_29A0E8F40();
            }

            *v122 = v124;
            v28 = v122;
          }

          memcpy(v28 + 1, v27, v74);
          return (v28 + 1 + v74 - v125);
        }

        goto LABEL_94;
      }

      *v28 = 0;
      v106 = v28 + 1;
      v108 = v28;
    }

    if (*v110 == *v109)
    {
      v111 = (v27 + 12);
      v110 = v94 + 12;
      goto LABEL_120;
    }

    v112 = __clz(__rbit64(*v109 ^ *v110)) >> 3;
    v27 = (v27 + v112 + 4);
LABEL_129:
    *v108 += v112;
    goto LABEL_130;
  }

  v14 = &a3[a5];
  v384 = v14;
  if (a4 > 65546)
  {
    if (*(this + 8194))
    {
      sub_29A0E90E8();
      v14 = v384;
      a2 = v388;
      v15 = 0;
    }

    else
    {
      if (*(this + 8195))
      {
        *(this + 8195) = 0;
        sub_29A0E9100();
        v14 = v384;
        a2 = v388;
        v15 = 0;
      }

      else
      {
        v15 = *v9;
        if (*v9)
        {
          v15 += 0x10000;
          *v9 = v15;
        }
      }

      *(this + 4102) = 0;
      *(this + 16392) = 0u;
    }

    if (v6 > 0x7E000000)
    {
      return 0;
    }

    v21 = v7;
    v22 = &a2[-v15];
    v335 = v6;
    *(v9 + 6) = v6;
    *v9 = v15 + v6;
    *(v9 + 3) = 2;
    v23 = a2 + 2;
    v24 = (v12 - 11);
    *(this + (((0xCF1BBCDCBB000000 * *a2) >> 50) & 0x3FFC)) = v15;
    v369 = v12 - 5;
    v25 = v12;
    v26 = (v12 - 12);
    v375 = v25;
    v378 = v21;
    v357 = (v25 - 6);
    v363 = (v25 - 8);
    v27 = a2;
    v28 = v21;
    while (1)
    {
      v29 = (v27 + 1);
      v30 = *(v27 + 1);
      v31 = v383;
      while (1)
      {
        v32 = v23;
        v33 = ((0xCF1BBCDCBB000000 * v30) >> 50) & 0x3FFC;
        v34 = *(this + v33);
        v30 = *v32;
        *(this + v33) = v29 - v22;
        if (v34 + 0xFFFF >= (v29 - v22) && *&v22[v34] == *v29)
        {
          break;
        }

        v23 = v32 + (v31++ >> 6);
        v29 = v32;
        if (v23 > v24)
        {
          goto LABEL_87;
        }
      }

      v35 = 0;
      v36 = &v22[v34];
      v37 = v29 - v27;
      v38 = v29 - v27 - 15;
      v39 = v38;
      do
      {
        v40 = v35;
        v41 = &v36[v35];
        v42 = (v29 + v35);
        if (&v36[v35] <= a2 || v42 <= v27)
        {
          break;
        }

        --v39;
        --v35;
      }

      while (*(v42 - 1) == *(v41 - 1));
      v44 = v42 - v27;
      v45 = v28 + 1;
      if (&v28[v42 - v27 + 9 + (v37 + v40) / 0xFFu] > v14)
      {
        return 0;
      }

      if ((v37 + v40) < 0xF)
      {
        *v28 = 16 * v44;
      }

      else
      {
        v46 = v40 + v38;
        *v28 = -16;
        if (v40 + v38 > 254)
        {
          v351 = v37 + 239;
          sub_29A0E8F34();
          if (v49 != v50)
          {
            v47 = v48;
          }

          v345 = v47;
          sub_29A0E8F28();
          v339 = v51;
          v53 = v52;
          memset(v54, v55, v56);
          v44 = v53;
          v14 = v384;
          a2 = v388;
          v57 = (v351 - v345 + v40) / 0xFFu;
          v45 = &v28[v57 + 2];
          v46 = v57 + v339 + v40;
        }

        *v45++ = v46;
      }

      v58 = &v45[v44];
      do
      {
        v59 = *v27++;
        *v45 = v59;
        v45 += 8;
      }

      while (v45 < v58);
      v60 = v28;
      v27 = v42;
      while (1)
      {
        *v58 = v27 - v41;
        v28 = v58 + 2;
        v61 = (v27 + 4);
        v62 = v41 + 4;
        if (v26 <= v27 + 4)
        {
          v63 = v27 + 1;
        }

        else
        {
          if (*v62 != *v61)
          {
            v65 = __clz(__rbit64(*v61 ^ *v62)) >> 3;
            goto LABEL_75;
          }

          v63 = v27 + 3;
          v62 = v41 + 12;
        }

        if (v63 >= v26)
        {
LABEL_63:
          if (v63 < v363 && *v62 == *v63)
          {
            v62 = (v62 + 4);
            ++v63;
          }

          if (v63 < v357 && *v62 == *v63)
          {
            v62 = (v62 + 2);
            v63 = (v63 + 2);
          }

          if (v63 < v369 && *v62 == *v63)
          {
            LODWORD(v63) = v63 + 1;
          }

          v65 = v63 - v61;
        }

        else
        {
          v64 = v63 - v27 - 4;
          while (*v62 == *v63)
          {
            v63 += 2;
            ++v62;
            v64 += 8;
            if (v63 >= v26)
            {
              goto LABEL_63;
            }
          }

          v65 = (__clz(__rbit64(*v63 ^ *v62)) >> 3) + v64;
        }

LABEL_75:
        if (&v58[(v65 + 240) / 0xFF + 8] > v14)
        {
          return 0;
        }

        v66 = *v60;
        v67 = v65 - 15;
        if (v65 < 0xF)
        {
          *v60 = v66 + v65;
        }

        else
        {
          *v60 = v66 + 15;
          *v28 = -1;
          if (v67 >= 0x3FC)
          {
            v68 = v58 + 6;
            v69 = 2 * ((v65 - 1035) / 0x3FC);
            v45 = sub_29A0E90D0(v45, a2, v69 * 2 + 4);
            v14 = v384;
            a2 = v388;
            LOWORD(v67) = (v65 - 1035) % 0x3FC;
            v28 = &v68[v69];
          }

          v70 = v67 / 0xFFu;
          v71 = &v28[v70];
          *v71 = v67 + v70;
          v28 = v71 + 1;
        }

        v27 = (v27 + v65 + 4);
        if (v27 >= v24)
        {
          goto LABEL_87;
        }

        *(this + (((0xCF1BBCDCBB000000 * *(v27 - 2)) >> 50) & 0x3FFC)) = v27 - 2 - v22;
        v72 = ((0xCF1BBCDCBB000000 * *v27) >> 50) & 0x3FFC;
        v73 = *(this + v72);
        *(this + v72) = v27 - v22;
        if (v73 + 0xFFFF < (v27 - v22))
        {
          break;
        }

        v41 = &v22[v73];
        if (*&v22[v73] != *v27)
        {
          break;
        }

        *v28 = 0;
        v58 = v28 + 1;
        v60 = v28;
      }

      v23 = v27 + 2;
      if (v27 + 2 > v24)
      {
LABEL_87:
        v74 = v375 - v27;
        if (&v28[v375 - v27 + 1 + (v375 - v27 + 240) / 0xFFuLL] > v14)
        {
          return 0;
        }

        goto LABEL_147;
      }
    }
  }

  if (*(this + 8194))
  {
    sub_29A0E90E8();
    v14 = v384;
    a2 = v388;
    goto LABEL_225;
  }

  v17 = (this + 16390);
  if (*(this + 8195) != 3)
  {
    if (!*(this + 8195))
    {
      v18 = *v9;
      goto LABEL_160;
    }

LABEL_159:
    sub_29A0E9100();
    v14 = v384;
    a2 = v388;
    *v17 = 0;
    *(v9 + 14) = 0;
    *(v9 + 20) = 0;
    goto LABEL_225;
  }

  v18 = *v9;
  v127 = a4 > 4095 || (*v9 + a4) >= 0xFFFF;
  if (v127)
  {
    goto LABEL_159;
  }

LABEL_160:
  *(this + 4102) = 0;
  *(this + 16392) = 0u;
  if (v18)
  {
    if (a4 > 0x7E000000)
    {
      return 0;
    }

    *(this + 4102) = a4;
    *v9 = v18 + a4;
    *(this + 8195) = 3;
    v128 = a2;
    v129 = a3;
    if (a4 >= 0xD)
    {
      v371 = &a2[a4];
      v130 = &a2[-v18];
      v131 = (v13 - 11);
      v132 = a2 + 2;
      *(this + ((-1640531535 * *a2) >> 19)) = v18;
      v129 = v7;
      v133 = (v13 - 12);
      v353 = v13 - 8;
      v359 = v13 - 5;
      v347 = v13 - 6;
      v128 = a2;
      v379 = v129;
      v365 = v18;
LABEL_164:
      v134 = v128 + 1;
      v135 = *(v128 + 1);
      v136 = v383;
      while (1)
      {
        v137 = (-1640531535 * v135) >> 19;
        v138 = *(this + v137);
        v139 = v132;
        v135 = *v132;
        *(this + v137) = v134 - v130;
        if (v18 <= v138 && *&v130[v138] == *v134)
        {
          break;
        }

        v132 = (v132 + (v136++ >> 6));
        v134 = v139;
        if (v132 > v131)
        {
LABEL_218:
          LODWORD(v7) = v379;
          v13 = v371;
          goto LABEL_219;
        }
      }

      v140 = 0;
      v141 = &v130[v138];
      v142 = v134 - v128;
      v143 = v134 - v128 - 15;
      v144 = v143;
      do
      {
        v145 = v140;
        v146 = &v141[v140];
        v147 = v134 + v140;
        if (&v141[v140] <= a2 || v147 <= v128)
        {
          break;
        }

        --v144;
        --v140;
      }

      while (*(v147 - 1) == *(v146 - 1));
      v149 = v147 - v128;
      v150 = v129 + 1;
      if (&v129[v147 - v128 + 9 + (v142 + v145) / 0xFFu] > v14)
      {
        return 0;
      }

      if ((v142 + v145) < 0xF)
      {
        *v129 = 16 * v149;
      }

      else
      {
        v151 = v145 + v143;
        *v129 = -16;
        if (v145 + v143 > 254)
        {
          sub_29A0E8EC0();
          if (v49 != v50)
          {
            v153 = v154;
          }

          v334 = v153;
          v336 = v155;
          v341 = v152;
          sub_29A0E8F28();
          v333 = v156;
          memset(v157, v158, v159);
          v131 = v341;
          v14 = v384;
          a2 = v388;
          v160 = (v336 - v334 + v145) / 0xFFu;
          v150 = &v129[v160 + 2];
          v151 = v160 + v333 + v145;
        }

        *v150++ = v151;
      }

      v161 = &v150[v149];
      do
      {
        v162 = *v128;
        v128 += 8;
        *v150 = v162;
        v150 += 8;
      }

      while (v150 < v161);
      v163 = v129;
      v128 = v147;
      while (1)
      {
        *v161 = v128 - v146;
        v129 = v161 + 2;
        v164 = v128 + 4;
        v165 = v146 + 4;
        if (v133 <= (v128 + 4))
        {
          v166 = v128 + 4;
        }

        else
        {
          if (*v165 != *v164)
          {
            v168 = __clz(__rbit64(*v164 ^ *v165)) >> 3;
            goto LABEL_206;
          }

          v166 = v128 + 12;
          v165 = v146 + 12;
        }

        if (v166 >= v133)
        {
LABEL_194:
          if (v166 < v353 && *v165 == *v166)
          {
            v165 = (v165 + 4);
            ++v166;
          }

          if (v166 < v347 && *v165 == *v166)
          {
            v165 = (v165 + 2);
            v166 = (v166 + 2);
          }

          if (v166 < v359 && *v165 == *v166)
          {
            LODWORD(v166) = v166 + 1;
          }

          v168 = v166 - v164;
        }

        else
        {
          v167 = v166 - v128 - 4;
          while (*v165 == *v166)
          {
            v166 += 2;
            ++v165;
            v167 += 8;
            if (v166 >= v133)
            {
              goto LABEL_194;
            }
          }

          v168 = (__clz(__rbit64(*v166 ^ *v165)) >> 3) + v167;
        }

LABEL_206:
        if (&v161[(v168 + 240) / 0xFF + 8] > v14)
        {
          return 0;
        }

        v169 = *v163;
        v170 = v168 - 15;
        if (v168 < 0xF)
        {
          *v163 = v169 + v168;
        }

        else
        {
          *v163 = v169 + 15;
          *v129 = -1;
          if (v170 >= 0x3FC)
          {
            v171 = v161 + 6;
            v172 = 2 * ((v168 - 1035) / 0x3FC);
            v173 = v131;
            memset(v161 + 6, 255, v172 * 2 + 4);
            v131 = v173;
            v18 = v365;
            v14 = v384;
            a2 = v388;
            LOWORD(v170) = (v168 - 1035) % 0x3FC;
            v129 = &v171[v172];
          }

          v174 = v170 / 0xFFu;
          v175 = &v129[v174];
          *v175 = v170 + v174;
          v129 = v175 + 1;
        }

        v128 += v168 + 4;
        if (v128 >= v131)
        {
          goto LABEL_218;
        }

        *(this + ((-1640531535 * *(v128 - 2)) >> 19)) = v128 - 2 - v130;
        v176 = (-1640531535 * *v128) >> 19;
        v177 = *(this + v176);
        *(this + v176) = v128 - v130;
        if (v18 > v177 || (v146 = &v130[v177], *&v130[v177] != *v128))
        {
          v132 = v128 + 2;
          if ((v128 + 2) > v131)
          {
            goto LABEL_218;
          }

          goto LABEL_164;
        }

        *v129 = 0;
        v161 = v129 + 1;
        v163 = v129;
      }
    }

LABEL_219:
    v178 = v13 - v128;
    if (&v129[v13 - v128 + 1 + (v13 - v128 + 240) / 0xFFuLL] > v14)
    {
      return 0;
    }

    if (v178 < 0xF)
    {
      *v129 = 16 * v178;
    }

    else
    {
      v179 = sub_29A0E8E4C(v129);
      if (v127)
      {
        sub_29A0E8F7C();
        sub_29A0E8DB4(v182, v181 - v128);
        v179 = sub_29A0E8F40();
      }

      *v179 = v180;
      LODWORD(v129) = v179;
    }

    v332 = v129 + 1;
LABEL_413:
    sub_29A0E902C();
    return (v332 + v178 - v7);
  }

LABEL_225:
  if (v6 > 0x7E000000)
  {
    return 0;
  }

  *(v9 + 6) = v6;
  *v9 = v6;
  *(v9 + 3) = 3;
  v183 = a2;
  v184 = v7;
  if (v6 < 0xD)
  {
    goto LABEL_281;
  }

  v372 = v13;
  v185 = v13 - 11;
  *(this + ((-1640531535 * *a2) >> 19)) = 0;
  v184 = v7;
  v186 = (v13 - 12);
  v360 = v13 - 8;
  v366 = v13 - 5;
  v354 = v13 - 6;
  v187 = 255;
  v188 = -1;
  v380 = v184;
  v183 = a2;
LABEL_228:
  v189 = v183 + 1;
  v190 = *(v183 + 1);
  v191 = 1;
  v192 = v383;
  do
  {
    v193 = v189;
    v189 = (v189 + v191);
    if (v189 > v185)
    {
      goto LABEL_280;
    }

    v191 = v192++ >> 6;
    v194 = (-1640531535 * v190) >> 19;
    v195 = *(this + v194);
    v190 = *v189;
    *(this + v194) = v193 - a2;
  }

  while (*&a2[v195] != *v193);
  v196 = 0;
  v197 = &a2[v195];
  v198 = v193 - v183;
  v199 = v193 - v183 - 15;
  v200 = v199;
  do
  {
    v201 = v196;
    v202 = &v197[v196];
    v203 = v193 + v196;
    if (&v197[v196] <= a2 || v203 <= v183)
    {
      break;
    }

    --v200;
    --v196;
  }

  while (*(v203 - 1) == *(v202 - 1));
  v205 = v203 - v183;
  v206 = v184 + 1;
  if (&v184[v203 - v183 + 9 + (v198 + v201) / v187] > v14)
  {
    return 0;
  }

  if ((v198 + v201) < 0xF)
  {
    *v184 = 16 * v205;
  }

  else
  {
    v207 = v201 + v199;
    *v184 = -16;
    if (v201 + v199 > 254)
    {
      v342 = v198 + 239;
      sub_29A0E8F34();
      if (v49 != v50)
      {
        v208 = v209;
      }

      v348 = v208;
      sub_29A0E8EB0();
      v337 = v210;
      memset(v211, v212, v213);
      sub_29A0E8EA0();
      a2 = v388;
      v214 = (v342 - v348 + v201) / v187;
      v206 = &v184[v214 + 2];
      v207 = v214 + v337 + v201;
    }

    *v206++ = v207;
  }

  v215 = &v206[v205];
  do
  {
    v216 = *v183;
    v183 += 8;
    *v206 = v216;
    v206 += 8;
  }

  while (v206 < v215);
  while (1)
  {
    *v215 = v203 - v202;
    v218 = (v215 + 2);
    v219 = v203 + 4;
    v220 = v202 + 4;
    if (v186 <= (v203 + 4))
    {
      v217 = v203 + 4;
    }

    else
    {
      if (*v220 != *v219)
      {
        v222 = __clz(__rbit64(*v219 ^ *v220)) >> 3;
        goto LABEL_270;
      }

      v217 = v203 + 12;
      v220 = v202 + 12;
    }

    if (v217 >= v186)
    {
LABEL_258:
      if (v217 < v360 && *v220 == *v217)
      {
        v220 = (v220 + 4);
        ++v217;
      }

      if (v217 < v354 && *v220 == *v217)
      {
        v220 = (v220 + 2);
        v217 = (v217 + 2);
      }

      if (v217 < v366 && *v220 == *v217)
      {
        LODWORD(v217) = v217 + 1;
      }

      v222 = v217 - v219;
    }

    else
    {
      v221 = v217 - v203 - 4;
      while (*v220 == *v217)
      {
        v217 += 2;
        ++v220;
        v221 += 8;
        if (v217 >= v186)
        {
          goto LABEL_258;
        }
      }

      v222 = (__clz(__rbit64(*v217 ^ *v220)) >> 3) + v221;
    }

LABEL_270:
    if (&v215[(v222 + 240) / v187 + 8] > v14)
    {
      return 0;
    }

    v223 = *v184;
    v224 = v222 - 15;
    if (v222 < 0xF)
    {
      *v184 = v223 + v222;
    }

    else
    {
      *v184 = v223 + 15;
      *v218 = v188;
      if (v224 >= 0x3FC)
      {
        v225 = v215 + 6;
        v226 = 2 * ((v222 - 1035) / 0x3FC);
        sub_29A0E90D0(v206, a2, v226 * 2 + 4);
        sub_29A0E8EA0();
        a2 = v388;
        LOWORD(v224) = (v222 - 1035) % 0x3FC;
        v218 = &v225[v226];
      }

      v227 = v224 / v187;
      v228 = v218 + v227;
      *v228 = v224 + v227;
      v218 = (v228 + 1);
    }

    v203 += v222 + 4;
    if (v203 >= v185)
    {
      break;
    }

    *(this + ((-1640531535 * *(v203 - 2)) >> 19)) = v203 - 2 - a2;
    v229 = (-1640531535 * *v203) >> 19;
    v202 = &a2[*(this + v229)];
    *(this + v229) = v203 - a2;
    if (*v202 != *v203)
    {
      v184 = v218;
      v183 = v203;
      goto LABEL_228;
    }

    *v218 = 0;
    v215 = v218 + 1;
    v184 = v218;
  }

  v183 = v203;
  v184 = v218;
LABEL_280:
  LODWORD(v7) = v380;
  v13 = v372;
LABEL_281:
  v178 = v13 - v183;
  if (&v184[v13 - v183 + 1 + (v13 - v183 + 240) / 0xFFuLL] <= v14)
  {
LABEL_406:
    if (v178 < 0xF)
    {
      *v184 = 16 * v178;
    }

    else
    {
      v328 = sub_29A0E8E4C(v184);
      if (v127)
      {
        sub_29A0E8F7C();
        sub_29A0E8DB4(v331, v330 - v183);
        v328 = sub_29A0E8F40();
      }

      *v328 = v329;
      LODWORD(v184) = v328;
    }

    v332 = v184 + 1;
    goto LABEL_413;
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v10 = sub_29A0E8E34(v3, v4, v5, v6, v7, v7, v8, v9, v15);
  pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState(v10, v11, v12, v13, v14);
  sub_29A0E9094();
}

void pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_default(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v11 = sub_29A0E8E34(v3, v4, v5, v6, v7, v8, v9, v10, v16);
  pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState(v11, v12, v13, v14, v15);
  sub_29A0E9094();
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_force(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v3;
  bzero(v145, 0x4020uLL);
  v13 = &v11[v7];
  v14 = v5 << 6;
  v144 = v13;
  if (v9 > 65546)
  {
    if (v9 > 0x7E000000)
    {
      return 0;
    }

    v123 = v9;
    v65 = v12 + v9;
    v66 = (v65 - 11);
    v137 = (v65 - 5);
    v139 = v65;
    v148 = v9;
    v146 = v9;
    v67 = v12 + 2;
    *(v145 + (((0xCF1BBCDCBB000000 * *v12) >> 50) & 0x3FFC)) = 0;
    v147 = 2;
    v68 = (v65 - 12);
    v133 = (v65 - 6);
    v135 = (v65 - 8);
    v69 = v11;
    v70 = v12;
    v141 = v69;
    v143 = v5 << 6;
LABEL_58:
    v71 = (v70 + 1);
    v72 = *(v70 + 1);
    v73 = v14;
    while (1)
    {
      v74 = v67;
      v75 = ((0xCF1BBCDCBB000000 * v72) >> 50) & 0x3FFC;
      v76 = *(v145 + v75);
      v72 = *v74;
      *(v145 + v75) = v71 - v12;
      if (v76 + 0xFFFF >= (v71 - v12) && *(v12 + v76) == *v71)
      {
        break;
      }

      v67 = v74 + (v73++ >> 6);
      v71 = v74;
      if (v67 > v66)
      {
        goto LABEL_112;
      }
    }

    v77 = 0;
    v78 = v12 + v76;
    v79 = v71 - v70;
    v80 = v71 - v70 - 15;
    v81 = v80;
    do
    {
      v82 = v77;
      v83 = &v78[v77];
      v84 = (v71 + v77);
      if (&v78[v77] <= v12 || v84 <= v70)
      {
        break;
      }

      --v81;
      --v77;
    }

    while (*(v84 - 1) == *(v83 - 1));
    v86 = v84 - v70;
    v87 = v69 + 1;
    if (&v69[v84 - v70 + 9 + (v79 + v82) / 0xFFu] > v13)
    {
      return 0;
    }

    if ((v79 + v82) < 0xF)
    {
      *v69 = 16 * v86;
    }

    else
    {
      v88 = v82 + v80;
      *v69 = -16;
      if (v82 + v80 > 254)
      {
        sub_29A0E8EC0();
        if (v42 != v43)
        {
          v89 = v90;
        }

        v127 = v89;
        v129 = v91;
        sub_29A0E8EB0();
        v125 = v92;
        v131 = v93;
        memset(v94, v95, v96);
        v86 = v131;
        v13 = v144;
        v97 = (v129 - v127 + v82) / 0xFFu;
        v87 = &v69[v97 + 2];
        v88 = v97 + v125 + v82;
      }

      *v87 = v88;
      v87 = (v87 + 1);
    }

    v98 = (v87 + v86);
    do
    {
      v99 = *v70++;
      *v87++ = v99;
    }

    while (v87 < v98);
    v100 = v69;
    v70 = v84;
    while (1)
    {
      *v98 = v70 - v83;
      v69 = v98 + 1;
      v101 = (v70 + 4);
      v102 = v83 + 4;
      if (v68 <= v70 + 4)
      {
        v103 = v70 + 1;
      }

      else
      {
        if (*v102 != *v101)
        {
          v105 = __clz(__rbit64(*v101 ^ *v102)) >> 3;
          goto LABEL_100;
        }

        v103 = v70 + 3;
        v102 = v83 + 12;
      }

      if (v103 >= v68)
      {
LABEL_88:
        if (v103 < v135 && *v102 == *v103)
        {
          v102 = (v102 + 4);
          ++v103;
        }

        if (v103 < v133 && *v102 == *v103)
        {
          v102 = (v102 + 2);
          v103 = (v103 + 2);
        }

        if (v103 < v137 && *v102 == *v103)
        {
          LODWORD(v103) = v103 + 1;
        }

        v105 = v103 - v101;
      }

      else
      {
        v104 = v103 - v70 - 4;
        while (*v102 == *v103)
        {
          v103 += 2;
          ++v102;
          v104 += 8;
          if (v103 >= v68)
          {
            goto LABEL_88;
          }
        }

        v105 = (__clz(__rbit64(*v103 ^ *v102)) >> 3) + v104;
      }

LABEL_100:
      if (v98 + (v105 + 240) / 0xFF + 8 > v13)
      {
        return 0;
      }

      v106 = *v100;
      v107 = v105 - 15;
      if (v105 < 0xF)
      {
        *v100 = v106 + v105;
      }

      else
      {
        *v100 = v106 + 15;
        *v69 = -1;
        if (v107 >= 0x3FC)
        {
          v108 = v98 + 3;
          v109 = 2 * ((v105 - 1035) / 0x3FC);
          v87 = sub_29A0E8FD4(v87, 0xFFFFLL, v109 * 2 + 4);
          v13 = v144;
          LOWORD(v107) = (v105 - 1035) % 0x3FC;
          v69 = &v108[v109];
        }

        v110 = v107 / 0xFFu;
        v111 = &v69[v110];
        *v111 = v107 + v110;
        v69 = v111 + 1;
      }

      v70 = (v70 + v105 + 4);
      if (v70 >= v66)
      {
        goto LABEL_112;
      }

      *(v145 + (((0xCF1BBCDCBB000000 * *(v70 - 2)) >> 50) & 0x3FFC)) = v70 - 2 - v12;
      v112 = ((0xCF1BBCDCBB000000 * *v70) >> 50) & 0x3FFC;
      v113 = *(v145 + v112);
      *(v145 + v112) = v70 - v12;
      if (v113 + 0xFFFF < (v70 - v12) || (v83 = v12 + v113, *(v12 + v113) != *v70))
      {
        v67 = v70 + 2;
        v14 = v143;
        if (v70 + 2 > v66)
        {
LABEL_112:
          v114 = v139 - v70;
          if (&v69[v139 - v70 + 1 + (v139 - v70 + 240) / 0xFFuLL] > v13)
          {
            return 0;
          }

          if (v114 < 0xF)
          {
            *v69 = 16 * v114;
          }

          else
          {
            v115 = sub_29A0E8DEC();
            if (v117)
            {
              sub_29A0E8FAC(v115, v12 + v123);
              v115 = sub_29A0E90A0();
            }

            sub_29A0E9008(v115, v116);
          }

          sub_29A0E9048();
          return (v69 + 1 + v114 - v141);
        }

        goto LABEL_58;
      }

      *v69 = 0;
      v98 = v69 + 1;
      v100 = v69;
    }
  }

  if (v9 > 0x7E000000)
  {
    return 0;
  }

  v142 = v5 << 6;
  v15 = v12 + v9;
  v148 = v9;
  v146 = v9;
  v147 = 3;
  v16 = v12;
  v17 = v11;
  if (v9 < 0xD)
  {
    goto LABEL_120;
  }

  v136 = v12 + v9;
  v138 = v9;
  v18 = (v15 - 11);
  v145[(-1640531535 * *v12) >> 19] = 0;
  v19 = (v15 - 12);
  v132 = (v15 - 8);
  v134 = (v15 - 5);
  v130 = (v15 - 6);
  v17 = v11;
  v16 = v12;
  v140 = v11;
LABEL_5:
  v20 = v16 + 1;
  v21 = *(v16 + 1);
  v22 = 1;
  v23 = v142;
  do
  {
    v24 = v20;
    v20 = (v20 + v22);
    if (v20 > v18)
    {
      goto LABEL_119;
    }

    v22 = v23++ >> 6;
    v25 = (-1640531535 * v21) >> 19;
    v26 = v145[v25];
    v21 = *v20;
    v145[v25] = v24 - v12;
  }

  while (*(v12 + v26) != *v24);
  v27 = 0;
  v28 = v12 + v26;
  v29 = v24 - v16;
  v30 = v24 - v16 - 15;
  v31 = v30;
  do
  {
    v32 = v27;
    v33 = &v28[v27];
    v34 = v24 + v27;
    if (&v28[v27] <= v12 || v34 <= v16)
    {
      break;
    }

    --v31;
    --v27;
  }

  while (*(v34 - 1) == *(v33 - 1));
  v36 = v34 - v16;
  v37 = v17 + 1;
  if (&v17[v34 - v16 + 9 + (v29 + v32) / 0xFFu] > v13)
  {
    return 0;
  }

  if ((v29 + v32) < 0xF)
  {
    *v17 = 16 * v36;
  }

  else
  {
    v38 = v32 + v30;
    *v17 = -16;
    if (v32 + v30 > 254)
    {
      sub_29A0E8EC0();
      if (v42 != v43)
      {
        v39 = v40;
      }

      v124 = v39;
      v126 = v41;
      sub_29A0E8F28();
      v122 = v44;
      v128 = v45;
      memset(v46, v47, v48);
      v36 = v128;
      v13 = v144;
      v49 = (v126 - v124 + v32) / 0xFFu;
      v37 = &v17[v49 + 2];
      v38 = v49 + v122 + v32;
    }

    *v37 = v38;
    v37 = (v37 + 1);
  }

  v50 = (v37 + v36);
  do
  {
    v51 = *v16;
    v16 += 8;
    *v37++ = v51;
  }

  while (v37 < v50);
  while (1)
  {
    *v50 = v34 - v33;
    v53 = v50 + 1;
    v54 = v34 + 4;
    v55 = v33 + 4;
    if (v19 <= (v34 + 4))
    {
      v52 = v34 + 4;
    }

    else
    {
      if (*v55 != *v54)
      {
        v57 = __clz(__rbit64(*v54 ^ *v55)) >> 3;
        goto LABEL_47;
      }

      v52 = v34 + 12;
      v55 = v33 + 12;
    }

    if (v52 >= v19)
    {
LABEL_35:
      if (v52 < v132 && *v55 == *v52)
      {
        v55 = (v55 + 4);
        ++v52;
      }

      if (v52 < v130 && *v55 == *v52)
      {
        v55 = (v55 + 2);
        v52 = (v52 + 2);
      }

      if (v52 < v134 && *v55 == *v52)
      {
        LODWORD(v52) = v52 + 1;
      }

      v57 = v52 - v54;
    }

    else
    {
      v56 = v52 - v34 - 4;
      while (*v55 == *v52)
      {
        v52 += 2;
        ++v55;
        v56 += 8;
        if (v52 >= v19)
        {
          goto LABEL_35;
        }
      }

      v57 = (__clz(__rbit64(*v52 ^ *v55)) >> 3) + v56;
    }

LABEL_47:
    if (v50 + (v57 + 240) / 0xFF + 8 > v13)
    {
      return 0;
    }

    v58 = *v17;
    v59 = v57 - 15;
    if (v57 < 0xF)
    {
      *v17 = v58 + v57;
    }

    else
    {
      *v17 = v58 + 15;
      *v53 = -1;
      if (v59 >= 0x3FC)
      {
        v60 = v50 + 3;
        v61 = 2 * ((v57 - 1035) / 0x3FC);
        v37 = sub_29A0E8FD4(v37, 255, v61 * 2 + 4);
        v13 = v144;
        LOWORD(v59) = (v57 - 1035) % 0x3FC;
        v53 = &v60[v61];
      }

      v62 = v59 / 0xFFu;
      v63 = v53 + v62;
      *v63 = v59 + v62;
      v53 = v63 + 1;
    }

    v34 += v57 + 4;
    if (v34 >= v18)
    {
      break;
    }

    v145[(-1640531535 * *(v34 - 2)) >> 19] = v34 - 2 - v12;
    v64 = (-1640531535 * *v34) >> 19;
    v33 = v12 + v145[v64];
    v145[v64] = v34 - v12;
    if (*v33 != *v34)
    {
      v17 = v53;
      v16 = v34;
      LODWORD(v11) = v140;
      goto LABEL_5;
    }

    *v53 = 0;
    v50 = (v53 + 1);
    v17 = v53;
  }

  v16 = v34;
  v17 = v53;
  LODWORD(v11) = v140;
LABEL_119:
  v15 = v136;
  v9 = v138;
LABEL_120:
  v118 = v15 - v16;
  if (&v17[v15 - v16 + 1 + (v15 - v16 + 240) / 0xFFuLL] > v13)
  {
    return 0;
  }

  if (v118 < 0xF)
  {
    *v17 = 16 * v118;
  }

  else
  {
    v120 = sub_29A0E8E4C(v17);
    if (v117)
    {
      sub_29A0E8DB4(v120, v12 + v9 - v16);
      v120 = sub_29A0E8F40();
    }

    *v120 = v121;
    v17 = v120;
  }

  memcpy(v17 + 1, v16, v118);
  return (v17 + 1 + v118 - v11);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_continue(uint64_t a1, char *a2, _BYTE *a3, int a4, unint64_t a5, int a6)
{
  v7 = (a1 + 0x4000);
  if (*(a1 + 16388))
  {
    return 0;
  }

  v12 = (*(a1 + 16392) + *(a1 + 16408));
  sub_29A0E7224(a1, a4);
  v13 = a2;
  if (a6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  LODWORD(v15) = v7[6];
  v16 = (v15 - 4) < 0xFFFFFFFD || v12 == a2;
  if (v16)
  {
    v17 = *(a1 + 16392);
  }

  else
  {
    LODWORD(v15) = 0;
    v7[6] = 0;
    *(a1 + 16392) = a2;
    v17 = a2;
    v12 = a2;
  }

  v18 = &a2[a4];
  v19 = v18 <= v17 || v18 >= v12;
  if (!v19)
  {
    if ((v12 - v18) >= 0x10000)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = v12 - v18;
    }

    if ((v12 - v18) >= 4)
    {
      v15 = v20;
    }

    else
    {
      v15 = 0;
    }

    v7[6] = v15;
    v17 = &v12[-v15];
    *(a1 + 16392) = &v12[-v15];
  }

  v592 = &a2[a4];
  v21 = WORD1(v15);
  v593 = v14 << 6;
  v22 = &a3[a5];
  v594 = v22;
  if (v12 == a2)
  {
    v24 = *v7;
    v25 = &a2[-v24];
    if (!v21)
    {
      v26 = v24 - v15;
      if (v24 > v15)
      {
        sub_29A0E8E90();
        if (!v16 && v19)
        {
          return 0;
        }

        sub_29A0E8EF4(v27);
        v574 = a3;
        if (v32 < 0xD)
        {
LABEL_32:
          v33 = &v592[-a5];
          sub_29A0E8D9C();
          if (v16 || !v19)
          {
            if (v33 < 0xF)
            {
              *a3 = 16 * v33;
            }

            else
            {
              v34 = sub_29A0E8E4C(a3);
              if (v19)
              {
                sub_29A0E8F4C();
                sub_29A0E9064(v37, v36 - a5);
                v34 = sub_29A0E8F40();
              }

              *v34 = v35;
              LODWORD(a3) = v34;
            }

            sub_29A0E902C();
            return (a3 + 1 + v33 - v574);
          }

          return 0;
        }

        v306 = (v592 - 11);
        sub_29A0E9014(v28, v29, v30, v31);
        v312 = v307 - v311;
        v314 = v313 - 12;
        v588 = v313 - 6;
        v591 = v313 - 8;
        a5 = v307;
        v601 = v312;
LABEL_369:
        v315 = (a5 + 1);
        v316 = *(a5 + 1);
        v317 = v593;
        while (1)
        {
          v318 = v310;
          v319 = ((v316 * v309) >> 50) & 0x3FFC;
          v320 = *(a1 + v319);
          v316 = *v318;
          *(a1 + v319) = v315 - v25;
          v321 = v320 >= v26 && v320 + 0xFFFF >= (v315 - v25);
          if (v321 && *&v25[v320] == *v315)
          {
            break;
          }

          v310 = v318 + (v317++ >> 6);
          v315 = v318;
          if (v310 > v306)
          {
            goto LABEL_32;
          }
        }

        v322 = 0;
        v323 = &v25[v320];
        v324 = v315 - a5;
        v325 = v315 - a5 - 15;
        v326 = v325;
        do
        {
          v327 = v322;
          v328 = &v323[v322];
          v329 = (v315 + v322);
          if (&v323[v322] <= v312 || v329 <= a5)
          {
            break;
          }

          --v326;
          --v322;
        }

        while (*(v329 - 1) == *(v328 - 1));
        v331 = v329 - a5;
        v332 = a3 + 1;
        if (&a3[(v329 - a5) + 9 + (v324 + v327) / 0xFFu] <= v308)
        {
          if ((v324 + v327) < 0xF)
          {
            *a3 = 16 * v331;
          }

          else
          {
            v333 = v327 + v325;
            *a3 = -16;
            if (v327 + v325 > 254)
            {
              v572 = v324 + 239;
              sub_29A0E8F34();
              if (v336 != v337)
              {
                v334 = v335;
              }

              v564 = v334;
              sub_29A0E8F28();
              v559 = v338;
              v583 = v339;
              memset(v340, v341, v342);
              v331 = v583;
              v309 = 0xCF1BBCDCBB000000;
              v308 = v594;
              v307 = a2;
              v343 = (v572 - v564 + v327) / 0xFFu;
              v332 = &a3[v343 + 2];
              v333 = v343 + v559 + v327;
            }

            *v332 = v333;
            v332 = (v332 + 1);
          }

          v344 = (v332 + v331);
          do
          {
            v345 = *a5;
            a5 += 8;
            *v332++ = v345;
          }

          while (v332 < v344);
          v346 = a3;
          a5 = v329;
          while (1)
          {
            *v344 = a5 - v328;
            a3 = v344 + 1;
            v347 = (a5 + 4);
            v348 = v328 + 4;
            if (v314 <= a5 + 4)
            {
              v349 = (a5 + 4);
            }

            else
            {
              if (*v348 != *v347)
              {
                v351 = __clz(__rbit64(*v347 ^ *v348)) >> 3;
                goto LABEL_415;
              }

              v349 = (a5 + 12);
              v348 = v328 + 12;
            }

            if (v349 >= v314)
            {
LABEL_403:
              if (v349 < v591 && *v348 == *v349)
              {
                v348 = (v348 + 4);
                v349 += 4;
              }

              if (v349 < v588 && *v348 == *v349)
              {
                v348 = (v348 + 2);
                v349 += 2;
              }

              if (v349 < v592 - 5 && *v348 == *v349)
              {
                LODWORD(v349) = v349 + 1;
              }

              v351 = v349 - v347;
            }

            else
            {
              v350 = v349 - a5 - 4;
              while (*v348 == *v349)
              {
                v349 += 8;
                ++v348;
                v350 += 8;
                if (v349 >= v314)
                {
                  goto LABEL_403;
                }
              }

              v351 = (__clz(__rbit64(*v349 ^ *v348)) >> 3) + v350;
            }

LABEL_415:
            if (v344 + (v351 + 240) / 0xFF + 8 > v308)
            {
              return 0;
            }

            v352 = *v346;
            v353 = v351 - 15;
            if (v351 < 0xF)
            {
              *v346 = v352 + v351;
            }

            else
            {
              *v346 = v352 + 15;
              *a3 = -1;
              if (v353 >= 0x3FC)
              {
                v354 = v344 + 3;
                v355 = 2 * ((v351 - 1035) / 0x3FC);
                v332 = sub_29A0E8FD4(v332, v307, v355 * 2 + 4);
                v309 = 0xCF1BBCDCBB000000;
                v308 = v594;
                v307 = a2;
                LOWORD(v353) = (v351 - 1035) % 0x3FC;
                a3 = &v354[v355];
                v312 = v601;
              }

              v356 = v353 / 0xFFu;
              v357 = &a3[v356];
              *v357 = v353 + v356;
              a3 = v357 + 1;
            }

            a5 += v351 + 4;
            if (a5 >= v306)
            {
              goto LABEL_32;
            }

            *(a1 + (((*(a5 - 2) * v309) >> 50) & 0x3FFC)) = a5 - 2 - v25;
            v358 = ((*a5 * v309) >> 50) & 0x3FFC;
            v359 = *(a1 + v358);
            *(a1 + v358) = a5 - v25;
            v360 = v359 >= v26 && v359 + 0xFFFF >= (a5 - v25);
            if (!v360 || (v328 = &v25[v359], *&v25[v359] != *a5))
            {
              v310 = (a5 + 2);
              if (a5 + 2 > v306)
              {
                goto LABEL_32;
              }

              goto LABEL_369;
            }

            *a3 = 0;
            v344 = a3 + 1;
            v346 = a3;
          }
        }

        return 0;
      }
    }

    sub_29A0E8E90();
    if (!v16 && v19)
    {
      return 0;
    }

    sub_29A0E8EF4(v63);
    v68 = a3;
    if (v69 < 0xD)
    {
LABEL_112:
      v123 = &v592[-a5];
      sub_29A0E8D9C();
      if (v16 || !v19)
      {
        v124 = v123 - 15;
        if (v123 < 0xF)
        {
          v126 = a3;
          *v68 = 16 * v123;
        }

        else
        {
          *v68 = -16;
          v125 = v68 + 1;
          v126 = a3;
          if (v124 >= 0xFF)
          {
            sub_29A0E8F4C();
            sub_29A0E8E10(v128, v127 - a5);
            sub_29A0E8F9C();
            v125 = (v129 + 2);
          }

          sub_29A0E9008(v125, v124);
        }

        sub_29A0E902C();
        return (v68 + 1 + v123 - v126);
      }

      return 0;
    }

    v68 = a3;
    v70 = (v592 - 11);
    sub_29A0E9014(v64, v65, v66, v67);
    v76 = v71 - v75;
    v78 = v77 - 12;
    v597 = v77 - 8;
    v598 = v79;
    v590 = v77 - 6;
    a5 = v71;
    v576 = v68;
LABEL_56:
    v80 = (a5 + 1);
    v81 = *(a5 + 1);
    v82 = v593;
    while (1)
    {
      v83 = v74;
      v84 = ((v81 * v73) >> 50) & 0x3FFC;
      v85 = *(a1 + v84);
      v81 = *v83;
      *(a1 + v84) = v80 - v25;
      if (v85 + 0xFFFF >= (v80 - v25) && *&v25[v85] == *v80)
      {
        break;
      }

      v74 = v83 + (v82++ >> 6);
      v80 = v83;
      if (v74 > v70)
      {
LABEL_111:
        LODWORD(a3) = v576;
        goto LABEL_112;
      }
    }

    v86 = 0;
    v87 = &v25[v85];
    v88 = v80 - a5;
    v89 = v80 - a5 - 15;
    v90 = v89;
    do
    {
      v91 = v90;
      v92 = v86;
      v93 = &v87[v86];
      v94 = (v80 + v86);
      if (&v87[v86] <= v76 || v94 <= a5)
      {
        break;
      }

      --v90;
      --v86;
    }

    while (*(v94 - 1) == *(v93 - 1));
    v96 = v94 - a5;
    v97 = v68 + 1;
    if (&v68[(v94 - a5) + 9 + (v88 + v92) / 0xFFu] > v72)
    {
      return 0;
    }

    if ((v88 + v92) < 0xF)
    {
      *v68 = 16 * v96;
    }

    else
    {
      v98 = v92 + v89;
      *v68 = -16;
      if (v92 + v89 > 254)
      {
        v580 = v88 + 239;
        if (v91 >= 509)
        {
          v99 = 509;
        }

        else
        {
          v99 = v91;
        }

        v569 = v99;
        sub_29A0E8F28();
        v561 = v100;
        v585 = v101;
        memset(v102, v103, v104);
        v96 = v585;
        v73 = 0xCF1BBCDCBB000000;
        v72 = v594;
        v71 = a2;
        v105 = (v580 - v569 + v92) / 0xFFu;
        v97 = &v68[v105 + 2];
        v98 = v105 + v561 + v92;
      }

      *v97++ = v98;
    }

    v106 = &v97[v96];
    do
    {
      v107 = *a5;
      a5 += 8;
      *v97 = v107;
      v97 += 8;
    }

    while (v97 < v106);
    v108 = v68;
    a5 = v94;
    while (1)
    {
      *v106 = a5 - v93;
      v68 = v106 + 2;
      v109 = (a5 + 4);
      v110 = v93 + 4;
      if (v78 <= a5 + 4)
      {
        v111 = (a5 + 4);
      }

      else
      {
        if (*v110 != *v109)
        {
          v113 = __clz(__rbit64(*v109 ^ *v110)) >> 3;
          goto LABEL_99;
        }

        v111 = (a5 + 12);
        v110 = v93 + 12;
      }

      if (v111 >= v78)
      {
LABEL_87:
        if (v111 < v597 && *v110 == *v111)
        {
          v110 = (v110 + 4);
          ++v111;
        }

        if (v111 < v590 && *v110 == *v111)
        {
          v110 = (v110 + 2);
          v111 = (v111 + 2);
        }

        if (v111 < v598 && *v110 == *v111)
        {
          LODWORD(v111) = v111 + 1;
        }

        v113 = v111 - v109;
      }

      else
      {
        v112 = v111 - a5 - 4;
        while (*v110 == *v111)
        {
          v111 += 2;
          ++v110;
          v112 += 8;
          if (v111 >= v78)
          {
            goto LABEL_87;
          }
        }

        v113 = (__clz(__rbit64(*v111 ^ *v110)) >> 3) + v112;
      }

LABEL_99:
      if (&v106[(v113 + 240) / 0xFF + 8] > v72)
      {
        return 0;
      }

      v114 = *v108;
      v115 = v113 - 15;
      if (v113 < 0xF)
      {
        *v108 = v114 + v113;
      }

      else
      {
        *v108 = v114 + 15;
        *v68 = -1;
        if (v115 >= 0x3FC)
        {
          v116 = v106 + 6;
          v117 = v76;
          v118 = 2 * ((v113 - 1035) / 0x3FC);
          v97 = sub_29A0E8FD4(v97, v71, v118 * 2 + 4);
          v73 = 0xCF1BBCDCBB000000;
          v72 = v594;
          v71 = a2;
          LOWORD(v115) = (v113 - 1035) % 0x3FC;
          v68 = &v116[v118];
          v76 = v117;
        }

        v119 = v115 / 0xFFu;
        v120 = &v68[v119];
        *v120 = v115 + v119;
        v68 = v120 + 1;
      }

      a5 += v113 + 4;
      if (a5 >= v70)
      {
        goto LABEL_111;
      }

      *(a1 + (((*(a5 - 2) * v73) >> 50) & 0x3FFC)) = a5 - 2 - v25;
      v121 = ((*a5 * v73) >> 50) & 0x3FFC;
      v122 = *(a1 + v121);
      *(a1 + v121) = a5 - v25;
      if (v122 + 0xFFFF < (a5 - v25) || (v93 = &v25[v122], *&v25[v122] != *a5))
      {
        v74 = (a5 + 2);
        if (a5 + 2 > v70)
        {
          goto LABEL_111;
        }

        goto LABEL_56;
      }

      *v68 = 0;
      v106 = v68 + 1;
      v108 = v68;
    }
  }

  v23 = *(a1 + 16400);
  v589 = v7;
  if (!v23)
  {
    v38 = *v7;
    v39 = &a2[-v38];
    v584 = v38;
    v579 = &v17[v15];
    if (!v21 && v38 > v15)
    {
      sub_29A0E8E90();
      if (!v16 && v19)
      {
        goto LABEL_246;
      }

      sub_29A0E8ED0(v40, v41, v514, v516, v518, v520, v523, v528, v533, v538, v542, v545, v548, v552, v556, v560, v567, v573, v579, a4, v584, v589);
      v48 = v43;
      v575 = a3;
      if (v49 < 0xD)
      {
LABEL_42:
        v50 = v592 - v48;
        sub_29A0E8D9C();
        if (v16 || !v19)
        {
          if (v50 < 0xF)
          {
            *a3 = 16 * v50;
            v7 = v589;
          }

          else
          {
            v51 = sub_29A0E8E4C(a3);
            if (v19)
            {
              sub_29A0E8F4C();
              v54 = v53 - v48 - 270;
              memset(v55, 255, v54 / 0xFF + 1);
              v52 = v54 % 0xFF;
              v51 = &a3[v54 / 0xFF + 2];
            }

            v7 = v589;
            *v51 = v52;
            a3 = v51;
          }

          memcpy(a3 + 1, v48, v50);
          v511 = a3 + 1 + v50;
          goto LABEL_685;
        }

        goto LABEL_246;
      }

      sub_29A0E8E58(v42, v43, v44, v45, v46, v47);
      v435 = v434 - 12;
      v522 = v434 - 6;
      v527 = v434 - 8;
      sub_29A0E90B4();
      v446 = v445;
      v447 = 0xFFFF;
      v48 = v13;
LABEL_549:
      v448 = *(v48 + 1);
      v449 = v593;
      while (1)
      {
        v450 = v444;
        v451 = ((v448 * v437) >> 50) & 0x3FFC;
        v452 = *(a1 + v451);
        v448 = *v450;
        *(a1 + v451) = v443;
        if (v452 >= v441 && v452 + v447 >= v443)
        {
          v454 = v452 >= v439 ? v39 : v446;
          if (*&v454[v452] == *v442)
          {
            break;
          }
        }

        v443 = v450 - v39;
        v444 = v450 + (v449++ >> 6);
        v442 = v450;
        if (v444 > v6)
        {
          goto LABEL_42;
        }
      }

      v455 = 0;
      v456 = &v454[v452];
      if (v452 >= v439)
      {
        v457 = v13;
      }

      else
      {
        v457 = v438;
      }

      v458 = v443 - v452;
      v459 = v442 - v48;
      v460 = v442 - v48 - 15;
      v566 = v442 - v48 - 14;
      v461 = v460;
      do
      {
        v462 = v455;
        v463 = &v456[v455];
        v464 = (v442 + v455);
        if (&v456[v455] <= v457 || v464 <= v48)
        {
          break;
        }

        --v461;
        --v455;
      }

      while (*(v464 - 1) == *(v463 - 1));
      v466 = v464 - v48;
      v467 = a3 + 1;
      if (&a3[v464 - v48 + 9 + (v459 + v462) / 0xFFu] <= v436)
      {
        if ((v459 + v462) < 0xF)
        {
          *a3 = 16 * v466;
        }

        else
        {
          v468 = v462 + v460;
          *a3 = -16;
          if (v462 + v460 > 254)
          {
            v537 = v459 + 239;
            sub_29A0E8F34();
            if (v336 != v337)
            {
              v469 = v470;
            }

            v532 = v469;
            sub_29A0E8F28();
            memset(v471, v472, v473);
            sub_29A0E8FEC();
            v446 = v474;
            v475 = (v537 - v532 + v462) / 0xFFu;
            v467 = &a3[v475 + 2];
            v468 = v475 + v566 + v462;
          }

          *v467 = v468;
          v467 = (v467 + 1);
        }

        v476 = (v467 + v466);
        do
        {
          v477 = *v48++;
          *v467++ = v477;
        }

        while (v467 < v476);
        v478 = a3;
        v48 = v464;
        v447 = 0xFFFF;
        while (1)
        {
          *v476 = v458;
          a3 = v476 + 1;
          if (v457 != v438)
          {
            v479 = (v48 + 4);
            v480 = v463 + 4;
            if (v435 > v48 + 4)
            {
              if (*v480 == *v479)
              {
                v481 = v48 + 3;
                v480 = v463 + 12;
LABEL_586:
                if (v481 >= v435)
                {
LABEL_590:
                  if (v481 < v527 && *v480 == *v481)
                  {
                    ++v480;
                    ++v481;
                  }

                  if (v481 < v522 && *v480 == *v481)
                  {
                    v480 = (v480 + 2);
                    v481 = (v481 + 2);
                  }

                  if (v481 < v568 && *v480 == *v481)
                  {
                    LODWORD(v481) = v481 + 1;
                  }

                  v483 = v481 - v479;
                }

                else
                {
                  v482 = v481 - v48 - 4;
                  while (*v480 == *v481)
                  {
                    v481 += 2;
                    v480 += 2;
                    v482 += 8;
                    if (v481 >= v435)
                    {
                      goto LABEL_590;
                    }
                  }

                  v483 = (__clz(__rbit64(*v481 ^ *v480)) >> 3) + v482;
                }
              }

              else
              {
                v483 = __clz(__rbit64(*v479 ^ *v480)) >> 3;
              }

              v48 = (v48 + v483 + 4);
              goto LABEL_648;
            }

            v481 = v48 + 1;
            goto LABEL_586;
          }

          v484 = (v48 + v440 - v463);
          if (v484 > v568)
          {
            v484 = v568;
          }

          v485 = (v48 + 4);
          v486 = v463 + 4;
          v487 = v484 - 7;
          if (v484 - 7 <= v48 + 4)
          {
            v488 = v48 + 4;
          }

          else
          {
            if (*v486 != *v485)
            {
              v483 = __clz(__rbit64(*v485 ^ *v486)) >> 3;
              goto LABEL_624;
            }

            v488 = v48 + 12;
            v486 = v463 + 12;
          }

          if (v488 >= v487)
          {
LABEL_609:
            if (v488 < v484 - 3 && *v486 == *v488)
            {
              v486 = (v486 + 4);
              v488 += 4;
            }

            if (v488 < v484 - 1 && *v486 == *v488)
            {
              v486 = (v486 + 2);
              v488 += 2;
            }

            if (v488 < v484 && *v486 == *v488)
            {
              LODWORD(v488) = v488 + 1;
            }

            v483 = v488 - v485;
          }

          else
          {
            v489 = v488 - v48 - 4;
            while (*v486 == *v488)
            {
              v488 += 8;
              ++v486;
              v489 += 8;
              if (v488 >= v487)
              {
                goto LABEL_609;
              }
            }

            v483 = (__clz(__rbit64(*v488 ^ *v486)) >> 3) + v489;
          }

LABEL_624:
          v490 = v48 + v483 + 4;
          if (v490 != v484)
          {
            v48 = (v48 + v483 + 4);
            goto LABEL_648;
          }

          v491 = v13;
          v492 = v484;
          if (v435 <= v484)
          {
            goto LABEL_629;
          }

          if (*v13 == *v484)
          {
            v492 = v484 + 1;
            v491 = v557;
LABEL_629:
            if (v492 >= v435)
            {
LABEL_635:
              if (v492 < v527 && *v491 == *v492)
              {
                ++v491;
                ++v492;
              }

              if (v492 < v522 && *v491 == *v492)
              {
                v491 = (v491 + 2);
                v492 = (v492 + 2);
              }

              if (v492 < v568 && *v491 == *v492)
              {
                LODWORD(v492) = v492 + 1;
              }

              v495 = v492 - v484;
            }

            else
            {
              v493 = (v48 + v553 - v463);
              if (v493 >= v549)
              {
                LODWORD(v493) = v549;
              }

              v494 = v492 - v493;
              while (*v491 == *v492)
              {
                v492 += 2;
                v491 += 2;
                v494 += 8;
                if (v492 >= v435)
                {
                  goto LABEL_635;
                }
              }

              v495 = (__clz(__rbit64(*v492 ^ *v491)) >> 3) + v494;
            }

            goto LABEL_647;
          }

          v495 = __clz(__rbit64(*v484 ^ *v13)) >> 3;
LABEL_647:
          v483 += v495;
          v48 = (v490 + v495);
LABEL_648:
          if (v476 + (v483 + 240) / 0xFF + 8 > v436)
          {
            break;
          }

          v496 = *v478;
          v497 = v483 - 15;
          if (v483 < 0xF)
          {
            *v478 = v496 + v483;
          }

          else
          {
            *v478 = v496 + 15;
            *a3 = -1;
            if (v497 >= 0x3FC)
            {
              v498 = v476 + 3;
              v499 = v483 - 1035;
              v500 = (v483 - 1035) / 0x3FC;
              v501 = 2 * v500;
              memset(v476 + 3, 255, v501 * 2 + 4);
              sub_29A0E8FEC();
              v446 = v502;
              LOWORD(v497) = v499 - 1020 * v500;
              a3 = &v498[v501];
            }

            v503 = v497 / 0xFFu;
            v504 = &a3[v503];
            *v504 = v497 + v503;
            a3 = v504 + 1;
          }

          if (v48 >= v6)
          {
            goto LABEL_42;
          }

          *(a1 + (((*(v48 - 2) * v437) >> 50) & 0x3FFC)) = v48 - 2 - v39;
          v505 = v48 - v39;
          v506 = ((*v48 * v437) >> 50) & 0x3FFC;
          v507 = *(a1 + v506);
          if (v507 >= v439)
          {
            v508 = v39;
          }

          else
          {
            v508 = v446;
          }

          if (v507 >= v439)
          {
            v457 = v13;
          }

          else
          {
            v457 = v438;
          }

          *(a1 + v506) = v505;
          v509 = v507 >= v441 && v507 + v447 >= v505;
          if (!v509 || (v463 = &v508[v507], *&v508[v507] != *v48))
          {
            v442 = (v48 + 1);
            v443 = v48 + 1 - v39;
            v444 = v48 + 2;
            if (v48 + 2 > v6)
            {
              goto LABEL_42;
            }

            goto LABEL_549;
          }

          *a3 = 0;
          v476 = a3 + 1;
          v458 = v505 - v507;
          v478 = a3;
        }
      }

LABEL_246:
      result = 0;
      v7 = v589;
      goto LABEL_687;
    }

    sub_29A0E8E90();
    if (!v16 && v19)
    {
      goto LABEL_246;
    }

    sub_29A0E8ED0(v130, v131, v514, v516, v518, v520, v523, v528, v533, v538, v542, v545, v548, v552, v556, v560, v567, v573, v579, a4, v584, v589);
    v138 = v133;
    v139 = a3;
    if (v140 < 0xD)
    {
LABEL_119:
      v141 = v592 - v138;
      sub_29A0E8D9C();
      if (v16 || !v19)
      {
        if (v141 < 0xF)
        {
          *v139 = 16 * v141;
          v7 = v589;
        }

        else
        {
          v142 = sub_29A0E8DEC();
          if (v19)
          {
            sub_29A0E8F4C();
            sub_29A0E8E10(v145, v144 - v138);
            sub_29A0E8F9C();
            v142 = (v146 + 2);
          }

          v7 = v589;
          sub_29A0E9008(v142, v143);
        }

        v513 = v139 + 1;
        memcpy(v513, v138, v141);
        v512 = v513 + v141;
        goto LABEL_682;
      }

      goto LABEL_246;
    }

    sub_29A0E8E58(v132, v133, v134, v135, v136, v137);
    v362 = v361 - 12;
    v526 = v361 - 6;
    v531 = v361 - 8;
    sub_29A0E90B4();
    v372 = 0xFFFF;
    v138 = v13;
    v139 = a3;
    v578 = a3;
LABEL_433:
    v373 = *(v138 + 1);
    v374 = v593;
    while (1)
    {
      v375 = ((v373 * v364) >> 50) & 0x3FFC;
      v376 = *(a1 + v375);
      v377 = v371;
      v373 = *v371;
      *(a1 + v375) = v370;
      if (v376 + v372 >= v370)
      {
        v378 = v376 >= v366 ? v39 : v368;
        if (*&v378[v376] == *v369)
        {
          break;
        }
      }

      v370 = v377 - v39;
      v371 = (v377 + (v374++ >> 6));
      v369 = v377;
      if (v371 > v6)
      {
        goto LABEL_119;
      }
    }

    v379 = 0;
    v380 = &v378[v376];
    v381 = v376 >= v366 ? v13 : v365;
    v382 = v370 - v376;
    v383 = v369 - v138;
    v384 = v369 - v138 - 15;
    v565 = v369 - v138 - 14;
    v385 = v384;
    do
    {
      v386 = v379;
      v387 = &v380[v379];
      v388 = (v369 + v379);
      if (&v380[v379] <= v381 || v388 <= v138)
      {
        break;
      }

      --v385;
      --v379;
    }

    while (*(v388 - 1) == *(v387 - 1));
    v390 = v388 - v138;
    v391 = v139 + 1;
    if (&v139[v388 - v138 + 9 + (v383 + v386) / 0xFFu] > v363)
    {
      goto LABEL_246;
    }

    if ((v383 + v386) < 0xF)
    {
      *v139 = 16 * v390;
      LODWORD(a3) = v578;
    }

    else
    {
      v392 = v386 + v384;
      *v139 = -16;
      if (v386 + v384 > 254)
      {
        v541 = v383 + 239;
        sub_29A0E8F34();
        if (v336 != v337)
        {
          v393 = v394;
        }

        v536 = v393;
        sub_29A0E8F28();
        memset(v395, v396, v397);
        sub_29A0E8FEC();
        v372 = v398;
        v399 = (v541 - v536 + v386) / 0xFFu;
        v391 = &v139[v399 + 2];
        v392 = v399 + v565 + v386;
      }

      LODWORD(a3) = v578;
      *v391++ = v392;
    }

    v400 = &v391[v390];
    do
    {
      v401 = *v138++;
      *v391 = v401;
      v391 += 8;
    }

    while (v391 < v400);
    v402 = v139;
    v138 = v388;
    v403 = 255;
    while (1)
    {
      *v400 = v382;
      v139 = v400 + 2;
      if (v381 != v365)
      {
        v404 = (v138 + 4);
        v405 = v387 + 4;
        if (v362 > v138 + 4)
        {
          if (*v405 == *v404)
          {
            v406 = v138 + 3;
            v405 = v387 + 12;
LABEL_466:
            if (v406 >= v362)
            {
LABEL_470:
              if (v406 < v531 && *v405 == *v406)
              {
                ++v405;
                ++v406;
              }

              if (v406 < v526 && *v405 == *v406)
              {
                v405 = (v405 + 2);
                v406 = (v406 + 2);
              }

              if (v406 < v570 && *v405 == *v406)
              {
                LODWORD(v406) = v406 + 1;
              }

              v408 = v406 - v404;
            }

            else
            {
              v407 = v406 - v138 - 4;
              while (*v405 == *v406)
              {
                v406 += 2;
                v405 += 2;
                v407 += 8;
                if (v406 >= v362)
                {
                  goto LABEL_470;
                }
              }

              v408 = (__clz(__rbit64(*v406 ^ *v405)) >> 3) + v407;
            }
          }

          else
          {
            v408 = __clz(__rbit64(*v404 ^ *v405)) >> 3;
          }

          v138 = (v138 + v408 + 4);
          goto LABEL_528;
        }

        v406 = v138 + 1;
        goto LABEL_466;
      }

      v409 = (v138 + v367 - v387);
      if (v409 > v570)
      {
        v409 = v570;
      }

      v410 = (v138 + 4);
      v411 = v387 + 4;
      v412 = v409 - 7;
      if (v409 - 7 <= v138 + 4)
      {
        v413 = v138 + 4;
      }

      else
      {
        if (*v411 != *v410)
        {
          v408 = __clz(__rbit64(*v410 ^ *v411)) >> 3;
          goto LABEL_504;
        }

        v413 = v138 + 12;
        v411 = v387 + 12;
      }

      if (v413 >= v412)
      {
LABEL_489:
        if (v413 < v409 - 3 && *v411 == *v413)
        {
          v411 = (v411 + 4);
          v413 += 4;
        }

        if (v413 < v409 - 1 && *v411 == *v413)
        {
          v411 = (v411 + 2);
          v413 += 2;
        }

        if (v413 < v409 && *v411 == *v413)
        {
          LODWORD(v413) = v413 + 1;
        }

        v408 = v413 - v410;
      }

      else
      {
        v414 = v413 - v138 - 4;
        while (*v411 == *v413)
        {
          v413 += 8;
          ++v411;
          v414 += 8;
          if (v413 >= v412)
          {
            goto LABEL_489;
          }
        }

        v408 = (__clz(__rbit64(*v413 ^ *v411)) >> 3) + v414;
      }

LABEL_504:
      v415 = v138 + v408 + 4;
      if (v415 != v409)
      {
        v138 = (v138 + v408 + 4);
        goto LABEL_528;
      }

      v416 = v13;
      v417 = v409;
      if (v362 <= v409)
      {
        goto LABEL_509;
      }

      if (*v13 == *v409)
      {
        v417 = v409 + 1;
        v416 = v558;
LABEL_509:
        if (v417 >= v362)
        {
LABEL_515:
          if (v417 < v531 && *v416 == *v417)
          {
            ++v416;
            ++v417;
          }

          if (v417 < v526 && *v416 == *v417)
          {
            v416 = (v416 + 2);
            v417 = (v417 + 2);
          }

          if (v417 < v570 && *v416 == *v417)
          {
            LODWORD(v417) = v417 + 1;
          }

          v420 = v417 - v409;
        }

        else
        {
          v418 = (v138 + v554 - v387);
          if (v418 >= v550)
          {
            LODWORD(v418) = v550;
          }

          v419 = v417 - v418;
          while (*v416 == *v417)
          {
            v417 += 2;
            v416 += 2;
            v419 += 8;
            if (v417 >= v362)
            {
              goto LABEL_515;
            }
          }

          v420 = (__clz(__rbit64(*v417 ^ *v416)) >> 3) + v419;
        }

        goto LABEL_527;
      }

      v420 = __clz(__rbit64(*v409 ^ *v13)) >> 3;
LABEL_527:
      v408 += v420;
      v138 = (v415 + v420);
LABEL_528:
      if (&v400[(v408 + 240) / v403 + 8] > v363)
      {
        goto LABEL_246;
      }

      v421 = *v402;
      v422 = v408 - 15;
      if (v408 < 0xF)
      {
        *v402 = v421 + v408;
      }

      else
      {
        *v402 = v421 + 15;
        *v139 = -1;
        if (v422 >= 0x3FC)
        {
          v423 = v400 + 6;
          v424 = v408 - 1035;
          v425 = (v408 - 1035) / 0x3FC;
          v426 = 2 * v425;
          memset(v400 + 6, 255, v426 * 2 + 4);
          sub_29A0E8FEC();
          v372 = v427;
          LOWORD(v422) = v424 - 1020 * v425;
          LODWORD(a3) = v578;
          v367 = v581;
          v139 = &v423[v426];
        }

        v428 = v422 / v403;
        v429 = &v139[v428];
        *v429 = v422 + v428;
        v139 = v429 + 1;
      }

      if (v138 >= v6)
      {
        goto LABEL_119;
      }

      *(a1 + (((*(v138 - 2) * v364) >> 50) & 0x3FFC)) = v138 - 2 - v39;
      v430 = v138 - v39;
      v431 = ((*v138 * v364) >> 50) & 0x3FFC;
      v432 = *(a1 + v431);
      if (v432 >= v366)
      {
        v433 = v39;
      }

      else
      {
        v433 = v368;
      }

      if (v432 >= v366)
      {
        v381 = v13;
      }

      else
      {
        v381 = v365;
      }

      *(a1 + v431) = v430;
      if (v432 + v372 < v430 || (v387 = &v433[v432], *&v433[v432] != *v138))
      {
        v369 = (v138 + 1);
        v370 = v138 + 1 - v39;
        v371 = (v138 + 2);
        if (v138 + 2 > v6)
        {
          goto LABEL_119;
        }

        goto LABEL_433;
      }

      *v139 = 0;
      v400 = v139 + 1;
      v382 = v430 - v432;
      v402 = v139;
    }
  }

  if (a4 <= 4096)
  {
    if (a4 > 0x7E000000)
    {
      goto LABEL_52;
    }

    v56 = *v7;
    v57 = *(v23 + 16392);
    v58 = *(v23 + 16408);
    v59 = *(v23 + 0x4000);
    *(a1 + 16400) = 0;
    v7[6] = a4;
    *v7 = v56 + a4;
    *(v7 + 3) = 2;
    v60 = a3;
    v61 = a2;
    v575 = v60;
    if (a4 < 0xD)
    {
      goto LABEL_50;
    }

    v222 = &a2[-v56];
    v223 = v56 - v59;
    v224 = (v18 - 11);
    v600 = v18 - 5;
    *(a1 + (((0xCF1BBCDCBB000000 * *a2) >> 50) & 0x3FFC)) = v56;
    v587 = &v57[v58];
    v225 = &v57[v58 - v59];
    v226 = a2 + 2;
    v227 = a2 + 1;
    v228 = v56 + 1;
    v515 = (v592 - 6);
    v517 = (v592 - 8);
    v555 = &v57[v58];
    v61 = a2;
    v571 = v223;
    v563 = &a2[-v56];
    while (1)
    {
      v229 = *(v61 + 1);
      v230 = v593;
      while (1)
      {
        v231 = v226;
        v232 = (0xCF1BBCDCBB000000 * v229) >> 52;
        v233 = *(a1 + 4 * v232);
        if (v233 >= v56)
        {
          v235 = &v222[v233];
          v236 = v13;
        }

        else
        {
          v234 = *(v23 + 4 * v232);
          v235 = &v225[v234];
          LODWORD(v233) = v234 + v223;
          v236 = v57;
        }

        v229 = *v231;
        *(a1 + 4 * v232) = v228;
        if (v233 + 0xFFFF >= v228 && *v235 == *v227)
        {
          break;
        }

        v228 = v231 - v222;
        v226 = v231 + (v230++ >> 6);
        v227 = v231;
        if (v226 > v224)
        {
          goto LABEL_50;
        }
      }

      v237 = 0;
      v238 = v228 - v233;
      v239 = v227 - v61;
      v240 = v227 - v61 - 15;
      v241 = v227 - v61 - 14;
      v242 = v240;
      do
      {
        v243 = v242;
        v244 = v237;
        v245 = &v235[v237];
        v246 = (v227 + v237);
        if (&v235[v237] <= v236 || v246 <= v61)
        {
          break;
        }

        --v242;
        --v237;
      }

      while (*(v246 - 1) == *(v245 - 1));
      v248 = v246 - v61;
      v249 = v60 + 1;
      if (&v60[v246 - v61 + 9 + (v239 + v244) / 0xFFu] > v22)
      {
        goto LABEL_246;
      }

      if ((v239 + v244) < 0xF)
      {
        *v60 = 16 * v248;
        v7 = v589;
      }

      else
      {
        v250 = v244 + v240;
        *v60 = -16;
        if (v244 + v240 > 254)
        {
          v525 = v239 + 239;
          if (v243 >= 509)
          {
            v251 = 509;
          }

          else
          {
            v251 = v243;
          }

          v519 = v241;
          v521 = v251;
          sub_29A0E8F28();
          v544 = v252;
          v547 = v253;
          v535 = v255;
          v540 = v254;
          v257 = v256;
          v530 = v258;
          memset(v259, v260, v261);
          v248 = v530;
          v224 = v535;
          v225 = v257;
          v57 = v540;
          v56 = v544;
          v23 = v547;
          v22 = v594;
          v13 = a2;
          v262 = (v525 - v521 + v244) / 0xFFu;
          v249 = &v60[v262 + 2];
          v250 = v262 + v519 + v244;
        }

        v7 = v589;
        *v249 = v250;
        v249 = (v249 + 1);
      }

      v263 = (v249 + v248);
      do
      {
        v264 = *v61++;
        *v249++ = v264;
      }

      while (v249 < v263);
      v265 = v60;
      v61 = v246;
      v266 = (v592 - 12);
      while (1)
      {
        *v263 = v238;
        v60 = v263 + 1;
        if (v236 != v57)
        {
          v267 = (v61 + 4);
          v268 = v245 + 4;
          if (v266 > v61 + 4)
          {
            if (*v268 == *v267)
            {
              v269 = v61 + 3;
              v268 = v245 + 12;
LABEL_279:
              if (v269 >= v266)
              {
LABEL_283:
                if (v269 < v517 && *v268 == *v269)
                {
                  ++v268;
                  ++v269;
                }

                if (v269 < v515 && *v268 == *v269)
                {
                  v268 = (v268 + 2);
                  v269 = (v269 + 2);
                }

                if (v269 < v600 && *v268 == *v269)
                {
                  LODWORD(v269) = v269 + 1;
                }

                v271 = v269 - v267;
              }

              else
              {
                v270 = v269 - v61 - 4;
                while (*v268 == *v269)
                {
                  v269 += 2;
                  v268 += 2;
                  v270 += 8;
                  if (v269 >= v266)
                  {
                    goto LABEL_283;
                  }
                }

                v271 = (__clz(__rbit64(*v269 ^ *v268)) >> 3) + v270;
              }
            }

            else
            {
              v271 = __clz(__rbit64(*v267 ^ *v268)) >> 3;
            }

            v61 = (v61 + v271 + 4);
            goto LABEL_341;
          }

          v269 = v61 + 1;
          goto LABEL_279;
        }

        v272 = (v61 + v587 - v245);
        if (v272 > v600)
        {
          v272 = v600;
        }

        v273 = (v61 + 4);
        v274 = v245 + 4;
        v275 = v272 - 7;
        if (v272 - 7 <= v61 + 4)
        {
          v276 = v61 + 4;
        }

        else
        {
          if (*v274 != *v273)
          {
            v271 = __clz(__rbit64(*v273 ^ *v274)) >> 3;
            goto LABEL_317;
          }

          v276 = v61 + 12;
          v274 = v245 + 12;
        }

        if (v276 >= v275)
        {
LABEL_302:
          if (v276 < v272 - 3 && *v274 == *v276)
          {
            v274 = (v274 + 4);
            v276 += 4;
          }

          if (v276 < v272 - 1 && *v274 == *v276)
          {
            v274 = (v274 + 2);
            v276 += 2;
          }

          if (v276 < v272 && *v274 == *v276)
          {
            LODWORD(v276) = v276 + 1;
          }

          v271 = v276 - v273;
        }

        else
        {
          v277 = v276 - v61 - 4;
          while (*v274 == *v276)
          {
            v276 += 8;
            ++v274;
            v277 += 8;
            if (v276 >= v275)
            {
              goto LABEL_302;
            }
          }

          v271 = (__clz(__rbit64(*v276 ^ *v274)) >> 3) + v277;
        }

LABEL_317:
        v278 = v61 + v271 + 4;
        if (v278 != v272)
        {
          v61 = (v61 + v271 + 4);
          goto LABEL_341;
        }

        v279 = v13;
        v280 = v272;
        if (v266 <= v272)
        {
          goto LABEL_322;
        }

        if (*v13 == *v272)
        {
          v280 = v272 + 1;
          v279 = a2 + 8;
LABEL_322:
          if (v280 >= v266)
          {
LABEL_328:
            if (v280 < v517 && *v279 == *v280)
            {
              ++v279;
              ++v280;
            }

            if (v280 < v515 && *v279 == *v280)
            {
              v279 = (v279 + 2);
              v280 = (v280 + 2);
            }

            if (v280 < v600 && *v279 == *v280)
            {
              LODWORD(v280) = v280 + 1;
            }

            v283 = v280 - v272;
          }

          else
          {
            v281 = v61 + v555 - v245;
            if (v281 >= &a2[a4 - 5])
            {
              LODWORD(v281) = a2 + a4 - 5;
            }

            v282 = v280 - v281;
            while (*v279 == *v280)
            {
              v280 += 2;
              v279 += 2;
              v282 += 8;
              if (v280 >= v266)
              {
                goto LABEL_328;
              }
            }

            v283 = (__clz(__rbit64(*v280 ^ *v279)) >> 3) + v282;
          }

          goto LABEL_340;
        }

        v283 = __clz(__rbit64(*v272 ^ *v13)) >> 3;
LABEL_340:
        v271 += v283;
        v61 = (v278 + v283);
LABEL_341:
        if (v263 + (v271 + 240) / 0xFF + 8 > v22)
        {
          goto LABEL_52;
        }

        v284 = *v265;
        v285 = v271 - 15;
        if (v271 < 0xF)
        {
          *v265 = v284 + v271;
        }

        else
        {
          *v265 = v284 + 15;
          *v60 = -1;
          if (v285 >= 0x3FC)
          {
            v286 = v263 + 3;
            v287 = v271 - 1035;
            v288 = (v271 - 1035) / 0x3FC;
            v289 = 2 * v288;
            v290 = v23;
            v291 = v56;
            v292 = v57;
            v293 = v224;
            memset(v263 + 3, 255, v289 * 2 + 4);
            v266 = (v592 - 12);
            v224 = v293;
            v57 = v292;
            v222 = v563;
            v223 = v571;
            v56 = v291;
            v23 = v290;
            v22 = v594;
            v13 = a2;
            LOWORD(v285) = v287 - 1020 * v288;
            v7 = v589;
            v60 = &v286[v289];
          }

          v294 = v285 / 0xFFu;
          v295 = &v60[v294];
          *v295 = v285 + v294;
          v60 = v295 + 1;
        }

        if (v61 >= v224)
        {
          goto LABEL_50;
        }

        *(a1 + (((0xCF1BBCDCBB000000 * *(v61 - 2)) >> 50) & 0x3FFC)) = v61 - 2 - v222;
        v296 = (0xCF1BBCDCBB000000 * *v61) >> 52;
        v297 = *(a1 + 4 * v296);
        if (v297 >= v56)
        {
          v245 = &v222[v297];
          v236 = v13;
        }

        else
        {
          v297 = *(v23 + 4 * v296);
          v245 = &v225[v297];
          LODWORD(v297) = v297 + v223;
          v236 = v57;
        }

        *(a1 + 4 * v296) = v61 - v222;
        if (v297 + 0xFFFF < (v61 - v222) || *v245 != *v61)
        {
          break;
        }

        *v60 = 0;
        v263 = v60 + 1;
        v238 = v61 - v222 - v297;
        v265 = v60;
      }

      v227 = (v61 + 1);
      v228 = v61 + 1 - v222;
      v226 = v61 + 2;
      if (v61 + 2 > v224)
      {
LABEL_50:
        v62 = v592 - v61;
        sub_29A0E8D9C();
        if (v16 || !v19)
        {
          if (v62 < 0xF)
          {
            *v60 = 16 * v62;
          }

          else
          {
            v298 = sub_29A0E8E4C(v60);
            if (v19)
            {
              sub_29A0E8F4C();
              sub_29A0E9064(v301, v300 - v61);
              v7 = v589;
              v298 = sub_29A0E8F40();
            }

            *v298 = v299;
            v60 = v298;
          }

          v510 = v60 + 1;
          memcpy(v510, v61, v62);
          v511 = v510 + v62;
LABEL_685:
          result = (v511 - v575);
          goto LABEL_686;
        }

LABEL_52:
        result = 0;
        goto LABEL_687;
      }
    }
  }

  memcpy(a1, v23, 0x4020uLL);
  if (a4 > 0x7E000000)
  {
    result = 0;
    goto LABEL_686;
  }

  v147 = *v7;
  v148 = a3;
  v13 = a2;
  v149 = &a2[-v147];
  v150 = *(a1 + 16392);
  v151 = v7[6];
  v599 = (v592 - 11);
  v582 = (v592 - 5);
  v586 = &v150[v151];
  v152 = &v150[v151 - v147];
  v7[6] = v151 + a4;
  *v7 = v147 + a4;
  *(v7 + 3) = 2;
  *(a1 + (((0xCF1BBCDCBB000000 * *a2) >> 50) & 0x3FFC)) = v147;
  v153 = a2 + 2;
  v154 = a2 + 1;
  v155 = v147 + 1;
  v156 = (v592 - 12);
  v524 = (v592 - 6);
  v529 = (v592 - 8);
  v157 = a2;
  v577 = v148;
  v158 = v594;
  v562 = &a2[-v147];
LABEL_126:
  v159 = *(v157 + 1);
  v160 = v593;
  do
  {
    v161 = ((0xCF1BBCDCBB000000 * v159) >> 50) & 0x3FFC;
    v162 = *(a1 + v161);
    v163 = v153;
    v159 = *v153;
    *(a1 + v161) = v155;
    if (v162 + 0xFFFF >= v155)
    {
      v164 = v162 >= v147 ? v149 : v152;
      if (*&v164[v162] == *v154)
      {
        v165 = 0;
        v166 = &v164[v162];
        if (v162 >= v147)
        {
          v167 = v13;
        }

        else
        {
          v167 = v150;
        }

        v168 = v155 - v162;
        v169 = v154 - v157;
        v170 = v154 - v157 - 15;
        v171 = v154 - v157 - 14;
        v172 = v170;
        do
        {
          v173 = v172;
          v174 = v165;
          v175 = &v166[v165];
          v176 = (v154 + v165);
          if (&v166[v165] <= v167 || v176 <= v157)
          {
            break;
          }

          --v172;
          --v165;
        }

        while (*(v176 - 1) == *(v175 - 1));
        v178 = v176 - v157;
        v179 = v148 + 1;
        if (&v148[v176 - v157 + 9 + (v169 + v174) / 0xFFu] > v158)
        {
          goto LABEL_246;
        }

        if ((v169 + v174) < 0xF)
        {
          *v148 = 16 * v178;
        }

        else
        {
          v180 = v174 + v170;
          *v148 = -16;
          if (v174 + v170 > 254)
          {
            v181 = v169 + 239;
            v543 = v169 + 239;
            if (v173 >= 0x1FD)
            {
              v182 = 509;
            }

            else
            {
              v182 = v173;
            }

            if (v173 >= 509)
            {
              v183 = 509;
            }

            else
            {
              v183 = v173;
            }

            v539 = v183;
            v546 = v150;
            v551 = v147;
            v184 = v152;
            v534 = v171;
            memset(v179, 255, (v181 - v182 + v174) / 0xFFu + 1);
            v156 = (v592 - 12);
            v152 = v184;
            v150 = v546;
            v147 = v551;
            v158 = v594;
            v13 = a2;
            v185 = (v543 - v539 + v174) / 0xFFu;
            v179 = &v148[v185 + 2];
            v180 = v185 + v534 + v174;
          }

          *v179 = v180;
          v179 = (v179 + 1);
        }

        v186 = (v179 + v178);
        do
        {
          v187 = *v157++;
          *v179++ = v187;
        }

        while (v179 < v186);
        v188 = v148;
        v157 = v176;
        while (1)
        {
          *v186 = v168;
          v148 = v186 + 1;
          if (v167 != v150)
          {
            v189 = (v157 + 4);
            v190 = v175 + 4;
            if (v156 > v157 + 4)
            {
              if (*v190 == *v189)
              {
                v191 = v157 + 3;
                v190 = v175 + 12;
LABEL_163:
                if (v191 >= v156)
                {
LABEL_167:
                  if (v191 < v529 && *v190 == *v191)
                  {
                    ++v190;
                    ++v191;
                  }

                  if (v191 < v524 && *v190 == *v191)
                  {
                    v190 = (v190 + 2);
                    v191 = (v191 + 2);
                  }

                  if (v191 < v582 && *v190 == *v191)
                  {
                    LODWORD(v191) = v191 + 1;
                  }

                  v193 = v191 - v189;
                }

                else
                {
                  v192 = v191 - v157 - 4;
                  while (*v190 == *v191)
                  {
                    v191 += 2;
                    v190 += 2;
                    v192 += 8;
                    if (v191 >= v156)
                    {
                      goto LABEL_167;
                    }
                  }

                  v193 = (__clz(__rbit64(*v191 ^ *v190)) >> 3) + v192;
                }
              }

              else
              {
                v193 = __clz(__rbit64(*v189 ^ *v190)) >> 3;
              }

              v157 = (v157 + v193 + 4);
              goto LABEL_225;
            }

            v191 = v157 + 1;
            goto LABEL_163;
          }

          v194 = v157 + v586 - v175;
          if (v194 > v582)
          {
            v194 = v592 - 5;
          }

          v195 = (v157 + 4);
          v196 = v175 + 4;
          v197 = v194 - 7;
          if (v194 - 7 <= v157 + 4)
          {
            v198 = v157 + 4;
          }

          else
          {
            if (*v196 != *v195)
            {
              v193 = __clz(__rbit64(*v195 ^ *v196)) >> 3;
              goto LABEL_201;
            }

            v198 = v157 + 12;
            v196 = v175 + 12;
          }

          if (v198 >= v197)
          {
LABEL_186:
            if (v198 < v194 - 3 && *v196 == *v198)
            {
              v196 = (v196 + 4);
              v198 += 4;
            }

            if (v198 < v194 - 1 && *v196 == *v198)
            {
              v196 = (v196 + 2);
              v198 += 2;
            }

            if (v198 < v194 && *v196 == *v198)
            {
              LODWORD(v198) = v198 + 1;
            }

            v193 = v198 - v195;
          }

          else
          {
            v199 = v198 - v157 - 4;
            while (*v196 == *v198)
            {
              v198 += 8;
              ++v196;
              v199 += 8;
              if (v198 >= v197)
              {
                goto LABEL_186;
              }
            }

            v193 = (__clz(__rbit64(*v198 ^ *v196)) >> 3) + v199;
          }

LABEL_201:
          v200 = v157 + v193 + 4;
          if (v200 != v194)
          {
            v157 = (v157 + v193 + 4);
            goto LABEL_225;
          }

          v201 = v13;
          v202 = v194;
          if (v156 <= v194)
          {
            goto LABEL_206;
          }

          if (*v13 == *v194)
          {
            v202 = v194 + 8;
            v201 = a2 + 8;
LABEL_206:
            if (v202 >= v156)
            {
LABEL_212:
              if (v202 < v529 && *v201 == *v202)
              {
                ++v201;
                ++v202;
              }

              if (v202 < v524 && *v201 == *v202)
              {
                v201 = (v201 + 2);
                v202 = (v202 + 2);
              }

              if (v202 < v582 && *v201 == *v202)
              {
                LODWORD(v202) = v202 + 1;
              }

              v205 = v202 - v194;
            }

            else
            {
              v203 = v157 + v586 - v175;
              if (v203 >= &a2[a4 - 5])
              {
                LODWORD(v203) = a2 + a4 - 5;
              }

              v204 = v202 - v203;
              while (*v201 == *v202)
              {
                v202 += 2;
                v201 += 2;
                v204 += 8;
                if (v202 >= v156)
                {
                  goto LABEL_212;
                }
              }

              v205 = (__clz(__rbit64(*v202 ^ *v201)) >> 3) + v204;
            }

            goto LABEL_224;
          }

          v205 = __clz(__rbit64(*v194 ^ *v13)) >> 3;
LABEL_224:
          v193 += v205;
          v157 = (v200 + v205);
LABEL_225:
          if (v186 + (v193 + 240) / 0xFF + 8 > v158)
          {
            goto LABEL_246;
          }

          v206 = *v188;
          v207 = v193 - 15;
          if (v193 < 0xF)
          {
            *v188 = v206 + v193;
          }

          else
          {
            *v188 = v206 + 15;
            *v148 = -1;
            if (v207 >= 0x3FC)
            {
              v208 = v186 + 3;
              v209 = v193 - 1035;
              v210 = (v193 - 1035) / 0x3FC;
              v211 = 2 * v210;
              v212 = v147;
              v213 = v150;
              v214 = v152;
              memset(v186 + 3, 255, v211 * 2 + 4);
              v149 = v562;
              v156 = (v592 - 12);
              v152 = v214;
              v150 = v213;
              v147 = v212;
              v158 = v594;
              v13 = a2;
              LOWORD(v207) = v209 - 1020 * v210;
              v148 = &v208[v211];
            }

            v215 = v207 / 0xFFu;
            v216 = &v148[v215];
            *v216 = v207 + v215;
            v148 = v216 + 1;
          }

          if (v157 >= v599)
          {
            goto LABEL_244;
          }

          *(a1 + (((0xCF1BBCDCBB000000 * *(v157 - 2)) >> 50) & 0x3FFC)) = v157 - 2 - v149;
          v217 = v157 - v149;
          v218 = ((0xCF1BBCDCBB000000 * *v157) >> 50) & 0x3FFC;
          v219 = *(a1 + v218);
          if (v219 >= v147)
          {
            v220 = v149;
          }

          else
          {
            v220 = v152;
          }

          if (v219 >= v147)
          {
            v167 = v13;
          }

          else
          {
            v167 = v150;
          }

          *(a1 + v218) = v217;
          if (v219 + 0xFFFF < v217 || (v175 = &v220[v219], *&v220[v219] != *v157))
          {
            v154 = (v157 + 1);
            v155 = v157 + 1 - v149;
            v153 = (v157 + 2);
            if (v157 + 2 > v599)
            {
              goto LABEL_244;
            }

            goto LABEL_126;
          }

          *v148 = 0;
          v186 = v148 + 1;
          v168 = v217 - v219;
          v188 = v148;
        }
      }
    }

    v155 = v163 - v149;
    v153 = (v163 + (v160++ >> 6));
    v154 = v163;
  }

  while (v153 <= v599);
LABEL_244:
  v221 = v592 - v157;
  sub_29A0E8D9C();
  if (!v16 && v19)
  {
    goto LABEL_246;
  }

  if (v221 < 0xF)
  {
    *v148 = 16 * v221;
    LODWORD(a3) = v577;
    v7 = v589;
  }

  else
  {
    v302 = sub_29A0E8E4C(v148);
    if (v19)
    {
      sub_29A0E8F4C();
      sub_29A0E8E10(v305, v304 - v157);
      v303 = v149 - 1;
      v302 = v148 + 65537;
    }

    LODWORD(a3) = v577;
    v7 = v589;
    *v302 = v303;
    v148 = v302;
  }

  memcpy(v148 + 1, v157, v221);
  v512 = v148 + 1 + v221;
LABEL_682:
  result = (v512 - a3);
LABEL_686:
  v13 = a2;
LABEL_687:
  *(a1 + 16392) = v13;
  v7[6] = a4;
  return result;
}