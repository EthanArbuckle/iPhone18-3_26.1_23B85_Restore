uint64_t swift::Demangle::__runtime::Demangler::nextIf(void *a1, const void *a2, size_t a3)
{
  v3 = a1[8];
  v4 = a1[9];
  if (v3 >= v4)
  {
    v5 = a1[9];
  }

  else
  {
    v5 = a1[8];
  }

  if (v3 - v5 < a3)
  {
    return 0;
  }

  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = memcmp((a1[7] + v5), a2, a3);
    a3 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return 0;
    }
  }

  a1[9] = v4 + a3;
  return 1;
}

int8x16_t *swift::Demangle::__runtime::Demangler::parseAndPushNodes(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *(this + 8);
  for (i = *(this + 9); i < v6; i = *(this + 9))
  {
    if (i >= *(this + 8) || !*(*(this + 7) + i))
    {
      break;
    }

    result = swift::Demangle::__runtime::Demangler::demangleOperator(this, a2, a3, a4, a5);
    if (!result)
    {
      return result;
    }

    v9 = result;
    swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 11, &v9, this);
  }

  return (&dword_0 + 1);
}

uint64_t swift::Demangle::__runtime::Demangler::popNode<BOOL (*)(swift::Demangle::__runtime::Node::Kind)>(uint64_t a1, unsigned int (*a2)(void))
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    return 0;
  }

  if (!a2(*(*(*(a1 + 88) + 8 * (v2 - 1)) + 16)))
  {
    return 0;
  }

  v4 = *(a1 + 96);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 1;
  result = *(*(a1 + 88) + 8 * v5);
  *(a1 + 96) = v5;
  return result;
}

int8x16_t *swift::Demangle::__runtime::Demangler::demangleOperator(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  if (v5 <= v6)
  {
    v7 = *(this + 8);
  }

  else
  {
    v7 = *(this + 9);
  }

  while (2)
  {
    if (v7 == v5)
    {
      v5 = v7;
LABEL_10:
      v12 = v5 - 1;
LABEL_11:
      *(this + 9) = v12;

      return swift::Demangle::__runtime::Demangler::demangleIdentifier(this);
    }

    else
    {
      v8 = v5++;
      *(this + 9) = v5;
      v9 = *(this + 7);
      v10 = *(v9 + v8);
      switch(*(v9 + v8))
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:

          return swift::Demangle::__runtime::Demangler::demangleSymbolicReference(this, v10);
        case 0x24:

          return swift::Demangle::__runtime::Demangler::demangleIntegerType(this, v10, a3, a4, a5);
        case 0x2E:
          v84 = v5 - 1;
          if (v6 < v84)
          {
            v84 = v6;
          }

          v85 = v6 - v84;
          *(this + 9) = v6;
          v86 = (v9 + v84);
          v87 = 232;
          goto LABEL_112;
        case 0x41:

          return swift::Demangle::__runtime::Demangler::demangleMultiSubstitutions(this);
        case 0x42:

          return swift::Demangle::__runtime::Demangler::demangleBuiltinType(this, v10, a3, a4, a5);
        case 0x43:
          v88 = 25;
          goto LABEL_206;
        case 0x44:

          return swift::Demangle::__runtime::Demangler::demangleTypeMangling(this, v10, a3, a4, a5);
        case 0x45:

          return swift::Demangle::__runtime::Demangler::demangleExtensionContext(this, v10, a3, a4, a5);
        case 0x46:

          return swift::Demangle::__runtime::Demangler::demanglePlainFunction(this, v10, a3, a4, a5);
        case 0x47:

          return swift::Demangle::__runtime::Demangler::demangleBoundGenericType(this, v10, a3, a4, a5);
        case 0x48:
          if (v5 < v6)
          {
            v73 = v5 + 1;
            *(this + 9) = v5 + 1;
            switch(*(v9 + v5))
            {
              case 'A':
                v74 = this;
                v75 = swift::Demangle::__runtime::Demangler::demangleDependentConformanceIndex(this);
                v80 = swift::Demangle::__runtime::Demangler::popDependentAssociatedConformance(v74, v76, v77, v78, v79);
                v81 = *(v74 + 24);
                if (v81 && (v82 = v81 - 1, v83 = *(*(v74 + 11) + 8 * v82), v83[8] - 48 <= 2))
                {
                  *(v74 + 24) = v82;
                }

                else
                {
                  v83 = 0;
                }

                v167 = v74;
                v195 = 50;
                goto LABEL_311;
              case 'C':
                v162 = this;
                v75 = swift::Demangle::__runtime::Demangler::popAnyProtocolConformanceList(this, v10, a3, a4, a5);
                v166 = *(v162 + 24);
                if (v166 && ((v167 = v162, v168 = v166 - 1, v80 = *(*(v162 + 11) + 8 * v168), v169 = v80[8], v169 == 194) || v169 == 193))
                {
                  *(v162 + 24) = v168;
                }

                else
                {
                  v80 = swift::Demangle::__runtime::Demangler::demangleRetroactiveProtocolConformanceRef(v162, v163, v164, v80, v165);
                  v167 = v162;
                  v168 = *(v162 + 24);
                }

                if (v168 && (v196 = v168 - 1, v83 = *(*(v167 + 11) + 8 * v196), v83[8] == 243))
                {
                  *(v167 + 24) = v196;
                }

                else
                {
                  v83 = 0;
                }

                v195 = 27;
                goto LABEL_311;
              case 'D':
                v155 = this;
                v75 = swift::Demangle::__runtime::Demangler::demangleDependentConformanceIndex(this);
                v80 = swift::Demangle::__runtime::Demangler::popProtocol(v155, v156, v157, v158, v159);
                v160 = *(v155 + 24);
                if (v160 && (v161 = v160 - 1, v83 = *(*(v155 + 11) + 8 * v161), v83[8] == 243))
                {
                  *(v155 + 24) = v161;
                }

                else
                {
                  v83 = 0;
                }

                v167 = v155;
                v195 = 48;
                goto LABEL_311;
              case 'F':
                v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v17;
                if (!v17 || v17 + 24 > *(this + 2))
                {
                  v150 = 2 * *(this + 4);
                  if (v150 <= 0x20)
                  {
                    v150 = 32;
                  }

                  *(this + 4) = v150;
                  v151 = v150 + 8;
                  v152 = this;
                  v153 = malloc_type_malloc(v150 + 8, 0x2004093837F09uLL);
                  this = v152;
                  v154 = v153 + v151;
                  *v153 = *(v152 + 3);
                  v17 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v152 + 2) = v154;
                  *(v152 + 3) = v153;
                }

                *(this + 1) = v17 + 24;
                v55 = 344;
                goto LABEL_88;
              case 'I':
                v131 = this;
                v75 = swift::Demangle::__runtime::Demangler::demangleDependentConformanceIndex(this);
                v80 = swift::Demangle::__runtime::Demangler::popProtocol(v131, v132, v133, v134, v135);
                v136 = *(v131 + 24);
                if (v136 && (v137 = v136 - 1, v83 = *(*(v131 + 11) + 8 * v137), v83[8] - 48 <= 2))
                {
                  *(v131 + 24) = v137;
                }

                else
                {
                  v83 = 0;
                }

                v167 = v131;
                v195 = 49;
LABEL_311:

                return swift::Demangle::__runtime::Demangler::createWithChildren(v167, v195, v83, v80, v75);
              case 'O':

                return swift::Demangle::__runtime::Demangler::demangleDependentProtocolConformanceOpaque(this, v10, a3, a4, a5);
              case 'P':
                v170 = this;
                v171 = swift::Demangle::__runtime::Demangler::popProtocol(this, v10, a3, a4, a5);
                if (!v171)
                {
                  goto LABEL_297;
                }

                v18 = v171;
                v89 = v170;
                v17 = (*(v170 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(v170 + 1) = v17;
                if (!v17 || v17 + 24 > *(v170 + 2))
                {
                  v172 = 2 * *(v170 + 4);
                  if (v172 <= 0x20)
                  {
                    v172 = 32;
                  }

                  *(v170 + 4) = v172;
                  v173 = v172 + 8;
                  v174 = malloc_type_malloc(v172 + 8, 0x2004093837F09uLL);
                  v89 = v170;
                  v175 = v174 + v173;
                  *v174 = *(v170 + 3);
                  v17 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v170 + 2) = v175;
                  *(v170 + 3) = v174;
                }

                *(v89 + 1) = v17 + 24;
                v122 = 193;
                goto LABEL_199;
              case 'X':
                v176 = this;
                v177 = swift::Demangle::__runtime::Demangler::popAnyProtocolConformanceList(this, v10, a3, a4, a5);
                if (!v177)
                {
                  goto LABEL_297;
                }

                v18 = v177;
                v89 = v176;
                v17 = (*(v176 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(v176 + 1) = v17;
                if (!v17 || v17 + 24 > *(v176 + 2))
                {
                  v178 = 2 * *(v176 + 4);
                  if (v178 <= 0x20)
                  {
                    v178 = 32;
                  }

                  *(v176 + 4) = v178;
                  v179 = v178 + 8;
                  v180 = malloc_type_malloc(v178 + 8, 0x2004093837F09uLL);
                  v89 = v176;
                  v181 = v180 + v179;
                  *v180 = *(v176 + 3);
                  v17 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v176 + 2) = v181;
                  *(v176 + 3) = v180;
                }

                *(v89 + 1) = v17 + 24;
                v122 = 28;
                goto LABEL_199;
              case 'c':
                v189 = this;
                v190 = swift::Demangle::__runtime::Demangler::popProtocolConformance(this, v10, a3, a4, a5);
                if (!v190)
                {
                  goto LABEL_297;
                }

                v18 = v190;
                v89 = v189;
                v17 = (*(v189 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(v189 + 1) = v17;
                if (!v17 || v17 + 24 > *(v189 + 2))
                {
                  v191 = 2 * *(v189 + 4);
                  if (v191 <= 0x20)
                  {
                    v191 = 32;
                  }

                  *(v189 + 4) = v191;
                  v192 = v191 + 8;
                  v193 = malloc_type_malloc(v191 + 8, 0x2004093837F09uLL);
                  v89 = v189;
                  v194 = v193 + v192;
                  *v193 = *(v189 + 3);
                  v17 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v189 + 2) = v194;
                  *(v189 + 3) = v193;
                }

                *(v89 + 1) = v17 + 24;
                v122 = 199;
                goto LABEL_199;
              case 'n':
                v182 = *(this + 24);
                if (!v182)
                {
                  goto LABEL_297;
                }

                v183 = v182 - 1;
                v18 = *(*(this + 11) + 8 * v183);
                if (*(v18 + 16) != 243)
                {
                  goto LABEL_297;
                }

                *(this + 24) = v183;
                v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v17;
                if (!v17 || v17 + 24 > *(this + 2))
                {
                  v184 = 2 * *(this + 4);
                  if (v184 <= 0x20)
                  {
                    v184 = 32;
                  }

                  *(this + 4) = v184;
                  v185 = v184 + 8;
                  v186 = this;
                  v187 = malloc_type_malloc(v184 + 8, 0x2004093837F09uLL);
                  this = v186;
                  v188 = v187 + v185;
                  *v187 = *(v186 + 3);
                  v17 = (v187 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v186 + 2) = v188;
                  *(v186 + 3) = v187;
                }

                *(this + 1) = v17 + 24;
                v35 = 169;
                goto LABEL_174;
              case 'o':
                v124 = *(this + 24);
                if (!v124)
                {
                  goto LABEL_297;
                }

                v125 = v124 - 1;
                v18 = *(*(this + 11) + 8 * v125);
                *(this + 24) = v125;
                if (!v18)
                {
                  goto LABEL_297;
                }

                v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v17;
                if (!v17 || v17 + 24 > *(this + 2))
                {
                  v126 = 2 * *(this + 4);
                  if (v126 <= 0x20)
                  {
                    v126 = 32;
                  }

                  *(this + 4) = v126;
                  v127 = v126 + 8;
                  v128 = this;
                  v129 = malloc_type_malloc(v126 + 8, 0x2004093837F09uLL);
                  this = v128;
                  v130 = v129 + v127;
                  *v129 = *(v128 + 3);
                  v17 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v128 + 2) = v130;
                  *(v128 + 3) = v129;
                }

                *(this + 1) = v17 + 24;
                v35 = 317;
                goto LABEL_174;
              case 'p':
                v144 = this;
                v145 = swift::Demangle::__runtime::Demangler::popProtocol(this, v10, a3, a4, a5);
                if (!v145)
                {
                  goto LABEL_297;
                }

                v18 = v145;
                v89 = v144;
                v17 = (*(v144 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(v144 + 1) = v17;
                if (!v17 || v17 + 24 > *(v144 + 2))
                {
                  v146 = 2 * *(v144 + 4);
                  if (v146 <= 0x20)
                  {
                    v146 = 32;
                  }

                  *(v144 + 4) = v146;
                  v147 = v146 + 8;
                  v148 = malloc_type_malloc(v146 + 8, 0x2004093837F09uLL);
                  v89 = v144;
                  v149 = v148 + v147;
                  *v148 = *(v144 + 3);
                  v17 = (v148 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v144 + 2) = v149;
                  *(v144 + 3) = v148;
                }

                *(v89 + 1) = v17 + 24;
                v122 = 194;
                goto LABEL_199;
              case 'r':
                v138 = this;
                v139 = swift::Demangle::__runtime::Demangler::popProtocol(this, v10, a3, a4, a5);
                if (!v139)
                {
                  goto LABEL_297;
                }

                v18 = v139;
                v89 = v138;
                v17 = (*(v138 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(v138 + 1) = v17;
                if (!v17 || v17 + 24 > *(v138 + 2))
                {
                  v140 = 2 * *(v138 + 4);
                  if (v140 <= 0x20)
                  {
                    v140 = 32;
                  }

                  *(v138 + 4) = v140;
                  v141 = v140 + 8;
                  v142 = malloc_type_malloc(v140 + 8, 0x2004093837F09uLL);
                  v89 = v138;
                  v143 = v142 + v141;
                  *v142 = *(v138 + 3);
                  v17 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(v138 + 2) = v143;
                  *(v138 + 3) = v142;
                }

                *(v89 + 1) = v17 + 24;
                v122 = 197;
                goto LABEL_199;
              default:
                goto LABEL_226;
            }
          }

          v73 = v5;
LABEL_226:
          v12 = v73 - 2;
          goto LABEL_11;
        case 0x49:

          return swift::Demangle::__runtime::Demangler::demangleImplFunctionType(this, v10, a3, a4, a5);
        case 0x4B:
          v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v17;
          if (!v17 || v17 + 24 > *(this + 2))
          {
            v50 = 2 * *(this + 4);
            if (v50 <= 0x20)
            {
              v50 = 32;
            }

            *(this + 4) = v50;
            v51 = v50 + 8;
            v52 = this;
            v53 = malloc_type_malloc(v50 + 8, 0x2004093837F09uLL);
            this = v52;
            v54 = v53 + v51;
            *v53 = *(v52 + 3);
            v17 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v52 + 2) = v54;
            *(v52 + 3) = v53;
          }

          *(this + 1) = v17 + 24;
          v55 = 285;
          goto LABEL_88;
        case 0x4C:

          return swift::Demangle::__runtime::Demangler::demangleLocalIdentifier(this, v10, a3, a4, a5);
        case 0x4D:

          return swift::Demangle::__runtime::Demangler::demangleMetatype(this, v10, a3, a4, a5);
        case 0x4E:
          v103 = *(this + 24);
          if (!v103)
          {
            goto LABEL_297;
          }

          v104 = v103 - 1;
          v18 = *(*(this + 11) + 8 * v104);
          if (*(v18 + 16) != 243)
          {
            goto LABEL_297;
          }

          *(this + 24) = v104;
          v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v17;
          if (!v17 || v17 + 24 > *(this + 2))
          {
            v105 = 2 * *(this + 4);
            if (v105 <= 0x20)
            {
              v105 = 32;
            }

            *(this + 4) = v105;
            v106 = v105 + 8;
            v107 = this;
            v108 = malloc_type_malloc(v105 + 8, 0x2004093837F09uLL);
            this = v107;
            v109 = v108 + v106;
            *v108 = *(v107 + 3);
            v17 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v107 + 2) = v109;
            *(v107 + 3) = v108;
          }

          *(this + 1) = v17 + 24;
          v35 = 248;
          goto LABEL_174;
        case 0x4F:
          v88 = 63;
          goto LABEL_206;
        case 0x50:
          v88 = 190;
          goto LABEL_206;
        case 0x51:

          return swift::Demangle::__runtime::Demangler::demangleArchetype(this, v10, a3, a4, a5);
        case 0x52:

          return swift::Demangle::__runtime::Demangler::demangleGenericRequirement(this, v10, a3, a4, a5);
        case 0x53:

          return swift::Demangle::__runtime::Demangler::demangleStandardSubstitution(this);
        case 0x54:

          return swift::Demangle::__runtime::Demangler::demangleThunkOrSpecialization(this, v10, a3, a4, a5);
        case 0x56:
          v88 = 230;
          goto LABEL_206;
        case 0x57:

          return swift::Demangle::__runtime::Demangler::demangleWitness(this, v10, a3, a4, a5);
        case 0x58:

          return swift::Demangle::__runtime::Demangler::demangleSpecialType(this, v10, a3, a4, a5);
        case 0x59:

          return swift::Demangle::__runtime::Demangler::demangleTypeAnnotation(this, v10, a3, a4, a5);
        case 0x5A:
          v25 = *(this + 24);
          if (!v25)
          {
            goto LABEL_297;
          }

          v26 = v25 - 1;
          v18 = *(*(this + 11) + 8 * (v25 - 1));
          if (*(v18 + 16) != 243)
          {
            v27 = this;
            v28 = *(v18 + 16);
            isContext = swift::Demangle::__runtime::isContext();
            this = v27;
            if (!isContext)
            {
              goto LABEL_297;
            }
          }

          *(this + 24) = v26;
          v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v17;
          if (!v17 || v17 + 24 > *(this + 2))
          {
            v30 = 2 * *(this + 4);
            if (v30 <= 0x20)
            {
              v30 = 32;
            }

            *(this + 4) = v30;
            v31 = v30 + 8;
            v32 = this;
            v33 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
            this = v32;
            v34 = v33 + v31;
            *v33 = *(v32 + 3);
            v17 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v32 + 2) = v34;
            *(v32 + 3) = v33;
          }

          *(this + 1) = v17 + 24;
          v35 = 229;
LABEL_174:
          *(v17 + 16) = v35;
          *(v17 + 18) = 0;
          v89 = this;
          goto LABEL_200;
        case 0x5F:
          v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v17;
          if (!v17 || v17 + 24 > *(this + 2))
          {
            v66 = 2 * *(this + 4);
            if (v66 <= 0x20)
            {
              v66 = 32;
            }

            *(this + 4) = v66;
            v67 = v66 + 8;
            v68 = this;
            v69 = malloc_type_malloc(v66 + 8, 0x2004093837F09uLL);
            this = v68;
            v70 = v69 + v67;
            *v69 = *(v68 + 3);
            v17 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v68 + 2) = v70;
            *(v68 + 3) = v69;
          }

          *(this + 1) = v17 + 24;
          v55 = 288;
          goto LABEL_88;
        case 0x61:
          v88 = 245;
LABEL_206:

          return swift::Demangle::__runtime::Demangler::demangleAnyGenericType(this, v88, a3, a4, a5);
        case 0x63:

          return swift::Demangle::__runtime::Demangler::popFunctionType(this, 84, 0, a4, a5);
        case 0x64:
          v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v17;
          if (!v17 || v17 + 24 > *(this + 2))
          {
            v61 = 2 * *(this + 4);
            if (v61 <= 0x20)
            {
              v61 = 32;
            }

            *(this + 4) = v61;
            v62 = v61 + 8;
            v63 = this;
            v64 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
            this = v63;
            v65 = v64 + v62;
            *v64 = *(v63 + 3);
            v17 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v63 + 2) = v65;
            *(v63 + 3) = v64;
          }

          *(this + 1) = v17 + 24;
          v55 = 289;
          goto LABEL_88;
        case 0x66:

          return swift::Demangle::__runtime::Demangler::demangleFunctionEntity(this, v10, a3, a4, a5);
        case 0x67:

          return swift::Demangle::__runtime::Demangler::demangleRetroactiveConformance(this);
        case 0x68:
          v13 = *(this + 24);
          if (!v13)
          {
            goto LABEL_297;
          }

          v14 = v13 - 1;
          v15 = *(*(this + 11) + 8 * (v13 - 1));
          if (*(v15 + 16) != 243)
          {
            goto LABEL_297;
          }

          *(this + 24) = v14;
          v16 = *(v15 + 18);
          if (v16 == 1)
          {
            goto LABEL_20;
          }

          if (v16 != 5 || *(v15 + 8) != 1)
          {
            goto LABEL_297;
          }

          v15 = *v15;
LABEL_20:
          v17 = *v15;
          if (!*v15)
          {
            goto LABEL_298;
          }

          v18 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v18;
          if (!v18 || v18 + 24 > *(this + 2))
          {
            v19 = 2 * *(this + 4);
            if (v19 <= 0x20)
            {
              v19 = 32;
            }

            *(this + 4) = v19;
            v20 = v19 + 8;
            v21 = this;
            v22 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
            this = v21;
            v23 = v22 + v20;
            *v22 = *(v21 + 3);
            v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v21 + 2) = v23;
            *(v21 + 3) = v22;
          }

          *(this + 1) = v18 + 24;
          v24 = 219;
          goto LABEL_193;
        case 0x69:

          return swift::Demangle::__runtime::Demangler::demangleSubscript(this, v10, a3, a4, a5);
        case 0x6C:
          v123 = 0;
          goto LABEL_222;
        case 0x6D:
          v110 = *(this + 24);
          if (!v110)
          {
            goto LABEL_297;
          }

          v111 = v110 - 1;
          v17 = *(*(this + 11) + 8 * v111);
          if (*(v17 + 16) != 243)
          {
            goto LABEL_297;
          }

          *(this + 24) = v111;
          v18 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v18;
          if (!v18 || v18 + 24 > *(this + 2))
          {
            v112 = 2 * *(this + 4);
            if (v112 <= 0x20)
            {
              v112 = 32;
            }

            *(this + 4) = v112;
            v113 = v112 + 8;
            v114 = this;
            v115 = malloc_type_malloc(v112 + 8, 0x2004093837F09uLL);
            this = v114;
            v116 = v115 + v113;
            *v115 = *(v114 + 3);
            v18 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v114 + 2) = v116;
            *(v114 + 3) = v115;
          }

          *(this + 1) = v18 + 24;
          v24 = 154;
          goto LABEL_193;
        case 0x6E:
          v94 = *(this + 24);
          if (!v94)
          {
            goto LABEL_297;
          }

          v95 = v94 - 1;
          v96 = *(*(this + 11) + 8 * (v94 - 1));
          if (*(v96 + 16) != 243)
          {
            goto LABEL_297;
          }

          *(this + 24) = v95;
          v97 = *(v96 + 18);
          if (v97 == 1)
          {
            goto LABEL_158;
          }

          if (v97 != 5 || *(v96 + 8) != 1)
          {
            goto LABEL_297;
          }

          v96 = *v96;
LABEL_158:
          v17 = *v96;
          if (!*v96)
          {
            goto LABEL_298;
          }

          v18 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v18;
          if (!v18 || v18 + 24 > *(this + 2))
          {
            v98 = 2 * *(this + 4);
            if (v98 <= 0x20)
            {
              v98 = 32;
            }

            *(this + 4) = v98;
            v99 = v98 + 8;
            v100 = this;
            v101 = malloc_type_malloc(v98 + 8, 0x2004093837F09uLL);
            this = v100;
            v102 = v101 + v99;
            *v101 = *(v100 + 3);
            v18 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v100 + 2) = v102;
            *(v100 + 3) = v101;
          }

          *(this + 1) = v18 + 24;
          v24 = 220;
          goto LABEL_193;
        case 0x6F:

          return swift::Demangle::__runtime::Demangler::demangleOperatorIdentifier(this);
        case 0x70:
          v71 = this;
          DependentGenericParamType = swift::Demangle::__runtime::Demangler::demangleProtocolList(this, v10, a3, a4, a5);
          if (!DependentGenericParamType)
          {
            goto LABEL_297;
          }

          goto LABEL_140;
        case 0x71:
          v71 = this;
          DependentGenericParamType = swift::Demangle::__runtime::Demangler::demangleGenericParamIndex(this, v10, a3, a4, a5);
          if (DependentGenericParamType)
          {
            goto LABEL_140;
          }

          goto LABEL_297;
        case 0x72:
          v123 = 1;
LABEL_222:

          return swift::Demangle::__runtime::Demangler::demangleGenericSignature(this, v123, a3, a4, a5);
        case 0x73:
          v86 = "Swift";
          v87 = 163;
          v85 = 5;
LABEL_112:

          return swift::Demangle::__runtime::NodeFactory::createNode(this, v87, v86, v85);
        case 0x74:

          return swift::Demangle::__runtime::Demangler::popTuple(this, v10, a3, a4, a5);
        case 0x75:

          return swift::Demangle::__runtime::Demangler::demangleGenericType(this, v10, a3, a4, a5);
        case 0x76:
          v36 = this;
          v37 = swift::Demangle::__runtime::Demangler::demangleEntity(this, 266, a3, a4, a5);

          return swift::Demangle::__runtime::Demangler::demangleAccessor(v36, v37, v38, v39, v40);
        case 0x77:

          return swift::Demangle::__runtime::Demangler::demangleValueWitness(this, v10, a3, a4, a5);
        case 0x78:
          v71 = this;
          DependentGenericParamType = swift::Demangle::__runtime::Demangler::getDependentGenericParamType(this, 0, 0, a4, a5);
          if (!DependentGenericParamType)
          {
            goto LABEL_297;
          }

LABEL_140:
          v18 = DependentGenericParamType;
          v89 = v71;
          v17 = (*(v71 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(v71 + 1) = v17;
          if (!v17 || v17 + 24 > *(v71 + 2))
          {
            v90 = 2 * *(v71 + 4);
            if (v90 <= 0x20)
            {
              v90 = 32;
            }

            *(v71 + 4) = v90;
            v91 = v90 + 8;
            v92 = malloc_type_malloc(v90 + 8, 0x2004093837F09uLL);
            v89 = v71;
            v93 = v92 + v91;
            *v92 = *(v71 + 3);
            v17 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v71 + 2) = v93;
            *(v71 + 3) = v92;
          }

          goto LABEL_198;
        case 0x79:
          v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v17;
          if (!v17 || v17 + 24 > *(this + 2))
          {
            v56 = 2 * *(this + 4);
            if (v56 <= 0x20)
            {
              v56 = 32;
            }

            *(this + 4) = v56;
            v57 = v56 + 8;
            v58 = this;
            v59 = malloc_type_malloc(v56 + 8, 0x2004093837F09uLL);
            this = v58;
            v60 = v59 + v57;
            *v59 = *(v58 + 3);
            v17 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v58 + 2) = v60;
            *(v58 + 3) = v59;
          }

          *(this + 1) = v17 + 24;
          v55 = 287;
