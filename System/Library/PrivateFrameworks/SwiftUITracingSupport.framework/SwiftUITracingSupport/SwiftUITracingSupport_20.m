void Interpreter.Iterator.updateDeallocates(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = *(v1 + 9);
  v70 = *(v1 + 8);
  v71 = v4;
  v72 = *(v1 + 10);
  v5 = *(v1 + 5);
  v66 = *(v1 + 4);
  v67 = v5;
  v6 = *(v1 + 7);
  v68 = *(v1 + 6);
  v69 = v6;
  v7 = *(v1 + 1);
  v62 = *v1;
  v63 = v7;
  v8 = *(v1 + 3);
  v9 = *(v1 + 23);
  v64 = *(v1 + 2);
  v65 = v8;
  v75 = v1[192];
  v10 = *(v1 + 22);
  v73 = v10;
  v74 = v9;
  Interpreter.Iterator.updatingValue.getter();
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v14 = (v1 + 56);
    v15 = *(v1 + 72);
    v76[0] = *(v1 + 56);
    v76[1] = v15;
    v77[0] = *(v1 + 88);
    *(v77 + 9) = *(v1 + 97);
    v16 = (v1 + 72);
    v17 = v1 + 84;
    v18 = (v1 + 104);
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
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v76, specialized EvolutionTable.describe(state:));
      }

      v16 = (v19 + 16);
      v17 = (v19 + 28);
      v18 = (v19 + 48);
      v14 = v19;
    }

    v21 = *v14;
    if (!v21)
    {
      goto LABEL_47;
    }

    v22 = *(*(v21 + 24 * *v20) + 112);
    if (!v22)
    {
      goto LABEL_39;
    }

    if (*(*(*(v22 + 32) + 8) + 16))
    {
      if (v1[48])
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v23 = *v1;
      if (v23 < *(v10 + 116))
      {
        v24 = *(v10 + 104);
        if (!v24)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v25 = *(*(v24 + 8 * v23) + 8);
        v56 = *(v1 + 8);
        v57 = *(v1 + 9);
        v58 = *(v1 + 10);
        v52 = *(v1 + 4);
        v53 = *(v1 + 5);
        v54 = *(v1 + 6);
        v55 = *(v1 + 7);
        v48 = *v1;
        v49 = *(v1 + 1);
        v50 = *(v1 + 2);
        v51 = *(v1 + 3);
        v26 = *(v1 + 22);
        v60 = v1[192];
        v59 = *(v1 + 23);
        Interpreter.Iterator.updatingValue.getter();
        if (v28)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v27 < *(v25 + 44))
        {
          v29 = *(v25 + 32);
          if (!v29)
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v30 = v29 + (v27 << 7);
          v31 = *(v30 + 8);
          v32 = *(v30 + 16);
          v33 = v30 + 8;
          v34 = 256;
          if (!*(v33 + 17))
          {
            v34 = 0;
          }

          v35 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(v31, v32, v34 | (*(v33 + 20) << 32) | *(v33 + 16), *(v33 + 24));
          if (v35)
          {
            v37 = *v35;
            v36 = v35[1];
          }

          else
          {
            v36 = MEMORY[0x277D84FA0];
            v37 = MEMORY[0x277D84FA0];
          }

          specialized Set._Variant.insert(_:)(&v61, a1);
          v38 = v36;
          v39 = 256;
          if (!*(v33 + 17))
          {
            v39 = 0;
          }

          v40 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(*v33, *(v33 + 8), v39 | (*(v33 + 20) << 32) | *(v33 + 16), *(v33 + 24));
          if (v40)
          {
            v41 = *v40;
            v42 = v40[1];
            *v40 = v37;
            v40[1] = v38;
          }

          else
          {
            specialized HeterogeneousBuffer.insert<A>(_:)(v37, v36);
          }

          if (v2[48])
          {
            goto LABEL_44;
          }

          v43 = *v2;
          if (v43 < *(v26 + 116))
          {
            v44 = *(v26 + 104);
            if (!v44)
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              return;
            }

            v45 = *(*(v44 + 8 * v43) + 8);
            if (*(v45 + 124) > a1)
            {
              v46 = *(v45 + 112);
              if (v46)
              {
                v47 = v46 + 168 * a1;
                *(v47 + 132) = v13;
                *(v47 + 136) = 0;
                return;
              }

              goto LABEL_46;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }
}

void Interpreter.Iterator.updatingStack.getter()
{
  v1 = *v0;
  v41 = v0[48];
  v2 = *(v0 + 72);
  v42[0] = *(v0 + 56);
  v42[1] = v2;
  v43[0] = *(v0 + 88);
  *(v43 + 9) = *(v0 + 97);
  v3 = *(v0 + 7);
  v4 = *(v0 + 9);
  v5 = *(v0 + 21);
  v6 = v3;
  v7 = *(v0 + 13);
  v8 = v4;
  v9 = v7;
  v10 = *(v0 + 22);
  if (!v5)
  {
    goto LABEL_3;
  }

  while ((v8[1] & 1) != 0)
  {
    do
    {
LABEL_3:
      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v42, specialized EvolutionTable.describe(state:));
      }

      v6 = *v9;
      v8 = v9[2];
      v11 = *(v9 + 7);
      v9 = v9[6];
    }

    while (!v11);
  }

  if (!v6)
  {
    goto LABEL_61;
  }

  v12 = *(*(v6 + 24 * *v8) + 112);
  if (!v12)
  {
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
LABEL_65:
    __break(1u);
    return;
  }

  if (*(v12 + 60))
  {
    if (*(v12 + 48))
    {
      return;
    }

    goto LABEL_60;
  }

  while (!v5 || (v4[1] & 1) != 0)
  {
    if (!v7)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v42, specialized EvolutionTable.describe(state:));
    }

    v3 = *v7;
    v4 = v7[2];
    v5 = *(v7 + 7);
    v7 = v7[6];
  }

  if (!v3)
  {
    goto LABEL_65;
  }

  v13 = *(*(v3 + 24 * *v4) + 112);
  if (!v13)
  {
    goto LABEL_62;
  }

  v14 = *(*(v13 + 32) + 8);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return;
  }

  v16 = (v14 + 48 * v15 - 16);
  while (1)
  {
    if (v41)
    {
      goto LABEL_53;
    }

    if (*(v10 + 116) <= v1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v17 = *(v10 + 104);
    if (!v17)
    {
      goto LABEL_54;
    }

    v19 = *v16;
    v16 -= 12;
    v18 = v19;
    v20 = *(*(v17 + 8 * v1) + 8);
    if (v19 >= *(v20 + 44))
    {
      goto LABEL_49;
    }

    v21 = *(v20 + 32);
    if (!v21)
    {
      goto LABEL_55;
    }

    v22 = v21 + (v18 << 7);
    v23 = *(v22 + 8);
    v26 = *(v22 + 28);
    v25 = *(v22 + 32);
    v24 = *(v22 + 24);
    v27 = 256;
    if (!*(v22 + 25))
    {
      v27 = 0;
    }

    v28 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5(v23, *(v22 + 16), v27 | (v26 << 32) | *(v22 + 24), v25);
    if (v26 != v28 || v25 != HIDWORD(v28))
    {
      if (HIDWORD(v28) >= v25)
      {
        goto LABEL_50;
      }

      if (v24)
      {
        goto LABEL_57;
      }

      if (!v23)
      {
        goto LABEL_56;
      }

      v30 = *(*(v17 + 8 * v1) + 8);
      if (v18 >= *(v30 + 44))
      {
        goto LABEL_51;
      }

      v31 = *(v30 + 32);
      if (!v31)
      {
        goto LABEL_58;
      }

      v32 = *(v23 + v28 + 8);
      v33 = v31 + (v18 << 7);
      v34 = *(v33 + 8);
      v37 = *(v33 + 28);
      v36 = *(v33 + 32);
      v35 = *(v33 + 24);
      v38 = 256;
      if (!*(v33 + 25))
      {
        v38 = 0;
      }

      updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(v34, *(v33 + 16), v38 | (v37 << 32) | *(v33 + 24), v36);
      if (v37 != updated || v36 != HIDWORD(updated))
      {
        break;
      }
    }

    if (!--v15)
    {
      return;
    }
  }

  if (HIDWORD(updated) >= v36)
  {
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
    goto LABEL_59;
  }

  if (v35)
  {
    goto LABEL_63;
  }

  if (!v34)
  {
    goto LABEL_64;
  }
}

unint64_t Interpreter.Iterator.finalize(update:observer:)(unsigned int a1, unsigned __int8 *a2, unint64_t a3)
{
  while (1)
  {
    v233 = a3;
    if (*(v4 + 48))
    {
      goto LABEL_247;
    }

    v10 = v4;
    v5 = *(v4 + 176);
    v11 = *v4;
    if (v11 >= *(v5 + 29))
    {
      goto LABEL_198;
    }

    v3 = *(v5 + 13);
    if (!v3)
    {
      goto LABEL_248;
    }

    v12 = *(*(v3 + 8 * v11) + 8);
    v3 = *(v12 + 44);
    if (v3 <= a1)
    {
      goto LABEL_199;
    }

    v231 = a2;
    v13 = *(v12 + 32);
    if (!v13)
    {
      goto LABEL_249;
    }

    v240 = a1;
    *&v241 = a1;
    v14 = (v13 + (a1 << 7));
    v15 = v14[1];
    v274 = *v14;
    v275 = v15;
    v16 = v14[5];
    v278 = v14[4];
    v279 = v16;
    v17 = v14[7];
    v280 = v14[6];
    v281 = v17;
    v18 = v14[3];
    v276 = v14[2];
    v277 = v18;
    i = *(&v274 + 1);
    v8 = v275;
    v19 = v276;
    __dst[0] = BYTE8(v275);
    v6 = BYTE8(v275);
    v20 = HeterogeneousBuffer.type(at:)(0, *(&v274 + 1), v275, SBYTE8(v275), v276);
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
      goto LABEL_250;
    }

    v9 = v21;
    __dst[0] = v6;
    v22 = HeterogeneousBuffer.index(after:)(0, i, v8, v6, v19);
    __dst[0] = v6;
    i = HeterogeneousBuffer.type(at:)(v22, i, v8, v6, v19);
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
      goto LABEL_251;
    }

    project #1 <A, B>(_:_:) in Event.id.getter(i, &v274, v20, v9, v23, v242);
    v24 = v240;
    if (v10[48])
    {
      goto LABEL_252;
    }

    v4 = *(v5 + 29);
    v25 = *v10;
    if (v25 >= v4)
    {
      goto LABEL_200;
    }

    v6 = *(v5 + 13);
    if (!v6)
    {
      goto LABEL_253;
    }

    v26 = *(*(v6 + 8 * v25) + 8);
    v3 = *(v26 + 44);
    if (v3 <= v240)
    {
      goto LABEL_201;
    }

    v27 = *(v26 + 32);
    if (!v27)
    {
      goto LABEL_254;
    }

    i = v260;
    v28 = v27 + (v241 << 7);
    v29 = *(v28 + 8);
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    v32 = *(v28 + 25);
    v35 = v28 + 28;
    v34 = *(v28 + 28);
    v33 = *(v35 + 4);
    __dst[0] = v31;
    v36 = v32 == 0;
    v37 = 256;
    if (v36)
    {
      v37 = 0;
    }

    v239 = v10;
    v229 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v29, v30, v37 | (v34 << 32) | v31, v33);
    if (!v229)
    {
      if (v10[48])
      {
        goto LABEL_272;
      }

      v52 = *v10;
      if (v52 >= v4)
      {
        goto LABEL_207;
      }

      v53 = *(*(v6 + 8 * v52) + 8);
      if (*(v53 + 44) <= v240)
      {
        goto LABEL_208;
      }

      v54 = *(v53 + 32);
      if (!v54)
      {
        goto LABEL_273;
      }

      v55 = v54 + (v241 << 7);
      v56 = *(v55 + 8);
      v57 = *(v55 + 16);
      v58 = *(v55 + 24);
      v59 = *(v55 + 25);
      v62 = v55 + 28;
      v61 = *(v55 + 28);
      v60 = *(v62 + 4);
      __dst[0] = v58;
      if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v56, v57, v58, v60))
      {
        if (v10[48])
        {
          goto LABEL_278;
        }

        v63 = *v10;
        if (v63 >= v4)
        {
          goto LABEL_211;
        }

        v64 = *(*(v6 + 8 * v63) + 8);
        if (*(v64 + 44) <= v240)
        {
          goto LABEL_212;
        }

        v65 = *(v64 + 32);
        if (!v65)
        {
          goto LABEL_279;
        }

        v66 = v65 + (v241 << 7);
        v67 = *(v66 + 8);
        v68 = *(v66 + 16);
        v69 = *(v66 + 24);
        v70 = *(v66 + 25);
        v73 = v66 + 28;
        v72 = *(v66 + 28);
        v71 = *(v73 + 4);
        __dst[0] = v69;
        v74 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v67, v68, v69, v71);
        if (v10[48])
        {
          goto LABEL_280;
        }

        v75 = *v10;
        if (v75 >= v4)
        {
          goto LABEL_213;
        }

        v8 = *(*(v6 + 8 * v75) + 8);
        if (LODWORD(v74->Kind) >= *(v8 + 84))
        {
          goto LABEL_214;
        }

        v76 = *(v8 + 72);
        if (!v76)
        {
          goto LABEL_281;
        }

        memcpy(__dst, (v76 + 312 * LODWORD(v74->Kind)), 0x131uLL);
        v4 = __dst;
        Attribute.pendingThroughResolved(snapshot:ret:)(v8, *(v5 + 22));
        v77 = *(v5 + 22);
        v232 = *(v77 + 3);
        if (v232)
        {
          v78 = 0;
          v79 = *v77;
          v237 = v10 + 72;
          v238 = v10 + 56;
          v235 = v10 + 104;
          v236 = v10 + 84;
          v230 = v79;
          while (1)
          {
            if (!v79)
            {
              goto LABEL_237;
            }

            v80 = *(v79 + 4 * v78);
            v6 = v78 + 1;
            v81 = v237;
            v82 = v238;
            v83 = v238[1];
            v271[0] = *v238;
            v271[1] = v83;
            v272[0] = v238[2];
            *(v272 + 9) = *(v238 + 41);
            v85 = v235;
            v84 = v236;
            while (1)
            {
              v86 = *v85;
              if (*v84)
              {
                v3 = *v81;
                if ((*(v3 + 4) & 1) == 0)
                {
                  break;
                }
              }

              if (!v86)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v271, specialized EvolutionTable.describe(state:));
              }

              v81 = (v86 + 16);
              v84 = (v86 + 28);
              v85 = (v86 + 48);
              v82 = v86;
            }

            v38 = *v82;
            if (!*v82)
            {
              goto LABEL_260;
            }

            v87 = *(*(v38 + 24 * *v3) + 112);
            if (!v87)
            {
              goto LABEL_236;
            }

            v88 = *(*(v87 + 32) + 16);
            if (*(v88 + 16) && (v269[0] = &type metadata for Event.AttributeValue, v269[1] = &protocol witness table for Event.AttributeValue, v269[2] = &type metadata for Event.Update, v269[3] = &protocol witness table for Event.Update, v270 = v80, v89 = specialized __RawDictionaryStorage.find<A>(_:)(v269), (v90 & 1) != 0))
            {
              v9 = *(*(v88 + 56) + 4 * v89);
            }

            else
            {
              v9 = 0;
            }

            v91 = v237;
            v92 = v238;
            v93 = v238[1];
            v267[0] = *v238;
            v267[1] = v93;
            v268[0] = v238[2];
            *(v268 + 9) = *(v238 + 41);
            v95 = v235;
            v94 = v236;
            while (1)
            {
              v96 = *v95;
              if (*v94)
              {
                v3 = *v91;
                if ((*(v3 + 4) & 1) == 0)
                {
                  break;
                }
              }

              if (!v96)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v267, specialized EvolutionTable.describe(state:));
              }

              v91 = (v96 + 16);
              v94 = (v96 + 28);
              v95 = (v96 + 48);
              v92 = v96;
            }

            v38 = *v92;
            if (!*v92)
            {
              goto LABEL_261;
            }

            v3 = *v3;
            v234 = v6;
            v97 = *(*(v38 + 24 * v3) + 112);
            if (!v97)
            {
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v257, specialized EvolutionTable.describe(state:));
            }

            v4 = *(*(v97 + 32) + 16);
            if (*(v4 + 16))
            {
              v265[0] = &type metadata for Event.AttributeValue;
              v265[1] = &protocol witness table for Event.AttributeValue;
              v265[2] = &type metadata for Event.Invalidation;
              v265[3] = &protocol witness table for Event.Invalidation;
              v266 = v80;
              v98 = specialized __RawDictionaryStorage.find<A>(_:)(v265);
              if (v99)
              {
                v100 = *(*(v4 + 56) + 4 * v98);
                if (v100 <= v9)
                {
                  v9 = v9;
                }

                else
                {
                  v9 = v100;
                }
              }
            }

            if (v9)
            {
              break;
            }

