uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(_OWORD **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v86 = MEMORY[0x29EDCA190];
  v8 = a3[1];
  if (v8 < 1)
  {
LABEL_62:
    if (!*a1)
    {
      goto LABEL_79;
    }

    specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v86, *a1, a4);
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x29EDCA190];
    v84 = v7;
    while (1)
    {
      v11 = specialized _findNextRun<A>(in:from:by:)(v85, *v7, v8, v9, a4);
      if (v6)
      {
        break;
      }

      v80 = *&v85[0];
      if (v11)
      {
        if (*&v85[0] < v9)
        {
          goto LABEL_78;
        }

        if (v9 < *&v85[0])
        {
          v12 = 32 * *&v85[0] - 32;
          v13 = 32 * v9;
          v14 = *&v85[0];
          v15 = v9;
          do
          {
            v16 = v14 - 1;
            if (v15 != v14 - 1)
            {
              v17 = v7[1];
              if (v15 >= v17 || v14 > v17)
              {
                while (1)
                {
                  _fatalErrorMessage(_:_:file:line:flags:)();
                  __break(1u);
LABEL_81:
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_79:
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }
              }

              v19 = *v7;
              if (!*v7)
              {
                goto LABEL_81;
              }

              v20 = (v19 + v13);
              v21 = (v19 + v12);
              outlined init with take of Any((v19 + v13), v85);
              v22 = v21[1];
              *v20 = *v21;
              v20[1] = v22;
              outlined init with take of Any(v85, v21);
              v7 = v84;
            }

            ++v15;
            v12 -= 32;
            v13 += 32;
            v14 = v16;
          }

          while (v15 < v16);
        }
      }

      v23 = v7[1];
      v24 = v80;
      if (v80 < v23)
      {
        if (__OFSUB__(v80, v9))
        {
          goto LABEL_76;
        }

        if (v80 - v9 < a6)
        {
          if (__OFADD__(v9, a6))
          {
            goto LABEL_77;
          }

          if (v9 + a6 >= v23)
          {
            v25 = v7[1];
          }

          else
          {
            v25 = v9 + a6;
          }

          if (v25 < v9)
          {
LABEL_78:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            goto LABEL_79;
          }

          specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(v9, v25, v80, a4);
          v24 = v25;
        }
      }

      if (v24 < v9)
      {
        goto LABEL_78;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v27 = *(v10 + 2);
      v26 = *(v10 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v10);
      }

      *(v10 + 2) = v28;
      v29 = &v10[16 * v27];
      *(v29 + 4) = v9;
      *(v29 + 5) = v24;
      v86 = v10;
      v81 = v24;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_79;
      }

      if (v27)
      {
        do
        {
          v30 = v28 - 1;
          if (v28 >= 4)
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 4, 1, v10);
            v33 = v10 + 32;
            v34 = &v10[16 * v28 - 32];
            v36 = *v34;
            v35 = *(v34 + 1);
            v37 = v35 - v36;
            if (__OFSUB__(v35, v36))
            {
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
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v31 = v28 - 3;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 3, 1, v10);
            v38 = &v33[16 * v28 - 48];
            v40 = *v38;
            v39 = *(v38 + 1);
            v41 = v39 - v40;
            if (__OFSUB__(v39, v40))
            {
              goto LABEL_66;
            }

            v32 = v28 - 2;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 2, 1, v10);
            v42 = &v10[16 * v28];
            v44 = *v42;
            v43 = *(v42 + 1);
            v45 = __OFSUB__(v43, v44);
            v46 = v43 - v44;
            if (v45)
            {
              goto LABEL_68;
            }

            v45 = __OFADD__(v41, v46);
            v47 = v41 + v46;
            if (v45)
            {
              goto LABEL_71;
            }

            if (v47 >= v37)
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 3, 1, v10);
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 1, 1, v10);
              v68 = &v33[16 * v30];
              v70 = *v68;
              v69 = *(v68 + 1);
              v45 = __OFSUB__(v69, v70);
              v71 = v69 - v70;
              if (v45)
              {
                goto LABEL_75;
              }

              v72 = v41 < v71;
              goto LABEL_54;
            }
          }

          else
          {
            v31 = 0;
            v32 = 0;
            if (v28 != 3)
            {
              goto LABEL_47;
            }
          }

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v31, 1, v10);
          v48 = &v10[16 * v31 + 32];
          v50 = *v48;
          v49 = *(v48 + 1);
          v51 = v49 - v50;
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_67;
          }

          v32 = v28 - 2;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 2, 1, v10);
          v52 = &v10[16 * v28];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = v53 - v54;
          if (__OFSUB__(v53, v54))
          {
            goto LABEL_70;
          }

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 1, 1, v10);
          v56 = &v10[16 * v30 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = v57 - v58;
          if (__OFSUB__(v57, v58))
          {
            goto LABEL_73;
          }

          if (__OFADD__(v55, v59))
          {
            goto LABEL_74;
          }

          if (v55 + v59 >= v51)
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v31, 1, v10);
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28 - 1, 1, v10);
            v72 = v51 < v59;
LABEL_54:
            if (v72)
            {
              v30 = v32;
            }

            goto LABEL_56;
          }

LABEL_47:
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v32, 1, v10);
          v60 = &v10[16 * v28];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = v61 - v62;
          if (__OFSUB__(v61, v62))
          {
            goto LABEL_69;
          }

          v64 = &v10[16 * v30];
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v30, 1, v10);
          v65 = *(v64 + 4);
          v66 = *(v64 + 5);
          v45 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          if (v45)
          {
            goto LABEL_72;
          }

          if (v67 < v63)
          {
            break;
          }

LABEL_56:
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v30 - 1, 1, v10);
          v73 = v10 + 32;
          v74 = *&v10[16 * v30 + 16];
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v30, 1, v10);
          if (!*v84)
          {
            goto LABEL_79;
          }

          v75 = *&v73[16 * v30 + 8];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v84 + 32 * v74), (*v84 + 32 * *&v73[16 * v30]), (*v84 + 32 * v75), v82, a4);
          if (v75 < v74)
          {
            goto LABEL_78;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          specialized Array._checkSubscript_mutating(_:)(v30 - 1, v10);
          v76 = &v10[16 * v30 - 16];
          *(v76 + 4) = v74;
          *(v76 + 5) = v75;
          v86 = v10;
          specialized Array.remove(at:)(v30);
          v10 = v86;
          v28 = *(v86 + 2);
        }

        while (v28 > 1);
      }

      v7 = v84;
      v8 = v84[1];
      v9 = v81;
      if (v81 >= v8)
      {
        goto LABEL_62;
      }
    }
  }
}

