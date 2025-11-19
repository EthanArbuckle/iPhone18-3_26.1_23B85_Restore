void specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(a1 + 56);

  Interpreter.Iterator.Mode.init(name:version:)(a2, a3, v12);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC8IteratorV4ModeV_Tt0B5(v12);
  v7 = v6;
  v8 = *(a1 + 12);
  if (v8 == *(a1 + 8))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v8);
  }

  if (*a1)
  {
    v9 = *(a1 + 12);
    v10 = *a1 + 24 * v9;
    *v10 = v7;
    *(v10 + 8) = 0;
    *(v10 + 12) = 1;
    *(v10 + 16) = 0;
    *(v10 + 20) = 1;
    if (v9 != -1)
    {
      *(a1 + 12) = v9 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

{
  v11 = *(a1 + 56);

  Interpreter.Context.init(name:version:)(a2, a3, &v11, v12);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7ContextV_Tt0B5(v12);
  v7 = v6;
  v8 = *(a1 + 12);
  if (v8 == *(a1 + 8))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v8);
  }

  if (*a1)
  {
    v9 = *(a1 + 12);
    v10 = *a1 + 24 * v9;
    *v10 = v7;
    *(v10 + 8) = 0;
    *(v10 + 12) = 1;
    *(v10 + 16) = 0;
    *(v10 + 20) = 1;
    if (v9 != -1)
    {
      *(a1 + 12) = v9 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

{
  v6 = swift_slowAlloc();
  *v6 = a2;
  v6[1] = a3;
  memset(v12, 0, sizeof(v12));
  v13 = 256;
  v14 = v6;
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = -1;

  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA16Tracepoint_EntryV_Tt0g5(v12);
  v8 = v7;
  v9 = *(a1 + 12);
  if (v9 == *(a1 + 8))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v9);
  }

  if (*a1)
  {
    v10 = *(a1 + 12);
    v11 = *a1 + 24 * v10;
    *v11 = v8;
    *(v11 + 8) = 0;
    *(v11 + 12) = 1;
    *(v11 + 16) = 0;
    *(v11 + 20) = 1;
    if (v10 != -1)
    {
      *(a1 + 12) = v10 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_slowAlloc();
  *v6 = a2;
  v6[1] = a3;

  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA16Attachment_EntryV_Tt0g5(0, 0, v6, 0xFFFF);
  v8 = result;
  v9 = *(a1 + 12);
  if (v9 == *(a1 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v9);
  }

  if (*a1)
  {
    v10 = *(a1 + 12);
    v11 = *a1 + 24 * v10;
    *v11 = v8;
    *(v11 + 8) = 0;
    *(v11 + 12) = 1;
    *(v11 + 16) = 0;
    *(v11 + 20) = 1;
    v12 = v10 + 1;
    if (v10 != -1)
    {
      *(a1 + 12) = v12;
      return v12 - 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t T_TimeSync.model(within:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 116);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v11[0] = *(a1 + 56);
  v11[1] = v5;
  v12[0] = *(a1 + 88);
  *(v12 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
  while (1)
  {
    v9 = *v8;
    if (result < *v7)
    {
      v10 = (*v6 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v11);
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  if (*v4)
  {
    result = *v4 + 24 * *v10;
    *(*result + 32) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t T_ExecutionContext.model(within:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 116);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v5;
  v13[0] = *(a1 + 88);
  *(v13 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
  while (1)
  {
    v9 = *v8;
    if (result < *v7)
    {
      v10 = (*v6 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v12);
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  if (*v4)
  {
    result = *v4 + 24 * *v10;
    v11 = *result;
    *(v11 + 56) = a2;
    *(v11 + 64) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t T_ModeDecl.model(within:)(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v195 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 176);
  if (*v12 != 1)
  {
    goto LABEL_157;
  }

  v196 = a1;
  v197 = a2;
  v13 = HIDWORD(a2);
  v14 = HIDWORD(a3);
  v15 = *(a1 + 116);
  v16 = *(v12 + 56);
  v246[0] = *(v12 + 40);
  v246[1] = v16;
  v247[0] = *(v12 + 72);
  v17 = (v12 + 72);
  v18 = (v12 + 84);
  v19 = (v12 + 88);
  v20 = 8 * v15;
  *(v247 + 9) = *(v12 + 81);
  v21 = (v12 + 40);
  v193 = (v12 + 72);
  v194 = v13;
  v22 = (v12 + 84);
  v23 = (v12 + 88);
  LODWORD(v192) = a4;
  while (1)
  {
    v24 = *v23;
    if (v15 < *v22)
    {
      v25 = (*v17 + v20);
      if ((v25[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v24)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v246);
    }

    v17 = (v24 + 32);
    v22 = (v24 + 44);
    v23 = (v24 + 48);
    v21 = v24;
  }

  v26 = *v21;
  if (!v26)
  {
    goto LABEL_177;
  }

  result = v26 + 24 * *v25;
  v27 = *result;
  v28 = *(*result + 196);
  v29 = 0uLL;
  v191 = v14;
  if (v28)
  {
    v30 = *(v27 + 184);
    if (!v30)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v31 = v28 - 1;
    result = v194;
    if (v194 <= *(v30 + 32 * (v28 - 1)))
    {
      v37 = v28 >> 1;
      v38 = *(v30 + 32 * (v28 >> 1));
      if (v28 != 1 && v38 != v194)
      {
        if (v194 >= v38)
        {
          v40 = v37 + 1;
          v37 = v28;
        }

        else
        {
          v40 = 0;
        }

        v47 = specialized Collection<>.binarySearch(for:)(v194, v40, v37, v30, *(v27 + 192) | (v28 << 32));
        if (v48)
        {
          v37 = v28 - 1;
        }

        else
        {
          v37 = v47;
        }

        result = v194;
        v29 = 0uLL;
      }

      v49 = (v30 + 32 * v37);
      v31 = v37;
      while (v37 < v28)
      {
        if (*v49 <= result)
        {
          goto LABEL_12;
        }

        if (!v31)
        {
          goto LABEL_39;
        }

        --v31;
        v49 -= 8;
        if (v31 > v28)
        {
          __break(1u);
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_156;
    }

LABEL_12:
    v32 = *(v12 + 56);
    v244[0] = *(v12 + 40);
    v244[1] = v32;
    v245[0] = *(v12 + 72);
    *(v245 + 9) = *(v12 + 81);
    v33 = (v12 + 40);
    v34 = v193;
    while (1)
    {
      v35 = *v19;
      if (v15 < *v18)
      {
        v36 = (*v34 + v20);
        if ((v36[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v244);
      }

      v34 = (v35 + 32);
      v18 = (v35 + 44);
      v19 = (v35 + 48);
      v33 = v35;
    }

    v41 = *v33;
    if (!v41)
    {
      goto LABEL_184;
    }

    result = v41 + 24 * *v36;
    v42 = v196;
    if (v31 >= *(*result + 196))
    {
      goto LABEL_161;
    }

    v43 = *(*result + 184);
    if (!v43)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v44 = (v43 + 32 * v31);
    v45 = *v44;
    v46 = *(v44 + 1);
    v29 = *(v44 + 1);
  }

  else
  {
LABEL_39:
    v45 = 0;
    v46 = 0;
    v42 = v196;
  }

  v205 = 0;
  v50 = v197 & 0xFFFFFFFF00000000;
  *&v221 = v15 | 0x200000000;
  *(&v221 + 1) = v197 & 0xFFFFFFFF00000000;
  *&v222 = v45;
  *(&v222 + 1) = v46;
  v223 = v29;
  LOBYTE(v224) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v12, &v221, 0, 0, v234);
  Interpreter.Iterator.read()();
  v242[0] = *(v235 + 8);
  v242[1] = *(&v235[1] + 8);
  v243[0] = *(&v235[2] + 8);
  *(v243 + 9) = *(&v235[3] + 1);
  v51 = *(&v235[0] + 1);
  v52 = *(&v235[2] + 1);
  result = DWORD1(v235[4]);
  v53 = *(&v235[3] + 1);
  if (DWORD1(v235[4]) >= DWORD1(v235[3]))
  {
    goto LABEL_42;
  }

  while (1)
  {
    v54 = (v52 + 8 * DWORD1(v235[4]));
    if ((v54[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_42:
      if (!v53)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(DWORD1(v235[4]), 0, v242);
      }

      v51 = *v53;
      v52 = v53[4];
      v55 = *(v53 + 11);
      v53 = v53[6];
    }

    while (DWORD1(v235[4]) >= v55);
  }

  if (!v51)
  {
    goto LABEL_178;
  }

  result = v51 + 24 * *v54;
  v56 = *result;
  v57 = *(*result + 96);
  if (v57 == 2)
  {
    goto LABEL_165;
  }

  v58 = *(v56 + 104);
  v59 = *(v56 + 88);
  v237 = *(v56 + 72);
  v238 = v59;
  v239 = v57 & 0x101;
  v240 = HIDWORD(v57);
  v241 = v58 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v61)
  {
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v190 = v50;
  v62 = v60 - result;
  if (!result)
  {
    v62 = 0;
  }

  *&v221 = result;
  *(&v221 + 1) = v62;
  static String.Encoding.utf8.getter();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  v188 = lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
  v189 = v63;
  result = String.init<A>(bytes:encoding:)();
  if (!v64)
  {
    goto LABEL_167;
  }

  v65 = result;
  v66 = v64;
  result = specialized EvolutionTable.deallocate()();
  v67 = *(v12 + 52);
  if (v67)
  {
    v68 = 0;
    v69 = *(v12 + 40);
    v70 = v69;
    while (v69)
    {
      v71 = **v70;
      if (*v71 == v65 && v66 == v71[1])
      {
        goto LABEL_62;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_62;
      }

      ++v68;
      v70 += 3;
      if (v67 == v68)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_163;
  }

LABEL_61:

  specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(v12 + 40, v65, v66);
  v68 = v73;

LABEL_62:
  v74 = v197;
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(v193, v197, v68);
  if (v68 >= *(v12 + 52))
  {
    goto LABEL_158;
  }

  v75 = *(v12 + 40);
  if (!v75)
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v76 = (v75 + 24 * v68);
  *(v76 + 4) = v74;
  *(v76 + 20) = 0;
  v77 = *v76;
  v78 = *(v42 + 176);
  v235[7] = *(v42 + 160);
  v235[8] = v78;
  v236 = *(v42 + 192);
  v79 = *(v42 + 112);
  v235[3] = *(v42 + 96);
  v235[4] = v79;
  v80 = *(v42 + 128);
  v235[6] = *(v42 + 144);
  v235[5] = v80;
  v81 = *(v42 + 48);
  v234[2] = *(v42 + 32);
  v235[0] = v81;
  v82 = *(v42 + 80);
  v235[1] = *(v42 + 64);
  v235[2] = v82;
  v83 = *(v42 + 16);
  v234[0] = *v42;
  v234[1] = v83;
  v84 = specialized Interpreter.Iterator.subscript.getter(v191);
  specialized add #1 <A>(definitions:to:_:) in closure #1 in T_ModeDecl.model(within:)(v84, v85, v86, v77 + 56, v42, v42);
  v87 = *(v42 + 176);
  v231 = *(v42 + 160);
  v232 = v87;
  v233 = *(v42 + 192);
  v88 = *(v42 + 112);
  v227 = *(v42 + 96);
  v228 = v88;
  v89 = *(v42 + 144);
  v229 = *(v42 + 128);
  v230 = v89;
  v90 = *(v42 + 48);
  v223 = *(v42 + 32);
  v224 = v90;
  v91 = *(v42 + 80);
  v225 = *(v42 + 64);
  v226 = v91;
  v92 = *(v42 + 16);
  v221 = *v42;
  v222 = v92;
  v93 = v232;
  v94 = specialized Interpreter.Iterator.subscript.getter(v192);
  result = specialized add #1 <A>(definitions:to:_:) in closure #1 in T_ModeDecl.model(within:)(v94, v95, v96, v77 + 120, v42, v42);
  if (v74)
  {
    v97 = (v93 + 40);
    v98 = *(v93 + 56);
    v219[0] = *(v93 + 40);
    v219[1] = v98;
    v220[0] = *(v93 + 72);
    *(v220 + 9) = *(v93 + 81);
    v99 = (v93 + 56);
    v100 = (v93 + 68);
    v101 = (v93 + 88);
    while (1)
    {
      v102 = *v101;
      if (*v100)
      {
        v103 = *v99;
        if ((v103[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v102)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v219);
      }

      v99 = (v102 + 16);
      v100 = (v102 + 28);
      v101 = (v102 + 48);
      v97 = v102;
    }

    v104 = *v97;
    if (!v104)
    {
      goto LABEL_183;
    }

    v105 = (v104 + 24 * *v103);
    v106 = *v105;
    *(v77 + 104) = *v105 + 56;
    *(v77 + 168) = v106 + 120;
  }

  v192 = v93;
  v109 = *(v93 + 88);
  v108 = (v93 + 88);
  v107 = v109;
  v111 = v108 - 6;
  v110 = *(v108 - 6);
  v112 = DWORD1(v228);
  v113 = *(v108 - 2);
  *(v207 + 9) = *(v108 - 7);
  v114 = *(v207 + 9);
  v206[0] = *(v108 - 3);
  v206[1] = v113;
  v115 = v108 - 2;
  v207[0] = *(v108 - 1);
  v117 = v108 - 1;
  v116 = *(v108 - 1);
  *(v218 + 9) = v114;
  v217[1] = v113;
  v218[0] = v207[0];
  v217[0] = v206[0];
  v118 = v108 - 6;
  v119 = v108 - 2;
  v120 = v109;
  v193 = (8 * DWORD1(v228));
  v191 = v110;
  v187 = *&v207[0];
  HIDWORD(v186) = v116;
  if (DWORD1(v228) >= v116)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v121 = (*v119 + 8 * DWORD1(v228));
    if ((v121[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_75:
      if (!v120)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(DWORD1(v228), 0, v217);
      }

      v119 = (v120 + 32);
      v122 = *(v120 + 44);
      v118 = v120;
      v120 = *(v120 + 48);
    }

    while (DWORD1(v228) >= v122);
  }

  if (!*v118)
  {
    goto LABEL_179;
  }

  result = *v118 + 24 * *v121;
  v123 = *result;
  v124 = *(*result + 196);
  v125 = 0uLL;
  if (!v124)
  {
LABEL_110:
    v137 = 0;
    v138 = 0;
    goto LABEL_111;
  }

  v126 = *(v123 + 184);
  if (!v126)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v127 = v124 - 1;
  result = v194;
  if (v194 <= *(v126 + 32 * (v124 - 1)))
  {
    v131 = v124 >> 1;
    v132 = *(v126 + 32 * (v124 >> 1));
    if (v124 != 1 && v132 != v194)
    {
      if (v194 >= v132)
      {
        v134 = v131 + 1;
        v131 = v124;
      }

      else
      {
        v134 = 0;
      }

      v139 = *(v123 + 184);
      v140 = specialized Collection<>.binarySearch(for:)(v194, v134, v131, v126, *(v123 + 192) | (v124 << 32));
      if (v141)
      {
        v131 = v124 - 1;
      }

      else
      {
        v131 = v140;
      }

      result = v194;
      v125 = 0uLL;
      v126 = v139;
    }

    v142 = (v126 + 32 * v131);
    v127 = v131;
    while (v131 < v124)
    {
      if (*v142 <= result)
      {
        goto LABEL_83;
      }

      if (!v127)
      {
        goto LABEL_110;
      }

      --v127;
      v142 -= 8;
      if (v127 > v124)
      {
        __break(1u);
        goto LABEL_110;
      }
    }

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
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

LABEL_83:
  v128 = *(v108 - 2);
  v215[0] = *v111;
  v215[1] = v128;
  v216[0] = *(v108 - 1);
  *(v216 + 9) = *(v108 - 7);
  while (1)
  {
    v129 = *v108;
    if (v112 < *v117)
    {
      v130 = (v193 + *v115);
      if ((v130[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v129)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v112, 0, v215);
    }

    v115 = (v129 + 32);
    v117 = (v129 + 44);
    v108 = (v129 + 48);
    v111 = v129;
  }

  if (!*v111)
  {
    goto LABEL_185;
  }

  result = *v111 + 24 * *v130;
  if (v127 >= *(*result + 196))
  {
    goto LABEL_162;
  }

  v135 = *(*result + 184);
  if (!v135)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    return result;
  }

  v136 = (v135 + 32 * v127);
  v137 = *v136;
  v138 = *(v136 + 1);
  v125 = *(v136 + 1);
LABEL_111:
  v204 = 0;
  *&v212 = v112 | 0x200000000;
  *(&v212 + 1) = v190;
  *&v213 = v137;
  *(&v213 + 1) = v138;
  v214[0] = v125;
  LOBYTE(v214[1]) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v192, &v212, 0, 0, v200);
  Interpreter.Iterator.read()();
  v212 = *&v201[3];
  v213 = *&v201[5];
  v214[0] = *v202;
  *(v214 + 9) = *&v202[9];
  v143 = v201[3];
  v144 = *v202;
  result = v203;
  v145 = *&v202[16];
  if (v203 >= *&v202[12])
  {
    goto LABEL_113;
  }

  while (1)
  {
    v146 = (v144 + 8 * v203);
    if ((v146[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_113:
      if (!v145)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v203, 0, &v212);
      }

      v143 = *v145;
      v144 = v145[4];
      v147 = *(v145 + 11);
      v145 = v145[6];
    }

    while (v203 >= v147);
  }

  if (!v143)
  {
    goto LABEL_180;
  }

  result = v143 + 24 * *v146;
  v148 = *result;
  v149 = *(*result + 96);
  if (v149 == 2)
  {
    goto LABEL_169;
  }

  v150 = *(v148 + 104);
  v151 = *(v148 + 88);
  v207[2] = *(v148 + 72);
  v208 = v151;
  v209 = v149 & 0x101;
  v210 = HIDWORD(v149);
  v211 = v150 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v153)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v154 = v152 - result;
  if (!result)
  {
    v154 = 0;
  }

  v198 = result;
  v199 = v154;
  static String.Encoding.utf8.getter();
  result = String.init<A>(bytes:encoding:)();
  if (!v155)
  {
    goto LABEL_171;
  }

  v156 = result;
  v157 = v155;
  v158 = *(&v224 + 1);
  v159 = DWORD1(v225);
  result = specialized EvolutionTable.deallocate()();
  v160 = (v196 + 56);
  if (v159)
  {
    v161 = 0;
    v162 = v158;
    while (v158)
    {
      v163 = *(*v162 + 16);
      if (*v163 == v156 && v157 == v163[1])
      {
        goto LABEL_133;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_133;
      }

      ++v161;
      v162 += 24;
      if (v159 == v161)
      {
        goto LABEL_132;
      }
    }

    goto LABEL_164;
  }

LABEL_132:

  specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(v160, v156, v157);
  v161 = v165;

LABEL_133:
  v166 = v196;
  v167 = (v196 + 88);
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(v196 + 88, v197, v161);
  if (v161 >= *(v166 + 68))
  {
    goto LABEL_159;
  }

  v168 = *(v166 + 56);
  if (!v168)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v169 = v168 + 24 * v161;
  result = v197;
  *(v169 + 16) = v197;
  *(v169 + 20) = 0;
  v170 = *v169;
  v171 = v191;
  v172 = v187;
  if (result >= HIDWORD(v186))
  {
    goto LABEL_137;
  }

  while (1)
  {
    v173 = (v172 + 8 * result);
    if ((v173[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_137:
      if (!v107)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v206);
      }

      v171 = *v107;
      v172 = *(v107 + 32);
      v174 = *(v107 + 44);
      v107 = *(v107 + 48);
    }

    while (result >= v174);
  }

  if (!v171)
  {
    goto LABEL_181;
  }

  v175 = v171 + 24 * *v173;
  v176 = *(*v175 + 8);
  if (v176)
  {
    v177 = *(*v175 + 8);
    v178 = swift_conformsToProtocol2();
    if (v178)
    {
      if (!v170[14])
      {
        v179 = v178;
        v170[14] = project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(v176, v176, v178);
        v180 = *(v179 + 16);
        *v170 = v176;
        v170[1] = v180;
        v170[15] = v176;
        v170[16] = v179;
      }
    }
  }

  v181 = v160[1];
  v200[0] = *v160;
  v200[1] = v181;
  *v201 = v160[2];
  *(&v201[1] + 1) = *(v160 + 41);
  v182 = (v166 + 100);
  v183 = (v166 + 104);
  while (1)
  {
    v184 = *v183;
    if (v112 < *v182)
    {
      v185 = (v193 + *v167);
      if ((v185[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v184)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v112, 0, v200);
    }

    v167 = (v184 + 32);
    v182 = (v184 + 44);
    v183 = (v184 + 48);
    v160 = v184;
  }

  if (!*v160)
  {
    goto LABEL_182;
  }

  result = *v160 + 24 * *v185;
  if (!*(*result + 136))
  {
    goto LABEL_160;
  }

  return result;
}

uint64_t T_TypeDecl.model(within:)(uint64_t a1)
{
  v3 = specialized static PType.Parser.parseType(record:within:)(v1, a1);
  v4 = *v1;
  v5 = *(a1 + 176);
  v6 = *(v5 + 136);
  for (i = *(v6 + 32); *(i + 2) <= v4; i = *(v6 + 32))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 32) = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
      *(v6 + 32) = i;
    }

    v12 = *(i + 2);
    v11 = *(i + 3);
    if (v12 >= v11 >> 1)
    {
      i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, i);
      *(v6 + 32) = i;
    }

    *(i + 2) = v12 + 1;
    *&i[4 * v12 + 32] = -1;
    v6 = *(v5 + 136);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 32) = i;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(i);
    i = result;
    *(v6 + 32) = result;
  }

  if (*(i + 2) <= v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  *&i[4 * v4 + 32] = v3;
  v9 = *(v5 + 136);
  if (v3 >= *(v9 + 12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*v9)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Tracepoint.model(within:) in conformance T_TypeDecl(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  return T_TypeDecl.model(within:)(a1);
}

uint64_t T_KeypathDecl.model(within:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = HIDWORD(a3);
  if (HIDWORD(a3))
  {
    v3 = a3;
    HIDWORD(v4) = HIDWORD(a2);
    v6 = *(a1 + 116);
    v7 = *(*(a1 + 176) + 136);
    v5 = *(v7 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 16) = v5;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
  v5 = result;
  *(v7 + 16) = result;
LABEL_3:
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v5);
    v5 = result;
    *(v7 + 16) = result;
  }

  *(v5 + 16) = v11 + 1;
  v12 = v5 + 24 * v11;
  *(v12 + 32) = HIDWORD(v4);
  *(v12 + 36) = v3;
  *(v12 + 40) = v6;
  *(v12 + 44) = 2;
  *(v12 + 48) = 0;
  *(v12 + 52) = v8;
  return result;
}

uint64_t TypeID.describe(state:)(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!*(a1 + 41))
  {
    v2 = *(v2 + 176);
    goto LABEL_4;
  }

  if (*(a1 + 41) == 1)
  {
LABEL_4:
    v3 = *(v2 + 136);
    v4 = *v3;
    v5 = *(v3 + 2);
    v6 = *(v3 + 3);
    v49 = *(v3 + 1);
    v7 = v3[4];
    v8 = *(v3 + 7);
    v9 = *(v3 + 11);
    v46 = *(v3 + 9);
    v47 = v9;
    v48 = v3[13];
    v44 = *(v3 + 5);
    v45 = v8;
    if (a2 == -1)
    {
      return 0x206E776F6E6B6E55;
    }

    if (*(v7 + 16) <= a2)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v7 + 4 * a2 + 32);
      if (v10 < v6)
      {
        if (v4)
        {
          v11 = (v4 + 120 * v10);
          v12 = *v11;
          v13 = v11[1];
          v14 = v11[3];
          v40[2] = v11[2];
          v40[3] = v14;
          v40[0] = v12;
          v40[1] = v13;
          v15 = v11[4];
          v16 = v11[5];
          v17 = v11[6];
          *(v41 + 14) = *(v11 + 110);
          v40[5] = v16;
          v41[0] = v17;
          v40[4] = v15;
          v18 = v11[5];
          v37 = v11[4];
          v38 = v18;
          v39[0] = v11[6];
          *(v39 + 14) = *(v11 + 110);
          v19 = v11[1];
          v33 = *v11;
          v34 = v19;
          v20 = v11[3];
          v35 = v11[2];
          v36 = v20;
          v23 = v4;
          v24 = v5;
          v25 = v6;
          v26 = v49;
          v27 = v7;
          v29 = v45;
          v30 = v46;
          v31 = v47;
          v32 = v48;
          v28 = v44;
          outlined init with copy of PType(v40, v42);
          v21 = PType.limitedName(within:limit:module:)(&v23, 2, 0);
          v42[4] = v37;
          v42[5] = v38;
          v43[0] = v39[0];
          *(v43 + 14) = *(v39 + 14);
          v42[0] = v33;
          v42[1] = v34;
          v42[2] = v35;
          v42[3] = v36;
          outlined destroy of PType(v42);
          return v21;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int KeypathID.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t static String.construct(attachment:from:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
  result = String.init<A>(bytes:encoding:)();
  if (!v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t static String.serialize(value:to:)(uint64_t a1, unint64_t a2, void (*a3)(void *, char *))
{

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10[0] = a1;
    v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    a3(v10, v10 + (HIBYTE(a2) & 0xF));
  }

  a1 = static String._copying(_:)();
  v9 = v8;

  a2 = v9;
  if ((v9 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  a3(result, (result + v7));
}

uint64_t protocol witness for static Attachment.construct(attachment:from:) in conformance String@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
  result = String.init<A>(bytes:encoding:)();
  if (v5)
  {
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance String(uint64_t *a1, void (*a2)(void *, char *))
{
  v4 = *a1;
  v3 = a1[1];

  if ((v3 & 0x1000000000000000) == 0)
  {
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9[0] = v4;
    v9[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    a2(v9, v9 + (HIBYTE(v3) & 0xF));
  }

  v4 = static String._copying(_:)();
  v8 = v7;

  v3 = v8;
  if ((v8 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v4 & 0x1000000000000000) != 0)
  {
    result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  a2(result, (result + v6));
}

uint64_t static ByteString.serialize(value:to:)(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg589_s21SwiftUITracingSupport10ByteStringV7StorageO17withBufferPointeryxxSWXElFxSWXEfU_yt_Tg5SWxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a1, a2, partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawBufferPointer) -> ());
  }

  else
  {
    return a4();
  }
}

uint64_t ByteString.description(ofType:field:within:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 136);
  v9 = *(v8 + 4);
  if (*(v9 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = *(v9 + 4 * a1 + 32);
  if (v10 >= *(v8 + 3))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!*v8)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v16 = *v8 + 120 * v10;
  v17 = *v16;
  v18 = *(v16 + 16);
  v19 = *(v16 + 48);
  v74[2] = *(v16 + 32);
  v74[3] = v19;
  v74[0] = v17;
  v74[1] = v18;
  v20 = *(v16 + 64);
  v21 = *(v16 + 80);
  v22 = *(v16 + 96);
  *(v75 + 14) = *(v16 + 110);
  v74[5] = v21;
  v75[0] = v22;
  v74[4] = v20;
  v71 = *(v16 + 64);
  v72 = *(v16 + 80);
  v73[0] = *(v16 + 96);
  *(v73 + 14) = *(v16 + 110);
  v67 = *v16;
  v68 = *(v16 + 16);
  v69 = *(v16 + 32);
  v70 = *(v16 + 48);
  v23 = v8[2];
  v24 = *v8;
  v76[1] = v8[1];
  v76[2] = v23;
  v25 = v8[6];
  v27 = v8[3];
  v26 = v8[4];
  v76[5] = v8[5];
  v76[6] = v25;
  v76[3] = v27;
  v76[4] = v26;
  v76[0] = v24;
  v63 = v8[3];
  v64 = v8[4];
  v65 = v8[5];
  v66[0] = v8[6];
  v60 = *v8;
  v61 = v8[1];
  v62 = v8[2];
  outlined init with copy of PType(v74, v78);
  outlined init with copy of Interpreter.Storage.Types(v76, v78);
  PType.linearizedField(at:within:)(a2, &v60);
  v29 = v28;
  v77[4] = v64;
  v77[5] = v65;
  v77[6] = v66[0];
  v77[0] = v60;
  v77[1] = v61;
  v77[2] = v62;
  v77[3] = v63;
  outlined destroy of Interpreter.Storage.Types(v77);
  v78[4] = v71;
  v78[5] = v72;
  v79[0] = v73[0];
  *(v79 + 14) = *(v73 + 14);
  v78[0] = v67;
  v78[1] = v68;
  v78[2] = v69;
  v78[3] = v70;
  outlined destroy of PType(v78);
  v30 = *(a3 + 136);
  v31 = *v30;
  v32 = v30[2];
  v80[1] = v30[1];
  v81 = v32;
  v33 = v30[3];
  v34 = v30[4];
  v35 = v30[6];
  v84 = v30[5];
  v85 = v35;
  v82 = v33;
  v83 = v34;
  v80[0] = v31;
  if (*(v81 + 16) <= v29)
  {
    goto LABEL_31;
  }

  v36 = *(v81 + 4 * v29 + 32);
  if (v36 >= HIDWORD(v80[0]))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*&v80[0])
  {
    goto LABEL_37;
  }

  v37 = *&v80[0] + 120 * v36;
  v38 = *v37;
  v39 = *(v37 + 16);
  v40 = *(v37 + 48);
  v62 = *(v37 + 32);
  v63 = v40;
  v60 = v38;
  v61 = v39;
  v41 = *(v37 + 64);
  v42 = *(v37 + 80);
  v43 = *(v37 + 96);
  *(v66 + 14) = *(v37 + 110);
  v65 = v42;
  v66[0] = v43;
  v64 = v41;
  v57 = *(v37 + 64);
  v58 = *(v37 + 80);
  v59[0] = *(v37 + 96);
  *(v59 + 14) = *(v37 + 110);
  v53 = *v37;
  v54 = *(v37 + 16);
  v55 = *(v37 + 32);
  v56 = *(v37 + 48);
  outlined init with copy of Interpreter.Storage.Types(v80, &v67);
  outlined init with copy of PType(&v60, &v67);
  v44 = PType.localType(within:)(a3);
  v71 = v57;
  v72 = v58;
  v73[0] = v59[0];
  *(v73 + 14) = *(v59 + 14);
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  outlined destroy of PType(&v67);
  if (v44 && (*(*(v44 - 8) + 82) & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_27;
    }

    v45 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v45 != 2)
      {
        *(&v53 + 6) = 0;
        *&v53 = 0;
        goto LABEL_27;
      }

      v47 = *(a4 + 16);
      v48 = *(a4 + 24);
      a4 = __DataStorage._bytes.getter();
      if (a4)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v47, v49))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        a4 += v47 - v49;
      }

      if (!__OFSUB__(v48, v47))
      {
LABEL_25:
        MEMORY[0x26D69C520]();
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v45)
    {
      *&v53 = a4;
      WORD4(v53) = a5;
      BYTE10(v53) = BYTE2(a5);
      BYTE11(v53) = BYTE3(a5);
      BYTE12(v53) = BYTE4(a5);
      BYTE13(v53) = BYTE5(a5);
LABEL_27:
      closure #1 in ValueDescription.init(string:type:range:within:)(v44, v52);
      outlined destroy of Interpreter.Storage.Types(v80);
      result = outlined init with take of Any(v52, &v53);
      LOBYTE(v55) = 0;
      *(a7 + 32) = 0;
      v50 = v54;
      *a7 = v53;
      *(a7 + 16) = v50;
      goto LABEL_28;
    }

    if (a4 >> 32 >= a4)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(a4, __DataStorage._offset.getter()))
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = outlined destroy of Interpreter.Storage.Types(v80);
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = -1;
LABEL_28:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ByteString.description(ofType:field:within:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 136);
  v10 = v9[4];
  if (*(v10 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v11 = *(v10 + 4 * a1 + 32);
  if (v11 >= *(v9 + 3))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *v9;
  if (!v12)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v19 = (v12 + 120 * v11);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[3];
  v67[2] = v19[2];
  v67[3] = v22;
  v67[0] = v20;
  v67[1] = v21;
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[6];
  *(v68 + 14) = *(v19 + 110);
  v67[5] = v24;
  v68[0] = v25;
  v67[4] = v23;
  v64 = v19[4];
  v65 = v19[5];
  v66[0] = v19[6];
  *(v66 + 14) = *(v19 + 110);
  v60 = *v19;
  v61 = v19[1];
  v62 = v19[2];
  v63 = v19[3];
  outlined init with copy of PType(v67, v69);
  PType.linearizedField(named:within:)(a2, a3, a4);
  v27 = v26;
  v69[4] = v64;
  v69[5] = v65;
  v70[0] = v66[0];
  *(v70 + 14) = *(v66 + 14);
  v69[0] = v60;
  v69[1] = v61;
  v69[2] = v62;
  v69[3] = v63;
  outlined destroy of PType(v69);
  v28 = *(a4 + 136);
  v29 = *v28;
  v30 = v28[2];
  v71[1] = v28[1];
  v72 = v30;
  v31 = v28[3];
  v32 = v28[4];
  v33 = v28[6];
  v75 = v28[5];
  v76 = v33;
  v73 = v31;
  v74 = v32;
  v71[0] = v29;
  if (*(v72 + 16) <= v27)
  {
    goto LABEL_31;
  }

  v34 = *(v72 + 4 * v27 + 32);
  if (v34 >= HIDWORD(v71[0]))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*&v71[0])
  {
    goto LABEL_37;
  }

  v35 = *&v71[0] + 120 * v34;
  v36 = *v35;
  v37 = *(v35 + 16);
  v38 = *(v35 + 48);
  v58[2] = *(v35 + 32);
  v58[3] = v38;
  v58[0] = v36;
  v58[1] = v37;
  v39 = *(v35 + 64);
  v40 = *(v35 + 80);
  v41 = *(v35 + 96);
  *(v59 + 14) = *(v35 + 110);
  v58[5] = v40;
  v59[0] = v41;
  v58[4] = v39;
  v55 = *(v35 + 64);
  v56 = *(v35 + 80);
  v57[0] = *(v35 + 96);
  *(v57 + 14) = *(v35 + 110);
  v51 = *v35;
  v52 = *(v35 + 16);
  v53 = *(v35 + 32);
  v54 = *(v35 + 48);
  outlined init with copy of Interpreter.Storage.Types(v71, &v60);
  outlined init with copy of PType(v58, &v60);
  v42 = PType.localType(within:)(a4);
  v64 = v55;
  v65 = v56;
  v66[0] = v57[0];
  *(v66 + 14) = *(v57 + 14);
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v63 = v54;
  outlined destroy of PType(&v60);
  if (v42 && (*(*(v42 - 8) + 82) & 1) == 0)
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_27;
    }

    v43 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v43 != 2)
      {
        *(&v51 + 6) = 0;
        *&v51 = 0;
        goto LABEL_27;
      }

      v45 = *(a5 + 16);
      v46 = *(a5 + 24);
      a5 = __DataStorage._bytes.getter();
      if (a5)
      {
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v47))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        a5 += v45 - v47;
      }

      if (!__OFSUB__(v46, v45))
      {
LABEL_25:
        MEMORY[0x26D69C520]();
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v43)
    {
      *&v51 = a5;
      WORD4(v51) = a6;
      BYTE10(v51) = BYTE2(a6);
      BYTE11(v51) = BYTE3(a6);
      BYTE12(v51) = BYTE4(a6);
      BYTE13(v51) = BYTE5(a6);
LABEL_27:
      closure #1 in ValueDescription.init(string:type:range:within:)(v42, v50);
      outlined destroy of Interpreter.Storage.Types(v71);
      result = outlined init with take of Any(v50, &v51);
      LOBYTE(v53) = 0;
      *(a8 + 32) = 0;
      v48 = v52;
      *a8 = v51;
      *(a8 + 16) = v48;
      goto LABEL_28;
    }

    if (a5 >> 32 >= a5)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(a5, __DataStorage._offset.getter()))
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = outlined destroy of Interpreter.Storage.Types(v71);
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = -1;
LABEL_28:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static Attachment.construct(attachment:from:) in conformance ByteString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized static ByteString.construct(attachment:from:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance ByteString(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    return _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg589_s21SwiftUITracingSupport10ByteStringV7StorageO17withBufferPointeryxxSWXElFxSWXEfU_yt_Tg5SWxRi_zRi0_zlyytIsgyr_Tf1ncn_n(v4, v5, thunk for @callee_guaranteed (@unowned UnsafeRawBufferPointer) -> ()partial apply);
  }

  else
  {
    return a2(v4, v5);
  }
}

unint64_t lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>()
{
  result = lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>;
  if (!lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>);
  }

  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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

uint64_t _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg589_s21SwiftUITracingSupport10ByteStringV7StorageO17withBufferPointeryxxSWXElFxSWXEfU_yt_Tg5SWxRi_zRi0_zlyytIsgyr_Tf1ncn_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = a3(v9, v4);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFyt_Tg5039_s21SwiftUITracingSupport10ByteStringV7C43O17withBufferPointeryxxSWXElFxSWXEfU_yt_Tg5SWxRi_zRi0_zlyytIsgyr_Tf1nncn_n(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFyt_Tg5039_s21SwiftUITracingSupport10ByteStringV7C43O17withBufferPointeryxxSWXElFxSWXEfU_yt_Tg5SWxRi_zRi0_zlyytIsgyr_Tf1nncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x26D69C520]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return a4(v8, v14);
}

uint64_t specialized closure #1 in closure #1 in T_ModeDecl.model(within:)(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (a3 > 0xFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(result + 32) = a3;
  v4 = *(*(a4 + 176) + 136);
  v5 = v4[4];
  if (*(v5 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v5 + 4 * a2 + 32);
  if (v6 >= *(v4 + 3))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v4;
  if (v7)
  {
    v8 = *(v7 + 120 * v6 + 88);
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!(v8 >> 16))
      {
        *(result + 64) = v8;
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #2 in closure #1 in T_ModeDecl.model(within:)(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 176) + 136);
  v4 = v3[4];
  if (*(v4 + 16) <= a2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v4 + 4 * a2 + 32);
  if (v5 >= *(v3 + 3))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = *v3;
  if (v6)
  {
    v7 = *(v6 + 120 * v5 + 88);
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (!(v7 >> 16))
      {
        *(result + 24) = v7;
        return result;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static ByteString.construct(attachment:from:)(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    v2 = &a2[-result];
    if (a2 == result)
    {
      return 0;
    }

    else if (v2 <= 14)
    {
      return specialized Data.InlineData.init(_:)(result, a2);
    }

    else
    {
      v3 = type metadata accessor for __DataStorage();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (v2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v2;
      }

      else
      {
        return v2 << 32;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static T_AnyAttachmentV0.model(within:)(__int128 *a1)
{
  v2 = *(a1 + 22);
  v3 = v89;
  v4 = v2[9];
  v102 = v2[8];
  v103 = v4;
  v5 = v2[11];
  v104 = v2[10];
  v105 = v5;
  v6 = v2[5];
  v98 = v2[4];
  v99 = v6;
  v7 = v2[7];
  v100 = v2[6];
  v101 = v7;
  v8 = v2[1];
  v94 = *v2;
  v95 = v8;
  v9 = v2[3];
  v96 = v2[2];
  v97 = v9;
  specialized Interpreter.Iterator.iterate<A>()();
  LODWORD(v11) = v10;
  v12 = HIDWORD(v10);
  if (!readingDebug)
  {
    goto LABEL_14;
  }

  v13 = a1 + 7;
  v14 = *(a1 + 72);
  v92[0] = *(a1 + 56);
  v92[1] = v14;
  v93[0] = *(a1 + 88);
  *(v93 + 9) = *(a1 + 97);
  v15 = a1 + 11;
  v16 = a1 + 25;
  v17 = a1 + 13;
  v18 = *(a1 + 29);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v92);
    }

    v15 = (v19 + 32);
    v16 = (v19 + 44);
    v17 = (v19 + 48);
    v13 = v19;
  }

  v21 = *v13;
  if (!v21)
  {
    goto LABEL_51;
  }

  if (((*(*(v21 + 24 * *v20) + 48) >= 0) & a1[12]) != 1 || (v2[10] & 1) == 0)
  {
    goto LABEL_14;
  }

  LOBYTE(v22) = static os_log_type_t.default.getter();
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v23 = readingDebugLog;
    if (os_log_type_enabled(readingDebugLog, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v91[0] = v25;
      *v24 = 136315394;
      *&v86[16] = v102;
      *&v86[32] = v103;
      *&v86[48] = v104;
      *&v86[64] = v105;
      v83 = v98;
      v84 = v99;
      v85 = v100;
      *v86 = v101;
      *(&v80 + 1) = *(&v94 + 1);
      v81 = v95;
      *v82 = v96;
      *&v82[16] = v97;
      v26 = Interpreter.Storage.debugName.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v91);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *&v80 = __PAIR64__(v12, v11);
      type metadata accessor for T_AnyAttachmentV0(0);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v91);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_26C161000, v23, v22, "%s  %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v25, -1, -1);
      MEMORY[0x26D69EAB0](v24, -1, -1);
    }

LABEL_14:
    v22 = (a1 + 56);
    v32 = *(a1 + 72);
    v91[0] = *(a1 + 56);
    v91[1] = v32;
    v91[2] = *(a1 + 88);
    v33 = a1 + 11;
    v34 = a1 + 25;
    v35 = a1 + 13;
    v36 = *(a1 + 29);
    v37 = 8 * v36;
    *(v3 + 169) = *(a1 + 97);
    v38 = a1 + 7;
    v39 = a1 + 11;
    v40 = a1 + 25;
    v41 = a1 + 13;
    while (1)
    {
      v42 = *v41;
      if (v36 < *v40)
      {
        v43 = (*v39 + v37);
        if ((v43[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v42)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v36, 0, v91);
      }

      v39 = (v42 + 32);
      v40 = (v42 + 44);
      v41 = (v42 + 48);
      v38 = v42;
    }

    v44 = *v38;
    if (!v44)
    {
      goto LABEL_49;
    }

    if (*(*(v44 + 24 * *v43) + 96) != 2)
    {
      v45 = *(a1 + 72);
      v90[0] = *v22;
      v90[1] = v45;
      v90[2] = *(a1 + 88);
      *(v3 + 105) = *(a1 + 97);
      v46 = a1 + 13;
      v47 = a1 + 25;
      v48 = a1 + 11;
      for (i = a1 + 7; ; i = v50)
      {
        v50 = *v46;
        if (v36 < *v47)
        {
          v51 = (*v48 + v37);
          if ((v51[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v50)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v36, 0, v90);
        }

        v48 = (v50 + 32);
        v47 = (v50 + 44);
        v46 = (v50 + 48);
      }

      if (!*i)
      {
        goto LABEL_52;
      }

      v52 = *(*i + 24 * *v51);
      *(v52 + 72) = 0;
      *(v52 + 80) = 0;
      *(v52 + 88) = 0;
      *(v52 + 96) = 2;
      *(v52 + 104) = 0;
    }

    LOBYTE(v80) = 1;
    v53 = 0x100000000;
    Interpreter.Iterator.model(attachment:size:)(v53, v12);
    v54 = *(a1 + 72);
    v89[0] = *v22;
    v89[1] = v54;
    v89[2] = *(a1 + 88);
    v55 = *(a1 + 29);
    *(v3 + 41) = *(a1 + 97);
    v56 = a1 + 7;
    v57 = a1 + 11;
    v58 = a1 + 25;
    v59 = a1 + 13;
    while (1)
    {
      v60 = *v59;
      if (v55 < *v58)
      {
        v61 = (*v57 + 8 * v55);
        if ((v61[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v60)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v55, 0, v89);
      }

      v57 = (v60 + 32);
      v58 = (v60 + 44);
      v59 = (v60 + 48);
      v56 = v60;
    }

    if (!*v56)
    {
      goto LABEL_50;
    }

    result = *v56 + 24 * *v61;
    v3 = (v11 + 1);
    if (v11 != -1)
    {
      break;
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  if (*(*result + 68) != v3)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    v11 = *(a1 + 29);
    *v86 = *(a1 + 28);
    v63 = a1[5];
    v83 = a1[4];
    v84 = v63;
    v85 = a1[6];
    v64 = a1[1];
    v80 = *a1;
    v81 = v64;
    v65 = a1[3];
    *v82 = a1[2];
    *&v82[16] = v65;
    *&v86[24] = *(a1 + 136);
    *&v86[40] = *(a1 + 152);
    *&v86[56] = *(a1 + 168);
    *&v86[65] = *(a1 + 177);
    *&v86[8] = *(a1 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_26C328DC0;
    *&v86[4] = v11;
    v75 = xmmword_26C32DAD0;
    v76 = 1;
    v77 = 0;
    v78 = 0;
    v79 = 512;
    v67 = Interpreter.Iterator.describe(state:)(&v75);
    *(v66 + 56) = MEMORY[0x277D837D0];
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    print(_:separator:terminator:)();

    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v69 = v22[1];
    v80 = *v22;
    v81 = v69;
    *v82 = v22[2];
    *&v82[9] = *(v22 + 41);
    while (1)
    {
      v70 = *v35;
      if (v11 < *v34)
      {
        v71 = (*v33 + 8 * v11);
        if ((v71[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v70)
      {
        goto LABEL_53;
      }

      v33 = (v70 + 32);
      v34 = (v70 + 44);
      v35 = (v70 + 48);
      v22 = v70;
    }

    v72 = *v22;
    if (*v22)
    {
      while (1)
      {
        LODWORD(v75) = *(*(v72 + 24 * *v71) + 68);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v73);

        MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
        LODWORD(v75) = v3;
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v74);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, &v80);
  }

  return result;
}

uint64_t specialized add #1 <A>(definitions:to:_:) in closure #1 in T_ModeDecl.model(within:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v83 = a1;
  v84 = a5;
  v78 = a3;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a2;
  if (!a2)
  {
    return result;
  }

  v12 = 0;
  v13 = 0;
  v79 = a4;
  while (1)
  {
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_72;
    }

    v16 = (v83 + v12);
    v17 = *v16;
    v18 = v16[1];
    v85 = v16[3];
    v19 = *(v84 + 116);
    v20 = *(v84 + 176);
    v21 = (v20 + 40);
    v22 = *(v20 + 56);
    v111[0] = *(v20 + 40);
    v111[1] = v22;
    v112[0] = *(v20 + 72);
    v23 = (v20 + 72);
    v24 = (v20 + 84);
    v25 = (v20 + 88);
    v26 = 8 * v19;
    v88 = v20;
    v89 = v18;
    *(v112 + 9) = *(v20 + 81);
    v27 = (v20 + 40);
    v28 = (v20 + 72);
    v29 = v24;
    v30 = v25;
    v87 = v17;
    while (1)
    {
      v31 = *v30;
      if (v19 < *v29)
      {
        v32 = (*v28 + v26);
        if ((v32[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v19, 0, v111);
      }

      v28 = (v31 + 32);
      v29 = (v31 + 44);
      v30 = (v31 + 48);
      v27 = v31;
    }

    v33 = *v27;
    if (!v33)
    {
      goto LABEL_82;
    }

    result = v33 + 24 * *v32;
    v34 = *result;
    v35 = *(*result + 196);
    v36 = 0uLL;
    v86 = v15;
    if (!v35)
    {
LABEL_41:
      v50 = 0;
      v51 = 0;
      v47 = v79;
      goto LABEL_42;
    }

    v37 = *(v34 + 184);
    if (!v37)
    {
      goto LABEL_80;
    }

    v38 = v35 - 1;
    if (*(v37 + 32 * (v35 - 1)) >= v18)
    {
      break;
    }

LABEL_14:
    v39 = v21[1];
    v109[0] = *v21;
    v109[1] = v39;
    v110[0] = v21[2];
    *(v110 + 9) = *(v21 + 41);
    while (1)
    {
      v40 = *v25;
      if (v19 < *v24)
      {
        v41 = (*v23 + v26);
        if ((v41[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v40)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v19, 0, v109);
      }

      v23 = (v40 + 32);
      v24 = (v40 + 44);
      v25 = (v40 + 48);
      v21 = v40;
    }

    if (!*v21)
    {
      goto LABEL_84;
    }

    result = *v21 + 24 * *v41;
    v47 = v79;
    if (v38 >= *(*result + 196))
    {
      goto LABEL_74;
    }

    v48 = *(*result + 184);
    if (!v48)
    {
      goto LABEL_81;
    }

    v49 = (v48 + 32 * v38);
    v50 = *v49;
    v51 = *(v49 + 1);
    v36 = *(v49 + 1);
LABEL_42:
    v101 = 0;
    v90 = v19 | 0x200000000;
    v91 = v18 << 32;
    v92 = v50;
    v93 = v51;
    v94 = v36;
    v95 = 1;
    Interpreter.Iterator.init(_:kind:onEvent:)(v88, &v90, 0, 0, v96);
    Interpreter.Iterator.read()();
    v107[0] = v97;
    v107[1] = v98;
    v108[0] = *v99;
    *(v108 + 9) = *&v99[9];
    v54 = v97;
    v55 = *v99;
    result = v100;
    v56 = *&v99[16];
    if (v100 >= *&v99[12])
    {
      do
      {
LABEL_44:
        if (!v56)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v100, 0, v107);
        }

        v54 = *v56;
        v55 = v56[4];
        v58 = *(v56 + 11);
        v56 = v56[6];
      }

      while (v100 >= v58);
    }

    v57 = (v55 + 8 * v100);
    if (v57[1])
    {
      goto LABEL_44;
    }

    if (!v54)
    {
      goto LABEL_83;
    }

    result = v54 + 24 * *v57;
    v59 = *result;
    v60 = *(*result + 96);
    if (v60 == 2)
    {
      goto LABEL_76;
    }

    v61 = *(v59 + 104);
    v62 = *(v59 + 88);
    v102 = *(v59 + 72);
    v103 = v62;
    v104 = v60 & 0x101;
    v105 = HIDWORD(v60);
    v106 = v61 & 1;
    result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if (v64)
    {
      goto LABEL_77;
    }

    v65 = v63 - result;
    if (!result)
    {
      v65 = 0;
    }

    v90 = result;
    v91 = v65;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
    lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
    result = String.init<A>(bytes:encoding:)();
    if (!v66)
    {
      goto LABEL_78;
    }

    v67 = result;
    v68 = v66;
    result = specialized EvolutionTable.deallocate()();
    v69 = *(v47 + 12);
    if (v69)
    {
      v70 = 0;
      v71 = *v47;
      v72 = *v47;
      while (v71)
      {
        v73 = *(*v72 + 16);
        if (*v73 == v67 && v68 == v73[1])
        {
          goto LABEL_64;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_64;
        }

        ++v70;
        v72 += 24;
        if (v69 == v70)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_75;
    }

LABEL_63:

    v70 = specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(v47, v67, v68);

LABEL_64:
    v75 = v87;
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(v47 + 32, v87, v70);
    if (v70 >= *(v47 + 12))
    {
      goto LABEL_73;
    }

    if (!*v47)
    {
      goto LABEL_79;
    }

    v76 = *v47 + 24 * v70;
    *(v76 + 16) = v75;
    *(v76 + 20) = 0;
    specialized closure #2 in closure #1 in T_ModeDecl.model(within:)(*v76, v85, v81);

    v13 = v86;
    if (v86 >= v80)
    {
      return result;
    }

    v12 = v86 * v78;
    if ((v86 * v78) >> 64 != (v86 * v78) >> 63)
    {
      __break(1u);
      return result;
    }
  }

  v42 = v35 >> 1;
  v43 = *(v37 + 32 * (v35 >> 1));
  if (v35 != 1 && v43 != v18)
  {
    if (v18 >= v43)
    {
      v46 = v42 + 1;
      v45 = v18;
      v42 = v35;
    }

    else
    {
      v45 = v18;
      v46 = 0;
    }

    result = specialized Collection<>.binarySearch(for:)(v45, v46, v42, v37, *(v34 + 192) | (v35 << 32));
    if (v52)
    {
      v42 = v35 - 1;
    }

    else
    {
      v42 = result;
    }

    v18 = v89;
    v36 = 0uLL;
  }

  v53 = (v37 + 32 * v42);
  v38 = v42;
  while (v42 < v35)
  {
    if (v18 >= *v53)
    {
      goto LABEL_14;
    }

    if (!v38)
    {
      goto LABEL_41;
    }

    --v38;
    v53 -= 8;
    if (v38 > v35)
    {
      goto LABEL_71;
    }
  }

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
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

{
  v82 = a6;
  v84 = a1;
  v85 = a5;
  v80 = a3;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a2;
  if (!a2)
  {
    return result;
  }

  v12 = 0;
  v13 = 0;
  v79 = a4;
  while (1)
  {
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_72;
    }

    v16 = (v84 + v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v86 = v16[4];
    v87 = v19;
    v20 = *(v85 + 116);
    v21 = *(v85 + 176);
    v22 = (v21 + 40);
    v23 = *(v21 + 56);
    v113[0] = *(v21 + 40);
    v113[1] = v23;
    v114[0] = *(v21 + 72);
    v24 = (v21 + 72);
    v25 = (v21 + 84);
    v26 = (v21 + 88);
    v27 = 8 * v20;
    v90 = v21;
    v91 = v18;
    *(v114 + 9) = *(v21 + 81);
    v28 = (v21 + 40);
    v29 = (v21 + 72);
    v30 = v25;
    v31 = v26;
    v89 = v17;
    while (1)
    {
      v32 = *v31;
      if (v20 < *v30)
      {
        v33 = (*v29 + v27);
        if ((v33[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v32)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v113);
      }

      v29 = (v32 + 32);
      v30 = (v32 + 44);
      v31 = (v32 + 48);
      v28 = v32;
    }

    v34 = *v28;
    if (!v34)
    {
      goto LABEL_82;
    }

    result = v34 + 24 * *v33;
    v35 = *result;
    v36 = *(*result + 196);
    v37 = 0uLL;
    v88 = v15;
    if (!v36)
    {
LABEL_41:
      v50 = 0;
      v51 = 0;
      goto LABEL_42;
    }

    v38 = *(v35 + 184);
    if (!v38)
    {
      goto LABEL_80;
    }

    v39 = v36 - 1;
    if (*(v38 + 32 * (v36 - 1)) >= v18)
    {
      break;
    }

LABEL_14:
    v40 = v22[1];
    v111[0] = *v22;
    v111[1] = v40;
    v112[0] = v22[2];
    *(v112 + 9) = *(v22 + 41);
    a4 = v79;
    while (1)
    {
      v41 = *v26;
      if (v20 < *v25)
      {
        v42 = (*v24 + v27);
        if ((v42[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v41)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v111);
      }

      v24 = (v41 + 32);
      v25 = (v41 + 44);
      v26 = (v41 + 48);
      v22 = v41;
    }

    if (!*v22)
    {
      goto LABEL_84;
    }

    result = *v22 + 24 * *v42;
    if (v39 >= *(*result + 196))
    {
      goto LABEL_74;
    }

    v48 = *(*result + 184);
    if (!v48)
    {
      goto LABEL_81;
    }

    v49 = (v48 + 32 * v39);
    v50 = *v49;
    v51 = *(v49 + 1);
    v37 = *(v49 + 1);
LABEL_42:
    v103 = 0;
    v92 = v20 | 0x200000000;
    v93 = v18 << 32;
    v94 = v50;
    v95 = v51;
    v96 = v37;
    v97 = 1;
    Interpreter.Iterator.init(_:kind:onEvent:)(v90, &v92, 0, 0, v98);
    Interpreter.Iterator.read()();
    v109[0] = v99;
    v109[1] = v100;
    v110[0] = *v101;
    *(v110 + 9) = *&v101[9];
    v54 = v99;
    v55 = *v101;
    result = v102;
    v56 = *&v101[16];
    if (v102 >= *&v101[12])
    {
      do
      {
LABEL_44:
        if (!v56)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v102, 0, v109);
        }

        v54 = *v56;
        v55 = v56[4];
        v58 = *(v56 + 11);
        v56 = v56[6];
      }

      while (v102 >= v58);
    }

    v57 = (v55 + 8 * v102);
    if (v57[1])
    {
      goto LABEL_44;
    }

    if (!v54)
    {
      goto LABEL_83;
    }

    result = v54 + 24 * *v57;
    v59 = *result;
    v60 = *(*result + 96);
    if (v60 == 2)
    {
      goto LABEL_76;
    }

    v61 = *(v59 + 104);
    v62 = *(v59 + 88);
    v104 = *(v59 + 72);
    v105 = v62;
    v106 = v60 & 0x101;
    v107 = HIDWORD(v60);
    v108 = v61 & 1;
    result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if (v64)
    {
      goto LABEL_77;
    }

    v65 = v63 - result;
    if (!result)
    {
      v65 = 0;
    }

    v92 = result;
    v93 = v65;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
    lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
    result = String.init<A>(bytes:encoding:)();
    if (!v66)
    {
      goto LABEL_78;
    }

    v67 = result;
    v68 = v66;
    result = specialized EvolutionTable.deallocate()();
    v69 = *(a4 + 12);
    if (v69)
    {
      v70 = 0;
      v71 = *a4;
      v72 = *a4;
      while (v71)
      {
        v73 = *(*v72 + 40);
        if (*v73 == v67 && v68 == v73[1])
        {
          goto LABEL_64;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_64;
        }

        ++v70;
        v72 += 24;
        if (v69 == v70)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_75;
    }

LABEL_63:

    specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(a4, v67, v68);
    v70 = v75;

LABEL_64:
    v76 = v89;
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v89, v70);
    if (v70 >= *(a4 + 12))
    {
      goto LABEL_73;
    }

    if (!*a4)
    {
      goto LABEL_79;
    }

    v77 = *a4 + 24 * v70;
    *(v77 + 16) = v76;
    *(v77 + 20) = 0;
    specialized closure #1 in closure #1 in T_ModeDecl.model(within:)(*v77, v87, v86, v82);

    v13 = v88;
    if (v88 >= v81)
    {
      return result;
    }

    v12 = v88 * v80;
    if ((v88 * v80) >> 64 != (v88 * v80) >> 63)
    {
      __break(1u);
      return result;
    }
  }

  v43 = v36 >> 1;
  v44 = *(v38 + 32 * (v36 >> 1));
  if (v36 != 1 && v44 != v18)
  {
    if (v18 >= v44)
    {
      v47 = v43 + 1;
      v46 = v18;
      v43 = v36;
    }

    else
    {
      v46 = v18;
      v47 = 0;
    }

    result = specialized Collection<>.binarySearch(for:)(v46, v47, v43, v38, *(v35 + 192) | (v36 << 32));
    if (v52)
    {
      v43 = v36 - 1;
    }

    else
    {
      v43 = result;
    }

    v18 = v91;
    v37 = 0uLL;
  }

  v53 = (v38 + 32 * v43);
  v39 = v43;
  a4 = v79;
  while (v43 < v36)
  {
    if (v18 >= *v53)
    {
      goto LABEL_14;
    }

    if (!v39)
    {
      goto LABEL_41;
    }

    --v39;
    v53 -= 8;
    if (v39 > v36)
    {
      goto LABEL_71;
    }
  }

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
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t outlined copy of ByteString.Storage(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawBufferPointer) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t instantiation function for generic protocol witness table for KeypathID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KeypathID and conformance KeypathID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KeypathID and conformance KeypathID()
{
  result = lazy protocol witness table cache variable for type KeypathID and conformance KeypathID;
  if (!lazy protocol witness table cache variable for type KeypathID and conformance KeypathID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeypathID and conformance KeypathID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeypathID and conformance KeypathID;
  if (!lazy protocol witness table cache variable for type KeypathID and conformance KeypathID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeypathID and conformance KeypathID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TypeID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TypeID and conformance TypeID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TypeID and conformance TypeID()
{
  result = lazy protocol witness table cache variable for type TypeID and conformance TypeID;
  if (!lazy protocol witness table cache variable for type TypeID and conformance TypeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeID and conformance TypeID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypeID and conformance TypeID;
  if (!lazy protocol witness table cache variable for type TypeID and conformance TypeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeID and conformance TypeID);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ByteString(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ByteString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t RefProtocol.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a3 + 56))(a2, a3);
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t static RefProtocol.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v48[2] = *(*(v6 + 24) + 16);
  v48[0] = swift_getAssociatedTypeWitness();
  v7 = *(*(v48[0] - 8) + 64);
  MEMORY[0x28223BE20](v48[0]);
  v48[1] = v48 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v49 = v48 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v48 - v17;
  v51 = *(a4 + 56);
  v51(a3, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v53 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v19)
    {
      if (v20 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v21 = v49;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v22 = *(*(v6 + 32) + 8);
        v23 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v10 + 8))(v21, v9);
        if ((v23 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v25 = v49;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v26 = *(*(v6 + 32) + 8);
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v10 + 8))(v25, v9);
      if (v27)
      {
        goto LABEL_48;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v20 < 64)
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
    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v30 = v49;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v31 = *(*(v6 + 32) + 8);
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v10 + 8))(v30, v9);
    if (v32)
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

  if (v29 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v50 = dispatch thunk of BinaryInteger._lowWord.getter();
  v33 = *(v10 + 8);
  v33(v18, v9);
  v51(a3, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v53 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_37;
      }

LABEL_31:
      lazy protocol witness table accessor for type Int and conformance Int();
      v36 = v49;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v37 = *(*(v6 + 32) + 8);
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v33)(v36, v9);
      if (v38)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v34)
      {
        if (v35 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v39 = v49;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v40 = *(*(v6 + 32) + 8);
        v41 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v33)(v39, v9);
        if ((v41 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_49:
        __break(1u);
        return result;
      }

      if (v35 < 64)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v42)
    {
      if (v43 <= 64)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v43 >= 64)
    {
LABEL_40:
      lazy protocol witness table accessor for type Int and conformance Int();
      v44 = v49;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v45 = *(*(v6 + 32) + 8);
      v46 = dispatch thunk of static Comparable.< infix(_:_:)();
      v33(v44, v9);
      if ((v46 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v47 = dispatch thunk of BinaryInteger._lowWord.getter();
  v33(v14, v9);
  return v50 < v47;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UnsafeTreeNodeRef.Typed<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RefProtocol.describe(state:)(WitnessTable, a2, WitnessTable);
}

uint64_t RefProtocol.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v12 - v8;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  (*(a3 + 56))(a2, a3);
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v12[0];
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UnsafeTree<A, B>.Symbol.Ref(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RefProtocol.describe(state:)(WitnessTable, a2, WitnessTable);
}

uint64_t RefProtocol.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = *(AssociatedTypeWitness - 8);
  if (*(result + 64) == *(*(a2 - 8) + 64))
  {
    v9 = *(AssociatedTypeWitness - 8);
    (*(*(a2 - 8) + 16))(a3, a1, a2);
    v8 = *(v9 + 8);

    return v8(a1, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized UnsafeTree.symbol(hashed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, int *a3@<X8>)
{
  v7 = v3[1];
  v18 = *v3;
  v19 = v7;
  v20 = *(v3 + 4);
  v9 = specialized UnsafeTree.subjectsMap.read(v17);
  if (*(v8 + 16) && (v10 = v8, v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 4 * v11);
    result = (v9)(v17, 0);
    *a3 = v13;
  }

  else
  {
    (v9)(v17, 0);
    Hasher.init(_seed:)();
    if (a2)
    {
      if (a1)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      MEMORY[0x26D69DBC0](v15);
    }

    else
    {
      MEMORY[0x26D69DBC0](0);
      MEMORY[0x26D69DC00](a1);
    }

    v16 = Hasher._finalize()();
    return specialized UnsafeTree.new(element:identity:)(a1, a2 & 1, v16, a3);
  }

  return result;
}

uint64_t static RefProtocol.invalid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static FixedWidthInteger.max.getter();
  if (v6 == *(*(a1 - 8) + 64))
  {
    (*(*(a1 - 8) + 16))(a2, v8, a1);
    return (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCy21SwiftUITracingSupport13TransactionIDVSayAC8EventRefVGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport13TransactionIDVSayAC8EventRefVGGMR);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy21SwiftUITracingSupport13TransactionIDVSayAC8EventRefVGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport13TransactionIDVSayAC8EventRefVGGMR);
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    v9 = *v2;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }
  }

  else
  {
    v4 = a1;
    v5 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, a2, v7);
    *v2 = v15;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

{
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v17 - v10;
  v12 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v15 = *(v6 - 8);
  (*(v15 + 16))(v11, a1, v6);
  (*(v15 + 56))(v11, 0, 1, v6);
  return Dictionary.subscript.setter();
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF21SwiftUITracingSupport7TreeRefV_s5NeverOs16IndexingIteratorVyAD11UnsafeArrayVyAD0F5ValueVGGTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v8 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  return specialized Array.append<A>(contentsOf:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, unint64_t a2, uint64_t (*a3)(void), unint64_t a4)
{
  v6 = HIDWORD(a2);
  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + HIDWORD(a2);
  if (__OFADD__(v8, HIDWORD(a2)))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a3;
  v11 = a2;
  v12 = result;
  v13 = *v4;
  if (!swift_isUniquelyReferenced_nonNull_native() || (v14 = *(v7 + 24) >> 1, v14 < v9))
  {
    v7 = v5();
    v14 = *(v7 + 24) >> 1;
  }

  v15 = *(v7 + 16);
  v16 = v14 - v15;
  result = (a4)(&v29, v7 + 4 * v15 + 32, v14 - v15, v12, v11);
  if (result < v6)
  {
    goto LABEL_12;
  }

  if (result)
  {
    v19 = *(v7 + 16);
    v20 = __OFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      __break(1u);
LABEL_18:
      v11 += v17;
      v22 = v18;
      goto LABEL_19;
    }

    *(v7 + 16) = v21;
  }

  if (result != v16)
  {
    goto LABEL_10;
  }

LABEL_13:
  a4 = v30;
  if (v31 == v30)
  {
LABEL_10:
    *v4 = v7;
    return result;
  }

  if (v31 >= v30)
  {
    goto LABEL_34;
  }

  if (v29)
  {
    v11 = *(v7 + 16);
    v22 = v31 + 1;
    v21 = *(v29 + 4 * v31);
    v12 = -v30;
    while (1)
    {
      v23 = *(v7 + 24);
      v24 = v23 >> 1;
      if ((v23 >> 1) < v11 + 1)
      {
        v27 = v21;
        result = (v5)(v23 > 1);
        v21 = v27;
        v7 = result;
        v28 = *(result + 24) >> 1;
        v25 = v11 - v28;
        if (v11 < v28)
        {
LABEL_22:
          v17 = 0;
          while (1)
          {
            *(v7 + 4 * v11 + 32 + 4 * v17) = v21;
            if (!(v12 + v22 + v17))
            {
              *(v7 + 16) = v11 + v17 + 1;
              goto LABEL_10;
            }

            v26 = v22 + v17;
            if (v22 + v17 >= a4)
            {
              break;
            }

            if (!v29)
            {
              goto LABEL_35;
            }

            v18 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_33;
            }

            v21 = *(v29 + 4 * v22 + 4 * v17++);
            if (!(v25 + v17))
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }
      }

      else
      {
        v25 = v11 - v24;
        if (v11 < v24)
        {
          goto LABEL_22;
        }
      }

LABEL_19:
      *(v7 + 16) = v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeTree.deallocate()()
{
  return specialized UnsafeTree.deallocate()(&_sSDy21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGAA06UnsafeE0V6SymbolV3RefVyAhA9MergeOnceVyAA0gE5StatsVG__GGMd, &_sSDy21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGAA06UnsafeE0V6SymbolV3RefVyAhA9MergeOnceVyAA0gE5StatsVG__GGMR, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0kE5StatsVGGGMd, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0kE5StatsVGGGMR);
}

{
  return specialized UnsafeTree.deallocate()(&_sSDy21SwiftUITracingSupport20AggregateTreeElementOyAA04ViewE0V8TElementOGAA06UnsafeE0V6SymbolV3RefVyAhA9MergeOnceVyAA05EventE5StatsVG__GGMd, &_sSDy21SwiftUITracingSupport20AggregateTreeElementOyAA04ViewE0V8TElementOGAA06UnsafeE0V6SymbolV3RefVyAhA9MergeOnceVyAA05EventE5StatsVG__GGMR, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA04ViewE0V8TElementOGAA9MergeOnceVyAA05EventE5StatsVGGGMd, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA09AggregateE7ElementOyAA04ViewE0V8TElementOGAA9MergeOnceVyAA05EventE5StatsVGGGMR);
}

uint64_t specialized UnsafeTree.deallocate()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = **v4;
  if (v10)
  {
    MEMORY[0x26D69EAB0](v10, -1, -1);
    *v9 = 0;
  }

  v11 = v9[2];
  if (v11)
  {
    MEMORY[0x26D69EAB0](v11, -1, -1);
    v9[2] = 0;
  }

  v12 = v9[4];
  if (!v12)
  {
    goto LABEL_12;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v9[4], a1, a2);
  MEMORY[0x26D69EAB0](v12, -1, -1);
  v9[4] = 0;
  v13 = v4[1];
  if (v13)
  {
    MEMORY[0x26D69EAB0](v13, -1, -1);
    v4[1] = 0;
  }

  v14 = v4[3];
  if (v14)
  {
    MEMORY[0x26D69EAB0](v14, -1, -1);
    v4[3] = 0;
  }

  v15 = v9[5];
  if (v15)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v9[5], a3, a4);
    result = MEMORY[0x26D69EAB0](v15, -1, -1);
    v9[5] = 0;
  }

  else
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeTree.traverse(visitor:revisit:)(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(unsigned int *, void **, _OWORD *), uint64_t a5, void **a6)
{
  v24 = a1;
  v9 = *(a3 + 48);
  v25[2] = *(a3 + 32);
  v25[3] = v9;
  v26 = *(a3 + 64);
  v27 = *(a3 + 80);
  v10 = *(a3 + 16);
  v25[0] = *a3;
  v25[1] = v10;
  a4(&v24, a6, v25);
  v11 = **a6 + 48 * a1;
  result = specialized Sequence.reversed()(*(v11 + 24), *(v11 + 32));
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v15 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v23 = a3;
      v16 = *&v25[0];
      v17 = v27;
      v18 = 32;
      while (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = *(v13 + v18);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v16);
          v16 = result;
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v15;
        v18 += 4;
        ++v17;
        if (!--v14)
        {

          *v23 = v16;
          v23[10] = v17;
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t specialized UnsafeTree.describe(state:)(__int128 *a1)
{
  v20[0] = 40;
  v20[1] = 0xE100000000000000;
  v2 = *(a1 + 3);
  v3 = a1[1];
  v18 = *a1;
  v19[0] = v3;
  *(v19 + 10) = *(a1 + 26);
  if ((v2 & 2) == 0)
  {
    *(&v19[0] + 1) = v2 | 2;
  }

  v4 = MEMORY[0x28223BE20](a1);
  v17[12] = v20;
  v17[13] = &v18;
  v5 = MEMORY[0x28223BE20](v4);
  v17[8] = v6;
  if (!*(*v1 + 12))
  {
    return v20[0];
  }

  v7 = MEMORY[0x28223BE20](v5);
  v17[2] = partial apply for specialized closure #1 in UnsafeTree.describe(state:);
  v17[3] = v8;
  v17[4] = v1;
  MEMORY[0x28223BE20](v7);
  v16[2] = EventTreeStats.count.modify;
  v16[3] = v9;
  v16[4] = v1;
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for specialized closure #1 in UnsafeTree.traverse(visitor:revisit:);
  *(v12 + 24) = v17;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for specialized closure #2 in UnsafeTree.traverse(visitor:revisit:);
  *(v13 + 24) = v16;
  specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v13, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v12, 1, partial apply for specialized closure #3 in UnsafeTree.traverse(visitor:revisit:), v10, 0);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v20[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeTree.describe(state:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x26D69CDB0](10, 0xE100000000000000);
  v9 = *a2;
  v10 = 48 * a1;
  v11 = *(*a2 + 16) + 40 * *(**a2 + v10);
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  v39 = v12;
  LOBYTE(v40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(v38, v44);
    v39 = 40;
    v40 = 0xE100000000000000;
    v13 = v46;
    v14 = __swift_project_boxed_opaque_existential_1(v44, v46);
    v15 = *(a5 + 16);
    v16 = *(a5 + 40);
    *v38 = *a5;
    v38[16] = v15;
    *&v38[24] = *(a5 + 24);
    *&v38[40] = v16;
    v17 = InspectionState.describe<A>(_:)(v14, v13, *(&v13 + 1));
    MEMORY[0x26D69CDB0](v17);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v39, v40);

    result = __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    memset(v38, 0, 40);
    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v38, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
    *v38 = 40;
    *&v38[8] = 0xE100000000000000;
    if (__OFSUB__(*a5, 1))
    {
      goto LABEL_8;
    }

    v19 = v9[2] + 40 * *(*v9 + 48 * a1);
    v20 = *(v19 + 8);
    v21 = *v19;
    v22 = *(a5 + 40);
    v23 = *(a5 + 16);
    v24 = *(a5 + 8);
    v44[0] = *a5 - 1;
    v44[1] = v24;
    v45 = v23;
    v46 = *(a5 + 24);
    v47 = v22;
    v39 = v21;
    LOBYTE(v40) = v20;
    v25 = String.init<A>(describing:)();
    v26 = specialized InspectionState.wrapDescription<A>(_:)(v25);
    v28 = v27;

    MEMORY[0x26D69CDB0](v26, v28);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    MEMORY[0x26D69CDB0](*v38, *&v38[8]);
  }

  v29 = *(a3 + 64);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *a5 = v31;
    v32 = *(a5 + 8);
    v33 = *(a5 + 16);
    v34 = *(a5 + 40);
    v35 = (*v9 + v10);
    v36 = *(a5 + 24);
    *v38 = *v35;
    *&v38[16] = v35[1];
    *&v38[28] = *(v35 + 28);
    v39 = v31 - 1;
    v40 = v32;
    v41 = v33;
    v42 = v36;
    v43 = v34;
    v37 = specialized InspectionState.wrapDescription<A>(_:)();
    MEMORY[0x26D69CDB0](v37);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t RefProtocol.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v13 - v9;
  v13[1] = a1;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  lazy protocol witness table accessor for type Int and conformance Int();
  result = dispatch thunk of BinaryInteger.init<A>(_:)();
  if (v8 == *(*(a2 - 8) + 64))
  {
    (*(*(a2 - 8) + 16))(a3, v10, a2);
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzAA0dE9_StatefulR_rlE3oldACyxq_GAGSg_tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 && *(v3 + 12))
  {
    v4 = *v3;
    v5 = v4[18];
    v6 = v4[19];
    v7 = v4[20];
    LOBYTE(v4) = v4[21];
    LOBYTE(v26) = 0;
    _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5((v5 << 16) | (v7 << 32) | (v6 << 24) | (v4 << 40), &v26);
    v8 = v26;
    v9 = v27;
    v10 = v28;
    LODWORD(v11) = HIDWORD(v28);
    result = v29;
    LODWORD(v13) = v30;
    LODWORD(v14) = HIDWORD(v30);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    v16 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v18 = v17;
    v19 = HIDWORD(v17);
    v20 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(v15);
    v21 = MEMORY[0x277D84F98];
    v26 = v16;
    v27 = __PAIR64__(v19, v18);
    v28 = v20;
    v29 = v22;
    v30 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
    v31 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v21);
    v8 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v26);
    v9 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v15, v23);
    v10 = v24;
    v11 = HIDWORD(v24);
    result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v15, v25);
    v14 = HIDWORD(v13);
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 20) = v11;
  *(a2 + 24) = result;
  *(a2 + 32) = v13;
  *(a2 + 36) = v14;
  return result;
}

void specialized AggregateTreeElement.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    v3 = v0[2];
    MEMORY[0x26D69DBC0](1);
    Hasher.init()();
    MEMORY[0x26D69DBC0](v1);
    MEMORY[0x26D69DBC0](v3);
    v4 = Hasher.finalize()();
    MEMORY[0x26D69DBC0](v4);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
  }
}

void (*Snapshot.subscript.read(void (**a1)(void **a1), unsigned int a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x80uLL);
  }

  *a1 = result;
  if (*(a3 + 44) <= a2)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a3 + 32);
    if (v7)
    {
      v8 = (v7 + (a2 << 7));
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      *(result + 2) = v8[2];
      *(result + 3) = v11;
      *result = v9;
      *(result + 1) = v10;
      v12 = v8[4];
      v13 = v8[5];
      v14 = v8[7];
      *(result + 6) = v8[6];
      *(result + 7) = v14;
      *(result + 4) = v12;
      *(result + 5) = v13;
      return Snapshot.subscript.read;
    }
  }

  __break(1u);
  return result;
}

{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xA8uLL);
  }

  *a1 = result;
  if (*(a3 + 124) <= a2)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a3 + 112);
    if (v7)
    {
      v8 = (v7 + 168 * a2);
      v9 = *v8;
      v10 = v8[2];
      *(result + 1) = v8[1];
      *(result + 2) = v10;
      *result = v9;
      v11 = v8[3];
      v12 = v8[4];
      v13 = v8[6];
      *(result + 5) = v8[5];
      *(result + 6) = v13;
      *(result + 3) = v11;
      *(result + 4) = v12;
      v14 = v8[7];
      v15 = v8[8];
      v16 = v8[9];
      *(result + 20) = *(v8 + 20);
      *(result + 8) = v15;
      *(result + 9) = v16;
      *(result + 7) = v14;
      return Snapshot.subscript.read;
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.subscript.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t Event.RelativesSequnece.isEmpty.getter(uint64_t result, unint64_t a2, __int16 a3)
{
  v3 = HIDWORD(a2);
  if (!HIDWORD(a2))
  {
    return 1;
  }

  v4 = result;
  while (v3)
  {
    if (!result)
    {
      goto LABEL_16;
    }

    v5 = *v4;
    if (((a3 & 0xC000) == 0 || (v5 & (a3 & 0xC000 ^ 0xC000)) == 0) && ((a3 & 0x2000) == 0 || (v5 & 0x2000) != 0))
    {
      if ((a3 & 0x1FFF) != 0)
      {
        if ((a3 & 0x1FFF & v5) != 0)
        {
          return 0;
        }
      }

      else if (a3)
      {
        return 0;
      }
    }

    v4 += 4;
    if (!--v3)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void Event.id.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 25);
  v6 = *(v1 + 28);
  v7 = *(v1 + 32);
  LOBYTE(v15[0]) = *(v1 + 24);
  v8 = HeterogeneousBuffer.type(at:)(0, v3, v4, v15[0], v7);
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = v9;
    v11 = HeterogeneousBuffer.index(after:)(0, v3, v4, v15[0], v7);
    v12 = HeterogeneousBuffer.type(at:)(v11, v3, v4, v15[0], v7);
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      project #1 <A, B>(_:_:) in Event.id.getter(v12, v1, v8, v10, v13, v15);
      v14 = v15[1];
      *a1 = v15[0];
      *(a1 + 16) = v14;
      *(a1 + 32) = v16;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t Event.RelativesSequnece.Iterator.next()()
{
  v1 = *(v0 + 3);
  v2 = v0[2];
  if (v2 == v1)
  {
LABEL_2:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 32);
  }

  else
  {
    v6 = *v0;
    v7 = (*v0 + 8 * v2 + 4);
    while (v2 < v1)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_21;
      }

      v9 = *(v7 - 2);
      v3 = *v7;
      v0[2] = v8;
      v10 = *(v0 + 12);
      v11 = (v10 & 0xC000) == 0 || ((v10 & 0xC000 ^ 0xC000) & v9) == 0;
      if (v11 && ((v0[3] & 0x2000) == 0 || (v9 & 0x2000) != 0))
      {
        if ((v0[3] & 0x1FFF) != 0)
        {
          if ((v9 & v10 & 0x1FFF) != 0)
          {
LABEL_19:
            v4 = 0;
            return v3 | (v4 << 32);
          }
        }

        else if (*(v0 + 12))
        {
          goto LABEL_19;
        }
      }

      ++v2;
      v7 += 2;
      if (v8 == v1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

unint64_t Event.subscript.getter(unint64_t result)
{
  v2 = *(v1 + 124);
  if (v2)
  {
    v3 = *(v1 + 112);
    v4 = (v3 + 4);
    while (v3)
    {
      v5 = *(v4 - 2);
      if (((result & 0xC000) == 0 || (v5 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v5 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((result & 0x1FFF & v5) != 0)
          {
LABEL_12:
            v6 = 0;
            v2 = *v4;
            return v2 | (v6 << 32);
          }
        }

        else if (result)
        {
          goto LABEL_12;
        }
      }

      v4 += 2;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v2 = 0;
LABEL_14:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  return result;
}

void (*Snapshot.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0xF8uLL);
  }

  v7 = v6;
  *a1 = v6;
  result = Snapshot.subscript.read((v6 + 208), HIDWORD(a2), a3);
  v7[30] = result;
  if ((a2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (a2 < *(*v9 + 16))
  {
    memmove(v7, (*v9 + 208 * a2 + 32), 0xD0uLL);
    return Snapshot.subscript.read;
  }

  __break(1u);
  return result;
}

void Snapshot.subscript.read(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 240))();

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v1[12] = *(*a1 + 32);
  v1[13] = v2;
  v1[14] = v1[4];
  v3 = v1[1];
  v1[10] = *v1;
  v1[11] = v3;
  outlined destroy of GraphContext((v1 + 10));

  free(v1);
}

{
  v1 = *a1;
  (*(*a1 + 344))();

  free(v1);
}

{
  v1 = *a1;
  (*(*a1 + 160))();

  free(v1);
}

BOOL static Event.Id.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

_DWORD *Event.hasTree(within:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v6 = *(v1 + 32);
  v5 = *(v1 + 24);
  v7 = 256;
  if (!*(v1 + 25))
  {
    v7 = 0;
  }

  v8 = v7 | (*(v1 + 28) << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v4, v3, v7 | *(v1 + 24), v6);
  if (result)
  {
    if (*result < *(a1 + 84))
    {
      v10 = *(a1 + 72);
      if (v10)
      {
        v11 = v10 + 312 * *result;
        if ((*(v11 + 136) & 1) == 0)
        {
          return *(v11 + 128);
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v4, v3, v8 | v5, v6);
  if (result)
  {
    v12 = 0;
    v13 = *(v1 + 124);
    v14 = *(v1 + 112);
    while (v13 != v12)
    {
      if (!*(v1 + 112))
      {
        goto LABEL_40;
      }

      ++v12;
      v15 = *v14;
      v14 += 4;
      if ((v15 & 0x80808080) == 0x80)
      {
        v16 = *(v14 - 1);
        if (v13 != v12)
        {
          while (v12 < v13)
          {
            if ((*v14 & 0x8080) == 0x80)
            {
              goto LABEL_41;
            }

            ++v12;
            v14 += 4;
            if (v13 == v12)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_34;
        }

LABEL_17:
        if (v16 >= *(a1 + 44))
        {
          goto LABEL_35;
        }

        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = (v17 + (v16 << 7));
          v27 = v18[4];
          v28 = v18[5];
          v29 = v18[6];
          v30 = v18[7];
          v23 = *v18;
          v24 = v18[1];
          v25 = v18[2];
          v26 = v18[3];
          return Event.hasTree(within:)(a1);
        }

        goto LABEL_44;
      }
    }

    goto LABEL_39;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v4, v3, v8 | v5, v6);
  if (result)
  {
    if (*result >= *(a1 + 148))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v19 = *(a1 + 136);
    if (!v19)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v11 = v19 + 80 * *result;
    if ((*(v11 + 60) & 1) == 0)
    {
LABEL_29:
      v21 = *(v11 + 56);
      if (v21 < *(a1 + 124))
      {
        v22 = *(a1 + 112);
        if (v22)
        {
          return (*(v22 + 168 * v21 + 64) << 32);
        }

        goto LABEL_47;
      }

      goto LABEL_38;
    }
  }

  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v4, v3, v8 | v5, v6, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
  if (!result)
  {
    specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v4, v3, v8 | v5, v6);
    return 0;
  }

  if (*result >= *(a1 + 84))
  {
    goto LABEL_37;
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    v11 = v20 + 312 * *result;
    if ((*(v11 + 136) & 1) == 0)
    {
      return *(v11 + 128);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void Tree.cache.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v3;
    v4 = *(v2 + 32);
  }

  else
  {
    *a1 = 0;
    *(a1 + 4) = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 18) = 1;
    *(a1 + 24) = 0;
    v4 = 513;
  }

  *(a1 + 32) = v4;
}

__n128 Tree.cache.setter(uint64_t a1)
{
  v2 = *(v1 + 200);
  if (v2)
  {
    result = *a1;
    v4 = *(a1 + 16);
    *v2 = *a1;
    *(v2 + 16) = v4;
    *(v2 + 32) = *(a1 + 32);
  }

  return result;
}

uint64_t Tree.parent(_:within:unabstracting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = v8[10];
  v21 = v8[11];
  v22 = v8[12];
  v16 = v8[6];
  v17 = v8[7];
  v18 = v8[8];
  v19 = v8[9];
  v12 = v8[2];
  v13 = v8[3];
  v14 = v8[4];
  v15 = v8[5];
  v10 = *v8;
  v11 = v8[1];
  v23 = a2;
  return specialized Tree.parent(_:within:unabstracting:)(a1, &v23, a3, a4, a5, a6, a7, a8);
}

{
  return specialized Tree.parent(_:within:unabstracting:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t (*Snapshot.events.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);
  return EventTreeStats.count.modify;
}

uint64_t Event.interval.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 25);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  LOBYTE(v15) = *(v0 + 24);
  v9 = v3 == 0;
  v6 = 256;
  if (v9)
  {
    v6 = 0;
  }

  v7 = v6 | (v5 << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v1, v2, v6 | v15, v4);
  v9 = v5 == updated && v4 == HIDWORD(updated);
  if (!v9)
  {
    if (HIDWORD(updated) >= v4)
    {
      __break(1u);
    }

    else if ((v15 & 1) == 0)
    {
      if (v1)
      {
        v10 = v1 + updated;
        result = *(v10 + 8);
        v12 = *(v10 + 16);
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v7 | v15, v4, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
  if (!v13)
  {
LABEL_18:
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v20 = v15;
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v15 = xmmword_26C32DAD0;
    v16 = 1;
    v17 = 0;
    v18 = 0;
    v19 = 512;
    v14 = Event.describe(state:)(&v15);
    MEMORY[0x26D69CDB0](v14);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return *v13;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV5FieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 6);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 6);
      v10 = *(v3 - 1);
      v11 = *v3;
      if (v6 == -1 && v9 == -1)
      {
        if (v7 != v10 || v8 != v11)
        {
          return 0;
        }
      }

      else
      {
        if (v6 != v9)
        {
          return 0;
        }

        v13 = *(v4 - 3) == *(v3 - 3) && v7 == v10;
        if (!v13 || v8 != v11)
        {
          return 0;
        }
      }

      v4 += 8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static PType.Pattern.IsA.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV9ParameterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 52);
    v4 = (a2 + 52);
    do
    {
      v7 = *(v3 - 3);
      v8 = *(v3 - 4);
      v9 = *v3;
      v10 = *(v4 - 3);
      v11 = *(v4 - 4);
      v12 = *v4;
      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v3 - 5) == *(v4 - 5) && v7 == v10)
        {
          result = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v14 & 1) == 0)
          {
            return result;
          }
        }

        if (v8 != v11 || v9 != v12)
        {
          return result;
        }
      }

      else
      {
        if (v10)
        {
          v5 = 0;
        }

        else
        {
          v5 = v8 == v11;
        }

        if (!v5 || v9 != v12)
        {
          return 0;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t Snapshot.profileIntervals.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (*(v1 + 32))
  {
    v6 = *v1;
  }

  else
  {
    v6 = v1[1];
  }

  outlined copy of Snapshot.Kind();
  return v6;
}

uint64_t PType.genericParam(_:within:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = v2[1];
  v70 = *v2;
  v71 = v7;
  v8 = v2[5];
  v74 = v2[4];
  v75 = v8;
  v76[0] = v2[6];
  *(v76 + 14) = *(v2 + 110);
  v9 = v2[3];
  v72 = v2[2];
  v73 = v9;
  v10 = v70;
  v11 = v71;
  LOBYTE(v12) = v72;
  if (v72 != 1)
  {
    goto LABEL_23;
  }

  v13 = a1;
  v14 = *(a1 + 16);
  if (!v14)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    v12 = *(v13 + 2);
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v2 = v71;
  v15 = *(a1 + 8 * v14 + 24);
  if (v15 >= *(v71 + 16))
  {
LABEL_23:
    v32 = v12;
    v38 = v11;
    v39 = v10;
    outlined init with copy of PType(&v70, &v63);
    _StringGuts.grow(_:)(40);

    *&v49 = 0x2065707974;
    *(&v49 + 1) = 0xE500000000000000;
    v67 = v74;
    v68 = v75;
    v69[0] = v76[0];
    *(v69 + 14) = *(v76 + 14);
    v63 = v70;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    *&v56 = v4;
    *(&v56 + 1) = __PAIR64__(v5, v6);
    v33 = *(a2 + 4);
    v59 = *(a2 + 3);
    v60 = v33;
    v34 = *(a2 + 6);
    v61 = *(a2 + 5);
    v62[0] = v34;
    v35 = *(a2 + 2);
    v57 = *(a2 + 1);
    v58 = v35;
    v36 = PType.fullName(within:)(&v56);
    MEMORY[0x26D69CDB0](v36);

    MEMORY[0x26D69CDB0](0xD00000000000001ELL, 0x800000026C33C3F0);
    v63 = v39;
    v64 = v38;
    LOBYTE(v65) = v32;
    v37 = String.init<A>(describing:)();
    MEMORY[0x26D69CDB0](v37);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v14 == 1)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      return *(v71 + 4 * v15 + 32);
    }

    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(v13 + 2);
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  v17 = v12 - 1;
  v12 = *&v13[8 * v12 + 24];
  *(v13 + 2) = v17;
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 >= *(v2 + 2))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v12) = *(v2 + v12 + 8);
  if (v12 >= v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = (v4 + 120 * v12);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v58 = v18[2];
  v59 = v21;
  v56 = v19;
  v57 = v20;
  v22 = v18[4];
  v23 = v18[5];
  v24 = v18[6];
  *(v62 + 14) = *(v18 + 110);
  v61 = v23;
  v62[0] = v24;
  v60 = v22;
  v25 = v18[5];
  v53 = v18[4];
  v54 = v25;
  v55[0] = v18[6];
  *(v55 + 14) = *(v18 + 110);
  v26 = v18[1];
  v49 = *v18;
  v50 = v26;
  v27 = v18[3];
  v51 = v18[2];
  v52 = v27;
  v40 = v4;
  v41 = v6;
  v42 = v5;
  v28 = *(a2 + 4);
  v45 = *(a2 + 3);
  v46 = v28;
  v29 = *(a2 + 6);
  v47 = *(a2 + 5);
  v48 = v29;
  v30 = *(a2 + 2);
  v43 = *(a2 + 1);
  v44 = v30;
  outlined init with copy of PType(&v56, &v63);
  v31 = PType.genericParam(_:within:)(v13, &v40);

  v67 = v53;
  v68 = v54;
  v69[0] = v55[0];
  *(v69 + 14) = *(v55 + 14);
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  outlined destroy of PType(&v63);
  return v31;
}

uint64_t PType.limitedName(within:limit:module:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(result + 80);
  v196 = *(result + 64);
  v197 = v4;
  v5 = *(result + 96);
  v6 = *(result + 16);
  v192 = *result;
  v193 = v6;
  v7 = *(result + 48);
  v194 = *(result + 32);
  v195 = v7;
  v8 = v3[3];
  v201 = v3[2];
  v202 = v8;
  v9 = v3[1];
  v199 = *v3;
  v200 = v9;
  v198 = v5;
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  *(v205 + 14) = *(v3 + 110);
  v204 = v11;
  v205[0] = v12;
  v203 = v10;
  if (!a2)
  {
    return PType.basename(within:)(result);
  }

  v13 = v199;
  if (v201 > 1u)
  {
    if (v201 == 2)
    {
      *&v169 = 40;
      *(&v169 + 1) = 0xE100000000000000;
      v21 = result;
      v23 = swift_allocObject();
      v24 = v21[5];
      *(v23 + 80) = v21[4];
      *(v23 + 96) = v24;
      *(v23 + 112) = v21[6];
      v25 = v21[1];
      *(v23 + 16) = *v21;
      *(v23 + 32) = v25;
      v26 = v21[3];
      *(v23 + 48) = v21[2];
      *(v23 + 64) = v26;
      *(v23 + 128) = a2;
      *&v176 = v13;
      *(&v176 + 1) = partial apply for closure #5 in PType.limitedName(within:limit:module:);
      *&v177 = v23;
      outlined init with copy of PType(&v199, &v183);
      outlined init with copy of Interpreter.Storage.Types(&v192, &v183);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMd, &_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMR);
      lazy protocol witness table accessor for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>();
      v27 = BidirectionalCollection<>.joined(separator:)();
      v29 = v28;
      outlined destroy of PType(&v199);

      MEMORY[0x26D69CDB0](v27, v29);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v169;
    }

    if (v201 == 3)
    {
      v14 = result;
      v16 = swift_allocObject();
      v17 = v14[5];
      *(v16 + 80) = v14[4];
      *(v16 + 96) = v17;
      *(v16 + 112) = v14[6];
      v18 = v14[1];
      *(v16 + 16) = *v14;
      *(v16 + 32) = v18;
      v19 = v14[3];
      *(v16 + 48) = v14[2];
      *(v16 + 64) = v19;
      *(v16 + 128) = a2;
      *&v176 = v13;
      *(&v176 + 1) = partial apply for closure #4 in PType.limitedName(within:limit:module:);
      *&v177 = v16;
      outlined init with copy of PType(&v199, &v183);
      outlined init with copy of Interpreter.Storage.Types(&v192, &v183);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
      lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>();
      v20 = BidirectionalCollection<>.joined(separator:)();
      outlined destroy of PType(&v199);

      return v20;
    }

    v190 = 0;
    v191 = 0xE000000000000000;
    v30 = HIDWORD(v192);
    if (v199 < HIDWORD(v192))
    {
      v31 = v192;
      if (!v192)
      {
LABEL_83:
        __break(1u);
        return result;
      }

      v32 = (v192 + 120 * v199);
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[3];
      v164 = v32[2];
      v165 = v35;
      v162 = v33;
      v163 = v34;
      v36 = v32[4];
      v37 = v32[5];
      v38 = v32[6];
      *(v168 + 14) = *(v32 + 110);
      v167 = v37;
      v168[0] = v38;
      v166 = v36;
      v187 = v32[4];
      v188 = v32[5];
      v189[0] = v32[6];
      *(v189 + 14) = *(v32 + 110);
      v183 = *v32;
      v184 = v32[1];
      v185 = v32[2];
      v186 = v32[3];
      v39 = a2 - 1;
      if (!__OFSUB__(a2, 1))
      {
        v40 = result;
        v41 = DWORD1(v199);
        outlined init with copy of PType(&v162, &v176);
        v42 = PType.limitedName(within:limit:module:)(v40, v39, 0);
        v44 = v43;
        v173 = v187;
        v174 = v188;
        v175[0] = v189[0];
        *(v175 + 14) = *(v189 + 14);
        v169 = v183;
        v170 = v184;
        v171 = v185;
        v172 = v186;
        outlined destroy of PType(&v169);
        MEMORY[0x26D69CDB0](v42, v44);

        result = MEMORY[0x26D69CDB0](540945696, 0xE400000000000000);
        if (v41 < v30)
        {
          v45 = (v31 + 120 * v41);
          v46 = *v45;
          v47 = v45[1];
          v48 = v45[3];
          v178 = v45[2];
          v179 = v48;
          v176 = v46;
          v177 = v47;
          v49 = v45[4];
          v50 = v45[5];
          v51 = v45[6];
          *(v182 + 14) = *(v45 + 110);
          v181 = v50;
          v182[0] = v51;
          v180 = v49;
          v159 = v45[4];
          v160 = v45[5];
          v161[0] = v45[6];
          *(v161 + 14) = *(v45 + 110);
          v155 = *v45;
          v156 = v45[1];
          v157 = v45[2];
          v158 = v45[3];
          v154[4] = v196;
          v154[5] = v197;
          v154[6] = v198;
          v154[0] = v192;
          v154[1] = v193;
          v154[2] = v194;
          v154[3] = v195;
          outlined init with copy of PType(&v176, &v183);
          v52 = PType.limitedName(within:limit:module:)(v154, v39, 0);
          v54 = v53;
          v187 = v159;
          v188 = v160;
          v189[0] = v161[0];
          v183 = v155;
          v184 = v156;
          *(v189 + 14) = *(v161 + 14);
          v185 = v157;
          v186 = v158;
          outlined destroy of PType(&v183);
          MEMORY[0x26D69CDB0](v52, v54);

          return v190;
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (!v201)
  {
    return 0xD000000000000014;
  }

  v138 = v199;
  v55 = *(&v200 + 1);
  v56 = *(&v199 + 1);
  v151 = v200;
  if (a3)
  {
    v137 = a2;
    *&v154[0] = 0;
    *(&v154[0] + 1) = 0xE000000000000000;
    v155 = *(result + 40);
    v57 = *(result + 72);
    v156 = *(result + 56);
    v157 = v57;
    *&v158 = *(result + 88);
    v58 = v203;
    v59 = v155;
    v60 = *(&v156 + 1);
    outlined init with copy of Interpreter.Symbols(&v155, &v183);
    v61 = v60(v59, v58);
    v63 = v62;
    outlined destroy of Interpreter.Symbols(&v155);
    *&v183 = v61;
    *(&v183 + 1) = v63;
    MEMORY[0x26D69CDB0](46, 0xE100000000000000);
    v65 = *(&v183 + 1);
    v64 = v183;
  }

  else
  {
    if (v199 == __PAIR128__(0xE800000000000000, 0x6C616E6F6974704FLL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *&v155 = 0;
      *(&v155 + 1) = 0xE000000000000000;
      v87 = *(v200 + 16);
      v88 = MEMORY[0x277D84F90];
      if (!v87)
      {
LABEL_48:
        *&v183 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v110 = BidirectionalCollection<>.joined(separator:)();
        v112 = v111;

        MEMORY[0x26D69CDB0](v110, v112);

        MEMORY[0x26D69CDB0](63, 0xE100000000000000);
        return v155;
      }

      *&v154[0] = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
      v142 = a2 - 1;
      v89 = __OFSUB__(a2, 1);
      v144 = v89;
      if (*(v200 + 16))
      {
        v90 = 0;
        v91 = v192;
        v149 = HIDWORD(v192);
        v147 = v200 + 32;
        v140 = v87 - 1;
        v88 = *&v154[0];
        do
        {
          v92 = *(v147 + 4 * v90);
          if (v92 >= v149)
          {
            goto LABEL_75;
          }

          if (!v91)
          {
            goto LABEL_82;
          }

          v93 = (v91 + 120 * v92);
          v94 = *v93;
          v95 = v93[1];
          v96 = v93[3];
          v178 = v93[2];
          v179 = v96;
          v176 = v94;
          v177 = v95;
          v97 = v93[4];
          v98 = v93[5];
          v99 = v93[6];
          *(v182 + 14) = *(v93 + 110);
          v181 = v98;
          v182[0] = v99;
          v180 = v97;
          v173 = v93[4];
          v174 = v93[5];
          v175[0] = v93[6];
          *(v175 + 14) = *(v93 + 110);
          v169 = *v93;
          v170 = v93[1];
          v171 = v93[2];
          v172 = v93[3];
          v166 = v196;
          v167 = v197;
          v168[0] = v198;
          v162 = v192;
          v163 = v193;
          v164 = v194;
          v165 = v195;
          if (v144)
          {
            goto LABEL_76;
          }

          outlined init with copy of PType(&v176, &v183);
          v100 = PType.limitedName(within:limit:module:)(&v162, v142, 0);
          v102 = v101;
          v187 = v173;
          v188 = v174;
          v189[0] = v175[0];
          *(v189 + 14) = *(v175 + 14);
          v183 = v169;
          v184 = v170;
          v185 = v171;
          v186 = v172;
          result = outlined destroy of PType(&v183);
          *&v154[0] = v88;
          v104 = *(v88 + 16);
          v103 = *(v88 + 24);
          if (v104 >= v103 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
            v88 = *&v154[0];
          }

          *(v88 + 16) = v104 + 1;
          v105 = v88 + 16 * v104;
          *(v105 + 32) = v100;
          *(v105 + 40) = v102;
          if (v140 == v90)
          {
            goto LABEL_48;
          }
        }

        while (++v90 < *(v151 + 16));
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v137 = a2;
    v64 = 0;
    v65 = 0xE000000000000000;
    *&v154[0] = 0;
    *(&v154[0] + 1) = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v64, v65);

  v66 = *(v55 + 16);
  v67 = 0xE000000000000000;
  if (v66)
  {
    v136 = v56;
    v190 = 0;
    v191 = 0xE000000000000000;
    v152 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
    v68 = __OFSUB__(v137, 1);
    v143 = v68;
    if (*(v55 + 16))
    {
      v69 = 0;
      v70 = v192;
      v148 = HIDWORD(v192);
      v146 = v55 + 32;
      v139 = v192;
      do
      {
        v71 = *(v146 + 4 * v69);
        if (v71 >= v148)
        {
          goto LABEL_70;
        }

        if (!v70)
        {
          goto LABEL_80;
        }

        v72 = (v70 + 120 * v71);
        v73 = *v72;
        v74 = v72[1];
        v75 = v72[3];
        v178 = v72[2];
        v179 = v75;
        v176 = v73;
        v177 = v74;
        v76 = v72[4];
        v77 = v72[5];
        v78 = v72[6];
        *(v182 + 14) = *(v72 + 110);
        v181 = v77;
        v182[0] = v78;
        v180 = v76;
        v173 = v72[4];
        v174 = v72[5];
        v175[0] = v72[6];
        *(v175 + 14) = *(v72 + 110);
        v169 = *v72;
        v170 = v72[1];
        v171 = v72[2];
        v172 = v72[3];
        v166 = v196;
        v167 = v197;
        v168[0] = v198;
        v162 = v192;
        v163 = v193;
        v164 = v194;
        v165 = v195;
        if (v143)
        {
          goto LABEL_71;
        }

        v79 = v55;
        outlined init with copy of PType(&v176, &v183);
        v80 = PType.limitedName(within:limit:module:)(&v162, v137 - 1, 0);
        v82 = v81;
        v187 = v173;
        v188 = v174;
        v189[0] = v175[0];
        *(v189 + 14) = *(v175 + 14);
        v183 = v169;
        v184 = v170;
        v185 = v171;
        v186 = v172;
        result = outlined destroy of PType(&v183);
        v84 = *(v152 + 16);
        v83 = *(v152 + 24);
        if (v84 >= v83 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        }

        *(v152 + 16) = v84 + 1;
        v85 = v152 + 16 * v84;
        *(v85 + 32) = v80;
        *(v85 + 40) = v82;
        if (v66 - 1 == v69)
        {
          *&v183 = v152;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
          v106 = BidirectionalCollection<>.joined(separator:)();
          v108 = v107;

          MEMORY[0x26D69CDB0](v106, v108);

          MEMORY[0x26D69CDB0](46, 0xE100000000000000);
          v109 = v190;
          v67 = v191;
          v56 = v136;
          goto LABEL_50;
        }

        v55 = v79;
        ++v69;
        v70 = v139;
      }

      while (v69 < *(v79 + 16));
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v109 = 0;
LABEL_50:
  MEMORY[0x26D69CDB0](v109, v67);

  MEMORY[0x26D69CDB0](v138, v56);
  v113 = *(v151 + 16);
  if (v113)
  {
    v190 = 60;
    v191 = 0xE100000000000000;
    v153 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113, 0);
    v114 = __OFSUB__(v137, 1);
    v145 = v114;
    if (*(v151 + 16))
    {
      v115 = 0;
      v116 = v192;
      v150 = HIDWORD(v192);
      v141 = v113 - 1;
      while (1)
      {
        v117 = *(v151 + 32 + 4 * v115);
        if (v117 >= v150)
        {
          break;
        }

        if (!v116)
        {
          goto LABEL_81;
        }

        v118 = (v116 + 120 * v117);
        v119 = *v118;
        v120 = v118[1];
        v121 = v118[3];
        v178 = v118[2];
        v179 = v121;
        v176 = v119;
        v177 = v120;
        v122 = v118[4];
        v123 = v118[5];
        v124 = v118[6];
        *(v182 + 14) = *(v118 + 110);
        v181 = v123;
        v182[0] = v124;
        v180 = v122;
        v173 = v118[4];
        v174 = v118[5];
        v175[0] = v118[6];
        *(v175 + 14) = *(v118 + 110);
        v169 = *v118;
        v170 = v118[1];
        v171 = v118[2];
        v172 = v118[3];
        v166 = v196;
        v167 = v197;
        v168[0] = v198;
        v162 = v192;
        v163 = v193;
        v164 = v194;
        v165 = v195;
        if (v145)
        {
          goto LABEL_73;
        }

        outlined init with copy of PType(&v176, &v183);
        v125 = PType.limitedName(within:limit:module:)(&v162, v137 - 1, 0);
        v127 = v126;
        v187 = v173;
        v188 = v174;
        v189[0] = v175[0];
        *(v189 + 14) = *(v175 + 14);
        v183 = v169;
        v184 = v170;
        v185 = v171;
        v186 = v172;
        result = outlined destroy of PType(&v183);
        v129 = *(v153 + 16);
        v128 = *(v153 + 24);
        if (v129 >= v128 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1);
        }

        *(v153 + 16) = v129 + 1;
        v130 = v153 + 16 * v129;
        *(v130 + 32) = v125;
        *(v130 + 40) = v127;
        if (v141 == v115)
        {
          *&v183 = v153;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
          v131 = BidirectionalCollection<>.joined(separator:)();
          v133 = v132;

          MEMORY[0x26D69CDB0](v131, v133);

          MEMORY[0x26D69CDB0](62, 0xE100000000000000);
          v134 = v190;
          v135 = v191;
          goto LABEL_66;
        }

        if (++v115 >= *(v151 + 16))
        {
          goto LABEL_69;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  v134 = 0;
  v135 = 0xE000000000000000;
LABEL_66:
  MEMORY[0x26D69CDB0](v134, v135);

  return *&v154[0];
}

Swift::Void __swiftcall PType.deallocate()()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 72) = 0;
  }
}

Swift::Void __swiftcall Snapshot.deallocate()()
{
  v1 = *v0;
  v2 = *(*v0 + 8);
  if (!v2)
  {
    goto LABEL_89;
  }

  outlined destroy of Snapshot.Kind(*(*v0 + 8));
  MEMORY[0x26D69EAB0](v2, -1, -1);
  *(v1 + 8) = 0;
  v3 = *(v1 + 84);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (v5 < *(v1 + 84))
    {
      v6 = *(v1 + 72);
      if (!v6)
      {
        goto LABEL_91;
      }

      v7 = *(v6 + v4);
      if (v7)
      {
        MEMORY[0x26D69EAB0](v7, -1, -1);
        *(v6 + v4) = 0;
      }

      v8 = v6 + v4;
      v9 = *(v8 + 16);
      if (v9)
      {
        MEMORY[0x26D69EAB0](v9, -1, -1);
        *(v8 + 16) = 0;
      }

      v10 = *(v8 + 200);
      if (v10)
      {
        MEMORY[0x26D69EAB0](v10, -1, -1);
        *(v8 + 200) = 0;
      }

      ++v5;
      v4 += 312;
      if (v3 == v5)
      {
        goto LABEL_13;
      }
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_13:
  v11 = *(v1 + 72);
  if (v11)
  {
    v12 = *(v1 + 84);
    v13 = *(v1 + 72);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v11, -1, -1);
    *(v1 + 72) = 0;
  }

  v14 = *(v1 + 88);
  if (!v14)
  {
    goto LABEL_94;
  }

  v67 = v0;
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v14, &_sSDy21SwiftUITracingSupport11AttributeIDVAA0D3RefVGMd, &_sSDy21SwiftUITracingSupport11AttributeIDVAA0D3RefVGMR);
  MEMORY[0x26D69EAB0](v14, -1, -1);
  *(v1 + 88) = 0;
  v15 = *(v1 + 96);
  if (v15)
  {
    MEMORY[0x26D69EAB0](v15, -1, -1);
    *(v1 + 96) = 0;
  }

  v16 = *(v1 + 124);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v1 + 124))
    {
      v18 = *(v1 + 112);
      if (!v18)
      {
        goto LABEL_92;
      }

      v19 = (v18 + 168 * v17);
      v20 = v19[3];
      if (v20)
      {
        MEMORY[0x26D69EAB0](v20, -1, -1);
        v19[3] = 0;
      }

      v21 = v19[5];
      if (v21)
      {
        MEMORY[0x26D69EAB0](v21, -1, -1);
        v19[5] = 0;
      }

      v22 = *v19;
      v23 = *(*v19 + 16);
      if (v23)
      {
        v24 = *v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        v25 = 0;
        v26 = v22 + 128;
        while (v25 < *(v22 + 16))
        {
          v28 = *(v26 + 24);
          if (v28)
          {
            v29 = *(v26 + 36);
            v30 = *(v26 + 24);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v28, -1, -1);
            *(v26 + 24) = 0;
          }

          v31 = *(v26 + 88);
          if (v31)
          {
            MEMORY[0x26D69EAB0](v31, -1, -1);
            *(v26 + 88) = 0;
          }

          v32 = *(v26 - 32);
          if (v32)
          {
            MEMORY[0x26D69EAB0](v32, -1, -1);
            *(v26 - 32) = 0;
          }

          v33 = *(v26 + 104);
          if (v33)
          {
            MEMORY[0x26D69EAB0](v33, -1, -1);
          }

          ++v25;
          v27 = *v26;
          v26 += 208;
          MEMORY[0x26D69EAB0](v27, -1, -1);
          if (v23 == v25)
          {
            *v19 = v22;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_21:
      if (++v17 == v16)
      {
        goto LABEL_42;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_42:
  v34 = *(v1 + 112);
  if (v34)
  {
    v35 = *(v1 + 124);
    v36 = *(v1 + 112);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v34, -1, -1);
    *(v1 + 112) = 0;
  }

  v37 = *(v1 + 128);
  if (!v37)
  {
    goto LABEL_94;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](*(v1 + 128), &_sSDy21SwiftUITracingSupport10SubgraphIDVAA0D3RefVGMd, &_sSDy21SwiftUITracingSupport10SubgraphIDVAA0D3RefVGMR);
  MEMORY[0x26D69EAB0](v37, -1, -1);
  *(v1 + 128) = 0;
  v38 = *(v1 + 136);
  if (v38)
  {
    v39 = *(v1 + 148);
    v40 = *(v1 + 136);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v38, -1, -1);
    *(v1 + 136) = 0;
  }

  v41 = *(v1 + 152);
  if (!v41)
  {
    goto LABEL_94;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](*(v1 + 152), &_sSDy21SwiftUITracingSupport11GraphCtxtIDVAA0D3RefVGMd, &_sSDy21SwiftUITracingSupport11GraphCtxtIDVAA0D3RefVGMR);
  MEMORY[0x26D69EAB0](v41, -1, -1);
  *(v1 + 152) = 0;
  v42 = *(v1 + 160);
  if (v42)
  {
    MEMORY[0x26D69EAB0](v42, -1, -1);
    *(v1 + 160) = 0;
  }

  v43 = *(v1 + 176);
  if (v43)
  {
    v44 = *(v1 + 188);
    v45 = *(v1 + 176);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v43, -1, -1);
    *(v1 + 176) = 0;
  }

  v46 = *(v1 + 216);
  if (v46)
  {
    v48 = *(v46 + 24);
    v47 = *(v46 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v46, v48);
    (*(*(*(v47 + 8) + 16) + 8))(v48);
    v49 = *(v1 + 216);
    if (v49)
    {
      __swift_destroy_boxed_opaque_existential_1(*(v1 + 216));
      MEMORY[0x26D69EAB0](v49, -1, -1);
      *(v1 + 216) = 0;
    }
  }

  v50 = *(v1 + 44);
  if (v50)
  {
    v51 = 0;
    v68 = *(v1 + 44);
    while (v51 < *(v1 + 44))
    {
      v52 = *(v1 + 32);
      if (!v52)
      {
        goto LABEL_93;
      }

      v53 = v52 + (v51 << 7);
      if ((*(v53 + 24) & 1) == 0)
      {
        v54 = *(v53 + 8);
        if ((*(v53 + 25) & 1) == 0)
        {
          v56 = 0;
          v57 = 0;
          v58 = *(v53 + 32);
          v59 = *(v53 + 16) - v54;
          while (1)
          {
            v60 = v57;
            if (v57 >= v58)
            {
              break;
            }

            if (!v54)
            {
              goto LABEL_90;
            }

            if (v59 < v56)
            {
              goto LABEL_83;
            }

            projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(*(v54 + v56), v53 + 8, *(v54 + v56));
            v61 = specialized HeterogeneousBuffer.stride<A>(of:)(*(v54 + v56));
            v62 = __OFADD__(v61, v56);
            v56 += v61;
            if (v62)
            {
              goto LABEL_84;
            }

            if (v56 > 0xFFFFFFFFLL)
            {
              goto LABEL_85;
            }

            v57 = v60 + 1;
            if (v56 < 0)
            {
              __break(1u);
              goto LABEL_74;
            }
          }
        }

        v50 = v68;
        if (v54)
        {
          MEMORY[0x26D69EAB0](v54, -1, -1);
        }
      }

      v55 = *(v53 + 112);
      if (v55)
      {
        MEMORY[0x26D69EAB0](v55, -1, -1);
        *(v53 + 112) = 0;
      }

      if (++v51 == v50)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_88;
  }

LABEL_74:
  v63 = *(v1 + 32);
  if (v63)
  {
    MEMORY[0x26D69EAB0](v63, -1, -1);
    *(v1 + 32) = 0;
  }

  v64 = *(v1 + 48);
  if (v64)
  {
    MEMORY[0x26D69EAB0](v64, -1, -1);
    *(v1 + 48) = 0;
  }

  v65 = *(v1 + 192);
  if (!v65)
  {
LABEL_94:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](*(v1 + 192), &_sSDy21SwiftUITracingSupport8SnapshotV14AbstractionKeyVAA10AbstractIDVGMd, &_sSDy21SwiftUITracingSupport8SnapshotV14AbstractionKeyVAA10AbstractIDVGMR);
  MEMORY[0x26D69EAB0](v65, -1, -1);
  *(v1 + 192) = 0;
  v66 = *(v1 + 200);
  if (v66)
  {
    MEMORY[0x26D69EAB0](v66, -1, -1);
    *(v1 + 200) = 0;
  }

  MEMORY[0x26D69EAB0](v1, -1, -1);
  *v67 = 0;
}

uint64_t (*Snapshot.subscript.read(uint64_t (**a1)(), unsigned int a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x131uLL);
  }

  *a1 = result;
  if (*(a3 + 84) <= a2)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a3 + 72);
    if (v7)
    {
      memcpy(result, (v7 + 312 * a2), 0x131uLL);
      return Snapshot.subscript.read;
    }
  }

  __break(1u);
  return result;
}

uint64_t Attribute.directType.getter()
{
  if (*(v0 + 101))
  {
    __break(1u);
  }

  else
  {
    result = *(v0 + 92);
    v2 = *(v0 + 100);
  }

  return result;
}

uint64_t GraphContext.viewType.setter(uint64_t result)
{
  v2 = *(v1 + 68);
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  if (v2 != 1)
  {
    __break(1u);
  }

  return result;
}

void (*Snapshot.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[8] = Snapshot.subscript.modify(v6, HIDWORD(a2), a3);
  v7[9] = specialized Array.subscript.modify(v7 + 4, a2);
  return Interpreter.Storage.Types.subscript.modify;
}

uint64_t Tree.add(root:within:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 116))
  {
    goto LABEL_29;
  }

  v9 = v8;
  v10 = *a2;
  v11 = *(v8 + 28);
  v12 = *(*a2 + 124);
  if (v11 >= v12)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v10 + 112);
  if (!v13)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = *(v13 + 168 * v11 + 113);
  if (v12 <= result || v14 == 0)
  {
    goto LABEL_22;
  }

  v16 = *(v13 + 168 * result + 64);
  if (v16 >= v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = *(v13 + 168 * v16);
  if (!*(v17 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = *(v17 + 208);
  v29[10] = *(v17 + 192);
  v29[11] = v18;
  v29[12] = *(v17 + 224);
  v19 = *(v17 + 144);
  v29[6] = *(v17 + 128);
  v29[7] = v19;
  v20 = *(v17 + 176);
  v29[8] = *(v17 + 160);
  v29[9] = v20;
  v21 = *(v17 + 80);
  v29[2] = *(v17 + 64);
  v29[3] = v21;
  v22 = *(v17 + 112);
  v29[4] = *(v17 + 96);
  v29[5] = v22;
  v23 = *(v17 + 48);
  v29[0] = *(v17 + 32);
  v29[1] = v23;
  v30 = v10;
  v8 = v29;
  result = specialized Tree.parent(_:within:unabstracting:)(16, &v30, a3, a4, a5, a6, a7, a8);
  if ((v24 & 1) == 0)
  {
    return result;
  }

  v25 = *(v9 + 76);
  if (v25 == *(v9 + 72))
  {
    v8 = (v9 + 64);
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v25);
  }

  v26 = *(v9 + 64);
  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = *(v9 + 76);
  *(v26 + 8 * v27) = v16 << 32;
  if (v27 == -1)
  {
    goto LABEL_25;
  }

  *(v9 + 76) = v27 + 1;
  if (v16 >= *(v10 + 124))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
    *v8 = result;
    if (*(result + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v28 = *(v10 + 112);
  if (!v28)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v9 = *(v9 + 104);
  v8 = (v28 + 168 * v16);
  v10 = *v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v10 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_19:
  result = Tree.parent.willset(v9, 0);
  *(v10 + 80) = v9;
  *(v10 + 88) = 0;
  return result;
}

uint64_t (*Snapshot.graphs.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

void Tree.init(synthetic:within:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = 1;
  v6 = MEMORY[0x277D84F90];
  v69 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8 = v7;
  v111 = 1;
  v70 = swift_slowAlloc();
  *v70 = 2;
  _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(v6);
  v107 = 1;
  v105 = 1;
  v9 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v6);
  v108 = 0;
  if (a2[48])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v13 = *(v11 + 104);
  if (v13)
  {
    v14 = *(*(v13 + 8 * v12) + 8);
    if (*(v14 + 124) > a1)
    {
      v65 = v9;
      v61 = a3;
      v15 = *(v14 + 112);
      if (!v15)
      {
        goto LABEL_60;
      }

      v66 = HIDWORD(v8);
      v63 = v10;
      v64 = a1;
      v67 = HIDWORD(v10);
      v68 = v8;
      v62 = a1 << 32;
      v16 = *(v15 + 168 * a1 + 96);
      v17 = *(v16 + 16);

      v18 = 0;
      v19 = v6;
      while (v17 != v18)
      {
        if (v18 >= *(v16 + 16))
        {
          __break(1u);
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
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (a2[48])
        {
          goto LABEL_50;
        }

        v20 = *a2;
        if (v20 >= *(v11 + 116))
        {
          goto LABEL_42;
        }

        v21 = *(v11 + 104);
        if (!v21)
        {
          goto LABEL_51;
        }

        v22 = *(v16 + 4 * v18 + 32);
        v23 = *(*(v21 + 8 * v20) + 8);
        if (v22 >= *(v23 + 84))
        {
          goto LABEL_43;
        }

        v24 = *(v23 + 72);
        if (!v24)
        {
          goto LABEL_52;
        }

        ++v18;
        if ((*(v24 + 312 * v22 + 152) & 1) == 0)
        {
          *&v71[0] = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
            v19 = *&v71[0];
          }

          v26 = *(v19 + 16);
          v25 = *(v19 + 24);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
            v27 = v26 + 1;
            v6 = MEMORY[0x277D84F90];
            v19 = *&v71[0];
          }

          *(v19 + 16) = v27;
          *(v19 + 4 * v26 + 32) = v22;
        }
      }

      v28 = *(v19 + 16);
      if (v28)
      {
        *&v71[0] = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
        v29 = v6;
        v30 = *(v6 + 16);
        v31 = 40 * v30 + 64;
        v32 = 32;
        do
        {
          v33 = *(v19 + v32);
          *&v71[0] = v29;
          v34 = *(v29 + 24);
          v35 = v30 + 1;
          if (v30 >= v34 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v30 + 1, 1);
            v29 = *&v71[0];
          }

          *(v29 + 16) = v35;
          v36 = (v29 + v31);
          *(v36 - 8) = v33;
          *(v36 - 3) = 0;
          *(v36 - 2) = 0;
          *(v36 - 2) = 0;
          v31 += 40;
          *(v36 - 4) = 1;
          v32 += 4;
          v30 = v35;
          *v36 = 0x8000000100000000;
          --v28;
        }

        while (v28);
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      v37 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(v29);
      v39 = v38;

      v40 = v113;
      v72 = 0;
      memset(v71, 0, sizeof(v71));
      v73 = v113;
      *v74 = *v112;
      *&v74[3] = *&v112[3];
      v75 = v69;
      v76 = v68;
      v77 = v66;
      v78 = 0;
      v57 = v111;
      v58 = v108;
      v79 = v111;
      v80 = v109;
      v81 = v110;
      v82 = -1;
      v83 = 256;
      v84 = v70;
      v85 = v62;
      v86 = v64;
      v87 = v108;
      v88 = 5;
      v89 = v37;
      v90 = v39;
      v91 = 0;
      v59 = v107;
      v60 = v105;
      v92 = v107;
      *&v93[3] = *&v106[3];
      *v93 = *v106;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = v105;
      *&v98[3] = *&v104[3];
      *v98 = *v104;
      v99 = v65;
      v100 = v63;
      v101 = v67;
      v102 = 0;
      Tree.Position.init(matching:within:)(v71, *(v11 + 136), &v103);
      v41 = v103;
      if (!HIDWORD(v39))
      {
LABEL_40:
        *(v61 + 48) = 0;
        *(v61 + 16) = 0u;
        *(v61 + 32) = 0u;
        *v61 = 0u;
        *(v61 + 56) = v40;
        *(v61 + 57) = *v112;
        *(v61 + 60) = *&v112[3];
        *(v61 + 64) = v69;
        *(v61 + 72) = v68;
        *(v61 + 76) = v66;
        *(v61 + 80) = 0;
        *(v61 + 84) = v57;
        *(v61 + 85) = v109;
        *(v61 + 87) = v110;
        *(v61 + 88) = -1;
        *(v61 + 92) = 256;
        *(v61 + 96) = v70;
        *(v61 + 104) = v62;
        *(v61 + 112) = v64;
        *(v61 + 116) = v58;
        *(v61 + 117) = v41;
        *(v61 + 120) = v37;
        *(v61 + 128) = v39;
        *(v61 + 136) = 0;
        *(v61 + 144) = v59;
        *(v61 + 148) = *&v106[3];
        *(v61 + 145) = *v106;
        *(v61 + 160) = 0;
        *(v61 + 168) = 0;
        *(v61 + 152) = 0;
        *(v61 + 176) = v60;
        v56 = *v104;
        *(v61 + 180) = *&v104[3];
        *(v61 + 177) = v56;
        *(v61 + 184) = v65;
        *(v61 + 192) = v63;
        *(v61 + 196) = v67;
        *(v61 + 200) = 0;
        return;
      }

      if (!v37)
      {
        goto LABEL_61;
      }

      v42 = 0;
      v43 = v37;
      while (!a2[48])
      {
        v44 = *(v11 + 116);
        v45 = *a2;
        if (v45 >= v44)
        {
          goto LABEL_44;
        }

        v46 = *(v11 + 104);
        if (!v46)
        {
          goto LABEL_54;
        }

        v48 = *v43;
        v43 += 10;
        v47 = v48;
        v49 = *(*(v46 + 8 * v45) + 8);
        if (v48 >= *(v49 + 84))
        {
          goto LABEL_45;
        }

        v50 = *(v49 + 72);
        if (!v50)
        {
          goto LABEL_56;
        }

        v51 = v50 + 312 * v47;
        *(v51 + 128) = v62;
        *(v51 + 136) = 0;
        if (a2[48])
        {
          goto LABEL_55;
        }

        v52 = *a2;
        if (v52 >= v44)
        {
          goto LABEL_46;
        }

        v53 = *(*(v46 + 8 * v52) + 8);
        if (v47 >= *(v53 + 84))
        {
          goto LABEL_47;
        }

        v54 = *(v53 + 72);
        if (!v54)
        {
          goto LABEL_57;
        }

        v55 = v54 + 312 * v47;
        *(v55 + 160) = v42;
        *(v55 + 168) = 0;
        if (HIDWORD(v39) == ++v42)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_53;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
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
    goto LABEL_58;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t (*Snapshot.subscript.modify(uint64_t *a1, unsigned int a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = specialized UnsafeArray.subscript.modify(v5, a2, *(*v2 + 72), *(*v2 + 80));
  return UnsafeTree.storage.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = specialized UnsafeArray.subscript.modify(v5, a2, *(*v2 + 136), *(*v2 + 144));
  return UnsafeTree.storage.modify;
}

uint64_t Attribute.tree.getter()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  __break(1u);
  return result;
}

uint64_t (*Snapshot.subgraphs.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.subgraphs.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 112);
  v2 = *(a2 + 120);
  return EventTreeStats.count.modify;
}

uint64_t Tree.hasOwnAttributes(within:)(uint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 184);
  if (!*(v1 + 196))
  {
LABEL_4:
    if (HIDWORD(v2) < *(result + 124))
    {
      v4 = *(result + 112);
      if (!v4)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v5 = *(v4 + 168 * HIDWORD(v2));
      if (v2 >= *(v5 + 16))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v6 = v5 + 208 * v2;
      v7 = *(v6 + 152);
      v8 = *(v6 + 164);
      if (!v8)
      {
        return 0;
      }

      if (!v7)
      {
        goto LABEL_30;
      }

      if ((v7[9] & 1) == 0)
      {
LABEL_14:
        v10 = v7 + 19;
        for (i = 1; v8 != i; ++i)
        {
          if (i >= v8)
          {
            __break(1u);
            goto LABEL_25;
          }

          if (*v10)
          {
            v12 = *(v10 - 9);
            if (v12 >= *(result + 84))
            {
              goto LABEL_25;
            }

            v13 = *(result + 72);
            if (!v13)
            {
              goto LABEL_29;
            }

            if (*(v13 + 312 * v12 + 89) == 1)
            {
              return 1;
            }
          }

          v10 += 40;
        }

        return 0;
      }

      if (*v7 < *(result + 84))
      {
        v9 = *(result + 72);
        if (v9)
        {
          if (*(v9 + 312 * *v7 + 89))
          {
            return 1;
          }

          goto LABEL_14;
        }

        goto LABEL_29;
      }

LABEL_25:
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3)
  {
    v2 = *v3;
    goto LABEL_4;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t Snapshot.rootSubgraphs.getter(uint64_t result)
{
  v1 = *(result + 124);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = *(result + 112);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = (v4 + 168 * v3);
      for (i = v3; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        if (!v4)
        {
          goto LABEL_29;
        }

        v8 = *v6;
        v9 = v6[2];
        v35 = v6[1];
        v36 = v9;
        v34 = v8;
        v10 = v6[3];
        v11 = v6[4];
        v12 = v6[6];
        v39 = v6[5];
        v40 = v12;
        v37 = v10;
        v38 = v11;
        v13 = v6[7];
        v14 = v6[8];
        v15 = v6[9];
        v44 = *(v6 + 20);
        v42 = v14;
        v43 = v15;
        v41 = v13;
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_26;
        }

        if (v38 >= *(v2 + 124))
        {
          goto LABEL_27;
        }

        v16 = *(v2 + 112);
        if (!v16)
        {
          goto LABEL_30;
        }

        v17 = *(v16 + 168 * v38);
        if (!*(v17 + 16))
        {
          goto LABEL_28;
        }

        v18 = *(v17 + 88);
        v19 = *(v17 + 232);
        if (!v19)
        {
          goto LABEL_5;
        }

        v20 = *(v17 + 80);
        if ((*(v19 + 18) & 1) == 0)
        {
          v21 = *(v19 + 16);
          if ((v21 & 0xFF00) == 0x400)
          {
            break;
          }
        }

        v33[0] = 0;
        *(v19 + 8) = v20;
        *(v19 + 16) = v18 | 0x400;
        *(v19 + 18) = 0;
LABEL_5:
        if (v18)
        {
          goto LABEL_17;
        }

LABEL_6:
        v6 = (v6 + 168);
        if (v3 == v1)
        {
          return v5;
        }
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_17:
      outlined init with copy of Subgraph(&v34, v33);
      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v5;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        v5 = v45;
      }

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v5 = v45;
      }

      *(v5 + 16) = v23 + 1;
      v24 = v5 + 168 * v23;
      v25 = v34;
      v26 = v36;
      *(v24 + 48) = v35;
      *(v24 + 64) = v26;
      *(v24 + 32) = v25;
      v27 = v37;
      v28 = v38;
      v29 = v40;
      *(v24 + 112) = v39;
      *(v24 + 128) = v29;
      *(v24 + 80) = v27;
      *(v24 + 96) = v28;
      v30 = v41;
      v31 = v42;
      v32 = v43;
      *(v24 + 192) = v44;
      *(v24 + 160) = v31;
      *(v24 + 176) = v32;
      *(v24 + 144) = v30;
      if (v3 == v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x26D69DBA0](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t Tree.breakParent(within:)(uint64_t a1)
{
  if (*(v2 + 56))
  {
    goto LABEL_36;
  }

  v4 = *(v2 + 48);
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  if (HIDWORD(v4) >= *(*a1 + 124))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = *(*a1 + 112);
  if (v5)
  {
    v3 = (v5 + 168 * HIDWORD(v4));
    v1 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v1;
    if (result)
    {
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

LABEL_29:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    *v3 = result;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_6:
      if (v4 < *(v1 + 16))
      {
        v7 = v1 + 208 * v4;
        v8 = *(v7 + 108);
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          v11 = 8;
          while (1)
          {
            v13 = *(v7 + 96);
            if (!v13)
            {
              goto LABEL_34;
            }

            v14 = v13 + v11;
            v15 = *(v13 + v11 - 8);
            if (v15 != *(v2 + 104))
            {
              v16 = (v13 + 8 * v10);
              if (v10 < v9 || v16 >= v14)
              {
                *v16 = v15;
              }

              if (__OFADD__(v10++, 1))
              {
                __break(1u);
                goto LABEL_28;
              }
            }

            ++v9;
            v11 += 8;
            if (v8 == v9)
            {
              if (v10 <= v8)
              {
                goto LABEL_20;
              }

              __break(1u);
              break;
            }
          }
        }

        v10 = 0;
LABEL_20:
        v17 = v8 - v10 + 1;
        while (--v17)
        {
          if (!*(v7 + 96))
          {
            __break(1u);
            break;
          }
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v10))
          {
            *(v7 + 108) = v10;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*Snapshot.kind.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(*v1 + 8);
  *(v3 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t PType.linearizedField(at:within:)(uint64_t a1, _OWORD *a2)
{
  v7 = a1;
  result = PType.linearizedField(where:within:)(partial apply for closure #1 in PType.linearizedField(at:within:), v6, a2);
  if ((v4 & 0x100000000) != 0)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v9 = 0xD000000000000013;
    v10 = 0x800000026C33B900;
    v8 = a1;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v5);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PType.linearizedField(named:within:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v20 = a1;
  v21 = a2;
  v5 = *(a3 + 136);
  v7 = v5[1];
  v6 = v5[2];
  v29[0] = *v5;
  v29[1] = v7;
  v29[2] = v6;
  v8 = v5[6];
  v10 = v5[3];
  v9 = v5[4];
  v29[5] = v5[5];
  v29[6] = v8;
  v29[3] = v10;
  v29[4] = v9;
  v11 = v5[5];
  v26 = v5[4];
  v27 = v11;
  v28 = v5[6];
  v12 = v5[1];
  v22 = *v5;
  v23 = v12;
  v13 = v5[3];
  v24 = v5[2];
  v25 = v13;
  outlined init with copy of Interpreter.Storage.Types(v29, v30);
  v14 = PType.linearizedField(where:within:)(partial apply for closure #1 in PType.linearizedField(named:within:), v18, &v22);
  v16 = v15;
  v30[4] = v26;
  v30[5] = v27;
  v30[6] = v28;
  v30[0] = v22;
  v30[1] = v23;
  v30[2] = v24;
  v30[3] = v25;
  outlined destroy of Interpreter.Storage.Types(v30);
  if ((v16 & 0x100000000) == 0)
  {
    return v14;
  }

  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *&v22 = 0xD000000000000014;
  *(&v22 + 1) = 0x800000026C33B920;
  MEMORY[0x26D69CDB0](a1, a2);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TraceAddress.init(raw:generation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return TraceAddress.init(raw:generation:)(a1, a2, a3, a4);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(a4 + 112))(a3, a4);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  (*(a4 + 64))(v12, a3, a4);
  (*(a4 + 88))(a2, a3, a4);
  return (*(v9 + 8))(a1, AssociatedTypeWitness);
}

uint64_t static TraceAddress.addresses<A>(within:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 120))(a4, a6);
  v7 = swift_modifyAtWritableKeyPath();
  a2(v8);
  v7(&v10, 0);
}

uint64_t static TraceAddress.references<A>(within:_:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[48];
  v9 = *(a1 + 22);
  result = (*(a6 + 128))(a4, a6);
  if (v8)
  {
    goto LABEL_6;
  }

  if (v7 >= *(v9 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v9 + 104);
  if (v11)
  {
    v12 = *(v11 + 8 * v7);
    v13 = swift_modifyAtWritableKeyPath();
    a2(v14);
    v13(&v15, 0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*static TraceAddress.rename(address:initialize:within:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>))(_BYTE *, void)
{
  return static TraceAddress.rename(address:initialize:within:)(a1, a2, a3, a4, a5, a6);
}

{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v22 - v15;
  v25 = a4;
  v26 = a5;
  v22 = a1;
  v23 = a3;
  v27 = a1;
  v17 = *(a5 + 136);
  (v17)(a3, partial apply for closure #1 in static TraceAddress.rename(address:initialize:within:), v24, TupleTypeMetadata2, a4, a5);
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = (*(a5 + 96))(v28, a4, a5);
  if (*v19 != -1)
  {
    ++*v19;
    v20 = result(v28, 0);
    MEMORY[0x28223BE20](v20);
    *(&v22 - 4) = a4;
    *(&v22 - 3) = a5;
    v21 = v23;
    *(&v22 - 2) = v22;
    *(&v22 - 1) = v16;
    v17(v21, partial apply for closure #2 in static TraceAddress.rename(address:initialize:within:));
LABEL_4:
    (*(*(a4 - 8) + 16))(a6, v16, a4);
    return (*(v13 + 8))(v16, TupleTypeMetadata2);
  }

  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt3g5(unint64_t result, char a2, uint64_t a3)
{
  v4 = result;
  v5 = (a3 + 56);
  v6 = *(a3 + 72);
  v81[0] = *(a3 + 56);
  v81[1] = v6;
  v82[0] = *(a3 + 88);
  v7 = (a3 + 72);
  v8 = (a3 + 84);
  v9 = (a3 + 104);
  *(v82 + 9) = *(a3 + 97);
  v10 = (a3 + 56);
  v11 = (a3 + 72);
  v12 = (a3 + 84);
  v13 = (a3 + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12 >= 2u)
    {
      v15 = *v11;
      if ((*(v15 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_46;
  }

  result = v16 + 24 * *(v15 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    goto LABEL_42;
  }

  v71 = *v17;
  v18 = *(v17 + 2);
  v19 = *(v17 + 72);
  v20 = *(v17 + 104);
  v69 = *(v17 + 88);
  v70[0] = v20;
  *(v70 + 13) = *(v17 + 117);
  v21 = *(v17 + 40);
  v65 = *(v17 + 24);
  v66 = v21;
  v67 = *(v17 + 56);
  v68 = v19;
  v22 = *v18;
  if (*(*v18 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v23 & 1) != 0))
  {
    v24 = (*(v22 + 56) + 24 * result);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = v24[4];
  }

  else
  {
    v26 = 0;
    v27 = -1;
    v25 = v4;
  }

  v28 = v5[1];
  v79[0] = *v5;
  v79[1] = v28;
  v80[0] = v5[2];
  *(v80 + 9) = *(v5 + 41);
  v29 = v5;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  while (1)
  {
    v33 = *v32;
    if (*v31 >= 2u)
    {
      v34 = *v30;
      if ((*(v34 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v33)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v79);
    }

    v30 = (v33 + 16);
    v31 = (v33 + 28);
    v32 = (v33 + 48);
    v29 = v33;
  }

  v35 = *v29;
  if (!v35)
  {
    goto LABEL_47;
  }

  result = v35 + 24 * *(v34 + 8);
  v36 = *(*result + 112);
  if (!v36)
  {
    goto LABEL_43;
  }

  *v36 = v71;
  v37 = v67;
  *(v36 + 72) = v68;
  v38 = v70[0];
  *(v36 + 88) = v69;
  *(v36 + 104) = v38;
  v39 = v66;
  *(v36 + 24) = v65;
  *(v36 + 40) = v39;
  *(v36 + 16) = v18;
  *(v36 + 117) = *(v70 + 13);
  *(v36 + 56) = v37;
  v72 = v25;
  v74 = v27;
  if ((a2 & 1) == 0)
  {
    return v25;
  }

  v40 = __CFADD__(v26, 1);
  v41 = v26 + 1;
  if (v40)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v73 = v41;
  v42 = v5[1];
  v77[0] = *v5;
  v77[1] = v42;
  v78[0] = v5[2];
  *(v78 + 9) = *(v5 + 41);
  v43 = v9;
  v44 = v8;
  v45 = v7;
  for (i = v5; ; i = v47)
  {
    v47 = *v43;
    if (*v44 >= 2u)
    {
      v48 = *v45;
      if ((*(v48 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v77);
    }

    v45 = (v47 + 16);
    v44 = (v47 + 28);
    v43 = (v47 + 48);
  }

  if (!*i)
  {
    goto LABEL_48;
  }

  result = *i + 24 * *(v48 + 8);
  v49 = *(*result + 112);
  if (v49)
  {
    v50 = v49[5];
    v62 = v49[4];
    v63 = v50;
    v64[0] = v49[6];
    *(v64 + 13) = *(v49 + 109);
    v58 = *v49;
    v59 = v49[1];
    v51 = v49[3];
    v60 = v49[2];
    v61 = v51;
    result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v59, v4, &v72);
    v52 = v5[1];
    v75[0] = *v5;
    v75[1] = v52;
    v76[0] = v5[2];
    *(v76 + 9) = *(v5 + 41);
    while (1)
    {
      v53 = *v9;
      if (*v8 >= 2u && (*(*v7 + 12) & 1) == 0)
      {
        break;
      }

      if (!v53)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v75);
      }

      v7 = (v53 + 16);
      v8 = (v53 + 28);
      v9 = (v53 + 48);
      v5 = v53;
    }

    if (!*v5)
    {
      goto LABEL_49;
    }

    result = *v5 + 24 * *(*v7 + 8);
    v54 = *(*result + 112);
    if (v54)
    {
      v55 = v63;
      v54[4] = v62;
      v54[5] = v55;
      v54[6] = v64[0];
      *(v54 + 109) = *(v64 + 13);
      v56 = v59;
      *v54 = v58;
      v54[1] = v56;
      v57 = v61;
      v54[2] = v60;
      v54[3] = v57;
      return v25;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
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
  return result;
}

unint64_t _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt3g5(unint64_t result, char a2, uint64_t a3)
{
  v4 = result;
  v5 = (a3 + 56);
  v6 = *(a3 + 72);
  v81[0] = *(a3 + 56);
  v81[1] = v6;
  v82[0] = *(a3 + 88);
  v7 = (a3 + 72);
  v8 = (a3 + 84);
  v9 = (a3 + 104);
  *(v82 + 9) = *(a3 + 97);
  v10 = (a3 + 56);
  v11 = (a3 + 72);
  v12 = (a3 + 84);
  v13 = (a3 + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12 >= 2u)
    {
      v15 = *v11;
      if ((*(v15 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_46;
  }

  result = v16 + 24 * *(v15 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = *v17;
  v19 = *(v17 + 11);
  v70 = *(v17 + 9);
  v71 = v19;
  *v72 = *(v17 + 13);
  *&v72[13] = *(v17 + 117);
  v20 = *(v17 + 3);
  v66 = *(v17 + 1);
  v67 = v20;
  v21 = *(v17 + 7);
  v68 = *(v17 + 5);
  v69 = v21;
  v22 = *v18;
  v58 = v4;
  if (*(*v18 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v23 & 1) != 0))
  {
    v24 = *(v22 + 56) + 24 * result;
    v4 = *v24;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
    v26 = -1;
  }

  v27 = v5[1];
  v79[0] = *v5;
  v79[1] = v27;
  v80[0] = v5[2];
  *(v80 + 9) = *(v5 + 41);
  v28 = v5;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  while (1)
  {
    v32 = *v31;
    if (*v30 >= 2u)
    {
      v33 = *v29;
      if ((*(v33 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v79);
    }

    v29 = (v32 + 16);
    v30 = (v32 + 28);
    v31 = (v32 + 48);
    v28 = v32;
  }

  v34 = *v28;
  if (!v34)
  {
    goto LABEL_47;
  }

  result = v34 + 24 * *(v33 + 8);
  v35 = *(*result + 112);
  if (!v35)
  {
    goto LABEL_43;
  }

  v36 = v71;
  *(v35 + 72) = v70;
  *(v35 + 88) = v36;
  *(v35 + 104) = *v72;
  v37 = v67;
  *(v35 + 8) = v66;
  *(v35 + 24) = v37;
  v38 = v69;
  *(v35 + 40) = v68;
  *v35 = v18;
  *(v35 + 117) = *&v72[13];
  *(v35 + 56) = v38;
  v73[0] = v4;
  v74 = v26;
  if ((a2 & 1) == 0)
  {
    return v4;
  }

  v39 = __CFADD__(v25, 1);
  v40 = v25 + 1;
  if (v39)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v73[1] = v40;
  v41 = v5[1];
  v77[0] = *v5;
  v77[1] = v41;
  v78[0] = v5[2];
  *(v78 + 9) = *(v5 + 41);
  v42 = v9;
  v43 = v8;
  v44 = v7;
  for (i = v5; ; i = v46)
  {
    v46 = *v42;
    if (*v43 >= 2u)
    {
      v47 = *v44;
      if ((*(v47 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v46)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v77);
    }

    v44 = (v46 + 16);
    v43 = (v46 + 28);
    v42 = (v46 + 48);
  }

  if (!*i)
  {
    goto LABEL_48;
  }

  result = *i + 24 * *(v47 + 8);
  v48 = *(*result + 112);
  if (v48)
  {
    v49 = v48[5];
    v63 = v48[4];
    v64 = v49;
    v65[0] = v48[6];
    *(v65 + 13) = *(v48 + 109);
    v50 = v48[1];
    v59 = *v48;
    v60 = v50;
    v51 = v48[3];
    v61 = v48[2];
    v62 = v51;
    result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v59, v58, v73, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
    v52 = v5[1];
    v75[0] = *v5;
    v75[1] = v52;
    v76[0] = v5[2];
    *(v76 + 9) = *(v5 + 41);
    while (1)
    {
      v53 = *v9;
      if (*v8 >= 2u && (*(*v7 + 12) & 1) == 0)
      {
        break;
      }

      if (!v53)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v75);
      }

      v7 = (v53 + 16);
      v8 = (v53 + 28);
      v9 = (v53 + 48);
      v5 = v53;
    }

    if (!*v5)
    {
      goto LABEL_49;
    }

    result = *v5 + 24 * *(*v7 + 8);
    v54 = *(*result + 112);
    if (v54)
    {
      v55 = v64;
      v54[4] = v63;
      v54[5] = v55;
      v54[6] = v65[0];
      *(v54 + 109) = *(v65 + 13);
      v56 = v60;
      *v54 = v59;
      v54[1] = v56;
      v57 = v62;
      v54[2] = v61;
      v54[3] = v57;
      return v4;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
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
  return result;
}

unint64_t _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt3g5(unint64_t result, char a2, uint64_t a3)
{
  v3 = result;
  v4 = (a3 + 56);
  v5 = *(a3 + 72);
  v81[0] = *(a3 + 56);
  v81[1] = v5;
  v82[0] = *(a3 + 88);
  v6 = (a3 + 72);
  v7 = (a3 + 84);
  v8 = (a3 + 104);
  *(v82 + 9) = *(a3 + 97);
  v9 = (a3 + 56);
  v10 = (a3 + 72);
  v11 = (a3 + 84);
  v12 = (a3 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_46;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_42;
  }

  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 6);
  v71 = *(v16 + 5);
  v72[0] = v19;
  *(v72 + 13) = *(v16 + 109);
  v20 = *(v16 + 2);
  v67 = *(v16 + 1);
  v68 = v20;
  v21 = *(v16 + 4);
  v69 = *(v16 + 3);
  v70 = v21;
  v22 = *v18;
  v58 = v3;
  if (*(*v18 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v23 & 1) != 0))
  {
    v24 = *(v22 + 56) + 24 * result;
    v3 = *v24;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
    v26 = -1;
  }

  v27 = v4[1];
  v79[0] = *v4;
  v79[1] = v27;
  v80[0] = v4[2];
  *(v80 + 9) = *(v4 + 41);
  v28 = v4;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  while (1)
  {
    v32 = *v31;
    if (*v30 >= 2u)
    {
      v33 = *v29;
      if ((*(v33 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v79);
    }

    v29 = (v32 + 16);
    v30 = (v32 + 28);
    v31 = (v32 + 48);
    v28 = v32;
  }

  v34 = *v28;
  if (!v34)
  {
    goto LABEL_47;
  }

  result = v34 + 24 * *(v33 + 8);
  v35 = *(*result + 112);
  if (!v35)
  {
    goto LABEL_43;
  }

  *v35 = v17;
  *(v35 + 8) = v18;
  v36 = v72[0];
  *(v35 + 80) = v71;
  *(v35 + 96) = v36;
  *(v35 + 109) = *(v72 + 13);
  v37 = v68;
  *(v35 + 16) = v67;
  *(v35 + 32) = v37;
  v38 = v70;
  *(v35 + 48) = v69;
  *(v35 + 64) = v38;
  v73[0] = v3;
  v74 = v26;
  if ((a2 & 1) == 0)
  {
    return v3;
  }

  v39 = __CFADD__(v25, 1);
  v40 = v25 + 1;
  if (v39)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v73[1] = v40;
  v41 = v4[1];
  v77[0] = *v4;
  v77[1] = v41;
  v78[0] = v4[2];
  *(v78 + 9) = *(v4 + 41);
  v42 = v8;
  v43 = v7;
  v44 = v6;
  for (i = v4; ; i = v46)
  {
    v46 = *v42;
    if (*v43 >= 2u)
    {
      v47 = *v44;
      if ((*(v47 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v46)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v77);
    }

    v44 = (v46 + 16);
    v43 = (v46 + 28);
    v42 = (v46 + 48);
  }

  if (!*i)
  {
    goto LABEL_48;
  }

  result = *i + 24 * *(v47 + 8);
  v48 = *(*result + 112);
  if (v48)
  {
    v49 = v48[5];
    v64 = v48[4];
    v65 = v49;
    v66[0] = v48[6];
    *(v66 + 13) = *(v48 + 109);
    v50 = v48[1];
    v60 = *v48;
    v61 = v50;
    v51 = v48[3];
    v62 = v48[2];
    v63 = v51;
    result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v60 + 1, v58, v73, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMR);
    v52 = v4[1];
    v75[0] = *v4;
    v75[1] = v52;
    v76[0] = v4[2];
    *(v76 + 9) = *(v4 + 41);
    while (1)
    {
      v53 = *v8;
      if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
      {
        break;
      }

      if (!v53)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v75);
      }

      v6 = (v53 + 16);
      v7 = (v53 + 28);
      v8 = (v53 + 48);
      v4 = v53;
    }

    if (!*v4)
    {
      goto LABEL_49;
    }

    result = *v4 + 24 * *(*v6 + 8);
    v54 = *(*result + 112);
    if (v54)
    {
      v55 = v65;
      v54[4] = v64;
      v54[5] = v55;
      v54[6] = v66[0];
      *(v54 + 109) = *(v66 + 13);
      v56 = v61;
      *v54 = v60;
      v54[1] = v56;
      v57 = v63;
      v54[2] = v62;
      v54[3] = v57;
      return v3;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
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
  return result;
}

uint64_t static TraceAddress.ref(_:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return static TraceAddress.ref(_:within:)(a1, a2, a3, a4, a5);
}

{
  v38 = a1;
  v39 = a2;
  v36 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v29 - v9;
  v11 = swift_checkMetadataState();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = v29 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v29 - v16;
  v43 = a3;
  v44 = a4;
  v45 = v38;
  v18 = *(a4 + 136);
  v29[1] = a4 + 136;
  v30 = a4;
  v29[0] = v18;
  v18(v39, partial apply for closure #1 in static TraceAddress.ref(_:within:), v42, TupleTypeMetadata2, a3, a4);
  v35 = TupleTypeMetadata2;
  v41 = *(TupleTypeMetadata2 + 48);
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static FixedWidthInteger.max.getter();
  if (v8 == v12)
  {
    v20 = v33;
    v21 = v37;
    v31 = *(v33 + 16);
    v31(v37, v10, v11);
    (*(v32 + 8))(v10, AssociatedTypeWitness);
    v22 = *(*(AssociatedConformanceWitness + 8) + 8);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = (*(v20 + 8))(v21, v11);
    if (v23)
    {
      MEMORY[0x28223BE20](v24);
      v25 = v30;
      v29[-4] = a3;
      v29[-3] = v25;
      v29[-2] = v17;
      v26 = v37;
      v27 = v39;
      (*(v25 + 144))(v39, partial apply for closure #2 in static TraceAddress.ref(_:within:));
      v28 = (*(v20 + 40))(&v17[v41], v26, v11);
      MEMORY[0x28223BE20](v28);
      v29[-4] = a3;
      v29[-3] = v25;
      v29[-2] = v38;
      v29[-1] = v17;
      (v29[0])(v27, partial apply for closure #3 in static TraceAddress.ref(_:within:));
    }

    v31(v36, &v17[v41], v11);
    return (*(v34 + 8))(v17, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}