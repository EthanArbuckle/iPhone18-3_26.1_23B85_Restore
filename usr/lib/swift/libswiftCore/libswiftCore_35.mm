void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v278 = a6;
  swift_getTupleTypeMetadata2(0, a4, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v281 = &v263 - v12;
  v13 = *(a5 + 8);
  v283 = a5;
  v284 = v13;
  v277 = *(*(v13 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v277, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v275 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v276 = &v263 - v16;
  v282 = *(a4 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v265 = &v263 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v263 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v274 = &v263 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v264 = &v263 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v263 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v270 = &v263 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v263 = &v263 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v263 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v269 = &v263 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v268 = &v263 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v263 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v273 = &v263 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v267 = &v263 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v263 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v272 = &v263 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v280 = &v263 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v266 = &v263 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v263 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v271 = &v263 - v59;
  v60 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = specialized static String._copying(_:)(a1, a2);
    v279 = v161;
    a2;
    a2 = v279;
    if ((v279 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((a1 & 0x1000000000000000) != 0)
      {
        v63 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v64 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v60 = _StringObject.sharedUTF8.getter(a1, a2);
        v63 = v60;
        v64 = v61;
        if (v61 > 0)
        {
LABEL_5:
          v65 = *v63;
          if (v65 == 43)
          {
            v101 = specialized Collection.subscript.getter(1, v63, v64);
            v105 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v101, v102, v103, v104);
            if (v106)
            {
              v108 = v105;
              v109 = v106;
              v110 = a3 + 55;
              v111 = a3 + 87;
              if (a3 <= 10)
              {
                v111 = 97;
              }

              LODWORD(v268) = v111;
              if (a3 <= 10)
              {
                v110 = 65;
              }

              LODWORD(v269) = v110;
              v286[0] = a3;
              if (a3 <= 10)
              {
                v112 = a3 + 48;
              }

              else
              {
                v112 = 58;
              }

              v113 = v284;
              v115 = (v284 + 96);
              v114 = *(v284 + 96);
              v116 = lazy protocol witness table accessor for type Int and conformance Int(v105, v106, v107);
              v274 = v114;
              (v114)(v286, &type metadata for Int, v116, a4, v113);
              v117 = v277;
              v118 = v275;
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v277, a4, v275, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v120 = v276;
              (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v118, AssociatedConformanceWitness);
              v121 = (v117[3])(v120, a4, v117);
              if (v108)
              {
                v277 = (v282 + 8);
                v275 = (v282 + 32);
                v273 = v283 + 80;
                v265 = v115;
                LODWORD(v266) = v112;
                v264 = v283 + 96;
                do
                {
                  v124 = *v108;
                  if (v124 < 0x30 || v124 >= v112)
                  {
                    v126 = v267;
                    if (v124 < 0x41 || v124 >= v269)
                    {
                      if (v124 < 0x61 || v124 >= v268)
                      {
                        v158 = v282;
                        v159 = *(v282 + 8);
                        v159(v49, a4);
                        v160 = v272;
                        goto LABEL_167;
                      }

                      v270 = v109;
                      v271 = v108;
                      v127 = v124 - 87;
                    }

                    else
                    {
                      v270 = v109;
                      v271 = v108;
                      v127 = v124 - 55;
                    }

                    LOBYTE(v286[0]) = v127;
                    v125 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v121, v122, v123);
                  }

                  else
                  {
                    v270 = v109;
                    v271 = v108;
                    LOBYTE(v286[0]) = v124 - 48;
                    v125 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v121, v122, v123);
                    v126 = v267;
                  }

                  (v274)(v286, &type metadata for UInt8, v125, a4, v284);
                  v128 = v283;
                  v129 = v280;
                  LODWORD(v276) = (*(v283 + 12))(v280, v272, a4, v283);
                  v95 = *v277;
                  (*v277)(v49, a4);
                  v130 = *v275;
                  (*v275)(v49, v129, a4);
                  v131 = v281;
                  v132 = (*(v128 + 10))(v281, v126, a4, v128);
                  (v95)(v126, a4);
                  (v95)(v49, a4);
                  v121 = v130(v49, v131, a4);
                  if (v276 & 1) != 0 || (v132)
                  {
                    (v95)(v49, a4);
                    v157 = v272;
                    goto LABEL_161;
                  }

                  v108 = v271 + 1;
                  v109 = v270 - 1;
                  LOBYTE(v112) = v266;
                }

                while (v270 != 1);
              }

              v99 = v282;
              (*(v282 + 8))(v272, a4);
              v100 = v278;
              (*(v99 + 32))(v278, v49, a4);
              goto LABEL_135;
            }
          }

          else if (v65 == 45)
          {
            v66 = specialized Collection.subscript.getter(1, v63, v64);
            v70 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v66, v67, v68, v69);
            if (v71)
            {
              v73 = v70;
              v74 = v71;
              v75 = a3 + 55;
              v76 = a3 + 87;
              if (a3 <= 10)
              {
                v76 = 97;
              }

              LODWORD(v268) = v76;
              if (a3 <= 10)
              {
                v75 = 65;
              }

              LODWORD(v269) = v75;
              v286[0] = a3;
              if (a3 <= 10)
              {
                v77 = a3 + 48;
              }

              else
              {
                v77 = 58;
              }

              v78 = v284;
              v80 = (v284 + 96);
              v79 = *(v284 + 96);
              v81 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
              v274 = v79;
              (v79)(v286, &type metadata for Int, v81, a4, v78);
              v82 = v277;
              v83 = v275;
              v84 = swift_getAssociatedConformanceWitness(v277, a4, v275, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v85 = v276;
              (*(v84 + 8))(&unk_18071E0A8, 256, v83, v84);
              v86 = (v82[3])(v85, a4, v82);
              if (v73)
              {
                v277 = (v282 + 8);
                v275 = (v282 + 32);
                v273 = v283 + 88;
                v265 = v80;
                LODWORD(v267) = v77;
                v264 = v283 + 96;
                do
                {
                  v89 = *v73;
                  if (v89 < 0x30 || v89 >= v77)
                  {
                    v91 = v266;
                    if (v89 < 0x41 || v89 >= v269)
                    {
                      if (v89 < 0x61 || v89 >= v268)
                      {
                        v158 = v282;
                        v159 = *(v282 + 8);
                        v159(v58, a4);
                        v160 = v271;
                        goto LABEL_167;
                      }

                      v270 = v74;
                      v272 = v73;
                      v92 = v89 - 87;
                    }

                    else
                    {
                      v270 = v74;
                      v272 = v73;
                      v92 = v89 - 55;
                    }

                    LOBYTE(v286[0]) = v92;
                    v90 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v86, v87, v88);
                  }

                  else
                  {
                    v270 = v74;
                    v272 = v73;
                    LOBYTE(v286[0]) = v89 - 48;
                    v90 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v86, v87, v88);
                    v91 = v266;
                  }

                  (v274)(v286, &type metadata for UInt8, v90, a4, v284);
                  v93 = v283;
                  v94 = v280;
                  LODWORD(v276) = (*(v283 + 12))(v280, v271, a4, v283);
                  v95 = *v277;
                  (*v277)(v58, a4);
                  v96 = *v275;
                  (*v275)(v58, v94, a4);
                  v97 = v281;
                  v98 = (*(v93 + 11))(v281, v91, a4, v93);
                  (v95)(v91, a4);
                  (v95)(v58, a4);
                  v86 = v96(v58, v97, a4);
                  if (v276 & 1) != 0 || (v98)
                  {
                    (v95)(v58, a4);
                    v157 = v271;
                    goto LABEL_161;
                  }

                  v73 = v272 + 1;
                  v74 = v270 - 1;
                  LOBYTE(v77) = v267;
                }

                while (v270 != 1);
              }

              v99 = v282;
              (*(v282 + 8))(v271, a4);
              v100 = v278;
              (*(v99 + 32))(v278, v58, a4);
              goto LABEL_135;
            }
          }

          else
          {
            v133 = a3 + 55;
            v134 = a3 + 87;
            if (a3 <= 10)
            {
              v134 = 97;
            }

            LODWORD(v264) = v134;
            if (a3 <= 10)
            {
              v133 = 65;
            }

            LODWORD(v265) = v133;
            v286[0] = a3;
            if (a3 <= 10)
            {
              v135 = a3 + 48;
            }

            else
            {
              v135 = 58;
            }

            v136 = v284;
            v137 = (v284 + 96);
            v138 = *(v284 + 96);
            v139 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
            v274 = v137;
            v272 = v138;
            (v138)(v286, &type metadata for Int, v139, a4, v136);
            v140 = v277;
            v141 = v275;
            v142 = swift_getAssociatedConformanceWitness(v277, a4, v275, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v143 = v276;
            (*(v142 + 8))(&unk_18071E0A8, 256, v141, v142);
            v144 = (v140[3])(v143, a4, v140);
            v277 = (v282 + 8);
            v275 = (v282 + 32);
            v270 = v283 + 80;
            v271 = v283 + 96;
            LODWORD(v266) = v135;
            while (1)
            {
              v147 = *v63;
              if (v147 < 0x30 || v147 >= v135)
              {
                v149 = v268;
                if (v147 < 0x41 || v147 >= v265)
                {
                  if (v147 < 0x61 || v147 >= v264)
                  {
                    v158 = v282;
                    v159 = *(v282 + 8);
                    v159(v42, a4);
                    v160 = v273;
                    goto LABEL_167;
                  }

                  v267 = v63;
                  v269 = v64;
                  v150 = v147 - 87;
                }

                else
                {
                  v267 = v63;
                  v269 = v64;
                  v150 = v147 - 55;
                }

                LOBYTE(v286[0]) = v150;
                v148 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v144, v145, v146);
              }

              else
              {
                v267 = v63;
                v269 = v64;
                LOBYTE(v286[0]) = v147 - 48;
                v148 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v144, v145, v146);
                v149 = v268;
              }

              (v272)(v286, &type metadata for UInt8, v148, a4, v284);
              v151 = v283;
              v152 = v280;
              LODWORD(v276) = (*(v283 + 12))(v280, v273, a4, v283);
              v95 = *v277;
              (*v277)(v42, a4);
              v153 = *v275;
              (*v275)(v42, v152, a4);
              v154 = v281;
              v155 = (*(v151 + 10))(v281, v149, a4, v151);
              (v95)(v149, a4);
              (v95)(v42, a4);
              v144 = v153(v42, v154, a4);
              if (v276 & 1) != 0 || (v155)
              {
                break;
              }

              v63 = v267 + 1;
              v64 = (v269 - 1);
              LOBYTE(v135) = v266;
              if (v269 == 1)
              {
                (v95)(v273, a4);
                v156 = v278;
                v153(v278, v42, a4);
                (*(v282 + 56))(v156, 0, 1, a4);
                goto LABEL_163;
              }
            }

            (v95)(v42, a4);
            v157 = v273;
LABEL_161:
            (v95)(v157, a4);
          }

LABEL_162:
          (*(v282 + 56))(v278, 1, 1, a4);
          goto LABEL_163;
        }
      }

LABEL_169:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v279 = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v162 = HIBYTE(a2) & 0xF;
  v286[0] = a1;
  v286[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (!v162)
  {
    goto LABEL_169;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      v232 = a3 + 55;
      v233 = a3 + 87;
      if (a3 <= 10)
      {
        v233 = 97;
      }

      LODWORD(v263) = v233;
      if (a3 <= 10)
      {
        v232 = 65;
      }

      LODWORD(v264) = v232;
      v285 = a3;
      v234 = v21;
      if (a3 <= 10)
      {
        v235 = a3 + 48;
      }

      else
      {
        v235 = 58;
      }

      v236 = v284;
      v238 = (v284 + 96);
      v237 = *(v284 + 96);
      v239 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
      v272 = v237;
      (v237)(&v285, &type metadata for Int, v239, a4, v236);
      v240 = v277;
      v241 = v275;
      v242 = swift_getAssociatedConformanceWitness(v277, a4, v275, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v243 = v276;
      (*(v242 + 8))(&unk_18071E0A8, 256, v241, v242);
      v244 = v240[3];
      v275 = v234;
      v245 = (v244)(v243, a4, v240);
      v277 = (v282 + 8);
      v273 = (v282 + 32);
      v271 = v283 + 80;
      v248 = v286;
      v249 = v265;
      v267 = v238;
      LODWORD(v268) = v235;
      v266 = v283 + 96;
      while (1)
      {
        v250 = *v248;
        if (v250 < 0x30 || v250 >= v235)
        {
          if (v250 < 0x41 || v250 >= v264)
          {
            if (v250 < 0x61 || v250 >= v263)
            {
              v261 = v282;
              v262 = *(v282 + 8);
              v262(v275, a4);
              v262(v274, a4);
              (*(v261 + 56))(v278, 1, 1, a4);
              goto LABEL_163;
            }

            v269 = v248;
            v270 = v162;
            v251 = v250 - 87;
          }

          else
          {
            v269 = v248;
            v270 = v162;
            v251 = v250 - 55;
          }

          LOBYTE(v285) = v251;
        }

        else
        {
          v269 = v248;
          v270 = v162;
          LOBYTE(v285) = v250 - 48;
        }

        v252 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v245, v246, v247);
        (v272)(&v285, &type metadata for UInt8, v252, a4, v284);
        v253 = v283;
        v254 = v280;
        v255 = v275;
        LODWORD(v276) = (*(v283 + 12))(v280, v274, a4, v283);
        v256 = *v277;
        (*v277)(v255, a4);
        v257 = *v273;
        (*v273)(v255, v254, a4);
        v258 = v281;
        v259 = (*(v253 + 10))(v281, v249, a4, v253);
        (v256)(v249, a4);
        (v256)(v255, a4);
        v245 = (v257)(v255, v258);
        if (v276 & 1) != 0 || (v259)
        {
          (v256)(v255, a4);
          (v256)(v274, a4);
          (*(v282 + 56))(v278, 1, 1, a4);
          goto LABEL_163;
        }

        v248 = v269 + 1;
        v162 = (v270 - 1);
        LOBYTE(v235) = v268;
        if (v270 == 1)
        {
          (v256)(v274, a4);
          v260 = v278;
          v257(v278, v275, a4);
          (*(v282 + 56))(v260, 0, 1, a4);
          goto LABEL_163;
        }
      }
    }

    v163 = specialized Collection.subscript.getter(1, v286, HIBYTE(a2) & 0xF);
    v167 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v163, v164, v165, v166);
    if (v168)
    {
      v170 = v167;
      v171 = v168;
      v172 = a3 + 55;
      v173 = a3 + 87;
      if (a3 <= 10)
      {
        v173 = 97;
      }

      LODWORD(v267) = v173;
      if (a3 <= 10)
      {
        v172 = 65;
      }

      LODWORD(v268) = v172;
      v285 = a3;
      if (a3 <= 10)
      {
        v174 = a3 + 48;
      }

      else
      {
        v174 = 58;
      }

      v175 = v284;
      v177 = (v284 + 96);
      v176 = *(v284 + 96);
      v178 = lazy protocol witness table accessor for type Int and conformance Int(v167, v168, v169);
      v179 = v269;
      v274 = v176;
      (v176)(&v285, &type metadata for Int, v178, a4, v175);
      v180 = v277;
      v181 = v275;
      v182 = swift_getAssociatedConformanceWitness(v277, a4, v275, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v183 = v276;
      (*(v182 + 8))(&unk_18071E0A8, 256, v181, v182);
      v184 = (v180[3])(v183, a4, v180);
      v187 = v263;
      if (v170)
      {
        v275 = v283 + 96;
        v277 = (v282 + 8);
        v272 = v283 + 88;
        v273 = (v282 + 32);
        v265 = v177;
        LODWORD(v266) = v174;
        do
        {
          v188 = *v170;
          if (v188 < 0x30 || v188 >= v174)
          {
            if (v188 < 0x41 || v188 >= v268)
            {
              if (v188 < 0x61 || v188 >= v267)
              {
                v158 = v282;
                v159 = *(v282 + 8);
                v159(v35, a4);
                v160 = v179;
                goto LABEL_167;
              }

              v270 = v171;
              v271 = v170;
              v189 = v188 - 87;
            }

            else
            {
              v270 = v171;
              v271 = v170;
              v189 = v188 - 55;
            }

            LOBYTE(v285) = v189;
          }

          else
          {
            v270 = v171;
            v271 = v170;
            LOBYTE(v285) = v188 - 48;
          }

          v190 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v184, v185, v186);
          (v274)(&v285, &type metadata for UInt8, v190, a4, v284);
          v191 = v187;
          v192 = v283;
          v193 = v280;
          LODWORD(v276) = (*(v283 + 12))(v280, v179, a4, v283);
          v194 = *v277;
          (*v277)(v35, a4);
          v195 = *v273;
          (*v273)(v35, v193, a4);
          v196 = v281;
          v197 = (*(v192 + 11))(v281, v191, a4, v192);
          (v194)(v191, a4);
          (v194)(v35, a4);
          v184 = v195(v35, v196, a4);
          if (v276 & 1) != 0 || (v197)
          {
            (v194)(v35, a4);
            (v194)(v269, a4);
            goto LABEL_162;
          }

          v187 = v191;
          v170 = v271 + 1;
          v171 = v270 - 1;
          v179 = v269;
          LOBYTE(v174) = v266;
        }

        while (v270 != 1);
      }

      v99 = v282;
      (*(v282 + 8))(v179, a4);
      v100 = v278;
      (*(v99 + 32))(v278, v35, a4);
      goto LABEL_135;
    }

    goto LABEL_162;
  }

  v198 = specialized Collection.subscript.getter(1, v286, HIBYTE(a2) & 0xF);
  v202 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v198, v199, v200, v201);
  if (!v203)
  {
    goto LABEL_162;
  }

  v205 = v202;
  v206 = v203;
  v207 = a3 + 55;
  v208 = a3 + 87;
  if (a3 <= 10)
  {
    v208 = 97;
  }

  LODWORD(v267) = v208;
  if (a3 <= 10)
  {
    v207 = 65;
  }

  LODWORD(v268) = v207;
  v285 = a3;
  if (a3 <= 10)
  {
    v209 = a3 + 48;
  }

  else
  {
    v209 = 58;
  }

  v210 = v284;
  v212 = (v284 + 96);
  v211 = *(v284 + 96);
  v213 = lazy protocol witness table accessor for type Int and conformance Int(v202, v203, v204);
  v214 = v270;
  v274 = v211;
  (v211)(&v285, &type metadata for Int, v213, a4, v210);
  v215 = v277;
  v216 = v275;
  v217 = swift_getAssociatedConformanceWitness(v277, a4, v275, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v218 = v276;
  (*(v217 + 8))(&unk_18071E0A8, 256, v216, v217);
  v219 = (v215[3])(v218, a4, v215);
  v222 = v264;
  if (!v205)
  {
LABEL_134:
    v99 = v282;
    (*(v282 + 8))(v214, a4);
    v100 = v278;
    (*(v99 + 32))(v278, v28, a4);
LABEL_135:
    (*(v99 + 56))(v100, 0, 1, a4);
    goto LABEL_163;
  }

  v275 = v283 + 96;
  v277 = (v282 + 8);
  v272 = v283 + 80;
  v273 = (v282 + 32);
  v265 = v212;
  LODWORD(v266) = v209;
  while (1)
  {
    v223 = *v205;
    if (v223 < 0x30 || v223 >= v209)
    {
      break;
    }

    v269 = v206;
    v271 = v205;
    LOBYTE(v285) = v223 - 48;
LABEL_131:
    v225 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v219, v220, v221);
    (v274)(&v285, &type metadata for UInt8, v225, a4, v284);
    v226 = v222;
    v227 = v283;
    v228 = v280;
    LODWORD(v276) = (*(v283 + 12))(v280, v214, a4, v283);
    v95 = *v277;
    (*v277)(v28, a4);
    v229 = *v273;
    (*v273)(v28, v228, a4);
    v230 = v281;
    v231 = (*(v227 + 10))(v281, v226, a4, v227);
    (v95)(v226, a4);
    (v95)(v28, a4);
    v219 = v229(v28, v230, a4);
    if (v276 & 1) != 0 || (v231)
    {
      (v95)(v28, a4);
      v157 = v270;
      goto LABEL_161;
    }

    v222 = v226;
    v214 = v270;
    v205 = v271 + 1;
    v206 = v269 - 1;
    LOBYTE(v209) = v266;
    if (v269 == 1)
    {
      goto LABEL_134;
    }
  }

  if (v223 >= 0x41 && v223 < v268)
  {
    v269 = v206;
    v271 = v205;
    v224 = v223 - 55;
LABEL_130:
    LOBYTE(v285) = v224;
    goto LABEL_131;
  }

  if (v223 >= 0x61 && v223 < v267)
  {
    v269 = v206;
    v271 = v205;
    v224 = v223 - 87;
    goto LABEL_130;
  }

  v158 = v282;
  v159 = *(v282 + 8);
  v159(v28, a4);
  v160 = v214;
LABEL_167:
  v159(v160, a4);
  (*(v158 + 56))(v278, 1, 1, a4);
LABEL_163:
  v279;
}