uint64_t specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, void (*a2)(void *, uint64_t *))
{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm(a1);
  v11 = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm;
    v8 = v6;
    v10[0] = v6;
    v10[1] = a1;
    a2(v10, &v11);
    if (v2)
    {
      if (v11 <= a1 && v10[0] && v8 == v10[0])
      {
        *(v7 + 16) = v11;

        return v7;
      }
    }

    else if (v11 <= a1 && v10[0] && v8 == v10[0])
    {
      *(v7 + 16) = v11;
      return v7;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

{
  return specialized Array.init(_unsafeUninitializedCapacity:initializingWith:)(a1, a2);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, int *a2, uint64_t (*a3)(int *, int *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 4 * v9), (*v14 + 4 * *&v6[16 * v8 + 32]), (*v14 + 4 * v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 4 * v9), (*v14 + 4 * *&v6[16 * v8 + 32]), (*v14 + 4 * v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, __int16 *a2, uint64_t (*a3)(__int16 *, __int16 *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 2 * v9), (*v14 + 2 * *&v6[16 * v8 + 32]), (*v14 + 2 * v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t (*a3)(char *, char *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + v9), (*v14 + *&v6[16 * v8 + 32]), (*v14 + v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, uint64_t *a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * v9), (*v14 + 8 * *&v6[16 * v8 + 32]), (*v14 + 8 * v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * v9), (*v14 + 8 * *&v6[16 * v8 + 32]), (*v14 + 8 * v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 16 * v9), (*v14 + 16 * *&v6[16 * v8 + 32]), *v14 + 16 * v10, a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, _OWORD *a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  *a1 = v6;
  v7 = *(v6 + 2);
  if (v7 < 2)
  {
    return 1;
  }

  while (1)
  {
    v8 = v7 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 2, 1, v6);
    v9 = *&v6[16 * v7];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7 - 1, 1, v6);
    if (!*v14)
    {
      break;
    }

    v10 = *&v6[16 * v8 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 32 * v9), (*v14 + 32 * *&v6[16 * v8 + 32]), (*v14 + 32 * v10), a2, a3);
    if (v3)
    {
      return 1;
    }

    if (v10 < v9)
    {
      goto LABEL_12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    specialized Array._checkSubscript_mutating(_:)(v7 - 2, v6);
    v11 = &v6[16 * v7];
    *v11 = v9;
    *(v11 + 1) = v10;
    *a1 = v6;
    specialized Array.remove(at:)(v7 - 1);
    v6 = *a1;
    v7 = *(*a1 + 2);
    if (v7 <= 1)
    {
      return 1;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _findNextRun<A>(in:from:by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(int *, int *))
{
  v7 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v8 = a3;
    if (v7 >= a3)
    {
      v6 = 0;
      *a1 = v7;
      return v6 & 1;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v20 = *(a2 + 4 * v7);
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v19 = *(a2 + 4 * a4);
        v13 = a5(&v20, &v19);
        if (!v5)
        {
          v6 = v13;
          v14 = a4;
          v15 = a4 + 2;
          v16 = (a2 + 4 * v14 + 8);
          while (v8 != v15)
          {
            v17 = *v16;
            v19 = *(v16 - 1);
            v20 = v17;
            ++v15;
            ++v16;
            if ((v6 & 1) != (a5(&v20, &v19) & 1))
            {
              v8 = v15 - 1;
              break;
            }
          }

          *a1 = v8;
        }

        return v6 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v7 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v8 = a3;
    if (v7 >= a3)
    {
      v6 = 0;
      *a1 = v7;
      return v6 & 1;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v20 = *(a2 + 4 * v7);
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v19 = *(a2 + 4 * a4);
        v13 = a5(&v20, &v19);
        if (!v5)
        {
          v6 = v13;
          v14 = a4;
          v15 = a4 + 2;
          v16 = (a2 + 4 * v14 + 8);
          while (v8 != v15)
          {
            v17 = *v16;
            v19 = *(v16 - 1);
            v20 = v17;
            ++v15;
            ++v16;
            if ((v6 & 1) != (a5(&v20, &v19) & 1))
            {
              v8 = v15 - 1;
              break;
            }
          }

          *a1 = v8;
        }

        return v6 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _findNextRun<A>(in:from:by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int16 *, __int16 *))
{
  v7 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v8 = a3;
    if (v7 >= a3)
    {
      v6 = 0;
      *a1 = v7;
      return v6 & 1;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v21 = *(a2 + 2 * v7);
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v20 = *(a2 + 2 * a4);
        v13 = a5(&v21, &v20);
        if (!v5)
        {
          v6 = v13;
          v14 = a4;
          v15 = a4 + 2;
          v16 = (a2 + 2 * v14 + 4);
          while (v8 != v15)
          {
            v19 = *v16;
            v18 = *(v16 - 1);
            ++v15;
            ++v16;
            if ((v6 & 1) != (a5(&v19, &v18) & 1))
            {
              v8 = v15 - 1;
              break;
            }
          }

          *a1 = v8;
        }

        return v6 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _findNextRun<A>(in:from:by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *))
{
  v7 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v8 = a3;
    if (v7 >= a3)
    {
      v6 = 0;
      *a1 = v7;
      return v6 & 1;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = a4;
      v18 = *(a2 + v7);
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v17 = *(a2 + a4);
        v13 = a5(&v18, &v17);
        if (!v5)
        {
          v6 = v13;
          while (v8 - 2 != v9)
          {
            v16 = *(a2 + v9 + 2);
            v15 = *(a2 + v9++ + 1);
            if ((v6 & 1) != (a5(&v16, &v15) & 1))
            {
              v8 = v9 + 1;
              break;
            }
          }

          *a1 = v8;
        }

        return v6 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _findNextRun<A>(in:from:by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v7 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v8 = a3;
    if (v7 >= a3)
    {
      v6 = 0;
      *a1 = v7;
      return v6 & 1;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v20 = *(a2 + 8 * v7);
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v19 = *(a2 + 8 * a4);
        v13 = a5(&v20, &v19);
        if (!v5)
        {
          v6 = v13;
          v14 = a4;
          v15 = a4 + 2;
          v16 = (a2 + 8 * v14 + 16);
          while (v8 != v15)
          {
            v17 = *(v16 - 1);
            v20 = *v16;
            v19 = v17;
            ++v15;
            ++v16;
            if ((v6 & 1) != (a5(&v20, &v19) & 1))
            {
              v8 = v15 - 1;
              break;
            }
          }

          *a1 = v8;
        }

        return v6 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v7 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v8 = a3;
    if (v7 >= a3)
    {
      v6 = 0;
      *a1 = v7;
      return v6 & 1;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v20 = *(a2 + 8 * v7);
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v19 = *(a2 + 8 * a4);
        v13 = a5(&v20, &v19);
        if (!v5)
        {
          v6 = v13;
          v14 = a4;
          v15 = a4 + 2;
          v16 = (a2 + 8 * v14 + 16);
          while (v8 != v15)
          {
            v17 = *(v16 - 1);
            v20 = *v16;
            v19 = v17;
            ++v15;
            ++v16;
            if ((v6 & 1) != (a5(&v20, &v19) & 1))
            {
              v8 = v15 - 1;
              break;
            }
          }

          *a1 = v8;
        }

        return v6 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v6 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v7 = a3;
    if (v6 >= a3)
    {
      v14 = 0;
      *a1 = v6;
      return v14 & 1;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = (a2 + 16 * v6);
      v9 = v8[1];
      v24 = *v8;
      v25 = v9;
      if ((a4 & 0x8000000000000000) == 0 && a4 < a3)
      {
        v12 = (a2 + 16 * a4);
        v13 = v12[1];
        v22 = *v12;
        v23 = v13;

        v14 = a5(&v24, &v22);

        if (!v5)
        {
          v26 = a5;
          v15 = a4 + 2;
          v16 = v12 + 5;
          while (v7 != v15)
          {
            v17 = *v16;
            v24 = *(v16 - 1);
            v25 = v17;
            v18 = *(v16 - 2);
            v22 = *(v16 - 3);
            v23 = v18;

            v19 = v26(&v24, &v22);

            ++v15;
            v16 += 2;
            if ((v14 & 1) != (v19 & 1))
            {
              v7 = v15 - 1;
              break;
            }
          }

          *a1 = v7;
        }

        return v14 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v6 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v7 = a3;
    if (v6 >= a3)
    {
      v13 = 0;
      *a1 = v6;
      return v13 & 1;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      outlined init with copy of Any(a2 + 32 * v6, v19);
      if ((a4 & 0x8000000000000000) == 0 && a4 < v7)
      {
        v12 = a2 + 32 * a4;
        outlined init with copy of Any(v12, v18);
        v13 = a5(v19, v18);
        __swift_destroy_boxed_opaque_existential_0(v18);
        __swift_destroy_boxed_opaque_existential_0(v19);
        if (!v5)
        {
          v14 = a4 + 2;
          v15 = v12 + 64;
          while (v7 != v14)
          {
            outlined init with copy of Any(v15, v19);
            outlined init with copy of Any(v15 - 32, v18);
            v16 = a5(v19, v18);
            __swift_destroy_boxed_opaque_existential_0(v18);
            __swift_destroy_boxed_opaque_existential_0(v19);
            ++v14;
            v15 += 32;
            if ((v13 & 1) != (v16 & 1))
            {
              v7 = v14 - 1;
              break;
            }
          }

          *a1 = v7;
        }

        return v13 & 1;
      }
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.append(_:)(uint64_t a1)
{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array.append(_:)(int a1)
{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 4 * v6 + 32) = a1;
  *v1 = v3;
  return result;
}

uint64_t specialized Array.append(_:)(__int16 a1)
{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array.append(_:)(char a1)
{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array.append(_:)(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = a2(v7 > 1, v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = a1;
  *v2 = v5;
  return result;
}

uint64_t specialized Array.append(_:)(int a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = a2(v7 > 1, v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 4 * v8 + 32) = a1;
  *v2 = v5;
  return result;
}

uint64_t specialized Array.append(_:)(__int16 a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = a2(v7 > 1, v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 2 * v8 + 32) = a1;
  *v2 = v5;
  return result;
}

uint64_t specialized Array.append(_:)(char a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = a2(v7 > 1, v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + v8 + 32) = a1;
  *v2 = v5;
  return result;
}

uint64_t specialized Array.append(_:)(float a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 4 * v6 + 32) = a1;
  *v1 = v3;
  return result;
}

uint64_t specialized Array.append(_:)(double a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = a1;
  *v1 = v3;
  return result;
}

uint64_t specialized Array.append(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.append(_:)(a1, a2, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized Array.append(_:)(a1, a2, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized Array.append(_:)(a1, a2, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized Array.append(_:)(a1, a2, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *v2 = v5;
  return result;
}

uint64_t specialized Array.append(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9, a3, a4);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9, a3, a4);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *v4 = v9;
  return result;
}

_OWORD *specialized Array.append(_:)(_OWORD *a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  result = outlined init with take of Any(a1, &v3[32 * v5 + 32]);
  *v1 = v3;
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  v34 = __src;
  v33 = __dst;
  if (v11 >= v13 >> 3)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v13 >> 3, __dst);
    v18 = &v5[v14];
    if (v12 >= 8)
    {
      v19 = &v5[v14];
      v20 = v27;
      do
      {
        v28 = v18;
        v21 = v7--;
        --v6;
        while (1)
        {
          if (v21 <= v8)
          {
            v34 = v21;
            v32 = v28;
            goto LABEL_39;
          }

          v23 = v19 - 1;
          v22 = *(v19 - 1);
          v30 = *v7;
          v31 = v22;
          v24 = a5(&v31, &v30);
          if (v20)
          {
            v34 = v21;
            v32 = v18;
            goto LABEL_39;
          }

          v25 = v6 + 1;
          if (v24)
          {
            break;
          }

          v18 = v19 - 1;
          if (v25 != v19)
          {
            *v6 = *v23;
          }

          --v6;
          --v19;
          if (v23 <= v5)
          {
            v7 = v21;
            goto LABEL_38;
          }
        }

        if (v25 != v21)
        {
          *v6 = *v7;
        }
      }

      while (v19 > v5);
    }

LABEL_38:
    v34 = v7;
    v32 = v18;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, v11, __dst);
    v15 = &v5[v11];
    v32 = v15;
    if (v9 >= 8 && v7 < v6)
    {
      do
      {
        v31 = *v7;
        v30 = *v5;
        v16 = a5(&v31, &v30);
        if (v27)
        {
          break;
        }

        if (v16)
        {
          v17 = v7 + 1;
          if (v8 < v7 || v8 >= v17 || v8 != v7)
          {
            *v8 = *v7;
          }
        }

        else
        {
          if (v8 != v5)
          {
            *v8 = *v5;
          }

          v33 = ++v5;
          v17 = v7;
        }

        v34 = ++v8;
        if (v5 >= v15)
        {
          break;
        }

        v7 = v17;
      }

      while (v17 < v6);
    }
  }

LABEL_39:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v34, &v33, &v32);
  return 1;
}

{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  v34 = __src;
  v33 = __dst;
  if (v11 >= v13 >> 3)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v13 >> 3, __dst);
    v18 = &v5[v14];
    if (v12 >= 8)
    {
      v19 = &v5[v14];
      v20 = v27;
      do
      {
        v28 = v18;
        v21 = v7--;
        --v6;
        while (1)
        {
          if (v21 <= v8)
          {
            v34 = v21;
            v32 = v28;
            goto LABEL_39;
          }

          v22 = v19 - 1;
          v23 = *(v19 - 1);
          v30 = *v7;
          v31 = v23;
          v24 = a5(&v31, &v30);
          if (v20)
          {
            v34 = v21;
            v32 = v18;
            goto LABEL_39;
          }

          v25 = v6 + 1;
          if (v24)
          {
            break;
          }

          v18 = v19 - 1;
          if (v25 != v19)
          {
            *v6 = *v22;
          }

          --v6;
          --v19;
          if (v22 <= v5)
          {
            v7 = v21;
            goto LABEL_38;
          }
        }

        if (v25 != v21)
        {
          *v6 = *v7;
        }
      }

      while (v19 > v5);
    }

LABEL_38:
    v34 = v7;
    v32 = v18;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, v11, __dst);
    v15 = &v5[v11];
    v32 = v15;
    if (v9 >= 8 && v7 < v6)
    {
      do
      {
        v31 = *v7;
        v30 = *v5;
        v16 = a5(&v31, &v30);
        if (v27)
        {
          break;
        }

        if (v16)
        {
          v17 = v7 + 1;
          if (v8 < v7 || v8 >= v17 || v8 != v7)
          {
            *v8 = *v7;
          }
        }

        else
        {
          if (v8 != v5)
          {
            *v8 = *v5;
          }

          v33 = ++v5;
          v17 = v7;
        }

        v34 = ++v8;
        if (v5 >= v15)
        {
          break;
        }

        v7 = v17;
      }

      while (v17 < v6);
    }
  }

LABEL_39:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v34, &v33, &v32);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(int *__src, int *a2, int *a3, int *__dst, uint64_t (*a5)(int *, int *))
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 3;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 2;
  v12 = a3 - a2;
  v13 = a3 - a2 + 3;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 2;
  v34 = __src;
  v33 = __dst;
  if (v11 >= v13 >> 2)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v13 >> 2, __dst);
    v18 = &v5[v14];
    if (v12 >= 4)
    {
      v19 = &v5[v14];
      v20 = v27;
      do
      {
        v28 = v18;
        v21 = v7--;
        --v6;
        while (1)
        {
          if (v21 <= v8)
          {
            v34 = v21;
            v32 = v28;
            goto LABEL_39;
          }

          v23 = v19 - 1;
          v22 = *(v19 - 1);
          v30 = *v7;
          v31 = v22;
          v24 = a5(&v31, &v30);
          if (v20)
          {
            v34 = v21;
            v32 = v18;
            goto LABEL_39;
          }

          v25 = v6 + 1;
          if (v24)
          {
            break;
          }

          v18 = v19 - 1;
          if (v25 != v19)
          {
            *v6 = *v23;
          }

          --v6;
          --v19;
          if (v23 <= v5)
          {
            v7 = v21;
            goto LABEL_38;
          }
        }

        if (v25 != v21)
        {
          *v6 = *v7;
        }
      }

      while (v19 > v5);
    }

LABEL_38:
    v34 = v7;
    v32 = v18;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, v11, __dst);
    v15 = &v5[v11];
    v32 = v15;
    if (v9 >= 4 && v7 < v6)
    {
      do
      {
        v31 = *v7;
        v30 = *v5;
        v16 = a5(&v31, &v30);
        if (v27)
        {
          break;
        }

        if (v16)
        {
          v17 = v7 + 1;
          if (v8 < v7 || v8 >= v17 || v8 != v7)
          {
            *v8 = *v7;
          }
        }

        else
        {
          if (v8 != v5)
          {
            *v8 = *v5;
          }

          v33 = ++v5;
          v17 = v7;
        }

        v34 = ++v8;
        if (v5 >= v15)
        {
          break;
        }

        v7 = v17;
      }

      while (v17 < v6);
    }
  }

LABEL_39:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v34, &v33, &v32);
  return 1;
}

{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 3;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 2;
  v12 = a3 - a2;
  v13 = a3 - a2 + 3;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 2;
  v34 = __src;
  v33 = __dst;
  if (v11 >= v13 >> 2)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v13 >> 2, __dst);
    v18 = &v5[v14];
    if (v12 >= 4)
    {
      v19 = &v5[v14];
      v20 = v27;
      do
      {
        v28 = v18;
        v21 = v7--;
        --v6;
        while (1)
        {
          if (v21 <= v8)
          {
            v34 = v21;
            v32 = v28;
            goto LABEL_39;
          }

          v22 = v19 - 1;
          v23 = *(v19 - 1);
          v30 = *v7;
          v31 = v23;
          v24 = a5(&v31, &v30);
          if (v20)
          {
            v34 = v21;
            v32 = v18;
            goto LABEL_39;
          }

          v25 = v6 + 1;
          if (v24)
          {
            break;
          }

          v18 = v19 - 1;
          if (v25 != v19)
          {
            *v6 = *v22;
          }

          --v6;
          --v19;
          if (v22 <= v5)
          {
            v7 = v21;
            goto LABEL_38;
          }
        }

        if (v25 != v21)
        {
          *v6 = *v7;
        }
      }

      while (v19 > v5);
    }

LABEL_38:
    v34 = v7;
    v32 = v18;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, v11, __dst);
    v15 = &v5[v11];
    v32 = v15;
    if (v9 >= 4 && v7 < v6)
    {
      do
      {
        v31 = *v7;
        v30 = *v5;
        v16 = a5(&v31, &v30);
        if (v27)
        {
          break;
        }

        if (v16)
        {
          v17 = v7 + 1;
          if (v8 < v7 || v8 >= v17 || v8 != v7)
          {
            *v8 = *v7;
          }
        }

        else
        {
          if (v8 != v5)
          {
            *v8 = *v5;
          }

          v33 = ++v5;
          v17 = v7;
        }

        v34 = ++v8;
        if (v5 >= v15)
        {
          break;
        }

        v7 = v17;
      }

      while (v17 < v6);
    }
  }

LABEL_39:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v34, &v33, &v32);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(__int16 *__src, __int16 *a2, __int16 *a3, __int16 *__dst, uint64_t (*a5)(__int16 *, __int16 *))
{
  v31 = __src;
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src;
  v11 = a3 - a2;
  v12 = a3 - a2;
  v30 = __dst;
  if (v10 >= v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, __dst);
    v16 = &v5[v12];
    if (v11 >= 2)
    {
      v17 = &v5[v12];
      v18 = v24;
      do
      {
        v25 = v16;
        v19 = v7--;
        --v6;
        while (1)
        {
          if (v19 <= v8)
          {
            v31 = v19;
            v29 = v25;
            goto LABEL_35;
          }

          v20 = v17 - 1;
          v28 = *(v17 - 1);
          v27 = *v7;
          v21 = a5(&v28, &v27);
          if (v18)
          {
            v31 = v19;
            v29 = v16;
            goto LABEL_35;
          }

          v22 = v6 + 1;
          if (v21)
          {
            break;
          }

          v16 = v17 - 1;
          if (v22 != v17)
          {
            *v6 = *v20;
          }

          --v6;
          --v17;
          if (v20 <= v5)
          {
            v7 = v19;
            goto LABEL_34;
          }
        }

        if (v22 != v19)
        {
          *v6 = *v7;
        }
      }

      while (v17 > v5);
    }

LABEL_34:
    v31 = v7;
    v29 = v16;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2 - __src, __dst);
    v13 = &v5[v10];
    v29 = v13;
    if (v9 >= 2 && v7 < v6)
    {
      do
      {
        v28 = *v7;
        v27 = *v5;
        v14 = a5(&v28, &v27);
        if (v24)
        {
          break;
        }

        if (v14)
        {
          v15 = v7 + 1;
          if (v8 < v7 || v8 >= v15 || v8 != v7)
          {
            *v8 = *v7;
          }
        }

        else
        {
          if (v8 != v5)
          {
            *v8 = *v5;
          }

          v30 = ++v5;
          v15 = v7;
        }

        v31 = ++v8;
        if (v5 >= v13)
        {
          break;
        }

        v7 = v15;
      }

      while (v15 < v6);
    }
  }

LABEL_35:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v31, &v30, &v29);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *__dst, uint64_t (*a5)(char *, char *))
{
  v29 = __src;
  v7 = __dst;
  v8 = a3;
  v9 = a2;
  v10 = __src;
  v11 = a2 - __src;
  v12 = a3 - a2;
  v28 = __dst;
  if (a2 - __src >= a3 - a2)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, __dst);
    v16 = &v7[v12];
    if (v12 >= 1)
    {
      v17 = &v7[v12];
      while (2)
      {
        v23 = v16;
        v18 = v9--;
        --v8;
        while (1)
        {
          if (v18 <= v10)
          {
            v29 = v18;
            v27 = v23;
            goto LABEL_38;
          }

          v19 = v17 - 1;
          v26 = *(v17 - 1);
          v25 = *v9;
          v20 = a5(&v26, &v25);
          if (v5)
          {
            v29 = v18;
            v27 = v16;
            goto LABEL_38;
          }

          v21 = v8 + 1;
          if (v20)
          {
            break;
          }

          v16 = (v17 - 1);
          if (v21 < v17 || v8 >= v17)
          {
            *v8 = *v19;
          }

          --v8;
          --v17;
          if (v19 <= v7)
          {
            v9 = v18;
            goto LABEL_37;
          }
        }

        if (v21 < v18 || v8 >= v18)
        {
          *v8 = *v9;
          if (v17 > v7)
          {
            continue;
          }
        }

        else if (v17 > v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
    v29 = v9;
    v27 = v16;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2 - __src, __dst);
    v13 = &v7[v11];
    v27 = &v7[v11];
    if (v11 >= 1 && v9 < v8)
    {
      do
      {
        v26 = *v9;
        v25 = *v7;
        v14 = a5(&v26, &v25);
        if (v5)
        {
          break;
        }

        if (v14)
        {
          v15 = v9 + 1;
          if (v10 < v9 || v10 >= v15)
          {
            *v10 = *v9;
          }
        }

        else
        {
          if (v10 < v7 || v10 >= v7 + 1)
          {
            *v10 = *v7;
          }

          v28 = v7 + 1;
          v15 = v9;
          ++v7;
        }

        v29 = ++v10;
        if (v7 >= v13)
        {
          break;
        }

        v9 = v15;
      }

      while (v15 < v8);
    }
  }

LABEL_38:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v29, &v28, &v27);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *__dst, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = v5;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 4;
  v13 = a3 - a2;
  v14 = a3 - a2 + 15;
  if ((a3 - a2) >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 4;
  v52 = __src;
  v51 = __dst;
  if (v12 >= v14 >> 4)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v14 >> 4, __dst);
    v43 = __dst;
    v23 = &__dst[16 * v15];
    if (v13 >= 16)
    {
      v24 = &__dst[16 * v15];
      v25 = a3;
      do
      {
        v26 = v8;
        v27 = v25 - 1;
        v39 = v8 - 16;
        v40 = v23;
        while (1)
        {
          if (v26 <= v9)
          {
            v52 = v26;
            v50 = v40;
            goto LABEL_39;
          }

          v45 = v23;
          v28 = v6;
          v29 = v27;
          v30 = v24;
          v32 = *(v24 - 1);
          v31 = v24 - 16;
          v48 = *(v24 - 2);
          v49 = v32;
          v33 = *(v26 - 1);
          v34 = v26;
          v46 = *(v26 - 2);
          v47 = v33;

          v35 = a5(&v48, &v46);
          if (v28)
          {

            v52 = v34;
            v50 = v45;
            goto LABEL_39;
          }

          v36 = v35;

          v25 = v29;
          v37 = (v29 + 1);
          if (v36)
          {
            break;
          }

          v23 = v31;
          v26 = v34;
          if (v37 != v30)
          {
            *v29 = *v31;
          }

          v27 = v29 - 1;
          v24 = v31;
          v6 = 0;
          if (v31 <= v43)
          {
            v8 = v34;
            goto LABEL_38;
          }
        }

        v24 = v30;
        v8 = v39;
        if (v37 != v34)
        {
          *v29 = *v39;
        }

        v23 = v45;
        v6 = 0;
      }

      while (v24 > v43);
    }

LABEL_38:
    v52 = v8;
    v50 = v23;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, v12, __dst);
    v42 = &__dst[16 * v12];
    v50 = v42;
    if (v10 >= 16 && v8 < a3)
    {
      v16 = __dst;
      while (1)
      {
        v17 = *(v8 + 1);
        v48 = *v8;
        v49 = v17;
        v18 = *(v16 + 1);
        v46 = *v16;
        v47 = v18;

        v19 = a5(&v48, &v46);
        if (v5)
        {
          break;
        }

        v20 = v19;

        if (v20)
        {
          v21 = v8 + 16;
          v22 = a3;
          if (v9 < v8 || v9 >= v21 || v9 != v8)
          {
            *v9 = *v8;
          }
        }

        else
        {
          v22 = a3;
          if (v9 != v16)
          {
            *v9 = *v16;
          }

          v16 += 16;
          v51 = v16;
          v21 = v8;
        }

        v9 += 16;
        v52 = v9;
        if (v16 < v42)
        {
          v8 = v21;
          if (v21 < v22)
          {
            continue;
          }
        }

        goto LABEL_39;
      }
    }
  }