LABEL_88:
          *(v17 + 16) = v55;
          *(v17 + 18) = 0;
          goto LABEL_298;
        case 0x7A:
          v41 = *(this + 24);
          if (!v41)
          {
            goto LABEL_297;
          }

          v42 = v41 - 1;
          v43 = *(*(this + 11) + 8 * (v41 - 1));
          if (*(v43 + 16) != 243)
          {
            goto LABEL_297;
          }

          *(this + 24) = v42;
          v44 = *(v43 + 18);
          if (v44 == 1)
          {
            goto LABEL_51;
          }

          if (v44 == 5 && *(v43 + 8) == 1)
          {
            v43 = *v43;
LABEL_51:
            v17 = *v43;
            if (*v43)
            {
              v18 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
              *(this + 1) = v18;
              if (!v18 || v18 + 24 > *(this + 2))
              {
                v45 = 2 * *(this + 4);
                if (v45 <= 0x20)
                {
                  v45 = 32;
                }

                *(this + 4) = v45;
                v46 = v45 + 8;
                v47 = this;
                v48 = malloc_type_malloc(v45 + 8, 0x2004093837F09uLL);
                this = v47;
                v49 = v48 + v46;
                *v48 = *(v47 + 3);
                v18 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
                *(v47 + 2) = v49;
                *(v47 + 3) = v48;
              }

              *(this + 1) = v18 + 24;
              v24 = 128;
LABEL_193:
              *(v18 + 16) = v24;
              *(v18 + 18) = 0;
              v117 = this;
              swift::Demangle::__runtime::Node::addChild(v18, v17, this, a4, a5);
              v89 = v117;
              v17 = (*(v117 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
              *(v117 + 1) = v17;
              if (!v17 || v17 + 24 > *(v117 + 2))
              {
                v118 = 2 * *(v117 + 4);
                if (v118 <= 0x20)
                {
                  v118 = 32;
                }

                *(v117 + 4) = v118;
                v119 = v118 + 8;
                v120 = malloc_type_malloc(v118 + 8, 0x2004093837F09uLL);
                v89 = v117;
                v121 = v120 + v119;
                *v120 = *(v117 + 3);
                v17 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
                *(v117 + 2) = v121;
                *(v117 + 3) = v120;
              }

LABEL_198:
              *(v89 + 1) = v17 + 24;
              v122 = 243;
LABEL_199:
              *(v17 + 16) = v122;
              *(v17 + 18) = 0;
LABEL_200:
              swift::Demangle::__runtime::Node::addChild(v17, v18, v89, a4, a5);
            }
          }

          else
          {
LABEL_297:
            v17 = 0;
          }

LABEL_298:
          result = v17;
          break;
        case 0xFF:
          continue;
        default:
          goto LABEL_10;
      }
    }

    return result;
  }
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Demangler::addChild(swift::Demangle::__runtime::Demangler *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::Node *a3, uint64_t a4, const char *a5)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      swift::Demangle::__runtime::Node::addChild(a2, a3, this, a4, a5);
      return a2;
    }
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::createWithChild(swift::Demangle::__runtime::NodeFactory *a1, __int16 a2, swift::Demangle::__runtime::Node *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    return 0;
  }

  v8 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v8;
  if (!v8 || v8 + 24 > *(a1 + 2))
  {
    v9 = 2 * *(a1 + 4);
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    *(a1 + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    v12 = v11 + v10;
    *v11 = *(a1 + 3);
    v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v12;
    *(a1 + 3) = v11;
  }

  *(a1 + 1) = v8 + 24;
  *(v8 + 16) = a2;
  *(v8 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v8, a3, a1, a4, a5);
  return v8;
}

unint64_t swift::Demangle::__runtime::Demangler::createType(swift::Demangle::__runtime::Demangler *this, swift::Demangle::__runtime::Node *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    return 0;
  }

  v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v6;
  if (!v6 || v6 + 24 > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = a2;
    v10 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    a2 = v9;
    v11 = v10 + v8;
    *v10 = *(this + 3);
    v6 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v11;
    *(this + 3) = v10;
  }

  *(this + 1) = v6 + 24;
  *(v6 + 16) = 243;
  *(v6 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v6, a2, this, a4, a5);
  return v6;
}

unint64_t swift::Demangle::__runtime::Demangler::createWithChildren(swift::Demangle::__runtime::NodeFactory *a1, __int16 a2, swift::Demangle::__runtime::Node *a3, swift::Demangle::__runtime::Node *a4, const char *a5)
{
  v5 = 0;
  if (a3 && a4)
  {
    v5 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v5;
    if (!v5 || v5 + 24 > *(a1 + 2))
    {
      v8 = 2 * *(a1 + 4);
      if (v8 <= 0x20)
      {
        v8 = 32;
      }

      *(a1 + 4) = v8;
      v9 = v8 + 8;
      v10 = a2;
      v11 = a3;
      v12 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
      a2 = v10;
      a3 = v11;
      v13 = v12 + v9;
      *v12 = *(a1 + 3);
      v5 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v13;
      *(a1 + 3) = v12;
    }

    *(a1 + 1) = v5 + 24;
    *(v5 + 16) = a2;
    *(v5 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v5, a3, a1, a4, a5);
    swift::Demangle::__runtime::Node::addChild(v5, a4, a1, v14, v15);
  }

  return v5;
}

unint64_t swift::Demangle::__runtime::Demangler::createWithChildren(swift::Demangle::__runtime::NodeFactory *a1, __int16 a2, swift::Demangle::__runtime::Node *a3, swift::Demangle::__runtime::Node *a4, char *a5)
{
  v5 = 0;
  if (a3 && a4 && a5)
  {
    v5 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v5;
    if (!v5 || v5 + 24 > *(a1 + 2))
    {
      v9 = 2 * *(a1 + 4);
      if (v9 <= 0x20)
      {
        v9 = 32;
      }

      *(a1 + 4) = v9;
      v10 = v9 + 8;
      v11 = a2;
      v12 = a3;
      v13 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
      a2 = v11;
      a3 = v12;
      v14 = v13 + v10;
      *v13 = *(a1 + 3);
      v5 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v14;
      *(a1 + 3) = v13;
    }

    *(a1 + 1) = v5 + 24;
    *(v5 + 16) = a2;
    *(v5 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v5, a3, a1, a4, a5);
    swift::Demangle::__runtime::Node::addChild(v5, a4, a1, v15, v16);
    swift::Demangle::__runtime::Node::addChild(v5, a5, a1, v17, v18);
  }

  return v5;
}

unint64_t swift::Demangle::__runtime::Demangler::createWithChildren(swift::Demangle::__runtime::NodeFactory *a1, __int16 a2, swift::Demangle::__runtime::Node *a3, swift::Demangle::__runtime::Node *a4, char *a5, swift::Demangle::__runtime::Node *a6)
{
  v6 = 0;
  if (a3 && a4 && a5 && a6)
  {
    v6 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v6;
    if (!v6 || v6 + 24 > *(a1 + 2))
    {
      v11 = 2 * *(a1 + 4);
      if (v11 <= 0x20)
      {
        v11 = 32;
      }

      *(a1 + 4) = v11;
      v12 = v11 + 8;
      v13 = a2;
      v14 = a3;
      v15 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      a2 = v13;
      a3 = v14;
      v16 = v15 + v12;
      *v15 = *(a1 + 3);
      v6 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v16;
      *(a1 + 3) = v15;
    }

    *(a1 + 1) = v6 + 24;
    *(v6 + 16) = a2;
    *(v6 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v6, a3, a1, a4, a5);
    swift::Demangle::__runtime::Node::addChild(v6, a4, a1, v17, v18);
    swift::Demangle::__runtime::Node::addChild(v6, a5, a1, v19, v20);
    swift::Demangle::__runtime::Node::addChild(v6, a6, a1, v21, v22);
  }

  return v6;
}

unint64_t swift::Demangle::__runtime::Demangler::changeKind(swift::Demangle::__runtime::NodeFactory *a1, swift::Demangle::__runtime::Node **a2, __int16 a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    return 0;
  }

  v8 = *(a2 + 18);
  if (v8 == 4)
  {
    v15 = *a2;
    v10 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v10;
    if (!v10 || v10 + 24 > *(a1 + 2))
    {
      v16 = 2 * *(a1 + 4);
      if (v16 <= 0x20)
      {
        v16 = 32;
      }

      *(a1 + 4) = v16;
      v17 = v16 + 8;
      v18 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v19 = v18 + v17;
      *v18 = *(a1 + 3);
      v10 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v19;
      *(a1 + 3) = v18;
    }

    *(a1 + 1) = v10 + 24;
    *(v10 + 16) = a3;
    *(v10 + 18) = 4;
    *v10 = v15;
  }

  else if (v8 == 3)
  {
    v9 = *a2;
    v10 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v10;
    if (!v10 || v10 + 24 > *(a1 + 2))
    {
      v11 = 2 * *(a1 + 4);
      if (v11 <= 0x20)
      {
        v11 = 32;
      }

      *(a1 + 4) = v11;
      v12 = v11 + 8;
      v30 = v9;
      v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      v9 = v30;
      v14 = v13 + v12;
      *v13 = *(a1 + 3);
      v10 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v14;
      *(a1 + 3) = v13;
    }

    *(a1 + 1) = v10 + 24;
    *(v10 + 16) = a3;
    *(v10 + 18) = 3;
    *v10 = v9;
  }

  else
  {
    v10 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v10;
    if (!v10 || v10 + 24 > *(a1 + 2))
    {
      v20 = 2 * *(a1 + 4);
      if (v20 <= 0x20)
      {
        v20 = 32;
      }

      *(a1 + 4) = v20;
      v21 = v20 + 8;
      v22 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v23 = v22 + v21;
      *v22 = *(a1 + 3);
      v10 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v23;
      *(a1 + 3) = v22;
    }

    *(a1 + 1) = v10 + 24;
    *(v10 + 16) = a3;
    *(v10 + 18) = 0;
  }

  v24 = *(a2 + 18);
  v25 = a2;
  if ((v24 - 1) >= 2)
  {
    if (v24 == 5)
    {
      v26 = *a2;
      v25 = *a2;
LABEL_31:
      v27 = (v26 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v25 = 0;
  }

  switch(v24)
  {
    case 1:
      v27 = a2 + 1;
      break;
    case 2:
      v27 = a2 + 2;
      break;
    case 5:
      v26 = *a2;
      goto LABEL_31;
    default:
      v27 = 0;
      break;
  }

LABEL_36:
  while (v25 != v27)
  {
    v28 = *v25++;
    swift::Demangle::__runtime::Node::addChild(v10, v28, a1, a4, a5);
  }

  return v10;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleTypeMangling(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (v6 && (v7 = v6 - 1, v8 = *(*(this + 11) + 8 * v7), *(v8 + 8) == 243))
  {
    *(this + 24) = v7;
  }

  else
  {
    v8 = 0;
  }

  v11 = swift::Demangle::__runtime::Demangler::popFunctionParamLabels(this, v8, a3, a4, a5);
  v12 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v12;
  if (!v12 || v12 + 24 > *(this + 2))
  {
    v13 = 2 * *(this + 4);
    if (v13 <= 0x20)
    {
      v13 = 32;
    }

    *(this + 4) = v13;
    v14 = v13 + 8;
    v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
    v16 = v15 + v14;
    *v15 = *(this + 3);
    v12 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v16;
    *(this + 3) = v15;
  }

  *(this + 1) = v12 + 24;
  *(v12 + 16) = 247;
  *(v12 + 18) = 0;
  if (v11 && v12)
  {
    swift::Demangle::__runtime::Node::addChild(v12, v11, this, v9, v10);
  }

  result = 0;
  if (v8)
  {
    if (v12)
    {
      swift::Demangle::__runtime::Node::addChild(v12, v8, this, v9, v10);
      return v12;
    }
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::popFunctionParamLabels(swift::Demangle::__runtime::Demangler *this, swift::Demangle::__runtime::Node *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((*(this + 80) & 1) == 0)
  {
    v6 = *(this + 24);
    if (v6)
    {
      v7 = v6 - 1;
      if (*(*(*(this + 11) + 8 * v7) + 16) == 287)
      {
        *(this + 24) = v7;
        v8 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
        *(this + 1) = v8;
        if (!v8 || &v8[1].u64[1] > *(this + 2))
        {
          v9 = 2 * *(this + 4);
          if (v9 <= 0x20)
          {
            v9 = 32;
          }

          *(this + 4) = v9;
          v10 = v9 + 8;
          v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
          v12 = v11 + v10;
          *v11 = *(this + 3);
          v8 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
          *(this + 2) = v12;
          *(this + 3) = v11;
        }

        *(this + 1) = v8 + 24;
        v8[1].i16[0] = 303;
        v8[1].i8[2] = 0;
        return v8;
      }
    }
  }

  if (!a2 || *(a2 + 8) != 243)
  {
    return 0;
  }

  v13 = *(a2 + 18);
  if ((v13 - 1) < 2)
  {
    goto LABEL_16;
  }

  if (v13 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_16:
    v14 = *a2;
    goto LABEL_18;
  }

  v14 = 0;
LABEL_18:
  if (*(v14 + 8) != 45)
  {
    goto LABEL_31;
  }

  v15 = *(v14 + 18);
  if (v15 != 2)
  {
    if (v15 != 5 || *(v14 + 2) < 2u)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v14 = *v14;
  }

  v16 = v14[1];
LABEL_25:
  v17 = *(v16 + 18);
  if ((v17 - 1) >= 2)
  {
    if (v17 != 5 || !*(v16 + 2))
    {
      v14 = 0;
      goto LABEL_31;
    }

    v16 = *v16;
  }

  v14 = *v16;
LABEL_31:
  v18 = *(v14 + 8);
  if (v18 != 84 && v18 != 67)
  {
    return 0;
  }

  v19 = *(v14 + 18);
  v20 = v19 - 1;
  v21 = v14;
  if ((v19 - 1) >= 2)
  {
    v21 = *v14;
  }

  LODWORD(v21) = *(*v21 + 16) == 137;
  if (v20 >= 2)
  {
    v22 = *v14;
    if (*(*(*v14 + 8 * v21) + 16) == 69)
    {
      v21 = (v21 + 1);
    }

    else
    {
      v21 = v21;
    }
  }

  else
  {
    if (*(v14[v21] + 16) == 69)
    {
      v21 = (v21 + 1);
    }

    else
    {
      v21 = v21;
    }

    v22 = v14;
  }

  if (*(v22[v21] + 16) == 135)
  {
    v21 = (v21 + 1);
  }

  else
  {
    v21 = v21;
  }

  if (v20 >= 2)
  {
    v23 = *v14;
    if (*(*(*v14 + 8 * v21) + 16) == 136)
    {
      LODWORD(v21) = v21 + 1;
    }

    if (*(v23[v21] + 16) == 70)
    {
      v21 = (v21 + 1);
    }

    else
    {
      v21 = v21;
    }
  }

  else
  {
    if (*(v14[v21] + 16) == 136)
    {
      LODWORD(v21) = v21 + 1;
    }

    if (*(v14[v21] + 16) == 70)
    {
      v21 = (v21 + 1);
    }

    else
    {
      v21 = v21;
    }

    v23 = v14;
  }

  if (*(v23[v21] + 16) == 285)
  {
    goto LABEL_62;
  }

  v24 = v14;
  if (v20 >= 2)
  {
    v24 = *v14;
  }

  if (*(v24[v21] + 16) == 286)
  {
LABEL_62:
    v21 = (v21 + 1);
  }

  if (v19 == 5)
  {
    if (*(*(*v14 + 8 * v21) + 16) == 68)
    {
      LODWORD(v21) = v21 + 1;
    }

    if (*(*(*v14 + 8 * v21) + 16) == 284)
    {
      v25 = (v21 + 1);
    }

    else
    {
      v25 = v21;
    }

    if (*(v14 + 2) > v25)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (v19 != 2)
  {
    if (*(v14[v21] + 16) == 68)
    {
      v39 = v21 + 1;
    }

    else
    {
      v39 = v21;
    }

    v25 = *(v14[v39] + 16) == 284;
    if (!v25)
    {
      goto LABEL_72;
    }

LABEL_81:
    v26 = 0;
    goto LABEL_82;
  }

  if (*(v14[v21] + 16) == 68)
  {
    LODWORD(v25) = v21 + 1;
  }

  else
  {
    LODWORD(v25) = v21;
  }

  if (*(v14[v25] + 16) == 284)
  {
    v25 = (v25 + 1);
  }

  else
  {
    v25 = v25;
  }

  if (v25 >= 2)
  {
    goto LABEL_81;
  }

LABEL_72:
  if (v20 >= 2)
  {
    v14 = *v14;
  }

  v26 = v14[v25];
LABEL_82:
  v27 = *(v26 + 18);
  v28 = v26;
  if ((v27 - 1) < 2)
  {
LABEL_86:
    v29 = *v28;
    goto LABEL_88;
  }

  if (v27 == 5 && *(v26 + 2))
  {
    v28 = *v26;
    goto LABEL_86;
  }

  v29 = 0;
LABEL_88:
  v30 = *(v29 + 18);
  if ((v30 - 1) < 2)
  {
LABEL_92:
    v31 = *v29;
    goto LABEL_94;
  }

  if (v30 == 5 && *(v29 + 2))
  {
    v29 = *v29;
    goto LABEL_92;
  }

  v31 = 0;
LABEL_94:
  if (*(v31 + 8) != 234)
  {
    v32 = 1;
    goto LABEL_100;
  }

  v32 = *(v31 + 18);
  if (v32 != 1)
  {
    if (v32 != 5)
    {
      if (v32 != 2)
      {
        return 0;
      }

      goto LABEL_100;
    }

    v32 = *(v31 + 2);
    if (v32)
    {
      goto LABEL_100;
    }

    return 0;
  }

LABEL_100:
  v8 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v8;
  if (!v8 || &v8[1].u64[1] > *(this + 2))
  {
    v33 = 2 * *(this + 4);
    if (v33 <= 0x20)
    {
      v33 = 32;
    }

    *(this + 4) = v33;
    v34 = v33 + 8;
    v35 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
    v36 = v35 + v34;
    *v35 = *(this + 3);
    v8 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v36;
    *(this + 3) = v35;
  }

  *(this + 1) = v8 + 24;
  v8[1].i16[0] = 303;
  v8[1].i8[2] = 0;
  v37 = *(v26 + 18);
  if ((v37 - 1) < 2)
  {
    goto LABEL_109;
  }

  if (v37 == 5 && *(v26 + 2))
  {
    v26 = *v26;
LABEL_109:
    v38 = *v26;
    goto LABEL_116;
  }

  v38 = 0;
LABEL_116:
  v40 = *(v38 + 18);
  if ((v40 - 1) < 2)
  {
LABEL_120:
    v41 = *v38;
    goto LABEL_122;
  }

  if (v40 == 5 && *(v38 + 2))
  {
    v38 = *v38;
    goto LABEL_120;
  }

  v41 = 0;
LABEL_122:
  if (*(this + 80) == 1 && (!v41 || *(v41 + 8) != 234))
  {
    return v8;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  do
  {
    if (*(this + 80) != 1)
    {
      v54 = *(this + 24);
      if (!v54)
      {
        return 0;
      }

      v55 = v54 - 1;
      v49 = *(*(this + 11) + 8 * v55);
      *(this + 24) = v55;
      if (!v49)
      {
        return 0;
      }

      v56 = *(v49 + 16);
      if (v56 != 288 && v56 != 103)
      {
        return 0;
      }

      goto LABEL_130;
    }

    v50 = *(v41 + 18);
    v51 = v50 - 1;
    if (v50 == 1)
    {
      goto LABEL_136;
    }

    if (v50 != 5)
    {
      if (v50 != 2)
      {
        goto LABEL_146;
      }

      v50 = 2;
LABEL_136:
      if (v50 > v42)
      {
        goto LABEL_137;
      }

      goto LABEL_146;
    }

    if (*(v41 + 2) > v42)
    {
LABEL_137:
      v52 = v41;
      if (v51 >= 2)
      {
        v52 = *v41;
      }

      v53 = v52[v42];
      goto LABEL_147;
    }

LABEL_146:
    v53 = 0;
LABEL_147:
    v57 = *(v53 + 18);
    v58 = v57;
    if (v57 != 1)
    {
      if (v57 == 5)
      {
        v58 = *(v53 + 2);
        if (!v58)
        {
LABEL_157:
          v49 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v49;
          if (!v49 || v49 + 24 > *(this + 2))
          {
            v45 = 2 * *(this + 4);
            if (v45 <= 0x20)
            {
              v45 = 32;
            }

            *(this + 4) = v45;
            v46 = v45 + 8;
            v47 = malloc_type_malloc(v45 + 8, 0x2004093837F09uLL);
            v48 = v47 + v46;
            *v47 = *(this + 3);
            v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(this + 2) = v48;
            *(this + 3) = v47;
          }

          *(this + 1) = v49 + 24;
          *(v49 + 16) = 288;
          *(v49 + 18) = 0;
          goto LABEL_130;
        }
      }

      else
      {
        if (v57 != 2)
        {
          goto LABEL_157;
        }

        v58 = 2;
      }
    }

    v59 = 0;
    v60 = 1;
    while (1)
    {
      v61 = v53;
      if ((v57 - 1) >= 2)
      {
        v61 = *v53;
      }

      v62 = v61[v59];
      if (*(v62 + 8) == 236)
      {
        break;
      }

      ++v59;
      ++v60;
      if (v58 == v59)
      {
        goto LABEL_157;
      }
    }

    if (v57 == 5)
    {
      v63 = *(v53 + 2);
      if (v59 - v63 == -1)
      {
        *(v53 + 2) = v59;
      }

      else
      {
        do
        {
          *(*v53 + 8 * (v60 - 1)) = *(*v53 + 8 * v60);
          ++v60;
        }

        while (v63 != v60);
        --*(v53 + 2);
      }
    }

    else if (v57 == 2)
    {
      if (!v59)
      {
        *v53 = v53[1];
      }

      *(v53 + 18) = 1;
    }

    else
    {
      *(v53 + 18) = 0;
    }

    v64 = *v62;
    v49 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v49;
    if (!v49 || v49 + 24 > *(this + 2))
    {
      v65 = 2 * *(this + 4);
      if (v65 <= 0x20)
      {
        v65 = 32;
      }

      *(this + 4) = v65;
      v66 = v65 + 8;
      v70 = v64;
      v67 = malloc_type_malloc(v65 + 8, 0x2004093837F09uLL);
      v64 = v70;
      v68 = v67 + v66;
      *v67 = *(this + 3);
      v49 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v68;
      *(this + 3) = v67;
    }

    *(this + 1) = v49 + 24;
    *(v49 + 16) = 103;
    *(v49 + 18) = 3;
    *v49 = v64;
LABEL_130:
    swift::Demangle::__runtime::Node::addChild(v8, v49, this, a4, a5);
    v44 |= *(v49 + 16) != 288;
    ++v43;
    ++v42;
  }

  while (v43 != v32);
  if (v44)
  {
    if ((*(this + 80) & 1) == 0)
    {
      swift::Demangle::__runtime::Node::reverseChildren(v8, 0);
    }

    return v8;
  }

  else
  {

    return swift::Demangle::__runtime::NodeFactory::createNode(this, 303);
  }
}

uint64_t swift::Demangle::__runtime::Demangler::demangleSymbolicReference(swift::Demangle::__runtime::Demangler *this, int a2)
{
  v2 = *(this + 9);
  if ((v2 + 4) > *(this + 8))
  {
    return 0;
  }

  v3 = 0;
  v5 = (*(this + 7) + v2);
  v6 = *v5;
  *(this + 9) = v2 + 4;
  if (a2 <= 9)
  {
    switch(a2)
    {
      case 1:
        v8 = 0;
        v10 = 0;
        v9 = 0;
        v7 = 1;
        v11 = *(this + 71);
        if (v11)
        {
          goto LABEL_22;
        }

        break;
      case 2:
        v8 = 0;
        v10 = 0;
        v7 = 1;
        v9 = 1;
        v11 = *(this + 71);
        if (v11)
        {
          goto LABEL_22;
        }

        break;
      case 9:
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 1;
        v11 = *(this + 71);
        if (!v11)
        {
          return 0;
        }

        goto LABEL_22;
      default:
        return v3;
    }

    return 0;
  }

  if (a2 == 10)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 2;
    v11 = *(this + 71);
    if (v11)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 11)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 3;
    v11 = *(this + 71);
    if (v11)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 != 12)
  {
    return v3;
  }

  v7 = 0;
  v9 = 0;
  v10 = 4;
  v8 = 1;
  v11 = *(this + 71);
  if (!v11)
  {
    return 0;
  }

LABEL_22:
  v17 = v10;
  v15 = v6;
  v16 = v9;
  v18 = v5;
  v13 = (*(*v11 + 48))(v11, &v17, &v16, &v15, &v18);
  v3 = v13;
  if (v13)
  {
    if ((v7 | v8) == 1)
    {
      v14 = *(v13 + 16);
      if (v14 != 315 && v14 != 323)
      {
        v18 = v13;
        swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 13, &v18, this);
      }
    }
  }

  return v3;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleTypeAnnotation(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 9);
  if (v5 >= *(this + 8))
  {
    return 0;
  }

  v6 = 0;
  *(this + 9) = v5 + 1;
  switch(*(*(this + 7) + v5))
  {
    case 'A':
      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v7 = 2 * *(this + 4);
        if (v7 <= 0x20)
        {
          v7 = 32;
        }

        *(this + 4) = v7;
        v8 = v7 + 8;
        v9 = this;
        v10 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
        this = v9;
        v11 = v10 + v8;
        *v10 = *(v9 + 3);
        v6 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v9 + 2) = v11;
        *(v9 + 3) = v10;
      }

      *(this + 1) = v6 + 24;
      v12 = 135;
      goto LABEL_85;
    case 'C':
      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v67 = 2 * *(this + 4);
        if (v67 <= 0x20)
        {
          v67 = 32;
        }

        *(this + 4) = v67;
        v68 = v67 + 8;
        v69 = this;
        v70 = malloc_type_malloc(v67 + 8, 0x2004093837F09uLL);
        this = v69;
        v71 = v70 + v68;
        *v70 = *(v69 + 3);
        v6 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v69 + 2) = v71;
        *(v69 + 3) = v70;
      }

      *(this + 1) = v6 + 24;
      v12 = 136;
      goto LABEL_85;
    case 'K':
      v57 = *(this + 24);
      if (!v57)
      {
        return 0;
      }

      v58 = v57 - 1;
      v59 = *(*(this + 11) + 8 * (v57 - 1));
      if (*(v59 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v58;
      v60 = *(v59 + 18);
      if (v60 == 1)
      {
        goto LABEL_72;
      }

      if (v60 != 5 || *(v59 + 8) != 1)
      {
        return 0;
      }

      v59 = *v59;
LABEL_72:
      v17 = *v59;
      if (!*v59)
      {
        return 0;
      }

      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v61 = 2 * *(this + 4);
        if (v61 <= 0x20)
        {
          v61 = 32;
        }

        *(this + 4) = v61;
        v62 = v61 + 8;
        v63 = this;
        v64 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
        this = v63;
        v65 = v64 + v62;
        *v64 = *(v63 + 3);
        v6 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v63 + 2) = v65;
        *(v63 + 3) = v64;
      }

      *(this + 1) = v6 + 24;
      v66 = 286;
      goto LABEL_99;
    case 'T':
      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v52 = 2 * *(this + 4);
        if (v52 <= 0x20)
        {
          v52 = 32;
        }

        *(this + 4) = v52;
        v53 = v52 + 8;
        v54 = this;
        v55 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
        this = v54;
        v56 = v55 + v53;
        *v55 = *(v54 + 3);
        v6 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v54 + 2) = v56;
        *(v54 + 3) = v55;
      }

      *(this + 1) = v6 + 24;
      v12 = 137;
      goto LABEL_85;
    case 'a':
      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v24 = 2 * *(this + 4);
        if (v24 <= 0x20)
        {
          v24 = 32;
        }

        *(this + 4) = v24;
        v25 = v24 + 8;
        v26 = this;
        v27 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
        this = v26;
        v28 = v27 + v25;
        *v27 = *(v26 + 3);
        v6 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v26 + 2) = v28;
        *(v26 + 3) = v27;
      }

      *(this + 1) = v6 + 24;
      v12 = 284;
      goto LABEL_85;
    case 'b':
      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v38 = 2 * *(this + 4);
        if (v38 <= 0x20)
        {
          v38 = 32;
        }

        *(this + 4) = v38;
        v39 = v38 + 8;
        v40 = this;
        v41 = malloc_type_malloc(v38 + 8, 0x2004093837F09uLL);
        this = v40;
        v42 = v41 + v39;
        *v41 = *(v40 + 3);
        v6 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v40 + 2) = v42;
        *(v40 + 3) = v41;
      }

      *(this + 1) = v6 + 24;
      v12 = 68;