void _parseInteger<A, B>(ascii:radix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v299 = a6;
  swift_getTupleTypeMetadata2(0, a4, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v301 = &v281 - v12;
  v13 = *(a5 + 8);
  v303 = a5;
  v304 = v13;
  v298 = *(*(v13 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v298, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v296 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v297 = &v281 - v16;
  v302 = *(a4 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v285 = &v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v291 = &v281 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v288 = &v281 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v281 = &v281 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v281 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v294 = &v281 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v284 = &v281 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v290 = &v281 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v287 = &v281 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v283 = &v281 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v281 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v289 = &v281 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v292 = &v281 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v281 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v293 = &v281 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v300 = &v281 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v282 = &v281 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v281 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v286 = &v281 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = (&v281 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60, a1, a3);
  v62 = String.init<A>(_:)(v60, a3);
  v65 = v63;
  if ((v63 & 0x1000000000000000) == 0)
  {
    if ((v63 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_85:
    v176 = HIBYTE(v65) & 0xF;
    v306[0] = v62;
    v306[1] = v65 & 0xFFFFFFFFFFFFFFLL;
    if (!v176)
    {
      goto LABEL_175;
    }

    v295 = v65;
    if (v62 == 43)
    {
      v215 = specialized Collection.subscript.getter(1, v306, HIBYTE(v65) & 0xF);
      v219 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v215, v216, v217, v218);
      if (!v220)
      {
        goto LABEL_173;
      }

      v222 = v219;
      v223 = v220;
      v224 = a2 + 55;
      v225 = a2 + 87;
      if (a2 <= 10)
      {
        v225 = 97;
      }

      LODWORD(v286) = v225;
      if (a2 <= 10)
      {
        v224 = 65;
      }

      LODWORD(v287) = v224;
      v305 = a2;
      if (a2 <= 10)
      {
        v226 = a2 + 48;
      }

      else
      {
        v226 = 58;
      }

      v227 = v304;
      v228 = (v304 + 96);
      v229 = *(v304 + 96);
      v230 = lazy protocol witness table accessor for type Int and conformance Int(v219, v220, v221);
      v193 = v288;
      v293 = v229;
      v294 = v228;
      (v229)(&v305, &type metadata for Int, v230, a4, v227);
      v231 = v298;
      v232 = v296;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v298, a4, v296, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v234 = v297;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v232, AssociatedConformanceWitness);
      v235 = (v231[3])(v234, a4, v231);
      if (v222)
      {
        v238 = v303 + 96;
        v298 = (v302 + 8);
        v296 = (v302 + 32);
        v292 = v303 + 80;
        LODWORD(v284) = v226;
        while (1)
        {
          v290 = v222;
          v239 = *v222;
          if (v239 < 0x30 || v239 >= v226)
          {
            v241 = v285;
            if (v239 < 0x41 || v239 >= v287)
            {
              if (v239 < 0x61 || v239 >= v286)
              {
                v277 = v302;
                v278 = *(v302 + 8);
                v280 = v291;
LABEL_171:
                v278(v280, a4);
                v279 = v193;
LABEL_172:
                v278(v279, a4);
                (*(v277 + 56))(v299, 1, 1, a4);
LABEL_166:
                v65 = v295;
                goto LABEL_167;
              }

              v289 = v223;
              v242 = v239 - 87;
            }

            else
            {
              v289 = v223;
              v242 = v239 - 55;
            }

            LOBYTE(v305) = v242;
            v240 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v235, v236, v237);
          }

          else
          {
            v289 = v223;
            LOBYTE(v305) = v239 - 48;
            v240 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v235, v236, v237);
            v241 = v285;
          }

          (v293)(&v305, &type metadata for UInt8, v240, a4, v304);
          v243 = v303;
          v244 = v300;
          v245 = v291;
          v246 = v238;
          LODWORD(v297) = (*(v303 + 12))(v300, v193, a4, v303);
          v100 = *v298;
          (*v298)(v245, a4);
          v247 = *v296;
          (*v296)(v245, v244, a4);
          v248 = v301;
          v249 = (*(v243 + 10))(v301, v241, a4, v243);
          (v100)(v241, a4);
          (v100)(v245, a4);
          v235 = v247(v245, v248, a4);
          if (v297 & 1) != 0 || (v249)
          {
            break;
          }

          v222 = v290 + 1;
          v223 = v289 - 1;
          v193 = v288;
          LOBYTE(v226) = v284;
          v238 = v246;
          if (v289 == 1)
          {
            goto LABEL_135;
          }
        }

        (v100)(v291, a4);
        v166 = v288;
        goto LABEL_164;
      }

LABEL_135:
      v213 = v302;
      (*(v302 + 8))(v193, a4);
      v214 = v299;
      (*(v213 + 32))(v299, v291, a4);
    }

    else
    {
      if (v62 != 45)
      {
        v250 = a2 + 55;
        v251 = a2 + 87;
        if (a2 <= 10)
        {
          v251 = 97;
        }

        LODWORD(v284) = v251;
        if (a2 <= 10)
        {
          v250 = 65;
        }

        LODWORD(v285) = v250;
        v305 = a2;
        v252 = v27;
        if (a2 <= 10)
        {
          v253 = a2 + 48;
        }

        else
        {
          v253 = 58;
        }

        v254 = v304;
        v256 = (v304 + 96);
        v255 = *(v304 + 96);
        v257 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
        v291 = v255;
        (v255)(&v305, &type metadata for Int, v257, a4, v254);
        v258 = v298;
        v259 = v296;
        v260 = swift_getAssociatedConformanceWitness(v298, a4, v296, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v261 = v297;
        (*(v260 + 8))(&qword_18071E0A8, 256, v259, v260);
        v262 = v258[3];
        v296 = v252;
        v263 = (v262)(v261, a4, v258);
        v298 = (v302 + 8);
        v292 = v303 + 80;
        v293 = (v302 + 32);
        v266 = v306;
        v267 = v281;
        LODWORD(v288) = v253;
        v287 = v256;
        v286 = v303 + 96;
        while (1)
        {
          v268 = *v266;
          if (v268 < 0x30 || v268 >= v253)
          {
            if (v268 < 0x41 || v268 >= v285)
            {
              if (v268 < 0x61 || v268 >= v284)
              {
                v277 = v302;
                v278 = *(v302 + 8);
                v278(v296, a4);
                v279 = v294;
                goto LABEL_172;
              }

              v289 = v266;
              v290 = v176;
              v269 = v268 - 87;
            }

            else
            {
              v289 = v266;
              v290 = v176;
              v269 = v268 - 55;
            }

            LOBYTE(v305) = v269;
          }

          else
          {
            v289 = v266;
            v290 = v176;
            LOBYTE(v305) = v268 - 48;
          }

          v270 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v263, v264, v265);
          (v291)(&v305, &type metadata for UInt8, v270, a4, v304);
          v271 = v303;
          v272 = v300;
          v273 = v296;
          LODWORD(v297) = (*(v303 + 12))(v300, v294, a4, v303);
          v136 = *v298;
          (*v298)(v273, a4);
          v274 = *v293;
          (*v293)(v273, v272, a4);
          v275 = v301;
          v276 = (*(v271 + 10))(v301, v267, a4, v271);
          (v136)(v267, a4);
          (v136)(v273, a4);
          v263 = v274(v273, v275, a4);
          if (v297 & 1) != 0 || (v276)
          {
            break;
          }

          v266 = v289 + 1;
          v176 = (v290 - 1);
          LOBYTE(v253) = v288;
          if (v290 == 1)
          {
            (v136)(v294, a4);
            v165 = v299;
            v274(v299, v296, a4);
LABEL_159:
            (*(v302 + 56))(v165, 0, 1, a4);
            goto LABEL_166;
          }
        }

        (v136)(v273, a4);
        v167 = v294;
LABEL_161:
        (v136)(v167, a4);
        goto LABEL_165;
      }

      v177 = specialized Collection.subscript.getter(1, v306, HIBYTE(v65) & 0xF);
      v181 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v177, v178, v179, v180);
      if (!v182)
      {
        goto LABEL_173;
      }

      v184 = v181;
      v185 = v182;
      v186 = a2 + 55;
      v187 = a2 + 87;
      if (a2 <= 10)
      {
        v187 = 97;
      }

      LODWORD(v286) = v187;
      if (a2 <= 10)
      {
        v186 = 65;
      }

      LODWORD(v288) = v186;
      v305 = a2;
      if (a2 <= 10)
      {
        v188 = a2 + 48;
      }

      else
      {
        v188 = 58;
      }

      v189 = v304;
      v190 = (v304 + 96);
      v191 = *(v304 + 96);
      v192 = lazy protocol witness table accessor for type Int and conformance Int(v181, v182, v183);
      v193 = v287;
      v293 = v191;
      v294 = v190;
      (v191)(&v305, &type metadata for Int, v192, a4, v189);
      v194 = v298;
      v195 = v296;
      v196 = swift_getAssociatedConformanceWitness(v298, a4, v296, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v197 = v297;
      (*(v196 + 8))(&qword_18071E0A8, 256, v195, v196);
      v198 = (v194[3])(v197, a4, v194);
      if (v184)
      {
        v201 = v303 + 96;
        v298 = (v302 + 8);
        v296 = (v302 + 32);
        v292 = v303 + 88;
        LODWORD(v285) = v188;
        while (1)
        {
          v291 = v184;
          v202 = *v184;
          if (v202 < 0x30 || v202 >= v188)
          {
            v204 = v284;
            if (v202 < 0x41 || v202 >= v288)
            {
              if (v202 < 0x61 || v202 >= v286)
              {
                v277 = v302;
                v278 = *(v302 + 8);
                v280 = v290;
                goto LABEL_171;
              }

              v289 = v185;
              v205 = v202 - 87;
            }

            else
            {
              v289 = v185;
              v205 = v202 - 55;
            }

            LOBYTE(v305) = v205;
            v203 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v198, v199, v200);
          }

          else
          {
            v289 = v185;
            LOBYTE(v305) = v202 - 48;
            v203 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v198, v199, v200);
            v204 = v284;
          }

          (v293)(&v305, &type metadata for UInt8, v203, a4, v304);
          v206 = v303;
          v207 = v300;
          v208 = v290;
          v209 = v201;
          LODWORD(v297) = (*(v303 + 12))(v300, v193, a4, v303);
          v100 = *v298;
          (*v298)(v208, a4);
          v210 = *v296;
          (*v296)(v208, v207, a4);
          v211 = v301;
          v212 = (*(v206 + 11))(v301, v204, a4, v206);
          (v100)(v204, a4);
          (v100)(v208, a4);
          v198 = v210(v208, v211, a4);
          if (v297 & 1) != 0 || (v212)
          {
            break;
          }

          v184 = v291 + 1;
          v185 = v289 - 1;
          v193 = v287;
          LOBYTE(v188) = v285;
          v201 = v209;
          if (v289 == 1)
          {
            goto LABEL_111;
          }
        }

        (v100)(v290, a4);
        v166 = v287;
LABEL_164:
        (v100)(v166, a4);
LABEL_165:
        (*(v302 + 56))(v299, 1, 1, a4);
        goto LABEL_166;
      }

LABEL_111:
      v213 = v302;
      (*(v302 + 8))(v193, a4);
      v214 = v299;
      (*(v213 + 32))(v299, v290, a4);
    }

    (*(v213 + 56))(v214, 0, 1, a4);
    goto LABEL_166;
  }

  v173 = specialized static String._copying(_:)(v62, v63);
  v175 = v174;
  v65;
  v62 = v173;
  v65 = v175;
  if ((v175 & 0x2000000000000000) != 0)
  {
    goto LABEL_85;
  }

LABEL_3:
  if ((v62 & 0x1000000000000000) == 0)
  {
    v62 = _StringObject.sharedUTF8.getter(v62, v65);
    v66 = v62;
    v67 = v63;
    if (v63 > 0)
    {
      goto LABEL_5;
    }

LABEL_175:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v66 = ((v65 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v67 = v62 & 0xFFFFFFFFFFFFLL;
  if ((v62 & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_175;
  }

LABEL_5:
  v68 = *v66;
  if (v68 != 43)
  {
    if (v68 != 45)
    {
      v295 = v65;
      v140 = a2 + 55;
      v141 = a2 + 87;
      if (a2 <= 10)
      {
        v141 = 97;
      }

      LODWORD(v284) = v141;
      if (a2 <= 10)
      {
        v140 = 65;
      }

      LODWORD(v285) = v140;
      v306[0] = a2;
      if (a2 <= 10)
      {
        v142 = a2 + 48;
      }

      else
      {
        v142 = 58;
      }

      v143 = v304;
      v144 = (v304 + 96);
      v145 = *(v304 + 96);
      v146 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
      v290 = v145;
      v291 = v144;
      (v145)(v306, &type metadata for Int, v146, a4, v143);
      v147 = v298;
      v148 = v296;
      v149 = swift_getAssociatedConformanceWitness(v298, a4, v296, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v150 = v297;
      (*(v149 + 8))(&qword_18071E0A8, 256, v148, v149);
      v151 = (v147[3])(v150, a4, v147);
      v298 = (v302 + 8);
      v296 = (v302 + 32);
      v294 = v303 + 80;
      LODWORD(v287) = v142;
      v286 = v303 + 96;
      while (1)
      {
        v154 = *v66;
        if (v154 < 0x30 || v154 >= v142)
        {
          if (v154 < 0x41 || v154 >= v285)
          {
            if (v154 < 0x61 || v154 >= v284)
            {
              v168 = v302;
              v169 = *(v302 + 8);
              v169(v47, a4);
              v169(v293, a4);
              (*(v168 + 56))(v299, 1, 1, a4);
              goto LABEL_166;
            }

            v288 = v66;
            v289 = v67;
            v156 = v154 - 87;
          }

          else
          {
            v288 = v66;
            v289 = v67;
            v156 = v154 - 55;
          }

          LOBYTE(v306[0]) = v156;
          v155 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v151, v152, v153);
        }

        else
        {
          v288 = v66;
          v289 = v67;
          LOBYTE(v306[0]) = v154 - 48;
          v155 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v151, v152, v153);
        }

        (v290)(v306, &type metadata for UInt8, v155, a4, v304);
        v157 = v303;
        v158 = v300;
        v159 = v47;
        LODWORD(v297) = (*(v303 + 12))(v300, v293, a4, v303);
        v160 = *v298;
        (*v298)(v47, a4);
        v161 = *v296;
        (*v296)(v47, v158, a4);
        v162 = v301;
        v163 = v292;
        v164 = (*(v157 + 10))(v301, v292, a4, v157);
        (v160)(v163, a4);
        (v160)(v159, a4);
        v47 = v159;
        v151 = v161(v159, v162, a4);
        if (v297 & 1) != 0 || (v164)
        {
          (v160)(v159, a4);
          (v160)(v293, a4);
          (*(v302 + 56))(v299, 1, 1, a4);
          goto LABEL_166;
        }

        v66 = v288 + 1;
        v67 = (v289 - 1);
        LOBYTE(v142) = v287;
        if (v289 == 1)
        {
          (v160)(v293, a4);
          v165 = v299;
          v161(v299, v159, a4);
          goto LABEL_159;
        }
      }
    }

    v69 = specialized Collection.subscript.getter(1, v66, v67);
    v73 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v69, v70, v71, v72);
    if (v74)
    {
      v76 = v73;
      v77 = v74;
      v78 = a2 + 48;
      v79 = a2 + 55;
      v80 = a2 + 87;
      if (a2 <= 10)
      {
        v80 = 97;
      }

      LODWORD(v287) = v80;
      if (a2 <= 10)
      {
        v79 = 65;
      }

      LODWORD(v288) = v79;
      v306[0] = a2;
      if (a2 > 10)
      {
        v78 = 58;
      }

      LODWORD(v292) = v78;
      v81 = v304;
      v82 = (v304 + 96);
      v83 = *(v304 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
      v85 = v286;
      v293 = v83;
      v294 = v82;
      (v83)(v306, &type metadata for Int, v84, a4, v81);
      v86 = v298;
      v87 = v296;
      v88 = swift_getAssociatedConformanceWitness(v298, a4, v296, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v89 = v297;
      (*(v88 + 8))(&qword_18071E0A8, 256, v87, v88);
      v90 = (v86[3])(v89, a4, v86);
      if (v76)
      {
        v298 = (v302 + 8);
        v295 = v65;
        v296 = (v302 + 32);
        v291 = v303 + 88;
        v285 = v303 + 96;
        v93 = (v302 + 32);
        do
        {
          v290 = v77;
          v94 = *v76;
          if (v94 < 0x30 || v94 >= v292)
          {
            v96 = v282;
            if (v94 < 0x41 || v94 >= v288)
            {
              if (v94 < 0x61 || v94 >= v287)
              {
                v170 = v302;
                v171 = *(v302 + 8);
                v171(v56, a4);
                v172 = v85;
                goto LABEL_83;
              }

              v289 = v76;
              v97 = v94 - 87;
            }

            else
            {
              v289 = v76;
              v97 = v94 - 55;
            }

            LOBYTE(v306[0]) = v97;
            v95 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v90, v91, v92);
          }

          else
          {
            v289 = v76;
            LOBYTE(v306[0]) = v94 - 48;
            v95 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v90, v91, v92);
            v96 = v282;
          }

          (v293)(v306, &type metadata for UInt8, v95, a4, v304);
          v98 = v303;
          v99 = v300;
          LODWORD(v297) = (*(v303 + 12))(v300, v85, a4, v303);
          v100 = *v298;
          (*v298)(v56, a4);
          v101 = *v93;
          (*v93)(v56, v99, a4);
          v102 = v301;
          v103 = (*(v98 + 11))(v301, v96, a4, v98);
          (v100)(v96, a4);
          (v100)(v56, a4);
          v90 = v101(v56, v102, a4);
          if (v297 & 1) != 0 || (v103)
          {
            (v100)(v56, a4);
            v166 = v286;
            goto LABEL_164;
          }

          v76 = v289 + 1;
          v77 = v290 - 1;
          v65 = v295;
          v85 = v286;
        }

        while (v290 != 1);
      }

      v104 = v302;
      (*(v302 + 8))(v85, a4);
      v105 = v299;
      (*(v104 + 32))(v299, v56, a4);
      goto LABEL_54;
    }

LABEL_173:
    (*(v302 + 56))(v299, 1, 1, a4);
    goto LABEL_167;
  }

  v106 = specialized Collection.subscript.getter(1, v66, v67);
  v110 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v106, v107, v108, v109);
  if (!v111)
  {
    goto LABEL_173;
  }

  v113 = v110;
  v114 = v111;
  v115 = a2 + 55;
  v116 = a2 + 87;
  if (a2 <= 10)
  {
    v116 = 97;
  }

  LODWORD(v287) = v116;
  if (a2 <= 10)
  {
    v115 = 65;
  }

  LODWORD(v288) = v115;
  v306[0] = a2;
  if (a2 <= 10)
  {
    v117 = a2 + 48;
  }

  else
  {
    v117 = 58;
  }

  v118 = v304;
  v119 = (v304 + 96);
  v120 = *(v304 + 96);
  v121 = lazy protocol witness table accessor for type Int and conformance Int(v110, v111, v112);
  v293 = v120;
  v294 = v119;
  (v120)(v306, &type metadata for Int, v121, a4, v118);
  v122 = v298;
  v123 = v296;
  v124 = swift_getAssociatedConformanceWitness(v298, a4, v296, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v125 = v297;
  (*(v124 + 8))(&qword_18071E0A8, 256, v123, v124);
  v126 = (v122[3])(v125, a4, v122);
  if (!v113)
  {
LABEL_53:
    v104 = v302;
    (*(v302 + 8))(v289, a4);
    v105 = v299;
    (*(v104 + 32))(v299, v40, a4);
LABEL_54:
    (*(v104 + 56))(v105, 0, 1, a4);
    goto LABEL_167;
  }

  v298 = (v302 + 8);
  v295 = v65;
  v296 = (v302 + 32);
  v292 = v303 + 80;
  LODWORD(v286) = v117;
  v285 = v303 + 96;
  v129 = (v302 + 32);
  while (1)
  {
    v130 = *v113;
    if (v130 < 0x30 || v130 >= v117)
    {
      break;
    }

    v290 = v114;
    v291 = v113;
    LOBYTE(v306[0]) = v130 - 48;
    v131 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v126, v127, v128);
    v132 = v283;
LABEL_50:
    (v293)(v306, &type metadata for UInt8, v131, a4, v304);
    v134 = v303;
    v135 = v300;
    LODWORD(v297) = (*(v303 + 12))(v300, v289, a4, v303);
    v136 = *v298;
    (*v298)(v40, a4);
    v137 = *v129;
    (*v129)(v40, v135, a4);
    v138 = v301;
    v139 = (*(v134 + 10))(v301, v132, a4, v134);
    (v136)(v132, a4);
    (v136)(v40, a4);
    v126 = v137(v40, v138, a4);
    if (v297 & 1) != 0 || (v139)
    {
      (v136)(v40, a4);
      v167 = v289;
      goto LABEL_161;
    }

    v113 = v291 + 1;
    v114 = v290 - 1;
    v65 = v295;
    LOBYTE(v117) = v286;
    if (v290 == 1)
    {
      goto LABEL_53;
    }
  }

  v132 = v283;
  if (v130 >= 0x41 && v130 < v288)
  {
    v290 = v114;
    v291 = v113;
    v133 = v130 - 55;
LABEL_49:
    LOBYTE(v306[0]) = v133;
    v131 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v126, v127, v128);
    goto LABEL_50;
  }

  if (v130 >= 0x61 && v130 < v287)
  {
    v290 = v114;
    v291 = v113;
    v133 = v130 - 87;
    goto LABEL_49;
  }

  v170 = v302;
  v171 = *(v302 + 8);
  v171(v40, a4);
  v172 = v289;
LABEL_83:
  v171(v172, a4);
  (*(v170 + 56))(v299, 1, 1, a4);
LABEL_167:
  v65;
}

uint64_t _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || a2 >> 16 != v5)
  {
    v4 = specialized static String._copying(_:)(a1, a2, a3, a4);
    a4;
  }

  return v4;
}

Swift::UInt64 String.init<A>(_:)(Swift::UInt64 *a1, Class *a2)
{
  v4 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8 == &type metadata for String)
  {
    return *a1;
  }

  if (a2 == &type metadata for Substring)
  {
    v11 = a1[3];
    v12 = Substring.description.getter(*a1, a1[1], a1[2], v11);
    v11;
    return v12;
  }

  else
  {
    v9 = v5;
    (*(v4 + 16))(v7, a1, a2);
    if (swift_dynamicCast(&v14, v7, a2, &type metadata for String, 6uLL))
    {
      (*(v4 + 8))(a1, a2);
      return v14;
    }

    else
    {
      v13 = (*(*(v9 + 8) + 8))(a2);
      (*(v4 + 8))(a1, a2);
      return v13;
    }
  }
}

