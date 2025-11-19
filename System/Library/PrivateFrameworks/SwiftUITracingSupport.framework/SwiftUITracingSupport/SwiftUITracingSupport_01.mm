unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 12 * result;
      v9 = *v8;
      if (*(v8 + 8))
      {
        if ((a2 & 1) != 0 && v9 == a1)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v71;
          if (v72)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      goto LABEL_139;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      outlined copy of Data._Representation(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      MEMORY[0x26D69C520]();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = MEMORY[0x26D69C520]();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = MEMORY[0x26D69C520]();
        v39 = v66;
        if (result < v66)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v68;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      outlined copy of Data._Representation(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = MEMORY[0x26D69C520]();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    outlined copy of Data._Representation(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = MEMORY[0x26D69C520]();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    outlined consume of Data._Representation(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    outlined copy of Data._Representation(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = MEMORY[0x26D69C520]();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = MEMORY[0x26D69C520]();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = MEMORY[0x26D69C520]();
      v39 = v66;
      if (result < v66)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        outlined consume of Data._Representation(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      outlined consume of Data._Representation(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    outlined copy of Data._Representation(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = MEMORY[0x26D69C520]();
    v7 = v69;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  outlined copy of Data._Representation(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = MEMORY[0x26D69C520]();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  MEMORY[0x26D69C520]();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = MEMORY[0x26D69C520]();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
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
    v9 = *(v7 + 40);
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
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
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
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi11returnAfterSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi11returnAfterSi5depthtGMR);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 208 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8IntervalVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8IntervalVGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV9ParameterVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV9ParameterVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldV5index_AC13IterativePairVyytSiGSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldV5index_AC13IterativePairVyytSiGSi11returnAfterSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldV5index_AC13IterativePairVyytSiGSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldV5index_AC13IterativePairVyytSiGSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV_AC0G0V2IdVtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV_AC0G0V2IdVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport8EventRefVSitGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport8EventRefVSitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AFSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AFSi11returnAfterSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AFSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AFSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AC11InterpreterC0C0V012abstractViewG06withinyAI8IteratorVz_tF0N4DataL_VSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AC11InterpreterC0C0V012abstractViewG06withinyAI8IteratorVz_tF0N4DataL_VSi11returnAfterSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AC11InterpreterC0C0V012abstractViewG06withinyAI8IteratorVz_tF0N4DataL_VSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSg5index_AC11InterpreterC0C0V012abstractViewG06withinyAI8IteratorVz_tF0N4DataL_VSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSgGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVSgGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC5IndexVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC5IndexVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefV13returnAddress_Si0I5AfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefV13returnAddress_Si0I5AfterSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefV5index_AESg6parentSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefV5index_AESg6parentSi5depthtGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport15ChangelistGroupVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport15ChangelistGroupVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV11CheckoutRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV11CheckoutRefVGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32V_ADtGMd, &_ss23_ContiguousArrayStorageCys6UInt32V_ADtGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v8 = *&v2[v4 + 4];
        v9 = *&v2[v4 + 6];
        v10 = v2[v4 + 8];
        if (v6 == v3)
        {
          if (v3)
          {
            v11 = v5;
          }

          else
          {
            v11 = 1;
          }

          if (HIDWORD(v11))
          {
            __break(1u);
            goto LABEL_19;
          }

          v12 = *&v2[v4 + 6];
          v13 = *&v2[v4 + 4];
          v3 = v11;
          if (result)
          {
            result = realloc(result, 40 * v11);
            if (!result)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }

          v9 = v12;
          v8 = v13;
        }

        else if (!result)
        {
          goto LABEL_20;
        }

        ++v6;
        v7 = &result[v4];
        *v7 = v8;
        *(v7 + 1) = v9;
        *(v7 + 8) = v10;
        v5 += 2;
        v4 += 5;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized DiffTreeStats.merge(other:asSelf:)(uint64_t result)
{
  v2 = *(result + 80);
  v3 = *(v1 + 80);
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = v1;
  v7 = *(result + 104);
  v8 = *(result + 116);
  *(v1 + 80) = v5;
  v9 = *(v1 + 88);
  v4 = __OFADD__(v9, v2);
  v10 = v9 + v2;
  if (v4)
  {
    goto LABEL_25;
  }

  *(v1 + 88) = v10;
  v11 = *(v1 + 112);
  if (*(v1 + 116) + v8 >= v11)
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * (v11 + v8));
  }

  if (!v8)
  {
    return 1;
  }

  if (v7)
  {
    for (i = (v7 + 32); ; i += 10)
    {
      v13 = *(i - 2);
      v14 = *(i - 1);
      v15 = *i;
      v16 = *(v6 + 116);
      if (v16 == *(v6 + 112))
      {
        v17 = 2 * v16;
        if (!v16)
        {
          v17 = 1;
        }

        if (HIDWORD(v17))
        {
          goto LABEL_23;
        }

        v20 = *(i - 1);
        v21 = *(i - 2);
        v18 = *(v6 + 104);
        *(v6 + 112) = v17;
        if (v18)
        {
          result = realloc(v18, 40 * v17);
          if (!result)
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = swift_slowAlloc();
        }

        *(v6 + 104) = result;
        v14 = v20;
        v13 = v21;
      }

      else
      {
        result = *(v6 + 104);
      }

      if (!result)
      {
        goto LABEL_26;
      }

      v19 = result + 40 * v16;
      *v19 = v13;
      *(v19 + 16) = v14;
      *(v19 + 32) = v15;
      if (v16 == -1)
      {
        break;
      }

      *(v6 + 116) = v16 + 1;
      if (!--v8)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of Inspectable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Inspectable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

BOOL specialized static AggregateContainer.Config.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

BOOL specialized static ViewTree.TElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v7 = a1[3] >> 62;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v11 = a2[1] | v3 | v4;
      return v5 >> 62 == 3 && v11 == 0 && v5 == 0xC000000000000000 && v6 == 0;
    }

    if (v5 >> 62 != 2)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v7)
  {
    if (v5 >> 62 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v5 >> 62)
  {
    return 0;
  }

  return v2 == v3 && a1[2] == v4 && *(a1 + 8) == v6;
}

uint64_t partial apply for closure #1 in UnsafeTree.traverse(visitor:revisit:)(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  return closure #1 in UnsafeTree.traverse(visitor:revisit:)(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 56));
}

uint64_t partial apply for closure #2 in UnsafeTree.traverse(visitor:revisit:)(int *a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v6 = *a1;
  return v3(&v6, v4);
}

uint64_t partial apply for closure #3 in UnsafeTree.traverse(visitor:revisit:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = *(v5 + 32);
  return closure #3 in UnsafeTree.traverse(visitor:revisit:)(a1, a2, a3, a4, a5, (v5 + 40));
}

uint64_t partial apply for closure #1 in UnsafeTree.describe(state:)(unsigned int *a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return closure #1 in UnsafeTree.describe(state:)(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 16));
}

uint64_t specialized Aggregate.displayWeight(for:within:)(unsigned int a1)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v27[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v27[-v22];
  v32 = *(**(v2 + 8) + 88 * v28 + 24) * 125.0 / 3.0 / 1000000.0;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x26D69C5D0](v10, v13);
  (*(v7 + 8))(v10, v29);
  v24 = *(v14 + 8);
  v25 = v24(v18, v13);
  MEMORY[0x26D69C5E0](v25);
  MEMORY[0x26D69C5C0](v6, v13);
  (*(v30 + 8))(v6, v31);
  v24(v21, v13);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  BinaryFloatingPoint.formatted<A>(_:)();
  v24(v23, v13);
  return v33;
}

{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v27[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v27[-v22];
  v32 = *(**v2 + 88 * v28 + 24) * 125.0 / 3.0 / 1000000.0;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x26D69C5D0](v10, v13);
  (*(v7 + 8))(v10, v29);
  v24 = *(v14 + 8);
  v25 = v24(v18, v13);
  MEMORY[0x26D69C5E0](v25);
  MEMORY[0x26D69C5C0](v6, v13);
  (*(v30 + 8))(v6, v31);
  v24(v21, v13);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  BinaryFloatingPoint.formatted<A>(_:)();
  v24(v23, v13);
  return v33;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      for (i = 4; ; i += 8)
      {
        v7 = *(v2 + 8);
        v8 = *(v2 + 36);
        if (v5 == v3)
        {
          if (v3)
          {
            v9 = v4 * 2;
          }

          else
          {
            v9 = 1;
          }

          if (HIDWORD(v9))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v9;
          if (result)
          {
            result = realloc(result, 8 * v9);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        ++v5;
        LODWORD(result[v4]) = v7;
        *(result + i) = v8;
        ++v4;
        ++v2;
        if (v1 == v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
    goto LABEL_20;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = result;
  v3 = v1;
  result = swift_slowAlloc();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v2 + 4;
  while (1)
  {
    v12 = *&v7[v4 + 4];
    v13 = *&v7[v4 + 6];
    v14 = *&v7[v4 + 8];
    v15 = v7[v4 + 10];
    v10 = *&v7[v4];
    v11 = *&v7[v4 + 2];
    if (v6 == v3)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_21;
    }

LABEL_15:
    v9 = &result[v4];
    *(v9 + 2) = v12;
    *(v9 + 3) = v13;
    *(v9 + 4) = v14;
    *(v9 + 20) = v15;
    *v9 = v10;
    *(v9 + 1) = v11;
    if (v1 - 1 == v6)
    {
      return result;
    }

    v5 += 2;
    v4 += 11;
    ++v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  if (!HIDWORD(v8))
  {
    v3 = v8;
    if (result)
    {
      result = realloc(result, 88 * v8);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = swift_slowAlloc();
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
    goto LABEL_20;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = result;
  v3 = v1;
  result = swift_slowAlloc();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v2 + 4;
  while (1)
  {
    v10 = *&v7[v4];
    v11 = *&v7[v4 + 2];
    v12 = *&v7[v4 + 4];
    v13 = *&v7[v4 + 6];
    if (v6 == v3)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_21;
    }

LABEL_15:
    v9 = &result[v4];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    if (v1 - 1 == v6)
    {
      return result;
    }

    v5 += 2;
    v4 += 8;
    ++v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  if (!HIDWORD(v8))
  {
    v3 = v8;
    if (result)
    {
      result = realloc(result, v8 << 6);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = swift_slowAlloc();
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = v2[v4 + 4];
        v8 = HIDWORD(v2[v5 + 4]);
        if (v6 == v3)
        {
          if (v3)
          {
            v9 = v5 * 2;
          }

          else
          {
            v9 = 1;
          }

          if (HIDWORD(v9))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v9;
          if (result)
          {
            result = realloc(result, 8 * v9);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        LOWORD(result[v4]) = v7;
        ++v6;
        HIDWORD(result[v5++]) = v8;
        ++v4;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11InterpreterC5RangeV_SayAJGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = v2 + 4;
      while (1)
      {
        v7 = *&v6[2 * v5];
        if (v5 == v3)
        {
          if (v3)
          {
            v8 = v4;
          }

          else
          {
            v8 = 1;
          }

          if (HIDWORD(v8))
          {
            __break(1u);
            goto LABEL_18;
          }

          v9 = *&v6[2 * v5];
          v3 = v8;
          if (result)
          {
            result = realloc(result, 16 * v8);
            if (!result)
            {
              goto LABEL_20;
            }

            v7 = v9;
          }

          else
          {
            result = swift_slowAlloc();
            v7 = v9;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        *&result[2 * v5] = v7;
        v4 += 2;
        if (v1 == ++v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11InterpreterC7ContextV15AttachmentIndexV_SayALGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v8 = v2[v4 + 4];
        v9 = v2[v4 + 5];
        v10 = *&v2[v4 + 6];
        if (v6 == v3)
        {
          if (v3)
          {
            v11 = v5;
          }

          else
          {
            v11 = 1;
          }

          if (HIDWORD(v11))
          {
            __break(1u);
            goto LABEL_18;
          }

          v12 = *&v2[v4 + 6];
          v3 = v11;
          if (result)
          {
            result = realloc(result, 32 * v11);
            if (!result)
            {
              goto LABEL_20;
            }

            v10 = v12;
          }

          else
          {
            result = swift_slowAlloc();
            v10 = v12;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        v7 = &result[v4];
        *v7 = v8;
        ++v6;
        v7[1] = v9;
        *(v7 + 1) = v10;
        v5 += 2;
        v4 += 4;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5PTypeV5FieldV_SayAJGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v8 = v2[v4 + 4];
        v9 = v2[v4 + 5];
        v10 = HIDWORD(v2[v4 + 5]);
        v11 = v2[v4 + 6];
        v12 = v2[v4 + 7];
        if (v6 == v3)
        {
          if (v3)
          {
            v13 = v5;
          }

          else
          {
            v13 = 1;
          }

          if (HIDWORD(v13))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v13;
          if (result)
          {
            result = realloc(result, 32 * v13);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        v7 = &result[v4];
        *v7 = v8;
        ++v6;
        *(v7 + 8) = v9;
        *(v7 + 3) = v10;
        v7[2] = v11;
        v5 += 2;
        v4 += 4;
        *(v7 + 6) = v12;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      for (i = 4; ; i += 5)
      {
        v8 = v2[i];
        v9 = *&v2[i + 1];
        v10 = v2[i + 3];
        v11 = v2[i + 4];
        if (v5 == v3)
        {
          if (v3)
          {
            v12 = v4;
          }

          else
          {
            v12 = 1;
          }

          if (HIDWORD(v12))
          {
            __break(1u);
            goto LABEL_18;
          }

          v13 = *&v2[i + 1];
          v3 = v12;
          if (result)
          {
            result = realloc(result, 40 * v12);
            if (!result)
            {
              goto LABEL_20;
            }

            v9 = v13;
          }

          else
          {
            result = swift_slowAlloc();
            v9 = v13;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        ++v5;
        v7 = &result[i];
        *(v7 - 8) = v8;
        *(v7 - 24) = v9;
        *(v7 - 1) = v10;
        *v7 = v11;
        v4 += 2;
        if (v1 == v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA15MortalReferenceVyAA11SubgraphRefVG_SayAKGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      for (i = 36; ; i += 40)
      {
        v8 = *(v2 + i - 4);
        v9 = *(v2 + i + 4);
        v10 = *(v2 + i + 20);
        v11 = *(v2 + i + 28);
        v12 = *(v2 + i + 32);
        if (v5 == v3)
        {
          if (v3)
          {
            v13 = v4;
          }

          else
          {
            v13 = 1;
          }

          if (HIDWORD(v13))
          {
            __break(1u);
            goto LABEL_18;
          }

          v14 = *(v2 + i + 4);
          v3 = v13;
          if (result)
          {
            result = realloc(result, 40 * v13);
            if (!result)
            {
              goto LABEL_20;
            }

            v9 = v14;
          }

          else
          {
            result = swift_slowAlloc();
            v9 = v14;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        v7 = (result + i);
        *(v7 - 9) = v8;
        ++v5;
        *(v7 - 7) = v9;
        *(v7 - 3) = v10;
        *(v7 - 4) = v11;
        v4 += 2;
        *v7 = v12;
        if (v1 == v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(uint64_t result)
{
  v22 = result;
  v1 = *(result + 16);
  if (HIDWORD(v1))
  {
    goto LABEL_24;
  }

  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = swift_slowAlloc();
  v4 = 0;
  v5 = 0;
  v6 = 32;
  v21 = v1;
  while (1)
  {
    v9 = *(v22 + v6);
    v10 = *(v22 + v6 + 8);
    result = *(v22 + v6 + 16);
    v11 = *(v22 + v6 + 24);
    v12 = *(v22 + v6 + 28);
    v13 = *(v22 + v6 + 32);
    v23 = v4;
    if (v5 == v2)
    {
      break;
    }

    if (!v3)
    {
      goto LABEL_25;
    }

    v19 = v3;
    v15 = *(v22 + v6 + 16);

    v7 = v19;
    v3 = v19;
LABEL_6:
    v8 = (v7 + v6);
    *(v8 - 8) = v9;
    ++v5;
    *(v8 - 3) = v10;
    *(v8 - 2) = v15;
    *(v8 - 2) = v11;
    *(v8 - 4) = v12;
    v6 += 40;
    v4 = v23 + 2;
    *v8 = v13;
    if (v21 == v5)
    {
      return v3;
    }
  }

  if (v2)
  {
    v14 = v4;
  }

  else
  {
    v14 = 1;
  }

  if (!HIDWORD(v14))
  {
    v2 = v14;
    v15 = *(v22 + v6 + 16);
    if (v3)
    {
      __src = v3;

      v16 = swift_slowAlloc();
      v17 = __src;
      v7 = v16;
      if (v16 != __src || v16 >= &__src[v6 - 32])
      {
        memmove(v16, __src, v6 - 32);
        v17 = __src;
      }

      MEMORY[0x26D69EAB0](v17, -1, -1);
      v3 = v7;
    }

    else
    {

      v7 = swift_slowAlloc();
      v3 = v7;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t _sSr13_finalizeRuns_6buffer2bySbSaySnySiGGz_SpyxGSbx_xtKXEtKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregateI7ElementOyAG5EventV2IdVGAG9MergeOnceVyAG0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A1_yArWGTf1nncn_n0tef8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17hijkzl3Vy_x2J7N54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1nnncn_nTf4nnnng_nTm(char **a1, unsigned int *a2, uint64_t *a3, void **a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:
    *v21 = v25;

    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v6 = *(v15 + 1);
      __src = (v10 + 4 * *v12);
      v16 = (v10 + 4 * *v15);
      v17 = (v10 + 4 * v6);

      _ss6_merge3low3mid4high6buffer2bySbSpyxG_A3GSbx_xtKXEtKlF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AH09AggregateK7ElementOyAH5EventV2IdVGAH9MergeOnceVyAH0qK5StatsVGG_Tg504_s21gh9Support10jk16V4sortyySbAA0dE7lm2V5n39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09o2E7p5OyAA5q2V2r6VG_AA9st8VyAA0lE5U5VGTG5ALy_xq_GALy_q0_q1_GAH0jK0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAsxsxsXIsgnnld_A2_yAsXGTf1nnnnc_n0vgh8Support9o23PAAE4sortyys7KeyPathCy5u21Qzqd__GSzRd__lFSbAA17jklm2V5n3Vy_z2J7P54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAXSiGTf1nnnncn_nTf4nnnnng_nTm(__src, v16, v17, a2, a4);
      v5 = v11;

      if (v11)
      {
        goto LABEL_9;
      }

      if (v6 < v13)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_11;
      }

      *v12 = v13;
      *(v12 + 1) = v6;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_12;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;

    __break(1u);
  }

  return result;
}

uint64_t _sSr15_stableSortImpl2byySbx_xtKXE_tKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateI7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AGy_xq_GAGy_q0_q1_GAC0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAnsnsnSIsgnnld_AYyAnSGTf1cn_n0tef8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17hijkzl3Vy_x2J7N54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyASSiGTf1ncn_nTf4nng_nTm(uint64_t *a1, void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1[1];
  swift_retain_n();
  v10 = _minimumMergeRunLength(_:)(v9);
  if (v10 < v9)
  {
    if (v9 >= -1)
    {
      v11 = v10;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 16) = v12;
      }

      __dst[0] = (v13 + 32);
      __dst[1] = v12;

      _sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AD09AggregateI7ElementOyAD5EventV2IdVGAD9MergeOnceVyAD0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AHy_xq_GAHy_q0_q1_GAD0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAototoTIsgnnld_AZyAoTGTf1nnncn_n0tef8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17hijkzl3Vy_x2J7N54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyATSiGTf1nnnncn_nTf4nnnnng_nTm(__dst, v29, a1, v11, a2);

      *(v13 + 16) = 0;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    return result;
  }

  if (v9)
  {
    if (v9 == 1)
    {
    }

    else
    {
      v15 = *a1;
      swift_retain_n();
      v16 = -1;
      v17 = 1;
      v18 = v15;
      v25 = v9;
      do
      {
        v19 = *(v15 + 4 * v17);
        v26 = v18;
        v27 = v16;
        v20 = v18;
        do
        {
          v21 = *v20;
          v22 = *a2;
          memmove(__dst, (**a2 + 88 * v19), 0x54uLL);

          swift_getAtKeyPath();
          memmove(v29, (*v22 + 88 * v21), 0x54uLL);
          swift_getAtKeyPath();

          if (v28 >= __dst[13])
          {
            break;
          }

          if (!v15)
          {
            goto LABEL_24;
          }

          v23 = *v20;
          v19 = v20[1];
          *v20 = v19;
          v20[1] = v23;
          --v20;
        }

        while (!__CFADD__(v16++, 1));
        ++v17;
        v18 = v26 + 1;
        v16 = v27 - 1;
      }

      while (v17 != v25);
    }
  }
}

uint64_t _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 12);
  if (v7)
  {
    v8 = *(a1 + 8);
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF09AggregateL7ElementOyAF5EventV2IdVGAF9MergeOnceVyAF0rL5StatsVGG_Tt1g5(*(a1 + 12), 0);
    if (specialized Sequence._copyContents(initializing:)(v15, v9 + 4, v7, v6, v8 | (v7 << 32)) != v7)
    {
      __break(1u);
LABEL_13:

      __break(1u);
      return result;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v16 = v9;

  _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFs15ContiguousArrayVy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregatejC0OyAG5EventV2IdVGAG9MergeOnceVyAG0oJ5StatsVGGG_Tg504_s21fg9Support10ij16V4sortyySbAA0dE7kl2V5m39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09nyc5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0iJ0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tfg8Support9n23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17ijklzm3Vy_x2J7C54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(&v16, a2, a3, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0kE5StatsVGGMd, &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0kE5StatsVGGMR);
  if (!v3 && v7)
  {
    v10 = v16[2];
    v11 = (v16 + 4);
    v12 = v6;
    do
    {
      if (!v10)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_13;
      }

      v13 = *v11++;
      *v12++ = v13;
      --v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t _sSr13_finalizeRuns_6buffer2bySbSaySnySiGGz_SpyxGSbx_xtKXEtKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregateI7ElementOyAG5EventV2IdVGAG9MergeOnceVyAG0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A1_yArWGTf1nncn_n0tef8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17hijkzl3Vy_x2H7N52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1nnncn_nTf4nnnng_nTm(uint64_t *a1, unsigned int *a2, void *a3, uint64_t **a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v7 = a1;
  v8 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
  }

  v17 = v7;
  *v7 = v8;
  v10 = (v8 + 16);
  v7 = *(v8 + 16);
  if (v7 < 2)
  {
LABEL_9:
    *v17 = v8;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v11 = (v8 + 16 * v7);
      v12 = *v11;
      v13 = &v10[2 * v7];
      v14 = v13[1];
      _ss6_merge3low3mid4high6buffer2bySbSpyxG_A3GSbx_xtKXEtKlF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AH09AggregateK7ElementOyAH5EventV2IdVGAH9MergeOnceVyAH0qK5StatsVGG_Tg504_s21gh9Support10jk16V4sortyySbAA0dE7lm2V5n39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09o2E7p5OyAA5q2V2r6VG_AA9st8VyAA0lE5U5VGTG5ALy_xq_GALy_q0_q1_GAH0jK0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAsxsxsXIsgnnld_A2_yAsXGTf1nnnnc_n0vgh8Support9o14PAAE4sortyySb5u15Qz_AFtXEFSbAA17jklm2V5n3Vy_z2H7P52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2XIsgnnd_Tf1nnnncn_nTf4nnnnng_nTm((*a3 + 4 * *v11), (*a3 + 4 * *v13), (*a3 + 4 * v14), a2, a4, a5);
      if (v5)
      {
        goto LABEL_9;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v15 = *v10;
      if (v7 - 2 >= *v10)
      {
        goto LABEL_11;
      }

      *v11 = v12;
      v11[1] = v14;
      v16 = v15 - v7;
      if (v15 < v7)
      {
        goto LABEL_12;
      }

      v7 = v15 - 1;
      result = memmove(v13, v13 + 2, 16 * v16);
      *v10 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v17 = v8;
    __break(1u);
  }

  return result;
}

Swift::Int _sSr15_stableSortImpl2byySbx_xtKXE_tKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateI7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AGy_xq_GAGy_q0_q1_GAC0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAnsnsnSIsgnnld_AYyAnSGTf1cn_n0tef8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17hijkzl3Vy_x2H7N52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2SIsgnnd_Tf1ncn_nTf4nng_nTm(uint64_t *a1, uint64_t **a2, uint64_t (*a3)(__int128 *, __int128 *), uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = a1[1];
  result = _minimumMergeRunLength(_:)(v12);
  if (result < v12)
  {
    if (v12 >= -1)
    {
      v14 = result;
      v15 = v12;
      v16 = v12 / 2;
      if (v15 <= 1)
      {
        v17 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
        v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v17 + 16) = v16;
      }

      *&v40 = v17 + 32;
      *(&v40 + 1) = v16;
      _sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AD09AggregateI7ElementOyAD5EventV2IdVGAD9MergeOnceVyAD0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AHy_xq_GAHy_q0_q1_GAD0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAototoTIsgnnld_AZyAoTGTf1nnncn_n0tef8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17hijkzl3Vy_x2H7N52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2TIsgnnd_Tf1nnnncn_nTf4nnnnng_nTm(&v40, &v37, a1, v14, a2, a3);
      *(v17 + 16) = 0;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v34[0] = v34;
    v34[1] = v6;
    if (v12 != 1)
    {
      v18 = *a1;
      v19 = -1;
      v20 = 1;
      v21 = v18;
      v35 = v12;
      do
      {
        v22 = *(v18 + 4 * v20);
        v43 = v19;
        v23 = v19;
        v36 = v21;
        do
        {
          v24 = *v21;
          v25 = **a2;
          v26 = v25 + 88 * v22;
          v27 = *(v26 + 48);
          v41[1] = *(v26 + 32);
          v41[2] = v27;
          v41[3] = *(v26 + 64);
          v42 = *(v26 + 80);
          v28 = *(v26 + 16);
          v40 = *v26;
          v41[0] = v28;
          v29 = v25 + 88 * v24;
          v30 = *(v29 + 48);
          v38[1] = *(v29 + 32);
          v38[2] = v30;
          v38[3] = *(v29 + 64);
          v39 = *(v29 + 80);
          v31 = *(v29 + 16);
          v37 = *v29;
          v38[0] = v31;
          result = a3(v41, v38);
          if ((result & 1) == 0)
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_22;
          }

          v32 = *v21;
          v22 = v21[1];
          *v21 = v22;
          v21[1] = v32;
          --v21;
        }

        while (!__CFADD__(v23++, 1));
        ++v20;
        v21 = v36 + 1;
        v19 = v43 - 1;
      }

      while (v20 != v35);
    }
  }

  return result;
}

uint64_t _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m14PAAE4sortyySb5r15Qz_AFtXEFSbAA17gijkylz1_w2H7c19Oy0L0QzGAFG_ApA0gH0Z31AoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_nTm(uint64_t a1, uint64_t **a2, uint64_t (*a3)(__int128 *, __int128 *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (v6)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = *(a1 + 8);
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF09AggregateL7ElementOyAF5EventV2IdVGAF9MergeOnceVyAF0rL5StatsVGG_Tt1g5(*(a1 + 12), 0);
    result = specialized Sequence._copyContents(initializing:)(&v16, v11 + 4, v6, v5, v10 | (v6 << 32));
    if (result != v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    a4 = v9;
    a3 = v8;
    a2 = v7;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v17 = v11;
  _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFs15ContiguousArrayVy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregatejC0OyAG5EventV2IdVGAG9MergeOnceVyAG0oJ5StatsVGGG_Tg504_s21fg9Support10ij16V4sortyySbAA0dE7kl2V5m39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09nyc5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0iJ0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tfg8Support9n14PAAE4sortyySb5s15Qz_AFtXEFSbAA17ijklzm3Vy_x2H7C52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_nTm(&v17, a2, a3, a4, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0kE5StatsVGGMd, &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0kE5StatsVGGMR);
  result = v17;
  if (!v4 && v6)
  {
    v13 = v17[2];
    v14 = 32;
    v15 = v5;
    do
    {
      if (!v13)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_14;
      }

      *v15++ = *(result + v14);
      --v13;
      v14 += 4;
      --v6;
    }

    while (v6);
  }
}

uint64_t _s21SwiftUITracingSupport10UnsafeTreeV4sortyySbAA0dE7NodeRefV5TypedVy_xq_G_AiCyxq_GztXEFAA09AggregateE7ElementOyAA5EventV2IdVG_AA9MergeOnceVyAA0lE5StatsVGTg504_s21ab8Support9j14PAAE4sortyySb5p15Qz_AFtXEFSbAA17degh2V5i9Vy_AA0dH7k5Oy0L0u12GAFG_ApA0gH0Z31AoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2VIsgnnd_Tf1cn_nTf4ng_nTm(uint64_t **a1, uint64_t (*a2)(__int128 *, __int128 *), uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26C328DC0;
    *(v7 + 32) = 0;
    goto LABEL_4;
  }

  v7 = MEMORY[0x277D84F90];
  while (*(v7 + 16))
  {
LABEL_4:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = *(v7 + 16);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v8 = *(v7 + 16);
      if (!v8)
      {
LABEL_9:
        __break(1u);
        break;
      }
    }

    v9 = v8 - 1;
    v10 = *(v7 + 4 * v9 + 32);
    *(v7 + 16) = v9;
    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m14PAAE4sortyySb5r15Qz_AFtXEFSbAA17gijkylz1_w2H7c19Oy0L0QzGAFG_ApA0gH0Z31AoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_nTm(*v6 + 88 * v10 + 64, a1, a2, a3);
    v6 = *a1;
    v11 = **a1 + 88 * v10;
    specialized Array.append<A>(contentsOf:)(*(v11 + 64), *(v11 + 72));
  }
}

uint64_t _ss6_merge3low3mid4high6buffer2bySbSpyxG_A3GSbx_xtKXEtKlF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AH09AggregateK7ElementOyAH5EventV2IdVGAH9MergeOnceVyAH0qK5StatsVGG_Tg504_s21gh9Support10jk16V4sortyySbAA0dE7lm2V5n39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09o2E7p5OyAA5q2V2r6VG_AA9st8VyAA0lE5U5VGTG5ALy_xq_GALy_q0_q1_GAH0jK0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAsxsxsXIsgnnld_A2_yAsXGTf1nnnnc_n0vgh8Support9o23PAAE4sortyys7KeyPathCy5u21Qzqd__GSzRd__lFSbAA17jklm2V5n3Vy_z2J7P54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAXSiGTf1nnnncn_nTf4nnnnng_nTm(unsigned int *__src, unsigned int *a2, unsigned int *a3, unsigned int *__dst, void **a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 3;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 2;
  v11 = a3 - a2;
  v12 = a3 - a2 + 3;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 2;
  if (v10 >= v12 >> 2)
  {
    v20 = a2;
    if (__dst != a2 || &a2[v13] <= __dst)
    {
      memmove(__dst, a2, 4 * v13);
    }

    swift_retain_n();
    v15 = &v5[v13];
    if (v11 >= 4 && v20 > v7)
    {
LABEL_25:
      v31 = v20;
      v21 = v20 - 4;
      v22 = v6 - 1;
      v23 = v15;
      do
      {
        v24 = v22;
        v25 = v22 + 1;
        v26 = *--v23;
        v27 = v21;
        v28 = *v21;
        v29 = *a5;
        memmove(__dsta, (**a5 + 88 * v26), 0x54uLL);

        swift_getAtKeyPath();
        memmove(v34, (*v29 + 88 * v28), 0x54uLL);
        swift_getAtKeyPath();

        if (v33 < v36)
        {
          v6 = v24;
          if (v25 != v31)
          {
            *v24 = *v27;
          }

          if (v15 <= v5 || (v20 = v27, v27 <= v7))
          {
            v20 = v27;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v25 != v15)
        {
          *v24 = *v23;
        }

        v22 = v24 - 1;
        v15 = v23;
        v21 = v27;
      }

      while (v23 > v5);
      v15 = v23;
      v20 = v31;
    }
  }

  else
  {
    v14 = a2;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 4 * v10);
    }

    swift_retain_n();
    v15 = &v5[v10];
    if (v8 >= 4 && v14 < v6)
    {
      while (1)
      {
        v16 = *v5;
        v17 = *a5;
        memmove(__dsta, (**a5 + 88 * *v14), 0x54uLL);

        swift_getAtKeyPath();
        memmove(v34, (*v17 + 88 * v16), 0x54uLL);
        swift_getAtKeyPath();

        if (v33 >= v36)
        {
          break;
        }

        v18 = v14;
        v19 = v7 == v14++;
        if (!v19)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v7;
        if (v5 >= v15 || v14 >= v6)
        {
          goto LABEL_19;
        }
      }

      v18 = v5;
      v19 = v7 == v5++;
      if (v19)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = *v18;
      goto LABEL_17;
    }

LABEL_19:
    v20 = v7;
  }

LABEL_36:
  if (v20 != v5 || v20 >= v5 + ((v15 - v5 + (v15 - v5 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL))
  {
    memmove(v20, v5, 4 * (v15 - v5));
  }

  return 1;
}

uint64_t _sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AD09AggregateI7ElementOyAD5EventV2IdVGAD9MergeOnceVyAD0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AHy_xq_GAHy_q0_q1_GAD0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAototoTIsgnnld_AZyAoTGTf1nnncn_n0tef8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17hijkzl3Vy_x2J7N54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyATSiGTf1nnnncn_nTf4nnnnng_nTm(unsigned int **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5)
{

  v114 = MEMORY[0x277D84F90];
  v107 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    swift_retain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v109 = a5;
    v99 = a4;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 < v8)
      {
        break;
      }

LABEL_17:
      v22 = v107[1];
      if (v12 < v22)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_118;
        }

        if (v12 - v11 < a4)
        {
          v23 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_120;
          }

          if (v23 >= v22)
          {
            v23 = v107[1];
          }

          if (v23 < v11)
          {
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
            goto LABEL_126;
          }

          if (v12 != v23)
          {
            v96 = v11;
            v98 = v10;
            v24 = *v107;
            v25 = (*v107 + 4 * v12 - 4);
            v26 = v11 - v12;
            v101 = v23;
            do
            {
              v103 = v25;
              v105 = v12;
              v27 = *(v24 + 4 * v12);
              v28 = v26;
              while (1)
              {
                v29 = *v25;
                v30 = a5;
                v31 = *a5;
                memmove(__dst, (*v31 + 88 * v27), 0x54uLL);

                swift_getAtKeyPath();
                memmove(v111, (*v31 + 88 * v29), 0x54uLL);
                swift_getAtKeyPath();

                if (v110 >= v112)
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_122;
                }

                v32 = *v25;
                v27 = *(v25 + 1);
                *v25 = v27;
                *(v25 + 1) = v32;
                v25 -= 4;
                v33 = __CFADD__(v28++, 1);
                a5 = v30;
                if (v33)
                {
                  goto LABEL_27;
                }
              }

              a5 = v30;
LABEL_27:
              v12 = v105 + 1;
              v25 = v103 + 4;
              --v26;
            }

            while (v105 + 1 != v101);
            v12 = v101;
            v11 = v96;
            v10 = v98;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_117;
      }

      v106 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v40 = *(v10 + 2);
      v39 = *(v10 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v10);
      }

      *(v10 + 2) = v41;
      v42 = v10 + 32;
      v43 = &v10[16 * v40 + 32];
      *v43 = v11;
      *(v43 + 1) = v106;
      v104 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (v40)
      {
        v102 = v10 + 32;
        while (1)
        {
          v44 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v45 = *(v10 + 4);
            v46 = *(v10 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_62:
            if (v48)
            {
              goto LABEL_107;
            }

            v61 = &v10[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_109;
            }

            v67 = &v42[16 * v44];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_114;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v44 = v41 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v41 < 2)
          {
            goto LABEL_115;
          }

          v71 = &v10[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_77:
          if (v66)
          {
            goto LABEL_111;
          }

          v74 = &v42[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_113;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_84:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_121;
          }

          v82 = *v107;
          if (!*v107)
          {
            goto LABEL_123;
          }

          v83 = v10;
          v84 = &v42[16 * v44 - 16];
          v85 = *v84;
          v86 = v44;
          v87 = &v42[16 * v44];
          v88 = *(v87 + 1);
          v89 = (v82 + 4 * *v84);
          v90 = (v82 + 4 * *v87);
          v91 = (v82 + 4 * v88);

          _ss6_merge3low3mid4high6buffer2bySbSpyxG_A3GSbx_xtKXEtKlF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AH09AggregateK7ElementOyAH5EventV2IdVGAH9MergeOnceVyAH0qK5StatsVGG_Tg504_s21gh9Support10jk16V4sortyySbAA0dE7lm2V5n39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09o2E7p5OyAA5q2V2r6VG_AA9st8VyAA0lE5U5VGTG5ALy_xq_GALy_q0_q1_GAH0jK0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAsxsxsXIsgnnld_A2_yAsXGTf1nnnnc_n0vgh8Support9o23PAAE4sortyys7KeyPathCy5u21Qzqd__GSzRd__lFSbAA17jklm2V5n3Vy_z2J7P54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAXSiGTf1nnnncn_nTf4nnnnng_nTm(v89, v90, v91, v104, v109);
          if (v108)
          {

            v114 = v83;
            goto LABEL_97;
          }

          if (v88 < v85)
          {
            goto LABEL_102;
          }

          v92 = *(v83 + 2);
          if (v86 > v92)
          {
            goto LABEL_103;
          }

          *v84 = v85;
          *(v84 + 1) = v88;
          if (v86 >= v92)
          {
            goto LABEL_104;
          }

          v41 = v92 - 1;
          memmove(v87, v87 + 16, 16 * (v92 - 1 - v86));
          v10 = v83;
          *(v83 + 2) = v92 - 1;
          a5 = v109;
          v42 = v102;
          if (v92 <= 2)
          {
            goto LABEL_3;
          }
        }

        v49 = &v42[16 * v41];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_105;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_106;
        }

        v56 = &v10[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_108;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v60 >= v52)
        {
          v78 = &v42[16 * v44];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_116;
          }

          if (v47 < v81)
          {
            v44 = v41 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_3:
      v9 = v106;
      v8 = v107[1];
      a4 = v99;
      if (v106 >= v8)
      {
        v114 = v10;
        goto LABEL_94;
      }
    }

    v13 = *v107;
    v14 = *(*v107 + 4 * v12);
    v15 = *(*v107 + 4 * v9);

    v16 = specialized closure #1 in Aggregate.sort<A>(_:)(v14, v15, a5);

    v17 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      v19 = v11 + 2;
      if (!v16)
      {
LABEL_16:
        v12 = v19;
        a4 = v99;
        goto LABEL_17;
      }
    }

    else
    {
      v95 = v11;
      v97 = v10;
      v18 = (v13 + 4 * v11 + 8);
      while (1)
      {
        v19 = v17;
        v20 = *(v18 - 1);
        v21 = *a5;
        memmove(__dst, (**a5 + 88 * *v18), 0x54uLL);

        swift_getAtKeyPath();
        memmove(v111, (*v21 + 88 * v20), 0x54uLL);
        swift_getAtKeyPath();

        if (v16 == v110 >= v112)
        {
          break;
        }

        ++v18;
        v17 = v19 + 1;
        a5 = v109;
        if (v8 == v19 + 1)
        {
          v12 = v19;
          v19 = v8;
          goto LABEL_13;
        }
      }

      v12 = v19 - 1;
      a5 = v109;
LABEL_13:
      v11 = v95;
      v10 = v97;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    if (v19 < v11)
    {
      goto LABEL_119;
    }

    if (v11 <= v12)
    {
      v34 = v19 - 1;
      v35 = v11;
      while (1)
      {
        if (v35 != v34)
        {
          v37 = *v107;
          if (!*v107)
          {
            goto LABEL_124;
          }

          v38 = *(v37 + 4 * v35);
          *(v37 + 4 * v35) = *(v37 + 4 * v34);
          *(v37 + 4 * v34) = v38;
        }

        if (++v35 >= v34--)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

  swift_retain_n();
LABEL_94:
  v93 = *a1;
  if (*a1)
  {

    _sSr13_finalizeRuns_6buffer2bySbSaySnySiGGz_SpyxGSbx_xtKXEtKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregateI7ElementOyAG5EventV2IdVGAG9MergeOnceVyAG0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A1_yArWGTf1nncn_n0tef8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17hijkzl3Vy_x2J7N54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1nnncn_nTf4nnnng_nTm(&v114, v93, v107, a5);
    if (v108)
    {

LABEL_97:
    }

    else
    {
    }
  }

  else
  {
LABEL_126:

    __break(1u);
  }

  return result;
}

uint64_t _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFs15ContiguousArrayVy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregatejC0OyAG5EventV2IdVGAG9MergeOnceVyAG0oJ5StatsVGGG_Tg504_s21fg9Support10ij16V4sortyySbAA0dE7kl2V5m39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09nyc5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0iJ0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tfg8Support9n23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17ijklzm3Vy_x2J7C54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  v12 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a4(v12);
  }

  v13 = *(v12 + 16);
  v15[0] = v12 + 32;
  v15[1] = v13;

  _sSr15_stableSortImpl2byySbx_xtKXE_tKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateI7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AGy_xq_GAGy_q0_q1_GAC0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAnsnsnSIsgnnld_AYyAnSGTf1cn_n0tef8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17hijkzl3Vy_x2J7N54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyASSiGTf1ncn_nTf4nng_nTm(v15, a2, a3, a5, a6);

  *a1 = v12;
}

uint64_t _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 12);
  if (v7)
  {
    v8 = *(a1 + 8);
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF09AggregateL7ElementOyAF04ViewL0V8TElementOGAF9MergeOnceVyAF05EventL5StatsVGG_Tt1g5(*(a1 + 12), 0);
    if (specialized Sequence._copyContents(initializing:)(v15, v9 + 4, v7, v6, v8 | (v7 << 32)) != v7)
    {
      __break(1u);
LABEL_13:

      __break(1u);
      return result;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v16 = v9;

  _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFs15ContiguousArrayVy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregatejC0OyAG5EventV2IdVGAG9MergeOnceVyAG0oJ5StatsVGGG_Tg504_s21fg9Support10ij16V4sortyySbAA0dE7kl2V5m39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09nyc5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0iJ0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tfg8Support9n23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17ijklzm3Vy_x2J7C54Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(&v16, a2, a3, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA04ViewE0V8TElementOGAA9MergeOnceVyAA05EventE5StatsVGGMd, &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA04ViewE0V8TElementOGAA9MergeOnceVyAA05EventE5StatsVGGMR);
  if (!v3 && v7)
  {
    v10 = v16[2];
    v11 = (v16 + 4);
    v12 = v6;
    do
    {
      if (!v10)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_13;
      }

      v13 = *v11++;
      *v12++ = v13;
      --v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t _ss6_merge3low3mid4high6buffer2bySbSpyxG_A3GSbx_xtKXEtKlF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AH09AggregateK7ElementOyAH5EventV2IdVGAH9MergeOnceVyAH0qK5StatsVGG_Tg504_s21gh9Support10jk16V4sortyySbAA0dE7lm2V5n39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09o2E7p5OyAA5q2V2r6VG_AA9st8VyAA0lE5U5VGTG5ALy_xq_GALy_q0_q1_GAH0jK0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAsxsxsXIsgnnld_A2_yAsXGTf1nnnnc_n0vgh8Support9o14PAAE4sortyySb5u15Qz_AFtXEFSbAA17jklm2V5n3Vy_z2H7P52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2XIsgnnd_Tf1nnnncn_nTf4nnnnng_nTm(unsigned int *__dst, unsigned int *__src, unsigned int *a3, unsigned int *a4, uint64_t **a5, uint64_t (*a6)(__int128 *, __int128 *))
{
  v52 = a6;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 2;
  v13 = a3 - __src;
  v14 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 2;
  if (v12 >= v14 >> 2)
  {
    if (a4 != __src || &__src[v15] <= a4)
    {
      memmove(a4, __src, 4 * v15);
    }

    v16 = &v6[v15];
    if (v13 >= 4 && v8 > v9)
    {
LABEL_25:
      v26 = v8 - 1;
      --v7;
      v27 = v16;
      do
      {
        v28 = *--v27;
        v29 = v7 + 1;
        v30 = *v26;
        v31 = **a5;
        v32 = (v31 + 88 * v28);
        v33 = v32[3];
        v48 = v32[2];
        v49 = v33;
        v50 = v32[4];
        v51 = *(v32 + 20);
        v34 = v32[1];
        v46 = *v32;
        v47 = v34;
        v35 = (v31 + 88 * v30);
        v36 = v35[3];
        v42 = v35[2];
        v43 = v36;
        v44 = v35[4];
        v45 = *(v35 + 20);
        v40 = *v35;
        v41 = v35[1];
        if (v52(&v47, &v41))
        {
          if (v29 != v8)
          {
            *v7 = *v26;
          }

          if (v16 <= v6 || (--v8, v26 <= v9))
          {
            v8 = v26;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v29 != v16)
        {
          *v7 = *v27;
        }

        --v7;
        v16 = v27;
      }

      while (v27 > v6);
      v16 = v27;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 4 * v12);
    }

    v16 = &v6[v12];
    if (v10 >= 4 && v8 < v7)
    {
      while (1)
      {
        v17 = *v6;
        v18 = **a5;
        v19 = (v18 + 88 * *v8);
        v20 = v19[3];
        v48 = v19[2];
        v49 = v20;
        v50 = v19[4];
        v51 = *(v19 + 20);
        v21 = v19[1];
        v46 = *v19;
        v47 = v21;
        v22 = (v18 + 88 * v17);
        v23 = v22[3];
        v42 = v22[2];
        v43 = v23;
        v44 = v22[4];
        v45 = *(v22 + 20);
        v39 = *v22;
        v41 = v22[1];
        if ((v52(&v47, &v41) & 1) == 0)
        {
          break;
        }

        v24 = v8;
        v25 = v9 == v8++;
        if (!v25)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v9;
        if (v6 >= v16 || v8 >= v7)
        {
          goto LABEL_19;
        }
      }

      v24 = v6;
      v25 = v9 == v6++;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v9 = *v24;
      goto LABEL_17;
    }

LABEL_19:
    v8 = v9;
  }

LABEL_36:
  if (v8 != v6 || v8 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v8, v6, 4 * (v16 - v6));
  }

  return 1;
}

uint64_t _sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AD09AggregateI7ElementOyAD5EventV2IdVGAD9MergeOnceVyAD0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AHy_xq_GAHy_q0_q1_GAD0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAototoTIsgnnld_AZyAoTGTf1nnncn_n0tef8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17hijkzl3Vy_x2H7N52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2TIsgnnd_Tf1nnnncn_nTf4nnnnng_nTm(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t **a5, uint64_t (*a6)(__int128 *, __int128 *))
{
  v8 = a5;
  v111 = result;
  v132 = MEMORY[0x277D84F90];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10 + 1;
      if (v10 + 1 >= v9)
      {
        v32 = a4;
      }

      else
      {
        v13 = *a3;
        v14 = *(*a3 + 4 * v10);
        v15 = **v8;
        v16 = v15 + 88 * *(*a3 + 4 * v12);
        v17 = *(v16 + 48);
        v128 = *(v16 + 32);
        v129 = v17;
        v130 = *(v16 + 64);
        v131 = *(v16 + 80);
        v18 = *(v16 + 16);
        v126 = *v16;
        v127 = v18;
        v19 = v15 + 88 * v14;
        v20 = *(v19 + 48);
        v122 = *(v19 + 32);
        v123 = v20;
        v124 = *(v19 + 64);
        v125 = *(v19 + 80);
        v118 = *v19;
        v121 = *(v19 + 16);
        result = a6(&v127, &v121);
        v21 = result;
        v22 = v10 + 2;
        v108 = v10;
        if (v10 + 2 >= v9)
        {
          v12 = v10 + 2;
          v31 = v10 + 1;
        }

        else
        {
          v23 = (v13 + 4 * v10 + 8);
          while (1)
          {
            v12 = v22;
            v24 = *(v23 - 1);
            v25 = **v8;
            v26 = v25 + 88 * *v23;
            v27 = *(v26 + 48);
            v128 = *(v26 + 32);
            v129 = v27;
            v130 = *(v26 + 64);
            v131 = *(v26 + 80);
            v28 = *(v26 + 16);
            v126 = *v26;
            v127 = v28;
            v29 = v25 + 88 * v24;
            v30 = *(v29 + 48);
            v122 = *(v29 + 32);
            v123 = v30;
            v124 = *(v29 + 64);
            v125 = *(v29 + 80);
            v119 = *v29;
            v121 = *(v29 + 16);
            result = a6(&v127, &v121);
            if ((v21 ^ result))
            {
              break;
            }

            ++v23;
            v22 = v12 + 1;
            if (v9 == v12 + 1)
            {
              v31 = v12;
              v12 = v9;
              goto LABEL_13;
            }
          }

          v31 = v12 - 1;
        }

LABEL_13:
        v32 = a4;
        v10 = v108;
        if (v21)
        {
          if (v12 < v108)
          {
            goto LABEL_116;
          }

          if (v108 <= v31)
          {
            v87 = v12 - 1;
            v88 = v108;
            do
            {
              if (v88 != v87)
              {
                v90 = *a3;
                if (!*a3)
                {
                  goto LABEL_121;
                }

                v89 = *(v90 + 4 * v88);
                *(v90 + 4 * v88) = *(v90 + 4 * v87);
                *(v90 + 4 * v87) = v89;
              }

              v86 = ++v88 < v87--;
            }

            while (v86);
          }
        }
      }

      v33 = a3[1];
      if (v12 >= v33)
      {
        goto LABEL_25;
      }

      if (__OFSUB__(v12, v10))
      {
        goto LABEL_115;
      }

      v34 = v12;
      if (v12 - v10 >= v32)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v10, v32))
      {
        goto LABEL_117;
      }

      if (v10 + v32 >= v33)
      {
        v35 = a3[1];
      }

      else
      {
        v35 = (v10 + v32);
      }

      if (v35 < v10)
      {
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
        return result;
      }

      if (v12 == v35)
      {
LABEL_25:
        if (v12 < v10)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v117 = v11;
        v91 = *a3;
        v92 = v10;
        v93 = *a3 + 4 * v12 - 4;
        v109 = v92;
        v94 = v92 - v12;
        v113 = v35;
        do
        {
          v95 = v34;
          v96 = *(v91 + 4 * v34);
          v97 = v94;
          v98 = v93;
          do
          {
            v99 = *v98;
            v100 = **v8;
            v101 = v100 + 88 * v96;
            v102 = *(v101 + 48);
            v128 = *(v101 + 32);
            v129 = v102;
            v130 = *(v101 + 64);
            v131 = *(v101 + 80);
            v103 = *(v101 + 16);
            v126 = *v101;
            v127 = v103;
            v104 = v100 + 88 * v99;
            v105 = *(v104 + 48);
            v122 = *(v104 + 32);
            v123 = v105;
            v124 = *(v104 + 64);
            v125 = *(v104 + 80);
            v120 = *v104;
            v121 = *(v104 + 16);
            result = a6(&v127, &v121);
            if ((result & 1) == 0)
            {
              break;
            }

            if (!v91)
            {
              goto LABEL_119;
            }

            v106 = *v98;
            v96 = v98[1];
            *v98 = v96;
            v98[1] = v106;
            --v98;
          }

          while (!__CFADD__(v97++, 1));
          v34 = v95 + 1;
          v93 += 4;
          --v94;
        }

        while ((v95 + 1) != v113);
        v12 = v113;
        v10 = v109;
        v11 = v117;
        if (v113 < v109)
        {
          goto LABEL_114;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v37 = *(v11 + 16);
      v36 = *(v11 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v38;
      v39 = v11 + 32;
      v40 = (v11 + 32 + 16 * v37);
      *v40 = v10;
      v40[1] = v12;
      v112 = *v111;
      if (!*v111)
      {
        goto LABEL_122;
      }

      if (v37)
      {
        v116 = v11;
        while (1)
        {
          v41 = v38 - 1;
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v42 = *(v11 + 32);
            v43 = *(v11 + 40);
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_46:
            if (v45)
            {
              goto LABEL_104;
            }

            v58 = (v11 + 16 * v38);
            v60 = *v58;
            v59 = v58[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_106;
            }

            v64 = (v39 + 16 * v41);
            v66 = *v64;
            v65 = v64[1];
            v52 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v52)
            {
              goto LABEL_109;
            }

            if (__OFADD__(v62, v67))
            {
              goto LABEL_111;
            }

            if (v62 + v67 >= v44)
            {
              if (v44 < v67)
              {
                v41 = v38 - 2;
              }

              goto LABEL_68;
            }

            goto LABEL_61;
          }

          if (v38 < 2)
          {
            goto LABEL_112;
          }

          v68 = (v11 + 16 * v38);
          v70 = *v68;
          v69 = v68[1];
          v52 = __OFSUB__(v69, v70);
          v62 = v69 - v70;
          v63 = v52;
LABEL_61:
          if (v63)
          {
            goto LABEL_108;
          }

          v71 = (v39 + 16 * v41);
          v73 = *v71;
          v72 = v71[1];
          v52 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v52)
          {
            goto LABEL_110;
          }

          if (v74 < v62)
          {
            goto LABEL_3;
          }

LABEL_68:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_120;
          }

          v79 = (v39 + 16 * (v41 - 1));
          v80 = *v79;
          v81 = v41;
          v82 = (v39 + 16 * v41);
          v83 = v82[1];
          result = _ss6_merge3low3mid4high6buffer2bySbSpyxG_A3GSbx_xtKXEtKlF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AH09AggregateK7ElementOyAH5EventV2IdVGAH9MergeOnceVyAH0qK5StatsVGG_Tg504_s21gh9Support10jk16V4sortyySbAA0dE7lm2V5n39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09o2E7p5OyAA5q2V2r6VG_AA9st8VyAA0lE5U5VGTG5ALy_xq_GALy_q0_q1_GAH0jK0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAsxsxsXIsgnnld_A2_yAsXGTf1nnnnc_n0vgh8Support9o14PAAE4sortyySb5u15Qz_AFtXEFSbAA17jklm2V5n3Vy_z2H7P52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2XIsgnnd_Tf1nnnncn_nTf4nnnnng_nTm((*a3 + 4 * *v79), (*a3 + 4 * *v82), (*a3 + 4 * v83), v112, a5, a6);
          if (v6)
          {
          }

          if (v83 < v80)
          {
            goto LABEL_99;
          }

          v84 = v39;
          v85 = *(v116 + 16);
          if (v81 > v85)
          {
            goto LABEL_100;
          }

          *v79 = v80;
          v79[1] = v83;
          if (v81 >= v85)
          {
            goto LABEL_101;
          }

          v38 = v85 - 1;
          result = memmove(v82, v82 + 2, 16 * (v85 - 1 - v81));
          v8 = a5;
          v11 = v116;
          *(v116 + 16) = v85 - 1;
          v86 = v85 > 2;
          v39 = v84;
          if (!v86)
          {
            goto LABEL_3;
          }
        }

        v46 = v39 + 16 * v38;
        v47 = *(v46 - 64);
        v48 = *(v46 - 56);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_102;
        }

        v51 = *(v46 - 48);
        v50 = *(v46 - 40);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_103;
        }

        v53 = (v11 + 16 * v38);
        v55 = *v53;
        v54 = v53[1];
        v52 = __OFSUB__(v54, v55);
        v56 = v54 - v55;
        if (v52)
        {
          goto LABEL_105;
        }

        v52 = __OFADD__(v44, v56);
        v57 = v44 + v56;
        if (v52)
        {
          goto LABEL_107;
        }

        if (v57 >= v49)
        {
          v75 = (v39 + 16 * v41);
          v77 = *v75;
          v76 = v75[1];
          v52 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v52)
          {
            goto LABEL_113;
          }

          if (v44 < v78)
          {
            v41 = v38 - 2;
          }

          goto LABEL_68;
        }

        goto LABEL_46;
      }

LABEL_3:
      v9 = a3[1];
      v10 = v12;
      if (v12 >= v9)
      {
        v132 = v11;
        break;
      }
    }
  }

  if (!*v111)
  {
    goto LABEL_123;
  }

  _sSr13_finalizeRuns_6buffer2bySbSaySnySiGGz_SpyxGSbx_xtKXEtKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregateI7ElementOyAG5EventV2IdVGAG9MergeOnceVyAG0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A1_yArWGTf1nncn_n0tef8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17hijkzl3Vy_x2H7N52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1nnncn_nTf4nnnng_nTm(&v132, *v111, a3, v8, a6);
}

Swift::Int _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFs15ContiguousArrayVy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregatejC0OyAG5EventV2IdVGAG9MergeOnceVyAG0oJ5StatsVGGG_Tg504_s21fg9Support10ij16V4sortyySbAA0dE7kl2V5m39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09nyc5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0iJ0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tfg8Support9n14PAAE4sortyySb5s15Qz_AFtXEFSbAA17ijklzm3Vy_x2H7C52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_nTm(uint64_t *a1, uint64_t **a2, uint64_t (*a3)(__int128 *, __int128 *), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t *a6, uint64_t *a7)
{
  v14 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = a5(v14);
  }

  v15 = *(v14 + 16);
  v17[0] = v14 + 32;
  v17[1] = v15;
  result = _sSr15_stableSortImpl2byySbx_xtKXE_tKF21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateI7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0oI5StatsVGG_Tg504_s21ef9Support10hi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myn5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AGy_xq_GAGy_q0_q1_GAC0hI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyAnsnsnSIsgnnld_AYyAnSGTf1cn_n0tef8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17hijkzl3Vy_x2H7N52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2SIsgnnd_Tf1ncn_nTf4nng_nTm(v17, a2, a3, a4, a6, a7);
  *a1 = v14;
  return result;
}

uint64_t _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17gijkzl3Vy_x2H7c36Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA04N7H0V_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_n(uint64_t a1, uint64_t **a2, uint64_t (*a3)(__int128 *, __int128 *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (v6)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = *(a1 + 8);
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF09AggregateL7ElementOyAF04ViewL0V8TElementOGAF9MergeOnceVyAF05EventL5StatsVGG_Tt1g5(*(a1 + 12), 0);
    result = specialized Sequence._copyContents(initializing:)(&v16, v11 + 4, v6, v5, v10 | (v6 << 32));
    if (result != v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    a4 = v9;
    a3 = v8;
    a2 = v7;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v17 = v11;
  _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFs15ContiguousArrayVy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AG09AggregatejC0OyAG5EventV2IdVGAG9MergeOnceVyAG0oJ5StatsVGGG_Tg504_s21fg9Support10ij16V4sortyySbAA0dE7kl2V5m39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09nyc5OyAA5o2V2p6VG_AA9qr8VyAA0lE5S5VGTG5AKy_xq_GAKy_q0_q1_GAG0iJ0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tfg8Support9n14PAAE4sortyySb5s15Qz_AFtXEFSbAA17ijklzm3Vy_x2H7C52Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA11CauseEffectV_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_nTm(&v17, a2, a3, a4, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA04ViewE0V8TElementOGAA9MergeOnceVyAA05EventE5StatsVGGMd, &_s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA04ViewE0V8TElementOGAA9MergeOnceVyAA05EventE5StatsVGGMR);
  result = v17;
  if (!v4 && v6)
  {
    v13 = v17[2];
    v14 = 32;
    v15 = v5;
    do
    {
      if (!v13)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_14;
      }

      *v15++ = *(result + v14);
      --v13;
      v14 += 4;
      --v6;
    }

    while (v6);
  }
}

uint64_t _s21SwiftUITracingSupport10UnsafeTreeV4sortyySbAA0dE7NodeRefV5TypedVy_xq_G_AiCyxq_GztXEFAA09AggregateE7ElementOyAA04ViewE0V8TElementOG_AA9MergeOnceVyAA05EventE5StatsVGTg504_s21ab8Support9j14PAAE4sortyySb5q15Qz_AFtXEFSbAA17degh2V5i9Vy_AA0dH7k5Oy0L0v29GAFG_ApA0gH0VyAoFGztXEfU_AA04L7H0V_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2VIsgnnd_Tf1cn_nTf4ng_n(uint64_t **a1, uint64_t (*a2)(__int128 *, __int128 *), uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26C328DC0;
    *(v7 + 32) = 0;
    goto LABEL_4;
  }

  v7 = MEMORY[0x277D84F90];
  while (*(v7 + 16))
  {
LABEL_4:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = *(v7 + 16);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v8 = *(v7 + 16);
      if (!v8)
      {
LABEL_9:
        __break(1u);
        break;
      }
    }

    v9 = v8 - 1;
    v10 = *(v7 + 4 * v9 + 32);
    *(v7 + 16) = v9;
    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m14PAAE4sortyySb5s15Qz_AFtXEFSbAA17gijkzl3Vy_x2H7c36Oy0L0QzGAFG_ApA0gH0VyAoFGztXEfU_AA04N7H0V_TG5xq_SbRi_zRi0_zRi__Ri0__r0_lyA2WIsgnnd_Tf1ncn_nTf4nng_n(*v6 + 88 * v10 + 64, a1, a2, a3);
    v6 = *a1;
    v11 = **a1 + 88 * v10;
    specialized Array.append<A>(contentsOf:)(*(v11 + 64), *(v11 + 72));
  }
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
    goto LABEL_20;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = result;
  v3 = v1;
  result = swift_slowAlloc();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v2 + 4;
  while (1)
  {
    v10 = *&v7[v4];
    *v11 = *&v7[v4 + 2];
    *&v11[12] = *(&v7[v4 + 3] + 4);
    if (v6 == v3)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_21;
    }

LABEL_15:
    v9 = &result[v4];
    *v9 = v10;
    v9[1] = *v11;
    *(v9 + 28) = *&v11[12];
    if (v1 - 1 == v6)
    {
      return result;
    }

    v5 += 2;
    v4 += 6;
    ++v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  if (!HIDWORD(v8))
  {
    v3 = v8;
    if (result)
    {
      result = realloc(result, 48 * v8);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = swift_slowAlloc();
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      for (i = 4; ; i += 5)
      {
        v8 = v2[i];
        v9 = v2[i + 1];
        v10 = *&v2[i + 2];
        v11 = v2[i + 4];
        if (v5 == v3)
        {
          if (v3)
          {
            v12 = v4;
          }

          else
          {
            v12 = 1;
          }

          if (HIDWORD(v12))
          {
            __break(1u);
            goto LABEL_18;
          }

          v13 = *&v2[i + 2];
          v3 = v12;
          if (result)
          {
            result = realloc(result, 40 * v12);
            if (!result)
            {
              goto LABEL_20;
            }

            v10 = v13;
          }

          else
          {
            result = swift_slowAlloc();
            v10 = v13;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        ++v5;
        v7 = &result[i];
        *(v7 - 4) = v8;
        *(v7 - 24) = v9;
        *(v7 - 1) = v10;
        *v7 = v11;
        v4 += 2;
        if (v1 == v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void specialized UnsafeTree<>.init(root:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v64 = a1;
  v58 = a5;
  v62 = *(a3 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](a1);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UnsafeTree.Node();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = (&v56 - v15);
  v57 = *(a2 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnsafeTree.Storage.init()(&v66);
  v19 = type metadata accessor for UnsafeTree.Storage();
  v20 = specialized Strong.init(_:)(&v66, v19);
  v66 = v20;
  v21 = type metadata accessor for UnsafeTree.Symbol.Ref();
  v22 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v22, v21);
  v24 = v23;
  v26 = v25;

  v67 = v24;
  v68 = v26;
  v27 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  v28 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v28, v27);
  v30 = v29;
  v32 = v31;

  v69 = v30;
  v70 = v32;
  (*(a4 + 16))(a2, a4);
  v33 = dispatch thunk of Hashable.hashValue.getter();
  v34 = type metadata accessor for UnsafeTree();
  v56 = v18;
  v35 = v18;
  v36 = v10;
  UnsafeTree.new(element:identity:)(v35, v33, v34, &v65);
  LODWORD(v32) = v65;
  v38 = v62;
  v37 = v63;
  (*(v62 + 16))(v63, v64, a3);
  v39 = default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)();
  LODWORD(v24) = v40;
  v41 = HIDWORD(v40);
  v42 = v61;
  *v61 = v32;
  *(v42 + 1) = 0;
  v43 = v37;
  v44 = v42;
  (*(v38 + 32))(v42 + v36[12], v43, a3);
  v45 = v44 + v36[13];
  *v45 = v39;
  *(v45 + 8) = v24;
  *(v45 + 12) = v41;
  *(v44 + v36[14]) = -1;
  v46 = *(v20 + 12);
  if (UnsafeArray.capacity.getter(*v20, *(v20 + 8)) == v46)
  {
    type metadata accessor for UnsafeArray();
    UnsafeArray.growToCapacity(_:)(2 * v46);
  }

  if (*v20)
  {
    v47 = *(v20 + 12);
    v49 = v59;
    v48 = v60;
    v50 = *v20 + *(v60 + 72) * v47;
    (*(v60 + 16))(v59, v44, v36);
    _sSpsRi_zrlE10initialize2toyxn_tF(v49, v50, v36);
    (*(v48 + 8))(v44, v36);
    if (v47 != -1)
    {
      *(v20 + 12) = v47 + 1;
      (*(v57 + 8))(v56, a2);
      v51 = v67;
      v52 = v69;
      v53 = v70;
      v54 = v68;
      v55 = v58;
      *v58 = v66;
      v55[1] = v51;
      v55[2] = v54;
      v55[3] = v52;
      v55[4] = v53;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)(a1, v2[6], v2[3], v2[5], a2);
}

uint64_t partial apply for closure #1 in Aggregate.children(for:within:)@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Aggregate.children(for:within:)(a1, a2);
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
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

uint64_t specialized Aggregate.weight(for:within:)(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14[-v9];
  v15 = *a1;
  Aggregate.stats(for:)(&v15, a2, a3, &v14[-v9]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

uint64_t partial apply for closure #1 in Aggregate.sort(_:)(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return closure #1 in Aggregate.sort(_:)(a1, a2, a3, *(v3 + 32));
}

__n128 sub_26C179B84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void partial apply for specialized closure #1 in Atomic.subscript.read()
{
  v1 = *(v0 + 16);
  if (*(v1 + 4) == 1)
  {
    *(v1 + 4) = 0;
    os_unfair_lock_unlock(v1);
  }
}

{
  specialized closure #1 in Atomic.subscript.read(*(v0 + 16));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect()
{
  result = lazy protocol witness table cache variable for type CauseEffect and conformance CauseEffect;
  if (!lazy protocol witness table cache variable for type CauseEffect and conformance CauseEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CauseEffect and conformance CauseEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CauseEffect and conformance CauseEffect;
  if (!lazy protocol witness table cache variable for type CauseEffect and conformance CauseEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CauseEffect and conformance CauseEffect);
  }

  return result;
}

uint64_t outlined init with copy of Aggregate_AccessorProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized AggregateContainer.init<A>(_:_:config:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v34 = a3[3];
  v35 = v13;
  *(v6 + 120) = 0;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v6 + 16));
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = swift_getAssociatedConformanceWitness();
  v16 = __swift_allocate_boxed_opaque_existential_1Tm((v6 + 56));
  v17 = *(*(AssociatedTypeWitness - 8) + 16);
  v33 = *(a3 + 8);
  v17(v16, a2, AssociatedTypeWitness);
  *(v6 + 96) = v11;
  *(v6 + 97) = v12;
  v18 = v34;
  *(v6 + 98) = v35;
  *(v6 + 99) = v18;
  *(v6 + 104) = v33;
  swift_beginAccess();
  v19 = *(v6 + 40);
  v20 = *(v6 + 48);
  v21 = __swift_project_boxed_opaque_existential_1((v6 + 16), v19);
  v22 = *(v19 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25);
  (*(v20 + 112))(v37, v19, v20);
  (*(v22 + 8))(v25, v19);
  LODWORD(v19) = v37[0];
  type metadata accessor for AggregateContainer.Child();
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = v6;
  *(v26 + 32) = 0;
  swift_beginAccess();
  v27 = *(v6 + 120);
  *(v6 + 120) = v26;
  swift_unownedRetain();

  swift_beginAccess();
  v29 = *(v6 + 40);
  v28 = *(v6 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 16, v29);
  (*(*(v28 + 8) + 8))(v29);
  v36 = 0;
  v30 = *(v6 + 40);
  v31 = *(v6 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 16, v30);
  (*(v31 + 216))(&v36, v30, v31);
  swift_endAccess();
  return v6;
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

uint64_t instantiation function for generic protocol witness table for <> MergeOnce<A>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UnsafeTreeNodeRef.Typed<A, B>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for UnsafeTreeNodeRef.Typed<A, B>(a1);
}

{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CauseEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Event.Id and conformance Event.Id()
{
  result = lazy protocol witness table cache variable for type Event.Id and conformance Event.Id;
  if (!lazy protocol witness table cache variable for type Event.Id and conformance Event.Id)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Id and conformance Event.Id);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.Id and conformance Event.Id;
  if (!lazy protocol witness table cache variable for type Event.Id and conformance Event.Id)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Id and conformance Event.Id);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MergeOnce<EventTreeStats> and conformance <> MergeOnce<A>()
{
  result = lazy protocol witness table cache variable for type MergeOnce<EventTreeStats> and conformance <> MergeOnce<A>;
  if (!lazy protocol witness table cache variable for type MergeOnce<EventTreeStats> and conformance <> MergeOnce<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SwiftUITracingSupport9MergeOnceVyAA14EventTreeStatsVGMd, &_s21SwiftUITracingSupport9MergeOnceVyAA14EventTreeStatsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MergeOnce<EventTreeStats> and conformance <> MergeOnce<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UpdateStack(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UpdateStack and conformance UpdateStack();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateStack and conformance UpdateStack()
{
  result = lazy protocol witness table cache variable for type UpdateStack and conformance UpdateStack;
  if (!lazy protocol witness table cache variable for type UpdateStack and conformance UpdateStack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateStack and conformance UpdateStack);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewTree.TElement and conformance ViewTree.TElement()
{
  result = lazy protocol witness table cache variable for type ViewTree.TElement and conformance ViewTree.TElement;
  if (!lazy protocol witness table cache variable for type ViewTree.TElement and conformance ViewTree.TElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTree.TElement and conformance ViewTree.TElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTree.TElement and conformance ViewTree.TElement;
  if (!lazy protocol witness table cache variable for type ViewTree.TElement and conformance ViewTree.TElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTree.TElement and conformance ViewTree.TElement);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ViewTree(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ViewTree and conformance ViewTree();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewTree and conformance ViewTree()
{
  result = lazy protocol witness table cache variable for type ViewTree and conformance ViewTree;
  if (!lazy protocol witness table cache variable for type ViewTree and conformance ViewTree)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTree and conformance ViewTree);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregateContainer.Method and conformance AggregateContainer.Method()
{
  result = lazy protocol witness table cache variable for type AggregateContainer.Method and conformance AggregateContainer.Method;
  if (!lazy protocol witness table cache variable for type AggregateContainer.Method and conformance AggregateContainer.Method)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregateContainer.Method and conformance AggregateContainer.Method);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregateContainer.Level and conformance AggregateContainer.Level()
{
  result = lazy protocol witness table cache variable for type AggregateContainer.Level and conformance AggregateContainer.Level;
  if (!lazy protocol witness table cache variable for type AggregateContainer.Level and conformance AggregateContainer.Level)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregateContainer.Level and conformance AggregateContainer.Level);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregateContainer.Kind and conformance AggregateContainer.Kind()
{
  result = lazy protocol witness table cache variable for type AggregateContainer.Kind and conformance AggregateContainer.Kind;
  if (!lazy protocol witness table cache variable for type AggregateContainer.Kind and conformance AggregateContainer.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregateContainer.Kind and conformance AggregateContainer.Kind);
  }

  return result;
}

__n128 sub_26C17A768(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata completion function for MergeOnce(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MergeOnce(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for MergeOnce(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _sSo19T_AnimationRetargetawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventTreeStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DiffTreeStats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DiffTreeStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 120) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PType.Flags.Spec(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PType.Flags.Spec(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t type metadata instantiation function for UnsafeTree()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for UnsafeTree.Symbol(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[4];
    type metadata accessor for UnsafeTreeNodeRef.Typed();
    result = type metadata accessor for UnsafeArray();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeTree.Symbol(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for UnsafeTree.Symbol(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for UnsafeTree.Node(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = type metadata accessor for UnsafeTree.Symbol.Ref();
  if (v5 <= 0x3F)
  {
    v4 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = type metadata accessor for UnsafeTreeNodeRef.Typed();
      v9 = v8;
      v4 = type metadata accessor for UnsafeArray();
      if (v10 <= 0x3F)
      {
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for UnsafeTree.Node(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  if (*(a1 + ((((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v5 + *a1 + 1;
  }

  if (v5)
  {
    return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for UnsafeTree.Node(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = (((*(v6 + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v7 >= a2)
  {
    if (v7 < a3)
    {
      a1[v9] = 0;
    }

    if (a2)
    {
      v11 = *(v6 + 56);
      v12 = (((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

      v11(v12);
    }
  }

  else
  {
    v10 = ~v7 + a2;
    bzero(a1, v9);
    *a1 = v10;
    if (v7 < a3)
    {
      a1[v9] = 1;
    }
  }
}

uint64_t type metadata instantiation function for UnsafeTree.Storage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeTree.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 32))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeTree.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for AggregateTreeElement(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for AggregateTreeElement(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for AggregateTreeElement(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t dispatch thunk of Aggregate.tree.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a3 + 96);
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  return v5(v7);
}

uint64_t dispatch thunk of Aggregate.displayName(for:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 136))();
}

{
  return (*(a4 + 168))();
}

uint64_t dispatch thunk of Aggregate.displayWeight(for:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 144))();
}

{
  return (*(a4 + 176))();
}

uint64_t dispatch thunk of Aggregate.appendSelection(for:within:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 152))();
}

{
  return (*(a5 + 192))();
}

uint64_t dispatch thunk of Aggregate.weight(for:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 160))();
}

{
  return (*(a4 + 184))();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SnapshotAccessor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 9))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotAccessor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

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

uint64_t getEnumTagSinglePayload for CauseEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CauseEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UpdateStack(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateStack(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Interpreter.Iterator.Kind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewTree.TElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFFFD && *(a1 + 36))
  {
    return (*a1 + 2097149);
  }

  v3 = (((*(a1 + 24) >> 43) >> 19) | (4 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (*(a1 + 16) >> 50) & 0x3C00 | ((*(a1 + 16) & 7) << 7) | (*(a1 + 24) >> 43) & 0x60000 | ((*(a1 + 24) & 7) << 14)))) ^ 0x1FFFFF;
  if (v3 >= 0x1FFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ViewTree.TElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 2097149;
    *(result + 8) = 0;
    if (a3 >= 0x1FFFFD)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFD)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      v4 = vdupq_n_s64(v3);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_26C328DE0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_26C328DF0), vdupq_n_s64(0xF000000000000000)));
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for ViewTree.TElement(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

int8x16_t destructiveInjectEnumTag for ViewTree.TElement(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result = vandq_s8(*(a1 + 8), vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *(a1 + 8) = result;
    *(a1 + 24) = v2;
  }

  else
  {
    *a1 = (a2 - 3);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xC000000000000000;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AggregateContainer.Method(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AggregateContainer.Method(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AggregateContainer.Level(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AggregateContainer.Level(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AggregateContainer.Config(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AggregateContainer.Config(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _malloc_zone_t(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _malloc_zone_t(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeTree(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeTree(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGTraceType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t storeEnumTagSinglePayload for _AGTraceType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _sSo26T_ViewGraphRootValueChangeawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo26T_ViewGraphRootValueChangeawst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

__n128 __swift_memcpy26_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for T_AssignRootSubgraph(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_AssignRootSubgraph(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 26) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for T_Header.Flags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_Header.Flags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy10_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for T_ViewGraphRootValueChangeV2(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_ViewGraphRootValueChangeV2(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

__n128 __swift_memcpy24_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy40_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.CancelationPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Attribute.AttributeType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for T_NodeSetValue.Closure(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_NodeSetValue.Closure(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularBuffer.Transaction.Kind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularBuffer.Transaction.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

__n128 __swift_memcpy17_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}