LABEL_39:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v52, &v51, &v50);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__src, _BYTE *a2, _OWORD *a3, _OWORD *__dst, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = v5;
  v7 = __dst;
  v8 = a3;
  v9 = a2;
  v10 = __src;
  v11 = a2 - __src;
  v12 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v12 = a2 - __src;
  }

  v13 = v12 >> 5;
  v14 = a3 - a2;
  v15 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 5;
  v42 = __src;
  v41 = __dst;
  if (v13 >= v15 >> 5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v15 >> 5, __dst);
    v23 = &v7[2 * v16];
    if (v14 >= 32)
    {
      v24 = &v7[2 * v16];
      do
      {
        v35 = v23;
        v36 = v9;
        v9 -= 2;
        v25 = v24 - 2;
        v8 -= 2;
        while (1)
        {
          if (v36 <= v10)
          {
            v42 = v36;
            v40 = v35;
            goto LABEL_38;
          }

          v28 = v6;
          v29 = v24;
          outlined init with copy of Any(v25, v39);
          outlined init with copy of Any(v9, v38);
          v30 = a5(v39, v38);
          if (v28)
          {
            v42 = v36;
            v40 = v23;
            __swift_destroy_boxed_opaque_existential_0(v38);
            __swift_destroy_boxed_opaque_existential_0(v39);
            goto LABEL_38;
          }

          v31 = v30;
          __swift_destroy_boxed_opaque_existential_0(v38);
          __swift_destroy_boxed_opaque_existential_0(v39);
          if (v31)
          {
            break;
          }

          if (v8 + 2 != v25 + 2)
          {
            v32 = v25[1];
            *v8 = *v25;
            v8[1] = v32;
          }

          v23 = v29 - 2;
          v26 = v25 - 2;
          v8 -= 2;
          v24 = v29 - 2;
          v27 = v25 > v7;
          v25 -= 2;
          v6 = 0;
          if (!v27)
          {
            v23 = v26 + 2;
            v9 = v36;
            goto LABEL_37;
          }
        }

        if (v8 + 2 != v36)
        {
          v33 = v9[1];
          *v8 = *v9;
          v8[1] = v33;
        }

        v24 = v25 + 2;
        v6 = 0;
      }

      while (v25 + 2 > v7);
    }

