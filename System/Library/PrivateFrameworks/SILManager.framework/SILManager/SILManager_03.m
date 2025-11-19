uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*v6)
      {
        v89 = *&v9[16 * v88];
        v90 = *&v9[16 * v88 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v88 + 16]), (*v6 + 8 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v88 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v91 = &v9[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = specialized Array.remove(at:)(v88 - 1);
        v88 = *(v9 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*(*v6 + 8 * v8) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
      result = *v12;
      v13 = v12[1];
      v14 = (*(*v6 + 8 * v10) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_name;
        v5 = v11 + 8 * v10 + 16;
        do
        {
          v18 = (*v5 + v17);
          result = *v18;
          v19 = v18[1];
          v20 = (*(v5 - 8) + v17);
          if (result == *v20 && v19 == v20[1])
          {
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v16 ^ result))
            {
              goto LABEL_22;
            }

            v17 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_name;
          }

          ++v8;
          v5 += 8;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_22:
      if (v16)
      {
LABEL_23:
        if (v8 < v10)
        {
          goto LABEL_133;
        }

        if (v10 < v8)
        {
          v22 = 8 * v8 - 8;
          v23 = 8 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_139;
              }

              v26 = *(v27 + v23);
              *(v27 + v23) = *(v27 + v22);
              *(v27 + v22) = v26;
            }

            ++v25;
            v22 -= 8;
            v23 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_132;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_134;
        }

        if (v10 + a4 >= v28)
        {
          v29 = v6[1];
        }

        else
        {
          v29 = v10 + a4;
        }

        if (v29 < v10)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v8 != v29)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v8 < v10)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v8;
    v46 = *v95;
    if (!*v95)
    {
      goto LABEL_141;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_73:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_87:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_94:
        v5 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v6)
        {
          goto LABEL_138;
        }

        v85 = *&v9[16 * v5 + 32];
        v86 = *&v9[16 * v47 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v85), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v86), v46);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v9[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = specialized Array.remove(at:)(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v92 = v10;
  v93 = v6;
  v30 = *v6;
  v31 = *v6 + 8 * v8 - 8;
  v32 = v10 - v8;
LABEL_42:
  v33 = *(v30 + 8 * v8);
  v34 = v32;
  v5 = v31;
  while (1)
  {
    v35 = (v33 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*v5 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
    v39 = v36 == *v38 && v37 == v38[1];
    if (v39 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_41:
      ++v8;
      v31 += 8;
      --v32;
      if (v8 != v29)
      {
        goto LABEL_42;
      }

      v8 = v29;
      v10 = v92;
      v6 = v93;
      goto LABEL_53;
    }

    if (!v30)
    {
      break;
    }

    v40 = *v5;
    v33 = *(v5 + 8);
    *v5 = v33;
    *(v5 + 8) = v40;
    v5 -= 8;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame) < *(*v17 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame) >= *(*v4 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8);
        v25 = (*v21 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        v26 = *(v23 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name) == *v25 && v24 == v25[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __dst, uint64_t *a2, uint64_t *a3, uint64_t *__src, uint64_t *a5)
{
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    if (__src != __dst || __dst + 16 * v9 <= __src)
    {
      v13 = a2;
      v14 = __src;
      __dst = memmove(__src, __dst, 16 * v9);
      __src = v14;
      a2 = v13;
    }

    v15 = &__src[2 * v9];
    if (v7 >= 16 && a2 < v5)
    {
      v16 = &SILTelemetry::timer;
      v60 = &__src[2 * v9];
      v64 = v5;
      while (1)
      {
        v17 = v16;
        v18 = *a5;
        if (!*(*a5 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v62 = v6;
        v19 = *__src;
        v20 = __src[1];
        v21 = __src;
        v22 = *a2;
        v23 = a2[1];
        v24 = a2;

        __dst = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
        if ((v25 & 1) == 0)
        {
          goto LABEL_53;
        }

        v26 = *a5;
        if (!*(*a5 + 16))
        {
          goto LABEL_55;
        }

        v27 = *(*(v18 + 56) + 8 * __dst);
        v16 = v17;
        v28 = *(*(v27 + v17[123]) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
        __dst = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if ((v29 & 1) == 0)
        {
          goto LABEL_57;
        }

        v30 = *(*(*(*(v26 + 56) + 8 * __dst) + v16[123]) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);

        if (v28 >= v30)
        {
          break;
        }

        v31 = v24;
        a2 = v24 + 2;
        v33 = v62;
        v32 = v64;
        __src = v21;
        if (v62 != v24)
        {
          goto LABEL_20;
        }

LABEL_21:
        v6 = (v33 + 2);
        v15 = v60;
        if (__src >= v60 || a2 >= v32)
        {
          goto LABEL_23;
        }
      }

      v31 = v21;
      __src = v21 + 2;
      v33 = v62;
      v32 = v64;
      a2 = v24;
      if (v62 == v21)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v33 = *v31;
      goto LABEL_21;
    }

LABEL_23:
    a2 = v6;
    goto LABEL_45;
  }

  if (__src != a2 || &a2[2 * v12] <= __src)
  {
    v34 = a2;
    v35 = __src;
    __dst = memmove(__src, a2, 16 * v12);
    a2 = v34;
    __src = v35;
  }

  v15 = &__src[2 * v12];
  if (v10 < 16 || a2 <= v6)
  {
LABEL_45:
    v55 = v15 - __src;
    v56 = v15 - __src + 15;
    if (v55 < 0)
    {
      v55 = v56;
    }

    if (a2 != __src || a2 >= (__src + (v55 & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(a2, __src, 16 * (v55 >> 4));
    }

    return 1;
  }

  v36 = &SILTelemetry::timer;
  v37 = &SILTelemetry::timer;
  v63 = v6;
LABEL_30:
  v57 = a2 - 2;
  v38 = v5 - 2;
  v58 = a2;
  while (1)
  {
    v39 = *a5;
    if (!*(*a5 + 16))
    {
      break;
    }

    v40 = __src;
    v65 = v38;
    v41 = v15;
    v42 = *(v15 - 1);
    v43 = *(a2 - 1);
    v59 = (v15 - 2);
    v61 = *(a2 - 2);
    v44 = *(v15 - 2);

    __dst = specialized __RawDictionaryStorage.find<A>(_:)(v44, v42);
    if ((v45 & 1) == 0)
    {
      goto LABEL_54;
    }

    v46 = v37;
    v47 = *a5;
    if (!*(*a5 + 16))
    {
      goto LABEL_56;
    }

    v48 = v40;
    v49 = v36;
    v50 = v46;
    v51 = *(*(*(*(v39 + 56) + 8 * __dst) + v36[123]) + v46[118]);
    __dst = specialized __RawDictionaryStorage.find<A>(_:)(v61, v43);
    if ((v52 & 1) == 0)
    {
      goto LABEL_58;
    }

    v53 = v49;
    v54 = *(*(*(*(v47 + 56) + 8 * __dst) + v49[123]) + v50[118]);

    v37 = v50;
    if (v51 < v54)
    {
      v5 = v65;
      v15 = v41;
      if (v65 + 2 != v58)
      {
        *v65 = *v57;
      }

      __src = v48;
      if (v41 <= v48 || (v36 = v53, a2 = v57, v57 <= v63))
      {
        a2 = v57;
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    __src = v48;
    if (v65 + 2 != v41)
    {
      *v65 = *v59;
    }

    v38 = v65 - 2;
    v15 = v59;
    a2 = v58;
    v36 = v53;
    if (v59 <= v48)
    {
      v15 = v59;
      goto LABEL_45;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return __dst;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v22 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v22;
    }

    v39 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v35 = v6;
LABEL_27:
      v23 = v5 - 1;
      v24 = v4 - 1;
      v25 = v39;
      v36 = v5 - 1;
      do
      {
        v26 = v24;
        v27 = v24 + 1;
        v28 = *--v25;
        v29 = *v23;
        v38 = *((*MEMORY[0x277D85000] & *v28) + 0xA8);
        v30 = v28;
        v31 = v29;
        v32 = v38();
        v33 = (*((*MEMORY[0x277D85000] & *v31) + 0xA8))();

        if (v32 < v33)
        {
          v4 = v26;
          if (v27 != v5)
          {
            *v26 = *v36;
          }

          if (v39 <= v13 || (--v5, v36 <= v35))
          {
            v5 = v36;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v27 != v39)
        {
          *v26 = *v25;
        }

        v24 = v26 - 1;
        v39 = v25;
        v23 = v5 - 1;
      }

      while (v25 > v13);
      v39 = v25;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v39 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v37 = v4;
      while (1)
      {
        v14 = *v13;
        v15 = *((*MEMORY[0x277D85000] & **v5) + 0xA8);
        v16 = *v5;
        v17 = v14;
        v18 = v15();
        v19 = (*((*MEMORY[0x277D85000] & *v17) + 0xA8))();

        if (v18 >= v19)
        {
          break;
        }

        v20 = v5;
        v21 = v6 == v5++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v6;
        if (v13 >= v39 || v5 >= v37)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v6 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v13 || v5 >= (v13 + ((v39 - v13 + (v39 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v39 - v13) / 8));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          outlined init with copy of SILFileHandle(v30, v55);
          v33 = v29;
          outlined init with copy of SILFileHandle(v29, v52);
          v34 = v56;
          v35 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v36 = (*(v35 + 24))(v34, v35);
          v38 = v37;
          v40 = v53;
          v39 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v42 = v36 == (*(v39 + 24))(v40, v39) && v38 == v41;
          v43 = v42 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          if (v43)
          {
            break;
          }

          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v32 = v30 > v51;
          v30 -= 40;
          v29 = v33;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            v4 = v51;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 1);
          *(v5 + 32) = *(v33 + 4);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        outlined init with copy of SILFileHandle(v7, v55);
        outlined init with copy of SILFileHandle(v4, v52);
        v14 = v56;
        v15 = v57;
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v16 = (*(v15 + 24))(v14, v15);
        v18 = v17;
        v19 = v53;
        v20 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v22 = v16 == (*(v20 + 24))(v19, v20) && v18 == v21;
        if (v22)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
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

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26672FCF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay10SILManager26SILFlipBookTransitionPointCGGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = MEMORY[0x266730350](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 20 * v20;
      v23 = *(v22 + 16);
      v34 = *v22;
      result = MEMORY[0x266730350](*(v7 + 40), v21);
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 20 * v15;
      *v16 = v34;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x266730350](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x266730350](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1, a5);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1, a4);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay10SILManager26SILFlipBookTransitionPointCGGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 20 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 20 * v14;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v4 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x26672FCC0](0xD00000000000001BLL, 0x8000000262A9F0C0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26672FCC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x2667300B0](v5);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266730000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x2667300B0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x2667300B0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x2667300B0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager16SILIndicatorDescCGMd);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SILIndicatorDesc();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t specialized FrameDesc.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FrameDesc.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized FallbackInfo.init(values:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 16))
    {
      goto LABEL_17;
    }

    v2 = specialized __RawDictionaryStorage.find<A>(_:)(120, 0xE100000000000000);
    v4 = v3;
    v5 = 0.0;
    if (v3)
    {
      v5 = *(*(v1 + 56) + 8 * v2);
    }

    if (*(v1 + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(121, 0xE100000000000000), v7 = v6, , *(v1 + 16)) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D617266, 0xE500000000000000), (v9 & 1) != 0))
    {
      v10 = *(*(v1 + 56) + 8 * v8);

      if (v4 & 1) != 0 && (v7)
      {
        if (v5 <= 0.0)
        {
          v11 = 0.5;
        }

        else
        {
          v11 = v5;
        }

        if ((~*&v10 & 0x7FF0000000000000) != 0)
        {
          if (v10 > -1.0)
          {
            if (v10 < 65536.0)
            {
              return *&v11;
            }

            goto LABEL_22;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
LABEL_17:
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : Double]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : Double]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : Double]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSdGGMd);
    lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Double] and conformance <> [A : B], &_sSDySSSdGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : Double]] and conformance <A> [A]);
  }

  return result;
}

unint64_t specialized SILConstraints.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SILConstraints.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of SILFileHandle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SILFileHandle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t specialized SILAssetDesc.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SILAssetDesc.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of SILFileHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [FrameDesc] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FrameDesc] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FrameDesc] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager9FrameDescCGMd);
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type FrameDesc and conformance FrameDesc, type metadata accessor for FrameDesc);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FrameDesc] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *specialized static SILFlipBookTransitionPoint.parseTransitionPoints(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = MEMORY[0x277D84F90];
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);
      v18 = HIBYTE(v15) & 0xF;
      v19 = *v14 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v20 = *v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v20)
      {
        goto LABEL_82;
      }

      if ((v15 & 0x1000000000000000) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();

      v22 = specialized _parseInteger<A, B>(ascii:radix:)(v16, v15, 10);

      if ((v22 & 0x10000) != 0)
      {
        goto LABEL_87;
      }

LABEL_71:

      objc_allocWithZone(type metadata accessor for SILFlipBookTransitionPoint());

      SILFlipBookTransitionPoint.init(_:_:_:)(v35, v22, v17);
      if (v3)
      {
      }

      MEMORY[0x26672FDA0]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v8 &= v8 - 1;
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    if ((v15 & 0x2000000000000000) != 0)
    {
      v36[0] = v16;
      v36[1] = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (!v18)
        {
          goto LABEL_83;
        }

        if (--v18)
        {
          LOWORD(v22) = 0;
          v29 = v36 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            if (((10 * v22) & 0xF0000) != 0)
            {
              break;
            }

            v22 = (10 * v22) + v30;
            if ((v22 & 0x10000) != 0)
            {
              break;
            }

            ++v29;
            if (!--v18)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v16 == 45)
      {
        if (!v18)
        {
          goto LABEL_84;
        }

        if (--v18)
        {
          LOWORD(v22) = 0;
          v25 = v36 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (((10 * v22) & 0xF0000) != 0)
            {
              break;
            }

            v22 = (10 * v22) - v26;
            if ((v22 & 0xFFFF0000) != 0)
            {
              break;
            }

            ++v25;
            if (!--v18)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v18)
      {
        LOWORD(v22) = 0;
        v32 = v36;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            break;
          }

          v22 = (10 * v22) + v33;
          if ((v22 & 0x10000) != 0)
          {
            break;
          }

          ++v32;
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      result = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 < 1)
      {
        goto LABEL_86;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_69;
      }

      v22 = 0;
      if (result)
      {
        v27 = result + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_69;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            goto LABEL_69;
          }

          v22 = (10 * v22) + v28;
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_69;
          }

          ++v27;
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v21 == 45)
    {
      if (v19 < 1)
      {
        goto LABEL_85;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_69;
      }

      v22 = 0;
      if (result)
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            goto LABEL_69;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            goto LABEL_69;
          }

          v22 = (10 * v22) - v24;
          if ((v22 & 0xFFFF0000) != 0)
          {
            goto LABEL_69;
          }

          ++v23;
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else
    {
      if (!v19)
      {
LABEL_69:
        v22 = 0;
        LOBYTE(v18) = 1;
LABEL_70:
        v37 = v18;
        v34 = v18;

        if (v34)
        {
          goto LABEL_87;
        }

        goto LABEL_71;
      }

      v22 = 0;
      if (result)
      {
        do
        {
          v31 = *result - 48;
          if (v31 > 9)
          {
            goto LABEL_69;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            goto LABEL_69;
          }

          v22 = (10 * v22) + v31;
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_69;
          }

          ++result;
        }

        while (--v19);
      }
    }

    LOBYTE(v18) = 0;
    goto LABEL_70;
  }

LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      specialized MutableCollection<>.sort(by:)(&v38, type metadata accessor for SILFlipBookTransitionPoint, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
      return v38;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_82:

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t specialized SILCursorDesc.getPixelFormatSize(from:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D726F4649436BLL && a2 == 0xEE00384247524174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x616D726F4649436BLL && a2 == 0xEB00000000384174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  _StringGuts.grow(_:)(44);

  MEMORY[0x26672FCC0](a1, a2);
  MEMORY[0x26672FCC0](0xD000000000000011, 0x8000000262A9F130);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized SILCursorDesc.CursorCodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SILCursorDesc.CursorCodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static SILCursorDesc.createFromData(_:)()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CursorsPlist();
  lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type CursorsPlist and conformance CursorsPlist, type metadata accessor for CursorsPlist);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v0 = *(*v7 + 88);

  v2 = v0(v1);

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  if (v2 < 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2667300B0](v6);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266730000](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  return v5;
}

unint64_t lazy protocol witness table accessor for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys()
{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of SILFileHandle(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized static SILIndicatorDesc.createFromData(_:)()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for IndicatorsPlist();
  lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type IndicatorsPlist and conformance IndicatorsPlist, type metadata accessor for IndicatorsPlist);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v0 = *(*v7 + 96);

  v2 = v0(v1);

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  if (v2 < 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2667300B0](v6);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266730000](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  return v5;
}