LABEL_49:
            v78 = v234;
            i = v260;
            v79 = v230;
            if (v234 == v232)
            {
              goto LABEL_17;
            }
          }

          if (v10[48])
          {
            __break(1u);
          }

          else
          {
            v101 = *v10;
            if (v101 >= *(v5 + 29))
            {
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v3 = *(v5 + 13);
            if (v3)
            {
              v102 = *(*(v3 + 8 * v101) + 8);
              v3 = *(v102 + 44);
              if (v9 >= v3)
              {
LABEL_192:
                __break(1u);
                goto LABEL_193;
              }

              v103 = *(v102 + 32);
              if (v103)
              {
                if (v3 <= v24)
                {
LABEL_193:
                  __break(1u);
                  goto LABEL_194;
                }

                v6 = v9;
                v104 = (v103 + (v9 << 7));
                i = v103 + (v241 << 7);
                v8 = *i;
                v3 = v104[30];
                v105 = v104[31];
                if (v105 == v3)
                {
                  v4 = (v104 + 28);
                  specialized UnsafeArray.growToCapacity(_:)(2 * v105);
                }

                v106 = *(v104 + 14);
                if (v106)
                {
                  v107 = v104[31];
                  v108 = v106 + 8 * v107;
                  *v108 = -24575;
                  *(v108 + 4) = v8;
                  if (v107 == -1)
                  {
LABEL_194:
                    __break(1u);
                    goto LABEL_195;
                  }

                  v104[31] = v107 + 1;
                  v109 = *v104;
                  v3 = *(i + 120);
                  v110 = *(i + 124);
                  if (v110 == v3)
                  {
                    v4 = i + 112;
                    specialized UnsafeArray.growToCapacity(_:)(2 * v110);
                  }

                  v111 = *(i + 112);
                  if (v111)
                  {
                    v3 = *(i + 124);
                    v112 = v111 + 8 * v3;
                    *v112 = 24577;
                    *(v112 + 4) = v109;
                    if (v3 == -1)
                    {
LABEL_195:
                      __break(1u);
                      goto LABEL_196;
                    }

                    *(i + 124) = v3 + 1;
                    if (!v10[48])
                    {
                      v113 = *v10;
                      v24 = v240;
                      if (v113 >= *(v5 + 29))
                      {
LABEL_196:
                        __break(1u);
                        goto LABEL_197;
                      }

                      v3 = *(v5 + 13);
                      if (v3)
                      {
                        v114 = *(v3 + 8 * v113);
                        v115 = *(v114 + 8);
                        v3 = *(v115 + 44);
                        if (v9 >= v3)
                        {
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
                          i = 0xD000000000000013;
                          *&v246 = 0;
                          *(&v246 + 1) = 0xE000000000000000;
                          _StringGuts.grow(_:)(49);
                          v243 = v246;
                          MEMORY[0x26D69CDB0](0xD000000000000013, 0x800000026C33CCC0);
                          v119 = v10[48];
                          if (!v10[48])
                          {
                            v119 = *v239;
                            if (v119 >= *(v4 + 116))
                            {
LABEL_287:
                              __break(1u);
                              goto LABEL_288;
                            }

                            v121 = *(v4 + 104);
                            if (v121)
                            {
                              goto LABEL_227;
                            }

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
                          }

                          __break(1u);
LABEL_227:
                          v206 = *(*(v121 + 8 * v119) + 8);
                          if (*(v206 + 44) <= v240)
                          {
LABEL_288:
                            __break(1u);
LABEL_289:
                            *&v243 = 0;
                            *(&v243 + 1) = 0xE000000000000000;
                            _StringGuts.grow(_:)(51);
                            MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
                            v243 = xmmword_26C32DAD0;
                            LOBYTE(v244) = 1;
                            *(&v244 + 1) = 0;
                            *&v245[0] = 0;
                            WORD4(v245[0]) = 512;
                            v221 = Event.describe(state:)(&v243);
                            MEMORY[0x26D69CDB0](v221);

                            while (1)
                            {
                              _assertionFailure(_:_:file:line:flags:)();
                              __break(1u);
LABEL_291:
                              v222 = *(v220 + 32);
                              v223 = v222[1];
                              v224 = v222[2];
                              v225 = v222[3];
                              v226 = v222[4];
                              *(i + 128) = v241;
                              LOBYTE(v255) = 1;
                              *(&v255 + 1) = 0;
                              *v256 = 0;
                              *&v256[8] = 512;

                              outlined copy of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v225, v226);
                              v227 = specialized Interpreter.Control.Events.describe(state:)(&v254, v223);
                              i = v228;

                              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v225, v226);
                              MEMORY[0x26D69CDB0](v227, i);
                            }
                          }

                          v207 = *(v206 + 32);
                          if (!v207)
                          {
                            __break(1u);
                          }

                          v208 = (v207 + (v241 << 7));
                          v209 = v208[4];
                          v210 = v208[6];
                          v211 = v208[7];
                          v251 = v208[5];
                          v252 = v210;
                          v253 = v211;
                          v212 = v208[1];
                          v246 = *v208;
                          v213 = v208[2];
                          v214 = v208[3];
                          v247 = v212;
                          v248 = v213;
                          v249 = v214;
                          v250 = v209;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
                          v215 = swift_allocObject();
                          *(v215 + 16) = xmmword_26C328DC0;
                          v241 = xmmword_26C32DAD0;
                          v257 = xmmword_26C32DAD0;
                          LOBYTE(v258) = 1;
                          *(&v258 + 1) = 0;
                          *v259 = 0;
                          *&v259[8] = 512;
                          v216 = Event.describe(state:)(&v257);
                          *(v215 + 56) = MEMORY[0x277D837D0];
                          *(v215 + 32) = v216;
                          *(v215 + 40) = v217;
                          print(_:separator:terminator:)();

                          _print_unlocked<A, B>(_:_:)();
                          MEMORY[0x26D69CDB0](i + 7, 0x800000026C33CCE0);
                          v218 = *(v5 + 1);
                          v257 = *v5;
                          v258 = v218;
                          *v259 = *(v5 + 2);
                          i = &v246;
                          *&v259[9] = *(v5 + 41);
                          while (1)
                          {
                            v219 = *v6;
                            if (*v8)
                            {
                              v3 = *v9;
                              if ((*(*v9 + 4) & 1) == 0)
                              {
                                goto LABEL_258;
                              }
                            }

                            if (!v219)
                            {
                              goto LABEL_238;
                            }

                            v9 = (v219 + 16);
                            v8 = (v219 + 28);
                            v6 = (v219 + 48);
                            v5 = v219;
                          }
                        }

                        v116 = *(v115 + 32);
                        if (v116)
                        {
                          v9 = 0;
                          v117 = v116 + (v6 << 7);
                          v6 = *(v117 + 112);
                          v118 = *(v117 + 124);
                          for (i = v6 + 4; ; i += 8)
                          {
                            if (v118 == v9)
                            {
                              goto LABEL_49;
                            }

                            if (v9 >= v118)
                            {
                              break;
                            }

                            if (!v6)
                            {
                              goto LABEL_215;
                            }

                            if (__OFADD__(v9, 1))
                            {
                              goto LABEL_185;
                            }

                            if ((*(i - 4) & 0x8020) == 0x20)
                            {
                              v119 = *i;
                              v120 = *(v114 + 8);
                              if (v119 >= *(v120 + 44))
                              {
                                goto LABEL_186;
                              }

                              v121 = *(v120 + 32);
                              if (!v121)
                              {
                                goto LABEL_221;
                              }

                              if (v10[48])
                              {
                                goto LABEL_220;
                              }

                              v122 = *v10;
                              if (v122 >= *(v5 + 29))
                              {
                                goto LABEL_187;
                              }

                              v123 = *(v5 + 13);
                              if (!v123)
                              {
                                goto LABEL_222;
                              }

                              v124 = *(*(v123 + 8 * v122) + 8);
                              if (*(v124 + 44) <= v24)
                              {
                                goto LABEL_188;
                              }

                              v125 = *(v124 + 32);
                              if (!v125)
                              {
                                goto LABEL_223;
                              }

                              v8 = v121 + (v119 << 7);
                              v126 = (v125 + (v241 << 7));
                              v10 = *v126;
                              v121 = *(v8 + 120);
                              v127 = *(v8 + 124);
                              if (v127 == v121)
                              {
                                v4 = v8 + 112;
                                specialized UnsafeArray.growToCapacity(_:)(2 * v127);
                              }

                              v119 = *(v8 + 112);
                              if (!v119)
                              {
                                goto LABEL_224;
                              }

                              v128 = *(v8 + 124);
                              v129 = v119 + 8 * v128;
                              *v129 = -32767;
                              *(v129 + 4) = v10;
                              if (v128 == -1)
                              {
                                goto LABEL_189;
                              }

                              *(v8 + 124) = v128 + 1;
                              v10 = *v8;
                              v121 = v126[30];
                              v130 = v126[31];
                              if (v130 == v121)
                              {
                                v4 = (v126 + 28);
                                specialized UnsafeArray.growToCapacity(_:)(2 * v130);
                              }

                              v119 = *(v126 + 14);
                              if (!v119)
                              {
                                goto LABEL_225;
                              }

                              v131 = v126[31];
                              v132 = v119 + 8 * v131;
                              *v132 = 16385;
                              *(v132 + 4) = v10;
                              if (v131 == -1)
                              {
                                goto LABEL_190;
                              }

                              v126[31] = v131 + 1;
                              v10 = v239;
                              v24 = v240;
                            }

                            ++v9;
                          }

                          __break(1u);
LABEL_185:
                          __break(1u);
LABEL_186:
                          __break(1u);
LABEL_187:
                          __break(1u);
LABEL_188:
                          __break(1u);
LABEL_189:
                          __break(1u);
LABEL_190:
                          __break(1u);
                          goto LABEL_191;
                        }

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
                        v38 = *v5;
                        if (!*v5)
                        {
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
                        }

                        v220 = *(*(v38 + 24 * *v3) + 112);
                        if (v220)
                        {
                          goto LABEL_291;
                        }

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
                        goto LABEL_287;
                      }

LABEL_245:
                      __break(1u);
                      goto LABEL_246;
                    }

LABEL_244:
                    __break(1u);
                    goto LABEL_245;
                  }

LABEL_243:
                  __break(1u);
                  goto LABEL_244;
                }

LABEL_242:
                __break(1u);
                goto LABEL_243;
              }

LABEL_241:
              __break(1u);
              goto LABEL_242;
            }
          }

          __break(1u);
          goto LABEL_241;
        }
      }
    }

