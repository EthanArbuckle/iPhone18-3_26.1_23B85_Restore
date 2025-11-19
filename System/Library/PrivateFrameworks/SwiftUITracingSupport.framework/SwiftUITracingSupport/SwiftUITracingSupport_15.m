uint64_t static EventAbstraction.model(update:within:position:)(uint64_t a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a3;
  v21 = 0;
  if (*a3)
  {
    v12 = (*(a5 + 56))(a1, a2, a4, a5);
    v11 = (v12 & 0x100000000uLL) >> 32;
    v10 = (v12 & 0x100000000) == 0;
    v21 = (v12 & 0x100000000) == 0;
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 1;
  }

  v13 = (*(a5 + 16))(a4, a5);
  if ((v9 & 2) == 0 || ((v13 ^ 1 | v11) & 1) == 0)
  {
    return v10;
  }

  result = (*(a5 + 32))(a4, a5);
  if (a2[48])
  {
    goto LABEL_15;
  }

  v15 = *(a2 + 22);
  v16 = *a2;
  if (v16 >= *(v15 + 116))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v15 + 104);
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = *(*(v17 + 8 * v16) + 8);
  result = MEMORY[0x28223BE20](result);
  if (*(v19 + 44) <= v8)
  {
    goto LABEL_14;
  }

  v20 = *(v19 + 32);
  if (v20)
  {
    specialized static Event.each(_:of:do:)(result | 0x4000, v20 + (v8 << 7), partial apply for closure #1 in static EventAbstraction.model(update:within:position:));
    return v21;
  }

LABEL_17:
  __break(1u);
  return result;
}

void AbstractionSubtype.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x26D69DBC0](2);
      Hasher._combine(_:)(v1);
      return;
    }

    v3 = 3;
  }

  else
  {
    if (*(v0 + 9))
    {
      v4 = *(v0 + 8);
      MEMORY[0x26D69DBC0](1);
      Hasher._combine(_:)(v1);
      Hasher._combine(_:)(HIDWORD(v1));
      Hasher._combine(_:)(v4);
      return;
    }

    v3 = 0;
  }

  MEMORY[0x26D69DBC0](v3);
  MEMORY[0x26D69DBC0](v1);
}