unint64_t lazy protocol witness table accessor for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys()
{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager16SILIndicatorDescCGMd);
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILIndicatorDesc and conformance SILAssetDesc, type metadata accessor for SILIndicatorDesc);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance <A> [A]);
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

unint64_t lazy protocol witness table accessor for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SILCursorDesc] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SILCursorDesc] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SILCursorDesc] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager13SILCursorDescCGMd);
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILCursorDesc and conformance SILAssetDesc, type metadata accessor for SILCursorDesc);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SILCursorDesc] and conformance <A> [A]);
  }

  return result;
}

NSObject *specialized static SILManifest.constraintFileFromIndicatorFile(deviceType:indicatorFileName:constraintFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a3;
  v72 = a4;
  v14 = MEMORY[0x26672FC40](a3, a4);
  v15 = [v14 lastPathComponent];
  if (!v15)
  {
LABEL_47:
    __break(1u);
  }

  v16 = v15;
  v75 = a2;
  v70 = v12;
  v71 = v11;
  v81 = v5;

  v17 = [v16 stringByDeletingPathExtension];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v19;

  v20 = *(a5 + 16);
  if (v20)
  {
    v21 = a5 + 32;
    v22 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of SILFileHandle(v21, &v87);
      v24 = v88;
      v23 = v89;
      __swift_project_boxed_opaque_existential_1(&v87, v88);
      *&__dst[0] = (*(v23 + 24))(v24, v23);
      *(&__dst[0] + 1) = v25;
      v83 = v18;
      v84 = v82;
      lazy protocol witness table accessor for type String and conformance String();
      v26 = StringProtocol.contains<A>(_:)();

      if (v26)
      {
        outlined init with take of SILFileHandle(&v87, __dst);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
          v22 = v85;
        }

        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v22 = v85;
        }

        *(v22 + 16) = v29 + 1;
        outlined init with take of SILFileHandle(__dst, v22 + 40 * v29 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v87);
      }

      v21 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v80 = PropertyListDecoder.init()();
  v78 = *(v22 + 16);
  if (!v78)
  {
LABEL_42:

    v58 = SILLogger.unsafeMutableAddressor();
    v59 = v70;
    v60 = v73;
    v61 = v71;
    (*(v70 + 16))(v73, v58, v71);
    v62 = v72;

    v31 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v87 = v65;
      *v64 = 136315138;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v62, &v87);
      _os_log_impl(&dword_262A43000, v31, v63, "Failed to find constraint file for %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266730D70](v65, -1, -1);
      MEMORY[0x266730D70](v64, -1, -1);
    }

    (*(v59 + 8))(v60, v61);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v66 = 12;
    swift_willThrow();

    return v31;
  }

  v30 = 0;
  v76 = 0;
  v77 = 0;
  v79 = v22 + 32;
  do
  {
    if (v30 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    outlined init with copy of SILFileHandle(v79 + 40 * v30, &v87);
    v31 = v88;
    v32 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    v33 = v88;
    v34 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    v35 = (*(v34 + 16))(v33, v34);
    v36 = v81;
    v37 = (*(v32 + 8))(0, v35, v31, v32);
    if (v36)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v87);
      return v31;
    }

    v38 = *(v37 + 16);
    if (v38)
    {
      if (v38 <= 0xE)
      {
        *(__dst + 6) = 0;
        *&__dst[0] = 0;
        BYTE14(__dst[0]) = v38;
        memcpy(__dst, (v37 + 32), v38);
        v40 = *&__dst[0];
        v42 = DWORD2(__dst[0]) | ((WORD6(__dst[0]) | (BYTE14(__dst[0]) << 16)) << 32);

        v41 = v74 & 0xF00000000000000 | v42;
        v74 = v41;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v39 = __DataStorage.init(bytes:length:)();
        if (v38 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          *(v40 + 24) = v38;

          v41 = v39 | 0x8000000000000000;
        }

        else
        {

          v40 = v38 << 32;
          v41 = v39 | 0x4000000000000000;
        }
      }
    }

    else
    {

      v40 = 0;
      v41 = 0xC000000000000000;
    }

    type metadata accessor for SILConstraints();
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILConstraints and conformance SILConstraints, type metadata accessor for SILConstraints);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v81 = 0;
    v43 = *&__dst[0];
    v44 = v88;
    v45 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    v46 = (*(v45 + 24))(v44, v45);
    v47 = MEMORY[0x26672FC40](v46);

    v48 = [v47 lastPathComponent];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    (*((*MEMORY[0x277D85000] & v43->isa) + 0xA8))(v49, v51);
    v52 = *(&v43->isa + OBJC_IVAR____TtC10SILManager14SILConstraints_devices);
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = (v52 + 40);
      v55 = v53 + 1;
      v56 = v75;
      while (--v55)
      {
        if (*(v54 - 1) != a1 || *v54 != v56)
        {
          v54 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        outlined consume of Data._Representation(v40, v41);

        v77 = v43;
        goto LABEL_16;
      }

      outlined consume of Data._Representation(v40, v41);
    }

    else
    {

      outlined consume of Data._Representation(v40, v41);
      v76 = v43;
    }

LABEL_16:
    ++v30;
    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  }

  while (v30 != v78);
  v31 = v77;
  if (v77)
  {

    goto LABEL_41;
  }

  v31 = v76;
  if (!v76)
  {
    goto LABEL_42;
  }