LABEL_37:
    v42 = v9;
    v40 = v23;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, v13, __dst);
    v17 = &v7[2 * v13];
    v40 = v17;
    if (v11 >= 32 && v9 < v8)
    {
      while (1)
      {
        outlined init with copy of Any(v9, v39);
        outlined init with copy of Any(v7, v38);
        v18 = a5(v39, v38);
        if (v5)
        {
          break;
        }

        v19 = v18;
        __swift_destroy_boxed_opaque_existential_0(v38);
        __swift_destroy_boxed_opaque_existential_0(v39);
        if (v19)
        {
          v20 = v9 + 2;
          if (v10 < v9 || v10 >= v20 || v10 != v9)
          {
            v21 = v9[1];
            *v10 = *v9;
            v10[1] = v21;
          }
        }

        else
        {
          if (v10 != v7)
          {
            v22 = v7[1];
            *v10 = *v7;
            v10[1] = v22;
          }

          v7 += 2;
          v41 = v7;
          v20 = v9;
        }

        v10 += 2;
        v42 = v10;
        if (v7 < v17)
        {
          v9 = v20;
          if (v20 < v8)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      __swift_destroy_boxed_opaque_existential_0(v38);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }
  }

LABEL_38:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v42, &v41, &v40);
  return 1;
}