uint64_t FixedWidthInteger.init<A>(_:radix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a5;
  v63 = a1;
  v61 = a7;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF8View);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v17 = type metadata accessor for Optional(255, a3, v15, v16);
  v20 = type metadata accessor for Optional(0, v17, v18, v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v53 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v53 - v32;
  if ((a2 - 37) <= 0xFFFFFFFFFFFFFFDCLL)
  {
    LODWORD(v52) = 0;
    v51 = 128;
    LOBYTE(v50) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = v31;
  v55 = v28;
  v57 = v29;
  v58 = a2;
  v56 = v30;
  v59 = a3;
  v34 = v62;
  if ((*(*(*(a6 + 8) + 8) + 104))(a4))
  {
    (*(*(a4 - 1) + 8))(v63, a4);
    v42 = v59;
    v45 = *(v59 - 1);
  }

  else
  {
    v35 = (*(a6 + 120))(a4, a6);
    v53 = &v53;
    MEMORY[0x1EEE9AC00](v35);
    v36 = v58;
    *(&v53 - 6) = v59;
    *(&v53 - 5) = a4;
    v50 = v34;
    v51 = a6;
    v52 = v36;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v12, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF8View: Collection);
    (*(*(AssociatedConformanceWitness + 8) + 72))(partial apply for closure #1 in FixedWidthInteger.init<A>(_:radix:), &v53 - 8, v17, v12);
    (*(v60 + 8))(v14, v12);
    v39 = v54;
    v38 = v55;
    (*(v54 + 32))(v23, v26, v55);
    v40 = v57;
    if ((*(v57 + 48))(v23, 1, v17) == 1)
    {
      v41 = v63;
      v42 = v59;
      _parseInteger<A, B>(ascii:radix:)(v63, v58, a4, v59, v62, v33);
      (*(*(a4 - 1) + 8))(v41, a4);
      (*(v39 + 8))(v23, v38);
      v43 = *(v40 + 32);
    }

    else
    {
      (*(*(a4 - 1) + 8))(v63, a4);
      v43 = *(v40 + 32);
      v43(v33, v23, v17);
      v42 = v59;
    }

    v44 = v56;
    v43(v56, v33, v17);
    v45 = *(v42 - 1);
    v46 = v45;
    if ((*(v45 + 48))(v44, 1, v42) != 1)
    {
      v48 = v61;
      (*(v45 + 32))(v61, v44, v42);
      v47 = 0;
      return (*(v46 + 56))(v48, v47, 1, v42);
    }

    (*(v40 + 8))(v44, v17);
  }

  v46 = v45;
  v47 = 1;
  v48 = v61;
  return (*(v46 + 56))(v48, v47, 1, v42);
}

unint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = a1;
  v7 = *a1;
  if (v7 == 43)
  {
    v37 = specialized Collection.subscript.getter(1, a1, v5);
    v41 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v37, v38, v39, v40);
    if (!v42)
    {
      return 0;
    }

    v44 = v41;
    v45 = a3 + 48;
    v46 = a3 + 55;
    v47 = a3 + 87;
    if (a3 > 10)
    {
      v45 = 58;
    }

    else
    {
      v47 = 97;
      v46 = 65;
    }

    if (v41)
    {
      v19 = 0;
      v48 = 0;
      v49 = -a3;
      v50 = -__PAIR128__(v43, a3) >> 64;
      if (a3 >> 63 != -1)
      {
        v50 = a3 >> 63;
        v49 = a3;
      }

      while (1)
      {
        v51 = *v44;
        if (v51 < 0x30 || v51 >= v45)
        {
          if (v51 < 0x41 || v51 >= v46)
          {
            result = 0;
            if (v51 < 0x61 || v51 >= v47)
            {
              return result;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = __PAIR128__(v48 ^ (v48 >> 63), v19 ^ (v48 >> 63)) - __PAIR128__(v48 >> 63, v48 >> 63);
        if ((__PAIR128__(v48 ^ (v48 >> 63), v19 ^ (v48 >> 63)) - __PAIR128__(v48 >> 63, v48 >> 63)) >> 64)
        {
          v54 = v50 == 0;
        }

        else
        {
          v54 = 1;
        }

        v57 = !v54 || (*(&v53 + 1) * v49) >> 64 != 0 || (v50 * v53) >> 64 != 0;
        v58 = (__PAIR128__(v50, v49) * v53) >> 64;
        if (__CFADD__((v53 * v49) >> 64, v50 * v53 + *(&v53 + 1) * v49))
        {
          v59 = 1;
        }

        else
        {
          v59 = v57;
        }

        v60 = v53 * v49;
        if ((v48 ^ (a3 >> 63)) < 0)
        {
          if (v59)
          {
            return 0;
          }

          v35 = v60 == 0;
          v60 = -v60;
          v58 = -(v58 + !v35);
          LOBYTE(v61) = v60 != 0;
        }

        else
        {
          if (v59)
          {
            return 0;
          }

          v61 = v58 >> 63;
        }

        result = 0;
        v35 = __CFADD__(v60, (v51 + v52));
        v48 = (__PAIR128__(v58, v60) + (v51 + v52)) >> 64;
        v19 = v60 + (v51 + v52);
        v62 = __OFADD__(v35, v58);
        if ((v61 & 1) != 0 || v62)
        {
          return result;
        }

        ++v44;
        if (!--v42)
        {
          return v19;
        }
      }
    }

    return 0;
  }

  if (v7 == 45)
  {
    v8 = specialized Collection.subscript.getter(1, a1, v5);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      return 0;
    }

    v15 = v12;
    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v12)
    {
      v19 = 0;
      v20 = 0;
      v21 = -a3;
      v22 = -__PAIR128__(v14, a3) >> 64;
      if (a3 >> 63 != -1)
      {
        v22 = a3 >> 63;
        v21 = a3;
      }

      while (1)
      {
        v23 = *v15;
        if (v23 < 0x30 || v23 >= v16)
        {
          if (v23 < 0x41 || v23 >= v17)
          {
            result = 0;
            if (v23 < 0x61 || v23 >= v18)
            {
              return result;
            }

            v24 = -87;
          }

          else
          {
            v24 = -55;
          }
        }

        else
        {
          v24 = -48;
        }

        v26 = __PAIR128__(v20 ^ (v20 >> 63), v19 ^ (v20 >> 63)) - __PAIR128__(v20 >> 63, v20 >> 63);
        v27 = !((__PAIR128__(v20 ^ (v20 >> 63), v19 ^ (v20 >> 63)) - __PAIR128__(v20 >> 63, v20 >> 63)) >> 64) || v22 == 0;
        v28 = v27 && (*(&v26 + 1) * v21) >> 64 == 0;
        v29 = v28 && (v22 * v26) >> 64 == 0;
        v30 = !v29;
        v31 = (__PAIR128__(v22, v21) * v26) >> 64;
        v32 = __CFADD__((v26 * v21) >> 64, v22 * v26 + *(&v26 + 1) * v21) || v30;
        v33 = v26 * v21;
        if ((v20 ^ (a3 >> 63)) < 0)
        {
          if (v32)
          {
            return 0;
          }

          v35 = v33 == 0;
          v33 = -v33;
          v31 = -(v31 + !v35);
          LOBYTE(v34) = v33 != 0;
        }

        else
        {
          if (v32)
          {
            return 0;
          }

          v34 = v31 >> 63;
        }

        result = 0;
        v35 = v33 >= (v23 + v24);
        v20 = (__PAIR128__(v31, v33) - (v23 + v24)) >> 64;
        v19 = v33 - (v23 + v24);
        v36 = __OFSUB__(v31, !v35);
        if ((v34 & 1) != 0 || v36)
        {
          break;
        }

        ++v15;
        if (!--v13)
        {
          return v19;
        }
      }

      return result;
    }

    return 0;
  }

  v63 = 0;
  v64 = 0;
  v65 = a3 + 48;
  v66 = a3 + 55;
  v67 = a3 + 87;
  if (a3 > 10)
  {
    v65 = 58;
  }

  else
  {
    v67 = 97;
    v66 = 65;
  }

  v68 = -a3;
  v69 = -__PAIR128__(v3, a3) >> 64;
  if (a3 >> 63 != -1)
  {
    v68 = a3;
    v69 = a3 >> 63;
  }

  while (1)
  {
    v70 = *v6;
    if (v70 < 0x30 || v70 >= v65)
    {
      if (v70 < 0x41 || v70 >= v66)
      {
        result = 0;
        if (v70 < 0x61 || v70 >= v67)
        {
          return result;
        }

        v71 = -87;
      }

      else
      {
        v71 = -55;
      }
    }

    else
    {
      v71 = -48;
    }

    v72 = __PAIR128__(v64 ^ (v64 >> 63), v63 ^ (v64 >> 63)) - __PAIR128__(v64 >> 63, v64 >> 63);
    v73 = !((__PAIR128__(v64 ^ (v64 >> 63), v63 ^ (v64 >> 63)) - __PAIR128__(v64 >> 63, v64 >> 63)) >> 64) || v69 == 0;
    v74 = v73 && (*(&v72 + 1) * v68) >> 64 == 0;
    v75 = v74 && (v69 * v72) >> 64 == 0;
    v76 = !v75;
    v77 = (__PAIR128__(v69, v68) * v72) >> 64;
    v78 = __CFADD__((v72 * v68) >> 64, v69 * v72 + *(&v72 + 1) * v68) || v76;
    v79 = v72 * v68;
    if ((v64 ^ (a3 >> 63)) < 0)
    {
      if (v78)
      {
        return 0;
      }

      v35 = v79 == 0;
      v79 = -v79;
      v77 = -(v77 + !v35);
      LOBYTE(v80) = v79 != 0;
    }

    else
    {
      if (v78)
      {
        return 0;
      }

      v80 = v77 >> 63;
    }

    result = 0;
    v35 = __CFADD__(v79, (v70 + v71));
    v64 = (__PAIR128__(v77, v79) + (v70 + v71)) >> 64;
    v63 = v79 + (v70 + v71);
    v81 = __OFADD__(v35, v77);
    if ((v80 & 1) != 0 || v81)
    {
      break;
    }

    ++v6;
    if (!--v5)
    {
      return v63;
    }
  }

  return result;
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v35 = specialized Collection.subscript.getter(1, a1, v4);
    v39 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v35, v36, v37, v38);
    if (!v40)
    {
      return 0;
    }

    v41 = v39;
    v42 = a3 + 55;
    v43 = a3 + 87;
    if (a3 > 10)
    {
      v44 = 58;
    }

    else
    {
      v43 = 97;
      v42 = 65;
      v44 = a3 + 48;
    }

    if (!v39)
    {
      return 0;
    }

    v17 = 0;
    v45 = 0;
    v46 = a3 >> 63;
    while (1)
    {
      v47 = *v41;
      if (v47 < 0x30 || v47 >= v44)
      {
        if (v47 < 0x41 || v47 >= v42)
        {
          result = 0;
          if (v47 < 0x61 || v47 >= v43)
          {
            return result;
          }

          v48 = -87;
        }

        else
        {
          v48 = -55;
        }
      }

      else
      {
        v48 = -48;
      }

      result = 0;
      v49 = v47 + v48;
      if (v45)
      {
        v50 = a3 >= 0;
      }

      else
      {
        v50 = 1;
      }

      v53 = !v50 || (v45 * a3) >> 64 != 0 || (v46 * v17) >> 64 != 0;
      v54 = v46 * v17 + v45 * a3;
      v55 = (v17 * a3) >> 64;
      v30 = __CFADD__(v55, v54);
      v56 = v55 + v54;
      if (v30)
      {
        v53 = 1;
      }

      v57 = v17 * a3;
      v30 = __CFADD__(v57, v49);
      v17 = v57 + v49;
      v58 = v30;
      v30 = __CFADD__(v30, v56);
      v45 = v58 + v56;
      v59 = v30;
      if ((v53 & 1) != 0 || v59)
      {
        break;
      }

      ++v41;
      if (!--v40)
      {
        return v17;
      }
    }
  }

  else
  {
    if (v6 == 45)
    {
      v7 = specialized Collection.subscript.getter(1, a1, v4);
      v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
      if (!v12)
      {
        return 0;
      }

      v13 = v11;
      v14 = a3 + 55;
      v15 = a3 + 87;
      if (a3 > 10)
      {
        v16 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v16 = a3 + 48;
      }

      if (v11)
      {
        v17 = 0;
        v18 = 0;
        v19 = a3 >> 63;
        while (1)
        {
          v20 = *v13;
          if (v20 < 0x30 || v20 >= v16)
          {
            if (v20 < 0x41 || v20 >= v14)
            {
              result = 0;
              if (v20 < 0x61 || v20 >= v15)
              {
                return result;
              }

              v21 = -87;
            }

            else
            {
              v21 = -55;
            }
          }

          else
          {
            v21 = -48;
          }

          result = 0;
          v23 = v20 + v21;
          if (v18)
          {
            v24 = a3 >= 0;
          }

          else
          {
            v24 = 1;
          }

          v27 = !v24 || (v18 * a3) >> 64 != 0 || (v19 * v17) >> 64 != 0;
          v28 = v19 * v17 + v18 * a3;
          v29 = (v17 * a3) >> 64;
          v30 = __CFADD__(v29, v28);
          v31 = v29 + v28;
          if (v30)
          {
            v27 = 1;
          }

          v32 = v17 * a3;
          v30 = v32 >= v23;
          v17 = v32 - v23;
          v33 = v30;
          v30 = v31 >= !v30;
          v18 = v31 - !v33;
          v34 = !v30;
          if ((v27 & 1) != 0 || v34)
          {
            break;
          }

          ++v13;
          if (!--v12)
          {
            return v17;
          }
        }

        return result;
      }

      return 0;
    }

    v60 = 0;
    v61 = 0;
    v62 = a3 + 48;
    v63 = a3 + 55;
    v64 = a3 + 87;
    if (a3 > 10)
    {
      v62 = 58;
    }

    else
    {
      v64 = 97;
      v63 = 65;
    }

    v65 = a3 >> 63;
    while (1)
    {
      v66 = *v5;
      if (v66 < 0x30 || v66 >= v62)
      {
        if (v66 < 0x41 || v66 >= v63)
        {
          result = 0;
          if (v66 < 0x61 || v66 >= v64)
          {
            return result;
          }

          v67 = -87;
        }

        else
        {
          v67 = -55;
        }
      }

      else
      {
        v67 = -48;
      }

      result = 0;
      v68 = v66 + v67;
      if (v61)
      {
        v69 = a3 >= 0;
      }

      else
      {
        v69 = 1;
      }

      v72 = !v69 || (v61 * a3) >> 64 != 0 || (v65 * v60) >> 64 != 0;
      v73 = v65 * v60 + v61 * a3;
      v74 = (v60 * a3) >> 64;
      v30 = __CFADD__(v74, v73);
      v75 = v74 + v73;
      if (v30)
      {
        v72 = 1;
      }

      v76 = v60 * a3;
      v30 = __CFADD__(v76, v68);
      v60 = v76 + v68;
      v77 = v30;
      v30 = __CFADD__(v30, v75);
      v61 = v77 + v75;
      v78 = v30;
      if ((v72 & 1) != 0 || v78)
      {
        break;
      }

      ++v5;
      if (!--v4)
      {
        return v60;
      }
    }
  }

  return result;
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v26 = specialized Collection.subscript.getter(1, a1, v4);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (!v31)
    {
      v20 = 0;
      return v20 | (v7 << 32);
    }

    v32 = a3 + 55;
    v33 = a3 + 87;
    if (a3 > 10)
    {
      v34 = 58;
    }

    else
    {
      v33 = 97;
      v32 = 65;
      v34 = a3 + 48;
    }

    if (!v30)
    {
      goto LABEL_67;
    }

    v35 = 0;
    do
    {
      v36 = *v30;
      if (v36 < 0x30 || v36 >= v34)
      {
        if (v36 < 0x41 || v36 >= v32)
        {
          v20 = 0;
          v7 = 1;
          if (v36 < 0x61 || v36 >= v33)
          {
            return v20 | (v7 << 32);
          }

          v37 = -87;
        }

        else
        {
          v37 = -55;
        }
      }

      else
      {
        v37 = -48;
      }

      v20 = 0;
      v38 = v36 + v37;
      v39 = v35 * a3;
      v40 = (v39 & 0xFFFFFFFF00000000) != 0;
      v24 = __CFADD__(v39, v38);
      v35 = v39 + v38;
      v41 = v24;
      v7 = 1;
      if (v40)
      {
        break;
      }

      if (v41)
      {
        break;
      }

      v7 = 0;
      ++v30;
      v20 = v35;
      --v31;
    }

    while (v31);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = 1;
      v8 = specialized Collection.subscript.getter(1, a1, v4);
      v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
      if (!v13)
      {
        v20 = 0;
        return v20 | (v7 << 32);
      }

      v14 = a3 + 55;
      v15 = a3 + 87;
      if (a3 > 10)
      {
        v16 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v16 = a3 + 48;
      }

      if (v12)
      {
        v17 = 0;
        do
        {
          v18 = *v12;
          if (v18 < 0x30 || v18 >= v16)
          {
            if (v18 < 0x41 || v18 >= v14)
            {
              v20 = 0;
              v7 = 1;
              if (v18 < 0x61 || v18 >= v15)
              {
                return v20 | (v7 << 32);
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          v20 = 0;
          v21 = v18 + v19;
          v22 = v17 * a3;
          v23 = (v22 & 0xFFFFFFFF00000000) != 0;
          v24 = v22 >= v21;
          v17 = v22 - v21;
          v25 = !v24;
          v7 = 1;
          if (v23)
          {
            break;
          }

          if (v25)
          {
            break;
          }

          v7 = 0;
          ++v12;
          v20 = v17;
          --v13;
        }

        while (v13);
        return v20 | (v7 << 32);
      }

LABEL_67:
      v20 = 0;
      v7 = 0;
      return v20 | (v7 << 32);
    }

    v42 = 0;
    v43 = a3 + 55;
    v44 = a3 + 87;
    if (a3 > 10)
    {
      v45 = 58;
    }

    else
    {
      v44 = 97;
      v43 = 65;
      v45 = a3 + 48;
    }

    do
    {
      v46 = *v5;
      if (v46 < 0x30 || v46 >= v45)
      {
        if (v46 < 0x41 || v46 >= v43)
        {
          v20 = 0;
          v7 = 1;
          if (v46 < 0x61 || v46 >= v44)
          {
            return v20 | (v7 << 32);
          }

          v47 = -87;
        }

        else
        {
          v47 = -55;
        }
      }

      else
      {
        v47 = -48;
      }

      v20 = 0;
      v48 = v46 + v47;
      v49 = v42 * a3;
      v50 = (v49 & 0xFFFFFFFF00000000) != 0;
      v24 = __CFADD__(v49, v48);
      v42 = v49 + v48;
      v51 = v24;
      v7 = 1;
      if (v50)
      {
        break;
      }

      if (v51)
      {
        break;
      }

      v7 = 0;
      ++v5;
      v20 = v42;
      --v4;
    }

    while (v4);
  }

  return v20 | (v7 << 32);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v26 = specialized Collection.subscript.getter(1, a1, v4);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (!v31)
    {
      v20 = 0;
      return v20 | (v7 << 32);
    }

    v32 = a3 + 55;
    v33 = a3 + 87;
    if (a3 > 10)
    {
      v34 = 58;
    }

    else
    {
      v33 = 97;
      v32 = 65;
      v34 = a3 + 48;
    }

    if (!v30)
    {
      goto LABEL_67;
    }

    v35 = 0;
    do
    {
      v36 = *v30;
      if (v36 < 0x30 || v36 >= v34)
      {
        if (v36 < 0x41 || v36 >= v32)
        {
          v20 = 0;
          v7 = 1;
          if (v36 < 0x61 || v36 >= v33)
          {
            return v20 | (v7 << 32);
          }

          v37 = -87;
        }

        else
        {
          v37 = -55;
        }
      }

      else
      {
        v37 = -48;
      }

      v20 = 0;
      v38 = v36 + v37;
      v39 = v35 * a3;
      v40 = v39 != v39;
      v24 = __OFADD__(v39, v38);
      v35 = v39 + v38;
      v41 = v24;
      v7 = 1;
      if (v40)
      {
        break;
      }

      if (v41)
      {
        break;
      }

      v7 = 0;
      ++v30;
      v20 = v35;
      --v31;
    }

    while (v31);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = 1;
      v8 = specialized Collection.subscript.getter(1, a1, v4);
      v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
      if (!v13)
      {
        v20 = 0;
        return v20 | (v7 << 32);
      }

      v14 = a3 + 55;
      v15 = a3 + 87;
      if (a3 > 10)
      {
        v16 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v16 = a3 + 48;
      }

      if (v12)
      {
        v17 = 0;
        do
        {
          v18 = *v12;
          if (v18 < 0x30 || v18 >= v16)
          {
            if (v18 < 0x41 || v18 >= v14)
            {
              v20 = 0;
              v7 = 1;
              if (v18 < 0x61 || v18 >= v15)
              {
                return v20 | (v7 << 32);
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          v20 = 0;
          v21 = v18 + v19;
          v22 = v17 * a3;
          v23 = v22 != v22;
          v24 = __OFSUB__(v22, v21);
          v17 = v22 - v21;
          v25 = v24;
          v7 = 1;
          if (v23)
          {
            break;
          }

          if (v25)
          {
            break;
          }

          v7 = 0;
          ++v12;
          v20 = v17;
          --v13;
        }

        while (v13);
        return v20 | (v7 << 32);
      }

LABEL_67:
      v20 = 0;
      v7 = 0;
      return v20 | (v7 << 32);
    }

    v42 = 0;
    v43 = a3 + 55;
    v44 = a3 + 87;
    if (a3 > 10)
    {
      v45 = 58;
    }

    else
    {
      v44 = 97;
      v43 = 65;
      v45 = a3 + 48;
    }

    do
    {
      v46 = *v5;
      if (v46 < 0x30 || v46 >= v45)
      {
        if (v46 < 0x41 || v46 >= v43)
        {
          v20 = 0;
          v7 = 1;
          if (v46 < 0x61 || v46 >= v44)
          {
            return v20 | (v7 << 32);
          }

          v47 = -87;
        }

        else
        {
          v47 = -55;
        }
      }

      else
      {
        v47 = -48;
      }

      v20 = 0;
      v48 = v46 + v47;
      v49 = v42 * a3;
      v50 = v49 != v49;
      v24 = __OFADD__(v49, v48);
      v42 = v49 + v48;
      v51 = v24;
      v7 = 1;
      if (v50)
      {
        break;
      }

      if (v51)
      {
        break;
      }

      v7 = 0;
      ++v5;
      v20 = v42;
      --v4;
    }

    while (v4);
  }

  return v20 | (v7 << 32);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v36 = specialized Collection.subscript.getter(1, a1, v4);
    v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v36, v37, v38, v39);
    if (v41)
    {
      v42 = v40;
      v43 = a3 + 55;
      v44 = a3 + 87;
      v45 = -1;
      if (a3 >= 0)
      {
        v46 = a3;
      }

      else
      {
        v46 = ~a3;
      }

      if (a3 >= 0)
      {
        v45 = 0;
      }

      if (a3 <= 10)
      {
        v47 = v46;
      }

      else
      {
        v47 = a3;
      }

      v48 = a3 <= 10 && a3 < 0;
      if (a3 <= 10)
      {
        v49 = v45;
      }

      else
      {
        v49 = 0;
      }

      if (a3 > 10)
      {
        v50 = 58;
      }

      else
      {
        v44 = 97;
        v43 = 65;
        v50 = a3 + 48;
      }

      if (!v42)
      {
        return 0;
      }

      v51 = 0;
      v52 = 0;
      v53 = v49 ^ v47;
      while (1)
      {
        v59 = *v42;
        if (v59 < 0x30 || v59 >= v50)
        {
          if (v59 < 0x41 || v59 >= v43)
          {
            result = 0;
            if (v59 < 0x61 || v59 >= v44)
            {
              return result;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        result = 0;
        v61 = !is_mul_ok(v52, v53);
        v62 = !is_mul_ok(v51, v49);
        v63 = __CFADD__(v52 * v53, v51 * v49);
        v64 = (__PAIR128__(v49, v53) * __PAIR128__(v52, v51)) >> 64;
        v65 = __CFADD__(v52 * v53 + v51 * v49, (v51 * v53) >> 64);
        v66 = v52 && v48;
        if (v66 || v61 || v62 || v63)
        {
          break;
        }

        v67 = v51 * v53;
        v68 = __CFADD__(v67, (v59 + v60));
        v51 = v67 + (v59 + v60);
        v69 = v68;
        if (v64 == -1)
        {
          if ((v69 | v65))
          {
            return 0;
          }

          v52 = -1;
        }

        else if (v69)
        {
          if (v65)
          {
            return 0;
          }

          v52 = v64 + 1;
        }

        else
        {
          v52 = v64;
          if (v65)
          {
            return 0;
          }
        }

        ++v42;
        if (!--v41)
        {
          return v51;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v6 == 45)
  {
    v7 = specialized Collection.subscript.getter(1, a1, v4);
    v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
    if (v12)
    {
      v13 = v11;
      v14 = a3 + 55;
      v15 = a3 + 87;
      v16 = -1;
      if (a3 >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = ~a3;
      }

      if (a3 >= 0)
      {
        v16 = 0;
      }

      if (a3 <= 10)
      {
        v18 = v17;
      }

      else
      {
        v18 = a3;
      }

      v19 = a3 <= 10 && a3 < 0;
      if (a3 <= 10)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0;
      }

      if (a3 > 10)
      {
        v21 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v21 = a3 + 48;
      }

      if (v13)
      {
        v22 = 0;
        v23 = 0;
        v24 = v20 ^ v18;
        while (1)
        {
          v25 = *v13;
          if (v25 < 0x30 || v25 >= v21)
          {
            if (v25 < 0x41 || v25 >= v14)
            {
              result = 0;
              if (v25 < 0x61 || v25 >= v15)
              {
                return result;
              }

              v26 = -87;
            }

            else
            {
              v26 = -55;
            }
          }

          else
          {
            v26 = -48;
          }

          result = 0;
          v28 = !is_mul_ok(v23, v24);
          v29 = !is_mul_ok(v22, v20);
          v30 = __CFADD__(v23 * v24, v22 * v20);
          v31 = (__PAIR128__(v20, v24) * __PAIR128__(v23, v22)) >> 64;
          v32 = __CFADD__(v23 * v24 + v22 * v20, (v22 * v24) >> 64);
          if (v23)
          {
            v33 = v19;
          }

          else
          {
            v33 = 0;
          }

          if (v33 || v28 || v29 || v30)
          {
            return result;
          }

          v34 = v22 * v24;
          v35 = v25 + v26;
          result = v34 - v35;
          if (v34 < v35)
          {
            break;
          }

          if (v31)
          {
            goto LABEL_50;
          }

          if (v32)
          {
            return 0;
          }

LABEL_51:
          ++v13;
          v22 = v34 - v35;
          v23 = v31;
          if (!--v12)
          {
            return result;
          }
        }

        if (!v31)
        {
          return 0;
        }

        --v31;
LABEL_50:
        if (v32)
        {
          return 0;
        }

        goto LABEL_51;
      }

      return 0;
    }

    return 0;
  }

  else
  {
    if (a3 <= 10)
    {
      v58 = a3 + 48;
      v55 = -1;
      v70 = a3 >= 0;
      if (a3 >= 0)
      {
        v54 = 0;
      }

      else
      {
        a3 = ~a3;
        v54 = 1;
      }

      if (v70)
      {
        v55 = 0;
      }

      v57 = 97;
      v56 = 65;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v56 = a3 + 55;
      v57 = a3 + 87;
      v58 = 58;
    }

    v71 = 0;
    v72 = 0;
    v73 = v55 ^ a3;
    while (1)
    {
      v74 = *v5;
      if (v74 < 0x30 || v74 >= v58)
      {
        if (v74 < 0x41 || v74 >= v56)
        {
          result = 0;
          if (v74 < 0x61 || v74 >= v57)
          {
            return result;
          }

          v75 = -87;
        }

        else
        {
          v75 = -55;
        }
      }

      else
      {
        v75 = -48;
      }

      result = 0;
      v76 = !is_mul_ok(v71, v73);
      v77 = !is_mul_ok(v72, v55);
      v78 = __CFADD__(v71 * v73, v72 * v55);
      v79 = (__PAIR128__(v55, v73) * __PAIR128__(v71, v72)) >> 64;
      v80 = __CFADD__(v71 * v73 + v72 * v55, (v72 * v73) >> 64);
      v81 = v71 ? v54 : 0;
      if ((v81 & 1) != 0 || v76 || v77 || v78)
      {
        break;
      }

      v82 = v72 * v73;
      v68 = __CFADD__(v82, (v74 + v75));
      v72 = v82 + (v74 + v75);
      v83 = v68;
      if (v79 == -1)
      {
        if ((v83 | v80))
        {
          return 0;
        }

        v71 = -1;
      }

      else if (v83)
      {
        if (v80)
        {
          return 0;
        }

        v71 = v79 + 1;
      }

      else
      {
        v71 = v79;
        if (v80)
        {
          return 0;
        }
      }

      ++v5;
      if (!--v4)
      {
        return v72;
      }
    }
  }

  return result;
}

uint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v23 = specialized Collection.subscript.getter(1, a1, v4);
    v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
    if (!v28)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v29 = a3 + 55;
    v30 = a3 + 87;
    if (a3 > 10)
    {
      v31 = 58;
    }

    else
    {
      v30 = 97;
      v29 = 65;
      v31 = a3 + 48;
    }

    if (v27)
    {
      LOBYTE(v32) = 0;
      while (1)
      {
        v33 = *v27;
        if (v33 < 0x30 || v33 >= v31)
        {
          if (v33 < 0x41 || v33 >= v29)
          {
            v20 = 0;
            v7 = 1;
            if (v33 < 0x61 || v33 >= v30)
            {
              return v20 | (v7 << 8);
            }

            v34 = -87;
          }

          else
          {
            v34 = -55;
          }
        }

        else
        {
          v34 = -48;
        }

        v20 = 0;
        v35 = v32 * a3;
        v7 = 1;
        if ((v35 & 0xFF00) == 0)
        {
          v32 = v35 + (v33 + v34);
          if (((v32 >> 8) & 1) == 0)
          {
            v7 = 0;
            ++v27;
            v20 = v32;
            if (--v28)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOBYTE(v36) = 0;
      v37 = a3 + 55;
      v38 = a3 + 87;
      if (a3 > 10)
      {
        v39 = 58;
      }

      else
      {
        v38 = 97;
        v37 = 65;
        v39 = a3 + 48;
      }

      while (1)
      {
        v40 = *v5;
        if (v40 < 0x30 || v40 >= v39)
        {
          if (v40 < 0x41 || v40 >= v37)
          {
            v20 = 0;
            v7 = 1;
            if (v40 < 0x61 || v40 >= v38)
            {
              return v20 | (v7 << 8);
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }
        }

        else
        {
          v41 = -48;
        }

        v20 = 0;
        v42 = v36 * a3;
        v7 = 1;
        if ((v42 & 0xFF00) == 0)
        {
          v36 = v42 + (v40 + v41);
          if (((v36 >> 8) & 1) == 0)
          {
            v7 = 0;
            ++v5;
            v20 = v36;
            if (--v4)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 8);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOBYTE(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 8);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v17 = (v17 * a3) - v21;
        v7 = 1;
        if ((v22 & 0xFF00) == 0 && (v17 & 0xFFFFFF00) == 0)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 8);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v25 = specialized Collection.subscript.getter(1, a1, v4);
    v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
    if (!v30)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v31 = a3 + 55;
    v32 = a3 + 87;
    if (a3 > 10)
    {
      v33 = 58;
    }

    else
    {
      v32 = 97;
      v31 = 65;
      v33 = a3 + 48;
    }

    if (v29)
    {
      LOBYTE(v34) = 0;
      while (1)
      {
        v35 = *v29;
        if (v35 < 0x30 || v35 >= v33)
        {
          if (v35 < 0x41 || v35 >= v31)
          {
            v20 = 0;
            v7 = 1;
            if (v35 < 0x61 || v35 >= v32)
            {
              return v20 | (v7 << 8);
            }

            v36 = -87;
          }

          else
          {
            v36 = -55;
          }
        }

        else
        {
          v36 = -48;
        }

        v20 = 0;
        v37 = v35 + v36;
        v38 = v34 * a3;
        v39 = (v34 * a3);
        v34 = v39 + v37;
        v40 = v34 != (v39 + v37);
        v7 = 1;
        if (v39 == v38 && !v40)
        {
          v7 = 0;
          ++v29;
          v20 = v34;
          if (--v30)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOBYTE(v41) = 0;
      v42 = a3 + 55;
      v43 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v43 = 97;
        v42 = 65;
        v44 = a3 + 48;
      }

      while (1)
      {
        v45 = *v5;
        if (v45 < 0x30 || v45 >= v44)
        {
          if (v45 < 0x41 || v45 >= v42)
          {
            v20 = 0;
            v7 = 1;
            if (v45 < 0x61 || v45 >= v43)
            {
              return v20 | (v7 << 8);
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }
        }

        else
        {
          v46 = -48;
        }

        v20 = 0;
        v47 = v45 + v46;
        v48 = v41 * a3;
        v49 = (v41 * a3);
        v41 = v49 + v47;
        v50 = v41 != (v49 + v47);
        v7 = 1;
        if (v49 == v48 && !v50)
        {
          v7 = 0;
          ++v5;
          v20 = v41;
          if (--v4)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOBYTE(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 8);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v23 = (v17 * a3);
        v17 = v23 - v21;
        v24 = v17 != (v23 - v21);
        v7 = 1;
        if (v23 == v22 && !v24)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 8);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v23 = specialized Collection.subscript.getter(1, a1, v4);
    v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
    if (!v28)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v29 = a3 + 55;
    v30 = a3 + 87;
    if (a3 > 10)
    {
      v31 = 58;
    }

    else
    {
      v30 = 97;
      v29 = 65;
      v31 = a3 + 48;
    }

    if (v27)
    {
      LOWORD(v32) = 0;
      while (1)
      {
        v33 = *v27;
        if (v33 < 0x30 || v33 >= v31)
        {
          if (v33 < 0x41 || v33 >= v29)
          {
            v20 = 0;
            v7 = 1;
            if (v33 < 0x61 || v33 >= v30)
            {
              return v20 | (v7 << 16);
            }

            v34 = -87;
          }

          else
          {
            v34 = -55;
          }
        }

        else
        {
          v34 = -48;
        }

        v20 = 0;
        v35 = v32 * a3;
        v7 = 1;
        if ((v35 & 0xFFFF0000) == 0)
        {
          v32 = v35 + (v33 + v34);
          if ((v32 & 0x10000) == 0)
          {
            v7 = 0;
            ++v27;
            v20 = v32;
            if (--v28)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOWORD(v36) = 0;
      v37 = a3 + 55;
      v38 = a3 + 87;
      if (a3 > 10)
      {
        v39 = 58;
      }

      else
      {
        v38 = 97;
        v37 = 65;
        v39 = a3 + 48;
      }

      while (1)
      {
        v40 = *v5;
        if (v40 < 0x30 || v40 >= v39)
        {
          if (v40 < 0x41 || v40 >= v37)
          {
            v20 = 0;
            v7 = 1;
            if (v40 < 0x61 || v40 >= v38)
            {
              return v20 | (v7 << 16);
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }
        }

        else
        {
          v41 = -48;
        }

        v20 = 0;
        v42 = v36 * a3;
        v7 = 1;
        if ((v42 & 0xFFFF0000) == 0)
        {
          v36 = v42 + (v40 + v41);
          if ((v36 & 0x10000) == 0)
          {
            v7 = 0;
            ++v5;
            v20 = v36;
            if (--v4)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 16);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOWORD(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 16);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v17 = (v17 * a3) - v21;
        v7 = 1;
        if ((v22 & 0xFFFF0000) == 0 && (v17 & 0xFFFF0000) == 0)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 16);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v25 = specialized Collection.subscript.getter(1, a1, v4);
    v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
    if (!v30)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v31 = a3 + 55;
    v32 = a3 + 87;
    if (a3 > 10)
    {
      v33 = 58;
    }

    else
    {
      v32 = 97;
      v31 = 65;
      v33 = a3 + 48;
    }

    if (v29)
    {
      LOWORD(v34) = 0;
      while (1)
      {
        v35 = *v29;
        if (v35 < 0x30 || v35 >= v33)
        {
          if (v35 < 0x41 || v35 >= v31)
          {
            v20 = 0;
            v7 = 1;
            if (v35 < 0x61 || v35 >= v32)
            {
              return v20 | (v7 << 16);
            }

            v36 = -87;
          }

          else
          {
            v36 = -55;
          }
        }

        else
        {
          v36 = -48;
        }

        v20 = 0;
        v37 = v35 + v36;
        v38 = v34 * a3;
        v39 = (v34 * a3);
        v34 = v39 + v37;
        v40 = v34 != (v39 + v37);
        v7 = 1;
        if (v39 == v38 && !v40)
        {
          v7 = 0;
          ++v29;
          v20 = v34;
          if (--v30)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOWORD(v41) = 0;
      v42 = a3 + 55;
      v43 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v43 = 97;
        v42 = 65;
        v44 = a3 + 48;
      }

      while (1)
      {
        v45 = *v5;
        if (v45 < 0x30 || v45 >= v44)
        {
          if (v45 < 0x41 || v45 >= v42)
          {
            v20 = 0;
            v7 = 1;
            if (v45 < 0x61 || v45 >= v43)
            {
              return v20 | (v7 << 16);
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }
        }

        else
        {
          v46 = -48;
        }

        v20 = 0;
        v47 = v45 + v46;
        v48 = v41 * a3;
        v49 = (v41 * a3);
        v41 = v49 + v47;
        v50 = v41 != (v49 + v47);
        v7 = 1;
        if (v49 == v48 && !v50)
        {
          v7 = 0;
          ++v5;
          v20 = v41;
          if (--v4)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOWORD(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 16);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v23 = (v17 * a3);
        v17 = v23 - v21;
        v24 = v17 != (v23 - v21);
        v7 = 1;
        if (v23 == v22 && !v24)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 16);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v25 = specialized Collection.subscript.getter(1, a1, v4);
    v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
    if (!v30)
    {
      return 0;
    }

    v31 = v29;
    v32 = a3 + 48;
    v33 = a3 + 55;
    v34 = a3 + 87;
    if (a3 > 10)
    {
      v32 = 58;
    }

    else
    {
      v34 = 97;
      v33 = 65;
    }

    if (!v29)
    {
      return 0;
    }

    v35 = 0;
    do
    {
      v36 = *v31;
      if (v36 < 0x30 || v36 >= v32)
      {
        if (v36 < 0x41 || v36 >= v33)
        {
          result = 0;
          if (v36 < 0x61 || v36 >= v34)
          {
            return result;
          }

          v37 = -87;
        }

        else
        {
          v37 = -55;
        }
      }

      else
      {
        v37 = -48;
      }

      result = 0;
      v38 = v36 + v37;
      v39 = v35 * a3;
      v40 = (v35 * a3) >> 64 != (v35 * a3) >> 63;
      v35 = v35 * a3 + v38;
      v41 = __OFADD__(v39, v38);
      if (v40)
      {
        break;
      }

      if (v41)
      {
        break;
      }

      ++v31;
      result = v35;
      --v30;
    }

    while (v30);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = specialized Collection.subscript.getter(1, a1, v4);
      v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
      if (!v12)
      {
        return 0;
      }

      v13 = v11;
      v14 = a3 + 48;
      v15 = a3 + 55;
      v16 = a3 + 87;
      if (a3 > 10)
      {
        v14 = 58;
      }

      else
      {
        v16 = 97;
        v15 = 65;
      }

      if (v11)
      {
        v17 = 0;
        do
        {
          v18 = *v13;
          if (v18 < 0x30 || v18 >= v14)
          {
            if (v18 < 0x41 || v18 >= v15)
            {
              result = 0;
              if (v18 < 0x61 || v18 >= v16)
              {
                return result;
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          result = 0;
          v21 = v18 + v19;
          v22 = v17 * a3;
          v23 = (v17 * a3) >> 64 != (v17 * a3) >> 63;
          v17 = v17 * a3 - v21;
          v24 = __OFSUB__(v22, v21);
          if (v23)
          {
            break;
          }

          if (v24)
          {
            break;
          }

          ++v13;
          result = v17;
          --v12;
        }

        while (v12);
        return result;
      }

      return 0;
    }

    v42 = 0;
    v43 = a3 + 48;
    v44 = a3 + 55;
    v45 = a3 + 87;
    if (a3 > 10)
    {
      v43 = 58;
    }

    else
    {
      v45 = 97;
      v44 = 65;
    }

    do
    {
      v46 = *v5;
      if (v46 < 0x30 || v46 >= v43)
      {
        if (v46 < 0x41 || v46 >= v44)
        {
          result = 0;
          if (v46 < 0x61 || v46 >= v45)
          {
            return result;
          }

          v47 = -87;
        }

        else
        {
          v47 = -55;
        }
      }

      else
      {
        v47 = -48;
      }

      result = 0;
      v48 = v46 + v47;
      v49 = v42 * a3;
      v50 = (v42 * a3) >> 64 != (v42 * a3) >> 63;
      v42 = v42 * a3 + v48;
      v51 = __OFADD__(v49, v48);
      if (v50)
      {
        break;
      }

      if (v51)
      {
        break;
      }

      ++v5;
      result = v42;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, int64_t a3)
{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v26 = specialized Collection.subscript.getter(1, a1, v4);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (!v31)
    {
      return 0;
    }

    v32 = v30;
    v33 = a3 + 48;
    v34 = a3 + 55;
    v35 = a3 + 87;
    if (a3 > 10)
    {
      v33 = 58;
    }

    else
    {
      v35 = 97;
      v34 = 65;
    }

    if (!v30)
    {
      return 0;
    }

    v36 = 0;
    do
    {
      v37 = *v32;
      if (v37 < 0x30 || v37 >= v33)
      {
        if (v37 < 0x41 || v37 >= v34)
        {
          result = 0;
          if (v37 < 0x61 || v37 >= v35)
          {
            return result;
          }

          v38 = -87;
        }

        else
        {
          v38 = -55;
        }
      }

      else
      {
        v38 = -48;
      }

      result = 0;
      v39 = v37 + v38;
      v40 = !is_mul_ok(v36, a3);
      v41 = v36 * a3;
      v24 = __CFADD__(v41, v39);
      v36 = v41 + v39;
      v42 = v24;
      if (v40)
      {
        break;
      }

      if (v42)
      {
        break;
      }

      ++v32;
      result = v36;
      --v31;
    }

    while (v31);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = specialized Collection.subscript.getter(1, a1, v4);
      v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
      if (!v12)
      {
        return 0;
      }

      v13 = v11;
      v14 = a3 + 48;
      v15 = a3 + 55;
      v16 = a3 + 87;
      if (a3 > 10)
      {
        v14 = 58;
      }

      else
      {
        v16 = 97;
        v15 = 65;
      }

      if (v11)
      {
        v17 = 0;
        do
        {
          v18 = *v13;
          if (v18 < 0x30 || v18 >= v14)
          {
            if (v18 < 0x41 || v18 >= v15)
            {
              result = 0;
              if (v18 < 0x61 || v18 >= v16)
              {
                return result;
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          result = 0;
          v21 = v18 + v19;
          v22 = !is_mul_ok(v17, a3);
          v23 = v17 * a3;
          v24 = v23 >= v21;
          v17 = v23 - v21;
          v25 = !v24;
          if (v22)
          {
            break;
          }

          if (v25)
          {
            break;
          }

          ++v13;
          result = v17;
          --v12;
        }

        while (v12);
        return result;
      }

      return 0;
    }

    v43 = 0;
    v44 = a3 + 48;
    v45 = a3 + 55;
    v46 = a3 + 87;
    if (a3 > 10)
    {
      v44 = 58;
    }

    else
    {
      v46 = 97;
      v45 = 65;
    }

    do
    {
      v47 = *v5;
      if (v47 < 0x30 || v47 >= v44)
      {
        if (v47 < 0x41 || v47 >= v45)
        {
          result = 0;
          if (v47 < 0x61 || v47 >= v46)
          {
            return result;
          }

          v48 = -87;
        }

        else
        {
          v48 = -55;
        }
      }

      else
      {
        v48 = -48;
      }

      result = 0;
      v49 = v47 + v48;
      v50 = !is_mul_ok(v43, a3);
      v51 = v43 * a3;
      v24 = __CFADD__(v51, v49);
      v43 = v51 + v49;
      v52 = v24;
      if (v50)
      {
        break;
      }

      if (v52)
      {
        break;
      }

      ++v5;
      result = v43;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::UInt64 specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  v5 = a1;
  v6 = *a1;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (a3 >= 11)
      {
        v49 = a3;
      }

      else
      {
        v49 = (a3 >> 63) ^ a3;
      }

      if (a3 >= 11)
      {
        v50 = a3 + 87;
      }

      else
      {
        v50 = 97;
      }

      if (a3 >= 11)
      {
        v51 = 0;
      }

      else
      {
        v51 = a3 >> 63;
      }

      if (a3 >= 11)
      {
        v52 = a3 + 55;
      }

      else
      {
        v52 = 65;
      }

      if (a3 >= 11)
      {
        v53 = 58;
      }

      else
      {
        v53 = a3 + 48;
      }

      while (1)
      {
        v54 = *v5;
        if (v54 < 0x30 || v54 >= v53)
        {
          if (v54 < 0x41 || v54 >= v52)
          {
            v26.partialValue.low = 0;
            if (v54 < 0x61 || v54 >= v50)
            {
              return v26.partialValue.low;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v54 + v55;
        v57.low = v51 ^ v49;
        v57.high = v51;
        v26 = _Int128.multipliedReportingOverflow(by:)(v57);
        v58 = *&v26.overflow;
        *&v26.overflow = v26.partialValue.low + v56;
        v60 = __CFADD__(v26.partialValue.low, v56);
        if (v26.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v60 | v58))
          {
            goto LABEL_115;
          }
        }

        else if (v60)
        {
          if (v58)
          {
            goto LABEL_115;
          }
        }

        else if (v58)
        {
          goto LABEL_115;
        }

        ++v5;
        if (!--v4)
        {
          goto LABEL_116;
        }
      }
    }

    v7 = specialized Collection.subscript.getter(1, a1, a2);
    v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
    if (!v12)
    {
      v26.partialValue.low = 0;
      return v26.partialValue.low;
    }

    v13 = a3 <= 10;
    v14 = a3 + 55;
    v15 = a3 + 87;
    v16 = a3 + 48;
    if (a3 <= 10)
    {
      v17 = (a3 >> 63) ^ a3;
    }

    else
    {
      v17 = a3;
    }

    if (a3 <= 10)
    {
      v18 = a3 >> 63;
    }

    else
    {
      v18 = 0;
    }

    if (v13)
    {
      v19 = 97;
    }

    else
    {
      v19 = v15;
    }

    if (v13)
    {
      v20 = 65;
    }

    else
    {
      v20 = v14;
    }

    if (v13)
    {
      v21 = v16;
    }

    else
    {
      v21 = 58;
    }

    v22 = v11;
    if (v11)
    {
      v23 = v12;
      do
      {
        v24 = *v22;
        if (v24 < 0x30 || v24 >= v21)
        {
          if (v24 < 0x41 || v24 >= v20)
          {
            v26.partialValue.low = 0;
            if (v24 < 0x61 || v24 >= v19)
            {
              return v26.partialValue.low;
            }

            v25 = -87;
          }

          else
          {
            v25 = -55;
          }
        }

        else
        {
          v25 = -48;
        }

        v27 = v24 + v25;
        v28.low = v18 ^ v17;
        v28.high = v18;
        v26 = _Int128.multipliedReportingOverflow(by:)(v28);
        v30 = v26.partialValue.low >= v27;
        v26.partialValue.low -= v27;
        v31 = !v30;
        if (v26.partialValue.high == 0x8000000000000000)
        {
          if ((*&v26.overflow | v31))
          {
            goto LABEL_115;
          }
        }

        else if (v26.overflow)
        {
          goto LABEL_115;
        }

        ++v22;
        --v23;
      }

      while (v23);
      return v26.partialValue.low;
    }

LABEL_113:
    v26.partialValue.low = 0;
    return v26.partialValue.low;
  }

  v32 = specialized Collection.subscript.getter(1, a1, a2);
  v36 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v32, v33, v34, v35);
  if (!v37)
  {
    v26.partialValue.low = 0;
    return v26.partialValue.low;
  }

  v38 = v36;
  v39 = a3 < 11;
  v40 = a3 + 48;
  v41 = a3 + 55;
  v42 = a3 + 87;
  if (a3 >= 11)
  {
    v43 = a3;
  }

  else
  {
    v43 = (a3 >> 63) ^ a3;
  }

  if (a3 >= 11)
  {
    v44 = 0;
  }

  else
  {
    v44 = a3 >> 63;
  }

  if (v39)
  {
    v45 = 97;
  }

  else
  {
    v45 = v42;
  }

  if (v39)
  {
    v46 = 65;
  }

  else
  {
    v46 = v41;
  }

  if (v39)
  {
    v47 = v40;
  }

  else
  {
    v47 = 58;
  }

  if (!v36)
  {
    goto LABEL_113;
  }

  v48 = v37;
  do
  {
    v61 = *v38;
    if (v61 < 0x30 || v61 >= v47)
    {
      if (v61 < 0x41 || v61 >= v46)
      {
        v26.partialValue.low = 0;
        if (v61 < 0x61 || v61 >= v45)
        {
          return v26.partialValue.low;
        }

        v62 = -87;
      }

      else
      {
        v62 = -55;
      }
    }

    else
    {
      v62 = -48;
    }

    v63 = v61 + v62;
    v64.low = v44 ^ v43;
    v64.high = v44;
    v26 = _Int128.multipliedReportingOverflow(by:)(v64);
    v65 = *&v26.overflow;
    *&v26.overflow = v26.partialValue.low + v63;
    v66 = __CFADD__(v26.partialValue.low, v63);
    if (v26.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v66 | v65))
      {
        goto LABEL_115;
      }
    }

    else if (v66)
    {
      if (v65)
      {
LABEL_115:
        v26.partialValue.low = 0;
        return v26.partialValue.low;
      }
    }

    else if (v65)
    {
      goto LABEL_115;
    }

    ++v38;
    --v48;
  }

  while (v48);
LABEL_116:
  v26.partialValue.low = *&v26.overflow;
  return v26.partialValue.low;
}

uint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v155 = a6;
  swift_getTupleTypeMetadata2(0, a4, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v157 = &v139 - v12;
  v160 = *(a5 + 8);
  v161 = a5;
  v154 = *(*(v160 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v154, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v159 = *(a4 - 1);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v139 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](&v139 - v21);
  v24 = &v139 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v158 = &v139 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v156 = &v139 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v139 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v139 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = *a1;
  v42 = a1;
  v153 = v39;
  if (v41 != 43)
  {
    if (v41 == 45)
    {
      v151 = v31;
      v158 = &v139 - v37;
      v43 = specialized Collection.subscript.getter(1, a1, a2);
      v47 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v43, v44, v45, v46);
      if (v48)
      {
        v50 = v47;
        v51 = v48;
        v52 = a3 + 48;
        v53 = a3 + 55;
        v54 = a3 + 87;
        if (a3 <= 10)
        {
          v54 = 97;
        }

        v141 = v54;
        if (a3 <= 10)
        {
          v53 = 65;
        }

        v142 = v53;
        v162 = a3;
        if (a3 > 10)
        {
          v52 = 58;
        }

        LODWORD(v147) = v52;
        v55 = v160;
        v152 = v34;
        v56 = v154;
        v57 = v160 + 96;
        v58 = *(v160 + 96);
        v59 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
        v149 = v58;
        v150 = v57;
        v58(&v162, &type metadata for Int, v59, a4, v55);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v56, a4, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v61 = v153;
        (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v14, AssociatedConformanceWitness);
        v62 = v152;
        v63 = (v56[3])(v61, a4, v56);
        if (v50)
        {
          v154 = (v159 + 8);
          v145 = v161 + 88;
          v146 = (v159 + 32);
          v140 = v161 + 96;
          do
          {
            v66 = *v50;
            if (v66 < 0x30 || v66 >= v147)
            {
              if (v66 < 0x41 || v66 >= v142)
              {
                if (v66 < 0x61 || v66 >= v141)
                {
                  v136 = v159;
                  v137 = *(v159 + 8);
                  v138 = v62;
                  goto LABEL_80;
                }

                v143 = v51;
                v144 = v50;
                v67 = v66 - 87;
              }

              else
              {
                v143 = v51;
                v144 = v50;
                v67 = v66 - 55;
              }

              LOBYTE(v162) = v67;
            }

            else
            {
              v143 = v51;
              v144 = v50;
              LOBYTE(v162) = v66 - 48;
            }

            v68 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v63, v64, v65);
            v69 = v151;
            v149(&v162, &type metadata for UInt8, v68, a4, v160);
            v70 = v161;
            v71 = v156;
            LODWORD(v153) = (*(v161 + 96))(v156, v158, a4, v161);
            v72 = *v154;
            (*v154)(v62, a4);
            v148 = *v146;
            v148(v62, v71, a4);
            v73 = v157;
            v74 = (*(v70 + 88))(v157, v69, a4, v70);
            (v72)(v69, a4);
            (v72)(v62, a4);
            v63 = (v148)(v62, v73, a4);
            if (v153 & 1) != 0 || (v74)
            {
              v135 = v62;
              goto LABEL_74;
            }

            v50 = v144 + 1;
            v51 = v143 - 1;
          }

          while (v143 != 1);
        }

        v75 = v159;
        (*(v159 + 8))(v158, a4);
        v76 = v155;
        (*(v75 + 32))(v155, v62, a4);
        return (*(v75 + 56))(v76, 0, 1, a4);
      }
    }

    else
    {
      v148 = v35;
      v111 = a3 + 48;
      v112 = a3 + 55;
      v113 = a3 + 87;
      if (a3 <= 10)
      {
        v113 = 97;
      }

      v142 = v113;
      if (a3 <= 10)
      {
        v112 = 65;
      }

      LODWORD(v143) = v112;
      v162 = a3;
      if (a3 > 10)
      {
        v111 = 58;
      }

      LODWORD(v145) = v111;
      v114 = v160;
      v116 = v160 + 96;
      v115 = *(v160 + 96);
      v152 = v42;
      v117 = lazy protocol witness table accessor for type Int and conformance Int(v35, v42, v36);
      v146 = v115;
      v147 = v116;
      v115(&v162, &type metadata for Int, v117, a4, v114);
      v118 = v154;
      v119 = swift_getAssociatedConformanceWitness(v154, a4, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v120 = v153;
      (*(v119 + 8))(&unk_18071E0A8, 256, v14, v119);
      v121 = (v118[3])(v120, a4, v118);
      v124 = v152;
      v154 = (v159 + 8);
      v150 = v161 + 96;
      v151 = (v159 + 32);
      v149 = (v161 + 80);
      while (1)
      {
        v125 = *v124;
        if (v125 < 0x30 || v125 >= v145)
        {
          if (v125 < 0x41 || v125 >= v143)
          {
            if (v125 < 0x61 || v125 >= v142)
            {
              v136 = v159;
              v137 = *(v159 + 8);
              v138 = v24;
              goto LABEL_80;
            }

            v152 = v124;
            v144 = a2;
            v126 = v125 - 87;
          }

          else
          {
            v152 = v124;
            v144 = a2;
            v126 = v125 - 55;
          }

          LOBYTE(v162) = v126;
        }

        else
        {
          v152 = v124;
          v144 = a2;
          LOBYTE(v162) = v125 - 48;
        }

        v127 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v121, v122, v123);
        v128 = v148;
        v146(&v162, &type metadata for UInt8, v127, a4, v114);
        v129 = v161;
        v130 = v156;
        LODWORD(v153) = (*(v161 + 96))(v156, v158, a4, v161);
        v72 = *v154;
        (*v154)(v24, a4);
        v131 = *v151;
        (*v151)(v24, v130, a4);
        v132 = v157;
        v133 = (*(v129 + 80))(v157, v128, a4, v129);
        (v72)(v128, a4);
        (v72)(v24, a4);
        v121 = v131(v24, v132, a4);
        if (v153 & 1) != 0 || (v133)
        {
          break;
        }

        v124 = v152 + 1;
        a2 = (v144 - 1);
        v114 = v160;
        if (v144 == 1)
        {
          (v72)(v158, a4);
          v134 = v155;
          v131(v155, v24, a4);
          return (*(v159 + 56))(v134, 0, 1, a4);
        }
      }

      v135 = v24;
LABEL_74:
      (v72)(v135, a4);
      (v72)(v158, a4);
    }

    return (*(v159 + 56))(v155, 1, 1, a4);
  }

  v152 = v40;
  v158 = v38;
  v77 = specialized Collection.subscript.getter(1, a1, a2);
  v81 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v77, v78, v79, v80);
  if (!v82)
  {
    return (*(v159 + 56))(v155, 1, 1, a4);
  }

  v84 = v81;
  v85 = v82;
  v86 = a3 + 48;
  v87 = a3 + 55;
  v88 = a3 + 87;
  if (a3 <= 10)
  {
    v88 = 97;
  }

  v141 = v88;
  if (a3 <= 10)
  {
    v87 = 65;
  }

  v142 = v87;
  v162 = a3;
  if (a3 > 10)
  {
    v86 = 58;
  }

  LODWORD(v147) = v86;
  v89 = v160;
  v90 = v160 + 96;
  v91 = *(v160 + 96);
  v92 = lazy protocol witness table accessor for type Int and conformance Int(v81, v82, v83);
  v149 = v91;
  v150 = v90;
  v91(&v162, &type metadata for Int, v92, a4, v89);
  v93 = v154;
  v94 = swift_getAssociatedConformanceWitness(v154, a4, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v95 = v153;
  (*(v94 + 8))(&unk_18071E0A8, 256, v14, v94);
  v96 = v93[3];
  v151 = v19;
  v97 = (v96)(v95, a4, v93);
  if (!v84)
  {
LABEL_49:
    v75 = v159;
    (*(v159 + 8))(v158, a4);
    v76 = v155;
    (*(v75 + 32))(v155, v151, a4);
    return (*(v75 + 56))(v76, 0, 1, a4);
  }

  v154 = (v159 + 8);
  v145 = v161 + 80;
  v146 = (v159 + 32);
  v140 = v161 + 96;
  while (1)
  {
    v100 = *v84;
    if (v100 < 0x30 || v100 >= v147)
    {
      break;
    }

    v143 = v85;
    v144 = v84;
    LOBYTE(v162) = v100 - 48;
LABEL_46:
    v102 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v97, v98, v99);
    v149(&v162, &type metadata for UInt8, v102, a4, v160);
    v103 = v161;
    v104 = v156;
    v105 = v151;
    LODWORD(v153) = (*(v161 + 96))(v156, v158, a4, v161);
    v106 = *v154;
    (*v154)(v105, a4);
    v148 = *v146;
    v148(v105, v104, a4);
    v107 = v157;
    v108 = v152;
    v109 = (*(v103 + 80))(v157, v152, a4, v103);
    (v106)(v108, a4);
    (v106)(v105, a4);
    v97 = (v148)(v105, v107, a4);
    if (v153 & 1) != 0 || (v109)
    {
      (v106)(v105, a4);
      (v106)(v158, a4);
      return (*(v159 + 56))(v155, 1, 1, a4);
    }

    v84 = v144 + 1;
    v85 = v143 - 1;
    if (v143 == 1)
    {
      goto LABEL_49;
    }
  }

  if (v100 >= 0x41 && v100 < v142)
  {
    v143 = v85;
    v144 = v84;
    v101 = v100 - 55;
LABEL_45:
    LOBYTE(v162) = v101;
    goto LABEL_46;
  }

  if (v100 >= 0x61 && v100 < v141)
  {
    v143 = v85;
    v144 = v84;
    v101 = v100 - 87;
    goto LABEL_45;
  }

  v136 = v159;
  v137 = *(v159 + 8);
  v138 = v151;
LABEL_80:
  v137(v138, a4);
  v137(v158, a4);
  return (*(v136 + 56))(v155, 1, 1, a4);
}

uint64_t closure #1 in FixedWidthInteger.init<A>(_:radix:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *a1;
  if (v7 == 43)
  {
    v16 = a3;
    v9 = a5;
    v17 = a6;
    v18 = specialized Collection.subscript.getter(1, a1, a2);
    a1 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v18, v19, v20, v21);
    a6 = v17;
    a3 = v16;
    v15 = 0;
  }

  else
  {
    if (v7 != 45)
    {
      v15 = 0;
      v22 = a4;
      return _parseIntegerDigits<A>(ascii:radix:isNegative:)(a1, a2, a3, v15, v22, a5, a6);
    }

    v8 = a3;
    v9 = a5;
    v10 = a6;
    v11 = specialized Collection.subscript.getter(1, a1, a2);
    a1 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v11, v12, v13, v14);
    a6 = v10;
    a3 = v8;
    v15 = 1;
  }

  v22 = a4;
  a5 = v9;
  return _parseIntegerDigits<A>(ascii:radix:isNegative:)(a1, a2, a3, v15, v22, a5, a6);
}

Swift::UInt16 __swiftcall _ascii16(_:)(Swift::Unicode::Scalar a1)
{
  if (a1._value >= 0x10000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1._value;
}

uint64_t _asciiDigit<A, B>(codeUnit:radix:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, const char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a1;
  v40 = a6;
  v10 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v41 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(*(a4 + 8) + 120))(a2);
  if ((v18 - 58) > 0xFFF5u)
  {
    v22 = -48;
    goto LABEL_10;
  }

  if ((v18 - 91) > 0xFFE5u)
  {
    v22 = -55;
    goto LABEL_10;
  }

  if ((v18 - 123) > 0xFFE5u)
  {
    v22 = -87;
LABEL_10:
    v23 = v22 + v18;
    v24 = (*(a5 + 64))(a3, a5);
    v25 = (*(a5 + 128))(a3, a5);
    if (v24)
    {
      if (v25 <= 16)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a3, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v15, a3, v10);
        v37 = (*(*(*(a5 + 32) + 8) + 40))(v42, v17, a3);
        (*(v41 + 8))(v17, a3);
        v35 = v40;
        if ((v37 & 1) == 0)
        {
          return (*(v41 + 56))(v35, 1, 1, a3);
        }

        v32 = (*(a5 + 120))(a3, a5);
        if (v23 >= v32)
        {
          return (*(v41 + 56))(v35, 1, 1, a3);
        }

        goto LABEL_21;
      }

      v43 = v23;
      v28 = *(a5 + 96);
      v29 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v25, v26, v27);
      v30 = &v43;
    }

    else
    {
      if (v25 <= 16)
      {
        v32 = (*(a5 + 120))(a3, a5);
        v35 = v40;
        if (v23 >= v32)
        {
          return (*(v41 + 56))(v35, 1, 1, a3);
        }

LABEL_21:
        v45 = v23;
        v38 = *(a5 + 96);
        v39 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v32, v33, v34);
        v38(&v45, &type metadata for UInt16, v39, a3, a5);
        return (*(v41 + 56))(v35, 0, 1, a3);
      }

      v44 = v23;
      v28 = *(a5 + 96);
      v29 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v25, v26, v27);
      v30 = &v44;
    }

    v28(v30, &type metadata for UInt16, v29, a3, a5);
    v31 = (*(*(*(a5 + 32) + 8) + 16))(v17, v42, a3);
    v32 = (*(v41 + 8))(v17, a3);
    v35 = v40;
    if ((v31 & 1) == 0)
    {
      return (*(v41 + 56))(v35, 1, 1, a3);
    }

    goto LABEL_21;
  }

  v19 = v40;
  v20 = *(v41 + 56);

  return v20(v19, 1, 1, a3);
}

uint64_t UInt16.init(_builtinIntegerLiteral:)(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 9 <= 8 && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

uint64_t _parseUnsignedASCII<A, B>(first:rest:radix:positive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, const char *a6@<X5>, int **a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v134 = a4;
  v139 = a3;
  v140 = a1;
  v129 = a2;
  v138 = a9;
  swift_getTupleTypeMetadata2(0, a6, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v121 = &v96 - v15;
  v130 = a5;
  v131 = a7;
  swift_getAssociatedTypeWitness(255, a7, a5, &protocol requirements base descriptor for IteratorProtocol, associated type descriptor for IteratorProtocol.Element);
  v17 = v16;
  v118 = type metadata accessor for Optional(0, v16, v18, v19);
  v117 = *(v118 - 8);
  v20 = MEMORY[0x1EEE9AC00](v118);
  v128 = &v96 - v21;
  v135 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v96 - v22;
  v136 = a8;
  v23 = *(a8 + 8);
  v116 = *(*(v23 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v116, a6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v25 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v115 = &v96 - v27;
  v28 = *(a6 - 1);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v120 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v119 = &v96 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v132 = &v96 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v114 = &v96 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v126 = &v96 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v137 = &v96 - v39;
  v42 = type metadata accessor for Optional(0, a6, v40, v41);
  v43 = *(v42 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v122 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v133 = &v96 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v96 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v96 - v51;
  v127 = v17;
  v125 = a10;
  v123 = v23;
  _asciiDigit<A, B>(codeUnit:radix:)(v139, v17, a6, a10, v23, &v96 - v51);
  v140 = v28;
  v53 = *(v28 + 48);
  if (v53(v52, 1, a6) == 1)
  {
    (*(v43 + 8))(v52, v42);
    return (*(v140 + 56))(v138, 1, 1, a6);
  }

  v54 = *(v43 + 16);
  v54(v50, v52, v42);
  if (v53(v50, 1, a6) == 1)
  {
    v55 = *(v43 + 8);
    v55(v52, v42);
    v55(v50, v42);
    return (*(v140 + 56))(v138, 1, 1, a6);
  }

  v109 = v54;
  v110 = v43 + 16;
  v56 = *(v140 + 32);
  v113 = v140 + 32;
  v112 = v56;
  v56(v137, v50, a6);
  v111 = v42;
  if ((v134 & 1) == 0)
  {
    v57 = v116;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v116, a6, v25, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v59 = v115;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v25, AssociatedConformanceWitness);
    v60 = v114;
    (v57[3])(v59, a6, v57);
    v61 = v137;
    v62 = (*(v136 + 88))(v126, v137, a6);
    v63 = *(v140 + 8);
    v63(v60, a6);
    v63(v61, a6);
    if (v62)
    {
      v63(v126, a6);
      (*(v43 + 8))(v52, v111);
      return (*(v140 + 56))(v138, 1, 1, a6);
    }

    v112(v61, v126, a6);
    v42 = v111;
  }

  v64 = v43;
  v65 = v131[2];
  v66 = v128;
  v114 = (v131 + 2);
  v108 = v65;
  (v65)(v130);
  v67 = v135;
  v68 = *(v135 + 48);
  v69 = v127;
  v107 = v135 + 48;
  v106 = v68;
  if (v68(v66, 1, v127) != 1)
  {
    v75 = *(v67 + 32);
    v74 = v67 + 32;
    v73 = v75;
    v76 = (v74 - 24);
    v102 = v136 + 96;
    v104 = (v140 + 8);
    v101 = v136 + 88;
    v100 = v136 + 80;
    v105 = (v64 + 8);
    v96 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77 = v133;
    v135 = v74;
    v99 = v53;
    v103 = v52;
    v98 = v75;
    v97 = (v74 - 24);
    while (1)
    {
      v78 = v124;
      v73(v124, v66, v69);
      _asciiDigit<A, B>(codeUnit:radix:)(v139, v69, a6, v125, v123, v77);
      (*v76)(v78, v69);
      if (v53(v77, 1, a6) == 1)
      {
        (*v104)(v137, a6);
        v92 = *v105;
        v93 = v111;
        (*v105)(v77, v111);
        v92(v52, v93);
        return (*(v140 + 56))(v138, 1, 1, a6);
      }

      v79 = v122;
      v109(v122, v77, v111);
      if (v53(v79, 1, a6) == 1)
      {
        break;
      }

      v112(v132, v79, a6);
      v81 = v136;
      v80 = v137;
      v82 = v119;
      v83 = (*(v136 + 96))(v119, v139, a6, v136);
      v126 = *v104;
      (v126)(v80, a6);
      LODWORD(v116) = v83;
      v84 = v121;
      v85 = v132;
      if (v134)
      {
        v86 = (*(v81 + 80))(v121, v132, a6, v81);
      }

      else
      {
        v86 = (*(v81 + 88))(v121, v132, a6, v81);
      }

      LODWORD(v115) = v86;
      v87 = v126;
      (v126)(v82, a6);
      (v87)(v85, a6);
      v88 = v120;
      v89 = v112;
      v112(v120, v84, a6);
      v70 = *v105;
      v90 = v111;
      (*v105)(v133, v111);
      if ((v116 | v115))
      {
        (v87)(v88, a6);
        v70(v103, v90);
        return (*(v140 + 56))(v138, 1, 1, a6);
      }

      v89(v137, v88, a6);
      v66 = v128;
      (v108)(v130, v131);
      v69 = v127;
      v91 = v106(v66, 1, v127);
      v53 = v99;
      v52 = v103;
      v73 = v98;
      v76 = v97;
      v77 = v133;
      if (v91 == 1)
      {
        v42 = v111;
        goto LABEL_10;
      }
    }

    (*v104)(v137, a6);
    v94 = *v105;
    v95 = v111;
    (*v105)(v77, v111);
    v94(v52, v95);
    v94(v79, v95);
    return (*(v140 + 56))(v138, 1, 1, a6);
  }

  v70 = *(v64 + 8);
LABEL_10:
  v70(v52, v42);
  (*(v117 + 8))(v66, v118);
  v71 = v138;
  v112(v138, v137, a6);
  return (*(v140 + 56))(v71, 0, 1, a6);
}

uint64_t _parseASCII<A, B>(codeUnits:radix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v190 = a2;
  v191 = a6;
  v197 = a8;
  v198 = a4;
  v189 = a7;
  v196 = *(a7 + 8);
  v11 = *(*(v196 + 24) + 16);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for IteratorProtocol, associated type descriptor for IteratorProtocol.Element);
  v13 = v12;
  v184 = v11;
  swift_getAssociatedTypeWitness(0, v11, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v183 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v169 - v15;
  v16 = swift_checkMetadataState(0, v13);
  v17 = *(v16 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v185 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v192 = &v169 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v195 = &v169 - v22;
  v25 = type metadata accessor for Optional(0, v16, v23, v24);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v186 = &v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v193 = &v169 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v169 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v169 - v34;
  v36 = *(a5 + 16);
  v194 = a1;
  v37 = a3;
  v38 = a3;
  v39 = a5;
  v187 = v36;
  v188 = a5 + 16;
  v36(v38, a5);
  v40 = v17;
  v41 = *(v17 + 48);
  if (v41(v35, 1, v16) == 1)
  {
    (*(v26 + 8))(v35, v25);
    return (*(*(v198 - 1) + 56))(v197, 1, 1);
  }

  v179 = *(v26 + 16);
  v180 = v26 + 16;
  v179(v33, v35, v25);
  if (v41(v33, 1, v16) == 1)
  {
    v42 = *(v26 + 8);
    v42(v35, v25);
    v42(v33, v25);
    return (*(*(v198 - 1) + 56))(v197, 1, 1);
  }

  v181 = v41;
  v175 = v35;
  v176 = v26;
  v178 = v25;
  v43 = *(v40 + 32);
  v44 = v195;
  v171 = v40 + 32;
  v170 = v43;
  v43(v195, v33, v16);
  v45 = v196;
  v46 = v196 + 64;
  v47 = *(v196 + 64);
  v48 = v47(v16, v196);
  v174 = v46;
  v173 = v47;
  v177 = v39;
  if (v48)
  {
    v49 = v47(v16, v45);
    v50 = v45;
    v51 = v49;
    v172 = *(v50 + 128);
    v52 = v172(v16);
    v55 = v37;
    if (v51)
    {
      v56 = v40;
      v57 = v181;
      if (v52 <= 16)
      {
        v73 = v183;
        v74 = v184;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v184, v16, v183, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v76 = v182;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v73, AssociatedConformanceWitness);
        v77 = v192;
        v74[3](v76, v16, v74);
        v45 = v196;
        LOBYTE(v74) = (*(*(*(v196 + 32) + 8) + 32))(v44, v77, v16);
        (*(v56 + 8))(v77, v16);
        v63 = v193;
        if (v74)
        {
          v78 = (*(v45 + 120))(v16, v45);
          v55 = v37;
          v62 = v194;
          if (v78 == 43)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v55 = v37;
          v62 = v194;
        }
      }

      else
      {
        v199[0] = 43;
        v58 = v196;
        v169 = *(v196 + 96);
        v59 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v52, v53, v54);
        v60 = v192;
        v169(v199, &type metadata for UInt16, v59, v16, v58);
        v45 = v58;
        v61 = (*(*(*(v58 + 16) + 8) + 8))(v44, v60, v16);
        (*(v56 + 8))(v60, v16);
        v55 = v37;
        v63 = v193;
        v62 = v194;
        if (v61)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v62 = v194;
      v56 = v40;
      v57 = v181;
      if (v52 >= 16)
      {
        v199[0] = 43;
        v79 = v196;
        v169 = *(v196 + 96);
        v80 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v52, v53, v54);
        v81 = v55;
        v82 = v192;
        v169(v199, &type metadata for UInt16, v80, v16, v79);
        v45 = v79;
        v83 = (*(*(*(v79 + 16) + 8) + 8))(v44, v82, v16);
        v84 = v82;
        v55 = v81;
        v62 = v194;
        (*(v56 + 8))(v84, v16);
        v63 = v193;
        if (v83)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v45 = v196;
        v68 = (*(v196 + 120))(v16, v196);
        v63 = v193;
        if (v68 == 43)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v172 = *(v45 + 128);
    v64 = (v172)(v16, v45);
    v55 = v37;
    if (v64 >= 16)
    {
      v199[0] = 43;
      v69 = *(v196 + 96);
      v70 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v64, v65, v66);
      v71 = v192;
      v69(v199, &type metadata for UInt16, v70, v16, v196);
      v45 = v196;
      v72 = (*(*(*(v196 + 16) + 8) + 8))(v44, v71, v16);
      v56 = v40;
      (*(v40 + 8))(v71, v16);
      v63 = v193;
      v62 = v194;
      v57 = v181;
      if (v72)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v67 = (*(v45 + 120))(v16, v45);
      v63 = v193;
      v62 = v194;
      v56 = v40;
      v57 = v181;
      if (v67 == 43)
      {
        goto LABEL_22;
      }
    }
  }

  v104 = v173;
  if (v173(v16, v45))
  {
    v105 = v104(v16, v45);
    v106 = v172(v16);
    if (v105)
    {
      v109 = v55;
      v57 = v181;
      if (v106 > 16)
      {
        v199[0] = 45;
        v110 = v196;
        v169 = *(v196 + 96);
        v111 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v106, v107, v108);
        v112 = v192;
        v169(v199, &type metadata for UInt16, v111, v16, v110);
        v45 = v110;
        v113 = (*(*(*(v110 + 16) + 8) + 8))(v195, v112, v16);
        (*(v56 + 8))(v112, v16);
        v55 = v109;
        v62 = v194;
        if (v113)
        {
          goto LABEL_22;
        }

LABEL_49:
        v138 = v195;
        _parseUnsignedASCII<A, B>(first:rest:radix:positive:)(v195, v62, v190, 1, v55, v198, v177, v191, v197, v189);
        (*(v56 + 8))(v138, v16);
        return (*(v176 + 8))(v175, v178);
      }

      v126 = v183;
      v127 = v184;
      v128 = swift_getAssociatedConformanceWitness(v184, v16, v183, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v129 = v182;
      (*(v128 + 8))(&qword_18071E0A8, 256, v126, v128);
      v130 = v192;
      (*(v127 + 3))(v129, v16, v127);
      v45 = v196;
      LOBYTE(v126) = (*(*(*(v196 + 32) + 8) + 32))(v195, v130, v16);
      (*(v56 + 8))(v130, v16);
      v55 = v109;
      v62 = v194;
      if ((v126 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v57 = v181;
      if (v106 >= 16)
      {
        v199[0] = 45;
        v131 = v196;
        v169 = *(v196 + 96);
        v132 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v106, v107, v108);
        v133 = v62;
        v134 = v55;
        v135 = v192;
        v169(v199, &type metadata for UInt16, v132, v16, v131);
        v45 = v131;
        v136 = (*(*(*(v131 + 16) + 8) + 8))(v195, v135, v16);
        v137 = v135;
        v55 = v134;
        v62 = v133;
        v63 = v193;
        (*(v56 + 8))(v137, v16);
        if (v136)
        {
          goto LABEL_22;
        }

        goto LABEL_49;
      }

      v45 = v196;
    }

    if ((*(v45 + 120))(v16, v45) != 45)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v114 = v195;
    v115 = (v172)(v16, v45);
    if (v115 >= 16)
    {
      v199[0] = 45;
      v119 = *(v196 + 96);
      v120 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v115, v116, v117);
      v121 = v62;
      v122 = v55;
      v123 = v192;
      v119(v199, &type metadata for UInt16, v120, v16, v196);
      v45 = v196;
      v124 = (*(*(*(v196 + 16) + 8) + 8))(v114, v123, v16);
      v125 = v123;
      v55 = v122;
      v62 = v121;
      v63 = v193;
      (*(v56 + 8))(v125, v16);
      v57 = v181;
      if ((v124 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v118 = (*(v45 + 120))(v16, v45);
      v57 = v181;
      if (v118 != 45)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_22:
  v187(v55, v177);
  if (v57(v63, 1, v16) == 1)
  {
    (*(v56 + 8))(v195, v16);
    v85 = *(v176 + 8);
    v86 = v178;
    v85(v63, v178);
    v85(v175, v86);
    return (*(*(v198 - 1) + 56))(v197, 1, 1);
  }

  v87 = v186;
  v88 = v178;
  v179(v186, v63, v178);
  if (v57(v87, 1, v16) == 1)
  {
    (*(v56 + 8))(v195, v16);
    v89 = *(v176 + 8);
    v89(v63, v88);
    v89(v175, v88);
    v89(v87, v88);
    return (*(*(v198 - 1) + 56))(v197, 1, 1);
  }

  v170(v185, v87, v16);
  v91 = v173;
  if ((v173(v16, v45) & 1) == 0)
  {
    v139 = v195;
    v140 = (v172)(v16, v45);
    if (v140 < 16)
    {
      v143 = (*(v45 + 120))(v16, v45);
      goto LABEL_54;
    }

    v199[0] = 45;
    v145 = *(v45 + 96);
    v146 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v140, v141, v142);
    v147 = v55;
    v148 = v192;
    v145(v199, &type metadata for UInt16, v146, v16, v45);
    v149 = (*(*(*(v45 + 16) + 8) + 8))(v139, v148, v16);
    v103 = *(v56 + 8);
    v150 = v148;
    v55 = v147;
    v62 = v194;
    v103(v150, v16);
LABEL_61:
    v103(v139, v16);
    if (v149)
    {
      goto LABEL_62;
    }

    goto LABEL_65;
  }

  v92 = v91(v16, v45);
  v93 = v172(v16);
  if ((v92 & 1) == 0)
  {
    if (v93 < 16)
    {
      v139 = v195;
      v143 = (*(v196 + 120))(v16, v196);
LABEL_54:
      v144 = v143;
      v103 = *(v56 + 8);
      v103(v139, v16);
      if (v144 != 45)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v199[0] = 45;
    v159 = v196;
    v160 = *(v196 + 96);
    v161 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v93, v94, v95);
    v162 = v55;
    v163 = v192;
    v160(v199, &type metadata for UInt16, v161, v16, v159);
    v164 = *(*(*(v159 + 16) + 8) + 8);
    v139 = v195;
    v149 = v164(v195, v163, v16);
    v103 = *(v56 + 8);
    v165 = v163;
    v55 = v162;
    v103(v165, v16);
    goto LABEL_61;
  }

  v188 = v55;
  if (v93 <= 16)
  {
    v152 = v183;
    v151 = v184;
    v153 = swift_getAssociatedConformanceWitness(v184, v16, v183, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v154 = v182;
    (*(v153 + 8))(&qword_18071E0A8, 256, v152, v153);
    v155 = v192;
    (*(v151 + 3))(v154, v16, v151);
    v156 = v195;
    v157 = v196;
    LOBYTE(v152) = (*(*(*(v196 + 32) + 8) + 32))(v195, v155, v16);
    v103 = *(v56 + 8);
    v103(v155, v16);
    if (v152)
    {
      v158 = (*(v157 + 120))(v16, v157);
      v103(v156, v16);
      v55 = v188;
      if (v158 != 45)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v103(v156, v16);
    v55 = v188;
LABEL_65:
    v166 = v185;
    _parseUnsignedASCII<A, B>(first:rest:radix:positive:)(v185, v62, v190, 1, v55, v198, v177, v191, v197, v189);
    goto LABEL_63;
  }

  v199[0] = 45;
  v96 = v196;
  v97 = *(v196 + 96);
  v98 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v93, v94, v95);
  v99 = v192;
  v97(v199, &type metadata for UInt16, v98, v16, v96);
  v100 = *(*(*(v96 + 16) + 8) + 8);
  v101 = v195;
  v102 = v100(v195, v99, v16);
  v103 = *(v56 + 8);
  v103(v99, v16);
  v103(v101, v16);
  v55 = v188;
  if ((v102 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_62:
  v166 = v185;
  _parseUnsignedASCII<A, B>(first:rest:radix:positive:)(v185, v62, v190, 0, v55, v198, v177, v191, v197, v189);
LABEL_63:
  v103(v166, v16);
  v167 = *(v176 + 8);
  v168 = v178;
  v167(v63, v178);
  return (v167)(v175, v168);
}

uint64_t static AdditiveArithmetic.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 24))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static AdditiveArithmetic.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 40))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static AdditiveArithmetic<>.zero.getter(const char *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a1, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v6, AssociatedConformanceWitness);
  return (*(a3 + 24))(v8, a1, a3);
}

Swift::Void __swiftcall SignedNumeric.negate()()
{
  v2 = v0;
  v3 = *(v0 - 1);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v10 = *(v9 + 8);
  v11 = *(v10 + 16);
  swift_getAssociatedTypeWitness(0, v11, v2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v2, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
  (*(v11 + 24))(v15, v2, v11);
  (*(v3 + 32))(v6, v1, v2);
  (*(*(v10 + 8) + 40))(v8, v6, v2);
  v17 = *(v3 + 8);
  v17(v6, v2);
  v17(v8, v2);
}

{
  v2 = v0;
  v3 = *(v0 - 1);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v10 = *(v9 + 8);
  v11 = *(v10 + 16);
  swift_getAssociatedTypeWitness(0, v11, v2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v2, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
  (*(v11 + 24))(v15, v2, v11);
  (*(v3 + 32))(v6, v1, v2);
  (*(*(v10 + 8) + 40))(v8, v6, v2);
  v17 = *(v3 + 8);
  v17(v6, v2);
  v17(v8, v2);
}

uint64_t BinaryInteger._lowWord.getter(const char *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = *(*(*(swift_getAssociatedConformanceWitness(a2, a1, v5, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(a2 + 112))(a1, a2);
  (*(v6 + 32))(v5, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  (*(AssociatedConformanceWitness + 16))(&v14, v8, AssociatedConformanceWitness);
  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = *(*(*(swift_getAssociatedConformanceWitness(a2, a1, v5, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(a2 + 112))(a1, a2);
  (*(v6 + 32))(v5, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  (*(AssociatedConformanceWitness + 16))(&v14, v8, AssociatedConformanceWitness);
  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

Swift::Int __swiftcall BinaryInteger._binaryLogarithm()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 1);
  (MEMORY[0x1EEE9AC00])();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v5, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
  (*(v10 + 24))(v14, v5, v10);
  v16 = (*(*(v4[4] + 8) + 40))(v2, v8, v5);
  v17 = v6 + 8;
  v37 = *(v6 + 8);
  v37(v8, v5);
  if ((v16 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = v4[16];
  v19 = v18(v5, v4);
  v20 = v19 + 62;
  if (v19 - 1 >= 0)
  {
    v20 = v19 - 1;
  }

  v21 = v20 >> 6;
  v31 = v20 & 0xFFFFFFFFFFFFFFC0;
  v32 = v19 - 1;
  v22 = v19 - 1 - (v20 & 0xFFFFFFFFFFFFFFC0);
  v36 = v18;
  v23 = v18(v5, v4);
  v38 = ~v22 + v23;
  v24 = v4[30];
  v35 = lazy protocol witness table accessor for type Int and conformance Int(v23, v25, v26);
  v24(v3, &v38, &type metadata for Int);
  v33 = v4[15];
  v34 = v4 + 15;
  v27 = v33(v5, v4);
  v37(v8, v5);
  if (!v27)
  {
    v28 = v31 - v32;
    v32 = v17;
    v29 = v28 - 65;
    do
    {
      --v21;
      v38 = v36(v5, v4) + v29;
      (v24)(v3, &v38, &type metadata for Int, v35, v5, v4);
      v27 = v33(v5, v4);
      v37(v8, v5);
      v29 -= 64;
    }

    while (!v27);
  }

  return (__clz(v27) | (v21 << 6)) ^ 0x3F;
}

uint64_t static BinaryInteger.& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 200))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 200))(a5, a2, a3, a4);
}

uint64_t static BinaryInteger.| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 216))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 216))(a5, a2, a3, a4);
}

uint64_t static BinaryInteger.^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 232))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 232))(a5, a2, a3, a4);
}

uint64_t static BinaryInteger.>> infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, a1, a5);
  return (*(a6 + 248))(a7, a2, a3, a4, a5, a6);
}

{
  (*(*(a3 - 8) + 16))(a7, a1);
  return (*(a5 + 248))(a7, a2, a4, a6, a3, a5);
}

uint64_t static BinaryInteger.<< infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, a1, a5);
  return (*(a6 + 264))(a7, a2, a3, a4, a5, a6);
}

{
  (*(*(a3 - 8) + 16))(a7, a1);
  return (*(a5 + 264))(a7, a2, a4, a6, a3, a5);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(int *a1, int a2, int a3)
{
  if (!a2 || a2 == -1 && a3 == 0x80000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return (a3 / a2);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(_WORD *a1, __int16 a2, __int16 a3)
{
  if (!a2 || a2 == -1 && a3 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return (a3 / a2);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(_OWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!(a2 | a3) || (a2 & a3) == 0xFFFFFFFFFFFFFFFFLL && !(a4 | a5 ^ 0x8000000000000000))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __divti3();
  *a1 = __PAIR128__(a5, a4) - __PAIR128__(v11, result) * __PAIR128__(a3, a2);
  return result;
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(_BYTE *a1, char a2, char a3)
{
  if (!a2 || a2 == -1 && a3 == 128)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return (a3 / a2);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a2 == -1 && a3 == 0x8000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return a3 / a2;
}

uint64_t BinaryInteger.quotientAndRemainder(dividingBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  (*(a5 + 152))(v6, a3, a4, a5);
  return (*(a5 + 168))(v6, a3, a4, a5);
}

BOOL specialized BinaryInteger.isMultiple(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 | a2)
  {
    a3 = __umodti3();
    a4 = v4;
  }

  return (a3 | a4) == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2;
  if (a1)
  {
    v2 = a2 % a1;
  }

  return v2 == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unsigned __int16 a1, unsigned __int16 a2)
{
  v2 = a2;
  if (a1)
  {
    v2 = a2 % a1;
  }

  return v2 == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unsigned int a1, unsigned int a2)
{
  if (a1)
  {
    a2 %= a1;
  }

  return a2 == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  v6.high = a3;
  if (!(a2 | a1))
  {
    return (a4 | a3) == 0;
  }

  v10[1] = v4;
  v10[2] = v5;
  v6.low = a2;
  specialized _wideDivide22<A>(_:by:)(v10, &v9, &v8, a4, v6, a1);
  return !v9 && v8 == 0;
}

uint64_t BinaryInteger.isMultiple(of:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v8, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  v93 = *(swift_getAssociatedConformanceWitness(v8, a2, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v93, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v92 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v90 - v12;
  v13 = swift_checkMetadataState(0, v10);
  v98 = *(v13 - 1);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v90 - v18;
  v99 = v8;
  v19 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v19, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v21 = v20;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v94 = &v90 - v23;
  v101 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a3 + 64);
  v26 = v25(a2, a3);
  v103 = v4;
  v90 = v21;
  if ((v26 & 1) == 0)
  {
    v96 = v25;
    v30 = v25(a2, a3);
    v95 = *(a3 + 128);
    v31 = v95(a2, a3);
    if (v30)
    {
      if (v31 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v19, a2, v21, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v35 = v94;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v21, AssociatedConformanceWitness);
        v36 = v100;
        (*(v19 + 24))(v35, a2, v19);
        v37 = (*(*(*(a3 + 32) + 8) + 32))(a1, v36, a2);
        (*(v101 + 8))(v36, a2);
        v25 = v96;
        if ((v37 & 1) == 0 || (*(a3 + 120))(a2, a3))
        {
          goto LABEL_11;
        }

LABEL_22:
        if (v25(a2, a3))
        {
          v69 = v103;
          v70 = v95(a2, a3);
          if (v70 >= 64)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v73 = v25(a2, a3);
        v69 = v103;
        v70 = v95(a2, a3);
        if (v73)
        {
          if (v70 <= 64)
          {
            v74 = v90;
            v75 = swift_getAssociatedConformanceWitness(v19, a2, v90, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v76 = v94;
            (*(v75 + 8))(&qword_18071E0A8, 256, v74, v75);
            v77 = v100;
            (*(v19 + 24))(v76, a2, v19);
            LOBYTE(v74) = (*(*(*(a3 + 32) + 8) + 32))(v69, v77, a2);
            (*(v101 + 8))(v77, a2);
            if ((v74 & 1) == 0)
            {
              goto LABEL_28;
            }

LABEL_33:
            v78 = (*(a3 + 120))(a2, a3) == 0;
            return v78 & 1;
          }
        }

        else if (v70 < 64)
        {
          goto LABEL_33;
        }

LABEL_34:
        v105 = 0;
        v86 = *(a3 + 96);
        v87 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
        v88 = v100;
        v86(&v105, &type metadata for Int, v87, a2, a3);
        v78 = (*(*(*(a3 + 16) + 8) + 8))(v69, v88, a2);
        (*(v101 + 8))(v88, a2);
        return v78 & 1;
      }
    }

    else if (v31 < 64)
    {
      v62 = (*(a3 + 120))(a2, a3);
      v25 = v96;
      if (v62)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    v105 = 0;
    v63 = v19;
    v64 = *(a3 + 96);
    v65 = lazy protocol witness table accessor for type Int and conformance Int(v31, v32, v33);
    v66 = a1;
    v67 = v100;
    v64(&v105, &type metadata for Int, v65, a2, a3);
    v19 = v63;
    v68 = (*(*(*(a3 + 16) + 8) + 8))(v66, v67, a2);
    (*(v101 + 8))(v67, a2);
    v25 = v96;
    if (v68)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v95 = *(a3 + 128);
  v27 = v95(a2, a3);
  if (v27 >= 64)
  {
    v105 = 0;
    v96 = v25;
    v38 = v19;
    v39 = *(a3 + 96);
    v40 = lazy protocol witness table accessor for type Int and conformance Int(v27, v28, v29);
    v41 = a1;
    v42 = v100;
    v39(&v105, &type metadata for Int, v40, a2, a3);
    v25 = v96;
    v19 = v38;
    v43 = (*(*(*(a3 + 16) + 8) + 8))(v41, v42, a2);
    (*(v101 + 8))(v42, a2);
    if (v43)
    {
      goto LABEL_22;
    }
  }

  else if (!(*(a3 + 120))(a2, a3))
  {
    goto LABEL_22;
  }

LABEL_11:
  v44 = v99;
  v45 = *(v99 + 7);
  v46 = v102;
  v45(a2, v99);
  v47 = v97;
  v45(a2, v44);
  v48 = swift_getAssociatedConformanceWitness(a3, a2, v13, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  (*(v48 + 168))(v46, v47, v13, v48);
  v49 = *(v98 + 8);
  v49(v47, v13);
  v49(v46, v13);
  v50 = *(v48 + 64);
  if (v50(v13, v48))
  {
    v51 = (*(v48 + 128))(v13, v48);
    if (v51 >= 64)
    {
      goto LABEL_31;
    }

LABEL_30:
    v79 = v104;
    v80 = (*(v48 + 120))(v13, v48);
    v49(v79, v13);
    v78 = v80 == 0;
    return v78 & 1;
  }

  v54 = v50(v13, v48);
  v51 = (*(v48 + 128))(v13, v48);
  if ((v54 & 1) == 0)
  {
    if (v51 < 64)
    {
      goto LABEL_30;
    }

LABEL_31:
    v105 = 0;
    v81 = *(v48 + 96);
    v82 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
    v83 = v102;
    v81(&v105, &type metadata for Int, v82, v13, v48);
    v84 = swift_getAssociatedConformanceWitness(v44, a2, v13, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v85 = v104;
    v78 = (*(*(v84 + 8) + 8))(v104, v83, v13);
    v49(v83, v13);
    v49(v85, v13);
    return v78 & 1;
  }

  if (v51 > 64)
  {
    goto LABEL_31;
  }

  v55 = v92;
  v56 = v93;
  v57 = swift_getAssociatedConformanceWitness(v93, v13, v92, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v58 = v91;
  (*(v57 + 8))(&qword_18071E0A8, 256, v55, v57);
  v59 = v102;
  (v56[3])(v58, v13, v56);
  v60 = swift_getAssociatedConformanceWitness(v44, a2, v13, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  v61 = (*(v60 + 32))(v104, v59, v13, v60);
  v49(v59, v13);
  if (v61)
  {
    goto LABEL_30;
  }

  v49(v104, v13);
LABEL_28:
  v78 = 0;
  return v78 & 1;
}

uint64_t specialized BinaryInteger.signum()(uint64_t a1, uint64_t a2)
{
  v2 = a1 != 0;
  if (a2)
  {
    v2 = a2 > 0;
  }

  if (v2)
  {
    return !a2 || a2 >= 0;
  }

  else if (a2 < 0)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t BinaryInteger.signum()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v39 = *(a2 + 24);
  v5 = *(v39 + 16);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = *(a1 - 1);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v34 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a1, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v44 = *(AssociatedConformanceWitness + 8);
  v45 = AssociatedConformanceWitness;
  v44(&qword_18071E0A8, 256, v7);
  v19 = *(v5 + 24);
  v37 = v5;
  v41 = v19;
  v19(v10, a1, v5);
  v20 = *(*(a2 + 32) + 8);
  v21 = (*(v20 + 40))(v42, v16, a1, v20);
  v22 = *(v11 + 8);
  v38 = v11 + 8;
  v35 = v22;
  v22(v16, a1);
  if (v21)
  {
    v23 = &qword_1806729C0;
    v24 = 512;
  }

  else
  {
    v23 = &qword_18071E0A8;
    v24 = 256;
  }

  (v44)(v23, v24, v7, v45);
  v25 = v37;
  v26 = v41;
  v41(v10, a1, v37);
  (v44)(&qword_18071E0A8, 256, v7, v45);
  v26(v10, a1, v25);
  v27 = (*(v20 + 16))(v42, v16, a1, v20);
  v28 = v35;
  v35(v16, a1);
  if (v27)
  {
    v29 = &qword_1806729C0;
    v30 = 512;
  }

  else
  {
    v29 = &qword_18071E0A8;
    v30 = 256;
  }

  (v44)(v29, v30, v7, v45);
  v31 = v36;
  v41(v10, a1, v25);
  v32 = v43;
  (*(*(v39 + 8) + 40))(v43, v31, a1);
  v28(v31, a1);
  return (v28)(v32, a1);
}

uint64_t BinaryInteger.init()(const char *a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v3, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, a1, v5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v5, AssociatedConformanceWitness);
  return (*(v3 + 24))(v7, a1, v3);
}

uint64_t specialized BinaryInteger._description(radix:uppercase:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4)
{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a4;
  v5 = a3;
  v6 = a4 == 0;
  v7 = 48;
  if (a4 | a3)
  {
    v9 = vcnt_s8(a1);
    v9.i16[0] = vaddlv_u8(v9);
    v35 = v9.u32[0];
    v10 = __clz(__rbit64(a1));
    v34 = a1 - 1;
    if (a2)
    {
      v11 = 55;
    }

    else
    {
      v11 = 87;
    }

    v12 = &_swiftEmptyArrayStorage;
    do
    {
      if (v35 == 1)
      {
        v13 = (v4 << (-v10 & 0x3F)) | (v5 >> v10);
        v4 >>= v10;
        LOBYTE(v14) = v5 & v34;
        if (v10)
        {
          v5 = v13;
        }
      }

      else
      {
        v15 = v4 != 0;
        if (v6)
        {
          v15 = v5 > a1;
        }

        if (v15)
        {
          if (v6)
          {
            v4 = 0;
            v14 = v5 % a1;
            v5 /= a1;
          }

          else
          {
            if (v4 % a1)
            {
              v17 = __udivti3();
              LOBYTE(v14) = v5 - v17 * a1;
              v5 = v17;
            }

            else
            {
              v14 = v5 % a1;
              v5 /= a1;
            }

            v4 /= a1;
          }
        }

        else
        {
          if (v5 < a1)
          {
            v16 = v5;
          }

          else
          {
            v16 = 0;
          }

          if (v6)
          {
            LOBYTE(v14) = v16;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          v5 = !v6 || v5 >= a1;
          v4 = 0;
        }
      }

      if (v14 >= 0xAu && a1 >= 0xB)
      {
        v19 = v11;
      }

      else
      {
        v19 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v12))
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v12[2]->isa + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), &v21->isa + 1, 1, v12);
      }

      v12[2] = (&v21->isa + 1);
      *(&v21->info + v12) = v19 + v14;
      v6 = v4 == 0;
    }

    while (v4 | v5);
    specialized MutableCollection<>.reverse()();
    v22 = v12[2];
    if (v22)
    {
      if (v22 <= 0xF)
      {
        v26 = v22 - 8;
        v27 = 8;
        if (v22 < 8)
        {
          v27 = v12[2];
        }

        v28 = (v27 - 1);
        if (v22 < v27 - 1)
        {
          v28 = v12[2];
        }

        if (v27 == v28)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v7 = *(v12 + 32);
        if (v22 != 1)
        {
          v7 |= *(v12 + 33) << 8;
          if (v22 != 2)
          {
            v7 |= *(v12 + 34) << 16;
            if (v22 != 3)
            {
              v7 |= *(v12 + 35) << 24;
              if (v22 != 4)
              {
                v7 |= *(v12 + 36) << 32;
                if (v22 != 5)
                {
                  v7 |= *(v12 + 37) << 40;
                  if (v22 != 6)
                  {
                    v7 |= *(v12 + 38) << 48;
                    if (v22 != 7)
                    {
                      v7 |= *(v12 + 39) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v22 >= 9)
        {
          v29 = 0;
          v30 = 0;
          v31 = (v12 + 5);
          do
          {
            v32 = *v31++;
            v29 |= v32 << v30;
            v30 += 8;
            --v26;
          }

          while (v26);
        }
      }

      else
      {
        v23 = v22 | 0xF000000000000000;
        v24 = _allocateStringStorage(codeUnitCapacity:)(v12[2]);
        *(v24 + 16) = v25;
        *(v24 + 24) = v22 | 0xF000000000000000;
        if (v25 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v23 = *(v24 + 24);
        }

        *(v24 + 32 + (v23 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(v12 + 32, v22, (v24 + 32));
        v7 = *(v24 + 24);
      }
    }

    else
    {
      v7 = 0;
    }

    v12;
  }

  return v7;
}

{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a4;
  v5 = a3;
  v6 = 48;
  if (a3 | a4)
  {
    v8 = vcnt_s8(a1);
    v8.i16[0] = vaddlv_u8(v8);
    v32 = v8.u32[0];
    if (a2)
    {
      v9 = 55;
    }

    else
    {
      v9 = 87;
    }

    v10 = __clz(__rbit64(a1));
    v31 = a1 - 1;
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      if (v32 == 1)
      {
        v12 = v5 & v31;
        if ((v10 & 0x40) != 0)
        {
          v5 = v4 >> v10;
        }

        else
        {
          v5 = ((2 * v4) << ~v10) | (v5 >> v10);
        }

        if ((v10 & 0x40) != 0)
        {
          v4 = 0;
        }

        else
        {
          v4 >>= v10;
        }
      }

      else
      {
        v13 = __udivti3();
        v4 = v14;
        v12 = v5 - v13 * a1;
        v5 = v13;
      }

      if (v12 >= 0xAu && a1 >= 0xB)
      {
        v16 = v9;
      }

      else
      {
        v16 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v11))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v11[2]->isa + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), &v18->isa + 1, 1, v11);
      }

      v11[2] = (&v18->isa + 1);
      *(&v18->info + v11) = v16 + v12;
    }

    while (v5 | v4);
    specialized MutableCollection<>.reverse()();
    v19 = v11[2];
    if (v19)
    {
      if (v19 <= 0xF)
      {
        v23 = v19 - 8;
        v24 = 8;
        if (v19 < 8)
        {
          v24 = v11[2];
        }

        v25 = (v24 - 1);
        if (v19 < v24 - 1)
        {
          v25 = v11[2];
        }

        if (v24 == v25)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = *(v11 + 32);
        if (v19 != 1)
        {
          v6 |= *(v11 + 33) << 8;
          if (v19 != 2)
          {
            v6 |= *(v11 + 34) << 16;
            if (v19 != 3)
            {
              v6 |= *(v11 + 35) << 24;
              if (v19 != 4)
              {
                v6 |= *(v11 + 36) << 32;
                if (v19 != 5)
                {
                  v6 |= *(v11 + 37) << 40;
                  if (v19 != 6)
                  {
                    v6 |= *(v11 + 38) << 48;
                    if (v19 != 7)
                    {
                      v6 |= *(v11 + 39) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v19 >= 9)
        {
          v26 = 0;
          v27 = 0;
          v28 = (v11 + 5);
          do
          {
            v29 = *v28++;
            v26 |= v29 << v27;
            v27 += 8;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        v20 = v19 | 0xF000000000000000;
        v21 = _allocateStringStorage(codeUnitCapacity:)(v11[2]);
        *(v21 + 16) = v22;
        *(v21 + 24) = v19 | 0xF000000000000000;
        if (v22 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v20 = *(v21 + 24);
        }

        *(v21 + 32 + (v20 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(v11 + 32, v19, (v21 + 32));
        v6 = *(v21 + 24);
      }
    }

    else
    {
      v6 = 0;
    }

    v11;
  }

  return v6;
}

uint64_t specialized BinaryInteger._description(radix:uppercase:)(unint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(a4 | a3))
  {
    return 48;
  }

  v6 = -__PAIR128__(v4, a3) >> 64;
  if (a4 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  v9 = &_swiftEmptyArrayStorage;
  v41 = &_swiftEmptyArrayStorage;
  v10 = v8 == 0;
  if (v8 | v7)
  {
    v18 = vcnt_s8(a1);
    v18.i16[0] = vaddlv_u8(v18);
    v40 = v18.u32[0];
    v19 = __clz(__rbit64(a1));
    v39 = a1 - 1;
    if (a2)
    {
      v20 = 55;
    }

    else
    {
      v20 = 87;
    }

    do
    {
      if (v40 == 1)
      {
        v21 = (v8 << (-v19 & 0x3F)) | (v7 >> v19);
        v8 >>= v19;
        LOBYTE(v22) = v7 & v39;
        if (v19)
        {
          v7 = v21;
        }
      }

      else
      {
        v23 = v8 != 0;
        if (v10)
        {
          v23 = v7 > a1;
        }

        if (v23)
        {
          if (v10)
          {
            v8 = 0;
            v22 = v7 % a1;
            v7 /= a1;
          }

          else
          {
            if (v8 % a1)
            {
              v25 = __udivti3();
              LOBYTE(v22) = v7 - v25 * a1;
              v7 = v25;
            }

            else
            {
              v22 = v7 % a1;
              v7 /= a1;
            }

            v8 /= a1;
          }
        }

        else
        {
          if (v7 < a1)
          {
            v24 = v7;
          }

          else
          {
            v24 = 0;
          }

          if (v10)
          {
            LOBYTE(v22) = v24;
          }

          else
          {
            LOBYTE(v22) = 0;
          }

          v7 = !v10 || v7 >= a1;
          v8 = 0;
        }
      }

      if (v22 >= 0xAu && a1 >= 0xB)
      {
        v27 = v20;
      }

      else
      {
        v27 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v9[2]->isa + 1, 1, v9);
      }

      v29 = v9[2];
      v28 = v9[3];
      if (v29 >= v28 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), &v29->isa + 1, 1, v9);
      }

      v9[2] = (&v29->isa + 1);
      *(&v29->info + v9) = v27 + v22;
      v41 = v9;
      v10 = v8 == 0;
    }

    while (v8 | v7);
  }

  if (a4 < 0)
  {
    if (!swift_isUniquelyReferenced_nonNull_native(v9))
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v9[2]->isa + 1, 1, v9);
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 1, 1, v9);
    }

    v9[2] = (&v12->isa + 1);
    *(&v12->info + v9) = 45;
    v41 = v9;
  }

  specialized MutableCollection<>.reverse()();
  v13 = v41[2];
  if (v13)
  {
    if (v13 <= 0xF)
    {
      v30 = v13 - 8;
      v31 = 8;
      if (v13 < 8)
      {
        v31 = v41[2];
      }

      v32 = (v31 - 1);
      if (v13 < v31 - 1)
      {
        v32 = v41[2];
      }

      if (v31 == v32)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v5 = *(v41 + 32);
      if (v13 != 1)
      {
        v5 |= *(v41 + 33) << 8;
        if (v13 != 2)
        {
          v5 |= *(v41 + 34) << 16;
          if (v13 != 3)
          {
            v5 |= *(v41 + 35) << 24;
            if (v13 != 4)
            {
              v5 |= *(v41 + 36) << 32;
              if (v13 != 5)
              {
                v5 |= *(v41 + 37) << 40;
                if (v13 != 6)
                {
                  v5 |= *(v41 + 38) << 48;
                  if (v13 != 7)
                  {
                    v5 |= *(v41 + 39) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (v13 >= 9)
      {
        v33 = 0;
        v34 = 0;
        v35 = (v41 + 5);
        do
        {
          v36 = *v35++;
          v33 |= v36 << v34;
          v34 += 8;
          --v30;
        }

        while (v30);
      }
    }

    else
    {
      v14 = v13 | 0xF000000000000000;
      v15 = _allocateStringStorage(codeUnitCapacity:)(v41[2]);
      *(v15 + 16) = v16;
      *(v15 + 24) = v13 | 0xF000000000000000;
      if (v16 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v14 = *(v15 + 24);
      }

      *(v15 + 32 + (v14 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(v41 + 32, v13, (v15 + 32));
      v5 = *(v15 + 24);
    }
  }

  else
  {
    v5 = 0;
  }

  v41;
  return v5;
}

uint64_t specialized BinaryInteger._description(radix:uppercase:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 48;
  if (a3 | a4)
  {
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v35 = v6.u32[0];
    v8 = (__PAIR128__(a4 ^ (a4 >> 63), a3 ^ (a4 >> 63)) - __PAIR128__(a4 >> 63, a4 >> 63)) >> 64;
    v7 = (a3 ^ (a4 >> 63)) - (a4 >> 63);
    if (a2)
    {
      v9 = 55;
    }

    else
    {
      v9 = 87;
    }

    v10 = __clz(__rbit64(a1));
    v34 = a1 - 1;
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      if (v35 == 1)
      {
        v12 = v7 & v34;
        if ((v10 & 0x40) != 0)
        {
          v7 = v8 >> v10;
        }

        else
        {
          v7 = ((2 * v8) << ~v10) | (v7 >> v10);
        }

        if ((v10 & 0x40) != 0)
        {
          v8 = 0;
        }

        else
        {
          v8 >>= v10;
        }
      }

      else
      {
        v13 = __udivti3();
        v8 = v14;
        v12 = v7 - v13 * a1;
        v7 = v13;
      }

      if (v12 >= 0xAu && a1 >= 0xB)
      {
        v16 = v9;
      }

      else
      {
        v16 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v11))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v11[2]->isa + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), &v18->isa + 1, 1, v11);
      }

      v11[2] = (&v18->isa + 1);
      *(&v18->info + v11) = v16 + v12;
      v36 = v11;
    }

    while (v7 | v8);
    if (a4 < 0)
    {
      if (!swift_isUniquelyReferenced_nonNull_native(v11))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v11[2]->isa + 1, 1, v11);
      }

      v20 = v11[2];
      v19 = v11[3];
      if (v20 >= v19 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), &v20->isa + 1, 1, v11);
      }

      v11[2] = (&v20->isa + 1);
      *(&v20->info + v11) = 45;
      v36 = v11;
    }

    specialized MutableCollection<>.reverse()();
    v21 = *(v36 + 16);
    if (v21)
    {
      if (v21 <= 0xF)
      {
        v25 = v21 - 8;
        v26 = 8;
        if (v21 < 8)
        {
          v26 = *(v36 + 16);
        }

        v27 = v26 - 1;
        if (v21 < v26 - 1)
        {
          v27 = *(v36 + 16);
        }

        if (v26 == v27)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v4 = *(v36 + 32);
        if (v21 != 1)
        {
          v4 |= *(v36 + 33) << 8;
          if (v21 != 2)
          {
            v4 |= *(v36 + 34) << 16;
            if (v21 != 3)
            {
              v4 |= *(v36 + 35) << 24;
              if (v21 != 4)
              {
                v4 |= *(v36 + 36) << 32;
                if (v21 != 5)
                {
                  v4 |= *(v36 + 37) << 40;
                  if (v21 != 6)
                  {
                    v4 |= *(v36 + 38) << 48;
                    if (v21 != 7)
                    {
                      v4 |= *(v36 + 39) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v21 >= 9)
        {
          v28 = 0;
          v29 = 0;
          v30 = (v36 + 40);
          do
          {
            v31 = *v30++;
            v28 |= v31 << v29;
            v29 += 8;
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        v22 = v21 | 0xF000000000000000;
        v23 = _allocateStringStorage(codeUnitCapacity:)(*(v36 + 16));
        *(v23 + 16) = v24;
        *(v23 + 24) = v21 | 0xF000000000000000;
        if (v24 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v22 = *(v23 + 24);
        }

        *(v23 + 32 + (v22 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)((v36 + 32), v21, (v23 + 32));
        v4 = *(v23 + 24);
      }
    }

    else
    {
      v4 = 0;
    }

    v36;
  }

  return v4;
}

Swift::String __swiftcall BinaryInteger._description(radix:uppercase:)(Swift::Int radix, Swift::Bool uppercase)
{
  v4 = v2;
  LODWORD(v160) = uppercase;
  v161 = radix;
  v5 = *(v3 + 24);
  swift_getAssociatedTypeWitness(255, v5, v2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, 0, 0);
  v157 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v133[-v9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v165 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v165, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v166 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v164 = &v133[-v12];
  v158 = *(v7 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v143 = &v133[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v133[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v133[-v18];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v133[-v21];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v133[-v24];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v133[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v133[-v30];
  v159 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v133[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = v5;
  v35 = *(v5 + 16);
  swift_getAssociatedTypeWitness(0, v35, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v37 = MEMORY[0x1EEE9AC00](v36);
  if ((v39 - 37) <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v148 = &v133[-v38];
  v151 = v37;
  v152 = v35;
  v145 = v34;
  v153 = v33;
  v154 = v31;
  v162 = v22;
  v163 = v25;
  v169 = v19;
  v140 = v28;
  v41 = v167;
  v40 = v168;
  if ((*(v167 + 128))(v4, v167) <= 64)
  {
    v51 = (*(v41 + 64))(v4, v41);
    v52 = (*(v41 + 120))(v4, v41);
    if (v51)
    {
      countAndFlagsBits = _int64ToString(_:radix:uppercase:)(v52, v161, v160 & 1, swift_int64ToString);
    }

    else
    {
      v63 = _uint64ToString(_:radix:uppercase:)(v52, v161, v160 & 1);
      object = v63._object;
      countAndFlagsBits = v63._countAndFlagsBits;
    }

    v49 = object;
    goto LABEL_82;
  }

  v43 = v151;
  v42 = v152;
  v44 = swift_getAssociatedConformanceWitness(v152, v4, v151, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v45 = *(v44 + 8);
  v46 = v148;
  i = v44;
  v146 = v45;
  (v45)(&unk_18071E0A8, 256, v43);
  v47 = v153;
  v142 = *(v42 + 3);
  (v142)(v46, v4, v42);
  LOBYTE(v43) = (*(*(*(v41 + 16) + 8) + 8))(v40, v47, v4);
  v48 = *(v159 + 8);
  v48(v47, v4);
  if (v43)
  {
    v49 = 0xE100000000000000;
    countAndFlagsBits = 48;
    goto LABEL_82;
  }

  v141 = v48;
  v54 = vcnt_s8(v161);
  v54.i16[0] = vaddlv_u8(v54);
  v149 = v54.u32[0];
  v171 = v161;
  v55 = v4;
  v56 = swift_getAssociatedConformanceWitness(v41, v4, v7, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v159 = *(v56 + 88);
  v150 = lazy protocol witness table accessor for type Int and conformance Int(v56, v57, v58);
  (v159)(&v171, &type metadata for Int);
  if ((*(v41 + 64))(v55, v41))
  {
    v59 = v148;
    v146(&unk_18071E0A8, 256);
    v60 = v153;
    v61 = v59;
    v62 = v168;
    (v142)(v61, v55, v152);
    v134 = (*(*(*(v41 + 32) + 8) + 16))(v62, v60, v55);
    v141(v60, v55);
  }

  else
  {
    v134 = 0;
  }

  v64 = v164;
  v65 = v165;
  v66 = *(v145 + 7);
  v67 = v140;
  v142 = v55;
  v66(v55);
  v68 = *(v56 + 64);
  v159 = v56 + 120;
  v69 = *(v158 + 16);
  v151 = v56 + 128;
  v152 = v69;
  v139 = v56 + 96;
  v168 = &_swiftEmptyArrayStorage;
  v171 = &_swiftEmptyArrayStorage;
  v141 = (v65 + 3);
  v138 = v56 + 272;
  v137 = __clz(__rbit64(v161));
  v136 = v56 + 240;
  v135 = v56 + 192;
  v167 = v158 + 32;
  if (v160)
  {
    v70 = 55;
  }

  else
  {
    v70 = 87;
  }

  LODWORD(v146) = v70;
  v160 = (v158 + 8);
  v153 = (v158 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v158 += 16;
  v148 = (v56 + 64);
  for (i = v68; ; v68 = i)
  {
    v71 = v163;
    (v152)(v163, v67, v7);
    v72 = v68(v7, v56);
    v73 = v157;
    v74 = v68;
    v75 = v162;
    if (v72)
    {
      if ((*(v56 + 128))(v7, v56) >= 64)
      {
        v170 = 0;
        (*(v56 + 96))(&v170, &type metadata for Int, v150, v7, v56);
        v86 = *(*(swift_getAssociatedConformanceWitness(v145, v142, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable) + 8) + 8);
        v87 = v86(v71, v75, v7);
        goto LABEL_31;
      }

      v76 = (*(v56 + 120))(v7, v56);
      v77 = *v160;
      (*v160)(v71, v7);
      goto LABEL_28;
    }

    v78 = v74(v7, v56);
    v79 = (*(v56 + 128))(v7, v56);
    if ((v78 & 1) == 0)
    {
      break;
    }

    if (v79 > 64)
    {
      goto LABEL_30;
    }

    v80 = v166;
    v81 = swift_getAssociatedConformanceWitness(v65, v7, v166, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v81 + 8))(&unk_18071E0A8, 256, v80, v81);
    (v65[3])(v64, v7, v65);
    v82 = swift_getAssociatedConformanceWitness(v145, v142, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v83 = v163;
    v84 = (*(v82 + 32))(v163, v75, v7, v82);
    v77 = *v160;
    (*v160)(v75, v7);
    if (v84)
    {
      v85 = (*(v56 + 120))(v7, v56);
      v77(v83, v7);
      if (!v85)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v77(v83, v7);
    }

LABEL_32:
    if (v149 == 1)
    {
      v170 = v137;
      v91 = v156;
      (*(v56 + 240))(v67, &v170, &type metadata for Int, v150, v7, v56);
      v92 = v165;
      v93 = swift_getAssociatedConformanceWitness(v165, v7, v166, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v94 = v164;
      (*(v93 + 8))(&qword_1806729C0, 512, v166, v93);
      v95 = v143;
      (v92[3])(v94, v7, v92);
      v96 = v162;
      (*(*(AssociatedConformanceWitness + 8) + 40))(v154, v95, v7);
      v97 = v95;
      v67 = v140;
      v77(v97, v7);
      v98 = v73;
      (*(v56 + 192))(v67, v96, v7, v56);
      v77(v96, v7);
    }

    else
    {
      v98 = v73;
      v91 = v156;
      (*(v56 + 272))(v156, &v156[*(v73 + 48)], v154, v7, v56);
    }

    v77(v67, v7);
    v99 = *(v98 + 48);
    v100 = *v167;
    (*v167)(v169, v91, v7);
    v101 = v155;
    (v100)(v155, &v91[v99], v7);
    v102 = (*(v56 + 120))(v7, v56);
    v77(v101, v7);
    if (v102 >= 0xAu && v161 >= 0xB)
    {
      v104 = v146;
    }

    else
    {
      v104 = 48;
    }

    v105 = v168;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v168);
    v107 = v105;
    v171 = v105;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 16) + 1, 1, v105);
      v171 = v107;
    }

    v109 = v107[2];
    v108 = v107[3];
    if (v109 >= v108 >> 1)
    {
      v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), &v109->isa + 1, 1, v107);
    }

    v107[2] = (&v109->isa + 1);
    *(&v109->info + v107) = v104 + v102;
    v168 = v107;
    v171 = v107;
    v100(v67);
    v64 = v164;
    v65 = v165;
  }

  if (v79 < 64)
  {
    v88 = v163;
    v76 = (*(v56 + 120))(v7, v56);
    v77 = *v160;
    (*v160)(v88, v7);
LABEL_28:
    if (!v76)
    {
      goto LABEL_47;
    }

    goto LABEL_32;
  }

LABEL_30:
  v170 = 0;
  (*(v56 + 96))(&v170, &type metadata for Int, v150, v7, v56);
  v89 = *(*(swift_getAssociatedConformanceWitness(v145, v142, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable) + 8) + 8);
  v71 = v163;
  v87 = v89(v163, v75, v7);
LABEL_31:
  v90 = v87;
  v77 = *v160;
  (*v160)(v75, v7);
  v77(v71, v7);
  if ((v90 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_47:
  v110 = v154;
  v111 = v134;
  v77(v67, v7);
  v77(v110, v7);
  if (v111)
  {
    v112 = v168;
    v113 = swift_isUniquelyReferenced_nonNull_native(v168);
    v114 = v112;
    v171 = v112;
    if (!v113)
    {
      v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 16) + 1, 1, v112);
      v171 = v114;
    }

    v116 = v114[2];
    v115 = v114[3];
    if (v116 >= v115 >> 1)
    {
      v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), &v116->isa + 1, 1, v114);
    }

    v114[2] = (&v116->isa + 1);
    *(&v116->info + v114) = 45;
    v171 = v114;
  }

  specialized MutableCollection<>.reverse()();
  v117 = v171;
  v118 = v171[2];
  if (v118)
  {
    if (v118 <= 0xF)
    {
      v122 = v118 - 8;
      v123 = 8;
      if (v118 < 8)
      {
        v123 = v171[2];
      }

      v124 = (v123 - 1);
      if (v118 < v123 - 1)
      {
        v124 = v171[2];
      }

      if (v123 == v124)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v125 = *(v171 + 32);
      if (v118 != 1)
      {
        v125 |= *(v171 + 33) << 8;
        if (v118 != 2)
        {
          v125 |= *(v171 + 34) << 16;
          if (v118 != 3)
          {
            v125 |= *(v171 + 35) << 24;
            if (v118 != 4)
            {
              v125 |= *(v171 + 36) << 32;
              if (v118 != 5)
              {
                v125 |= *(v171 + 37) << 40;
                if (v118 != 6)
                {
                  v125 |= *(v171 + 38) << 48;
                  if (v118 != 7)
                  {
                    v125 |= *(v171 + 39) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (v118 < 9)
      {
        v126 = 0;
      }

      else
      {
        v126 = 0;
        v127 = 0;
        v128 = (v171 + 5);
        do
        {
          v129 = *v128++;
          v126 |= v129 << v127;
          v127 += 8;
          --v122;
        }

        while (v122);
      }

      v130 = 0xA000000000000000;
      if (((v126 | v125) & 0x8080808080808080) == 0)
      {
        v130 = 0xE000000000000000;
      }

      v49 = v130 | (v118 << 56) | v126;
      v121 = v125;
    }

    else
    {
      v119 = v118 | 0xF000000000000000;
      v49 = _allocateStringStorage(codeUnitCapacity:)(v171[2]);
      *(v49 + 16) = v120;
      *(v49 + 24) = v118 | 0xF000000000000000;
      if (v120 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v119 = *(v49 + 24);
      }

      *(v49 + 32 + (v119 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)((v117 + 32), v118, (v49 + 32));
      v121 = *(v49 + 24);
    }
  }

  else
  {
    v49 = 0xE000000000000000;
    v121 = 0;
  }

  v117;
  countAndFlagsBits = v121;
LABEL_82:
  v131 = v49;
  result._object = v131;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall _int64ToString(_:radix:uppercase:)(Swift::Int64 _, Swift::Int64 radix, Swift::Bool uppercase)
{

  v3 = _int64ToString(_:radix:uppercase:)(_, radix, uppercase, swift_int64ToString);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall _uint64ToString(_:radix:uppercase:)(Swift::UInt64 _, Swift::Int64 radix, Swift::Bool uppercase)
{

  v3 = _int64ToString(_:radix:uppercase:)(_, radix, uppercase, swift_uint64ToString);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t _int64ToString(_:radix:uppercase:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, uint64_t, void))
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 < 10)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    __src = 0u;
    v26 = 0u;
    v4 = a4(&__src, 72, a1, a2, a3 & 1);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = v4;
      if (v4)
      {
        if (v4 <= 0xF)
        {
          v6 = v4 - 8;
          v7 = 8;
          if (v4 < 8)
          {
            v7 = v4;
          }

          v8 = v7 - 1;
          if (v4 < v7 - 1)
          {
            v8 = v4;
          }

          if (v7 != v8)
          {
            result = __src;
            if (v5 != 1)
            {
              result = __src | (BYTE1(__src) << 8);
              if (v5 != 2)
              {
                result |= BYTE2(__src) << 16;
                if (v5 != 3)
                {
                  result |= BYTE3(__src) << 24;
                  if (v5 != 4)
                  {
                    result |= BYTE4(__src) << 32;
                    if (v5 != 5)
                    {
                      result |= BYTE5(__src) << 40;
                      if (v5 != 6)
                      {
                        result |= BYTE6(__src) << 48;
                        if (v5 != 7)
                        {
                          result |= BYTE7(__src) << 56;
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v5 >= 9)
            {
              v10 = 0;
              v11 = 0;
              v12 = &__src + 8;
              do
              {
                v13 = *v12++;
                v10 |= v13 << v11;
                v11 += 8;
                --v6;
              }

              while (v6);
            }

            return result;
          }

LABEL_34:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_25;
      }

      return 0;
    }

LABEL_48:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __src = 0u;
  v26 = 0u;
  v14 = a4(&__src, 32, a1, a2, a3 & 1);
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v5 = v14;
  if (!v14)
  {
    return 0;
  }

  if (v14 > 0xF)
  {
LABEL_25:
    v15 = v5 | 0xF000000000000000;
    v16 = _allocateStringStorage(codeUnitCapacity:)(v5);
    *(v16 + 16) = v17;
    *(v16 + 24) = v5 | 0xF000000000000000;
    if (v17 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v15 = *(v16 + 24);
    }

    *(v16 + 32 + (v15 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(&__src, v5, (v16 + 32));
    return *(v16 + 24);
  }

  v18 = v14 - 8;
  v19 = 8;
  if (v14 < 8)
  {
    v19 = v14;
  }

  v20 = v19 - 1;
  if (v14 < v19 - 1)
  {
    v20 = v14;
  }

  if (v19 == v20)
  {
    goto LABEL_34;
  }

  result = __src;
  if (v5 != 1)
  {
    result = __src | (BYTE1(__src) << 8);
    if (v5 != 2)
    {
      result |= BYTE2(__src) << 16;
      if (v5 != 3)
      {
        result |= BYTE3(__src) << 24;
        if (v5 != 4)
        {
          result |= BYTE4(__src) << 32;
          if (v5 != 5)
          {
            result |= BYTE5(__src) << 40;
            if (v5 != 6)
            {
              result |= BYTE6(__src) << 48;
              if (v5 != 7)
              {
                result |= BYTE7(__src) << 56;
              }
            }
          }
        }
      }
    }
  }

  if (v5 >= 9)
  {
    v21 = 0;
    v22 = 0;
    v23 = &__src + 8;
    do
    {
      v24 = *v23++;
      v21 |= v24 << v22;
      v22 += 8;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t Int.nonzeroBitCount.getter(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
    *v0 = v1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v5 = 0;
    *v0 = v1;
    v6 = v2 + 31;
    do
    {
      if (v5 != v6 - 32)
      {
        v8 = v1[2];
        if (v5 >= v8 || v6 - 32 >= v8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v9 = *(v1 + v5 + 32);
        *(v1 + v5 + 32) = *(v1 + v6);
        *(v1 + v6) = v9;
      }

      ++v5;
      v7 = v6 - 33;
      --v6;
    }

    while (v5 < v7);
    *v0 = v1;
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
      *v0 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      *v0 = v1;
      v5 = &v1[v2 + 3] + 2;
      v6 = v1 + 18;
      v7 = 1;
      do
      {
        if (v7 - 1 != v3)
        {
          v9 = v1[2];
          if (v7 - 1 >= v9 || v3 >= v9)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v10 = *v6;
          v11 = *(v6 - 1);
          v12 = *v5;
          *(v6 - 1) = *(v5 - 1);
          *v6 = v12;
          *(v5 - 1) = v11;
          *v5 = v10;
        }

        --v3;
        v5 -= 4;
        v6 += 4;
      }

      while (v7++ < v3);
      *v0 = v1;
    }
  }
}

uint64_t MutableCollection<>.reverse()(const char *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - v15;
  v17 = *(v5 + 104);
  v36 = v5;
  result = v17(a1, v5);
  if ((result & 1) == 0)
  {
    v19 = v36;
    (*(v36 + 64))(a1, v36);
    (*(v19 + 9))(a1, v19);
    (*(v37 + 32))(v11, a1);
    v29[0] = *(v8 + 8);
    v29[1] = v8 + 8;
    (v29[0])(v11, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v19, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v21 = AssociatedConformanceWitness + 16;
    v22 = *(AssociatedConformanceWitness + 16);
    v34 = AssociatedConformanceWitness;
    v23 = v22(v16, v14, v7);
    v35 = a3;
    if (v23)
    {
      v24 = v21;
      v32 = *(v35 + 64);
      v33 = v35 + 64;
      v30 = *(v36 + 192);
      v31 = v36 + 192;
      v25 = *(v37 + 40);
      do
      {
        v26 = v24;
        v32(v16, v14, a1, v35);
        v30(v16, a1, v36);
        v25(v14, a1, v37);
        v27 = (v22)(v16, v14, v7, v34);
        v24 = v26;
      }

      while ((v27 & 1) != 0);
    }

    v28 = v29[0];
    (v29[0])(v14, v7);
    return v28(v16, v7);
  }

  return result;
}

uint64_t BinaryInteger.distance(to:)(char *a1, const char *a2, swift *a3)
{
  v249 = a1;
  v5 = *(a3 + 3);
  swift_getAssociatedTypeWitness(255, v5, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v6, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v232 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v232, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v231 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v222 - v9;
  v243 = swift_checkMetadataState(0, v7);
  v245 = *(v243 - 1);
  v11 = MEMORY[0x1EEE9AC00](v243);
  v235 = v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v241 = v222 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v239 = v222 - v15;
  v16 = *(v5 + 16);
  swift_getAssociatedTypeWitness(0, v16, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v244 = v222 - v20;
  v250 = *(a2 - 1);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v238 = v222 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v237 = (v222 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v222 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v240 = v222 - v28;
  v29 = *(a3 + 8);
  v251 = a2;
  v252 = a3;
  v30 = (v29)(a2, a3);
  v246 = (a3 + 64);
  v247 = v29;
  if ((v30 & 1) == 0)
  {
    v62 = v27;
    v32 = v18;
    v46 = v16;
    v63 = v250;
    v64 = v252;
    v65 = *(*(v252[4] + 1) + 40);
    v243 = *(v252[4] + 1);
    v66 = v65(v248, v249);
    v67 = *(*(v5 + 8) + 40);
    v245 = v64 + 128;
    if (v66)
    {
      v68 = v240;
      v69 = v251;
      v67(v248, v249, v251);
      v70 = v252;
      v71 = (v29)(v69, v252);
      v54 = *(v70 + 16);
      v50 = v63;
      if ((v71 & 1) != 0 && v54(v251, v252) >= 65)
      {
        v72 = v247;
        if (v247())
        {
          v68 = v240;
          v73 = v54(v251, v252);
          v50 = v63;
          if (v73 < 64)
          {
LABEL_69:
            (v252[15])(v251);
            goto LABEL_70;
          }

          v253 = 0x8000000000000000;
          v76 = v252;
          v77 = v252[12];
          v78 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
          v79 = v251;
          v77(&v253, &type metadata for Int, v78, v251, v76);
          v80 = (*(v243 + 2))(v68, v62, v79);
          v81 = v63 + 8;
          v82 = *(v50 + 8);
          v82(v62, v79);
        }

        else
        {
          v121 = v252;
          v227 = v62;
          v122 = v251;
          v123 = (v72)(v251, v252);
          v124 = v54(v122, v121);
          if ((v123 & 1) == 0)
          {
            v62 = v227;
            v50 = v63;
            v68 = v240;
            if (v124 >= 64)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v50 = v63;
          if (v124 <= 64)
          {
            goto LABEL_68;
          }

          v253 = 0x8000000000000000;
          v127 = v252;
          v128 = v252[12];
          v129 = lazy protocol witness table accessor for type Int and conformance Int(v124, v125, v126);
          v130 = v227;
          v131 = v251;
          v128(&v253, &type metadata for Int, v129, v251, v127);
          v68 = v240;
          v80 = (*(v243 + 2))(v240, v130, v131);
          v81 = v63 + 8;
          v82 = *(v50 + 8);
          v62 = v130;
          v82(v130, v131);
        }

        if (v80)
        {
          v242 = v82;
          goto LABEL_115;
        }
      }

LABEL_70:
      v175 = v50;
      v32 = v251;
      v133 = v245;
      v176 = v54(v251, v252);
      v177 = v247;
      if (v176 <= 64 && (v54(v32, v252) != 64 || ((v177)(v32, v252) & 1) != 0))
      {
        goto LABEL_80;
      }

      v178 = v252;
      v133 = (v177)(v32, v252);
      v179 = v54(v32, v178);
      if (v133)
      {
        if (v179 >= 65)
        {
          goto LABEL_73;
        }
      }

      else if (v179 >= 64)
      {
LABEL_73:
        v253 = 0x7FFFFFFFFFFFFFFFLL;
        v182 = *(v178 + 12);
        v183 = lazy protocol witness table accessor for type Int and conformance Int(v179, v180, v181);
        v182(&v253, &type metadata for Int, v183, v32, v178);
        v184 = (*(v243 + 2))(v62, v68, v32);
        v133 = *(v175 + 8);
        (v133)(v62, v32);
        if (v184)
        {
          v242 = v133;
          v245 = (v175 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (v133)(v240, v251);
          goto LABEL_113;
        }

        goto LABEL_80;
      }

      (*(v178 + 15))(v32, v178);
LABEL_80:
      v185 = (v252[15])(v32);
      v186 = *(v175 + 8);
      v39 = (v175 + 8);
      v186(v68, v32);
      v167 = __OFSUB__(0, v185);
      v166 = -v185;
      if (!v167)
      {
        return v166;
      }

      __break(1u);
LABEL_83:
      v187 = v62;
      v39(&qword_18071E0A8, 256);
      v188 = v227;
      (v229)(v187, v32, v233);
      v83 = v238;
      v189 = v234(v238, v188, v32, v225);
      v242(v188, v32);
      v84 = v133;
      if (v189)
      {
LABEL_89:
        v240 = v83;
LABEL_112:
        v242(v240, v251);
LABEL_113:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_84;
    }

    v93 = v237;
    v94 = v251;
    v67(v249, v248, v251);
    v95 = v252;
    v96 = (v29)(v94, v252);
    v97 = *(v95 + 16);
    v98 = v63;
    v46 = v93;
    if ((v96 & 1) == 0 || v97(v251, v252) < 65)
    {
      goto LABEL_98;
    }

    v99 = v247;
    if (v247())
    {
      v46 = v237;
      v100 = v97(v251, v252);
      v98 = v63;
      if (v100 >= 64)
      {
        v253 = 0x8000000000000000;
        v103 = v252;
        v104 = v252[12];
        v105 = lazy protocol witness table accessor for type Int and conformance Int(v100, v101, v102);
        v106 = v251;
        v104(&v253, &type metadata for Int, v105, v251, v103);
        v107 = (*(v243 + 2))(v46, v62, v106);
        v108 = v63 + 8;
        v109 = *(v98 + 8);
        v109(v62, v106);
        goto LABEL_42;
      }
    }

    else
    {
      v233 = v16;
      v140 = v252;
      v227 = v62;
      v141 = v251;
      v142 = (v99)(v251, v252);
      v143 = v97(v141, v140);
      if (v142)
      {
        v98 = v63;
        if (v143 > 64)
        {
          v253 = 0x8000000000000000;
          v146 = v252;
          v147 = v252[12];
          v148 = lazy protocol witness table accessor for type Int and conformance Int(v143, v144, v145);
          v149 = v227;
          v150 = v251;
          v147(&v253, &type metadata for Int, v148, v251, v146);
          v46 = v237;
          v107 = (*(v243 + 2))(v237, v149, v150);
          v108 = v63 + 8;
          v109 = *(v98 + 8);
          v62 = v149;
          v109(v149, v150);
LABEL_42:
          if (v107)
          {
            goto LABEL_110;
          }

LABEL_98:
          v209 = v251;
          v210 = v97(v251, v252);
          v211 = v247;
          if (v210 <= 64 && (v97(v209, v252) != 64 || ((v211)(v209, v252) & 1) != 0))
          {
            goto LABEL_108;
          }

          v212 = v252;
          v213 = (v211)(v209, v252);
          v214 = v97(v209, v212);
          if (v213)
          {
            if (v214 >= 65)
            {
              goto LABEL_101;
            }
          }

          else if (v214 >= 64)
          {
LABEL_101:
            v253 = 0x7FFFFFFFFFFFFFFFLL;
            v217 = *(v212 + 12);
            v218 = lazy protocol witness table accessor for type Int and conformance Int(v214, v215, v216);
            v217(&v253, &type metadata for Int, v218, v209, v212);
            v219 = (*(v243 + 2))(v62, v46, v209);
            v220 = *(v98 + 8);
            v220(v62, v209);
            if (v219)
            {
              v242 = v220;
              v245 = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              goto LABEL_111;
            }

            goto LABEL_108;
          }

          (*(v212 + 15))(v209, v212);
LABEL_108:
          v166 = (v252[15])(v209);
          (*(v98 + 8))(v46, v209);
          return v166;
        }

        v203 = v233;
        v204 = v251;
        v205 = swift_getAssociatedConformanceWitness(v233, v251, v32, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v206 = v244;
        (*(v205 + 8))(&qword_18071E0A8, 256, v32, v205);
        v207 = v227;
        (*(v203 + 3))(v206, v204, v203);
        v46 = v237;
        v208 = (*(v243 + 2))(v237, v207, v204);
        v108 = v98 + 8;
        v109 = *(v98 + 8);
        v62 = v207;
        v109(v207, v204);
        if (v208)
        {
LABEL_110:
          v242 = v109;
          v245 = v108 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          goto LABEL_111;
        }
      }

      else
      {
        v62 = v227;
        v98 = v63;
        v46 = v237;
        if (v143 >= 64)
        {
          goto LABEL_98;
        }
      }
    }

    (v252[15])(v251);
    goto LABEL_98;
  }

  v223 = v10;
  v237 = v5;
  v31 = v16;
  v32 = v251;
  v230 = swift_getAssociatedConformanceWitness(v16, v251, v18, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v33 = v230 + 8;
  v228 = *(v230 + 8);
  v34 = v244;
  v228(&qword_18071E0A8, 256, v18, v230);
  v233 = v31;
  v35 = v31 + 3;
  v229 = v31[3];
  (v229)(v34, v32, v31);
  v36 = *(v252[4] + 1);
  v234 = *(v36 + 16);
  LODWORD(v240) = v234(v248, v27, v32, v36);
  v37 = *(v250 + 8);
  v250 += 8;
  v37(v27, v32);
  v224 = v18;
  v38 = v18;
  v222[1] = v33;
  v39 = v228;
  v228(&qword_18071E0A8, 256, v38, v230);
  v222[0] = v35;
  (v229)(v34, v32, v233);
  v225 = v36;
  v226 = v36 + 16;
  v40 = v234(v249, v27, v32, v36);
  v227 = v27;
  v41 = v250;
  v242 = v37;
  v37(v27, v32);
  if (((v240 ^ v40) & 1) == 0)
  {
    v62 = v34;
    v245 = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v83 = v238;
    (*(*(v237 + 1) + 40))(v249, v248, v32);
    v84 = v252;
    v85 = (v247)(v32, v252);
    v54 = *(v84 + 16);
    if ((v85 & 1) != 0 && v54(v32, v84) >= 65)
    {
      v86 = v247;
      if ((v247)(v32, v84))
      {
        v83 = v238;
        v87 = v54(v32, v84);
        if (v87 < 64)
        {
LABEL_84:
          (*(v84 + 15))(v32, v84);
          goto LABEL_85;
        }

        v253 = 0x8000000000000000;
        v90 = *(v84 + 12);
        v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
        v92 = v227;
        v90(&v253, &type metadata for Int, v91, v32, v84);
      }

      else
      {
        v132 = (v86)(v32, v84);
        v133 = v84;
        v134 = v54(v32, v84);
        if ((v132 & 1) == 0)
        {
          v83 = v238;
          if (v134 >= 64)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        if (v134 <= 64)
        {
          goto LABEL_83;
        }

        v253 = 0x8000000000000000;
        v137 = *(v84 + 12);
        v138 = lazy protocol witness table accessor for type Int and conformance Int(v134, v135, v136);
        v92 = v227;
        v137(&v253, &type metadata for Int, v138, v32, v84);
        v83 = v238;
      }

      v139 = v234(v83, v92, v32, v225);
      v242(v92, v32);
      if (v139)
      {
        goto LABEL_89;
      }
    }

LABEL_85:
    v190 = v54(v32, v84);
    v191 = v84;
    v192 = v242;
    if (v190 <= 64 && (v54(v32, v84) != 64 || ((v247)(v32, v84) & 1) != 0))
    {
      goto LABEL_95;
    }

    v193 = (v247)(v32, v84);
    v194 = v54(v32, v84);
    if (v193)
    {
      if (v194 >= 65)
      {
        goto LABEL_88;
      }
    }

    else if (v194 >= 64)
    {
LABEL_88:
      v253 = 0x7FFFFFFFFFFFFFFFLL;
      v197 = *(v84 + 12);
      v198 = lazy protocol witness table accessor for type Int and conformance Int(v194, v195, v196);
      v199 = v191;
      v200 = v227;
      v197(&v253, &type metadata for Int, v198, v32, v199);
      v201 = v234(v200, v83, v32, v225);
      v202 = v200;
      v191 = v199;
      v192 = v242;
      v242(v202, v32);
      if (v201)
      {
        goto LABEL_89;
      }

LABEL_95:
      v166 = (*(v191 + 15))(v32, v191);
      v192(v83, v32);
      return v166;
    }

    (*(v84 + 15))(v32, v84);
    goto LABEL_95;
  }

  v42 = v237;
  v43 = *(v237 + 7);
  v44 = v241;
  v43(v32, v237);
  v45 = v235;
  v43(v32, v42);
  v46 = v239;
  v47 = v243;
  (*(*(AssociatedConformanceWitness + 8) + 24))(v44, v45, v243);
  v48 = v245 + 8;
  v49 = *(v245 + 8);
  v50 = (v245 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v45, v47);
  v245 = v48;
  v242 = v49;
  v49(v44, v47);
  v51 = swift_getAssociatedConformanceWitness(v252, v32, v47, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v52 = *(v51 + 64);
  v53 = v52(v47, v51);
  v54 = (v51 + 128);
  v55 = *(v51 + 128);
  if ((v53 & 1) != 0 && v55(v47, v51) >= 65)
  {
    if (v52(v47, v51))
    {
      v46 = v239;
      v56 = v55(v47, v51);
      if (v56 >= 64)
      {
        v252 = *(v51 + 96);
        v253 = 0x8000000000000000;
        v59 = lazy protocol witness table accessor for type Int and conformance Int(v56, v57, v58);
        (v252)(&v253, &type metadata for Int, v59, v243, v51);
        v47 = v243;
        v60 = swift_getAssociatedConformanceWitness(v237, v32, v243, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v61 = (*(v60 + 16))(v46, v241, v47, v60);
        goto LABEL_27;
      }
    }

    else
    {
      v110 = v52(v47, v51);
      v111 = v47;
      v112 = v110;
      v113 = v55(v111, v51);
      if (v112)
      {
        if (v113 > 64)
        {
          v253 = 0x8000000000000000;
          v116 = *(v51 + 96);
          v117 = lazy protocol witness table accessor for type Int and conformance Int(v113, v114, v115);
          v118 = v243;
          v116(&v253, &type metadata for Int, v117, v243, v51);
          v47 = v118;
          v119 = swift_getAssociatedConformanceWitness(v237, v32, v118, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v46 = v239;
          v61 = (*(v119 + 16))(v239, v241, v118, v119);
LABEL_27:
          v120 = v61;
          v242(v241, v47);
          if (v120)
          {
            goto LABEL_58;
          }

          goto LABEL_54;
        }

        v47 = v243;
        v151 = v231;
        v152 = swift_getAssociatedConformanceWitness(v232, v243, v231, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v153 = v223;
        (*(v152 + 8))(&qword_18071E0A8, 256, v151, v152);
        (v232[3])(v153, v47);
        v154 = swift_getAssociatedConformanceWitness(v237, v32, v47, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v46 = v239;
        LOBYTE(v151) = (*(v154 + 16))(v239, v241, v47, v154);
        v242(v241, v47);
        if (v151)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v47 = v243;
        v46 = v239;
        if (v113 >= 64)
        {
          goto LABEL_54;
        }
      }
    }

    (*(v51 + 120))(v47, v51);
  }

LABEL_54:
  if (v55(v47, v51) > 64 || v55(v47, v51) == 64 && (v52(v47, v51) & 1) == 0)
  {
    v155 = v52(v47, v51);
    v156 = v47;
    v157 = v155;
    v158 = v55(v156, v51);
    if (v157)
    {
      if (v158 >= 65)
      {
        goto LABEL_57;
      }
    }

    else if (v158 >= 64)
    {
LABEL_57:
      v253 = 0x7FFFFFFFFFFFFFFFLL;
      v161 = *(v51 + 96);
      v162 = lazy protocol witness table accessor for type Int and conformance Int(v158, v159, v160);
      v163 = v241;
      v164 = v243;
      v161(&v253, &type metadata for Int, v162, v243, v51);
      v47 = v164;
      v165 = swift_getAssociatedConformanceWitness(v237, v32, v164, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v32 = (*(v165 + 16))(v163, v46, v164, v165);
      v242(v163, v164);
      if ((v32 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_58:
      v245 = v50;
      v251 = v47;
LABEL_111:
      v240 = v46;
      goto LABEL_112;
    }

    v47 = v243;
    (*(v51 + 120))(v243, v51);
  }

LABEL_64:
  v166 = (*(v51 + 120))(v47, v51);
  v242(v46, v47);
  if ((v240 & 1) == 0)
  {
    v167 = __OFSUB__(0, v166);
    v166 = -v166;
    if (v167)
    {
      __break(1u);
LABEL_68:
      v168 = v46;
      v169 = v251;
      v170 = swift_getAssociatedConformanceWitness(v46, v251, v32, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v171 = v244;
      (*(v170 + 8))(&qword_18071E0A8, 256, v32, v170);
      v172 = v227;
      (*(v168 + 3))(v171, v169, v168);
      v68 = v240;
      v173 = (*(v243 + 2))(v240, v172, v169);
      v81 = v50 + 8;
      v174 = *(v50 + 8);
      v62 = v172;
      v174(v172, v169);
      if ((v173 & 1) == 0)
      {
        goto LABEL_69;
      }

      v242 = v174;
LABEL_115:
      v245 = v81 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      goto LABEL_112;
    }
  }

  return v166;
}