LABEL_41:

  return v31;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SDySS10SILManager13SILCursorDescCGTt0g5Tf4g_nTm(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = a1[4];
  v6 = a1[5];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10SILManager13SILCursorDescCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10SILManager13SILCursorDescCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10SILManager13SILCursorDescCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SILManifest.findBlob(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = getManifestDirectory()()._countAndFlagsBits;
  v7 = getFilesMatching(directoryName:predicate:)(countAndFlagsBits);

  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2667300B0](v22))
  {
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v2 = 0;
    v9 = *(v7 + 16);
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1;
    v36 = a1 + 32;
    v40 = v7 + 32;
    v41 = a1 & 0xC000000000000001;
    v39 = i;
    while (v41)
    {
      v11 = MEMORY[0x266730000](v2, v38);
      v12 = __OFADD__(v2++, 1);
      if (v12)
      {
        goto LABEL_25;
      }

LABEL_12:
      v42 = v11;
      v43 = v2;
      v14 = *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName);
      v13 = *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName + 8);

      if (!v9)
      {
LABEL_34:
        v24 = SILLogger.unsafeMutableAddressor();
        v26 = v33;
        v25 = v34;
        v27 = v35;
        (*(v34 + 16))(v33, v24, v35);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v47[0] = v31;
          *v30 = 136315138;
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v47);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_262A43000, v28, v29, "Failed to find blob %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x266730D70](v31, -1, -1);
          MEMORY[0x266730D70](v30, -1, -1);
        }

        else
        {
        }

        (*(v25 + 8))(v26, v27);
        abort();
      }

      a1 = 0;
      v15 = v40;
      while (1)
      {
        if (a1 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        outlined init with copy of SILFileHandle(v15, &v44);
        v16 = v45;
        v17 = v46;
        __swift_project_boxed_opaque_existential_1(&v44, v45);
        v18 = (*(v17 + 24))(v16, v17);
        v19 = MEMORY[0x26672FC40](v18);

        v5 = [v19 lastPathComponent];

        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v20;

        if (v3 == v14 && v2 == v13)
        {
          break;
        }

        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v3)
        {
          goto LABEL_5;
        }

        ++a1;
        __swift_destroy_boxed_opaque_existential_1Tm(&v44);
        v15 += 40;
        if (v9 == a1)
        {
          goto LABEL_34;
        }
      }

LABEL_5:

      outlined init with take of SILFileHandle(&v44, v47);
      outlined init with copy of SILFileHandle(v47, &v44);
      v10 = v42;
      (*((*MEMORY[0x277D85000] & *v42) + 0xC8))(&v44);

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v2 = v43;
      if (v43 == v39)
      {
      }
    }

    if (v2 >= *(v37 + 16))
    {
      goto LABEL_26;
    }

    v11 = *(v36 + 8 * v2);
    v12 = __OFADD__(v2++, 1);
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (a1 < 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

uint64_t specialized static SILManifest.manifestFromPlists(plists:)(uint64_t a1)
{
  v188 = *MEMORY[0x277D85DE8];
  v167 = type metadata accessor for Logger();
  v173 = *(v167 - 8);
  v2 = MEMORY[0x28223BE20](v167);
  v154 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v153 = &v146 - v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    v175 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of SILFileHandle(v6, &v185);
      v7 = v186;
      v8 = v187;
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      *&__dst = (*(v8 + 24))(v7, v8);
      *(&__dst + 1) = v9;
      v178 = 0x69617274736E6F63;
      v179 = 0xEB0000000073746ELL;
      lazy protocol witness table accessor for type String and conformance String();
      v10 = StringProtocol.contains<A>(_:)();

      if (v10)
      {
        outlined init with take of SILFileHandle(&v185, &__dst);
        v11 = v175;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v180 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
          v11 = v180;
        }

        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v11 = v180;
        }

        *(v11 + 16) = v14 + 1;
        v175 = v11;
        outlined init with take of SILFileHandle(&__dst, v11 + 40 * v14 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v185);
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v175 = MEMORY[0x277D84F90];
  }

  *&v185 = a1;

  v15 = specialized MutableCollection<>.sort(by:)(&v185);
  v176 = 0;
  v16 = v185;
  v17 = *(v185 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = 0;
    v20 = v185 + 32;
    while (v19 < *(v16 + 16))
    {
      outlined init with copy of SILFileHandle(v20, &v185);
      v21 = v186;
      v22 = v187;
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      *&__dst = (*(v22 + 24))(v21, v22);
      *(&__dst + 1) = v23;
      v178 = 0x69617274736E6F63;
      v179 = 0xEB0000000073746ELL;
      lazy protocol witness table accessor for type String and conformance String();
      v24 = StringProtocol.contains<A>(_:)();

      if (v24)
      {
        v15 = __swift_destroy_boxed_opaque_existential_1Tm(&v185);
      }

      else
      {
        outlined init with take of SILFileHandle(&v185, &__dst);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v18;
        if ((v25 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1);
          v18 = v180;
        }

        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v18 = v180;
        }

        v18[2] = v27 + 1;
        v15 = outlined init with take of SILFileHandle(&__dst, &v18[5 * v27 + 4]);
      }

      ++v19;
      v20 += 40;
      if (v17 == v19)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_23:
  v174 = v18;

  v28 = MobileGestalt_get_current_device();
  if (!v28)
  {
    goto LABEL_107;
  }

  v29 = v28;
  v30 = MobileGestalt_copy_productType_obj();

  if (v30)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = v174;
  v155 = v34;
  v178 = MEMORY[0x277D84F90];
  v180 = MEMORY[0x277D84F98];
  v36 = v174[2];
  v156 = (v173 + 16);
  v157 = (v173 + 8);
  if (!v36)
  {
LABEL_86:

    v15 = v178;
    if (!(v178 >> 62))
    {
      v134 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_88:
      v135 = v167;
      v136 = v153;
      if (v134)
      {
        specialized MutableCollection<>.sort(by:)(&v178, type metadata accessor for SILIndicatorDesc, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
        v137 = v178;
        v138 = objc_allocWithZone(type metadata accessor for SILManifest());
        v139 = SILManifest.init(indicators:cursors:)(v137, MEMORY[0x277D84F90]);
      }

      else
      {

        v140 = SILLogger.unsafeMutableAddressor();
        (*v156)(v136, v140, v135);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_262A43000, v141, v142, "No valid manifest files provided", v143, 2u);
          MEMORY[0x266730D70](v143, -1, -1);
        }

        (*v157)(v136, v135);
        v139 = 0;
      }

      return v139;
    }

LABEL_102:
    v145 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 < 0)
    {
      v145 = v15;
    }

    v134 = MEMORY[0x2667300B0](v145);
    goto LABEL_88;
  }

  v149 = v32;
  v37 = 0;
  v158 = v174 + 4;
  v173 = v36;
  v152 = v36 - 1;
  v159 = 3;
  *&v31 = 136315394;
  v150 = v31;
  while (1)
  {
    v38 = &v158[5 * v37];
    v39 = v37;
    while (1)
    {
      if (v39 >= v35[2])
      {
        goto LABEL_95;
      }

      outlined init with copy of SILFileHandle(v38, &v185);
      v40 = v186;
      v41 = v187;
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      v42 = (*(v41 + 24))(v40, v41);
      v43 = MEMORY[0x26672FC40](v42);
      v44 = [v43 lastPathComponent];
      if (!v44)
      {
        goto LABEL_106;
      }

      v45 = v44;

      v46 = v186;
      v47 = v187;
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      v48 = v186;
      v49 = v187;
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      v50 = (*(v49 + 16))(v48, v49);
      v51 = v176;
      v52 = (*(v47 + 8))(0, v50, v46, v47);
      if (v51)
      {

        goto LABEL_76;
      }

      v176 = 0;
      v53 = *(v52 + 16);
      if (v53)
      {
        if (v53 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v53;
          memcpy(&__dst, (v52 + 32), v53);
          v54 = __dst;
          v55 = v172 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v172 = v55;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          if (v53 >= 0x7FFFFFFF)
          {

            v56 = __DataStorage.init(bytes:length:)();
            type metadata accessor for Data.RangeReference();
            v54 = swift_allocObject();
            *(v54 + 16) = 0;
            *(v54 + 24) = v53;

            v55 = v56 | 0x8000000000000000;
          }

          else
          {
            v54 = v53 << 32;
            v55 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
          }
        }
      }

      else
      {
        v54 = 0;
        v55 = 0xC000000000000000;
      }

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      v57 = PropertyListDecoder.init()();
      type metadata accessor for NSString();
      v58 = NSString.init(stringLiteral:)();
      v59 = static NSObject.== infix(_:_:)();

      if ((v59 & 1) == 0)
      {
        break;
      }

      ++v39;

      outlined consume of Data._Representation(v54, v55);

      v15 = __swift_destroy_boxed_opaque_existential_1Tm(&v185);
      v38 += 40;
      v35 = v174;
      if (v173 == v39)
      {
        goto LABEL_86;
      }
    }

    type metadata accessor for IndicatorsPlist();
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type IndicatorsPlist and conformance IndicatorsPlist, type metadata accessor for IndicatorsPlist);
    v51 = v176;
    v60 = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v51)
    {

      outlined consume of Data._Representation(v54, v55);

LABEL_76:
      v176 = 0;
      v114 = SILLogger.unsafeMutableAddressor();
      v115 = v154;
      v116 = v167;
      (*v156)(v154, v114, v167);
      outlined init with copy of SILFileHandle(&v185, &__dst);
      v117 = v51;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v181 = v121;
        *v120 = v150;
        v122 = v51;
        v123 = v183;
        v124 = v184;
        __swift_project_boxed_opaque_existential_1(&__dst, v183);
        v125 = (*(v124 + 24))(v123, v124);
        v127 = v126;
        __swift_destroy_boxed_opaque_existential_1Tm(&__dst);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v181);

        *(v120 + 4) = v128;
        *(v120 + 12) = 2080;
        v177 = v122;
        v129 = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v130 = String.init<A>(describing:)();
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v181);

        *(v120 + 14) = v132;
        _os_log_impl(&dword_262A43000, v118, v119, " Failed to parse SIL Manifest file %s : %s", v120, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266730D70](v121, -1, -1);
        MEMORY[0x266730D70](v120, -1, -1);

        (*v157)(v115, v167);
      }

      else
      {

        (*v157)(v115, v116);
        __swift_destroy_boxed_opaque_existential_1Tm(&__dst);
      }

      goto LABEL_85;
    }

    v61 = __dst;
    v62 = *(*__dst + 96);
    v63 = *__dst + 96;
    v64 = v62(v60);
    v176 = &v146;
    MEMORY[0x28223BE20](v64);
    *(&v146 - 2) = &v180;
    *(&v146 - 1) = &v185;
    v66 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #4 in static SILManifest.manifestFromPlists(plists:), (&v146 - 4), v65);
    v67 = (*(*v61 + 104))(v66);
    v148 = v61;
    v147 = v62;
    v146 = v63;
    v68 = v62(v67);
    v69 = MEMORY[0x277D85000];
    if ((v68 & 0xC000000000000001) == 0)
    {
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v70 = *(v68 + 32);
        goto LABEL_48;
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
    }

    v70 = MEMORY[0x266730000](0, v68);