unint64_t specialized Array._checkSubscript_mutating(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0 || *(a2 + 16) <= result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = *(v3 + 2);
  if (v4 <= a1 || a1 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    v9 = *(v7 + 5);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7 + 48, v6, v7 + 32);
    *(v3 + 2) = v5;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

char *specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(&_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(&_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(&_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

char *specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t *a1, uint64_t *a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, *(v5 + 16) + 1, 1, v5, a1, a2);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

char *specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(char *a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

char *specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(char *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(*v3 + 24);
  if ((result + 1) > (v4 >> 1))
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), (result + 1), 1, *v3, a2, a3);
    *v3 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, int a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 4 * result + 32) = a2;
  return result;
}

{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 4 * result + 32) = a2;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, __int16 a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 2 * result + 32) = a2;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, char a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + result + 32) = a2;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, float a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 4 * result + 32) = a2;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, double a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

_OWORD *specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  return outlined init with take of Any(a2, (v3 + 32 * a1 + 32));
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

char *specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(void **a1, const void **a2, void *a3)
{
  v4 = *a2;
  v5 = *a3 - v4;
  v6 = v5 + 3;
  if (v5 >= 0)
  {
    v6 = *a3 - v4;
  }

  if (v5 <= -4)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = *a1;
    v8 = v6 >> 2;
    if (result != v4 || result >= &v4[4 * v8])
    {

      return memmove(result, v4, 4 * v8);
    }
  }

  return result;
}

{
  v4 = *a2;
  v5 = *a3 - v4;
  if (v5 <= -2)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = *a1;
    v7 = *a3 - v4;
    v8 = v5 / 2;
    if (result != v4 || result >= &v4[2 * v8])
    {

      return memmove(result, v4, 2 * v8);
    }
  }

  return result;
}

{
  v4 = *a2;
  v5 = *a3 - v4;
  v6 = v5 + 7;
  if (v5 >= 0)
  {
    v6 = *a3 - v4;
  }

  if (v5 <= -8)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = *a1;
    v8 = v6 >> 3;
    if (result != v4 || result >= &v4[8 * v8])
    {

      return memmove(result, v4, 8 * v8);
    }
  }

  return result;
}

{
  v4 = *a2;
  v5 = *a3 - v4;
  v6 = v5 + 15;
  if (v5 >= 0)
  {
    v6 = *a3 - v4;
  }

  if (v5 <= -16)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = *a1;
    v8 = v6 >> 4;
    if (result != v4 || result >= &v4[16 * v8])
    {

      return memmove(result, v4, 16 * v8);
    }
  }

  return result;
}

{
  v4 = *a2;
  v5 = *a3 - v4;
  v6 = v5 + 31;
  if (v5 >= 0)
  {
    v6 = *a3 - v4;
  }

  if (v5 <= -32)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = *a1;
    v8 = v6 >> 5;
    if (result != v4 || result >= &v4[32 * v8])
    {

      return memmove(result, v4, 32 * v8);
    }
  }

  return result;
}

void *specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(void **a1, const void **a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a3 - v4;
  if (v6 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = *a1;
    if (result != v4 || result >= v5)
    {

      return memmove(result, v4, v6);
    }
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSnySiG_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    _ss12_ArrayBufferV13_copyContents8subRange12initializingSpyxGSnySiG_AFtFAG_Tgq5Tf4nng_n_0(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, v10 + 32, a4);
  }

  return v11;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSnySiG_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
  v11 = v10;
  if (v6)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v9, (v10 + 32), a4);
  }

  return v11;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSnySiG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSnySiG_Tt1g5Tm(v10, v9, a5, a6);
  v12 = v11;
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v10, v11 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v10, (v11 + 32), a4);
  }

  return v12;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyp_Tt1g5(v8, v7);
  v10 = v9;
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v9 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, (v9 + 32), a4);
  }

  return v10;
}

uint64_t specialized _ArrayBuffer._nonNative.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v1;
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

uint64_t specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);

  return v4;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a4 + 16 * a1 + 32;
    v6 = a3 + 16 * v4;
    if (v5 >= v6 || v5 + 16 * v4 <= a3)
    {
      swift_arrayInitWithCopy();
      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a4 + 16 * a1 + 32;
    v6 = a3 + 16 * v4;
    if (v5 >= v6 || v5 + 16 * v4 <= a3)
    {
      swift_arrayInitWithCopy();
      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a4 + 32 * a1 + 32;
    v6 = a3 + 32 * v4;
    if (v5 >= v6 || v5 + 32 * v4 <= a3)
    {
      swift_arrayInitWithCopy();
      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0 || (&__dst[4 * a2] > __src ? (v3 = &__src[4 * a2] > __dst) : (v3 = 0), v3))
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, 4 * a2);
  }

  return result;
}

{
  if (a2 < 0 || (&__dst[2 * a2] > __src ? (v3 = &__src[2 * a2] > __dst) : (v3 = 0), v3))
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, 2 * a2);
  }

  return result;
}

{
  if (a2 < 0 || (&__dst[8 * a2] > __src ? (v3 = &__src[8 * a2] > __dst) : (v3 = 0), v3))
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, 8 * a2);
  }

  return result;
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, size_t __n, char *__dst)
{
  if ((__n & 0x8000000000000000) != 0 || &__dst[__n] > __src && &__src[__n] > __dst)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, __n);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.initialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 < 0 || (a3 + 16 * a2 > a1 ? (v3 = a1 + 16 * a2 > a3) : (v3 = 0), v3))
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return swift_arrayInitWithCopy();
  }

  return result;
}

{
  if (a2 < 0 || (a3 + 16 * a2 > a1 ? (v3 = a1 + 16 * a2 > a3) : (v3 = 0), v3))
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return swift_arrayInitWithCopy();
  }

  return result;
}

{
  if (a2 < 0 || (a3 + 32 * a2 > a1 ? (v3 = a1 + 32 * a2 > a3) : (v3 = 0), v3))
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return swift_arrayInitWithCopy();
  }

  return result;
}

uint64_t specialized Array.startIndex.getter()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t specialized Array._makeMutableAndUnique()()
{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array._makeMutableAndUnique()(specialized _ArrayBuffer._consumeAndCreateNew());
}

uint64_t specialized Array._makeMutableAndUnique()(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(v3);
    *v1 = result;
  }

  return result;
}

void *specialized Array.formIndex(before:)(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t specialized Array.removeAll(keepingCapacity:)(char a1)
{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
}

{
  v3 = *v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v5 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
        v7 = swift_allocObject();
        v8 = _swift_stdlib_malloc_size(v7);
        v9 = v8 - 32;
        if (v8 < 32)
        {
          v9 = v8 - 25;
        }

        v7[2] = 0;
        v7[3] = 2 * (v9 >> 3);
      }

      else
      {
        v7 = MEMORY[0x29EDCA190];
      }

      *v1 = v7;
    }
  }

  else
  {

    *v1 = MEMORY[0x29EDCA190];
  }

  return result;
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