LABEL_85:
      *(v6 + 16) = v12;
      *(v6 + 18) = 0;
      return v6;
    case 'c':
      v72 = *(this + 24);
      if (!v72)
      {
        return 0;
      }

      v73 = v72 - 1;
      v74 = *(*(this + 11) + 8 * (v72 - 1));
      if (*(v74 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v73;
      v75 = *(v74 + 18);
      if (v75 == 1)
      {
        goto LABEL_92;
      }

      if (v75 != 5 || *(v74 + 8) != 1)
      {
        return 0;
      }

      v74 = *v74;
LABEL_92:
      v17 = *v74;
      if (!*v74)
      {
        return 0;
      }

      v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v6;
      if (!v6 || v6 + 24 > *(this + 2))
      {
        v76 = 2 * *(this + 4);
        if (v76 <= 0x20)
        {
          v76 = 32;
        }

        *(this + 4) = v76;
        v77 = v76 + 8;
        v78 = this;
        v79 = malloc_type_malloc(v76 + 8, 0x2004093837F09uLL);
        this = v78;
        v80 = v79 + v77;
        *v79 = *(v78 + 3);
        v6 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v78 + 2) = v80;
        *(v78 + 3) = v79;
      }

      *(this + 1) = v6 + 24;
      v66 = 69;
LABEL_99:
      *(v6 + 16) = v66;
      *(v6 + 18) = 0;
      v81 = this;
      goto LABEL_135;
    case 'g':
      v82 = *(this + 24);
      if (!v82)
      {
        return 0;
      }

      v83 = v82 - 1;
      v84 = *(*(this + 11) + 8 * (v82 - 1));
      if (*(v84 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v83;
      v85 = *(v84 + 18);
      if (v85 == 1)
      {
        goto LABEL_106;
      }

      if (v85 != 5 || *(v84 + 8) != 1)
      {
        return 0;
      }

      v84 = *v84;
LABEL_106:
      v6 = *v84;
      if (!*v84)
      {
        return v6;
      }

      v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v17;
      if (!v17 || v17 + 24 > *(this + 2))
      {
        v86 = 2 * *(this + 4);
        if (v86 <= 0x20)
        {
          v86 = 32;
        }

        *(this + 4) = v86;
        v87 = v86 + 8;
        v88 = this;
        v89 = malloc_type_malloc(v86 + 8, 0x2004093837F09uLL);
        this = v88;
        v90 = v89 + v87;
        *v89 = *(v88 + 3);
        v17 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v88 + 2) = v90;
        *(v88 + 3) = v89;
      }

      *(this + 1) = v17 + 24;
      v23 = 373;
      break;
    case 'i':
      v92 = *(this + 24);
      if (!v92)
      {
        return 0;
      }

      v93 = v92 - 1;
      v94 = *(*(this + 11) + 8 * (v92 - 1));
      if (*(v94 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v93;
      v95 = *(v94 + 18);
      if (v95 == 1)
      {
        goto LABEL_122;
      }

      if (v95 != 5 || *(v94 + 8) != 1)
      {
        return 0;
      }

      v94 = *v94;
LABEL_122:
      v6 = *v94;
      if (!*v94)
      {
        return v6;
      }

      v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v17;
      if (!v17 || v17 + 24 > *(this + 2))
      {
        v96 = 2 * *(this + 4);
        if (v96 <= 0x20)
        {
          v96 = 32;
        }

        *(this + 4) = v96;
        v97 = v96 + 8;
        v98 = this;
        v99 = malloc_type_malloc(v96 + 8, 0x2004093837F09uLL);
        this = v98;
        v100 = v99 + v97;
        *v99 = *(v98 + 3);
        v17 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v98 + 2) = v100;
        *(v98 + 3) = v99;
      }

      *(this + 1) = v17 + 24;
      v23 = 132;
      break;
    case 'j':

      return swift::Demangle::__runtime::Demangler::demangleDifferentiableFunctionType(this);
    case 'k':
      v13 = *(this + 24);
      if (!v13)
      {
        return 0;
      }

      v14 = v13 - 1;
      v15 = *(*(this + 11) + 8 * (v13 - 1));
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v14;
      v16 = *(v15 + 18);
      if (v16 == 1)
      {
        goto LABEL_15;
      }

      if (v16 != 5 || *(v15 + 8) != 1)
      {
        return 0;
      }

      v15 = *v15;
LABEL_15:
      v6 = *v15;
      if (!*v15)
      {
        return v6;
      }

      v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v17;
      if (!v17 || v17 + 24 > *(this + 2))
      {
        v18 = 2 * *(this + 4);
        if (v18 <= 0x20)
        {
          v18 = 32;
        }

        *(this + 4) = v18;
        v19 = v18 + 8;
        v20 = this;
        v21 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        this = v20;
        v22 = v21 + v19;
        *v21 = *(v20 + 3);
        v17 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v20 + 2) = v22;
        *(v20 + 3) = v21;
      }

      *(this + 1) = v17 + 24;
      v23 = 340;
      break;
    case 't':
      v43 = *(this + 24);
      if (!v43)
      {
        return 0;
      }

      v44 = v43 - 1;
      v45 = *(*(this + 11) + 8 * (v43 - 1));
      if (*(v45 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v44;
      v46 = *(v45 + 18);
      if (v46 == 1)
      {
        goto LABEL_53;
      }

      if (v46 != 5 || *(v45 + 8) != 1)
      {
        return 0;
      }

      v45 = *v45;
LABEL_53:
      v6 = *v45;
      if (!*v45)
      {
        return v6;
      }

      v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v17;
      if (!v17 || v17 + 24 > *(this + 2))
      {
        v47 = 2 * *(this + 4);
        if (v47 <= 0x20)
        {
          v47 = 32;
        }

        *(this + 4) = v47;
        v48 = v47 + 8;
        v49 = this;
        v50 = malloc_type_malloc(v47 + 8, 0x2004093837F09uLL);
        this = v49;
        v51 = v50 + v48;
        *v50 = *(v49 + 3);
        v17 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v49 + 2) = v51;
        *(v49 + 3) = v50;
      }

      *(this + 1) = v17 + 24;
      v23 = 345;
      break;
    case 'u':
      v29 = *(this + 24);
      if (!v29)
      {
        return 0;
      }

      v30 = v29 - 1;
      v31 = *(*(this + 11) + 8 * (v29 - 1));
      if (*(v31 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v30;
      v32 = *(v31 + 18);
      if (v32 == 1)
      {
        goto LABEL_34;
      }

      if (v32 != 5 || *(v31 + 8) != 1)
      {
        return 0;
      }

      v31 = *v31;
LABEL_34:
      v6 = *v31;
      if (!*v31)
      {
        return v6;
      }

      v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v17;
      if (!v17 || v17 + 24 > *(this + 2))
      {
        v33 = 2 * *(this + 4);
        if (v33 <= 0x20)
        {
          v33 = 32;
        }

        *(this + 4) = v33;
        v34 = v33 + 8;
        v35 = this;
        v36 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
        this = v35;
        v37 = v36 + v34;
        *v36 = *(v35 + 3);
        v17 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v35 + 2) = v37;
        *(v35 + 3) = v36;
      }

      *(this + 1) = v17 + 24;
      v23 = 134;
      break;
    default:
      return v6;
  }

  *(v17 + 16) = v23;
  *(v17 + 18) = 0;
  v101 = this;
  swift::Demangle::__runtime::Node::addChild(v17, v6, this, a4, a5);
  v81 = v101;
  v6 = (*(v101 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v101 + 1) = v6;
  if (!v6 || v6 + 24 > *(v101 + 2))
  {
    v102 = 2 * *(v101 + 4);
    if (v102 <= 0x20)
    {
      v102 = 32;
    }

    *(v101 + 4) = v102;
    v103 = v102 + 8;
    v104 = malloc_type_malloc(v102 + 8, 0x2004093837F09uLL);
    v81 = v101;
    v105 = v104 + v103;
    *v104 = *(v101 + 3);
    v6 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v101 + 2) = v105;
    *(v101 + 3) = v104;
  }

  *(v81 + 1) = v6 + 24;
  *(v6 + 16) = 243;
  *(v6 + 18) = 0;
LABEL_135:
  swift::Demangle::__runtime::Node::addChild(v6, v17, v81, a4, a5);
  return v6;
}

uint64_t *swift::Demangle::__runtime::Demangler::popTypeAndGetChild(swift::Demangle::__runtime::Demangler *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = v1 - 1;
    v3 = *(*(this + 11) + 8 * (v1 - 1));
    if (*(v3 + 8) == 243)
    {
      *(this + 24) = v2;
      v4 = *(v3 + 18);
      if (v4 == 1)
      {
        return *v3;
      }

      if (v4 == 5 && *(v3 + 2) == 1)
      {
        v3 = *v3;
        return *v3;
      }
    }
  }

  return 0;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleDifferentiableFunctionType(swift::Demangle::__runtime::Demangler *this)
{
  v1 = *(this + 9);
  if (v1 >= *(this + 8))
  {
    v2 = -100;
  }

  else
  {
    *(this + 9) = v1 + 1;
    v2 = *(*(this + 7) + v1) - 100;
  }

  HIDWORD(v4) = v2;
  LODWORD(v4) = v2;
  v3 = v4 >> 1;
  if (v3 > 7 || ((0x93u >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = qword_DA8D0[v3];
  v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v6;
  if (!v6 || v6 + 24 > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = this;
    v10 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    this = v9;
    *v10 = *(v9 + 3);
    v6 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v9 + 2) = v10 + v8;
    *(v9 + 3) = v10;
  }

  *(this + 1) = v6 + 24;
  *(v6 + 16) = 70;
  *(v6 + 18) = 4;
  *v6 = v5;
  return v6;
}

uint64_t swift::Demangle::__runtime::Demangler::demangleMultiSubstitutions(swift::Demangle::__runtime::Demangler *this)
{
  v4 = *(this + 8);
  v3 = *(this + 9);
  if (v3 >= v4)
  {
    return 0;
  }

  v17[5] = v1;
  v17[6] = v2;
  v6 = -1;
  while (1)
  {
    *(this + 9) = v3 + 1;
    v7 = *(this + 7);
    v8 = *(v7 + v3);
    if (!*(v7 + v3))
    {
      return 0;
    }

    if ((v8 - 97) <= 0x19u)
    {
      result = 0;
      if (v6 > 2048 || *(this + 28) <= (*(v7 + v3) - 97))
      {
        return result;
      }

      v10 = *(*(this + 13) + 8 * (*(v7 + v3) - 97));
      if (v6 >= 2)
      {
        v11 = v6 + 1;
        do
        {
          v17[0] = v10;
          swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 11, v17, this);
          --v11;
        }

        while (v11 > 2);
      }

      if (!v10)
      {
        return 0;
      }

      v17[0] = v10;
      swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 11, v17, this);
      v4 = *(this + 8);
      v3 = *(this + 9);
      v6 = -1;
      goto LABEL_22;
    }

    if ((v8 - 65) <= 0x19u)
    {
      break;
    }

    if (v8 == 95)
    {
      v16 = v6 + 27;
      if (*(this + 28) > v16)
      {
        return *(*(this + 13) + 8 * v16);
      }

      return 0;
    }

    *(this + 9) = v3;
    if (v3 >= v4 || *(v7 + v3) - 48 > 9)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v12 = *(v7 + v3);
      if ((v12 - 48) > 9)
      {
        break;
      }

      v13 = v12 + 10 * v6 - 48;
      if (v13 < v6)
      {
        return 0;
      }

      *(this + 9) = ++v3;
      v6 = v13;
      if (v4 == v3)
      {
        v3 = v4;
        v6 = v13;
        break;
      }
    }

    if (v6 < 0)
    {
      return 0;
    }

LABEL_22:
    if (v3 >= v4)
    {
      return 0;
    }
  }

  result = 0;
  if (v6 <= 2048 && *(this + 28) > (*(v7 + v3) - 65))
  {
    result = *(*(this + 13) + 8 * (*(v7 + v3) - 65));
    if (v6 >= 2)
    {
      v14 = v6 + 1;
      do
      {
        v17[0] = result;
        v15 = result;
        swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 11, v17, this);
        result = v15;
        --v14;
      }

      while (v14 > 2);
    }
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleBuiltinType(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v6 >= v5)
  {
    return 0;
  }

  result = 0;
  v9 = v6 + 1;
  *(this + 9) = v6 + 1;
  v10 = *(this + 7);
  switch(*(v10 + v6))
  {
    case 'B':
      v11 = "Builtin.UnsafeValueBuffer";
      v12 = this;
      v13 = 25;
      goto LABEL_51;
    case 'D':
      v11 = "Builtin.DefaultActorStorage";
      v12 = this;
      v13 = 27;
      goto LABEL_51;
    case 'I':
      v11 = "Builtin.IntLiteral";
      goto LABEL_43;
    case 'O':
      v11 = "Builtin.UnknownObject";
      v12 = this;
      v13 = 21;
      goto LABEL_51;
    case 'P':
      v11 = "Builtin.PackIndex";
      v12 = this;
      v13 = 17;
      goto LABEL_51;
    case 'T':
      Node = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = Node;
      if (!Node || Node + 24 > *(this + 2))
      {
        v19 = 2 * *(this + 4);
        if (v19 <= 0x20)
        {
          v19 = 32;
        }

        *(this + 4) = v19;
        v20 = v19 + 8;
        v21 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
        *v21 = *(this + 3);
        Node = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v21 + v20;
        *(this + 3) = v21;
      }

      *(this + 1) = Node + 24;
      *(Node + 16) = 21;
      *(Node + 18) = 0;
      goto LABEL_52;
    case 'V':
      v25 = *(this + 24);
      if (!v25)
      {
        return 0;
      }

      v26 = *(this + 11);
      v27 = *(v26 + 8 * (v25 - 1));
      if (*(v27 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v25 - 1;
      if (v25 == 1)
      {
        return 0;
      }

      v28 = v25 - 2;
      v29 = *(v26 + 8 * v28);
      if (*(v29 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v28;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(this, 22);
      swift::Demangle::__runtime::Node::addChild(Node, v29, this, v30, v31);
      swift::Demangle::__runtime::Node::addChild(Node, v27, this, v32, v33);
      if (!Node)
      {
        return 0;
      }

      goto LABEL_52;
    case 'b':
      v11 = "Builtin.BridgeObject";
      goto LABEL_41;
    case 'c':
      v11 = "Builtin.RawUnsafeContinuation";
      v12 = this;
      v13 = 29;
      goto LABEL_51;
    case 'd':
      v11 = "Builtin.NonDefaultDistributedActorStorage";
      v12 = this;
      v13 = 41;
      goto LABEL_51;
    case 'e':
      v11 = "Builtin.Executor";
      goto LABEL_50;
    case 'f':
      if (v9 >= v5)
      {
        return 0;
      }

      v22 = *(v10 + v9);
      if (v22 == 95)
      {
        goto LABEL_48;
      }

      if ((v22 - 48) > 9)
      {
        return 0;
      }

      v15 = 0;
      while (1)
      {
        v23 = *(v10 + v9);
        if ((v23 - 48) > 9)
        {
          break;
        }

        v24 = v23 + 10 * v15 - 48;
        if (v24 < v15)
        {
          return 0;
        }

        result = 0;
        *(this + 9) = ++v9;
        v15 = v24;
        if (v5 == v9)
        {
          return result;
        }
      }

      result = 0;
      if (v15 < 0 || v9 >= v5 || v23 != 95)
      {
        return result;
      }

      *(this + 9) = v9 + 1;
      if ((v15 - 1) > 0xFFF)
      {
        return 0;
      }

      v65 = 0;
      v48 = *(this + 1);
      if (!v48 || (v48 + 14) > *(this + 2))
      {
        v49 = 2 * *(this + 4);
        if (v49 <= 0xF)
        {
          v49 = 15;
        }

        *(this + 4) = v49;
        v50 = v49 + 8;
        v51 = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
        *v51 = *(this + 3);
        v48 = (v51 + 1);
        *(this + 2) = v51 + v50;
        *(this + 3) = v51;
      }

      *(this + 1) = v48 + 14;
      v65 = v48;
      qmemcpy(v48, "Builtin.FPIEEE", 14);
      v47 = 0xE0000000ELL;
      goto LABEL_84;
    case 'i':
      if (v9 >= v5)
      {
        return 0;
      }

      v14 = *(v10 + v9);
      if (v14 == 95)
      {
        goto LABEL_48;
      }

      if ((v14 - 48) > 9)
      {
        return 0;
      }

      v15 = 0;
      while (1)
      {
        v16 = *(v10 + v9);
        if ((v16 - 48) > 9)
        {
          break;
        }

        v17 = v16 + 10 * v15 - 48;
        if (v17 < v15)
        {
          return 0;
        }

        result = 0;
        *(this + 9) = ++v9;
        v15 = v17;
        if (v5 == v9)
        {
          return result;
        }
      }

      result = 0;
      if (v15 < 0 || v9 >= v5 || v16 != 95)
      {
        return result;
      }

      *(this + 9) = v9 + 1;
      if ((v15 - 1) > 0xFFF)
      {
        return 0;
      }

      v65 = 0;
      v43 = *(this + 1);
      if (!v43 || v43 + 11 > *(this + 2))
      {
        v44 = 2 * *(this + 4);
        if (v44 <= 0xC)
        {
          v44 = 12;
        }

        *(this + 4) = v44;
        v45 = v44 + 8;
        v46 = malloc_type_malloc(v44 + 8, 0x2004093837F09uLL);
        *v46 = *(this + 3);
        v43 = v46 + 1;
        *(this + 2) = v46 + v45;
        *(this + 3) = v46;
      }

      *(this + 1) = v43 + 11;
      v65 = v43;
      *(v43 + 7) = 1953384750;
      *v43 = *"Builtin.Int";
      v47 = 0xB0000000BLL;
LABEL_84:
      v66 = v47;
      swift::Demangle::__runtime::CharVector::append(&v65, v15, this);
      v52 = v65;
      v53 = v66;
      Node = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = Node;
      if (!Node || Node + 24 > *(this + 2))
      {
        v54 = 2 * *(this + 4);
        if (v54 <= 0x20)
        {
          v54 = 32;
        }

        *(this + 4) = v54;
        v55 = v54 + 8;
        v56 = malloc_type_malloc(v54 + 8, 0x2004093837F09uLL);
        *v56 = *(this + 3);
        Node = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v56 + v55;
        *(this + 3) = v56;
      }

      *(this + 1) = Node + 24;
      *(Node + 16) = 20;
      *(Node + 18) = 3;
      *Node = v52;
      *(Node + 8) = v53;
      goto LABEL_52;
    case 'j':
      v11 = "Builtin.Job";
      v12 = this;
      v13 = 11;
      goto LABEL_51;
    case 'o':
      v11 = "Builtin.NativeObject";
LABEL_41:
      v12 = this;
      v13 = 20;
      goto LABEL_51;
    case 'p':
      v11 = "Builtin.RawPointer";
LABEL_43:
      v12 = this;
      v13 = 18;
      goto LABEL_51;
    case 't':
      v11 = "Builtin.SILToken";
LABEL_50:
      v12 = this;
      v13 = 16;
      goto LABEL_51;
    case 'v':
      if (v9 >= v5)
      {
        return 0;
      }

      v34 = *(v10 + v9);
      if (v34 == 95)
      {
LABEL_48:
        result = 0;
        *(this + 9) = v6 + 2;
        return result;
      }

      if ((v34 - 48) > 9)
      {
        return 0;
      }

      v40 = 0;
      break;
    case 'w':
      v11 = "Builtin.Word";
      v12 = this;
      v13 = 12;
LABEL_51:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v12, 20, v11, v13);
      if (Node)
      {
        goto LABEL_52;
      }

      return 0;
    default:
      return result;
  }

  while (1)
  {
    v41 = *(v10 + v9);
    if ((v41 - 48) > 9)
    {
      break;
    }

    v42 = v41 + 10 * v40 - 48;
    if (v42 < v40)
    {
      return 0;
    }

    result = 0;
    *(this + 9) = ++v9;
    v40 = v42;
    if (v5 == v9)
    {
      return result;
    }
  }

  result = 0;
  if (v40 < 0 || v9 >= v5 || v41 != 95)
  {
    return result;
  }

  *(this + 9) = v9 + 1;
  if ((v40 - 4097) < 0xFFFFF000)
  {
    return 0;
  }

  v57 = *(this + 24);
  if (!v57)
  {
    return 0;
  }

  v58 = v57 - 1;
  v59 = *(*(this + 11) + 8 * (v57 - 1));
  if (*(v59 + 8) != 243)
  {
    return 0;
  }

  *(this + 24) = v58;
  v60 = *(v59 + 18);
  if (v60 != 1)
  {
    if (v60 == 5 && *(v59 + 2) == 1)
    {
      v59 = *v59;
      goto LABEL_100;
    }

    return 0;
  }

LABEL_100:
  v61 = *v59;
  if (!*v59 || *(v61 + 8) != 20 || v61[1] < 8 || **v61 != 0x2E6E69746C697542)
  {
    return 0;
  }

  v65 = 0;
  v66 = 0;
  swift::Demangle::__runtime::CharVector::append(&v65, "Builtin.Vec", 0xBuLL, this);
  swift::Demangle::__runtime::CharVector::append(&v65, v40, this);
  v64 = 120;
  swift::Demangle::__runtime::Vector<char>::push_back(&v65, &v64, this);
  v62 = v61[1];
  v63 = 8;
  if (v62 < 8)
  {
    v63 = v61[1];
  }

  swift::Demangle::__runtime::CharVector::append(&v65, (v63 + *v61), v62 - v63, this);
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this, 20, &v65);
  if (!Node)
  {
    return 0;
  }

LABEL_52:
  v35 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v35;
  if (!v35 || v35 + 24 > *(this + 2))
  {
    v36 = 2 * *(this + 4);
    if (v36 <= 0x20)
    {
      v36 = 32;
    }

    *(this + 4) = v36;
    v37 = v36 + 8;
    v38 = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
    *v38 = *(this + 3);
    v35 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v38 + v37;
    *(this + 3) = v38;
  }

  *(this + 1) = v35 + 24;
  *(v35 + 16) = 243;
  *(v35 + 18) = 0;
  v39 = v35;
  swift::Demangle::__runtime::Node::addChild(v35, Node, this, a4, a5);
  return v39;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleAnyGenericType(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a2;
  v7 = *(this + 24);
  if (!v7 || ((v8 = v7 - 1, v9 = *(*(this + 11) + 8 * v8), v10 = v9[8], (v10 - 183) <= 0x3D) ? (v11 = ((1 << (v10 + 73)) & 0x200000020000010DLL) == 0) : (v11 = 1), v11 && ((v10 - 103) <= 0x2B ? (v12 = ((1 << (v10 - 103)) & 0x80004000001) == 0) : (v12 = 1), v12 && v10 != 361)))
  {
    v9 = 0;
  }

  else
  {
    *(this + 24) = v8;
  }

  v13 = swift::Demangle::__runtime::Demangler::popContext(this, a2, a3, a4, a5);
  if (!v9)
  {
    return 0;
  }

  v16 = v13;
  if (!v13)
  {
    return 0;
  }

  v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v17;
  if (!v17 || v17 + 24 > *(this + 2))
  {
    v18 = 2 * *(this + 4);
    if (v18 <= 0x20)
    {
      v18 = 32;
    }

    *(this + 4) = v18;
    v19 = v18 + 8;
    v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    v21 = v20 + v19;
    *v20 = *(this + 3);
    v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v21;
    *(this + 3) = v20;
  }

  *(this + 1) = v17 + 24;
  *(v17 + 16) = v5;
  *(v17 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v17, v16, this, v14, v15);
  swift::Demangle::__runtime::Node::addChild(v17, v9, this, v22, v23);
  v26 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v26;
  if (!v26 || v26 + 24 > *(this + 2))
  {
    v27 = 2 * *(this + 4);
    if (v27 <= 0x20)
    {
      v27 = 32;
    }

    *(this + 4) = v27;
    v28 = v27 + 8;
    v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
    v30 = v29 + v28;
    *v29 = *(this + 3);
    v26 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v30;
    *(this + 3) = v29;
  }

  *(this + 1) = v26 + 24;
  *(v26 + 16) = 243;
  *(v26 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v26, v17, this, v24, v25);
  v32 = v26;
  swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 13, &v32, this);
  return v26;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleExtensionContext(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (!v6)
  {
    v9 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_12;
  }

  v7 = v6 - 1;
  v8 = *(this + 11);
  v9 = *(v8 + 8 * (v6 - 1));
  if (*(v9 + 8) == 44)
  {
    *(this + 24) = v7;
    if (v6 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v7 = *(this + 24);
  }

  v10 = v7 - 1;
  v11 = *(v8 + 8 * v10);
  v12 = *(v11 + 16);
  if (v12 == 163)
  {
    *(this + 24) = v10;
    goto LABEL_12;
  }

  if (v12 != 103)
  {
    goto LABEL_10;
  }

  *(this + 24) = v10;
  v11 = swift::Demangle::__runtime::Demangler::changeKind(this, v11, 163, a4, a5);
LABEL_12:
  AnyGeneric = swift::Demangle::__runtime::Demangler::popTypeAndGetAnyGeneric(this);
  v16 = 0;
  if (v11)
  {
    v17 = AnyGeneric;
    if (AnyGeneric)
    {
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v18 = 2 * *(this + 4);
        if (v18 <= 0x20)
        {
          v18 = 32;
        }

        *(this + 4) = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v21 = v20 + v19;
        *v20 = *(this + 3);
        v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v21;
        *(this + 3) = v20;
      }

      *(this + 1) = v16 + 24;
      *(v16 + 16) = 73;
      *(v16 + 18) = 0;
      swift::Demangle::__runtime::Node::addChild(v16, v11, this, v14, v15);
      swift::Demangle::__runtime::Node::addChild(v16, v17, this, v22, v23);
      if (v9)
      {
        swift::Demangle::__runtime::Node::addChild(v16, v9, this, v24, v25);
      }
    }
  }

  return v16;
}

uint64_t swift::Demangle::__runtime::Demangler::demanglePlainFunction(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (v6 && (v7 = v6 - 1, v8 = *(*(this + 11) + 8 * v7), *(v8 + 8) == 44))
  {
    *(this + 24) = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift::Demangle::__runtime::Demangler::popFunctionType(this, 84, 0, a4, a5);
  v17 = swift::Demangle::__runtime::Demangler::popFunctionParamLabels(this, v9, v10, v11, v12);
  if (v8 && v9)
  {
    v18 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v18;
    if (!v18 || v18 + 24 > *(this + 2))
    {
      v19 = 2 * *(this + 4);
      if (v19 <= 0x20)
      {
        v19 = 32;
      }

      *(this + 4) = v19;
      v20 = v19 + 8;
      v21 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v22 = v21 + v20;
      *v21 = *(this + 3);
      v18 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v22;
      *(this + 3) = v21;
    }

    *(this + 1) = v18 + 24;
    *(v18 + 16) = 45;
    *(v18 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v18, v8, this, v15, v16);
    swift::Demangle::__runtime::Node::addChild(v18, v9, this, v23, v24);
    v9 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v9;
    if (!v9 || v9 + 24 > *(this + 2))
    {
      v27 = 2 * *(this + 4);
      if (v27 <= 0x20)
      {
        v27 = 32;
      }

      *(this + 4) = v27;
      v28 = v27 + 8;
      v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
      v30 = v29 + v28;
      *v29 = *(this + 3);
      v9 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v30;
      *(this + 3) = v29;
    }

    *(this + 1) = v9 + 24;
    *(v9 + 16) = 243;
    *(v9 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v9, v18, this, v25, v26);
  }

  v31 = *(this + 24);
  if (!v31 || ((v32 = v31 - 1, v33 = *(*(this + 11) + 8 * v32), v34 = v33[8], (v34 - 183) <= 0x3D) ? (v35 = ((1 << (v34 + 73)) & 0x200000020000010DLL) == 0) : (v35 = 1), v35 && ((v34 - 103) <= 0x2B ? (v36 = ((1 << (v34 - 103)) & 0x80004000001) == 0) : (v36 = 1), v36 && v34 != 361)))
  {
    v33 = 0;
  }

  else
  {
    *(this + 24) = v32;
  }

  v37 = swift::Demangle::__runtime::Demangler::popContext(this, v13, v14, v15, v16);
  if (v17)
  {
    v38 = swift::Demangle::__runtime::Demangler::createWithChildren(this, 78, v37, v33, v17, v9);
  }

  else
  {
    v38 = swift::Demangle::__runtime::Demangler::createWithChildren(this, 78, v37, v33, v9);
  }

  v39 = v38;
  result = 0;
  v41 = *(this + 81);
  v47 = v39;
  v46 = v41;
  if (v9 && v39)
  {
    __p[0] = 0;
    __p[1] = 0;
    v45 = 0;
    v43[0] = __p;
    v43[1] = &v47;
    v43[2] = &v46;
    setParentForOpaqueReturnTypeNodesImpl(this, v9, __swift::__runtime::llvm::function_ref<__swift::__runtime::llvm::StringRef ()(void)>::callback_fn<setParentForOpaqueReturnTypeNodes(swift::Demangle::__runtime::Demangler &,swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,swift::Mangle::__runtime::ManglingFlavor)::$_0>, v43);
    result = v47;
    if (SHIBYTE(v45) < 0)
    {
      v42 = v47;
      operator delete(__p[0]);
      return v42;
    }
  }

  return result;
}

unsigned int *swift::Demangle::__runtime::Demangler::demangleBoundGenericType(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 2);
  v7 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v7;
  if (v7)
  {
    v8 = (v7 + 32) > v6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 2 * *(this + 4);
    if (v9 <= 0x28)
    {
      v9 = 40;
    }

    *(this + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    *v11 = *(this + 3);
    v7 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v11 + v10;
    *(this + 3) = v11;
  }

  v23 = 0;
  *(this + 1) = v7 + 32;
  v22[0] = v7;
  v22[1] = 0x400000000;
  if (!swift::Demangle::__runtime::Demangler::demangleBoundGenerics(this, v22, &v23, a4, a5))
  {
    return 0;
  }

  result = swift::Demangle::__runtime::Demangler::popTypeAndGetAnyGeneric(this);
  if (result)
  {
    result = swift::Demangle::__runtime::Demangler::demangleBoundGenericArgs(this, result, v22, 0, v13);
    if (result)
    {
      v16 = result;
      if (v23)
      {
        swift::Demangle::__runtime::Node::addChild(result, v23, this, v14, v15);
      }

      v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v17;
      if (!v17 || v17 + 24 > *(this + 2))
      {
        v18 = 2 * *(this + 4);
        if (v18 <= 0x20)
        {
          v18 = 32;
        }

        *(this + 4) = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v21 = v20 + v19;
        *v20 = *(this + 3);
        v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v21;
        *(this + 3) = v20;
      }

      *(this + 1) = v17 + 24;
      *(v17 + 16) = 243;
      *(v17 + 18) = 0;
      swift::Demangle::__runtime::Node::addChild(v17, v16, this, v14, v15);
      v24 = v17;
      swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 13, &v24, this);
      return v17;
    }
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleDependentProtocolConformanceAssociated(swift::Demangle::__runtime::Demangler *this)
{
  v2 = swift::Demangle::__runtime::Demangler::demangleDependentConformanceIndex(this);
  v7 = swift::Demangle::__runtime::Demangler::popDependentAssociatedConformance(this, v3, v4, v5, v6);
  v8 = *(this + 24);
  if (v8 && (v9 = v8 - 1, v10 = *(*(this + 11) + 8 * v9), v10[8] - 48 <= 2))
  {
    *(this + 24) = v9;
  }

  else
  {
    v10 = 0;
  }

  return swift::Demangle::__runtime::Demangler::createWithChildren(this, 50, v10, v7, v2);
}

unint64_t swift::Demangle::__runtime::Demangler::demangleConcreteProtocolConformance(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = swift::Demangle::__runtime::Demangler::popAnyProtocolConformanceList(this, a2, a3, a4, a5);
  v11 = *(this + 24);
  if (v11 && ((v12 = v11 - 1, v8 = *(*(this + 11) + 8 * v12), v13 = v8[8], v13 == 194) || v13 == 193))
  {
    *(this + 24) = v12;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = swift::Demangle::__runtime::Demangler::demangleRetroactiveProtocolConformanceRef(this, v6, v7, v8, v9);
    v12 = *(this + 24);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v14 = v12 - 1;
  v15 = *(*(this + 11) + 8 * v14);
  if (*(v15 + 8) == 243)
  {
    *(this + 24) = v14;
    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
LABEL_10:

  return swift::Demangle::__runtime::Demangler::createWithChildren(this, 27, v15, v8, v10->i8);
}

unint64_t swift::Demangle::__runtime::Demangler::demangleDependentProtocolConformanceRoot(swift::Demangle::__runtime::Demangler *this)
{
  v2 = swift::Demangle::__runtime::Demangler::demangleDependentConformanceIndex(this);
  v7 = swift::Demangle::__runtime::Demangler::popProtocol(this, v3, v4, v5, v6);
  v8 = *(this + 24);
  if (v8 && (v9 = v8 - 1, v10 = *(*(this + 11) + 8 * v9), *(v10 + 8) == 243))
  {
    *(this + 24) = v9;
  }

  else
  {
    v10 = 0;
  }

  return swift::Demangle::__runtime::Demangler::createWithChildren(this, 48, v10, v7, v2);
}

unint64_t swift::Demangle::__runtime::Demangler::demangleDependentProtocolConformanceInherited(swift::Demangle::__runtime::Demangler *this)
{
  v2 = swift::Demangle::__runtime::Demangler::demangleDependentConformanceIndex(this);
  v7 = swift::Demangle::__runtime::Demangler::popProtocol(this, v3, v4, v5, v6);
  v8 = *(this + 24);
  if (v8 && (v9 = v8 - 1, v10 = *(*(this + 11) + 8 * v9), v10[8] - 48 <= 2))
  {
    *(this + 24) = v9;
  }

  else
  {
    v10 = 0;
  }

  return swift::Demangle::__runtime::Demangler::createWithChildren(this, 49, v10, v7, v2);
}

unint64_t swift::Demangle::__runtime::Demangler::demangleDependentProtocolConformanceOpaque(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = *(this + 11);
  v8 = *(v7 + 8 * (v5 - 1));
  if (*(v8 + 8) == 243)
  {
    *(this + 24) = v6;
    if (v5 == 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = *(this + 24);
  }

  v9 = v6 - 1;
  v10 = *(v7 + 8 * v9);
  if (v10[8] - 48 > 2)
  {
    return 0;
  }

  *(this + 24) = v9;
  if (!v8)
  {
    return 0;
  }

  v11 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v11;
  if (!v11 || v11 + 24 > *(this + 2))
  {
    v12 = 2 * *(this + 4);
    if (v12 <= 0x20)
    {
      v12 = 32;
    }

    *(this + 4) = v12;
    v13 = v12 + 8;
    v14 = this;
    v15 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    this = v14;
    v16 = v15 + v13;
    *v15 = *(v14 + 3);
    v11 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v14 + 2) = v16;
    *(v14 + 3) = v15;
  }

  *(this + 1) = v11 + 24;
  *(v11 + 16) = 51;
  *(v11 + 18) = 0;
  v17 = this;
  swift::Demangle::__runtime::Node::addChild(v11, v10, this, a4, a5);
  swift::Demangle::__runtime::Node::addChild(v11, v8, v17, v18, v19);
  return v11;
}

unint64_t swift::Demangle::__runtime::Demangler::popProtocol(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6 - 1;
  v8 = *(*(this + 11) + 8 * v7);
  v9 = *(v8 + 8);
  v10 = (v9 - 183);
  if (v10 > 0x3D)
  {
    goto LABEL_10;
  }

  if (((1 << (v9 + 73)) & 0x200000020000000DLL) != 0)
  {
LABEL_14:
    *(this + 24) = v7;
LABEL_24:
    v17 = swift::Demangle::__runtime::Demangler::popContext(this, a2, a3, a4, a5);
    v14 = 0;
    if (v8)
    {
      v20 = v17;
      if (v17)
      {
        v21 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v21;
        if (!v21 || v21 + 24 > *(this + 2))
        {
          v22 = 2 * *(this + 4);
          if (v22 <= 0x20)
          {
            v22 = 32;
          }

          *(this + 4) = v22;
          v23 = v22 + 8;
          v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
          v25 = v24 + v23;
          *v24 = *(this + 3);
          v21 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v25;
          *(this + 3) = v24;
        }

        *(this + 1) = v21 + 24;
        *(v21 + 16) = 190;
        *(v21 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v21, v20, this, v18, v19);
        swift::Demangle::__runtime::Node::addChild(v21, v8, this, v26, v27);
        v14 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v14;
        if (!v14 || v14 + 24 > *(this + 2))
        {
          v30 = 2 * *(this + 4);
          if (v30 <= 0x20)
          {
            v30 = 32;
          }

          *(this + 4) = v30;
          v31 = v30 + 8;
          v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
          *v32 = *(this + 3);
          v14 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v32 + v31;
          *(this + 3) = v32;
        }

        *(this + 1) = v14 + 24;
        *(v14 + 16) = 243;
        *(v14 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v14, v21, this, v28, v29);
      }
    }

    return v14;
  }

  if (v10 == 8)
  {
LABEL_22:
    *(this + 24) = v7;
    return v8;
  }

  if (v10 != 60)
  {
LABEL_10:
    if ((v9 - 103) <= 0x2B && ((1 << (v9 - 103)) & 0x80004000001) != 0)
    {
      goto LABEL_14;
    }

    if (v9 == 361)
    {
      goto LABEL_22;
    }

LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  *(this + 24) = v7;
  v11 = *(v8 + 18);
  if ((v11 - 1) >= 2 && (v11 != 5 || !*(v8 + 2)))
  {
    return 0;
  }

  v12 = v8;
  while (1)
  {
    v15 = *(v12 + 8);
    if (v15 != 243)
    {
      break;
    }

    v16 = *(v12 + 18);
    if ((v16 - 1) >= 2)
    {
      if (v16 != 5 || !*(v12 + 2))
      {
        return 0;
      }

      v12 = *v12;
    }

    v14 = 0;
    v12 = *v12;
    if (!v12)
    {
      return v14;
    }
  }

  v34 = v15 - 190;
  if (v15 == 361)
  {
    v35 = v8;
  }

  else
  {
    v35 = 0;
  }

  if (v34 >= 2)
  {
    return v35;
  }

  else
  {
    return v8;
  }
}

unint64_t swift::Demangle::__runtime::Demangler::demanglePackProtocolConformance(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = swift::Demangle::__runtime::Demangler::popAnyProtocolConformanceList(this, a2, a3, a4, a5);
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v10;
  if (!v10 || v10 + 24 > *(this + 2))
  {
    v11 = 2 * *(this + 4);
    if (v11 <= 0x20)
    {
      v11 = 32;
    }

    *(this + 4) = v11;
    v12 = v11 + 8;
    v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
    v14 = v13 + v12;
    *v13 = *(this + 3);
    v10 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v14;
    *(this + 3) = v13;
  }

  *(this + 1) = v10 + 24;
  *(v10 + 16) = 28;
  *(v10 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v10, v9, this, v7, v8);
  return v10;
}

unsigned int *swift::Demangle::__runtime::Demangler::popProtocolConformance(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (!v6)
  {
    v9 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_12;
  }

  v7 = v6 - 1;
  v8 = *(this + 11);
  v9 = *(v8 + 8 * (v6 - 1));
  if (*(v9 + 8) == 44)
  {
    *(this + 24) = v7;
    if (v6 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v7 = *(this + 24);
  }

  v10 = v7 - 1;
  v11 = *(v8 + 8 * v10);
  v12 = *(v11 + 16);
  if (v12 != 163)
  {
    if (v12 == 103)
    {
      *(this + 24) = v10;
      v11 = swift::Demangle::__runtime::Demangler::changeKind(this, v11, 163, a4, a5);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  *(this + 24) = v10;
LABEL_12:
  v15 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
  v16 = *(this + 24);
  if (!v16)
  {
    v20 = 0;
    v22 = 0;
    if (!v9)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v17 = 0;
  v18 = v16 - 1;
  v19 = *(this + 11);
  v20 = *(v19 + 8 * (v16 - 1));
  v21 = v20[8];
  if (v21 == 243)
  {
    goto LABEL_18;
  }

  if (v21 != 103)
  {
LABEL_17:
    v18 = v16 - 1;
    v20 = *(v19 + 8 * (v16 - 1));
    if (v20[8] != 243)
    {
      v22 = 0;
      v20 = v17;
      if (!v9)
      {
        goto LABEL_37;
      }

      goto LABEL_25;
    }

LABEL_18:
    v22 = v20;
    *(this + 24) = v18;
    v20 = v17;
    if (!v9)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  *(this + 24) = v18;
  if (v16 != 1)
  {
    v17 = v20;
    --v16;
    goto LABEL_17;
  }

  v22 = 0;
  if (!v9)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (v22)
  {
    v23 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v23;
    if (!v23 || v23 + 24 > *(this + 2))
    {
      v24 = 2 * *(this + 4);
      if (v24 <= 0x20)
      {
        v24 = 32;
      }

      *(this + 4) = v24;
      v25 = v24 + 8;
      v26 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
      v27 = v26 + v25;
      *v26 = *(this + 3);
      v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v27;
      *(this + 3) = v26;
    }

    *(this + 1) = v23 + 24;
    *(v23 + 16) = 45;
    *(v23 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v23, v9, this, v13, v14);
    swift::Demangle::__runtime::Node::addChild(v23, v22, this, v28, v29);
    v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v22;
    if (!v22 || v22 + 24 > *(this + 2))
    {
      v32 = 2 * *(this + 4);
      if (v32 <= 0x20)
      {
        v32 = 32;
      }

      *(this + 4) = v32;
      v33 = v32 + 8;
      v34 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      *v34 = *(this + 3);
      v22 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v34 + v33;
      *(this + 3) = v34;
    }

    *(this + 1) = v22 + 24;
    *(v22 + 16) = 243;
    *(v22 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v22, v23, this, v30, v31);
  }

LABEL_37:
  result = swift::Demangle::__runtime::Demangler::createWithChildren(this, 192, v22, v15, v11);
  if (v20)
  {
    if (result)
    {
      v38 = result;
      swift::Demangle::__runtime::Node::addChild(result, v20, this, v36, v37);
      return v38;
    }
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleIdentifier(swift::Demangle::__runtime::Demangler *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v2 >= v1)
  {
    return 0;
  }

  v4 = *(this + 7);
  v5 = *(v4 + v2);
  if ((v5 - 48) > 9)
  {
    return 0;
  }

  if (v5 == 48)
  {
    *(this + 9) = v2 + 1;
    if (v2 + 1 < v1 && *(v4 + v2 + 1) == 48)
    {
      v6 = 0;
      v2 += 2;
      *(this + 9) = v2;
      v69 = 1;
    }

    else
    {
      v69 = 0;
      v6 = 1;
      ++v2;
    }
  }

  else
  {
    v69 = 0;
    v6 = 0;
  }

  __n[0] = 0;
  v7 = 0;
  v8 = 0;
  v74 = this + 120;
  do
  {
    if ((v6 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_40;
    }

    do
    {
      v2 = *(this + 9);
      if (v2 >= *(this + 8) || (v11 = *(this + 7), (*(v11 + v2) & 0xDFu) - 65 > 0x19))
      {
        v9 = 1;
        goto LABEL_40;
      }

      *(this + 9) = v2 + 1;
      v12 = *(v11 + v2);
      v13 = v12 - 97;
      if ((v12 - 97) >= 0x1A)
      {
        v14 = -65;
      }

      else
      {
        v14 = -97;
      }

      v15 = v14 + v12;
      if (v15 >= *(this + 134))
      {
        return 0;
      }

      v16 = &v74[16 * v15];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = v7;
      v10 = __n[0];
      if (v17 + v7 > __n[0])
      {
        __src = v8;
        v20 = &v8[__n[0]];
        v8 = *(this + 1);
        if (v20 == v8)
        {
          v21 = *(this + 2);
          if (&v8[v17] <= v21)
          {
            *(this + 1) = &v8[v17];
            LODWORD(v23) = v17;
            v8 = __src;
LABEL_13:
            v10 += v23;
            goto LABEL_14;
          }
        }

        else
        {
          v21 = *(this + 2);
        }

        v70 = v7;
        v22 = (2 * __n[0]);
        if (v17 > v22)
        {
          v22 = v17;
        }

        if (v22 <= 4)
        {
          v23 = 4;
        }

        else
        {
          v23 = v22;
        }

        v24 = v23 + __n[0];
        if (!v8 || &v8[v24] > v21)
        {
          v25 = 2 * *(this + 4);
          if (v25 <= v24 + 1)
          {
            v25 = v24 + 1;
          }

          *(this + 4) = v25;
          v26 = v25 + 8;
          v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
          *v27 = *(this + 3);
          v8 = (v27 + 1);
          v28 = v27 + v26;
          v10 = __n[0];
          *(this + 2) = v28;
          *(this + 3) = v27;
        }

        *(this + 1) = &v8[v24];
        if (v10)
        {
          memcpy(v8, __src, __n[0]);
        }

        v7 = v70;
        goto LABEL_13;
      }

LABEL_14:
      __n[0] = v10;
      memcpy(&v8[v19], v18, v17);
      v7 += v17;
    }

    while (v13 < 0x1Au);
    v9 = 0;
    v2 = *(this + 9);
LABEL_40:
    v29 = *(this + 8);
    if (v2 >= v29)
    {
      return 0;
    }

    v30 = *(this + 7);
    if (*(v30 + v2) == 48)
    {
      *(this + 9) = v2 + 1;
      break;
    }

    if (*(v30 + v2) - 48 > 9)
    {
      return 0;
    }

    LODWORD(v31) = 0;
    while (1)
    {
      v32 = *(v30 + v2);
      if ((v32 - 48) > 9)
      {
        break;
      }

      v33 = v32 + 10 * v31 - 48;
      if (v33 < v31)
      {
        return 0;
      }

      *(this + 9) = ++v2;
      LODWORD(v31) = v33;
      if (v29 == v2)
      {
        v2 = v29;
        LODWORD(v31) = v33;
        break;
      }
    }

    if (v31 < 1)
    {
      return 0;
    }

    if (!v69)
    {
      v34 = v31;
      if (v2 + v31 <= v29)
      {
        if (v31 + v7 > __n[0])
        {
          __srca = v8;
          v39 = &v8[__n[0]];
          v8 = *(this + 1);
          if (v39 != v8)
          {
            v40 = *(this + 2);
            goto LABEL_70;
          }

          v40 = *(this + 2);
          if (&v8[v31] <= v40)
          {
            *(this + 1) = &v8[v31];
            v45 = v31;
            v8 = __srca;
          }

          else
          {
LABEL_70:
            LODWORD(v41) = 2 * __n[0];
            if (v31 > 2 * __n[0])
            {
              LODWORD(v41) = v31;
            }

            if (v41 <= 4)
            {
              v41 = 4;
            }

            else
            {
              v41 = v41;
            }

            v67 = v41;
            v42 = v41 + __n[0];
            if (!v8 || &v8[v42] > v40)
            {
              v43 = 2 * *(this + 4);
              if (v43 <= v42 + 1)
              {
                v43 = v42 + 1;
              }

              *(this + 4) = v43;
              v66 = v43 + 8;
              v44 = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
              *v44 = *(this + 3);
              v8 = (v44 + 1);
              *(this + 2) = v44 + v66;
              *(this + 3) = v44;
            }

            *(this + 1) = &v8[v42];
            if (__n[0])
            {
              memcpy(v8, __srca, __n[0]);
            }

            v45 = v67;
          }

          __n[0] += v45;
        }

        memcpy(&v8[v7], (v30 + v2), v31);
        v46 = 0;
        v47 = -1;
        v48 = (v30 + v2);
        v49 = v9;
        while (2)
        {
          if (v46 >= v31)
          {
            v52 = 0;
            if ((v47 & 0x80000000) == 0)
            {
              goto LABEL_99;
            }

LABEL_86:
            if ((v52 - 58) < 0xFFFFFFF6 && v52 != 0 && v52 != 95)
            {
              v47 = v46;
            }
          }

          else
          {
            v52 = *v48;
            if ((v47 & 0x80000000) != 0)
            {
              goto LABEL_86;
            }

LABEL_99:
            if (!v52 || v52 == 95 || (v52 - 65) <= 0x19 && *(v48 - 1) - 91 <= 0xFFFFFFE5)
            {
              if ((v46 - v47) >= 2)
              {
                v53 = *(this + 134);
                if (v53 <= 25)
                {
                  *(this + 134) = v53 + 1;
                  v54 = &v74[16 * v53];
                  *v54 = v30 + v2 + v47;
                  *(v54 + 1) = v46 - v47;
                }
              }

              v47 = -1;
              goto LABEL_86;
            }
          }

          ++v46;
          ++v48;
          if (v31 + 1 == v46)
          {
            goto LABEL_124;
          }

          continue;
        }
      }

      return 0;
    }

    if (v2 < v29 && *(v30 + v2) == 95)
    {
      *(this + 9) = ++v2;
    }

    v34 = v31;
    if (v2 + v31 > v29)
    {
      return 0;
    }

    *&__n[1] = 0;
    v76 = 0;
    v77 = 0;
    if (!swift::Punycode::__runtime::decodePunycodeUTF8((v30 + v2), v31, &__n[1]))
    {
      if (v77 < 0)
      {
        operator delete(*&__n[1]);
      }

      return 0;
    }

    if (v77 >= 0)
    {
      v35 = &__n[1];
    }

    else
    {
      v35 = *&__n[1];
    }

    if (v77 >= 0)
    {
      v31 = HIBYTE(v77);
    }

    else
    {
      v31 = v76;
    }

    v36 = __n[0];
    if (v31 + v7 > __n[0])
    {
      v37 = *(this + 1);
      if (&v8[__n[0]] != v37)
      {
        v38 = *(this + 2);
        goto LABEL_107;
      }

      v38 = *(this + 2);
      if (&v37[v31] <= v38)
      {
        *(this + 1) = &v37[v31];
        LODWORD(v56) = v31;
      }

      else
      {
LABEL_107:
        __srcb = v35;
        v55 = (2 * __n[0]);
        if (v31 > v55)
        {
          v55 = v31;
        }

        if (v55 <= 4)
        {
          v56 = 4;
        }

        else
        {
          v56 = v55;
        }

        v57 = v56 + __n[0];
        if (!v37 || &v37[v57] > v38)
        {
          v58 = 2 * *(this + 4);
          if (v58 <= v57 + 1)
          {
            v58 = v57 + 1;
          }

          *(this + 4) = v58;
          v68 = v58 + 8;
          v59 = malloc_type_malloc(v58 + 8, 0x2004093837F09uLL);
          *v59 = *(this + 3);
          v37 = (v59 + 1);
          *(this + 2) = v59 + v68;
          *(this + 3) = v59;
        }

        *(this + 1) = &v37[v57];
        if (__n[0])
        {
          memcpy(v37, v8, __n[0]);
        }

        v8 = v37;
        v35 = __srcb;
      }

      v36 = __n[0] + v56;
    }

    memcpy(&v8[v7], v35, v31);
    if (SHIBYTE(v77) < 0)
    {
      operator delete(*&__n[1]);
    }

    __n[0] = v36;
    v49 = v9;
LABEL_124:
    v7 += v31;
    v2 = *(this + 9) + v34;
    *(this + 9) = v2;
    v6 = 1;
  }

  while ((v49 & 1) != 0);
  if (!v7)
  {
    return 0;
  }

  v60 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v60;
  if (!v60 || v60 + 24 > *(this + 2))
  {
    v61 = 2 * *(this + 4);
    if (v61 <= 0x20)
    {
      v61 = 32;
    }

    *(this + 4) = v61;
    v62 = v61 + 8;
    v63 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
    *v63 = *(this + 3);
    v60 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v63 + v62;
    *(this + 3) = v63;
  }

  *(this + 1) = v60 + 24;
  *(v60 + 16) = 103;
  *(v60 + 18) = 3;
  *v60 = v8;
  *(v60 + 8) = v7;
  *&__n[1] = v60;
  v64 = v60;
  swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 13, &__n[1], this);
  return v64;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Demangler::demangleImplFunctionType(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v6;
  if (!v6 || v6 + 24 > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    *v9 = *(this + 3);
    v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v9 + v8;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  *(v6 + 16) = 119;
  *(v6 + 18) = 0;
  v11 = *(this + 8);
  v10 = *(this + 9);
  if (v10 < v11 && *(*(this + 7) + v10) == 115)
  {
    *(this + 9) = v10 + 1;
    v180 = 0;
    v181 = 0;
    v179 = 0;
    if (!swift::Demangle::__runtime::Demangler::demangleBoundGenerics(this, &v180, &v179, a4, a5))
    {
      return 0;
    }

    v14 = *(this + 24);
    if (!v14)
    {
      return 0;
    }

    v15 = v14 - 1;
    v16 = *(*(this + 11) + 8 * v15);
    if (*(v16 + 8) != 44)
    {
      return 0;
    }

    *(this + 24) = v15;
    v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v17;
    if (!v17 || v17 + 24 > *(this + 2))
    {
      v18 = 2 * *(this + 4);
      if (v18 <= 0x20)
      {
        v18 = 32;
      }

      *(this + 4) = v18;
      v19 = v18 + 8;
      v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      *v20 = *(this + 3);
      v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v20 + v19;
      *(this + 3) = v20;
    }

    *(this + 1) = v17 + 24;
    *(v17 + 16) = 124;
    *(v17 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v17, v16, this, v12, v13);
    swift::Demangle::__runtime::Node::addChild(v17, *v180, this, v21, v22);
    if (v179)
    {
      swift::Demangle::__runtime::Node::addChild(v17, v179, this, v23, v24);
    }

    swift::Demangle::__runtime::Node::addChild(v6, v17, this, v23, v24);
    v11 = *(this + 8);
    v10 = *(this + 9);
  }

  if (v10 < v11 && *(*(this + 7) + v10) == 73)
  {
    *(this + 9) = v10 + 1;
    v180 = 0;
    v181 = 0;
    v179 = 0;
    if (!swift::Demangle::__runtime::Demangler::demangleBoundGenerics(this, &v180, &v179, a4, a5))
    {
      return 0;
    }

    v27 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v27;
    if (!v27 || v27 + 24 > *(this + 2))
    {
      v28 = 2 * *(this + 4);
      if (v28 <= 0x20)
      {
        v28 = 32;
      }

      *(this + 4) = v28;
      v29 = v28 + 8;
      v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
      *v30 = *(this + 3);
      v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v30 + v29;
      *(this + 3) = v30;
    }

    *(this + 1) = v27 + 24;
    *(v27 + 16) = 121;
    *(v27 + 18) = 0;
    if (v181 != 1)
    {
      return 0;
    }

    swift::Demangle::__runtime::Node::addChild(v27, *v180, this, v25, v26);
    if (v179)
    {
      swift::Demangle::__runtime::Node::addChild(v27, v179, this, v31, v32);
    }

    swift::Demangle::__runtime::Node::addChild(v6, v27, this, v31, v32);
  }

  v33 = *(this + 24);
  if (v33 && (v34 = v33 - 1, v35 = *(*(this + 11) + 8 * v34), *(v35 + 16) == 44))
  {
    *(this + 24) = v34;
    v36 = *(this + 9);
    if (v36 < *(this + 8) && *(*(this + 7) + v36) == 80)
    {
      *(this + 9) = v36 + 1;
      v35 = swift::Demangle::__runtime::Demangler::changeKind(this, v35, 47, a4, a5);
    }
  }

  else
  {
    v35 = 0;
  }

  v38 = *(this + 8);
  v37 = *(this + 9);
  if (v37 < v38 && *(*(this + 7) + v37) == 101)
  {
    *(this + 9) = v37 + 1;
    v39 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v39;
    if (!v39 || v39 + 24 > *(this + 2))
    {
      v40 = 2 * *(this + 4);
      if (v40 <= 0x20)
      {
        v40 = 32;
      }

      *(this + 4) = v40;
      v41 = v40 + 8;
      v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
      *v42 = *(this + 3);
      v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v42 + v41;
      *(this + 3) = v42;
    }

    *(this + 1) = v39 + 24;
    *(v39 + 16) = 107;
    *(v39 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v6, v39, this, a4, a5);
    v38 = *(this + 8);
    v37 = *(this + 9);
  }

  if (v37 < v38 && *(*(this + 7) + v37) == 65)
  {
    *(this + 9) = v37 + 1;
    v43 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v43;
    if (!v43 || v43 + 24 > *(this + 2))
    {
      v44 = 2 * *(this + 4);
      if (v44 <= 0x20)
      {
        v44 = 32;
      }

      *(this + 4) = v44;
      v45 = v44 + 8;
      v46 = malloc_type_malloc(v44 + 8, 0x2004093837F09uLL);
      *v46 = *(this + 3);
      v43 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v46 + v45;
      *(this + 3) = v46;
    }

    *(this + 1) = v43 + 24;
    *(v43 + 16) = 110;
    *(v43 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v6, v43, this, a4, a5);
    v38 = *(this + 8);
    v37 = *(this + 9);
  }

  if (v37 >= v38)
  {
    v47 = -100;
  }

  else
  {
    v47 = *(*(this + 7) + v37) - 100;
  }

  v48 = ((v47 >> 1) | (v47 << 7));
  if (v48 <= 7 && ((1 << v48) & 0x93) != 0)
  {
    v49 = v6;
    if (v37 >= v38)
    {
      v50 = 0;
    }

    else
    {
      *(this + 9) = v37 + 1;
      v50 = *(*(this + 7) + v37);
    }

    v51 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v51;
    if (!v51 || v51 + 24 > *(this + 2))
    {
      v52 = 2 * *(this + 4);
      if (v52 <= 0x20)
      {
        v52 = 32;
      }

      *(this + 4) = v52;
      v53 = v52 + 8;
      v54 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
      *v54 = *(this + 3);
      v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v54 + v53;
      *(this + 3) = v54;
    }

    *(this + 1) = v51 + 24;
    *(v51 + 16) = 109;
    *(v51 + 18) = 4;
    *v51 = v50;
    v6 = v49;
    swift::Demangle::__runtime::Node::addChild(v49, v51, this, a4, a5);
    v38 = *(this + 8);
    v37 = *(this + 9);
  }

  if (v37 >= v38)
  {
    return 0;
  }

  result = 0;
  *(this + 9) = v37 + 1;
  v56 = *(*(this + 7) + v37);
  if (v56 > 119)
  {
    if (v56 == 120)
    {
      v57 = "@callee_owned";
    }

    else
    {
      if (v56 != 121)
      {
        return result;
      }

      v57 = "@callee_unowned";
    }
  }

  else if (v56 == 103)
  {
    v57 = "@callee_guaranteed";
  }

  else
  {
    if (v56 != 116)
    {
      return result;
    }

    v57 = "@convention(thin)";
  }

  v58 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v58;
  if (!v58 || v58 + 24 > *(this + 2))
  {
    v59 = 2 * *(this + 4);
    if (v59 <= 0x20)
    {
      v59 = 32;
    }

    *(this + 4) = v59;
    v60 = v59 + 8;
    v61 = malloc_type_malloc(v59 + 8, 0x2004093837F09uLL);
    *v61 = *(this + 3);
    v58 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v61 + v60;
    *(this + 3) = v61;
  }

  *(this + 1) = v58 + 24;
  v62 = strlen(v57);
  *(v58 + 16) = 108;
  *(v58 + 18) = 3;
  *v58 = v57;
  *(v58 + 8) = v62;
  swift::Demangle::__runtime::Node::addChild(v6, v58, this, v63, v64);
  v67 = *(this + 8);
  v68 = *(this + 9);
  if (v68 >= v67)
  {
    v69 = *(this + 9);
    goto LABEL_89;
  }

  v69 = v68 + 1;
  *(this + 9) = v68 + 1;
  v70 = *(this + 7);
  v71 = *(v70 + v68);
  if (v71 <= 0x4C)
  {
    switch(v71)
    {
      case 'B':
        v72 = 0;
        v73 = "block";
        goto LABEL_106;
      case 'C':
        v72 = 0;
        v73 = "c";
        goto LABEL_106;
      case 'K':
        v72 = 0;
        v73 = "closure";
        goto LABEL_106;
    }

    goto LABEL_89;
  }

  if (*(v70 + v68) <= 0x56u)
  {
    if (v71 == 77)
    {
      v72 = 0;
      v73 = "method";
      goto LABEL_106;
    }

    if (v71 == 79)
    {
      v72 = 0;
      v73 = "objc_method";
LABEL_106:
      v77 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v77;
      if (!v77 || (v78 = *(this + 2), v77 + 24 > v78))
      {
        v79 = 2 * *(this + 4);
        if (v79 <= 0x20)
        {
          v79 = 32;
        }

        *(this + 4) = v79;
        v80 = v79 + 8;
        v81 = malloc_type_malloc(v79 + 8, 0x2004093837F09uLL);
        *v81 = *(this + 3);
        v77 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v78 = v81 + v80;
        *(this + 2) = v81 + v80;
        *(this + 3) = v81;
      }

      *(v77 + 16) = 117;
      *(v77 + 18) = 0;
      v82 = (v77 + 31) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v82;
      if (!v82 || v82 + 24 > v78)
      {
        v83 = 2 * *(this + 4);
        if (v83 <= 0x20)
        {
          v83 = 32;
        }

        *(this + 4) = v83;
        v84 = v83 + 8;
        v85 = malloc_type_malloc(v83 + 8, 0x2004093837F09uLL);
        *v85 = *(this + 3);
        v82 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v85 + v84;
        *(this + 3) = v85;
      }

      *(this + 1) = v82 + 24;
      v86 = strlen(v73);
      *(v82 + 16) = 118;
      *(v82 + 18) = 3;
      *v82 = v73;
      *(v82 + 8) = v86;
      swift::Demangle::__runtime::Node::addChild(v77, v82, this, v87, v88);
      if (v72)
      {
        v91 = swift::Demangle::__runtime::Demangler::demangleClangType(this);
        if (v91)
        {
          swift::Demangle::__runtime::Node::addChild(v77, v91, this, v89, v90);
        }
      }

      swift::Demangle::__runtime::Node::addChild(v6, v77, this, v89, v90);
      v67 = *(this + 8);
      v74 = *(this + 9);
      if (v74 >= v67)
      {
        goto LABEL_132;
      }

      goto LABEL_120;
    }

    goto LABEL_89;
  }

  if (v71 == 87)
  {
    v72 = 0;
    v73 = "witness_method";
    goto LABEL_106;
  }

  if (v71 != 122)
  {
LABEL_89:
    v74 = v69 - 1;
    goto LABEL_90;
  }

  if (v69 < v67)
  {
    v75 = v68 + 2;
    *(this + 9) = v75;
    v76 = *(v70 + v69);
    if (v76 == 66)
    {
      v73 = "block";
      v72 = 1;
      goto LABEL_106;
    }

    v69 = v75;
    if (v76 == 67)
    {
      v73 = "c";
      v72 = 1;
      goto LABEL_106;
    }
  }

  v74 = v69 - 2;
LABEL_90:
  *(this + 9) = v74;
  if (v74 >= v67)
  {
    goto LABEL_132;
  }

LABEL_120:
  v92 = *(*(this + 7) + v74);
  switch(v92)
  {
    case 'A':
      v93 = "yield_once";
      break;
    case 'G':
      v93 = "yield_many";
      break;
    case 'I':
      v93 = "yield_once_2";
      break;
    default:
      goto LABEL_132;
  }

  *(this + 9) = v74 + 1;
  v94 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v94;
  if (!v94 || v94 + 24 > *(this + 2))
  {
    v95 = 2 * *(this + 4);
    if (v95 <= 0x20)
    {
      v95 = 32;
    }

    *(this + 4) = v95;
    v96 = v95 + 8;
    v97 = malloc_type_malloc(v95 + 8, 0x2004093837F09uLL);
    *v97 = *(this + 3);
    v94 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v97 + v96;
    *(this + 3) = v97;
  }

  *(this + 1) = v94 + 24;
  v98 = strlen(v93);
  *(v94 + 16) = 120;
  *(v94 + 18) = 3;
  *v94 = v93;
  *(v94 + 8) = v98;
  swift::Demangle::__runtime::Node::addChild(v6, v94, this, v99, v100);
  v67 = *(this + 8);
  v74 = *(this + 9);
LABEL_132:
  if (v74 < v67 && *(*(this + 7) + v74) == 104)
  {
    *(this + 9) = v74 + 1;
    v101 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v101;
    if (!v101 || v101 + 24 > *(this + 2))
    {
      v102 = 2 * *(this + 4);
      if (v102 <= 0x20)
      {
        v102 = 32;
      }

      *(this + 4) = v102;
      v103 = v102 + 8;
      v104 = malloc_type_malloc(v102 + 8, 0x2004093837F09uLL);
      *v104 = *(this + 3);
      v101 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v104 + v103;
      *(this + 3) = v104;
    }

    *(this + 1) = v101 + 24;
    *(v101 + 16) = 116;
    *(v101 + 18) = 3;
    *v101 = "@Sendable";
    *(v101 + 8) = 9;
    swift::Demangle::__runtime::Node::addChild(v6, v101, this, v65, v66);
    v67 = *(this + 8);
    v74 = *(this + 9);
  }

  if (v74 < v67 && *(*(this + 7) + v74) == 72)
  {
    *(this + 9) = v74 + 1;
    v105 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v105;
    if (!v105 || v105 + 24 > *(this + 2))
    {
      v106 = 2 * *(this + 4);
      if (v106 <= 0x20)
      {
        v106 = 32;
      }

      *(this + 4) = v106;
      v107 = v106 + 8;
      v108 = malloc_type_malloc(v106 + 8, 0x2004093837F09uLL);
      *v108 = *(this + 3);
      v105 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v108 + v107;
      *(this + 3) = v108;
    }

    *(this + 1) = v105 + 24;
    *(v105 + 16) = 116;
    *(v105 + 18) = 3;
    *v105 = "@async";
    *(v105 + 8) = 6;
    swift::Demangle::__runtime::Node::addChild(v6, v105, this, v65, v66);
    v67 = *(this + 8);
    v74 = *(this + 9);
  }

  if (v74 < v67 && *(*(this + 7) + v74) == 84)
  {
    *(this + 9) = v74 + 1;
    v109 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v109;
    if (!v109 || v109 + 24 > *(this + 2))
    {
      v110 = 2 * *(this + 4);
      if (v110 <= 0x20)
      {
        v110 = 32;
      }

      *(this + 4) = v110;
      v111 = v110 + 8;
      v112 = malloc_type_malloc(v110 + 8, 0x2004093837F09uLL);
      *v112 = *(this + 3);
      v109 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v112 + v111;
      *(this + 3) = v112;
    }

    *(this + 1) = v109 + 24;
    *(v109 + 16) = 111;
    *(v109 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v6, v109, this, v65, v66);
  }

  if (v35)
  {
    swift::Demangle::__runtime::Node::addChild(v6, v35, this, v65, v66);
  }

  v113 = swift::Demangle::__runtime::Demangler::demangleImplParamConvention(this, 123);
  if (v113)
  {
    v116 = v113;
    v117 = 0;
    do
    {
      swift::Demangle::__runtime::Node::addChild(v6, v116, this, v114, v115);
      v124 = *(this + 9);
      if (v124 < *(this + 8) && *(*(this + 7) + v124) == 119)
      {
        *(this + 9) = v124 + 1;
        v125 = "@noDerivative";
      }

      else
      {
        v125 = &unk_D3717;
      }

      v126 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v126;
      if (!v126 || v126 + 24 > *(this + 2))
      {
        v127 = 2 * *(this + 4);
        if (v127 <= 0x20)
        {
          v127 = 32;
        }

        *(this + 4) = v127;
        v128 = v127 + 8;
        v129 = malloc_type_malloc(v127 + 8, 0x2004093837F09uLL);
        *v129 = *(this + 3);
        v126 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v129 + v128;
        *(this + 3) = v129;
      }

      *(this + 1) = v126 + 24;
      v130 = strlen(v125);
      *(v126 + 16) = 112;
      *(v126 + 18) = 3;
      *v126 = v125;
      *(v126 + 8) = v130;
      swift::Demangle::__runtime::Node::addChild(v116, v126, this, v131, v132);
      v134 = *(this + 8);
      v133 = *(this + 9);
      if (v133 < v134 && *(*(this + 7) + v133) == 84)
      {
        *(this + 9) = v133 + 1;
        v135 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v135;
        if (!v135 || v135 + 24 > *(this + 2))
        {
          v136 = 2 * *(this + 4);
          if (v136 <= 0x20)
          {
            v136 = 32;
          }

          *(this + 4) = v136;
          v137 = v136 + 8;
          v138 = malloc_type_malloc(v136 + 8, 0x2004093837F09uLL);
          *v138 = *(this + 3);
          v135 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v138 + v137;
          *(this + 3) = v138;
        }

        *(this + 1) = v135 + 24;
        *(v135 + 16) = 113;
        *(v135 + 18) = 3;
        *v135 = "sending";
        *(v135 + 8) = 7;
        swift::Demangle::__runtime::Node::addChild(v116, v135, this, v121, v122);
        v134 = *(this + 8);
        v133 = *(this + 9);
      }

      if (v133 < v134 && *(*(this + 7) + v133) == 73)
      {
        *(this + 9) = v133 + 1;
        v139 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v139;
        if (!v139 || v139 + 24 > *(this + 2))
        {
          v140 = 2 * *(this + 4);
          if (v140 <= 0x20)
          {
            v140 = 32;
          }

          *(this + 4) = v140;
          v141 = v140 + 8;
          v142 = malloc_type_malloc(v140 + 8, 0x2004093837F09uLL);
          *v142 = *(this + 3);
          v139 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v142 + v141;
          *(this + 3) = v142;
        }

        *(this + 1) = v139 + 24;
        *(v139 + 16) = 114;
        *(v139 + 18) = 3;
        *v139 = "isolated";
        *(v139 + 8) = 8;
        swift::Demangle::__runtime::Node::addChild(v116, v139, this, v121, v122);
        v134 = *(this + 8);
        v133 = *(this + 9);
      }

      if (v133 < v134 && *(*(this + 7) + v133) == 76)
      {
        *(this + 9) = v133 + 1;
        v123 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v123;
        if (!v123 || v123 + 24 > *(this + 2))
        {
          v118 = 2 * *(this + 4);
          if (v118 <= 0x20)
          {
            v118 = 32;
          }

          *(this + 4) = v118;
          v119 = v118 + 8;
          v120 = malloc_type_malloc(v118 + 8, 0x2004093837F09uLL);
          *v120 = *(this + 3);
          v123 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v120 + v119;
          *(this + 3) = v120;
        }

        *(this + 1) = v123 + 24;
        *(v123 + 16) = 115;
        *(v123 + 18) = 3;
        *v123 = "sil_implicit_leading_param";
        *(v123 + 8) = 26;
        swift::Demangle::__runtime::Node::addChild(v116, v123, this, v121, v122);
      }

      ++v117;
      v116 = swift::Demangle::__runtime::Demangler::demangleImplParamConvention(this, 123);
    }

    while (v116);
  }

  else
  {
    v117 = 0;
  }

  v143 = v6;
  v144 = swift::Demangle::__runtime::Demangler::demangleImplResultConvention(this, 125);
  if (v144)
  {
    v147 = v144;
    do
    {
      swift::Demangle::__runtime::Node::addChild(v6, v147, this, v145, v146);
      v155 = *(this + 9);
      if (v155 < *(this + 8) && *(*(this + 7) + v155) == 119)
      {
        *(this + 9) = v155 + 1;
        v156 = "@noDerivative";
      }

      else
      {
        v156 = &unk_D3717;
      }

      v151 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v151;
      if (!v151 || v151 + 24 > *(this + 2))
      {
        v148 = 2 * *(this + 4);
        if (v148 <= 0x20)
        {
          v148 = 32;
        }

        *(this + 4) = v148;
        v149 = v148 + 8;
        v150 = malloc_type_malloc(v148 + 8, 0x2004093837F09uLL);
        *v150 = *(this + 3);
        v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v150 + v149;
        *(this + 3) = v150;
      }

      *(this + 1) = v151 + 24;
      v152 = strlen(v156);
      *(v151 + 16) = 112;
      *(v151 + 18) = 3;
      *v151 = v156;
      *(v151 + 8) = v152;
      swift::Demangle::__runtime::Node::addChild(v147, v151, this, v153, v154);
      ++v117;
      v147 = swift::Demangle::__runtime::Demangler::demangleImplResultConvention(this, 125);
    }

    while (v147);
  }

  v158 = *(this + 8);
  v157 = *(this + 9);
  if (v157 >= v158)
  {
    goto LABEL_221;
  }

  if (*(*(this + 7) + v157) != 89)
  {
LABEL_215:
    if (v157 < v158 && *(*(this + 7) + v157) == 122)
    {
      *(this + 9) = v157 + 1;
      result = swift::Demangle::__runtime::Demangler::demangleImplResultConvention(this, 127);
      if (!result)
      {
        return result;
      }

      swift::Demangle::__runtime::Node::addChild(v6, result, this, v162, v163);
      ++v117;
      v158 = *(this + 8);
      v157 = *(this + 9);
    }

LABEL_221:
    if (v157 < v158 && *(*(this + 7) + v157) == 95)
    {
      *(this + 9) = v157 + 1;
      if (v117 < 1)
      {
LABEL_242:
        v175 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v175;
        if (!v175 || v175 + 24 > *(this + 2))
        {
          v176 = 2 * *(this + 4);
          if (v176 <= 0x20)
          {
            v176 = 32;
          }

          *(this + 4) = v176;
          v177 = v176 + 8;
          v178 = malloc_type_malloc(v176 + 8, 0x2004093837F09uLL);
          *v178 = *(this + 3);
          v175 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v178 + v177;
          *(this + 3) = v178;
        }

        *(this + 1) = v175 + 24;
        *(v175 + 16) = 243;
        *(v175 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v175, v143, this, v145, v146);
        return v175;
      }

      v164 = 0;
      v165 = -1;
      while (1)
      {
        v167 = *(this + 24);
        if (!v167)
        {
          return 0;
        }

        v168 = v167 - 1;
        v169 = *(*(this + 11) + 8 * v168);
        if (*(v169 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v168;
        v170 = *(v143 + 18);
        switch(v170)
        {
          case 5:
            v172 = *(v143 + 8);
            v171 = v165 + v172;
            if (v172 > v165 + v172)
            {
              goto LABEL_237;
            }

            break;
          case 2:
            v171 = 1 - v164;
            if ((1 - v164) < 2)
            {
              goto LABEL_237;
            }

            break;
          case 1:
            v171 = -v164;
            if (!v164)
            {
LABEL_237:
              v173 = v170 - 1;
              v174 = v143;
              if (v173 >= 2)
              {
                v174 = *v143;
              }

              v166 = *(v174 + 8 * v171);
              goto LABEL_226;
            }

            break;
        }

        v166 = 0;
LABEL_226:
        swift::Demangle::__runtime::Node::addChild(v166, v169, this, v145, v146);
        ++v164;
        --v165;
        if (v117 + v165 == -1)
        {
          goto LABEL_242;
        }
      }
    }

    return 0;
  }

  v159 = v117 + 1;
  while (1)
  {
    v117 = v159;
    *(this + 9) = v157 + 1;
    result = swift::Demangle::__runtime::Demangler::demangleImplParamConvention(this, 126);
    if (!result)
    {
      return result;
    }

    swift::Demangle::__runtime::Node::addChild(v6, result, this, v160, v161);
    v158 = *(this + 8);
    v157 = *(this + 9);
    if (v157 < v158)
    {
      v159 = v117 + 1;
      if (*(*(this + 7) + v157) == 89)
      {
        continue;
      }
    }

    goto LABEL_215;
  }
}

unint64_t swift::Demangle::__runtime::Demangler::demangleLocalIdentifier(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 9);
  if (v6 >= *(this + 8))
  {
    goto LABEL_18;
  }

  v7 = *(this + 7);
  v8 = *(v7 + v6);
  if (v8 == 108)
  {
    *(this + 9) = v6 + 1;
    v13 = *(this + 24);
    if (!v13)
    {
      return 0;
    }

    v14 = v13 - 1;
    v15 = *(*(this + 11) + 8 * v14);
    if (*(v15 + 8) != 103)
    {
      return 0;
    }

    *(this + 24) = v14;
    v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v16;
    if (!v16 || v16 + 24 > *(this + 2))
    {
      v17 = 2 * *(this + 4);
      if (v17 <= 0x20)
      {
        v17 = 32;
      }

      *(this + 4) = v17;
      v18 = v17 + 8;
      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v20 = v19 + v18;
      *v19 = *(this + 3);
      v16 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v20;
      *(this + 3) = v19;
    }

    *(this + 1) = v16 + 24;
    *(v16 + 16) = 186;
    *(v16 + 18) = 0;
LABEL_37:
    v34 = v16;
    v35 = v15;
LABEL_38:
    swift::Demangle::__runtime::Node::addChild(v34, v35, this, a4, a5);
    return v16;
  }

  if (v8 == 76)
  {
    *(this + 9) = v6 + 1;
    v9 = *(this + 24);
    if (v9)
    {
      v10 = (v9 - 1);
      v11 = *(this + 11);
      v12 = *(v11 + 8 * v10);
      if (*(v12 + 8) == 103)
      {
        *(this + 24) = v10;
        if (v9 == 1)
        {
          return 0;
        }

        v10 = (v9 - 2);
      }

      else
      {
        v12 = 0;
      }

      v42 = *(v11 + 8 * v10);
      v43 = v42[8];
      v44 = (v43 - 183) > 0x3D || ((1 << (v43 + 73)) & 0x200000020000010DLL) == 0;
      if (!v44 || ((v43 - 103) <= 0x2B ? (v45 = ((1 << (v43 - 103)) & 0x80004000001) == 0) : (v45 = 1), !v45 || v43 == 361))
      {
        *(this + 24) = v10;
        if (v12)
        {
          v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v16;
          if (!v16 || v16 + 24 > *(this + 2))
          {
            v46 = 2 * *(this + 4);
            if (v46 <= 0x20)
            {
              v46 = 32;
            }

            *(this + 4) = v46;
            v47 = v46 + 8;
            v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
            v49 = v48 + v47;
            *v48 = *(this + 3);
            v16 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(this + 2) = v49;
            *(this + 3) = v48;
          }

          *(this + 1) = v16 + 24;
          *(v16 + 16) = 186;
          *(v16 + 18) = 0;
          swift::Demangle::__runtime::Node::addChild(v16, v12, this, a4, a5);
          v34 = v16;
          v35 = v42;
          goto LABEL_38;
        }
      }
    }

    return 0;
  }

  if (v8 < 97)
  {
    if (v8 - 65 > 9)
    {
      goto LABEL_18;
    }
  }

  else if (v8 >= 0x6B)
  {
LABEL_18:
    v21 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
    v24 = *(this + 24);
    if (!v24)
    {
      return 0;
    }

    v25 = v24 - 1;
    v15 = *(*(this + 11) + 8 * v25);
    v26 = *(v15 + 8);
    if ((v26 - 183) > 0x3D || ((1 << (v26 + 73)) & 0x200000020000010DLL) == 0)
    {
      v28 = (v26 - 103) > 0x2B || ((1 << (v26 - 103)) & 0x80004000001) == 0;
      if (v28 && v26 != 361)
      {
        return 0;
      }
    }

    *(this + 24) = v25;
    if (!v21)
    {
      return 0;
    }

    v29 = v21;
    v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v16;
    if (!v16 || v16 + 24 > *(this + 2))
    {
      v30 = 2 * *(this + 4);
      if (v30 <= 0x20)
      {
        v30 = 32;
      }

      *(this + 4) = v30;
      v31 = v30 + 8;
      v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
      v33 = v32 + v31;
      *v32 = *(this + 3);
      v16 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v33;
      *(this + 3) = v32;
    }

    *(this + 1) = v16 + 24;
    *(v16 + 16) = 146;
    *(v16 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v16, v29, this, v22, v23);
    goto LABEL_37;
  }

  *(this + 9) = v6 + 1;
  __src = *(v7 + v6);
  v38 = swift::Demangle::__runtime::NodeFactory::createNode(this, 103, &__src, 1uLL);
  v39 = *(this + 24);
  if (v39)
  {
    v40 = v39 - 1;
    v41 = *(*(this + 11) + 8 * v40);
    *(this + 24) = v40;
  }

  else
  {
    v41 = 0;
  }

  v51 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v51;
  if (!v51 || v51 + 24 > *(this + 2))
  {
    v52 = 2 * *(this + 4);
    if (v52 <= 0x20)
    {
      v52 = 32;
    }

    *(this + 4) = v52;
    v53 = v52 + 8;
    v54 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
    v55 = v54 + v53;
    *v54 = *(this + 3);
    v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v55;
    *(this + 3) = v54;
  }

  *(this + 1) = v51 + 24;
  *(v51 + 16) = 216;
  *(v51 + 18) = 0;
  if (v38 && v51)
  {
    swift::Demangle::__runtime::Node::addChild(v51, v38, this, v36, v37);
  }

  v16 = 0;
  if (v41 && v51)
  {
    swift::Demangle::__runtime::Node::addChild(v51, v41, this, v36, v37);
    return v51;
  }

  return v16;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Demangler::demangleMetatype(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 9);
  if (v5 >= *(this + 8))
  {
    return 0;
  }

  else
  {
    v6 = 0;
    *(this + 9) = v5 + 1;
    switch(*(*(this + 7) + v5))
    {
      case 'A':
        v129 = this;
        v130 = swift::Demangle::__runtime::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
        if (!v130)
        {
          return 0;
        }

        v9 = v130;
        v18 = v129;
        v6 = (*(v129 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(v129 + 1) = v6;
        if (!v6 || v6 + 24 > *(v129 + 2))
        {
          v131 = 2 * *(v129 + 4);
          if (v131 <= 0x20)
          {
            v131 = 32;
          }

          *(v129 + 4) = v131;
          v132 = v131 + 8;
          v133 = malloc_type_malloc(v131 + 8, 0x2004093837F09uLL);
          v18 = v129;
          v134 = v133 + v132;
          *v133 = *(v129 + 3);
          v6 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v129 + 2) = v134;
          *(v129 + 3) = v133;
        }

        *(v18 + 1) = v6 + 24;
        v23 = 272;
        goto LABEL_281;
      case 'B':
        v163 = *(this + 24);
        if (!v163)
        {
          return 0;
        }

        v164 = v163 - 1;
        v9 = *(*(this + 11) + 8 * v164);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v164;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v165 = 2 * *(this + 4);
          if (v165 <= 0x20)
          {
            v165 = 32;
          }

          *(this + 4) = v165;
          v166 = v165 + 8;
          v167 = this;
          v168 = malloc_type_malloc(v165 + 8, 0x2004093837F09uLL);
          this = v167;
          v169 = v168 + v166;
          *v168 = *(v167 + 3);
          v6 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v167 + 2) = v169;
          *(v167 + 3) = v168;
        }

        *(this + 1) = v6 + 24;
        v15 = 270;
        goto LABEL_299;
      case 'C':
        v170 = *(this + 24);
        if (!v170)
        {
          return 0;
        }

        v171 = v170 - 1;
        v172 = *(*(this + 11) + 8 * v171);
        if (*(v172 + 8) != 243)
        {
          return 0;
        }

        v173 = this;
        *(this + 24) = v171;
        v174 = *(v172 + 18);
        v175 = v172;
        if ((v174 - 1) >= 2)
        {
          v175 = *v172;
        }

        {
          return 0;
        }

        if ((v174 - 1) < 2)
        {
          v178 = v173;
LABEL_306:
          v272 = *v172;
          goto LABEL_308;
        }

        v178 = v173;
        if (v174 == 5 && *(v172 + 2))
        {
          v172 = *v172;
          goto LABEL_306;
        }

        v272 = 0;
LABEL_308:

        result = swift::Demangle::__runtime::Demangler::createWithChild(v178, 273, v272, v176, v177);
        break;
      case 'D':
      case 'd':
        v7 = *(this + 24);
        if (!v7)
        {
          return 0;
        }

        v8 = v7 - 1;
        v9 = *(*(this + 11) + 8 * v8);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v8;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v10 = 2 * *(this + 4);
          if (v10 <= 0x20)
          {
            v10 = 32;
          }

          *(this + 4) = v10;
          v11 = v10 + 8;
          v12 = this;
          v13 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
          this = v12;
          v14 = v13 + v11;
          *v13 = *(v12 + 3);
          v6 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v12 + 2) = v14;
          *(v12 + 3) = v13;
        }

        *(this + 1) = v6 + 24;
        v15 = 254;
        goto LABEL_299;
      case 'F':
        v179 = *(this + 24);
        if (!v179)
        {
          return 0;
        }

        v180 = v179 - 1;
        v9 = *(*(this + 11) + 8 * v180);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v180;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v181 = 2 * *(this + 4);
          if (v181 <= 0x20)
          {
            v181 = 32;
          }

          *(this + 4) = v181;
          v182 = v181 + 8;
          v183 = this;
          v184 = malloc_type_malloc(v181 + 8, 0x2004093837F09uLL);
          this = v183;
          v185 = v184 + v182;
          *v184 = *(v183 + 3);
          v6 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v183 + 2) = v185;
          *(v183 + 3) = v184;
        }

        *(this + 1) = v6 + 24;
        v15 = 271;
        goto LABEL_299;
      case 'I':
        v186 = *(this + 24);
        if (!v186)
        {
          return 0;
        }

        v187 = v186 - 1;
        v9 = *(*(this + 11) + 8 * v187);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v187;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v188 = 2 * *(this + 4);
          if (v188 <= 0x20)
          {
            v188 = 32;
          }

          *(this + 4) = v188;
          v189 = v188 + 8;
          v190 = this;
          v191 = malloc_type_malloc(v188 + 8, 0x2004093837F09uLL);
          this = v190;
          v192 = v191 + v189;
          *v191 = *(v190 + 3);
          v6 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v190 + 2) = v192;
          *(v190 + 3) = v191;
        }

        *(this + 1) = v6 + 24;
        v15 = 251;
        goto LABEL_299;
      case 'J':
        v135 = *(this + 24);
        if (!v135)
        {
          return 0;
        }

        v136 = v135 - 1;
        v9 = *(*(this + 11) + 8 * v136);
        *(this + 24) = v136;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v137 = 2 * *(this + 4);
          if (v137 <= 0x20)
          {
            v137 = 32;
          }

          *(this + 4) = v137;
          v138 = v137 + 8;
          v139 = this;
          v140 = malloc_type_malloc(v137 + 8, 0x2004093837F09uLL);
          this = v139;
          v141 = v140 + v138;
          *v140 = *(v139 + 3);
          v6 = (v140 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v139 + 2) = v141;
          *(v139 + 3) = v140;
        }

        *(this + 1) = v6 + 24;
        v15 = 328;
        goto LABEL_299;
      case 'K':
        v156 = *(this + 24);
        if (!v156)
        {
          return 0;
        }

        v157 = v156 - 1;
        v9 = *(*(this + 11) + 8 * v157);
        *(this + 24) = v157;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v158 = 2 * *(this + 4);
          if (v158 <= 0x20)
          {
            v158 = 32;
          }

          *(this + 4) = v158;
          v159 = v158 + 8;
          v160 = this;
          v161 = malloc_type_malloc(v158 + 8, 0x2004093837F09uLL);
          this = v160;
          v162 = v161 + v159;
          *v161 = *(v160 + 3);
          v6 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v160 + 2) = v162;
          *(v160 + 3) = v161;
        }

        *(this + 1) = v6 + 24;
        v15 = 326;
        goto LABEL_299;
      case 'L':
        v101 = *(this + 24);
        if (!v101)
        {
          return 0;
        }

        v102 = v101 - 1;
        v9 = *(*(this + 11) + 8 * v102);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v102;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v103 = 2 * *(this + 4);
          if (v103 <= 0x20)
          {
            v103 = 32;
          }

          *(this + 4) = v103;
          v104 = v103 + 8;
          v105 = this;
          v106 = malloc_type_malloc(v103 + 8, 0x2004093837F09uLL);
          this = v105;
          v107 = v106 + v104;
          *v106 = *(v105 + 3);
          v6 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v105 + 2) = v107;
          *(v105 + 3) = v106;
        }

        *(this + 1) = v6 + 24;
        v15 = 256;
        goto LABEL_299;
      case 'M':
        v142 = *(this + 24);
        if (!v142)
        {
          return 0;
        }

        v143 = v142 - 1;
        v9 = *(*(this + 11) + 8 * v143);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v143;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v144 = 2 * *(this + 4);
          if (v144 <= 0x20)
          {
            v144 = 32;
          }

          *(this + 4) = v144;
          v145 = v144 + 8;
          v146 = this;
          v147 = malloc_type_malloc(v144 + 8, 0x2004093837F09uLL);
          this = v146;
          v148 = v147 + v145;
          *v147 = *(v146 + 3);
          v6 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v146 + 2) = v148;
          *(v146 + 3) = v147;
        }

        *(this + 1) = v6 + 24;
        v15 = 324;
        goto LABEL_299;
      case 'N':
        v228 = *(this + 24);
        if (!v228)
        {
          return 0;
        }

        v229 = v228 - 1;
        v9 = *(*(this + 11) + 8 * v229);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v229;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v230 = 2 * *(this + 4);
          if (v230 <= 0x20)
          {
            v230 = 32;
          }

          *(this + 4) = v230;
          v231 = v230 + 8;
          v232 = this;
          v233 = malloc_type_malloc(v230 + 8, 0x2004093837F09uLL);
          this = v232;
          v234 = v233 + v231;
          *v233 = *(v232 + 3);
          v6 = (v233 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v232 + 2) = v234;
          *(v232 + 3) = v233;
        }

        *(this + 1) = v6 + 24;
        v15 = 327;
        goto LABEL_299;
      case 'P':
        v207 = *(this + 24);
        if (!v207)
        {
          return 0;
        }

        v208 = v207 - 1;
        v9 = *(*(this + 11) + 8 * v208);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v208;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v209 = 2 * *(this + 4);
          if (v209 <= 0x20)
          {
            v209 = 32;
          }

          *(this + 4) = v209;
          v210 = v209 + 8;
          v211 = this;
          v212 = malloc_type_malloc(v209 + 8, 0x2004093837F09uLL);
          this = v211;
          v213 = v212 + v210;
          *v212 = *(v211 + 3);
          v6 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v211 + 2) = v213;
          *(v211 + 3) = v212;
        }

        *(this + 1) = v6 + 24;
        v15 = 99;
        goto LABEL_299;
      case 'Q':
        v108 = *(this + 24);
        if (!v108)
        {
          return 0;
        }

        v109 = v108 - 1;
        v9 = *(*(this + 11) + 8 * v109);
        *(this + 24) = v109;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v110 = 2 * *(this + 4);
          if (v110 <= 0x20)
          {
            v110 = 32;
          }

          *(this + 4) = v110;
          v111 = v110 + 8;
          v112 = this;
          v113 = malloc_type_malloc(v110 + 8, 0x2004093837F09uLL);
          this = v112;
          v114 = v113 + v111;
          *v113 = *(v112 + 3);
          v6 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v112 + 2) = v114;
          *(v112 + 3) = v113;
        }

        *(this + 1) = v6 + 24;
        v15 = 316;
        goto LABEL_299;
      case 'R':
        v242 = *(this + 24);
        if (!v242)
        {
          return 0;
        }

        v243 = v242 - 1;
        v9 = *(*(this + 11) + 8 * v243);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v243;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v244 = 2 * *(this + 4);
          if (v244 <= 0x20)
          {
            v244 = 32;
          }

          *(this + 4) = v244;
          v245 = v244 + 8;
          v246 = this;
          v247 = malloc_type_malloc(v244 + 8, 0x2004093837F09uLL);
          this = v246;
          v248 = v247 + v245;
          *v247 = *(v246 + 3);
          v6 = (v247 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v246 + 2) = v248;
          *(v246 + 3) = v247;
        }

        *(this + 1) = v6 + 24;
        v15 = 255;
        goto LABEL_299;
      case 'S':
        v249 = this;
        v250 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
        if (!v250)
        {
          return 0;
        }

        v9 = v250;
        v18 = v249;
        v6 = (*(v249 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(v249 + 1) = v6;
        if (!v6 || v6 + 24 > *(v249 + 2))
        {
          v251 = 2 * *(v249 + 4);
          if (v251 <= 0x20)
          {
            v251 = 32;
          }

          *(v249 + 4) = v251;
          v252 = v251 + 8;
          v253 = malloc_type_malloc(v251 + 8, 0x2004093837F09uLL);
          v18 = v249;
          v254 = v253 + v252;
          *v253 = *(v249 + 3);
          v6 = (v253 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v249 + 2) = v254;
          *(v249 + 3) = v253;
        }

        *(v18 + 1) = v6 + 24;
        v23 = 203;
        goto LABEL_281;
      case 'U':
        v59 = *(this + 24);
        if (!v59)
        {
          return 0;
        }

        v60 = v59 - 1;
        v9 = *(*(this + 11) + 8 * v60);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v60;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v61 = 2 * *(this + 4);
          if (v61 <= 0x20)
          {
            v61 = 32;
          }

          *(this + 4) = v61;
          v62 = v61 + 8;
          v63 = this;
          v64 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
          this = v63;
          v65 = v64 + v62;
          *v64 = *(v63 + 3);
          v6 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v63 + 2) = v65;
          *(v63 + 3) = v64;
        }

        *(this + 1) = v6 + 24;
        v15 = 158;
        goto LABEL_299;
      case 'V':
        v255 = *(this + 24);
        if (!v255)
        {
          return 0;
        }

        v256 = v255 - 1;
        v9 = *(*(this + 11) + 8 * (v255 - 1));
        if (*(v9 + 8) != 243)
        {
          v257 = this;
          v258 = *(v9 + 8);
          isContext = swift::Demangle::__runtime::isContext();
          this = v257;
          if (!isContext)
          {
            return 0;
          }
        }

        *(this + 24) = v256;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v260 = 2 * *(this + 4);
          if (v260 <= 0x20)
          {
            v260 = 32;
          }

          *(this + 4) = v260;
          v261 = v260 + 8;
          v262 = this;
          v263 = malloc_type_malloc(v260 + 8, 0x2004093837F09uLL);
          this = v262;
          v264 = v263 + v261;
          *v263 = *(v262 + 3);
          v6 = (v263 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v262 + 2) = v264;
          *(v262 + 3) = v263;
        }

        *(this + 1) = v6 + 24;
        v15 = 187;
        goto LABEL_299;
      case 'X':

        return swift::Demangle::__runtime::Demangler::demanglePrivateContextDescriptor(this, a2, a3, a4, a5);
      case 'a':
        v193 = *(this + 24);
        if (!v193)
        {
          return 0;
        }

        v194 = v193 - 1;
        v9 = *(*(this + 11) + 8 * v194);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v194;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v195 = 2 * *(this + 4);
          if (v195 <= 0x20)
          {
            v195 = 32;
          }

          *(this + 4) = v195;
          v196 = v195 + 8;
          v197 = this;
          v198 = malloc_type_malloc(v195 + 8, 0x2004093837F09uLL);
          this = v197;
          v199 = v198 + v196;
          *v198 = *(v197 + 3);
          v6 = (v198 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v197 + 2) = v199;
          *(v197 + 3) = v198;
        }

        *(this + 1) = v6 + 24;
        v15 = 249;
        goto LABEL_299;
      case 'b':
        v52 = *(this + 24);
        if (!v52)
        {
          return 0;
        }

        v53 = v52 - 1;
        v9 = *(*(this + 11) + 8 * v53);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v53;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v54 = 2 * *(this + 4);
          if (v54 <= 0x20)
          {
            v54 = 32;
          }

          *(this + 4) = v54;
          v55 = v54 + 8;
          v56 = this;
          v57 = malloc_type_malloc(v54 + 8, 0x2004093837F09uLL);
          this = v56;
          v58 = v57 + v55;
          *v57 = *(v56 + 3);
          v6 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v56 + 2) = v58;
          *(v56 + 3) = v57;
        }

        *(this + 1) = v6 + 24;
        v15 = 325;
        goto LABEL_299;
      case 'c':
        v74 = this;
        v75 = swift::Demangle::__runtime::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
        if (!v75)
        {
          return 0;
        }

        v9 = v75;
        v18 = v74;
        v6 = (*(v74 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(v74 + 1) = v6;
        if (!v6 || v6 + 24 > *(v74 + 2))
        {
          v76 = 2 * *(v74 + 4);
          if (v76 <= 0x20)
          {
            v76 = 32;
          }

          *(v74 + 4) = v76;
          v77 = v76 + 8;
          v78 = malloc_type_malloc(v76 + 8, 0x2004093837F09uLL);
          v18 = v74;
          v79 = v78 + v77;
          *v78 = *(v74 + 3);
          v6 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v74 + 2) = v79;
          *(v74 + 3) = v78;
        }

        *(v18 + 1) = v6 + 24;
        v23 = 198;
        goto LABEL_281;
      case 'f':
        v149 = *(this + 24);
        if (!v149)
        {
          return 0;
        }

        v150 = v149 - 1;
        v9 = *(*(this + 11) + 8 * v150);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v150;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v151 = 2 * *(this + 4);
          if (v151 <= 0x20)
          {
            v151 = 32;
          }

          *(this + 4) = v151;
          v152 = v151 + 8;
          v153 = this;
          v154 = malloc_type_malloc(v151 + 8, 0x2004093837F09uLL);
          this = v153;
          v155 = v154 + v152;
          *v154 = *(v153 + 3);
          v6 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v153 + 2) = v155;
          *(v153 + 3) = v154;
        }

        *(this + 1) = v6 + 24;
        v15 = 77;
        goto LABEL_299;
      case 'g':
        v94 = *(this + 24);
        if (!v94)
        {
          return 0;
        }

        v95 = v94 - 1;
        v9 = *(*(this + 11) + 8 * v95);
        *(this + 24) = v95;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v96 = 2 * *(this + 4);
          if (v96 <= 0x20)
          {
            v96 = 32;
          }

          *(this + 4) = v96;
          v97 = v96 + 8;
          v98 = this;
          v99 = malloc_type_malloc(v96 + 8, 0x2004093837F09uLL);
          this = v98;
          v100 = v99 + v97;
          *v99 = *(v98 + 3);
          v6 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v98 + 2) = v100;
          *(v98 + 3) = v99;
        }

        *(this + 1) = v6 + 24;
        v15 = 318;
        goto LABEL_299;
      case 'h':
        v214 = *(this + 24);
        if (!v214)
        {
          return 0;
        }

        v215 = v214 - 1;
        v9 = *(*(this + 11) + 8 * v215);
        *(this + 24) = v215;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v216 = 2 * *(this + 4);
          if (v216 <= 0x20)
          {
            v216 = 32;
          }

          *(this + 4) = v216;
          v217 = v216 + 8;
          v218 = this;
          v219 = malloc_type_malloc(v216 + 8, 0x2004093837F09uLL);
          this = v218;
          v220 = v219 + v217;
          *v219 = *(v218 + 3);
          v6 = (v219 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v218 + 2) = v220;
          *(v218 + 3) = v219;
        }

        *(this + 1) = v6 + 24;
        v15 = 319;
        goto LABEL_299;
      case 'i':
        v80 = *(this + 24);
        if (!v80)
        {
          return 0;
        }

        v81 = v80 - 1;
        v9 = *(*(this + 11) + 8 * v81);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v81;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v82 = 2 * *(this + 4);
          if (v82 <= 0x20)
          {
            v82 = 32;
          }

          *(this + 4) = v82;
          v83 = v82 + 8;
          v84 = this;
          v85 = malloc_type_malloc(v82 + 8, 0x2004093837F09uLL);
          this = v84;
          v86 = v85 + v83;
          *v85 = *(v84 + 3);
          v6 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v84 + 2) = v86;
          *(v84 + 3) = v85;
        }

        *(this + 1) = v6 + 24;
        v15 = 252;
        goto LABEL_299;
      case 'j':
        v45 = *(this + 24);
        if (!v45)
        {
          return 0;
        }

        v46 = v45 - 1;
        v9 = *(*(this + 11) + 8 * v46);
        *(this + 24) = v46;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v47 = 2 * *(this + 4);
          if (v47 <= 0x20)
          {
            v47 = 32;
          }

          *(this + 4) = v47;
          v48 = v47 + 8;
          v49 = this;
          v50 = malloc_type_malloc(v47 + 8, 0x2004093837F09uLL);
          this = v49;
          v51 = v50 + v48;
          *v50 = *(v49 + 3);
          v6 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v49 + 2) = v51;
          *(v49 + 3) = v50;
        }

        *(this + 1) = v6 + 24;
        v15 = 320;
        goto LABEL_299;
      case 'k':
        v24 = *(this + 24);
        if (!v24)
        {
          return 0;
        }

        v25 = v24 - 1;
        v9 = *(*(this + 11) + 8 * v25);
        *(this + 24) = v25;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v26 = 2 * *(this + 4);
          if (v26 <= 0x20)
          {
            v26 = 32;
          }

          *(this + 4) = v26;
          v27 = v26 + 8;
          v28 = this;
          v29 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
          this = v28;
          v30 = v29 + v27;
          *v29 = *(v28 + 3);
          v6 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v28 + 2) = v30;
          *(v28 + 3) = v29;
        }

        *(this + 1) = v6 + 24;
        v15 = 321;
        goto LABEL_299;
      case 'l':
        v87 = *(this + 24);
        if (!v87)
        {
          return 0;
        }

        v88 = v87 - 1;
        v9 = *(*(this + 11) + 8 * v88);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v88;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v89 = 2 * *(this + 4);
          if (v89 <= 0x20)
          {
            v89 = 32;
          }

          *(this + 4) = v89;
          v90 = v89 + 8;
          v91 = this;
          v92 = malloc_type_malloc(v89 + 8, 0x2004093837F09uLL);
          this = v91;
          v93 = v92 + v90;
          *v92 = *(v91 + 3);
          v6 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v91 + 2) = v93;
          *(v91 + 3) = v92;
        }

        *(this + 1) = v6 + 24;
        v15 = 253;
        goto LABEL_299;
      case 'm':
        v115 = *(this + 24);
        if (!v115)
        {
          return 0;
        }

        v116 = v115 - 1;
        v9 = *(*(this + 11) + 8 * v116);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v116;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v117 = 2 * *(this + 4);
          if (v117 <= 0x20)
          {
            v117 = 32;
          }

          *(this + 4) = v117;
          v118 = v117 + 8;
          v119 = this;
          v120 = malloc_type_malloc(v117 + 8, 0x2004093837F09uLL);
          this = v119;
          v121 = v120 + v118;
          *v120 = *(v119 + 3);
          v6 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v119 + 2) = v121;
          *(v119 + 3) = v120;
        }

        *(this + 1) = v6 + 24;
        v15 = 156;
        goto LABEL_299;
      case 'n':
        v221 = *(this + 24);
        if (!v221)
        {
          return 0;
        }

        v222 = v221 - 1;
        v9 = *(*(this + 11) + 8 * v222);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v222;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v223 = 2 * *(this + 4);
          if (v223 <= 0x20)
          {
            v223 = 32;
          }

          *(this + 4) = v223;
          v224 = v223 + 8;
          v225 = this;
          v226 = malloc_type_malloc(v223 + 8, 0x2004093837F09uLL);
          this = v225;
          v227 = v226 + v224;
          *v226 = *(v225 + 3);
          v6 = (v226 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v225 + 2) = v227;
          *(v225 + 3) = v226;
        }

        *(this + 1) = v6 + 24;
        v15 = 168;
        goto LABEL_299;
      case 'o':
        v122 = *(this + 24);
        if (!v122)
        {
          return 0;
        }

        v123 = v122 - 1;
        v9 = *(*(this + 11) + 8 * v123);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v123;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v124 = 2 * *(this + 4);
          if (v124 <= 0x20)
          {
            v124 = 32;
          }

          *(this + 4) = v124;
          v125 = v124 + 8;
          v126 = this;
          v127 = malloc_type_malloc(v124 + 8, 0x2004093837F09uLL);
          this = v126;
          v128 = v127 + v125;
          *v127 = *(v126 + 3);
          v6 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v126 + 2) = v128;
          *(v126 + 3) = v127;
        }

        *(this + 1) = v6 + 24;
        v15 = 26;
        goto LABEL_299;
      case 'p':
        v16 = this;
        v17 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
        if (!v17)
        {
          return 0;
        }

        v9 = v17;
        v18 = v16;
        v6 = (*(v16 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(v16 + 1) = v6;
        if (!v6 || v6 + 24 > *(v16 + 2))
        {
          v19 = 2 * *(v16 + 4);
          if (v19 <= 0x20)
          {
            v19 = 32;
          }

          *(v16 + 4) = v19;
          v20 = v19 + 8;
          v21 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
          v18 = v16;
          v22 = v21 + v20;
          *v21 = *(v16 + 3);
          v6 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v16 + 2) = v22;
          *(v16 + 3) = v21;
        }

        *(v18 + 1) = v6 + 24;
        v23 = 196;
LABEL_281:
        *(v6 + 16) = v23;
        *(v6 + 18) = 0;
        goto LABEL_300;
      case 'q':
        v66 = *(this + 24);
        if (!v66)
        {
          return 0;
        }

        v67 = v66 - 1;
        v9 = *(*(this + 11) + 8 * v67);
        *(this + 24) = v67;
        if (!v9)
        {
          return 0;
        }

        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v68 = 2 * *(this + 4);
          if (v68 <= 0x20)
          {
            v68 = 32;
          }

          *(this + 4) = v68;
          v69 = v68 + 8;
          v70 = this;
          v71 = malloc_type_malloc(v68 + 8, 0x2004093837F09uLL);
          this = v70;
          v72 = v71 + v69;
          *v71 = *(v70 + 3);
          v6 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v70 + 2) = v72;
          *(v70 + 3) = v71;
        }

        *(this + 1) = v6 + 24;
        v15 = 349;
        goto LABEL_299;
      case 'r':
        v235 = *(this + 24);
        if (!v235)
        {
          return 0;
        }

        v236 = v235 - 1;
        v9 = *(*(this + 11) + 8 * v236);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v236;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v237 = 2 * *(this + 4);
          if (v237 <= 0x20)
          {
            v237 = 32;
          }

          *(this + 4) = v237;
          v238 = v237 + 8;
          v239 = this;
          v240 = malloc_type_malloc(v237 + 8, 0x2004093837F09uLL);
          this = v239;
          v241 = v240 + v238;
          *v240 = *(v239 + 3);
          v6 = (v240 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v239 + 2) = v241;
          *(v239 + 3) = v240;
        }

        *(this + 1) = v6 + 24;
        v15 = 250;
        goto LABEL_299;
      case 's':
        v265 = *(this + 24);
        if (!v265)
        {
          return 0;
        }

        v266 = v265 - 1;
        v9 = *(*(this + 11) + 8 * v266);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v266;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v267 = 2 * *(this + 4);
          if (v267 <= 0x20)
          {
            v267 = 32;
          }

          *(this + 4) = v267;
          v268 = v267 + 8;
          v269 = this;
          v270 = malloc_type_malloc(v267 + 8, 0x2004093837F09uLL);
          this = v269;
          v271 = v270 + v268;
          *v270 = *(v269 + 3);
          v6 = (v270 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v269 + 2) = v271;
          *(v269 + 3) = v270;
        }

        *(this + 1) = v6 + 24;
        v15 = 159;
        goto LABEL_299;
      case 't':
        v38 = *(this + 24);
        if (!v38)
        {
          return 0;
        }

        v39 = v38 - 1;
        v9 = *(*(this + 11) + 8 * v39);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v39;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v40 = 2 * *(this + 4);
          if (v40 <= 0x20)
          {
            v40 = 32;
          }

          *(this + 4) = v40;
          v41 = v40 + 8;
          v42 = this;
          v43 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
          this = v42;
          v44 = v43 + v41;
          *v43 = *(v42 + 3);
          v6 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v42 + 2) = v44;
          *(v42 + 3) = v43;
        }

        *(this + 1) = v6 + 24;
        v15 = 160;
        goto LABEL_299;
      case 'u':
        v200 = *(this + 24);
        if (!v200)
        {
          return 0;
        }

        v201 = v200 - 1;
        v9 = *(*(this + 11) + 8 * v201);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v201;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v202 = 2 * *(this + 4);
          if (v202 <= 0x20)
          {
            v202 = 32;
          }

          *(this + 4) = v202;
          v203 = v202 + 8;
          v204 = this;
          v205 = malloc_type_malloc(v202 + 8, 0x2004093837F09uLL);
          this = v204;
          v206 = v205 + v203;
          *v205 = *(v204 + 3);
          v6 = (v205 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v204 + 2) = v206;
          *(v204 + 3) = v205;
        }

        *(this + 1) = v6 + 24;
        v15 = 157;
        goto LABEL_299;
      case 'z':
        v31 = *(this + 24);
        if (!v31)
        {
          return 0;
        }

        v32 = v31 - 1;
        v9 = *(*(this + 11) + 8 * v32);
        if (*(v9 + 8) != 243)
        {
          return 0;
        }

        *(this + 24) = v32;
        v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v6;
        if (!v6 || v6 + 24 > *(this + 2))
        {
          v33 = 2 * *(this + 4);
          if (v33 <= 0x20)
          {
            v33 = 32;
          }

          *(this + 4) = v33;
          v34 = v33 + 8;
          v35 = this;
          v36 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
          this = v35;
          v37 = v36 + v34;
          *v36 = *(v35 + 3);
          v6 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v35 + 2) = v37;
          *(v35 + 3) = v36;
        }

        *(this + 1) = v6 + 24;
        v15 = 332;