LABEL_48:
    v71 = v70;

    v73 = (*((*v69 & *v71) + 0x150))(v72);

    v164 = v54;
    v163 = v55;
    v165 = v57;
    v166 = v73;
    if (v73)
    {
      goto LABEL_49;
    }

    v109 = v155;
    if (!v155)
    {
      break;
    }

    v110 = v186;
    v111 = v187;
    __swift_project_boxed_opaque_existential_1(&v185, v186);
    v176 = *(v111 + 24);

    v112 = (v176)(v110, v111);
    v166 = specialized static SILManifest.constraintFileFromIndicatorFile(deviceType:indicatorFileName:constraintFiles:)(v149, v109, v112, v113, v175);

    v54 = v164;
    v55 = v163;
LABEL_49:
    v74 = (*(*v148 + 112))(&__dst);
    specialized MutableCollection<>.sort(by:)(v75, type metadata accessor for SILIndicatorDesc, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
    v176 = 0;
    v76 = v74(&__dst, 0);
    v15 = v147(v76);
    v77 = v15;
    if (v15 >> 62)
    {
      if (v15 >= 0)
      {
        v15 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v15 = MEMORY[0x2667300B0](v15);
      v78 = v15;
      if (v15)
      {
LABEL_51:
        v79 = 0;
        v162 = v77 & 0xC000000000000001;
        v151 = v77 & 0xFFFFFFFFFFFFFF8;
        v161 = v77;
        v160 = v78;
        do
        {
          if (v162)
          {
            v80 = v79;
            v15 = MEMORY[0x266730000](v79, v77);
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (v79 >= *(v151 + 16))
            {
              goto LABEL_100;
            }

            v80 = v79;
            v15 = *(v77 + 8 * v79 + 32);
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_96;
            }
          }

          v170 = v80;
          v82 = *((*v69 & *v15) + 0xA8);
          v83 = v15;
          v84 = v15;
          v85 = v82();
          v169 = v81;
          v168 = v83;
          if (v85 == -1)
          {
            v86 = v159;
            v15 = (*((*v69 & *v84) + 0xB0))(v159);
            v159 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_101;
            }
          }

          v88 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
          v87 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8);

          v171 = (v82)(v89);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v180;
          *&__dst = v180;
          v93 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
          v94 = v91[2];
          v95 = (v92 & 1) == 0;
          v15 = v94 + v95;
          if (__OFADD__(v94, v95))
          {
            goto LABEL_97;
          }

          v51 = v92;
          if (v91[3] >= v15)
          {
            if ((v90 & 1) == 0)
            {
              v15 = specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v90);
            v15 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
            if ((v51 & 1) != (v96 & 1))
            {
              goto LABEL_109;
            }

            v93 = v15;
          }

          if (v51)
          {

            v97 = __dst;
            *(*(__dst + 56) + 8 * v93) = v171;
          }

          else
          {
            v97 = __dst;
            *(__dst + 8 * (v93 >> 6) + 64) |= 1 << v93;
            v98 = (v97[6] + 16 * v93);
            *v98 = v88;
            v98[1] = v87;
            *(v97[7] + 8 * v93) = v171;
            v99 = v97[2];
            v100 = __OFADD__(v99, 1);
            v101 = v99 + 1;
            if (v100)
            {
              goto LABEL_99;
            }

            v97[2] = v101;
          }

          v180 = v97;
          v15 = type metadata accessor for SILIndicatorValidator();
          v102 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount);
          v69 = MEMORY[0x277D85000];
          if (HIWORD(v102))
          {
            goto LABEL_98;
          }

          v103 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook);
          v104 = v103;
          v105 = v166;

          v106 = SILIndicatorValidator.__allocating_init(framesCount:constraints:flipbook:)(v102, v105, v103);
          (*((*v69 & *v84) + 0x140))(v106);

          v79 = v170 + 1;
          v54 = v164;
          v55 = v163;
          v77 = v161;
        }

        while (v169 != v160);

        v108 = v105;
        goto LABEL_84;
      }
    }

    else
    {
      v78 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v78)
      {
        goto LABEL_51;
      }
    }

    v108 = v166;