{
  return specialized Array.removeAll(keepingCapacity:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
}

{
  v3 = *v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v5 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
        v7 = swift_allocObject();
        v8 = _swift_stdlib_malloc_size(v7);
        v9 = v8 - 32;
        if (v8 < 32)
        {
          v9 = v8 - 17;
        }

        v7[2] = 0;
        v7[3] = 2 * (v9 >> 4);
      }

      else
      {
        v7 = MEMORY[0x29EDCA190];
      }

      *v1 = v7;
    }
  }

  else
  {

    *v1 = MEMORY[0x29EDCA190];
  }

  return result;
}

{
  v3 = *v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v5 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v7 = swift_allocObject();
        v8 = _swift_stdlib_malloc_size(v7);
        v9 = v8 - 32;
        if (v8 < 32)
        {
          v9 = v8 - 1;
        }

        v7[2] = 0;
        v7[3] = 2 * (v9 >> 5);
      }

      else
      {
        v7 = MEMORY[0x29EDCA190];
      }

      *v1 = v7;
    }
  }

  else
  {

    *v1 = MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t specialized Array.removeAll(keepingCapacity:)(char a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v6 = *v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v11 + 16), a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v11 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 25;
        }

        v13[2] = 0;
        v13[3] = 2 * (v15 >> 3);
      }

      else
      {
        v13 = MEMORY[0x29EDCA190];
      }

      *v4 = v13;
    }
  }

  else
  {

    *v4 = MEMORY[0x29EDCA190];
  }

  return result;
}

{
  v6 = *v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v11 + 16), a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v11 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 29;
        }

        v13[2] = 0;
        v13[3] = 2 * (v15 >> 2);
      }

      else
      {
        v13 = MEMORY[0x29EDCA190];
      }

      *v4 = v13;
    }
  }

  else
  {

    *v4 = MEMORY[0x29EDCA190];
  }

  return result;
}

{
  v6 = *v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v11 + 16), a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v11 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v13[2] = 0;
        v13[3] = (v14 - 32 + ((v14 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v13 = MEMORY[0x29EDCA190];
      }

      *v4 = v13;
    }
  }

  else
  {

    *v4 = MEMORY[0x29EDCA190];
  }

  return result;
}

{
  v6 = *v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v11 + 16), a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      if (*(v11 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v13[2] = 0;
        v13[3] = 2 * v14 - 64;
      }

      else
      {
        v13 = MEMORY[0x29EDCA190];
      }

      *v4 = v13;
    }
  }

  else
  {

    *v4 = MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t specialized Array.removeAll(keepingCapacity:)(char a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v9 + 16), a2, a3);
    }

    else
    {
      if (*(v9 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v11[2] = 0;
        v11[3] = 2 * (v13 >> 4);
      }

      else
      {
        v11 = MEMORY[0x29EDCA190];
      }

      *v3 = v11;
    }
  }

  else
  {

    *v3 = MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t specialized Array.removeAll(keepingCapacity:)(char a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, void), uint64_t *a4, uint64_t *a5)
{
  v7 = *v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v13 + 16), a2, a3);
    }

    else
    {
      if (*(v13 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 29;
        }

        v15[2] = 0;
        v15[3] = 2 * (v17 >> 2);
      }

      else
      {
        v15 = MEMORY[0x29EDCA190];
      }

      *v5 = v15;
    }
  }

  else
  {

    *v5 = MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized default argument 0 of Array.removeAll(keepingCapacity:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.reserveCapacity(_:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

char *specialized Array.reserveCapacity(_:)(int64_t a1)
{
  return specialized Array.reserveCapacity(_:)(a1, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized Array.reserveCapacity(_:)(a1, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized Array.reserveCapacity(_:)(a1, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized Array.reserveCapacity(_:)(a1, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

char *specialized Array.reserveCapacity(_:)(int64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v7 + 24) >> 1)
  {
    if (*(v7 + 16) <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v9, 0, v7, a2, a3);
    v7 = result;
  }

  *v3 = v7;
  return result;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) > a1)
    {
      v7 = *(v5 + 16);
    }

    result = a2();
    v5 = result;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized Array._copyToNewBuffer(oldCount:)(void *a1)
{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  return specialized Array._copyToNewBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR, specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:), specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:));
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  return specialized Array._copyToNewBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR, specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:));
}

{
  return specialized Array._copyToNewBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR, specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:));
}

{
  return specialized Array._copyToNewBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR, specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:));
}

{
  return specialized Array._copyToNewBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR, specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:));
}

{
  return specialized Array._copyToNewBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR, specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:), specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:));
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, &_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1);
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

uint64_t specialized Array._copyToNewBuffer(oldCount:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v4, a2, a3);
  v7 = a4();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v9, a1, 0, v7);
}