Swift::Int AbstractionSubtype.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v4 = 3;
      goto LABEL_8;
    }

    MEMORY[0x26D69DBC0](2);
    Hasher._combine(_:)(v1);
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
LABEL_8:
      MEMORY[0x26D69DBC0](v4);
      MEMORY[0x26D69DBC0](v1);
      return Hasher._finalize()();
    }

    MEMORY[0x26D69DBC0](1);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(HIDWORD(v1));
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AbstractionSubtype()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x26D69DBC0](2);
      Hasher._combine(_:)(v1);
      return;
    }

    v3 = 3;
  }

  else
  {
    if (*(v0 + 9))
    {
      v4 = *(v0 + 8);
      MEMORY[0x26D69DBC0](1);
      Hasher._combine(_:)(v1);
      Hasher._combine(_:)(HIDWORD(v1));
      Hasher._combine(_:)(v4);
      return;
    }

    v3 = 0;
  }

  MEMORY[0x26D69DBC0](v3);
  MEMORY[0x26D69DBC0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbstractionSubtype()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v4 = 3;
      goto LABEL_8;
    }

    MEMORY[0x26D69DBC0](2);
    Hasher._combine(_:)(v1);
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
LABEL_8:
      MEMORY[0x26D69DBC0](v4);
      MEMORY[0x26D69DBC0](v1);
      return Hasher._finalize()();
    }

    MEMORY[0x26D69DBC0](1);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(HIDWORD(v1));
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t closure #1 in static EventAbstraction.model(update:within:position:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = *MEMORY[0x277D85DE8];
  if (result && a2)
  {
    v9 = result;
    v47 = (result + 4 * a2);
    v48 = a5;
    v49 = a9;
    v50 = a4;
    do
    {
      if (a4[48])
      {
        goto LABEL_33;
      }

      v10 = *(a4 + 22);
      v11 = *a4;
      if (v11 >= *(v10 + 116))
      {
        goto LABEL_28;
      }

      v12 = *(v10 + 104);
      if (!v12)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      v13 = *v9;
      v14 = *(*(v12 + 8 * v11) + 8);
      isStackAllocationSafe = MEMORY[0x28223BE20](result);
      *(&v45 - 6) = v18;
      *(&v45 - 5) = v19;
      *(&v45 - 4) = v20;
      *(&v45 - 3) = v21;
      v43 = v22;
      v44 = v23;
      if (v16 >= *(v17 + 44))
      {
        goto LABEL_29;
      }

      v24 = *(v17 + 32);
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = *(v24 + (v16 << 7) + 124);
      if (v25 < 0x101 || (v46 = v24 + (v16 << 7), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v34 = &v45 - v33;
        v35 = 0;
        v36 = 0;
        v37 = *(v26 + 112);
LABEL_11:
        v38 = (v37 + 8 * v36);
        while (v25 != v36)
        {
          if (v36 >= v25)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (!v37)
          {
            goto LABEL_32;
          }

          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_27;
          }

          v40 = *v38;
          v38 += 4;
          ++v36;
          if ((v40 & 0x8020) == 0x20)
          {
            if (__OFADD__(v35, 1))
            {
              goto LABEL_31;
            }

            *&v34[4 * v35++] = *(v38 - 1);
            v36 = v39;
            goto LABEL_11;
          }
        }

        if (v35 < 0)
        {
          goto LABEL_30;
        }

        result = closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v34, v35, v26, v27, v28, v29, v30, v31, v32);
      }

      else
      {
        v41 = swift_slowAlloc();
        closure #1 in static Event.each(_:of:do:)(v41, v25, v46, 16416, partial apply for closure #1 in closure #1 in static EventAbstraction.model(update:within:position:));
        result = MEMORY[0x26D69EAB0](v41, -1, -1);
      }

      ++v9;
      a4 = v50;
    }

    while (v9 != v47);
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(unsigned int *result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (result && a2)
  {
    v7 = &result[a2];
    v8 = a7;
    while (!a4[48])
    {
      v15 = *(a4 + 22);
      v16 = *a4;
      if (v16 >= *(v15 + 116))
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
        break;
      }

      v17 = *(v15 + 104);
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = *result;
      v19 = *(*(v17 + 8 * v16) + 8);
      v20 = *(v19 + 44);
      if (v18 >= v20)
      {
        goto LABEL_33;
      }

      v21 = *(v19 + 32);
      if (!v21)
      {
        goto LABEL_42;
      }

      v22 = v21 + (v18 << 7);
      if (!*(v22 + 32))
      {
        goto LABEL_34;
      }

      if (*(v22 + 24))
      {
        goto LABEL_43;
      }

      v23 = *(v22 + 8);
      if (!v23)
      {
        goto LABEL_44;
      }

      if (*v23 != &type metadata for Event.Abstract)
      {
        goto LABEL_35;
      }

      if (*(v23 + 16) == a5)
      {
        if (*a6)
        {
LABEL_5:
          v14 = 1;
        }

        else
        {
          if (v20 <= a7)
          {
            goto LABEL_36;
          }

          v24 = v21 + (v8 << 7);
          if (*(v24 + 48) == 1)
          {
            v25 = *(v22 + 124) + 1;
            v26 = *(v22 + 112);
            while (--v25)
            {
              if (!*(v22 + 112))
              {
                goto LABEL_37;
              }

              v27 = v26 + 4;
              v28 = *v26 & 0x8080;
              v26 += 4;
              if (v28 == 128)
              {
                v29 = *(v27 - 1);
                v30 = *(v24 + 124) + 1;
                v31 = *(v24 + 112);
                while (--v30)
                {
                  if (!*(v24 + 112))
                  {
                    goto LABEL_38;
                  }

                  v32 = v31 + 4;
                  v33 = *v31 & 0x8004;
                  v31 += 4;
                  if (v33 == 4)
                  {
                    if (*(v32 - 1) == v29)
                    {
                      v9 = result;
                      v10 = a7;
                      v11 = a6;
                      v12 = a5;
                      v13 = a4;
                      Event.hide(_:within:)(v24, a4);
                      result = v9;
                      a4 = v13;
                      a5 = v12;
                      a6 = v11;
                      a7 = v10;
                      goto LABEL_5;
                    }

                    goto LABEL_30;
                  }
                }

                goto LABEL_39;
              }
            }
          }

LABEL_30:
          v14 = 0;
        }

        *a6 = v14;
      }

      if (++result == v7)
      {
        return result;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

void specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, _BYTE *a6, unsigned int a7)
{
  if (a1 && a2)
  {
    v11 = a1;
    v12 = &a1[a2];
    v13 = a7;
    while (!a4[48])
    {
      v14 = *(a4 + 22);
      v15 = *a4;
      if (v15 >= *(v14 + 116))
      {
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
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_43;
      }

      v17 = *v11;
      v18 = *(*(v16 + 8 * v15) + 8);
      v19 = *(v18 + 44);
      if (v17 >= v19)
      {
        goto LABEL_35;
      }

      v20 = *(v18 + 32);
      if (!v20)
      {
        goto LABEL_44;
      }

      v21 = v20 + (v17 << 7);
      if (!*(v21 + 32))
      {
        goto LABEL_36;
      }

      if (*(v21 + 24))
      {
        goto LABEL_45;
      }

      v22 = *(v21 + 8);
      if (!v22)
      {
        goto LABEL_46;
      }

      if (*v22 != &type metadata for Event.Abstract)
      {
        goto LABEL_37;
      }

      if (*(v22 + 16) == a5)
      {
        if (*a6 != 1 && *(v22 + 36) != a7)
        {
          v23 = *(v21 + 112);
          v24 = (v23 + 4);
          v25 = *(v21 + 124) + 1;
          while (--v25)
          {
            if (!v23)
            {
              goto LABEL_41;
            }

            v26 = *(v24 - 2);
            v27 = *v24;
            v24 += 2;
            v28 = v26 & 0x4000;
            if (v27 == a7 && v28 == 0)
            {
              if (v19 <= a7)
              {
                goto LABEL_40;
              }

              Event.hide(_:within:)((v20 + (v13 << 7)), a4);
              if (!*(v21 + 32))
              {
                goto LABEL_38;
              }

              v22 = *(v21 + 8);
              break;
            }
          }

          if (*(v21 + 24))
          {
            goto LABEL_47;
          }

          if (!v22)
          {
            goto LABEL_48;
          }

          if (*v22 != &type metadata for Event.Abstract)
          {
            goto LABEL_39;
          }

          *(v22 + 36) = a7;
        }

        *a6 = 1;
      }

      if (++v11 == v12)
      {
        return;
      }
    }

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
  }
}

uint64_t closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result && a2)
  {
    v12 = result;
    v13 = 4 * a2;
    while (!a4[48])
    {
      v14 = *(a4 + 22);
      v15 = *a4;
      if (v15 >= *(v14 + 116))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        break;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = *v12;
      v18 = *(*(v16 + 8 * v15) + 8);
      if (v17 >= *(v18 + 44))
      {
        goto LABEL_21;
      }

      v19 = *(v18 + 32);
      if (!v19)
      {
        goto LABEL_26;
      }

      result = v19 + (v17 << 7);
      if (!*(result + 32))
      {
        goto LABEL_22;
      }

      if (*(result + 24))
      {
        goto LABEL_27;
      }

      v20 = *(result + 8);
      if (!v20)
      {
        goto LABEL_28;
      }

      if (*v20 != &type metadata for Event.Abstract)
      {
        goto LABEL_23;
      }

      if (*(v20 + 16) == a5)
      {
        if (*a6)
        {
          result = 1;
        }

        else
        {
          result = (*(a9 + 80))();
        }

        *a6 = result & 1;
      }

      ++v12;
      v13 -= 4;
      if (!v13)
      {
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void static Allocation.subtype(source:within:)(uint64_t a1@<X8>)
{
  *a1 = &type metadata for AttributeRef;
  *(a1 + 8) = 0;
}

{
  *a1 = &type metadata for Allocation;
  *(a1 + 8) = 0;
}

void _s21SwiftUITracingSupport11InterpreterC8IteratorV3new8abstract8rootedAt8discreet11restrictionAA8EventRefVxm_ALSbSayALGtAA0L11AbstractionRzlFAA10AllocationV_Ttg5(unsigned int a1, char a2, uint64_t a3)
{
  if (v3[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v4 = *(v3 + 22);
  v5 = *v3;
  if (v5 >= *(v4 + 116))
  {
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

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v7 = a1;
  v8 = *(*(v6 + 8 * v5) + 8);
  if (*(v8 + 44) <= a1)
  {
    goto LABEL_132;
  }

  v179 = v3;
  v9 = *(v8 + 32);
  if (!v9)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v178 = a1;
  v11 = (v9 + (a1 << 7));
  v12 = v11[1];
  v209 = *v11;
  v210 = v12;
  v13 = v11[5];
  v213 = v11[4];
  v214 = v13;
  v14 = v11[7];
  v215 = v11[6];
  v216 = v14;
  v15 = v11[3];
  v211 = v11[2];
  v212 = v15;
  LOBYTE(v201) = BYTE8(v210);
  v16 = HeterogeneousBuffer.type(at:)(0, *(&v209 + 1), v210, SBYTE8(v210), v211);
  v17 = swift_conformsToProtocol2();
  if (!v17)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v18 = v17;
  v19 = HeterogeneousBuffer.index(after:)(0, *(&v209 + 1), v210, SBYTE8(v210), v211);
  LOBYTE(v201) = BYTE8(v210);
  v20 = HeterogeneousBuffer.type(at:)(v19, *(&v209 + 1), v210, SBYTE8(v210), v211);
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v20, &v209, v16, v18, v21, v183);
  if (v179[48])
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v22 = *v179;
  if (v22 >= *(v4 + 116))
  {
    goto LABEL_133;
  }

  v23 = *(v4 + 104);
  if (!v23)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v24 = *(*(v23 + 8 * v22) + 8);
  if (*(v24 + 44) <= v7)
  {
    goto LABEL_134;
  }

  v176 = a3;
  v177 = v7;
  v25 = *(v24 + 32);
  if (!v25)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v26 = (v25 + (v178 << 7));
  v27 = v26[1];
  v201 = *v26;
  v202 = v27;
  v28 = v26[5];
  v205 = v26[4];
  v206 = v28;
  v29 = v26[7];
  v207 = v26[6];
  v208 = v29;
  v30 = v26[3];
  v203 = v26[2];
  v204 = v30;
  v31 = *(&v201 + 1);
  v32 = v202;
  v33 = BYTE8(v202);
  v34 = v203;
  v188[0] = BYTE8(v202);
  v35 = HeterogeneousBuffer.type(at:)(0, *(&v201 + 1), v202, SBYTE8(v202), v203);
  v36 = swift_conformsToProtocol2();
  if (!v36)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v37 = v36;
  v188[0] = v33;
  v38 = HeterogeneousBuffer.index(after:)(0, v31, v32, v33, v34);
  v188[0] = v33;
  v39 = HeterogeneousBuffer.type(at:)(v38, v31, v32, v33, v34);
  v40 = swift_conformsToProtocol2();
  if (!v40)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v39, &v201, v35, v37, v40, v184);
  *&v188[6] = v184[0];
  *&v188[22] = v184[1];
  *&v188[38] = v185;
  *&v195[10] = *v188;
  *&v194 = &type metadata for Allocation;
  *(&v194 + 1) = &protocol witness table for Allocation;
  *v195 = &type metadata for Allocation;
  *&v195[8] = 0;
  *&v195[26] = *&v188[16];
  *&v195[36] = *&v188[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](&type metadata for Allocation);
  v198 = *&v188[32];
  v199 = v189;
  v200 = v190;
  v196 = *v188;
  v197 = *&v188[16];
  v41 = Hasher.finalize()();
  if (v179[48])
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v42 = *v179;
  if (v42 >= *(v4 + 116))
  {
    goto LABEL_135;
  }

  v43 = *(v4 + 104);
  if (!v43)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v44 = v41;
  v45 = *(*(*(v43 + 8 * v42) + 8) + 192);
  v46 = *v45;
  if ((*v45)[1].Kind)
  {
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v194);
    if (v48)
    {
      v49 = *(v46[3].Description + v47);
      goto LABEL_31;
    }

    v42 = *v179;
    v50 = v179[48] == 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v188[32] = *&v195[16];
  v189 = *&v195[32];
  LODWORD(v190) = *&v195[48];
  *v188 = v194;
  *&v188[16] = *v195;
  if (!v50)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (v42 >= *(v4 + 116))
  {
    goto LABEL_148;
  }

  v53 = *(v4 + 104);
  if (v53)
  {
    v54 = v51;
    v55 = v52;
    v56 = *(*(v53 + 8 * v42) + 8);
    v57 = *(v56 + 212);
    if (v57 == *(v56 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v57);
    }

    v58 = *(v56 + 200);
    v7 = v177;
    if (!v58)
    {
      goto LABEL_191;
    }

    v59 = *(v56 + 212);
    v60 = v58 + 120 * v59;
    v61 = v189;
    *(v60 + 32) = *&v188[32];
    *(v60 + 48) = v61;
    v62 = v190;
    v63 = *&v188[16];
    *v60 = *v188;
    *(v60 + 16) = v63;
    *(v60 + 64) = v62;
    *(v60 + 72) = v44;
    *(v60 + 80) = 0;
    *(v60 + 88) = 0;
    *(v60 + 96) = 0;
    *(v60 + 104) = v54;
    *(v60 + 112) = v55;
    if (v59 == -1)
    {
      goto LABEL_149;
    }

    *(v56 + 212) = v59 + 1;
    v49 = v59;
    v64 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v186 = *v45;
    *v45 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, &v194, isUniquelyReferenced_nonNull_native);
    v66 = *v45;
    *v45 = v186;

LABEL_31:
    if (v179[48])
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v67 = *v179;
    if (v67 < *(v4 + 116))
    {
      v68 = *(v4 + 104);
      if (!v68)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v69 = *(*(v68 + 8 * v67) + 8);
      if (*(v69 + 44) > v7)
      {
        v70 = *(v69 + 32);
        if (!v70)
        {
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v71 = (v70 + (v178 << 7));
        v72 = v71[1];
        *v188 = *v71;
        *&v188[16] = v72;
        v73 = v71[5];
        v190 = v71[4];
        v191 = v73;
        v74 = v71[7];
        v192 = v71[6];
        v193 = v74;
        v75 = v71[3];
        *&v188[32] = v71[2];
        v189 = v75;
        v76 = *&v188[8];
        v77 = *&v188[16];
        v78 = v188[24];
        v79 = *&v188[32];
        LOBYTE(v186) = v188[24];
        v80 = HeterogeneousBuffer.type(at:)(0, *&v188[8], *&v188[16], v188[24], *&v188[32]);
        v81 = swift_conformsToProtocol2();
        if (!v81)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v82 = v81;
        LOBYTE(v186) = v78;
        v83 = HeterogeneousBuffer.index(after:)(0, v76, v77, v78, v79);
        LOBYTE(v186) = v78;
        v84 = HeterogeneousBuffer.type(at:)(v83, v76, v77, v78, v79);
        v85 = swift_conformsToProtocol2();
        if (!v85)
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v84, v188, v80, v82, v85, &v186);
        if (v186 == &type metadata for Event.AttributeStack || v186 == &type metadata for Event.AttributeValue)
        {
          v87 = v187;
        }

        else
        {
          v87 = -1;
        }

        v88 = v179;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v87, &type metadata for Allocation, &protocol witness table for Allocation, *&v49 | 0xFFFFFFFF00000000, 4, a2 & 1);
        if (v179[48])
        {
          goto LABEL_178;
        }

        v90 = *v179;
        if (v90 < *(v4 + 116))
        {
          v91 = *(v4 + 104);
          if (!v91)
          {
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          v92 = *(*(v91 + 8 * v90) + 8);
          v93 = *(v92 + 44);
          if (v93 > v177)
          {
            v94 = *(v92 + 32);
            if (!v94)
            {
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
              goto LABEL_183;
            }

            v95 = v89;
            if (v89 < v93)
            {
              v182 = v4;
              v96 = (v94 + (v178 << 7));
              v181 = v89;
              v97 = (v94 + (v89 << 7));
              v98 = *v97;
              v99 = v96[31];
              if (v99 == v96[30])
              {
                specialized UnsafeArray.growToCapacity(_:)(2 * v99);
              }

              v100 = *(v96 + 14);
              if (!v100)
              {
                goto LABEL_181;
              }

              v101 = v96[31];
              v102 = v100 + 8 * v101;
              *v102 = -24448;
              *(v102 + 4) = v98;
              if (v101 != -1)
              {
                v96[31] = v101 + 1;
                v103 = *v96;
                v104 = v97[31];
                if (v104 == v97[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)(2 * v104);
                }

                v105 = *(v97 + 14);
                v106 = v182;
                if (!v105)
                {
                  goto LABEL_182;
                }

                v107 = v97[31];
                v108 = v105 + 8 * v107;
                *v108 = 24704;
                *(v108 + 4) = v103;
                if (v107 != -1)
                {
                  v97[31] = v107 + 1;
                  if (v179[48])
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  v109 = *v179;
                  if (v109 < *(v182 + 116))
                  {
                    v110 = *(v182 + 104);
                    if (!v110)
                    {
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

                    v111 = *(*(v110 + 8 * v109) + 8);
                    if (*(v111 + 44) > v177)
                    {
                      v112 = *(v111 + 32);
                      if (!v112)
                      {
                        goto LABEL_185;
                      }

                      v113 = 0;
                      v114 = v112 + (v178 << 7);
                      v115 = *(v114 + 112);
                      v116 = *(v114 + 124);
                      v117 = MEMORY[0x277D84F90];
LABEL_64:
                      v118 = (v115 + 8 * v113);
                      while (v116 != v113)
                      {
                        if (v113 >= v116)
                        {
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
                          goto LABEL_131;
                        }

                        if (!v115)
                        {
                          goto LABEL_150;
                        }

                        v119 = v113 + 1;
                        if (__OFADD__(v113, 1))
                        {
                          goto LABEL_119;
                        }

                        v121 = *v118;
                        v118 += 4;
                        v120 = v121;
                        ++v113;
                        if ((v121 & 0x80000000) == 0 && (v120 & 0xC03) != 0)
                        {
                          v175 = *(v118 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 16) + 1, 1);
                          }

                          v123 = *(v117 + 16);
                          v122 = *(v117 + 24);
                          v124 = v123 + 1;
                          if (v123 >= v122 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1);
                            v124 = v123 + 1;
                          }

                          *(v117 + 16) = v124;
                          v125 = v117 + 8 * v123;
                          *(v125 + 32) = v120;
                          *(v125 + 36) = v175;
                          v113 = v119;
                          goto LABEL_64;
                        }
                      }

                      v126 = *(v117 + 16);
                      if (v126)
                      {
                        v127 = 0;
                        v128 = (v117 + 36);
                        while (v127 < *(v117 + 16))
                        {
                          if (v88[48])
                          {
                            goto LABEL_151;
                          }

                          v129 = *v88;
                          if (v129 >= *(v106 + 116))
                          {
                            goto LABEL_121;
                          }

                          v130 = *(v106 + 104);
                          if (!v130)
                          {
                            goto LABEL_152;
                          }

                          v131 = *v128;
                          v132 = *(*(v130 + 8 * v129) + 8);
                          v133 = *(v132 + 44);
                          if (v131 >= v133)
                          {
                            goto LABEL_122;
                          }

                          v134 = *(v132 + 32);
                          if (!v134)
                          {
                            goto LABEL_153;
                          }

                          if (v95 >= v133)
                          {
                            goto LABEL_123;
                          }

                          v135 = *(v128 - 2);
                          v136 = (v134 + (v131 << 7));
                          v137 = (v134 + (v181 << 7));
                          v138 = *v137;
                          v139 = v136[31];
                          if (v139 == v136[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v139);
                          }

                          v140 = *(v136 + 14);
                          if (!v140)
                          {
                            goto LABEL_154;
                          }

                          v141 = v135 & 0x1FFF;
                          v142 = v136[31];
                          v143 = v140 + 8 * v142;
                          *v143 = v141 | 0xA000;
                          *(v143 + 4) = v138;
                          if (v142 == -1)
                          {
                            goto LABEL_124;
                          }

                          v136[31] = v142 + 1;
                          v144 = *v136;
                          v145 = v137[31];
                          if (v145 == v137[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v145);
                          }

                          v146 = *(v137 + 14);
                          v88 = v179;
                          if (!v146)
                          {
                            goto LABEL_155;
                          }

                          v147 = v137[31];
                          v148 = v146 + 8 * v147;
                          *v148 = v141 | 0x6000;
                          *(v148 + 4) = v144;
                          if (v147 == -1)
                          {
                            goto LABEL_125;
                          }

                          ++v127;
                          v137[31] = v147 + 1;
                          v128 += 2;
                          v106 = v182;
                          if (v126 == v127)
                          {
                            goto LABEL_94;
                          }
                        }

                        goto LABEL_120;
                      }

LABEL_94:

                      v149 = *(v176 + 16);
                      if (v149)
                      {
                        v150 = (v176 + 32);
                        while (!v88[48])
                        {
                          v151 = *v88;
                          if (v151 >= *(v106 + 116))
                          {
                            goto LABEL_126;
                          }

                          v152 = *(v106 + 104);
                          if (!v152)
                          {
                            goto LABEL_157;
                          }

                          v154 = *v150++;
                          v153 = v154;
                          v155 = *(*(v152 + 8 * v151) + 8);
                          v156 = *(v155 + 44);
                          if (v154 >= v156)
                          {
                            goto LABEL_127;
                          }

                          v157 = *(v155 + 32);
                          if (!v157)
                          {
                            goto LABEL_158;
                          }

                          if (v95 >= v156)
                          {
                            goto LABEL_128;
                          }

                          v158 = (v157 + (v153 << 7));
                          v159 = (v157 + (v181 << 7));
                          v160 = *v159;
                          v161 = v158[31];
                          if (v161 == v158[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v161);
                          }

                          v162 = *(v158 + 14);
                          if (!v162)
                          {
                            goto LABEL_159;
                          }

                          v163 = v158[31];
                          v164 = v162 + 8 * v163;
                          *v164 = -24512;
                          *(v164 + 4) = v160;
                          if (v163 == -1)
                          {
                            goto LABEL_129;
                          }

                          v158[31] = v163 + 1;
                          v165 = *v158;
                          v166 = v159[31];
                          if (v166 == v159[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v166);
                          }

                          v167 = *(v159 + 14);
                          v106 = v182;
                          if (!v167)
                          {
                            goto LABEL_160;
                          }

                          v168 = v159[31];
                          v169 = v167 + 8 * v168;
                          *v169 = 24640;
                          *(v169 + 4) = v165;
                          if (v168 == -1)
                          {
                            goto LABEL_130;
                          }

                          v159[31] = v168 + 1;
                          if (!--v149)
                          {
                            goto LABEL_111;
                          }
                        }

                        goto LABEL_156;
                      }

LABEL_111:
                      if (v88[48])
                      {
                        goto LABEL_186;
                      }

                      v170 = *v88;
                      if (v170 < *(v106 + 116))
                      {
                        v171 = *(v106 + 104);
                        if (!v171)
                        {
                          goto LABEL_187;
                        }

                        v172 = *(*(v171 + 8 * v170) + 8);
                        v173 = *(v172 + 44);
                        if (v95 < v173)
                        {
                          v174 = *(v172 + 32);
                          if (!v174)
                          {
                            goto LABEL_188;
                          }

                          if (v173 > v177)
                          {
                            Event.hide(_:within:)((v174 + (v178 << 7)), v88);
                            return;
                          }

                          goto LABEL_147;
                        }

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
                        goto LABEL_161;
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

LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
}

void specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (v5[48])
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v6 = *(v5 + 22);
  v7 = *v5;
  if (v7 >= *(v6 + 116))
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

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v10 = *(*(v8 + 8 * v7) + 8);
  if (*(v10 + 44) <= a2)
  {
    goto LABEL_135;
  }

  v188 = v5;
  v11 = *(v10 + 32);
  if (!v11)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v187 = a2;
  v13 = (v11 + (a2 << 7));
  v14 = v13[1];
  v218 = *v13;
  v219 = v14;
  v15 = v13[5];
  v222 = v13[4];
  v223 = v15;
  v16 = v13[7];
  v224 = v13[6];
  v225 = v16;
  v17 = v13[3];
  v220 = v13[2];
  v221 = v17;
  LOBYTE(v210) = BYTE8(v219);
  v18 = HeterogeneousBuffer.type(at:)(0, *(&v218 + 1), v219, SBYTE8(v219), v220);
  v19 = swift_conformsToProtocol2();
  if (!v19)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v20 = v19;
  v191 = v6;
  v21 = HeterogeneousBuffer.index(after:)(0, *(&v218 + 1), v219, SBYTE8(v219), v220);
  LOBYTE(v210) = BYTE8(v219);
  v22 = HeterogeneousBuffer.type(at:)(v21, *(&v218 + 1), v219, SBYTE8(v219), v220);
  v23 = swift_conformsToProtocol2();
  if (!v23)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v22, &v218, v18, v20, v23, v192);
  if (v188[48])
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v24 = *v188;
  if (v24 >= *(v6 + 116))
  {
    goto LABEL_136;
  }

  v25 = *(v6 + 104);
  if (!v25)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  specialized static TypedEventAbstraction.subtype(source:within:)(v192, *(*(v25 + 8 * v24) + 8), &v210);
  if (v188[48])
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v26 = *v188;
  if (v26 >= *(v6 + 116))
  {
    goto LABEL_137;
  }

  v27 = *(v6 + 104);
  if (!v27)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v28 = *(*(v27 + 8 * v26) + 8);
  if (*(v28 + 44) <= a2)
  {
    goto LABEL_138;
  }

  v181 = a4;
  v186 = a2;
  v29 = *(v28 + 32);
  if (!v29)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v184 = v210;
  v183 = BYTE8(v210);
  v30 = BYTE9(v210);
  v31 = (v29 + (v187 << 7));
  v32 = v31[1];
  v210 = *v31;
  v211 = v32;
  v33 = v31[5];
  v214 = v31[4];
  v215 = v33;
  v34 = v31[7];
  v216 = v31[6];
  v217 = v34;
  v35 = v31[3];
  v212 = v31[2];
  v213 = v35;
  v36 = *(&v210 + 1);
  v37 = v211;
  v38 = BYTE8(v211);
  v39 = v212;
  v197[0] = BYTE8(v211);
  v40 = HeterogeneousBuffer.type(at:)(0, *(&v210 + 1), v211, SBYTE8(v211), v212);
  v41 = swift_conformsToProtocol2();
  if (!v41)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v42 = v41;
  v197[0] = v38;
  v43 = HeterogeneousBuffer.index(after:)(0, v36, v37, v38, v39);
  v197[0] = v38;
  v44 = HeterogeneousBuffer.type(at:)(v43, v36, v37, v38, v39);
  v45 = swift_conformsToProtocol2();
  if (!v45)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v44, &v210, v40, v42, v45, v193);
  *&v197[6] = v193[0];
  *&v197[22] = v193[1];
  *&v197[38] = v194;
  *&v204[10] = *v197;
  *&v203 = a1;
  *(&v203 + 1) = a5;
  *v204 = v184;
  v204[8] = v183;
  v204[9] = v30;
  *&v204[26] = *&v197[16];
  *&v204[36] = *&v197[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](a1);
  v207 = *&v197[32];
  v208 = v198;
  v209 = v199;
  v205 = *v197;
  v206 = *&v197[16];
  v46 = Hasher.finalize()();
  if (v188[48])
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v47 = *v188;
  if (v47 >= *(v6 + 116))
  {
    goto LABEL_139;
  }

  v48 = *(v6 + 104);
  if (!v48)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v49 = v46;
  v50 = *(*(*(v48 + 8 * v47) + 8) + 192);
  v51 = *v50;
  if ((*v50)[1].Kind)
  {
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(&v203);
    if (v53)
    {
      v54 = *(v51[3].Description + v52);
      goto LABEL_34;
    }

    v47 = *v188;
    v55 = v188[48] == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v197[32] = *&v204[16];
  v198 = *&v204[32];
  LODWORD(v199) = *&v204[48];
  *v197 = v203;
  *&v197[16] = *v204;
  if (!v55)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v6 = v191;
  if (v47 >= *(v191 + 116))
  {
    goto LABEL_152;
  }

  v58 = *(v191 + 104);
  if (v58)
  {
    v59 = v56;
    v60 = v57;
    v61 = *(*(v58 + 8 * v47) + 8);
    v62 = *(v61 + 212);
    if (v62 == *(v61 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v62);
    }

    v63 = *(v61 + 200);
    if (!v63)
    {
      goto LABEL_197;
    }

    v64 = *(v61 + 212);
    v65 = v63 + 120 * v64;
    v66 = v198;
    *(v65 + 32) = *&v197[32];
    *(v65 + 48) = v66;
    v67 = v199;
    v68 = *&v197[16];
    *v65 = *v197;
    *(v65 + 16) = v68;
    *(v65 + 64) = v67;
    *(v65 + 72) = v49;
    *(v65 + 80) = 0;
    *(v65 + 88) = 0;
    *(v65 + 96) = 0;
    *(v65 + 104) = v59;
    *(v65 + 112) = v60;
    if (v64 == -1)
    {
      goto LABEL_153;
    }

    *(v61 + 212) = v64 + 1;
    v54 = v64;
    v69 = *v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v195 = *v50;
    *v50 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, &v203, isUniquelyReferenced_nonNull_native);
    v71 = *v50;
    *v50 = v195;

LABEL_34:
    if (v188[48])
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v72 = *v188;
    if (v72 < *(v6 + 116))
    {
      v73 = *(v6 + 104);
      if (!v73)
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v74 = *(*(v73 + 8 * v72) + 8);
      if (*(v74 + 44) > a2)
      {
        v75 = *(v74 + 32);
        if (!v75)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v76 = (v75 + (v187 << 7));
        v77 = v76[1];
        *v197 = *v76;
        *&v197[16] = v77;
        v78 = v76[5];
        v199 = v76[4];
        v200 = v78;
        v79 = v76[7];
        v201 = v76[6];
        v202 = v79;
        v80 = v76[3];
        *&v197[32] = v76[2];
        v198 = v80;
        v81 = *&v197[8];
        v82 = *&v197[16];
        v83 = v197[24];
        v84 = *&v197[32];
        LOBYTE(v195) = v197[24];
        v85 = HeterogeneousBuffer.type(at:)(0, *&v197[8], *&v197[16], v197[24], *&v197[32]);
        v86 = swift_conformsToProtocol2();
        if (!v86)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v87 = v86;
        LOBYTE(v195) = v83;
        v88 = HeterogeneousBuffer.index(after:)(0, v81, v82, v83, v84);
        LOBYTE(v195) = v83;
        v89 = HeterogeneousBuffer.type(at:)(v88, v81, v82, v83, v84);
        v90 = swift_conformsToProtocol2();
        if (!v90)
        {
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v89, v197, v85, v87, v90, &v195);
        if (v195 == &type metadata for Event.AttributeStack || v195 == &type metadata for Event.AttributeValue)
        {
          v92 = v196;
        }

        else
        {
          v92 = -1;
        }

        v93 = v188;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v92, a1, a5, *&v54 | 0xFFFFFFFF00000000, 4, a3 & 1);
        if (v188[48])
        {
          goto LABEL_184;
        }

        v95 = *v188;
        if (v95 < *(v6 + 116))
        {
          v96 = *(v6 + 104);
          if (!v96)
          {
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          v97 = *(*(v96 + 8 * v95) + 8);
          v98 = *(v97 + 44);
          if (v98 > a2)
          {
            v99 = *(v97 + 32);
            if (!v99)
            {
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
              goto LABEL_189;
            }

            v100 = v94;
            if (v94 < v98)
            {
              v101 = (v99 + (v187 << 7));
              v190 = v94;
              v102 = (v99 + (v94 << 7));
              v103 = *v102;
              v104 = v101[31];
              if (v104 == v101[30])
              {
                specialized UnsafeArray.growToCapacity(_:)(2 * v104);
              }

              v105 = *(v101 + 14);
              if (!v105)
              {
                goto LABEL_187;
              }

              v106 = v101[31];
              v107 = v105 + 8 * v106;
              *v107 = -24448;
              *(v107 + 4) = v103;
              if (v106 != -1)
              {
                v101[31] = v106 + 1;
                v108 = *v101;
                v109 = v102[31];
                if (v109 == v102[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)(2 * v109);
                }

                v110 = *(v102 + 14);
                if (!v110)
                {
                  goto LABEL_188;
                }

                v111 = v102[31];
                v112 = v110 + 8 * v111;
                *v112 = 24704;
                *(v112 + 4) = v108;
                if (v111 != -1)
                {
                  v102[31] = v111 + 1;
                  if (v188[48])
                  {
LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

                  v113 = v191;
                  v114 = *v188;
                  if (v114 < *(v191 + 116))
                  {
                    v115 = *(v191 + 104);
                    if (!v115)
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

                    v116 = *(*(v115 + 8 * v114) + 8);
                    if (*(v116 + 44) > v186)
                    {
                      v117 = *(v116 + 32);
                      if (!v117)
                      {
                        goto LABEL_191;
                      }

                      v118 = 0;
                      v119 = v117 + (v187 << 7);
                      v120 = *(v119 + 112);
                      v121 = *(v119 + 124);
                      v122 = MEMORY[0x277D84F90];
LABEL_67:
                      v123 = (v120 + 8 * v118);
                      while (v121 != v118)
                      {
                        if (v118 >= v121)
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

                        if (!v120)
                        {
                          goto LABEL_154;
                        }

                        v124 = v118 + 1;
                        if (__OFADD__(v118, 1))
                        {
                          goto LABEL_122;
                        }

                        v126 = *v123;
                        v123 += 4;
                        v125 = v126;
                        ++v118;
                        if ((v126 & 0x80000000) == 0 && (v125 & 0xC03) != 0)
                        {
                          v127 = *(v123 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 16) + 1, 1);
                          }

                          v129 = *(v122 + 16);
                          v128 = *(v122 + 24);
                          v130 = v129 + 1;
                          if (v129 >= v128 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1);
                            v130 = v129 + 1;
                          }

                          *(v122 + 16) = v130;
                          v131 = v122 + 8 * v129;
                          *(v131 + 32) = v125;
                          *(v131 + 36) = v127;
                          v118 = v124;
                          v113 = v191;
                          goto LABEL_67;
                        }
                      }

                      v132 = *(v122 + 16);
                      if (v132)
                      {
                        v133 = 0;
                        v134 = (v122 + 36);
                        while (v133 < *(v122 + 16))
                        {
                          if (v93[48])
                          {
                            goto LABEL_155;
                          }

                          v135 = *v93;
                          if (v135 >= *(v113 + 116))
                          {
                            goto LABEL_124;
                          }

                          v136 = *(v113 + 104);
                          if (!v136)
                          {
                            goto LABEL_156;
                          }

                          v137 = *v134;
                          v138 = *(*(v136 + 8 * v135) + 8);
                          v139 = *(v138 + 44);
                          if (v137 >= v139)
                          {
                            goto LABEL_125;
                          }

                          v140 = *(v138 + 32);
                          if (!v140)
                          {
                            goto LABEL_157;
                          }

                          if (v100 >= v139)
                          {
                            goto LABEL_126;
                          }

                          v141 = *(v134 - 2);
                          v142 = (v140 + (v137 << 7));
                          v143 = (v140 + (v190 << 7));
                          v144 = *v143;
                          v145 = v142[31];
                          if (v145 == v142[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v145);
                          }

                          v146 = *(v142 + 14);
                          if (!v146)
                          {
                            goto LABEL_158;
                          }

                          v147 = v141 & 0x1FFF;
                          v148 = v142[31];
                          v149 = v146 + 8 * v148;
                          *v149 = v147 | 0xA000;
                          *(v149 + 4) = v144;
                          if (v148 == -1)
                          {
                            goto LABEL_127;
                          }

                          v142[31] = v148 + 1;
                          v150 = *v142;
                          v151 = v143[31];
                          if (v151 == v143[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v151);
                          }

                          v152 = *(v143 + 14);
                          v93 = v188;
                          if (!v152)
                          {
                            goto LABEL_159;
                          }

                          v153 = v143[31];
                          v154 = v152 + 8 * v153;
                          *v154 = v147 | 0x6000;
                          *(v154 + 4) = v150;
                          if (v153 == -1)
                          {
                            goto LABEL_128;
                          }

                          ++v133;
                          v143[31] = v153 + 1;
                          v134 += 2;
                          v113 = v191;
                          if (v132 == v133)
                          {
                            goto LABEL_97;
                          }
                        }

                        goto LABEL_123;
                      }

LABEL_97:

                      v155 = *(v181 + 16);
                      if (v155)
                      {
                        v156 = (v181 + 32);
                        while (!v93[48])
                        {
                          v157 = *v93;
                          if (v157 >= *(v113 + 116))
                          {
                            goto LABEL_129;
                          }

                          v158 = *(v113 + 104);
                          if (!v158)
                          {
                            goto LABEL_161;
                          }

                          v160 = *v156++;
                          v159 = v160;
                          v161 = *(*(v158 + 8 * v157) + 8);
                          v162 = *(v161 + 44);
                          if (v160 >= v162)
                          {
                            goto LABEL_130;
                          }

                          v163 = *(v161 + 32);
                          if (!v163)
                          {
                            goto LABEL_162;
                          }

                          if (v100 >= v162)
                          {
                            goto LABEL_131;
                          }

                          v164 = (v163 + (v159 << 7));
                          v165 = (v163 + (v190 << 7));
                          v166 = *v165;
                          v167 = v164[31];
                          if (v167 == v164[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v167);
                          }

                          v168 = *(v164 + 14);
                          if (!v168)
                          {
                            goto LABEL_163;
                          }

                          v169 = v164[31];
                          v170 = v168 + 8 * v169;
                          *v170 = -24512;
                          *(v170 + 4) = v166;
                          if (v169 == -1)
                          {
                            goto LABEL_132;
                          }

                          v164[31] = v169 + 1;
                          v171 = *v164;
                          v172 = v165[31];
                          if (v172 == v165[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v172);
                          }

                          v173 = *(v165 + 14);
                          if (!v173)
                          {
                            goto LABEL_164;
                          }

                          v174 = v165[31];
                          v175 = v173 + 8 * v174;
                          *v175 = 24640;
                          *(v175 + 4) = v171;
                          if (v174 == -1)
                          {
                            goto LABEL_133;
                          }

                          v165[31] = v174 + 1;
                          --v155;
                          v113 = v191;
                          if (!v155)
                          {
                            goto LABEL_114;
                          }
                        }

                        goto LABEL_160;
                      }

LABEL_114:
                      if (v93[48])
                      {
                        goto LABEL_192;
                      }

                      v176 = *v93;
                      if (v176 < *(v113 + 116))
                      {
                        v177 = *(v113 + 104);
                        if (!v177)
                        {
                          goto LABEL_193;
                        }

                        v178 = *(*(v177 + 8 * v176) + 8);
                        v179 = *(v178 + 44);
                        if (v100 < v179)
                        {
                          v180 = *(v178 + 32);
                          if (!v180)
                          {
                            goto LABEL_194;
                          }

                          if (v179 > v186)
                          {
                            Event.hide(_:within:)((v180 + (v187 << 7)), v93);
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

{
  *&v183 = a1;
  *(&v183 + 1) = a5;
  if (v5[48])
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v6 = *(v5 + 22);
  v7 = *v5;
  if (v7 >= *(v6 + 116))
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v9 = a2;
  v10 = *(*(v8 + 8 * v7) + 8);
  if (*(v10 + 44) <= a2)
  {
    goto LABEL_134;
  }

  v182 = v5;
  v11 = *(v10 + 32);
  if (!v11)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v181 = a2;
  v13 = (v11 + (a2 << 7));
  v14 = v13[1];
  v212 = *v13;
  v213 = v14;
  v15 = v13[5];
  v216 = v13[4];
  v217 = v15;
  v16 = v13[7];
  v218 = v13[6];
  v219 = v16;
  v17 = v13[3];
  v214 = v13[2];
  v215 = v17;
  LOBYTE(v204) = BYTE8(v213);
  v18 = HeterogeneousBuffer.type(at:)(0, *(&v212 + 1), v213, SBYTE8(v213), v214);
  v19 = swift_conformsToProtocol2();
  if (!v19)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v20 = v19;
  v21 = HeterogeneousBuffer.index(after:)(0, *(&v212 + 1), v213, SBYTE8(v213), v214);
  LOBYTE(v204) = BYTE8(v213);
  v22 = HeterogeneousBuffer.type(at:)(v21, *(&v212 + 1), v213, SBYTE8(v213), v214);
  v23 = swift_conformsToProtocol2();
  if (!v23)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v22, &v212, v18, v20, v23, &v186);
  if (v182[48])
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v24 = *v182;
  if (v24 >= *(v6 + 116))
  {
    goto LABEL_135;
  }

  v25 = *(v6 + 104);
  if (!v25)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v186 != &type metadata for Event.AttributeValue && v186 != &type metadata for Event.AttributeStack)
  {
    goto LABEL_152;
  }

  v26 = *(*(v25 + 8 * v24) + 8);
  if (*(v26 + 44) <= v9)
  {
    goto LABEL_136;
  }

  v177 = a4;
  v180 = v9;
  v27 = *(v26 + 32);
  if (!v27)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v28 = (v27 + (v181 << 7));
  v29 = v28[1];
  v204 = *v28;
  v205 = v29;
  v30 = v28[5];
  v208 = v28[4];
  v209 = v30;
  v31 = v28[7];
  v210 = v28[6];
  v211 = v31;
  v32 = v28[3];
  v206 = v28[2];
  v207 = v32;
  v33 = *(&v204 + 1);
  v34 = v205;
  v35 = BYTE8(v205);
  v36 = v206;
  v191[0] = BYTE8(v205);
  v37 = HeterogeneousBuffer.type(at:)(0, *(&v204 + 1), v205, SBYTE8(v205), v206);
  v38 = swift_conformsToProtocol2();
  if (!v38)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v39 = v38;
  v191[0] = v35;
  v40 = HeterogeneousBuffer.index(after:)(0, v33, v34, v35, v36);
  v191[0] = v35;
  v41 = HeterogeneousBuffer.type(at:)(v40, v33, v34, v35, v36);
  v42 = swift_conformsToProtocol2();
  if (!v42)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v41, &v204, v37, v39, v42, v187);
  *&v191[6] = v187[0];
  *&v191[22] = v187[1];
  *&v191[38] = v188;
  *&v198[10] = *v191;
  v197 = v183;
  *v198 = v183;
  *&v198[8] = 0;
  *&v198[26] = *&v191[16];
  *&v198[36] = *&v191[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](v183);
  v201 = *&v191[32];
  v202 = v192;
  v203 = v193;
  v199 = *v191;
  v200 = *&v191[16];
  v43 = Hasher.finalize()();
  if (v182[48])
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v44 = *v182;
  if (v44 >= *(v6 + 116))
  {
    goto LABEL_137;
  }

  v45 = *(v6 + 104);
  if (!v45)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v46 = v43;
  v47 = *(*(*(v45 + 8 * v44) + 8) + 192);
  v48 = *v47;
  if ((*v47)[1].Kind)
  {
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v197);
    if (v50)
    {
      v51 = *(v48[3].Description + v49);
      goto LABEL_33;
    }

    v44 = *v182;
    v52 = v182[48] == 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v191[32] = *&v198[16];
  v192 = *&v198[32];
  LODWORD(v193) = *&v198[48];
  *v191 = v197;
  *&v191[16] = *v198;
  if (!v52)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  if (v44 >= *(v6 + 116))
  {
    goto LABEL_150;
  }

  v55 = *(v6 + 104);
  if (v55)
  {
    v56 = v53;
    v57 = v54;
    v58 = *(*(v55 + 8 * v44) + 8);
    v59 = *(v58 + 212);
    if (v59 == *(v58 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v59);
    }

    v60 = *(v58 + 200);
    v9 = v180;
    if (!v60)
    {
      goto LABEL_194;
    }

    v61 = *(v58 + 212);
    v62 = v60 + 120 * v61;
    v63 = v192;
    *(v62 + 32) = *&v191[32];
    *(v62 + 48) = v63;
    v64 = v193;
    v65 = *&v191[16];
    *v62 = *v191;
    *(v62 + 16) = v65;
    *(v62 + 64) = v64;
    *(v62 + 72) = v46;
    *(v62 + 80) = 0;
    *(v62 + 88) = 0;
    *(v62 + 96) = 0;
    *(v62 + 104) = v56;
    *(v62 + 112) = v57;
    if (v61 == -1)
    {
      goto LABEL_151;
    }

    *(v58 + 212) = v61 + 1;
    v51 = v61;
    v66 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = *v47;
    *v47 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, &v197, isUniquelyReferenced_nonNull_native);
    v68 = *v47;
    *v47 = v189;

LABEL_33:
    if (v182[48])
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v69 = *v182;
    if (v69 < *(v6 + 116))
    {
      v70 = *(v6 + 104);
      if (!v70)
      {
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v71 = *(*(v70 + 8 * v69) + 8);
      if (*(v71 + 44) > v9)
      {
        v72 = *(v71 + 32);
        if (!v72)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v73 = (v72 + (v181 << 7));
        v74 = v73[1];
        *v191 = *v73;
        *&v191[16] = v74;
        v75 = v73[5];
        v193 = v73[4];
        v194 = v75;
        v76 = v73[7];
        v195 = v73[6];
        v196 = v76;
        v77 = v73[3];
        *&v191[32] = v73[2];
        v192 = v77;
        v78 = *&v191[8];
        v79 = *&v191[16];
        v80 = v191[24];
        v81 = *&v191[32];
        LOBYTE(v189) = v191[24];
        v82 = HeterogeneousBuffer.type(at:)(0, *&v191[8], *&v191[16], v191[24], *&v191[32]);
        v83 = swift_conformsToProtocol2();
        if (!v83)
        {
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        v84 = v83;
        LOBYTE(v189) = v80;
        v85 = HeterogeneousBuffer.index(after:)(0, v78, v79, v80, v81);
        LOBYTE(v189) = v80;
        v86 = HeterogeneousBuffer.type(at:)(v85, v78, v79, v80, v81);
        v87 = swift_conformsToProtocol2();
        if (!v87)
        {
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v86, v191, v82, v84, v87, &v189);
        if (v189 == &type metadata for Event.AttributeStack || v189 == &type metadata for Event.AttributeValue)
        {
          v89 = v190;
        }

        else
        {
          v89 = -1;
        }

        v90 = v182;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v89, v183, *(&v183 + 1), *&v51 | 0xFFFFFFFF00000000, 4, a3 & 1);
        if (v182[48])
        {
          goto LABEL_181;
        }

        v92 = *v182;
        if (v92 < *(v6 + 116))
        {
          v93 = *(v6 + 104);
          if (!v93)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v94 = *(*(v93 + 8 * v92) + 8);
          v95 = *(v94 + 44);
          if (v95 > v180)
          {
            v96 = *(v94 + 32);
            if (!v96)
            {
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
              goto LABEL_186;
            }

            v97 = v91;
            if (v91 < v95)
            {
              v185 = v6;
              v98 = (v96 + (v181 << 7));
              v184 = v91;
              v99 = (v96 + (v91 << 7));
              v100 = *v99;
              v101 = v98[31];
              if (v101 == v98[30])
              {
                specialized UnsafeArray.growToCapacity(_:)(2 * v101);
              }

              v102 = *(v98 + 14);
              if (!v102)
              {
                goto LABEL_184;
              }

              v103 = v98[31];
              v104 = v102 + 8 * v103;
              *v104 = -24448;
              *(v104 + 4) = v100;
              if (v103 != -1)
              {
                v98[31] = v103 + 1;
                v105 = *v98;
                v106 = v99[31];
                if (v106 == v99[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)(2 * v106);
                }

                v107 = *(v99 + 14);
                v108 = v185;
                if (!v107)
                {
                  goto LABEL_185;
                }

                v109 = v99[31];
                v110 = v107 + 8 * v109;
                *v110 = 24704;
                *(v110 + 4) = v105;
                if (v109 != -1)
                {
                  v99[31] = v109 + 1;
                  if (v182[48])
                  {
LABEL_186:
                    __break(1u);
                    goto LABEL_187;
                  }

                  v111 = *v182;
                  if (v111 < *(v185 + 116))
                  {
                    v112 = *(v185 + 104);
                    if (!v112)
                    {
LABEL_187:
                      __break(1u);
LABEL_188:
                      __break(1u);
LABEL_189:
                      __break(1u);
LABEL_190:
                      __break(1u);
LABEL_191:
                      __break(1u);
                      goto LABEL_192;
                    }

                    v113 = *(*(v112 + 8 * v111) + 8);
                    if (*(v113 + 44) > v180)
                    {
                      v114 = *(v113 + 32);
                      if (!v114)
                      {
                        goto LABEL_188;
                      }

                      v115 = 0;
                      v116 = v114 + (v181 << 7);
                      v117 = *(v116 + 112);
                      v118 = *(v116 + 124);
                      v119 = MEMORY[0x277D84F90];
LABEL_66:
                      v120 = (v117 + 8 * v115);
                      while (v118 != v115)
                      {
                        if (v115 >= v118)
                        {
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
                          goto LABEL_133;
                        }

                        if (!v117)
                        {
                          goto LABEL_153;
                        }

                        v121 = v115 + 1;
                        if (__OFADD__(v115, 1))
                        {
                          goto LABEL_121;
                        }

                        v123 = *v120;
                        v120 += 4;
                        v122 = v123;
                        ++v115;
                        if ((v123 & 0x80000000) == 0 && (v122 & 0xC03) != 0)
                        {
                          v179 = *(v120 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 16) + 1, 1);
                          }

                          v125 = *(v119 + 16);
                          v124 = *(v119 + 24);
                          v126 = v125 + 1;
                          if (v125 >= v124 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1);
                            v126 = v125 + 1;
                          }

                          *(v119 + 16) = v126;
                          v127 = v119 + 8 * v125;
                          *(v127 + 32) = v122;
                          *(v127 + 36) = v179;
                          v115 = v121;
                          goto LABEL_66;
                        }
                      }

                      v128 = *(v119 + 16);
                      if (v128)
                      {
                        v129 = 0;
                        v130 = (v119 + 36);
                        while (v129 < *(v119 + 16))
                        {
                          if (v90[48])
                          {
                            goto LABEL_154;
                          }

                          v131 = *v90;
                          if (v131 >= *(v108 + 116))
                          {
                            goto LABEL_123;
                          }

                          v132 = *(v108 + 104);
                          if (!v132)
                          {
                            goto LABEL_155;
                          }

                          v133 = *v130;
                          v134 = *(*(v132 + 8 * v131) + 8);
                          v135 = *(v134 + 44);
                          if (v133 >= v135)
                          {
                            goto LABEL_124;
                          }

                          v136 = *(v134 + 32);
                          if (!v136)
                          {
                            goto LABEL_156;
                          }

                          if (v97 >= v135)
                          {
                            goto LABEL_125;
                          }

                          v137 = *(v130 - 2);
                          v138 = (v136 + (v133 << 7));
                          v139 = (v136 + (v184 << 7));
                          v140 = *v139;
                          v141 = v138[31];
                          if (v141 == v138[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v141);
                          }

                          v142 = *(v138 + 14);
                          if (!v142)
                          {
                            goto LABEL_157;
                          }

                          v143 = v137 & 0x1FFF;
                          v144 = v138[31];
                          v145 = v142 + 8 * v144;
                          *v145 = v143 | 0xA000;
                          *(v145 + 4) = v140;
                          if (v144 == -1)
                          {
                            goto LABEL_126;
                          }

                          v138[31] = v144 + 1;
                          v146 = *v138;
                          v147 = v139[31];
                          if (v147 == v139[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v147);
                          }

                          v148 = *(v139 + 14);
                          v90 = v182;
                          if (!v148)
                          {
                            goto LABEL_158;
                          }

                          v149 = v139[31];
                          v150 = v148 + 8 * v149;
                          *v150 = v143 | 0x6000;
                          *(v150 + 4) = v146;
                          if (v149 == -1)
                          {
                            goto LABEL_127;
                          }

                          ++v129;
                          v139[31] = v149 + 1;
                          v130 += 2;
                          v108 = v185;
                          if (v128 == v129)
                          {
                            goto LABEL_96;
                          }
                        }

                        goto LABEL_122;
                      }

LABEL_96:

                      v151 = *(v177 + 16);
                      if (v151)
                      {
                        v152 = (v177 + 32);
                        while (!v90[48])
                        {
                          v153 = *v90;
                          if (v153 >= *(v108 + 116))
                          {
                            goto LABEL_128;
                          }

                          v154 = *(v108 + 104);
                          if (!v154)
                          {
                            goto LABEL_160;
                          }

                          v156 = *v152++;
                          v155 = v156;
                          v157 = *(*(v154 + 8 * v153) + 8);
                          v158 = *(v157 + 44);
                          if (v156 >= v158)
                          {
                            goto LABEL_129;
                          }

                          v159 = *(v157 + 32);
                          if (!v159)
                          {
                            goto LABEL_161;
                          }

                          if (v97 >= v158)
                          {
                            goto LABEL_130;
                          }

                          v160 = (v159 + (v155 << 7));
                          v161 = (v159 + (v184 << 7));
                          v162 = *v161;
                          v163 = v160[31];
                          if (v163 == v160[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v163);
                          }

                          v164 = *(v160 + 14);
                          if (!v164)
                          {
                            goto LABEL_162;
                          }

                          v165 = v160[31];
                          v166 = v164 + 8 * v165;
                          *v166 = -24512;
                          *(v166 + 4) = v162;
                          if (v165 == -1)
                          {
                            goto LABEL_131;
                          }

                          v160[31] = v165 + 1;
                          v167 = *v160;
                          v168 = v161[31];
                          if (v168 == v161[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v168);
                          }

                          v169 = *(v161 + 14);
                          v108 = v185;
                          if (!v169)
                          {
                            goto LABEL_163;
                          }

                          v170 = v161[31];
                          v171 = v169 + 8 * v170;
                          *v171 = 24640;
                          *(v171 + 4) = v167;
                          if (v170 == -1)
                          {
                            goto LABEL_132;
                          }

                          v161[31] = v170 + 1;
                          if (!--v151)
                          {
                            goto LABEL_113;
                          }
                        }

                        goto LABEL_159;
                      }

LABEL_113:
                      if (v90[48])
                      {
                        goto LABEL_189;
                      }

                      v172 = *v90;
                      if (v172 < *(v108 + 116))
                      {
                        v173 = *(v108 + 104);
                        if (!v173)
                        {
                          goto LABEL_190;
                        }

                        v174 = *(*(v173 + 8 * v172) + 8);
                        v175 = *(v174 + 44);
                        if (v97 < v175)
                        {
                          v176 = *(v174 + 32);
                          if (!v176)
                          {
                            goto LABEL_191;
                          }

                          if (v175 > v180)
                          {
                            Event.hide(_:within:)((v176 + (v181 << 7)), v90);
                            return;
                          }

                          goto LABEL_149;
                        }

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
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
                        goto LABEL_164;
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

LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
}

void specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  if (v4[48])
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v5 = *(v4 + 22);
  v6 = *v4;
  if (v6 >= *(v5 + 116))
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v9 = *(*(v7 + 8 * v6) + 8);
  if (*(v9 + 44) <= a2)
  {
    goto LABEL_137;
  }

  v187 = v4;
  v10 = *(v9 + 32);
  if (!v10)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v186 = a2;
  v12 = (v10 + (a2 << 7));
  v13 = v12[1];
  v217 = *v12;
  v218 = v13;
  v14 = v12[5];
  v221 = v12[4];
  v222 = v14;
  v15 = v12[7];
  v223 = v12[6];
  v224 = v15;
  v16 = v12[3];
  v219 = v12[2];
  v220 = v16;
  LOBYTE(v209) = BYTE8(v218);
  v17 = HeterogeneousBuffer.type(at:)(0, *(&v217 + 1), v218, SBYTE8(v218), v219);
  v18 = swift_conformsToProtocol2();
  if (!v18)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v19 = v18;
  v189 = v5;
  v20 = HeterogeneousBuffer.index(after:)(0, *(&v217 + 1), v218, SBYTE8(v218), v219);
  LOBYTE(v209) = BYTE8(v218);
  v21 = HeterogeneousBuffer.type(at:)(v20, *(&v217 + 1), v218, SBYTE8(v218), v219);
  v22 = swift_conformsToProtocol2();
  if (!v22)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v21, &v217, v17, v19, v22, &v190);
  if (v187[48])
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v23 = *v187;
  if (v23 >= *(v5 + 116))
  {
    goto LABEL_138;
  }

  v24 = *(v5 + 104);
  if (!v24)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (v190 != &type metadata for Event.AttributeValue && v190 != &type metadata for Event.AttributeStack)
  {
    goto LABEL_156;
  }

  static PlatformViews.subtype(source:within:)(v191, *(*(v24 + 8 * v23) + 8), &v209);
  if (v187[48])
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v25 = *v187;
  if (v25 >= *(v5 + 116))
  {
    goto LABEL_139;
  }

  v26 = *(v5 + 104);
  if (!v26)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v27 = *(*(v26 + 8 * v25) + 8);
  if (*(v27 + 44) <= a2)
  {
    goto LABEL_140;
  }

  v181 = a3;
  v185 = a2;
  v28 = *(v27 + 32);
  if (!v28)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v183 = v209;
  v182 = BYTE8(v209);
  v29 = BYTE9(v209);
  v30 = (v28 + (v186 << 7));
  v31 = v30[1];
  v209 = *v30;
  v210 = v31;
  v32 = v30[5];
  v213 = v30[4];
  v214 = v32;
  v33 = v30[7];
  v215 = v30[6];
  v216 = v33;
  v34 = v30[3];
  v211 = v30[2];
  v212 = v34;
  v35 = *(&v209 + 1);
  v36 = v210;
  v37 = BYTE8(v210);
  v38 = v211;
  v196[0] = BYTE8(v210);
  v39 = HeterogeneousBuffer.type(at:)(0, *(&v209 + 1), v210, SBYTE8(v210), v211);
  v40 = swift_conformsToProtocol2();
  if (!v40)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v41 = v40;
  v196[0] = v37;
  v42 = HeterogeneousBuffer.index(after:)(0, v35, v36, v37, v38);
  v196[0] = v37;
  v43 = HeterogeneousBuffer.type(at:)(v42, v35, v36, v37, v38);
  v44 = swift_conformsToProtocol2();
  if (!v44)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v43, &v209, v39, v41, v44, v192);
  *&v196[6] = v192[0];
  *&v196[22] = v192[1];
  *&v196[38] = v193;
  *&v203[10] = *v196;
  *&v202 = a1;
  *(&v202 + 1) = &protocol witness table for PlatformViews;
  *v203 = v183;
  v203[8] = v182;
  v203[9] = v29;
  *&v203[26] = *&v196[16];
  *&v203[36] = *&v196[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](a1);
  v206 = *&v196[32];
  v207 = v197;
  v208 = v198;
  v204 = *v196;
  v205 = *&v196[16];
  v45 = Hasher.finalize()();
  if (v187[48])
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v46 = *v187;
  if (v46 >= *(v5 + 116))
  {
    goto LABEL_141;
  }

  v47 = *(v5 + 104);
  if (!v47)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v48 = v45;
  v49 = *(*(*(v47 + 8 * v46) + 8) + 192);
  v50 = *v49;
  if ((*v49)[1].Kind)
  {
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(&v202);
    if (v52)
    {
      v53 = *(v50[3].Description + v51);
      goto LABEL_36;
    }

    v46 = *v187;
    v54 = v187[48] == 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v196[32] = *&v203[16];
  v197 = *&v203[32];
  LODWORD(v198) = *&v203[48];
  *v196 = v202;
  *&v196[16] = *v203;
  if (!v54)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v5 = v189;
  if (v46 >= *(v189 + 116))
  {
    goto LABEL_154;
  }

  v57 = *(v189 + 104);
  if (v57)
  {
    v58 = v55;
    v59 = v56;
    v60 = *(*(v57 + 8 * v46) + 8);
    v61 = *(v60 + 212);
    if (v61 == *(v60 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v61);
    }

    v62 = *(v60 + 200);
    if (!v62)
    {
      goto LABEL_200;
    }

    v63 = *(v60 + 212);
    v64 = v62 + 120 * v63;
    v65 = v197;
    *(v64 + 32) = *&v196[32];
    *(v64 + 48) = v65;
    v66 = v198;
    v67 = *&v196[16];
    *v64 = *v196;
    *(v64 + 16) = v67;
    *(v64 + 64) = v66;
    *(v64 + 72) = v48;
    *(v64 + 80) = 0;
    *(v64 + 88) = 0;
    *(v64 + 96) = 0;
    *(v64 + 104) = v58;
    *(v64 + 112) = v59;
    if (v63 == -1)
    {
      goto LABEL_155;
    }

    *(v60 + 212) = v63 + 1;
    v53 = v63;
    v68 = *v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = *v49;
    *v49 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, &v202, isUniquelyReferenced_nonNull_native);
    v70 = *v49;
    *v49 = v194;

LABEL_36:
    if (v187[48])
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v71 = *v187;
    if (v71 < *(v5 + 116))
    {
      v72 = *(v5 + 104);
      if (!v72)
      {
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v73 = *(*(v72 + 8 * v71) + 8);
      if (*(v73 + 44) > a2)
      {
        v74 = *(v73 + 32);
        if (!v74)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        v75 = (v74 + (v186 << 7));
        v76 = v75[1];
        *v196 = *v75;
        *&v196[16] = v76;
        v77 = v75[5];
        v198 = v75[4];
        v199 = v77;
        v78 = v75[7];
        v200 = v75[6];
        v201 = v78;
        v79 = v75[3];
        *&v196[32] = v75[2];
        v197 = v79;
        v80 = *&v196[8];
        v81 = *&v196[16];
        v82 = v196[24];
        v83 = *&v196[32];
        LOBYTE(v194) = v196[24];
        v84 = HeterogeneousBuffer.type(at:)(0, *&v196[8], *&v196[16], v196[24], *&v196[32]);
        v85 = swift_conformsToProtocol2();
        if (!v85)
        {
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        v86 = v85;
        LOBYTE(v194) = v82;
        v87 = HeterogeneousBuffer.index(after:)(0, v80, v81, v82, v83);
        LOBYTE(v194) = v82;
        v88 = HeterogeneousBuffer.type(at:)(v87, v80, v81, v82, v83);
        v89 = swift_conformsToProtocol2();
        if (!v89)
        {
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v88, v196, v84, v86, v89, &v194);
        if (v194 == &type metadata for Event.AttributeStack || v194 == &type metadata for Event.AttributeValue)
        {
          v91 = v195;
        }

        else
        {
          v91 = -1;
        }

        v92 = v187;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v91, a1, &protocol witness table for PlatformViews, *&v53 | 0xFFFFFFFF00000000, 4, v181 & 1);
        if (v187[48])
        {
          goto LABEL_187;
        }

        v94 = *v187;
        if (v94 < *(v5 + 116))
        {
          v95 = *(v5 + 104);
          if (!v95)
          {
LABEL_188:
            __break(1u);
            goto LABEL_189;
          }

          v96 = *(*(v95 + 8 * v94) + 8);
          v97 = *(v96 + 44);
          if (v97 > a2)
          {
            v98 = *(v96 + 32);
            if (!v98)
            {
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v99 = v93;
            if (v93 < v97)
            {
              v100 = (v98 + (v186 << 7));
              v188 = v93;
              v101 = (v98 + (v93 << 7));
              v102 = *v101;
              v103 = v100[31];
              if (v103 == v100[30])
              {
                specialized UnsafeArray.growToCapacity(_:)(2 * v103);
              }

              v104 = *(v100 + 14);
              if (!v104)
              {
                goto LABEL_190;
              }

              v105 = v100[31];
              v106 = v104 + 8 * v105;
              *v106 = -24448;
              *(v106 + 4) = v102;
              if (v105 != -1)
              {
                v100[31] = v105 + 1;
                v107 = *v100;
                v108 = v101[31];
                if (v108 == v101[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)(2 * v108);
                }

                v109 = *(v101 + 14);
                if (!v109)
                {
                  goto LABEL_191;
                }

                v110 = v101[31];
                v111 = v109 + 8 * v110;
                *v111 = 24704;
                *(v111 + 4) = v107;
                if (v110 != -1)
                {
                  v101[31] = v110 + 1;
                  if (v187[48])
                  {
LABEL_192:
                    __break(1u);
                    goto LABEL_193;
                  }

                  v112 = v189;
                  v113 = *v187;
                  if (v113 < *(v189 + 116))
                  {
                    v114 = *(v189 + 104);
                    if (!v114)
                    {
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
                      goto LABEL_198;
                    }

                    v115 = *(*(v114 + 8 * v113) + 8);
                    if (*(v115 + 44) > v185)
                    {
                      v116 = *(v115 + 32);
                      if (!v116)
                      {
                        goto LABEL_194;
                      }

                      v117 = 0;
                      v118 = v116 + (v186 << 7);
                      v119 = *(v118 + 112);
                      v120 = *(v118 + 124);
                      v121 = MEMORY[0x277D84F90];
LABEL_69:
                      v122 = (v119 + 8 * v117);
                      while (v120 != v117)
                      {
                        if (v117 >= v120)
                        {
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
LABEL_135:
                          __break(1u);
                          goto LABEL_136;
                        }

                        if (!v119)
                        {
                          goto LABEL_157;
                        }

                        v123 = v117 + 1;
                        if (__OFADD__(v117, 1))
                        {
                          goto LABEL_124;
                        }

                        v125 = *v122;
                        v122 += 4;
                        v124 = v125;
                        ++v117;
                        if ((v125 & 0x80000000) == 0 && (v124 & 0xC03) != 0)
                        {
                          v126 = *(v122 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1);
                          }

                          v128 = *(v121 + 16);
                          v127 = *(v121 + 24);
                          v129 = v128 + 1;
                          if (v128 >= v127 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1);
                            v129 = v128 + 1;
                          }

                          *(v121 + 16) = v129;
                          v130 = v121 + 8 * v128;
                          *(v130 + 32) = v124;
                          *(v130 + 36) = v126;
                          v117 = v123;
                          v112 = v189;
                          goto LABEL_69;
                        }
                      }

                      v131 = *(v121 + 16);
                      if (v131)
                      {
                        v132 = 0;
                        v133 = (v121 + 36);
                        while (v132 < *(v121 + 16))
                        {
                          if (v92[48])
                          {
                            goto LABEL_158;
                          }

                          v134 = *v92;
                          if (v134 >= *(v112 + 116))
                          {
                            goto LABEL_126;
                          }

                          v135 = *(v112 + 104);
                          if (!v135)
                          {
                            goto LABEL_159;
                          }

                          v136 = *v133;
                          v137 = *(*(v135 + 8 * v134) + 8);
                          v138 = *(v137 + 44);
                          if (v136 >= v138)
                          {
                            goto LABEL_127;
                          }

                          v139 = *(v137 + 32);
                          if (!v139)
                          {
                            goto LABEL_160;
                          }

                          if (v99 >= v138)
                          {
                            goto LABEL_128;
                          }

                          v140 = *(v133 - 2);
                          v141 = (v139 + (v136 << 7));
                          v142 = (v139 + (v188 << 7));
                          v143 = *v142;
                          v144 = v141[31];
                          if (v144 == v141[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v144);
                          }

                          v145 = *(v141 + 14);
                          if (!v145)
                          {
                            goto LABEL_161;
                          }

                          v146 = v140 & 0x1FFF;
                          v147 = v141[31];
                          v148 = v145 + 8 * v147;
                          *v148 = v146 | 0xA000;
                          *(v148 + 4) = v143;
                          if (v147 == -1)
                          {
                            goto LABEL_129;
                          }

                          v141[31] = v147 + 1;
                          v149 = *v141;
                          v150 = v142[31];
                          if (v150 == v142[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v150);
                          }

                          v151 = *(v142 + 14);
                          v92 = v187;
                          if (!v151)
                          {
                            goto LABEL_162;
                          }

                          v152 = v142[31];
                          v153 = v151 + 8 * v152;
                          *v153 = v146 | 0x6000;
                          *(v153 + 4) = v149;
                          if (v152 == -1)
                          {
                            goto LABEL_130;
                          }

                          ++v132;
                          v142[31] = v152 + 1;
                          v133 += 2;
                          v112 = v189;
                          if (v131 == v132)
                          {
                            goto LABEL_99;
                          }
                        }

                        goto LABEL_125;
                      }

LABEL_99:

                      v154 = *(a4 + 16);
                      if (v154)
                      {
                        v155 = (a4 + 32);
                        while (!v92[48])
                        {
                          v156 = *v92;
                          if (v156 >= *(v112 + 116))
                          {
                            goto LABEL_131;
                          }

                          v157 = *(v112 + 104);
                          if (!v157)
                          {
                            goto LABEL_164;
                          }

                          v159 = *v155++;
                          v158 = v159;
                          v160 = *(*(v157 + 8 * v156) + 8);
                          v161 = *(v160 + 44);
                          if (v159 >= v161)
                          {
                            goto LABEL_132;
                          }

                          v162 = *(v160 + 32);
                          if (!v162)
                          {
                            goto LABEL_165;
                          }

                          if (v99 >= v161)
                          {
                            goto LABEL_133;
                          }

                          v163 = (v162 + (v158 << 7));
                          v164 = (v162 + (v188 << 7));
                          v165 = *v164;
                          v166 = v163[31];
                          if (v166 == v163[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v166);
                          }

                          v167 = *(v163 + 14);
                          if (!v167)
                          {
                            goto LABEL_166;
                          }

                          v168 = v163[31];
                          v169 = v167 + 8 * v168;
                          *v169 = -24512;
                          *(v169 + 4) = v165;
                          if (v168 == -1)
                          {
                            goto LABEL_134;
                          }

                          v163[31] = v168 + 1;
                          v170 = *v163;
                          v171 = v164[31];
                          if (v171 == v164[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)(2 * v171);
                          }

                          v172 = *(v164 + 14);
                          if (!v172)
                          {
                            goto LABEL_167;
                          }

                          v173 = v164[31];
                          v174 = v172 + 8 * v173;
                          *v174 = 24640;
                          *(v174 + 4) = v170;
                          if (v173 == -1)
                          {
                            goto LABEL_135;
                          }

                          v164[31] = v173 + 1;
                          --v154;
                          v112 = v189;
                          if (!v154)
                          {
                            goto LABEL_116;
                          }
                        }

                        goto LABEL_163;
                      }

LABEL_116:
                      if (v92[48])
                      {
                        goto LABEL_195;
                      }

                      v175 = *v92;
                      if (v175 < *(v112 + 116))
                      {
                        v176 = *(v112 + 104);
                        if (!v176)
                        {
                          goto LABEL_196;
                        }

                        v177 = *(*(v176 + 8 * v175) + 8);
                        v178 = *(v177 + 44);
                        if (v99 < v178)
                        {
                          v179 = *(v177 + 32);
                          if (!v179)
                          {
                            goto LABEL_197;
                          }

                          if (v178 > v185)
                          {
                            Event.hide(_:within:)((v179 + (v186 << 7)), v92);
                            return;
                          }

                          goto LABEL_153;
                        }

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
LABEL_165:
                        __break(1u);
LABEL_166:
                        __break(1u);
LABEL_167:
                        __break(1u);
                        goto LABEL_168;
                      }

LABEL_151:
                      __break(1u);
                      goto LABEL_152;
                    }

LABEL_150:
                    __break(1u);
                    goto LABEL_151;
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

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}

unint64_t specialized static TreeAbstractionImp.model(tree:within:position:abstraction:)(unint64_t result, unsigned __int8 *a2, char a3, unint64_t a4, char a5, uint64_t a6)
{
  if (a2[48])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = *(a2 + 22);
  v11 = *a2;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = *(*(v12 + 8 * v11) + 8);
  v8 = HIDWORD(result);
  v14 = *(v13 + 124);
  if (HIDWORD(result) >= v14)
  {
    goto LABEL_32;
  }

  v15 = *(v13 + 112);
  if (!v15)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v16 = *(v15 + 168 * HIDWORD(result));
  v17 = *(v16 + 16);
  if (result >= v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*(v16 + 208 * result + 176) != 1)
  {
    return 0;
  }

  if ((a3 & 2) != 0 && (a5 & 1) == 0)
  {
    if (HIDWORD(a4) < v14)
    {
      if ((a4 & 0x80000000) == 0)
      {
        v9 = a4;
        v18 = (v15 + 168 * HIDWORD(a4));
        v6 = *v18;
        if (a4 < *(*v18 + 16))
        {
          v19 = *(v6 + 208 * a4 + 184);
          if (v19)
          {
            v20 = v19 == v7;
          }

          else
          {
            v20 = 0;
          }

          if (!v20)
          {
            goto LABEL_18;
          }

          v35 = result;
          v38 = *v18;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v18 = v6;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v6 = result;
            *v18 = result;
          }

          if (v9 < *(v6 + 16))
          {
            Tree.hide(within:_:)(a2, v35);
            return a4;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_18:
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (v17 >> 31)
  {
    goto LABEL_38;
  }

  v9 = v17 | result & 0xFFFFFFFF00000000;
  result = Tree.init(abstraction:_:id:within:)(result, v7, a6, v9, a2, v39);
  if (v8 >= *(v13 + 124))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v13 + 112);
  if (!v21)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v8 = (v21 + 168 * v8);
  v6 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_40:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *v8 = v6;
  }

  v24 = *(v6 + 16);
  v23 = *(v6 + 24);
  if (v24 >= v23 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v6);
    result = v9;
    *v8 = v6;
  }

  else
  {
    result = v9;
  }

  *(v6 + 16) = v24 + 1;
  v25 = (v6 + 208 * v24);
  v25[2] = v39[0];
  v26 = v39[1];
  v27 = v39[2];
  v28 = v39[4];
  v25[5] = v39[3];
  v25[6] = v28;
  v25[3] = v26;
  v25[4] = v27;
  v29 = v39[5];
  v30 = v39[6];
  v31 = v39[8];
  v25[9] = v39[7];
  v25[10] = v31;
  v25[7] = v29;
  v25[8] = v30;
  v32 = v39[9];
  v33 = v39[10];
  v34 = v39[12];
  v25[13] = v39[11];
  v25[14] = v34;
  v25[11] = v32;
  v25[12] = v33;
  return result;
}

uint64_t static TypedEventAbstraction.subtype(source:within:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = hash<A>(type:)(v2, a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(unint64_t result, unsigned __int8 *a2, void *a3, uint64_t *a4)
{
  if (a2[48])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = *(a2 + 22);
  v6 = *a2;
  if (v6 >= *(v5 + 116))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(v5 + 104);
  if (v7)
  {
    v4 = *(*(v7 + 8 * v6) + 8);
    if (*a3 == -1)
    {
LABEL_5:
      v8 = *a4;
      v33 = *(*a4 + 16);
      if (!v33)
      {
        return 0;
      }

      v9 = 0;
      v10 = result;
      v11 = (v8 + 48);
      v12 = HIDWORD(result);
      v13 = 168 * HIDWORD(result);
      while (1)
      {
        if (v9 >= *(v8 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (*(v4 + 124) <= v12)
        {
          goto LABEL_18;
        }

        v14 = *(v4 + 112);
        if (!v14)
        {
          break;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        v15 = *(v14 + v13);
        if (v10 >= *(v15 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(v15 + 208 * v10 + 120);
        if (v16 != -1)
        {
          v17 = *(v11 - 4);
          v18 = *(v11 - 1);
          v19 = *v11;
          v20 = *(*v4 + 136);
          v22 = v20[1];
          v21 = v20[2];
          v39[0] = *v20;
          v39[1] = v22;
          v39[2] = v21;
          v23 = v20[6];
          v25 = v20[3];
          v24 = v20[4];
          v39[5] = v20[5];
          v39[6] = v23;
          v39[3] = v25;
          v39[4] = v24;
          v36 = v17;
          v37 = v18;
          v38 = v19;
          v26 = v20[5];
          v35[4] = v20[4];
          v35[5] = v26;
          v35[6] = v20[6];
          v27 = v20[1];
          v35[0] = *v20;
          v35[1] = v27;
          v28 = v20[3];
          v35[2] = v20[2];
          v35[3] = v28;

          outlined init with copy of Interpreter.Storage.Types(v39, v34);
          PType.Pattern.match(type:within:)(v16, v35);
          v30 = v29;

          result = outlined destroy of Interpreter.Storage.Types(v39);
          if (v30)
          {
            return 1;
          }
        }

        ++v9;
        v11 += 6;
        if (v33 == v9)
        {
          return 0;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    v31 = result;
    v32 = a4;
    swift_once();
    a4 = v32;
    result = v31;
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t static TypedEventAbstraction.hasOwnership(for:within:)(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a2[48])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a2 + 22);
  v5 = *a2;
  if (v5 >= *(v4 + 116))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(*(v6 + 8 * v5) + 8);
  result = (*(a4 + 16))(a3, a4);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      if (*(v8 + 44) <= v7)
      {
        goto LABEL_21;
      }

      v13 = *(v8 + 32);
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13 + (v7 << 7);
      v17 = *(v14 + 8);
      v16 = v14 + 8;
      v15 = v17;
      if (!*(v16 + 24))
      {
        goto LABEL_22;
      }

      if (*(v16 + 16))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        goto LABEL_27;
      }

      if (*v15 == &type metadata for Event.AttributeValue)
      {
        v23 = *(v12 + 32);
        *v24 = *(v12 + 48);
        *&v24[14] = *(v12 + 62);
        v18 = *(v12 + 16);
        v22 = *v12;
        v19 = *(v15 + 8);
        if (v19 >= *(v8 + 84))
        {
          goto LABEL_23;
        }

        v20 = *(v8 + 72);
        if (!v20)
        {
          goto LABEL_28;
        }

        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v8);
        if (result)
        {
          v21 = 1;
          goto LABEL_19;
        }
      }

      ++v11;
      v12 += 72;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v21 = 0;
LABEL_19:

  return v21;
}

unint64_t static TypedEventAbstraction.new(from:within:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(a4 + 24))(a3, a4);
  if (a2[48])
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(v11 + 104);
  if (!v13)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = *(a4 + 8);
  v15 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(a1, result, *(*(v13 + 8 * v12) + 8));

  if (v15)
  {
    Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v5, a1, 0, v15, a3, v14);
    v17 = v16;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 | ((v15 == 0) << 32);
}

uint64_t _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 44) <= result)
  {
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
    goto LABEL_45;
  }

  v4 = *(a3 + 32);
  if (!v4)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v4 + (result << 7);
  v7 = *(v6 + 112);
  v8 = *(v6 + 124);
  v30 = (a2 + 32);
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v5;
LABEL_5:
  while (v10 != v8)
  {
    if (v10 >= v8)
    {
      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_44;
    }

    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_38;
    }

    v11 = 8 * v10;
    v12 = *(v7 + 8 * v10);
    v13 = v12 & 0xA000;
    v14 = v12 & 0xC03;
    v15 = v13 != 0x2000 || v14 == 0;
    v10 = v5;
    if (!v15)
    {
      v16 = v9;
      v17 = *(v7 + 4 + v11);
      v18 = *(a2 + 16);
      if (v18)
      {
        v19 = v30;
        while (v17 < *(a3 + 44))
        {
          v20 = *(a3 + 32);
          if (!v20)
          {
            goto LABEL_40;
          }

          v21 = v20 + (v17 << 7);
          v24 = *(v21 + 8);
          v23 = v21 + 8;
          v22 = v24;
          if (!*(v23 + 24))
          {
            goto LABEL_35;
          }

          if (*(v23 + 16))
          {
            goto LABEL_41;
          }

          if (!v22)
          {
            goto LABEL_42;
          }

          if (*v22 == &type metadata for Event.AttributeValue)
          {
            v33 = v19[2];
            *v34 = v19[3];
            *&v34[14] = *(v19 + 62);
            v25 = v19[1];
            v32 = *v19;
            v26 = *(v22 + 8);
            if (v26 >= *(a3 + 84))
            {
              goto LABEL_36;
            }

            v27 = *(a3 + 72);
            if (!v27)
            {
              goto LABEL_43;
            }

            result = Attribute.Pattern.match(_:within:)(*(v27 + 312 * v26 + 32), a3);
            if (result)
            {
              v10 = v5;
              v9 = v16;
              goto LABEL_5;
            }
          }

          v19 = (v19 + 72);
          if (!--v18)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_26:
      v9 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v9 = result;
      }

      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v29 + 1;
      *(v9 + 4 * v29 + 32) = v17;
      goto LABEL_4;
    }
  }

  if (!*(v9 + 16))
  {

    return 0;
  }

  return v9;
}

uint64_t _s21SwiftUITracingSupport21TypedEventAbstractionPAAE8observes6update6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_6;
  }

  v2 = *(a2 + 22);
  if (*a2 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(v2 + 104))
  {
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(uint64_t result, unsigned __int8 *a2, void *a3, uint64_t *a4)
{
  if (a2[48])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = *(a2 + 22);
  v7 = *a2;
  if (v7 >= *(v6 + 116))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v22 = a4;
    swift_once();
    a4 = v22;
    goto LABEL_5;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *(*(v8 + 8 * v7) + 8);
  if (*a3 != -1)
  {
    goto LABEL_26;
  }

LABEL_5:
  v9 = *a4;
  v10 = *(*a4 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 32);
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (*(v5 + 44) <= v4)
      {
        goto LABEL_22;
      }

      v13 = *(v5 + 32);
      if (!v13)
      {
        break;
      }

      v14 = v13 + (v4 << 7);
      v17 = *(v14 + 8);
      v16 = v14 + 8;
      v15 = v17;
      if (!*(v16 + 24))
      {
        goto LABEL_23;
      }

      if (*(v16 + 16))
      {
        goto LABEL_28;
      }

      if (!v15)
      {
        goto LABEL_29;
      }

      if (*v15 == &type metadata for Event.AttributeValue)
      {
        v24 = v12[2];
        *v25 = v12[3];
        *&v25[14] = *(v12 + 62);
        v18 = v12[1];
        v23 = *v12;
        v19 = *(v15 + 8);
        if (v19 >= *(v5 + 84))
        {
          goto LABEL_24;
        }

        v20 = *(v5 + 72);
        if (!v20)
        {
          goto LABEL_30;
        }

        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v5);
        if (result)
        {
          v21 = 1;
          goto LABEL_20;
        }
      }

      ++v11;
      v12 = (v12 + 72);
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_19:
  v21 = 0;
LABEL_20:

  return v21;
}

uint64_t static TypedEventAbstraction.observes(update:within:)(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a2[48])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a2 + 22);
  v5 = *a2;
  if (v5 >= *(v4 + 116))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(*(v6 + 8 * v5) + 8);
  result = (*(a4 + 24))(a3, a4);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      if (*(v8 + 44) <= v7)
      {
        goto LABEL_21;
      }

      v13 = *(v8 + 32);
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13 + (v7 << 7);
      v17 = *(v14 + 8);
      v16 = v14 + 8;
      v15 = v17;
      if (!*(v16 + 24))
      {
        goto LABEL_22;
      }

      if (*(v16 + 16))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        goto LABEL_27;
      }

      if (*v15 == &type metadata for Event.AttributeValue)
      {
        v23 = *(v12 + 32);
        *v24 = *(v12 + 48);
        *&v24[14] = *(v12 + 62);
        v18 = *(v12 + 16);
        v22 = *v12;
        v19 = *(v15 + 8);
        if (v19 >= *(v8 + 84))
        {
          goto LABEL_23;
        }

        v20 = *(v8 + 72);
        if (!v20)
        {
          goto LABEL_28;
        }

        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v8);
        if (result)
        {
          v21 = 1;
          goto LABEL_19;
        }
      }

      ++v11;
      v12 += 72;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v21 = 0;
LABEL_19:

  return v21;
}

uint64_t static TypedEventAbstraction.mut(_:observing:within:)(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 28);
  *(a1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (*(result + 28) == a2)
  {
    return 1;
  }

  v8 = *(a1 + 112);
  v9 = (v8 + 4);
  v10 = *(a1 + 124) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_16;
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    v11 = *(v9 - 2);
    v12 = *v9;
    v9 += 2;
    v13 = v11 & 0x4000;
  }

  while (v12 != a2 || v13 != 0);
  if (a3[48])
  {
    goto LABEL_21;
  }

  v15 = *(a3 + 22);
  v16 = *a3;
  if (v16 >= *(v15 + 116))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(v15 + 104);
  if (v17)
  {
    v18 = *(*(v17 + 8 * v16) + 8);
    if (*(v18 + 44) > a2)
    {
      v19 = *(v18 + 32);
      if (v19)
      {
        Event.hide(_:within:)((v19 + (a2 << 7)), a3);
LABEL_16:
        v20 = *(a1 + 28);
        *(a1 + 25);
        HIDWORD(specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32))[1].Description) = a2;
        return 1;
      }

      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized static TypedEventAbstraction.subtype(source:within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*result != &type metadata for Event.AttributeValue && *result != &type metadata for Event.AttributeStack)
  {
    goto LABEL_11;
  }

  v4 = *(result + 32);
  if (v4 >= *(a2 + 84))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5 + 312 * v4;
  if ((*(v6 + 101) & 1) == 0)
  {
    v7 = *(v6 + 100);
    *a3 = *(v6 + 92);
    *(a3 + 8) = v7;
    *(a3 + 9) = 1;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static TypedEventAbstraction.subtype(source:within:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result == &type metadata for Event.AttributeValue || *result == &type metadata for Event.AttributeStack)
  {
    return (*(a4 + 32))(*(result + 32));
  }

  __break(1u);
  return result;
}

uint64_t static TypedEventAbstraction.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getMetatypeMetadata();
    return String.init<A>(describing:)();
  }

  return result;
}

uint64_t T_InstantiateBegin.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v37[0] = *(a1 + 56);
  v37[1] = v5;
  v38[0] = *(a1 + 88);
  *(v38 + 9) = *(a1 + 97);
  v6 = a1 + 88;
  v7 = a1 + 100;
  v8 = (a1 + 104);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v37);
    }

    v6 = (v10 + 32);
    v7 = (v10 + 44);
    v8 = (v10 + 48);
    v4 = v10;
  }

  v12 = *v4;
  if (!v12)
  {
    goto LABEL_39;
  }

  result = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v3, *(*(v12 + 24 * *v11) + 32), 0xFFFFFFFFFFFFFFFFLL, 0, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5, &type metadata for Event.Instantiate, &_s21SwiftUITracingSupport5EventV11InstantiateVmMd, &_s21SwiftUITracingSupport5EventV11InstantiateVmMR);
  if (a1[48])
  {
    goto LABEL_34;
  }

  v13 = *(a1 + 22);
  v14 = *a1;
  if (v14 >= *(v13 + 116))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = *(v13 + 104);
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(*(v15 + 8 * v14) + 8);
  if (v3 >= *(v16 + 124))
  {
    goto LABEL_31;
  }

  v17 = *(v16 + 112);
  if (!v17)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v17 + 168 * v3;
  *(v18 + 124) = result;
  *(v18 + 128) = 0;
  if (a1[48])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = *(v13 + 116);
  v20 = *a1;
  if (v20 >= v19)
  {
    goto LABEL_32;
  }

  v21 = *(*(v15 + 8 * v20) + 8);
  if (result >= *(v21 + 44))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v22 = *(v21 + 32);
  if (!v22)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = v22 + (result << 7);
  v24 = *(v23 + 8);
  v25 = *(v23 + 16);
  v26 = v23 + 8;
  v27 = 256;
  if (!*(v26 + 17))
  {
    v27 = 0;
  }

  v28 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(v24, v25, v27 | (*(v26 + 20) << 32) | *(v26 + 16), *(v26 + 24), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
  if (v28)
  {
    v29 = *v28;
    v30 = v28[1];
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
    v29 = MEMORY[0x277D84FA0];
  }

  specialized Set._Variant.insert(_:)(&v36, v3);
  v31 = v29;
  v32 = 256;
  if (!*(v26 + 17))
  {
    v32 = 0;
  }

  v33 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(*v26, *(v26 + 8), v32 | (*(v26 + 20) << 32) | *(v26 + 16), *(v26 + 24), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
  if (v33)
  {
    v34 = *v33;
    v35 = v33[1];
    *v33 = v31;
    v33[1] = v30;
  }

  else
  {
    specialized HeterogeneousBuffer.insert<A>(_:)(v29, v30);
  }
}

unint64_t T_UninstantiateBegin.model(within:)(uint64_t a1, unint64_t a2)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v5;
  v13[0] = *(a1 + 88);
  *(v13 + 9) = *(a1 + 97);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v12);
    }

    v6 = (v10 + 32);
    v7 = (v10 + 44);
    v8 = (v10 + 48);
    v4 = v10;
  }

  if (*v4)
  {
    return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(result, *(*(*v4 + 24 * *v11) + 32), 0xFFFFFFFFFFFFFFFFLL, 0, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV13UninstantiateV_Ttg5, &type metadata for Event.Uninstantiate, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMd, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMR);
  }

  __break(1u);
  return result;
}

unint64_t T_AssignRootSubgraph.model(within:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int16 a5)
{
  v10 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  v11 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a4, a1);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a3, a1);
  if (a1[48])
  {
    goto LABEL_56;
  }

  v13 = *(a1 + 22);
  v14 = *a1;
  if (v14 >= *(v13 + 116))
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
    a3 = result;
    *v6 = result;
    goto LABEL_7;
  }

  v15 = *(v13 + 104);
  if (!v15)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v16 = *(*(v15 + 8 * v14) + 8);
  if (v10 >= *(v16 + 148))
  {
    goto LABEL_40;
  }

  v17 = *(v16 + 136);
  if (!v17)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  LODWORD(a4) = result;
  v5 = v10;
  v18 = v17 + 80 * v10;
  v19 = *(v18 + 48);
  v6 = (v18 + 48);
  a3 = v19;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v19;
  if ((result & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  v21 = *(a3 + 16);
  v20 = *(a3 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, a3);
    a3 = result;
    *v6 = result;
  }

  *(a3 + 16) = v21 + 1;
  *(a3 + 4 * v21 + 32) = v11;
  if (a1[48])
  {
    goto LABEL_59;
  }

  v22 = *a1;
  if (v22 >= *(v13 + 116))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = *(v13 + 104);
  if (!v23)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v24 = *(*(v23 + 8 * v22) + 8);
  if (v11 >= *(v24 + 124))
  {
    goto LABEL_43;
  }

  v25 = *(v24 + 112);
  if (!v25)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v26 = v25 + 168 * v11;
  *(v26 + 16) = v10;
  *(v26 + 20) = 0;
  if (a1[48])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v27 = *(v13 + 116);
  v28 = *a1;
  if (v28 >= v27)
  {
    goto LABEL_44;
  }

  v29 = *(*(v23 + 8 * v28) + 8);
  if (v11 >= *(v29 + 124))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = *(v29 + 112);
  if (!v30)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v30 + 168 * v11 + 114) = 1;
  if (a1[48])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v31 = *a1;
  if (v31 >= v27)
  {
    goto LABEL_46;
  }

  v32 = *(*(v23 + 8 * v31) + 8);
  if (a4 >= *(v32 + 124))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v33 = *(v32 + 112);
  if (!v33)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v34 = v33 + 168 * a4;
  *(v34 + 16) = v10;
  *(v34 + 20) = 0;
  if (a1[48])
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v35 = *(v13 + 116);
  v36 = *a1;
  if (v36 >= v35)
  {
    goto LABEL_48;
  }

  v37 = *(*(v23 + 8 * v36) + 8);
  if (a4 >= *(v37 + 124))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v38 = *(v37 + 112);
  if (!v38)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v38 + 168 * a4 + 113) = 1;
  if (a5 > 0x7Fu)
  {
    goto LABEL_50;
  }

  if (a5 > 4u)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a1[48])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v39 = *a1;
  if (v39 >= v35)
  {
    goto LABEL_51;
  }

  v40 = *(*(v23 + 8 * v39) + 8);
  if (v10 >= *(v40 + 148))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = *(v40 + 136);
  if (!v41)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v41 + 80 * v5 + 61) = a5;
  if (a1[48])
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v42 = *a1;
  if (v42 >= v35)
  {
    goto LABEL_53;
  }

  v43 = *(*(v23 + 8 * v42) + 8);
  if (v10 >= *(v43 + 148))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = *(v43 + 136);
  if (!v44)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  v45 = v44 + 80 * v5;
  if (*(v45 + 60) == 1)
  {
    *(v45 + 56) = a4;
    *(v45 + 60) = 0;
  }

  return result;
}

unint64_t T_RecordNamedProperty.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v2 = a2;
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2 >> 16, a1);
  if (a1[48])
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 22);
  v6 = *a1;
  if (v6 >= *(v5 + 116))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *(*(v7 + 8 * v6) + 8);
  if (result >= *(v9 + 84))
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 72);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v10 + 312 * result + 180);
  if (v11 >= *(v9 + 124))
  {
    goto LABEL_13;
  }

  v12 = *(v9 + 112);
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = v12 + 168 * v11;
  v14 = *(v13 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v13 + 160);
  *(v13 + 160) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v2, isUniquelyReferenced_nonNull_native);
  v16 = *(v13 + 160);
  *(v13 + 160) = v17;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ChargeToParentA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ChargeToParentA.types) & 1;
  result = specialized static ChargeToParentA.observes(tree:within:)(a1, a2);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance VariadicViewTreeA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static VariadicViewTreeA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static VariadicViewTreeA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance TextA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TextA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static TextA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance AnyViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AnyViewA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AnyViewA.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ConditionalViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ConditionalViewA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static ConditionalViewA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance TupleViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TupleViewA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TupleViewA.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance SubgraphManagingViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static SubgraphManagingViewA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static SubgraphManagingViewA.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance NavigationSplitViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static NavigationSplitViewA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static NavigationSplitViewA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ButtonA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ButtonA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static ButtonA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ColorA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ColorA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static ColorA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance OpacityRendererEffectA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static OpacityRendererEffectA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static OpacityRendererEffectA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance TabViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TabViewA.types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static TabViewA.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ModifierAbstraction@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ModifierAbstraction.types);
  *a3 = result & 1 | 2;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance EnvironmentWriting@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static EnvironmentWriting.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static EnvironmentWriting.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance DisplayList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static DisplayList.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static DisplayList.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PlatformItemList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformItemList.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformItemList.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.subtype(source:within:) in conformance PlatformViews@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*result == &type metadata for Event.AttributeValue || *result == &type metadata for Event.AttributeStack)
  {
    return static PlatformViews.subtype(source:within:)(*(result + 32), a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PlatformViews@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformViews.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformViews.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance PlatformViews(unint64_t result, unsigned __int8 *a2)
{
  v4 = result;
  if (one-time initialization token for types == -1)
  {
    if (!a2[48])
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_once();
  if (a2[48])
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = *(a2 + 22);
  v6 = *a2;
  if (v6 >= *(v5 + 116))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v8 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v4, static PlatformViews.types, *(*(v7 + 8 * v6) + 8));
  if (v8)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v2, v4, 0, v8);
    v10 = v9;

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11 | ((v8 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PreferenceList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PreferenceList.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static PreferenceList.hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance AccessibilityNodeList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AccessibilityNodeList.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AccessibilityNodeList.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewTransform@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewTransform.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewTransform.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance ViewResponder(unint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (*a5 == -1)
  {
    if (!a2[48])
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = a6;
  result = swift_once();
  a6 = v18;
  if (a2[48])
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(v11 + 104);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, *a6, *(*(v13 + 8 * v12) + 8));
  if (v14)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v7, v10, 0, v14, a7);
    v16 = v15;

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17 | ((v14 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance Layout@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Layout.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Layout.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PhaseWriting@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PhaseWriting.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PhaseWriting.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance Transactions@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Transactions.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Transactions.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewBodies@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewBodies.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE8observes6update6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5(a1, a2);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance ViewBodies(unint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(result, MEMORY[0x277D84F90], *(*(v5 + 8 * v4) + 8));
  if (v7)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v2, v6, 0, v7, &protocol witness table for ViewBodies);
    v9 = v8;

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | ((v7 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ConditionalContent@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ConditionalContent.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ConditionalContent.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ResolvedContent@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ResolvedContent.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ResolvedContent.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance EnvironmentWriting(unint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (*a5 == -1)
  {
    if (!a2[48])
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = a6;
  result = swift_once();
  a6 = v18;
  if (a2[48])
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(v11 + 104);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, *a6, *(*(v13 + 8 * v12) + 8));
  if (v14)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v7, v10, 0, v14, a7);
    v16 = v15;

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17 | ((v14 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewCreation@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewCreation.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewCreation.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static TypedEventAbstraction.hiddenTypes.getter in conformance EnvironmentWriting(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

ValueMetadata **protocol witness for static EventAbstraction.subtype(source:within:) in conformance ViewTransform@<X0>(ValueMetadata **result@<X0>, uint64_t a2@<X8>)
{
  if (*result == &type metadata for Event.AttributeValue || *result == &type metadata for Event.AttributeStack)
  {
    *a2 = v2;
    *(a2 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewResponder@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewResponder.types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewResponder.types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.mut(_:observing:within:) in conformance EnvironmentWriting(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 28);
  *(a1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (*(result + 28) == a2)
  {
    return 1;
  }

  v8 = *(a1 + 112);
  v9 = (v8 + 4);
  v10 = *(a1 + 124) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_16;
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    v11 = *(v9 - 2);
    v12 = *v9;
    v9 += 2;
    v13 = v11 & 0x4000;
  }

  while (v12 != a2 || v13 != 0);
  if (a3[48])
  {
    goto LABEL_21;
  }

  v15 = *(a3 + 22);
  v16 = *a3;
  if (v16 >= *(v15 + 116))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(v15 + 104);
  if (v17)
  {
    v18 = *(*(v17 + 8 * v16) + 8);
    if (*(v18 + 44) > a2)
    {
      v19 = *(v18 + 32);
      if (v19)
      {
        Event.hide(_:within:)((v19 + (a2 << 7)), a3);
LABEL_16:
        v20 = *(a1 + 28);
        *(a1 + 25);
        HIDWORD(specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32))[1].Description) = a2;
        return 1;
      }

      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, char a9, int a10, uint64_t a11, int a12, uint64_t a13)
{
  *&v84 = MEMORY[0x277D84F90];
  *(&v84 + 1) = a3;
  v15 = &v84;
  v62 = HIDWORD(a8);
  LODWORD(v63) = a8;
  *&v85 = a4;
  *(&v85 + 1) = a1;
  v86 = a2;
  v87 = a6;
  v88 = a7;
  v89 = MEMORY[0x277D84F90];
  *&v90 = 0;
  BYTE8(v90) = a5;
  *(&v90 + 9) = 0;
  v91 = 0;
  v92[0] = MEMORY[0x277D84F90];
  v92[1] = a3;
  v92[2] = a4;
  v92[3] = a1;
  v92[4] = a2;
  v92[5] = a6;
  v92[6] = a7;
  v92[7] = MEMORY[0x277D84F90];
  v92[8] = 0;
  v93 = a5;
  v94 = 0;
  v95 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v84, v80, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v92, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMR);
  v16 = v84;
  v17 = v87;
  *&v76 = v86;
  *(&v77 + 1) = v89;
  v78 = v90;
  v79 = v91;
  v74 = v84;
  v75 = v85;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  *(&v76 + 1) = a6;
  *&v77 = a7;
  LOBYTE(v80[0]) = a9 & 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_52:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
  }

  v20 = BYTE10(v90);
  v21 = v89;
  *(v16 + 16) = v19 + 1;
  v22 = v16 + 48 * v19;
  *(v22 + 32) = v63;
  *(v22 + 36) = v62;
  *(v22 + 40) = a9 & 1;
  v23 = v96;
  *(v22 + 41) = *(v15 + 181);
  *(v22 + 43) = v23;
  *(v22 + 44) = a10;
  *(v22 + 48) = a11;
  *(v22 + 56) = a12;
  *(v22 + 64) = a13;
  *(v22 + 72) = 0;
  *&v74 = v16;
  for (i = 1; ; i = *(v74 + 16))
  {
    if (!i)
    {
      v25 = *(v21 + 2);
      if (!v25)
      {
        break;
      }

      goto LABEL_32;
    }

    v25 = *(v21 + 2);
    if (v25)
    {
      v26 = *&v21[56 * v25 + 16];
      LOBYTE(v64) = 0;
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = *(v16 + 16);
      if (!v27)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v27 = *(v16 + 16);
      if (!v27)
      {
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
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v28 = v16 + 48 * v27;
    v29 = *(v28 - 16);
    v30 = *(v28 - 12);
    v31 = *(v28 - 8);
    v32 = *(v28 - 4);
    v33 = *v28;
    v34 = *(v28 + 8);
    v35 = *(v28 + 16);
    v15 = *(v28 + 24);
    *(v16 + 16) = v27 - 1;
    *&v64 = __PAIR64__(v30, v29);
    BYTE8(v64) = v31 & 1;
    HIDWORD(v64) = v32;
    *&v65 = v33;
    DWORD2(v65) = v34;
    v73 = v35;
    *&v74 = v16;
    BYTE9(v78) = 1;
    v79 = BYTE8(v78);
    *&v78 = v15;
    v36 = *(&v74 + 1);
    v16 = v75;

    v36(&v64, &v73, &v74);

    if (BYTE10(v78) == 1)
    {
      break;
    }

    BYTE9(v78) = 0;
    v37 = v79;
    if (v79)
    {
      if (BYTE8(v78) == 1)
      {
        v37 = v79 - 1;
        if (__OFSUB__(v79, 1))
        {
          goto LABEL_49;
        }

        --v79;
      }

      LODWORD(v62) = v31 & 1;
      v70 = v31 & 1;
      v63 = v73;
      v21 = *(&v77 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v39 = *(v21 + 2);
      v38 = *(v21 + 3);
      if (v39 >= v38 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v21);
      }

      *(v21 + 2) = v39 + 1;
      v40 = &v21[56 * v39];
      *(v40 + 8) = v29;
      *(v40 + 9) = v30;
      v40[40] = v62;
      v41 = v72;
      *(v40 + 41) = v71;
      v40[43] = v41;
      *(v40 + 11) = v32;
      *(v40 + 6) = v33;
      *(v40 + 14) = v34;
      *(v40 + 8) = v63;
      *(v40 + 9) = v37;
      *(v40 + 10) = v15;
    }

    else
    {
      v21 = *(&v77 + 1);
      v16 = *(*(&v77 + 1) + 16);
      if (!v16)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      }

      if (v16 > *(v21 + 2))
      {
        goto LABEL_50;
      }

      v42 = &v21[56 * v16];
      v44 = *(v42 + 2);
      v43 = v42 + 16;
      v45 = v44 - 1;
      if (__OFSUB__(v44, 1))
      {
        goto LABEL_51;
      }

      *v43 = v45;
    }

    *(&v77 + 1) = v21;
LABEL_31:
    v20 = 0;
    v25 = *(v21 + 2);
    if (!v25)
    {
      goto LABEL_6;
    }

LABEL_32:
    v46 = &v21[56 * v25];
    v47 = *(v46 + 2);
    LOBYTE(v64) = 0;
    if (v47)
    {
      goto LABEL_6;
    }

    v48 = v46 - 24;
    v49 = *(v46 - 3);
    v50 = *(v46 - 16);
    v51 = *(v46 - 3);
    v52 = *(v48 + 2);
    v53 = *(v48 + 6);
    v54 = *(v48 + 4);
    v55 = *(v48 + 6);
    LOBYTE(v71) = 0;
    *&v64 = v49;
    BYTE8(v64) = v50 & 1;
    HIDWORD(v64) = v51;
    *&v65 = v52;
    DWORD2(v65) = v53;
    v73 = v54;
    *&v78 = v55;
    v16 = v76;
    v80[2] = v76;
    v81 = v77;
    v83 = v79;
    v80[0] = v74;
    v80[1] = v75;
    v82 = v78;
    (*(&v75 + 1))(&v64, &v73, v80);
    if (v20)
    {
      break;
    }

    v21 = *(&v81 + 1);
    if (!*(*(&v81 + 1) + 16))
    {
      goto LABEL_46;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v56 = *(v21 + 2);
      if (!v56)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v56 = *(v21 + 2);
      if (!v56)
      {
        goto LABEL_47;
      }
    }

    *(&v77 + 1) = v21;
    *(v21 + 2) = v56 - 1;
    if (v56 != 1)
    {
      v57 = &v21[56 * v56];
      v59 = *(v57 - 5);
      v58 = v57 - 40;
      v60 = v59 - 1;
      if (__OFSUB__(v59, 1))
      {
        goto LABEL_48;
      }

      *v58 = v60;
    }

    v20 = 0;
LABEL_6:
    v16 = v74;
  }

  v66 = v76;
  v67 = v77;
  v68 = v78;
  v69 = v79;
  v64 = v74;
  v65 = v75;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v64, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11)
{
  *&v67 = MEMORY[0x277D84F90];
  *(&v67 + 1) = a3;
  *&v68 = a4;
  *(&v68 + 1) = a1;
  v69 = a2;
  v70 = a6;
  v71 = a7;
  v72 = MEMORY[0x277D84F90];
  *&v73 = 0;
  BYTE8(v73) = a5;
  *(&v73 + 9) = 0;
  v74 = 0;
  v75[0] = MEMORY[0x277D84F90];
  v75[1] = a3;
  v75[2] = a4;
  v75[3] = a1;
  v75[4] = a2;
  v75[5] = a6;
  v75[6] = a7;
  v75[7] = MEMORY[0x277D84F90];
  v75[8] = 0;
  v76 = a5;
  v77 = 0;
  v78 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v67, v63, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v75, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMR);
  v14 = v67;
  v15 = v70;
  *&v59 = v69;
  *(&v60 + 1) = v72;
  v61 = v73;
  v62 = v74;
  v57 = v67;
  v58 = v68;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v15);
  *(&v59 + 1) = a6;
  *&v60 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
  }

  v18 = BYTE10(v73);
  v19 = v72;
  *(v14 + 16) = v17 + 1;
  v20 = v14 + 40 * v17;
  *(v20 + 32) = a8;
  *(v20 + 40) = a9 & 1;
  *(v20 + 48) = a10;
  *(v20 + 56) = a11 & 1;
  *(v20 + 64) = 0;
  *&v57 = v14;
  for (i = 1; ; i = *(v57 + 16))
  {
    if (!i)
    {
      v22 = *(v19 + 2);
      if (!v22)
      {
        break;
      }

      goto LABEL_32;
    }

    v22 = *(v19 + 2);
    if (v22 && !*&v19[48 * v22 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = *(v14 + 16);
      if (!v23)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v23 = *(v14 + 16);
      if (!v23)
      {
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
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    v24 = v14 + 40 * v23;
    v25 = *(v24 - 8);
    v26 = *v24;
    v27 = *(v24 + 8);
    v28 = *(v24 + 16);
    v29 = *(v24 + 24);
    *(v14 + 16) = v23 - 1;
    *&v53[0] = v25;
    BYTE8(v53[0]) = v26;
    v55 = v27;
    v56 = v28;
    BYTE9(v61) = 1;
    v62 = BYTE8(v61);
    *&v57 = v14;
    *&v61 = v29;
    v30 = *(&v57 + 1);
    v14 = v58;

    v30(v53, &v55, &v57);

    if (BYTE10(v61) == 1)
    {
      break;
    }

    BYTE9(v61) = 0;
    v31 = v62;
    if (v62)
    {
      if (BYTE8(v61) == 1)
      {
        v31 = v62 - 1;
        if (__OFSUB__(v62, 1))
        {
          goto LABEL_50;
        }

        --v62;
      }

      v32 = v55;
      a8 = v56;
      v19 = *(&v60 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v34 = *(v19 + 2);
      v33 = *(v19 + 3);
      if (v34 >= v33 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v19);
      }

      *(v19 + 2) = v34 + 1;
      v35 = &v19[48 * v34];
      *(v35 + 4) = v25;
      v35[40] = v26;
      *(v35 + 6) = v32;
      v35[56] = a8;
      *(v35 + 8) = v31;
      *(v35 + 9) = v29;
    }

    else
    {
      v19 = *(&v60 + 1);
      v14 = *(*(&v60 + 1) + 16);
      if (!v14)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      }

      if (v14 > *(v19 + 2))
      {
        goto LABEL_51;
      }

      v36 = &v19[48 * v14];
      v38 = *(v36 + 2);
      v37 = v36 + 16;
      v39 = v38 - 1;
      if (__OFSUB__(v38, 1))
      {
        goto LABEL_52;
      }

      *v37 = v39;
    }

    *(&v60 + 1) = v19;
LABEL_31:
    v18 = 0;
    v22 = *(v19 + 2);
    if (!v22)
    {
      goto LABEL_6;
    }

LABEL_32:
    v40 = &v19[48 * v22];
    if (*(v40 + 2))
    {
      goto LABEL_6;
    }

    v42 = *(v40 - 2);
    v41 = v40 - 16;
    v43 = v41[8];
    v44 = *(v41 + 2);
    v45 = v41[24];
    v46 = *(v41 + 5);
    *&v53[0] = v42;
    BYTE8(v53[0]) = v43;
    v55 = v44;
    v56 = v45;
    *&v61 = v46;
    v14 = v59;
    v63[2] = v59;
    v64 = v60;
    v66 = v62;
    v63[0] = v57;
    v63[1] = v58;
    v65 = v61;
    (*(&v58 + 1))(v53, &v55, v63);
    if (v18)
    {
      break;
    }

    v19 = *(&v64 + 1);
    if (!*(*(&v64 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v47 = *(v19 + 2);
      if (!v47)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v47 = *(v19 + 2);
      if (!v47)
      {
        goto LABEL_48;
      }
    }

    *(&v60 + 1) = v19;
    *(v19 + 2) = v47 - 1;
    if (v47 != 1)
    {
      v48 = &v19[48 * v47];
      v50 = *(v48 - 4);
      v49 = v48 - 32;
      v51 = v50 - 1;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_49;
      }

      *v49 = v51;
    }

    v18 = 0;
LABEL_6:
    v14 = v57;
  }

  v53[2] = v59;
  v53[3] = v60;
  v53[4] = v61;
  v54 = v62;
  v53[0] = v57;
  v53[1] = v58;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *&v82 = MEMORY[0x277D84F90];
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a1;
  v84 = a2;
  v85 = a6;
  v86 = a7;
  v87 = MEMORY[0x277D84F90];
  *&v88 = 0;
  BYTE8(v88) = a5;
  *(&v88 + 9) = 0;
  v89 = 0;
  v90[0] = MEMORY[0x277D84F90];
  v90[1] = a3;
  v90[2] = a4;
  v90[3] = a1;
  v90[4] = a2;
  v90[5] = a6;
  v90[6] = a7;
  v90[7] = MEMORY[0x277D84F90];
  v90[8] = 0;
  v91 = a5;
  v92 = 0;
  v93 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v82, v78, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v90, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMR);
  v15 = v82;
  v16 = v85;
  *&v74 = v84;
  *(&v75 + 1) = v87;
  v76 = v88;
  v77 = v89;
  v72 = v82;
  v73 = v83;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16);
  *(&v74 + 1) = a6;
  *&v75 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  v19 = BYTE10(v88);
  v20 = v87;
  *(v15 + 16) = v18 + 1;
  v21 = v15 + 56 * v18;
  *(v21 + 32) = a8;
  *(v21 + 40) = a9 & 1;
  *(v21 + 48) = a10;
  *(v21 + 56) = a11;
  *(v21 + 64) = a12;
  *(v21 + 72) = a13 & 1;
  *(v21 + 80) = 0;
  *&v72 = v15;
  for (i = 1; ; i = *(v72 + 16))
  {
    if (!i)
    {
      v23 = *(v20 + 2);
      if (!v23)
      {
        break;
      }

      goto LABEL_32;
    }

    v23 = *(v20 + 2);
    if (v23 && !*&v20[64 * v23 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = *(v15 + 16);
      if (!v24)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v24 = *(v15 + 16);
      if (!v24)
      {
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
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    v25 = v15 + 56 * v24;
    v26 = *(v25 - 24);
    v27 = *(v25 - 16);
    v28 = *(v25 + 8);
    v29 = *(v25 + 16);
    v30 = *(v25 + 24);
    v31 = *(v25 - 8);
    *(v15 + 16) = v24 - 1;
    v70 = v26;
    v71 = v27;
    v60 = v31;
    *&v61 = v28;
    BYTE8(v61) = v29;
    BYTE9(v76) = 1;
    v77 = BYTE8(v76);
    *&v72 = v15;
    *&v76 = v30;
    v32 = *(&v72 + 1);
    v15 = v73;

    v32(&v70, &v60, &v72);

    if (BYTE10(v76) == 1)
    {
      break;
    }

    BYTE9(v76) = 0;
    v33 = v77;
    if (v77)
    {
      if (BYTE8(v76) == 1)
      {
        v33 = v77 - 1;
        if (__OFSUB__(v77, 1))
        {
          goto LABEL_50;
        }

        --v77;
      }

      v34 = v60;
      a8 = v61;
      v35 = BYTE8(v61);
      v20 = *(&v75 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v37 = *(v20 + 2);
      v36 = *(v20 + 3);
      if (v37 >= v36 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v20);
      }

      v69 = v27;
      v67 = v35;
      *(v20 + 2) = v37 + 1;
      v38 = &v20[64 * v37];
      *(v38 + 4) = v26;
      v38[40] = v69;
      v39 = *v68;
      *(v38 + 11) = *&v68[3];
      *(v38 + 41) = v39;
      *(v38 + 3) = v34;
      *(v38 + 8) = a8;
      v38[72] = v67;
      v40 = *v66;
      *(v38 + 19) = *&v66[3];
      *(v38 + 73) = v40;
      *(v38 + 10) = v33;
      *(v38 + 11) = v30;
    }

    else
    {
      v20 = *(&v75 + 1);
      v15 = *(*(&v75 + 1) + 16);
      if (!v15)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      }

      if (v15 > *(v20 + 2))
      {
        goto LABEL_51;
      }

      v41 = &v20[64 * v15];
      v43 = *(v41 + 2);
      v42 = v41 + 16;
      v44 = v43 - 1;
      if (__OFSUB__(v43, 1))
      {
        goto LABEL_52;
      }

      *v42 = v44;
    }

    *(&v75 + 1) = v20;
LABEL_31:
    v19 = 0;
    v23 = *(v20 + 2);
    if (!v23)
    {
      goto LABEL_6;
    }

LABEL_32:
    v45 = &v20[64 * v23];
    if (*(v45 + 2))
    {
      goto LABEL_6;
    }

    v47 = *(v45 - 4);
    v46 = v45 - 32;
    v48 = v46[8];
    v49 = *(v46 + 4);
    v50 = v46[40];
    v51 = *(v46 + 7);
    v52 = *(v46 + 1);
    v70 = v47;
    v71 = v48 & 1;
    v60 = v52;
    *&v61 = v49;
    BYTE8(v61) = v50 & 1;
    *&v76 = v51;
    v15 = v74;
    v78[2] = v74;
    v79 = v75;
    v81 = v77;
    v78[0] = v72;
    v78[1] = v73;
    v80 = v76;
    (*(&v73 + 1))(&v70, &v60, v78);
    if (v19)
    {
      break;
    }

    v20 = *(&v79 + 1);
    if (!*(*(&v79 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = *(v20 + 2);
      if (!v53)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v53 = *(v20 + 2);
      if (!v53)
      {
        goto LABEL_48;
      }
    }

    *(&v75 + 1) = v20;
    *(v20 + 2) = v53 - 1;
    if (v53 != 1)
    {
      v54 = &v20[64 * v53];
      v56 = *(v54 - 6);
      v55 = v54 - 48;
      v57 = v56 - 1;
      if (__OFSUB__(v56, 1))
      {
        goto LABEL_49;
      }

      *v55 = v57;
    }

    v19 = 0;
LABEL_6:
    v15 = v72;
  }

  v62 = v74;
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v60 = v72;
  v61 = v73;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v60, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v8) = a8;
  *&v54 = MEMORY[0x277D84F90];
  *(&v54 + 1) = a3;
  *&v55 = a4;
  *(&v55 + 1) = a1;
  v56 = a2;
  v57 = a6;
  v58 = a7;
  v59 = MEMORY[0x277D84F90];
  *&v60 = 0;
  BYTE8(v60) = a5;
  *(&v60 + 9) = 0;
  v61 = 0;
  v62[0] = MEMORY[0x277D84F90];
  v62[1] = a3;
  v62[2] = a4;
  v62[3] = a1;
  v62[4] = a2;
  v62[5] = a6;
  v62[6] = a7;
  v62[7] = MEMORY[0x277D84F90];
  v62[8] = 0;
  v63 = a5;
  v64 = 0;
  v65 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v54, v50, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v62, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMR);
  v11 = v54;
  v12 = v57;
  *&v46 = v56;
  *(&v47 + 1) = v59;
  v48 = v60;
  v49 = v61;
  v44 = v54;
  v45 = v55;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v12);
  *(&v46 + 1) = a6;
  *&v47 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  v15 = BYTE10(v60);
  v16 = v59;
  *(v11 + 2) = v14 + 1;
  v17 = &v11[16 * v14];
  *(v17 + 8) = v8;
  *(v17 + 5) = 0;
  *&v44 = v11;
  for (i = 1; ; i = *(v44 + 16))
  {
    if (!i)
    {
      v19 = *(v16 + 2);
      if (!v19)
      {
        break;
      }

      goto LABEL_32;
    }

    v19 = *(v16 + 2);
    if (v19 && !*&v16[24 * v19 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = *(v11 + 2);
      if (!v20)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      v20 = *(v11 + 2);
      if (!v20)
      {
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
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    v21 = v20 - 1;
    v22 = &v11[16 * v21];
    v23 = *(v22 + 8);
    v24 = *(v22 + 5);
    *(v11 + 2) = v21;
    LODWORD(v42[0]) = v23;
    BYTE9(v48) = 1;
    v49 = BYTE8(v48);
    *&v44 = v11;
    *&v48 = v24;
    v25 = *(&v44 + 1);
    LODWORD(v8) = v45;

    v25(v42);

    if (BYTE10(v48) == 1)
    {
      break;
    }

    BYTE9(v48) = 0;
    v11 = v49;
    if (v49)
    {
      if (BYTE8(v48) == 1)
      {
        v11 = v49 - 1;
        if (__OFSUB__(v49, 1))
        {
          goto LABEL_50;
        }

        --v49;
      }

      v26 = v42[0];
      v16 = *(&v47 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v28 = *(v16 + 2);
      v27 = *(v16 + 3);
      v8 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v16);
      }

      *(v16 + 2) = v8;
      v29 = &v16[24 * v28];
      *(v29 + 8) = v26;
      *(v29 + 5) = v11;
      *(v29 + 6) = v24;
    }

    else
    {
      v16 = *(&v47 + 1);
      v8 = *(*(&v47 + 1) + 16);
      if (!v8)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      if (v8 > *(v16 + 2))
      {
        goto LABEL_51;
      }

      v30 = &v16[24 * v8];
      v32 = *(v30 + 2);
      v31 = v30 + 16;
      v33 = v32 - 1;
      if (__OFSUB__(v32, 1))
      {
        goto LABEL_52;
      }

      *v31 = v33;
    }

    *(&v47 + 1) = v16;
LABEL_31:
    v15 = 0;
    v19 = *(v16 + 2);
    if (!v19)
    {
      goto LABEL_6;
    }

LABEL_32:
    v34 = &v16[24 * v19];
    if (*(v34 + 2))
    {
      goto LABEL_6;
    }

    v35 = *(v34 + 3);
    LODWORD(v42[0]) = *(v34 + 2);
    *&v48 = v35;
    LODWORD(v8) = v46;
    v50[2] = v46;
    v51 = v47;
    v53 = v49;
    v50[0] = v44;
    v50[1] = v45;
    v52 = v48;
    (*(&v45 + 1))(v42);
    if (v15)
    {
      break;
    }

    v16 = *(&v51 + 1);
    if (!*(*(&v51 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = *(v16 + 2);
      if (!v36)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v36 = *(v16 + 2);
      if (!v36)
      {
        goto LABEL_48;
      }
    }

    *(&v47 + 1) = v16;
    *(v16 + 2) = v36 - 1;
    if (v36 != 1)
    {
      v37 = &v16[24 * v36];
      v39 = *(v37 - 1);
      v38 = v37 - 8;
      v40 = v39 - 1;
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_49;
      }

      *v38 = v40;
    }

    v15 = 0;
LABEL_6:
    v11 = v44;
  }

  v42[2] = v46;
  v42[3] = v47;
  v42[4] = v48;
  v43 = v49;
  v42[0] = v44;
  v42[1] = v45;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v42, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMR);
}

{
  LODWORD(v8) = a8;
  *&v54 = MEMORY[0x277D84F90];
  *(&v54 + 1) = a3;
  *&v55 = a4;
  *(&v55 + 1) = a1;
  v56 = a2;
  v57 = a6;
  v58 = a7;
  v59 = MEMORY[0x277D84F90];
  *&v60 = 0;
  BYTE8(v60) = a5;
  *(&v60 + 9) = 0;
  v61 = 0;
  v62[0] = MEMORY[0x277D84F90];
  v62[1] = a3;
  v62[2] = a4;
  v62[3] = a1;
  v62[4] = a2;
  v62[5] = a6;
  v62[6] = a7;
  v62[7] = MEMORY[0x277D84F90];
  v62[8] = 0;
  v63 = a5;
  v64 = 0;
  v65 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v54, v50, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v62, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMR);
  v11 = v54;
  v12 = v57;
  *&v46 = v56;
  *(&v47 + 1) = v59;
  v48 = v60;
  v49 = v61;
  v44 = v54;
  v45 = v55;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v12);
  *(&v46 + 1) = a6;
  *&v47 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  v15 = BYTE10(v60);
  v16 = v59;
  *(v11 + 2) = v14 + 1;
  v17 = &v11[16 * v14];
  *(v17 + 8) = v8;
  *(v17 + 5) = 0;
  *&v44 = v11;
  for (i = 1; ; i = *(v44 + 16))
  {
    if (!i)
    {
      v19 = *(v16 + 2);
      if (!v19)
      {
        break;
      }

      goto LABEL_32;
    }

    v19 = *(v16 + 2);
    if (v19 && !*&v16[24 * v19 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = *(v11 + 2);
      if (!v20)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      v20 = *(v11 + 2);
      if (!v20)
      {
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
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    v21 = v20 - 1;
    v22 = &v11[16 * v21];
    v23 = *(v22 + 8);
    v24 = *(v22 + 5);
    *(v11 + 2) = v21;
    LODWORD(v42[0]) = v23;
    BYTE9(v48) = 1;
    v49 = BYTE8(v48);
    *&v44 = v11;
    *&v48 = v24;
    v25 = *(&v44 + 1);
    LODWORD(v8) = v45;

    v25(v42);

    if (BYTE10(v48) == 1)
    {
      break;
    }

    BYTE9(v48) = 0;
    v11 = v49;
    if (v49)
    {
      if (BYTE8(v48) == 1)
      {
        v11 = v49 - 1;
        if (__OFSUB__(v49, 1))
        {
          goto LABEL_50;
        }

        --v49;
      }

      v16 = *(&v47 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v27 = *(v16 + 2);
      v26 = *(v16 + 3);
      v8 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v16);
      }

      *(v16 + 2) = v8;
      v28 = &v16[24 * v27];
      *(v28 + 8) = v23;
      *(v28 + 5) = v11;
      *(v28 + 6) = v24;
    }

    else
    {
      v16 = *(&v47 + 1);
      v8 = *(*(&v47 + 1) + 16);
      if (!v8)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      if (v8 > *(v16 + 2))
      {
        goto LABEL_51;
      }

      v29 = &v16[24 * v8];
      v31 = *(v29 + 2);
      v30 = v29 + 16;
      v32 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_52;
      }

      *v30 = v32;
    }

    *(&v47 + 1) = v16;
LABEL_31:
    v15 = 0;
    v19 = *(v16 + 2);
    if (!v19)
    {
      goto LABEL_6;
    }

LABEL_32:
    v33 = &v16[24 * v19];
    if (*(v33 + 2))
    {
      goto LABEL_6;
    }

    v34 = *(v33 + 2);
    v35 = *(v33 + 3);
    LODWORD(v42[0]) = v34;
    *&v48 = v35;
    LODWORD(v8) = v46;
    v50[2] = v46;
    v51 = v47;
    v53 = v49;
    v50[0] = v44;
    v50[1] = v45;
    v52 = v48;
    (*(&v45 + 1))(v42);
    if (v15)
    {
      break;
    }

    v16 = *(&v51 + 1);
    if (!*(*(&v51 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = *(v16 + 2);
      if (!v36)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v36 = *(v16 + 2);
      if (!v36)
      {
        goto LABEL_48;
      }
    }

    *(&v47 + 1) = v16;
    *(v16 + 2) = v36 - 1;
    if (v36 != 1)
    {
      v37 = &v16[24 * v36];
      v39 = *(v37 - 1);
      v38 = v37 - 8;
      v40 = v39 - 1;
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_49;
      }

      *v38 = v40;
    }

    v15 = 0;
LABEL_6:
    v11 = v44;
  }

  v42[2] = v46;
  v42[3] = v47;
  v42[4] = v48;
  v43 = v49;
  v42[0] = v44;
  v42[1] = v45;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v42, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, id a8, void *a9, uint64_t a10, char a11)
{
  v14 = a9;
  *&v73 = MEMORY[0x277D84F90];
  *(&v73 + 1) = a3;
  *&v74 = a4;
  *(&v74 + 1) = a1;
  v75 = a2;
  v76 = a6;
  v77 = a7;
  v78 = MEMORY[0x277D84F90];
  *&v79 = 0;
  BYTE8(v79) = a5;
  *(&v79 + 9) = 0;
  v80 = 0;
  v81[0] = MEMORY[0x277D84F90];
  v81[1] = a3;
  v81[2] = a4;
  v81[3] = a1;
  v81[4] = a2;
  v81[5] = a6;
  v81[6] = a7;
  v81[7] = MEMORY[0x277D84F90];
  v81[8] = 0;
  v82 = a5;
  v83 = 0;
  v84 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v73, v69, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v81, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMR);
  v15 = v73;
  v16 = v76;
  *&v65 = v75;
  *(&v66 + 1) = v78;
  v67 = v79;
  v68 = v80;
  v63 = v73;
  v64 = v74;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16);
  *(&v65 + 1) = a6;
  *&v66 = a7;
  v17 = a9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_62:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
  }

  v19 = *(v15 + 16);
  v18 = *(v15 + 24);
  if (v19 >= v18 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
  }

  v20 = BYTE10(v79);
  v21 = v78;
  *(v15 + 16) = v19 + 1;
  v22 = (v15 + 40 * v19);
  v22[4] = a8;
  v22[5] = v14;
  v22[6] = a10;
  *(v22 + 56) = a11 & 1;
  v22[8] = 0;
  *&v63 = v15;
  for (i = 1; ; i = *(v63 + 16))
  {
    if (!i)
    {
      if (!v21[2])
      {
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v24 = v21[2];
    if (v24)
    {
      if (!v21[6 * v24 + 2])
      {
        goto LABEL_32;
      }

      if (!*(v15 + 16))
      {
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
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = *(v15 + 16);
      if (!v25)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v25 = *(v15 + 16);
      if (!v25)
      {
        goto LABEL_53;
      }
    }

    v26 = (v15 + 40 * v25);
    v27 = *(v26 - 1);
    v28 = *(v26 + 16);
    v14 = v26[3];
    v29 = *v26;
    *(v15 + 16) = v25 - 1;
    v62 = v27;
    *&v63 = v15;
    v56 = v29;
    LOBYTE(v57) = v28;
    BYTE9(v67) = 1;
    v68 = BYTE8(v67);
    *&v67 = v14;
    v30 = *(&v63 + 1);
    v15 = v64;

    v30(&v62, &v56, &v63);

    if (BYTE10(v67) == 1)
    {

      goto LABEL_51;
    }

    BYTE9(v67) = 0;
    v31 = v68;
    if (v68)
    {
      if (BYTE8(v67))
      {
        v31 = v68 - 1;
        if (__OFSUB__(v68, 1))
        {
          goto LABEL_57;
        }

        --v68;
      }

      v32 = v56;
      v33 = v57;
      v21 = *(&v66 + 1);
      v15 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      }

      v35 = v21[2];
      v34 = v21[3];
      a8 = (v35 + 1);
      if (v35 >= v34 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v21);
      }

      v21[2] = a8;
      v36 = &v21[6 * v35];
      v36[4] = v27;
      *(v36 + 5) = v32;
      *(v36 + 56) = v33;
      v36[8] = v31;
      v36[9] = v14;
      goto LABEL_31;
    }

    v21 = *(&v66 + 1);
    v15 = *(*(&v66 + 1) + 16);
    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      }

      if (v15 > v21[2])
      {
        goto LABEL_60;
      }

      v37 = &v21[6 * v15];
      v39 = v37[2];
      v38 = v37 + 2;
      v40 = v39 - 1;
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_61;
      }

      *v38 = v40;
LABEL_31:
      *(&v66 + 1) = v21;
      v20 = 0;
LABEL_32:
      v41 = v21[2];
      if (!v41)
      {
        goto LABEL_6;
      }

      goto LABEL_33;
    }

    v20 = 0;
    v41 = v21[2];
    if (!v41)
    {
      goto LABEL_6;
    }

LABEL_33:
    if (v21[6 * v41 + 2])
    {
      goto LABEL_6;
    }

    v42 = v21[2];
    if (!v42)
    {
      goto LABEL_54;
    }

    v43 = &v21[6 * v42 + 4];
    v44 = *(v43 - 24);
    v45 = *(v43 - 8);
    v46 = *(v43 - 40);
    v62 = *(v43 - 48);
    v56 = v46;
    LOBYTE(v57) = v44;
    *&v67 = v45;
    v47 = *(&v64 + 1);
    v15 = v65;
    v69[2] = v65;
    v70 = v66;
    v72 = v68;
    v69[0] = v63;
    v69[1] = v64;
    v71 = v67;
    a8 = v46;
    v47(&v62, &v56, v69);
    if (v20)
    {
      break;
    }

    v21 = *(&v70 + 1);
    if (!*(*(&v70 + 1) + 16))
    {
      goto LABEL_55;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v48 = v21[2];
      if (!v48)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v48 = v21[2];
      if (!v48)
      {
        goto LABEL_56;
      }
    }

    v15 = (v21 + 4);
    v49 = v21[6 * v48 - 1];
    v21[2] = v48 - 1;
    *(&v66 + 1) = v21;

    v50 = v21[2];
    if (v50)
    {
      if (v50 > v21[2])
      {
        goto LABEL_58;
      }

      v51 = (v15 + 48 * v50);
      v52 = *(v51 - 2);
      v53 = __OFSUB__(v52, 1);
      v54 = v52 - 1;
      if (v53)
      {
        goto LABEL_59;
      }

      *(v51 - 2) = v54;
      *(&v66 + 1) = v21;
    }

    v20 = 0;
LABEL_6:
    v15 = v63;
  }

LABEL_51:
  v58 = v65;
  v59 = v66;
  v60 = v67;
  v61 = v68;
  v56 = v63;
  v57 = v64;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v56, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMR);
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Invalidation)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV17DynamicPropertiesV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.DynamicProperties)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Update)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV13UninstantiateV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Uninstantiate)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Transaction)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Allocation)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Instantiate)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GraphV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Graph)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Action)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Prefetch)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeValueV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.AttributeValue)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.AttributeStack)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8AbstractV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Abstract)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA07TestingC0O19TestEventWBacktraceV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a2 - result;
  v9 = a4;
  while (1)
  {
    v10 = v7;
    if (v7 >= v9)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v8 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for TestingSupport.TestEventWBacktrace)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Group)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Ignorable)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10ObservableV_Ttgq5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Observable)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}