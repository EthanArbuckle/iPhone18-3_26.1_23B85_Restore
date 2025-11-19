unint64_t specialized Interpreter.Iterator.observe<A>(invalidation:)(unint64_t a1)
{
  return specialized Interpreter.Iterator.observe<A>(invalidation:)(a1, specialized Interpreter.Iterator.new<A, B>(event:_:discreet:));
}

{
  return specialized Interpreter.Iterator.observe<A>(invalidation:)(a1, specialized Interpreter.Iterator.new<A, B>(event:_:discreet:));
}

{
  return specialized Interpreter.Iterator.observe<A>(invalidation:)(a1, specialized Interpreter.Iterator.new<A, B>(event:_:discreet:));
}

unint64_t specialized Interpreter.Iterator.observe<A>(invalidation:)(unint64_t result, uint64_t (*a2)(unint64_t, void, void))
{
  v3 = *(v2 + 72);
  v221[0] = *(v2 + 56);
  v221[1] = v3;
  v222[0] = *(v2 + 88);
  *(v222 + 9) = *(v2 + 97);
  v4 = v2 + 88;
  v5 = v2 + 100;
  v6 = *(v2 + 29);
  v7 = v2 + 56;
  v8 = (v2 + 104);
  while (1)
  {
    v9 = *v8;
    if (v6 < *v5)
    {
      v10 = (*v4 + 8 * v6);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v2 + 29), 0, v221);
    }

    v4 = (v9 + 32);
    v5 = (v9 + 44);
    v8 = (v9 + 48);
    v7 = v9;
  }

  if (!*v7)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  result = a2(result, *(*(*v7 + 24 * *v10) + 32), 0);
  v11 = result;
  v12 = *v2;
  v13 = v2[48];
  v14 = *(v2 + 72);
  v219[0] = *(v2 + 56);
  v219[1] = v14;
  v220[0] = *(v2 + 88);
  *(v220 + 9) = *(v2 + 97);
  v15 = (v2 + 72);
  v16 = v2 + 84;
  v17 = (v2 + 56);
  v198 = v2 + 72;
  v201 = v2 + 84;
  v18 = (v2 + 104);
  v19 = *(v2 + 22);
  while (1)
  {
    v20 = *v18;
    if (*v16)
    {
      v21 = *v15;
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v219);
    }

    v15 = (v20 + 16);
    v16 = (v20 + 28);
    v18 = (v20 + 48);
    v17 = v20;
  }

  v22 = *v17;
  if (!v22)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  result = v22 + 24 * *v21;
  v196 = v11;
  v199 = v2 + 104;
  v200 = v2 + 56;
  v197 = v2;
  v23 = *(*result + 112);
  if (!v23)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v24 = *(*(v23 + 32) + 8);
  v25 = *(v24 + 16);
  v26 = (v24 + 48 * v25 - 16);
  do
  {
    if (v25-- < 1)
    {
LABEL_92:
      v102 = *v197;
      v203 = v197[48];
      v103 = v200;
      v104 = v201;
      v105 = v200[1];
      v211[0] = *v200;
      v211[1] = v105;
      v212[0] = v200[2];
      *(v212 + 9) = *(v200 + 41);
      v106 = v198;
      v107 = v199;
      while (1)
      {
        v108 = *v107;
        if (*v104)
        {
          v109 = *v106;
          if ((v109[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v108)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v211);
        }

        v106 = (v108 + 16);
        v104 = (v108 + 28);
        v107 = (v108 + 48);
        v103 = v108;
      }

      v110 = *v103;
      if (!v110)
      {
        goto LABEL_249;
      }

      result = v110 + 24 * *v109;
      v111 = *(*result + 112);
      if (!v111)
      {
        goto LABEL_234;
      }

      v112 = *(*(v111 + 32) + 8);
      v113 = *(v112 + 16);

      if (!v113)
      {
LABEL_116:

        v126 = v197;
        v128 = v199;
        v127 = v200;
LABEL_132:
        v146 = *v126;
        v204 = v126[48];
        v147 = v127[1];
        v208 = *v127;
        v209 = v147;
        v210[0] = v127[2];
        *(v210 + 9) = *(v127 + 41);
        v148 = v128;
        v149 = v201;
        v150 = v198;
        for (i = v127; ; i = v152)
        {
          v152 = *v148;
          if (*v149)
          {
            v153 = *v150;
            if ((v153[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v152)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v208);
          }

          v150 = (v152 + 16);
          v149 = (v152 + 28);
          v148 = (v152 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        result = *i + 24 * *v153;
        v154 = *(*result + 112);
        if (!v154)
        {
          goto LABEL_235;
        }

        v155 = *(*(v154 + 32) + 8);
        v156 = *(v155 + 16);

        if (!v156)
        {
LABEL_156:

          v168 = v198;
          v170 = v199;
          v169 = v200;
LABEL_172:
          v188 = v169[1];
          v205 = *v169;
          v206 = v188;
          v207[0] = v169[2];
          *(v207 + 9) = *(v169 + 41);
          v189 = v201;
          while (1)
          {
            v190 = *v170;
            if (*v189)
            {
              if ((*(*v168 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v190)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
            }

            v168 = (v190 + 16);
            v189 = (v190 + 28);
            v170 = (v190 + 48);
            v169 = v190;
          }

          if (!*v169)
          {
            goto LABEL_251;
          }

          result = *v169 + 24 * **v168;
          v191 = *(*result + 112);
          if (!v191)
          {
            goto LABEL_236;
          }

          v192 = *(v191 + 32);
          v193 = *(v192 + 24);
          v194 = *(v192 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v193);
          Interpreter.Iterator.finalize(update:observer:)(v196, v193, v194);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v193);
          LOBYTE(v221[0]) = 0;
          return v196;
        }

        v157 = 48 * v156 - 16;
        while (v156 <= *(v155 + 16))
        {
          if (v204)
          {
            goto LABEL_226;
          }

          if (*(v19 + 116) <= v146)
          {
            goto LABEL_193;
          }

          v158 = *(v19 + 104);
          if (!v158)
          {
            goto LABEL_227;
          }

          v159 = *(v155 + v157);
          v160 = *(*(v158 + 8 * v146) + 8);
          if (v159 >= *(v160 + 44))
          {
            goto LABEL_194;
          }

          v161 = *(v160 + 32);
          if (!v161)
          {
            goto LABEL_228;
          }

          v162 = v161 + (v159 << 7);
          v163 = *(v162 + 8);
          v166 = *(v162 + 28);
          v165 = *(v162 + 32);
          v164 = *(v162 + 24);
          *(v162 + 25);
          result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v163, *(v162 + 16), v164, v165);
          if (v166 == result && v165 == HIDWORD(result))
          {
            v205 = 0u;
            v206 = 0u;
            v207[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v205, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v197[48])
            {
              goto LABEL_258;
            }

            v171 = *v197;
            v170 = v199;
            v169 = v200;
            v168 = v198;
            if (v171 >= *(v19 + 116))
            {
              goto LABEL_210;
            }

            v172 = *(v19 + 104);
            if (!v172)
            {
              goto LABEL_259;
            }

            v173 = *(*(v172 + 8 * v171) + 8);
            v174 = *(v173 + 44);
            if (v159 >= v174)
            {
              goto LABEL_211;
            }

            v175 = *(v173 + 32);
            if (!v175)
            {
              goto LABEL_260;
            }

            if (v196 >= v174)
            {
              goto LABEL_212;
            }

            v176 = (v175 + (v159 << 7));
            v177 = (v175 + (v196 << 7));
            v178 = *v177;
            v179 = v176[31];
            if (v179 == v176[30])
            {
              result = specialized UnsafeArray.growToCapacity(_:)(2 * v179);
            }

            v180 = *(v176 + 14);
            if (!v180)
            {
              goto LABEL_261;
            }

            v181 = v176[31];
            v182 = v180 + 8 * v181;
            *v182 = -20480;
            *(v182 + 4) = v178;
            if (v181 == -1)
            {
              goto LABEL_213;
            }

            v176[31] = v181 + 1;
            v183 = *v176;
            v184 = v177[31];
            if (v184 == v177[30])
            {
              result = specialized UnsafeArray.growToCapacity(_:)(2 * v184);
            }

            v185 = *(v177 + 14);
            if (v185)
            {
              v186 = v177[31];
              v187 = v185 + 8 * v186;
              *v187 = 28672;
              *(v187 + 4) = v183;
              if (v186 == -1)
              {
                goto LABEL_214;
              }

              v177[31] = v186 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(result) >= v165)
          {
            goto LABEL_196;
          }

          if (v164)
          {
            goto LABEL_231;
          }

          if (!v163)
          {
            goto LABEL_232;
          }

          --v156;
          outlined init with copy of Event.Action(v163 + result + 8, &v205);
          result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v205, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v157 -= 48;
          if (v156 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v114 = 48 * v113 - 16;
      while (v113 <= *(v112 + 16))
      {
        if (v203)
        {
          goto LABEL_223;
        }

        if (*(v19 + 116) <= v102)
        {
          goto LABEL_190;
        }

        v115 = *(v19 + 104);
        if (!v115)
        {
          goto LABEL_224;
        }

        v116 = *(v112 + v114);
        v117 = *(*(v115 + 8 * v102) + 8);
        if (v116 >= *(v117 + 44))
        {
          goto LABEL_191;
        }

        v118 = *(v117 + 32);
        if (!v118)
        {
          goto LABEL_225;
        }

        v119 = v118 + (v116 << 7);
        v121 = *(v119 + 8);
        v120 = *(v119 + 16);
        v122 = *(v119 + 25);
        v124 = *(v119 + 28);
        v123 = *(v119 + 32);
        LOBYTE(v205) = *(v119 + 24);
        result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v121, v120, v205, v123);
        if (v124 == result && v123 == HIDWORD(result))
        {
          v208 = 0u;
          v209 = 0u;
          v210[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v208, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v126 = v197;
          if (v197[48])
          {
            goto LABEL_253;
          }

          v129 = *v197;
          v128 = v199;
          v127 = v200;
          if (v129 >= *(v19 + 116))
          {
            goto LABEL_205;
          }

          v130 = *(v19 + 104);
          if (!v130)
          {
            goto LABEL_254;
          }

          v131 = *(*(v130 + 8 * v129) + 8);
          v132 = *(v131 + 44);
          if (v116 >= v132)
          {
            goto LABEL_206;
          }

          v133 = *(v131 + 32);
          if (!v133)
          {
            goto LABEL_255;
          }

          if (v196 >= v132)
          {
            goto LABEL_207;
          }

          v134 = (v133 + (v116 << 7));
          v135 = (v133 + (v196 << 7));
          v136 = *v135;
          v137 = v134[31];
          if (v137 == v134[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)(2 * v137);
          }

          v138 = *(v134 + 14);
          if (!v138)
          {
            goto LABEL_256;
          }

          v139 = v134[31];
          v140 = v138 + 8 * v139;
          *v140 = -23552;
          *(v140 + 4) = v136;
          if (v139 == -1)
          {
            goto LABEL_208;
          }

          v134[31] = v139 + 1;
          v141 = *v134;
          v142 = v135[31];
          if (v142 == v135[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)(2 * v142);
          }

          v143 = *(v135 + 14);
          if (v143)
          {
            v144 = v135[31];
            v145 = v143 + 8 * v144;
            *v145 = 25600;
            *(v145 + 4) = v141;
            if (v144 == -1)
            {
              goto LABEL_209;
            }

            v135[31] = v144 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(result) >= v123)
        {
          goto LABEL_195;
        }

        if (v205)
        {
          goto LABEL_229;
        }

        if (!v121)
        {
          goto LABEL_230;
        }

        --v113;
        outlined init with copy of Event.Transaction(v121 + result + 8, &v208);
        result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v208, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v114 -= 48;
        if (v113 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v25 + 1) > *(v24 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v13)
    {
      goto LABEL_215;
    }

    if (*(v19 + 116) <= v12)
    {
      goto LABEL_182;
    }

    v28 = *(v19 + 104);
    if (!v28)
    {
      goto LABEL_216;
    }

    v29 = *v26;
    v30 = *(*(v28 + 8 * v12) + 8);
    if (v29 >= *(v30 + 44))
    {
      goto LABEL_183;
    }

    v31 = *(v30 + 32);
    if (!v31)
    {
      goto LABEL_217;
    }

    v32 = v31 + (v29 << 7);
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
    v35 = *(v32 + 25);
    v37 = *(v32 + 28);
    v36 = *(v32 + 32);
    LOBYTE(v217[0]) = *(v32 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v34, v33, v217[0], v36);
    if (v37 == result && v36 == HIDWORD(result))
    {
      goto LABEL_32;
    }

    if (HIDWORD(result) >= v36)
    {
      goto LABEL_184;
    }

    if (v217[0])
    {
      goto LABEL_218;
    }

    v26 -= 12;
  }

  while (v34);
  __break(1u);
LABEL_32:
  if (v197[48])
  {
    goto LABEL_237;
  }

  v39 = *v197;
  if (v39 >= *(v19 + 116))
  {
    goto LABEL_197;
  }

  v40 = *(v19 + 104);
  if (!v40)
  {
    goto LABEL_238;
  }

  v41 = *(*(v40 + 8 * v39) + 8);
  v42 = v200[1];
  v217[0] = *v200;
  v217[1] = v42;
  v218[0] = v200[2];
  *(v218 + 9) = *(v200 + 41);
  v43 = v200;
  v44 = v198;
  v45 = v201;
  v46 = v199;
  while (1)
  {
    v47 = *v46;
    if (*v45)
    {
      v48 = *v44;
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v217);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_263;
  }

  result = v49 + 24 * *v48;
  v50 = *(*result + 112);
  if (!v50)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v50 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v197[48])
  {
    goto LABEL_240;
  }

  v51 = *v197;
  if (v51 >= *(v19 + 116))
  {
    goto LABEL_199;
  }

  v52 = *(v19 + 104);
  if (!v52)
  {
    goto LABEL_241;
  }

  v53 = *(*(v52 + 8 * v51) + 8);
  v54 = v200[1];
  v215[0] = *v200;
  v215[1] = v54;
  v216[0] = v200[2];
  *(v216 + 9) = *(v200 + 41);
  v55 = v200;
  v56 = v198;
  v57 = v201;
  v58 = v199;
  while (1)
  {
    v59 = *v58;
    if (*v57)
    {
      v60 = *v56;
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v215);
    }

    v56 = (v59 + 16);
    v57 = (v59 + 28);
    v58 = (v59 + 48);
    v55 = v59;
  }

  v61 = *v55;
  if (v61)
  {
    result = v61 + 24 * *v60;
    v202 = v53;
    v195 = v41;
    v62 = *(*result + 112);
    if (!v62)
    {
      goto LABEL_242;
    }

    v63 = *(*(v62 + 32) + 8);
    v64 = *(v63 + 16);
    v65 = 48 * v64 - 16;
    while (v64 > 0)
    {
      if (v64 > *(v63 + 16))
      {
        goto LABEL_185;
      }

      if (*(v19 + 116) <= v51)
      {
        goto LABEL_186;
      }

      v66 = *(v19 + 104);
      if (!v66)
      {
        goto LABEL_220;
      }

      v67 = *(v63 + v65);
      v68 = *(*(v66 + 8 * v51) + 8);
      if (v67 >= *(v68 + 44))
      {
        goto LABEL_187;
      }

      v69 = *(v68 + 32);
      if (!v69)
      {
        goto LABEL_221;
      }

      v70 = v69 + (v67 << 7);
      v72 = *(v70 + 8);
      v71 = *(v70 + 16);
      v73 = *(v70 + 25);
      v75 = *(v70 + 28);
      v74 = *(v70 + 32);
      LOBYTE(v213[0]) = *(v70 + 24);
      result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v72, v71, v213[0], v74);
      if (v75 == result && v74 == HIDWORD(result))
      {
        goto LABEL_70;
      }

      if (HIDWORD(result) >= v74)
      {
        goto LABEL_188;
      }

      if (v213[0])
      {
        goto LABEL_222;
      }

      v65 -= 48;
      --v64;
      if (!v72)
      {
        __break(1u);
LABEL_70:
        v77 = v200;
        v78 = v201;
        v79 = v200[1];
        v213[0] = *v200;
        v213[1] = v79;
        v214[0] = v200[2];
        *(v214 + 9) = *(v200 + 41);
        v80 = v198;
        v81 = v199;
        while (1)
        {
          v82 = *v81;
          if (*v78)
          {
            v83 = *v80;
            if ((v83[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v82)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v213);
          }

          v80 = (v82 + 16);
          v78 = (v82 + 28);
          v81 = (v82 + 48);
          v77 = v82;
        }

        v84 = *v77;
        if (!v84)
        {
          goto LABEL_265;
        }

        result = v84 + 24 * *v83;
        v85 = *(*result + 112);
        if (!v85)
        {
          goto LABEL_243;
        }

        v86 = *(*(v85 + 32) + 8);
        if (v64 > *(v86 + 16))
        {
          goto LABEL_200;
        }

        v87 = *(v86 + v65);
        if (v87 >= *(v202 + 44))
        {
          goto LABEL_201;
        }

        v88 = *(v202 + 32);
        if (!v88)
        {
          goto LABEL_244;
        }

        if (v196 >= *(v195 + 44))
        {
          goto LABEL_202;
        }

        v89 = *(v195 + 32);
        if (v89)
        {
          v90 = (v88 + (v87 << 7));
          v91 = (v89 + (v196 << 7));
          v92 = *v91;
          v93 = v90[31];
          if (v93 == v90[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)(2 * v93);
          }

          v94 = *(v90 + 14);
          if (!v94)
          {
            goto LABEL_246;
          }

          v95 = v90[31];
          v96 = v94 + 8 * v95;
          *v96 = -24575;
          *(v96 + 4) = v92;
          if (v95 == -1)
          {
            goto LABEL_203;
          }

          v90[31] = v95 + 1;
          v97 = *v90;
          v98 = v91[31];
          if (v98 == v91[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)(2 * v98);
          }

          v99 = *(v91 + 14);
          if (v99)
          {
            v100 = v91[31];
            v101 = v99 + 8 * v100;
            *v101 = 24577;
            *(v101 + 4) = v97;
            if (v100 == -1)
            {
              goto LABEL_204;
            }

            v91[31] = v100 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(int a1)
{
  v2 = *(v1 + 72);
  v224[0] = *(v1 + 56);
  v224[1] = v2;
  v225[0] = *(v1 + 88);
  *(v225 + 9) = *(v1 + 97);
  v3 = v1 + 88;
  v4 = v1 + 100;
  v5 = *(v1 + 29);
  v6 = v1 + 56;
  v7 = (v1 + 104);
  while (1)
  {
    v8 = *v7;
    if (v5 < *v4)
    {
      v9 = (*v3 + 8 * v5);
      if ((v9[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v1 + 29), 0, v224);
    }

    v3 = (v8 + 32);
    v4 = (v8 + 44);
    v7 = (v8 + 48);
    v6 = v8;
  }

  if (!*v6)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, *(*(*v6 + 24 * *v9) + 32), 0);
  v11 = *v1;
  v12 = v1[48];
  v13 = *(v1 + 72);
  v222[0] = *(v1 + 56);
  v222[1] = v13;
  v223[0] = *(v1 + 88);
  *(v223 + 9) = *(v1 + 97);
  v14 = v1 + 84;
  v15 = (v1 + 56);
  v16 = (v1 + 72);
  v204 = v1 + 84;
  v17 = (v1 + 104);
  v18 = *(v1 + 22);
  while (1)
  {
    v19 = *v17;
    if (*v14)
    {
      v20 = *v16;
      if ((v20[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v222);
    }

    v16 = (v19 + 16);
    v14 = (v19 + 28);
    v17 = (v19 + 48);
    v15 = v19;
  }

  v21 = *v15;
  if (!v21)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v201 = v1 + 72;
  v202 = v1 + 104;
  v199 = v10;
  v203 = v1 + 56;
  v200 = v1;
  v22 = *(*(v21 + 24 * *v20) + 112);
  if (!v22)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v23 = *(*(v22 + 32) + 8);
  v24 = *(v23 + 16);
  v25 = (v23 + 48 * v24 - 16);
  do
  {
    if (v24-- < 1)
    {
LABEL_92:
      v103 = *v200;
      v206 = v200[48];
      v104 = v203;
      v105 = v204;
      v106 = v203[1];
      v214[0] = *v203;
      v214[1] = v106;
      v215[0] = v203[2];
      *(v215 + 9) = *(v203 + 41);
      v107 = v201;
      v108 = v202;
      while (1)
      {
        v109 = *v108;
        if (*v105)
        {
          v110 = *v107;
          if ((v110[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v109)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
        }

        v107 = (v109 + 16);
        v105 = (v109 + 28);
        v108 = (v109 + 48);
        v104 = v109;
      }

      v111 = *v104;
      if (!v111)
      {
        goto LABEL_249;
      }

      v112 = *(*(v111 + 24 * *v110) + 112);
      if (!v112)
      {
        goto LABEL_234;
      }

      v113 = *(*(v112 + 32) + 8);
      v114 = *(v113 + 16);

      if (!v114)
      {
LABEL_116:

        v128 = v200;
        v130 = v202;
        v129 = v203;
LABEL_132:
        v148 = *v128;
        v207 = v128[48];
        v149 = v129[1];
        v211 = *v129;
        v212 = v149;
        v213[0] = v129[2];
        *(v213 + 9) = *(v129 + 41);
        v150 = v130;
        v151 = v204;
        v152 = v201;
        for (i = v129; ; i = v154)
        {
          v154 = *v150;
          if (*v151)
          {
            v155 = *v152;
            if ((v155[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v154)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v211);
          }

          v152 = (v154 + 16);
          v151 = (v154 + 28);
          v150 = (v154 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        v156 = *(*(*i + 24 * *v155) + 112);
        if (!v156)
        {
          goto LABEL_235;
        }

        v157 = *(*(v156 + 32) + 8);
        v158 = *(v157 + 16);

        if (!v158)
        {
LABEL_156:

          v171 = v201;
          v173 = v202;
          v172 = v203;
LABEL_172:
          v191 = v172[1];
          v208 = *v172;
          v209 = v191;
          v210[0] = v172[2];
          *(v210 + 9) = *(v172 + 41);
          v192 = v204;
          while (1)
          {
            v193 = *v173;
            if (*v192)
            {
              if ((*(*v171 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v193)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v208);
            }

            v171 = (v193 + 16);
            v192 = (v193 + 28);
            v173 = (v193 + 48);
            v172 = v193;
          }

          if (!*v172)
          {
            goto LABEL_251;
          }

          v194 = *(*(*v172 + 24 * **v171) + 112);
          if (!v194)
          {
            goto LABEL_236;
          }

          v195 = *(v194 + 32);
          v196 = *(v195 + 24);
          v197 = *(v195 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v196);
          Interpreter.Iterator.finalize(update:observer:)(v199, v196, v197);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v196);
          LOBYTE(v224[0]) = 0;
          return;
        }

        v159 = 48 * v158 - 16;
        while (v158 <= *(v157 + 16))
        {
          if (v207)
          {
            goto LABEL_226;
          }

          if (*(v18 + 116) <= v148)
          {
            goto LABEL_193;
          }

          v160 = *(v18 + 104);
          if (!v160)
          {
            goto LABEL_227;
          }

          v161 = *(v157 + v159);
          v162 = *(*(v160 + 8 * v148) + 8);
          if (v161 >= *(v162 + 44))
          {
            goto LABEL_194;
          }

          v163 = *(v162 + 32);
          if (!v163)
          {
            goto LABEL_228;
          }

          v164 = v163 + (v161 << 7);
          v165 = *(v164 + 8);
          v168 = *(v164 + 28);
          v167 = *(v164 + 32);
          v166 = *(v164 + 24);
          *(v164 + 25);
          v169 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v165, *(v164 + 16), v166, v167);
          if (v168 == v169 && v167 == HIDWORD(v169))
          {
            v208 = 0u;
            v209 = 0u;
            v210[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v208, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v200[48])
            {
              goto LABEL_258;
            }

            v174 = *v200;
            v173 = v202;
            v172 = v203;
            v171 = v201;
            if (v174 >= *(v18 + 116))
            {
              goto LABEL_210;
            }

            v175 = *(v18 + 104);
            if (!v175)
            {
              goto LABEL_259;
            }

            v176 = *(*(v175 + 8 * v174) + 8);
            v177 = *(v176 + 44);
            if (v161 >= v177)
            {
              goto LABEL_211;
            }

            v178 = *(v176 + 32);
            if (!v178)
            {
              goto LABEL_260;
            }

            if (v199 >= v177)
            {
              goto LABEL_212;
            }

            v179 = (v178 + (v161 << 7));
            v180 = (v178 + (v199 << 7));
            v181 = *v180;
            v182 = v179[31];
            if (v182 == v179[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v182);
            }

            v183 = *(v179 + 14);
            if (!v183)
            {
              goto LABEL_261;
            }

            v184 = v179[31];
            v185 = v183 + 8 * v184;
            *v185 = -20480;
            *(v185 + 4) = v181;
            if (v184 == -1)
            {
              goto LABEL_213;
            }

            v179[31] = v184 + 1;
            v186 = *v179;
            v187 = v180[31];
            if (v187 == v180[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v187);
            }

            v188 = *(v180 + 14);
            if (v188)
            {
              v189 = v180[31];
              v190 = v188 + 8 * v189;
              *v190 = 28672;
              *(v190 + 4) = v186;
              if (v189 == -1)
              {
                goto LABEL_214;
              }

              v180[31] = v189 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(v169) >= v167)
          {
            goto LABEL_196;
          }

          if (v166)
          {
            goto LABEL_231;
          }

          if (!v165)
          {
            goto LABEL_232;
          }

          --v158;
          outlined init with copy of Event.Action(v165 + v169 + 8, &v208);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v208, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v159 -= 48;
          if (v158 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v115 = 48 * v114 - 16;
      while (v114 <= *(v113 + 16))
      {
        if (v206)
        {
          goto LABEL_223;
        }

        if (*(v18 + 116) <= v103)
        {
          goto LABEL_190;
        }

        v116 = *(v18 + 104);
        if (!v116)
        {
          goto LABEL_224;
        }

        v117 = *(v113 + v115);
        v118 = *(*(v116 + 8 * v103) + 8);
        if (v117 >= *(v118 + 44))
        {
          goto LABEL_191;
        }

        v119 = *(v118 + 32);
        if (!v119)
        {
          goto LABEL_225;
        }

        v120 = v119 + (v117 << 7);
        v122 = *(v120 + 8);
        v121 = *(v120 + 16);
        v123 = *(v120 + 25);
        v125 = *(v120 + 28);
        v124 = *(v120 + 32);
        LOBYTE(v208) = *(v120 + 24);
        v126 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v122, v121, v208, v124);
        if (v125 == v126 && v124 == HIDWORD(v126))
        {
          v211 = 0u;
          v212 = 0u;
          v213[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v211, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v128 = v200;
          if (v200[48])
          {
            goto LABEL_253;
          }

          v131 = *v200;
          v130 = v202;
          v129 = v203;
          if (v131 >= *(v18 + 116))
          {
            goto LABEL_205;
          }

          v132 = *(v18 + 104);
          if (!v132)
          {
            goto LABEL_254;
          }

          v133 = *(*(v132 + 8 * v131) + 8);
          v134 = *(v133 + 44);
          if (v117 >= v134)
          {
            goto LABEL_206;
          }

          v135 = *(v133 + 32);
          if (!v135)
          {
            goto LABEL_255;
          }

          if (v199 >= v134)
          {
            goto LABEL_207;
          }

          v136 = (v135 + (v117 << 7));
          v137 = (v135 + (v199 << 7));
          v138 = *v137;
          v139 = v136[31];
          if (v139 == v136[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v139);
          }

          v140 = *(v136 + 14);
          if (!v140)
          {
            goto LABEL_256;
          }

          v141 = v136[31];
          v142 = v140 + 8 * v141;
          *v142 = -23552;
          *(v142 + 4) = v138;
          if (v141 == -1)
          {
            goto LABEL_208;
          }

          v136[31] = v141 + 1;
          v143 = *v136;
          v144 = v137[31];
          if (v144 == v137[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v144);
          }

          v145 = *(v137 + 14);
          if (v145)
          {
            v146 = v137[31];
            v147 = v145 + 8 * v146;
            *v147 = 25600;
            *(v147 + 4) = v143;
            if (v146 == -1)
            {
              goto LABEL_209;
            }

            v137[31] = v146 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(v126) >= v124)
        {
          goto LABEL_195;
        }

        if (v208)
        {
          goto LABEL_229;
        }

        if (!v122)
        {
          goto LABEL_230;
        }

        --v114;
        outlined init with copy of Event.Transaction(v122 + v126 + 8, &v211);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v211, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v115 -= 48;
        if (v114 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v24 + 1) > *(v23 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v12)
    {
      goto LABEL_215;
    }

    if (*(v18 + 116) <= v11)
    {
      goto LABEL_182;
    }

    v27 = *(v18 + 104);
    if (!v27)
    {
      goto LABEL_216;
    }

    v28 = *v25;
    v29 = *(*(v27 + 8 * v11) + 8);
    if (v28 >= *(v29 + 44))
    {
      goto LABEL_183;
    }

    v30 = *(v29 + 32);
    if (!v30)
    {
      goto LABEL_217;
    }

    v31 = v30 + (v28 << 7);
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
    v34 = *(v31 + 25);
    v36 = *(v31 + 28);
    v35 = *(v31 + 32);
    LOBYTE(v220[0]) = *(v31 + 24);
    v37 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v33, v32, v220[0], v35);
    if (v36 == v37 && v35 == HIDWORD(v37))
    {
      goto LABEL_32;
    }

    if (HIDWORD(v37) >= v35)
    {
      goto LABEL_184;
    }

    if (v220[0])
    {
      goto LABEL_218;
    }

    v25 -= 12;
  }

  while (v33);
  __break(1u);
LABEL_32:
  if (v200[48])
  {
    goto LABEL_237;
  }

  v39 = *v200;
  if (v39 >= *(v18 + 116))
  {
    goto LABEL_197;
  }

  v40 = *(v18 + 104);
  if (!v40)
  {
    goto LABEL_238;
  }

  v41 = *(*(v40 + 8 * v39) + 8);
  v42 = v203[1];
  v220[0] = *v203;
  v220[1] = v42;
  v221[0] = v203[2];
  *(v221 + 9) = *(v203 + 41);
  v43 = v203;
  v44 = v201;
  v45 = v204;
  v46 = v202;
  while (1)
  {
    v47 = *v46;
    if (*v45)
    {
      v48 = *v44;
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v220);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_263;
  }

  v50 = *(*(v49 + 24 * *v48) + 112);
  if (!v50)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v50 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v200[48])
  {
    goto LABEL_240;
  }

  v51 = *v200;
  if (v51 >= *(v18 + 116))
  {
    goto LABEL_199;
  }

  v52 = *(v18 + 104);
  if (!v52)
  {
    goto LABEL_241;
  }

  v53 = *(*(v52 + 8 * v51) + 8);
  v54 = v203[1];
  v218[0] = *v203;
  v218[1] = v54;
  v219[0] = v203[2];
  *(v219 + 9) = *(v203 + 41);
  v55 = v203;
  v56 = v201;
  v57 = v204;
  v58 = v202;
  while (1)
  {
    v59 = *v58;
    if (*v57)
    {
      v60 = *v56;
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v218);
    }

    v56 = (v59 + 16);
    v57 = (v59 + 28);
    v58 = (v59 + 48);
    v55 = v59;
  }

  v61 = *v55;
  if (v61)
  {
    v205 = v53;
    v198 = v41;
    v62 = *(*(v61 + 24 * *v60) + 112);
    if (!v62)
    {
      goto LABEL_242;
    }

    v63 = *(*(v62 + 32) + 8);
    v64 = *(v63 + 16);
    v65 = 48 * v64 - 16;
    while (v64 > 0)
    {
      if (v64 > *(v63 + 16))
      {
        goto LABEL_185;
      }

      if (*(v18 + 116) <= v51)
      {
        goto LABEL_186;
      }

      v66 = *(v18 + 104);
      if (!v66)
      {
        goto LABEL_220;
      }

      v67 = *(v63 + v65);
      v68 = *(*(v66 + 8 * v51) + 8);
      if (v67 >= *(v68 + 44))
      {
        goto LABEL_187;
      }

      v69 = *(v68 + 32);
      if (!v69)
      {
        goto LABEL_221;
      }

      v70 = v69 + (v67 << 7);
      v72 = *(v70 + 8);
      v71 = *(v70 + 16);
      v73 = *(v70 + 25);
      v75 = *(v70 + 28);
      v74 = *(v70 + 32);
      LOBYTE(v216[0]) = *(v70 + 24);
      v76 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v72, v71, v216[0], v74);
      if (v75 == v76 && v74 == HIDWORD(v76))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v76) >= v74)
      {
        goto LABEL_188;
      }

      if (v216[0])
      {
        goto LABEL_222;
      }

      v65 -= 48;
      --v64;
      if (!v72)
      {
        __break(1u);
LABEL_70:
        v78 = v203;
        v79 = v204;
        v80 = v203[1];
        v216[0] = *v203;
        v216[1] = v80;
        v217[0] = v203[2];
        *(v217 + 9) = *(v203 + 41);
        v81 = v201;
        v82 = v202;
        while (1)
        {
          v83 = *v82;
          if (*v79)
          {
            v84 = *v81;
            if ((v84[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v83)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
          }

          v81 = (v83 + 16);
          v79 = (v83 + 28);
          v82 = (v83 + 48);
          v78 = v83;
        }

        v85 = *v78;
        if (!v85)
        {
          goto LABEL_265;
        }

        v86 = *(*(v85 + 24 * *v84) + 112);
        if (!v86)
        {
          goto LABEL_243;
        }

        v87 = *(*(v86 + 32) + 8);
        if (v64 > *(v87 + 16))
        {
          goto LABEL_200;
        }

        v88 = *(v87 + v65);
        if (v88 >= *(v205 + 44))
        {
          goto LABEL_201;
        }

        v89 = *(v205 + 32);
        if (!v89)
        {
          goto LABEL_244;
        }

        if (v199 >= *(v198 + 44))
        {
          goto LABEL_202;
        }

        v90 = *(v198 + 32);
        if (v90)
        {
          v91 = (v89 + (v88 << 7));
          v92 = (v90 + (v199 << 7));
          v93 = *v92;
          v94 = v91[31];
          if (v94 == v91[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v94);
          }

          v95 = *(v91 + 14);
          if (!v95)
          {
            goto LABEL_246;
          }

          v96 = v91[31];
          v97 = v95 + 8 * v96;
          *v97 = -24575;
          *(v97 + 4) = v93;
          if (v96 == -1)
          {
            goto LABEL_203;
          }

          v91[31] = v96 + 1;
          v98 = *v91;
          v99 = v92[31];
          if (v99 == v92[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v99);
          }

          v100 = *(v92 + 14);
          if (v100)
          {
            v101 = v92[31];
            v102 = v100 + 8 * v101;
            *v102 = 24577;
            *(v102 + 4) = v98;
            if (v101 == -1)
            {
              goto LABEL_204;
            }

            v92[31] = v101 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(char a1, double a2)
{
  v4 = *(v2 + 72);
  v226[0] = *(v2 + 56);
  v226[1] = v4;
  v227[0] = *(v2 + 88);
  *(v227 + 9) = *(v2 + 97);
  v5 = v2 + 88;
  v6 = v2 + 100;
  v7 = *(v2 + 29);
  v8 = v2 + 56;
  v9 = (v2 + 104);
  while (1)
  {
    v10 = *v9;
    if (v7 < *v6)
    {
      v11 = (*v5 + 8 * v7);
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v226);
    }

    v5 = (v10 + 32);
    v6 = (v10 + 44);
    v9 = (v10 + 48);
    v8 = v10;
  }

  if (!*v8)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1 & 1, *(*(*v8 + 24 * *v11) + 32), 0, a2);
  v13 = *v2;
  v14 = v2[48];
  v15 = *(v2 + 72);
  v224[0] = *(v2 + 56);
  v224[1] = v15;
  v225[0] = *(v2 + 88);
  *(v225 + 9) = *(v2 + 97);
  v16 = v2 + 84;
  v17 = (v2 + 56);
  v18 = (v2 + 72);
  v206 = v2 + 84;
  v19 = (v2 + 104);
  v20 = *(v2 + 22);
  while (1)
  {
    v21 = *v19;
    if (*v16)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v224);
    }

    v18 = (v21 + 16);
    v16 = (v21 + 28);
    v19 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v203 = v2 + 72;
  v204 = v2 + 104;
  v201 = v12;
  v205 = v2 + 56;
  v202 = v2;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v25 = *(*(v24 + 32) + 8);
  v26 = *(v25 + 16);
  v27 = (v25 + 48 * v26 - 16);
  do
  {
    if (v26-- < 1)
    {
LABEL_92:
      v105 = *v202;
      v208 = v202[48];
      v106 = v205;
      v107 = v206;
      v108 = v205[1];
      v216[0] = *v205;
      v216[1] = v108;
      v217[0] = v205[2];
      *(v217 + 9) = *(v205 + 41);
      v109 = v203;
      v110 = v204;
      while (1)
      {
        v111 = *v110;
        if (*v107)
        {
          v112 = *v109;
          if ((v112[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v111)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
        }

        v109 = (v111 + 16);
        v107 = (v111 + 28);
        v110 = (v111 + 48);
        v106 = v111;
      }

      v113 = *v106;
      if (!v113)
      {
        goto LABEL_249;
      }

      v114 = *(*(v113 + 24 * *v112) + 112);
      if (!v114)
      {
        goto LABEL_234;
      }

      v115 = *(*(v114 + 32) + 8);
      v116 = *(v115 + 16);

      if (!v116)
      {
LABEL_116:

        v130 = v202;
        v132 = v204;
        v131 = v205;
LABEL_132:
        v150 = *v130;
        v209 = v130[48];
        v151 = v131[1];
        v213 = *v131;
        v214 = v151;
        v215[0] = v131[2];
        *(v215 + 9) = *(v131 + 41);
        v152 = v132;
        v153 = v206;
        v154 = v203;
        for (i = v131; ; i = v156)
        {
          v156 = *v152;
          if (*v153)
          {
            v157 = *v154;
            if ((v157[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v156)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v213);
          }

          v154 = (v156 + 16);
          v153 = (v156 + 28);
          v152 = (v156 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        v158 = *(*(*i + 24 * *v157) + 112);
        if (!v158)
        {
          goto LABEL_235;
        }

        v159 = *(*(v158 + 32) + 8);
        v160 = *(v159 + 16);

        if (!v160)
        {
LABEL_156:

          v173 = v203;
          v175 = v204;
          v174 = v205;
LABEL_172:
          v193 = v174[1];
          v210 = *v174;
          v211 = v193;
          v212[0] = v174[2];
          *(v212 + 9) = *(v174 + 41);
          v194 = v206;
          while (1)
          {
            v195 = *v175;
            if (*v194)
            {
              if ((*(*v173 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v195)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v210);
            }

            v173 = (v195 + 16);
            v194 = (v195 + 28);
            v175 = (v195 + 48);
            v174 = v195;
          }

          if (!*v174)
          {
            goto LABEL_251;
          }

          v196 = *(*(*v174 + 24 * **v173) + 112);
          if (!v196)
          {
            goto LABEL_236;
          }

          v197 = *(v196 + 32);
          v198 = *(v197 + 24);
          v199 = *(v197 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v198);
          Interpreter.Iterator.finalize(update:observer:)(v201, v198, v199);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v198);
          LOBYTE(v226[0]) = 0;
          return;
        }

        v161 = 48 * v160 - 16;
        while (v160 <= *(v159 + 16))
        {
          if (v209)
          {
            goto LABEL_226;
          }

          if (*(v20 + 116) <= v150)
          {
            goto LABEL_193;
          }

          v162 = *(v20 + 104);
          if (!v162)
          {
            goto LABEL_227;
          }

          v163 = *(v159 + v161);
          v164 = *(*(v162 + 8 * v150) + 8);
          if (v163 >= *(v164 + 44))
          {
            goto LABEL_194;
          }

          v165 = *(v164 + 32);
          if (!v165)
          {
            goto LABEL_228;
          }

          v166 = v165 + (v163 << 7);
          v167 = *(v166 + 8);
          v170 = *(v166 + 28);
          v169 = *(v166 + 32);
          v168 = *(v166 + 24);
          *(v166 + 25);
          v171 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v167, *(v166 + 16), v168, v169);
          if (v170 == v171 && v169 == HIDWORD(v171))
          {
            v210 = 0u;
            v211 = 0u;
            v212[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v210, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v202[48])
            {
              goto LABEL_258;
            }

            v176 = *v202;
            v175 = v204;
            v174 = v205;
            v173 = v203;
            if (v176 >= *(v20 + 116))
            {
              goto LABEL_210;
            }

            v177 = *(v20 + 104);
            if (!v177)
            {
              goto LABEL_259;
            }

            v178 = *(*(v177 + 8 * v176) + 8);
            v179 = *(v178 + 44);
            if (v163 >= v179)
            {
              goto LABEL_211;
            }

            v180 = *(v178 + 32);
            if (!v180)
            {
              goto LABEL_260;
            }

            if (v201 >= v179)
            {
              goto LABEL_212;
            }

            v181 = (v180 + (v163 << 7));
            v182 = (v180 + (v201 << 7));
            v183 = *v182;
            v184 = v181[31];
            if (v184 == v181[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v184);
            }

            v185 = *(v181 + 14);
            if (!v185)
            {
              goto LABEL_261;
            }

            v186 = v181[31];
            v187 = v185 + 8 * v186;
            *v187 = -20480;
            *(v187 + 4) = v183;
            if (v186 == -1)
            {
              goto LABEL_213;
            }

            v181[31] = v186 + 1;
            v188 = *v181;
            v189 = v182[31];
            if (v189 == v182[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v189);
            }

            v190 = *(v182 + 14);
            if (v190)
            {
              v191 = v182[31];
              v192 = v190 + 8 * v191;
              *v192 = 28672;
              *(v192 + 4) = v188;
              if (v191 == -1)
              {
                goto LABEL_214;
              }

              v182[31] = v191 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(v171) >= v169)
          {
            goto LABEL_196;
          }

          if (v168)
          {
            goto LABEL_231;
          }

          if (!v167)
          {
            goto LABEL_232;
          }

          --v160;
          outlined init with copy of Event.Action(v167 + v171 + 8, &v210);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v210, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v161 -= 48;
          if (v160 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v117 = 48 * v116 - 16;
      while (v116 <= *(v115 + 16))
      {
        if (v208)
        {
          goto LABEL_223;
        }

        if (*(v20 + 116) <= v105)
        {
          goto LABEL_190;
        }

        v118 = *(v20 + 104);
        if (!v118)
        {
          goto LABEL_224;
        }

        v119 = *(v115 + v117);
        v120 = *(*(v118 + 8 * v105) + 8);
        if (v119 >= *(v120 + 44))
        {
          goto LABEL_191;
        }

        v121 = *(v120 + 32);
        if (!v121)
        {
          goto LABEL_225;
        }

        v122 = v121 + (v119 << 7);
        v124 = *(v122 + 8);
        v123 = *(v122 + 16);
        v125 = *(v122 + 25);
        v127 = *(v122 + 28);
        v126 = *(v122 + 32);
        LOBYTE(v210) = *(v122 + 24);
        v128 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v124, v123, v210, v126);
        if (v127 == v128 && v126 == HIDWORD(v128))
        {
          v213 = 0u;
          v214 = 0u;
          v215[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v213, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v130 = v202;
          if (v202[48])
          {
            goto LABEL_253;
          }

          v133 = *v202;
          v132 = v204;
          v131 = v205;
          if (v133 >= *(v20 + 116))
          {
            goto LABEL_205;
          }

          v134 = *(v20 + 104);
          if (!v134)
          {
            goto LABEL_254;
          }

          v135 = *(*(v134 + 8 * v133) + 8);
          v136 = *(v135 + 44);
          if (v119 >= v136)
          {
            goto LABEL_206;
          }

          v137 = *(v135 + 32);
          if (!v137)
          {
            goto LABEL_255;
          }

          if (v201 >= v136)
          {
            goto LABEL_207;
          }

          v138 = (v137 + (v119 << 7));
          v139 = (v137 + (v201 << 7));
          v140 = *v139;
          v141 = v138[31];
          if (v141 == v138[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v141);
          }

          v142 = *(v138 + 14);
          if (!v142)
          {
            goto LABEL_256;
          }

          v143 = v138[31];
          v144 = v142 + 8 * v143;
          *v144 = -23552;
          *(v144 + 4) = v140;
          if (v143 == -1)
          {
            goto LABEL_208;
          }

          v138[31] = v143 + 1;
          v145 = *v138;
          v146 = v139[31];
          if (v146 == v139[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v146);
          }

          v147 = *(v139 + 14);
          if (v147)
          {
            v148 = v139[31];
            v149 = v147 + 8 * v148;
            *v149 = 25600;
            *(v149 + 4) = v145;
            if (v148 == -1)
            {
              goto LABEL_209;
            }

            v139[31] = v148 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(v128) >= v126)
        {
          goto LABEL_195;
        }

        if (v210)
        {
          goto LABEL_229;
        }

        if (!v124)
        {
          goto LABEL_230;
        }

        --v116;
        outlined init with copy of Event.Transaction(v124 + v128 + 8, &v213);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v213, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v117 -= 48;
        if (v116 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v26 + 1) > *(v25 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v14)
    {
      goto LABEL_215;
    }

    if (*(v20 + 116) <= v13)
    {
      goto LABEL_182;
    }

    v29 = *(v20 + 104);
    if (!v29)
    {
      goto LABEL_216;
    }

    v30 = *v27;
    v31 = *(*(v29 + 8 * v13) + 8);
    if (v30 >= *(v31 + 44))
    {
      goto LABEL_183;
    }

    v32 = *(v31 + 32);
    if (!v32)
    {
      goto LABEL_217;
    }

    v33 = v32 + (v30 << 7);
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
    v36 = *(v33 + 25);
    v38 = *(v33 + 28);
    v37 = *(v33 + 32);
    LOBYTE(v222[0]) = *(v33 + 24);
    v39 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v35, v34, v222[0], v37);
    if (v38 == v39 && v37 == HIDWORD(v39))
    {
      goto LABEL_32;
    }

    if (HIDWORD(v39) >= v37)
    {
      goto LABEL_184;
    }

    if (v222[0])
    {
      goto LABEL_218;
    }

    v27 -= 12;
  }

  while (v35);
  __break(1u);
LABEL_32:
  if (v202[48])
  {
    goto LABEL_237;
  }

  v41 = *v202;
  if (v41 >= *(v20 + 116))
  {
    goto LABEL_197;
  }

  v42 = *(v20 + 104);
  if (!v42)
  {
    goto LABEL_238;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  v44 = v205[1];
  v222[0] = *v205;
  v222[1] = v44;
  v223[0] = v205[2];
  *(v223 + 9) = *(v205 + 41);
  v45 = v205;
  v46 = v203;
  v47 = v206;
  v48 = v204;
  while (1)
  {
    v49 = *v48;
    if (*v47)
    {
      v50 = *v46;
      if ((v50[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v49)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v222);
    }

    v46 = (v49 + 16);
    v47 = (v49 + 28);
    v48 = (v49 + 48);
    v45 = v49;
  }

  v51 = *v45;
  if (!v51)
  {
    goto LABEL_263;
  }

  v52 = *(*(v51 + 24 * *v50) + 112);
  if (!v52)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v52 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v202[48])
  {
    goto LABEL_240;
  }

  v53 = *v202;
  if (v53 >= *(v20 + 116))
  {
    goto LABEL_199;
  }

  v54 = *(v20 + 104);
  if (!v54)
  {
    goto LABEL_241;
  }

  v55 = *(*(v54 + 8 * v53) + 8);
  v56 = v205[1];
  v220[0] = *v205;
  v220[1] = v56;
  v221[0] = v205[2];
  *(v221 + 9) = *(v205 + 41);
  v57 = v205;
  v58 = v203;
  v59 = v206;
  v60 = v204;
  while (1)
  {
    v61 = *v60;
    if (*v59)
    {
      v62 = *v58;
      if ((v62[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v61)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v220);
    }

    v58 = (v61 + 16);
    v59 = (v61 + 28);
    v60 = (v61 + 48);
    v57 = v61;
  }

  v63 = *v57;
  if (v63)
  {
    v207 = v55;
    v200 = v43;
    v64 = *(*(v63 + 24 * *v62) + 112);
    if (!v64)
    {
      goto LABEL_242;
    }

    v65 = *(*(v64 + 32) + 8);
    v66 = *(v65 + 16);
    v67 = 48 * v66 - 16;
    while (v66 > 0)
    {
      if (v66 > *(v65 + 16))
      {
        goto LABEL_185;
      }

      if (*(v20 + 116) <= v53)
      {
        goto LABEL_186;
      }

      v68 = *(v20 + 104);
      if (!v68)
      {
        goto LABEL_220;
      }

      v69 = *(v65 + v67);
      v70 = *(*(v68 + 8 * v53) + 8);
      if (v69 >= *(v70 + 44))
      {
        goto LABEL_187;
      }

      v71 = *(v70 + 32);
      if (!v71)
      {
        goto LABEL_221;
      }

      v72 = v71 + (v69 << 7);
      v74 = *(v72 + 8);
      v73 = *(v72 + 16);
      v75 = *(v72 + 25);
      v77 = *(v72 + 28);
      v76 = *(v72 + 32);
      LOBYTE(v218[0]) = *(v72 + 24);
      v78 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v74, v73, v218[0], v76);
      if (v77 == v78 && v76 == HIDWORD(v78))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v78) >= v76)
      {
        goto LABEL_188;
      }

      if (v218[0])
      {
        goto LABEL_222;
      }

      v67 -= 48;
      --v66;
      if (!v74)
      {
        __break(1u);
LABEL_70:
        v80 = v205;
        v81 = v206;
        v82 = v205[1];
        v218[0] = *v205;
        v218[1] = v82;
        v219[0] = v205[2];
        *(v219 + 9) = *(v205 + 41);
        v83 = v203;
        v84 = v204;
        while (1)
        {
          v85 = *v84;
          if (*v81)
          {
            v86 = *v83;
            if ((v86[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v85)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v218);
          }

          v83 = (v85 + 16);
          v81 = (v85 + 28);
          v84 = (v85 + 48);
          v80 = v85;
        }

        v87 = *v80;
        if (!v87)
        {
          goto LABEL_265;
        }

        v88 = *(*(v87 + 24 * *v86) + 112);
        if (!v88)
        {
          goto LABEL_243;
        }

        v89 = *(*(v88 + 32) + 8);
        if (v66 > *(v89 + 16))
        {
          goto LABEL_200;
        }

        v90 = *(v89 + v67);
        if (v90 >= *(v207 + 44))
        {
          goto LABEL_201;
        }

        v91 = *(v207 + 32);
        if (!v91)
        {
          goto LABEL_244;
        }

        if (v201 >= *(v200 + 44))
        {
          goto LABEL_202;
        }

        v92 = *(v200 + 32);
        if (v92)
        {
          v93 = (v91 + (v90 << 7));
          v94 = (v92 + (v201 << 7));
          v95 = *v94;
          v96 = v93[31];
          if (v96 == v93[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v96);
          }

          v97 = *(v93 + 14);
          if (!v97)
          {
            goto LABEL_246;
          }

          v98 = v93[31];
          v99 = v97 + 8 * v98;
          *v99 = -24575;
          *(v99 + 4) = v95;
          if (v98 == -1)
          {
            goto LABEL_203;
          }

          v93[31] = v98 + 1;
          v100 = *v93;
          v101 = v94[31];
          if (v101 == v94[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v101);
          }

          v102 = *(v94 + 14);
          if (v102)
          {
            v103 = v94[31];
            v104 = v102 + 8 * v103;
            *v104 = 24577;
            *(v104 + 4) = v100;
            if (v103 == -1)
            {
              goto LABEL_204;
            }

            v94[31] = v103 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(unsigned int *a1)
{
  v3 = *a1;
  v4 = *(v1 + 5);
  v240 = *(v1 + 4);
  v241 = v4;
  v242 = *(v1 + 6);
  v5 = *(v1 + 1);
  v237 = *v1;
  v238 = v5;
  v6 = *(v1 + 3);
  *v239 = *(v1 + 2);
  *&v239[16] = v6;
  v7 = *(v1 + 28);
  v8 = *(v1 + 29);
  v9 = *(v1 + 120);
  v10 = *(v1 + 136);
  v247 = *(v1 + 152);
  v246 = v10;
  v245 = v9;
  v12 = *(v1 + 22);
  v11 = *(v1 + 23);
  v249 = v12;
  v250 = v11;
  v251 = v1[192];
  v13 = *(v1 + 21);
  v243 = v7;
  v244 = v8;
  v248 = v13;
  Interpreter.Iterator.updatingValue.getter();
  if ((v15 & 1) == 0 && v3 == v14)
  {
    v16 = 1;
LABEL_197:
    LOBYTE(v237) = v16;
    return;
  }

  v17 = v1 + 56;
  v18 = *(v1 + 72);
  v237 = *(v1 + 56);
  v238 = v18;
  *v239 = *(v1 + 88);
  v19 = v1 + 88;
  v20 = (v1 + 104);
  *&v239[9] = *(v1 + 97);
  v21 = (v1 + 56);
  v22 = (v1 + 72);
  v23 = v1 + 84;
  v235 = v1 + 104;
  while (1)
  {
    v24 = *v20;
    if (*v23 > 1u)
    {
      v25 = *v22;
      if ((*(v25 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v24)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v237);
    }

    v22 = (v24 + 16);
    v23 = (v24 + 28);
    v20 = (v24 + 48);
    v21 = v24;
  }

  v26 = *v21;
  if (!v26)
  {
    goto LABEL_275;
  }

  v27 = *(*(v26 + 24 * *(v25 + 8)) + 112);
  if (!v27)
  {
    goto LABEL_252;
  }

  *(v27 + 64) = v3;
  *(v27 + 68) = 0;
  v28 = *(v1 + 72);
  v268[0] = *v17;
  v268[1] = v28;
  v269[0] = *(v1 + 88);
  *(v269 + 9) = *(v1 + 97);
  v29 = v1 + 100;
  v30 = v1 + 56;
  v31 = (v1 + 104);
  while (1)
  {
    v32 = *v31;
    if (v8 < *v29)
    {
      v33 = (*v19 + 8 * v8);
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v268);
    }

    v19 = (v32 + 32);
    v29 = (v32 + 44);
    v31 = (v32 + 48);
    v30 = v32;
  }

  if (!*v30)
  {
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, *(*(*v30 + 24 * *v33) + 32), 0);
  if (v1[48])
  {
    goto LABEL_253;
  }

  v35 = *v1;
  if (v35 >= *(v12 + 116))
  {
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v36 = *(v12 + 104);
  if (!v36)
  {
    goto LABEL_254;
  }

  v37 = *(*(v36 + 8 * v35) + 8);
  if (v3 >= *(v37 + 84))
  {
    goto LABEL_215;
  }

  v38 = *(v37 + 72);
  if (!v38)
  {
    goto LABEL_255;
  }

  v39 = v38 + 312 * v3;
  v230 = v34;
  *(v39 + 36) = v34;
  *(v39 + 40) = 0;
  v40 = *v1;
  v41 = v1[48];
  v42 = *(v1 + 72);
  v266[0] = *v17;
  v266[1] = v42;
  v267[0] = *(v1 + 88);
  *(v267 + 9) = *(v1 + 97);
  v43 = (v1 + 56);
  v44 = (v1 + 72);
  v45 = v1 + 84;
  v46 = (v1 + 104);
  while (1)
  {
    v47 = *v46;
    if (*v45)
    {
      v48 = *v44;
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v266);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_271;
  }

  v233 = v1 + 56;
  v234 = v1 + 84;
  v231 = v1;
  v232 = v1 + 72;
  v50 = *(*(v49 + 24 * *v48) + 112);
  if (!v50)
  {
    goto LABEL_256;
  }

  v51 = *(*(v50 + 32) + 8);
  v52 = *(v51 + 16);
  v53 = (v51 + 48 * v52 - 16);
  v236 = v12;
  do
  {
    if (v52-- < 1)
    {
LABEL_108:
      v131 = *v231;
      v132 = v231[48];
      v133 = v233;
      v134 = v234;
      v135 = v233[1];
      v258[0] = *v233;
      v258[1] = v135;
      v259[0] = v233[2];
      *(v259 + 9) = *(v233 + 41);
      v136 = v232;
      v137 = v235;
      while (1)
      {
        v138 = *v137;
        if (*v134)
        {
          v139 = *v136;
          if ((v139[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v138)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v258);
        }

        v136 = (v138 + 16);
        v134 = (v138 + 28);
        v137 = (v138 + 48);
        v133 = v138;
      }

      v140 = *v133;
      if (!v140)
      {
        goto LABEL_272;
      }

      v141 = *(*(v140 + 24 * *v139) + 112);
      if (!v141)
      {
        goto LABEL_257;
      }

      v142 = *(*(v141 + 32) + 8);
      v143 = *(v142 + 16);

      if (!v143)
      {
LABEL_132:

        v157 = v231;
        v158 = v234;
        v159 = v235;
LABEL_148:
        v177 = *v157;
        v178 = v157[48];
        v179 = v232;
        v180 = v233;
        v181 = v233[1];
        v255 = *v233;
        v256 = v181;
        v257[0] = v233[2];
        *(v257 + 9) = *(v233 + 41);
        v182 = v159;
        v183 = v158;
        while (1)
        {
          v184 = *v182;
          if (*v183)
          {
            v185 = *v179;
            if ((v185[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v184)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v255);
          }

          v179 = (v184 + 16);
          v183 = (v184 + 28);
          v182 = (v184 + 48);
          v180 = v184;
        }

        if (!*v180)
        {
          goto LABEL_273;
        }

        v186 = *(*(*v180 + 24 * *v185) + 112);
        if (!v186)
        {
          goto LABEL_258;
        }

        v187 = *(*(v186 + 32) + 8);
        v188 = *(v187 + 16);

        if (!v188)
        {
LABEL_172:

          v201 = v232;
          v202 = v233;
          v203 = v234;
          v204 = v235;
LABEL_188:
          v222 = v202[1];
          v252 = *v202;
          v253 = v222;
          v254[0] = v202[2];
          *(v254 + 9) = *(v202 + 41);
          while (1)
          {
            v223 = *v204;
            if (*v203)
            {
              if ((*(*v201 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v223)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v252);
            }

            v201 = (v223 + 16);
            v203 = (v223 + 28);
            v204 = (v223 + 48);
            v202 = v223;
          }

          if (!*v202)
          {
            goto LABEL_274;
          }

          v224 = *(*(*v202 + 24 * **v201) + 112);
          if (!v224)
          {
            goto LABEL_259;
          }

          v225 = *(v224 + 32);
          v226 = *(v225 + 24);
          v227 = *(v225 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v226);
          Interpreter.Iterator.finalize(update:observer:)(v230, v226, v227);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v226);
          v16 = 0;
          goto LABEL_197;
        }

        v189 = 48 * v188 - 16;
        while (v188 <= *(v187 + 16))
        {
          if (v178)
          {
            goto LABEL_245;
          }

          if (*(v12 + 116) <= v177)
          {
            goto LABEL_210;
          }

          v190 = *(v12 + 104);
          if (!v190)
          {
            goto LABEL_246;
          }

          v191 = *(v187 + v189);
          v192 = *(*(v190 + 8 * v177) + 8);
          if (v191 >= *(v192 + 44))
          {
            goto LABEL_211;
          }

          v193 = *(v192 + 32);
          if (!v193)
          {
            goto LABEL_247;
          }

          v194 = v193 + (v191 << 7);
          v195 = *(v194 + 8);
          v198 = *(v194 + 28);
          v197 = *(v194 + 32);
          v196 = *(v194 + 24);
          *(v194 + 25);
          v199 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v195, *(v194 + 16), v196, v197);
          if (v198 == v199 && v197 == HIDWORD(v199))
          {
            v252 = 0u;
            v253 = 0u;
            v254[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v252, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v231[48])
            {
              goto LABEL_282;
            }

            v205 = *v231;
            v201 = v232;
            v202 = v233;
            v203 = v234;
            v204 = v235;
            if (v205 >= *(v236 + 116))
            {
              goto LABEL_229;
            }

            v206 = *(v236 + 104);
            if (!v206)
            {
              goto LABEL_283;
            }

            v207 = *(*(v206 + 8 * v205) + 8);
            v208 = *(v207 + 44);
            if (v191 >= v208)
            {
              goto LABEL_230;
            }

            v209 = *(v207 + 32);
            if (!v209)
            {
              goto LABEL_284;
            }

            if (v230 >= v208)
            {
              goto LABEL_231;
            }

            v210 = (v209 + (v191 << 7));
            v211 = (v209 + (v230 << 7));
            v212 = *v211;
            v213 = v210[31];
            if (v213 == v210[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v213);
            }

            v214 = *(v210 + 14);
            if (!v214)
            {
              goto LABEL_285;
            }

            v215 = v210[31];
            v216 = v214 + 8 * v215;
            *v216 = -20480;
            *(v216 + 4) = v212;
            if (v215 == -1)
            {
              goto LABEL_232;
            }

            v210[31] = v215 + 1;
            v217 = *v210;
            v218 = v211[31];
            if (v218 == v211[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v218);
            }

            v219 = *(v211 + 14);
            if (v219)
            {
              v220 = v211[31];
              v221 = v219 + 8 * v220;
              *v221 = 28672;
              *(v221 + 4) = v217;
              if (v220 == -1)
              {
                goto LABEL_233;
              }

              v211[31] = v220 + 1;
              goto LABEL_188;
            }

            goto LABEL_286;
          }

          v12 = v236;
          if (HIDWORD(v199) >= v197)
          {
            goto LABEL_213;
          }

          if (v196)
          {
            goto LABEL_250;
          }

          if (!v195)
          {
            goto LABEL_251;
          }

          --v188;
          outlined init with copy of Event.Action(v195 + v199 + 8, &v252);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v252, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v189 -= 48;
          if (v188 + 1 < 2)
          {
            goto LABEL_172;
          }
        }

LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
        goto LABEL_214;
      }

      v144 = 48 * v143 - 16;
      while (v143 <= *(v142 + 16))
      {
        if (v132)
        {
          goto LABEL_242;
        }

        if (*(v12 + 116) <= v131)
        {
          goto LABEL_207;
        }

        v145 = *(v12 + 104);
        if (!v145)
        {
          goto LABEL_243;
        }

        v146 = *(v142 + v144);
        v147 = *(*(v145 + 8 * v131) + 8);
        if (v146 >= *(v147 + 44))
        {
          goto LABEL_208;
        }

        v148 = *(v147 + 32);
        if (!v148)
        {
          goto LABEL_244;
        }

        v149 = v148 + (v146 << 7);
        v151 = *(v149 + 8);
        v150 = *(v149 + 16);
        v152 = *(v149 + 25);
        v154 = *(v149 + 28);
        v153 = *(v149 + 32);
        LOBYTE(v252) = *(v149 + 24);
        v155 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v151, v150, v252, v153);
        if (v154 == v155 && v153 == HIDWORD(v155))
        {
          v255 = 0u;
          v256 = 0u;
          v257[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v255, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v157 = v231;
          v12 = v236;
          if (v231[48])
          {
            goto LABEL_277;
          }

          v160 = *v231;
          v158 = v234;
          v159 = v235;
          if (v160 >= *(v236 + 116))
          {
            goto LABEL_224;
          }

          v161 = *(v236 + 104);
          if (!v161)
          {
            goto LABEL_278;
          }

          v162 = *(*(v161 + 8 * v160) + 8);
          v163 = *(v162 + 44);
          if (v146 >= v163)
          {
            goto LABEL_225;
          }

          v164 = *(v162 + 32);
          if (!v164)
          {
            goto LABEL_279;
          }

          if (v230 >= v163)
          {
            goto LABEL_226;
          }

          v165 = (v164 + (v146 << 7));
          v166 = (v164 + (v230 << 7));
          v167 = *v166;
          v168 = v165[31];
          if (v168 == v165[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v168);
          }

          v169 = *(v165 + 14);
          if (!v169)
          {
            goto LABEL_280;
          }

          v170 = v165[31];
          v171 = v169 + 8 * v170;
          *v171 = -23552;
          *(v171 + 4) = v167;
          if (v170 == -1)
          {
            goto LABEL_227;
          }

          v165[31] = v170 + 1;
          v172 = *v165;
          v173 = v166[31];
          if (v173 == v166[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v173);
          }

          v174 = *(v166 + 14);
          if (v174)
          {
            v175 = v166[31];
            v176 = v174 + 8 * v175;
            *v176 = 25600;
            *(v176 + 4) = v172;
            if (v175 == -1)
            {
              goto LABEL_228;
            }

            v166[31] = v175 + 1;
            goto LABEL_148;
          }

          goto LABEL_281;
        }

        v12 = v236;
        if (HIDWORD(v155) >= v153)
        {
          goto LABEL_212;
        }

        if (v252)
        {
          goto LABEL_248;
        }

        if (!v151)
        {
          goto LABEL_249;
        }

        --v143;
        outlined init with copy of Event.Transaction(v151 + v155 + 8, &v255);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v255, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v144 -= 48;
        if (v143 + 1 < 2)
        {
          goto LABEL_132;
        }
      }

LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if ((v52 + 1) > *(v51 + 16))
    {
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    if (v41)
    {
      goto LABEL_234;
    }

    if (*(v12 + 116) <= v40)
    {
      goto LABEL_199;
    }

    v55 = *(v12 + 104);
    if (!v55)
    {
      goto LABEL_235;
    }

    v56 = *v53;
    v57 = *(*(v55 + 8 * v40) + 8);
    if (v56 >= *(v57 + 44))
    {
      goto LABEL_200;
    }

    v58 = *(v57 + 32);
    if (!v58)
    {
      goto LABEL_236;
    }

    v59 = v58 + (v56 << 7);
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
    v62 = *(v59 + 25);
    v64 = *(v59 + 28);
    v63 = *(v59 + 32);
    LOBYTE(v264[0]) = *(v59 + 24);
    v65 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v61, v60, v264[0], v63);
    if (v64 == v65 && v63 == HIDWORD(v65))
    {
      goto LABEL_48;
    }

    v12 = v236;
    if (HIDWORD(v65) >= v63)
    {
      goto LABEL_201;
    }

    if (v264[0])
    {
      goto LABEL_237;
    }

    v53 -= 12;
  }

  while (v61);
  __break(1u);
LABEL_48:
  v67 = v236;
  if (v231[48])
  {
    goto LABEL_260;
  }

  v68 = *v231;
  if (v68 >= *(v236 + 116))
  {
    goto LABEL_216;
  }

  v69 = *(v236 + 104);
  if (!v69)
  {
    goto LABEL_261;
  }

  v70 = *(*(v69 + 8 * v68) + 8);
  v71 = v233[1];
  v264[0] = *v233;
  v264[1] = v71;
  v265[0] = v233[2];
  *(v265 + 9) = *(v233 + 41);
  v72 = v233;
  v73 = v232;
  v74 = v234;
  v75 = v235;
  while (1)
  {
    v76 = *v75;
    if (*v74)
    {
      v77 = *v73;
      if ((v77[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v76)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v264);
    }

    v73 = (v76 + 16);
    v74 = (v76 + 28);
    v75 = (v76 + 48);
    v72 = v76;
  }

  v78 = *v72;
  if (!v78)
  {
    goto LABEL_287;
  }

  v79 = *(*(v78 + 24 * *v77) + 112);
  if (!v79)
  {
    goto LABEL_262;
  }

  if (!*(*(*(v79 + 32) + 8) + 16))
  {
    goto LABEL_217;
  }

  if (v231[48])
  {
    goto LABEL_263;
  }

  v80 = *v231;
  if (v80 >= *(v236 + 116))
  {
    goto LABEL_218;
  }

  v81 = *(v236 + 104);
  if (!v81)
  {
    goto LABEL_264;
  }

  v229 = *(*(v81 + 8 * v80) + 8);
  v82 = v233[1];
  v262[0] = *v233;
  v262[1] = v82;
  v263[0] = v233[2];
  *(v263 + 9) = *(v233 + 41);
  v83 = v233;
  v84 = v232;
  v85 = v234;
  v86 = v235;
  while (1)
  {
    v87 = *v86;
    if (*v85)
    {
      v88 = *v84;
      if ((v88[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v87)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v262);
    }

    v84 = (v87 + 16);
    v85 = (v87 + 28);
    v86 = (v87 + 48);
    v83 = v87;
  }

  v89 = *v83;
  if (v89)
  {
    v228 = v70;
    v90 = *(*(v89 + 24 * *v88) + 112);
    if (!v90)
    {
      goto LABEL_265;
    }

    v91 = *(*(v90 + 32) + 8);
    v92 = *(v91 + 16);
    v93 = 48 * v92 - 16;
    while (v92 >= 1)
    {
      if (v92 > *(v91 + 16))
      {
        goto LABEL_202;
      }

      if (*(v67 + 116) <= v80)
      {
        goto LABEL_203;
      }

      v94 = *(v67 + 104);
      if (!v94)
      {
        goto LABEL_239;
      }

      v95 = *(v91 + v93);
      v96 = *(*(v94 + 8 * v80) + 8);
      if (v95 >= *(v96 + 44))
      {
        goto LABEL_204;
      }

      v97 = *(v96 + 32);
      if (!v97)
      {
        goto LABEL_240;
      }

      v98 = v97 + (v95 << 7);
      v100 = *(v98 + 8);
      v99 = *(v98 + 16);
      v101 = *(v98 + 25);
      v103 = *(v98 + 28);
      v102 = *(v98 + 32);
      LOBYTE(v260[0]) = *(v98 + 24);
      v104 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v100, v99, v260[0], v102);
      if (v103 == v104 && v102 == HIDWORD(v104))
      {
        goto LABEL_86;
      }

      if (HIDWORD(v104) >= v102)
      {
        goto LABEL_205;
      }

      if (v260[0])
      {
        goto LABEL_241;
      }

      v93 -= 48;
      --v92;
      v67 = v236;
      if (!v100)
      {
        __break(1u);
LABEL_86:
        v106 = v233;
        v107 = v234;
        v108 = v233[1];
        v260[0] = *v233;
        v260[1] = v108;
        v261[0] = v233[2];
        *(v261 + 9) = *(v233 + 41);
        v109 = v232;
        v110 = v235;
        v12 = v236;
        while (1)
        {
          v111 = *v110;
          if (*v107)
          {
            v112 = *v109;
            if ((v112[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v111)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v260);
          }

          v109 = (v111 + 16);
          v107 = (v111 + 28);
          v110 = (v111 + 48);
          v106 = v111;
        }

        v113 = *v106;
        if (!v113)
        {
          goto LABEL_289;
        }

        v114 = *(*(v113 + 24 * *v112) + 112);
        if (!v114)
        {
          goto LABEL_266;
        }

        v115 = *(*(v114 + 32) + 8);
        if (v92 > *(v115 + 16))
        {
          goto LABEL_219;
        }

        v116 = *(v115 + v93);
        if (v116 >= *(v229 + 44))
        {
          goto LABEL_220;
        }

        v117 = *(v229 + 32);
        if (!v117)
        {
          goto LABEL_267;
        }

        if (v230 >= *(v228 + 44))
        {
          goto LABEL_221;
        }

        v118 = *(v228 + 32);
        if (v118)
        {
          v119 = (v117 + (v116 << 7));
          v120 = (v118 + (v230 << 7));
          v121 = *v120;
          v122 = v119[31];
          if (v122 == v119[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v122);
          }

          v123 = *(v119 + 14);
          if (!v123)
          {
            goto LABEL_269;
          }

          v124 = v119[31];
          v125 = v123 + 8 * v124;
          *v125 = -24575;
          *(v125 + 4) = v121;
          if (v124 == -1)
          {
            goto LABEL_222;
          }

          v119[31] = v124 + 1;
          v126 = *v119;
          v127 = v120[31];
          if (v127 == v120[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v127);
          }

          v128 = *(v120 + 14);
          if (v128)
          {
            v129 = v120[31];
            v130 = v128 + 8 * v129;
            *v130 = 24577;
            *(v130 + 4) = v126;
            if (v129 == -1)
            {
              goto LABEL_223;
            }

            v120[31] = v129 + 1;
            goto LABEL_108;
          }

          goto LABEL_270;
        }

        goto LABEL_268;
      }
    }

LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
}

uint64_t T_BeginGraphUpdate.model(within:)(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = (result + 56);
  v4 = *(result + 72);
  v90[0] = *(result + 56);
  v90[1] = v4;
  v91[0] = *(result + 88);
  v5 = result + 72;
  v6 = (result + 84);
  v7 = (result + 88);
  v8 = (result + 104);
  *(v91 + 9) = *(result + 97);
  v9 = (result + 56);
  v10 = (result + 72);
  v11 = (result + 84);
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v90);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_84;
  }

  result = v15 + 24 * *v14;
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_78;
  }

  ++*(*(v16 + 32) + 4);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, v2);
  if (v2[48])
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v17 = *(v2 + 22);
  v18 = *(v17 + 116);
  v19 = *v2;
  if (v19 >= v18)
  {
    goto LABEL_69;
  }

  v20 = *(v17 + 104);
  if (!v20)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v21 = result;
  v22 = *(*(v20 + 8 * v19) + 8);
  if (result >= *(v22 + 148))
  {
    goto LABEL_70;
  }

  v23 = *(v22 + 136);
  if (!v23)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v24 = v23 + 80 * result;
  v26 = *(v24 + 72);
  v25 = (v24 + 72);
  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    goto LABEL_71;
  }

  *v25 = v27;
  if (v2[48])
  {
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
    goto LABEL_87;
  }

  v28 = *v2;
  if (v28 >= v18)
  {
    goto LABEL_72;
  }

  v29 = *(*(v20 + 8 * v28) + 8) + 32;
  specialized UnsafeArray.growToCapacity(_:)(*(v17 + 168));
  v30 = v3[1];
  v88[0] = *v3;
  v88[1] = v30;
  v89[0] = v3[2];
  *(v89 + 9) = *(v3 + 41);
  v31 = v2 + 100;
  result = *(v2 + 29);
  v32 = v3;
  v33 = v8;
  while (1)
  {
    v34 = *v33;
    if (result < *v31)
    {
      v35 = (*v7 + 8 * result);
      if ((v35[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v88);
    }

    v7 = (v34 + 32);
    v31 = (v34 + 44);
    v33 = (v34 + 48);
    v32 = v34;
  }

  if (!*v32)
  {
    goto LABEL_85;
  }

  result = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v21, *(*(*v32 + 24 * *v35) + 32), 0xFFFFFFFFFFFFFFFFLL, 0, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GraphV_Ttg5, &type metadata for Event.Graph, &_s21SwiftUITracingSupport5EventV5GraphVmMd, &_s21SwiftUITracingSupport5EventV5GraphVmMR);
  v83 = result;
  v36 = v3[1];
  v86[0] = *v3;
  v86[1] = v36;
  v87[0] = v3[2];
  *(v87 + 9) = *(v3 + 41);
  v37 = v5;
  v38 = v3;
  v39 = v6;
  v40 = v8;
  while (1)
  {
    v41 = *v40;
    if (*v39 > 1u && (*(*v37 + 12) & 1) == 0)
    {
      break;
    }

    if (!v41)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v86);
    }

    v37 = v41 + 16;
    v39 = (v41 + 28);
    v40 = (v41 + 48);
    v38 = v41;
  }

  if (!*v38)
  {
    goto LABEL_86;
  }

  result = *v38 + 24 * *(*v37 + 8);
  v82 = v21;
  v81 = v3;
  v42 = *(*result + 112);
  if (!v42)
  {
    goto LABEL_83;
  }

  v43 = *(v42 + 32);
  v44 = specialized Strong.subscript.read();
  v46 = *v45;
  if (!*(*v45 + 16))
  {
    return (v44)(v84, 0);
  }

  v47 = specialized __RawDictionaryStorage.find<A>(_:)(v82);
  if ((v48 & 1) == 0)
  {
    return (v44)(v84, 0);
  }

  v79 = v6;
  v80 = v5;
  v49 = *(*(v46 + 56) + 8 * v47);

  result = (v44)(v84, 0);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = 0;
    while (v51 < *(v49 + 16))
    {
      if (v2[48])
      {
        goto LABEL_73;
      }

      v52 = *v2;
      if (v52 >= *(v17 + 116))
      {
        goto LABEL_64;
      }

      v53 = *(v17 + 104);
      if (!v53)
      {
        goto LABEL_74;
      }

      v54 = *(v49 + 32 + 4 * v51);
      v55 = *(*(v53 + 8 * v52) + 8);
      v56 = *(v55 + 44);
      if (v54 >= v56)
      {
        goto LABEL_65;
      }

      v57 = *(v55 + 32);
      if (!v57)
      {
        goto LABEL_75;
      }

      if (v83 >= v56)
      {
        goto LABEL_66;
      }

      v58 = v17;
      v59 = (v57 + (v54 << 7));
      v60 = (v57 + (v83 << 7));
      v61 = *v60;
      v62 = v59[31];
      if (v62 == v59[30])
      {
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v62);
      }

      v63 = *(v59 + 14);
      if (!v63)
      {
        goto LABEL_76;
      }

      v64 = v59[31];
      v65 = v63 + 8 * v64;
      *v65 = -24574;
      *(v65 + 4) = v61;
      if (v64 == -1)
      {
        goto LABEL_67;
      }

      v59[31] = v64 + 1;
      v66 = *v59;
      v67 = v60[31];
      if (v67 == v60[30])
      {
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v67);
      }

      v68 = *(v60 + 14);
      if (!v68)
      {
        goto LABEL_77;
      }

      v69 = v60[31];
      v70 = v68 + 8 * v69;
      *v70 = 24578;
      *(v70 + 4) = v66;
      if (v69 == -1)
      {
        goto LABEL_68;
      }

      ++v51;
      v60[31] = v69 + 1;
      v17 = v58;
      if (v50 == v51)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
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
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_52:

  v71 = v80;
  v72 = v81;
  v73 = v81[1];
  v84[0] = *v81;
  v84[1] = v73;
  v85[0] = v81[2];
  *(v85 + 9) = *(v81 + 41);
  v75 = v8;
  v74 = v79;
  while (1)
  {
    v76 = *v75;
    if (*v74 > 1u && (*(*v71 + 12) & 1) == 0)
    {
      break;
    }

    if (!v76)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v84);
    }

    v71 = v76 + 16;
    v74 = (v76 + 28);
    v75 = (v76 + 48);
    v72 = v76;
  }

  if (!*v72)
  {
    goto LABEL_88;
  }

  result = *v72 + 24 * *(*v71 + 8);
  v77 = *(*result + 112);
  if (!v77)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v78 = *(v77 + 32);
  return specialized Dictionary.subscript.setter(0, v82);
}

uint64_t T_EndGraphUpdateV0.model(within:)(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 116);
  if (!a3)
  {
    v4 = 0;
  }

  *(a1 + 160) = v4;
  *(a1 + 164) = a3 != 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 168) = a3 == 0;
  *(a1 + 172) = v5;
  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  result = Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v18[0] = *(a1 + 56);
  v18[1] = v8;
  v19[0] = *(a1 + 88);
  *(v19 + 9) = *(a1 + 97);
  v9 = (a1 + 72);
  v10 = (a1 + 84);
  v11 = (a1 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10)
    {
      v13 = *v9;
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v18);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_18;
  }

  result = v14 + 24 * *v13;
  v15 = *(*result + 112);
  if (!v15)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v16 = *(v15 + 32);
  v17 = v16[1] - 1;
  v16[1] = v17;
  if (!v17)
  {
    ++*v16;
  }

  return result;
}

uint64_t T_EndGraphUpdate.model(within:)(uint64_t a1, unint64_t a2)
{
  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  result = Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v15[0] = *(a1 + 56);
  v15[1] = v5;
  v16[0] = *(a1 + 88);
  *(v16 + 9) = *(a1 + 97);
  v6 = (a1 + 72);
  v7 = (a1 + 84);
  v8 = (a1 + 104);
  while (1)
  {
    v9 = *v8;
    if (*v7)
    {
      v10 = *v6;
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v15);
    }

    v6 = (v9 + 16);
    v7 = (v9 + 28);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (!v11)
  {
    goto LABEL_13;
  }

  result = v11 + 24 * *v10;
  v12 = *(*result + 112);
  if (!v12)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = *(v12 + 32);
  v14 = v13[1] - 1;
  v13[1] = v14;
  if (!v14)
  {
    ++*v13;
  }

  return result;
}

uint64_t IncrementalChildReuseAttempt.reuseEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t IncrementalChildReuseAttempt.recycledSubgraphID.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t UpdateReuse.incrementalChildReuseAttempts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UpdateReuse.otherReuseEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Subgraph.allTrees.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

BOOL static Subgraph.PrimaryKey.== infix(_:_:)(unint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 == a3;
  if ((a4 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = (a3 ^ a1) >> 32 == 0;
  if (a1 != a3)
  {
    v5 = 0;
  }

  if (a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void Subgraph.PrimaryKey.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a2);
    a2 >>= 32;
  }

  Hasher._combine(_:)(a2);
}

Swift::Int Subgraph.PrimaryKey.hashValue.getter(unint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a1);
    a1 >>= 32;
  }

  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Subgraph.PrimaryKey(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    v5 = v2 == v3;
    return *(a2 + 8) && v5;
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    return (v4 & 1) == 0 && (v3 ^ v2) >> 32 == 0;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subgraph.PrimaryKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
    v1 >>= 32;
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Subgraph.PrimaryKey()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
    v1 >>= 32;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subgraph.PrimaryKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
    v1 >>= 32;
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Subgraph.graph.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.parents.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t Subgraph.parents.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Subgraph.children.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t Subgraph.children.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Subgraph._lastParent.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

unint64_t Subgraph.lastParent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1 - 40;
  v3 = *(v0 + 36) + 1;
  while (1)
  {
    if (!--v3)
    {
      v4 = (v0 + 56);
      v6 = *(v0 + 60);
      return *v4 | (v6 << 32);
    }

    if (!v1)
    {
      break;
    }

    v4 = (v2 + 40);
    v5 = *(v2 + 56);
    v2 += 40;
    if (v5 == -1)
    {
      v6 = 0;
      return *v4 | (v6 << 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t Subgraph.firstParent.getter()
{
  v1 = *(v0 + 36);
  if (!v1)
  {
    v3 = 0;
    return v3 | ((v1 == 0) << 32);
  }

  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *v2;
    return v3 | ((v1 == 0) << 32);
  }

  __break(1u);
  return result;
}

uint64_t Subgraph.id.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t Subgraph.id.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Subgraph.nodes.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Subgraph.allocatingAttribute.setter(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.allocatedBy.setter(uint64_t result)
{
  *(v1 + 124) = result;
  *(v1 + 128) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.deallocatedBy.setter(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.interval.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t Subgraph.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

void (*Subgraph.subscript.read(void (**a1)(void **a1), int a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xD0uLL);
  }

  *a1 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2 < *(*v2 + 16))
  {
    memmove(result, (*v2 + 208 * a2 + 32), 0xD0uLL);
    return Snapshot.subscript.read;
  }

  __break(1u);
  return result;
}

uint64_t (*Subgraph.subscript.modify(uint64_t *a1, int a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return UnsafeTree.storage.modify;
}

uint64_t Subgraph.subscript.setter(_OWORD *a1, int a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if (a2 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2 < *(v5 + 16))
  {
    v7 = a1[11];
    v8 = (v5 + 208 * a2);
    v8[12] = a1[10];
    v8[13] = v7;
    v8[14] = a1[12];
    v9 = a1[7];
    v8[8] = a1[6];
    v8[9] = v9;
    v10 = a1[9];
    v8[10] = a1[8];
    v8[11] = v10;
    v11 = a1[3];
    v8[4] = a1[2];
    v8[5] = v11;
    v12 = a1[5];
    v8[6] = a1[4];
    v8[7] = v12;
    v13 = a1[1];
    v8[2] = *a1;
    v8[3] = v13;
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Subgraph.debugViewTreeFragment(within:attachment:)(unint64_t a1)
{
  MEMORY[0x26D69CDB0](0x7061726762755328, 0xEA00000000002068);
  v57 = *(v1 + 72);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  if (*(*v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport7TreeRefVtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport7TreeRefVtGMR);
    result = swift_initStackObject();
    *(result + 16) = xmmword_26C328DC0;
    *(result + 32) = 0;
    v41 = result;
    v42 = result + 32;
    *(result + 40) = *(v1 + 64) << 32;
    v4 = 1;
    while (1)
    {
      v8 = v4 - 1;
      v9 = (v42 + 16 * v8);
      v10 = *v9;
      v11 = v9[1];
      *(result + 16) = v8;
      v12 = HIDWORD(v11);
      v13 = *(a1 + 124);
      if (HIDWORD(v11) >= v13)
      {
        break;
      }

      v14 = *(a1 + 112);
      if (!v14)
      {
        goto LABEL_45;
      }

      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      v15 = *(v14 + 168 * HIDWORD(v11));
      if (v11 >= *(v15 + 16))
      {
        goto LABEL_38;
      }

      v16 = HIDWORD(*(v15 + 208 * v11 + 136));
      if (v16 >= v13)
      {
        goto LABEL_39;
      }

      v17 = v14 + 168 * v16;
      v18 = *(v17 + 36);
      if (v18)
      {
        v19 = *(v17 + 24);
        if (!v19)
        {
          goto LABEL_48;
        }

        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      v22 = String.init(repeating:count:)(v21, v10);
      v23 = String.init<A>(describing:)();
      v25 = v24;

      MEMORY[0x26D69CDB0](v23, v25);

      if (v12 >= *(a1 + 124))
      {
        goto LABEL_40;
      }

      v26 = *(a1 + 112);
      if (!v26)
      {
        goto LABEL_46;
      }

      v27 = *(v26 + 168 * HIDWORD(v11));
      if (v11 >= *(v27 + 16))
      {
        goto LABEL_41;
      }

      v28 = (v27 + 208 * v11);
      v53 = v28[11];
      v54 = v28[12];
      v55 = v28[13];
      v56 = v28[14];
      v49 = v28[7];
      v50 = v28[8];
      v51 = v28[9];
      v52 = v28[10];
      v45 = v28[3];
      v46 = v28[4];
      v47 = v28[5];
      v48 = v28[6];
      v44 = v28[2];
      v29 = specialized Tree.displayName(within:_:)(a1);
      v31 = v30;

      MEMORY[0x26D69CDB0](v29, v31);

      if (v18)
      {
        _StringGuts.grow(_:)(16);
        MEMORY[0x26D69CDB0](0x6E65726170203A3ALL, 0xEA00000000002074);
        _print_unlocked<A, B>(_:_:)();
        result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        if (v20 >= *(a1 + 124))
        {
          goto LABEL_44;
        }

        v32 = *(a1 + 112);
        if (!v32)
        {
          goto LABEL_49;
        }

        if (*(*(v32 + 168 * v20) + 16))
        {
          v33 = 84;
        }

        else
        {
          v33 = 0;
        }

        if (*(*(v32 + 168 * v20) + 16))
        {
          v34 = 0xE100000000000000;
        }

        else
        {
          v34 = 0xE000000000000000;
        }

        MEMORY[0x26D69CDB0](v33, v34);

        MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        v35 = 0xE000000000000000;
        v36 = 0;
      }

      else
      {
        v35 = 0xE700000000000000;
        v36 = 0x544F4F52203A3ALL;
      }

      MEMORY[0x26D69CDB0](v36, v35);

      if (v12 >= *(a1 + 124))
      {
        goto LABEL_42;
      }

      v37 = *(a1 + 112);
      if (!v37)
      {
        goto LABEL_47;
      }

      v38 = *(v37 + 168 * HIDWORD(v11));
      if (v11 >= *(v38 + 16))
      {
        goto LABEL_43;
      }

      v39 = v38 + 208 * v11;
      if (*(v39 + 148))
      {
        v7 = 0xE300000000000000;
        v5 = 7104878;
      }

      else
      {
        v43 = *(v39 + 144);
        v5 = String.init<A>(describing:)();
        v7 = v6;
      }

      MEMORY[0x26D69CDB0](v5, v7);

      MEMORY[0x26D69CDB0](2112065, 0xE300000000000000);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);

      MEMORY[0x26D69CDB0](v22._countAndFlagsBits, v22._object);

      result = v41;
      v4 = *(v41 + 16);
      if (!v4)
      {
        v40 = 8202;

        return v40;
      }
    }

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
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {

    MEMORY[0x26D69CDB0](0x7373656C65657254, 0xE800000000000000);

    return 0;
  }

  return result;
}

uint64_t Subgraph.viewTreeSubgraphs(within:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 40);
  v13 = *(v8 + 52);
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  v15 = v12 - 40 + 40 * v11;
  while (v13 != v11)
  {
    if (v11 >= v13)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (!v12)
    {
      goto LABEL_38;
    }

    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_33;
    }

    v17 = *(v15 + 56);
    ++v11;
    v15 += 40;
    if (v17 == -1)
    {
      v38 = *v15;
      v18 = *(v15 + 8);
      v19 = *(v15 + 24);
      v40 = *(v15 + 32);
      v39 = *(v15 + 36);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 40 * v21;
      *(v22 + 32) = v38;
      *(v22 + 40) = v18;
      *(v22 + 48) = -1;
      *(v22 + 56) = v19;
      *(v22 + 64) = v40;
      *(v22 + 68) = v39;
      v11 = v16;
      goto LABEL_2;
    }
  }

  v23 = *(v14 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v14 + 32;
    v26 = MEMORY[0x277D84F90];
LABEL_15:
    v27 = (v25 + 40 * v24);
    v28 = v24;
    while (v28 < *(v14 + 16))
    {
      v29 = *v27;
      v30 = *(v10 + 124);
      if (*v27 >= v30)
      {
        goto LABEL_35;
      }

      v31 = *(v10 + 112);
      if (!v31)
      {
        goto LABEL_39;
      }

      v32 = *(v31 + 168 * v29 + 64);
      if (v32 >= v30)
      {
        goto LABEL_36;
      }

      v33 = *(v31 + 168 * v32);
      if (!*(v33 + 16))
      {
        goto LABEL_37;
      }

      v51 = *(v33 + 192);
      v52 = *(v33 + 208);
      v53 = *(v33 + 224);
      v47 = *(v33 + 128);
      v48 = *(v33 + 144);
      v49 = *(v33 + 160);
      v50 = *(v33 + 176);
      v43 = *(v33 + 64);
      v44 = *(v33 + 80);
      v45 = *(v33 + 96);
      v46 = *(v33 + 112);
      v41 = *(v33 + 32);
      v42 = *(v33 + 48);
      v54 = v10;
      result = specialized Tree.parent(_:within:unabstracting:)(16, &v54, a3, a4, a5, a6, a7, a8);
      if ((v34 & 1) == 0 && *(v9 + 64) == HIDWORD(result))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
          v26 = result;
        }

        v25 = v14 + 32;
        v36 = *(v26 + 16);
        v35 = *(v26 + 24);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v26);
          v37 = v36 + 1;
          v26 = result;
        }

        v24 = v28 + 1;
        *(v26 + 16) = v37;
        *(v26 + 4 * v36 + 32) = v29;
        if (v23 - 1 != v28)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }

      ++v28;
      v27 += 10;
      if (v23 == v28)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_31:

  return v26;
}

uint64_t Subgraph.describe(state:)(__int128 *a1)
{
  v26 = *a1;
  *v27 = a1[1];
  *&v27[10] = *(a1 + 26);
  _StringGuts.grow(_:)(68);
  result = MEMORY[0x26D69CDB0](0x7061726762757328, 0xEA00000000002068);
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 64);
    v28 = *(a1 + 8);
    v29 = *(a1 + 24);
    v30 = *(a1 + 20);
    v5 = specialized InspectionState.wrapDescription<A>(_:)(v4);
    MEMORY[0x26D69CDB0](v5);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v6 = specialized InspectionState.wrapDescription<A>(_:)(*(v1 + 72), *(v1 + 80));
    MEMORY[0x26D69CDB0](v6);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v7 = specialized InspectionState.wrapDescription<A>(_:)(v4 << 32);
    MEMORY[0x26D69CDB0](v7);

    MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
    if (*(v1 + 114))
    {
      v8 = 0x746F6F527369;
    }

    else
    {
      v8 = 0;
    }

    if (*(v1 + 114))
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    MEMORY[0x26D69CDB0](v8, v9);

    MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
    if (*(v1 + 113))
    {
      v10 = 0x6C61626F6C477369;
    }

    else
    {
      v10 = 0;
    }

    if (*(v1 + 113))
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    MEMORY[0x26D69CDB0](v10, v11);

    MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
    v12 = Inspectable_Context.snapshot.getter();
    v13 = Subgraph.displayName(within:_:)(v12, 2);
    MEMORY[0x26D69CDB0](v13);

    MEMORY[0x26D69CDB0](538970665, 0xE400000000000000);
    if (*(v1 + 112))
    {
      v14 = 0x6563616C50736168;
    }

    else
    {
      v14 = 0;
    }

    if (*(v1 + 112))
    {
      v15 = 0xEE007265646C6F68;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    MEMORY[0x26D69CDB0](v14, v15);

    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    v16 = specialized InspectionState.describe<A>(_:_:)(0x6E6572646C696863, 0xE800000000000000, *(v1 + 40), *(v1 + 48));
    MEMORY[0x26D69CDB0](v16);

    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    v17 = *(v1 + 24);
    v18 = *(v1 + 36);
    v19 = specialized InspectionState.describe<A>(_:_:)(0x73746E65726170, 0xE700000000000000, v17, *(v1 + 32) | (v18 << 32));
    MEMORY[0x26D69CDB0](v19);

    result = MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    if (!v18)
    {
      v20 = 0;
      goto LABEL_24;
    }

    if (v17)
    {
      v20 = *v17;
LABEL_24:
      v21 = specialized InspectionState.describe<A>(_:_:)(0x7261507473726966, 0xEB00000000746E65, v20 | ((v18 == 0) << 32));
      MEMORY[0x26D69CDB0](v21);

      MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
      v22 = Subgraph.lastParent.getter();
      v23 = specialized InspectionState.describe<A>(_:_:)(0x657261507473616CLL, 0xEA0000000000746ELL, v22 | ((HIDWORD(v22) & 1) << 32));
      MEMORY[0x26D69CDB0](v23);

      MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
      v24 = specialized InspectionState.describe<A>(_:_:)(0x7365646F6ELL, 0xE500000000000000, *(v1 + 96));
      MEMORY[0x26D69CDB0](v24);

      MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
      v25 = specialized InspectionState.describe<A>(_:_:)(0xD000000000000013, 0x800000026C33BAA0, *(v1 + 116) | (*(v1 + 120) << 32));
      MEMORY[0x26D69CDB0](v25);

      MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Subgraph.copy()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = 5 * *(v0 + 32);
    v4 = swift_slowAlloc();
    *(v0 + 24) = v4;
    memcpy(v4, v1, 40 * v2);
  }

  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = *(v0 + 52);
    v7 = 5 * *(v0 + 48);
    v8 = swift_slowAlloc();
    *(v0 + 40) = v8;
    memcpy(v8, v5, 40 * v6);
  }

  v9 = *v0;
  v10 = *(*v0 + 16);
  if (v10)
  {
    v11 = *v0;
    v29 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_19:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v12 = 0;
    v13 = 0;
    do
    {
      if (v13 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v16 = v9 + v12;
      v17 = **(v9 + v12 + 128);
      if (*(v9 + v12 + 152))
      {
        v18 = *(v16 + 164);
        v19 = 5 * *(v16 + 160);
        *(v16 + 152) = swift_slowAlloc();
        swift_arrayInitWithCopy();
      }

      v20 = *(v16 + 216);
      if (v20)
      {
        v21 = *(v9 + v12 + 224);
        v22 = *(v9 + v12 + 228);
        v23 = swift_slowAlloc();
        *(v16 + 216) = v23;
        memcpy(v23, v20, 8 * v22);
      }

      v24 = v9 + v12;
      v25 = *(v9 + v12 + 96);
      if (v25)
      {
        v26 = *(v24 + 104);
        v27 = *(v24 + 108);
        v28 = swift_slowAlloc();
        *(v24 + 96) = v28;
        memcpy(v28, v25, 8 * v27);
      }

      ++v13;
      v30 = 0;
      v31 = 1;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v35 = 0;
      v36 = 513;
      _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(&v30);
      *(v24 + 232) = v14;
      v15 = swift_slowAlloc();
      *v15 = v17;
      *(v16 + 128) = v15;
      v12 += 208;
    }

    while (v10 != v13);
    *v29 = v9;
  }
}

uint64_t protocol witness for Mortal.interval.getter in conformance Subgraph()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t protocol witness for Mortal.interval.setter in conformance Subgraph(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

uint64_t T_SubgraphCreated.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = a1 + 56;
  v4 = *(a1 + 72);
  v236[0] = *(a1 + 56);
  v236[1] = v4;
  *v237 = *(a1 + 88);
  v5 = (a1 + 72);
  v6 = a1 + 84;
  v7 = a1 + 88;
  v8 = (a1 + 104);
  *&v237[9] = *(a1 + 97);
  v9 = (a1 + 56);
  v10 = (a1 + 72);
  v11 = a1 + 84;
  v12 = (a1 + 104);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v236);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v16 = *(*(v15 + 24 * *(v14 + 8)) + 112);
  if (!v16)
  {
    goto LABEL_153;
  }

  v17 = *v16;
  v18 = *(v16 + 11);
  v222 = *(v16 + 9);
  v223 = v18;
  *v224 = *(v16 + 13);
  *&v224[13] = *(v16 + 117);
  v19 = *(v16 + 3);
  v218 = *(v16 + 1);
  v219 = v19;
  v20 = *(v16 + 7);
  v220 = *(v16 + 5);
  v221 = v20;
  v21 = *v17;
  if (!*(*v17 + 16))
  {
    v25 = 0;
    v27 = a2;
LABEL_14:
    v26 = -1;
    v190 = v27;
    goto LABEL_15;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v23 & 1) == 0)
  {
    v27 = a2;
    v25 = 0;
    goto LABEL_14;
  }

  v24 = *(v21 + 56) + 24 * v22;
  v25 = *(v24 + 8);
  v190 = *v24;
  v26 = *(v24 + 16);
LABEL_15:
  v28 = v3[1];
  v234[0] = *v3;
  v234[1] = v28;
  v235[0] = v3[2];
  *(v235 + 9) = *(v3 + 41);
  v29 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v8;
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v234);
    }

    v30 = (v33 + 16);
    v31 = (v33 + 28);
    v32 = (v33 + 48);
    v29 = v33;
  }

  v35 = *v29;
  if (!v35)
  {
    goto LABEL_170;
  }

  v36 = *(*(v35 + 24 * *(v34 + 8)) + 112);
  if (!v36)
  {
    goto LABEL_154;
  }

  v37 = v223;
  *(v36 + 72) = v222;
  *(v36 + 88) = v37;
  *(v36 + 104) = *v224;
  v38 = v219;
  *(v36 + 8) = v218;
  *(v36 + 24) = v38;
  v39 = v221;
  *(v36 + 40) = v220;
  *v36 = v17;
  *(v36 + 117) = *&v224[13];
  *(v36 + 56) = v39;
  v225[0] = v190;
  v226 = v26;
  if (v25 == -1)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v225[1] = v25 + 1;
  v40 = v3[1];
  v232[0] = *v3;
  v232[1] = v40;
  v233[0] = v3[2];
  *(v233 + 9) = *(v3 + 41);
  v41 = v3;
  v42 = v5;
  v43 = v6;
  v44 = v8;
  while (1)
  {
    v45 = *v44;
    if (*v43 >= 2u)
    {
      v46 = *v42;
      if ((*(v46 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v45)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v232);
    }

    v42 = (v45 + 16);
    v43 = (v45 + 28);
    v44 = (v45 + 48);
    v41 = v45;
  }

  v47 = *v41;
  if (!v47)
  {
    goto LABEL_171;
  }

  v48 = *(*(v47 + 24 * *(v46 + 8)) + 112);
  if (!v48)
  {
    goto LABEL_155;
  }

  v49 = v48[5];
  v215 = v48[4];
  v216 = v49;
  v217[0] = v48[6];
  *(v217 + 13) = *(v48 + 109);
  v50 = v48[1];
  v211 = *v48;
  v212 = v50;
  v51 = v48[3];
  v213 = v48[2];
  v214 = v51;
  specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v211, a2, v225, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
  v52 = v3[1];
  v230[0] = *v3;
  v230[1] = v52;
  v231[0] = v3[2];
  *(v231 + 9) = *(v3 + 41);
  v53 = v3;
  v54 = v5;
  v55 = v6;
  v56 = v8;
  while (1)
  {
    v57 = *v56;
    if (*v55 >= 2u)
    {
      v58 = *v54;
      if ((*(v58 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v230);
    }

    v54 = (v57 + 16);
    v55 = (v57 + 28);
    v56 = (v57 + 48);
    v53 = v57;
  }

  v59 = *v53;
  if (!v59)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v60 = *(*(v59 + 24 * *(v58 + 8)) + 112);
  if (!v60)
  {
    goto LABEL_156;
  }

  v61 = v212;
  *v60 = v211;
  v60[1] = v61;
  v62 = v214;
  v60[2] = v213;
  v60[3] = v62;
  *(v60 + 109) = *(v217 + 13);
  v63 = v217[0];
  v60[5] = v216;
  v60[6] = v63;
  v60[4] = v215;
  if (!a1[48])
  {
    v64 = BYTE1(*a1);
    if (v64 == 2)
    {
      v189 = v25 + 1;
      v65 = *(a1 + 22);
      v66 = *a1;
      if (v66 < *(v65 + 116))
      {
        v67 = *(v65 + 104);
        if (!v67)
        {
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v68 = *(*(*(v67 + 8 * v66) + 8) + 124);
        v69 = v3[1];
        v227 = *v3;
        v228 = v69;
        v229[0] = v3[2];
        *(v229 + 9) = *(v3 + 41);
        v70 = a1 + 100;
        v71 = *(a1 + 29);
        while (1)
        {
          v72 = *v8;
          if (v71 < *v70)
          {
            v73 = (*v7 + 8 * v71);
            if ((v73[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v72)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v71, 0, &v227);
          }

          v7 = (v72 + 32);
          v70 = (v72 + 44);
          v8 = (v72 + 48);
          v3 = v72;
        }

        if (!*v3)
        {
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v187 = *(*(*v3 + 24 * *v73) + 32);
        v102 = *(a1 + 9);
        v205 = *(a1 + 8);
        v206 = v102;
        v207 = *(a1 + 10);
        v103 = *(a1 + 5);
        v201 = *(a1 + 4);
        v202 = v103;
        v104 = *(a1 + 7);
        v203 = *(a1 + 6);
        v204 = v104;
        v105 = *(a1 + 1);
        v198 = *a1;
        v199 = v105;
        v106 = *(a1 + 3);
        *v200 = *(a1 + 2);
        *&v200[16] = v106;
        v210 = a1[192];
        v107 = *(a1 + 23);
        v208 = v65;
        v209 = v107;
        Interpreter.Iterator.updatingValue.getter();
        v110 = v109 & 1;
        if (v109)
        {
          v111 = 0;
        }

        else
        {
          v111 = v108;
        }

        LOBYTE(v194) = 1;
        v112 = MEMORY[0x277D84F90];
        v186 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA15MortalReferenceVyAA11SubgraphRefVG_SayAKGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v114 = v113;
        v185 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA15MortalReferenceVyAA11SubgraphRefVG_SayAKGTt0g5Tf4g_n(v112);
        v116 = v115;
        LOBYTE(v193) = 1;
        v196 = 1;
        v195 = 1;
        v117 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SwiftUITracingSupport19ViewGraphRootValuesV_AC12AttributeRefVTt0g5Tf4g_n(v112);
        v197 = v110;
        if (v66 < *(v65 + 116))
        {
          v183 = v65;
          v184 = v68;
          v118 = *(v65 + 104);
          if (!v118)
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v119 = v194;
          v120 = v193;
          v121 = v196;
          v122 = v195;
          v123 = *(*(v118 + 8 * v66) + 8);
          v124 = *(v123 + 124);
          if (v124 == *(v123 + 120))
          {
            v182 = v117;
            specialized UnsafeArray.growToCapacity(_:)(2 * v124);
            v119 = v194;
            v121 = v196;
            v112 = MEMORY[0x277D84F90];
            v117 = v182;
          }

          v125 = *(v123 + 112);
          if (!v125)
          {
            goto LABEL_160;
          }

          v126 = *(v123 + 124);
          v127 = MEMORY[0x277D84F98];
          v128 = v125 + 168 * v126;
          *v128 = v112;
          *(v128 + 8) = v127;
          *(v128 + 16) = 0;
          *(v128 + 20) = v119;
          *(v128 + 24) = v186;
          *(v128 + 32) = v114;
          *(v128 + 40) = v185;
          *(v128 + 48) = v116;
          *(v128 + 52) = HIDWORD(v116);
          *(v128 + 60) = v120;
          *(v128 + 64) = v184;
          *(v128 + 72) = v190;
          *(v128 + 80) = v189;
          *(v128 + 88) = 0;
          *(v128 + 96) = v112;
          *(v128 + 104) = 0;
          *(v128 + 111) = 0;
          *(v128 + 116) = v111;
          *(v128 + 120) = v110;
          *(v128 + 124) = 0;
          *(v128 + 128) = v121;
          *(v128 + 132) = 0;
          *(v128 + 136) = v122;
          *(v128 + 144) = v187;
          *(v128 + 152) = -1;
          *(v128 + 160) = v117;
          if (v126 != -1)
          {
            *(v123 + 124) = v126 + 1;
            if (a1[48])
            {
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
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            v129 = *a1;
            if (v129 < *(v183 + 116))
            {
              v130 = *(v183 + 104);
              if (v130)
              {
                v131 = *(*(*(v130 + 8 * v129) + 8) + 128);
                v132 = *v131;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v194 = *v131;
                *v131 = 0x8000000000000000;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v184, v190, v189, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCy21SwiftUITracingSupport10SubgraphIDVAC0F3RefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport10SubgraphIDVAC0F3RefVGMR);
                v134 = *v131;
                *v131 = v194;
              }

              goto LABEL_162;
            }

            goto LABEL_140;
          }

LABEL_139:
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
          goto LABEL_158;
        }

LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v64 == 4)
    {
      v191 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
      v74 = *a1;
      v75 = a1[48];
      v76 = v3[1];
      v198 = *v3;
      v199 = v76;
      *v200 = v3[2];
      *&v200[9] = *(v3 + 41);
      v77 = v3;
      v78 = v5;
      v79 = v6;
      v80 = v8;
      v81 = *(a1 + 22);
      while (1)
      {
        v82 = *v80;
        if (*v79)
        {
          v83 = *v78;
          if ((v83[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v82)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v198);
        }

        v78 = (v82 + 16);
        v79 = (v82 + 28);
        v80 = (v82 + 48);
        v77 = v82;
      }

      v84 = *v77;
      if (!v84)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v85 = *(*(v84 + 24 * *v83) + 112);
      if (!v85)
      {
        goto LABEL_157;
      }

      v86 = *(*(v85 + 32) + 8);
      v87 = *(v86 + 16);
      v88 = v87 + 1;
      v89 = (v86 + 48 * v87 - 16);
      do
      {
        if (--v88 < 1)
        {
          v98 = *a1;
          v99 = a1[48];
          v100 = v3[1];
          v227 = *v3;
          v228 = v100;
          v229[0] = v3[2];
          *(v229 + 9) = *(v3 + 41);
          while (1)
          {
            v101 = *v8;
            if (*v6)
            {
              if (((*v5)[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v101)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v227);
            }

            v5 = (v101 + 16);
            v6 = (v101 + 28);
            v8 = (v101 + 48);
            v3 = v101;
          }

          if (!*v3)
          {
            goto LABEL_176;
          }

          result = *v3 + 24 * **v5;
          v136 = *(*result + 112);
          if (!v136)
          {
            goto LABEL_173;
          }

          v137 = *(*(v136 + 32) + 8);
          v138 = *(v137 + 16);
          v139 = (v137 + 48 * v138 - 16);
          while (v138-- >= 1)
          {
            if ((v138 + 1) > *(v137 + 16))
            {
              goto LABEL_133;
            }

            if (v99)
            {
              goto LABEL_150;
            }

            if (*(v81 + 116) <= v98)
            {
              goto LABEL_134;
            }

            v141 = *(v81 + 104);
            if (!v141)
            {
              goto LABEL_151;
            }

            v142 = *v139;
            v143 = *(*(v141 + 8 * v98) + 8);
            if (v142 >= *(v143 + 44))
            {
              goto LABEL_135;
            }

            v144 = *(v143 + 32);
            if (!v144)
            {
              goto LABEL_152;
            }

            v139 -= 12;
            v145 = v144 + (v142 << 7);
            v146 = *(v145 + 8);
            v147 = *(v145 + 16);
            v148 = *(v145 + 25);
            v149 = *(v145 + 28);
            v150 = *(v145 + 32);
            LOBYTE(v194) = *(v145 + 24);
            result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5(v146, v147, v194, v150);
            v151 = v149 == result && v150 == HIDWORD(result);
            if (!v151)
            {
              LODWORD(v91) = v142;
              goto LABEL_106;
            }
          }

          return result;
        }

        if (v75)
        {
          goto LABEL_145;
        }

        if (*(v81 + 116) <= v74)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v90 = *(v81 + 104);
        if (!v90)
        {
          goto LABEL_146;
        }

        v91 = *v89;
        v92 = *(*(v90 + 8 * v74) + 8);
        if (v91 >= *(v92 + 44))
        {
          goto LABEL_131;
        }

        v93 = *(v92 + 32);
        if (!v93)
        {
          goto LABEL_147;
        }

        v94 = v93 + (v91 << 7);
        v97 = *(v94 + 8);
        v96 = v94 + 8;
        v95 = v97;
        if (!*(v96 + 24))
        {
          goto LABEL_132;
        }

        if (*(v96 + 16))
        {
          goto LABEL_149;
        }

        if (!v95)
        {
          goto LABEL_148;
        }

        v89 -= 12;
      }

      while (*v95 != &type metadata for Event.AttributeValue);
LABEL_106:
      if (a1[48])
      {
        goto LABEL_163;
      }

      v152 = *a1;
      if (v152 >= *(v81 + 116))
      {
        goto LABEL_141;
      }

      v153 = *(v81 + 104);
      if (!v153)
      {
        goto LABEL_164;
      }

      v154 = *(*(v153 + 8 * v152) + 8);
      if (v91 < *(v154 + 44))
      {
        v155 = *(v154 + 32);
        if (!v155)
        {
          goto LABEL_165;
        }

        v156 = v155 + (v91 << 7);
        v157 = *(v156 + 8);
        v158 = *(v156 + 16);
        v159 = v156 + 8;
        v160 = *(v159 + 17);
        v162 = *(v159 + 20);
        v161 = *(v159 + 24);
        LOBYTE(v194) = *(v159 + 16);
        v151 = v160 == 0;
        v163 = 256;
        if (v151)
        {
          v163 = 0;
        }

        v164 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(v157, v158, v163 | (v162 << 32) | v194, v161, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
        if (v164)
        {
          v165 = *v164;
          v166 = v164[1];
        }

        else
        {
          v166 = MEMORY[0x277D84FA0];
          v165 = MEMORY[0x277D84FA0];
        }

        v194 = v165;
        specialized Set._Variant.insert(_:)(&v193, v191);
        v167 = v194;
        v168 = *v159;
        v169 = *(v159 + 8);
        v170 = *(v159 + 17);
        v172 = *(v159 + 20);
        v171 = *(v159 + 24);
        v197 = *(v159 + 16);
        v151 = v170 == 0;
        v173 = 256;
        if (v151)
        {
          v173 = 0;
        }

        v174 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(v168, v169, v173 | (v172 << 32) | v197, v171, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
        if (v174)
        {
          v175 = *v174;
          v176 = v174[1];
          *v174 = v167;
          v174[1] = v166;
        }

        else
        {
          specialized HeterogeneousBuffer.insert<A>(_:)(v167, v166);
        }

        if (a1[48])
        {
          goto LABEL_166;
        }

        v177 = *a1;
        if (v177 >= *(v81 + 116))
        {
          goto LABEL_143;
        }

        v178 = *(v81 + 104);
        if (v178)
        {
          v179 = *(*(v178 + 8 * v177) + 8);
          if (v191 >= *(v179 + 124))
          {
            goto LABEL_144;
          }

          v180 = *(v179 + 112);
          if (v180)
          {
            v181 = v180 + 168 * v191;
            *(v181 + 124) = v91;
            *(v181 + 128) = 0;
            return result;
          }

          goto LABEL_168;
        }

        goto LABEL_167;
      }

      goto LABEL_142;
    }
  }

LABEL_177:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Event.subscript.getter@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 25);
  v16 = *(v3 + 28);
  v15 = *(v3 + 32);
  v25 = *(v3 + 24);
  v17 = v14 == 0;
  v18 = 256;
  if (v17)
  {
    v18 = 0;
  }

  v19 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a2, v12, v13, v18 | (v16 << 32) | v25, v15, a2);
  if (v19)
  {
    v20 = *(a2 - 8);
    (*(v20 + 16))(v11, v19, a2);
    (*(v20 + 56))(v11, 0, 1, a2);
    return (*(v20 + 32))(a3, v11, a2);
  }

  else
  {
    v22 = *(a2 - 8);
    v23 = (*(v22 + 56))(v11, 1, 1, a2);
    a1(v23);
    result = (*(v22 + 48))(v11, 1, a2);
    if (result != 1)
    {
      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

void T_SubgraphDestroy.model(within:)(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
    if (*(a1 + 48) || (*a1 & 0xFF00) != 0x200)
    {
      Interpreter.Iterator.updateDeallocates(_:)(v3);
      return;
    }

    v4 = *(a1 + 176);
    v5 = *a1;
    if (v5 >= *(v4 + 116))
    {
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 104);
      if (!v6)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v7 = *(*(v6 + 8 * v5) + 8);
      v8 = (a1 + 56);
      v9 = *(a1 + 72);
      v22[0] = *(a1 + 56);
      v22[1] = v9;
      v23[0] = *(a1 + 88);
      *(v23 + 9) = *(a1 + 97);
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
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, v22);
        }

        v10 = (v14 + 32);
        v11 = (v14 + 44);
        v12 = (v14 + 48);
        v8 = v14;
      }

      if (!*v8)
      {
        goto LABEL_24;
      }

      v16 = *v8 + 24 * *v15;
      if (v3 < *(v7 + 124))
      {
        v17 = *(v7 + 112);
        if (!v17)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v18 = *(*v16 + 32);
        v19 = v17 + 168 * v3;
        v21 = *(v19 + 144);
        v20 = v19 + 144;
        if (v18 >= v21)
        {
          *(v20 + 8) = v18;
          return;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

unint64_t T_SubgraphAddChild.structure(within:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, result);
    result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a3, v4);
    if (v4[48])
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v6 = *(v4 + 22);
    v7 = *v4;
    if (v7 < *(v6 + 116))
    {
      v8 = *(v6 + 104);
      if (!v8)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v9 = result;
      v10 = *(*(v8 + 8 * v7) + 8);
      v11 = *(v10 + 124);
      if (result >= v11)
      {
        goto LABEL_56;
      }

      v72 = *(v4 + 22);
      v12 = *(v10 + 112);
      if (!v12)
      {
LABEL_67:
        __break(1u);
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v68 = result;
      v69 = *(v12 + 168 * result + 64);
      v13 = v4 + 56;
      v14 = *(v4 + 72);
      v75[0] = *(v4 + 56);
      v75[1] = v14;
      v76[0] = *(v4 + 88);
      v15 = v4 + 88;
      v16 = v4 + 100;
      v17 = (v4 + 104);
      v18 = *(v4 + 29);
      v19 = 8 * v18;
      *(v76 + 9) = *(v4 + 97);
      v20 = (v4 + 56);
      v21 = v4 + 88;
      v22 = v4 + 100;
      v23 = (v4 + 104);
      while (1)
      {
        v24 = *v23;
        if (v18 < *v22)
        {
          v25 = *v21 + v19;
          if ((*(v25 + 4) & 1) == 0)
          {
            break;
          }
        }

        if (!v24)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v75);
        }

        v21 = (v24 + 32);
        v22 = (v24 + 44);
        v23 = (v24 + 48);
        v20 = v24;
      }

      v40 = *v20;
      if (!v40)
      {
        goto LABEL_76;
      }

      v27 = *v25;
      v28 = 24;
      result = v40 + 24 * v27;
      if (v5 < v11)
      {
        v26 = *(*result + 32);
        v27 = *(v4 + 40);
        v28 = *(v4 + 41);
        v29 = v4[168];
        v30 = *(v4 + 43);
        v67 = v5;
        v66 = v5;
        v31 = v12 + 168 * v5;
        v32 = *(v31 + 52);
        v70 = v30;
        v71 = v29;
        if (v32 == *(v31 + 48))
        {
          v64 = *(v4 + 41);
          v65 = *(v4 + 40);
          v63 = *(*result + 32);
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v32);
          v26 = v63;
          v30 = v70;
          v29 = v71;
          v28 = v64;
          v27 = v65;
        }

        v33 = *(v31 + 40);
        if (!v33)
        {
          goto LABEL_68;
        }

        v34 = *(v31 + 52);
        v35 = v33 + 40 * v34;
        *v35 = v69;
        *(v35 + 8) = v26;
        *(v35 + 16) = -1;
        *(v35 + 24) = v27;
        *(v35 + 28) = v28;
        *(v35 + 32) = v29;
        *(v35 + 36) = v30;
        if (v34 == -1)
        {
          goto LABEL_57;
        }

        *(v31 + 52) = v34 + 1;
        if (v4[48])
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v36 = *v4;
        v5 = v67;
        if (v36 >= *(v72 + 116))
        {
          goto LABEL_58;
        }

        v37 = *(v72 + 104);
        if (!v37)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v10 = *(*(v37 + 8 * v36) + 8);
        v38 = *(v4 + 72);
        v73[0] = *v13;
        v73[1] = v38;
        v74[0] = *(v4 + 88);
        *(v74 + 9) = *(v4 + 97);
        while (1)
        {
          v39 = *v17;
          if (v18 < *v16)
          {
            v11 = (*v15 + v19);
            if ((v11[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v39)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v73);
          }

          v15 = (v39 + 32);
          v16 = (v39 + 44);
          v17 = (v39 + 48);
          v13 = v39;
        }
      }

      else
      {
        __break(1u);
      }

      if (!*v13)
      {
LABEL_77:
        __break(1u);
        return result;
      }

      v41 = v28;
      v42 = v27;
      result = *v13 + 24 * *v11;
      if (v9 >= *(v10 + 124))
      {
        goto LABEL_59;
      }

      v43 = *(v10 + 112);
      if (!v43)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v44 = *(*result + 32);
      v45 = v43 + 168 * v68;
      v46 = *(v45 + 36);
      if (v46 == *(v45 + 32))
      {
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v46);
      }

      v47 = *(v45 + 24);
      if (!v47)
      {
        goto LABEL_72;
      }

      v48 = *(v45 + 36);
      v49 = v47 + 40 * v48;
      *v49 = v5;
      *(v49 + 8) = v44;
      *(v49 + 16) = -1;
      *(v49 + 24) = v42;
      *(v49 + 28) = v41;
      *(v49 + 32) = v71;
      *(v49 + 36) = v70;
      if (v48 == -1)
      {
        goto LABEL_60;
      }

      *(v45 + 36) = v48 + 1;
      if (v4[48])
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v50 = *v4;
      if (v50 >= *(v72 + 116))
      {
        goto LABEL_61;
      }

      v51 = *(v72 + 104);
      if (!v51)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v52 = *(*(v51 + 8 * v50) + 8);
      v53 = *(v52 + 124);
      if (v5 >= v53)
      {
        goto LABEL_62;
      }

      v54 = *(v52 + 112);
      if (!v54)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v55 = v54 + 168 * v66;
      v56 = *(v55 + 24);
      v57 = (v56 + 16);
      v58 = *(v55 + 36) + 1;
      while (1)
      {
        if (!--v58)
        {
          if (v9 >= v53)
          {
            goto LABEL_63;
          }

LABEL_52:
          v62 = v54 + 168 * v68;
          *(v62 + 56) = v5;
          *(v62 + 60) = 0;
          return result;
        }

        if (!v56)
        {
          goto LABEL_64;
        }

        if (v9 >= v53)
        {
          break;
        }

        v59 = *v57;
        v60 = *(v57 - 4);
        v57 += 5;
        if (v60 == *(v54 + 168 * v68 + 64) && v59 == -1)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
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
    goto LABEL_65;
  }

  return result;
}

unint64_t T_SubgraphRemoveChild.structure(within:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    goto LABEL_59;
  }

  v5 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v6 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a3, a1);
  if (a1[48])
  {
    goto LABEL_47;
  }

  v7 = *(a1 + 22);
  v8 = *a1;
  if (v8 >= *(v7 + 116))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
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

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v10 = v6;
  v11 = *(*(v9 + 8 * v8) + 8);
  v12 = a1 + 56;
  v13 = *(a1 + 72);
  v60[0] = *(a1 + 56);
  v60[1] = v13;
  v61[0] = *(a1 + 88);
  v14 = a1 + 88;
  v15 = a1 + 100;
  v16 = (a1 + 104);
  v17 = *(a1 + 29);
  v18 = 8 * v17;
  *(v61 + 9) = *(a1 + 97);
  v19 = (a1 + 56);
  v20 = a1 + 88;
  v21 = a1 + 100;
  v22 = (a1 + 104);
  v57 = v6;
  v56 = v7;
  while (1)
  {
    v23 = *v22;
    if (v17 < *v21)
    {
      v24 = (*v20 + v18);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, v60);
    }

    v20 = (v23 + 32);
    v21 = (v23 + 44);
    v22 = (v23 + 48);
    v19 = v23;
  }

  v25 = *v19;
  if (!v25)
  {
    goto LABEL_57;
  }

  v26 = v25 + 24 * *v24;
  if (v5 >= *(v11 + 124))
  {
    goto LABEL_38;
  }

  v27 = *(v11 + 112);
  if (!v27)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v28 = *(*v26 + 32);
  v55 = v5;
  v29 = v27 + 168 * v5;
  v30 = *(v29 + 40);
  v31 = *(v29 + 52);
  v32 = specialized UnsafeArray<A>.findIndex(ref:at:)(v10, v28, v30, *(v29 + 48) | (v31 << 32));
  if (v32 >= v31)
  {
    goto LABEL_39;
  }

  if (!v30)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v33 = v30 + 40 * v32;
  v35 = *(v33 + 8);
  v34 = v33 + 8;
  if (v28 < v35)
  {
    goto LABEL_40;
  }

  *(v34 + 8) = v28;
  if (a1[48])
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v36 = *a1;
  if (v36 >= *(v56 + 116))
  {
    goto LABEL_41;
  }

  v37 = *(v56 + 104);
  if (!v37)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v38 = *(*(v37 + 8 * v36) + 8);
  if (v57 >= *(v38 + 124))
  {
    goto LABEL_42;
  }

  v39 = *(v38 + 112);
  if (!v39)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = v39 + 168 * v57;
  *(v40 + 56) = v55;
  *(v40 + 60) = 0;
  if (a1[48])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v41 = *a1;
  if (v41 >= *(v56 + 116))
  {
    goto LABEL_43;
  }

  v42 = *(*(v37 + 8 * v41) + 8);
  v43 = *(a1 + 72);
  v58[0] = *v12;
  v58[1] = v43;
  v59[0] = *(a1 + 88);
  *(v59 + 9) = *(a1 + 97);
  while (1)
  {
    v44 = *v16;
    if (v17 < *v15)
    {
      v45 = (*v14 + v18);
      if ((v45[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v44)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, v58);
    }

    v14 = (v44 + 32);
    v15 = (v44 + 44);
    v16 = (v44 + 48);
    v12 = v44;
  }

  if (!*v12)
  {
    goto LABEL_58;
  }

  if (v57 >= *(v42 + 124))
  {
    goto LABEL_44;
  }

  v46 = *(v42 + 112);
  if (!v46)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v47 = *(*(*v12 + 24 * *v45) + 32);
  v48 = v46 + 168 * v57;
  v49 = *(v48 + 24);
  v50 = *(v48 + 36);
  result = specialized UnsafeArray<A>.findIndex(ref:at:)(v55, v47, v49, *(v48 + 32) | (v50 << 32));
  if (result >= v50)
  {
    goto LABEL_45;
  }

  if (v49)
  {
    v52 = v49 + 40 * result;
    v54 = *(v52 + 8);
    v53 = v52 + 8;
    if (v47 >= v54)
    {
      *(v53 + 8) = v47;
      return result;
    }

    goto LABEL_46;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void T_SubgraphTreeUpdate.structure(within:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v292 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v5 = *(v4 + 11);
  v360 = *(v4 + 10);
  v361 = v5;
  v362 = v4[192];
  v6 = *(v4 + 7);
  v356 = *(v4 + 6);
  v357 = v6;
  v7 = *(v4 + 8);
  v359 = *(v4 + 9);
  v358 = v7;
  v8 = *(v4 + 3);
  v352 = *(v4 + 2);
  v353 = v8;
  v9 = *(v4 + 4);
  v355 = *(v4 + 5);
  v354 = v9;
  v10 = *v4;
  v351 = *(v4 + 1);
  v350 = v10;
  v11 = v361;
  v12 = specialized Interpreter.Iterator.subscript.getter(a3);
  if (v4[48])
  {
    goto LABEL_365;
  }

  v15 = *v4;
  if (v15 >= *(v361 + 116))
  {
    goto LABEL_301;
  }

  v16 = *(v361 + 104);
  if (!v16)
  {
    goto LABEL_366;
  }

  v17 = *(*(v16 + 8 * v15) + 8);
  if (v292 >= *(v17 + 124))
  {
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v18 = *(v17 + 112);
  if (!v18)
  {
    goto LABEL_367;
  }

  v19 = v18 + 168 * v292;
  v21 = *(v19 + 104);
  v20 = (v19 + 104);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_303;
  }

  v23 = v13;
  *v20 = v22;
  if (v13)
  {
    v24 = v12;
    v25 = v14;
    v26 = 0;
    v27 = v4 + 56;
    v311 = v4 + 84;
    v312 = v4 + 72;
    v310 = v4 + 104;
    v290 = MEMORY[0x277D84F98];
    v300 = v4;
    v286 = v14;
    v287 = v13;
    v288 = v12;
    while (1)
    {
      if ((v26 * v25) >> 64 != (v26 * v25) >> 63)
      {
        goto LABEL_278;
      }

      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_279;
      }

      v29 = v24 + v26 * v25;
      v30 = *v29;
      v32 = *(v29 + 8);
      v31 = *(v29 + 12);
      v33 = *(v29 + 16);
      if (v26 && v33)
      {
        goto LABEL_10;
      }

      v305 = v30;
      v308 = v31;
      v289 = v26 + 1;
      v291 = v33;
      v302 = v32;
      if (!v31)
      {
        v43 = 0;
        v296 = 32;
        v297 = 0;
        if (v33)
        {
LABEL_25:
          LODWORD(v48) = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v33, v4);
          v47 = v291;
          v48 = v48;
          goto LABEL_36;
        }

LABEL_31:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_26C328DC0;
        *&v328 = 0;
        *(&v328 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        *v324 = v328;
        MEMORY[0x26D69CDB0](0xD000000000000014, 0x800000026C33C350);
        *&v328 = v305;
        *(&v328 + 1) = __PAIR64__(v308, v32);
        *&v329 = 0;
        type metadata accessor for T_RawTreeNode(0);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](0x6570797420666F20, 0xEA0000000000203ALL);
        if ((v32 + 1) >= 2)
        {
          v54 = *(v11 + 136);
          v331 = v54[3];
          v332 = v54[4];
          *v333 = v54[5];
          *&v333[16] = v54[6];
          v328 = *v54;
          v329 = v54[1];
          v330 = v54[2];
          v53 = Interpreter.Storage.Types.subscript.getter(v32);
          v52 = v55;
        }

        else
        {
          v52 = 0xE600000000000000;
          v53 = 0x574F4E4B4E55;
        }

        MEMORY[0x26D69CDB0](v53, v52);

        v56 = *v324;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 32) = v56;
        print(_:separator:terminator:)();

        v48 = -1;
        goto LABEL_35;
      }

      v34 = *(v4 + 11);
      v347[12] = *(v4 + 10);
      v348 = v34;
      v349 = v4[192];
      v35 = *(v4 + 7);
      v347[8] = *(v4 + 6);
      v347[9] = v35;
      v36 = *(v4 + 8);
      v347[11] = *(v4 + 9);
      v347[10] = v36;
      v37 = *(v4 + 3);
      v347[4] = *(v4 + 2);
      v347[5] = v37;
      v38 = *(v4 + 5);
      v347[6] = *(v4 + 4);
      v347[7] = v38;
      v39 = *(v4 + 1);
      v347[2] = *v4;
      v347[3] = v39;
      v11 = v348;
      v40 = specialized Interpreter.Iterator.subscript.getter(v31);
      v33 = v291;
      v296 = v42;
      v297 = v40;
      v43 = v41;
      if (v291)
      {
        goto LABEL_25;
      }

      if (!v41)
      {
        goto LABEL_31;
      }

      v44 = 0;
      while (1)
      {
        if ((v44 * v42) >> 64 != (v44 * v42) >> 63)
        {
          goto LABEL_276;
        }

        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
          goto LABEL_297;
        }

        v46 = (v40 + v44 * v42);
        if ((v46[4] & 0x20) != 0)
        {
          break;
        }

        ++v44;
        if (v45 >= v41)
        {
          goto LABEL_31;
        }
      }

      v49 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(*v46, v4);
      if ((v49 & 0x100000000) != 0)
      {
        goto LABEL_31;
      }

      if (v32)
      {
        v50 = v32;
      }

      else
      {
        v50 = -1;
      }

      v48 = v49 | (v50 << 32);
LABEL_35:
      v47 = v291;
LABEL_36:
      v57 = v47 != 0;
      if (v4[48])
      {
        goto LABEL_348;
      }

      v58 = *v4;
      if (v58 >= *(v11 + 116))
      {
        goto LABEL_280;
      }

      v295 = v43;
      v59 = *(v11 + 104);
      if (!v59)
      {
        goto LABEL_350;
      }

      v60 = v48;
      v61 = Snapshot.subscript.read(&v328, v292, *(*(v59 + 8 * v58) + 8));
      v63 = *(v62 + 8);
      if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v57), (v65 & 1) != 0))
      {
        v293 = *(*(v63 + 56) + 8 * v64);
        (v61)(&v328, 0);
      }

      else
      {
        (v61)(&v328, 0);
        closure #2 in implicit closure #2 in T_SubgraphTreeUpdate.structure(within:)(v4, v292, v305, v302, v291);
        v293 = v66;
      }

      if (v4[48])
      {
        goto LABEL_349;
      }

      v67 = *v4;
      if (v67 >= *(v11 + 116))
      {
        goto LABEL_281;
      }

      v68 = *(v11 + 104);
      if (!v68)
      {
        goto LABEL_351;
      }

      v69 = *(*(v68 + 8 * v67) + 8);
      if (v292 >= *(v69 + 124))
      {
        goto LABEL_282;
      }

      v70 = *(v69 + 112);
      if (!v70)
      {
        goto LABEL_352;
      }

      v71 = v70 + 168 * v292;
      v72 = *(v71 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v328 = *(v71 + 8);
      *(v71 + 8) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v293, v60, v57, isUniquelyReferenced_nonNull_native);
      v74 = *(v71 + 8);
      *(v71 + 8) = v328;

      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v328 = v290;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v293, v26, v75);
      v290 = v328;
      v309 = HIDWORD(v293);
      v76 = v293;
      if (v305 == -1)
      {
        goto LABEL_84;
      }

      if (!*(v328 + 16))
      {
        goto LABEL_287;
      }

      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v305);
      if ((v78 & 1) == 0)
      {
        goto LABEL_288;
      }

      v79 = *(*(v290 + 56) + 4 * v77);
      if ((v79 & 0x80000000) != 0)
      {
        goto LABEL_289;
      }

      if (v4[48])
      {
        goto LABEL_356;
      }

      v80 = *v4;
      if (v80 >= *(v11 + 116))
      {
        goto LABEL_290;
      }

      v81 = *(v11 + 104);
      if (!v81)
      {
        goto LABEL_357;
      }

      v82 = *(*(v81 + 8 * v80) + 8);
      if (v309 >= *(v82 + 124))
      {
        goto LABEL_291;
      }

      v83 = *(v82 + 112);
      if (!v83)
      {
        goto LABEL_358;
      }

      if ((v293 & 0x80000000) != 0)
      {
        goto LABEL_292;
      }

      v84 = (v83 + 168 * HIDWORD(v293));
      v85 = *v84;
      if (v293 >= *(*v84 + 16))
      {
        goto LABEL_293;
      }

      v86 = (v292 << 32) | v79;
      v87 = v85 + 208 * v293;
      if ((*(v87 + 88) & 1) != 0 || *(v87 + 80) == v86)
      {
        v88 = *v84;
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *v84 = v85;
        if ((v89 & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew()(v85);
          *v84 = v85;
        }

        if (v293 < *(v85 + 16))
        {
          v90 = v85 + 208 * v293;
          Tree.parent.willset(v86, 0);
          *(v90 + 80) = v86;
          *(v90 + 88) = 0;
          if (v4[48])
          {
            goto LABEL_362;
          }

          v91 = *v4;
          if (v91 < *(v11 + 116))
          {
            v92 = *(v11 + 104);
            if (!v92)
            {
              goto LABEL_363;
            }

            v93 = *(*(v92 + 8 * v91) + 8);
            if (v292 < *(v93 + 124))
            {
              v94 = *(v93 + 112);
              if (!v94)
              {
                goto LABEL_364;
              }

              v95 = *(v94 + 168 * v292);
              if (*(v95 + 16) > v79)
              {
                v96 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_AD11UnsafeArrayVyAFGTt0g5Tf4x_n(*(v95 + 208 * v79 + 96), *(v95 + 208 * v79 + 108));
                v97 = specialized Set.contains(_:)(v293, v96);

                if (v97)
                {
                  goto LABEL_84;
                }

                if (v4[48])
                {
                  goto LABEL_368;
                }

                v98 = *v4;
                if (v98 < *(v11 + 116))
                {
                  v99 = *(v11 + 104);
                  if (!v99)
                  {
                    goto LABEL_369;
                  }

                  v100 = *(*(v99 + 8 * v98) + 8);
                  if (v292 < *(v100 + 124))
                  {
                    v101 = *(v100 + 112);
                    if (!v101)
                    {
                      goto LABEL_370;
                    }

                    v102 = (v101 + 168 * v292);
                    v103 = *v102;
                    v104 = swift_isUniquelyReferenced_nonNull_native();
                    *v102 = v103;
                    if ((v104 & 1) == 0)
                    {
                      v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
                      *v102 = v103;
                    }

                    if (*(v103 + 16) > v79)
                    {
                      v105 = v103 + 208 * v79;
                      v106 = *(v105 + 108);
                      if (v106 == *(v105 + 104))
                      {
                        specialized UnsafeArray.growToCapacity(_:)(2 * v106);
                      }

                      v107 = *(v105 + 96);
                      if (v107)
                      {
                        v108 = *(v105 + 108);
                        *(v107 + 8 * v108) = v293;
                        if (v108 != -1)
                        {
                          *(v105 + 108) = v108 + 1;
                          goto LABEL_84;
                        }

LABEL_307:
                        __break(1u);
LABEL_308:
                        __break(1u);
LABEL_309:
                        __break(1u);
LABEL_310:
                        __break(1u);
LABEL_311:
                        __break(1u);
LABEL_312:
                        __break(1u);
LABEL_313:
                        __break(1u);
LABEL_314:
                        __break(1u);
LABEL_315:
                        __break(1u);
LABEL_316:
                        __break(1u);
LABEL_317:
                        __break(1u);
LABEL_318:
                        __break(1u);
LABEL_319:
                        __break(1u);
LABEL_320:
                        __break(1u);
LABEL_321:
                        __break(1u);
LABEL_322:
                        __break(1u);
LABEL_323:
                        __break(1u);
LABEL_324:
                        __break(1u);
LABEL_325:
                        __break(1u);
LABEL_326:
                        __break(1u);
LABEL_327:
                        __break(1u);
LABEL_328:
                        __break(1u);
LABEL_329:
                        __break(1u);
LABEL_330:
                        __break(1u);
LABEL_331:
                        __break(1u);
LABEL_332:
                        __break(1u);
LABEL_333:
                        __break(1u);
LABEL_334:
                        __break(1u);
LABEL_335:
                        __break(1u);
LABEL_336:
                        __break(1u);
LABEL_337:
                        __break(1u);
LABEL_338:
                        __break(1u);
LABEL_339:
                        __break(1u);
LABEL_340:
                        __break(1u);
LABEL_341:
                        __break(1u);
LABEL_342:
                        __break(1u);
LABEL_343:
                        __break(1u);
LABEL_344:
                        __break(1u);
LABEL_345:
                        __break(1u);
LABEL_346:
                        __break(1u);
LABEL_347:
                        __break(1u);
LABEL_348:
                        __break(1u);
LABEL_349:
                        __break(1u);
LABEL_350:
                        __break(1u);
LABEL_351:
                        __break(1u);
LABEL_352:
                        __break(1u);
LABEL_353:
                        __break(1u);
LABEL_354:
                        __break(1u);
LABEL_355:
                        __break(1u);
LABEL_356:
                        __break(1u);
LABEL_357:
                        __break(1u);
LABEL_358:
                        __break(1u);
LABEL_359:
                        __break(1u);
LABEL_360:
                        __break(1u);
LABEL_361:
                        __break(1u);
LABEL_362:
                        __break(1u);
LABEL_363:
                        __break(1u);
LABEL_364:
                        __break(1u);
LABEL_365:
                        __break(1u);
LABEL_366:
                        __break(1u);
LABEL_367:
                        __break(1u);
LABEL_368:
                        __break(1u);
LABEL_369:
                        __break(1u);
LABEL_370:
                        __break(1u);
                      }

                      __break(1u);
LABEL_372:
                      __break(1u);
                      goto LABEL_373;
                    }

LABEL_306:
                    __break(1u);
                    goto LABEL_307;
                  }

LABEL_305:
                  __break(1u);
                  goto LABEL_306;
                }

LABEL_304:
                __break(1u);
                goto LABEL_305;
              }

LABEL_300:
              __break(1u);
LABEL_301:
              __break(1u);
              goto LABEL_302;
            }

LABEL_299:
            __break(1u);
            goto LABEL_300;
          }

LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

LABEL_297:
        __break(1u);
        goto LABEL_298;
      }

LABEL_84:
      if (v4[48])
      {
        goto LABEL_353;
      }

      v109 = *v4;
      if (v109 >= *(v11 + 116))
      {
        goto LABEL_283;
      }

      v110 = *(v11 + 104);
      if (!v110)
      {
        goto LABEL_354;
      }

      v111 = *(*(v110 + 8 * v109) + 8);
      if (v309 >= *(v111 + 124))
      {
        goto LABEL_284;
      }

      v112 = *(v111 + 112);
      if (!v112)
      {
        goto LABEL_355;
      }

      if ((v293 & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      v113 = *(v112 + 168 * HIDWORD(v293));
      if (v293 >= *(v113 + 16))
      {
        goto LABEL_286;
      }

      v114 = v113 + 208 * v293;
      v115 = *(v114 + 164);
      if (!v115)
      {
        break;
      }

      v116 = *(v114 + 152);
      *&v328 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
      v117 = v328;
      v118 = v116;
      do
      {
        if (!v116)
        {
          goto LABEL_313;
        }

        v119 = *v118;
        *&v328 = v117;
        v121 = *(v117 + 16);
        v120 = *(v117 + 24);
        if (v121 >= v120 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
          v117 = v328;
        }

        *(v117 + 16) = v121 + 1;
        *(v117 + 4 * v121 + 32) = v119;
        v118 += 10;
        --v115;
      }

      while (v115);
      v4 = v300;
      if (v295)
      {
        goto LABEL_100;
      }

LABEL_213:

      v23 = v287;
      v24 = v288;
      v25 = v286;
      v28 = v289;
      if (!v291)
      {
        goto LABEL_10;
      }

      if (v4[48])
      {
        goto LABEL_359;
      }

      v243 = *v4;
      if (v243 >= *(v11 + 116))
      {
        goto LABEL_294;
      }

      v244 = *(v11 + 104);
      if (!v244)
      {
        goto LABEL_360;
      }

      v245 = *(*(v244 + 8 * v243) + 8);
      if (v309 >= *(v245 + 124))
      {
        goto LABEL_295;
      }

      v246 = *(v245 + 112);
      if (!v246)
      {
        goto LABEL_361;
      }

      v247 = *(v246 + 168 * HIDWORD(v293));
      if (v76 >= *(v247 + 16))
      {
        goto LABEL_296;
      }

      v248 = v247 + 32;
      if (*(v248 + 208 * v76 + 92))
      {
        goto LABEL_10;
      }

      v249 = (v248 + 208 * v76);
      v336 = v249[9];
      v337 = v249[10];
      v338 = v249[11];
      v339 = v249[12];
      *v333 = v249[5];
      *&v333[16] = v249[6];
      v334 = v249[7];
      v335 = v249[8];
      v329 = v249[1];
      v330 = v249[2];
      v331 = v249[3];
      v332 = v249[4];
      v328 = *v249;
      Tree.viewValue.getter(v324);
      v250 = *&v324[16];
      if (*&v324[16] == 1)
      {
        goto LABEL_9;
      }

      if (v4[48])
      {
        goto LABEL_375;
      }

      v251 = *v4;
      if (v251 >= *(v11 + 116))
      {
        goto LABEL_310;
      }

      v252 = *(v11 + 104);
      if (!v252)
      {
        goto LABEL_377;
      }

      v253 = *v324;
      v254 = *(*(v252 + 8 * v251) + 8);
      if (*v324 >= *(v254 + 84))
      {
        goto LABEL_311;
      }

      v255 = *(v254 + 72);
      if (!v255)
      {
        goto LABEL_376;
      }

      v307 = *&v324[8];
      v256 = v255 + 312 * *v324;
      v257 = *(v256 + 144);
      v258 = swift_isUniquelyReferenced_nonNull_native();
      *(v256 + 144) = v257;
      if ((v258 & 1) == 0)
      {
        v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v257 + 2) + 1, 1, v257);
        *(v256 + 144) = v257;
      }

      v260 = *(v257 + 2);
      v259 = *(v257 + 3);
      if (v260 >= v259 >> 1)
      {
        *(v256 + 144) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v259 > 1), v260 + 1, 1, v257);
      }

      outlined consume of TreeValue?(v253, v307, v250);
      v261 = *(v256 + 144);
      *(v261 + 16) = v260 + 1;
      *(v261 + 8 * v260 + 32) = v293;
      v262 = *(v11 + 152);
      v125 = __OFADD__(v262, 1);
      v263 = v262 + 1;
      if (v125)
      {
        goto LABEL_312;
      }

      *(v11 + 152) = v263;
      hookup #1 (viewValue:) in T_SubgraphTreeUpdate.structure(within:)(v253, v4);
      v23 = v287;
      v24 = v288;
      v25 = v286;
LABEL_9:
      v28 = v289;
LABEL_10:
      v26 = v28;
      if (v28 >= v23)
      {
        goto LABEL_234;
      }
    }

    v117 = MEMORY[0x277D84F90];
    if (!v295)
    {
      goto LABEL_213;
    }

LABEL_100:
    v122 = 0;
    v123 = 0;
    v294 = v117;
    v124 = v117 + 32;
    while (1)
    {
      v125 = __OFADD__(v123++, 1);
      if (v125)
      {
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
        goto LABEL_277;
      }

      v126 = (v297 + v122);
      v127 = v126[1];
      v303 = *v126;
      v129 = v126[2];
      v128 = v126[3];
      v130 = v126[5];
      v301 = v126[4];
      v131 = v27[1];
      v346[0] = *v27;
      v346[1] = v131;
      v347[0] = v27[2];
      v132 = v27;
      v134 = v311;
      v133 = v312;
      v135 = v310;
      *(v347 + 9) = *(v27 + 41);
      while (1)
      {
        v136 = *v135;
        if (*v134 >= 2u)
        {
          v137 = *v133;
          if ((*(v137 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v136)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v346);
        }

        v133 = (v136 + 16);
        v134 = (v136 + 28);
        v135 = (v136 + 48);
        v132 = v136;
      }

      v138 = *v132;
      if (!v138)
      {
        goto LABEL_334;
      }

      v139 = *(*(v138 + 24 * *(v137 + 8)) + 112);
      if (!v139)
      {
        goto LABEL_315;
      }

      v140 = v124;
      v320 = *v139;
      v141 = *(v139 + 2);
      v142 = *(v139 + 88);
      v331 = *(v139 + 72);
      v332 = v142;
      *v333 = *(v139 + 104);
      *&v333[13] = *(v139 + 117);
      v143 = *(v139 + 40);
      v328 = *(v139 + 24);
      v329 = v143;
      v330 = *(v139 + 56);
      v144 = *v141;
      v306 = v11;
      v298 = v130;
      v299 = v127;
      if (*(*v141 + 16) && (v145 = specialized __RawDictionaryStorage.find<A>(_:)(v303), (v146 & 1) != 0))
      {
        v147 = 0;
        v148 = (*(v144 + 56) + 24 * v145);
        v149 = *v148;
        v150 = *(v148 + 1);
        v151 = v148[4];
      }

      else
      {
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v147 = 1;
      }

      v152 = v27[1];
      v344[0] = *v27;
      v344[1] = v152;
      v345[0] = v27[2];
      *(v345 + 9) = *(v27 + 41);
      v153 = v27;
      v155 = v311;
      v154 = v312;
      v156 = v310;
      while (1)
      {
        v157 = *v156;
        if (*v155 >= 2u)
        {
          v158 = *v154;
          if ((*(v158 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v157)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v344);
        }

        v154 = (v157 + 16);
        v155 = (v157 + 28);
        v156 = (v157 + 48);
        v153 = v157;
      }

      v159 = *v153;
      if (!v159)
      {
        goto LABEL_333;
      }

      v160 = *(*(v159 + 24 * *(v158 + 8)) + 112);
      if (!v160)
      {
        goto LABEL_314;
      }

      *v160 = v320;
      *(v160 + 16) = v141;
      v161 = v328;
      *(v160 + 72) = v331;
      *(v160 + 88) = v332;
      *(v160 + 104) = *v333;
      *(v160 + 117) = *&v333[13];
      *(v160 + 24) = v161;
      *(v160 + 40) = v329;
      *(v160 + 56) = v330;
      v321[0] = v149;
      v321[1] = v150;
      v322 = v151;
      v323 = v147;
      if (v151 == 0xFFFFFFFF)
      {
        v162 = v147;
      }

      else
      {
        v162 = 1;
      }

      if (v162)
      {
        v4 = v300;
        v124 = v140;
        if ((v147 & 1) == 0)
        {
          goto LABEL_152;
        }

        v11 = v306;
      }

      else
      {
        v4 = v300;
        if (v300[48])
        {
          goto LABEL_316;
        }

        v11 = v306;
        v163 = *v300;
        if (v163 >= *(v306 + 116))
        {
          goto LABEL_251;
        }

        v164 = *(v306 + 104);
        if (!v164)
        {
          goto LABEL_320;
        }

        v165 = *(v164 + 8 * v163);
        *v324 = *(*(v165 + 8) + 88);
        v166 = *v324;
        v167 = specialized closure #2 in static TraceAddress.ref(ifExists:within:)(v324, v321);
        *(*(v165 + 8) + 88) = v166;
        if (v323)
        {
          goto LABEL_318;
        }

        v322 = v167;
        v168 = v27[1];
        v342[0] = *v27;
        v342[1] = v168;
        v343[0] = v27[2];
        *(v343 + 9) = *(v27 + 41);
        v170 = v311;
        v169 = v312;
        v171 = v27;
        v172 = v310;
        v124 = v140;
        while (1)
        {
          v173 = *v172;
          if (*v170 >= 2u)
          {
            v174 = *v169;
            if ((*(v174 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v173)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v342);
          }

          v169 = (v173 + 16);
          v170 = (v173 + 28);
          v172 = (v173 + 48);
          v171 = v173;
        }

        if (!*v171)
        {
          goto LABEL_345;
        }

        v175 = *(*(*v171 + 24 * *(v174 + 8)) + 112);
        if (!v175)
        {
          goto LABEL_319;
        }

        v176 = v175[5];
        v317 = v175[4];
        v318 = v176;
        v319[0] = v175[6];
        *(v319 + 13) = *(v175 + 109);
        v313 = *v175;
        v314 = v175[1];
        v177 = v175[3];
        v315 = v175[2];
        v316 = v177;
        specialized closure #3 in static TraceAddress.ref(ifExists:within:)(&v314, v303, v321);
        v178 = v27[1];
        v340[0] = *v27;
        v340[1] = v178;
        v341[0] = v27[2];
        *(v341 + 9) = *(v27 + 41);
        v180 = v310;
        v179 = v311;
        v181 = v312;
        for (i = v27; ; i = v183)
        {
          v183 = *v180;
          if (*v179 >= 2u)
          {
            v184 = *v181;
            if ((*(v184 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v183)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v340);
          }

          v181 = (v183 + 16);
          v179 = (v183 + 28);
          v180 = (v183 + 48);
        }

        if (!*i)
        {
          goto LABEL_344;
        }

        v185 = *(*(*i + 24 * *(v184 + 8)) + 112);
        if (!v185)
        {
          goto LABEL_317;
        }

        v186 = v318;
        v185[4] = v317;
        v185[5] = v186;
        v185[6] = v319[0];
        *(v185 + 109) = *(v319 + 13);
        v187 = v314;
        *v185 = v313;
        v185[1] = v187;
        v188 = v316;
        v185[2] = v315;
        v185[3] = v188;
        if ((v323 & 1) == 0)
        {
          v151 = v322;
LABEL_152:
          v189 = *(v294 + 16);
          v11 = v306;
          if (v189)
          {
            v190 = 0;
            while (*(v124 + 4 * v190) != v151)
            {
              if (v189 == ++v190)
              {
                goto LABEL_156;
              }
            }

            if (v4[48])
            {
              goto LABEL_346;
            }

            v208 = *(v306 + 104);
            v76 = v293;
          }

          else
          {
LABEL_156:
            if (v4[48])
            {
              goto LABEL_326;
            }

            v191 = *v4;
            if (v191 >= *(v306 + 116))
            {
              goto LABEL_258;
            }

            v192 = *(v306 + 104);
            if (!v192)
            {
              goto LABEL_327;
            }

            v193 = *(*(v192 + 8 * v191) + 8);
            TreeValue.init(node:within:)(v303 | (v299 << 32), v129 | (v128 << 32), v4, v324);
            if (*(v193 + 124) <= HIDWORD(v293))
            {
              goto LABEL_259;
            }

            v194 = *(v193 + 112);
            if (!v194)
            {
              goto LABEL_328;
            }

            v304 = *&v324[8];
            v195 = *v324;
            v196 = v325;
            v197 = v326;
            v198 = v327;
            v199 = (v194 + 168 * HIDWORD(v293));
            v200 = *v199;
            v201 = swift_isUniquelyReferenced_nonNull_native();
            *v199 = v200;
            if ((v201 & 1) == 0)
            {
              v200 = specialized _ArrayBuffer._consumeAndCreateNew()(v200);
              *v199 = v200;
            }

            if (v293 >= *(v200 + 16))
            {
              goto LABEL_260;
            }

            v202 = v200 + 208 * v293;
            v203 = *(v202 + 164);
            if (v203 == *(v202 + 160))
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v203);
            }

            v204 = *(v202 + 152);
            if (!v204)
            {
              goto LABEL_329;
            }

            v205 = *(v202 + 164);
            v206 = v204 + 40 * v205;
            *v206 = v195;
            *(v206 + 8) = v304;
            *(v206 + 24) = v196;
            *(v206 + 28) = v197;
            *(v206 + 32) = v198;
            if (v205 == -1)
            {
              goto LABEL_261;
            }

            *(v202 + 164) = v205 + 1;
            v4 = v300;
            if (v300[48])
            {
              goto LABEL_330;
            }

            v11 = v306;
            v207 = *v300;
            v76 = v293;
            if (v207 >= *(v306 + 116))
            {
              goto LABEL_262;
            }

            v208 = *(v306 + 104);
            if (!v208)
            {
              goto LABEL_331;
            }

            v209 = *(*(v208 + 8 * v207) + 8);
            if (*(v209 + 124) <= HIDWORD(v293))
            {
              goto LABEL_263;
            }

            v210 = *(v209 + 112);
            if (!v210)
            {
              goto LABEL_332;
            }

            v211 = *(v210 + 168 * HIDWORD(v293));
            if (v293 >= *(v211 + 16))
            {
              goto LABEL_264;
            }

            v212 = *(v211 + 208 * v293 + 164);
            if (!v212)
            {
              goto LABEL_265;
            }

            v124 = v140;
            v190 = v212 - 1;
          }

          v213 = *v4;
          if (v213 >= *(v11 + 116))
          {
            goto LABEL_252;
          }

          if (!v208)
          {
            goto LABEL_321;
          }

          v214 = *(*(v208 + 8 * v213) + 8);
          if (*(v214 + 124) <= HIDWORD(v293))
          {
            goto LABEL_253;
          }

          v215 = *(v214 + 112);
          if (!v215)
          {
            goto LABEL_322;
          }

          v216 = *(v215 + 168 * HIDWORD(v293));
          if (v76 >= *(v216 + 16))
          {
            goto LABEL_254;
          }

          v217 = v216 + 208 * v76;
          if (v190 >= *(v217 + 164))
          {
            goto LABEL_255;
          }

          v218 = *(v217 + 152);
          if (!v218)
          {
            goto LABEL_323;
          }

          v219 = v218 + 40 * v190;
          v222 = *(v219 + 36);
          v220 = (v219 + 36);
          v221 = v222;
          if ((v301 & ~v222) != 0)
          {
            *v220 = v221 | v301;
            v223 = v4[48];
            if (v301)
            {
              if (v4[48])
              {
                goto LABEL_347;
              }

              goto LABEL_190;
            }
          }

          else
          {
            if ((v301 & 1) == 0)
            {
LABEL_207:
              v240 = *v4;
              if (v240 >= *(v11 + 116))
              {
                goto LABEL_256;
              }

              v241 = *(*(v208 + 8 * v240) + 8);
              if (v151 >= *(v241 + 84))
              {
                goto LABEL_257;
              }

              v242 = *(v241 + 72);
              if (!v242)
              {
                goto LABEL_324;
              }

              hookup #1 (viewValue:) in T_SubgraphTreeUpdate.structure(within:)(*(v242 + 312 * v151 + 32), v4);
              if (v123 >= v295)
              {
                goto LABEL_213;
              }

              goto LABEL_211;
            }

LABEL_190:
            v224 = *(v11 + 116);
            v225 = *v4;
            if (v225 >= v224)
            {
              goto LABEL_266;
            }

            v226 = *(*(v208 + 8 * v225) + 8);
            if (v151 >= *(v226 + 84))
            {
              goto LABEL_267;
            }

            v227 = *(v226 + 72);
            if (!v227)
            {
              goto LABEL_336;
            }

            v228 = v227 + 312 * v151;
            *(v228 + 128) = v293;
            *(v228 + 136) = 0;
            if (v4[48])
            {
              goto LABEL_335;
            }

            v229 = *v4;
            if (v229 >= v224)
            {
              goto LABEL_268;
            }

            v230 = *(*(v208 + 8 * v229) + 8);
            if (v151 >= *(v230 + 84))
            {
              goto LABEL_269;
            }

            v231 = *(v230 + 72);
            if (!v231)
            {
              goto LABEL_338;
            }

            v232 = 312 * v151;
            v233 = v231 + v232;
            *(v233 + 160) = v190;
            *(v233 + 168) = 0;
            if (v4[48])
            {
              goto LABEL_337;
            }

            v234 = *v4;
            if (v234 >= v224)
            {
              goto LABEL_270;
            }

            v235 = *(*(v208 + 8 * v234) + 8);
            if (v151 >= *(v235 + 84))
            {
              goto LABEL_271;
            }

            v236 = *(v235 + 72);
            if (!v236)
            {
              goto LABEL_340;
            }

            *(v236 + v232 + 152) = 1;
            if (v4[48])
            {
              goto LABEL_339;
            }

            v237 = *v4;
            if (v237 >= v224)
            {
              goto LABEL_272;
            }

            v238 = *(*(v208 + 8 * v237) + 8);
            if (v151 >= *(v238 + 84))
            {
              goto LABEL_273;
            }

            v239 = *(v238 + 72);
            if (!v239)
            {
              goto LABEL_341;
            }

            *(v239 + v232 + 280) = v298;
            v223 = v4[48];
          }

          if (v223)
          {
            goto LABEL_325;
          }

          goto LABEL_207;
        }
      }

      v76 = v293;
      if (v123 >= v295)
      {
        goto LABEL_213;
      }

LABEL_211:
      v122 = v123 * v296;
      if ((v123 * v296) >> 64 != (v123 * v296) >> 63)
      {
        goto LABEL_250;
      }
    }
  }

LABEL_234:
  if (v4[48])
  {
    goto LABEL_372;
  }

  v264 = *v4;
  if (v264 >= *(v11 + 116))
  {
    goto LABEL_308;
  }

  v265 = *(v11 + 104);
  if (v265)
  {
    v266 = *(*(v265 + 8 * v264) + 8);
    if (v292 >= *(v266 + 124))
    {
      goto LABEL_309;
    }

    v267 = *(v266 + 112);
    if (v267)
    {
      v268 = *(v267 + 168 * v292);
      v269 = *(v268 + 16);

      if (v269)
      {
        v276 = 0;
        v277 = (v268 + 144);
        while (v276 < *(v268 + 16))
        {
          if (v4[48])
          {
            goto LABEL_342;
          }

          v278 = *v4;
          if (v278 >= *(v11 + 116))
          {
            goto LABEL_275;
          }

          v279 = *(v11 + 104);
          if (!v279)
          {
            goto LABEL_343;
          }

          v280 = *(v277 - 1);
          *v324 = *(*(v279 + 8 * v278) + 8);
          v331 = *(v277 - 4);
          v332 = *(v277 - 3);
          *v333 = *(v277 - 2);
          *&v333[16] = *(v277 - 2);
          v328 = *(v277 - 7);
          v329 = *(v277 - 6);
          v330 = *(v277 - 5);
          *&v333[24] = v280;
          v334 = *v277;
          v335 = v277[1];
          v281 = v277[2];
          v282 = v277[3];
          v283 = v277[5];
          v338 = v277[4];
          v339 = v283;
          v336 = v281;
          v337 = v282;
          v284 = specialized Tree.parent(_:within:unabstracting:)(16, v324, v270, v271, v272, v273, v274, v275);
          if ((v285 & 1) == 0)
          {
            canonicalize #1 (parent:child:) in T_SubgraphTreeUpdate.structure(within:)(v284, v280, v4);
          }

          ++v276;
          v277 += 13;
          if (v269 == v276)
          {
            goto LABEL_248;
          }
        }

        goto LABEL_274;
      }

LABEL_248:

      return;
    }
  }

  else
  {
LABEL_373:
    __break(1u);
  }

  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
}

void closure #2 in implicit closure #2 in T_SubgraphTreeUpdate.structure(within:)(unsigned __int8 *a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  if (a1[48])
  {
    goto LABEL_31;
  }

  v10 = *(a1 + 22);
  v11 = *a1;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *v8 = v6;
    goto LABEL_13;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = a2;
  v13 = *(*(v12 + 8 * v11) + 8);
  if (*(v13 + 124) <= a2)
  {
    goto LABEL_23;
  }

  v14 = *(v13 + 112);
  if (!v14)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = a2;
  v15 = (v14 + 168 * a2);
  v16 = *(*v15 + 16);
  if (v16 >> 31)
  {
    goto LABEL_24;
  }

  Tree.init(_:id:within:)(a4, a5, v16 | (v15[16] << 32), a1, v43);
  if (a1[48])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(a1 + 22);
  v18 = *a1;
  if (v18 >= *(v17 + 116))
  {
    goto LABEL_25;
  }

  v19 = *(v17 + 104);
  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v20 = *(*(v19 + 8 * v18) + 8);
  if (*(v20 + 124) <= v5)
  {
    goto LABEL_26;
  }

  v21 = *(v20 + 112);
  if (!v21)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v8 = (v21 + 168 * v7);
  v6 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v24 = *(v6 + 16);
  v23 = *(v6 + 24);
  if (v24 >= v23 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v6);
    *v8 = v6;
  }

  *(v6 + 16) = v24 + 1;
  v25 = (v6 + 208 * v24);
  v25[2] = v43[0];
  v26 = v43[1];
  v27 = v43[2];
  v28 = v43[4];
  v25[5] = v43[3];
  v25[6] = v28;
  v25[3] = v26;
  v25[4] = v27;
  v29 = v43[5];
  v30 = v43[6];
  v31 = v43[8];
  v25[9] = v43[7];
  v25[10] = v31;
  v25[7] = v29;
  v25[8] = v30;
  v32 = v43[9];
  v33 = v43[10];
  v34 = v43[12];
  v25[13] = v43[11];
  v25[14] = v34;
  v25[11] = v32;
  v25[12] = v33;
  if (a1[48])
  {
    goto LABEL_37;
  }

  v35 = *(a1 + 22);
  v36 = *a1;
  if (v36 >= *(v35 + 116))
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = *(v35 + 104);
  if (!v37)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = *(*(v37 + 8 * v36) + 8);
  if (*(v38 + 124) <= v5)
  {
    goto LABEL_29;
  }

  v39 = *(v38 + 112);
  if (v39)
  {
    v40 = *(v39 + 168 * v7);
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = *(v40 + 208 * v41 - 72);
      return;
    }

    goto LABEL_30;
  }

LABEL_39:
  __break(1u);
}