uint64_t specialized Array._copyToNewBuffer(oldCount:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(void **, void *, void, uint64_t, uint64_t))
{
  v12 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v5, a2, a3);
  v9 = a4();
  a5(&v12, a1, 0, v9, v10);
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = result;
  v6 = *(a3 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) < a2)
  {
    if (v7 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (v7 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  result = v9;
  v9[2] = v5;
  v9[3] = (v10 - 32 + ((v10 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

{
  v5 = result;
  v6 = *(a3 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) < a2)
  {
    if (v7 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (v7 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  result = v9;
  v9[2] = v5;
  v9[3] = 2 * v10 - 64;
  return result;
}

{
  v5 = result;
  v6 = *(a3 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) < a2)
  {
    if (v7 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (v7 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  result = v9;
  v12 = v10 - 32;
  v11 = v10 < 32;
  v13 = v10 - 25;
  if (!v11)
  {
    v13 = v12;
  }

  v9[2] = v5;
  v9[3] = 2 * (v13 >> 3);
  return result;
}

{
  v5 = result;
  v6 = *(a3 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) < a2)
  {
    if (v7 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (v7 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  result = v9;
  v12 = v10 - 32;
  v11 = v10 < 32;
  v13 = v10 - 29;
  if (!v11)
  {
    v13 = v12;
  }

  v9[2] = v5;
  v9[3] = 2 * (v13 >> 2);
  return result;
}

{
  v5 = result;
  v6 = *(a3 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) < a2)
  {
    if (v7 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (v7 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  result = v9;
  v12 = v10 - 32;
  v11 = v10 < 32;
  v13 = v10 - 17;
  if (!v11)
  {
    v13 = v12;
  }

  v9[2] = v5;
  v9[3] = 2 * (v13 >> 4);
  return result;
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 24);
  v5 = v4 >> 1;
  if ((v4 >> 1) < a2)
  {
    if (v5 + 0x4000000000000000 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v5 <= a2)
  {
    v5 = a2;
  }

  if (v5 <= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  result = v7;
  v10 = v8 - 32;
  v9 = v8 < 32;
  v11 = v8 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v7[2] = v3;
  v7[3] = 2 * (v11 >> 5);
  return result;
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(*v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v5 + 32 + 8 * a2;
  __dst = (v15 + 8 * a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  if (isUniquelyReferenced_nonNull_native && v12 <= *(v17 + 24) >> 1)
  {

    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32), a2, (v5 + 32));
    if ((v14 & 0x8000000000000000) == 0)
    {
      a4(v15, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32 + 8 * a2 + 8 * v14), v10, __dst);
      if (*(v17 + 16) >= v12)
      {
        *(v17 + 16) = 0;

LABEL_10:

        *v4 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v19 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, (v5 + 32), *v4);
    a4(v19, a3);
    v20 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v21 = *(v17 + 16);
      if (v21 >= v20)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v20, v21, __dst, v17);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(*v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v5 + 32 + 4 * a2;
  __dst = (v15 + 4 * a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  if (isUniquelyReferenced_nonNull_native && v12 <= *(v17 + 24) >> 1)
  {

    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32), a2, (v5 + 32));
    if ((v14 & 0x8000000000000000) == 0)
    {
      a4(v15, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32 + 4 * a2 + 4 * v14), v10, __dst);
      if (*(v17 + 16) >= v12)
      {
        *(v17 + 16) = 0;

LABEL_10:

        *v4 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v19 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, (v5 + 32), *v4);
    a4(v19, a3);
    v20 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v21 = *(v17 + 16);
      if (v21 >= v20)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v20, v21, __dst, v17);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(*v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v5 + 32 + 2 * a2;
  __dst = (v15 + 2 * a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  if (isUniquelyReferenced_nonNull_native && v12 <= *(v17 + 24) >> 1)
  {

    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32), a2, (v5 + 32));
    if ((v14 & 0x8000000000000000) == 0)
    {
      a4(v15, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32 + 2 * a2 + 2 * v14), v10, __dst);
      if (*(v17 + 16) >= v12)
      {
        *(v17 + 16) = 0;

LABEL_10:

        *v4 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v19 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, (v5 + 32), *v4);
    a4(v19, a3);
    v20 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v21 = *(v17 + 16);
      if (v21 >= v20)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v20, v21, __dst, v17);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v4;
  v13 = *(*v4 + 16);
  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14 - v10;
  if (__OFSUB__(v14, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v5 + 32 + 16 * a2;
  __dst = (v16 + 16 * a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v11;
  if (isUniquelyReferenced_nonNull_native && v13 <= *(v18 + 24) >> 1)
  {

    swift_arrayDestroy();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v18 + 32), a2, (v5 + 32));
    if ((v15 & 0x8000000000000000) == 0)
    {
      swift_arrayDestroy();
      a4(v16, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v18 + 32 + 16 * a2 + 16 * v15), v10, __dst);
      if ((*(v18 + 16) - v13) >= 0)
      {
        swift_arrayDestroy();
        *(v18 + 16) = 0;

LABEL_10:

        *v11 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v20 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, v5 + 32, *v11);
    a4(v20, a3);
    v21 = a2 + v15;
    if (!__OFADD__(a2, v15))
    {
      v22 = *(v18 + 16);
      if (v22 >= v21)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v21, v22, __dst, v18);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(*v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v5 + 32 + 16 * a2;
  __dst = (v15 + 16 * a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  if (isUniquelyReferenced_nonNull_native && v12 <= *(v17 + 24) >> 1)
  {

    swift_arrayDestroy();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32), a2, (v5 + 32));
    if ((v14 & 0x8000000000000000) == 0)
    {
      swift_arrayDestroy();
      a4(v15, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32 + 16 * a2 + 16 * v14), v10, __dst);
      if ((*(v17 + 16) - v12) >= 0)
      {
        swift_arrayDestroy();
        *(v17 + 16) = 0;

LABEL_10:

        *v4 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v19 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, v5 + 32, *v4);
    a4(v19, a3);
    v20 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v21 = *(v17 + 16);
      if (v21 >= v20)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v20, v21, __dst, v17);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(*v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v5 + 32 + 32 * a2;
  __dst = (v15 + 32 * a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  if (isUniquelyReferenced_nonNull_native && v12 <= *(v17 + 24) >> 1)
  {

    swift_arrayDestroy();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32), a2, (v5 + 32));
    if ((v14 & 0x8000000000000000) == 0)
    {
      swift_arrayDestroy();
      a4(v15, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 32 + 32 * a2 + 32 * v14), v10, __dst);
      if ((*(v17 + 16) - v12) >= 0)
      {
        swift_arrayDestroy();
        *(v17 + 16) = 0;

LABEL_10:

        *v4 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v19 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, v5 + 32, *v4);
    a4(v19, a3);
    v20 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v21 = *(v17 + 16);
      if (v21 >= v20)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v20, v21, __dst, v17);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t *a1, size_t a2, uint64_t a3, void (*a4)(size_t, uint64_t))
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8 - a3;
  if (__OFSUB__(v8, a3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(*v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v5 + 32 + a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v4;
  if (isUniquelyReferenced_nonNull_native && v12 <= *(v16 + 24) >> 1)
  {

    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v16 + 32), a2, (v5 + 32));
    if ((v14 & 0x8000000000000000) == 0)
    {
      a4(v21, a3);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v16 + 32 + a2 + v14), v10, (v21 + a3));
      if (*(v16 + 16) >= v12)
      {
        *(v16 + 16) = 0;

LABEL_10:

        *v4 = v5;
        return result;
      }
    }

    goto LABEL_20;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v18 = specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, a2, (v5 + 32), *v4);
    a4(v18, a3);
    v19 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v20 = *(v16 + 16);
      if (v20 >= v19)
      {
        specialized _ArrayBuffer._copyContents(subRange:initializing:)(v19, v20, (v21 + a3), v16);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.init(_uninitializedCount:)(uint64_t a1)
{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  return specialized Array.init(_uninitializedCount:)(a1);
}

{
  if (a1 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a1)
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = a1;
  }

  else
  {
    return MEMORY[0x29EDCA190];
  }

  return result;
}

void *specialized Array.formIndex(after:)(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t (*specialized Array.subscript.modify(char ***a1, unint64_t a2))()
{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*specialized Array.subscript.modify(char ***a1, unint64_t a2))(uint64_t result)
{
  *a1 = v2;
  v5 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 2) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.subscript.getter(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    return *(a2 + 4 * a1 + 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    return *(a2 + 2 * a1 + 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    return *(a2 + a1 + 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    return *(a2 + 8 * a1 + 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = a2 + 16 * a1;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    return v3;
  }

  return result;
}

{
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    return *(a2 + 4 * a1 + 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = a2 + 16 * a1;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    return v3;
  }

  return result;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0 || *(a2 + 16) <= result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 4 * result + 32);
  }

  return result;
}

{
  if ((result & 0x8000000000000000) != 0 || *(a2 + 16) <= result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 8 * result + 32);
  }

  return result;
}

uint64_t specialized Array.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = a2 + 32 * a1 + 32;

    return outlined init with copy of Any(v4, a3);
  }

  return result;
}

uint64_t (*specialized Array.subscript.read(void *a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 8 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 8 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 8 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 8 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 8 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = a3 + 16 * a2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    a1[1] = v5;

    return Array.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = a3 + 16 * a2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    a1[1] = v5;

    return Array.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = a3 + 16 * a2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    a1[1] = v5;

    return Array.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = a3 + 16 * a2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    a1[1] = v5;

    return Array.subscript.readspecialized ;
  }

  return result;
}

uint64_t (*specialized Array.subscript.read(_DWORD *a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 4 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 4 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 4 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 4 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

uint64_t (*specialized Array.subscript.read(_WORD *a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 2 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + 2 * a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

uint64_t (*specialized Array.subscript.read(_BYTE *a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = *(a3 + a2 + 32);
    return Range<>.subscript.readspecialized ;
  }

  return result;
}

uint64_t (*specialized Array.subscript.read(void *a1, unint64_t a2, uint64_t a3))(uint64_t a1)
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = a3 + 16 * a2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    a1[1] = v5;

    return Array.subscript.readspecialized ;
  }

  return result;
}

uint64_t (*specialized Array.subscript.read(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) == 0 && *(a3 + 16) > a2)
  {
    return Range<>.subscript.readspecialized ;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.init(repeating:count:)(unint64_t a1, unint64_t a2)
{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x29EDCA190];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v5 = (result + 32);
  if (a2 <= 3)
  {
    v6 = 0;
LABEL_9:
    v10 = a2 - v6;
    do
    {
      *v5++ = a1;
      --v10;
    }

    while (v10);
    return result;
  }

  v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = vdupq_n_s64(a1);
  v8 = (result + 48);
  v9 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 += 2;
    v9 -= 4;
  }

  while (v9);
  if (v6 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(unsigned int a1, unint64_t a2)
{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x29EDCA190];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v5 = (result + 32);
  if (a2 < 4)
  {
    v6 = 0;
    goto LABEL_17;
  }

  if (a2 >= 0x10)
  {
    v6 = a2 & 0x7FFFFFFFFFFFFFF0;
    v7 = vdupq_n_s16(a1);
    v8 = (result + 48);
    v9 = a2 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v8[-1] = v7;
      *v8 = v7;
      v8 += 2;
      v9 -= 16;
    }

    while (v9);
    if (v6 == a2)
    {
      return result;
    }

    if ((a2 & 0xC) == 0)
    {
      v5 += v6;
LABEL_17:
      v14 = a2 - v6;
      do
      {
        *v5++ = a1;
        --v14;
      }

      while (v14);
      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = vdup_n_s16(a1);
  v12 = 2 * v10 + 32;
  v13 = v10 - (a2 & 0x7FFFFFFFFFFFFFFCLL);
  do
  {
    *(result + v12) = v11;
    v12 += 8;
    v13 += 4;
  }

  while (v13);
  if (v6 != a2)
  {
    goto LABEL_17;
  }

  return result;
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x29EDCA190];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v5 = (result + 32);
  if (a2 <= 7)
  {
    v6 = 0;
LABEL_9:
    v10 = a2 - v6;
    do
    {
      *v5++ = a1;
      --v10;
    }

    while (v10);
    return result;
  }

  v6 = a2 & 0x7FFFFFFFFFFFFFF8;
  v5 += a2 & 0x7FFFFFFFFFFFFFF8;
  v7 = vdupq_n_s32(a1);
  v8 = (result + 48);
  v9 = a2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 += 2;
    v9 -= 8;
  }

  while (v9);
  if (v6 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(int a1, size_t a2)
{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  return specialized Array.init(repeating:count:)(a1, a2);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x29EDCA190];
    }

    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = a2;
    memset((v4 + 32), a1, a2);
    return v4;
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(unint64_t a1, int32x2_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!a1)
  {
    return MEMORY[0x29EDCA190];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a1;
  v4 = (result + 32);
  if (a1 <= 7)
  {
    v5 = 0;
    v6 = a2.i32[0];
LABEL_9:
    v10 = a1 - v5;
    do
    {
      *v4++ = v6;
      --v10;
    }

    while (v10);
    return result;
  }

  v5 = a1 & 0x7FFFFFFFFFFFFFF8;
  v4 += a1 & 0x7FFFFFFFFFFFFFF8;
  v6 = a2.i32[0];
  v7 = vdupq_lane_s32(a2, 0);
  v8 = (result + 48);
  v9 = a1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 += 2;
    v9 -= 8;
  }

  while (v9);
  if (v5 != a1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(unint64_t a1, double a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!a1)
  {
    return MEMORY[0x29EDCA190];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a1;
  v4 = (result + 32);
  if (a1 <= 3)
  {
    v5 = 0;
    v6 = a2;
LABEL_9:
    v10 = a1 - v5;
    do
    {
      *v4++ = v6;
      --v10;
    }

    while (v10);
    return result;
  }

  v5 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a1 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = a2;
  v7 = vdupq_lane_s64(*&a2, 0);
  v8 = (result + 48);
  v9 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 += 2;
    v9 -= 4;
  }

  while (v9);
  if (v5 != a1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.init(repeating:count:)(a1, a2, a3);
}

{
  return specialized Array.init(repeating:count:)(a1, a2, a3);
}

{
  UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm(a3);
  if (a3 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm;
    if (a3)
    {
      *v7 = a1;
      v7[1] = a2;
      v9 = a3 - 1;
      if (v9)
      {
        v10 = v7 + 3;
        do
        {

          *(v10 - 1) = a1;
          *v10 = a2;
          v10 += 2;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
    }

    return v8;
  }

  return result;
}

{
  return specialized Array.init(repeating:count:)(a1, a2, a3);
}

{
  return specialized Array.init(repeating:count:)(a1, a2, a3);
}

{
  return specialized Array.init(repeating:count:)(a1, a2, a3);
}

uint64_t specialized Array.init(repeating:count:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm(a2);
  if (v2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm;
    if (v2)
    {
      v7 = v5;
      do
      {
        outlined init with copy of Any(a1, v7);
        v7 += 32;
        --v2;
      }

      while (v2);
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v6;
  }

  return result;
}

uint64_t specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2)
{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

{
  return specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(), _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5);
}

uint64_t specialized Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t, uint64_t, uint64_t *))
{
  v8 = v5;
  v10 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a3(v10);
    *v4 = v10;
  }

  v12 = *(v10 + 16);
  v13 = v10 + 32;
  v15[0] = v13;
  v15[1] = v12;
  a1(&v16, v15);
  if (!v5)
  {
    v8 = v16;
  }

  a4(v15, v13, v12, v4);
  return v8;
}

void *_sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5_0(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *result == a2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || result[1] != a3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized _ContiguousArrayBuffer.startIndex.getter()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

char *specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 4 * a1 + 32);
    v6 = 4 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);

      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 2 * a1 + 32);
    v6 = 2 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);

      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + a1 + 32);
    v6 = &__dst[v4];
    if (v5 >= &__dst[v4] || &v5[v4] <= __dst)
    {
      memcpy(__dst, v5, v4);

      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 8 * a1 + 32);
    v6 = 8 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);

      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 4 * a1 + 32);
    v6 = 4 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);

      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 8 * a1 + 32);
    v6 = 8 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);

      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 4 * a1 + 32);
    v6 = 4 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);

      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  return specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);
}

{
  return specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);
}

{
  return specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);
}

{
  return specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4);
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a4 + 16 * a1 + 32;
    v6 = a3 + 16 * v4;
    if (v5 >= v6 || v5 + 16 * v4 <= a3)
    {
      swift_arrayInitWithCopy();

      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a4 + 16 * a1 + 32;
    v6 = a3 + 16 * v4;
    if (v5 >= v6 || v5 + 16 * v4 <= a3)
    {
      swift_arrayInitWithCopy();

      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a4 + 32 * a1 + 32;
    v6 = a3 + 32 * v4;
    if (v5 >= v6 || v5 + 32 * v4 <= a3)
    {
      swift_arrayInitWithCopy();

      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._initStorageHeader(count:capacity:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = result;
  *(a3 + 24) = 2 * a2;
  return result;
}

uint64_t specialized _ArrayBuffer.startIndex.getter()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t specialized _ArrayBuffer._isNative.getter()
{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

uint64_t specialized _ArrayBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  v3 = *v1;
  if (swift_isUniquelyReferenced_nonNull_native() && a1 <= *(*v1 + 24) >> 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _ArrayBuffer.subscript.getter(uint64_t a1, uint64_t a2)
{
  return *(a2 + 4 * a1 + 32);
}

{
  return *(a2 + 2 * a1 + 32);
}

{
  return *(a2 + a1 + 32);
}

{
  return *(a2 + 8 * a1 + 32);
}

{
  v2 = a2 + 16 * a1;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return v3;
}

{
  return *(a2 + 4 * a1 + 32);
}

{
  v2 = a2 + 16 * a1;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return v3;
}

uint64_t (*specialized _ArrayBuffer.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  *a1 = *(a3 + 8 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 8 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 8 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 8 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 8 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  v4 = a3 + 16 * a2;
  v5 = *(v4 + 40);
  *a1 = *(v4 + 32);
  a1[1] = v5;

  return Array.subscript.readspecialized ;
}

{
  v4 = a3 + 16 * a2;
  v5 = *(v4 + 40);
  *a1 = *(v4 + 32);
  a1[1] = v5;

  return Array.subscript.readspecialized ;
}

{
  v4 = a3 + 16 * a2;
  v5 = *(v4 + 40);
  *a1 = *(v4 + 32);
  a1[1] = v5;

  return Array.subscript.readspecialized ;
}

{
  v4 = a3 + 16 * a2;
  v5 = *(v4 + 40);
  *a1 = *(v4 + 32);
  a1[1] = v5;

  return Array.subscript.readspecialized ;
}

{
  v4 = a3 + 16 * a2;
  v5 = *(v4 + 40);
  *a1 = *(v4 + 32);
  a1[1] = v5;

  return Array.subscript.readspecialized ;
}

uint64_t (*specialized _ArrayBuffer.subscript.read(_DWORD *a1, uint64_t a2, uint64_t a3))()
{
  *a1 = *(a3 + 4 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 4 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 4 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 4 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

uint64_t (*specialized _ArrayBuffer.subscript.read(_WORD *a1, uint64_t a2, uint64_t a3))()
{
  *a1 = *(a3 + 2 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + 2 * a2 + 32);
  return Range<>.subscript.readspecialized ;
}

uint64_t (*specialized _ArrayBuffer.subscript.read(_BYTE *a1, uint64_t a2, uint64_t a3))()
{
  *a1 = *(a3 + a2 + 32);
  return Range<>.subscript.readspecialized ;
}

{
  *a1 = *(a3 + a2 + 32);
  return Range<>.subscript.readspecialized ;
}

unint64_t specialized _ArrayBuffer._checkInoutAndNativeTypeCheckedBounds(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0 || *(a3 + 16) <= result)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_5:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    return a1 + 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *_ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5s6UInt64V_ytTg5_0(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *result == a2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || result[1] != a3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMd, &_ss23_ContiguousArrayStorageCySS17UnicodeScalarViewVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMd, &_ss23_ContiguousArrayStorageCySS9UTF16ViewVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMd, &_ss23_ContiguousArrayStorageCySS8UTF8ViewVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized UnsafeMutablePointer.initialize(from:count:));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized UnsafeMutablePointer.initialize(from:count:));
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = (a4 + 32);
  v16 = v12 + 32;
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v15, v10, v16);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v15, v10, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = (a4 + 32);
  v16 = v12 + 32;
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v15, v10, v16);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v15, v10, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v14 = (a4 + 32);
  v15 = v12 + 32;
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v10, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v10, v15);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v14 = (a4 + 32);
  v15 = v12 + 32;
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v10, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v10, v15);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = (a4 + 32);
  v16 = v12 + 32;
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v15, v10, v16);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v15, v10, v16);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), void (*a8)(uint64_t, uint64_t, void *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 29;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 2);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

  v19 = a4 + 32;
  v20 = v16 + 4;
  if (v11)
  {
    a7(v19, v14, v20);
    *(a4 + 16) = 0;
  }

  else
  {
    a8(v19, v14, v20);
  }

  return v16;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = (a4 + 32);
  v14 = v10 + 32;
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v8, v14);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v13, v8, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = (a4 + 32);
  v14 = v10 + 32;
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v8, v14);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v13, v8, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = (a4 + 32);
  v14 = v10 + 32;
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v8, v14);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v13, v8, v14);
  }

  return v10;
}