LABEL_84:
    v133 = v147(v107);
    specialized Array.append<A>(contentsOf:)(v133);

    outlined consume of Data._Representation(v54, v55);

LABEL_85:
    v35 = v174;
    v15 = __swift_destroy_boxed_opaque_existential_1Tm(&v185);
    v37 = v39 + 1;
    if (v152 == v39)
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_109:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC10SILManager9FrameDescC_Tt1g5Tf4gn_n(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    type metadata accessor for FrameDesc();
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unsigned __int8 *specialized static SILManifest.validateFlipBookStates(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v77 = v6;
  v78 = v2;
  v79 = result;
  while (v5)
  {
    v10 = v9;
LABEL_11:
    v80 = v10;
    v11 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v5)))));
    v81 = (v5 - 1) & v5;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v84 = v11;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    v82 = v16;
    v83 = v12;
LABEL_16:
    if (v15)
    {
      v18 = v17;
LABEL_21:
      v19 = *(*(v84 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
      v15 &= v15 - 1;
      v20 = v19 + 64;
      v21 = 1 << *(v19 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v19 + 64);
      v24 = (v21 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v25 = 0;
      v85 = v19;
      if (!v23)
      {
LABEL_25:
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v26 >= v24)
          {

            v17 = v18;
            v16 = v82;
            v12 = v83;
            goto LABEL_16;
          }

          v23 = *(v20 + 8 * v26);
          ++v25;
          if (v23)
          {
            v25 = v26;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:

LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

LABEL_29:
      while (2)
      {
        v27 = __clz(__rbit64(v23)) | (v25 << 6);
        v28 = *(*(v19 + 56) + 8 * v27);
        v29 = *(v28 + 16);
        if (!v29)
        {
          goto LABEL_117;
        }

        v30 = *(v28 + 32);
        v31 = v29 - 1;
        if (v29 != 1)
        {
          if (v29 > 4)
          {
            v32 = v31 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v33 = vdupq_n_s64(v30);
            v34 = (v28 + 56);
            v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
            v36 = v33;
            do
            {
              v33 = vbslq_s8(vcgtq_s64(v33, v34[-1]), v33, v34[-1]);
              v36 = vbslq_s8(vcgtq_s64(v36, *v34), v36, *v34);
              v34 += 2;
              v35 -= 4;
            }

            while (v35);
            v37 = vbslq_s8(vcgtq_s64(v33, v36), v33, v36);
            v38 = vextq_s8(v37, v37, 8uLL).u64[0];
            v30 = vbsl_s8(vcgtd_s64(v37.i64[0], v38), *v37.i8, v38);
            if (v31 != (v31 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_36;
            }
          }

          else
          {
            v32 = 1;
LABEL_36:
            v39 = v29 - v32;
            v40 = (v28 + 8 * v32 + 32);
            do
            {
              v42 = *v40++;
              v41 = v42;
              if (v30 <= v42)
              {
                v30 = v41;
              }

              --v39;
            }

            while (v39);
          }
        }

        v43 = (*(v19 + 48) + 16 * v27);
        v45 = *v43;
        v44 = v43[1];
        if (v30 <= v8)
        {
          v46 = v8;
        }

        else
        {
          v46 = v30;
        }

        v47 = HIBYTE(v44) & 0xF;
        v48 = v45 & 0xFFFFFFFFFFFFLL;
        if ((v44 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v44) & 0xF;
        }

        else
        {
          v49 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (!v49)
        {
          goto LABEL_118;
        }

        v86 = v46;
        if ((v44 & 0x1000000000000000) == 0)
        {
          if ((v44 & 0x2000000000000000) != 0)
          {
            v87[0] = v45;
            v87[1] = v44 & 0xFFFFFFFFFFFFFFLL;
            if (v45 == 43)
            {
              if (!v47)
              {
                goto LABEL_124;
              }

              if (--v47)
              {
                v51 = 0;
                v61 = v87 + 1;
                while (1)
                {
                  v62 = *v61 - 48;
                  if (v62 > 9)
                  {
                    break;
                  }

                  v63 = 10 * v51;
                  if ((v51 * 10) >> 64 != (10 * v51) >> 63)
                  {
                    break;
                  }

                  v51 = v63 + v62;
                  if (__OFADD__(v63, v62))
                  {
                    break;
                  }

                  ++v61;
                  if (!--v47)
                  {
                    goto LABEL_104;
                  }
                }
              }
            }

            else if (v45 == 45)
            {
              if (!v47)
              {
                goto LABEL_122;
              }

              if (--v47)
              {
                v51 = 0;
                v55 = v87 + 1;
                while (1)
                {
                  v56 = *v55 - 48;
                  if (v56 > 9)
                  {
                    break;
                  }

                  v57 = 10 * v51;
                  if ((v51 * 10) >> 64 != (10 * v51) >> 63)
                  {
                    break;
                  }

                  v51 = v57 - v56;
                  if (__OFSUB__(v57, v56))
                  {
                    break;
                  }

                  ++v55;
                  if (!--v47)
                  {
                    goto LABEL_104;
                  }
                }
              }
            }

            else if (v47)
            {
              v51 = 0;
              v66 = v87;
              while (1)
              {
                v67 = *v66 - 48;
                if (v67 > 9)
                {
                  break;
                }

                v68 = 10 * v51;
                if ((v51 * 10) >> 64 != (10 * v51) >> 63)
                {
                  break;
                }

                v51 = v68 + v67;
                if (__OFADD__(v68, v67))
                {
                  break;
                }

                ++v66;
                if (!--v47)
                {
                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
            if ((v45 & 0x1000000000000000) != 0)
            {
              result = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = _StringObject.sharedUTF8.getter();
            }

            v50 = *result;
            if (v50 == 43)
            {
              if (v48 < 1)
              {
                goto LABEL_121;
              }

              v47 = v48 - 1;
              if (v48 != 1)
              {
                v51 = 0;
                if (!result)
                {
                  goto LABEL_95;
                }

                v58 = result + 1;
                while (1)
                {
                  v59 = *v58 - 48;
                  if (v59 > 9)
                  {
                    break;
                  }

                  v60 = 10 * v51;
                  if ((v51 * 10) >> 64 != (10 * v51) >> 63)
                  {
                    break;
                  }

                  v51 = v60 + v59;
                  if (__OFADD__(v60, v59))
                  {
                    break;
                  }

                  ++v58;
                  if (!--v47)
                  {
                    goto LABEL_104;
                  }
                }
              }
            }

            else if (v50 == 45)
            {
              if (v48 < 1)
              {
                goto LABEL_123;
              }

              v47 = v48 - 1;
              if (v48 != 1)
              {
                v51 = 0;
                if (result)
                {
                  v52 = result + 1;
                  while (1)
                  {
                    v53 = *v52 - 48;
                    if (v53 > 9)
                    {
                      goto LABEL_103;
                    }

                    v54 = 10 * v51;
                    if ((v51 * 10) >> 64 != (10 * v51) >> 63)
                    {
                      goto LABEL_103;
                    }

                    v51 = v54 - v53;
                    if (__OFSUB__(v54, v53))
                    {
                      goto LABEL_103;
                    }

                    ++v52;
                    if (!--v47)
                    {
                      goto LABEL_104;
                    }
                  }
                }

LABEL_95:
                LOBYTE(v47) = 0;
LABEL_104:
                v88 = v47;
                v69 = v47;

                if (v69)
                {
                  goto LABEL_119;
                }

LABEL_105:
                v23 &= v23 - 1;

                v19 = v85;
                if (v51 <= v86)
                {
                  v8 = v86;
                }

                else
                {
                  v8 = v51;
                }

                if (!v23)
                {
                  goto LABEL_25;
                }

                continue;
              }
            }

            else
            {
              if (!v48)
              {
                goto LABEL_103;
              }

              v51 = 0;
              if (!result)
              {
                goto LABEL_95;
              }

              while (1)
              {
                v64 = *result - 48;
                if (v64 > 9)
                {
                  break;
                }

                v65 = 10 * v51;
                if ((v51 * 10) >> 64 != (10 * v51) >> 63)
                {
                  break;
                }

                v51 = v65 + v64;
                if (__OFADD__(v65, v64))
                {
                  break;
                }

                ++result;
                if (!--v48)
                {
                  goto LABEL_95;
                }
              }
            }
          }

LABEL_103:
          v51 = 0;
          LOBYTE(v47) = 1;
          goto LABEL_104;
        }

        break;
      }

      swift_bridgeObjectRetain_n();

      v51 = specialized _parseInteger<A, B>(ascii:radix:)(v45, v44, 10);
      v71 = v70;

      if (v71)
      {
        goto LABEL_119;
      }

      goto LABEL_105;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_116;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_21;
      }
    }

    v1 = v79;
    v9 = v80;
    v6 = v77;
    v2 = v78;
    v5 = v81;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      result = [objc_allocWithZone(type metadata accessor for FrameDesc()) init];
      if (__OFADD__(v8, 1))
      {
        goto LABEL_125;
      }

      v72 = result;
      v73 = _sSa9repeating5countSayxGx_SitcfC10SILManager9FrameDescC_Tt1g5Tf4gn_n(result, (v8 + 1));

      v74 = objc_allocWithZone(type metadata accessor for SILFlipBookDesc());

      v75 = SILFlipBookDesc.init(_:_:)(v73, v1);
      v76 = v75 != 0;

      return v76;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PlistCodingKeys and conformance PlistCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys;
  if (!lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys;
  if (!lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys;
  if (!lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FrameDesc.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameDesc.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FallbackInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FallbackInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SILConstraints.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILConstraints.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILAssetDesc.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILAssetDesc.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILCursorDesc.CursorCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILCursorDesc.CursorCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlistCodingKeys(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlistCodingKeys(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILFrameDesc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILFrameDesc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CursorsPlist.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CursorsPlist.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SILIndicatorDesc.IndicatorCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILIndicatorDesc.IndicatorCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of SILFileHandle(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager16SILIndicatorDescCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t resolvedManifestDirectory()()
{
  v0 = 0xD000000000000073;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = specialized static SimulatorFileHandle.getFilesMatching(directoryName:predicate:)(0xD000000000000073, 0x8000000262A9F190)[2];

  v9 = SILLogger.unsafeMutableAddressor();
  v10 = *(v2 + 16);
  if (v8)
  {
    v10(v7, v9, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000073, 0x8000000262A9F190, &v21);
      _os_log_impl(&dword_262A43000, v11, v12, "Loading assets from default path : %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266730D70](v14, -1, -1);
      MEMORY[0x266730D70](v13, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v10(v5, v9, v1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      v0 = 0xD000000000000085;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x8000000262A9F210, &v21);
      _os_log_impl(&dword_262A43000, v15, v16, "Loading assets from fallback path : %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266730D70](v18, -1, -1);
      MEMORY[0x266730D70](v17, -1, -1);

      (*(v2 + 8))(v5, v1);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
      return 0xD000000000000085;
    }
  }

  return v0;
}

Swift::String __swiftcall getManifestDirectory()()
{
  if (one-time initialization token for manifestDirectory != -1)
  {
    swift_once();
  }

  v0 = static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory();
  v1 = static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory();

  v2 = v0;
  v3 = v1;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t SimulatorFileHandle.init(directoryName:fileName:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = *v5;
  v10 = type metadata accessor for Logger();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v53 = a1;
  v54 = a2;

  MEMORY[0x26672FCC0](a3, a4);

  v22 = v53;
  v23 = v54;
  (*(v16 + 56))(v14, 1, 1, v15);
  String.utf8CString.getter();
  URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
  outlined destroy of URL?(v14);

  type metadata accessor for NSFileHandle();
  v47 = v16;
  v48 = v15;
  (*(v16 + 16))(v19, v21, v15);
  v24 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v19);
  v5[2] = v24;
  v25 = v24;
  NSFileHandle.seekToEnd()();
  v27 = v26;
  if (v26)
  {

LABEL_5:

    v31 = SILLogger.unsafeMutableAddressor();
    v33 = v49;
    v32 = v50;
    (*(v50 + 16))(v49, v31, v51);
    v34 = v27;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136315138;
      v52 = v27;
      v39 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v40 = String.init<A>(describing:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v53);
      v46 = v21;
      v43 = v42;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_262A43000, v35, v36, "Failed to parse manifest: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266730D70](v38, -1, -1);
      MEMORY[0x266730D70](v37, -1, -1);

      (*(v50 + 8))(v49, v51);
      (*(v47 + 8))(v46, v48);
    }

    else
    {

      (*(v32 + 8))(v33, v51);
      (*(v47 + 8))(v21, v48);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v5[2];
  v29 = NSFileHandle.offset()();
  if (v30)
  {
    v27 = v30;

    goto LABEL_5;
  }

  v45 = v29;

  result = (*(v47 + 8))(v21, v48);
  if ((v45 & 0x8000000000000000) == 0)
  {
    v5[3] = v45;
    v5[4] = v22;
    v5[5] = v23;
    return v5;
  }

  __break(1u);
  return result;
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t SimulatorFileHandle.read(offset:size:)(uint64_t a1, size_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v2 + 16);
  v23[0] = 0;
  if (![v10 seekToOffset:a1 error:v23])
  {
    v19 = v23[0];
    _convertNSErrorToError(_:)();

LABEL_9:
    swift_willThrow();
    return v6;
  }

  v11 = v23[0];
  v12 = NSFileHandle.read(upToCount:)();
  if (!v3)
  {
    if (v13 >> 60 == 15)
    {
      v14 = SILLogger.unsafeMutableAddressor();
      (*(v7 + 16))(v9, v14, v6);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134218240;
        *(v17 + 4) = a1;
        *(v17 + 12) = 2048;
        *(v17 + 14) = a2;
        _os_log_impl(&dword_262A43000, v15, v16, "Reading return from offset %ld and size %ld returned nil", v17, 0x16u);
        MEMORY[0x266730D70](v17, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      lazy protocol witness table accessor for type SILError and conformance SILError();
      swift_allocError();
      *v18 = 22;
      goto LABEL_9;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v21 = v13;
      v22 = v12;
      if (a2)
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = a2;
        bzero((v6 + 32), a2);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      Data.copyBytes(to:count:)();
      outlined consume of Data?(v22, v21);

      return v6;
    }

LABEL_17:
    __break(1u);
  }

  return v6;
}

uint64_t SimulatorFileHandle.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t protocol witness for SILFileHandle.name.getter in conformance SimulatorFileHandle()
{
  v1 = *(*v0 + 32);

  return v1;
}

unint64_t one-time initialization function for manifestDirectory()
{
  result = resolvedManifestDirectory()();
  static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory() = result;
  static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory() = v1;
  return result;
}

void *specialized static SimulatorFileHandle.getFilesMatching(directoryName:predicate:)(uint64_t a1, char *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v57 = a1;
  v9 = MEMORY[0x26672FC40](a1, a2);
  *&v59 = 0;
  v56 = v8;
  v10 = [v8 contentsOfDirectoryAtPath:v9 error:&v59];

  v11 = v59;
  if (v10)
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;

    v14 = *(v12 + 16);
    if (v14)
    {
      v15 = 0;
      v55 = (v14 - 1);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = (v12 + 40 + 16 * v15);
        v18 = v15;
        while (1)
        {
          if (v18 >= *(v12 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          v20 = *(v17 - 1);
          v19 = *v17;
          v15 = v18 + 1;

          v21._countAndFlagsBits = 1852400174;
          v21._object = 0xE400000000000000;
          if (String.hasSuffix(_:)(v21))
          {
            break;
          }

          v17 += 2;
          v18 = (v18 + 1);
          if (v14 == v15)
          {
            goto LABEL_19;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
          v16 = v59;
        }

        v23 = v16;
        v24 = *(v16 + 16);
        v25 = *(v23 + 24);
        v26 = v24 + 1;
        if (v24 >= v25 >> 1)
        {
          v54 = v24 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1);
          v26 = v54;
          v23 = v59;
        }

        *(v23 + 16) = v26;
        v27 = v23 + 16 * v24;
        *(v27 + 32) = v20;
        *(v27 + 40) = v19;
        v16 = v23;
      }

      while (v55 != v18);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v41 = *(v16 + 16);

    if (v41)
    {
      v42 = 0;
      v43 = v16 + 40;
      v40 = MEMORY[0x277D84F90];
      v54 = v16;
      do
      {
        v55 = v40;
        v44 = (v43 + 16 * v42);
        v45 = v42;
        while (1)
        {
          if (v45 >= v41)
          {
            goto LABEL_37;
          }

          v42 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_38;
          }

          v46 = *(v44 - 1);
          v47 = *v44;
          v48 = type metadata accessor for SimulatorFileHandle();
          swift_allocObject();
          swift_bridgeObjectRetain_n();

          v49 = SimulatorFileHandle.init(directoryName:fileName:)(v57, a2, v46, v47);
          if (v49)
          {
            break;
          }

          ++v45;
          v44 += 2;
          if (v42 == v41)
          {
            v40 = v55;
            goto LABEL_34;
          }
        }

        v50 = v49;
        v40 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
        }

        v52 = v40[2];
        v51 = v40[3];
        if (v52 >= v51 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v40);
        }

        v60 = v48;
        v61 = &protocol witness table for SimulatorFileHandle;
        *&v59 = v50;
        v40[2] = v52 + 1;
        outlined init with take of SILFileHandle(&v59, &v40[5 * v52 + 4]);
      }

      while (v42 != v41);
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

LABEL_34:
  }

  else
  {
    v28 = v59;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v30 = SILLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v30, v4);
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v59 = v35;
      *v34 = 136315138;
      v58 = v29;
      v36 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v59);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_262A43000, v32, v33, "Cannot read directory: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266730D70](v35, -1, -1);
      MEMORY[0x266730D70](v34, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return MEMORY[0x277D84F90];
  }

  return v40;
}

void *specialized static SimulatorFileHandle.getFilesMatching(directoryName:predicate:)(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t a4)
{
  v61 = a4;
  v66 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v60 = a1;
  v12 = MEMORY[0x26672FC40](a1, a2);
  *&v63 = 0;
  v58 = v11;
  v13 = [v11 contentsOfDirectoryAtPath:v12 error:&v63];

  v14 = v63;
  if (v13)
  {
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v15 + 40;
      v56 = v17 - 1;
      v20 = MEMORY[0x277D84F90];
      v57 = v15 + 40;
      do
      {
        v59 = v20;
        v21 = (v19 + 16 * v18);
        v22 = v18;
        while (1)
        {
          if (v22 >= *(v15 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          v24 = *(v21 - 1);
          v23 = *v21;
          v18 = v22 + 1;

          if (a3(v24, v23))
          {
            break;
          }

          v21 += 2;
          ++v22;
          if (v17 == v18)
          {
            v20 = v59;
            goto LABEL_19;
          }
        }

        v20 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v63 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1);
          v20 = v63;
        }

        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v59 = v27 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v28 = v59;
          v20 = v63;
        }

        *(v20 + 16) = v28;
        v29 = v20 + 16 * v27;
        *(v29 + 32) = v24;
        *(v29 + 40) = v23;
        v19 = v57;
      }

      while (v56 != v22);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v43 = *(v20 + 16);

    v59 = v20;
    if (v43)
    {
      v44 = 0;
      v45 = v20 + 40;
      v42 = MEMORY[0x277D84F90];
      v61 = v20 + 40;
      do
      {
        v46 = (v45 + 16 * v44);
        v47 = v44;
        while (1)
        {
          if (v47 >= v43)
          {
            goto LABEL_37;
          }

          v44 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_38;
          }

          v48 = *(v46 - 1);
          v49 = *v46;
          v50 = type metadata accessor for SimulatorFileHandle();
          swift_allocObject();
          swift_bridgeObjectRetain_n();

          v51 = SimulatorFileHandle.init(directoryName:fileName:)(v60, a2, v48, v49);
          if (v51)
          {
            break;
          }

          ++v47;
          v46 += 2;
          if (v44 == v43)
          {
            goto LABEL_34;
          }
        }

        v52 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        }

        v45 = v61;
        v54 = v42[2];
        v53 = v42[3];
        if (v54 >= v53 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v42);
        }

        v64 = v50;
        v65 = &protocol witness table for SimulatorFileHandle;
        *&v63 = v52;
        v42[2] = v54 + 1;
        outlined init with take of SILFileHandle(&v63, &v42[5 * v54 + 4]);
      }

      while (v44 != v43);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

LABEL_34:
  }

  else
  {
    v30 = v63;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = SILLogger.unsafeMutableAddressor();
    (*(v8 + 16))(v10, v32, v7);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v63 = v37;
      *v36 = 136315138;
      v62 = v31;
      v38 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v63);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_262A43000, v34, v35, "Cannot read directory: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266730D70](v37, -1, -1);
      MEMORY[0x266730D70](v36, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return MEMORY[0x277D84F90];
  }

  return v42;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LogType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LogType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogType@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LogType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t LogModule.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6165627468676954;
  v2 = 0x6E6F6D6D6F43;
  if (a1 != 6)
  {
    v2 = 0x69746164696C6156;
  }

  v3 = 0x65646E65524C4953;
  if (a1 != 4)
  {
    v3 = 0x646E656B636142;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6361667275535845;
  if (a1 != 2)
  {
    v4 = 0x6F4C617461445845;
  }

  if (a1)
  {
    v1 = 0x616C707369445845;
  }

  if (a1 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogModule@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LogModule.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogModule@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6165627468676954;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6D6D6F43;
  if (v2 != 6)
  {
    v5 = 0x69746164696C6156;
    v4 = 0xEA00000000006E6FLL;
  }

  v6 = 0xEB00000000726572;
  v7 = 0x65646E65524C4953;
  result = 0x646E656B636142;
  if (v2 != 4)
  {
    v7 = 0x646E656B636142;
    v6 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = 0x6361667275535845;
  v10 = 0xEC00000072656461;
  if (v2 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F4C617461445845;
  }

  v11 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0x616C707369445845;
  }

  else
  {
    v11 = 0xE90000000000006DLL;
  }

  if (*v1 <= 1u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v9;
  }

  if (*v1 <= 1u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (*v1 <= 3u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v5;
  }

  if (*v1 <= 3u)
  {
    v15 = v13;
  }

  else
  {
    v15 = v4;
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}