LABEL_299:
        *(v6 + 16) = v15;
        *(v6 + 18) = 0;
        v18 = this;
LABEL_300:
        swift::Demangle::__runtime::Node::addChild(v6, v9, v18, a4, a5);
        return v6;
      default:
        return v6;
    }
  }

  return result;
}

char *swift::Demangle::__runtime::Demangler::demangleArchetype(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v6 >= v5)
  {
    return 0;
  }

  result = 0;
  v9 = v6 + 1;
  *(this + 9) = v6 + 1;
  v10 = *(this + 7);
  switch(*(v10 + v6))
  {
    case 'O':
      result = swift::Demangle::__runtime::Demangler::popContext(this, a2, a3, a4, a5);
      if (result)
      {
        v11 = result;
        v12 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v12;
        if (!v12 || v12 + 24 > *(this + 2))
        {
          v13 = 2 * *(this + 4);
          if (v13 <= 0x20)
          {
            v13 = 32;
          }

          *(this + 4) = v13;
          v14 = v13 + 8;
          v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
          *v15 = *(this + 3);
          v12 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v15 + v14;
          *(this + 3) = v15;
        }

        *(this + 1) = v12 + 24;
        *(v12 + 16) = 323;
        *(v12 + 18) = 0;
        v16 = v12;
        v17 = v12;
        goto LABEL_54;
      }

      return result;
    case 'P':

      return swift::Demangle::__runtime::Demangler::popPack(this, a2, a3, a4, a5);
    case 'R':
      if (v9 >= v5)
      {
        return 0;
      }

      v27 = *(v10 + v9);
      if (v27 == 95)
      {
        v28 = 0;
        *(this + 9) = v6 + 2;
LABEL_22:
        v29 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v29;
        if (!v29 || v29 + 24 > *(this + 2))
        {
          v30 = 2 * *(this + 4);
          if (v30 <= 0x20)
          {
            v30 = 32;
          }

          *(this + 4) = v30;
          v31 = v30 + 8;
          v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
          *v32 = *(this + 3);
          v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v32 + v31;
          *(this + 3) = v32;
        }

        *(this + 1) = v29 + 24;
        *(v29 + 16) = 355;
        *(v29 + 18) = 4;
        *v29 = v28;
        v33 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v33;
        if (!v33 || v33 + 24 > *(this + 2))
        {
          v34 = 2 * *(this + 4);
          if (v34 <= 0x20)
          {
            v34 = 32;
          }

          *(this + 4) = v34;
          v35 = v34 + 8;
          v36 = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
          *v36 = *(this + 3);
          v33 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v36 + v35;
          *(this + 3) = v36;
        }

        *(this + 1) = v33 + 24;
        *(v33 + 16) = 322;
        *(v33 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v33, v29, this, a4, a5);
        v39 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v39;
        if (!v39 || v39 + 24 > *(this + 2))
        {
          v40 = 2 * *(this + 4);
          if (v40 <= 0x20)
          {
            v40 = 32;
          }

          *(this + 4) = v40;
          v41 = v40 + 8;
          v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
          *v42 = *(this + 3);
          v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
          v43 = v42 + v41;
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if ((v27 - 48) > 9)
      {
        return 0;
      }

      v105 = 0;
      while (1)
      {
        v106 = *(v10 + v9);
        if ((v106 - 48) > 9)
        {
          break;
        }

        v107 = v106 + 10 * v105 - 48;
        if (v107 < v105)
        {
          return 0;
        }

        result = 0;
        *(this + 9) = ++v9;
        v105 = v107;
        if (v5 == v9)
        {
          return result;
        }
      }

      result = 0;
      if ((v105 & 0x80000000) == 0 && v9 < v5 && v106 == 95)
      {
        *(this + 9) = v9 + 1;
        v28 = (v105 + 1);
        goto LABEL_22;
      }

      break;
    case 'S':

      return swift::Demangle::__runtime::Demangler::popSILPack(this, a2, a3, a4, a5);
    case 'X':
      v58 = this;
      v57 = 0;
      goto LABEL_72;
    case 'Y':
      DependentGenericParamType = swift::Demangle::__runtime::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
      goto LABEL_59;
    case 'Z':
      DependentGenericParamType = swift::Demangle::__runtime::Demangler::getDependentGenericParamType(this, 0, 0, a4, a5);
LABEL_59:
      v57 = DependentGenericParamType;
      v58 = this;
LABEL_72:
      result = swift::Demangle::__runtime::Demangler::demangleAssociatedTypeCompound(v58, v57, a3, a4, a5);
      v139 = result;
      if (result)
      {
        goto LABEL_73;
      }

      return result;
    case 'a':
      v59 = *(this + 24);
      if (!v59)
      {
        return 0;
      }

      v60 = v59 - 1;
      v61 = *(this + 11);
      v62 = *(v61 + 8 * (v59 - 1));
      if (*(v62 + 8) == 103)
      {
        *(this + 24) = v60;
        if (v59 == 1)
        {
          return 0;
        }
      }

      else
      {
        v62 = 0;
        v60 = *(this + 24);
      }

      v89 = v60 - 1;
      v90 = *(v61 + 8 * v89);
      if (*(v90 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v89;
      v91 = *(v90 + 18);
      if (v91 == 1)
      {
        goto LABEL_115;
      }

      if (v91 != 5 || *(v90 + 2) != 1)
      {
        return 0;
      }

      v90 = *v90;
LABEL_115:
      if (!v62)
      {
        return 0;
      }

      v92 = *v90;
      if (!*v90)
      {
        return 0;
      }

      v93 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v93;
      if (!v93 || v93 + 24 > *(this + 2))
      {
        v94 = 2 * *(this + 4);
        if (v94 <= 0x20)
        {
          v94 = 32;
        }

        *(this + 4) = v94;
        v95 = v94 + 8;
        v96 = malloc_type_malloc(v94 + 8, 0x2004093837F09uLL);
        *v96 = *(this + 3);
        v93 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v96 + v95;
        *(this + 3) = v96;
      }

      *(this + 1) = v93 + 24;
      *(v93 + 16) = 5;
      *(v93 + 18) = 0;
      swift::Demangle::__runtime::Node::addChild(v93, v92, this, a4, a5);
      swift::Demangle::__runtime::Node::addChild(v93, v62, this, v97, v98);
      v101 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v101;
      if (!v101 || v101 + 24 > *(this + 2))
      {
        v102 = 2 * *(this + 4);
        if (v102 <= 0x20)
        {
          v102 = 32;
        }

        *(this + 4) = v102;
        v103 = v102 + 8;
        v104 = malloc_type_malloc(v102 + 8, 0x2004093837F09uLL);
        *v104 = *(this + 3);
        v101 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v104 + v103;
        *(this + 3) = v104;
      }

      *(this + 1) = v101 + 24;
      *(v101 + 16) = 243;
      *(v101 + 18) = 0;
      v63 = v101;
      swift::Demangle::__runtime::Node::addChild(v101, v93, this, v99, v100);
      v139 = v63;
LABEL_74:
      v64 = (this + 104);
      v65 = &v139;
      goto LABEL_75;
    case 'e':
      v68 = *(this + 24);
      if (!v68)
      {
        goto LABEL_86;
      }

      v69 = v68 - 1;
      v70 = *(*(this + 11) + 8 * (v68 - 1));
      if (*(v70 + 8) != 243)
      {
        goto LABEL_86;
      }

      *(this + 24) = v69;
      v71 = *(v70 + 18);
      if (v71 == 1)
      {
        goto LABEL_85;
      }

      if (v71 == 5 && *(v70 + 2) == 1)
      {
        v70 = *v70;
LABEL_85:
        v72 = *v70;
      }

      else
      {
LABEL_86:
        v72 = 0;
      }

      if (v9 >= v5)
      {
        return 0;
      }

      v73 = *(v10 + v9);
      if (v73 == 95)
      {
        v74 = 0;
        *(this + 9) = v6 + 2;
      }

      else
      {
        if ((v73 - 48) > 9)
        {
          return 0;
        }

        v124 = 0;
        while (1)
        {
          v125 = *(v10 + v9);
          if ((v125 - 48) > 9)
          {
            break;
          }

          v126 = v125 + 10 * v124 - 48;
          if (v126 < v124)
          {
            return 0;
          }

          result = 0;
          *(this + 9) = ++v9;
          v124 = v126;
          if (v5 == v9)
          {
            return result;
          }
        }

        result = 0;
        if (v124 < 0 || v9 >= v5 || v125 != 95)
        {
          return result;
        }

        *(this + 9) = v9 + 1;
        v74 = (v124 + 1);
      }

      v75 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v75;
      if (!v75 || v75 + 24 > *(this + 2))
      {
        v76 = 2 * *(this + 4);
        if (v76 <= 0x20)
        {
          v76 = 32;
        }

        *(this + 4) = v76;
        v77 = v76 + 8;
        v78 = malloc_type_malloc(v76 + 8, 0x2004093837F09uLL);
        *v78 = *(this + 3);
        v75 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v78 + v77;
        *(this + 3) = v78;
      }

      *(this + 1) = v75 + 24;
      *(v75 + 16) = 242;
      *(v75 + 18) = 4;
      *v75 = v74;
      if (v72)
      {
        v79 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v79;
        if (!v79 || v79 + 24 > *(this + 2))
        {
          v80 = 2 * *(this + 4);
          if (v80 <= 0x20)
          {
            v80 = 32;
          }

          *(this + 4) = v80;
          v81 = v80 + 8;
          v82 = malloc_type_malloc(v80 + 8, 0x2004093837F09uLL);
          *v82 = *(this + 3);
          v79 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v82 + v81;
          *(this + 3) = v82;
        }

        *(this + 1) = v79 + 24;
        *(v79 + 16) = 241;
        *(v79 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v79, v72, this, a4, a5);
        swift::Demangle::__runtime::Node::addChild(v79, v75, this, v83, v84);
        v85 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v85;
        if (!v85 || v85 + 24 > *(this + 2))
        {
          v86 = 2 * *(this + 4);
          if (v86 <= 0x20)
          {
            v86 = 32;
          }

          *(this + 4) = v86;
          v87 = v86 + 8;
          v88 = malloc_type_malloc(v86 + 8, 0x2004093837F09uLL);
          *v88 = *(this + 3);
          v85 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v88 + v87;
          *(this + 3) = v88;
        }

        *(this + 1) = v85 + 24;
        *(v85 + 16) = 243;
        *(v85 + 18) = 0;
        v44 = v85;
        v45 = v85;
        v46 = v79;
        goto LABEL_107;
      }

      return 0;
    case 'o':
      if (v9 >= v5)
      {
        goto LABEL_139;
      }

      v66 = *(v10 + v9);
      if (v66 == 95)
      {
        v67 = 0;
        *(this + 9) = v6 + 2;
        goto LABEL_140;
      }

      if ((v66 - 48) > 9)
      {
        goto LABEL_139;
      }

      v108 = 0;
      while (1)
      {
        v109 = *(v10 + v9);
        if ((v109 - 48) > 9)
        {
          break;
        }

        v110 = v109 + 10 * v108 - 48;
        if (v110 >= v108)
        {
          *(this + 9) = ++v9;
          v108 = v110;
          if (v5 != v9)
          {
            continue;
          }
        }

LABEL_139:
        v67 = -1000;
        goto LABEL_140;
      }

      v67 = -1000;
      if ((v108 & 0x80000000) == 0 && v9 < v5 && v109 == 95)
      {
        *(this + 9) = v9 + 1;
        v67 = (v108 + 1);
      }

LABEL_140:
      v139 = 0;
      v140 = 0;
      v138 = 0;
      if (!swift::Demangle::__runtime::Demangler::demangleBoundGenerics(this, &v139, &v138, a4, a5))
      {
        return 0;
      }

      v111 = *(this + 24);
      if (!v111)
      {
        return 0;
      }

      v112 = v111 - 1;
      v113 = *(*(this + 11) + 8 * v112);
      *(this + 24) = v112;
      if (!v113)
      {
        return 0;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(this, 104, v67);
      v116 = swift::Demangle::__runtime::Demangler::createWithChildren(this, 314, v113, Node, v115);
      v119 = swift::Demangle::__runtime::NodeFactory::createNode(this, 246);
      if (v140)
      {
        v120 = 8 * v140 - 8;
        do
        {
          swift::Demangle::__runtime::Node::addChild(v119, *&v139[v120], this, v117, v118);
          v120 -= 8;
        }

        while (v120 != -8);
      }

      swift::Demangle::__runtime::Node::addChild(v116, v119, this, v117, v118);
      if (v138)
      {
        swift::Demangle::__runtime::Node::addChild(v116, v138, this, v122, v123);
      }

      result = swift::Demangle::__runtime::Demangler::createType(this, v116, v121, v122, v123);
      v141 = result;
      if (result)
      {
        v63 = result;
        v64 = (this + 104);
        v65 = &v141;
LABEL_75:
        swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(v64, v65, this);
        return v63;
      }

      return result;
    case 'p':
      v19 = *(this + 24);
      if (!v19)
      {
        return 0;
      }

      v20 = v19 - 1;
      v21 = *(this + 11);
      v22 = *(v21 + 8 * (v19 - 1));
      if (*(v22 + 8) != 243)
      {
        v24 = 0;
        v20 = *(this + 24);
        goto LABEL_158;
      }

      *(this + 24) = v20;
      v23 = *(v22 + 18);
      if (v23 == 1)
      {
        goto LABEL_17;
      }

      if (v23 == 5 && *(v22 + 2) == 1)
      {
        v22 = *v22;
LABEL_17:
        v24 = *v22;
      }

      else
      {
        v24 = 0;
      }

      if (!v20)
      {
        return 0;
      }

LABEL_158:
      v127 = v20 - 1;
      v128 = *(v21 + 8 * v127);
      if (*(v128 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v127;
      v129 = *(v128 + 18);
      if (v129 == 1)
      {
        goto LABEL_163;
      }

      if (v129 != 5 || *(v128 + 2) != 1)
      {
        return 0;
      }

      v128 = *v128;
LABEL_163:
      result = 0;
      if (v24)
      {
        v130 = *v128;
        if (*v128)
        {
          v33 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v33;
          if (!v33 || v33 + 24 > *(this + 2))
          {
            v131 = 2 * *(this + 4);
            if (v131 <= 0x20)
            {
              v131 = 32;
            }

            *(this + 4) = v131;
            v132 = v131 + 8;
            v133 = malloc_type_malloc(v131 + 8, 0x2004093837F09uLL);
            *v133 = *(this + 3);
            v33 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(this + 2) = v133 + v132;
            *(this + 3) = v133;
          }

          *(this + 1) = v33 + 24;
          *(v33 + 16) = 240;
          *(v33 + 18) = 0;
          swift::Demangle::__runtime::Node::addChild(v33, v130, this, a4, a5);
          swift::Demangle::__runtime::Node::addChild(v33, v24, this, v134, v135);
          v39 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v39;
          if (!v39 || v39 + 24 > *(this + 2))
          {
            v136 = 2 * *(this + 4);
            if (v136 <= 0x20)
            {
              v136 = 32;
            }

            *(this + 4) = v136;
            v137 = v136 + 8;
            v42 = malloc_type_malloc(v136 + 8, 0x2004093837F09uLL);
            *v42 = *(this + 3);
            v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
            v43 = v42 + v137;
LABEL_37:
            *(this + 2) = v43;
            *(this + 3) = v42;
          }

LABEL_38:
          *(this + 1) = v39 + 24;
          *(v39 + 16) = 243;
          *(v39 + 18) = 0;
          v44 = v39;
          v45 = v39;
          v46 = v33;
LABEL_107:
          swift::Demangle::__runtime::Node::addChild(v45, v46, this, v37, v38);
          return v44;
        }
      }

      return result;
    case 'r':
      v11 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v11;
      if (!v11 || (v48 = *(this + 2), v11 + 24 > v48))
      {
        v49 = 2 * *(this + 4);
        if (v49 <= 0x20)
        {
          v49 = 32;
        }

        *(this + 4) = v49;
        v50 = v49 + 8;
        v51 = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
        *v51 = *(this + 3);
        v11 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
        v48 = v51 + v50;
        *(this + 2) = v51 + v50;
        *(this + 3) = v51;
      }

      *(v11 + 16) = 322;
      *(v11 + 18) = 0;
      v52 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v52;
      if (v52)
      {
        v53 = v52 + 24 > v48;
      }

      else
      {
        v53 = 1;
      }

      if (v53)
      {
        v54 = 2 * *(this + 4);
        if (v54 <= 0x20)
        {
          v54 = 32;
        }

        *(this + 4) = v54;
        v55 = v54 + 8;
        v56 = malloc_type_malloc(v54 + 8, 0x2004093837F09uLL);
        *v56 = *(this + 3);
        v52 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v56 + v55;
        *(this + 3) = v56;
      }

      *(this + 1) = v52 + 24;
      *(v52 + 16) = 243;
      *(v52 + 18) = 0;
      v16 = v52;
      v17 = v52;
LABEL_54:
      swift::Demangle::__runtime::Node::addChild(v17, v11, this, a4, a5);
      return v16;
    case 'x':
      v25 = this;
      v26 = 0;
      goto LABEL_66;
    case 'y':
      v18 = swift::Demangle::__runtime::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
      goto LABEL_65;
    case 'z':
      v18 = swift::Demangle::__runtime::Demangler::getDependentGenericParamType(this, 0, 0, a4, a5);
LABEL_65:
      v26 = v18;
      v25 = this;
LABEL_66:
      result = swift::Demangle::__runtime::Demangler::demangleAssociatedTypeSimple(v25, v26, a3, a4, a5);
      v139 = result;
      if (!result)
      {
        return result;
      }

LABEL_73:
      v63 = result;
      goto LABEL_74;
    default:
      return result;
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleGenericRequirement(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 9);
  if (v6 < *(this + 8))
  {
    v7 = v6 + 1;
    *(this + 9) = v6 + 1;
    v8 = 0;
    v9 = 1;
    v10 = 7;
    switch(*(*(this + 7) + v6))
    {
      case 'B':
        goto LABEL_64;
      case 'C':
        goto LABEL_62;
      case 'I':
        v11 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
        if (!v11)
        {
          return 0;
        }

        v8 = v11;
        v9 = 6;
        goto LABEL_64;
      case 'L':
        v8 = 0;
        v9 = 4;
        goto LABEL_64;
      case 'M':
        v9 = 4;
        goto LABEL_62;
      case 'P':
        v9 = 0;
        goto LABEL_62;
      case 'Q':
        v8 = 0;
        v9 = 0;
        goto LABEL_64;
      case 'S':
        v8 = 0;
        v9 = 2;
LABEL_64:
        v42 = *(this + 24);
        if (v42 && (v43 = v42 - 1, v14 = *(*(this + 11) + 8 * v43), *(v14 + 16) == 243))
        {
          *(this + 24) = v43;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_74;
      case 'T':
        v9 = 2;
LABEL_62:
        v37 = swift::Demangle::__runtime::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
        v41 = swift::Demangle::__runtime::Demangler::demangleAssociatedTypeCompound(this, v37, v38, v39, v40);
        goto LABEL_71;
      case 'V':
        goto LABEL_7;
      case 'b':
        v8 = 0;
        v10 = 1;
        goto LABEL_7;
      case 'c':
        goto LABEL_70;
      case 'h':
        v8 = 0;
        v10 = 3;
        goto LABEL_7;
      case 'i':
        v36 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
        if (!v36)
        {
          return 0;
        }

        v8 = v36;
        v10 = 6;
        goto LABEL_7;
      case 'l':
        v8 = 0;
        v10 = 4;
        goto LABEL_7;
      case 'm':
        v9 = 4;
        goto LABEL_70;
      case 'p':
        v9 = 0;
        goto LABEL_70;
      case 's':
        v8 = 0;
        v10 = 2;
        goto LABEL_7;
      case 't':
        v9 = 2;
LABEL_70:
        v44 = swift::Demangle::__runtime::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
        v41 = swift::Demangle::__runtime::Demangler::demangleAssociatedTypeSimple(this, v44, v45, v46, v47);
LABEL_71:
        v14 = v41;
        v81 = v41;
        if (v41)
        {
          swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 13, &v81, this);
        }

        v8 = 0;
LABEL_74:
        v10 = v9;
        if (v9 > 3)
        {
          goto LABEL_75;
        }

        goto LABEL_14;
      case 'v':
        v8 = 0;
        v10 = 5;
        goto LABEL_7;
      default:
        goto LABEL_6;
    }
  }

  v7 = *(this + 9);
LABEL_6:
  v8 = 0;
  v10 = 0;
  *(this + 9) = v7 - 1;
LABEL_7:
  v12 = swift::Demangle::__runtime::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
  if (v12)
  {
    v13 = v12;
    v14 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v14;
    if (!v14 || v14 + 24 > *(this + 2))
    {
      v15 = 2 * *(this + 4);
      if (v15 <= 0x20)
      {
        v15 = 32;
      }

      *(this + 4) = v15;
      v16 = v15 + 8;
      v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      *v17 = *(this + 3);
      v14 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v17 + v16;
      *(this + 3) = v17;
    }

    *(this + 1) = v14 + 24;
    *(v14 + 16) = 243;
    *(v14 + 18) = 0;
    swift::Demangle::__runtime::Node::addChild(v14, v13, this, a4, a5);
    if (v10 <= 3)
    {
LABEL_14:
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(this + 24);
          if (v20)
          {
            v21 = v20 - 1;
            v8 = *(*(this + 11) + 8 * v21);
            if (*(v8 + 8) == 243)
            {
              *(this + 24) = v21;
              if (v14)
              {
                v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v19;
                if (!v19 || v19 + 24 > *(this + 2))
                {
                  v22 = 2 * *(this + 4);
                  if (v22 <= 0x20)
                  {
                    v22 = 32;
                  }

                  *(this + 4) = v22;
                  v23 = v22 + 8;
                  v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
                  *v24 = *(this + 3);
                  v19 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(this + 2) = v24 + v23;
                  *(this + 3) = v24;
                }

                *(this + 1) = v19 + 24;
                v25 = 40;
                goto LABEL_109;
              }
            }
          }
        }

        else
        {
          v31 = *(this + 24);
          if (v31)
          {
            v32 = v31 - 1;
            v8 = *(*(this + 11) + 8 * v32);
            if (*(v8 + 8) == 243)
            {
              *(this + 24) = v32;
              if (v14)
              {
                v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v19;
                if (!v19 || v19 + 24 > *(this + 2))
                {
                  v33 = 2 * *(this + 4);
                  if (v33 <= 0x20)
                  {
                    v33 = 32;
                  }

                  *(this + 4) = v33;
                  v34 = v33 + 8;
                  v35 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
                  *v35 = *(this + 3);
                  v19 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(this + 2) = v35 + v34;
                  *(this + 3) = v35;
                }

                *(this + 1) = v19 + 24;
                v25 = 41;
                goto LABEL_109;
              }
            }
          }
        }
      }

      else
      {
        if (!v10)
        {
          v18 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
          v19 = 0;
          if (!v14)
          {
            return v19;
          }

          v8 = v18;
          if (!v18)
          {
            return v19;
          }

          goto LABEL_34;
        }

        v26 = *(this + 24);
        if (v26)
        {
          v27 = v26 - 1;
          v8 = *(*(this + 11) + 8 * v27);
          if (*(v8 + 8) == 243)
          {
            *(this + 24) = v27;
            if (v14)
            {
LABEL_34:
              v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
              *(this + 1) = v19;
              if (!v19 || v19 + 24 > *(this + 2))
              {
                v28 = 2 * *(this + 4);
                if (v28 <= 0x20)
                {
                  v28 = 32;
                }

                *(this + 4) = v28;
                v29 = v28 + 8;
                v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
                *v30 = *(this + 3);
                v19 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
                *(this + 2) = v30 + v29;
                *(this + 3) = v30;
              }

              *(this + 1) = v19 + 24;
              v25 = 37;
              goto LABEL_109;
            }
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v10 <= 3)
    {
      goto LABEL_14;
    }
  }

LABEL_75:
  if (v10 > 5)
  {
    if (v10 == 6)
    {
      v19 = 0;
      if (!v8 || !v14)
      {
        return v19;
      }

      v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v19;
      if (!v19 || v19 + 24 > *(this + 2))
      {
        v52 = 2 * *(this + 4);
        if (v52 <= 0x20)
        {
          v52 = 32;
        }

        *(this + 4) = v52;
        v53 = v52 + 8;
        v54 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
        *v54 = *(this + 3);
        v19 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v54 + v53;
        *(this + 3) = v54;
      }

      *(this + 1) = v19 + 24;
      v25 = 367;
      goto LABEL_109;
    }

    v60 = *(this + 24);
    if (v60)
    {
      v61 = v60 - 1;
      v8 = *(*(this + 11) + 8 * v61);
      if (*(v8 + 8) == 243)
      {
        *(this + 24) = v61;
        if (v14)
        {
          v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v19;
          if (!v19 || v19 + 24 > *(this + 2))
          {
            v62 = 2 * *(this + 4);
            if (v62 <= 0x20)
            {
              v62 = 32;
            }

            *(this + 4) = v62;
            v63 = v62 + 8;
            v64 = malloc_type_malloc(v62 + 8, 0x2004093837F09uLL);
            *v64 = *(this + 3);
            v19 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(this + 2) = v64 + v63;
            *(this + 3) = v64;
          }

          *(this + 1) = v19 + 24;
          v25 = 370;
LABEL_109:
          *(v19 + 16) = v25;
          *(v19 + 18) = 0;
          swift::Demangle::__runtime::Node::addChild(v19, v14, this, a4, a5);
          v58 = v19;
          v59 = v8;
LABEL_110:
          swift::Demangle::__runtime::Node::addChild(v58, v59, this, a4, a5);
          return v19;
        }
      }
    }

    return 0;
  }

  if (v10 != 4)
  {
    if (v14)
    {
      v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v19;
      if (!v19 || v19 + 24 > *(this + 2))
      {
        v55 = 2 * *(this + 4);
        if (v55 <= 0x20)
        {
          v55 = 32;
        }

        *(this + 4) = v55;
        v56 = v55 + 8;
        v57 = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
        *v57 = *(this + 3);
        v19 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v57 + v56;
        *(this + 3) = v57;
      }

      *(this + 1) = v19 + 24;
      *(v19 + 16) = 43;
      *(v19 + 18) = 0;
      v58 = v19;
      v59 = v14;
      goto LABEL_110;
    }

    return 0;
  }

  v48 = *(this + 9);
  if (v48 >= *(this + 8))
  {
    return 0;
  }

  v19 = 0;
  *(this + 9) = v48 + 1;
  v49 = *(*(this + 7) + v48);
  if (v49 > 81)
  {
    if (v49 > 84)
    {
      switch(v49)
      {
        case 'U':
          v51 = "U";
          v50 = 0;
          goto LABEL_136;
        case 'e':
          v67 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
          v50 = 0;
          if (v67)
          {
            v19 = v67;
            v51 = "e";
            goto LABEL_136;
          }

          break;
        case 'm':
          v65 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
          v50 = 0;
          if (v65)
          {
            v19 = v65;
            v51 = "m";
            goto LABEL_136;
          }

          break;
        default:
          return v19;
      }
    }

    else
    {
      if (v49 == 82)
      {
        v19 = 0;
        v50 = 0;
        v51 = "R";
        goto LABEL_136;
      }

      if (v49 != 83)
      {
        v19 = 0;
        v50 = 0;
        v51 = "T";
        goto LABEL_136;
      }

      v66 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
      v50 = 0;
      if (v66)
      {
        v19 = v66;
        v51 = "S";
        goto LABEL_136;
      }
    }

    return 0;
  }

  if (v49 > 68)
  {
    switch(v49)
    {
      case 'E':
        v19 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
        if (!v19)
        {
          return v19;
        }

        v50 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
        v51 = "E";
        break;
      case 'M':
        v19 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
        if (!v19)
        {
          return v19;
        }

        v50 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
        v51 = "M";
        break;
      case 'N':
        v19 = 0;
        v50 = 0;
        v51 = "N";
        break;
      default:
        return v19;
    }
  }

  else
  {
    switch(v49)
    {
      case 'B':
        v19 = 0;
        v50 = 0;
        v51 = "B";
        break;
      case 'C':
        v19 = 0;
        v50 = 0;
        v51 = "C";
        break;
      case 'D':
        v19 = 0;
        v50 = 0;
        v51 = "D";
        break;
      default:
        return v19;
    }
  }

LABEL_136:
  v68 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v68;
  if (!v68 || v68 + 24 > *(this + 2))
  {
    v69 = 2 * *(this + 4);
    if (v69 <= 0x20)
    {
      v69 = 32;
    }

    *(this + 4) = v69;
    v70 = v69 + 8;
    v71 = malloc_type_malloc(v69 + 8, 0x2004093837F09uLL);
    *v71 = *(this + 3);
    v68 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v71 + v70;
    *(this + 3) = v71;
  }

  *(this + 1) = v68 + 24;
  *(v68 + 16) = 103;
  *(v68 + 18) = 3;
  *v68 = v51;
  *(v68 + 8) = 1;
  if (!v14)
  {
    return 0;
  }

  v72 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v72;
  if (!v72 || v72 + 24 > *(this + 2))
  {
    v73 = 2 * *(this + 4);
    if (v73 <= 0x20)
    {
      v73 = 32;
    }

    *(this + 4) = v73;
    v74 = v73 + 8;
    v75 = malloc_type_malloc(v73 + 8, 0x2004093837F09uLL);
    *v75 = *(this + 3);
    v72 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v75 + v74;
    *(this + 3) = v75;
  }

  *(this + 1) = v72 + 24;
  *(v72 + 16) = 42;
  *(v72 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v72, v14, this, a4, a5);
  swift::Demangle::__runtime::Node::addChild(v72, v68, this, v76, v77);
  if (v19)
  {
    swift::Demangle::__runtime::Node::addChild(v72, v19, this, v78, v79);
  }

  if (v50)
  {
    swift::Demangle::__runtime::Node::addChild(v72, v50, this, v78, v79);
  }

  return v72;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleStandardSubstitution(swift::Demangle::__runtime::Demangler *this)
{
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v3 >= v2)
  {
    goto LABEL_6;
  }

  *(this + 9) = v3 + 1;
  v4 = *(*(this + 7) + v3);
  if (v4 == 67)
  {
    v5 = "__C_Synthesized";
    v6 = 15;
    goto LABEL_50;
  }

  if (v4 == 103)
  {
    SwiftType = swift::Demangle::__runtime::Demangler::createSwiftType(this, 63, "Optional");
    v19 = *(this + 24);
    if (v19)
    {
      v20 = v19 - 1;
      v21 = *(*(this + 11) + 8 * v20);
      if (*(v21 + 8) == 243)
      {
        v22 = SwiftType;
        *(this + 24) = v20;
        v23 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v23;
        if (!v23 || v23 + 24 > *(this + 2))
        {
          v24 = 2 * *(this + 4);
          if (v24 <= 0x20)
          {
            v24 = 32;
          }

          *(this + 4) = v24;
          v25 = v24 + 8;
          v26 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
          *v26 = *(this + 3);
          v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v26 + v25;
          *(this + 3) = v26;
        }

        *(this + 1) = v23 + 24;
        *(v23 + 16) = 246;
        *(v23 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v23, v21, this, v17, v18);
        if (v22)
        {
          if (v23)
          {
            v29 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = v29;
            if (!v29 || v29 + 24 > *(this + 2))
            {
              v30 = 2 * *(this + 4);
              if (v30 <= 0x20)
              {
                v30 = 32;
              }

              *(this + 4) = v30;
              v31 = v30 + 8;
              v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
              *v32 = *(this + 3);
              v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v32 + v31;
              *(this + 3) = v32;
            }

            *(this + 1) = v29 + 24;
            *(v29 + 16) = 14;
            *(v29 + 18) = 0;
            swift::Demangle::__runtime::Node::addChild(v29, v22, this, v27, v28);
            swift::Demangle::__runtime::Node::addChild(v29, v23, this, v33, v34);
            StandardSubstitution = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = StandardSubstitution;
            if (!StandardSubstitution || StandardSubstitution + 24 > *(this + 2))
            {
              v37 = 2 * *(this + 4);
              if (v37 <= 0x20)
              {
                v37 = 32;
              }

              *(this + 4) = v37;
              v38 = v37 + 8;
              v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
              *v39 = *(this + 3);
              StandardSubstitution = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v39 + v38;
              *(this + 3) = v39;
            }

            *(this + 1) = StandardSubstitution + 24;
            *(StandardSubstitution + 16) = 243;
            *(StandardSubstitution + 18) = 0;
            swift::Demangle::__runtime::Node::addChild(StandardSubstitution, v29, this, v35, v36);
            v41 = StandardSubstitution;
            swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 13, &v41, this);
            return StandardSubstitution;
          }
        }
      }
    }

    return 0;
  }

  ++v3;
  if (v4 != 111)
  {
LABEL_6:
    v7 = v3 - 1;
    *(this + 9) = v7;
    if (v7 >= v2 || (v8 = *(this + 7), *(v8 + v7) - 48 > 9))
    {
LABEL_16:
      v9 = -1000;
      if (v7 >= v2)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v9 = 0;
    while (1)
    {
      v10 = *(v8 + v7);
      if ((v10 - 48) > 9)
      {
        break;
      }

      v11 = v10 + 10 * v9 - 48;
      if (v11 < v9)
      {
        goto LABEL_16;
      }

      *(this + 9) = ++v7;
      v9 = v11;
      if (v2 == v7)
      {
        v7 = v2;
        v9 = v11;
        break;
      }
    }

    if (v9 <= 2048)
    {
      if (v7 >= v2)
      {
        goto LABEL_20;
      }

LABEL_17:
      if (*(*(this + 7) + v7) == 99)
      {
        *(this + 9) = ++v7;
        v12 = 1;
        if (v7 >= v2)
        {
LABEL_19:
          v13 = 0;
LABEL_22:
          StandardSubstitution = swift::Demangle::__runtime::Demangler::createStandardSubstitution(this, v13, v12);
          if (StandardSubstitution && v9 >= 2)
          {
            v15 = v9 + 1;
            do
            {
              v41 = StandardSubstitution;
              swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back(this + 11, &v41, this);
              --v15;
            }

            while (v15 > 2);
          }

          return StandardSubstitution;
        }

LABEL_21:
        *(this + 9) = v7 + 1;
        v13 = *(*(this + 7) + v7);
        goto LABEL_22;
      }

LABEL_20:
      v12 = 0;
      if (v7 >= v2)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    return 0;
  }

  v5 = "__C";
  v6 = 3;
LABEL_50:

  return swift::Demangle::__runtime::NodeFactory::createNode(this, 163, v5, v6);
}

int8x16_t *swift::Demangle::__runtime::Demangler::demangleThunkOrSpecialization(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  if (v5 >= v6)
  {
    return 0;
  }

  Node = 0;
  v8 = v5 + 1;
  *(this + 9) = v5 + 1;
  v9 = *(this + 7);
  v10 = *(v9 + v5);
  v11 = 0;
  v12 = 211;
  switch(*(v9 + v5))
  {
    case 'A':
      v53 = 180;
      goto LABEL_173;
    case 'B':
      v82 = 95;
      goto LABEL_136;
    case 'C':
      v89 = *(this + 24);
      if (v89 && (v90 = v89 - 1, v55 = *(*(this + 11) + 8 * v90), *(v55 + 8) == 243))
      {
        *(this + 24) = v90;
      }

      else
      {
        v55 = 0;
      }

      v56 = 31;
      goto LABEL_186;
    case 'D':
      v53 = 57;
      goto LABEL_173;
    case 'E':
      v53 = 55;
      goto LABEL_173;
    case 'F':
      v53 = 56;
      goto LABEL_173;
    case 'G':
      v82 = 94;
      goto LABEL_136;
    case 'H':
    case 'h':
      if (v10 == 72)
      {
        v13 = 142;
      }

      else
      {
        v13 = 143;
      }

      if (v6 > v8 && *(v9 + v8) == 113)
      {
        *(this + 9) = v5 + 2;
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      memset(&__p, 0, sizeof(__p));
      v36 = *(this + 24);
      if (!v36)
      {
        goto LABEL_58;
      }

      v37 = v36 - 1;
      v38 = *(*(this + 11) + 8 * v37);
      *(this + 24) = v37;
      v158 = v38;
      if (!v38)
      {
        goto LABEL_58;
      }

      v39 = v38[8];
      if (v39 == 44)
      {
        goto LABEL_39;
      }

      if (v39 != 243)
      {
        goto LABEL_58;
      }

      v40 = this;
      std::vector<swift::Demangle::__runtime::Node *>::emplace_back<swift::Demangle::__runtime::Node * const&>(&__p, &v158);
      this = v40;
      v38 = 0;
      v37 = *(v40 + 24);
LABEL_39:
      if (!v37)
      {
        goto LABEL_217;
      }

      break;
    case 'I':
      v53 = 60;
      goto LABEL_173;
    case 'J':
      if (v6 <= v8)
      {
        goto LABEL_198;
      }

      v88 = *(v9 + v8);
      if (v88 == 79)
      {
        *(this + 9) = v5 + 2;

        return swift::Demangle::__runtime::Demangler::demangleAutoDiffSelfReorderingReabstractionThunk(this, a2, a3, a4, a5);
      }

      else
      {
        if (v88 == 86)
        {
          *(this + 9) = v5 + 2;
          v145 = 338;
        }

        else
        {
          if (v88 == 83)
          {
            *(this + 9) = v5 + 2;

            return swift::Demangle::__runtime::Demangler::demangleAutoDiffSubsetParametersThunk(this, a2, a3, a4, a5);
          }

LABEL_198:
          v145 = 334;
        }

        return swift::Demangle::__runtime::Demangler::demangleAutoDiffFunctionOrSimpleThunk(this, v145, a3, a4, a5);
      }

    case 'K':
    case 'k':
      if (v6 - v8 >= 2 && *(v9 + v8) == 30061)
      {
        *(this + 9) = v5 + 3;
      }

      else
      {
        v15 = this;
        swift::Demangle::__runtime::Demangler::nextIf(this, "MA", 2uLL);
        this = v15;
      }

      v16 = *(this + 9);
      if (v16 < *(this + 8) && *(*(this + 7) + v16) == 113)
      {
        *(this + 9) = v16 + 1;
      }

      v34 = *(this + 24);
      if (!v34)
      {
        return 0;
      }

      v35 = v34 - 1;
      Node = *(*(this + 11) + 8 * v35);
      *(this + 24) = v35;
      if (!Node)
      {
        return Node;
      }

      if (*(Node + 16) == 243)
      {
        operator new();
      }

      return 0;
    case 'L':
      v80 = this;
      v55 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
      this = v80;
      v56 = 279;
      goto LABEL_186;
    case 'M':
      v101 = this;
      v55 = swift::Demangle::__runtime::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
      this = v101;
      v56 = 7;
      goto LABEL_186;
    case 'N':
      v102 = this;
      v65 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
      v70 = swift::Demangle::__runtime::Demangler::popAssocTypePath(v102, v103, v104, v105, v106);
      v107 = *(v102 + 24);
      if (v107 && (v108 = v107 - 1, v73 = *(*(v102 + 11) + 8 * v108), *(v73 + 8) == 243))
      {
        *(v102 + 24) = v108;
      }

      else
      {
        v73 = 0;
      }

      v143 = v102;
      v144 = 281;
      goto LABEL_191;
    case 'O':
      v53 = 170;
      goto LABEL_173;
    case 'P':
      v77 = this;
      v78 = 89;
      goto LABEL_104;
    case 'Q':
    case 'Y':
      v17 = this;
      v18 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
      if (v10 == 81)
      {
        v19 = 342;
      }

      else
      {
        v19 = 343;
      }

      if (!v18)
      {
        return 0;
      }

      v20 = v18;
      v21 = v17;
      Node = (*(v17 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(v17 + 1) = Node;
      if (!Node || Node + 24 > *(v17 + 2))
      {
        v22 = 2 * *(v17 + 4);
        if (v22 <= 0x20)
        {
          v22 = 32;
        }

        *(v17 + 4) = v22;
        v23 = v22 + 8;
        v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
        v21 = v17;
        *v24 = *(v17 + 3);
        Node = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v17 + 2) = v24 + v23;
        *(v17 + 3) = v24;
      }

      *(v21 + 1) = Node + 24;
      *(Node + 16) = v19;
      *(Node + 18) = 0;
      v25 = Node;
      v26 = v20;
      goto LABEL_212;
    case 'R':
      goto LABEL_147;
    case 'S':
      v100 = this;
      this = v100;
      v56 = 204;
      goto LABEL_186;
    case 'T':
      if (v6 <= v8)
      {
        return 0;
      }

      *(this + 9) = v5 + 2;
      if (*(v9 + v8) != 73)
      {
        return 0;
      }

      v117 = this;
      this = v117;
      v56 = 276;
      goto LABEL_186;
    case 'U':
      v109 = *(this + 24);
      if (!v109)
      {
        return 0;
      }

      v110 = *(this + 11);
      v111 = *(v110 + 8 * (v109 - 1));
      if (*(v111 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v109 - 1;
      if (v109 == 1)
      {
        return 0;
      }

      v112 = v109 - 2;
      v113 = *(v110 + 8 * v112);
      *(this + 24) = v112;
      if (!v113)
      {
        return 0;
      }

      v114 = this;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(this, 213);
      swift::Demangle::__runtime::Node::addChild(Node, v113, v114, v115, v116);
      v25 = Node;
      v26 = v111;
      v21 = v114;
      goto LABEL_212;
    case 'V':
      v57 = this;
      v61 = v57;
      v62 = 267;
      v63 = v58;
      goto LABEL_181;
    case 'W':
      v118 = this;
      v59 = swift::Demangle::__runtime::Demangler::popProtocolConformance(v118, v120, v121, v122, v123);
      v61 = v118;
      v62 = 206;
      v63 = v119;
      goto LABEL_181;
    case 'X':
      v53 = 62;
      goto LABEL_173;
    case 'Z':
    case 'z':
      v27 = this;
      v28 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
      v29 = *(v27 + 24);
      if (!v29)
      {
        v33 = 0;
        v32 = 0;
        goto LABEL_205;
      }

      v30 = v29 - 1;
      v31 = *(v27 + 11);
      v32 = *(v31 + 8 * (v29 - 1));
      if (*(v32 + 8) == 44)
      {
        *(v27 + 24) = v30;
        if (v29 == 1)
        {
          v33 = 0;
          goto LABEL_205;
        }
      }

      else
      {
        v32 = 0;
        v30 = *(v27 + 24);
      }

      v33 = *(v31 + 8 * (v30 - 1));
      if (*(v33 + 8) == 243)
      {
        *(v27 + 24) = v30 - 1;
        if (v30 == 1)
        {
          goto LABEL_205;
        }

        --v30;
      }

      else
      {
        v33 = 0;
      }

      v146 = v30 - 1;
      v147 = *(v31 + 8 * v146);
      if (*(v147 + 8) == 243)
      {
        *(v27 + 24) = v146;
        goto LABEL_206;
      }

LABEL_205:
      v147 = 0;
LABEL_206:
      if (v10 == 122)
      {
        v148 = 172;
      }

      else
      {
        v148 = 173;
      }

      v25 = swift::Demangle::__runtime::Demangler::createWithChildren(v27, v148, v147, v33, v28);
      Node = v25;
      if (v32 && v25)
      {
        v26 = v32;
        v21 = v27;
LABEL_212:
        swift::Demangle::__runtime::Node::addChild(v25, v26, v21, a4, a5);
      }

      return Node;
    case 'a':
      v53 = 181;
      goto LABEL_173;
    case 'b':
      v74 = this;
      v63 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
      v75 = *(v74 + 24);
      if (v75 && (v76 = v75 - 1, v59 = *(*(v74 + 11) + 8 * v76), *(v59 + 8) == 243))
      {
        *(v74 + 24) = v76;
      }

      else
      {
        v59 = 0;
      }

      v61 = v74;
      v62 = 282;
LABEL_181:

      return swift::Demangle::__runtime::Demangler::createWithChildren(v61, v62, v59, v63, v60);
    case 'c':
      v54 = this;
      this = v54;
      v56 = 275;
      goto LABEL_186;
    case 'd':
      v53 = 58;
      goto LABEL_173;
    case 'e':
      v139 = this;
      swift::Demangle::__runtime::Demangler::demangleBridgedMethodParams(this, &__p);
      v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        Node = swift::Demangle::__runtime::NodeFactory::createNode(v139, 290, p_p, size);
        v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        Node = 0;
      }

      if (v140 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return Node;
    case 'f':

      return swift::Demangle::__runtime::Demangler::demangleFunctionSpecialization(this, a2, a3, a4, a5);
    case 'g':
      v82 = 93;
      goto LABEL_136;
    case 'i':
      v82 = 98;
      goto LABEL_136;
    case 'j':
      v79 = this;
      this = v79;
      v56 = 277;
      goto LABEL_186;
    case 'l':
      v125 = this;
      v126 = swift::Demangle::__runtime::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
      if (!v126)
      {
        return 0;
      }

      v55 = v126;
      this = v125;
      v56 = 283;
      goto LABEL_186;
    case 'm':
      v53 = 153;
      goto LABEL_173;
    case 'n':
      v64 = this;
      v65 = swift::Demangle::__runtime::Demangler::popProtocol(this, a2, a3, a4, a5);
      v70 = swift::Demangle::__runtime::Demangler::popAssocTypePath(v64, v66, v67, v68, v69);
      v71 = *(v64 + 24);
      if (v71 && (v72 = v71 - 1, v73 = *(*(v64 + 11) + 8 * v72), *(v73 + 8) == 243))
      {
        *(v64 + 24) = v72;
      }

      else
      {
        v73 = 0;
      }

      v143 = v64;
      v144 = 280;
LABEL_191:

      return swift::Demangle::__runtime::Demangler::createWithChildren(v143, v144, v73, v70, v65);
    case 'o':
      v53 = 174;
      goto LABEL_173;
    case 'p':
      v77 = this;
      v78 = 88;
LABEL_104:
      v93 = swift::Demangle::__runtime::Demangler::demangleSpecAttributes(this, v78, a3, a4, a5);
      v94 = *(v77 + 24);
      if (v94 && (v95 = v94 - 1, v96 = *(*(v77 + 11) + 8 * v95), *(v96 + 8) == 243))
      {
        *(v77 + 24) = v95;
      }

      else
      {
        v96 = 0;
      }

      v97 = swift::Demangle::__runtime::Demangler::createWithChild(v77, 96, v96, v91, v92);
      Node = 0;
      if (v93 && v97)
      {
        swift::Demangle::__runtime::Node::addChild(v93, v97, v77, v98, v99);
        return v93;
      }

      return Node;
    case 'q':
      v124 = this;
      this = v124;
      v56 = 278;
LABEL_186:

      return swift::Demangle::__runtime::Demangler::createWithChild(this, v56, v55, a4, a5);
    case 'r':
      v11 = 0;
      v12 = 210;
      goto LABEL_147;
    case 's':
      v82 = 97;
LABEL_136:

      return swift::Demangle::__runtime::Demangler::demangleGenericSpecialization(this, v82, 0, a4, a5);
    case 't':

      return swift::Demangle::__runtime::Demangler::demangleGenericSpecializationWithDroppedArguments(this, a2, a3, a4, a5);
    case 'u':
      v53 = 333;
      goto LABEL_173;
    case 'v':
      v83 = this;
      v84 = swift::Demangle::__runtime::Demangler::demangleIndex(this);
      if ((v84 & 0x80000000) != 0)
      {
        return 0;
      }

      v85 = *(v83 + 9);
      if (v85 < *(v83 + 8) && (*(v83 + 9) = v85 + 1, *(*(v83 + 7) + v85) == 114))
      {
        v86 = v84;
        v87 = 301;
      }

      else
      {
        v86 = v84;
        v87 = 300;
      }

      return swift::Demangle::__runtime::NodeFactory::createNode(v83, v87, v86);
    case 'w':
      if (v6 <= v8)
      {
        return 0;
      }

      Node = 0;
      *(this + 9) = v5 + 2;
      v52 = *(v9 + v8);
      if (v52 <= 0x61)
      {
        if (v52 == 66)
        {
          v53 = 347;
        }

        else
        {
          if (v52 != 83)
          {
            return Node;
          }

          v53 = 354;
        }
      }

      else
      {
        switch(v52)
        {
          case 'd':
            v53 = 372;
            break;
          case 'c':
            v53 = 371;
            break;
          case 'b':
            v53 = 346;
            break;
          default:
            return Node;
        }
      }

LABEL_173:

      return swift::Demangle::__runtime::NodeFactory::createNode(this, v53);
    case 'x':
      v53 = 61;
      goto LABEL_173;
    case 'y':
      v12 = 212;
      v11 = 1;
LABEL_147:
      Node = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = Node;
      if (!Node || Node + 24 > *(this + 2))
      {
        v127 = 2 * *(this + 4);
        if (v127 <= 0x20)
        {
          v127 = 32;
        }

        *(this + 4) = v127;
        v128 = v127 + 8;
        v129 = this;
        v130 = malloc_type_malloc(v127 + 8, 0x2004093837F09uLL);
        this = v129;
        *v130 = *(v129 + 3);
        Node = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v130 + v128;
        *(this + 3) = v130;
      }

      *(this + 1) = Node + 24;
      *(Node + 16) = v12;
      *(Node + 18) = 0;
      v131 = *(this + 24);
      if (!v131)
      {
        return Node;
      }

      v132 = *(*(this + 11) + 8 * (v131 - 1));
      if (*(v132 + 8) == 44)
      {
        *(this + 24) = v131 - 1;
        v133 = this;
        swift::Demangle::__runtime::Node::addChild(Node, v132, this, a4, a5);
        this = v133;
        v131 = *(v133 + 24);
      }

      if (!v11)
      {
        goto LABEL_159;
      }

      if (!v131)
      {
        return Node;
      }

      v134 = *(*(this + 11) + 8 * (v131 - 1));
      if (*(v134 + 8) == 243)
      {
        *(this + 24) = v131 - 1;
        v135 = this;
        swift::Demangle::__runtime::Node::addChild(Node, v134, this, a4, a5);
        this = v135;
        v131 = *(v135 + 24);
LABEL_159:
        if (!v131)
        {
          return Node;
        }
      }

      v136 = *(*(this + 11) + 8 * (v131 - 1));
      if (*(v136 + 8) == 243)
      {
        *(this + 24) = v131 - 1;
        v137 = this;
        swift::Demangle::__runtime::Node::addChild(Node, v136, this, a4, a5);
        this = v137;
        v131 = *(v137 + 24);
        if (!v131)
        {
          return Node;
        }
      }

      v138 = v131 - 1;
      v26 = *(*(this + 11) + 8 * v138);
      if (*(v26 + 8) != 243)
      {
        return Node;
      }

      *(this + 24) = v138;
      v21 = this;
      v25 = Node;
      goto LABEL_212;
    default:
      return Node;
  }

  do
  {
    v42 = v37 - 1;
    v43 = *(*(this + 11) + 8 * v42);
    *(this + 24) = v42;
    if (!v43)
    {
      break;
    }

    if (*(v43 + 16) != 243)
    {
LABEL_58:
      Node = 0;
      goto LABEL_59;
    }

    v44 = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ < __p.__r_.__value_.__r.__words[2])
    {
      *__p.__r_.__value_.__l.__size_ = v43;
      v41 = v44 + 8;
    }

    else
    {
      v45 = __p.__r_.__value_.__r.__words[0];
      v46 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
      v47 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3;
      v48 = v47 + 1;
      if ((v47 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v49 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 2 > v48)
      {
        v48 = v49 >> 2;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v50 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (!(v50 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v51 = this;
      *(8 * v47) = v43;
      v41 = 8 * v47 + 8;
      memcpy(0, v45, v46);
      __p.__r_.__value_.__r.__words[0] = 0;
      *&__p.__r_.__value_.__r.__words[1] = v41;
      if (v45)
      {
        operator delete(v45);
      }

      this = v51;
    }

    __p.__r_.__value_.__l.__size_ = v41;
    v37 = *(this + 24);
  }

  while (v37);
LABEL_217:
  v149 = this;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this, v13);
  v152 = __p.__r_.__value_.__l.__size_;
  v153 = __p.__r_.__value_.__r.__words[0];
  while (v152 != v153)
  {
    v154 = *(v152 - 8);
    v152 -= 8;
    swift::Demangle::__runtime::Node::addChild(Node, v154, v149, v150, v151);
  }

  if (v38)
  {
    swift::Demangle::__runtime::Node::addChild(Node, v38, v149, v150, v151);
  }

  if (v14)
  {
    v155 = swift::Demangle::__runtime::NodeFactory::createNode(v149, 228);
    swift::Demangle::__runtime::Node::addChild(Node, v155, v149, v156, v157);
  }

LABEL_59:
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Node;
}