LABEL_17:
    v38 = *(v5 + 22);
    v3 = *(v38 + 12);
    if (v3)
    {
      v3 = *v38;
      if (!*v38)
      {
        goto LABEL_262;
      }
    }

    *(v38 + 12) = 0;
    v6 = v231;
    if (v231)
    {
      v38 = v10[48];
      if (v10[48])
      {
        goto LABEL_263;
      }

      v38 = *v10;
      if (v38 >= *(v5 + 29))
      {
        goto LABEL_204;
      }

      v3 = *(v5 + 13);
      if (!v3)
      {
        goto LABEL_264;
      }

      v8 = *(*(v3 + 8 * v38) + 8);
      if (*(v8 + 44) <= v24)
      {
        goto LABEL_205;
      }

      v38 = *(v8 + 32);
      if (!v38)
      {
        goto LABEL_265;
      }

      v39 = (v38 + (v241 << 7));
      v40 = v39[5];
      v264[4] = v39[4];
      v264[5] = v40;
      v41 = v39[7];
      v264[6] = v39[6];
      v264[7] = v41;
      v42 = v39[1];
      v264[0] = *v39;
      v264[1] = v42;
      v43 = v39[3];
      v264[2] = v39[2];
      v264[3] = v43;
      v4 = v233;

      v44 = (v231)(v264, v8);
      if (*(v8 + 44) <= v24)
      {
        goto LABEL_206;
      }

      v38 = *(v8 + 32);
      if (!v38)
      {
        goto LABEL_266;
      }

      *(v38 + (v241 << 7) + 96) = v44;
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v231, v233);
    }

    if (!v229)
    {
      v45 = (v10 + 56);
      v46 = *(v10 + 72);
      v262[0] = *(v10 + 56);
      v262[1] = v46;
      v263[0] = *(v10 + 88);
      *(v263 + 9) = *(v10 + 97);
      v47 = (v10 + 72);
      v48 = v10 + 84;
      v49 = (v10 + 104);
      while (1)
      {
        v50 = *v49;
        if (*v48)
        {
          v51 = *v47;
          if ((v51[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v50)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v262, specialized EvolutionTable.describe(state:));
        }

        v47 = (v50 + 16);
        v48 = (v50 + 28);
        v49 = (v50 + 48);
        v45 = v50;
      }

      v133 = *v45;
      if (!v133)
      {
        goto LABEL_285;
      }

      v134 = *(*(v133 + 24 * *v51) + 112);
      if (!v134)
      {
        goto LABEL_277;
      }

      v135 = *(v134 + 32);
      v136 = *(v135 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v246 = *(v135 + 16);
      *(v135 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v242, isUniquelyReferenced_nonNull_native);
      v138 = *(v135 + 16);
      *(v135 + 16) = v246;

      v10 = v239;
    }

    if ((Interpreter.Iterator.dispatchAbstractions(for:)(v24) & 1) == 0)
    {
      Interpreter.Iterator.addTime(rootedAt:partial:)(v24, v24);
    }

    if (v10[48])
    {
      goto LABEL_255;
    }

    v4 = *(v10 + 22);
    v139 = *v10;
    if (v139 >= *(v4 + 116))
    {
      goto LABEL_202;
    }

    v3 = *(v4 + 104);
    if (!v3)
    {
      goto LABEL_256;
    }

    v140 = *(*(v3 + 8 * v139) + 8);
    v3 = *(v140 + 44);
    if (v3 <= v24)
    {
      goto LABEL_203;
    }

    v141 = *(v140 + 32);
    if (!v141)
    {
      goto LABEL_257;
    }

    v142 = v141 + (v241 << 7);
    v143 = *(v142 + 8);
    v144 = *(v142 + 16);
    v145 = *(v142 + 24);
    v146 = *(v142 + 25);
    v149 = v142 + 28;
    v148 = *(v142 + 28);
    v147 = *(v149 + 4);
    LOBYTE(v246) = v145;
    v36 = v146 == 0;
    v150 = 256;
    if (v36)
    {
      v150 = 0;
    }

    result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(v143, v144, v150 | (v148 << 32) | v145, v147);
    if (!result)
    {
      return result;
    }

    v5 = v10 + 56;
    v152 = *(v10 + 72);
    v260[0] = *(v10 + 56);
    v260[1] = v152;
    v261[0] = *(v10 + 88);
    v9 = (v10 + 72);
    v8 = (v10 + 84);
    v153 = v10 + 88;
    v6 = (v10 + 104);
    *(v261 + 9) = *(v10 + 97);
    v154 = (v10 + 56);
    v155 = (v10 + 72);
    v156 = v10 + 84;
    v157 = (v10 + 104);
    while (1)
    {
      v158 = *v157;
      if (*v156)
      {
        v159 = *v155;
        if ((v159[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v158)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v260, specialized EvolutionTable.describe(state:));
      }

      v155 = (v158 + 16);
      v156 = (v158 + 28);
      v157 = (v158 + 48);
      v154 = v158;
    }

    v160 = *v154;
    if (!v160)
    {
      goto LABEL_282;
    }

    v3 = *v159;
    v38 = *(*(v160 + 24 * v3) + 112);
    if (!v38)
    {
      goto LABEL_267;
    }

    v161 = *(*(v38 + 32) + 8);
    i = *(v161 + 16);
    v162 = (v161 + 48 * i - 16);
    do
    {
      if (i-- < 1)
      {
        goto LABEL_216;
      }

      v164 = *v162;
      v162 -= 12;
    }

    while (v164 != v24);
    v165 = *(v10 + 72);
    v257 = *v5;
    v258 = v165;
    *v259 = *(v10 + 88);
    *&v259[9] = *(v10 + 97);
    v166 = (v10 + 56);
    v167 = (v10 + 72);
    v168 = v10 + 84;
    v169 = (v10 + 104);
    while (1)
    {
      v170 = *v169;
      if (*v168)
      {
        v171 = *v167;
        if ((v171[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v170)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v257, specialized EvolutionTable.describe(state:));
      }

      v167 = (v170 + 16);
      v168 = (v170 + 28);
      v169 = (v170 + 48);
      v166 = v170;
    }

    v172 = *v166;
    if (!v172)
    {
      goto LABEL_283;
    }

    v3 = *v171;
    v38 = *(*(v172 + 24 * v3) + 112);
    if (!v38)
    {
      goto LABEL_268;
    }

    v173 = v4;
    v174 = *(v38 + 32) + 8;
    specialized Array.remove(at:)(i, &v246);
    v175 = *(v10 + 72);
    v254 = *v5;
    v255 = v175;
    *v256 = *(v10 + 88);
    *&v256[9] = *(v10 + 97);
    v176 = (v10 + 56);
    v177 = (v10 + 104);
    v4 = v173;
    while (1)
    {
      v178 = *v177;
      if (*v8)
      {
        if ((*(*v9 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v178)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v254, specialized EvolutionTable.describe(state:));
      }

      v9 = (v178 + 2);
      v8 = v178 + 28;
      v177 = (v178 + 6);
      v176 = v178;
    }

    v179 = *v176;
    if (!v179)
    {
      goto LABEL_284;
    }

    v3 = **v9;
    result = v179 + 24 * v3;
    v38 = *(*result + 112);
    if (!v38)
    {
      goto LABEL_269;
    }

    v180 = *(*(v38 + 32) + 8);
    if (!*(v180 + 16))
    {
      return result;
    }

    if (v10[48])
    {
      goto LABEL_274;
    }

    v181 = *v10;
    if (v181 >= *(v173 + 116))
    {
      goto LABEL_209;
    }

    v182 = *(v173 + 104);
    if (!v182)
    {
      goto LABEL_275;
    }

    v183 = *(v180 + 32);
    v184 = *(*(v182 + 8 * v181) + 8);
    if (v183 >= *(v184 + 44))
    {
      goto LABEL_210;
    }

    v185 = *(v184 + 32);
    if (!v185)
    {
      goto LABEL_276;
    }

    v186 = (v185 + (v183 << 7));
    v187 = v186[1];
    v246 = *v186;
    v188 = v186[2];
    v189 = v186[3];
    v247 = v187;
    v248 = v188;
    v190 = v186[4];
    v191 = v186[6];
    v192 = v186[7];
    v251 = v186[5];
    v252 = v191;
    v253 = v192;
    v249 = v189;
    v250 = v190;
    v193 = *(&v246 + 1);
    i = v187;
    v194 = BYTE8(v187);
    v195 = v248;
    LOBYTE(v243) = BYTE8(v187);
    v196 = 256;
    if (!BYTE9(v187))
    {
      v196 = 0;
    }

    v197 = v196 | (HIDWORD(v247) << 32);
    updated = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(*(&v246 + 1), v247, v197 | BYTE8(v247), v248);
    if (updated)
    {
      v199 = (updated + 8);
    }

    else
    {
      LOBYTE(v243) = v194;
      v199 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV12InvalidationV_Ttgq5(v193, i, v197 | v194, v195);
      if (!v199)
      {
        goto LABEL_289;
      }
    }

    v200 = *v199;
    v201 = *(v5 + 1);
    v243 = *v5;
    v244 = v201;
    v245[0] = *(v5 + 2);
    *(v245 + 9) = *(v5 + 41);
    v202 = v239 + 100;
    v203 = *(v239 + 29);
    while (1)
    {
      v204 = *v6;
      if (v203 < *v202)
      {
        v205 = (*v153 + 8 * v203);
        if ((v205[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v204)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v203, 0, &v243, specialized EvolutionTable.describe(state:));
      }

      v153 = v204 + 32;
      v202 = v204 + 44;
      v6 = (v204 + 48);
      v5 = v204;
    }

    if (!*v5)
    {
      goto LABEL_286;
    }

    v3 = *v205;
    result = *v5 + 24 * v3;
    if (v200 >= *(*result + 32))
    {
      return result;
    }

    a1 = v183;
    a2 = v231;
    a3 = v233;
    v4 = v287;
    v6 = v285;
    v5 = v286;
    i = v284;
    v8 = v283;
    v9 = v282;
  }
}

uint64_t Interpreter.Iterator.addTime(rootedAt:partial:)(uint64_t a1, uint64_t a2)
{
  if (v2[48])
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = *(v2 + 22);
  v5 = *v2;
  if (v5 >= *(v4 + 116))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = *(*(v6 + 8 * v5) + 8);
  if (*(v8 + 44) <= a2)
  {
    goto LABEL_18;
  }

  v9 = *(v8 + 32);
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = (v9 + (a2 << 7));
  v12 = v11[1];
  v56 = *v11;
  v57 = v12;
  v13 = v11[5];
  v60 = v11[4];
  v61 = v13;
  v14 = v11[7];
  v62 = v11[6];
  v63 = v14;
  v15 = v11[3];
  v58 = v11[2];
  v59 = v15;
  LOBYTE(v43) = BYTE8(v57);
  v16 = 256;
  if (!BYTE9(v57))
  {
    v16 = 0;
  }

  v17 = v16 | (HIDWORD(v57) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(*(&v56 + 1), v57, v17 | v43, v58);
  if (updated)
  {
    v19 = *updated;
    v20 = updated[1];
    goto LABEL_12;
  }

  LOBYTE(v43) = BYTE8(v57);
  v21 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV12InvalidationV_Ttgq5(*(&v56 + 1), v57, v17 | BYTE8(v57), v58);
  if (!v21)
  {
LABEL_22:
    _StringGuts.grow(_:)(51);
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v43 = xmmword_26C32DAD0;
    LOBYTE(v44) = 1;
    *(&v44 + 1) = 0;
    *&v45 = 0;
    WORD4(v45) = 512;
    v40 = Event.describe(state:)(&v43);
    MEMORY[0x26D69CDB0](v40);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = *v21;
  v20 = *v21;
LABEL_12:
  result = Interval.overlappingSelection(within:)(v2, v19, v20);
  if (result)
  {
    v23 = *(v2 + 11);
    v53 = *(v2 + 10);
    v54 = v23;
    v55 = v2[192];
    v24 = *(v2 + 7);
    v49 = *(v2 + 6);
    v50 = v24;
    v25 = *(v2 + 9);
    v51 = *(v2 + 8);
    v52 = v25;
    v26 = *(v2 + 3);
    v45 = *(v2 + 2);
    v46 = v26;
    v27 = *(v2 + 5);
    v47 = *(v2 + 4);
    v48 = v27;
    v28 = *(v2 + 1);
    v43 = *v2;
    v44 = v28;
    v29 = Interpreter.Iterator.reading.read();
    v31 = *(v30 + 216);
    if (v31)
    {
      (v29)(v41, 0);
      v32 = *(v3 + 11);
      v41[10] = *(v3 + 10);
      v41[11] = v32;
      v42 = v3[192];
      v33 = *(v3 + 7);
      v41[6] = *(v3 + 6);
      v41[7] = v33;
      v34 = *(v3 + 9);
      v41[8] = *(v3 + 8);
      v41[9] = v34;
      v35 = *(v3 + 3);
      v41[2] = *(v3 + 2);
      v41[3] = v35;
      v36 = *(v3 + 5);
      v41[4] = *(v3 + 4);
      v41[5] = v36;
      v37 = *(v3 + 1);
      v41[0] = *v3;
      v41[1] = v37;
      v38 = *(v31 + 24);
      v39 = *(v31 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v31, v38);
      return (*(v39 + 24))(a1, a2, v41, v38, v39);
    }

    else
    {
      return (v29)(v41, 0);
    }
  }

  return result;
}

void Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v191 = a1;
  *(&v191 + 1) = a6;
  if (v6[48])
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v7 = *(v6 + 22);
  v8 = *v6;
  if (v8 >= *(v7 + 116))
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v10 = *(*(v9 + 8 * v8) + 8);
  if (*(v10 + 44) <= a2)
  {
    goto LABEL_135;
  }

  v11 = *(v10 + 32);
  if (!v11)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v189 = a2;
  v14 = (v11 + (a2 << 7));
  v15 = v14[1];
  v221 = *v14;
  v222 = v15;
  v16 = v14[5];
  v225 = v14[4];
  v226 = v16;
  v17 = v14[7];
  v227 = v14[6];
  v228 = v17;
  v18 = v14[3];
  v223 = v14[2];
  v224 = v18;
  LOBYTE(v213) = BYTE8(v222);
  v19 = HeterogeneousBuffer.type(at:)(0, *(&v221 + 1), v222, SBYTE8(v222), v223);
  v20 = swift_conformsToProtocol2();
  if (!v20)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v21 = v20;
  v186 = a3;
  v22 = HeterogeneousBuffer.index(after:)(0, *(&v221 + 1), v222, SBYTE8(v222), v223);
  LOBYTE(v213) = BYTE8(v222);
  v23 = HeterogeneousBuffer.type(at:)(v22, *(&v221 + 1), v222, SBYTE8(v222), v223);
  v24 = swift_conformsToProtocol2();
  if (!v24)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v25 = project #1 <A, B>(_:_:) in Event.id.getter(v23, &v221, v19, v21, v24, v195);
  if (v190[48])
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v26 = *v190;
  if (v26 >= *(v7 + 116))
  {
    goto LABEL_136;
  }

  v27 = *(v7 + 104);
  if (!v27)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  (*(*(&v191 + 1) + 24))(&v213, v195, *(*(v27 + 8 * v26) + 8), a5, v25);
  if (v190[48])
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v28 = *v190;
  if (v28 >= *(v7 + 116))
  {
    goto LABEL_137;
  }

  v29 = *(v7 + 104);
  if (!v29)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v30 = *(*(v29 + 8 * v28) + 8);
  if (*(v30 + 44) <= a2)
  {
    goto LABEL_138;
  }

  v31 = *(v30 + 32);
  if (!v31)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v32 = v213;
  v33 = BYTE8(v213);
  v187 = BYTE9(v213);
  v34 = (v31 + (v189 << 7));
  v35 = v34[1];
  v213 = *v34;
  v214 = v35;
  v36 = v34[5];
  v217 = v34[4];
  v218 = v36;
  v37 = v34[7];
  v219 = v34[6];
  v220 = v37;
  v38 = v34[3];
  v215 = v34[2];
  v216 = v38;
  v39 = *(&v213 + 1);
  v40 = v214;
  v41 = BYTE8(v214);
  v42 = v215;
  v200[0] = BYTE8(v214);
  v43 = HeterogeneousBuffer.type(at:)(0, *(&v213 + 1), v214, SBYTE8(v214), v215);
  v44 = swift_conformsToProtocol2();
  if (!v44)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v45 = v44;
  v200[0] = v41;
  v46 = HeterogeneousBuffer.index(after:)(0, v39, v40, v41, v42);
  v200[0] = v41;
  v47 = HeterogeneousBuffer.type(at:)(v46, v39, v40, v41, v42);
  v48 = swift_conformsToProtocol2();
  if (!v48)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v47, &v213, v43, v45, v48, v196);
  *&v200[6] = v196[0];
  *&v200[22] = v196[1];
  *&v200[38] = v197;
  *&v207[10] = *v200;
  v206 = v191;
  *v207 = v32;
  v207[8] = v33;
  v207[9] = v187;
  *&v207[26] = *&v200[16];
  *&v207[36] = *&v200[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](v191);
  v210 = *&v200[32];
  v211 = v201;
  v212 = v202;
  v208 = *v200;
  v209 = *&v200[16];
  v49 = Hasher.finalize()();
  if (v190[48])
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v50 = *v190;
  if (v50 >= *(v7 + 116))
  {
    goto LABEL_139;
  }

  v51 = *(v7 + 104);
  if (!v51)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v52 = v49;
  v53 = *(*(*(v51 + 8 * v50) + 8) + 192);
  v54 = *v53;
  if ((*v53)[1].Kind)
  {
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(&v206);
    if (v56)
    {
      v57 = *(v54[3].Description + v55);
      v58 = a2;
      goto LABEL_34;
    }

    v50 = *v190;
    v59 = v190[48] == 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v200[32] = *&v207[16];
  v201 = *&v207[32];
  LODWORD(v202) = *&v207[48];
  *v200 = v206;
  *&v200[16] = *v207;
  if (!v59)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v58 = a2;
  if (v50 >= *(v7 + 116))
  {
    goto LABEL_152;
  }

  v62 = *(v7 + 104);
  if (v62)
  {
    v63 = v60;
    v64 = v61;
    v65 = *(*(v62 + 8 * v50) + 8);
    v66 = *(v65 + 212);
    if (v66 == *(v65 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v66);
    }

    v67 = *(v65 + 200);
    if (!v67)
    {
      goto LABEL_197;
    }

    v68 = *(v65 + 212);
    v69 = v67 + 120 * v68;
    v70 = v201;
    *(v69 + 32) = *&v200[32];
    *(v69 + 48) = v70;
    v71 = v202;
    v72 = *&v200[16];
    *v69 = *v200;
    *(v69 + 16) = v72;
    *(v69 + 64) = v71;
    *(v69 + 72) = v52;
    *(v69 + 80) = 0;
    *(v69 + 88) = 0;
    *(v69 + 96) = 0;
    *(v69 + 104) = v63;
    *(v69 + 112) = v64;
    if (v68 == -1)
    {
      goto LABEL_153;
    }

    *(v65 + 212) = v68 + 1;
    v57 = v68;
    v73 = *v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198 = *v53;
    *v53 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, &v206, isUniquelyReferenced_nonNull_native);
    v75 = *v53;
    *v53 = v198;

LABEL_34:
    if (v190[48])
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v76 = *v190;
    if (v76 < *(v7 + 116))
    {
      v77 = *(v7 + 104);
      if (!v77)
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v78 = *(*(v77 + 8 * v76) + 8);
      if (*(v78 + 44) > v58)
      {
        v79 = *(v78 + 32);
        if (!v79)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v80 = (v79 + (v189 << 7));
        v81 = v80[1];
        *v200 = *v80;
        *&v200[16] = v81;
        v82 = v80[5];
        v202 = v80[4];
        v203 = v82;
        v83 = v80[7];
        v204 = v80[6];
        v205 = v83;
        v84 = v80[3];
        *&v200[32] = v80[2];
        v201 = v84;
        v85 = *&v200[8];
        v86 = *&v200[16];
        v87 = v200[24];
        v88 = *&v200[32];
        LOBYTE(v198) = v200[24];
        v89 = HeterogeneousBuffer.type(at:)(0, *&v200[8], *&v200[16], v200[24], *&v200[32]);
        v90 = swift_conformsToProtocol2();
        if (!v90)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v91 = v90;
        LOBYTE(v198) = v87;
        v92 = HeterogeneousBuffer.index(after:)(0, v85, v86, v87, v88);
        LOBYTE(v198) = v87;
        v93 = HeterogeneousBuffer.type(at:)(v92, v85, v86, v87, v88);
        v94 = swift_conformsToProtocol2();
        if (!v94)
        {
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v93, v200, v89, v91, v94, &v198);
        if (v198 == &type metadata for Event.AttributeStack || v198 == &type metadata for Event.AttributeValue)
        {
          v96 = v199;
        }

        else
        {
          v96 = -1;
        }

        v97 = *&v57 | 0xFFFFFFFF00000000;
        v98 = v190;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v96, v191, *(&v191 + 1), v97, 4, v186 & 1);
        if (v190[48])
        {
          goto LABEL_184;
        }

        v100 = *v190;
        if (v100 < *(v7 + 116))
        {
          v101 = *(v7 + 104);
          if (!v101)
          {
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          v102 = *(*(v101 + 8 * v100) + 8);
          v103 = *(v102 + 44);
          if (v103 > a2)
          {
            v104 = *(v102 + 32);
            if (!v104)
            {
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
              goto LABEL_189;
            }

            v105 = v99;
            if (v99 < v103)
            {
              v106 = (v104 + (v189 << 7));
              v194 = v99;
              v107 = (v104 + (v99 << 7));
              v108 = *v107;
              v109 = v106[31];
              if (v109 == v106[30])
              {
                specialized UnsafeArray.growToCapacity(_:)(2 * v109);
              }

              v110 = *(v106 + 14);
              if (!v110)
              {
                goto LABEL_187;
              }

              v111 = v106[31];
              v112 = v110 + 8 * v111;
              *v112 = -24448;
              *(v112 + 4) = v108;
              if (v111 != -1)
              {
                v106[31] = v111 + 1;
                v113 = *v106;
                v114 = v107[31];
                if (v114 == v107[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)(2 * v114);
                }

                v115 = *(v107 + 14);
                if (!v115)
                {
                  goto LABEL_188;
                }

                v116 = v107[31];
                v117 = v115 + 8 * v116;
                *v117 = 24704;
                *(v117 + 4) = v113;
                if (v116 != -1)
                {
                  v107[31] = v116 + 1;
                  if (v190[48])
                  {
LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

                  v118 = *v190;
                  if (v118 < *(v7 + 116))
                  {
                    v119 = *(v7 + 104);
                    if (!v119)
                    {
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
                      goto LABEL_195;
                    }

                    v120 = *(*(v119 + 8 * v118) + 8);
                    if (*(v120 + 44) > a2)
                    {
                      v121 = *(v120 + 32);
                      if (!v121)
                      {
                        goto LABEL_191;
                      }

                      v122 = 0;
                      v123 = v121 + (v189 << 7);
                      v124 = *(v123 + 112);
                      v125 = *(v123 + 124);
                      v126 = MEMORY[0x277D84F90];
LABEL_67:
                      v127 = (v124 + 8 * v122);
                      while (v125 != v122)
                      {
                        if (v122 >= v125)
                        {
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
                          goto LABEL_134;
                        }

                        if (!v124)
                        {
                          goto LABEL_154;
                        }

                        v128 = v122 + 1;
                        if (__OFADD__(v122, 1))
                        {
                          goto LABEL_122;
                        }

                        v130 = *v127;
                        v127 += 4;
                        v129 = v130;
                        ++v122;
                        if ((v130 & 0x80000000) == 0 && (v129 & 0xC03) != 0)
                        {
                          v192 = *(v127 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 16) + 1, 1);
                          }

                          v132 = *(v126 + 16);
                          v131 = *(v126 + 24);
                          v133 = v132 + 1;
                          if (v132 >= v131 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1);
                            v133 = v132 + 1;
                          }

                          *(v126 + 16) = v133;
                          v134 = v126 + 8 * v132;
                          *(v134 + 32) = v129;
                          *(v134 + 36) = v192;
                          v122 = v128;
                          goto LABEL_67;
                        }
                      }

                      v193 = v105;
                      v135 = *(v126 + 16);
                      v136 = v7;
                      if (v135)
                      {
                        v137 = 0;
                        v138 = (v126 + 36);
                        while (v137 < *(v126 + 16))
                        {
                          if (v98[48])
                          {
                            goto LABEL_155;
                          }

                          v139 = *v98;
                          if (v139 >= *(v7 + 116))
                          {
                            goto LABEL_124;
                          }

                          v140 = *(v7 + 104);
                          if (!v140)
                          {
                            goto LABEL_156;
                          }

                          v141 = *v138;
                          v142 = *(*(v140 + 8 * v139) + 8);
                          v143 = *(v142 + 44);
                          if (v141 >= v143)
                          {
                            goto LABEL_125;
                          }

                          v144 = *(v142 + 32);
                          if (!v144)
                          {
                            goto LABEL_157;
                          }

                          if (v193 >= v143)
                          {
                            goto LABEL_126;
                          }

                          v145 = *(v138 - 2);
                          v146 = (v144 + (v141 << 7));
                          v147 = (v144 + (v194 << 7));
                          v148 = *v147;
                          v149 = v146[31];
                          if (v149 == v146[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v149);
                          }

                          v150 = *(v146 + 14);
                          if (!v150)
                          {
                            goto LABEL_158;
                          }

                          v151 = v145 & 0x1FFF;
                          v152 = v146[31];
                          v153 = v150 + 8 * v152;
                          *v153 = v151 | 0xA000;
                          *(v153 + 4) = v148;
                          if (v152 == -1)
                          {
                            goto LABEL_127;
                          }

                          v146[31] = v152 + 1;
                          v154 = *v146;
                          v155 = v147[31];
                          if (v155 == v147[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v155);
                          }

                          v156 = *(v147 + 14);
                          if (!v156)
                          {
                            goto LABEL_159;
                          }

                          v157 = v147[31];
                          v158 = v156 + 8 * v157;
                          *v158 = v151 | 0x6000;
                          *(v158 + 4) = v154;
                          if (v157 == -1)
                          {
                            goto LABEL_128;
                          }

                          v7 = v136;
                          ++v137;
                          v147[31] = v157 + 1;
                          v138 += 2;
                          v98 = v190;
                          if (v135 == v137)
                          {
                            goto LABEL_97;
                          }
                        }

                        goto LABEL_123;
                      }

LABEL_97:

                      v159 = *(a4 + 16);
                      if (v159)
                      {
                        v160 = (a4 + 32);
                        while (!v98[48])
                        {
                          v161 = *v98;
                          if (v161 >= *(v7 + 116))
                          {
                            goto LABEL_129;
                          }

                          v162 = *(v7 + 104);
                          if (!v162)
                          {
                            goto LABEL_161;
                          }

                          v164 = *v160++;
                          v163 = v164;
                          v165 = *(*(v162 + 8 * v161) + 8);
                          v166 = *(v165 + 44);
                          if (v164 >= v166)
                          {
                            goto LABEL_130;
                          }

                          v167 = *(v165 + 32);
                          if (!v167)
                          {
                            goto LABEL_162;
                          }

                          if (v193 >= v166)
                          {
                            goto LABEL_131;
                          }

                          v168 = (v167 + (v163 << 7));
                          v169 = (v167 + (v194 << 7));
                          v170 = *v169;
                          v171 = v168[31];
                          if (v171 == v168[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v171);
                          }

                          v172 = *(v168 + 14);
                          if (!v172)
                          {
                            goto LABEL_163;
                          }

                          v173 = v168[31];
                          v174 = v172 + 8 * v173;
                          *v174 = -24512;
                          *(v174 + 4) = v170;
                          if (v173 == -1)
                          {
                            goto LABEL_132;
                          }

                          v168[31] = v173 + 1;
                          v175 = *v168;
                          v176 = v169[31];
                          if (v176 == v169[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v176);
                          }

                          v177 = *(v169 + 14);
                          if (!v177)
                          {
                            goto LABEL_164;
                          }

                          v178 = v169[31];
                          v179 = v177 + 8 * v178;
                          *v179 = 24640;
                          *(v179 + 4) = v175;
                          if (v178 == -1)
                          {
                            goto LABEL_133;
                          }

                          v7 = v136;
                          v169[31] = v178 + 1;
                          if (!--v159)
                          {
                            goto LABEL_114;
                          }
                        }

                        goto LABEL_160;
                      }

LABEL_114:
                      if (v98[48])
                      {
                        goto LABEL_192;
                      }

                      v180 = *v98;
                      if (v180 < *(v7 + 116))
                      {
                        v181 = *(v7 + 104);
                        if (!v181)
                        {
                          goto LABEL_193;
                        }

                        v182 = *(*(v181 + 8 * v180) + 8);
                        v183 = *(v182 + 44);
                        if (v193 < v183)
                        {
                          v184 = *(v182 + 32);
                          if (!v184)
                          {
                            goto LABEL_194;
                          }

                          if (v183 > a2)
                          {
                            Event.hide(_:within:)((v184 + (v189 << 7)), v98);
                            return;
                          }

                          goto LABEL_151;
                        }

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
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
LABEL_164:
                        __break(1u);
                        goto LABEL_165;
                      }

LABEL_149:
                      __break(1u);
                      goto LABEL_150;
                    }

LABEL_148:
                    __break(1u);
                    goto LABEL_149;
                  }

LABEL_147:
                  __break(1u);
                  goto LABEL_148;
                }

LABEL_146:
                __break(1u);
                goto LABEL_147;
              }

LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
}

uint64_t Interpreter.Iterator.projectVersion.getter()
{
  v1 = type metadata accessor for TraceChunk(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *(v0 + 176);
  if (*(v5 + 32))
  {
    specialized T_Header.init()(v9);
  }

  else
  {
    outlined init with copy of TraceChunk(*(v5 + 24), v4);
    v6 = *(*v4 + 32);
    outlined destroy of TraceChunk(v4);
    specialized T_Header.init(loadedFrom:)(v6, v9);
  }

  return v10;
}

NSUInteger Interpreter.Iterator.describe(state:)(uint64_t *a1)
{
  v47 = *a1;
  v2 = *(a1 + 16);
  v3 = a1[3];
  v52 = v3;
  v53 = a1[1];
  v51 = a1[4];
  v49 = *(a1 + 41);
  v50 = *(a1 + 40);
  v4 = *(v1 + 16);
  v65[0] = *v1;
  v65[1] = v4;
  v65[2] = *(v1 + 32);
  v66 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 88);
  *&v55[9] = *(v1 + 97);
  v54[1] = v6;
  *v55 = v7;
  v54[0] = v5;
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v10 = *(v1 + 100);
  v11 = *(v1 + 104);
  v12 = *(v1 + 116);
  v13 = *(v1 + 176);
  v46 = *(v1 + 184);
  if (v2)
  {
    v14 = 0xD000000000000014;
  }

  else
  {
    v14 = 73;
  }

  if (v2)
  {
    v15 = 0x800000026C33CCA0;
  }

  else
  {
    v15 = 0xE100000000000000;
  }

  *&v74 = 0;
  *(&v74 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  MEMORY[0x26D69CDB0](40, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v14, v15);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v74) = *v13;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v82 = v13[8];
  v83 = v13[9];
  v84 = v13[10];
  v85 = v13[11];
  v78 = v13[4];
  v79 = v13[5];
  v80 = v13[6];
  v81 = v13[7];
  v74 = *v13;
  v75 = v13[1];
  v76 = v13[2];
  v77 = v13[3];
  if (__OFSUB__(v47, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v86 = v47 - 1;
  v87 = v53;
  v88 = 0;
  v89 = v52;
  v90 = v51;
  v91 = v50;
  v92 = v49;
  v48 = v47 - 1;
  v17 = specialized InspectionState.wrapDescription<A>(_:)();
  MEMORY[0x26D69CDB0](v17);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v67 = v48;
  v68 = v53;
  v69 = 0;
  v70 = v52;
  v71 = v51;
  v72 = v50;
  v73 = v49;
  v18 = specialized InspectionState.wrapDescription<A>(_:)(v65);
  MEMORY[0x26D69CDB0](v18);

  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v19 = 8 * v12;
  v20 = v8;
  v21 = v9;
  v22 = v11;
  if (v12 >= v10)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v23 = (v21 + v19);
    if ((v23[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_10:
      if (!v22)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v54, specialized EvolutionTable.describe(state:));
      }

      v20 = *v22;
      v21 = v22[4];
      v24 = *(v22 + 11);
      v22 = v22[6];
    }

    while (v12 >= v24);
  }

  if (!v20)
  {
    goto LABEL_43;
  }

  v25 = (v20 + 24 * *v23);
  v26 = *v25;
  v27 = *(*v25 + 96);
  v28 = *(*v25 + 128);
  v56[7] = *(*v25 + 112);
  v56[8] = v28;
  v29 = *(v26 + 32);
  v30 = *(v26 + 64);
  v31 = *(v26 + 80);
  v56[3] = *(v26 + 48);
  v56[4] = v30;
  v57 = *(v26 + 144);
  v56[5] = v31;
  v56[6] = v27;
  v32 = *(v26 + 16);
  v56[0] = *v26;
  v56[1] = v32;
  v56[2] = v29;
  v58 = v48;
  v59 = v53;
  v60 = 0;
  v61 = v52;
  v62 = v51;
  v63 = v50;
  v64 = v49;
  v33 = specialized InspectionState.wrapDescription<A>(_:)(v56);
  MEMORY[0x26D69CDB0](v33);

  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v34 = v8;
  v35 = v9;
  v36 = v11;
  if (v12 >= v10)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v37 = (v35 + v19);
    if ((v37[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_17:
      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v54, specialized EvolutionTable.describe(state:));
      }

      v34 = *v36;
      v35 = v36[4];
      v38 = *(v36 + 11);
      v36 = v36[6];
    }

    while (v12 >= v38);
  }

  if (!v34)
  {
    goto LABEL_44;
  }

  result = v34 + 24 * *v37;
  v39 = *(*result + 136);
  v40 = *(*result + 144);
  if (v12 >= v10)
  {
    goto LABEL_24;
  }

  while ((*(v9 + v19 + 4) & 1) != 0)
  {
    do
    {
LABEL_24:
      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v54, specialized EvolutionTable.describe(state:));
      }

      v8 = *v11;
      v9 = v11[4];
      v41 = *(v11 + 11);
      v11 = v11[6];
    }

    while (v12 >= v41);
  }

  if (!v8)
  {
    goto LABEL_45;
  }

  result = v8 + 24 * *(v9 + 8 * v12);
  v42 = *(*result + 136);
  if (v42)
  {
    v43 = v40 - v39;
    if (!v39)
    {
      v43 = 0;
    }

    v44 = v46 - v42;
    if (v43 >= v44)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        result = NSPageSize();
        if ((result - 0x1000000000000000) >> 61 == 7)
        {
          if (8 * result)
          {
            v45 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26D69CDB0](v45);

            MEMORY[0x26D69CDB0](32, 0xE100000000000000);
            MEMORY[0x26D69CDB0](0, 0xE000000000000000);

            MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
            return 0;
          }

          goto LABEL_41;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void Interpreter.Iterator.modeRemaining.getter()
{
  v1 = *(v0 + 72);
  v20[0] = *(v0 + 56);
  v20[1] = v1;
  v21[0] = *(v0 + 88);
  *(v21 + 9) = *(v0 + 97);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v4 = *(v0 + 100);
  v5 = *(v0 + 116);
  v6 = 8 * v5;
  v7 = v2;
  v8 = *(v0 + 104);
  v9 = v3;
  v10 = v8;
  v11 = *(v0 + 184);
  if (v5 >= v4)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v12 = (v9 + v6);
    if ((v12[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_3:
      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v5, 0, v20, specialized EvolutionTable.describe(state:));
      }

      v7 = *v10;
      v9 = v10[4];
      v13 = *(v10 + 11);
      v10 = v10[6];
    }

    while (v5 >= v13);
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  v14 = v7 + 24 * *v12;
  v15 = *(*v14 + 136);
  if (v5 >= v4)
  {
    goto LABEL_10;
  }

  while ((*(v3 + v6 + 4) & 1) != 0)
  {
    do
    {
LABEL_10:
      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v5, 0, v20, specialized EvolutionTable.describe(state:));
      }

      v2 = *v8;
      v3 = v8[4];
      v16 = *(v8 + 11);
      v8 = v8[6];
    }

    while (v5 >= v16);
  }

  if (!v2)
  {
    goto LABEL_25;
  }

  v17 = *(*(v2 + 24 * *(v3 + 8 * v5)) + 136);
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v18 = *(*v14 + 144) - v15;
  if (!v15)
  {
    v18 = 0;
  }

  v19 = v11 - v17;
  if (v18 < v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v19 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

uint64_t Interpreter.Iterator.Kind.describe(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  if (!*(v1 + 48))
  {
    v15 = v2 - 1;
    if (!__OFSUB__(v2, 1))
    {
      v69 = v1[1];
      v16 = v10 >> 8;
      *&v87 = v2 - 1;
      *(&v87 + 1) = v3;
      LOBYTE(v88) = v4;
      *(&v88 + 1) = v5;
      *&v89[0] = v6;
      BYTE8(v89[0]) = v7;
      BYTE9(v89[0]) = v8;
      v64 = v10;
      v17 = v5;
      v18 = v4;
      v19 = specialized InspectionState.wrapDescription<A>(_:)(v16);
      MEMORY[0x26D69CDB0](v19);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v79 = v15;
      *&v80 = v3;
      BYTE8(v80) = v18;
      v81 = v17;
      v82 = v6;
      LOBYTE(v83) = v7;
      BYTE1(v83) = v8;
      v20 = specialized InspectionState.wrapDescription<A>(_:)(v64);
      MEMORY[0x26D69CDB0](v20);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v73[0] = v15;
      v73[1] = v3;
      v74 = v18;
      v75 = v17;
      v76 = v6;
      v77 = v7;
      v78 = v8;
      v21 = specialized InspectionState.wrapDescription<A>(_:)(v69, v11 & 1);
      MEMORY[0x26D69CDB0](v21);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return 40;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*(v1 + 48) != 1)
  {
    return 1701603686;
  }

  v13 = v1[3];
  v12 = v1[4];
  v66 = v1[2];
  if (*(a1 + 41))
  {
    if (v8 != 1)
    {
LABEL_46:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v14 = a1[4];
  }

  else
  {
    v14 = *(v6 + 176);
  }

  v23 = *(v14 + 40);
  v24 = HIDWORD(v10);
  v71 = *(v14 + 48);
  v25 = *(v14 + 72);
  v72 = *(v14 + 64);
  v26 = *(v14 + 88);
  v27 = *(v14 + 80);
  v28 = *(v14 + 84);
  v29 = *(v14 + 96);
  v79 = v23;
  v80 = v71;
  v81 = v72;
  v82 = v25;
  v83 = v27;
  v84 = v28;
  v85 = v26;
  v86 = v29;
  v68 = v8;
  v67 = v6;
  v61 = v7;
  v60 = v5;
  v59 = v4;
  v62 = v12;
  v63 = v2;
  v65 = v13;
  if (v9)
  {
    if (__OFSUB__(v2, 1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    *&v87 = v2 - 1;
    *(&v87 + 1) = v3;
    LOBYTE(v88) = v4;
    *(&v88 + 1) = v5;
    *&v89[0] = v6;
    BYTE8(v89[0]) = v7;
    BYTE9(v89[0]) = v8;
    LOBYTE(v73[0]) = 1;
    v30 = specialized InspectionState.wrapDescription<A>(_:)(v24 | 0x100000000);
    v32 = v31;
    v33 = v10;
    v34 = 8 * v10;
  }

  else
  {
    v33 = v10;
    v34 = 8 * v10;
    v35 = v23;
    v36 = v25;
    v37 = v26;
    if (v10 >= v28)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v38 = (v36 + v34);
      if ((v38[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_15:
        if (!v37)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, &v79, specialized EvolutionTable.describe(state:));
        }

        v35 = *v37;
        v36 = v37[4];
        v39 = *(v37 + 11);
        v37 = v37[6];
      }

      while (v10 >= v39);
    }

    if (!v35)
    {
      goto LABEL_44;
    }

    v40 = (v35 + 24 * *v38);
    v41 = *v40;
    v42 = (*v40 + 120);
    v43 = *(*v40 + 136);
    v87 = *v42;
    v88 = v43;
    v89[0] = *(v41 + 152);
    *(v89 + 9) = *(v41 + 161);
    v44 = (v41 + 152);
    v45 = (v41 + 164);
    v46 = (v41 + 168);
    while (1)
    {
      v47 = *v46;
      if (v24 < *v45)
      {
        v48 = (*v44 + 8 * v24);
        if ((v48[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v47)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(HIDWORD(v10), 0, &v87, specialized EvolutionTable.describe(state:));
      }

      v44 = (v47 + 32);
      v45 = (v47 + 44);
      v46 = (v47 + 48);
      v42 = v47;
    }

    v49 = *v42;
    if (!v49)
    {
      goto LABEL_45;
    }

    v50 = *(*(v49 + 24 * *v48) + 16);
    v30 = *v50;
    v32 = v50[1];
  }

  v58 = v3;
  if (v33 >= v28)
  {
    goto LABEL_30;
  }

  while ((*(v25 + v34 + 4) & 1) != 0)
  {
    do
    {
LABEL_30:
      if (!v26)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, &v79, specialized EvolutionTable.describe(state:));
      }

      v23 = *v26;
      v25 = v26[4];
      v51 = *(v26 + 11);
      v26 = v26[6];
    }

    while (v33 >= v51);
  }

  if (!v23)
  {
    goto LABEL_43;
  }

  v52 = **(v23 + 24 * *(v25 + v34));
  v54 = *v52;
  v53 = v52[1];

  _StringGuts.grow(_:)(20);

  strcpy(v73, "(attachment ");
  BYTE5(v73[1]) = 0;
  HIWORD(v73[1]) = -5120;
  MEMORY[0x26D69CDB0](v30, v32);

  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v54, v53);

  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v55 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x26D69CDB0](v55);

  v70 = v73[0];
  if (v65)
  {
    v73[0] = v62;
    lazy protocol witness table accessor for type Int and conformance Int();
    v56 = String.init<A>(_:radix:uppercase:)();
    MEMORY[0x26D69CDB0](v56);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if (!__OFSUB__(v63, 1))
    {
      v73[0] = v63 - 1;
      v73[1] = v58;
      v74 = v59;
      v75 = v60;
      v76 = v67;
      v77 = v61;
      v78 = v68;
      v57 = specialized InspectionState.wrapDescription<A>(_:)(v66);
      MEMORY[0x26D69CDB0](v57);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      MEMORY[0x26D69CDB0](0x20747261747328, 0xE700000000000000);

      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_38:
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v70;
}

uint64_t Interpreter.Iterator.Mode.type.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Interpreter.Iterator.Mode.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

double Interpreter.Iterator.Mode.init(name:version:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_slowAlloc();
  *v6 = a1;
  v6[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = v6;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 68) = 1;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 2;
  *(a3 + 104) = 0;
  *(a3 + 144) = 0;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  return result;
}

uint64_t project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 48))(v8, v7);
  v9 = specialized Strong.init(_:)(v6, a2);
  (*(v3 + 8))(v6, a2);
  return Strong.opaque.getter(v9, a2);
}

uint64_t Interpreter.Iterator.Mode.describe(state:)(_OWORD *a1)
{
  v2 = a1[1];
  *v20 = *a1;
  *&v20[16] = v2;
  *&v20[26] = *(a1 + 26);
  v3 = v1[7];
  v27 = v1[6];
  v28 = v3;
  v29 = v1[8];
  v30 = *(v1 + 18);
  v4 = v1[3];
  v23 = v1[2];
  v24 = v4;
  v5 = v1[5];
  v25 = v1[4];
  v26 = v5;
  v6 = v1[1];
  v21 = *v1;
  v22 = v6;
  v31 = 0;
  *&v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v19[0] = 40;
  v19[1] = 0xE100000000000000;
  if (*(&v28 + 1))
  {
    v31 = *(&v28 + 1);
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
  }

  else
  {
    v31 = 126;
    *&v32 = 0xE100000000000000;
    v10 = *v22;
    v11 = *(v22 + 8);

    MEMORY[0x26D69CDB0](v10, v11);

    v7 = 126;
    v9 = 0xE100000000000000;
  }

  MEMORY[0x26D69CDB0](v7, v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](0x20656D69742820, 0xE700000000000000);
  v31 = v23;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v13);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  if (BYTE8(v23))
  {
    v14 = 0x6E69726170657270;
  }

  else
  {
    v14 = 0;
  }

  if (BYTE8(v23))
  {
    v15 = 0xEE00656361725467;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v14, v15);

  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (__OFSUB__(*v20, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v31 = *v20 - 1;
  v32 = *&v20[8];
  v33 = *&v20[24];
  v34 = *&v20[40];
  v17 = specialized InspectionState.wrapDescription<A>(_:)(*(&v29 + 1), v30);
  MEMORY[0x26D69CDB0](v17);

  if (v27 != 2 && (v27 & 0x100) != 0)
  {
    v18 = v26 - *(&v25 + 1);
    if (!*(&v25 + 1))
    {
      v18 = 0;
    }

    if (!__OFSUB__(v18, *(&v26 + 1)))
    {
      if (v18 != *(&v26 + 1))
      {
        MEMORY[0x26D69CDB0](0x4D48434154544120, 0xEC00000020544E45);
      }

      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_18:
  if (*(&v28 + 1))
  {
    if (*&v20[8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      describe #1 <A>(type:_:) in Interpreter.Iterator.Mode.describe(state:)(*(&v28 + 1), v19, v20, &v21, *(&v28 + 1));
    }
  }

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v19[0];
}

uint64_t describe #1 <A>(type:_:) in Interpreter.Iterator.Mode.describe(state:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-1] - v11;
  v13 = a3[1];
  v21 = *a3;
  v22[0] = v13;
  *(v22 + 10) = *(a3 + 26);
  v14 = *(a4 + 112);
  if (v14)
  {
    v15 = UnsafeMutableRawPointer.subscript.getter(a5, v14);
    v16 = *(a5 - 8);
    (*(v16 + 16))(v12, v15, a5);
    (*(v16 + 56))(v12, 0, 1, a5);
  }

  else
  {
    (*(*(a5 - 8) + 56))(v12, 1, 1, a5);
  }

  v17 = InspectionState.describe<A>(_:)(v12, v8, &protocol witness table for A?);
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x26D69CDB0](v17, v19);
}

uint64_t Interpreter.Iterator.Mode.executionContext.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t Interpreter.Iterator.Mode.executionContext.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

Swift::Void __swiftcall Interpreter.Iterator.Mode.deallocate()()
{
  v1 = v0[2];
  if (v1)
  {
    outlined destroy of String(v0[2]);
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[2] = 0;
    v2 = v0[15];
    if (v2)
    {
      v3 = v0[16];
      v4 = v0[15];

      project #1 <A>(_:) in Interpreter.Iterator.Mode.deallocate()(v2, v0, v4, v3);
    }
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void project #1 <A>(_:) in Interpreter.Iterator.Mode.deallocate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 112);
  if (v5)
  {
    UnsafeMutableRawPointer.subscript.getter(a3, v5);
    (*(*(a4 + 8) + 8))(a3);
    v8 = *(a2 + 112);
    if (v8)
    {
      UnsafeMutableRawPointer.subscript.getter(a3, v8);
      UnsafeMutablePointer.deinitialize(count:)();
      v9 = *(a2 + 112);
      if (v9)
      {
        UnsafeMutableRawPointer.subscript.getter(a3, v9);

LABEL_10:
        JUMPOUT(0x26D69D370);
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_9;
}

uint64_t Interpreter.Iterator.CancelationPolicy.describe(state:)(uint64_t a1)
{
  if (v1[1])
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0x6C65636E6163;
  }

  v4 = *v1;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 2127912;
}

__n128 Interpreter.Iterator.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 Interpreter.Iterator.kind.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = v2;
  return result;
}

__n128 Interpreter.Iterator.modes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 97);
  *(a1 + 41) = result;
  return result;
}

__n128 Interpreter.Iterator.modes.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

void *Interpreter.Iterator.AttachmentBuffer.append(buffer:)(void *__src, uint64_t a2)
{
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_21;
  }

  v4 = __src;
  v5 = a2 - __src;
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  if (__src)
  {
    v6 = a2 - __src;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[2];
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v2[1] - v3;
  if (v10 < v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= v7)
  {
    if (!__src)
    {
LABEL_15:
      v2[2] = v7;
      return __src;
    }

    __src = memmove((v3 + v7), __src, v5);
LABEL_11:
    if (v4)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v12 = v2[2];
    v8 = __OFADD__(v12, v11);
    v7 = v12 + v11;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return __src;
}

Swift::Void __swiftcall Interpreter.Iterator.AttachmentBuffer.deallocate()()
{
  if (specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(*v0, *(v0 + 8), 0, 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + 16) >= 1)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 25);
    v6 = *(v0 + 28);
    v7 = *(v0 + 32);
    v1 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if ((v2 & 1) == 0)
    {
      if (v1)
      {

LABEL_10:
        JUMPOUT(0x26D69EAB0);
      }
    }
  }
}

uint64_t Interpreter.Iterator.AttachmentBuffer.describe(state:)()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = 0xE300000000000000;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v6)
  {
    v7 = 7104878;
  }

  else
  {
    v8 = v5 - result;
    if (!result)
    {
      v8 = 0;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>();
    v7 = String.init<A>(bytes:encoding:)();
    if (v9)
    {
      v3 = v9;
    }

    else
    {
      v7 = 0;
      v3 = 0xE000000000000000;
    }
  }

  MEMORY[0x26D69CDB0](v7, v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v10 = *(v0 + 16);
  if (v10 <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x646569706F63;
  }

  if (v10 <= 0)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  MEMORY[0x26D69CDB0](v11, v12);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 2122024;
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Interpreter.Iterator.AttachmentBuffer()
{
  result = specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(*v0, *(v0 + 8), 0, 0);
  if (result)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + 16) >= 1)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 25);
    v6 = *(v0 + 28);
    v7 = *(v0 + 32);
    result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if ((v2 & 1) == 0)
    {
      if (result)
      {

LABEL_10:
        JUMPOUT(0x26D69EAB0);
      }
    }
  }

  return result;
}

uint64_t Interpreter.Iterator.attachmentRefSearch.getter()
{
  if (*(v0 + 48) == 1)
  {
    result = *v0;
    v2 = *(v0 + 8) & 0xFFFFFFFF00000001;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void Interpreter.Iterator.currentAttachment.getter()
{
  v1 = *(v0 + 72);
  v17[0] = *(v0 + 56);
  v17[1] = v1;
  v18[0] = *(v0 + 88);
  v2 = *(v0 + 97);
  v3 = *(v0 + 56);
  v4 = *(v0 + 88);
  v5 = *(v0 + 100);
  v6 = *(v0 + 116);
  v7 = 8 * v6;
  v8 = *(v0 + 104);
  v9 = v3;
  v10 = v4;
  v11 = v8;
  *(v18 + 9) = v2;
  if (v6 >= v5)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v12 = (v10 + v7);
    if ((v12[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_3:
      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v17, specialized EvolutionTable.describe(state:));
      }

      v9 = *v11;
      v10 = v11[4];
      v13 = *(v11 + 11);
      v11 = v11[6];
    }

    while (v6 >= v13);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v14 = v9 + 24 * *v12;
  if (*(*v14 + 96) == 2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= v5)
  {
    goto LABEL_11;
  }

  while ((*(v4 + v7 + 4) & 1) != 0)
  {
    do
    {
LABEL_11:
      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v17, specialized EvolutionTable.describe(state:));
      }

      v3 = *v8;
      v4 = v8[4];
      v15 = *(v8 + 11);
      v8 = v8[6];
    }

    while (v6 >= v15);
  }

  if (v3)
  {
    v16 = *(*(v3 + 24 * *(v4 + 8 * v6)) + 68);
    LOBYTE(v17[0]) = *(*v14 + 104) & 1;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t Interpreter.Iterator.backtrace.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168) | (*(v0 + 172) << 32);
  return result;
}

uint64_t Interpreter.Iterator.backtrace.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  *(v2 + 172) = HIDWORD(a2);
  return result;
}

uint64_t Interpreter.Iterator.index.getter()
{
  if (!v0[48])
  {
    return *v0;
  }

  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.mode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 56);
  v4 = *(v1 + 72);
  v17[0] = *(v1 + 56);
  v17[1] = v4;
  v18[0] = *(v1 + 88);
  *(v18 + 9) = *(v1 + 97);
  v5 = (v1 + 88);
  v6 = (v1 + 100);
  v7 = (v1 + 104);
  result = *(v1 + 116);
  while (1)
  {
    v9 = *v7;
    if (result < *v6)
    {
      v10 = (*v5 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (v11)
  {
    result = v11 + 24 * *v10;
    v12 = *result;
    v13 = *(*result + 112);
    *(a1 + 96) = *(*result + 96);
    *(a1 + 112) = v13;
    *(a1 + 128) = *(v12 + 128);
    *(a1 + 144) = *(v12 + 144);
    v14 = *(v12 + 48);
    *(a1 + 32) = *(v12 + 32);
    *(a1 + 48) = v14;
    v15 = *(v12 + 80);
    *(a1 + 64) = *(v12 + 64);
    *(a1 + 80) = v15;
    v16 = *(v12 + 16);
    *a1 = *v12;
    *(a1 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for Interpreter.Iterator.mode : Interpreter.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 56);
  v4 = *(a1 + 72);
  v17[0] = *(a1 + 56);
  v17[1] = v4;
  v18[0] = *(a1 + 88);
  *(v18 + 9) = *(a1 + 97);
  v5 = (a1 + 88);
  v6 = (a1 + 100);
  v7 = (a1 + 104);
  result = *(a1 + 116);
  while (1)
  {
    v9 = *v7;
    if (result < *v6)
    {
      v10 = (*v5 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (v11)
  {
    result = v11 + 24 * *v10;
    v12 = *result;
    v13 = *(*result + 112);
    *(a2 + 96) = *(*result + 96);
    *(a2 + 112) = v13;
    *(a2 + 128) = *(v12 + 128);
    *(a2 + 144) = *(v12 + 144);
    v14 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v14;
    v15 = *(v12 + 80);
    *(a2 + 64) = *(v12 + 64);
    *(a2 + 80) = v15;
    v16 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t key path setter for Interpreter.Iterator.mode : Interpreter.Iterator(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 116);
  v4 = (a2 + 56);
  v5 = *(a2 + 72);
  v17[0] = *(a2 + 56);
  v17[1] = v5;
  v18[0] = *(a2 + 88);
  *(v18 + 9) = *(a2 + 97);
  v6 = (a2 + 88);
  v7 = (a2 + 100);
  v8 = (a2 + 104);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (v11)
  {
    result = v11 + 24 * *v10;
    v12 = *result;
    v13 = *(a1 + 112);
    *(v12 + 96) = *(a1 + 96);
    *(v12 + 112) = v13;
    *(v12 + 128) = *(a1 + 128);
    *(v12 + 144) = *(a1 + 144);
    v14 = *(a1 + 48);
    *(v12 + 32) = *(a1 + 32);
    *(v12 + 48) = v14;
    v15 = *(a1 + 80);
    *(v12 + 64) = *(a1 + 64);
    *(v12 + 80) = v15;
    v16 = *(a1 + 16);
    *v12 = *a1;
    *(v12 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t Interpreter.Iterator.mode.setter(uint64_t a1)
{
  result = *(v1 + 116);
  v4 = (v1 + 56);
  v5 = *(v1 + 72);
  v17[0] = *(v1 + 56);
  v17[1] = v5;
  v18[0] = *(v1 + 88);
  *(v18 + 9) = *(v1 + 97);
  v6 = (v1 + 88);
  v7 = (v1 + 100);
  v8 = (v1 + 104);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (v11)
  {
    result = v11 + 24 * *v10;
    v12 = *result;
    v13 = *(a1 + 112);
    *(v12 + 96) = *(a1 + 96);
    *(v12 + 112) = v13;
    *(v12 + 128) = *(a1 + 128);
    *(v12 + 144) = *(a1 + 144);
    v14 = *(a1 + 48);
    *(v12 + 32) = *(a1 + 32);
    *(v12 + 48) = v14;
    v15 = *(a1 + 80);
    *(v12 + 64) = *(a1 + 64);
    *(v12 + 80) = v15;
    v16 = *(a1 + 16);
    *v12 = *a1;
    *(v12 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *Interpreter.Iterator.swiftUI.setter(_OWORD *result)
{
  v2 = result;
  v3 = (v1 + 56);
  v4 = *(v1 + 72);
  v15[0] = *(v1 + 56);
  v15[1] = v4;
  v16[0] = *(v1 + 88);
  *(v16 + 9) = *(v1 + 97);
  v5 = (v1 + 72);
  v6 = (v1 + 84);
  v7 = (v1 + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v15, specialized EvolutionTable.describe(state:));
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    result = (v10 + 24 * *(v9 + 8));
    v11 = *(*result + 112);
    if (v11)
    {
      v12 = v2[5];
      v11[4] = v2[4];
      v11[5] = v12;
      v11[6] = v2[6];
      *(v11 + 109) = *(v2 + 109);
      v13 = v2[1];
      *v11 = *v2;
      v11[1] = v13;
      v14 = v2[3];
      v11[2] = v2[2];
      v11[3] = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 Interpreter.Iterator.interpreter.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v3;
  v4 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  v6 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v6;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

__n128 Interpreter.Iterator.interpreter.setter(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

uint64_t (*Interpreter.Iterator.pendingThroughRet.modify(uint64_t *a1))()
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
  *(v2 + 32) = Interpreter.Iterator.interpreter.modify();
  return UnsafeTree.subjectsMap.modify;
}

uint64_t Interpreter.Iterator.reading.getter()
{
  if (v0[48])
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 22);
  v2 = *v0;
  if (v2 >= *(v1 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    return *(*(v3 + 8 * v2) + 8);
  }

LABEL_7:
  __break(1u);
  return result;
}

unsigned __int8 *key path getter for Interpreter.Iterator.reading : Interpreter.Iterator@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  if (result[48])
  {
    goto LABEL_6;
  }

  v2 = *(result + 22);
  v3 = *result;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    *a2 = *(*(v4 + 8 * v3) + 8);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *key path setter for Interpreter.Iterator.reading : Interpreter.Iterator(void *result, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_6;
  }

  v2 = *(a2 + 22);
  v3 = *a2;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    *(*(v4 + 8 * v3) + 8) = *result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.reading.setter(uint64_t result)
{
  if (v1[48])
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 22);
  v3 = *v1;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    *(*(v4 + 8 * v3) + 8) = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16TracepointIDLikePAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo02T_D4IDV0a_Tt0g5Tm(uint64_t a1, unsigned int *a2, uint64_t (*a3)(__int128 *, unsigned int *))
{
  LODWORD(v3) = a3;
  v4 = a2;
  v5 = a1;
  v6 = v161;
  v7 = a1 + 56;
  v8 = *(a1 + 72);
  v169[0] = *(a1 + 56);
  v169[1] = v8;
  v170[0] = *(a1 + 88);
  v9 = (a1 + 88);
  v10 = (a1 + 100);
  v11 = (a1 + 104);
  v12 = *(a1 + 116);
  v13 = 8 * v12;
  *(v170 + 9) = *(a1 + 97);
  v14 = (a1 + 56);
  v111 = (a1 + 88);
  v15 = (a1 + 100);
  v16 = (a1 + 104);
  while (1)
  {
    v17 = *v16;
    if (v12 < *v15)
    {
      v18 = (*v9 + v13);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v169, specialized EvolutionTable.describe(state:));
    }

    v9 = (v17 + 32);
    v15 = (v17 + 44);
    v16 = (v17 + 48);
    v14 = v17;
  }

  v19 = *v14;
  if (!v19)
  {
    goto LABEL_110;
  }

  if (*(*(v19 + 24 * *v18) + 41) == 1)
  {
    v20 = *(a1 + 72);
    v167[0] = *v7;
    v167[1] = v20;
    v168[0] = *(a1 + 88);
    *(v168 + 9) = *(a1 + 97);
    v21 = (a1 + 104);
    v22 = (a1 + 100);
    v23 = (a1 + 88);
    for (i = (a1 + 56); ; i = v25)
    {
      v25 = *v21;
      if (v12 < *v22)
      {
        v26 = (*v23 + v13);
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v167, specialized EvolutionTable.describe(state:));
      }

      v23 = (v25 + 32);
      v22 = (v25 + 44);
      v21 = (v25 + 48);
    }

    v27 = a1 + 88;
    if (!*i)
    {
      goto LABEL_117;
    }

    *(*(*i + 24 * *v26) + 41) = 0;
    v28 = *(a1 + 176);
    v29 = *(v28 + 8);
    if (*(v28 + 32) == 1 && (*(v28 + 24) & 1) == 0)
    {
      goto LABEL_120;
    }

    *(a1 + 116) = 0;
    v30 = *(a1 + 72);
    v165[0] = *v7;
    v165[1] = v30;
    v166[0] = *(a1 + 88);
    *(v166 + 9) = *(a1 + 97);
    v31 = (a1 + 104);
    v32 = (a1 + 100);
    v33 = (a1 + 88);
    for (j = (a1 + 56); ; j = v35)
    {
      v35 = *v31;
      if (*v32)
      {
        v36 = *v33;
        if ((v36[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 0, v165, specialized EvolutionTable.describe(state:));
      }

      v33 = (v35 + 32);
      v32 = (v35 + 44);
      v31 = (v35 + 48);
    }

    if (!*j)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    LODWORD(v12) = 0;
    *(*(*j + 24 * *v36) + 136) = v29;
  }

  else
  {
    v27 = a1 + 88;
  }

  v37 = *(a1 + 72);
  v163[0] = *v7;
  v163[1] = v37;
  v164[0] = *(a1 + 88);
  v38 = 8 * v12;
  *(v164 + 9) = *(a1 + 97);
  v39 = (a1 + 56);
  v40 = v27;
  v41 = (a1 + 100);
  v42 = (a1 + 104);
  while (1)
  {
    v43 = *v42;
    if (v12 < *v41)
    {
      v44 = (*v40 + v38);
      if ((v44[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v43)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v163, specialized EvolutionTable.describe(state:));
    }

    v40 = (v43 + 32);
    v41 = (v43 + 44);
    v42 = (v43 + 48);
    v39 = v43;
  }

  v45 = *v39;
  if (!v45)
  {
    goto LABEL_111;
  }

  if (!*(*(v45 + 24 * *v44) + 136))
  {
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v106 = a2;
  v107 = a1;
  v46 = *(a1 + 72);
  v161[0] = *v7;
  v161[1] = v46;
  v162[0] = *(a1 + 88);
  *(v162 + 9) = *(a1 + 97);
  v108 = *(a1 + 184);
  log = (a1 + 184);
  v27 = *(a1 + 56);
  v47 = *(a1 + 88);
  LODWORD(v6) = *(a1 + 100);
  v48 = *(a1 + 104);
  v102 = a3;
  v103 = *(a1 + 176);
  v49 = v27;
  v50 = v47;
  v51 = v48;
  v104 = *(a1 + 192);
  if (v12 >= v6)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v52 = (v50 + v38);
    if ((v52[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_37:
      if (!v51)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v161, specialized EvolutionTable.describe(state:));
      }

      v49 = *v51;
      v50 = *(v51 + 32);
      v53 = *(v51 + 44);
      v51 = *(v51 + 48);
    }

    while (v12 >= v53);
  }

  if (!v49)
  {
    goto LABEL_112;
  }

  v54 = v49 + 24 * *v52;
  v3 = *(*v54 + 136);
  if (v12 >= v6)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v55 = (v47 + v38);
    if ((*(v47 + v38 + 4) & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_44:
      if (!v48)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v161, specialized EvolutionTable.describe(state:));
      }

      v27 = *v48;
      v47 = *(v48 + 32);
      LODWORD(v6) = *(v48 + 44);
      v48 = *(v48 + 48);
    }

    while (v12 >= v6);
  }

  v4 = v108;
  if (!v27)
  {
    goto LABEL_113;
  }

  v5 = v107;
  v56 = *(*(v27 + 24 * *v55) + 136);
  if (!v56)
  {
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
    goto LABEL_116;
  }

  if (v3)
  {
    v57 = *(*v54 + 144) - v3;
  }

  else
  {
    v57 = 0;
  }

  v58 = v108 - v56;
  v59 = __OFSUB__(v57, v108 - v56);
  v60 = v57 - (v108 - v56);
  if (v60 < 0 != v59)
  {
    goto LABEL_105;
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v60 >= 4)
  {
    v27 = 4;
  }

  else
  {
    v27 = v60;
  }

  v6 = (v108 + v27);
  *log = v108 + v27;
  v61 = *(v7 + 16);
  v159[0] = *v7;
  v159[1] = v61;
  v160[0] = *(v7 + 32);
  v3 = v151;
  *(v160 + 9) = *(v7 + 41);
  v62 = v7;
  v63 = v111;
  v64 = v10;
  v65 = v11;
  while (1)
  {
    v66 = *v65;
    if (v12 < *v64)
    {
      v67 = (*v63 + v38);
      if ((v67[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v66)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v159, specialized EvolutionTable.describe(state:));
    }

    v63 = (v66 + 32);
    v64 = (v66 + 44);
    v65 = (v66 + 48);
    v62 = v66;
  }

  v68 = *v62;
  if (!v68)
  {
    goto LABEL_114;
  }

  v69 = v68 + 24 * *v67;
  v70 = *(*v69 + 136);
  if (!v70 || (v6 >= v70 ? (v71 = v6 >= *(*v69 + 144)) : (v71 = 1), v71))
  {
    v72 = *(v7 + 16);
    v157[0] = *v7;
    v157[1] = v72;
    v158[0] = *(v7 + 32);
    *(v158 + 9) = *(v7 + 41);
    v73 = v7;
    v74 = v111;
    v75 = v10;
    v76 = v11;
    while (1)
    {
      v77 = *v76;
      if (v12 < *v75)
      {
        v78 = (*v74 + v38);
        if ((v78[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v77)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v157, specialized EvolutionTable.describe(state:));
      }

      v74 = (v77 + 32);
      v75 = (v77 + 44);
      v76 = (v77 + 48);
      v73 = v77;
    }

    v79 = *v73;
    if (v79)
    {
      *(*(v79 + 24 * *v78) + 41) = 1;
      goto LABEL_79;
    }

    goto LABEL_115;
  }

LABEL_79:
  if ((v27 + 3) < 7)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v4 = *v108;
  if (!readingDebug)
  {
    goto LABEL_103;
  }

  v80 = *(v7 + 16);
  v155[0] = *v7;
  v155[1] = v80;
  v156[0] = *(v7 + 32);
  *(v156 + 9) = *(v7 + 41);
  v81 = v111;
  while (1)
  {
    v82 = *v11;
    if (v12 < *v10)
    {
      v83 = (*v81 + v38);
      if ((v83[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v82)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v155, specialized EvolutionTable.describe(state:));
    }

    v81 = (v82 + 32);
    v10 = (v82 + 44);
    v11 = (v82 + 48);
    v7 = v82;
  }

  if (*v7)
  {
    if (((*(*(*v7 + 24 * *v83) + 48) >= 0) & v104) == 0 || *(v103 + 160) != 1)
    {
      goto LABEL_103;
    }

    v107 = *v107;
    v84 = *(v5 + 3);
    v152 = *(v5 + 1);
    v153 = v84;
    v154 = v5[5];
    LODWORD(v12) = *(v5 + 48);
    v151[0] = *(v5 + 49);
    *(v151 + 3) = *(v5 + 13);
    v11 = v5[7];
    v85 = *(v5 + 4);
    v10 = v5[11];
    v150 = v5[10];
    v149 = v85;
    LODWORD(v3) = *(v5 + 25);
    LODWORD(v108) = *(v5 + 24);
    v7 = v5[13];
    LOBYTE(v111) = *(v5 + 112);
    v86 = *(v5 + 113);
    v148 = *(v5 + 115);
    v147 = v86;
    v38 = *(v5 + 29);
    v87 = *(v5 + 15);
    v88 = *(v5 + 17);
    v89 = *(v5 + 19);
    v27 = v5[22];
    v146 = v5[21];
    v144 = v88;
    v145 = v89;
    v143 = v87;
    v90 = *log;
    v142 = *(log + 8);
    v141 = v90;
    LOBYTE(v6) = static os_log_type_t.default.getter();
    if (one-time initialization token for readingDebugLog == -1)
    {
LABEL_91:
      loga = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v6))
      {
        v105 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v105 = 136446722;
        v118 = v152;
        v119 = v153;
        v123 = v149;
        v133 = v143;
        v101 = v91;
        v140 = v91;
        if (v12)
        {
          v92 = 0;
        }

        else
        {
          v92 = v107;
        }

        v117 = v107;
        v120 = v154;
        LOBYTE(v121) = v12;
        *(&v121 + 1) = v151[0];
        HIDWORD(v121) = *(v151 + 3);
        v122 = v11;
        v124 = v150;
        v125 = v10;
        v126 = v108;
        v127 = v3;
        v128 = v7;
        v129 = v111;
        v130 = v147;
        v131 = v148;
        v132 = v38;
        v134 = v144;
        v135 = v145;
        v136 = v146;
        v137 = v27;
        v138 = v141;
        v139 = v142;
        v112 = xmmword_26C32DAD0;
        v113 = 0;
        v114 = 0;
        v115 = v27;
        LOBYTE(v116) = v92;
        HIBYTE(v116) = 1;
        v93 = Interpreter.Iterator.describe(state:)(&v112);
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v140);

        *(v105 + 4) = v95;
        *(v105 + 12) = 2050;
        v117 = v11;
        v118 = v149;
        *&v119 = v150;
        *(&v119 + 1) = v10;
        v120 = __PAIR64__(v3, v108);
        v121 = v7;
        LOBYTE(v122) = v111;
        if (v38 >= v3)
        {
          goto LABEL_97;
        }

        while ((v10[2 * v38 + 1] & 1) != 0)
        {
          do
          {
LABEL_97:
            if (!v7)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v38, 0, &v117, specialized EvolutionTable.describe(state:));
            }

            v11 = *v7;
            v10 = *(v7 + 32);
            v96 = *(v7 + 44);
            v7 = *(v7 + 48);
          }

          while (v38 >= v96);
        }

        if (v11)
        {
          *(v105 + 14) = *(v11[3 * v10[2 * v38]] + 48);
          *(v105 + 22) = 2082;
          v112 = xmmword_26C32DAD0;
          v113 = 1;
          v114 = 0;
          v115 = 0;
          v116 = 512;
          v97 = v102(&v112, v4);
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v140);

          *(v105 + 24) = v99;
          _os_log_impl(&dword_26C161000, loga, v6, "%{public}s\n m %{public}ld: %{public}s", v105, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v101, -1, -1);
          MEMORY[0x26D69EAB0](v105, -1, -1);
          goto LABEL_103;
        }

        goto LABEL_119;
      }

LABEL_103:
      result = (v106)(v5, v4);
      v5[20] = 0;
      *(v5 + 168) = 1;
      *(v5 + 43) = -1;
      return result;
    }

LABEL_108:
    swift_once();
    goto LABEL_91;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Interpreter.Iterator.replayTracepoint()()
{
  *(v0 + 184) = *(v0 + 120);
  v1 = *(v0 + 136);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 136) = v3;
    if (**(v0 + 176))
    {
      v4 = T_TracepointID.model(within:);
      v5 = T_TracepointID.describe(state:);
    }

    else
    {
      v4 = T_TracepointIDV0.model(within:);
      v5 = T_TracepointIDV0.describe(state:);
    }

    _s21SwiftUITracingSupport16TracepointIDLikePAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo02T_D4IDV0a_Tt0g5Tm(v0, v4, v5);
  }
}

const void *closure #1 in Interpreter.Iterator.iterate<A>()@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

uint64_t Interpreter.Iterator.iterate(size:)(uint64_t result)
{
  if ((~result & 6) == 0)
  {
    v4 = *(v1 + 72);
    v161 = *(v1 + 56);
    v3 = v161;
    v162 = v4;
    *(v163 + 9) = *(v1 + 97);
    v2 = (v1 + 56);
    v7 = *(v1 + 88);
    v5 = (v1 + 88);
    v6 = v7;
    v163[0] = *v5;
    v9 = v2 + 11;
    v8 = *(v2 + 11);
    v11 = (v2 + 3);
    v10 = *(v2 + 6);
    v12 = *(v2 + 15);
    v13 = 8 * v12;
    v150 = *(v2 + 16);
    v14 = v10;
    v15 = v7;
    v16 = v161;
    if (v12 >= v8)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v17 = (v15 + v13);
      if ((v17[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_4:
        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v16 = *v14;
        v15 = v14[4];
        v18 = *(v14 + 11);
        v14 = v14[6];
      }

      while (v12 >= v18);
    }

    if (!v16)
    {
      goto LABEL_202;
    }

    result = v16 + 24 * *v17;
    v51 = *(*result + 136);
    v52 = *(*result + 144);
    if (v12 >= v8)
    {
      goto LABEL_23;
    }

    while ((*(v6 + v13 + 4) & 1) != 0)
    {
      do
      {
LABEL_23:
        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v3 = *v10;
        v6 = v10[4];
        v53 = *(v10 + 11);
        v10 = v10[6];
      }

      while (v12 >= v53);
    }

    if (!v3)
    {
      goto LABEL_203;
    }

    result = v3 + 24 * *(v6 + 8 * v12);
    v54 = *(*result + 136);
    if (!v54)
    {
      goto LABEL_200;
    }

    if (v51)
    {
      v55 = v52 - v51;
    }

    else
    {
      v55 = 0;
    }

    v56 = v150 - v54;
    v57 = __OFSUB__(v55, v150 - v54);
    v58 = v55 - (v150 - v54);
    if (v58 < 0 != v57)
    {
      __break(1u);
    }

    else if ((v56 & 0x8000000000000000) == 0)
    {
      if (v58 >= 8)
      {
        v59 = 8;
      }

      else
      {
        v59 = v58;
      }

      v60 = v150 + v59;
      *(v154 + 184) = v150 + v59;
      v61 = v2[1];
      v158 = *v2;
      v159 = v61;
      v160[0] = v2[2];
      *(v160 + 9) = *(v2 + 41);
      v62 = (v2 + 3);
      v63 = v2 + 11;
      v64 = v5;
      for (i = v2; ; i = v66)
      {
        v66 = *v62;
        if (v12 < *v63)
        {
          v67 = (*v64 + v13);
          if ((v67[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v66)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v158, specialized EvolutionTable.describe(state:));
        }

        v64 = (v66 + 32);
        v63 = (v66 + 44);
        v62 = (v66 + 48);
      }

      if (!*i)
      {
        goto LABEL_204;
      }

      result = *i + 24 * *v67;
      v68 = *(*result + 136);
      if (!v68 || (v60 >= v68 ? (v69 = v60 >= *(*result + 144)) : (v69 = 1), v69))
      {
        v70 = v2[1];
        v155 = *v2;
        v156 = v70;
        v157[0] = v2[2];
        *(v157 + 9) = *(v2 + 41);
        while (1)
        {
          v71 = *v11;
          if (v12 < *v9)
          {
            v72 = (*v5 + v13);
            if ((v72[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v71)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v155, specialized EvolutionTable.describe(state:));
          }

          v5 = v71 + 2;
          v9 = v71 + 11;
          v11 = (v71 + 3);
          v2 = v71;
        }

        if (!*v2)
        {
          goto LABEL_207;
        }

        result = *v2 + 24 * *v72;
        *(*result + 41) = 1;
      }

      if ((v59 + 7) >= 0xF)
      {
        return *v150;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v19 = (v1 + 88);
  if ((result & 2) != 0)
  {
    v36 = (v1 + 56);
    v38 = *(v1 + 72);
    v161 = *(v1 + 56);
    v37 = v161;
    v162 = v38;
    v163[0] = *(v1 + 88);
    *(v163 + 9) = *(v1 + 97);
    v39 = *(v1 + 88);
    v41 = (v1 + 100);
    v40 = *(v1 + 100);
    v42 = (v36 + 3);
    v43 = *(v36 + 6);
    v44 = *(v36 + 15);
    v45 = 8 * v44;
    v152 = *(v36 + 16);
    v46 = v161;
    v47 = v39;
    v48 = v43;
    if (v44 >= v40)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v49 = (v47 + v45);
      if ((v49[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_17:
        if (!v48)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v46 = *v48;
        v47 = v48[4];
        v50 = *(v48 + 11);
        v48 = v48[6];
      }

      while (v44 >= v50);
    }

    if (!v46)
    {
      goto LABEL_208;
    }

    result = v46 + 24 * *v49;
    v86 = *(*result + 136);
    v87 = *(*result + 144);
    if (v44 >= v40)
    {
      goto LABEL_69;
    }

    while ((*(v39 + v45 + 4) & 1) != 0)
    {
      do
      {
LABEL_69:
        if (!v43)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v37 = *v43;
        v39 = v43[4];
        v88 = *(v43 + 11);
        v43 = v43[6];
      }

      while (v44 >= v88);
    }

    if (!v37)
    {
      goto LABEL_209;
    }

    result = v37 + 24 * *(v39 + 8 * v44);
    v89 = *(*result + 136);
    if (!v89)
    {
      goto LABEL_201;
    }

    if (v86)
    {
      v90 = v87 - v86;
    }

    else
    {
      v90 = 0;
    }

    v91 = v152 - v89;
    v57 = __OFSUB__(v90, v152 - v89);
    v92 = v90 - (v152 - v89);
    if (v92 < 0 == v57)
    {
      if ((v91 & 0x8000000000000000) == 0)
      {
        if (v92 >= 2)
        {
          v93 = 2;
        }

        else
        {
          v93 = v92;
        }

        v94 = v152 + v93;
        *(v154 + 184) = v152 + v93;
        v95 = v36[1];
        v158 = *v36;
        v159 = v95;
        v160[0] = v36[2];
        *(v160 + 9) = *(v36 + 41);
        v96 = (v36 + 3);
        v97 = v41;
        v98 = v19;
        for (j = v36; ; j = v100)
        {
          v100 = *v96;
          if (v44 < *v97)
          {
            v101 = (*v98 + v45);
            if ((v101[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v100)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v158, specialized EvolutionTable.describe(state:));
          }

          v98 = (v100 + 32);
          v97 = (v100 + 44);
          v96 = (v100 + 48);
        }

        if (!*j)
        {
          goto LABEL_210;
        }

        result = *j + 24 * *v101;
        v102 = *(*result + 136);
        if (!v102 || (v94 >= v102 ? (v103 = v94 >= *(*result + 144)) : (v103 = 1), v103))
        {
          v104 = v36[1];
          v155 = *v36;
          v156 = v104;
          v157[0] = v36[2];
          *(v157 + 9) = *(v36 + 41);
          while (1)
          {
            v105 = *v42;
            if (v44 < *v41)
            {
              v106 = (*v19 + v45);
              if ((v106[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v105)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v155, specialized EvolutionTable.describe(state:));
            }

            v19 = v105 + 2;
            v41 = v105 + 11;
            v42 = (v105 + 3);
            v36 = v105;
          }

          if (!*v36)
          {
            goto LABEL_211;
          }

          result = *v36 + 24 * *v106;
          *(*result + 41) = 1;
        }

        if ((v93 + 1) >= 3)
        {
          return *v152;
        }

        goto LABEL_193;
      }

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
      goto LABEL_197;
    }

LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v20 = (v1 + 56);
  v21 = (v1 + 100);
  v22 = (v1 + 104);
  if ((result & 4) == 0)
  {
    v23 = *(v1 + 72);
    v161 = *v20;
    v162 = v23;
    v163[0] = *(v1 + 88);
    *(v163 + 9) = *(v1 + 97);
    v24 = *(v1 + 56);
    v25 = *(v1 + 88);
    v26 = v1;
    v27 = *(v1 + 100);
    v28 = *(v26 + 116);
    v29 = 8 * v28;
    v30 = v24;
    v31 = *(v26 + 104);
    v32 = v25;
    v33 = v31;
    v151 = *(v26 + 184);
    if (v28 >= v27)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v34 = (v32 + v29);
      if ((v34[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_11:
        if (!v33)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v30 = *v33;
        v32 = v33[4];
        v35 = *(v33 + 11);
        v33 = v33[6];
      }

      while (v28 >= v35);
    }

    if (!v30)
    {
      goto LABEL_212;
    }

    result = v30 + 24 * *v34;
    v107 = *(*result + 136);
    v108 = *(*result + 144);
    if (v28 >= v27)
    {
      goto LABEL_111;
    }

    while ((*(v25 + v29 + 4) & 1) != 0)
    {
      do
      {
LABEL_111:
        if (!v31)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v24 = *v31;
        v25 = v31[4];
        v109 = *(v31 + 11);
        v31 = v31[6];
      }

      while (v28 >= v109);
    }

    if (!v24)
    {
      goto LABEL_214;
    }

    result = v24 + 24 * *(v25 + 8 * v28);
    v113 = *(*result + 136);
    if (!v113)
    {
      goto LABEL_205;
    }

    if (v107)
    {
      v114 = (v108 - v107);
    }

    else
    {
      v114 = 0;
    }

    v115 = &v151[-v113];
    v57 = __OFSUB__(v114, &v151[-v113]);
    v116 = v114 - &v151[-v113];
    if (v116 < 0 == v57)
    {
      if ((v115 & 0x8000000000000000) == 0)
      {
        if (v116 >= 1)
        {
          v116 = 1;
        }

        v117 = &v151[v116];
        *(v154 + 184) = &v151[v116];
        v118 = v20[1];
        v158 = *v20;
        v159 = v118;
        v160[0] = v20[2];
        *(v160 + 9) = *(v20 + 41);
        v119 = v20;
        v120 = v19;
        v121 = v21;
        v122 = v22;
        while (1)
        {
          v123 = *v122;
          if (v28 < *v121)
          {
            v124 = (*v120 + v29);
            if ((v124[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v123)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v158, specialized EvolutionTable.describe(state:));
          }

          v120 = (v123 + 32);
          v121 = (v123 + 44);
          v122 = (v123 + 48);
          v119 = v123;
        }

        v138 = *v119;
        if (!v138)
        {
          goto LABEL_216;
        }

        result = v138 + 24 * *v124;
        v139 = *(*result + 136);
        if (!v139 || (v117 >= v139 ? (v140 = v117 >= *(*result + 144)) : (v140 = 1), v140))
        {
          v141 = v20[1];
          v155 = *v20;
          v156 = v141;
          v157[0] = v20[2];
          *(v157 + 9) = *(v20 + 41);
          while (1)
          {
            v142 = *v22;
            if (v28 < *v21)
            {
              v143 = (*v19 + v29);
              if ((v143[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v142)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v155, specialized EvolutionTable.describe(state:));
            }

            v19 = (v142 + 32);
            v21 = (v142 + 44);
            v22 = (v142 + 48);
            v20 = v142;
          }

          if (!*v20)
          {
            goto LABEL_218;
          }

          result = *v20 + 24 * *v143;
          *(*result + 41) = 1;
        }

        if (v114 != v115)
        {
          return *v151;
        }

        goto LABEL_198;
      }

      goto LABEL_196;
    }

    goto LABEL_194;
  }

  v73 = *(v1 + 72);
  v161 = *v20;
  v162 = v73;
  v163[0] = *(v1 + 88);
  *(v163 + 9) = *(v1 + 97);
  v74 = *(v1 + 56);
  v75 = *(v1 + 88);
  v76 = v1;
  v77 = *(v1 + 100);
  v78 = *(v76 + 116);
  v79 = 8 * v78;
  v80 = v74;
  v81 = *(v76 + 104);
  v82 = v75;
  v83 = v81;
  v153 = *(v76 + 184);
  if (v78 >= v77)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v84 = (v82 + v79);
    if ((v84[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_59:
      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v161, specialized EvolutionTable.describe(state:));
      }

      v80 = *v83;
      v82 = v83[4];
      v85 = *(v83 + 11);
      v83 = v83[6];
    }

    while (v78 >= v85);
  }

  if (!v80)
  {
    goto LABEL_213;
  }

  result = v80 + 24 * *v84;
  v110 = *(*result + 136);
  v111 = *(*result + 144);
  if (v78 >= v77)
  {
    goto LABEL_118;
  }

  while ((*(v75 + v79 + 4) & 1) != 0)
  {
    do
    {
LABEL_118:
      if (!v81)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v161, specialized EvolutionTable.describe(state:));
      }

      v74 = *v81;
      v75 = v81[4];
      v112 = *(v81 + 11);
      v81 = v81[6];
    }

    while (v78 >= v112);
  }

  if (!v74)
  {
    goto LABEL_215;
  }

  result = v74 + 24 * *(v75 + 8 * v78);
  v125 = *(*result + 136);
  if (!v125)
  {
    goto LABEL_206;
  }

  if (v110)
  {
    v126 = v111 - v110;
  }

  else
  {
    v126 = 0;
  }

  v127 = v153 - v125;
  v57 = __OFSUB__(v126, v153 - v125);
  v128 = v126 - (v153 - v125);
  if (v128 < 0 != v57)
  {
    goto LABEL_195;
  }

  if ((v127 & 0x8000000000000000) != 0)
  {
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
    return result;
  }

  if (v128 >= 4)
  {
    v129 = 4;
  }

  else
  {
    v129 = v128;
  }

  v130 = v153 + v129;
  *(v154 + 184) = v153 + v129;
  v131 = v20[1];
  v158 = *v20;
  v159 = v131;
  v160[0] = v20[2];
  *(v160 + 9) = *(v20 + 41);
  v132 = v20;
  v133 = v19;
  v134 = v21;
  v135 = v22;
  while (1)
  {
    v136 = *v135;
    if (v78 < *v134)
    {
      v137 = (*v133 + v79);
      if ((v137[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v136)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v158, specialized EvolutionTable.describe(state:));
    }

    v133 = (v136 + 32);
    v134 = (v136 + 44);
    v135 = (v136 + 48);
    v132 = v136;
  }

  v144 = *v132;
  if (!v144)
  {
    goto LABEL_217;
  }

  result = v144 + 24 * *v137;
  v145 = *(*result + 136);
  if (!v145 || (v130 >= v145 ? (v146 = v130 >= *(*result + 144)) : (v146 = 1), v146))
  {
    v147 = v20[1];
    v155 = *v20;
    v156 = v147;
    v157[0] = v20[2];
    *(v157 + 9) = *(v20 + 41);
    while (1)
    {
      v148 = *v22;
      if (v78 < *v21)
      {
        v149 = (*v19 + v79);
        if ((v149[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v148)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v155, specialized EvolutionTable.describe(state:));
      }

      v19 = (v148 + 32);
      v21 = (v148 + 44);
      v22 = (v148 + 48);
      v20 = v148;
    }

    if (!*v20)
    {
      goto LABEL_219;
    }

    result = *v20 + 24 * *v149;
    *(*result + 41) = 1;
  }

  if ((v129 + 3) < 7)
  {
    goto LABEL_199;
  }

  return *v153;
}

Swift::Void __swiftcall Interpreter.Iterator.model(mode:size:)(Swift::UInt32 mode, Swift::Int size)
{
  v4 = *(v2 + 120);
  v5 = v4 + size;
  *(v2 + 116) = mode;
  v6 = (v2 + 56);
  v7 = *(v2 + 72);
  v117[0] = *(v2 + 56);
  v117[1] = v7;
  v118[0] = *(v2 + 88);
  v8 = (v2 + 88);
  v9 = (v2 + 100);
  v10 = (v2 + 104);
  v11 = 8 * mode;
  *(v118 + 9) = *(v2 + 97);
  v12 = (v2 + 56);
  v13 = (v2 + 88);
  v14 = (v2 + 100);
  v15 = (v2 + 104);
  while (1)
  {
    v16 = *v15;
    if (*v14 > mode)
    {
      v17 = (*v13 + v11);
      if ((v17[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v117, specialized EvolutionTable.describe(state:));
    }

    v13 = (v16 + 32);
    v14 = (v16 + 44);
    v15 = (v16 + 48);
    v12 = v16;
  }

  v18 = *v12;
  if (!v18)
  {
    goto LABEL_115;
  }

  v19 = *(v18 + 24 * *v17);
  *(v19 + 136) = v4;
  *(v19 + 144) = v5;
  if (*(v105 + 48))
  {
    if (*(v105 + 48) == 1)
    {
      if (*v105 != mode)
      {
        v20 = *(v2 + 72);
        v114 = *v6;
        v115 = v20;
        v116[0] = *(v2 + 88);
        *(v116 + 9) = *(v2 + 97);
        v21 = *(v105 + 56);
        v22 = *(v105 + 88);
        v23 = v21;
        v24 = *(v105 + 104);
        v25 = v22;
        v26 = v24;
        v104 = *(v105 + 184);
        if (*(v105 + 100) <= mode)
        {
          goto LABEL_13;
        }

LABEL_12:
        v27 = (v25 + v11);
        if (v27[1])
        {
LABEL_13:
          while (v26)
          {
            v23 = *v26;
            v25 = v26[4];
            v28 = *(v26 + 11);
            v26 = v26[6];
            if (v28 > mode)
            {
              goto LABEL_12;
            }
          }

LABEL_31:
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, &v114, specialized EvolutionTable.describe(state:));
        }

        if (!v23)
        {
          goto LABEL_120;
        }

        v45 = v23 + 24 * *v27;
        v46 = *(*v45 + 136);
        if (*(v105 + 100) <= mode)
        {
          goto LABEL_35;
        }

        while ((*(v22 + v11 + 4) & 1) != 0)
        {
          do
          {
LABEL_35:
            if (!v24)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, &v114, specialized EvolutionTable.describe(state:));
            }

            v21 = *v24;
            v22 = v24[4];
            v47 = *(v24 + 11);
            v24 = v24[6];
          }

          while (v47 <= mode);
        }

        if (!v21)
        {
          goto LABEL_121;
        }

        v48 = *(*(v21 + 24 * *(v22 + v11)) + 136);
        if (!v48)
        {
          goto LABEL_118;
        }

        v49 = *(*v45 + 144) - v46;
        if (!v46)
        {
          v49 = 0;
        }

        v50 = v104 - v48;
        v51 = v49 < v50;
        v52 = v49 - v50;
        if (v51)
        {
          goto LABEL_109;
        }

        v103 = v52;
        if (v50 < 0)
        {
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v53 = v6[1];
        v54 = v6[2];
        v112[0] = *v6;
        v112[1] = v53;
        v113[0] = v54;
        v55 = *v6;
        v56 = *v8;
        v57 = *v10;
        v58 = *v10;
        v59 = *v9;
        v60 = *v9;
        v61 = *v8;
        v62 = *v6;
        *(v113 + 9) = *(v6 + 41);
        if (v60 <= mode)
        {
          goto LABEL_47;
        }

        while (1)
        {
          v63 = (v61 + v11);
          if ((v63[1] & 1) == 0)
          {
            break;
          }

          do
          {
LABEL_47:
            if (!v58)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v112, specialized EvolutionTable.describe(state:));
            }

            v62 = *v58;
            v61 = v58[4];
            v64 = *(v58 + 11);
            v58 = v58[6];
          }

          while (v64 <= mode);
        }

        if (!v62)
        {
          goto LABEL_122;
        }

        v65 = v62 + 24 * *v63;
        v66 = *(*v65 + 136);
        if (v59 <= mode)
        {
          goto LABEL_54;
        }

        while ((*(v56 + v11 + 4) & 1) != 0)
        {
          do
          {
LABEL_54:
            if (!v57)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v112, specialized EvolutionTable.describe(state:));
            }

            v55 = *v57;
            v56 = v57[4];
            v67 = *(v57 + 11);
            v57 = v57[6];
          }

          while (v67 <= mode);
        }

        if (!v55)
        {
          goto LABEL_123;
        }

        v68 = *(*(v55 + 24 * *(v56 + v11)) + 136);
        if (!v68)
        {
          goto LABEL_119;
        }

        v69 = *(*v65 + 144) - v66;
        if (!v66)
        {
          v69 = 0;
        }

        v70 = v104 - v68;
        v71 = v69 - v70;
        if (v69 < v70)
        {
          goto LABEL_111;
        }

        if (v70 < 0)
        {
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
          return;
        }

        if (v103 >= v71)
        {
          v72 = v69 - v70;
        }

        else
        {
          v72 = v103;
        }

        v73 = v104 + v72;
        *(v105 + 184) = v104 + v72;
        v74 = v6[1];
        v110[0] = *v6;
        v110[1] = v74;
        v111[0] = v6[2];
        *(v111 + 9) = *(v6 + 41);
        v75 = v10;
        v76 = v9;
        v77 = v8;
        for (i = v6; ; i = v79)
        {
          v79 = *v75;
          if (*v76 > mode)
          {
            v80 = (*v77 + v11);
            if ((v80[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v79)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v110, specialized EvolutionTable.describe(state:));
          }

          v77 = (v79 + 32);
          v76 = (v79 + 44);
          v75 = (v79 + 48);
        }

        if (!*i)
        {
          goto LABEL_124;
        }

        v81 = *i + 24 * *v80;
        v82 = *(*v81 + 136);
        if (!v82 || (v73 >= v82 ? (v83 = v73 >= *(*v81 + 144)) : (v83 = 1), v83))
        {
          v84 = v6[1];
          v108[0] = *v6;
          v108[1] = v84;
          v109[0] = v6[2];
          *(v109 + 9) = *(v6 + 41);
          v85 = v10;
          v86 = v9;
          v87 = v8;
          for (j = v6; ; j = v89)
          {
            v89 = *v85;
            if (*v86 > mode)
            {
              v90 = (*v87 + v11);
              if ((v90[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v89)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v108, specialized EvolutionTable.describe(state:));
            }

            v87 = (v89 + 32);
            v86 = (v89 + 44);
            v85 = (v89 + 48);
          }

          if (!*j)
          {
            goto LABEL_125;
          }

          *(*(*j + 24 * *v90) + 41) = 1;
        }

        if (v103 > v71)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_89;
    }
  }

  else
  {
    v29 = *(v105 + 1);
    if (v29 != 1)
    {
      if (v29 == 5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_31;
      }

      goto LABEL_89;
    }
  }

  v30 = *(v105 + 176);
  v31 = (v30 + 40);
  v32 = *(v30 + 56);
  v114 = *(v30 + 40);
  v115 = v32;
  v116[0] = *(v30 + 72);
  *(v116 + 9) = *(v30 + 81);
  v33 = (v30 + 72);
  v34 = (v30 + 84);
  v35 = (v30 + 88);
  while (1)
  {
    v36 = *v35;
    if (*v34 > mode)
    {
      v37 = (*v33 + v11);
      if ((v37[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v36)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, &v114, specialized EvolutionTable.describe(state:));
    }

    v33 = (v36 + 32);
    v34 = (v36 + 44);
    v35 = (v36 + 48);
    v31 = v36;
  }

  v38 = *v31;
  if (!v38)
  {
    goto LABEL_117;
  }

  v39 = (v38 + 24 * *v37);
  v40 = *v39;
  v41 = *(*v39 + 44);
  if (v41 == *(*v39 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v41);
  }

  v42 = *(v40 + 32);
  if (!v42)
  {
    goto LABEL_114;
  }

  v43 = *(v40 + 44);
  v44 = (v42 + 16 * v43);
  *v44 = v4;
  v44[1] = v5;
  if (v43 == -1)
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  *(v40 + 44) = v43 + 1;
LABEL_89:
  v91 = v6[1];
  v106[0] = *v6;
  v106[1] = v91;
  v107[0] = v6[2];
  *(v107 + 9) = *(v6 + 41);
  while (1)
  {
    v92 = *v10;
    if (*v9 > mode)
    {
      v93 = (*v8 + v11);
      if ((v93[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v92)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v106, specialized EvolutionTable.describe(state:));
    }

    v8 = (v92 + 32);
    v9 = (v92 + 44);
    v10 = (v92 + 48);
    v6 = v92;
  }

  if (!*v6)
  {
    goto LABEL_116;
  }

  v94 = *v6 + 24 * *v93;
  v95 = *v94;
  v96 = *(*v94 + 96);
  if (v96 == 2 || (v96 & 0x100) == 0)
  {
    return;
  }

  v97 = *(v95 + 72);
  v98 = *(v95 + 88);
  if (v97)
  {
    v99 = *(v95 + 80) - v97;
  }

  else
  {
    v99 = 0;
  }

  v100 = v99 - v98;
  if (__OFSUB__(v99, v98))
  {
    goto LABEL_108;
  }

  if (v100 >= 1)
  {
    *(&v102 + 1) = *(v95 + 104) & 1;
    *&v102 = *(*v94 + 96);
    v101 = v102 >> 32;

    Interpreter.Iterator.model(attachment:size:)(v101, v100);
  }
}

uint64_t Interpreter.Iterator.dispatch(_:context:flags:)(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = (a2 + 56);
  v8 = *(a2 + 72);
  v165[0] = *(a2 + 56);
  v165[1] = v8;
  v166[0] = *(a2 + 88);
  *(v166 + 9) = *(a2 + 97);
  v9 = (a2 + 88);
  v10 = (a2 + 100);
  v11 = (a2 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10 > a1)
    {
      v13 = (*v9 + 8 * a1);
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, 0, v165, specialized EvolutionTable.describe(state:));
    }

    v9 = (v12 + 32);
    v10 = (v12 + 44);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_168;
  }

  v15 = v14 + 24 * *v13;
  v4 = *(*v15 + 24);
  v142 = *(*v15 + 16);
  v16 = *(*v15 + 33);
  v17 = *(*v15 + 64);
  if (*(*v15 + 32))
  {
    v18 = Interpreter.Iterator.iterate(size:)(a3);
    v19 = *(v5 + 29);
    v20 = v5 + 7;
    v21 = *(v5 + 9);
    v163[0] = *(v5 + 7);
    v163[1] = v21;
    v164[0] = *(v5 + 11);
    *(v164 + 9) = *(v5 + 97);
    v22 = v5 + 11;
    v23 = v5 + 25;
    v24 = v5 + 13;
    while (1)
    {
      v25 = *v24;
      if (v19 < *v23)
      {
        v26 = (*v22 + 8 * v19);
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v19, 0, v163, specialized EvolutionTable.describe(state:));
      }

      v22 = (v25 + 32);
      v23 = (v25 + 44);
      v24 = (v25 + 48);
      v20 = v25;
    }

    v27 = *v20;
    if (!v27)
    {
      goto LABEL_174;
    }

    v28 = v27 + 24 * *v26;
    v29 = *(*v28 + 32);
    v64 = __CFADD__(v29, v18);
    v30 = v29 + v18;
    if (v64)
    {
      goto LABEL_159;
    }

    *(*v28 + 32) = v30;
  }

  v139 = v16;
  v140 = v17;
  v141 = v5;
  if (v6)
  {
    v137 = v4;
    v31 = v5 + 7;
    v33 = *(v5 + 29);
    v34 = *(v5 + 9);
    v161[0] = *(v5 + 7);
    v32 = *&v161[0];
    v161[1] = v34;
    *(v162 + 9) = *(v5 + 97);
    v35 = v5 + 11;
    v5 = v5[11];
    v162[0] = *v35;
    v36 = v31 + 11;
    v4 = *(v31 + 11);
    v38 = (v31 + 6);
    v37 = v31[6];
    v39 = v33;
    v138 = v31[16];
    v40 = *&v161[0];
    v41 = v5;
    v42 = v37;
    if (v33 >= v4)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v43 = &v41[v39];
      if ((v43[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_21:
        if (!v42)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v161, specialized EvolutionTable.describe(state:));
        }

        v40 = *v42;
        v41 = v42[4];
        v44 = *(v42 + 11);
        v42 = v42[6];
      }

      while (v33 >= v44);
    }

    if (!v40)
    {
      goto LABEL_175;
    }

    v45 = v40 + 24 * *v43;
    v46 = *(*v45 + 136);
    if (v33 >= v4)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v47 = &v5[v39];
      if ((v5[v39] & 0x100000000) == 0)
      {
        break;
      }

      do
      {
LABEL_28:
        if (!v37)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v161, specialized EvolutionTable.describe(state:));
        }

        v32 = *v37;
        v5 = v37[4];
        v4 = *(v37 + 11);
        v37 = v37[6];
      }

      while (v33 >= v4);
    }

    if (!v32)
    {
      goto LABEL_176;
    }

    v5 = v141;
    v4 = v137;
    v48 = *(*(v32 + 24 * *v47) + 136);
    if (!v48)
    {
      goto LABEL_167;
    }

    if (v46)
    {
      v49 = *(*v45 + 144) - v46;
    }

    else
    {
      v49 = 0;
    }

    v50 = v138 - v48;
    v51 = __OFSUB__(v49, v138 - v48);
    v52 = v49 - (v138 - v48);
    if (v52 < 0 != v51)
    {
      goto LABEL_160;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      if (a2)
      {
        goto LABEL_183;
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
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
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v52 >= 4)
    {
      v53 = 4;
    }

    else
    {
      v53 = v52;
    }

    v54 = v138 + v53;
    v141[23] = v138 + v53;
    v55 = *(v31 + 1);
    v159[0] = *v31;
    v159[1] = v55;
    v160[0] = *(v31 + 2);
    *(v160 + 9) = *(v31 + 41);
    v56 = v31 + 6;
    v57 = v31 + 11;
    v58 = v35;
    for (i = v31; ; i = v60)
    {
      v60 = *v56;
      if (v33 < *v57)
      {
        v61 = (*v58 + v39 * 8);
        if ((v61[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v60)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v159, specialized EvolutionTable.describe(state:));
      }

      v58 = (v60 + 32);
      v57 = (v60 + 44);
      v56 = (v60 + 48);
    }

    if (!*i)
    {
      goto LABEL_177;
    }

    v62 = *i + 24 * *v61;
    v63 = *(*v62 + 136);
    if (!v63 || (v54 >= v63 ? (v64 = v54 >= *(*v62 + 144)) : (v64 = 1), v64))
    {
      v65 = *(v31 + 1);
      v157[0] = *v31;
      v157[1] = v65;
      v158[0] = *(v31 + 2);
      *(v158 + 9) = *(v31 + 41);
      v66 = v31 + 6;
      v67 = v31 + 11;
      v68 = v35;
      for (j = v31; ; j = v70)
      {
        v70 = *v66;
        if (v33 < *v67)
        {
          v71 = (*v68 + v39 * 8);
          if ((v71[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v70)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v157, specialized EvolutionTable.describe(state:));
        }

        v68 = (v70 + 32);
        v67 = (v70 + 44);
        v66 = (v70 + 48);
      }

      if (!*j)
      {
        goto LABEL_181;
      }

      *(*(*j + 24 * *v71) + 41) = 1;
    }

    if ((v53 + 3) < 7)
    {
      goto LABEL_162;
    }

    v72 = *v138;
    *(v141 + 40) = v33;
    *(v141 + 41) = 1;
    *(v141 + 168) = 0;
    *(v141 + 43) = v72;
    v73 = *(v31 + 1);
    v155[0] = *v31;
    v155[1] = v73;
    v156[0] = *(v31 + 2);
    *(v156 + 9) = *(v31 + 41);
    while (1)
    {
      v74 = *v38;
      if (v33 < *v36)
      {
        v75 = (*v35 + v39 * 8);
        if ((v75[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v155, specialized EvolutionTable.describe(state:));
      }

      v35 = v74 + 4;
      v36 = v74 + 11;
      v38 = (v74 + 6);
      v31 = v74;
    }

    v76 = *v31;
    if (!*v31)
    {
      goto LABEL_178;
    }

    LODWORD(v17) = v140;
    if (*(*(v76 + 24 * *v75) + 68) < v72)
    {
      goto LABEL_163;
    }
  }

  v77 = v5 + 7;
  v78 = *(v5 + 9);
  v153[0] = *(v5 + 7);
  v153[1] = v78;
  v154[0] = *(v5 + 11);
  v79 = v5 + 11;
  v80 = v5 + 25;
  v81 = v5 + 13;
  v82 = *(v5 + 29);
  v83 = 8 * v82;
  *(v154 + 9) = *(v5 + 97);
  v84 = v5 + 7;
  v85 = v5 + 11;
  v86 = v5 + 25;
  v87 = v5 + 13;
  while (1)
  {
    v88 = *v87;
    if (v82 < *v86)
    {
      v89 = (*v85 + v83);
      if ((v89[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v88)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v153, specialized EvolutionTable.describe(state:));
    }

    v85 = (v88 + 32);
    v86 = (v88 + 44);
    v87 = (v88 + 48);
    v84 = v88;
  }

  v90 = *v84;
  if (!v90)
  {
    goto LABEL_169;
  }

  v91 = *(*(v90 + 24 * *v89) + 41) != 1 || v17 == 0;
  a2 = v142;
  if (!v91)
  {
    goto LABEL_164;
  }

  v92 = v139;
  if (v17 != 0xFFFF)
  {
    v92 = 0;
  }

  if (v92)
  {
    while (1)
    {
LABEL_182:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_183:
      (*(v4 + 48))(v5);
    }
  }

  if (!*(v5 + 48))
  {
    if (!v142)
    {
      goto LABEL_94;
    }

    if (*(v5 + 1) << 8 != 1280)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  if (*(v5 + 48) != 1)
  {
    if (!v142)
    {
      goto LABEL_94;
    }

LABEL_101:
    LODWORD(v82) = a2;
    (*(v4 + 40))(v5);
    v103 = *(v5 + 9);
    v150 = *v77;
    v151 = v103;
    v152[0] = *(v5 + 11);
    *(v152 + 9) = *(v5 + 97);
    v104 = *(v5 + 29);
    while (1)
    {
      v105 = *v81;
      if (v104 < *v80)
      {
        v106 = (*v79 + 8 * v104);
        if ((v106[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v105)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v104, 0, &v150, specialized EvolutionTable.describe(state:));
      }

      v79 = (v105 + 32);
      v80 = (v105 + 44);
      v81 = (v105 + 48);
      v77 = v105;
    }

    if (!*v77)
    {
      goto LABEL_179;
    }

    v131 = *v106;
    v126 = *(*(*v77 + 24 * v131) + 136);
    if (v126)
    {
      return 1;
    }

    __break(1u);
    goto LABEL_145;
  }

  if (v142)
  {
LABEL_93:
    type metadata accessor for T_AnyAttachmentV0(0);
    a2 = v142;
    if (v142 != v93)
    {
      goto LABEL_94;
    }

    goto LABEL_101;
  }

LABEL_94:
  v94 = *(v5 + 9);
  v150 = *v77;
  v151 = v94;
  v152[0] = *(v5 + 11);
  *(v152 + 9) = *(v5 + 97);
  v95 = v5[7];
  v96 = v5[11];
  v97 = v5;
  v4 = *(v5 + 25);
  v98 = v95;
  v5 = v5[13];
  v99 = v96;
  v100 = v5;
  v143 = v97[23];
  if (v82 >= v4)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v101 = (v99 + v83);
    if ((v101[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_96:
      if (!v100)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, &v150, specialized EvolutionTable.describe(state:));
      }

      v98 = *v100;
      v99 = v100[4];
      v102 = *(v100 + 11);
      v100 = v100[6];
    }

    while (v82 >= v102);
  }

  if (!v98)
  {
    goto LABEL_170;
  }

  v107 = v98 + 24 * *v101;
  v108 = *(*v107 + 136);
  if (v82 >= v4)
  {
    goto LABEL_110;
  }

  while ((*(v96 + v83 + 4) & 1) != 0)
  {
    do
    {
LABEL_110:
      if (!v5)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, &v150, specialized EvolutionTable.describe(state:));
      }

      v95 = *v5;
      v96 = v5[4];
      v4 = *(v5 + 11);
      v5 = v5[6];
    }

    while (v82 >= v4);
  }

  if (!v95)
  {
    goto LABEL_171;
  }

  v109 = *(*(v95 + 24 * *(v96 + 8 * v82)) + 136);
  if (!v109)
  {
    goto LABEL_166;
  }

  if (v108)
  {
    v110 = *(*v107 + 144) - v108;
  }

  else
  {
    v110 = 0;
  }

  v111 = v143 - v109;
  v51 = __OFSUB__(v110, v143 - v109);
  v112 = v110 - (v143 - v109);
  if (v112 < 0 != v51)
  {
    __break(1u);
    goto LABEL_157;
  }

  if (v111 < 0)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  if (v112 >= v140)
  {
    v112 = v140;
  }

  v113 = v143 + v112;
  v141[23] = v143 + v112;
  v114 = v77[1];
  v148[0] = *v77;
  v148[1] = v114;
  v149[0] = v77[2];
  *(v149 + 9) = *(v77 + 41);
  v115 = v77;
  v116 = v79;
  v117 = v80;
  v118 = v81;
  while (1)
  {
    v119 = *v118;
    if (v82 < *v117)
    {
      v120 = (*v116 + v83);
      if ((v120[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v119)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v148, specialized EvolutionTable.describe(state:));
    }

    v116 = (v119 + 32);
    v117 = (v119 + 44);
    v118 = (v119 + 48);
    v115 = v119;
  }

  v121 = *v115;
  if (!v121)
  {
    goto LABEL_172;
  }

  v122 = v121 + 24 * *v120;
  v123 = *(*v122 + 136);
  if (!v123 || (v113 >= v123 ? (v124 = v113 >= *(*v122 + 144)) : (v124 = 1), v124))
  {
    v125 = v77[1];
    v146[0] = *v77;
    v146[1] = v125;
    v147[0] = v77[2];
    *(v147 + 9) = *(v77 + 41);
    v126 = v77;
    v127 = v79;
    v128 = v80;
    v129 = v81;
    while (1)
    {
      v130 = *v129;
      if (v82 < *v128)
      {
        v131 = (*v127 + v83);
        if ((v131[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v130)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v146, specialized EvolutionTable.describe(state:));
      }

      v127 = (v130 + 32);
      v128 = (v130 + 44);
      v129 = (v130 + 48);
      v126 = v130;
    }

LABEL_145:
    v132 = *v126;
    if (!v132)
    {
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    *(*(v132 + 24 * *v131) + 41) = 1;
  }

  v133 = v77[1];
  v144[0] = *v77;
  v144[1] = v133;
  v145[0] = v77[2];
  *(v145 + 9) = *(v77 + 41);
  while (1)
  {
    v134 = *v81;
    if (v82 < *v80)
    {
      v135 = (*v79 + v83);
      if ((v135[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v134)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v144, specialized EvolutionTable.describe(state:));
    }

    v79 = (v134 + 32);
    v80 = (v134 + 44);
    v81 = (v134 + 48);
    v77 = v134;
  }

  if (!*v77)
  {
    goto LABEL_173;
  }

  if (!*(*(*v77 + 24 * *v135) + 136))
  {
    goto LABEL_158;
  }

  return 1;
}

uint64_t Interpreter.Iterator.dispatchAbstractions(for:)(_DWORD *a1)
{
  if (v1[48])
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6 = *(v1 + 22);
  v7 = *v1;
  if (v7 >= *(v6 + 116))
  {
    goto LABEL_55;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
    goto LABEL_59;
  }

  v4 = a1;
  v9 = *(*(v8 + 8 * v7) + 8);
  if (*(v9 + 44) <= a1)
  {
    goto LABEL_56;
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
    goto LABEL_60;
  }

  v11 = (v10 + (a1 << 7));
  v12 = v11[1];
  v82 = *v11;
  v83 = v12;
  v13 = v11[5];
  v86 = v11[4];
  v87 = v13;
  v14 = v11[7];
  v88 = v11[6];
  v89 = v14;
  v15 = v11[3];
  v84 = v11[2];
  v85 = v15;
  LOBYTE(v80[0]) = BYTE8(v83);
  v16 = HeterogeneousBuffer.type(at:)(0, *(&v82 + 1), v83, SBYTE8(v83), v84);
  v17 = swift_conformsToProtocol2();
  if (!v17)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v18 = v17;
  v72 = v4;
  v19 = HeterogeneousBuffer.index(after:)(0, *(&v82 + 1), v83, SBYTE8(v83), v84);
  LOBYTE(v80[0]) = BYTE8(v83);
  v20 = HeterogeneousBuffer.type(at:)(v19, *(&v82 + 1), v83, SBYTE8(v83), v84);
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v20, &v82, v16, v18, v21, v75);
  v2 = (v1 + 56);
  v22 = *(v1 + 72);
  v80[0] = *(v1 + 56);
  v80[1] = v22;
  v81[0] = *(v1 + 88);
  v3 = v1 + 72;
  v4 = v1 + 84;
  v5 = (v1 + 104);
  v71 = v1;
  *(v81 + 9) = *(v1 + 97);
  v23 = (v1 + 56);
  v24 = (v1 + 72);
  v25 = v1 + 84;
  v26 = (v1 + 104);
  while (1)
  {
    v27 = *v26;
    if (*v25 > 1u)
    {
      v28 = *v24;
      if ((*(v28 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v80, specialized EvolutionTable.describe(state:));
    }

    v24 = (v27 + 16);
    v25 = (v27 + 28);
    v26 = (v27 + 48);
    v23 = v27;
  }

  v29 = *v23;
  if (!v29)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v30 = *(*(v29 + 24 * *(v28 + 8)) + 112);
  if (!v30)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v31 = **(v30 + 88);
  if (!*(v31 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v75), (v33 & 1) == 0))
  {
    if (one-time initialization token for eventAbstractions == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

  v3 = v71;
  v34 = v72;
  while (1)
  {
    v60 = *(*(v31 + 56) + 8 * v32);
    v61 = *(v60 + 16);

    v62 = (v60 + 48);
    v2 = -v61;
    v63 = -1;
    while (1)
    {
      v64 = (v2 + v63);
      if (v2 + v63 == -1)
      {
LABEL_53:

        return v64 != -1;
      }

      if (++v63 >= *(v60 + 16))
      {
        break;
      }

      v65 = v62 + 24;
      v66 = *(v62 - 2);
      v67 = *(v62 - 1);
      v74 = *v62;
      v68 = (*(v67 + 64))(v34, v3, &v74);
      v62 = v65;
      if (v68)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_20:
    swift_beginAccess();
    v35 = static Interpreter.eventAbstractions;
    v36 = *(static Interpreter.eventAbstractions + 2);
    if (v36)
    {
      v70 = v2;

      v37 = MEMORY[0x277D84F90];
      v38 = 32;
      do
      {
        v73 = *&v35[v38];
        (*(*&v35[v38 + 8] + 48))(v78, v72, v71);
        v40 = v78[0];
        if (LOBYTE(v78[0]))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
          }

          v42 = *(v37 + 2);
          v41 = *(v37 + 3);
          if (v42 >= v41 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
          }

          *(v37 + 2) = v42 + 1;
          v39 = &v37[24 * v42];
          *(v39 + 2) = v73;
          v39[48] = v40;
        }

        v38 += 16;
        --v36;
      }

      while (v36);

      v2 = v70;
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    v43 = *(v2 + 16);
    v78[0] = *v2;
    v78[1] = v43;
    v79[0] = *(v2 + 32);
    *(v79 + 9) = *(v2 + 41);
    v44 = v2;
    v45 = v3;
    v46 = v4;
    v47 = v5;
    while (1)
    {
      v48 = *v47;
      if (*v46 > 1u)
      {
        v49 = *v45;
        if ((*(v49 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v48)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v78, specialized EvolutionTable.describe(state:));
      }

      v45 = (v48 + 16);
      v46 = (v48 + 28);
      v47 = (v48 + 48);
      v44 = v48;
    }

    v50 = *v44;
    if (!v50)
    {
      break;
    }

    v51 = *(*(v50 + 24 * *(v49 + 8)) + 112);
    if (!v51)
    {
      goto LABEL_64;
    }

    v52 = *(v51 + 88);
    v53 = *v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76[0] = *v52;
    *v52 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v75, isUniquelyReferenced_nonNull_native);
    *v52 = *&v76[0];
    v55 = *(v2 + 16);
    v76[0] = *v2;
    v76[1] = v55;
    v77[0] = *(v2 + 32);
    *(v77 + 9) = *(v2 + 41);
    while (1)
    {
      v56 = *v5;
      if (*v4 > 1u && (*(*v3 + 12) & 1) == 0)
      {
        break;
      }

      if (!v56)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v76, specialized EvolutionTable.describe(state:));
      }

      v3 = (v56 + 16);
      v4 = (v56 + 28);
      v5 = (v56 + 48);
      v2 = v56;
    }

    if (!*v2)
    {
      goto LABEL_68;
    }

    v57 = *(*v3 + 8);
    v3 = v71;
    v34 = v72;
    v58 = *(*(*v2 + 24 * v57) + 112);
    if (!v58)
    {
      goto LABEL_65;
    }

    v31 = **(v58 + 88);
    if (*(v31 + 16))
    {
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if (v59)
      {
        continue;
      }
    }

    goto LABEL_69;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.relate(prior:)(uint64_t result)
{
  if (v1[48])
  {
    goto LABEL_53;
  }

  v2 = v1;
  v3 = *(v1 + 22);
  v4 = *v1;
  if (v4 >= *(v3 + 116))
  {
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
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  if (*(v6 + 44) <= result)
  {
    goto LABEL_43;
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v68 = result;
  v67 = result;
  v8 = (v7 + (result << 7));
  v9 = v8[1];
  v77 = *v8;
  v78 = v9;
  v10 = v8[5];
  v81 = v8[4];
  v82 = v10;
  v11 = v8[7];
  v83 = v8[6];
  v84 = v11;
  v12 = v8[3];
  v79 = v8[2];
  v80 = v12;
  LOBYTE(v73) = BYTE8(v78);
  v13 = HeterogeneousBuffer.type(at:)(0, *(&v77 + 1), v78, SBYTE8(v78), v79);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14 = result;
  v15 = HeterogeneousBuffer.index(after:)(0, *(&v77 + 1), v78, SBYTE8(v78), v79);
  LOBYTE(v73) = BYTE8(v78);
  v16 = HeterogeneousBuffer.type(at:)(v15, *(&v77 + 1), v78, SBYTE8(v78), v79);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v16, &v77, v13, v14, result, v70);
  v17 = Interpreter.Iterator.control.read(v71);
  v19 = v18[3];
  v21 = *v18;
  v20 = v18[1];
  v75 = v18[2];
  v76 = v19;
  v73 = v21;
  v74 = v20;
  v22 = Interpreter.Control.events.read(v69);
  v24 = *(v23 + 16);
  if (!*(v24 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v70), (v26 & 1) == 0))
  {
    (v22)(v69, 0);
    result = (v17)(v71, 0);
    v28 = v68;
LABEL_33:
    v54 = (v2 + 56);
    v55 = *(v2 + 72);
    v71[0] = *(v2 + 56);
    v71[1] = v55;
    v72[0] = *(v2 + 88);
    *(v72 + 9) = *(v2 + 97);
    v56 = (v2 + 72);
    v57 = v2 + 84;
    v58 = (v2 + 104);
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
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v71, specialized EvolutionTable.describe(state:));
      }

      v56 = (v59 + 16);
      v57 = (v59 + 28);
      v58 = (v59 + 48);
      v54 = v59;
    }

    v61 = *v54;
    if (!v61)
    {
      goto LABEL_59;
    }

    result = v61 + 24 * *v60;
    v62 = *(*result + 112);
    if (v62)
    {
      v63 = *(v62 + 32);
      v64 = *(v63 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = *(v63 + 16);
      *(v63 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v70, isUniquelyReferenced_nonNull_native);
      v66 = *(v63 + 16);
      *(v63 + 16) = v69[0];
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v27 = *(*(v24 + 56) + 4 * v25);
  (v22)(v69, 0);
  result = (v17)(v71, 0);
  v28 = v68;
  if (v2[48])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v29 = *v2;
  if (v29 >= *(v3 + 116))
  {
    goto LABEL_44;
  }

  v30 = *(v3 + 104);
  if (!v30)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v31 = *(*(v30 + 8 * v29) + 8);
  v32 = *(v31 + 44);
  if (v27 >= v32)
  {
    goto LABEL_45;
  }

  v33 = *(v31 + 32);
  if (!v33)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v32 <= v68)
  {
    goto LABEL_46;
  }

  v34 = (v33 + (v27 << 7));
  v35 = (v33 + (v67 << 7));
  v36 = *v35;
  v37 = v34[31];
  if (v37 == v34[30])
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v34 + 14);
  if (!v38)
  {
    goto LABEL_63;
  }

  v39 = v34[31];
  v40 = v38 + 8 * v39;
  *v40 = -24320;
  *(v40 + 4) = v36;
  if (v39 == -1)
  {
    goto LABEL_47;
  }

  v34[31] = v39 + 1;
  v41 = *v34;
  v42 = v35[31];
  if (v42 == v35[30])
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v42);
  }

  v43 = *(v35 + 14);
  if (!v43)
  {
    goto LABEL_64;
  }

  v44 = v35[31];
  v45 = v43 + 8 * v44;
  *v45 = 24832;
  *(v45 + 4) = v41;
  if (v44 == -1)
  {
    goto LABEL_48;
  }

  v35[31] = v44 + 1;
  if (v2[48])
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v46 = *v2;
  if (v46 >= *(v3 + 116))
  {
    goto LABEL_49;
  }

  v47 = *(v3 + 104);
  if (!v47)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v48 = *(*(v47 + 8 * v46) + 8);
  v49 = *(v48 + 44);
  if (v27 >= v49)
  {
    goto LABEL_50;
  }

  v50 = *(v48 + 32);
  if (v50)
  {
    v51 = *(v50 + (v27 << 7) + 104);
    v52 = __CFADD__(v51, 1);
    v53 = v51 + 1;
    if (!v52)
    {
      if (v49 > v68)
      {
        *(v50 + (v67 << 7) + 104) = v53;
        goto LABEL_33;
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    v12 = *(v9 + 24);
    v13 = *(v9 + 8);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 24) = v12;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3 - a2;
    if (!a2)
    {
      v3 = 0;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

unint64_t specialized Collection<>.binarySearch(for:)(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  result = a2 + v5 / 2;
  if (__OFADD__(a2, v5 / 2))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = HIDWORD(a5);
  if (HIDWORD(a5) < a2 || v7 < a3 || result > v7)
  {
    goto LABEL_22;
  }

  if (result >= a3)
  {
    return 0;
  }

  if (result < a2)
  {
    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v8 = *(a4 + 32 * result);
  if (v8 != v6 && v5 != 1)
  {
    if (v8 <= v6)
    {
      a2 = result + 1;
    }

    else
    {
      a3 = a2 + v5 / 2;
    }

    return specialized Collection<>.binarySearch(for:)(v6, a2, a3);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>);
  }

  return result;
}

__n128 sub_26C266E44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v3;
  v4 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v4;
  v5 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v5;
  v6 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v6;
  v7 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 sub_26C266E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Interpreter.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 193))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Interpreter.Iterator.Kind(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Interpreter.Iterator.Kind(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.Mode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.AttachmentBuffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator.AttachmentBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Interpreter.Iterator.AddressMap()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized Interpreter.Iterator.AttachmentBuffer.init(code:byteCount:buffer:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = result;
  if (!a3)
  {
    if (a2 >= 1)
    {
      result = swift_slowAlloc();
      a3 = result;
      v9 = 0;
      a4 = (result + a2);
LABEL_10:
      v13 = 1;
      goto LABEL_11;
    }

    v9 = 0;
    if (!a2)
    {
      v13 = 0;
      a3 = 0;
      a4 = 0;
      goto LABEL_11;
    }

LABEL_9:
    a4 = (a2 - 1);
    a3 = -1;
    goto LABEL_10;
  }

  v9 = &a4[-a3];
  if (&a4[-a3] >= a2)
  {
    if (v9 == a2)
    {
      v13 = 0;
      v9 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v11 = a3;
  v12 = swift_slowAlloc();
  result = memmove(v12, v11, v9);
  a4 = &v12[a2];
  v13 = 1;
  a3 = v12;
LABEL_11:
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v9;
  *(a6 + 24) = a5 & 1;
  *(a6 + 25) = v13;
  *(a6 + 28) = v7;
  *(a6 + 32) = BYTE4(v7) & 1;
  return result;
}

uint64_t KTraceFile_Chunk.pointer.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 8))(a1, a2);
  v8 = *v7;

  outlined destroy of _Chunk_Fields(v7, type metadata accessor for _Chunk_Fields);
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);

  return v9;
}

uint64_t TraceChunk.dataBufferPointer.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 8);
  if (v3 == 1)
  {
    if (*(v1 + 40) - v2 >= 14)
    {
      v4 = 14;
      return v2 + v4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      if (*(v1 + 40) - v2 >= 56)
      {
        v4 = 56;
        return v2 + v4;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

double TraceChunk.header.getter@<D0>(uint64_t a1@<X8>)
{
  specialized T_Header.init(loadedFrom:)(*(*v1 + 32), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = *(a3 + 16);
      if (v4)
      {
        v5 = *(v4 + 16);
LABEL_11:
        appended = ktrace_file_append_chunk();

        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_15;
    }

    v6 = result;
    v7 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

LABEL_8:
    appended = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

LABEL_12:
    v11 = *MEMORY[0x277D85DE8];
    return appended;
  }

  if (v3 == 2)
  {
    v6 = *(result + 16);
    v7 = *(result + 24);
    goto LABEL_8;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = *(v9 + 16);
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t KtraceFile.ChunkIterator.warnings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t KtraceFile.ChunkIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in KtraceFile.ChunkIterator.next();
  *(result + 24) = v4;
  v6 = *(*v1 + 16);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = v1[1];
    v10[4] = _ss13OpaquePointerVSbIegyd_ABSbIegyd_TRTA_0;
    v10[5] = result;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
    v10[3] = &block_descriptor_3;
    v9 = _Block_copy(v10);

    ktrace_file_iterate();
    _Block_release(v9);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v3 + 16, a1, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in KtraceFile.ChunkIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 1;
  }

  v17 = v3;
  v18 = v4;
  KtraceFile.ChunkIterator.map(chunk:typed:)(a1, 1, v12);
  if (v13)
  {
    outlined init with take of KTraceFile_Chunk(v12, v14);
    outlined init with copy of Aggregate_AccessorProtocol(v14, v12);
    swift_beginAccess();
    outlined assign with take of URL?(v12, a3 + 16, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    *(a2 + 8) = (*(v10 + 80))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return 0;
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v12, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
    return 1;
  }
}

uint64_t KtraceFile.ChunkIterator.map(chunk:typed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _Chunk_Fields(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v34 - v12);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v14 = ktrace_chunk_tag();
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v14 == 53918430)
  {
    v30 = *v3;
    *(&v37 + 1) = type metadata accessor for TraceChunk(0);
    v38 = &protocol witness table for TraceChunk;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v36);

    TraceChunk.init(chunk:file:)(a1, v30, boxed_opaque_existential_1Tm);
    goto LABEL_9;
  }

  if (v14 != 53918432)
  {
LABEL_6:
    v22 = *v3;
    *(&v37 + 1) = type metadata accessor for Miscellaneous(0);
    v38 = &protocol witness table for Miscellaneous;
    result = __swift_allocate_boxed_opaque_existential_1Tm(&v36);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = result;
      type metadata accessor for _Chunk_Storage();
      v25 = swift_allocObject();

      _Chunk_Storage.init(chunk:storage:)(a1, v23);
      swift_beginAccess();
      swift_unknownObjectUnownedLoadStrong();
      v35 = v24;
      v26 = a1;
      v27 = a2;
      v28 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
      swift_beginAccess();
      v29 = v22 + v28;
      a2 = v27;
      a1 = v26;
      outlined init with copy of ResourceSet<Interpreter, ()>(v29, v11 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      *v11 = v25;
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
      v21 = v11;
      goto LABEL_8;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v3;
  *(&v37 + 1) = type metadata accessor for CompressedChunk(0);
  v38 = &protocol witness table for CompressedChunk;
  result = __swift_allocate_boxed_opaque_existential_1Tm(&v36);
  v17 = *(v15 + 16);
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = result;
  type metadata accessor for _Chunk_Storage();
  v19 = swift_allocObject();

  _Chunk_Storage.init(chunk:storage:)(a1, v17);
  swift_beginAccess();
  swift_unknownObjectUnownedLoadStrong();
  v35 = v18;
  v20 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
  swift_beginAccess();
  outlined init with copy of ResourceSet<Interpreter, ()>(v15 + v20, v13 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *v13 = v19;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v21 = v13;
LABEL_8:
  outlined init with take of TraceChunk(v21, v35, type metadata accessor for _Chunk_Fields);
LABEL_9:
  result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v39, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
  v39 = v36;
  v40 = v37;
  v41 = v38;
  if ((a2 & 1) != 0 && (outlined init with copy of ResourceSet<Interpreter, ()>(&v39, &v36, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR), v32 = *(&v37 + 1), result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v36, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR), !v32))
  {
    KtraceFile.ChunkIterator.map(chunk:typed:)(a1, 0);
    return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v39, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
  }

  else
  {
    v33 = v40;
    *a3 = v39;
    *(a3 + 16) = v33;
    *(a3 + 32) = v41;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t TraceChunk.init(chunk:file:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _Chunk_Fields(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  v12 = *(a2 + 16);
  if (v12)
  {
    type metadata accessor for _Chunk_Storage();
    v13 = swift_allocObject();

    _Chunk_Storage.init(chunk:storage:)(a1, v12);
    if (v3)
    {
    }

    swift_beginAccess();
    swift_unknownObjectUnownedLoadStrong();
    v14 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    swift_beginAccess();
    outlined init with copy of ResourceSet<Interpreter, ()>(a2 + v14, v11 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v11 = v13;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    outlined init with take of TraceChunk(v11, a3, type metadata accessor for _Chunk_Fields);
    v15 = *(*a3 + 32);
    result = specialized T_Header.init(loadedFrom:)(v15, v19);
    if (v19[0] != 123123123)
    {
      v16 = 1;
LABEL_9:
      lazy protocol witness table accessor for type Chunk_Error and conformance Chunk_Error();
      swift_allocError();
      *v17 = v16;
      swift_willThrow();

      return outlined destroy of _Chunk_Fields(a3, type metadata accessor for _Chunk_Fields);
    }

    if (v15)
    {
      if (*(v15 + 8) - 1 < 2)
      {
      }

      v16 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KtraceFile.Storage.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    ktrace_file_close();
  }

  return swift_deallocClassInstance();
}

uint64_t KtraceFile.file.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return *(v1 + 16);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for KtraceFile.symbols : KtraceFile@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 72);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
  v6 = *(v3 + 56);
  *(a2 + 16) = *(v3 + 40);
  *(a2 + 32) = v6;
  *(a2 + 48) = v5;
}

uint64_t key path setter for KtraceFile.symbols : KtraceFile(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 6);
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 40);
  v8 = *(v6 + 56);
  v9 = *(v6 + 72);
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v10 = *(a1 + 2);
  *(v6 + 40) = *(a1 + 1);
  *(v6 + 56) = v10;
  *(v6 + 72) = v5;
}

uint64_t KtraceFile.symbols.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  v5 = *(v1 + 56);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
}

uint64_t KtraceFile.symbols.setter(int *a1)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  *(v1 + 24) = v3;
  v7 = *(a1 + 6);
  *(v1 + 32) = *(a1 + 2);
  *(v1 + 48) = v7;
  *(v1 + 64) = *(a1 + 10);
}

uint64_t KtraceFile.owner.setter()
{
  swift_beginAccess();
  swift_unknownObjectUnownedAssign();
  return swift_unknownObjectRelease();
}

void (*KtraceFile.owner.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectUnownedLoadStrong();
  return KtraceFile.owner.modify;
}

void KtraceFile.owner.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectUnownedAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t KtraceFile.chunks.getter()
{
  v0 = type metadata accessor for TraceChunk(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = KtraceFile.traceChunks.getter();
  v6 = v5[2];
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    do
    {
      outlined init with copy of TraceChunk(v7, v4, type metadata accessor for TraceChunk);
      v9 = type metadata accessor for Chunk(0);
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      v12 = swift_allocObject();
      outlined init with take of TraceChunk(v4, v12 + OBJC_IVAR____TtC21SwiftUITracingSupport5Chunk_chunk, type metadata accessor for TraceChunk);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *(v16 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += v8;
      --v6;
    }

    while (v6);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void *KtraceFile.traceChunks.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TraceChunk(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v30 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = specialized _copySequenceToContiguousArray<A>(_:)(v1);
  v17 = *(v16 + 16);
  if (v17)
  {
    v27 = v16;
    v28 = v13;
    v18 = v16 + 32;
    v19 = (v13 + 56);
    v29 = (v13 + 48);
    v20 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Aggregate_AccessorProtocol(v18, v32);
      outlined init with take of KTraceFile_Chunk(v32, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16KTraceFile_Chunk_pMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pMR);
      v21 = swift_dynamicCast();
      v22 = *v19;
      if (v21)
      {
        v22(v6, 0, 1, v12);
        outlined init with take of TraceChunk(v6, v9, type metadata accessor for TraceChunk);
        v23 = 0;
      }

      else
      {
        v23 = 1;
        v22(v6, 1, 1, v12);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v6, &_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
      }

      v22(v9, v23, 1, v12);
      outlined init with take of TraceChunk?(v9, v11);
      if ((*v29)(v11, 1, v12) == 1)
      {
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v11, &_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
      }

      else
      {
        outlined init with take of TraceChunk(v11, v30, type metadata accessor for TraceChunk);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        outlined init with take of TraceChunk(v30, v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for TraceChunk);
      }

      v18 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v20;
}