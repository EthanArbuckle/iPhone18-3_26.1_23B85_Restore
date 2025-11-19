uint64_t BinaryFloatingPoint.init(signOf:magnitudeOf:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  v14 = (*(*(a4 + 16) + 168))(a3);
  v15 = *(*(a3 - 8) + 8);
  v15(a1, a3);
  (*(a4 + 112))(a3, a4);
  (*(a4 + 120))(a3, a4);
  v15(a2, a3);
  return (*(a4 + 56))(v14 & 1, v13, v10, a3, a4);
}

uint64_t specialized static BinaryFloatingPoint._convert<A>(from:)(unint64_t *a1, uint64_t a2, const char *a3, swift *a4)
{
  v477 = a1;
  v491 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v489 = &v457 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v461 = &v457 - v11;
  swift_getAssociatedTypeWitness(255, v13, v12, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v15 = v14;
  v487 = *(swift_getAssociatedConformanceWitness(a4, a3, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v466 = *(v487 + 24);
  v486 = *(v466 + 16);
  swift_getAssociatedTypeWitness(0, v486, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v483 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v482 = &v457 - v17;
  v484 = swift_checkMetadataState(0, v15);
  v476 = *(v484 - 1);
  v18 = MEMORY[0x1EEE9AC00](v484);
  v20 = &v457 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v457 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v485 = &v457 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v469 = &v457 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v464 = &v457 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v475 = &v457 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v468 = &v457 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v474 = &v457 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v467 = &v457 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v473 = &v457 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v463 = &v457 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v460 = &v457 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v496 = &v457 - v44;
  v488 = a4;
  v45 = *(a4 + 2);
  swift_getAssociatedTypeWitness(255, v45, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v47 = v46;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v45, a3, v46, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v49 = *(AssociatedConformanceWitness + 8);
  v472 = *(v49 + 24);
  v481 = *(v472 + 2);
  swift_getAssociatedTypeWitness(0, v481, v47, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v479 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v480 = &v457 - v51;
  v52 = v47;
  v53 = v45;
  v54 = swift_checkMetadataState(0, v52);
  v494 = *(v54 - 1);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v470 = &v457 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v462 = &v457 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v471 = &v457 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v465 = &v457 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v457 - v64;
  v66 = MEMORY[0x1EEE9AC00](v63);
  v493 = &v457 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v495 = &v457 - v68;
  if ((v53[48])(a3, v53))
  {
    if (((v53[21])(a3, v53) & 1) == 0)
    {
      *v477 = 0;
      return 1;
    }

    v436 = 0x8000000000000000;
    goto LABEL_225;
  }

  if (((v53[47])(a3, v53) & 1) == 0)
  {
    if (((v53[50])(a3, v53) & 1) == 0)
    {
      v437 = v488;
      v438 = *(v488 + 15);
      v438(a3, v488);
      v439 = v438;
      v495 = v438;
      v440 = v461;
      (v53[12])(a3, v53);
      v439(a3, v437);
      v441 = v53;
      v442 = *(v491 + 1);
      v442(v440, a3);
      v478 = v441;
      v443 = v489;
      (v441[13])(a3, v441);
      (v495)(a3, v437);
      v442(v443, a3);
      v444 = v487;
      v445 = v468;
      v446 = v484;
      (*(v487 + 208))(v23, v20, v484, v487);
      v447 = *(v476 + 8);
      v447(v20, v446);
      v447(v23, v446);
      v448 = v474;
      (*(v444 + 184))(v445, v446, v444);
      v447(v445, v446);
      v449 = v485;
      v450 = v496;
      (*(v444 + 192))(v496, v448, v446, v444);
      v447(v448, v446);
      v447(v450, v446);
      v451 = (*(v444 + 120))(v446, v444);
      v447(v449, v446);
      v452 = v451 & 0x3FFFFFFFFFFFFLL;
      v453 = v478;
      LOBYTE(v451) = (*(v478 + 52))(a3, v478);
      v454 = (*(v453 + 21))(a3, v453);
      result = 0;
      v455 = v452 | (v454 << 63);
      v456 = 0x7FF8000000000000;
      if (v451)
      {
        v456 = 0x7FF4000000000000;
      }

      v135 = v455 | v456;
      goto LABEL_74;
    }

    if (((v53[21])(a3, v53) & 1) == 0)
    {
LABEL_224:
      v436 = 0x7FF0000000000000;
      goto LABEL_225;
    }

    v436 = 0xFFF0000000000000;
LABEL_225:
    *v477 = v436;
    return 1;
  }

  v461 = AssociatedConformanceWitness;
  v69 = v495;
  v70 = v53;
  (v53[22])(a3, v53);
  v497 = -1022;
  v71 = *(v49 + 64);
  v72 = v71(v54, v49);
  v489 = v71;
  v490 = a3;
  v492 = a2;
  v485 = (v49 + 64);
  if ((v72 & 1) == 0)
  {
    v77 = v71(v54, v49);
    v491 = *(v49 + 128);
    v78 = v491(v54, v49);
    v76 = v70;
    if (v77)
    {
      if (v78 > 64)
      {
        v81 = *(v49 + 96);
        v82 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
        v83 = v493;
        v81(&v497, &type metadata for Int, v82, v54, v49);
        v69 = v495;
        v84 = (*(*(*(v49 + 32) + 8) + 16))(v495, v83, v54);
        (*(v494 + 8))(v83, v54);
        if (v84)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v89 = v481;
      v90 = v479;
      v91 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v480;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v493;
      (v89[3])(v92, v54, v89);
      v69 = v495;
      LOBYTE(v90) = (*(*(*(v49 + 32) + 8) + 16))(v495, v93, v54);
      (*(v494 + 8))(v93, v54);
      if (v90)
      {
        goto LABEL_17;
      }
    }

    else if (v78 >= 64)
    {
      goto LABEL_21;
    }

    if ((*(v49 + 120))(v54, v49) >= -1022)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v491 = *(v49 + 128);
  v73 = v491(v54, v49);
  if (v73 >= 64)
  {
    v85 = *(v49 + 96);
    v86 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
    v87 = v493;
    v85(&v497, &type metadata for Int, v86, v54, v49);
    v69 = v495;
    v88 = (*(*(*(v49 + 32) + 8) + 16))(v495, v87, v54);
    (*(v494 + 8))(v87, v54);
    v76 = v70;
    if (v88)
    {
      goto LABEL_17;
    }

LABEL_21:
    v497 = 1023;
    v113 = v485;
    v114 = v489;
    v115 = (v489)(v54, v49);
    v116 = (v49 + 128);
    v117 = v491(v54, v49);
    if (v115)
    {
      if (v117 > 64)
      {
        goto LABEL_23;
      }
    }

    else if (v117 > 63)
    {
LABEL_23:
      v120 = *(v49 + 96);
      v121 = lazy protocol witness table accessor for type Int and conformance Int(v117, v118, v119);
      v122 = v493;
      v120(&v497, &type metadata for Int, v121, v54, v49);
      v69 = v495;
      v123 = (*(*(*(v49 + 32) + 8) + 16))(v122, v495, v54);
      v124 = v122;
      v114 = v489;
      (*(v494 + 8))(v124, v54);
      if ((v123 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_30:
      (*(v494 + 8))(v69, v54);
      if ((*(v76 + 21))(v490, v76))
      {
        result = 0;
        v135 = 0xFFF0000000000000;
      }

      else
      {
        result = 0;
        v135 = 0x7FF0000000000000;
      }

      goto LABEL_74;
    }

    if ((*(v49 + 120))(v54, v49) <= 1023)
    {
LABEL_24:
      v125 = v114(v54, v49);
      v478 = v76;
      if (v125)
      {
        v126 = v491(v54, v49);
        if (v126 >= 64)
        {
          v497 = 0;
          v129 = *(v49 + 96);
          v130 = lazy protocol witness table accessor for type Int and conformance Int(v126, v127, v128);
          v131 = v493;
          v129(&v497, &type metadata for Int, v130, v54, v49);
          v69 = v495;
          v132 = (*(*(*(v49 + 32) + 8) + 16))(v495, v131, v54);
          v133 = v131;
          v113 = v485;
          (*(v494 + 8))(v133, v54);
          if ((v132 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_60:
          v181 = v462;
          (*(*(v461 + 2) + 16))(v69, v54);
          v182 = v113;
          v183 = *(v494 + 8);
          v494 += 8;
          (v183)(v69, v54);
          if (v114(v54, v49))
          {
            v184 = v481;
            v185 = v479;
            v186 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v187 = v480;
            (*(v186 + 8))(&qword_18071E0A8, 256, v185, v186);
            v182 = v493;
            v188 = v187;
            v114 = v489;
            (v184[3])(v188, v54, v184);
            LOBYTE(v185) = (*(*(*(v49 + 32) + 8) + 32))(v181, v182, v54);
            (v183)(v182, v54);
            if ((v185 & 1) == 0)
            {
              goto LABEL_222;
            }
          }

          v189 = v491;
          if (v491(v54, v49) > 63)
          {
            v497 = -1;
            v182 = v114(v54, v49);
            v190 = v189(v54, v49);
            if (v182)
            {
              if (v190 <= 64)
              {
                v116 = v481;
                v193 = v479;
                v194 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v195 = v480;
                (*(v194 + 8))(&qword_18071E0A8, 256, v193, v194);
                v182 = v493;
                (v116[3])(v195, v54, v116);
                v181 = v462;
                LOBYTE(v193) = (*(*(*(v49 + 32) + 8) + 40))(v462, v182, v54);
                (v183)(v182, v54);
                if (v193)
                {
                  (*(v49 + 120))(v54, v49);
                }

                goto LABEL_112;
              }
            }

            else if (v190 <= 64)
            {
              v181 = v462;
              (*(v49 + 120))(v54, v49);
              goto LABEL_112;
            }

            v182 = v49 + 96;
            v116 = *(v49 + 96);
            v232 = lazy protocol witness table accessor for type UInt and conformance UInt(v190, v191, v192);
            v233 = v493;
            (v116)(&v497, &type metadata for UInt, v232, v54, v49);
            v181 = v462;
            v234 = (*(*(*(v49 + 32) + 8) + 16))(v233, v462, v54);
            (v183)(v233, v54);
            if (v234)
            {
              goto LABEL_222;
            }
          }

LABEL_112:
          v236 = (*(v49 + 120))(v54, v49);
          (v183)(v181, v54);
          v235 = (1023 - v236);
          if (v236 > 0x3FF)
          {
            __break(1u);
            goto LABEL_232;
          }

LABEL_113:
          v481 = v235;
          v237 = v487;
          v238 = v488;
          v239 = v496;
          v240 = *(v488 + 17);
          v489 = ((v488 + 136) & 0xFFFFFFFFFFFFLL | 0x1E66000000000000);
          v241 = v490;
          v491 = v240;
          v494 = v240(v490, v488);
          v493 = *(v238 + 15);
          (v493)(v241, v238);
          v242 = *(v237 + 144);
          v243 = v484;
          v472 = (v237 + 144);
          v471 = v242;
          v244 = (v242)(v484, v237);
          v54 = (v476 + 8);
          v495 = *(v476 + 8);
          (v495)(v239, v243);
          v494 = 52 - v494 - v244;
          LOBYTE(v237) = (*(v478 + 49))(v241);
          v245 = v486;
          v246 = v483;
          v247 = swift_getAssociatedConformanceWitness(v486, v243, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v248 = *(v247 + 8);
          v480 = (v245 + 3);
          v485 = v238 + 120;
          if (v237)
          {
            v249 = v482;
            v248(&qword_1806729C0, 512, v246, v247);
            v479 = v245[3];
            (v479)(v249, v243, v245);
            v250 = v491(v241, v238);
            v251 = v474;
            (v493)(v241, v238);
            v182 = v487;
            v252 = (v471)(v243, v487);
            v253 = v495;
            v254 = (v495)(v251, v243);
            v497 = v252 + v250;
            v255 = *(v182 + 256);
            v258 = lazy protocol witness table accessor for type Int and conformance Int(v254, v256, v257);
            v259 = v496;
            v255(v496, &v497, &type metadata for Int, v258, v243, v182);
            v116 = v54;
            (v253)(v259, v243);
            v260 = v469;
            v261 = v253;
          }

          else
          {
            v116 = v54;
            v262 = v482;
            v248(&qword_18071E0A8, 256, v246, v247);
            v479 = v245[3];
            (v479)(v262, v243, v245);
            v182 = v487;
            v261 = v495;
            v259 = v496;
            v260 = v469;
          }

          v236 = v182 + 224;
          v183 = v494;
          if ((v494 & 0x8000000000000000) == 0)
          {
            (v493)(v490, v488);
            v263 = v475;
            (*(v182 + 224))(v475, v259, v243, v182);
            (v261)(v259, v243);
            v485 = v116;
            (v261)(v263, v243);
            v264 = *(v182 + 64);
            v265 = v182;
            if (v264(v243, v182))
            {
              v266 = v486;
              v267 = v483;
              v268 = swift_getAssociatedConformanceWitness(v486, v243, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v269 = v482;
              (*(v268 + 8))(&qword_18071E0A8, 256, v267, v268);
              (v479)(v269, v243, v266);
              LOBYTE(v269) = (*(*(*(v182 + 32) + 8) + 32))(v260, v259, v243);
              (v495)(v259, v243);
              if ((v269 & 1) == 0)
              {
                goto LABEL_222;
              }
            }

            v270 = *(v182 + 128);
            if (v270(v243, v182) <= 63)
            {
              goto LABEL_140;
            }

            v497 = -1;
            v271 = v264(v243, v182);
            v272 = v270(v243, v182);
            if (v271)
            {
              v275 = v496;
              if (v272 > 64)
              {
                v276 = *(v182 + 96);
                v277 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v272, v273, v274);
                v276(&v497, &type metadata for UInt64, v277, v243, v182);
                v278 = (*(*(*(v182 + 32) + 8) + 16))(v275, v260, v243);
                v279 = v275;
                goto LABEL_132;
              }

              v311 = v486;
              v312 = v483;
              v313 = swift_getAssociatedConformanceWitness(v486, v243, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v314 = v482;
              (*(v313 + 8))(&qword_18071E0A8, 256, v312, v313);
              (v479)(v314, v243, v311);
              LOBYTE(v314) = (*(*(*(v182 + 32) + 8) + 40))(v260, v275, v243);
              (v495)(v275, v243);
              if ((v314 & 1) == 0)
              {
LABEL_140:
                v315 = (*(v265 + 120))(v243, v265);
                (v495)(v260, v243);
                if (v494 >= 0x40)
                {
                  v316 = 0;
                }

                else
                {
                  v316 = v315 << v494;
                }

                goto LABEL_146;
              }
            }

            else if (v272 > 64)
            {
              v305 = *(v182 + 96);
              v306 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v272, v273, v274);
              v307 = v496;
              v305(&v497, &type metadata for UInt64, v306, v243, v265);
              v278 = (*(*(*(v265 + 32) + 8) + 16))(v307, v260, v243);
              v279 = v307;
LABEL_132:
              (v495)(v279, v243);
              if (v278)
              {
                goto LABEL_222;
              }

              goto LABEL_140;
            }

            (*(v182 + 120))(v243, v182);
            goto LABEL_140;
          }

          v181 = v474;
          (v493)(v490, v488);
          v280 = v475;
          (*(v182 + 224))(v475, v181, v243, v182);
          (v261)(v181, v243);
          v281 = (v261)(v280, v243);
          if (!__OFSUB__(0, v183))
          {
            v497 = -v183;
            v284 = *(v182 + 240);
            v285 = lazy protocol witness table accessor for type Int and conformance Int(v281, v282, v283);
            v286 = v464;
            v287 = v496;
            v284(v496, &v497, &type metadata for Int, v285, v243, v182);
            (v261)(v287, v243);
            v288 = *(v182 + 64);
            v289 = v182;
            if (v288(v243, v182))
            {
              v290 = v486;
              v291 = v483;
              v292 = swift_getAssociatedConformanceWitness(v486, v243, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v293 = v482;
              (*(v292 + 8))(&qword_18071E0A8, 256, v291, v292);
              v294 = v496;
              (v479)(v293, v243, v290);
              LOBYTE(v290) = (*(*(*(v289 + 32) + 8) + 32))(v464, v294, v243);
              v286 = v464;
              (v495)(v294, v243);
              if ((v290 & 1) == 0)
              {
                goto LABEL_222;
              }
            }

            v295 = *(v289 + 128);
            if (v295(v243, v289) <= 63)
            {
              goto LABEL_145;
            }

            v497 = -1;
            v296 = v288(v243, v289);
            v297 = v295(v243, v289);
            if (v296)
            {
              if (v297 > 64)
              {
                v300 = *(v289 + 96);
                v301 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v297, v298, v299);
                v302 = v496;
                v300(&v497, &type metadata for UInt64, v301, v243, v289);
                v286 = v464;
                v303 = (*(*(*(v289 + 32) + 8) + 16))(v302, v464, v243);
                v304 = v302;
                goto LABEL_136;
              }

              v317 = v486;
              v318 = v483;
              v319 = swift_getAssociatedConformanceWitness(v486, v243, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v320 = v482;
              (*(v319 + 8))(&qword_18071E0A8, 256, v318, v319);
              v321 = v496;
              (v479)(v320, v243, v317);
              v286 = v464;
              LOBYTE(v317) = (*(*(*(v289 + 32) + 8) + 40))(v464, v321, v243);
              (v495)(v321, v243);
              if ((v317 & 1) == 0)
              {
LABEL_145:
                v322 = (*(v289 + 120))(v243, v289);
                v323 = v243;
                v316 = v322;
                (v495)(v286, v323);
LABEL_146:
                v324 = 52;
                v326 = v490;
                v325 = v491;
                v327 = v488;
                v328 = v481;
LABEL_199:
                v400 = (v478 + 168);
                v485 = *(v478 + 21);
                v401 = ((v328 & 0x7FF) << 52) | ((v485)(v326) << 63) | v316 & 0xFFFFFFFFFFFFFLL;
                if (v324 < v325(v326, v327))
                {
                  v479 = v400;
                  v480 = v401;
                  v475 = v316;
                  v402 = v486;
                  v403 = v483;
                  v404 = v484;
                  v405 = swift_getAssociatedConformanceWitness(v486, v484, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v406 = v405 + 8;
                  v407 = *(v405 + 8);
                  v408 = v482;
                  v488 = v405;
                  v407(&qword_1806729C0, 512, v403);
                  v409 = v402 + 3;
                  v410 = v402[3];
                  v411 = (v410)(v408, v404, v402);
                  if (!__OFSUB__(0, v494))
                  {
                    v414 = v410;
                    v497 = -v494;
                    v494 = v406;
                    v415 = v495;
                    v491 = v407;
                    v416 = v487;
                    v417 = *(v487 + 256);
                    v418 = lazy protocol witness table accessor for type Int and conformance Int(v411, v412, v413);
                    v489 = v409;
                    v481 = v410;
                    v417(v496, &v497, &type metadata for Int, v418, v404, v416);
                    v419 = (v476 + 8);
                    (v415)(v496, v404);
                    (v493)(v490, v327);
                    v421 = v482;
                    v420 = v483;
                    (v491)(&qword_1806729C0, 512, v483, v488);
                    v422 = v468;
                    (v414)(v421, v404, v486);
                    v423 = v474;
                    v424 = v473;
                    (*(*(v466 + 8) + 40))(v473, v422, v404);
                    (v415)(v422, v404);
                    v425 = v467;
                    (*(v416 + 192))(v496, v423, v404, v416);
                    (v415)(v423, v404);
                    (v415)(v496, v404);
                    (v491)(qword_18071E0B8, 768, v420, v488);
                    (v481)(v421, v404, v486);
                    v476 = *(v416 + 152);
                    (v476)(v424, v423, v404, v416);
                    (v415)(v423, v404);
                    v426 = *(v416 + 32);
                    v427 = v496;
                    v428 = *(v426 + 8);
                    LOBYTE(v414) = (*(v428 + 16))(v425, v496, v404, v428);
                    v493 = v419;
                    (v415)(v427, v404);
                    if (v414)
                    {
                      (v415)(v425, v404);
                      (v415)(v424, v404);
                      result = 0;
                      *v477 = v480;
                      return result;
                    }

                    v429 = v415;
                    v4 = *&v480;
                    if ((v485)(v490, v478))
                    {
                      v430 = 0.0 - v4;
                      v431 = v482;
                      if (0.0 - v4 != INFINITY)
                      {
                        *&v430 += (*&v430 >> 63) | 1;
                      }

                      v5 = -v430;
                    }

                    else
                    {
                      v5 = v4 + 0.0;
                      v431 = v482;
                      if (v4 != INFINITY)
                      {
                        *&v5 += (*&v5 >> 63) | 1;
                      }
                    }

                    v491(qword_18071E0B8, 768);
                    v432 = v474;
                    v433 = v431;
                    v434 = v484;
                    (v481)(v433, v484, v486);
                    (v476)(v424, v432, v434, v487);
                    (v429)(v432, v434);
                    (v429)(v424, v434);
                    v435 = (*(v428 + 40))(v425, v427, v434, v428);
                    (v429)(v427, v434);
                    (v429)(v425, v434);
                    result = 0;
                    if (v435)
                    {
                      *v477 = v5;
                      return result;
                    }

                    goto LABEL_227;
                  }

                  __break(1u);
                  goto LABEL_224;
                }

                *v477 = v401;
                return 1;
              }
            }

            else if (v297 > 64)
            {
              v308 = *(v289 + 96);
              v309 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v297, v298, v299);
              v310 = v496;
              v308(&v497, &type metadata for UInt64, v309, v243, v289);
              v303 = (*(*(*(v289 + 32) + 8) + 16))(v310, v464, v243);
              v304 = v310;
              v286 = v464;
LABEL_136:
              (v495)(v304, v243);
              if (v303)
              {
                goto LABEL_222;
              }

              goto LABEL_145;
            }

            (*(v289 + 120))(v243, v289);
            goto LABEL_145;
          }

LABEL_232:
          __break(1u);
          goto LABEL_233;
        }
      }

      else
      {
        v144 = v114(v54, v49);
        v145 = v491(v54, v49);
        if (v144)
        {
          if (v145 > 64)
          {
            v497 = 0;
            v148 = *(v49 + 96);
            v149 = lazy protocol witness table accessor for type Int and conformance Int(v145, v146, v147);
            v150 = v493;
            v148(&v497, &type metadata for Int, v149, v54, v49);
            v69 = v495;
            v151 = (*(*(*(v49 + 32) + 8) + 16))(v495, v150, v54);
            (*(v494 + 8))(v150, v54);
            v113 = v485;
            if (v151)
            {
              goto LABEL_60;
            }

            goto LABEL_52;
          }

          v160 = v481;
          v161 = v479;
          v162 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v163 = v480;
          (*(v162 + 8))(&qword_18071E0A8, 256, v161, v162);
          v164 = v493;
          (v160[3])(v163, v54, v160);
          v69 = v495;
          LOBYTE(v161) = (*(*(*(v49 + 32) + 8) + 16))(v495, v164, v54);
          (*(v494 + 8))(v164, v54);
          v113 = v485;
          if (v161)
          {
            goto LABEL_60;
          }
        }

        else if (v145 >= 64)
        {
          goto LABEL_52;
        }
      }

      if ((*(v49 + 120))(v54, v49) < 0)
      {
        goto LABEL_60;
      }

LABEL_52:
      v165 = v470;
      (*(v494 + 32))(v470, v69, v54);
      if (v114(v54, v49))
      {
        v166 = v481;
        v167 = v479;
        v168 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v169 = v480;
        (*(v168 + 8))(&qword_18071E0A8, 256, v167, v168);
        v170 = v493;
        (v166[3])(v169, v54, v166);
        LOBYTE(v167) = (*(*(*(v49 + 32) + 8) + 32))(v470, v170, v54);
        v171 = v170;
        v165 = v470;
        (*(v494 + 8))(v171, v54);
        if ((v167 & 1) == 0)
        {
          goto LABEL_222;
        }
      }

      v103 = v491;
      if (v491(v54, v49) > 63)
      {
        v497 = -1;
        v172 = v114(v54, v49);
        v173 = (v103)(v54, v49);
        if (v172)
        {
          if (v173 <= 64)
          {
            v176 = v481;
            v177 = v479;
            v178 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v103 = v480;
            (*(v178 + 8))(&qword_18071E0A8, 256, v177, v178);
            v179 = v493;
            (v176[3])(v103, v54, v176);
            v180 = v470;
            LOBYTE(v177) = (*(*(*(v49 + 32) + 8) + 40))(v470, v179, v54);
            (*(v494 + 8))(v179, v54);
            if (v177)
            {
              (*(v49 + 120))(v54, v49);
            }

            v165 = v180;
            goto LABEL_107;
          }
        }

        else if (v173 <= 64)
        {
          v165 = v470;
          (*(v49 + 120))(v54, v49);
          goto LABEL_107;
        }

        v196 = *(v49 + 96);
        v197 = lazy protocol witness table accessor for type UInt and conformance UInt(v173, v174, v175);
        v103 = v493;
        v196(&v497, &type metadata for UInt, v197, v54, v49);
        v165 = v470;
        v198 = (*(*(*(v49 + 32) + 8) + 16))(v103, v470, v54);
        (*(v494 + 8))(v103, v54);
        if (v198)
        {
          goto LABEL_222;
        }
      }

LABEL_107:
      v49 = (*(v49 + 120))(v54, v49);
      (*(v494 + 8))(v165, v54);
      v235 = (v49 + 1023);
      v226 = v49 < -1023;
      if (v49 >= 0xFFFFFFFFFFFFFC01)
      {
        __break(1u);
LABEL_109:
        if (!v226)
        {
          goto LABEL_149;
        }

        goto LABEL_148;
      }

      goto LABEL_113;
    }

    goto LABEL_30;
  }

  v76 = v70;
  if ((*(v49 + 120))(v54, v49) > -1023)
  {
    goto LABEL_21;
  }

LABEL_17:
  v478 = v76;
  v94 = v481;
  v95 = v479;
  v96 = swift_getAssociatedConformanceWitness(v481, v54, v479, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v97 = *(v96 + 8);
  v98 = v480;
  v470 = v96;
  v469 = (v96 + 8);
  v464 = v97;
  (v97)(&qword_1806729C0, 512, v95);
  v99 = v94 + 3;
  v100 = v94[3];
  v101 = v493;
  v102 = v94;
  v103 = v495;
  v462 = v99;
  v461 = v100;
  (v100)(v98, v54, v102);
  v104 = *(v472 + 1);
  v458 = *(v104 + 24);
  v458(v103, v101, v54, v104);
  v105 = *(v494 + 8);
  v475 = v494 + 8;
  v472 = v105;
  v105(v101, v54);
  v106 = v489;
  v107 = (v489)(v54, v49);
  v459 = v104;
  if ((v107 & 1) == 0)
  {
    v136 = v106(v54, v49);
    v137 = v491(v54, v49);
    if (v136)
    {
      if (v137 > 64)
      {
        v497 = -1074;
        v140 = *(v49 + 96);
        v141 = lazy protocol witness table accessor for type Int and conformance Int(v137, v138, v139);
        v142 = v493;
        v140(&v497, &type metadata for Int, v141, v54, v49);
        v143 = (*(*(*(v49 + 32) + 8) + 16))(v65, v142, v54);
        v112 = v472;
        v472(v142, v54);
        v112(v65, v54);
        v103 = v495;
        if (v143)
        {
          goto LABEL_72;
        }

        goto LABEL_75;
      }

      v157 = v480;
      (v464)(&qword_18071E0A8, 256);
      v158 = v493;
      (v461)(v157, v54, v481);
      v159 = (*(*(*(v49 + 32) + 8) + 16))(v65, v158, v54);
      v112 = v472;
      v472(v158, v54);
      if (v159)
      {
        v112(v65, v54);
        v103 = v495;
        goto LABEL_72;
      }

      v156 = (*(v49 + 120))(v54, v49);
      v112(v65, v54);
    }

    else
    {
      if (v137 >= 64)
      {
        v112 = v472;
        v472(v65, v54);
        v103 = v495;
        goto LABEL_75;
      }

      v156 = (*(v49 + 120))(v54, v49);
      v112 = v472;
      v472(v65, v54);
    }

    v103 = v495;
    if (v156 >= -1074)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  v108 = v491(v54, v49);
  if (v108 < 64)
  {
    v111 = (*(v49 + 120))(v54, v49);
    v112 = v472;
    v472(v65, v54);
    if (v111 > -1075)
    {
      goto LABEL_75;
    }

LABEL_72:
    v112(v103, v54);
    if (((*(v478 + 21))(v490) & 1) == 0)
    {
      result = 0;
      *v477 = 0;
      return result;
    }

    result = 0;
    v135 = 0x8000000000000000;
LABEL_74:
    *v477 = v135;
    return result;
  }

  v497 = -1074;
  v152 = *(v49 + 96);
  v153 = lazy protocol witness table accessor for type Int and conformance Int(v108, v109, v110);
  v154 = v493;
  v152(&v497, &type metadata for Int, v153, v54, v49);
  v103 = v495;
  v155 = (*(*(*(v49 + 32) + 8) + 16))(v65, v154, v54);
  v112 = v472;
  v472(v154, v54);
  v112(v65, v54);
  if (v155)
  {
    goto LABEL_72;
  }

LABEL_75:
  v199 = v480;
  (v464)(&qword_1806729C0, 512);
  v200 = v493;
  (v461)(v199, v54, v481);
  v201 = v465;
  v458(v103, v200, v54, v459);
  v112(v200, v54);
  v202 = v489;
  if ((v489)(v54, v49))
  {
    v203 = v491(v54, v49);
    if (v203 >= 64)
    {
LABEL_80:
      v497 = -1074;
      v207 = *(v49 + 96);
      v208 = lazy protocol witness table accessor for type Int and conformance Int(v203, v204, v205);
      v209 = v493;
      v207(&v497, &type metadata for Int, v208, v54, v49);
      v210 = (*(*(*(v49 + 16) + 8) + 8))(v201, v209, v54);
      v211 = v209;
      v103 = v495;
      v112(v211, v54);
      v112(v201, v54);
      if (v210)
      {
        goto LABEL_85;
      }

      goto LABEL_94;
    }

    goto LABEL_84;
  }

  v206 = v202(v54, v49);
  v203 = v491(v54, v49);
  if ((v206 & 1) == 0)
  {
    if (v203 < 64)
    {
      goto LABEL_84;
    }

LABEL_93:
    v112(v201, v54);
    goto LABEL_94;
  }

  if (v203 > 64)
  {
    goto LABEL_80;
  }

  v218 = v480;
  (v464)(&qword_18071E0A8, 256);
  v219 = v493;
  (v461)(v218, v54, v481);
  v220 = (*(*(*(v49 + 32) + 8) + 32))(v201, v219, v54);
  v112(v219, v54);
  if ((v220 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_84:
  v212 = (*(v49 + 120))(v54, v49);
  v112(v201, v54);
  if (v212 == -1074)
  {
LABEL_85:
    v112(v103, v54);
    v213 = v490;
    v214 = (*(v488 + 17))(v490);
    v215 = (*(v478 + 21))(v213);
    result = 0;
    v216 = -0.0;
    if ((v215 & 1) == 0)
    {
      v216 = 0.0;
    }

    *&v217 = 1;
    if (v215)
    {
      v217 = COERCE_DOUBLE(0x8000000000000001);
    }

    if (v214)
    {
      v216 = v217;
    }

    goto LABEL_230;
  }

LABEL_94:
  v76 = v471;
  (*(v494 + 16))(v471, v103, v54);
  if (((v489)(v54, v49) & 1) != 0 && v491(v54, v49) >= 65)
  {
    v497 = 0x8000000000000000;
    v221 = v489;
    if ((v489)(v54, v49))
    {
      v222 = v491(v54, v49);
      if (v222 < 64)
      {
LABEL_148:
        (*(v49 + 120))(v54, v49);
        goto LABEL_149;
      }
    }

    else
    {
      v225 = v221(v54, v49);
      v222 = v491(v54, v49);
      v226 = v222 < 64;
      if ((v225 & 1) == 0)
      {
        goto LABEL_109;
      }

      if (v222 <= 64)
      {
        v329 = v480;
        (v464)(&qword_18071E0A8, 256);
        v330 = v493;
        (v461)(v329, v54, v481);
        v331 = (*(*(*(v49 + 32) + 8) + 16))(v76, v330, v54);
        v112(v330, v54);
        if (v331)
        {
          goto LABEL_222;
        }

        goto LABEL_148;
      }
    }

    v227 = *(v49 + 96);
    v228 = lazy protocol witness table accessor for type Int and conformance Int(v222, v223, v224);
    v229 = v493;
    v227(&v497, &type metadata for Int, v228, v54, v49);
    v230 = (*(*(*(v49 + 32) + 8) + 16))(v76, v229, v54);
    v231 = v229;
    v103 = v495;
    v112(v231, v54);
    if (v230)
    {
      goto LABEL_222;
    }
  }

LABEL_149:
  v332 = v76;
  v333 = v491;
  if (v491(v54, v49) <= 64 && (v333(v54, v49) != 64 || ((v489)(v54, v49) & 1) != 0))
  {
    goto LABEL_159;
  }

  v497 = 0x7FFFFFFFFFFFFFFFLL;
  v334 = (v489)(v54, v49);
  v335 = v333(v54, v49);
  if (v334)
  {
    if (v335 > 64)
    {
      goto LABEL_152;
    }

LABEL_158:
    v332 = v471;
    (*(v49 + 120))(v54, v49);
    goto LABEL_159;
  }

  if (v335 < 64)
  {
    goto LABEL_158;
  }

LABEL_152:
  v338 = *(v49 + 96);
  v339 = lazy protocol witness table accessor for type Int and conformance Int(v335, v336, v337);
  v340 = v493;
  v338(&v497, &type metadata for Int, v339, v54, v49);
  v332 = v471;
  v341 = (*(*(*(v49 + 32) + 8) + 16))(v340, v471, v54);
  v342 = v340;
  v103 = v495;
  v472(v342, v54);
  if (v341)
  {
    goto LABEL_222;
  }

LABEL_159:
  v343 = (*(v49 + 120))(v54, v49);
  v344 = v472;
  result = (v472)(v332, v54);
  v182 = v343 + 1074;
  if (!__OFADD__(v343, 1074))
  {
    v344(v103, v54);
    v345 = v488;
    v181 = v490;
    v491 = *(v488 + 17);
    v489 = v488 + 136;
    v346 = v491(v490, v488);
    v183 = *(v345 + 15);
    v54 = v496;
    (v183)(v181, v345);
    v347 = v484;
    v348 = (*(v487 + 144))(v484);
    v495 = *(v476 + 8);
    (v495)(v54, v347);
    v236 = v182 - (v346 + v348);
    v349 = (*(v478 + 46))(v181);
    v493 = v183;
    v494 = v236;
    v485 = v182;
    if (v349)
    {
      v116 = v487;
      if (v182 < -64 || v182 > 64)
      {
        goto LABEL_163;
      }

      if (v182 < 0)
      {
        goto LABEL_234;
      }

      if (v182 == 64)
      {
        goto LABEL_163;
      }

      v350 = (1 << v182);
    }

    else
    {
      v350 = 0;
      v116 = v487;
    }

LABEL_172:
    if ((v236 & 0x8000000000000000) == 0)
    {
LABEL_173:
      v481 = v350;
      v371 = v463;
      (v183)(v181, v488);
      v372 = v116[8];
      v373 = v484;
      if ((v372)(v484, v116) & 1) == 0 || (v374 = v486, v375 = v483, v376 = swift_getAssociatedConformanceWitness(v486, v373, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), v377 = v482, (*(v376 + 8))(&qword_18071E0A8, 256, v375, v376), (v374[3])(v377, v373, v374), LOBYTE(v374) = (*(*(v116[4] + 1) + 32))(v371, v54, v373), (v495)(v54, v373), (v374))
      {
        v378 = v116;
        v379 = v116[16];
        if ((v379)(v373, v378) <= 63)
        {
          goto LABEL_191;
        }

        v497 = -1;
        v380 = (v372)(v373, v378);
        v381 = (v379)(v373, v378);
        if (v380)
        {
          if (v381 <= 64)
          {
            v384 = v486;
            v385 = v483;
            v373 = v484;
            v386 = swift_getAssociatedConformanceWitness(v486, v484, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v387 = v482;
            (*(v386 + 8))(&qword_18071E0A8, 256, v385, v386);
            v388 = v496;
            (v384[3])(v387, v373, v384);
            v378 = v487;
            v371 = v463;
            LOBYTE(v384) = (*(*(*(v487 + 32) + 8) + 40))(v463, v388, v373);
            (v495)(v388, v373);
            if (v384)
            {
              (v378[15])(v373, v378);
            }

            goto LABEL_191;
          }
        }

        else if (v381 <= 64)
        {
          v378 = v487;
          v371 = v463;
          v373 = v484;
          (*(v487 + 120))(v484, v487);
          goto LABEL_191;
        }

        v378 = v487;
        v389 = *(v487 + 96);
        v390 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v381, v382, v383);
        v391 = v496;
        v373 = v484;
        v389(&v497, &type metadata for UInt64, v390, v484, v378);
        v371 = v463;
        v392 = (*(*(v378[4] + 1) + 16))(v391, v463, v373);
        (v495)(v391, v373);
        if (v392)
        {
          goto LABEL_222;
        }

LABEL_191:
        v394 = (v378[15])(v373, v378);
        (v495)(v371, v373);
        if (v494 >= 0x40)
        {
          v395 = 0;
        }

        else
        {
          v395 = v394 << v494;
        }

        goto LABEL_198;
      }

LABEL_222:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    while (1)
    {
      v481 = v350;
      v351 = (v183)(v181, v488);
      if (!__OFSUB__(0, v236))
      {
        break;
      }

LABEL_233:
      __break(1u);
LABEL_234:
      if (v182 != -64)
      {
        v350 = 0;
        goto LABEL_172;
      }

LABEL_163:
      v350 = 0;
      if ((v236 & 0x8000000000000000) == 0)
      {
        goto LABEL_173;
      }
    }

    v497 = -v236;
    v354 = v116[30];
    v355 = lazy protocol witness table accessor for type Int and conformance Int(v351, v352, v353);
    v356 = v460;
    v357 = v484;
    (v354)(v54, &v497, &type metadata for Int, v355, v484, v116);
    (v495)(v54, v357);
    v358 = v116[8];
    if ((v358)(v357, v116))
    {
      v359 = v486;
      v360 = v483;
      v361 = swift_getAssociatedConformanceWitness(v486, v357, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v362 = v482;
      (*(v361 + 8))(&qword_18071E0A8, 256, v360, v361);
      (v359[3])(v362, v357, v359);
      LOBYTE(v359) = (*(*(v116[4] + 1) + 32))(v356, v54, v357);
      (v495)(v54, v357);
      if ((v359 & 1) == 0)
      {
        goto LABEL_222;
      }
    }

    v363 = v116[16];
    if ((v363)(v357, v116) > 63)
    {
      v497 = -1;
      v364 = (v358)(v357, v116);
      v365 = (v363)(v357, v116);
      if (v364)
      {
        v368 = v496;
        if (v365 <= 64)
        {
          v396 = v486;
          v397 = v483;
          v357 = v484;
          v398 = swift_getAssociatedConformanceWitness(v486, v484, v483, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v399 = v482;
          (*(v398 + 8))(&qword_18071E0A8, 256, v397, v398);
          (v396[3])(v399, v357, v396);
          v116 = v487;
          LOBYTE(v396) = (*(*(*(v487 + 32) + 8) + 40))(v356, v368, v357);
          (v495)(v368, v357);
          if (v396)
          {
            (v116[15])(v357, v116);
          }

          goto LABEL_197;
        }

        v116 = v487;
        v369 = *(v487 + 96);
        v370 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v365, v366, v367);
      }

      else
      {
        if (v365 <= 64)
        {
          v116 = v487;
          v357 = v484;
          (*(v487 + 120))(v484, v487);
          goto LABEL_197;
        }

        v116 = v487;
        v369 = *(v487 + 96);
        v370 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v365, v366, v367);
        v368 = v496;
      }

      v357 = v484;
      v369(&v497, &type metadata for UInt64, v370, v484, v116);
      v393 = (*(*(v116[4] + 1) + 16))(v368, v356, v357);
      (v495)(v368, v357);
      if (v393)
      {
        goto LABEL_222;
      }
    }

LABEL_197:
    v395 = (v116[15])(v357, v116);
    (v495)(v356, v357);
LABEL_198:
    v326 = v490;
    v328 = 0;
    v316 = v481 | v395;
    v327 = v488;
    v325 = v491;
    v324 = v485;
    goto LABEL_199;
  }

  __break(1u);
LABEL_227:
  if (__clz(__rbit64(*&v5 & 0xFFFFFFFFFFFFFLL)) >= __clz(__rbit64(v475)))
  {
    v216 = v5;
  }

  else
  {
    v216 = v4;
  }

LABEL_230:
  *v477 = v216;
  return result;
}

uint64_t specialized static BinaryFloatingPoint._convert<A>(from:)(float *a1, uint64_t a2, const char *a3, swift *a4)
{
  v496 = a1;
  v510 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v509 = &v478 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v482 = &v478 - v11;
  swift_getAssociatedTypeWitness(255, v13, v12, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v15 = v14;
  v503 = *(swift_getAssociatedConformanceWitness(a4, a3, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v484 = *(v503 + 24);
  v506 = *(v484 + 16);
  swift_getAssociatedTypeWitness(0, v506, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v502 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v495 = &v478 - v17;
  v497 = swift_checkMetadataState(0, v15);
  v494 = *(v497 - 1);
  v18 = MEMORY[0x1EEE9AC00](v497);
  v20 = &v478 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v478 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v508 = &v478 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v487 = &v478 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v483 = &v478 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v486 = (&v478 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v485 = &v478 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v492 = &v478 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v488 = &v478 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v498 = &v478 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v491 = &v478 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v479 = &v478 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v505 = &v478 - v44;
  v507 = a4;
  v45 = *(a4 + 2);
  swift_getAssociatedTypeWitness(255, v45, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v47 = v46;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v45, a3, v46, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v48 = *(AssociatedConformanceWitness + 8);
  v493 = *(v48 + 24);
  v501 = *(v493 + 2);
  swift_getAssociatedTypeWitness(0, v501, v47, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v499 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v500 = &v478 - v50;
  v51 = v47;
  v52 = v45;
  v53 = swift_checkMetadataState(0, v51);
  v514 = *(v53 - 1);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v489 = &v478 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v481 = &v478 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v490 = &v478 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v478 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = &v478 - v64;
  v66 = MEMORY[0x1EEE9AC00](v63);
  v512 = &v478 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v515 = &v478 - v68;
  if ((v52[48])(a3, v52))
  {
    if (((v52[21])(a3, v52) & 1) == 0)
    {
      *v496 = 0.0;
      return 1;
    }

    v456 = 0x80000000;
    goto LABEL_238;
  }

  if (((v52[47])(a3, v52) & 1) == 0)
  {
    if (((v52[50])(a3, v52) & 1) == 0)
    {
      v457 = v507;
      v458 = *(v507 + 15);
      v458(a3, v507);
      v459 = v458;
      v515 = v458;
      v460 = v482;
      (v52[12])(a3, v52);
      v459(a3, v457);
      v461 = v52;
      v462 = v510[1];
      (v462)(v460, a3);
      v504 = v461;
      v463 = v509;
      (v461[13])(a3, v461);
      (v515)(a3, v457);
      (v462)(v463, a3);
      v464 = v503;
      v465 = v485;
      v466 = v497;
      (*(v503 + 208))(v23, v20, v497, v503);
      v467 = *(v494 + 8);
      v467(v20, v466);
      v467(v23, v466);
      v468 = v492;
      (*(v464 + 184))(v465, v466, v464);
      v467(v465, v466);
      v469 = v508;
      v470 = v505;
      (*(v464 + 192))(v505, v468, v466, v464);
      v467(v468, v466);
      v467(v470, v466);
      v471 = (*(v464 + 120))(v466, v464);
      v467(v469, v466);
      v472 = v504;
      v473 = (*(v504 + 52))(a3, v504);
      v474 = (*(v472 + 21))(a3, v472);
      result = 0;
      if (v474)
      {
        v475 = 0x80000000;
      }

      else
      {
        v475 = 0;
      }

      v476 = v475 & 0xFFE00000 | v471 & 0x1FFFFF;
      if (v473)
      {
        v477 = 2141192192;
      }

      else
      {
        v477 = 2143289344;
      }

      v131 = v476 | v477;
      goto LABEL_74;
    }

    if (((v52[21])(a3, v52) & 1) == 0)
    {
LABEL_237:
      v456 = 2139095040;
      goto LABEL_238;
    }

    v456 = -8388608;
LABEL_238:
    *v496 = v456;
    return 1;
  }

  v482 = v62;
  v69 = v515;
  v70 = v52;
  (v52[22])(a3, v52);
  v516 = -126;
  v71 = *(v48 + 64);
  v72 = v71(v53, v48);
  v513 = a3;
  v511 = a2;
  v508 = (v48 + 64);
  v509 = v71;
  if ((v72 & 1) == 0)
  {
    v77 = v71(v53, v48);
    v510 = *(v48 + 128);
    v78 = (v510)(v53, v48);
    v76 = v70;
    if (v77)
    {
      if (v78 > 64)
      {
        v81 = *(v48 + 96);
        v82 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
        v83 = v512;
        v81(&v516, &type metadata for Int, v82, v53, v48);
        v69 = v515;
        v84 = (*(*(*(v48 + 32) + 8) + 16))(v515, v83, v53);
        (*(v514 + 8))(v83, v53);
        if (v84)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v89 = v501;
      v90 = v499;
      v91 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v500;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v512;
      (v89[3])(v92, v53, v89);
      v69 = v515;
      LOBYTE(v90) = (*(*(*(v48 + 32) + 8) + 16))(v515, v93, v53);
      (*(v514 + 8))(v93, v53);
      if (v90)
      {
        goto LABEL_17;
      }
    }

    else if (v78 >= 64)
    {
      goto LABEL_21;
    }

    if ((*(v48 + 120))(v53, v48) >= -126)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v510 = *(v48 + 128);
  v73 = (v510)(v53, v48);
  if (v73 < 64)
  {
    v76 = v70;
    if ((*(v48 + 120))(v53, v48) > -127)
    {
      goto LABEL_21;
    }

LABEL_17:
    v504 = v76;
    v94 = v501;
    v95 = v499;
    v96 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v97 = *(v96 + 8);
    v98 = v500;
    v489 = v96;
    v487 = (v96 + 8);
    v486 = v97;
    (v97)(&qword_1806729C0, 512, v95);
    v99 = v94 + 3;
    v100 = v94[3];
    v101 = v512;
    v102 = v94;
    v103 = v515;
    v483 = v99;
    v481 = v100;
    (v100)(v98, v53, v102);
    v104 = *(v493 + 1);
    v478 = *(v104 + 24);
    v478(v103, v101, v53, v104);
    v493 = *(v514 + 8);
    (v493)(v101, v53);
    v105 = v509;
    v106 = (v509)(v53, v48);
    AssociatedConformanceWitness = v104;
    if (v106)
    {
      v107 = (v510)(v53, v48);
      if (v107 < 64)
      {
        v110 = (*(v48 + 120))(v53, v48);
        v111 = v493;
        (v493)(v65, v53);
        if (v110 > -150)
        {
          goto LABEL_75;
        }

LABEL_72:
        (v111)(v103, v53);
        if (((*(v504 + 21))(v513) & 1) == 0)
        {
          result = 0;
          *v496 = 0.0;
          return result;
        }

        result = 0;
        v131 = 0x80000000;
LABEL_74:
        *v496 = v131;
        return result;
      }

      v516 = -149;
      v148 = *(v48 + 96);
      v149 = lazy protocol witness table accessor for type Int and conformance Int(v107, v108, v109);
      v150 = v512;
      v148(&v516, &type metadata for Int, v149, v53, v48);
      v103 = v515;
      v151 = (*(*(*(v48 + 32) + 8) + 16))(v65, v150, v53);
      v111 = v493;
      (v493)(v150, v53);
      (v111)(v65, v53);
      if (v151)
      {
        goto LABEL_72;
      }

LABEL_75:
      v195 = v500;
      v486(&qword_1806729C0, 512);
      v196 = v512;
      v197 = v195;
      v198 = v493;
      (v481)(v197, v53, v501);
      v199 = v482;
      v478(v103, v196, v53, AssociatedConformanceWitness);
      (v198)(v196, v53);
      v200 = v509;
      if ((v509)(v53, v48))
      {
        v201 = (v510)(v53, v48);
        v204 = v504;
        if (v201 >= 64)
        {
          v516 = -149;
          v205 = *(v48 + 96);
          v206 = lazy protocol witness table accessor for type Int and conformance Int(v201, v202, v203);
          v207 = v512;
          v205(&v516, &type metadata for Int, v206, v53, v48);
          v198 = v493;
          v208 = (*(*(*(v48 + 16) + 8) + 8))(v199, v207, v53);
          v209 = v207;
          v103 = v515;
          v210 = v53;
          goto LABEL_81;
        }

        goto LABEL_85;
      }

      v211 = v200(v53, v48);
      v212 = (v510)(v53, v48);
      v204 = v504;
      if (v211)
      {
        if (v212 > 64)
        {
          v516 = -149;
          v215 = *(v48 + 96);
          v216 = lazy protocol witness table accessor for type Int and conformance Int(v212, v213, v214);
          v217 = v512;
          v215(&v516, &type metadata for Int, v216, v53, v48);
          v208 = (*(*(*(v48 + 16) + 8) + 8))(v199, v217, v53);
          v209 = v217;
          v103 = v515;
          v210 = v53;
          v198 = v493;
LABEL_81:
          (v198)(v209, v210);
          (v198)(v199, v53);
          v179 = v491;
          if (v208)
          {
            goto LABEL_86;
          }

          goto LABEL_95;
        }

        v224 = v500;
        v486(&qword_18071E0A8, 256);
        v225 = v512;
        (v481)(v224, v53, v501);
        v226 = (*(*(*(v48 + 32) + 8) + 32))(v199, v225, v53);
        v198 = v493;
        (v493)(v225, v53);
        if (v226)
        {
LABEL_85:
          v218 = (*(v48 + 120))(v53, v48);
          (v198)(v199, v53);
          v179 = v491;
          if (v218 == -149)
          {
LABEL_86:
            (v198)(v103, v53);
            v219 = v513;
            v220 = (*(v507 + 17))(v513);
            v221 = (*(v204 + 21))(v219, v204);
            result = 0;
            v222 = -0.0;
            if ((v221 & 1) == 0)
            {
              v222 = 0.0;
            }

            LODWORD(v223) = 1;
            if (v221)
            {
              v223 = COERCE_FLOAT(-2147483647);
            }

            if (v220)
            {
              v222 = v223;
            }

            goto LABEL_243;
          }

LABEL_95:
          v76 = v490;
          (*(v514 + 16))(v490, v103, v53);
          if (((v509)(v53, v48) & 1) == 0 || (v510)(v53, v48) < 65)
          {
            goto LABEL_153;
          }

          v516 = 0x8000000000000000;
          v227 = v509;
          if ((v509)(v53, v48))
          {
            v228 = (v510)(v53, v48);
            if (v228 >= 64)
            {
              v231 = *(v48 + 96);
              v232 = lazy protocol witness table accessor for type Int and conformance Int(v228, v229, v230);
              v233 = v512;
              v231(&v516, &type metadata for Int, v232, v53, v48);
              v179 = v491;
              v234 = (*(*(*(v48 + 32) + 8) + 16))(v76, v233, v53);
              v235 = v233;
              v103 = v515;
              (v493)(v235, v53);
              if (v234)
              {
                goto LABEL_235;
              }

              goto LABEL_153;
            }
          }

          else
          {
            v236 = v227(v53, v48);
            v237 = (v510)(v53, v48);
            v240 = v237 < 64;
            if ((v236 & 1) == 0)
            {
              goto LABEL_111;
            }

            if (v237 > 64)
            {
              v241 = *(v48 + 96);
              v242 = lazy protocol witness table accessor for type Int and conformance Int(v237, v238, v239);
              v243 = v512;
              v241(&v516, &type metadata for Int, v242, v53, v48);
              v244 = (*(*(*(v48 + 32) + 8) + 16))(v76, v243, v53);
              v245 = v243;
              v103 = v515;
              (v493)(v245, v53);
              v179 = v491;
              if (v244)
              {
                goto LABEL_235;
              }

LABEL_153:
              v352 = v76;
              v353 = v510;
              if (v510)(v53, v48) <= 64 && ((v353)(v53, v48) != 64 || ((v509)(v53, v48)))
              {
                goto LABEL_163;
              }

              v516 = 0x7FFFFFFFFFFFFFFFLL;
              v354 = (v509)(v53, v48);
              v355 = (v353)(v53, v48);
              if (v354)
              {
                if (v355 > 64)
                {
                  goto LABEL_156;
                }
              }

              else if (v355 >= 64)
              {
LABEL_156:
                v358 = *(v48 + 96);
                v359 = lazy protocol witness table accessor for type Int and conformance Int(v355, v356, v357);
                v360 = v512;
                v358(&v516, &type metadata for Int, v359, v53, v48);
                v352 = v490;
                v361 = (*(*(*(v48 + 32) + 8) + 16))(v360, v490, v53);
                v362 = v360;
                v103 = v515;
                (v493)(v362, v53);
                v179 = v491;
                if (v361)
                {
                  goto LABEL_235;
                }

                goto LABEL_163;
              }

              v352 = v490;
              (*(v48 + 120))(v53, v48);
              v179 = v491;
LABEL_163:
              v363 = (*(v48 + 120))(v53, v48);
              v364 = v493;
              result = (v493)(v352, v53);
              v178 = (v363 + 149);
              if (!__OFADD__(v363, 149))
              {
                (v364)(v103, v53);
                v365 = v507;
                v366 = *(v507 + 17);
                v367 = v513;
                v509 = v507 + 136;
                v510 = v366;
                v368 = (v366)(v513, v507);
                v53 = v505;
                v514 = *(v365 + 15);
                (v514)(v367, v365);
                v369 = v497;
                v370 = (*(v503 + 144))(v497);
                v515 = *(v494 + 8);
                (v515)(v53, v369);
                v250 = &v178[-v368 - v370];
                v371 = (*(v504 + 46))(v367);
                v512 = v250;
                v508 = v178;
                if ((v371 & 1) == 0)
                {
                  LODWORD(v501) = 0;
                  v114 = v503;
                  goto LABEL_176;
                }

                v114 = v503;
                if (v178 >= -32 && v178 <= 32)
                {
                  if ((v178 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_247;
                  }

                  if (v178 != 32)
                  {
                    LODWORD(v501) = 1 << v178;
                    goto LABEL_176;
                  }
                }

                goto LABEL_167;
              }

              __break(1u);
              goto LABEL_240;
            }

            v349 = v500;
            v486(&qword_18071E0A8, 256);
            v350 = v512;
            (v481)(v349, v53, v501);
            v351 = (*(*(*(v48 + 32) + 8) + 16))(v76, v350, v53);
            (v493)(v350, v53);
            v179 = v491;
            if (v351)
            {
              goto LABEL_235;
            }
          }

LABEL_152:
          (*(v48 + 120))(v53, v48);
          goto LABEL_153;
        }
      }

      else if (v212 < 64)
      {
        goto LABEL_85;
      }

      (v198)(v199, v53);
      v179 = v491;
      goto LABEL_95;
    }

    v132 = v105(v53, v48);
    v133 = (v510)(v53, v48);
    if (v132)
    {
      if (v133 > 64)
      {
        v516 = -149;
        v136 = *(v48 + 96);
        v137 = lazy protocol witness table accessor for type Int and conformance Int(v133, v134, v135);
        v138 = v512;
        v136(&v516, &type metadata for Int, v137, v53, v48);
        v139 = (*(*(*(v48 + 32) + 8) + 16))(v65, v138, v53);
        v111 = v493;
        (v493)(v138, v53);
        (v111)(v65, v53);
        v103 = v515;
        if (v139)
        {
          goto LABEL_72;
        }

        goto LABEL_75;
      }

      v153 = v500;
      v486(&qword_18071E0A8, 256);
      v154 = v512;
      (v481)(v153, v53, v501);
      v155 = (*(*(*(v48 + 32) + 8) + 16))(v65, v154, v53);
      v156 = v154;
      v111 = v493;
      (v493)(v156, v53);
      if (v155)
      {
        (v111)(v65, v53);
        v103 = v515;
        goto LABEL_72;
      }

      v152 = (*(v48 + 120))(v53, v48);
      (v111)(v65, v53);
    }

    else
    {
      if (v133 >= 64)
      {
        (v493)(v65, v53);
        v103 = v515;
        goto LABEL_75;
      }

      v152 = (*(v48 + 120))(v53, v48);
      v111 = v493;
      (v493)(v65, v53);
    }

    v103 = v515;
    if (v152 >= -149)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  v85 = *(v48 + 96);
  v86 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
  v87 = v512;
  v85(&v516, &type metadata for Int, v86, v53, v48);
  v69 = v515;
  v88 = (*(*(*(v48 + 32) + 8) + 16))(v515, v87, v53);
  (*(v514 + 8))(v87, v53);
  v76 = v70;
  if (v88)
  {
    goto LABEL_17;
  }

LABEL_21:
  v516 = 127;
  v112 = v509;
  v113 = (v509)(v53, v48);
  v114 = (v48 + 128);
  v115 = (v510)(v53, v48);
  if (v113)
  {
    if (v115 > 64)
    {
      goto LABEL_23;
    }
  }

  else if (v115 > 63)
  {
LABEL_23:
    v118 = *(v48 + 96);
    v119 = lazy protocol witness table accessor for type Int and conformance Int(v115, v116, v117);
    v120 = v512;
    v118(&v516, &type metadata for Int, v119, v53, v48);
    v69 = v515;
    v121 = (*(*(*(v48 + 32) + 8) + 16))(v120, v515, v53);
    (*(v514 + 8))(v120, v53);
    if ((v121 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if ((*(v48 + 120))(v53, v48) > 127)
  {
LABEL_30:
    (*(v514 + 8))(v69, v53);
    if ((*(v76 + 21))(v513, v76))
    {
      result = 0;
      v131 = -8388608;
    }

    else
    {
      result = 0;
      v131 = 2139095040;
    }

    goto LABEL_74;
  }

LABEL_24:
  v122 = v112(v53, v48);
  v504 = v76;
  if (v122)
  {
    v123 = (v510)(v53, v48);
    if (v123 >= 64)
    {
      v516 = 0;
      v126 = *(v48 + 96);
      v127 = lazy protocol witness table accessor for type Int and conformance Int(v123, v124, v125);
      v128 = v512;
      v126(&v516, &type metadata for Int, v127, v53, v48);
      v69 = v515;
      v129 = (*(*(*(v48 + 32) + 8) + 16))(v515, v128, v53);
      (*(v514 + 8))(v128, v53);
      if (v129)
      {
        goto LABEL_60;
      }

LABEL_52:
      v162 = v489;
      (*(v514 + 32))(v489, v69, v53);
      if (v112(v53, v48))
      {
        v163 = v501;
        v164 = v499;
        v165 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v166 = v500;
        (*(v165 + 8))(&qword_18071E0A8, 256, v164, v165);
        v167 = v512;
        (v163[3])(v166, v53, v163);
        LOBYTE(v164) = (*(*(*(v48 + 32) + 8) + 32))(v489, v167, v53);
        v168 = v167;
        v162 = v489;
        (*(v514 + 8))(v168, v53);
        if ((v164 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

      v103 = v510;
      if ((v510)(v53, v48) <= 63)
      {
        goto LABEL_109;
      }

      v516 = -1;
      v169 = v112(v53, v48);
      v170 = v103(v53, v48);
      if (v169)
      {
        if (v170 <= 64)
        {
          v173 = v501;
          v174 = v499;
          v175 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v103 = v500;
          (*(v175 + 8))(&qword_18071E0A8, 256, v174, v175);
          v176 = v512;
          (v173[3])(v103, v53, v173);
          v177 = v489;
          LOBYTE(v174) = (*(*(*(v48 + 32) + 8) + 40))(v489, v176, v53);
          (*(v514 + 8))(v176, v53);
          if (v174)
          {
            (*(v48 + 120))(v53, v48);
          }

          v162 = v177;
          goto LABEL_109;
        }
      }

      else if (v170 <= 64)
      {
        v162 = v489;
        (*(v48 + 120))(v53, v48);
LABEL_109:
        v48 = (*(v48 + 120))(v53, v48);
        (*(v514 + 8))(v162, v53);
        v249 = (v48 + 127);
        v240 = v48 < -127;
        if (v48 < 0xFFFFFFFFFFFFFF81)
        {
LABEL_115:
          v500 = v249;
          v251 = v503;
          v252 = v505;
          v253 = v507;
          v254 = *(v507 + 17);
          v509 = ((v507 + 136) & 0xFFFFFFFFFFFFLL | 0x1E66000000000000);
          v510 = v254;
          v255 = v513;
          v256 = (v254)(v513, v507);
          v257 = (v253 + 120);
          v514 = *(v253 + 15);
          (v514)(v255, v253);
          v258 = v252;
          v259 = *(v251 + 144);
          v178 = v497;
          v491 = (v251 + 144);
          v490 = v259;
          v260 = (v259)(v497, v251);
          v261 = (v494 + 8);
          v515 = *(v494 + 8);
          (v515)(v258, v178);
          v512 = 23 - v256 - v260;
          LOBYTE(v256) = (*(v504 + 49))(v255);
          v262 = v506;
          v263 = v502;
          v264 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v265 = *(v264 + 8);
          v508 = v261;
          v499 = (v262 + 3);
          v501 = v257;
          if (v256)
          {
            v266 = v495;
            v265(&qword_1806729C0, 512, v263, v264);
            v493 = v262[3];
            (v493)(v266, v178, v262);
            v267 = v507;
            v268 = (v510)(v255, v507);
            v269 = v492;
            (v514)(v255, v267);
            v270 = (v490)(v178, v251);
            v271 = v269;
            v272 = v515;
            v273 = (v515)(v271, v178);
            v516 = v270 + v268;
            v274 = *(v251 + 256);
            v277 = lazy protocol witness table accessor for type Int and conformance Int(v273, v275, v276);
            v278 = v486;
            v279 = v505;
            v274(v505, &v516, &type metadata for Int, v277, v178, v251);
            (v272)(v279, v178);
            v114 = v251;
            v53 = v279;
            v280 = v267;
          }

          else
          {
            v281 = v495;
            v265(&qword_18071E0A8, 256, v263, v264);
            v278 = v486;
            v493 = v262[3];
            (v493)(v281, v178, v262);
            v114 = v251;
            v53 = v505;
            v280 = v507;
            v272 = v515;
          }

          v282 = v487;
          v283 = v512;
          if ((v512 & 0x8000000000000000) == 0)
          {
            (v514)(v513, v280);
            (v114[28])(v278, v53, v178, v114);
            (v272)(v53, v178);
            (v272)(v278, v178);
            v501 = v114[8];
            if ((v501)(v178, v114))
            {
              v284 = v506;
              v285 = v502;
              v286 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v287 = v495;
              (*(v286 + 8))(&qword_18071E0A8, 256, v285, v286);
              v288 = v287;
              v282 = v487;
              (v493)(v288, v178, v284);
              LOBYTE(v284) = (*(*(v114[4] + 1) + 32))(v282, v53, v178);
              (v272)(v53, v178);
              if ((v284 & 1) == 0)
              {
                goto LABEL_235;
              }
            }

            v289 = v114[16];
            if ((v289)(v178, v114) <= 31)
            {
              goto LABEL_143;
            }

            LODWORD(v516) = -1;
            v290 = (v501)(v178, v114);
            v291 = (v289)(v178, v114);
            if (v290)
            {
              v294 = v515;
              if (v291 > 32)
              {
                v295 = v114[12];
                v296 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v291, v292, v293);
                (v295)(&v516, &type metadata for UInt32, v296, v178, v114);
                v297 = (*(*(v114[4] + 1) + 16))(v53, v282, v178);
                (v294)(v53, v178);
                if (v297)
                {
                  goto LABEL_235;
                }

                goto LABEL_143;
              }

              v332 = v506;
              v333 = v502;
              v334 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v335 = v495;
              (*(v334 + 8))(&qword_18071E0A8, 256, v333, v334);
              v336 = v335;
              v282 = v487;
              (v493)(v336, v178, v332);
              LOBYTE(v332) = (*(*(v114[4] + 1) + 40))(v282, v53, v178);
              (v294)(v53, v178);
              if ((v332 & 1) == 0)
              {
LABEL_143:
                v337 = (v114[15])(v178, v114);
                (v515)(v282, v178);
                if (v512 < 0x20)
                {
                  v312 = (v337 << v512);
                }

                else
                {
                  v312 = 0;
                }

LABEL_146:
                v338 = 23;
                v339 = v513;
                v340 = v510;
                v341 = v507;
                v342 = v500;
                goto LABEL_205;
              }
            }

            else if (v291 > 32)
            {
              v324 = v114[12];
              v325 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v291, v292, v293);
              (v324)(&v516, &type metadata for UInt32, v325, v178, v114);
              v326 = (*(*(v114[4] + 1) + 16))(v53, v282, v178);
              (v515)(v53, v178);
              if (v326)
              {
                goto LABEL_235;
              }

              goto LABEL_143;
            }

            (v114[15])(v178, v114);
            goto LABEL_143;
          }

          v179 = v492;
          (v514)(v513, v280);
          (v114[28])(v278, v179, v178, v114);
          v250 = v508;
          (v272)(v179, v178);
          v298 = (v272)(v278, v178);
          if (!__OFSUB__(0, v283))
          {
            v516 = -v283;
            v301 = v114[30];
            v302 = lazy protocol witness table accessor for type Int and conformance Int(v298, v299, v300);
            v303 = v483;
            (v301)(v53, &v516, &type metadata for Int, v302, v178, v114);
            (v272)(v53, v178);
            v304 = v114[8];
            if ((v304)(v178, v114))
            {
              v305 = v506;
              v306 = v502;
              v307 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v308 = v495;
              (*(v307 + 8))(&qword_18071E0A8, 256, v306, v307);
              v309 = v505;
              (v493)(v308, v178, v305);
              LOBYTE(v305) = (*(*(v114[4] + 1) + 32))(v483, v309, v178);
              v310 = v309;
              v303 = v483;
              (v272)(v310, v178);
              if ((v305 & 1) == 0)
              {
                goto LABEL_235;
              }
            }

            v311 = v114[16];
            if ((v311)(v178, v114) > 31)
            {
              LODWORD(v516) = -1;
              v313 = (v304)(v178, v114);
              v314 = (v311)(v178, v114);
              if (v313)
              {
                v317 = v515;
                if (v314 <= 32)
                {
                  v343 = v506;
                  v344 = v502;
                  v345 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v346 = v495;
                  (*(v345 + 8))(&qword_18071E0A8, 256, v344, v345);
                  v347 = v505;
                  (v493)(v346, v178, v343);
                  v348 = v483;
                  LOBYTE(v343) = (*(*(v114[4] + 1) + 40))(v483, v347, v178);
                  (v317)(v347, v178);
                  if (v343)
                  {
                    (v114[15])(v178, v114);
                  }

                  v303 = v348;
                }

                else
                {
                  v318 = v114[12];
                  v319 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v314, v315, v316);
                  v320 = v505;
                  (v318)(&v516, &type metadata for UInt32, v319, v178, v114);
                  v321 = v483;
                  v322 = (*(*(v114[4] + 1) + 16))(v320, v483, v178);
                  v323 = v320;
                  v303 = v321;
                  (v317)(v323, v178);
                  if (v322)
                  {
                    goto LABEL_235;
                  }
                }
              }

              else if (v314 <= 32)
              {
                (v114[15])(v178, v114);
              }

              else
              {
                v327 = v114[12];
                v328 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v314, v315, v316);
                v329 = v505;
                (v327)(&v516, &type metadata for UInt32, v328, v178, v114);
                v330 = (*(*(v114[4] + 1) + 16))(v329, v483, v178);
                v331 = v329;
                v303 = v483;
                (v515)(v331, v178);
                if (v330)
                {
                  goto LABEL_235;
                }
              }
            }

            v312 = (v114[15])(v178, v114);
            (v515)(v303, v178);
            goto LABEL_146;
          }

          goto LABEL_245;
        }

        __break(1u);
LABEL_111:
        v179 = v491;
        if (!v240)
        {
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v192 = *(v48 + 96);
      v193 = lazy protocol witness table accessor for type UInt and conformance UInt(v170, v171, v172);
      v103 = v512;
      v192(&v516, &type metadata for UInt, v193, v53, v48);
      v162 = v489;
      v194 = (*(*(*(v48 + 32) + 8) + 16))(v103, v489, v53);
      (*(v514 + 8))(v103, v53);
      if (v194)
      {
        goto LABEL_235;
      }

      goto LABEL_109;
    }

    goto LABEL_51;
  }

  v140 = v112(v53, v48);
  v141 = (v510)(v53, v48);
  if ((v140 & 1) == 0)
  {
    if (v141 >= 64)
    {
      goto LABEL_52;
    }

LABEL_51:
    if (((*(v48 + 120))(v53, v48) & 0x8000000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

  if (v141 > 64)
  {
    v516 = 0;
    v144 = *(v48 + 96);
    v145 = lazy protocol witness table accessor for type Int and conformance Int(v141, v142, v143);
    v146 = v512;
    v144(&v516, &type metadata for Int, v145, v53, v48);
    v69 = v515;
    v147 = (*(*(*(v48 + 32) + 8) + 16))(v515, v146, v53);
    (*(v514 + 8))(v146, v53);
    if (v147)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v157 = v501;
  v158 = v499;
  v159 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v160 = v500;
  (*(v159 + 8))(&qword_18071E0A8, 256, v158, v159);
  v161 = v512;
  (v157[3])(v160, v53, v157);
  v69 = v515;
  LOBYTE(v158) = (*(*(*(v48 + 32) + 8) + 16))(v515, v161, v53);
  (*(v514 + 8))(v161, v53);
  if ((v158 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_60:
  v178 = v481;
  (*(*(AssociatedConformanceWitness + 16) + 16))(v69, v53);
  v179 = v112;
  v180 = *(v514 + 8);
  v514 += 8;
  v180(v69, v53);
  if ((v179)(v53, v48))
  {
    v181 = v501;
    v182 = v499;
    v183 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v184 = v500;
    (*(v183 + 8))(&qword_18071E0A8, 256, v182, v183);
    v179 = v512;
    (v181[3])(v184, v53, v181);
    LOBYTE(v182) = (*(*(*(v48 + 32) + 8) + 32))(v178, v179, v53);
    v180(v179, v53);
    if ((v182 & 1) == 0)
    {
      goto LABEL_235;
    }
  }

  v185 = v510;
  if ((v510)(v53, v48) > 63)
  {
    v516 = -1;
    v179 = (v509)(v53, v48);
    v186 = (v185)(v53, v48);
    if (v179)
    {
      if (v186 <= 64)
      {
        v114 = v501;
        v189 = v499;
        v190 = swift_getAssociatedConformanceWitness(v501, v53, v499, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v191 = v500;
        (*(v190 + 8))(&qword_18071E0A8, 256, v189, v190);
        v179 = v512;
        (v114[3])(v191, v53, v114);
        v178 = v481;
        LOBYTE(v189) = (*(*(*(v48 + 32) + 8) + 40))(v481, v179, v53);
        v180(v179, v53);
        if (v189)
        {
          (*(v48 + 120))(v53, v48);
        }

        goto LABEL_114;
      }
    }

    else if (v186 <= 64)
    {
      v178 = v481;
      (*(v48 + 120))(v53, v48);
      goto LABEL_114;
    }

    v179 = v48 + 96;
    v114 = *(v48 + 96);
    v246 = lazy protocol witness table accessor for type UInt and conformance UInt(v186, v187, v188);
    v247 = v512;
    (v114)(&v516, &type metadata for UInt, v246, v53, v48);
    v178 = v481;
    v248 = (*(*(*(v48 + 32) + 8) + 16))(v247, v481, v53);
    v180(v247, v53);
    if (v248)
    {
      goto LABEL_235;
    }
  }

LABEL_114:
  v250 = (*(v48 + 120))(v53, v48);
  v180(v178, v53);
  v249 = (127 - v250);
  if (v250 <= 0x7F)
  {
    goto LABEL_115;
  }

  __break(1u);
LABEL_245:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_247:
    if (v178 == -32)
    {
LABEL_167:
      LODWORD(v501) = 0;
      if ((v250 & 0x8000000000000000) == 0)
      {
        break;
      }

      goto LABEL_168;
    }

    LODWORD(v501) = 0;
LABEL_176:
    if ((v250 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_168:
    v372 = (v514)(v513, v507);
    if (!__OFSUB__(0, v250))
    {
      v516 = -v250;
      v375 = v114[30];
      v376 = lazy protocol witness table accessor for type Int and conformance Int(v372, v373, v374);
      v377 = v479;
      v178 = v497;
      (v375)(v53, &v516, &type metadata for Int, v376, v497, v114);
      (v515)(v53, v178);
      v378 = v114[8];
      if ((v378)(v178, v114))
      {
        v379 = v506;
        v380 = v502;
        v381 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v382 = v495;
        (*(v381 + 8))(&qword_18071E0A8, 256, v380, v381);
        (v379[3])(v382, v178, v379);
        LOBYTE(v379) = (*(*(v114[4] + 1) + 32))(v377, v53, v178);
        (v515)(v53, v178);
        if ((v379 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

      v383 = v114[16];
      if ((v383)(v178, v114) <= 31)
      {
        goto LABEL_203;
      }

      LODWORD(v516) = -1;
      v384 = (v378)(v178, v114);
      v385 = (v383)(v178, v114);
      if (v384)
      {
        v388 = v505;
        if (v385 > 32)
        {
          v114 = v503;
          v389 = *(v503 + 96);
          v390 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v385, v386, v387);
          goto LABEL_192;
        }

        v412 = v506;
        v178 = v497;
        v413 = v502;
        v414 = swift_getAssociatedConformanceWitness(v506, v497, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v415 = v495;
        (*(v414 + 8))(&qword_18071E0A8, 256, v413, v414);
        (v412[3])(v415, v178, v412);
        v114 = v503;
        LOBYTE(v412) = (*(*(*(v503 + 32) + 8) + 40))(v377, v388, v178);
        (v515)(v388, v178);
        if (v412)
        {
          (v114[15])(v178, v114);
        }
      }

      else
      {
        if (v385 > 32)
        {
          v114 = v503;
          v389 = *(v503 + 96);
          v390 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v385, v386, v387);
          v388 = v505;
LABEL_192:
          v178 = v497;
          v389(&v516, &type metadata for UInt32, v390, v497, v114);
          v405 = (*(*(v114[4] + 1) + 16))(v388, v377, v178);
          (v515)(v388, v178);
          if (v405)
          {
            goto LABEL_235;
          }

          goto LABEL_203;
        }

        v114 = v503;
        v178 = v497;
        (*(v503 + 120))(v497, v503);
      }

LABEL_203:
      v411 = (v114[15])(v178, v114);
      (v515)(v377, v178);
      goto LABEL_204;
    }
  }

  (v514)(v513, v507);
  v391 = v114[8];
  v178 = v497;
  if ((v391)(v497, v114))
  {
    v392 = v506;
    v393 = v502;
    v394 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v395 = v495;
    (*(v394 + 8))(&qword_18071E0A8, 256, v393, v394);
    (v392[3])(v395, v178, v392);
    LOBYTE(v392) = (*(*(v114[4] + 1) + 32))(v179, v53, v178);
    (v515)(v53, v178);
    if ((v392 & 1) == 0)
    {
      goto LABEL_235;
    }
  }

  v396 = v114[16];
  if ((v396)(v178, v114) <= 31)
  {
    goto LABEL_197;
  }

  LODWORD(v516) = -1;
  v397 = (v391)(v178, v114);
  v398 = (v396)(v178, v114);
  if (v397)
  {
    v401 = v505;
    if (v398 > 32)
    {
      v114 = v503;
      v402 = *(v503 + 96);
      v403 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v398, v399, v400);
      goto LABEL_185;
    }

    v406 = v506;
    v178 = v497;
    v407 = v502;
    v408 = swift_getAssociatedConformanceWitness(v506, v497, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v409 = v495;
    (*(v408 + 8))(&qword_18071E0A8, 256, v407, v408);
    (v406[3])(v409, v178, v406);
    v114 = v503;
    LOBYTE(v406) = (*(*(*(v503 + 32) + 8) + 40))(v179, v401, v178);
    (v515)(v401, v178);
    if (v406)
    {
      (v114[15])(v178, v114);
    }

    goto LABEL_197;
  }

  if (v398 <= 32)
  {
    v114 = v503;
    v178 = v497;
    (*(v503 + 120))(v497, v503);
    goto LABEL_197;
  }

  v114 = v503;
  v402 = *(v503 + 96);
  v403 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v398, v399, v400);
  v401 = v505;
LABEL_185:
  v178 = v497;
  v402(&v516, &type metadata for UInt32, v403, v497, v114);
  v404 = (*(*(v114[4] + 1) + 16))(v401, v179, v178);
  (v515)(v401, v178);
  if (v404)
  {
LABEL_235:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_197:
  v410 = (v114[15])(v178, v114);
  (v515)(v179, v178);
  if (v512 < 0x20)
  {
    v411 = v410 << v512;
  }

  else
  {
    v411 = 0;
  }

LABEL_204:
  v339 = v513;
  v340 = v510;
  v342 = 0;
  v312 = v501 | v411;
  v341 = v507;
  v338 = v508;
LABEL_205:
  v416 = *(v504 + 21);
  v508 = v504 + 168;
  v501 = v416;
  if ((v416)(v339))
  {
    v417 = 0x80000000;
  }

  else
  {
    v417 = 0;
  }

  v493 = v312;
  v418 = v312 & 0x7FFFFF | (v342 << 23) | v417;
  if (v338 >= (v340)(v339, v341))
  {
    *v496 = v418;
    return 1;
  }

  LODWORD(v491) = v418;
  v419 = v506;
  v420 = v502;
  v421 = swift_getAssociatedConformanceWitness(v506, v178, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v422 = v495;
  v500 = *(v421 + 8);
  (v500)(&qword_1806729C0, 512, v420, v421);
  v423 = v419[3];
  v424 = v505;
  v510 = v419 + 3;
  v499 = v423;
  v425 = (v423)(v422, v178, v419);
  if (__OFSUB__(0, v512))
  {
    __break(1u);
    goto LABEL_237;
  }

  v516 = -v512;
  v509 = (v421 + 8);
  v428 = v503;
  v512 = v421;
  v429 = v422;
  v430 = *(v503 + 256);
  v431 = lazy protocol witness table accessor for type Int and conformance Int(v425, v426, v427);
  v430(v424, &v516, &type metadata for Int, v431, v178, v428);
  v432 = v494 + 8;
  (v515)(v424, v178);
  (v514)(v513, v341);
  v433 = v500;
  (v500)(&qword_1806729C0, 512, v420, v512);
  v434 = v485;
  v435 = v499;
  (v499)(v429, v178, v506);
  v436 = v492;
  (*(*(v484 + 8) + 40))(v498, v434, v178);
  (v515)(v434, v178);
  v437 = v488;
  (*(v428 + 192))(v424, v436, v178, v428);
  (v515)(v436, v178);
  (v515)(v424, v178);
  v433(qword_18071E0B8, 768);
  v438 = v429;
  (v435)(v429, v178, v506);
  v439 = *(v428 + 152);
  v439(v498, v436, v178, v428);
  (v515)(v436, v178);
  v440 = *(v428 + 32);
  v441 = v515;
  v442 = *(v440 + 8);
  v443 = (*(v442 + 16))(v437, v424, v178, v442);
  v514 = v432;
  (v441)(v424, v178);
  if (v443)
  {
    (v441)(v437, v178);
    (v441)(v498, v178);
    result = 0;
    *v496 = v491;
    return result;
  }

  v4 = *&v491;
  if ((v501)(v513, v504))
  {
    v444 = 0.0 - v4;
    v445 = v506;
    v447 = v499;
    v446 = v500;
    if ((0.0 - v4) != INFINITY)
    {
      LODWORD(v444) += (SLODWORD(v444) >> 31) | 1;
    }

    v5 = -v444;
  }

  else
  {
    v5 = v4 + 0.0;
    v445 = v506;
    v447 = v499;
    v446 = v500;
    if (v4 != INFINITY)
    {
      LODWORD(v5) += (SLODWORD(v5) >> 31) | 1;
    }
  }

  v446(qword_18071E0B8, 768);
  v448 = v492;
  v449 = v497;
  (v447)(v438, v497, v445);
  v450 = v505;
  v451 = v498;
  v439(v498, v448, v449, v503);
  v452 = v448;
  v453 = v515;
  (v515)(v452, v449);
  (v453)(v451, v449);
  v454 = v488;
  v455 = (*(v442 + 40))(v488, v450, v449, v442);
  (v453)(v450, v449);
  (v453)(v454, v449);
  result = 0;
  if (v455)
  {
    *v496 = v5;
    return result;
  }

LABEL_240:
  if (__clz(__rbit32(LODWORD(v5) & 0x7FFFFF)) >= __clz(__rbit32(v493)))
  {
    v222 = v5;
  }

  else
  {
    v222 = v4;
  }

LABEL_243:
  *v496 = v222;
  return result;
}

uint64_t specialized static BinaryFloatingPoint._convert<A>(from:)(short float *a1, uint64_t a2, const char *a3, swift *a4)
{
  v498 = a1;
  v512 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v511 = (&v480 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v484 = &v480 - v11;
  swift_getAssociatedTypeWitness(255, v13, v12, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v15 = v14;
  v505 = *(swift_getAssociatedConformanceWitness(a4, a3, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v486 = *(v505 + 24);
  v508 = *(v486 + 16);
  swift_getAssociatedTypeWitness(0, v508, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v504 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v497 = &v480 - v17;
  v499 = swift_checkMetadataState(0, v15);
  v496 = *(v499 - 1);
  v18 = MEMORY[0x1EEE9AC00](v499);
  v20 = &v480 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v480 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v510 = &v480 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v489 = &v480 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v485 = &v480 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v488 = (&v480 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v487 = &v480 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v494 = &v480 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v490 = &v480 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v500 = &v480 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v493 = &v480 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v481 = &v480 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v507 = &v480 - v44;
  v509 = a4;
  v45 = *(a4 + 2);
  swift_getAssociatedTypeWitness(255, v45, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v47 = v46;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v45, a3, v46, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v48 = *(AssociatedConformanceWitness + 8);
  v495 = *(v48 + 24);
  v503 = *(v495 + 16);
  swift_getAssociatedTypeWitness(0, v503, v47, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v501 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v502 = &v480 - v50;
  v51 = v47;
  v52 = v45;
  v53 = swift_checkMetadataState(0, v51);
  v516 = *(v53 - 1);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v491 = &v480 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v483 = &v480 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v492 = &v480 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v480 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = &v480 - v64;
  v66 = MEMORY[0x1EEE9AC00](v63);
  v514 = &v480 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v517 = &v480 - v68;
  if ((v52[48])(a3, v52))
  {
    if (((v52[21])(a3, v52) & 1) == 0)
    {
      v458 = 0;
LABEL_240:
      *v498 = v458;
      return 1;
    }

    v457 = 0x8000;
    goto LABEL_239;
  }

  if ((v52[47])(a3, v52))
  {
    v484 = v62;
    v69 = v517;
    v70 = v52;
    (v52[22])(a3, v52);
    v518 = -14;
    v71 = *(v48 + 64);
    v72 = v71(v53, v48);
    v515 = a3;
    v513 = a2;
    v510 = (v48 + 64);
    v511 = v71;
    if (v72)
    {
      v512 = *(v48 + 128);
      v73 = (v512)(v53, v48);
      if (v73 < 64)
      {
        v76 = v70;
        if ((*(v48 + 120))(v53, v48) > -15)
        {
          goto LABEL_21;
        }

LABEL_17:
        v506 = v76;
        v94 = v503;
        v95 = v501;
        v96 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v97 = *(v96 + 8);
        v98 = v502;
        v491 = v96;
        v489 = (v96 + 8);
        v488 = v97;
        (v97)(&qword_1806729C0, 512, v95);
        v99 = v94 + 3;
        v100 = v94[3];
        v101 = v514;
        v102 = v94;
        v103 = v517;
        v485 = v99;
        v483 = v100;
        (v100)(v98, v53, v102);
        v104 = *(v495 + 8);
        v480 = *(v104 + 24);
        v480(v103, v101, v53, v104);
        v495 = *(v516 + 8);
        (v495)(v101, v53);
        v105 = v511;
        v106 = v511(v53, v48);
        AssociatedConformanceWitness = v104;
        if (v106)
        {
          v107 = (v512)(v53, v48);
          if (v107 < 64)
          {
            v110 = (*(v48 + 120))(v53, v48);
            v111 = v495;
            (v495)(v65, v53);
            if (v110 > -25)
            {
              goto LABEL_75;
            }

LABEL_72:
            v111(v103, v53);
            if (((*(v506 + 21))(v515) & 1) == 0)
            {
              result = 0;
              LOWORD(v195) = 0;
              goto LABEL_84;
            }

            result = 0;
            v131 = 0x8000;
LABEL_74:
            v195 = *&v131;
LABEL_84:
            *v498 = v195;
            return result;
          }

          v518 = -24;
          v148 = *(v48 + 96);
          v149 = lazy protocol witness table accessor for type Int and conformance Int(v107, v108, v109);
          v150 = v514;
          v148(&v518, &type metadata for Int, v149, v53, v48);
          v103 = v517;
          v151 = (*(*(*(v48 + 32) + 8) + 16))(v65, v150, v53);
          v111 = v495;
          (v495)(v150, v53);
          v111(v65, v53);
          if (v151)
          {
            goto LABEL_72;
          }

LABEL_75:
          v196 = v502;
          v488(&qword_1806729C0, 512);
          v197 = v514;
          v198 = v196;
          v199 = v495;
          (v483)(v198, v53, v503);
          v200 = v484;
          v480(v103, v197, v53, AssociatedConformanceWitness);
          v199(v197, v53);
          v201 = v511;
          if (v511(v53, v48))
          {
            v202 = (v512)(v53, v48);
            v205 = v506;
            if (v202 >= 64)
            {
              v518 = -24;
              v206 = *(v48 + 96);
              v207 = lazy protocol witness table accessor for type Int and conformance Int(v202, v203, v204);
              v208 = v514;
              v206(&v518, &type metadata for Int, v207, v53, v48);
              v199 = v495;
              v209 = (*(*(*(v48 + 16) + 8) + 8))(v200, v208, v53);
              v210 = v208;
              v103 = v517;
              v211 = v53;
              goto LABEL_81;
            }

            goto LABEL_86;
          }

          v212 = v201(v53, v48);
          v213 = (v512)(v53, v48);
          v205 = v506;
          if (v212)
          {
            if (v213 > 64)
            {
              v518 = -24;
              v216 = *(v48 + 96);
              v217 = lazy protocol witness table accessor for type Int and conformance Int(v213, v214, v215);
              v218 = v514;
              v216(&v518, &type metadata for Int, v217, v53, v48);
              v209 = (*(*(*(v48 + 16) + 8) + 8))(v200, v218, v53);
              v210 = v218;
              v103 = v517;
              v211 = v53;
              v199 = v495;
LABEL_81:
              v199(v210, v211);
              v199(v200, v53);
              v179 = v493;
              if (v209)
              {
                goto LABEL_87;
              }

              goto LABEL_96;
            }

            v224 = v502;
            v488(&qword_18071E0A8, 256);
            v225 = v514;
            (v483)(v224, v53, v503);
            v226 = (*(*(*(v48 + 32) + 8) + 32))(v200, v225, v53);
            v199 = v495;
            (v495)(v225, v53);
            if (v226)
            {
LABEL_86:
              v219 = (*(v48 + 120))(v53, v48);
              v199(v200, v53);
              v179 = v493;
              if (v219 == -24)
              {
LABEL_87:
                v199(v103, v53);
                v220 = v515;
                v221 = (*(v509 + 17))(v515);
                v222 = (*(v205 + 21))(v220, v205);
                result = 0;
                LOWORD(v195) = 0x8000;
                if ((v222 & 1) == 0)
                {
                  v195 = COERCE_SHORT_FLOAT(0);
                }

                LOWORD(v223) = 1;
                if (v222)
                {
                  v223 = COERCE_SHORT_FLOAT(-32767);
                }

                if (v221)
                {
                  v195 = v223;
                }

                goto LABEL_84;
              }

LABEL_96:
              v76 = v492;
              (*(v516 + 16))(v492, v103, v53);
              if ((v511(v53, v48) & 1) == 0 || (v512)(v53, v48) < 65)
              {
                goto LABEL_154;
              }

              v518 = 0x8000000000000000;
              v227 = v511;
              if (v511(v53, v48))
              {
                v228 = (v512)(v53, v48);
                if (v228 >= 64)
                {
                  v231 = *(v48 + 96);
                  v232 = lazy protocol witness table accessor for type Int and conformance Int(v228, v229, v230);
                  v233 = v514;
                  v231(&v518, &type metadata for Int, v232, v53, v48);
                  v179 = v493;
                  v234 = (*(*(*(v48 + 32) + 8) + 16))(v76, v233, v53);
                  v235 = v233;
                  v103 = v517;
                  (v495)(v235, v53);
                  if (v234)
                  {
                    goto LABEL_236;
                  }

                  goto LABEL_154;
                }
              }

              else
              {
                v236 = v227(v53, v48);
                v237 = (v512)(v53, v48);
                v240 = v237 < 64;
                if ((v236 & 1) == 0)
                {
                  goto LABEL_112;
                }

                if (v237 > 64)
                {
                  v241 = *(v48 + 96);
                  v242 = lazy protocol witness table accessor for type Int and conformance Int(v237, v238, v239);
                  v243 = v514;
                  v241(&v518, &type metadata for Int, v242, v53, v48);
                  v244 = (*(*(*(v48 + 32) + 8) + 16))(v76, v243, v53);
                  v245 = v243;
                  v103 = v517;
                  (v495)(v245, v53);
                  v179 = v493;
                  if (v244)
                  {
                    goto LABEL_236;
                  }

LABEL_154:
                  v352 = v76;
                  v353 = v512;
                  if (v512)(v53, v48) <= 64 && ((v353)(v53, v48) != 64 || (v511(v53, v48)))
                  {
                    goto LABEL_164;
                  }

                  v518 = 0x7FFFFFFFFFFFFFFFLL;
                  v354 = v511(v53, v48);
                  v355 = (v353)(v53, v48);
                  if (v354)
                  {
                    if (v355 > 64)
                    {
                      goto LABEL_157;
                    }
                  }

                  else if (v355 >= 64)
                  {
LABEL_157:
                    v358 = *(v48 + 96);
                    v359 = lazy protocol witness table accessor for type Int and conformance Int(v355, v356, v357);
                    v360 = v514;
                    v358(&v518, &type metadata for Int, v359, v53, v48);
                    v352 = v492;
                    v361 = (*(*(*(v48 + 32) + 8) + 16))(v360, v492, v53);
                    v362 = v360;
                    v103 = v517;
                    (v495)(v362, v53);
                    v179 = v493;
                    if (v361)
                    {
                      goto LABEL_236;
                    }

LABEL_164:
                    v363 = (*(v48 + 120))(v53, v48);
                    v364 = v495;
                    result = (v495)(v352, v53);
                    v178 = (v363 + 24);
                    if (__OFADD__(v363, 24))
                    {
                      __break(1u);
LABEL_242:
                      if (__clz(__rbit32(LOWORD(v5) & 0x3FF | 0x10000)) >= __clz(__rbit32(v495 | 0x10000)))
                      {
                        v195 = v5;
                      }

                      else
                      {
                        v195 = v4;
                      }

                      goto LABEL_84;
                    }

                    v364(v103, v53);
                    v365 = v509;
                    v366 = *(v509 + 17);
                    v367 = v515;
                    v511 = (v509 + 136);
                    v512 = v366;
                    v368 = (v366)(v515, v509);
                    v53 = v507;
                    v516 = *(v365 + 15);
                    (v516)(v367, v365);
                    v369 = v499;
                    v370 = (*(v505 + 144))(v499);
                    v517 = *(v496 + 8);
                    (v517)(v53, v369);
                    v250 = &v178[-v368 - v370];
                    v371 = (*(v506 + 46))(v367);
                    v514 = v250;
                    v510 = v178;
                    if (v371)
                    {
                      v114 = v505;
                      if (v178 < -16 || v178 > 16)
                      {
                        goto LABEL_168;
                      }

                      if ((v178 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_248;
                      }

                      if (v178 == 16)
                      {
                        goto LABEL_168;
                      }

                      LODWORD(v503) = 1 << v178;
                    }

                    else
                    {
                      LODWORD(v503) = 0;
                      v114 = v505;
                    }

LABEL_177:
                    if ((v250 & 0x8000000000000000) == 0)
                    {
LABEL_178:
                      (v516)(v515, v509);
                      v391 = v114[8];
                      v178 = v499;
                      if ((v391)(v499, v114) & 1) == 0 || (v392 = v508, v393 = v504, v394 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), v395 = v497, (*(v394 + 8))(&qword_18071E0A8, 256, v393, v394), (v392[3])(v395, v178, v392), LOBYTE(v392) = (*(*(v114[4] + 1) + 32))(v179, v53, v178), (v517)(v53, v178), (v392))
                      {
                        v396 = v114[16];
                        if ((v396)(v178, v114) > 15)
                        {
                          LOWORD(v518) = -1;
                          v397 = (v391)(v178, v114);
                          v398 = (v396)(v178, v114);
                          if (v397)
                          {
                            v401 = v507;
                            if (v398 > 16)
                            {
                              v114 = v505;
                              v402 = *(v505 + 96);
                              v403 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v398, v399, v400);
                              goto LABEL_186;
                            }

                            v406 = v508;
                            v178 = v499;
                            v407 = v504;
                            v408 = swift_getAssociatedConformanceWitness(v508, v499, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                            v409 = v497;
                            (*(v408 + 8))(&qword_18071E0A8, 256, v407, v408);
                            (v406[3])(v409, v178, v406);
                            v114 = v505;
                            LOBYTE(v406) = (*(*(*(v505 + 32) + 8) + 40))(v179, v401, v178);
                            (v517)(v401, v178);
                            if (v406)
                            {
                              (v114[15])(v178, v114);
                            }
                          }

                          else
                          {
                            if (v398 > 16)
                            {
                              v114 = v505;
                              v402 = *(v505 + 96);
                              v403 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v398, v399, v400);
                              v401 = v507;
LABEL_186:
                              v178 = v499;
                              v402(&v518, &type metadata for UInt16, v403, v499, v114);
                              v404 = (*(*(v114[4] + 1) + 16))(v401, v179, v178);
                              (v517)(v401, v178);
                              if (v404)
                              {
                                goto LABEL_236;
                              }

                              goto LABEL_198;
                            }

                            v114 = v505;
                            v178 = v499;
                            (*(v505 + 120))(v499, v505);
                          }
                        }

LABEL_198:
                        v410 = (v114[15])(v178, v114);
                        (v517)(v179, v178);
                        if (v514 < 0x10)
                        {
                          v411 = v410 << v514;
                        }

                        else
                        {
                          v411 = 0;
                        }

                        goto LABEL_205;
                      }

LABEL_236:
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }

                    while (1)
                    {
                      v372 = (v516)(v515, v509);
                      if (!__OFSUB__(0, v250))
                      {
                        break;
                      }

LABEL_247:
                      __break(1u);
LABEL_248:
                      if (v178 != -16)
                      {
                        LODWORD(v503) = 0;
                        goto LABEL_177;
                      }

LABEL_168:
                      LODWORD(v503) = 0;
                      if ((v250 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_178;
                      }
                    }

                    v518 = -v250;
                    v375 = v114[30];
                    v376 = lazy protocol witness table accessor for type Int and conformance Int(v372, v373, v374);
                    v377 = v481;
                    v178 = v499;
                    (v375)(v53, &v518, &type metadata for Int, v376, v499, v114);
                    (v517)(v53, v178);
                    v378 = v114[8];
                    if ((v378)(v178, v114))
                    {
                      v379 = v508;
                      v380 = v504;
                      v381 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                      v382 = v497;
                      (*(v381 + 8))(&qword_18071E0A8, 256, v380, v381);
                      (v379[3])(v382, v178, v379);
                      LOBYTE(v379) = (*(*(v114[4] + 1) + 32))(v377, v53, v178);
                      (v517)(v53, v178);
                      if ((v379 & 1) == 0)
                      {
                        goto LABEL_236;
                      }
                    }

                    v383 = v114[16];
                    if ((v383)(v178, v114) > 15)
                    {
                      LOWORD(v518) = -1;
                      v384 = (v378)(v178, v114);
                      v385 = (v383)(v178, v114);
                      if (v384)
                      {
                        v388 = v507;
                        if (v385 <= 16)
                        {
                          v412 = v508;
                          v178 = v499;
                          v413 = v504;
                          v414 = swift_getAssociatedConformanceWitness(v508, v499, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                          v415 = v497;
                          (*(v414 + 8))(&qword_18071E0A8, 256, v413, v414);
                          (v412[3])(v415, v178, v412);
                          v114 = v505;
                          LOBYTE(v412) = (*(*(*(v505 + 32) + 8) + 40))(v377, v388, v178);
                          (v517)(v388, v178);
                          if (v412)
                          {
                            (v114[15])(v178, v114);
                          }

                          goto LABEL_204;
                        }

                        v114 = v505;
                        v389 = *(v505 + 96);
                        v390 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v385, v386, v387);
                      }

                      else
                      {
                        if (v385 <= 16)
                        {
                          v114 = v505;
                          v178 = v499;
                          (*(v505 + 120))(v499, v505);
                          goto LABEL_204;
                        }

                        v114 = v505;
                        v389 = *(v505 + 96);
                        v390 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v385, v386, v387);
                        v388 = v507;
                      }

                      v178 = v499;
                      v389(&v518, &type metadata for UInt16, v390, v499, v114);
                      v405 = (*(*(v114[4] + 1) + 16))(v388, v377, v178);
                      (v517)(v388, v178);
                      if (v405)
                      {
                        goto LABEL_236;
                      }
                    }

LABEL_204:
                    v411 = (v114[15])(v178, v114);
                    (v517)(v377, v178);
LABEL_205:
                    v339 = v515;
                    v340 = v512;
                    v342 = 0;
                    v312 = v503 | v411;
                    v341 = v509;
                    v338 = v510;
                    goto LABEL_206;
                  }

                  v352 = v492;
                  (*(v48 + 120))(v53, v48);
                  v179 = v493;
                  goto LABEL_164;
                }

                v349 = v502;
                v488(&qword_18071E0A8, 256);
                v350 = v514;
                (v483)(v349, v53, v503);
                v351 = (*(*(*(v48 + 32) + 8) + 16))(v76, v350, v53);
                (v495)(v350, v53);
                v179 = v493;
                if (v351)
                {
                  goto LABEL_236;
                }
              }

LABEL_153:
              (*(v48 + 120))(v53, v48);
              goto LABEL_154;
            }
          }

          else if (v213 < 64)
          {
            goto LABEL_86;
          }

          v199(v200, v53);
          v179 = v493;
          goto LABEL_96;
        }

        v132 = v105(v53, v48);
        v133 = (v512)(v53, v48);
        if (v132)
        {
          if (v133 > 64)
          {
            v518 = -24;
            v136 = *(v48 + 96);
            v137 = lazy protocol witness table accessor for type Int and conformance Int(v133, v134, v135);
            v138 = v514;
            v136(&v518, &type metadata for Int, v137, v53, v48);
            v139 = (*(*(*(v48 + 32) + 8) + 16))(v65, v138, v53);
            v111 = v495;
            (v495)(v138, v53);
            v111(v65, v53);
            v103 = v517;
            if (v139)
            {
              goto LABEL_72;
            }

            goto LABEL_75;
          }

          v153 = v502;
          v488(&qword_18071E0A8, 256);
          v154 = v514;
          (v483)(v153, v53, v503);
          v155 = (*(*(*(v48 + 32) + 8) + 16))(v65, v154, v53);
          v156 = v154;
          v111 = v495;
          (v495)(v156, v53);
          if (v155)
          {
            v111(v65, v53);
            v103 = v517;
            goto LABEL_72;
          }

          v152 = (*(v48 + 120))(v53, v48);
          v111(v65, v53);
        }

        else
        {
          if (v133 >= 64)
          {
            (v495)(v65, v53);
            v103 = v517;
            goto LABEL_75;
          }

          v152 = (*(v48 + 120))(v53, v48);
          v111 = v495;
          (v495)(v65, v53);
        }

        v103 = v517;
        if (v152 >= -24)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      v85 = *(v48 + 96);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
      v87 = v514;
      v85(&v518, &type metadata for Int, v86, v53, v48);
      v69 = v517;
      v88 = (*(*(*(v48 + 32) + 8) + 16))(v517, v87, v53);
      (*(v516 + 8))(v87, v53);
      v76 = v70;
      if (v88)
      {
        goto LABEL_17;
      }

LABEL_21:
      v518 = 15;
      v112 = v511;
      v113 = v511(v53, v48);
      v114 = (v48 + 128);
      v115 = (v512)(v53, v48);
      if (v113)
      {
        if (v115 > 64)
        {
          goto LABEL_23;
        }
      }

      else if (v115 > 63)
      {
LABEL_23:
        v118 = *(v48 + 96);
        v119 = lazy protocol witness table accessor for type Int and conformance Int(v115, v116, v117);
        v120 = v514;
        v118(&v518, &type metadata for Int, v119, v53, v48);
        v69 = v517;
        v121 = (*(*(*(v48 + 32) + 8) + 16))(v120, v517, v53);
        (*(v516 + 8))(v120, v53);
        if ((v121 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_30:
        (*(v516 + 8))(v69, v53);
        if ((*(v76 + 21))(v515, v76))
        {
          result = 0;
          v131 = -1024;
        }

        else
        {
          result = 0;
          v131 = 31744;
        }

        goto LABEL_74;
      }

      if ((*(v48 + 120))(v53, v48) <= 15)
      {
LABEL_24:
        v122 = v112(v53, v48);
        v506 = v76;
        if (v122)
        {
          v123 = (v512)(v53, v48);
          if (v123 >= 64)
          {
            v518 = 0;
            v126 = *(v48 + 96);
            v127 = lazy protocol witness table accessor for type Int and conformance Int(v123, v124, v125);
            v128 = v514;
            v126(&v518, &type metadata for Int, v127, v53, v48);
            v69 = v517;
            v129 = (*(*(*(v48 + 32) + 8) + 16))(v517, v128, v53);
            (*(v516 + 8))(v128, v53);
            if ((v129 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_60:
            v178 = v483;
            (*(*(AssociatedConformanceWitness + 16) + 16))(v69, v53);
            v179 = v112;
            v180 = *(v516 + 8);
            v516 += 8;
            v180(v69, v53);
            if ((v179)(v53, v48))
            {
              v181 = v503;
              v182 = v501;
              v183 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v184 = v502;
              (*(v183 + 8))(&qword_18071E0A8, 256, v182, v183);
              v179 = v514;
              (v181[3])(v184, v53, v181);
              LOBYTE(v182) = (*(*(*(v48 + 32) + 8) + 32))(v178, v179, v53);
              v180(v179, v53);
              if ((v182 & 1) == 0)
              {
                goto LABEL_236;
              }
            }

            v185 = v512;
            if ((v512)(v53, v48) > 63)
            {
              v518 = -1;
              v179 = v511(v53, v48);
              v186 = (v185)(v53, v48);
              if (v179)
              {
                if (v186 <= 64)
                {
                  v114 = v503;
                  v189 = v501;
                  v190 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v191 = v502;
                  (*(v190 + 8))(&qword_18071E0A8, 256, v189, v190);
                  v179 = v514;
                  (v114[3])(v191, v53, v114);
                  v178 = v483;
                  LOBYTE(v189) = (*(*(*(v48 + 32) + 8) + 40))(v483, v179, v53);
                  v180(v179, v53);
                  if (v189)
                  {
                    (*(v48 + 120))(v53, v48);
                  }

                  goto LABEL_115;
                }
              }

              else if (v186 <= 64)
              {
                v178 = v483;
                (*(v48 + 120))(v53, v48);
                goto LABEL_115;
              }

              v179 = v48 + 96;
              v114 = *(v48 + 96);
              v246 = lazy protocol witness table accessor for type UInt and conformance UInt(v186, v187, v188);
              v247 = v514;
              (v114)(&v518, &type metadata for UInt, v246, v53, v48);
              v178 = v483;
              v248 = (*(*(*(v48 + 32) + 8) + 16))(v247, v483, v53);
              v180(v247, v53);
              if (v248)
              {
                goto LABEL_236;
              }
            }

LABEL_115:
            v250 = (*(v48 + 120))(v53, v48);
            v180(v178, v53);
            v249 = (15 - v250);
            if (v250 > 0xF)
            {
              __break(1u);
              goto LABEL_246;
            }

LABEL_116:
            v502 = v249;
            v251 = v505;
            v252 = v507;
            v253 = v509;
            v254 = *(v509 + 17);
            v511 = ((v509 + 136) & 0xFFFFFFFFFFFFLL | 0x1E66000000000000);
            v512 = v254;
            v255 = v515;
            v256 = (v254)(v515, v509);
            v257 = (v253 + 120);
            v516 = *(v253 + 15);
            (v516)(v255, v253);
            v258 = v252;
            v259 = *(v251 + 144);
            v178 = v499;
            v493 = (v251 + 144);
            v492 = v259;
            v260 = (v259)(v499, v251);
            v261 = (v496 + 8);
            v517 = *(v496 + 8);
            (v517)(v258, v178);
            v514 = 10 - v256 - v260;
            LOBYTE(v256) = (*(v506 + 49))(v255);
            v262 = v508;
            v263 = v504;
            v264 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v265 = *(v264 + 8);
            v510 = v261;
            v501 = (v262 + 3);
            v503 = v257;
            if (v256)
            {
              v266 = v497;
              v265(&qword_1806729C0, 512, v263, v264);
              v495 = v262[3];
              (v495)(v266, v178, v262);
              v267 = v509;
              v268 = (v512)(v255, v509);
              v269 = v494;
              (v516)(v255, v267);
              v270 = (v492)(v178, v251);
              v271 = v269;
              v272 = v517;
              v273 = (v517)(v271, v178);
              v518 = v270 + v268;
              v274 = *(v251 + 256);
              v277 = lazy protocol witness table accessor for type Int and conformance Int(v273, v275, v276);
              v278 = v488;
              v279 = v507;
              v274(v507, &v518, &type metadata for Int, v277, v178, v251);
              (v272)(v279, v178);
              v114 = v251;
              v53 = v279;
              v280 = v267;
            }

            else
            {
              v281 = v497;
              v265(&qword_18071E0A8, 256, v263, v264);
              v278 = v488;
              v495 = v262[3];
              (v495)(v281, v178, v262);
              v114 = v251;
              v53 = v507;
              v280 = v509;
              v272 = v517;
            }

            v282 = v489;
            v283 = v514;
            if ((v514 & 0x8000000000000000) == 0)
            {
              (v516)(v515, v280);
              (v114[28])(v278, v53, v178, v114);
              (v272)(v53, v178);
              (v272)(v278, v178);
              v503 = v114[8];
              if ((v503)(v178, v114))
              {
                v284 = v508;
                v285 = v504;
                v286 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v287 = v497;
                (*(v286 + 8))(&qword_18071E0A8, 256, v285, v286);
                v288 = v287;
                v282 = v489;
                (v495)(v288, v178, v284);
                LOBYTE(v284) = (*(*(v114[4] + 1) + 32))(v282, v53, v178);
                (v272)(v53, v178);
                if ((v284 & 1) == 0)
                {
                  goto LABEL_236;
                }
              }

              v289 = v114[16];
              if ((v289)(v178, v114) <= 15)
              {
                goto LABEL_144;
              }

              LOWORD(v518) = -1;
              v290 = (v503)(v178, v114);
              v291 = (v289)(v178, v114);
              if (v290)
              {
                v294 = v517;
                if (v291 > 16)
                {
                  v295 = v114[12];
                  v296 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v291, v292, v293);
                  (v295)(&v518, &type metadata for UInt16, v296, v178, v114);
                  v297 = (*(*(v114[4] + 1) + 16))(v53, v282, v178);
                  (v294)(v53, v178);
                  if (v297)
                  {
                    goto LABEL_236;
                  }

                  goto LABEL_144;
                }

                v332 = v508;
                v333 = v504;
                v334 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v335 = v497;
                (*(v334 + 8))(&qword_18071E0A8, 256, v333, v334);
                v336 = v335;
                v282 = v489;
                (v495)(v336, v178, v332);
                LOBYTE(v332) = (*(*(v114[4] + 1) + 40))(v282, v53, v178);
                (v294)(v53, v178);
                if ((v332 & 1) == 0)
                {
LABEL_144:
                  v337 = (v114[15])(v178, v114);
                  (v517)(v282, v178);
                  if (v514 < 0x10)
                  {
                    v312 = (v337 << v514);
                  }

                  else
                  {
                    v312 = 0;
                  }

                  goto LABEL_147;
                }
              }

              else if (v291 > 16)
              {
                v324 = v114[12];
                v325 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v291, v292, v293);
                (v324)(&v518, &type metadata for UInt16, v325, v178, v114);
                v326 = (*(*(v114[4] + 1) + 16))(v53, v282, v178);
                (v517)(v53, v178);
                if (v326)
                {
                  goto LABEL_236;
                }

                goto LABEL_144;
              }

              (v114[15])(v178, v114);
              goto LABEL_144;
            }

            v179 = v494;
            (v516)(v515, v280);
            (v114[28])(v278, v179, v178, v114);
            v250 = v510;
            (v272)(v179, v178);
            v298 = (v272)(v278, v178);
            if (!__OFSUB__(0, v283))
            {
              v518 = -v283;
              v301 = v114[30];
              v302 = lazy protocol witness table accessor for type Int and conformance Int(v298, v299, v300);
              v303 = v485;
              (v301)(v53, &v518, &type metadata for Int, v302, v178, v114);
              (v272)(v53, v178);
              v304 = v114[8];
              if ((v304)(v178, v114))
              {
                v305 = v508;
                v306 = v504;
                v307 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v308 = v497;
                (*(v307 + 8))(&qword_18071E0A8, 256, v306, v307);
                v309 = v507;
                (v495)(v308, v178, v305);
                LOBYTE(v305) = (*(*(v114[4] + 1) + 32))(v485, v309, v178);
                v310 = v309;
                v303 = v485;
                (v272)(v310, v178);
                if ((v305 & 1) == 0)
                {
                  goto LABEL_236;
                }
              }

              v311 = v114[16];
              if ((v311)(v178, v114) > 15)
              {
                LOWORD(v518) = -1;
                v313 = (v304)(v178, v114);
                v314 = (v311)(v178, v114);
                if (v313)
                {
                  v317 = v517;
                  if (v314 <= 16)
                  {
                    v343 = v508;
                    v344 = v504;
                    v345 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                    v346 = v497;
                    (*(v345 + 8))(&qword_18071E0A8, 256, v344, v345);
                    v347 = v507;
                    (v495)(v346, v178, v343);
                    v348 = v485;
                    LOBYTE(v343) = (*(*(v114[4] + 1) + 40))(v485, v347, v178);
                    (v317)(v347, v178);
                    if (v343)
                    {
                      (v114[15])(v178, v114);
                    }

                    v303 = v348;
                  }

                  else
                  {
                    v318 = v114[12];
                    v319 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v314, v315, v316);
                    v320 = v507;
                    (v318)(&v518, &type metadata for UInt16, v319, v178, v114);
                    v321 = v485;
                    v322 = (*(*(v114[4] + 1) + 16))(v320, v485, v178);
                    v323 = v320;
                    v303 = v321;
                    (v317)(v323, v178);
                    if (v322)
                    {
                      goto LABEL_236;
                    }
                  }
                }

                else if (v314 <= 16)
                {
                  (v114[15])(v178, v114);
                }

                else
                {
                  v327 = v114[12];
                  v328 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v314, v315, v316);
                  v329 = v507;
                  (v327)(&v518, &type metadata for UInt16, v328, v178, v114);
                  v330 = (*(*(v114[4] + 1) + 16))(v329, v485, v178);
                  v331 = v329;
                  v303 = v485;
                  (v517)(v331, v178);
                  if (v330)
                  {
                    goto LABEL_236;
                  }
                }
              }

              v312 = (v114[15])(v178, v114);
              (v517)(v303, v178);
LABEL_147:
              v338 = 10;
              v339 = v515;
              v340 = v512;
              v341 = v509;
              v342 = v502;
LABEL_206:
              v416 = *(v506 + 21);
              v510 = v506 + 168;
              v503 = v416;
              if ((v416)(v339))
              {
                v417 = -32768;
              }

              else
              {
                v417 = 0;
              }

              v495 = v312;
              v418 = v312 & 0x3FF | ((v342 & 0x1F) << 10) | v417;
              if (v338 >= (v340)(v339, v341))
              {
                *v498 = v418;
                return 1;
              }

              LODWORD(v493) = v418;
              v419 = v508;
              v420 = v504;
              v421 = swift_getAssociatedConformanceWitness(v508, v178, v504, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v422 = v497;
              v502 = *(v421 + 8);
              (v502)(&qword_1806729C0, 512, v420, v421);
              v423 = v419[3];
              v424 = v507;
              v512 = v419 + 3;
              v501 = v423;
              v425 = (v423)(v422, v178, v419);
              if (!__OFSUB__(0, v514))
              {
                v518 = -v514;
                v511 = (v421 + 8);
                v428 = v505;
                v514 = v421;
                v429 = v422;
                v430 = *(v505 + 256);
                v431 = lazy protocol witness table accessor for type Int and conformance Int(v425, v426, v427);
                v430(v424, &v518, &type metadata for Int, v431, v178, v428);
                v432 = v496 + 8;
                (v517)(v424, v178);
                (v516)(v515, v341);
                v433 = v502;
                (v502)(&qword_1806729C0, 512, v420, v514);
                v434 = v487;
                v435 = v501;
                (v501)(v429, v178, v508);
                v436 = v494;
                (*(*(v486 + 8) + 40))(v500, v434, v178);
                (v517)(v434, v178);
                v437 = v490;
                (*(v428 + 192))(v424, v436, v178, v428);
                (v517)(v436, v178);
                (v517)(v424, v178);
                v433(qword_18071E0B8, 768);
                v438 = v429;
                (v435)(v429, v178, v508);
                v439 = *(v428 + 152);
                v439(v500, v436, v178, v428);
                (v517)(v436, v178);
                v440 = *(v428 + 32);
                v441 = v517;
                v442 = *(v440 + 8);
                v443 = (*(v442 + 16))(v437, v424, v178, v442);
                v516 = v432;
                (v441)(v424, v178);
                if (v443)
                {
                  (v441)(v437, v178);
                  (v441)(v500, v178);
                  result = 0;
                  *v498 = v493;
                  return result;
                }

                v4 = *&v493;
                v444 = (v503)(v515, v506);
                HIWORD(v445) = 0;
                if (v444)
                {
                  *&v445 = COERCE_SHORT_FLOAT(0) - v4;
                  v446 = v508;
                  v448 = v501;
                  v447 = v502;
                  if ((COERCE_SHORT_FLOAT(0) - v4) != COERCE_SHORT_FLOAT(31744))
                  {
                    v445 += (v445 >> 15) | 1;
                  }

                  v5 = -*&v445;
                }

                else
                {
                  v5 = v4 + COERCE_SHORT_FLOAT(0);
                  v446 = v508;
                  v448 = v501;
                  v447 = v502;
                  if (v4 != COERCE_SHORT_FLOAT(31744))
                  {
                    LOWORD(v5) += (SLOWORD(v5) >> 15) | 1;
                  }
                }

                v447(qword_18071E0B8, 768);
                v449 = v494;
                v450 = v499;
                (v448)(v438, v499, v446);
                v451 = v507;
                v452 = v500;
                v439(v500, v449, v450, v505);
                v453 = v449;
                v454 = v517;
                (v517)(v453, v450);
                (v454)(v452, v450);
                v455 = v490;
                v456 = (*(v442 + 40))(v490, v451, v450, v442);
                (v454)(v451, v450);
                (v454)(v455, v450);
                result = 0;
                if (v456)
                {
                  *v498 = v5;
                  return result;
                }

                goto LABEL_242;
              }

              __break(1u);
              goto LABEL_238;
            }

LABEL_246:
            __break(1u);
            goto LABEL_247;
          }
        }

        else
        {
          v140 = v112(v53, v48);
          v141 = (v512)(v53, v48);
          if (v140)
          {
            if (v141 > 64)
            {
              v518 = 0;
              v144 = *(v48 + 96);
              v145 = lazy protocol witness table accessor for type Int and conformance Int(v141, v142, v143);
              v146 = v514;
              v144(&v518, &type metadata for Int, v145, v53, v48);
              v69 = v517;
              v147 = (*(*(*(v48 + 32) + 8) + 16))(v517, v146, v53);
              (*(v516 + 8))(v146, v53);
              if (v147)
              {
                goto LABEL_60;
              }

              goto LABEL_52;
            }

            v157 = v503;
            v158 = v501;
            v159 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v160 = v502;
            (*(v159 + 8))(&qword_18071E0A8, 256, v158, v159);
            v161 = v514;
            (v157[3])(v160, v53, v157);
            v69 = v517;
            LOBYTE(v158) = (*(*(*(v48 + 32) + 8) + 16))(v517, v161, v53);
            (*(v516 + 8))(v161, v53);
            if (v158)
            {
              goto LABEL_60;
            }
          }

          else if (v141 >= 64)
          {
            goto LABEL_52;
          }
        }

        if ((*(v48 + 120))(v53, v48) < 0)
        {
          goto LABEL_60;
        }

LABEL_52:
        v162 = v491;
        (*(v516 + 32))(v491, v69, v53);
        if (v112(v53, v48))
        {
          v163 = v503;
          v164 = v501;
          v165 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v166 = v502;
          (*(v165 + 8))(&qword_18071E0A8, 256, v164, v165);
          v167 = v514;
          (v163[3])(v166, v53, v163);
          LOBYTE(v164) = (*(*(*(v48 + 32) + 8) + 32))(v491, v167, v53);
          v168 = v167;
          v162 = v491;
          (*(v516 + 8))(v168, v53);
          if ((v164 & 1) == 0)
          {
            goto LABEL_236;
          }
        }

        v103 = v512;
        if ((v512)(v53, v48) > 63)
        {
          v518 = -1;
          v169 = v112(v53, v48);
          v170 = v103(v53, v48);
          if (v169)
          {
            if (v170 <= 64)
            {
              v173 = v503;
              v174 = v501;
              v175 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v103 = v502;
              (*(v175 + 8))(&qword_18071E0A8, 256, v174, v175);
              v176 = v514;
              (v173[3])(v103, v53, v173);
              v177 = v491;
              LOBYTE(v174) = (*(*(*(v48 + 32) + 8) + 40))(v491, v176, v53);
              (*(v516 + 8))(v176, v53);
              if (v174)
              {
                (*(v48 + 120))(v53, v48);
              }

              v162 = v177;
              goto LABEL_110;
            }
          }

          else if (v170 <= 64)
          {
            v162 = v491;
            (*(v48 + 120))(v53, v48);
            goto LABEL_110;
          }

          v192 = *(v48 + 96);
          v193 = lazy protocol witness table accessor for type UInt and conformance UInt(v170, v171, v172);
          v103 = v514;
          v192(&v518, &type metadata for UInt, v193, v53, v48);
          v162 = v491;
          v194 = (*(*(*(v48 + 32) + 8) + 16))(v103, v491, v53);
          (*(v516 + 8))(v103, v53);
          if (v194)
          {
            goto LABEL_236;
          }
        }

LABEL_110:
        v48 = (*(v48 + 120))(v53, v48);
        (*(v516 + 8))(v162, v53);
        v249 = (v48 + 15);
        v240 = v48 < -15;
        if (v48 >= 0xFFFFFFFFFFFFFFF1)
        {
          __break(1u);
LABEL_112:
          v179 = v493;
          if (!v240)
          {
            goto LABEL_154;
          }

          goto LABEL_153;
        }

        goto LABEL_116;
      }

      goto LABEL_30;
    }

    v77 = v71(v53, v48);
    v512 = *(v48 + 128);
    v78 = (v512)(v53, v48);
    v76 = v70;
    if (v77)
    {
      if (v78 > 64)
      {
        v81 = *(v48 + 96);
        v82 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
        v83 = v514;
        v81(&v518, &type metadata for Int, v82, v53, v48);
        v69 = v517;
        v84 = (*(*(*(v48 + 32) + 8) + 16))(v517, v83, v53);
        (*(v516 + 8))(v83, v53);
        if (v84)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v89 = v503;
      v90 = v501;
      v91 = swift_getAssociatedConformanceWitness(v503, v53, v501, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v502;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v514;
      (v89[3])(v92, v53, v89);
      v69 = v517;
      LOBYTE(v90) = (*(*(*(v48 + 32) + 8) + 16))(v517, v93, v53);
      (*(v516 + 8))(v93, v53);
      if (v90)
      {
        goto LABEL_17;
      }
    }

    else if (v78 >= 64)
    {
      goto LABEL_21;
    }

    if ((*(v48 + 120))(v53, v48) >= -14)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((v52[50])(a3, v52))
  {
    if (((v52[21])(a3, v52) & 1) == 0)
    {
LABEL_238:
      v457 = 31744;
      goto LABEL_239;
    }

    v457 = -1024;
LABEL_239:
    v458 = v457;
    goto LABEL_240;
  }

  v459 = v509;
  v460 = *(v509 + 15);
  v460(a3, v509);
  v461 = v460;
  v517 = v460;
  v462 = v484;
  (v52[12])(a3, v52);
  v461(a3, v459);
  v463 = v52;
  v464 = v512[1];
  (v464)(v462, a3);
  v506 = v463;
  v465 = v511;
  (v463[13])(a3, v463);
  (v517)(a3, v459);
  (v464)(v465, a3);
  v466 = v505;
  v467 = v487;
  v468 = v499;
  (*(v505 + 208))(v23, v20, v499, v505);
  v469 = *(v496 + 8);
  v469(v20, v468);
  v469(v23, v468);
  v470 = v494;
  (*(v466 + 184))(v467, v468, v466);
  v469(v467, v468);
  v471 = v510;
  v472 = v507;
  (*(v466 + 192))(v507, v470, v468, v466);
  v469(v470, v468);
  v469(v472, v468);
  v473 = (*(v466 + 120))(v468, v466);
  v469(v471, v468);
  v474 = v506;
  v475 = (*(v506 + 52))(a3, v506);
  v476 = (*(v474 + 21))(a3, v474);
  result = 0;
  if (v476)
  {
    v477 = 0x8000;
  }

  else
  {
    v477 = 0;
  }

  v478 = v477 & 0xFF00 | v473;
  if (v475)
  {
    v479 = 32000;
  }

  else
  {
    v479 = 32256;
  }

  *v498 = v478 | v479;
  return result;
}

uint64_t static BinaryFloatingPoint._convert<A>(from:)(char *a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, swift *a6)
{
  v748 = a2;
  v714 = a1;
  v724 = *(a4 - 1);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v722 = &v657 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v718 = &v657 - v12;
  swift_getAssociatedTypeWitness(255, v14, v13, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v16 = v15;
  v723 = *(swift_getAssociatedConformanceWitness(a6, a4, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v667 = *(v723 + 24);
  v720 = *(v667 + 16);
  swift_getAssociatedTypeWitness(0, v720, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v719 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v706 = &v657 - v18;
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v20 = v19;
  v696 = *(swift_getAssociatedConformanceWitness(a5, a3, v19, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v671 = *(v696[3] + 16);
  swift_getAssociatedTypeWitness(0, v671, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v670 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v672 = &v657 - v22;
  v750 = swift_checkMetadataState(0, v16);
  v721 = *(v750 - 1);
  v23 = MEMORY[0x1EEE9AC00](v750);
  v711 = &v657 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v734 = &v657 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v735 = (&v657 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v668 = &v657 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v705 = &v657 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v689 = &v657 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v683 = (&v657 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v708 = &v657 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v731 = &v657 - v39;
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v41 = v40;
  v681 = *(swift_getAssociatedConformanceWitness(a5, a3, v40, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8);
  v682 = *(v681 + 3);
  v676 = *(v682 + 16);
  swift_getAssociatedTypeWitness(0, v676, v41, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v675 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v674 = &v657 - v43;
  swift_getTupleTypeMetadata2(0, a3, &type metadata for Bool, 0, 0);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v657 = &v657 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v658 = &v657 - v47;
  v48 = *(a5 + 16);
  v662 = *(v48 + 16);
  v692 = *(*(v662 + 8) + 16);
  swift_getAssociatedTypeWitness(0, v692, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v690 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v691 = &v657 - v50;
  v703 = a5;
  v665 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v665, a3, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v663 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v664 = &v657 - v52;
  swift_getAssociatedTypeWitness(255, v48, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v54 = v53;
  v740 = v48;
  v747 = *(swift_getAssociatedConformanceWitness(v48, a3, v53, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v673 = *(v747 + 24);
  v686 = *(v673 + 16);
  swift_getAssociatedTypeWitness(0, v686, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v684 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v685 = &v657 - v56;
  v736 = a6;
  v57 = *(a6 + 2);
  swift_getAssociatedTypeWitness(255, v57, a4, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v59 = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v57, a4, v58, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v733 = *(AssociatedConformanceWitness + 8);
  v695 = *(v733 + 24);
  v717 = *(v695 + 16);
  swift_getAssociatedTypeWitness(0, v717, v59, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v715 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v716 = &v657 - v61;
  v62 = swift_checkMetadataState(0, v54);
  v63 = *(v62 - 8);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v697 = &v657 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v677 = &v657 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v742 = &v657 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v732 = &v657 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v745 = &v657 - v72;
  v701 = swift_checkMetadataState(0, v20);
  v707 = *(v701 - 1);
  v73 = MEMORY[0x1EEE9AC00](v701);
  v729 = &v657 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v659 = &v657 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v725 = &v657 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v660 = &v657 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v726 = &v657 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v704 = &v657 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v678 = &v657 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v669 = &v657 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v709 = &v657 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v694 = &v657 - v92;
  MEMORY[0x1EEE9AC00](v91);
  v698 = &v657 - v93;
  v713 = swift_checkMetadataState(0, v41);
  v699 = *(v713 - 1);
  v94 = MEMORY[0x1EEE9AC00](v713);
  v680 = &v657 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v702 = &v657 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v679 = &v657 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v712 = &v657 - v101;
  v749 = a3;
  v728 = *(a3 - 1);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v710 = &v657 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x1EEE9AC00](v102);
  v106 = &v657 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104);
  v109 = &v657 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107);
  v666 = &v657 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v114 = &v657 - v113;
  v115 = MEMORY[0x1EEE9AC00](v112);
  v693 = &v657 - v116;
  MEMORY[0x1EEE9AC00](v115);
  v744 = &v657 - v117;
  v118 = a4;
  v727 = swift_checkMetadataState(0, v59);
  v741 = *(v727 - 1);
  v119 = MEMORY[0x1EEE9AC00](v727);
  v688 = &v657 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = MEMORY[0x1EEE9AC00](v119);
  v700 = &v657 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v743 = &v657 - v124;
  MEMORY[0x1EEE9AC00](v123);
  v746 = &v657 - v125;
  if ((*(v57 + 384))(a4, v57))
  {
    if ((*(v57 + 168))(a4, v57))
    {
      v575 = v665;
      v576 = v749;
      v577 = v663;
      v578 = swift_getAssociatedConformanceWitness(v665, v749, v663, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
      v579 = v664;
      (*(v578 + 8))(v577, v578, -0.0);
    }

    else
    {
      v575 = v692;
      v576 = v749;
      v584 = v690;
      v585 = swift_getAssociatedConformanceWitness(v692, v749, v690, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v579 = v691;
      (*(v585 + 8))(&qword_18071E0A8, 256, v584, v585);
    }

    (v575[3])(v579, v576, v575);
    return 1;
  }

  v730 = v721;
  v126 = (*(v57 + 376))(a4, v57);
  v738 = v57;
  v739 = a4;
  if ((v126 & 1) == 0)
  {
    if (((*(v57 + 400))(a4, v57) & 1) == 0)
    {
      v586 = v736;
      v587 = *(v736 + 15);
      v587(v118, v736);
      v588 = *(v57 + 96);
      v745 = v109;
      v589 = v718;
      v588(v118, v57);
      v587(v118, v586);
      v747 = *(v724 + 8);
      (v747)(v589, v118);
      v590 = v722;
      (*(v57 + 104))(v118, v57);
      v591 = v711;
      v587(v118, v586);
      (v747)(v590, v118);
      v592 = v723;
      v593 = v689;
      v594 = v734;
      v595 = v750;
      (*(v723 + 208))(v734, v591, v750, v723);
      v596 = *(v730 + 8);
      v596(v591, v595);
      v596(v594, v595);
      v597 = v592;
      v598 = *(v592 + 184);
      v599 = v708;
      v600 = v597;
      v598(v593, v595);
      v596(v593, v595);
      v601 = v600;
      v602 = *(v600 + 192);
      v603 = v731;
      v602(v731, v599, v595, v601);
      v596(v599, v595);
      v596(v603, v595);
      v604 = v740;
      v605 = v693;
      v606 = v749;
      (*(v740 + 120))(v749, v740);
      v607 = (v703 + 120);
      v608 = *(v703 + 120);
      v608(v606);
      v610 = v728 + 8;
      v609 = *(v728 + 8);
      v609(v605, v606);
      v611 = v745;
      v736 = *(v604 + 96);
      v737 = (v604 + 96);
      (v736)(v606, v604);
      v612 = v703;
      (v608)(v606, v703);
      v609(v611, v606);
      v733 = *(v604 + 104);
      v734 = (v604 + 104);
      (v733)(v606, v604);
      v613 = v659;
      v743 = v608;
      v744 = v607;
      (v608)(v606, v612);
      v746 = v609;
      v747 = v610;
      v609(v106, v606);
      v614 = v696;
      v615 = v660;
      v616 = v725;
      v617 = v701;
      v741 = v696[26];
      v742 = (v696 + 26);
      (v741)(v725, v613, v701, v696);
      v618 = *(v707 + 8);
      v618(v613, v617);
      v618(v616, v617);
      v619 = v726;
      (v614[23])(v615, v617, v614);
      v618(v615, v617);
      v620 = v614[24];
      v621 = v704;
      v622 = v709;
      v620(v709, v619, v617, v614);
      v618(v619, v617);
      v618(v622, v617);
      (v614[12])(v735, v750, v723, v617, v614);
      v620(v622, v621, v617, v614);
      v623 = v622;
      v624 = v703;
      v618(v623, v617);
      v618(v621, v617);
      v625 = v738;
      v626 = v739;
      LOBYTE(v613) = (*(v738 + 416))(v739, v738);
      LODWORD(v748) = (*(v625 + 168))(v626, v625);
      v750 = (v624 + 56);
      v627 = v693;
      if (v613)
      {
        v628 = v740;
        v629 = v733;
        (v733)(v606, v740);
        (*(v624 + 112))(v606, v624);
        (v746)(v627, v606);
        v630 = v745;
        v629(v606, v628);
      }

      else
      {
        v631 = v740;
        v632 = v736;
        (v736)(v606, v740);
        (*(v624 + 112))(v606, v624);
        (v746)(v627, v606);
        v630 = v745;
        (v632)(v606, v631);
      }

      v633 = v726;
      (v743)(v606, v624);
      (v746)(v630, v606);
      v634 = v709;
      v635 = v729;
      v636 = v701;
      (v741)(v729, v633, v701, v696);
      v618(v633, v636);
      v618(v635, v636);
      v637 = v710;
      (*(v624 + 56))(v748 & 1, v702, v634, v606, v624);
      (*(v728 + 32))(v714, v637, v606);
      return 0;
    }

    v580 = (*(v57 + 168))(a4, v57);
    v581 = *(v740 + 112);
    v582 = v749;
    v583 = v693;
    if (v580)
    {
      v581(v749);
      (*(v662 + 16))(v583, v582);
      (*(v728 + 8))(v583, v582);
    }

    else
    {
      v581(v749);
    }

    return 1;
  }

  v737 = v63;
  v704 = v114;
  v127 = v62;
  v128 = v746;
  (*(v57 + 176))(v118, v57);
  v129 = v740;
  v130 = v744;
  v131 = v749;
  (*(v740 + 152))(v749, v740);
  v132 = *(v129 + 176);
  v711 = (v129 + 176);
  v710 = v132;
  (v132)(v131, v129);
  v133 = *(v728 + 8);
  v722 = (v728 + 8);
  v718 = v133;
  (v133)(v130, v131);
  v134 = v733;
  v135 = (v733 + 64);
  v136 = *(v733 + 64);
  v137 = v727;
  LODWORD(v131) = v136(v727, v733);
  v138 = v747;
  v734 = *(v747 + 64);
  v735 = (v747 + 64);
  v139 = (v734)(v127, v747);
  v725 = v136;
  v726 = v135;
  if (((v131 ^ v139) & 1) == 0)
  {
    v724 = *(v134 + 128);
    v149 = (v724)(v137, v134);
    v729 = *(v138 + 128);
    v147 = v128;
    v150 = v138;
    if (v149 >= (v729)(v127, v138))
    {
      v144 = v743;
      (*(v134 + 96))(v745, v127, v138, v137, v134);
      v166 = (*(*(*(v134 + 32) + 8) + 16))(v128, v144, v137);
      (*(v741 + 1))(v144, v137);
      v145 = v137;
      v146 = v134;
      if (v166)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v151 = v743;
      (*(v741 + 2))(v743, v147, v137);
      v152 = *(v138 + 96);
      v145 = v137;
      v153 = v732;
      v152(v151, v137, v134, v127, v150);
      v154 = v745;
      v155 = (*(*(*(v150 + 32) + 8) + 16))(v153, v745, v127);
      v156 = v737[1];
      (v156)(v153, v127);
      (v156)(v154, v127);
      v147 = v746;
      v146 = v134;
      v144 = v151;
      if (v155)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_39;
  }

  v140 = v136(v137, v134);
  v724 = *(v134 + 128);
  v141 = (v724)(v137, v134);
  v142 = *(v138 + 128);
  v143 = v142(v127, v138);
  v729 = v142;
  if ((v140 & 1) == 0)
  {
    v157 = v743;
    if (v141 >= v143)
    {
      v145 = v727;
      v172 = v686;
      v173 = v684;
      v174 = swift_getAssociatedConformanceWitness(v686, v127, v684, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v175 = v685;
      (*(v174 + 8))(&qword_18071E0A8, 256, v173, v174);
      v176 = v732;
      (v172[3])(v175, v127, v172);
      v177 = v747;
      v178 = v745;
      LOBYTE(v173) = (*(*(*(v747 + 32) + 8) + 40))(v745, v176, v127);
      v179 = v737[1];
      (v179)(v176, v127);
      if ((v173 & 1) == 0)
      {
        (v179)(v178, v127);
        v147 = v746;
        v146 = v733;
        goto LABEL_39;
      }

      v146 = v733;
      (*(v733 + 96))(v178, v127, v177, v145, v733);
      v147 = v746;
      v180 = (*(*(*(v146 + 32) + 8) + 16))(v746, v157, v145);
      (*(v741 + 1))(v157, v145);
      v144 = v157;
      if (v180)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v147 = v746;
      v145 = v727;
      (*(v741 + 2))(v743, v746, v727);
      v158 = v747;
      v159 = v732;
      v160 = v157;
      v161 = v733;
      (*(v747 + 96))(v160, v145, v733, v127, v747);
      v162 = *(*(*(v158 + 32) + 8) + 16);
      v163 = v745;
      v164 = v162(v159, v745, v127);
      v165 = v737[1];
      (v165)(v159, v127);
      (v165)(v163, v127);
      v146 = v161;
      v144 = v743;
      if (v164)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    v231 = v147;
    v232 = v740;
    v233 = v749;
    (*(v740 + 120))(v749, v740);
    v234 = v697;
    (v710)(v233, v232);
    v235 = v734;
    v236 = (v734)(v127, v747);
    v237 = v146;
    if ((v236 ^ (v725)(v145, v146)))
    {
      v238 = v747;
      v239 = (v235)(v127, v747);
      v240 = (v729)(v127, v238);
      v241 = (v724)(v145, v237);
      v242 = v738;
      v243 = v234;
      v244 = v127;
      if (v239)
      {
        if (v241 < v240)
        {
          v245 = v741;
          v246 = v743;
          v247 = v746;
          v248 = v127;
          v249 = v145;
          (*(v741 + 2))(v743, v746, v145);
          v250 = v747;
          v251 = v732;
          v252 = v145;
          v253 = v733;
          (*(v747 + 96))(v246, v252, v733, v248, v747);
          LODWORD(v747) = (*(*(*(v250 + 32) + 8) + 16))(v234, v251, v248);
          v254 = v737[1];
          (v254)(v251, v248);
          v255 = v234;
          v256 = v246;
          v237 = v253;
          v145 = v249;
          (v254)(v255, v248);
          v242 = v738;
          if ((v747 & 1) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_61;
        }

        v285 = v686;
        v286 = v684;
        v287 = swift_getAssociatedConformanceWitness(v686, v127, v684, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v288 = v685;
        (*(v287 + 8))(&qword_18071E0A8, 256, v286, v287);
        v289 = v732;
        (v285[3])(v288, v127, v285);
        v290 = v747;
        LOBYTE(v286) = (*(*(*(v747 + 32) + 8) + 16))(v234, v289, v127);
        v291 = v737[1];
        (v291)(v289, v127);
        v247 = v746;
        if (v286)
        {
          (v291)(v234, v127);
          v242 = v738;
          v245 = v741;
          goto LABEL_61;
        }

        v237 = v733;
        v256 = v743;
        (*(v733 + 96))(v243, v127, v290, v145, v733);
LABEL_46:
        v260 = (*(*(*(v237 + 32) + 8) + 16))(v256, v247, v145);
        v245 = v741;
        (*(v741 + 1))(v256, v145);
        v242 = v738;
        if ((v260 & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_61;
      }

      if (v240 < v241)
      {
        v256 = v743;
        (*(v237 + 96))(v243, v127, v747, v145, v237);
        v247 = v746;
        v261 = (*(*(*(v237 + 32) + 8) + 16))(v256, v746, v145);
        v245 = v741;
        (*(v741 + 1))(v256, v145);
        if ((v261 & 1) == 0)
        {
LABEL_83:
          v333 = v725;
          if ((v725)(v145, v237))
          {
            v334 = v247;
            v335 = (v724)(v145, v237);
            v338 = v741;
            if (v335 < 64)
            {
              v339 = (*(v237 + 120))(v145, v237);
              v340 = v692;
              v341 = v691;
              if (v339 < 0)
              {
                goto LABEL_107;
              }

LABEL_106:
              v378 = v749;
              v379 = v690;
              v380 = swift_getAssociatedConformanceWitness(v340, v749, v690, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              (*(v380 + 8))(&qword_1806729C0, 512, v379, v380);
              v381 = v693;
              (v340[3])(v341, v378, v340);
              v382 = v703;
              v383 = v702;
              (*(v703 + 112))(v378, v703);
              v384 = v381;
              v385 = v718;
              (v718)(v384, v378);
              v386 = v743;
              v338[4](v743, v334, v145);
              v387 = v680;
              v388 = v145;
              v389 = v713;
              (*(v681 + 11))(v386, v388, v237, v713);
              v390 = v679;
              (*(*(v682 + 8) + 24))(v383, v387, v389);
LABEL_108:
              v397 = v699;
              v398 = *(v699 + 8);
              v398(v387, v389);
              v398(v383, v389);
              (*(v397 + 32))(v712, v390, v389);
              v399 = v744;
              v400 = (*(v382 + 136))(v378, v382);
              v385(v399, v378);
              v401 = v736;
              v402 = v736 + 136;
              v403 = v739;
              v744 = *(v736 + 17);
              v745 = (v744)(v739, v736);
              v404 = v731;
              v747 = *(v401 + 15);
              (v747)(v403, v401);
              v405 = v750;
              v735 = *(v723 + 144);
              v406 = v735(v750);
              v407 = *(v730 + 8);
              v730 += 8;
              v407(v404, v405);
              v742 = v400;
              v745 = v400 - v745 - v406;
              LOBYTE(v400) = (*(v738 + 392))(v403);
              v408 = v720;
              v409 = v719;
              v410 = swift_getAssociatedConformanceWitness(v720, v405, v719, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v411 = *(v410 + 8);
              v737 = v408 + 3;
              v746 = v407;
              v743 = v402;
              v741 = (v401 + 120);
              if (v400)
              {
                v412 = v706;
                v411(&qword_1806729C0, 512, v409, v410);
                (v408[3])(v412, v405, v408);
                v413 = v736;
                v414 = (v744)(v403, v736);
                v415 = v708;
                (v747)(v403, v413);
                v416 = v723;
                v417 = (v735)(v405, v723);
                v418 = v746;
                v419 = (v746)(v415, v405);
                v751 = v417 + v414;
                v420 = *(v416 + 256);
                v423 = lazy protocol witness table accessor for type Int and conformance Int(v419, v421, v422);
                v424 = v683;
                v425 = v731;
                v420(v731, &v751, &type metadata for Int, v423, v405, v416);
                (v418)(v425, v405);
                v426 = v696;
              }

              else
              {
                v427 = v706;
                v411(&qword_18071E0A8, 256, v409, v410);
                v424 = v683;
                (v408[3])(v427, v405, v408);
                v426 = v696;
                v416 = v723;
              }

              v428 = v707;
              v429 = v701;
              v430 = v745;
              if ((v745 & 0x8000000000000000) == 0)
              {
                v431 = v708;
                (v747)(v739, v736);
                v432 = v731;
                v433 = v750;
                (*(v416 + 224))(v424, v431, v750, v416);
                v434 = v746;
                (v746)(v431, v433);
                (v434)(v424, v433);
                v435 = v709;
                v436 = (v426[11])(v432, v433, v416, v429, v426);
                v751 = v430;
                v437 = v426[32];
                v440 = lazy protocol witness table accessor for type Int and conformance Int(v436, v438, v439);
                v441 = v678;
                v437(v435, &v751, &type metadata for Int, v440, v429, v426);
                (*(v428 + 8))(v435, v429);
LABEL_115:
                v451 = v698;
                (*(v428 + 32))(v698, v441, v429);
                goto LABEL_149;
              }

              v442 = v689;
              (v747)(v739, v736);
              v370 = v424;
              v443 = v750;
              (*(v416 + 224))(v424, v442, v750, v416);
              v444 = v746;
              (v746)(v442, v443);
              v445 = (v444)(v424, v443);
              if (!__OFSUB__(0, v430))
              {
                v751 = -v430;
                v741 = *(v416 + 240);
                v448 = lazy protocol witness table accessor for type Int and conformance Int(v445, v446, v447);
                v449 = v731;
                v450 = v708;
                (v741)(v708, &v751, &type metadata for Int, v448, v443, v416);
                (v444)(v450, v443);
                v441 = v678;
                (v426[11])(v449, v443, v416, v429, v426);
                goto LABEL_115;
              }

              __break(1u);
              goto LABEL_182;
            }

            v751 = 0;
            v349 = *(v237 + 96);
            v350 = lazy protocol witness table accessor for type Int and conformance Int(v335, v336, v337);
            v349(&v751, &type metadata for Int, v350, v145, v237);
            v348 = (*(*(*(v237 + 32) + 8) + 16))(v247, v256, v145);
            goto LABEL_91;
          }

          v342 = v333(v145, v237);
          v343 = (v724)(v145, v237);
          v338 = v741;
          if (v342)
          {
            if (v343 > 64)
            {
              v751 = 0;
              v346 = *(v237 + 96);
              v347 = lazy protocol witness table accessor for type Int and conformance Int(v343, v344, v345);
              v346(&v751, &type metadata for Int, v347, v145, v237);
              v334 = v746;
              v348 = (*(*(*(v237 + 32) + 8) + 16))(v746, v256, v145);
LABEL_91:
              v351 = v348;
              (v338[1])(v256, v145);
              v340 = v692;
              v341 = v691;
              if ((v351 & 1) == 0)
              {
                goto LABEL_106;
              }

              goto LABEL_107;
            }

            v374 = v717;
            v375 = v715;
            v376 = swift_getAssociatedConformanceWitness(v717, v145, v715, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v377 = v716;
            (*(v376 + 8))(&qword_18071E0A8, 256, v375, v376);
            (v374[3])(v377, v145, v374);
            v334 = v746;
            LOBYTE(v375) = (*(*(*(v237 + 32) + 8) + 16))(v746, v256, v145);
            (v338[1])(v256, v145);
            v340 = v692;
            v341 = v691;
            if (v375)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v340 = v692;
            v341 = v691;
            v334 = v746;
            if (v343 >= 64)
            {
              goto LABEL_106;
            }
          }

          if (((*(v237 + 120))(v145, v237) & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

LABEL_107:
          v378 = v749;
          v391 = v690;
          v392 = swift_getAssociatedConformanceWitness(v340, v749, v690, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          (*(v392 + 8))(&qword_1806729C0, 512, v391, v392);
          v393 = v693;
          (v340[3])(v341, v378, v340);
          v382 = v703;
          v383 = v702;
          (*(v703 + 112))(v378, v703);
          v394 = v393;
          v385 = v718;
          (v718)(v394, v378);
          v395 = v743;
          (*(*(AssociatedConformanceWitness + 16) + 16))(v334, v145);
          (v338[1])(v334, v145);
          v387 = v680;
          v396 = v145;
          v389 = v713;
          (*(v681 + 11))(v395, v396, v237, v713);
          v390 = v679;
          (*(*(v682 + 8) + 40))(v383, v387, v389);
          goto LABEL_108;
        }

LABEL_61:
        v292 = v749;
        v293 = v718;
        (v718)(v744, v749);
        v245[1](v247, v145);
        v294 = (*(v242 + 168))(v739, v242);
        v295 = *(v740 + 112);
        if (v294)
        {
          v296 = v693;
          v295(v292);
          (*(v662 + 16))(v296, v292);
          v293(v296, v292);
        }

        else
        {
          v295(v292);
        }

        return 0;
      }

      v297 = v717;
      v298 = v715;
      v299 = swift_getAssociatedConformanceWitness(v717, v145, v715, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v300 = v716;
      (*(v299 + 8))(&qword_18071E0A8, 256, v298, v299);
      v256 = v743;
      (v297[3])(v300, v145, v297);
      v247 = v746;
      LOBYTE(v298) = (*(*(*(v237 + 32) + 8) + 40))(v746, v256, v145);
      v245 = v741;
      (*(v741 + 1))(v256, v145);
      if ((v298 & 1) == 0)
      {
        (v737[1])(v697, v127);
        goto LABEL_83;
      }

      (v245[2])(v256, v247, v145);
      v301 = v747;
      v302 = v732;
      (*(v747 + 96))(v256, v145, v237, v244, v747);
      v303 = v697;
      v263 = (*(*(*(v301 + 32) + 8) + 16))(v697, v302, v244);
      v264 = v737[1];
      (v264)(v302, v244);
      v266 = v303;
      v256 = v743;
      v267 = v244;
    }

    else
    {
      v257 = v747;
      v258 = (v729)(v127, v747);
      v247 = v231;
      v259 = v234;
      if (v258 < (v724)(v145, v237))
      {
        v256 = v743;
        (*(v237 + 96))(v259, v127, v257, v145, v237);
        goto LABEL_46;
      }

      v245 = v741;
      (*(v741 + 2))(v743, v247, v145);
      v262 = v732;
      (*(v257 + 96))(v743, v145, v237, v127, v257);
      v263 = (*(*(*(v257 + 32) + 8) + 16))(v259, v262, v127);
      v264 = v737[1];
      v265 = v262;
      v256 = v743;
      (v264)(v265, v127);
      v266 = v259;
      v267 = v127;
    }

    (v264)(v266, v267);
    v242 = v738;
    if ((v263 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  v144 = v743;
  if (v143 >= v141)
  {
    v167 = v717;
    v145 = v727;
    v168 = v715;
    v169 = swift_getAssociatedConformanceWitness(v717, v727, v715, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v170 = v716;
    (*(v169 + 8))(&qword_18071E0A8, 256, v168, v169);
    (v167[3])(v170, v145, v167);
    v146 = v733;
    v147 = v746;
    LOBYTE(v168) = (*(*(*(v733 + 32) + 8) + 16))(v746, v144, v145);
    v171 = v741;
    (*(v741 + 1))(v144, v145);
    if (v168)
    {
      (v737[1])(v745, v127);
    }

    else
    {
      v171[2](v144, v147, v145);
      v181 = v747;
      v182 = v732;
      (*(v747 + 96))(v743, v145, v146, v127, v747);
      v183 = v745;
      v184 = (*(*(*(v181 + 32) + 8) + 16))(v182, v745, v127);
      v185 = v737[1];
      v144 = v743;
      (v185)(v182, v127);
      (v185)(v183, v127);
      v147 = v746;
      if ((v184 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v145 = v727;
    v146 = v733;
    (*(v733 + 96))(v745, v127, v747, v727, v733);
    v147 = v746;
    v148 = (*(*(*(v146 + 32) + 8) + 16))(v746, v144, v145);
    (*(v741 + 1))(v144, v145);
    if ((v148 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_22:
  v687 = v127;
  v186 = v740;
  v187 = v749;
  (*(v740 + 160))(v749, v740);
  (v710)(v187, v186);
  v188 = v717;
  v189 = v715;
  v190 = swift_getAssociatedConformanceWitness(v717, v145, v715, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v191 = *(v190 + 8);
  v192 = v716;
  v711 = v190;
  v710 = (v190 + 8);
  v697 = v191;
  (v191)(&qword_1806729C0, 512, v189);
  v193 = v188[3];
  v693 = (v188 + 3);
  v683 = v193;
  (v193)(v192, v145, v188);
  v194 = v144;
  v195 = *(v695 + 8);
  v196 = *(v195 + 24);
  v197 = v146;
  v198 = v700;
  v695 = v195;
  v682 = v195 + 24;
  v681 = v196;
  (v196)(v147, v194, v145);
  v199 = *(v741 + 1);
  v200 = v194;
  v201 = v687;
  v727 = v741 + 8;
  v745 = v199;
  v199(v200, v145);
  v202 = v725;
  v203 = (v725)(v145, v146);
  v204 = v747;
  if (((v203 ^ (v734)(v201, v747)) & 1) == 0)
  {
    v216 = (v724)(v145, v197);
    if (v216 >= (v729)(v201, v204))
    {
      v210 = v737;
      v221 = v732;
      (v737[2])(v732, v742, v201);
      v222 = v743;
      (*(v197 + 96))(v221, v201, v204, v145, v197);
      v218 = (*(*(*(v197 + 32) + 8) + 16))(v198, v222, v145);
      v209 = v745;
      (v745)(v222, v145);
      v209(v198, v145);
      v215 = v746;
    }

    else
    {
      v217 = v732;
      (*(v204 + 96))(v198, v145, v197, v201, v204);
      v218 = (*(*(*(v204 + 32) + 8) + 16))(v217, v742, v201);
      v210 = v737;
      (v737[1])(v217, v201);
      v209 = v745;
      v215 = v746;
    }

    v208 = v197;
    if (v218)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

  v205 = v202(v145, v197);
  v206 = (v724)(v145, v197);
  v207 = (v729)(v201, v204);
  v208 = v197;
  if (v205)
  {
    v209 = v745;
    if (v207 < v206)
    {
      v210 = v737;
      v211 = v732;
      (v737[2])(v732, v742, v201);
      v212 = v743;
      (*(v197 + 96))(v211, v201, v204, v145, v197);
      v213 = v700;
      LOBYTE(v211) = (*(*(*(v197 + 32) + 8) + 16))(v700, v212, v145);
      v209(v212, v145);
      v214 = v213;
      v208 = v197;
      v209(v214, v145);
      v215 = v746;
      if (v211)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }

    v268 = v716;
    (v697)(&qword_18071E0A8, 256);
    v269 = v743;
    (v683)(v268, v145, v717);
    v270 = v700;
    v271 = (*(*(*(v208 + 32) + 8) + 16))(v700, v269, v145);
    v209(v269, v145);
    v210 = v737;
    if ((v271 & 1) == 0)
    {
      v304 = v732;
      (*(v204 + 96))(v270, v145, v208, v201, v204);
      v305 = (*(*(*(v204 + 32) + 8) + 16))(v304, v742, v201);
      (v210[1])(v304, v201);
      v215 = v746;
      if (v305)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }

    v209(v270, v145);
    v215 = v746;
LABEL_34:
    (v210[1])(v742, v201);
    v223 = v209;
    v224 = v749;
    (v718)(v744, v749);
    v223(v215, v145);
    if ((*(v738 + 168))(v739))
    {
      v225 = v665;
      v226 = v663;
      v227 = swift_getAssociatedConformanceWitness(v665, v224, v663, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
      v228 = v664;
      (*(v227 + 8))(v226, v227, -0.0);
    }

    else
    {
      v225 = v692;
      v229 = v690;
      v230 = swift_getAssociatedConformanceWitness(v692, v224, v690, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v228 = v691;
      (*(v230 + 8))(&qword_18071E0A8, 256, v229, v230);
    }

    (v225[3])(v228, v224, v225);
    return 0;
  }

  v209 = v745;
  if (v206 < v207)
  {
    v219 = v732;
    (*(v204 + 96))(v700, v145, v197, v201, v204);
    v220 = (*(*(*(v204 + 32) + 8) + 16))(v219, v742, v201);
    v210 = v737;
    (v737[1])(v219, v201);
    v215 = v746;
    if ((v220 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_34;
  }

  v272 = v686;
  v273 = v684;
  v274 = swift_getAssociatedConformanceWitness(v686, v201, v684, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v275 = v685;
  (*(v274 + 8))(&qword_18071E0A8, 256, v273, v274);
  v276 = v732;
  (v272[3])(v275, v201, v272);
  LOBYTE(v273) = (*(*(*(v204 + 32) + 8) + 40))(v742, v276, v201);
  v210 = v737;
  (v737[1])(v276, v201);
  v277 = v746;
  if ((v273 & 1) == 0)
  {
    v209(v700, v145);
    v215 = v277;
    goto LABEL_69;
  }

  (v210[2])(v276, v742, v201);
  v278 = v743;
  (*(v208 + 96))(v276, v687, v204, v145, v208);
  v279 = *(*(*(v208 + 32) + 8) + 16);
  v280 = v208;
  v281 = v700;
  v282 = v279(v700, v278, v145);
  v283 = v278;
  v201 = v687;
  v209(v283, v145);
  v284 = v281;
  v208 = v280;
  v209(v284, v145);
  v215 = v277;
  if (v282)
  {
    goto LABEL_34;
  }

LABEL_69:
  v306 = v716;
  (v697)(&qword_1806729C0, 512);
  v307 = v743;
  (v683)(v306, v145, v717);
  v308 = v208;
  v309 = v204;
  v310 = v688;
  v311 = v215;
  v312 = v307;
  v313 = v307;
  v314 = v687;
  v681(v311, v312, v145, v695);
  v209(v313, v145);
  v315 = v725;
  v316 = (v725)(v145, v308);
  if (((v316 ^ (v734)(v314, v309)) & 1) == 0)
  {
    v326 = v313;
    v327 = (v724)(v145, v308);
    v328 = v742;
    if (v327 < (v729)(v314, v309))
    {
      v322 = v732;
      (*(v309 + 96))(v310, v145, v308, v314, v309);
      v329 = (*(*(*(v309 + 16) + 8) + 8))(v322, v328, v314);
      (v737[1])(v322, v314);
      v323 = v326;
      if (v329)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

    v322 = v732;
    (v737[2])(v732, v328, v314);
    v323 = v326;
    (*(v308 + 96))(v322, v314, v309, v145, v308);
    v324 = (*(*(*(v308 + 16) + 8) + 8))(v310, v326, v145);
    v325 = v326;
    goto LABEL_79;
  }

  v317 = v315(v145, v308);
  v318 = (v724)(v145, v308);
  v319 = v742;
  v320 = (v729)(v314, v309);
  if ((v317 & 1) == 0)
  {
    if (v318 < v320)
    {
      v309 = v747;
      v322 = v732;
      v308 = v733;
      (*(v747 + 96))(v310, v145, v733, v314, v747);
      v330 = (*(*(*(v309 + 16) + 8) + 8))(v322, v319, v314);
      v331 = v737;
      goto LABEL_97;
    }

    v360 = v686;
    v361 = v684;
    v362 = swift_getAssociatedConformanceWitness(v686, v314, v684, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v363 = v685;
    (*(v362 + 8))(&qword_18071E0A8, 256, v361, v362);
    v364 = v319;
    v365 = v732;
    (v360[3])(v363, v314, v360);
    LOBYTE(v361) = (*(*(*(v747 + 32) + 8) + 32))(v364, v365, v314);
    v366 = v737;
    v367 = v365;
    v356 = v688;
    (v737[1])(v367, v314);
    if (v361)
    {
      v322 = v732;
      (v366[2])(v732, v364, v314);
      v308 = v733;
      v323 = v743;
      v309 = v747;
      (*(v733 + 96))(v322, v314, v747, v145, v733);
      v368 = (*(*(*(v308 + 16) + 8) + 8))(v356, v323, v145);
      v369 = v745;
      (v745)(v323, v145);
      v369(v356, v145);
      if (v368)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

LABEL_116:
    (v745)(v356, v145);
    v322 = v732;
    v308 = v733;
    v323 = v743;
    v309 = v747;
    goto LABEL_117;
  }

  v321 = v737;
  if (v320 < v318)
  {
    v322 = v732;
    (v737[2])(v732, v319, v314);
    v308 = v733;
    v323 = v743;
    v309 = v747;
    (*(v733 + 96))(v322, v314, v747, v145, v733);
    v324 = (*(*(*(v308 + 16) + 8) + 8))(v310, v323, v145);
    v325 = v323;
LABEL_79:
    v332 = v745;
    (v745)(v325, v145);
    v332(v310, v145);
    if (v324)
    {
      goto LABEL_101;
    }

    goto LABEL_117;
  }

  v352 = v319;
  v353 = v716;
  (v697)(&qword_18071E0A8, 256);
  v354 = v743;
  v355 = v353;
  v356 = v688;
  (v683)(v355, v145, v717);
  v357 = (*(*(*(v733 + 32) + 8) + 32))(v356, v354, v145);
  (v745)(v354, v145);
  if ((v357 & 1) == 0)
  {
    goto LABEL_116;
  }

  v309 = v747;
  v322 = v732;
  v358 = v356;
  v359 = v321;
  v308 = v733;
  (*(v747 + 96))(v358, v145, v733, v314, v747);
  v330 = (*(*(*(v309 + 16) + 8) + 8))(v322, v352, v314);
  v331 = v359;
LABEL_97:
  (v331[1])(v322, v314);
  v323 = v743;
  if (v330)
  {
LABEL_101:
    (v737[1])(v742, v314);
    (v745)(v746, v145);
    v370 = v739;
    if ((*(v736 + 17))(v739))
    {
      if ((*(v738 + 168))(v370))
      {
        v371 = v658;
        v372 = v744;
        v373 = v749;
        (*(v662 + 16))(v744, v749);
        (v718)(v372, v373);
      }

      else
      {
        v371 = v658;
        v373 = v749;
        (*(v728 + 32))(v658, v744, v749);
      }

LABEL_188:
      (*(v728 + 32))(v714, v371, v373);
      return 0;
    }

LABEL_183:
    (v718)(v744, v749);
    if ((*(v738 + 168))(v370))
    {
      v651 = v665;
      v373 = v749;
      v652 = v663;
      v653 = swift_getAssociatedConformanceWitness(v665, v749, v663, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
      v654 = v664;
      (*(v653 + 8))(v652, v653, -0.0);
    }

    else
    {
      v651 = v692;
      v373 = v749;
      v655 = v690;
      v656 = swift_getAssociatedConformanceWitness(v692, v749, v690, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v654 = v691;
      (*(v656 + 8))(&qword_18071E0A8, 256, v655, v656);
    }

    v371 = v658;
    (v651[3])(v654, v373, v651);
    goto LABEL_188;
  }

LABEL_117:
  v452 = v676;
  v453 = v713;
  v454 = v675;
  v455 = swift_getAssociatedConformanceWitness(v676, v713, v675, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v456 = v674;
  (*(v455 + 8))(&qword_18071E0A8, 256, v454, v455);
  (v452[3])(v456, v453, v452);
  (*(v741 + 2))(v323, v746, v145);
  (*(v309 + 88))(v323, v145, v308, v314, v309);
  v457 = v677;
  v458 = v742;
  (*(*(v673 + 8) + 40))(v322, v742, v314);
  v459 = v737[1];
  (v459)(v322, v314);
  v460 = (v734)(v314, v309);
  v461 = v729;
  if ((v460 & 1) == 0 || (v729)(v314, v309) < 65)
  {
    goto LABEL_131;
  }

  v462 = v734;
  if (((v734)(v314, v309) & 1) == 0)
  {
    v469 = (v462)(v314, v309);
    v461 = v729;
    v470 = (v729)(v314, v309);
    if ((v469 & 1) == 0)
    {
      v309 = v747;
      v458 = v742;
      if (v470 >= 64)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (v470 <= 64)
    {
      v476 = v686;
      v477 = v684;
      v478 = swift_getAssociatedConformanceWitness(v686, v314, v684, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v479 = v685;
      (*(v478 + 8))(&qword_18071E0A8, 256, v477, v478);
      v480 = v732;
      (v476[3])(v479, v314, v476);
      v309 = v747;
      LOBYTE(v477) = (*(*(*(v747 + 32) + 8) + 16))(v457, v480, v314);
      (v459)(v480, v314);
      v458 = v742;
      if ((v477 & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v751 = 0x8000000000000000;
      v309 = v747;
      v743 = *(v747 + 96);
      v473 = lazy protocol witness table accessor for type Int and conformance Int(v470, v471, v472);
      v474 = v732;
      (v743)(&v751, &type metadata for Int, v473, v314, v309);
      v475 = (*(*(*(v309 + 32) + 8) + 16))(v457, v474, v314);
      (v459)(v474, v314);
      v458 = v742;
      if ((v475 & 1) == 0)
      {
        goto LABEL_131;
      }
    }

LABEL_135:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v461 = v729;
  v463 = (v729)(v314, v309);
  v458 = v742;
  if (v463 < 64)
  {
LABEL_130:
    (*(v309 + 120))(v314, v309);
    goto LABEL_131;
  }

  v751 = 0x8000000000000000;
  v743 = *(v309 + 96);
  v466 = lazy protocol witness table accessor for type Int and conformance Int(v463, v464, v465);
  v467 = v732;
  (v743)(&v751, &type metadata for Int, v466, v314, v309);
  v458 = v742;
  v468 = (*(*(*(v309 + 32) + 8) + 16))(v457, v467, v314);
  (v459)(v467, v314);
  if (v468)
  {
    goto LABEL_135;
  }

LABEL_131:
  if (v461(v314, v309) <= 64 && (v461(v314, v309) != 64 || ((v734)(v314, v309) & 1) != 0))
  {
    goto LABEL_141;
  }

  v743 = v459;
  v481 = (v734)(v314, v309);
  v482 = v461(v314, v309);
  if (v481)
  {
    if (v482 >= 65)
    {
      goto LABEL_134;
    }

LABEL_140:
    (*(v309 + 120))(v314, v309);
    v458 = v742;
    v459 = v743;
    goto LABEL_141;
  }

  if (v482 < 64)
  {
    goto LABEL_140;
  }

LABEL_134:
  v751 = 0x7FFFFFFFFFFFFFFFLL;
  v485 = *(v309 + 96);
  v486 = lazy protocol witness table accessor for type Int and conformance Int(v482, v483, v484);
  v487 = v732;
  v485(&v751, &type metadata for Int, v486, v314, v309);
  v488 = (*(*(*(v309 + 32) + 8) + 16))(v487, v457, v314);
  v459 = v743;
  (v743)(v487, v314);
  v458 = v742;
  if (v488)
  {
    goto LABEL_135;
  }

LABEL_141:
  (v459)(v458, v314);
  (v718)(v744, v749);
  (v745)(v746, v145);
  v489 = (*(v309 + 120))(v314, v309);
  (v459)(v457, v314);
  v490 = v736;
  v491 = *(v736 + 17);
  v492 = v739;
  v743 = v736 + 136;
  v493 = v491(v739, v736);
  v370 = v490 + 120;
  v494 = v731;
  v747 = *(v490 + 15);
  (v747)(v492, v490);
  v495 = v750;
  v496 = (*(v723 + 144))(v750);
  v497 = *(v730 + 8);
  v730 += 8;
  v746 = v497;
  (v497)(v494, v495);
  v745 = v489 - (v493 + v496);
  LOBYTE(v496) = (*(v738 + 368))(v492);
  v498 = v671;
  v429 = v701;
  v499 = v670;
  v500 = swift_getAssociatedConformanceWitness(v671, v701, v670, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v501 = *(v500 + 8);
  v742 = v489;
  v744 = v491;
  if (v496)
  {
    v502 = v672;
    v501(&qword_1806729C0, 512, v499, v500);
    v503 = v709;
    v504 = (v498[3])(v502, v429, v498);
    v751 = v489;
    v505 = v696;
    v506 = v696[32];
    v509 = lazy protocol witness table accessor for type Int and conformance Int(v504, v507, v508);
    v506(v503, &v751, &type metadata for Int, v509, v429, v505);
    (*(v707 + 8))(v503, v429);
  }

  else
  {
    v510 = v672;
    v501(&qword_18071E0A8, 256, v499, v500);
    (v498[3])(v510, v429, v498);
    v505 = v696;
  }

  v511 = v723;
  v512 = v745;
  if (v745 < 0)
  {
    v521 = v745;
    v522 = v708;
    v523 = (v747)(v739, v736);
    if (__OFSUB__(0, v521))
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v751 = -v521;
    v526 = *(v511 + 240);
    v527 = lazy protocol witness table accessor for type Int and conformance Int(v523, v524, v525);
    v528 = v731;
    v529 = v750;
    v526(v522, &v751, &type metadata for Int, v527, v750, v511);
    (v746)(v522, v529);
    v520 = v669;
    (v505[11])(v528, v529, v511, v429, v505);
    v428 = v707;
  }

  else
  {
    v513 = v731;
    (v747)(v739, v736);
    v514 = v709;
    v515 = (v505[11])(v513, v750, v511, v429, v505);
    v751 = v512;
    v516 = v505[32];
    v519 = lazy protocol witness table accessor for type Int and conformance Int(v515, v517, v518);
    v520 = v669;
    v516(v514, &v751, &type metadata for Int, v519, v429, v505);
    v428 = v707;
    (*(v707 + 8))(v514, v429);
  }

  v451 = v698;
  v530 = v694;
  (v505[26])(v694, v520, v429, v505);
  v531 = *(v428 + 8);
  v531(v520, v429);
  v531(v530, v429);
LABEL_149:
  v532 = v739;
  v533 = *(v738 + 168);
  v743 = (v738 + 168);
  v741 = v533;
  v534 = v533(v739);
  v535 = v702;
  (*(v699 + 32))(v702, v712, v713);
  v536 = v709;
  (*(v428 + 16))(v709, v451, v429);
  v537 = v704;
  v538 = v536;
  v539 = v749;
  (*(v703 + 56))(v534 & 1, v535, v538, v749);
  v540 = (v744)(v532, v736);
  if (v742 >= v540)
  {
    (*(v428 + 8))(v451, v429);
    (*(v728 + 32))(v714, v537, v539);
    return 1;
  }

  v541 = v720;
  v542 = v750;
  v543 = v719;
  v544 = swift_getAssociatedConformanceWitness(v720, v750, v719, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v545 = *(v544 + 8);
  v546 = v706;
  v744 = (v544 + 8);
  v545(&qword_1806729C0, 512, v543, v544);
  v547 = v541[3];
  v548 = v731;
  v549 = (v547)(v546, v542, v541);
  if (__OFSUB__(0, v745))
  {
    __break(1u);
    goto LABEL_174;
  }

  v751 = -v745;
  v745 = v547;
  v552 = v723;
  v553 = v545;
  v742 = v545;
  v554 = *(v723 + 256);
  v555 = lazy protocol witness table accessor for type Int and conformance Int(v549, v550, v551);
  v554(v548, &v751, &type metadata for Int, v555, v750, v552);
  v735 = v544;
  v737 = v541 + 3;
  v556 = v746;
  (v746)(v548, v750);
  (v747)(v739);
  v557 = v706;
  v553(&qword_1806729C0, 512);
  v558 = v689;
  (v745)(v557, v750, v720);
  v559 = v708;
  (*(*(v667 + 8) + 40))(v705, v558, v750);
  (v556)(v558, v750);
  v560 = v668;
  (*(v552 + 192))(v548, v559, v750, v552);
  (v556)(v559, v750);
  (v556)(v548, v750);
  (v742)(&unk_18071E0B8, 768);
  (v745)(v557, v750, v720);
  v561 = v705;
  v736 = *(v552 + 152);
  (v736)(v705, v559, v750, v552);
  (v556)(v559, v750);
  v562 = *(v552 + 32);
  v563 = v750;
  v564 = *(*(v562 + 8) + 16);
  v747 = *(v562 + 8);
  v565 = v564(v560, v548, v750);
  (v556)(v548, v563);
  if ((v565 & 1) == 0)
  {
    if ((v741)(v739, v738))
    {
      (*(v740 + 328))(v749);
    }

    else
    {
      (*(v740 + 320))(v749);
    }

    v567 = v705;
    v568 = v706;
    (v742)(&unk_18071E0B8, 768);
    v569 = v708;
    (v745)(v568, v563, v720);
    v570 = v731;
    (v736)(v567, v569, v563, v723);
    v571 = v569;
    v572 = v746;
    (v746)(v571, v563);
    (v572)(v567, v563);
    v573 = (*(v747 + 40))(v560, v570, v563);
    (v572)(v570, v563);
    (v572)(v560, v563);
    if (v573)
    {
      v574 = v749;
      (v718)(v704, v749);
      (*(v707 + 8))(v698, v701);
      (*(v728 + 32))(v714, v666, v574);
      return 0;
    }

LABEL_174:
    v638 = v696;
    v639 = v696[18];
    v640 = v698;
    v641 = v701;
    v750 = v639(v701, v696);
    v642 = *(v707 + 8);
    v642(v640, v641);
    v643 = v709;
    v644 = v666;
    v645 = v749;
    (*(v703 + 120))(v749);
    v646 = v639(v641, v638);
    v642(v643, v641);
    if (v646 >= v750)
    {
      v647 = v704;
    }

    else
    {
      v647 = v644;
    }

    if (v646 >= v750)
    {
      v648 = v644;
    }

    else
    {
      v648 = v704;
    }

    (v718)(v647, v645);
    v649 = *(v728 + 32);
    v650 = v657;
    v649(v657, v648, v645);
    v649(v714, v650, v645);
    return 0;
  }

  (v556)(v560, v563);
  (v556)(v561, v563);
  (*(v707 + 8))(v698, v701);
  (*(v728 + 32))(v714, v704, v749);
  return 0;
}

uint64_t static BinaryInteger.> infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v64 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v64, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v57 - v13;
  v61 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v61, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - v16;
  v68 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 + 64);
  v21 = v20(a4, a6);
  if (((v21 ^ (*(a5 + 64))(a3, a5)) & 1) == 0)
  {
    v31 = (*(a6 + 128))(a4, a6);
    if (v31 >= (*(a5 + 128))(a3, a5))
    {
      v40 = v67;
      (*(v68 + 16))(v67, a1, a3);
      v41 = v65;
      (*(a6 + 96))(v40, a3, a5, a4, a6);
      v34 = (*(*(*(a6 + 32) + 8) + 16))(a2, v41, a4);
      v35 = *(v66 + 8);
      v36 = v41;
      v39 = a4;
      goto LABEL_11;
    }

    v32 = v65;
    (*(v66 + 16))(v65, a2, a4);
    v33 = v67;
    (*(a5 + 96))(v32, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v33, a1, a3);
    v35 = *(v68 + 8);
    v36 = v33;
LABEL_9:
    v39 = a3;
LABEL_11:
    v35(v36, v39);
    return v34 & 1;
  }

  v22 = v20(a4, a6);
  v23 = *(a6 + 128);
  v58 = a2;
  v24 = v23(a4, a6);
  v25 = *(a5 + 128);
  v57 = a1;
  v26 = v25(a3, a5);
  if ((v22 & 1) == 0)
  {
    v28 = v66;
    v37 = v67;
    if (v24 >= v26)
    {
      v49 = v63;
      v50 = v64;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v64, a3, v63, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v62;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v49, AssociatedConformanceWitness);
      (v50[3])(v52, a3, v50);
      v53 = v57;
      LOBYTE(v49) = (*(*(*(a5 + 32) + 8) + 40))(v57, v37, a3);
      v54 = v68;
      (*(v68 + 8))(v37, a3);
      v55 = v58;
      if ((v49 & 1) == 0)
      {
        v34 = 0;
        return v34 & 1;
      }

      (*(v54 + 16))(v37, v53, a3);
      v29 = v65;
      (*(a6 + 96))(v37, a3, a5, a4, a6);
      v30 = (*(*(*(a6 + 32) + 8) + 16))(v55, v29, a4);
      goto LABEL_16;
    }

    v38 = v65;
    (*(v66 + 16))(v65, v58, a4);
    (*(a5 + 96))(v38, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v37, v57, a3);
    v35 = *(v68 + 8);
    v36 = v37;
    goto LABEL_9;
  }

  v28 = v66;
  v27 = v67;
  if (v26 < v24)
  {
    (*(v68 + 16))(v67, v57, a3);
    v29 = v65;
    (*(a6 + 96))(v27, a3, a5, a4, a6);
    v30 = (*(*(*(a6 + 32) + 8) + 16))(v58, v29, a4);
LABEL_16:
    v34 = v30;
    (*(v28 + 8))(v29, a4);
    return v34 & 1;
  }

  v42 = v60;
  v43 = v61;
  v44 = swift_getAssociatedConformanceWitness(v61, a4, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v45 = v59;
  (*(v44 + 8))(&qword_18071E0A8, 256, v42, v44);
  v46 = v65;
  (v43[3])(v45, a4, v43);
  v47 = v58;
  LOBYTE(v42) = (*(*(*(a6 + 32) + 8) + 16))(v58, v46, a4);
  (*(v28 + 8))(v46, a4);
  v48 = v68;
  if (v42)
  {
    v34 = 1;
  }

  else
  {
    (*(v28 + 16))(v46, v47, a4);
    (*(a5 + 96))(v46, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v27, v57, a3);
    (*(v48 + 8))(v27, a3);
  }

  return v34 & 1;
}

uint64_t specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(float a1, float a2)
{
  if (*&a2 < *&a1)
  {
    return 1;
  }

  if (LODWORD(a2) >> 15 != LODWORD(a1) >> 15)
  {
    return (SLOWORD(a2) >> 15) & 1;
  }

  v3 = (SLOWORD(a2) >> 10) & 0x1F;
  v4 = (LODWORD(a1) >> 10) & 0x1F;
  if (v4 < v3)
  {
    return (SLOWORD(a2) >> 15) & 1;
  }

  if (v3 < v4)
  {
    return SLOWORD(a2) >= 0;
  }

  if ((LOWORD(a1) & 0x3FFu) < (LOWORD(a2) & 0x3FFu))
  {
    return (SLOWORD(a2) >> 15) & 1;
  }

  return SLOWORD(a2) >= 0 || (LOWORD(a2) & 0x3FFu) >= (LOWORD(a1) & 0x3FFu);
}

{
  if (a2 < a1)
  {
    return 1;
  }

  v3 = LODWORD(a2) >> 31;
  v4 = (LODWORD(a2) >> 23);
  v5 = (LODWORD(a1) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = LODWORD(a1) & 0x7FFFFF;
  v9 = a2 >= 0.0 || v6 >= v7;
  if (v7 < v6)
  {
    v10 = LODWORD(a2) >> 31;
  }

  else
  {
    v10 = v9;
  }

  v11 = a2 >= 0.0;
  if (v4 >= v5)
  {
    v11 = v10;
  }

  if (v5 < v4)
  {
    v11 = LODWORD(a2) >> 31;
  }

  if (v3 == LODWORD(a1) >> 31)
  {
    return v11;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(double a1, double a2)
{
  if (a2 < a1)
  {
    return 1;
  }

  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = (*&a1 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = *&a1 & 0xFFFFFFFFFFFFFLL;
  v8 = a2 >= 0.0 || v5 >= v6;
  if (v6 < v5)
  {
    v8 = *&a2 >> 63;
  }

  if (v3 < v4)
  {
    v8 = a2 >= 0.0;
  }

  if (v4 < v3)
  {
    v8 = *&a2 >> 63;
  }

  if ((*&a2 ^ *&a1) >= 0)
  {
    return v8;
  }

  else
  {
    return *&a2 >> 63;
  }
}

uint64_t BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(uint64_t a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v53 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = v46 - v10;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v46 - v17;
  v19 = *(a3 + 16);
  v20 = *(*(v19 + 24) + 8);
  v21 = *(v20 + 16);
  v56 = v3;
  if (v21(v3, a1, a2, v20))
  {
    goto LABEL_2;
  }

  if ((*(v20 + 40))(a1, v56, a2, v20))
  {
    v22 = 0;
    return v22 & 1;
  }

  v49 = v13;
  v50 = a3;
  v23 = a1;
  v24 = v19;
  v25 = v19 + 168;
  v26 = *(v19 + 168);
  v27 = v26(a2, v24);
  v51 = v23;
  if ((v26(a2, v24) ^ v27))
  {
    v22 = v26(a2, v24);
    return v22 & 1;
  }

  v47 = v24;
  v48 = v26;
  v46[1] = v25;
  v28 = v50;
  v29 = *(v50 + 14);
  v29(a2, v50);
  v46[0] = v29;
  v29(a2, v28);
  v30 = *(*(*(swift_getAssociatedConformanceWitness(v28, a2, v12, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8) + 32) + 8);
  v31 = (*(v30 + 40))(v18, v16, v12);
  v32 = *(v49 + 1);
  v32(v16, v12);
  v49 = v32;
  v32(v18, v12);
  if (v31)
  {
LABEL_7:
    v22 = v48(a2, v47);
    return v22 & 1;
  }

  v33 = v46[0];
  (v46[0])(a2, v28);
  v33(a2, v28);
  v34 = (*(v30 + 16))(v18, v16, v12, v30);
  v35 = v49;
  v49(v16, v12);
  v35(v18, v12);
  if (v34)
  {
    goto LABEL_10;
  }

  v37 = *(v28 + 15);
  v38 = v52;
  v37(a2, v28);
  v39 = v53;
  v37(a2, v28);
  v40 = v55;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, a2, v55, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
  v42 = *(*(*(*(AssociatedConformanceWitness + 8) + 32) + 8) + 40);
  v49 = *(*(*(AssociatedConformanceWitness + 8) + 32) + 8);
  v43 = v42(v38, v39, v40);
  v44 = *(v54 + 8);
  v44(v39, v40);
  v44(v38, v40);
  if (v43)
  {
    goto LABEL_7;
  }

  v37(a2, v28);
  v37(a2, v28);
  v45 = (*(v49 + 2))(v38, v39, v40);
  v44(v39, v40);
  v44(v38, v40);
  if (v45)
  {
LABEL_10:
    v22 = (v48(a2, v47) & 1) == 0;
    return v22 & 1;
  }

LABEL_2:
  v22 = 1;
  return v22 & 1;
}

BOOL _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(void *a1, unint64_t a2, uint64_t a3)
{
  if (!(a3 | a2))
  {
    *a1 = 0;
    return 1;
  }

  v6 = -__PAIR128__(v3, a2) >> 64;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = -a2;
  }

  if (a3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = specialized FixedWidthInteger._binaryLogarithm()(v7, v8);
  if (v9 >= 1024)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:
      result = 0;
      *a1 = 0x7FF0000000000000;
      return result;
    }

    goto LABEL_41;
  }

  v11 = v9 - 53;
  if (v9 < 53)
  {
    if (v8 || v9 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *a1 = (a3 & 0x8000000000000000 | (v9 << 52) | (v7 << (52 - v9)) & 0xFFFFFFFFFFFFFLL) + 0x3FF0000000000000;
    return 1;
  }

  if (v9 <= 0xB4)
  {
    if (v11 > 0x3F)
    {
      if ((v11 & 0x3F) == 0x3F)
      {
        goto LABEL_47;
      }

      v13 = 0;
      v12 = 1 << v11;
    }

    else if (v9 == 53)
    {
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v12 = 1uLL >> (53 - v9);
      v13 = 1 << v11;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(&v15 + 1) = v12;
  *&v15 = v13;
  v14 = v15 >> 63;
  if (!v14 && !(2 * v13))
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = (__PAIR128__(v14, 2 * v13) - 1) >> 64;
  v17 = (2 * v13 - 1) & v7;
  v18 = v16 & v8;
  if (v9 > 0xB3)
  {
    LOBYTE(v19) = 0;
    v20 = 0;
    if (v12 == v18)
    {
      goto LABEL_29;
    }

LABEL_34:
    if (v12 < v18)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (v18 != v12 || v17 != v13 || (v19 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v19 = (v8 << (52 - v9)) | (v7 >> (v9 - 52));
  if ((v9 - 52) >= 0x40)
  {
    v19 = v8 >> (v9 - 52);
  }

  v20 = v19 & 0xFFFFFFFFFFFFFLL;
  if (v12 != v18)
  {
    goto LABEL_34;
  }

LABEL_29:
  if (v13 >= v17)
  {
    goto LABEL_35;
  }

LABEL_38:
  if (v20 < 0xFFFFFFFFFFFFFLL)
  {
    ++v20;
  }

  else
  {
    if (v9 >= 0x3FF)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_41:
      result = 0;
      *a1 = 0xFFF0000000000000;
      return result;
    }

    ++v9;
    v20 = 0x10000000000000;
  }

LABEL_44:
  *a1 = (a3 & 0x8000000000000000 | v20 & 0xFFFFFFFFFFFFFLL | (v9 << 52)) + 0x3FF0000000000000;
  return (v18 | v17) == 0;
}

uint64_t specialized static BinaryFloatingPoint<>._convert<A>(from:)(void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v223 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v223, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v217 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v218 = &v201 - v12;
  v230 = v8;
  v13 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v231 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v232 = &v201 - v15;
  v228 = swift_checkMetadataState(0, v10);
  v229 = *(v228 - 1);
  v16 = MEMORY[0x1EEE9AC00](v228 - 8);
  v220 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v221 = &v201 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v214 = &v201 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v215 = &v201 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v226 = &v201 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v222 = &v201 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v227 = &v201 - v29;
  v30 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a4 + 64);
  v34 = v33(a3, a4);
  v213 = v13;
  v224 = v33;
  v225 = a4 + 64;
  if (v34)
  {
    v219 = *(a4 + 128);
    v35 = v219(a3, a4);
    if (v35 >= 64)
    {
LABEL_15:
      v233 = 0;
      v52 = *(a4 + 96);
      v53 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
      v52(&v233, &type metadata for Int, v53, a3, a4);
      v54 = (*(*(*(a4 + 16) + 8) + 8))(a2, v32, a3);
      (*(v30 + 8))(v32, a3);
      if (v54)
      {
        goto LABEL_16;
      }

LABEL_7:
      v42 = v227;
      v230[7](a3);
      v43 = v228;
      v44 = swift_getAssociatedConformanceWitness(a4, a3, v228, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v45 = (*(v44 + 136))(v43, v44);
      if (v45 >= 1024)
      {
        v46 = a1;
        (*(v229 + 8))(v42, v43);
        v47 = v224;
        if ((v224(a3, a4) & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v47(a3, a4))
        {
          v48 = v219(a3, a4);
          if (v48 >= 64)
          {
            v233 = 0;
            v51 = v32;
            goto LABEL_31;
          }
        }

        else
        {
          v51 = v32;
          v109 = v47(a3, a4);
          v48 = v219(a3, a4);
          if (v109)
          {
            if (v48 > 64)
            {
              v233 = 0;
LABEL_31:
              v110 = *(a4 + 96);
              v111 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
              v110(&v233, &type metadata for Int, v111, a3, a4);
              v112 = (*(*(*(a4 + 32) + 8) + 16))(a2, v51, a3);
              (*(v30 + 8))(v51, a3);
              if (v112)
              {
                goto LABEL_60;
              }

LABEL_59:
              v55 = 0;
              *v46 = 0x7FF0000000000000;
              return v55 & 1;
            }

            v130 = v213;
            v131 = v231;
            v132 = swift_getAssociatedConformanceWitness(v213, a3, v231, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v133 = v232;
            (*(v132 + 8))(&qword_18071E0A8, 256, v131, v132);
            v130[3](v133, a3, v130);
            LOBYTE(v130) = (*(*(*(a4 + 32) + 8) + 16))(a2, v51, a3);
            (*(v30 + 8))(v51, a3);
            if (v130)
            {
LABEL_60:
              v55 = 0;
              *v46 = 0xFFF0000000000000;
              return v55 & 1;
            }
          }

          else if (v48 >= 64)
          {
            goto LABEL_59;
          }
        }

        if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v203 = v32;
      v204 = v30;
      v211 = a1;
      v210 = a2;
      v212 = v45;
      if (v45 >= 53)
      {
        v57 = v45;
        v58 = v223;
        v59 = v217;
        v60 = v45 - 53;
        v220 = swift_getAssociatedConformanceWitness(v223, v43, v217, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v208 = *(v220 + 1);
        v209 = v220 + 8;
        v61 = v218;
        v208(&qword_1806729C0, 512, v59, v220);
        v62 = v58;
        v63 = v58[3];
        v207 = v58 + 3;
        v206 = v63;
        v64 = v226;
        v65 = (v63)(v61, v43, v62);
        v202 = v57 - 52;
        v233 = v60;
        v201 = v44 + 256;
        v66 = *(v44 + 256);
        v205 = lazy protocol witness table accessor for type Int and conformance Int(v65, v67, v68);
        v66(v64, &v233, &type metadata for Int, v205, v43, v44);
        v229 = *(v229 + 8);
        (v229)(v64, v43);
        v208(qword_18071E0B8, 768, v59, v220);
        v69 = v214;
        v70 = v61;
        (v206)(v61, v43, v223);
        v71 = AssociatedConformanceWitness;
        (*(AssociatedConformanceWitness + 64))(v69, v222, v43, AssociatedConformanceWitness);
        (v229)(v69, v43);
        v208(&qword_1806729C0, 512, v59, v220);
        (v206)(v70, v43, v223);
        v72 = v215;
        v73 = v226;
        (*(*(v71 + 8) + 40))(v226, v69, v43);
        v74 = v229;
        (v229)(v69, v43);
        v74(v73, v43);
        v75 = v227;
        (*(v44 + 192))(v227, v72, v43, v44);
        v74(v72, v43);
        v233 = v202;
        (*(v44 + 240))(v75, &v233, &type metadata for Int, v205, v43, v44);
        v74(v75, v43);
        v76 = *(v44 + 120);
        v227 = v44;
        v214 = v76;
        v215 = (v44 + 120);
        v77 = (v76)(v43, v44);
        v78 = v74;
        v74(v73, v43);
        v79 = v221;
        AssociatedConformanceWitness = v77 & 0xFFFFFFFFFFFFFLL;
        v80 = swift_getAssociatedConformanceWitness(v230, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v81 = v222;
        v82 = (*(v80 + 40))(v79);
        v230 = v80;
        if (v82)
        {
          v78(v81, v43);
          v83 = v212;
          v84 = v78;
          v85 = AssociatedConformanceWitness;
        }

        else
        {
          v113 = (*(*(v80 + 8) + 8))(v79, v81, v43);
          v78(v81, v43);
          if ((v113 & 1) == 0)
          {
            v114 = v228;
            v85 = AssociatedConformanceWitness;
            goto LABEL_50;
          }

          v84 = v78;
          v83 = v212;
          v85 = AssociatedConformanceWitness;
          if ((v77 & 1) == 0)
          {
            v114 = v228;
            goto LABEL_50;
          }
        }

        v114 = v228;
        if (v85 == 0xFFFFFFFFFFFFFLL)
        {
          if (v83 >= 0x3FF)
          {
            v84(v221, v228);
            v115 = v224;
            v116 = v224(a3, a4);
            v117 = v211;
            if (v116)
            {
              if (v115(a3, a4))
              {
                v118 = v210;
                if (v219(a3, a4) < 64)
                {
                  goto LABEL_116;
                }

                v233 = 0;
                v195 = v203;
                (*(a4 + 96))(&v233, &type metadata for Int, v205, a3, a4);
                v193 = (*(*(*(a4 + 32) + 8) + 16))(v118, v195, a3);
                (*(v204 + 8))(v195, a3);
              }

              else
              {
                v189 = v115(a3, a4);
                v190 = v210;
                v191 = v219(a3, a4);
                if ((v189 & 1) == 0)
                {
                  if (v191 >= 64)
                  {
                    goto LABEL_117;
                  }

LABEL_116:
                  if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_117;
                  }

LABEL_118:
                  v55 = 0;
                  *v117 = 0xFFF0000000000000;
                  return v55 & 1;
                }

                if (v191 <= 64)
                {
                  v196 = v213;
                  v197 = v231;
                  v198 = swift_getAssociatedConformanceWitness(v213, a3, v231, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v199 = v232;
                  (*(v198 + 8))(&qword_18071E0A8, 256, v197, v198);
                  v200 = v203;
                  v196[3](v199, a3, v196);
                  LOBYTE(v196) = (*(*(*(a4 + 32) + 8) + 16))(v190, v200, a3);
                  (*(v204 + 8))(v200, a3);
                  if (v196)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_116;
                }

                v233 = 0;
                v192 = v203;
                (*(a4 + 96))(&v233, &type metadata for Int, v205, a3, a4);
                v193 = (*(*(*(a4 + 32) + 8) + 16))(v190, v192, a3);
                (*(v204 + 8))(v192, a3);
              }

              if (v193)
              {
                goto LABEL_118;
              }
            }

LABEL_117:
            v55 = 0;
            *v117 = 0x7FF0000000000000;
            return v55 & 1;
          }

          v212 = v83 + 1;
          v85 = 0x10000000000000;
        }

        else
        {
          ++v85;
        }

LABEL_50:
        v124 = v224;
        if ((v224(a3, a4) & 1) == 0)
        {
          goto LABEL_69;
        }

        if (v124(a3, a4))
        {
          v125 = v210;
          if (v219(a3, a4) < 64)
          {
LABEL_68:
            if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_109;
          }

          v233 = 0;
          v140 = v203;
          (*(a4 + 96))(&v233, &type metadata for Int, v205, a3, a4);
          v129 = (*(*(*(a4 + 32) + 8) + 16))(v125, v140, a3);
          v141 = v140;
          v114 = v228;
          (*(v204 + 8))(v141, a3);
        }

        else
        {
          v126 = v124(a3, a4);
          v127 = v219(a3, a4);
          if ((v126 & 1) == 0)
          {
            if (v127 < 64)
            {
              goto LABEL_68;
            }

            goto LABEL_69;
          }

          if (v127 <= 64)
          {
            v184 = v213;
            v185 = v231;
            v186 = swift_getAssociatedConformanceWitness(v213, a3, v231, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v187 = v232;
            (*(v186 + 8))(&qword_18071E0A8, 256, v185, v186);
            v188 = v203;
            (*(v184 + 3))(v187, a3, v184);
            LOBYTE(v185) = (*(*(*(a4 + 32) + 8) + 16))(v210, v188, a3);
            (*(v204 + 8))(v188, a3);
            if (v185)
            {
              v142 = 0x8000000000000000;
              v114 = v228;
              goto LABEL_70;
            }

            v194 = (*(a4 + 120))(a3, a4);
            v114 = v228;
            if ((v194 & 0x8000000000000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_109:
            v142 = 0x8000000000000000;
LABEL_70:
            *v211 = (v85 & 0xFFFFFFFFFFFFFLL | (v212 << 52)) + v142 + 0x3FF0000000000000;
            v143 = v227;
            v144 = *(v227 + 8);
            v145 = v144(v114, v227);
            v146 = v221;
            if (v145)
            {
              if ((*(v143 + 16))(v114, v143) < 64)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v147 = v144(v114, v143);
              v148 = (*(v143 + 16))(v114, v143);
              if ((v147 & 1) == 0)
              {
                v151 = v230;
                if (v148 < 64)
                {
LABEL_78:
                  v152 = (v214)(v114, v143);
                  (v229)(v146, v114);
LABEL_79:
                  v55 = v152 == 0;
                  return v55 & 1;
                }

                v233 = 0;
                v149 = v226;
                (*(v143 + 12))(&v233, &type metadata for Int, v205, v114, v143);
                v150 = *(v151 + 1);
LABEL_82:
                v55 = (*(v150 + 1))(v146, v149, v114);
                v158 = v229;
                (v229)(v149, v114);
                v158(v146, v114);
                return v55 & 1;
              }

              if (v148 <= 64)
              {
                v153 = v218;
                (v208)(&qword_18071E0A8, 256);
                v154 = v226;
                (v206)(v153, v114, v223);
                v155 = (v230[4])(v146, v154, v114);
                v156 = v154;
                v157 = v229;
                (v229)(v156, v114);
                if ((v155 & 1) == 0)
                {
                  v157(v146, v114);
                  v55 = 0;
                  return v55 & 1;
                }

                v152 = (v214)(v114, v143);
                v157(v146, v114);
                goto LABEL_79;
              }
            }

            v233 = 0;
            v149 = v226;
            (*(v143 + 12))(&v233, &type metadata for Int, v205, v114, v143);
            v150 = v230[1];
            goto LABEL_82;
          }

          v233 = 0;
          v128 = v203;
          (*(a4 + 96))(&v233, &type metadata for Int, v205, a3, a4);
          v129 = (*(*(*(a4 + 32) + 8) + 16))(v210, v128, a3);
          (*(v204 + 8))(v128, a3);
        }

        if (v129)
        {
          goto LABEL_109;
        }

LABEL_69:
        v142 = 0;
        goto LABEL_70;
      }

      v86 = v220;
      (*(v229 + 32))(v220, v42, v43);
      v87 = *(v44 + 64);
      if (v87(v43, v44))
      {
        v88 = v223;
        v89 = v217;
        v90 = swift_getAssociatedConformanceWitness(v223, v43, v217, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v91 = v44;
        v92 = v218;
        (*(v90 + 8))(&qword_18071E0A8, 256, v89, v90);
        v93 = v226;
        v94 = v92;
        v44 = v91;
        v86 = v220;
        (v88[3])(v94, v43, v88);
        v95 = swift_getAssociatedConformanceWitness(v230, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        LOBYTE(v88) = (*(v95 + 32))(v86, v93, v43, v95);
        (*(v229 + 8))(v93, v43);
        if ((v88 & 1) == 0)
        {
LABEL_119:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v96 = v44;
      v97 = *(v44 + 128);
      if (v97(v43, v96) <= 63)
      {
LABEL_84:
        v159 = v96[15](v43, v96);
        (*(v229 + 8))(v86, v43);
        v160 = v224;
        v161 = v224(a3, a4);
        v162 = v211;
        if ((v161 & 1) == 0)
        {
          goto LABEL_98;
        }

        if (v160(a3, a4))
        {
          v163 = v210;
          v164 = v219(a3, a4);
          if (v164 < 64)
          {
            goto LABEL_97;
          }

          v233 = 0;
          v175 = *(a4 + 96);
          v176 = lazy protocol witness table accessor for type Int and conformance Int(v164, v165, v166);
          v177 = v203;
          v175(&v233, &type metadata for Int, v176, a3, a4);
          v174 = (*(*(*(a4 + 32) + 8) + 16))(v163, v177, a3);
          (*(v204 + 8))(v177, a3);
        }

        else
        {
          v167 = v160(a3, a4);
          v168 = v219(a3, a4);
          if ((v167 & 1) == 0)
          {
            if (v168 < 64)
            {
LABEL_97:
              if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
              {
                goto LABEL_98;
              }

LABEL_99:
              v183 = 0x8000000000000000;
LABEL_100:
              if ((v212 & 0x8000000000000000) == 0)
              {
                *v162 = ((v159 << (52 - v212)) & 0xFFFFFFFFFFFFFLL | (v212 << 52)) + v183 + 0x3FF0000000000000;
                goto LABEL_17;
              }

              goto LABEL_119;
            }

LABEL_98:
            v183 = 0;
            goto LABEL_100;
          }

          if (v168 <= 64)
          {
            v178 = v213;
            v179 = v231;
            v180 = swift_getAssociatedConformanceWitness(v213, a3, v231, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v181 = v232;
            (*(v180 + 8))(&qword_18071E0A8, 256, v179, v180);
            v182 = v203;
            (*(v178 + 3))(v181, a3, v178);
            LOBYTE(v179) = (*(*(*(a4 + 32) + 8) + 16))(v210, v182, a3);
            (*(v204 + 8))(v182, a3);
            if (v179)
            {
              goto LABEL_99;
            }

            goto LABEL_97;
          }

          v233 = 0;
          v171 = *(a4 + 96);
          v172 = lazy protocol witness table accessor for type Int and conformance Int(v168, v169, v170);
          v173 = v203;
          v171(&v233, &type metadata for Int, v172, a3, a4);
          v174 = (*(*(*(a4 + 32) + 8) + 16))(v210, v173, a3);
          (*(v204 + 8))(v173, a3);
        }

        if (v174)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      v233 = -1;
      v98 = v87(v43, v96);
      v227 = v96;
      v99 = v97(v43, v96);
      if (v98)
      {
        if (v99 > 64)
        {
          v96 = v227;
          v102 = *(v227 + 12);
          v103 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v99, v100, v101);
          v104 = v226;
          v102(&v233, &type metadata for UInt64, v103, v43, v96);
          v105 = swift_getAssociatedConformanceWitness(v230, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v106 = v220;
          v107 = (*(v105 + 16))(v104, v220, v43, v105);
          v108 = v104;
          v86 = v106;
          (*(v229 + 8))(v108, v43);
          goto LABEL_46;
        }

        v134 = v223;
        v135 = v217;
        v136 = swift_getAssociatedConformanceWitness(v223, v43, v217, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v137 = v218;
        (*(v136 + 8))(&qword_18071E0A8, 256, v135, v136);
        v138 = v226;
        (v134[3])(v137, v43, v134);
        v139 = swift_getAssociatedConformanceWitness(v230, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v86 = v220;
        LOBYTE(v134) = (*(v139 + 40))(v220, v138, v43, v139);
        (*(v229 + 8))(v138, v43);
        if ((v134 & 1) == 0)
        {
          v96 = v227;
          goto LABEL_84;
        }
      }

      else if (v99 > 64)
      {
        v96 = v227;
        v119 = *(v227 + 12);
        v120 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v99, v100, v101);
        v121 = v226;
        v119(&v233, &type metadata for UInt64, v120, v43, v96);
        v122 = swift_getAssociatedConformanceWitness(v230, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v107 = (*(v122 + 16))(v121, v220, v43, v122);
        v123 = v121;
        v86 = v220;
        (*(v229 + 8))(v123, v43);
LABEL_46:
        if (v107)
        {
          goto LABEL_119;
        }

        goto LABEL_84;
      }

      v96 = v227;
      (*(v227 + 15))(v43, v227);
      goto LABEL_84;
    }
  }

  else
  {
    v38 = v33(a3, a4);
    v219 = *(a4 + 128);
    v35 = v219(a3, a4);
    if (v38)
    {
      if (v35 > 64)
      {
        goto LABEL_15;
      }

      v39 = v231;
      v40 = swift_getAssociatedConformanceWitness(v13, a3, v231, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v41 = v232;
      (*(v40 + 8))(&qword_18071E0A8, 256, v39, v40);
      (*(v13 + 24))(v41, a3, v13);
      LOBYTE(v39) = (*(*(*(a4 + 32) + 8) + 32))(a2, v32, a3);
      (*(v30 + 8))(v32, a3);
      if ((v39 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v35 >= 64)
    {
      goto LABEL_15;
    }
  }

  if ((*(a4 + 120))(a3, a4))
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = 0;
LABEL_17:
  v55 = 1;
  return v55 & 1;
}

uint64_t specialized static BinaryFloatingPoint<>._convert<A>(from:)(_DWORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v222 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v222, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v216 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v217 = &v200 - v12;
  v229 = v8;
  v13 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v230 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v231 = &v200 - v15;
  v227 = swift_checkMetadataState(0, v10);
  v228 = *(v227 - 1);
  v16 = MEMORY[0x1EEE9AC00](v227 - 8);
  v219 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v220 = &v200 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v213 = &v200 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v214 = &v200 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v225 = &v200 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v221 = &v200 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v226 = &v200 - v29;
  v30 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a4 + 64);
  v34 = v33(a3, a4);
  v212 = v13;
  v223 = v33;
  v224 = a4 + 64;
  if (v34)
  {
    v218 = *(a4 + 128);
    v35 = v218(a3, a4);
    if (v35 >= 64)
    {
LABEL_15:
      v232 = 0;
      v52 = *(a4 + 96);
      v53 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
      v52(&v232, &type metadata for Int, v53, a3, a4);
      v54 = (*(*(*(a4 + 16) + 8) + 8))(a2, v32, a3);
      (*(v30 + 8))(v32, a3);
      if (v54)
      {
        goto LABEL_16;
      }

LABEL_7:
      v42 = v226;
      v229[7](a3);
      v43 = v227;
      v44 = swift_getAssociatedConformanceWitness(a4, a3, v227, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v45 = (*(v44 + 136))(v43, v44);
      if (v45 >= 128)
      {
        v46 = a1;
        (*(v228 + 8))(v42, v43);
        v47 = v223;
        if ((v223(a3, a4) & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v47(a3, a4))
        {
          v48 = v218(a3, a4);
          if (v48 >= 64)
          {
            v232 = 0;
            v51 = v32;
            goto LABEL_31;
          }
        }

        else
        {
          v51 = v32;
          v112 = v47(a3, a4);
          v48 = v218(a3, a4);
          if (v112)
          {
            if (v48 > 64)
            {
              v232 = 0;
LABEL_31:
              v113 = *(a4 + 96);
              v114 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
              v113(&v232, &type metadata for Int, v114, a3, a4);
              v115 = (*(*(*(a4 + 32) + 8) + 16))(a2, v51, a3);
              (*(v30 + 8))(v51, a3);
              if (v115)
              {
                goto LABEL_60;
              }

LABEL_59:
              v55 = 0;
              *v46 = 2139095040;
              return v55 & 1;
            }

            v133 = v212;
            v134 = v230;
            v135 = swift_getAssociatedConformanceWitness(v212, a3, v230, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v136 = v231;
            (*(v135 + 8))(&qword_18071E0A8, 256, v134, v135);
            v133[3](v136, a3, v133);
            LOBYTE(v133) = (*(*(*(a4 + 32) + 8) + 16))(a2, v51, a3);
            (*(v30 + 8))(v51, a3);
            if (v133)
            {
LABEL_60:
              v55 = 0;
              *v46 = -8388608;
              return v55 & 1;
            }
          }

          else if (v48 >= 64)
          {
            goto LABEL_59;
          }
        }

        if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v202 = v32;
      v203 = v30;
      v210 = a1;
      v209 = a2;
      v211 = v45;
      if (v45 >= 24)
      {
        v57 = v45;
        v58 = v222;
        v59 = v216;
        v60 = v45 - 24;
        v219 = swift_getAssociatedConformanceWitness(v222, v43, v216, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v207 = *(v219 + 1);
        v208 = v219 + 8;
        v61 = v217;
        v207(&qword_1806729C0, 512, v59, v219);
        v62 = v58;
        v63 = v58[3];
        v206 = v58 + 3;
        v205 = v63;
        v64 = v225;
        v65 = (v63)(v61, v43, v62);
        v201 = v57 - 23;
        v232 = v60;
        v200 = v44 + 256;
        v66 = *(v44 + 256);
        v204 = lazy protocol witness table accessor for type Int and conformance Int(v65, v67, v68);
        v66(v64, &v232, &type metadata for Int, v204, v43, v44);
        v228 = *(v228 + 8);
        (v228)(v64, v43);
        v207(qword_18071E0B8, 768, v59, v219);
        v69 = v213;
        v70 = v61;
        (v205)(v61, v43, v222);
        v71 = AssociatedConformanceWitness;
        (*(AssociatedConformanceWitness + 64))(v69, v221, v43, AssociatedConformanceWitness);
        (v228)(v69, v43);
        v207(&qword_1806729C0, 512, v59, v219);
        (v205)(v70, v43, v222);
        v72 = v214;
        v73 = v225;
        (*(*(v71 + 8) + 40))(v225, v69, v43);
        v74 = v69;
        v75 = v228;
        (v228)(v74, v43);
        v75(v73, v43);
        v76 = v226;
        (*(v44 + 192))(v226, v72, v43, v44);
        v75(v72, v43);
        v232 = v201;
        v77 = v76;
        v78 = v76;
        v79 = v221;
        (*(v44 + 240))(v78, &v232, &type metadata for Int, v204, v43, v44);
        v75(v77, v43);
        v80 = *(v44 + 120);
        v226 = v44;
        v214 = v80;
        AssociatedConformanceWitness = v44 + 120;
        v81 = (v80)(v43, v44);
        v82 = v73;
        v83 = v75;
        v75(v82, v43);
        v84 = v220;
        v85 = v81 & 0x7FFFFF;
        v86 = swift_getAssociatedConformanceWitness(v229, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v87 = *(v86 + 5);
        v229 = v86;
        if (v87(v84, v79, v43))
        {
          v83(v79, v43);
          v88 = v211;
        }

        else
        {
          v116 = (*(v229[1] + 1))(v84, v79, v43);
          v83(v79, v43);
          if ((v116 & 1) == 0 || (v88 = v211, (v81 & 1) == 0))
          {
            v117 = v227;
            goto LABEL_50;
          }
        }

        v117 = v227;
        if (v85 == 0x7FFFFF)
        {
          if (v88 >= 0x7F)
          {
            v83(v220, v227);
            v118 = v223;
            v119 = v223(a3, a4);
            v120 = v210;
            if (v119)
            {
              if (v118(a3, a4))
              {
                v121 = v209;
                if (v218(a3, a4) < 64)
                {
                  goto LABEL_111;
                }

                v232 = 0;
                v194 = v202;
                (*(a4 + 96))(&v232, &type metadata for Int, v204, a3, a4);
                v193 = (*(*(*(a4 + 32) + 8) + 16))(v121, v194, a3);
                (*(v203 + 8))(v194, a3);
              }

              else
              {
                v189 = v118(a3, a4);
                v190 = v209;
                v191 = v218(a3, a4);
                if ((v189 & 1) == 0)
                {
                  if (v191 >= 64)
                  {
                    goto LABEL_112;
                  }

LABEL_111:
                  if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_112;
                  }

LABEL_113:
                  v55 = 0;
                  *v120 = -8388608;
                  return v55 & 1;
                }

                if (v191 <= 64)
                {
                  v195 = v212;
                  v196 = v230;
                  v197 = swift_getAssociatedConformanceWitness(v212, a3, v230, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v198 = v231;
                  (*(v197 + 8))(&qword_18071E0A8, 256, v196, v197);
                  v199 = v202;
                  v195[3](v198, a3, v195);
                  LOBYTE(v195) = (*(*(*(a4 + 32) + 8) + 16))(v190, v199, a3);
                  (*(v203 + 8))(v199, a3);
                  if (v195)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_111;
                }

                v232 = 0;
                v192 = v202;
                (*(a4 + 96))(&v232, &type metadata for Int, v204, a3, a4);
                v193 = (*(*(*(a4 + 32) + 8) + 16))(v190, v192, a3);
                (*(v203 + 8))(v192, a3);
              }

              if (v193)
              {
                goto LABEL_113;
              }
            }

LABEL_112:
            v55 = 0;
            *v120 = 2139095040;
            return v55 & 1;
          }

          v211 = v88 + 1;
          v85 = 0x800000;
        }

        else
        {
          ++v85;
        }

LABEL_50:
        v127 = v223;
        if ((v223(a3, a4) & 1) == 0)
        {
          goto LABEL_68;
        }

        if (v127(a3, a4))
        {
          v128 = v209;
          if (v218(a3, a4) < 64)
          {
LABEL_67:
            if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
            {
              goto LABEL_68;
            }

LABEL_89:
            v144 = 0x80000000;
LABEL_90:
            *v210 = (v85 & 0x7FFFFF | (v211 << 23)) + v144 + 1065353216;
            v175 = v226;
            v176 = *(v226 + 8);
            v177 = v176(v117, v226);
            v178 = v220;
            if (v177)
            {
              if ((*(v175 + 16))(v117, v175) >= 64)
              {
                goto LABEL_100;
              }

              goto LABEL_98;
            }

            v179 = v176(v117, v175);
            v180 = (*(v175 + 16))(v117, v175);
            if (v179)
            {
              if (v180 <= 64)
              {
                v181 = v217;
                (v207)(&qword_18071E0A8, 256);
                v182 = v225;
                (v205)(v181, v117, v222);
                v183 = (v229[4])(v178, v182, v117);
                v184 = v182;
                v185 = v228;
                (v228)(v184, v117);
                if ((v183 & 1) == 0)
                {
                  v185(v178, v117);
                  v55 = 0;
                  return v55 & 1;
                }

                v186 = (v214)(v117, v175);
                v185(v178, v117);
                goto LABEL_99;
              }
            }

            else if (v180 < 64)
            {
LABEL_98:
              v186 = (v214)(v117, v175);
              (v228)(v178, v117);
LABEL_99:
              v55 = v186 == 0;
              return v55 & 1;
            }

LABEL_100:
            v232 = 0;
            v187 = v225;
            (*(v175 + 12))(&v232, &type metadata for Int, v204, v117, v175);
            v55 = (*(v229[1] + 1))(v178, v187, v117);
            v188 = v228;
            (v228)(v187, v117);
            v188(v178, v117);
            return v55 & 1;
          }

          v232 = 0;
          v143 = v202;
          (*(a4 + 96))(&v232, &type metadata for Int, v204, a3, a4);
          v132 = (*(*(*(a4 + 32) + 8) + 16))(v128, v143, a3);
          v117 = v227;
          (*(v203 + 8))(v143, a3);
        }

        else
        {
          v129 = v127(a3, a4);
          v130 = v218(a3, a4);
          if ((v129 & 1) == 0)
          {
            if (v130 < 64)
            {
              goto LABEL_67;
            }

LABEL_68:
            v144 = 0;
            goto LABEL_90;
          }

          if (v130 <= 64)
          {
            v170 = v212;
            v171 = v230;
            v172 = swift_getAssociatedConformanceWitness(v212, a3, v230, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v173 = v231;
            (*(v172 + 8))(&qword_18071E0A8, 256, v171, v172);
            v174 = v202;
            (*(v170 + 3))(v173, a3, v170);
            LOBYTE(v171) = (*(*(*(a4 + 32) + 8) + 16))(v209, v174, a3);
            v117 = v227;
            (*(v203 + 8))(v174, a3);
            if (v171)
            {
              goto LABEL_89;
            }

            goto LABEL_67;
          }

          v232 = 0;
          v131 = v202;
          (*(a4 + 96))(&v232, &type metadata for Int, v204, a3, a4);
          v132 = (*(*(*(a4 + 32) + 8) + 16))(v209, v131, a3);
          (*(v203 + 8))(v131, a3);
        }

        if (v132)
        {
          goto LABEL_89;
        }

        goto LABEL_68;
      }

      v89 = v219;
      (*(v228 + 32))(v219, v42, v43);
      v90 = *(v44 + 64);
      if (v90(v43, v44))
      {
        v91 = v222;
        v92 = v216;
        v93 = swift_getAssociatedConformanceWitness(v222, v43, v216, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v94 = v44;
        v95 = v217;
        (*(v93 + 8))(&qword_18071E0A8, 256, v92, v93);
        v96 = v225;
        v97 = v95;
        v44 = v94;
        v89 = v219;
        (v91[3])(v97, v43, v91);
        v98 = swift_getAssociatedConformanceWitness(v229, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        LOBYTE(v91) = (*(v98 + 32))(v89, v96, v43, v98);
        (*(v228 + 8))(v96, v43);
        if ((v91 & 1) == 0)
        {
LABEL_114:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v99 = v44;
      v100 = *(v44 + 128);
      if (v100(v43, v99) <= 31)
      {
LABEL_70:
        v145 = v99[15](v43, v99);
        (*(v228 + 8))(v89, v43);
        v146 = v223;
        v147 = v223(a3, a4);
        v148 = v210;
        if ((v147 & 1) == 0)
        {
          goto LABEL_84;
        }

        if (v146(a3, a4))
        {
          v149 = v209;
          v150 = v218(a3, a4);
          if (v150 < 64)
          {
            goto LABEL_83;
          }

          v232 = 0;
          v161 = *(a4 + 96);
          v162 = lazy protocol witness table accessor for type Int and conformance Int(v150, v151, v152);
          v163 = v202;
          v161(&v232, &type metadata for Int, v162, a3, a4);
          v160 = (*(*(*(a4 + 32) + 8) + 16))(v149, v163, a3);
          (*(v203 + 8))(v163, a3);
        }

        else
        {
          v153 = v146(a3, a4);
          v154 = v218(a3, a4);
          if ((v153 & 1) == 0)
          {
            if (v154 < 64)
            {
LABEL_83:
              if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
              {
                goto LABEL_84;
              }

LABEL_85:
              v169 = 0x80000000;
LABEL_86:
              if ((v211 & 0x8000000000000000) == 0)
              {
                *v148 = ((v211 << 23) + 1065353216) & 0x7F800000 | (v145 << (23 - v211)) & 0x7FFFFF | v169;
                goto LABEL_17;
              }

              goto LABEL_114;
            }

LABEL_84:
            v169 = 0;
            goto LABEL_86;
          }

          if (v154 <= 64)
          {
            v164 = v212;
            v165 = v230;
            v166 = swift_getAssociatedConformanceWitness(v212, a3, v230, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v167 = v231;
            (*(v166 + 8))(&qword_18071E0A8, 256, v165, v166);
            v168 = v202;
            (*(v164 + 3))(v167, a3, v164);
            LOBYTE(v165) = (*(*(*(a4 + 32) + 8) + 16))(v209, v168, a3);
            (*(v203 + 8))(v168, a3);
            if (v165)
            {
              goto LABEL_85;
            }

            goto LABEL_83;
          }

          v232 = 0;
          v157 = *(a4 + 96);
          v158 = lazy protocol witness table accessor for type Int and conformance Int(v154, v155, v156);
          v159 = v202;
          v157(&v232, &type metadata for Int, v158, a3, a4);
          v160 = (*(*(*(a4 + 32) + 8) + 16))(v209, v159, a3);
          (*(v203 + 8))(v159, a3);
        }

        if (v160)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      LODWORD(v232) = -1;
      v101 = v90(v43, v99);
      v226 = v99;
      v102 = v100(v43, v99);
      if (v101)
      {
        if (v102 > 32)
        {
          v99 = v226;
          v105 = *(v226 + 12);
          v106 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v102, v103, v104);
          v107 = v225;
          v105(&v232, &type metadata for UInt32, v106, v43, v99);
          v108 = swift_getAssociatedConformanceWitness(v229, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v109 = v219;
          v110 = (*(v108 + 16))(v107, v219, v43, v108);
          v111 = v107;
          v89 = v109;
          (*(v228 + 8))(v111, v43);
          goto LABEL_47;
        }

        v137 = v222;
        v138 = v216;
        v139 = swift_getAssociatedConformanceWitness(v222, v43, v216, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v140 = v217;
        (*(v139 + 8))(&qword_18071E0A8, 256, v138, v139);
        v141 = v225;
        (v137[3])(v140, v43, v137);
        v142 = swift_getAssociatedConformanceWitness(v229, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v89 = v219;
        LOBYTE(v137) = (*(v142 + 40))(v219, v141, v43, v142);
        (*(v228 + 8))(v141, v43);
        if ((v137 & 1) == 0)
        {
          v99 = v226;
          goto LABEL_70;
        }
      }

      else if (v102 > 32)
      {
        v99 = v226;
        v122 = *(v226 + 12);
        v123 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v102, v103, v104);
        v124 = v225;
        v122(&v232, &type metadata for UInt32, v123, v43, v99);
        v125 = swift_getAssociatedConformanceWitness(v229, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v110 = (*(v125 + 16))(v124, v219, v43, v125);
        v126 = v124;
        v89 = v219;
        (*(v228 + 8))(v126, v43);
LABEL_47:
        if (v110)
        {
          goto LABEL_114;
        }

        goto LABEL_70;
      }

      v99 = v226;
      (*(v226 + 15))(v43, v226);
      goto LABEL_70;
    }
  }

  else
  {
    v38 = v33(a3, a4);
    v218 = *(a4 + 128);
    v35 = v218(a3, a4);
    if (v38)
    {
      if (v35 > 64)
      {
        goto LABEL_15;
      }

      v39 = v230;
      v40 = swift_getAssociatedConformanceWitness(v13, a3, v230, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v41 = v231;
      (*(v40 + 8))(&qword_18071E0A8, 256, v39, v40);
      (*(v13 + 24))(v41, a3, v13);
      LOBYTE(v39) = (*(*(*(a4 + 32) + 8) + 32))(a2, v32, a3);
      (*(v30 + 8))(v32, a3);
      if ((v39 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v35 >= 64)
    {
      goto LABEL_15;
    }
  }

  if ((*(a4 + 120))(a3, a4))
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = 0;
LABEL_17:
  v55 = 1;
  return v55 & 1;
}

uint64_t specialized static BinaryFloatingPoint<>._convert<A>(from:)(__int16 *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v221 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v221, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v215 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v216 = &v199 - v12;
  v228 = v8;
  v13 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v229 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v199 - v15;
  v226 = swift_checkMetadataState(0, v10);
  v227 = *(v226 - 1);
  v16 = MEMORY[0x1EEE9AC00](v226 - 8);
  v218 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v219 = &v199 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v212 = &v199 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v213 = &v199 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v224 = &v199 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v220 = &v199 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v225 = &v199 - v29;
  v30 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v199 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a4 + 64);
  v34 = v33(a3, a4);
  v211 = v13;
  v222 = v33;
  v223 = a4 + 64;
  if (v34)
  {
    v217 = *(a4 + 128);
    v35 = v217(a3, a4);
    if (v35 >= 64)
    {
LABEL_15:
      v231 = 0;
      v52 = *(a4 + 96);
      v53 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
      v52(&v231, &type metadata for Int, v53, a3, a4);
      v54 = (*(*(*(a4 + 16) + 8) + 8))(a2, v32, a3);
      (*(v30 + 8))(v32, a3);
      if (v54)
      {
        goto LABEL_16;
      }

LABEL_7:
      v42 = v225;
      v228[7](a3);
      v43 = v226;
      v44 = swift_getAssociatedConformanceWitness(a4, a3, v226, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v45 = (*(v44 + 136))(v43, v44);
      if (v45 >= 16)
      {
        v46 = a1;
        (*(v227 + 8))(v42, v43);
        v47 = v222;
        if ((v222(a3, a4) & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v47(a3, a4))
        {
          v48 = v217(a3, a4);
          if (v48 >= 64)
          {
            v231 = 0;
            v51 = v32;
            goto LABEL_31;
          }
        }

        else
        {
          v51 = v32;
          v106 = v47(a3, a4);
          v48 = v217(a3, a4);
          if (v106)
          {
            if (v48 > 64)
            {
              v231 = 0;
LABEL_31:
              v107 = *(a4 + 96);
              v108 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
              v107(&v231, &type metadata for Int, v108, a3, a4);
              v109 = (*(*(*(a4 + 32) + 8) + 16))(a2, v51, a3);
              (*(v30 + 8))(v51, a3);
              if (v109)
              {
                goto LABEL_64;
              }

LABEL_63:
              v55 = 0;
              v134 = 31744;
LABEL_65:
              *v46 = v134;
              return v55 & 1;
            }

            v130 = v211;
            v131 = v229;
            v132 = swift_getAssociatedConformanceWitness(v211, a3, v229, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v133 = v230;
            (*(v132 + 8))(&qword_18071E0A8, 256, v131, v132);
            v130[3](v133, a3, v130);
            LOBYTE(v130) = (*(*(*(a4 + 32) + 8) + 16))(a2, v51, a3);
            (*(v30 + 8))(v51, a3);
            if (v130)
            {
LABEL_64:
              v55 = 0;
              v134 = -1024;
              goto LABEL_65;
            }
          }

          else if (v48 >= 64)
          {
            goto LABEL_63;
          }
        }

        if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      v201 = v32;
      v202 = v30;
      v210 = a1;
      v208 = a2;
      v209 = v45;
      if (v45 >= 11)
      {
        v57 = v45;
        v58 = v221;
        v59 = v215;
        v60 = v45 - 11;
        v218 = swift_getAssociatedConformanceWitness(v221, v43, v215, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v206 = *(v218 + 1);
        v207 = v218 + 8;
        v61 = v216;
        v206(&qword_1806729C0, 512, v59, v218);
        v62 = v58;
        v63 = v58[3];
        v205 = v58 + 3;
        v204 = v63;
        v64 = v224;
        v65 = (v63)(v61, v43, v62);
        v200 = v57 - 10;
        v231 = v60;
        v199 = v44 + 256;
        v66 = *(v44 + 256);
        v203 = lazy protocol witness table accessor for type Int and conformance Int(v65, v67, v68);
        v66(v64, &v231, &type metadata for Int, v203, v43, v44);
        v227 = *(v227 + 8);
        (v227)(v64, v43);
        v206(qword_18071E0B8, 768, v59, v218);
        v69 = v212;
        v70 = v61;
        (v204)(v61, v43, v221);
        v71 = AssociatedConformanceWitness;
        (*(AssociatedConformanceWitness + 64))(v69, v220, v43, AssociatedConformanceWitness);
        (v227)(v69, v43);
        v206(&qword_1806729C0, 512, v59, v218);
        (v204)(v70, v43, v221);
        v72 = v213;
        v73 = v224;
        (*(*(v71 + 8) + 40))(v224, v69, v43);
        v74 = v227;
        (v227)(v69, v43);
        v74(v73, v43);
        v75 = v225;
        (*(v44 + 192))(v225, v72, v43, v44);
        v74(v72, v43);
        v231 = v200;
        v76 = v220;
        (*(v44 + 240))(v75, &v231, &type metadata for Int, v203, v43, v44);
        v74(v75, v43);
        v77 = *(v44 + 120);
        v225 = v44;
        v212 = v77;
        v213 = (v44 + 120);
        v78 = (v77)(v43, v44);
        v79 = v74;
        v74(v73, v43);
        v80 = v219;
        LODWORD(AssociatedConformanceWitness) = v78 & 0x3FF;
        v81 = swift_getAssociatedConformanceWitness(v228, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        if ((*(v81 + 40))(v80, v76, v43, v81))
        {
          v79(v76, v43);
          v82 = AssociatedConformanceWitness;
        }

        else
        {
          v110 = (*(*(v81 + 8) + 8))(v80, v76, v43);
          v79(v76, v43);
          if ((v110 & 1) == 0)
          {
            v116 = v81;
            v111 = v226;
            v122 = v209;
            LOWORD(v82) = AssociatedConformanceWitness;
            goto LABEL_51;
          }

          v82 = AssociatedConformanceWitness;
          if ((v78 & 1) == 0)
          {
            v116 = v81;
            v111 = v226;
            goto LABEL_50;
          }
        }

        v111 = v226;
        if (v82 == 1023)
        {
          if (v209 >= 0xF)
          {
            (v227)(v219, v226);
            v112 = v222;
            v113 = v222(a3, a4);
            v114 = v210;
            if (v113)
            {
              if (v112(a3, a4))
              {
                v115 = v208;
                if (v217(a3, a4) < 64)
                {
                  goto LABEL_118;
                }

                v231 = 0;
                v192 = v201;
                (*(a4 + 96))(&v231, &type metadata for Int, v203, a3, a4);
                v191 = (*(*(*(a4 + 32) + 8) + 16))(v115, v192, a3);
                (*(v202 + 8))(v192, a3);
              }

              else
              {
                v187 = v112(a3, a4);
                v188 = v208;
                v189 = v217(a3, a4);
                if ((v187 & 1) == 0)
                {
                  if (v189 >= 64)
                  {
                    goto LABEL_119;
                  }

LABEL_118:
                  if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_119;
                  }

LABEL_120:
                  v55 = 0;
                  v198 = -1024;
                  goto LABEL_121;
                }

                if (v189 <= 64)
                {
                  v193 = v211;
                  v194 = v229;
                  v195 = swift_getAssociatedConformanceWitness(v211, a3, v229, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v196 = v230;
                  (*(v195 + 8))(&qword_18071E0A8, 256, v194, v195);
                  v197 = v201;
                  v193[3](v196, a3, v193);
                  LOBYTE(v193) = (*(*(*(a4 + 32) + 8) + 16))(v188, v197, a3);
                  (*(v202 + 8))(v197, a3);
                  if (v193)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_118;
                }

                v231 = 0;
                v190 = v201;
                (*(a4 + 96))(&v231, &type metadata for Int, v203, a3, a4);
                v191 = (*(*(*(a4 + 32) + 8) + 16))(v188, v190, a3);
                (*(v202 + 8))(v190, a3);
              }

              if (v191)
              {
                goto LABEL_120;
              }
            }

LABEL_119:
            v55 = 0;
            v198 = 31744;
LABEL_121:
            *v114 = v198;
            return v55 & 1;
          }

          v116 = v81;
          v122 = v209 + 1;
          LOWORD(v82) = 1024;
LABEL_51:
          v123 = v222;
          if ((v222(a3, a4) & 1) == 0)
          {
            v125 = 0;
            goto LABEL_97;
          }

          if (v123(a3, a4))
          {
            v124 = v208;
            if (v217(a3, a4) >= 64)
            {
              v231 = 0;
              v141 = v201;
              (*(a4 + 96))(&v231, &type metadata for Int, v203, a3, a4);
              v142 = (*(*(*(a4 + 32) + 8) + 16))(v124, v141, a3);
              v111 = v226;
              (*(v202 + 8))(v141, a3);
              if (v142)
              {
                goto LABEL_96;
              }
            }

            else if ((*(a4 + 120))(a3, a4) < 0)
            {
              goto LABEL_96;
            }

LABEL_95:
            v125 = 0;
            goto LABEL_97;
          }

          v126 = v123(a3, a4);
          v127 = v217(a3, a4);
          if (v126)
          {
            if (v127 > 64)
            {
              v231 = 0;
              v128 = v201;
              (*(a4 + 96))(&v231, &type metadata for Int, v203, a3, a4);
              v129 = (*(*(*(a4 + 32) + 8) + 16))(v208, v128, a3);
              (*(v202 + 8))(v128, a3);
              if (v129)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }

            v168 = v211;
            v169 = v229;
            v170 = swift_getAssociatedConformanceWitness(v211, a3, v229, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v171 = v230;
            (*(v170 + 8))(&qword_18071E0A8, 256, v169, v170);
            v172 = v201;
            (*(v168 + 3))(v171, a3, v168);
            LOBYTE(v169) = (*(*(*(a4 + 32) + 8) + 16))(v208, v172, a3);
            v111 = v226;
            (*(v202 + 8))(v172, a3);
            if (v169)
            {
LABEL_96:
              v125 = 0x8000;
LABEL_97:
              *v210 = ((v82 & 0x3FF | (v122 << 10)) + 15360) | v125;
              v173 = v225;
              v174 = *(v225 + 8);
              v175 = v174(v111, v225);
              v176 = v219;
              if (v175)
              {
                if ((*(v173 + 16))(v111, v173) >= 64)
                {
                  goto LABEL_107;
                }

                goto LABEL_105;
              }

              v177 = v174(v111, v173);
              v178 = (*(v173 + 16))(v111, v173);
              if (v177)
              {
                if (v178 <= 64)
                {
                  v179 = v216;
                  (v206)(&qword_18071E0A8, 256);
                  v180 = v224;
                  (v204)(v179, v111, v221);
                  v181 = (*(v116 + 32))(v176, v180, v111, v116);
                  v182 = v180;
                  v183 = v227;
                  (v227)(v182, v111);
                  if ((v181 & 1) == 0)
                  {
                    v183(v176, v111);
                    v55 = 0;
                    return v55 & 1;
                  }

                  v184 = (v212)(v111, v173);
                  v183(v176, v111);
                  goto LABEL_106;
                }
              }

              else if (v178 < 64)
              {
LABEL_105:
                v184 = (v212)(v111, v173);
                (v227)(v176, v111);
LABEL_106:
                v55 = v184 == 0;
                return v55 & 1;
              }

LABEL_107:
              v231 = 0;
              v185 = v224;
              (*(v173 + 12))(&v231, &type metadata for Int, v203, v111, v173);
              v55 = (*(*(v116 + 8) + 8))(v176, v185, v111);
              v186 = v227;
              (v227)(v185, v111);
              v186(v176, v111);
              return v55 & 1;
            }
          }

          else if (v127 >= 64)
          {
            goto LABEL_95;
          }

          if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        v116 = v81;
        LOWORD(v82) = v82 + 1;
LABEL_50:
        v122 = v209;
        goto LABEL_51;
      }

      v83 = v218;
      (*(v227 + 32))(v218, v42, v43);
      v84 = *(v44 + 64);
      if (v84(v43, v44))
      {
        v85 = v221;
        v86 = v215;
        v87 = swift_getAssociatedConformanceWitness(v221, v43, v215, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v88 = v44;
        v89 = v216;
        (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
        v90 = v224;
        v91 = v89;
        v44 = v88;
        v83 = v218;
        (v85[3])(v91, v43, v85);
        v92 = swift_getAssociatedConformanceWitness(v228, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        LOBYTE(v85) = (*(v92 + 32))(v83, v90, v43, v92);
        (*(v227 + 8))(v90, v43);
        if ((v85 & 1) == 0)
        {
LABEL_122:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v93 = v44;
      v94 = *(v44 + 128);
      if (v94(v43, v93) <= 15)
      {
LABEL_74:
        v143 = v93[15](v43, v93);
        (*(v227 + 8))(v83, v43);
        v144 = v222;
        if ((v222(a3, a4) & 1) == 0)
        {
          v151 = 0;
          v146 = v210;
          goto LABEL_91;
        }

        v145 = v144(a3, a4);
        v146 = v210;
        if (v145)
        {
          v147 = v208;
          v148 = v217(a3, a4);
          if (v148 < 64)
          {
            goto LABEL_88;
          }

          v231 = 0;
          v160 = *(a4 + 96);
          v161 = lazy protocol witness table accessor for type Int and conformance Int(v148, v149, v150);
          v162 = v201;
          v160(&v231, &type metadata for Int, v161, a3, a4);
          v159 = (*(*(*(a4 + 32) + 8) + 16))(v147, v162, a3);
          (*(v202 + 8))(v162, a3);
        }

        else
        {
          v152 = v144(a3, a4);
          v153 = v217(a3, a4);
          if ((v152 & 1) == 0)
          {
            if (v153 < 64)
            {
LABEL_88:
              if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
              {
                goto LABEL_89;
              }

LABEL_90:
              v151 = 0x8000;
LABEL_91:
              if ((v209 & 0x8000000000000000) == 0)
              {
                *v146 = ((v209 << 10) + 15360) & 0x7C00 | (v143 << ((10 - v209) & 0xF)) & 0x3FF | v151;
                goto LABEL_17;
              }

              goto LABEL_122;
            }

LABEL_89:
            v151 = 0;
            goto LABEL_91;
          }

          if (v153 <= 64)
          {
            v163 = v211;
            v164 = v229;
            v165 = swift_getAssociatedConformanceWitness(v211, a3, v229, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v166 = v230;
            (*(v165 + 8))(&qword_18071E0A8, 256, v164, v165);
            v167 = v201;
            (*(v163 + 3))(v166, a3, v163);
            LOBYTE(v164) = (*(*(*(a4 + 32) + 8) + 16))(v208, v167, a3);
            (*(v202 + 8))(v167, a3);
            if (v164)
            {
              goto LABEL_90;
            }

            goto LABEL_88;
          }

          v231 = 0;
          v156 = *(a4 + 96);
          v157 = lazy protocol witness table accessor for type Int and conformance Int(v153, v154, v155);
          v158 = v201;
          v156(&v231, &type metadata for Int, v157, a3, a4);
          v159 = (*(*(*(a4 + 32) + 8) + 16))(v208, v158, a3);
          (*(v202 + 8))(v158, a3);
        }

        if (v159)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      LOWORD(v231) = -1;
      v95 = v84(v43, v93);
      v225 = v93;
      v96 = v94(v43, v93);
      if (v95)
      {
        if (v96 > 16)
        {
          v93 = v225;
          v99 = *(v225 + 12);
          v100 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v96, v97, v98);
          v101 = v224;
          v99(&v231, &type metadata for UInt16, v100, v43, v93);
          v102 = swift_getAssociatedConformanceWitness(v228, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v103 = v218;
          v104 = (*(v102 + 16))(v101, v218, v43, v102);
          v105 = v101;
          v83 = v103;
          (*(v227 + 8))(v105, v43);
          goto LABEL_46;
        }

        v135 = v221;
        v136 = v215;
        v137 = swift_getAssociatedConformanceWitness(v221, v43, v215, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v138 = v216;
        (*(v137 + 8))(&qword_18071E0A8, 256, v136, v137);
        v139 = v224;
        (v135[3])(v138, v43, v135);
        v140 = swift_getAssociatedConformanceWitness(v228, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v83 = v218;
        LOBYTE(v135) = (*(v140 + 40))(v218, v139, v43, v140);
        (*(v227 + 8))(v139, v43);
        if ((v135 & 1) == 0)
        {
          v93 = v225;
          goto LABEL_74;
        }
      }

      else if (v96 > 16)
      {
        v93 = v225;
        v117 = *(v225 + 12);
        v118 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v96, v97, v98);
        v119 = v224;
        v117(&v231, &type metadata for UInt16, v118, v43, v93);
        v120 = swift_getAssociatedConformanceWitness(v228, a3, v43, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v104 = (*(v120 + 16))(v119, v218, v43, v120);
        v121 = v119;
        v83 = v218;
        (*(v227 + 8))(v121, v43);
LABEL_46:
        if (v104)
        {
          goto LABEL_122;
        }

        goto LABEL_74;
      }

      v93 = v225;
      (*(v225 + 15))(v43, v225);
      goto LABEL_74;
    }
  }

  else
  {
    v38 = v33(a3, a4);
    v217 = *(a4 + 128);
    v35 = v217(a3, a4);
    if (v38)
    {
      if (v35 > 64)
      {
        goto LABEL_15;
      }

      v39 = v229;
      v40 = swift_getAssociatedConformanceWitness(v13, a3, v229, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v41 = v230;
      (*(v40 + 8))(&qword_18071E0A8, 256, v39, v40);
      (*(v13 + 24))(v41, a3, v13);
      LOBYTE(v39) = (*(*(*(a4 + 32) + 8) + 32))(a2, v32, a3);
      (*(v30 + 8))(v32, a3);
      if ((v39 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v35 >= 64)
    {
      goto LABEL_15;
    }
  }

  if ((*(a4 + 120))(a3, a4))
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = 0;
LABEL_17:
  v55 = 1;
  return v55 & 1;
}

uint64_t static BinaryFloatingPoint<>._convert<A>(from:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v454 = a7;
  v455 = a2;
  v445 = a1;
  v446 = a6;
  v11 = *(a6 + 24);
  swift_getAssociatedTypeWitness(255, v11, a4, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a4, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v413 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v413, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v410 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v403 = v381 - v15;
  v16 = *(a5 + 16);
  v17 = a5;
  swift_getAssociatedTypeWitness(255, v16, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v19 = v18;
  v417 = *(swift_getAssociatedConformanceWitness(v16, a3, v18, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v395 = *(*(v417 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v395, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v394 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v393 = v381 - v21;
  v418 = swift_checkMetadataState(0, v19);
  v416 = *(v418 - 8);
  v22 = MEMORY[0x1EEE9AC00](v418);
  v390 = v381 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v409 = v381 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v421 = v381 - v26;
  v430 = swift_checkMetadataState(0, v13);
  v425 = *(v430 - 1);
  v27 = MEMORY[0x1EEE9AC00](v430);
  v406 = v381 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v399 = v381 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v400 = v381 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v411 = v381 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v415 = v381 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v426 = v381 - v37;
  v420 = v11;
  v429 = *(v11 + 16);
  v457 = a4;
  swift_getAssociatedTypeWitness(0, v429, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v427 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v428 = v381 - v40;
  v433 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v39);
  v432 = v381 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = *(a7 + 8);
  v461 = *(*(v456 + 24) + 16);
  v42 = v461;
  v43 = v17;
  swift_getAssociatedTypeWitness(255, v17, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v45 = v44;
  swift_getAssociatedTypeWitness(0, v42, v44, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v460 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v449 = v381 - v47;
  v459 = swift_checkMetadataState(0, v45);
  v450 = *(v459 - 1);
  v48 = MEMORY[0x1EEE9AC00](v459);
  v388 = v381 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v412 = v381 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v402 = v381 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v453 = v381 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v463 = v381 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v462 = v381 - v59;
  v60 = *(a3 - 1);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v389 = v381 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v414 = v381 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v66 = v381 - v65;
  v423 = v16;
  v391 = *(v16 + 16);
  v67 = *(*(v391 + 8) + 16);
  swift_getAssociatedTypeWitness(0, v67, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v69 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v71 = (v381 - v70);
  v72 = v43;
  swift_getAssociatedTypeWitness(0, v43, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v444 = v73;
  v443 = *(v73 - 8);
  v74 = MEMORY[0x1EEE9AC00](v73);
  v404 = v381 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v405 = v381 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v79 = v381 - v78;
  v80 = swift_getAssociatedConformanceWitness(v67, a3, v69, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v81 = *(v80 + 8);
  v440 = v69;
  v438 = v80;
  v437 = v80 + 8;
  v436 = v81;
  (v81)(&qword_1806729C0, 512, v69);
  v82 = *(v67 + 24);
  v439 = v71;
  v441 = v67;
  v435 = v67 + 24;
  v434 = v82;
  v82(v71, a3, v67);
  v83 = v43[14];
  v442 = v79;
  (v83)(a3, v43);
  v84 = *(v60 + 8);
  v392 = v66;
  v419 = v60 + 8;
  v422 = v84;
  v84(v66, a3);
  v86 = v459;
  v85 = v460;
  v87 = v461;
  v88 = swift_getAssociatedConformanceWitness(v461, v459, v460, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v89 = v88 + 8;
  v448 = *(v88 + 8);
  v90 = v449;
  v448(&qword_1806729C0, 512, v85, v88);
  v447 = *(v87 + 3);
  v91 = v453;
  v92 = v90;
  v447(v90, v86, v87);
  v93 = v72[13];
  v458 = a3;
  v424 = v72;
  v408 = v72 + 13;
  v407 = v93;
  v464 = (v93)(a3, v72);
  v94 = *(v456 + 256);
  v431 = lazy protocol witness table accessor for type Int and conformance Int(v464, v95, v96);
  v94(v91, &v464, &type metadata for Int);
  v97 = v450 + 8;
  v98 = *(v450 + 8);
  v98(v91, v86);
  v99 = v92;
  v398 = v88;
  v100 = v457;
  v101 = v446;
  v397 = v89;
  (v448)(&qword_1806729C0, 512);
  v396 = v87 + 24;
  v447(v99, v86, v461);
  v102 = v463;
  (*(v454 + 88))(v462, v91, v86);
  v98(v91, v86);
  v451 = v98;
  v452 = v97;
  v98(v102, v86);
  v103 = v101 + 64;
  v104 = *(v101 + 64);
  v105 = v101;
  if (v104(v100, v101))
  {
    v106 = *(v101 + 128);
    v107 = v455;
    v108 = v106(v100, v101);
    v109 = v100;
    if (v108 < 64)
    {
      v110 = (*(v105 + 120))(v100, v105);
      goto LABEL_11;
    }

    v464 = 0;
    v119 = v432;
    (*(v105 + 96))(&v464, &type metadata for Int, v431, v100, v105);
    v120 = (*(*(*(v105 + 16) + 8) + 8))(v107, v119, v100);
    (*(v433 + 8))(v119, v100);
    goto LABEL_17;
  }

  v111 = v104(v100, v101);
  v106 = *(v101 + 128);
  v112 = v455;
  v113 = v101;
  v114 = (v106)(v100);
  v109 = v100;
  if ((v111 & 1) == 0)
  {
    if (v114 < 64)
    {
      v105 = v113;
      v110 = (*(v113 + 120))(v100, v113);
LABEL_11:
      v118 = v458;
      if (v110)
      {
        goto LABEL_22;
      }

LABEL_18:
      v451(v462, v86);
      (*(v443 + 8))(v442, v444);
      v132 = v439;
      v436(&qword_18071E0A8, 256);
      v434(v132, v118, v441);
LABEL_19:
      v133 = 1;
      return v133 & 1;
    }

    v464 = 0;
    v128 = *(v113 + 96);
    v387 = v104;
    v129 = v432;
    v128(&v464, &type metadata for Int, v431, v100, v113);
    v130 = v112;
    v105 = v113;
    v120 = (*(*(*(v113 + 16) + 8) + 8))(v130, v129, v100);
    v131 = v129;
    v104 = v387;
    (*(v433 + 8))(v131, v100);
LABEL_17:
    v118 = v458;
    if ((v120 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v387 = v104;
  if (v114 > 64)
  {
    v464 = 0;
    v115 = v432;
    (*(v113 + 96))(&v464, &type metadata for Int, v431, v100, v113);
    v116 = v112;
    v105 = v113;
    v117 = (*(*(*(v113 + 16) + 8) + 8))(v116, v115, v100);
    (*(v433 + 8))(v115, v100);
    v118 = v458;
    v104 = v387;
    if ((v117 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v386 = v103;
  v121 = v429;
  v122 = v427;
  v123 = swift_getAssociatedConformanceWitness(v429, v100, v427, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v124 = v428;
  (*(v123 + 8))(&qword_18071E0A8, 256, v122, v123);
  v125 = v432;
  v126 = v124;
  v109 = v100;
  (v121[3])(v126, v100, v121);
  LOBYTE(v122) = (*(*(*(v113 + 32) + 8) + 32))(v112, v125, v100);
  (*(v433 + 8))(v125, v100);
  if ((v122 & 1) == 0)
  {
    v105 = v113;
    v118 = v458;
    v103 = v386;
    v104 = v387;
    goto LABEL_22;
  }

  v127 = (*(v113 + 120))(v100, v113);
  v105 = v113;
  v118 = v458;
  v103 = v386;
  v104 = v387;
  if (!v127)
  {
    goto LABEL_18;
  }

LABEL_22:
  v387 = v104;
  v439 = v106;
  v420[7](v109);
  v135 = v430;
  v136 = swift_getAssociatedConformanceWitness(v105, v109, v430, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v137 = *(v136 + 136);
  v440 = v136;
  v441 = v137(v135);
  v138 = v423;
  v139 = *(v423 + 120);
  v140 = v414;
  v435 = v423 + 120;
  v434 = v139;
  (v139)(v118, v423);
  v141 = *(v138 + 176);
  v142 = v421;
  v385 = v138 + 176;
  v384 = v141;
  v141(v118, v138);
  v422(v140, v118);
  v143 = v417;
  v145 = v417 + 64;
  v144 = *(v417 + 64);
  v146 = v418;
  v147 = v144(v418, v417);
  v386 = v103;
  v437 = v145;
  v436 = v144;
  if ((v147 & 1) == 0)
  {
    v155 = v144(v146, v143);
    v438 = *(v143 + 128);
    v156 = v438(v146, v143);
    v154 = v424;
    if (v155)
    {
      if (v156 > 64)
      {
        v157 = v441;
        v464 = v441;
        v158 = v409;
        (*(v143 + 96))(&v464, &type metadata for Int, v431, v146, v143);
        v153 = v157;
        v159 = v421;
        v160 = (*(*(*(v143 + 32) + 8) + 16))(v421, v158, v146);
        v152 = *(v416 + 8);
        v152(v158, v146);
        v152(v159, v146);
        v118 = v458;
        v154 = v424;
        goto LABEL_37;
      }

      v167 = v395;
      v168 = v394;
      v169 = swift_getAssociatedConformanceWitness(v395, v146, v394, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v170 = v393;
      (*(v169 + 8))(&qword_18071E0A8, 256, v168, v169);
      v171 = v409;
      (v167[3])(v170, v146, v167);
      v172 = v421;
      LOBYTE(v168) = (*(*(*(v143 + 32) + 8) + 16))(v421, v171, v146);
      v152 = *(v416 + 8);
      v152(v171, v146);
      if (v168)
      {
        v152(v172, v146);
        v118 = v458;
        goto LABEL_42;
      }

      v175 = (*(v143 + 120))(v146, v143);
      v152(v172, v146);
      v153 = v441;
      v166 = v175 < v441;
      v118 = v458;
      v154 = v424;
    }

    else
    {
      if (v156 >= 64)
      {
        v153 = v441;
        if (v441 < 1)
        {
          v152 = *(v416 + 8);
          v152(v421, v146);
          goto LABEL_54;
        }

        v464 = v441;
        v173 = v409;
        (*(v143 + 96))(&v464, &type metadata for Int, v431, v146, v143);
        v174 = v421;
        v160 = (*(*(*(v143 + 32) + 8) + 16))(v421, v173, v146);
        v152 = *(v416 + 8);
        v152(v173, v146);
        v152(v174, v146);
        v118 = v458;
        v153 = v441;
LABEL_37:
        if (v160)
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      v164 = v421;
      v165 = (*(v143 + 120))(v146, v143);
      v152 = *(v416 + 8);
      v152(v164, v146);
      v153 = v441;
      v166 = v165 < v441;
    }

    if (v166)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v438 = *(v143 + 128);
  v148 = v438(v146, v143);
  v149 = v424;
  v150 = v142;
  if (v148 < 64)
  {
    v151 = (*(v143 + 120))(v146, v143);
    v152 = *(v416 + 8);
    v152(v150, v146);
    v153 = v441;
    v154 = v149;
    if (v151 >= v441)
    {
      goto LABEL_54;
    }

LABEL_42:
    (*(v425 + 8))(v426, v430);
    v451(v462, v459);
    (*(v443 + 8))(v442, v444);
    v176 = v457;
    v177 = v387;
    v178 = v387(v457, v105);
    v179 = v422;
    if ((v178 & 1) == 0)
    {
      goto LABEL_157;
    }

    if (v177(v176, v105))
    {
      v180 = v455;
      if (v439(v176, v105) < 64)
      {
        v181 = (*(v105 + 120))(v176, v105);
        v118 = v458;
        if ((v181 & 0x8000000000000000) == 0)
        {
          goto LABEL_157;
        }

LABEL_83:
        v286 = v392;
        (*(v423 + 112))(v118);
        (*(v391 + 16))(v286, v118);
        v179(v286, v118);
        goto LABEL_158;
      }

LABEL_49:
      v464 = 0;
      v184 = v432;
      (*(v105 + 96))(&v464, &type metadata for Int, v431, v176, v105);
      v185 = (*(*(*(v105 + 32) + 8) + 16))(v180, v184, v176);
      (*(v433 + 8))(v184, v176);
      v118 = v458;
      if ((v185 & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_83;
    }

    v182 = v177(v176, v105);
    v180 = v455;
    v183 = v439(v176, v105);
    if (v182)
    {
      if (v183 > 64)
      {
        goto LABEL_49;
      }

      v281 = v429;
      v282 = v427;
      v283 = swift_getAssociatedConformanceWitness(v429, v176, v427, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v284 = v428;
      (*(v283 + 8))(&qword_18071E0A8, 256, v282, v283);
      v285 = v432;
      (v281[3])(v284, v176, v281);
      LOBYTE(v282) = (*(*(*(v105 + 32) + 8) + 16))(v180, v285, v176);
      (*(v433 + 8))(v285, v176);
      v118 = v458;
      if (v282)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v118 = v458;
      if (v183 >= 64)
      {
        goto LABEL_157;
      }
    }

    if (((*(v105 + 120))(v176, v105) & 0x8000000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_83;
  }

  v161 = v441;
  v464 = v441;
  v162 = v409;
  (*(v143 + 96))(&v464, &type metadata for Int, v431, v146, v143);
  v153 = v161;
  v163 = (*(*(*(v143 + 32) + 8) + 16))(v142, v162, v146);
  v152 = *(v416 + 8);
  v152(v162, v146);
  v152(v150, v146);
  v118 = v458;
  v154 = v149;
  if (v163)
  {
    goto LABEL_42;
  }

LABEL_54:
  v186 = v407;
  if ((v407)(v118, v154) >= v153)
  {
    v229 = v459;
    v230 = v451;
    v451(v462, v459);
    v231 = (v186)(v118, v154) - v153;
    v232 = v415;
    v233 = v430;
    (*(v425 + 32))(v415, v426, v430);
    v234 = v456;
    v235 = v463;
    (*(v456 + 88))(v232, v233, v440, v229, v456);
    v464 = v231;
    v236 = v453;
    (*(v234 + 96))(&v464, &type metadata for Int, v431, v229, v234);
    v237 = v402;
    (*(v454 + 216))(v235, v236, v229);
    v230(v236, v229);
    v230(v235, v229);
    v238 = v424;
    v239 = v457;
    v240 = v387;
    v241 = v387(v457, v105);
    v242 = v439;
    if ((v241 & 1) == 0)
    {
      goto LABEL_86;
    }

    if (v240(v239, v105))
    {
      v243 = v455;
      if (v242(v239, v105) < 64)
      {
LABEL_85:
        if (((*(v105 + 120))(v239, v105) & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_100:
        v287 = 1;
        goto LABEL_101;
      }
    }

    else
    {
      v269 = v240(v239, v105);
      v243 = v455;
      v270 = v242(v239, v105);
      if ((v269 & 1) == 0)
      {
        if (v270 < 64)
        {
          goto LABEL_85;
        }

LABEL_86:
        v287 = 0;
LABEL_101:
        v464 = v153;
        v304 = v458;
        v305 = v444;
        v306 = *(swift_getAssociatedConformanceWitness(v238, v458, v444, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8);
        v307 = v238;
        v308 = v404;
        (*(v306 + 88))(&v464, &type metadata for Int, v431, v305, v306);
        v309 = v405;
        v310 = v442;
        (*(*(*(v306 + 24) + 8) + 24))(v442, v308, v305);
        v311 = *(v443 + 8);
        v311(v308, v305);
        v311(v310, v305);
        (*(v307 + 7))(v287, v309, v237, v304, v307);
        goto LABEL_19;
      }

      if (v270 <= 64)
      {
        v299 = v429;
        v300 = v427;
        v301 = swift_getAssociatedConformanceWitness(v429, v239, v427, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v302 = v428;
        (*(v301 + 8))(&qword_18071E0A8, 256, v300, v301);
        v303 = v432;
        (v299[3])(v302, v239, v299);
        LOBYTE(v300) = (*(*(*(v105 + 32) + 8) + 16))(v243, v303, v239);
        (*(v433 + 8))(v303, v239);
        if (v300)
        {
          goto LABEL_100;
        }

        goto LABEL_85;
      }
    }

    v464 = 0;
    v271 = v432;
    (*(v105 + 96))(&v464, &type metadata for Int, v431, v239, v105);
    v272 = (*(*(*(v105 + 32) + 8) + 16))(v243, v271, v239);
    (*(v433 + 8))(v271, v239);
    if (v272)
    {
      goto LABEL_100;
    }

    goto LABEL_86;
  }

  v382 = v152;
  v187 = v153 - (v186)(v118, v154);
  v188 = v413;
  v189 = v430;
  v190 = v410;
  v191 = swift_getAssociatedConformanceWitness(v413, v430, v410, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v192 = v403;
  v414 = *(v191 + 8);
  (v414)(&qword_1806729C0, 512, v190, v191);
  v193 = v188[3];
  v194 = v415;
  v195 = v192;
  v408 = v188 + 3;
  v407 = v193;
  result = (v193)(v192, v189, v188);
  v383 = v187;
  if (__OFSUB__(v187, 1))
  {
    __break(1u);
    goto LABEL_161;
  }

  v464 = v187 - 1;
  (*(v440 + 256))(v194, &v464, &type metadata for Int, v431, v189, v440);
  v196 = *(v425 + 8);
  v425 += 8;
  v421 = v196;
  (v196)(v194, v189);
  v197 = v410;
  (v414)(&unk_18071E0B8, 768, v410, v191);
  v198 = v399;
  v199 = v191 + 8;
  v402 = v191;
  (v407)(v195, v189, v413);
  v200 = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 64))(v198, v411, v189, AssociatedConformanceWitness);
  v201 = v421;
  (v421)(v198, v189);
  v381[1] = v199;
  (v414)(&qword_1806729C0, 512, v197, v402);
  (v407)(v195, v189, v413);
  v202 = v400;
  v203 = v415;
  (*(*(v200 + 8) + 40))(v415, v198, v189);
  v204 = v201;
  (v201)(v198, v189);
  v205 = v203;
  (v201)(v203, v189);
  v206 = v440;
  v207 = v406;
  v208 = v426;
  (*(v440 + 192))(v426, v202, v189, v440);
  (v204)(v202, v189);
  v464 = v383;
  (*(v206 + 240))(v208, &v464, &type metadata for Int, v431, v189, v206);
  (v204)(v208, v189);
  v209 = v207;
  v210 = v456;
  v211 = (v456 + 96);
  v212 = v463;
  v213 = v459;
  AssociatedConformanceWitness = *(v456 + 96);
  (AssociatedConformanceWitness)(v205, v189, v206, v459, v456);
  v214 = *(v210 + 192);
  v214(v212, v462, v213, v210);
  v215 = v212;
  v216 = v411;
  v451(v215, v213);
  v217 = swift_getAssociatedConformanceWitness(v420, v457, v189, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  v218 = (*(v217 + 40))(v209, v216, v189, v217);
  v426 = v217;
  if (v218)
  {
    (v421)(v216, v189);
    v219 = v412;
    v220 = v418;
    goto LABEL_58;
  }

  v244 = (*(*(v217 + 8) + 8))(v209, v216, v189);
  (v421)(v216, v189);
  v245 = v412;
  if ((v244 & 1) == 0)
  {
    goto LABEL_128;
  }

  v420 = v211;
  v246 = v449;
  (v448)(&qword_1806729C0, 512);
  v247 = v463;
  v248 = v246;
  v249 = v459;
  v447(v248, v459, v461);
  v250 = v245;
  v251 = v388;
  v252 = v456;
  v214(v250, v247, v249, v456);
  v253 = v247;
  v254 = v451;
  v451(v253, v249);
  v255 = *(v252 + 64);
  if ((v255(v249, v252) & 1) == 0)
  {
    v288 = v255(v249, v252);
    v289 = (*(v252 + 128))(v249, v252);
    v290 = v251;
    if (v288)
    {
      v219 = v412;
      if (v289 <= 64)
      {
        v291 = v449;
        (v448)(&qword_18071E0A8, 256);
        v292 = v463;
        v447(v291, v249, v461);
        v293 = (*(*(*(v252 + 32) + 8) + 32))(v290, v292, v249);
        v254(v292, v249);
        if (v293)
        {
          v294 = (*(v252 + 120))(v249, v252);
          v254(v290, v249);
          v220 = v418;
          if (v294 != 1)
          {
            goto LABEL_128;
          }

          goto LABEL_58;
        }

        v254(v290, v249);
LABEL_128:
        v451(v462, v459);
        v259 = v457;
        v118 = v458;
        v260 = v424;
        goto LABEL_129;
      }
    }

    else
    {
      v219 = v412;
      if (v289 < 64)
      {
        v314 = (*(v252 + 120))(v249, v252);
        v254(v290, v249);
        v220 = v418;
        if (v314 != 1)
        {
          goto LABEL_128;
        }

        goto LABEL_58;
      }
    }

    v464 = 1;
    v315 = v463;
    (AssociatedConformanceWitness)(&v464, &type metadata for Int, v431, v249, v252);
    v316 = (*(*(*(v252 + 16) + 8) + 8))(v290, v315, v249);
    v254(v315, v249);
    v254(v290, v249);
    v220 = v418;
    if ((v316 & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_58;
  }

  if ((*(v252 + 128))(v249, v252) >= 64)
  {
    v464 = 1;
    v312 = v463;
    (AssociatedConformanceWitness)(&v464, &type metadata for Int, v431, v249, v252);
    v313 = (*(*(*(v252 + 16) + 8) + 8))(v251, v312, v249);
    v254(v312, v249);
    v254(v251, v249);
    v220 = v418;
    v219 = v412;
    if ((v313 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v256 = (*(v252 + 120))(v249, v252);
    v254(v251, v249);
    v220 = v418;
    v219 = v412;
    if (v256 != 1)
    {
      goto LABEL_128;
    }
  }

LABEL_58:
  v221 = v449;
  (v448)(&qword_1806729C0, 512);
  v222 = v453;
  v223 = v221;
  v224 = v459;
  v447(v223, v459, v461);
  v225 = v463;
  v226 = (*(v454 + 80))(v463, v222, v224);
  v227 = v222;
  v228 = v451;
  v451(v227, v224);
  v228(v219, v224);
  (*(v450 + 32))(v219, v225, v224);
  if (v226)
  {
    result = (v228)(v462, v224);
    v118 = v458;
  }

  else
  {
    v257 = v462;
    v258 = (*(*(*(v456 + 32) + 8) + 40))(v219, v462, v224);
    result = (v228)(v257, v224);
    v259 = v457;
    v118 = v458;
    v260 = v424;
    if ((v258 & 1) == 0)
    {
      goto LABEL_129;
    }
  }

  if (!__OFADD__(v441++, 1))
  {
    v262 = v389;
    v263 = v423;
    (v434)(v118, v423);
    v264 = v390;
    v384(v118, v263);
    v422(v262, v118);
    v265 = v417;
    v266 = v436;
    if ((v436)(v220, v417))
    {
      if (v438(v220, v265) < 64)
      {
        v267 = (*(v265 + 120))(v220, v265);
        v382(v264, v220);
        v268 = v267 < v441;
        goto LABEL_97;
      }

      v464 = v441;
      v295 = v409;
      (*(v265 + 96))(&v464, &type metadata for Int, v431, v220, v265);
      v278 = (*(*(*(v265 + 32) + 8) + 16))(v264, v295, v220);
      v296 = v382;
      v382(v295, v220);
      v296(v264, v220);
      v118 = v458;
    }

    else
    {
      v273 = v266(v220, v265);
      v274 = v438(v220, v265);
      v275 = v264;
      if ((v273 & 1) == 0)
      {
        v297 = v382;
        if (v274 >= 64)
        {
          v259 = v457;
          if (v441 < 1)
          {
            v382(v264, v220);
            v260 = v424;
            goto LABEL_129;
          }

          v464 = v441;
          v325 = v417;
          v326 = v409;
          (*(v417 + 96))(&v464, &type metadata for Int, v431, v220, v417);
          v327 = (*(*(*(v325 + 32) + 8) + 16))(v275, v326, v220);
          v297(v326, v220);
          v297(v275, v220);
          v118 = v458;
          v260 = v424;
          if ((v327 & 1) == 0)
          {
LABEL_129:
            v338 = v387;
            if (v387(v259, v105))
            {
              if (v338(v259, v105))
              {
                v339 = v455;
                if (v439(v259, v105) < 64)
                {
LABEL_132:
                  v340 = (*(v105 + 120))(v259, v105);
                  v118 = v458;
                  if (v340 < 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

                goto LABEL_136;
              }

              v341 = v338(v259, v105);
              v339 = v455;
              v342 = v439(v259, v105);
              if (v341)
              {
                if (v342 <= 64)
                {
                  v370 = v429;
                  v371 = v427;
                  v372 = swift_getAssociatedConformanceWitness(v429, v259, v427, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v373 = v428;
                  (*(v372 + 8))(&qword_18071E0A8, 256, v371, v372);
                  v374 = v432;
                  (v370[3])(v373, v259, v370);
                  LOBYTE(v371) = (*(*(*(v105 + 32) + 8) + 16))(v339, v374, v259);
                  (*(v433 + 8))(v374, v259);
                  if (v371)
                  {
                    v345 = 1;
                    v118 = v458;
LABEL_141:
                    v346 = v406;
                    v464 = v441;
                    v347 = v444;
                    v348 = *(swift_getAssociatedConformanceWitness(v260, v118, v444, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8);
                    v349 = v404;
                    (*(v348 + 88))(&v464, &type metadata for Int, v431, v347, v348);
                    v350 = v405;
                    v351 = v442;
                    (*(*(*(v348 + 24) + 8) + 24))(v442, v349, v347);
                    v352 = v118;
                    v353 = *(v443 + 8);
                    v353(v349, v347);
                    v353(v351, v347);
                    v354 = v463;
                    (*(v450 + 32))(v463, v412, v459);
                    (*(v260 + 7))(v345, v350, v354, v352, v260);
                    v355 = v440;
                    v356 = *(v440 + 64);
                    v357 = v430;
                    v358 = v356(v430, v440);
                    v359 = v413;
                    v360 = v410;
                    if (v358)
                    {
                      if ((*(v355 + 128))(v357, v355) >= 64)
                      {
                        goto LABEL_151;
                      }

                      goto LABEL_149;
                    }

                    v361 = v356(v357, v355);
                    v362 = (*(v355 + 128))(v357, v355);
                    if (v361)
                    {
                      if (v362 <= 64)
                      {
                        v363 = v403;
                        (v414)(&qword_18071E0A8, 256, v360, v402);
                        v364 = v415;
                        (v407)(v363, v357, v359);
                        LOBYTE(v363) = (*(v426 + 4))(v346, v364, v357);
                        v365 = v364;
                        v366 = v421;
                        (v421)(v365, v357);
                        if (v363)
                        {
                          v367 = (*(v355 + 120))(v357, v355);
                          (v366)(v346, v357);
LABEL_150:
                          v133 = v367 == 0;
                          return v133 & 1;
                        }

                        (v366)(v346, v357);
LABEL_158:
                        v133 = 0;
                        return v133 & 1;
                      }
                    }

                    else if (v362 < 64)
                    {
LABEL_149:
                      v367 = (*(v355 + 120))(v357, v355);
                      (v421)(v346, v357);
                      goto LABEL_150;
                    }

LABEL_151:
                    v464 = 0;
                    v368 = v415;
                    (*(v355 + 96))(&v464, &type metadata for Int, v431, v357, v355);
                    v133 = (*(*(v426 + 1) + 8))(v346, v368, v357);
                    v369 = v421;
                    (v421)(v368, v357);
                    (v369)(v346, v357);
                    return v133 & 1;
                  }

                  goto LABEL_132;
                }

LABEL_136:
                v464 = 0;
                v343 = v432;
                (*(v105 + 96))(&v464, &type metadata for Int, v431, v259, v105);
                v344 = (*(*(*(v105 + 32) + 8) + 16))(v339, v343, v259);
                (*(v433 + 8))(v343, v259);
                v118 = v458;
                if (v344)
                {
LABEL_137:
                  v345 = 1;
                  goto LABEL_141;
                }

                goto LABEL_140;
              }

              v118 = v458;
              if (v342 < 64 && (*(v105 + 120))(v259, v105) < 0)
              {
                goto LABEL_137;
              }
            }

LABEL_140:
            v345 = 0;
            goto LABEL_141;
          }

LABEL_115:
          v451(v219, v459);
          (v421)(v406, v430);
          (*(v443 + 8))(v442, v444);
          v329 = v387;
          v330 = v387(v259, v105);
          v331 = v422;
          if ((v330 & 1) == 0)
          {
            goto LABEL_157;
          }

          if (v329(v259, v105))
          {
            v332 = v455;
            if (v439(v259, v105) < 64)
            {
              v333 = (*(v105 + 120))(v259, v105);
              v118 = v458;
              if (v333 < 0)
              {
                goto LABEL_159;
              }

LABEL_157:
              (*(v423 + 112))(v118);
              goto LABEL_158;
            }

LABEL_122:
            v464 = 0;
            v336 = v432;
            (*(v105 + 96))(&v464, &type metadata for Int, v431, v259, v105);
            v337 = (*(*(*(v105 + 32) + 8) + 16))(v332, v336, v259);
            (*(v433 + 8))(v336, v259);
            v118 = v458;
            if (v337)
            {
              goto LABEL_159;
            }

            goto LABEL_157;
          }

          v334 = v329(v259, v105);
          v332 = v455;
          v335 = v439(v259, v105);
          if (v334)
          {
            if (v335 > 64)
            {
              goto LABEL_122;
            }

            v375 = v429;
            v376 = v427;
            v377 = swift_getAssociatedConformanceWitness(v429, v259, v427, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v378 = v428;
            (*(v377 + 8))(&qword_18071E0A8, 256, v376, v377);
            v379 = v432;
            (v375[3])(v378, v259, v375);
            LOBYTE(v376) = (*(*(*(v105 + 32) + 8) + 16))(v332, v379, v259);
            (*(v433 + 8))(v379, v259);
            v118 = v458;
            if (v376)
            {
LABEL_159:
              v380 = v392;
              (*(v423 + 112))(v118);
              (*(v391 + 16))(v380, v118);
              v331(v380, v118);
              goto LABEL_158;
            }
          }

          else
          {
            v118 = v458;
            if (v335 >= 64)
            {
              goto LABEL_157;
            }
          }

          if (((*(v105 + 120))(v259, v105) & 0x8000000000000000) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_159;
        }

        v298 = (*(v417 + 120))(v220);
        v297(v264, v220);
        v268 = v298 < v441;
LABEL_97:
        v260 = v424;
        v259 = v457;
        if (!v268)
        {
          goto LABEL_129;
        }

        goto LABEL_115;
      }

      if (v274 <= 64)
      {
        v317 = v395;
        v318 = v394;
        v319 = swift_getAssociatedConformanceWitness(v395, v220, v394, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v320 = v393;
        (*(v319 + 8))(&qword_18071E0A8, 256, v318, v319);
        v321 = v409;
        (v317[3])(v320, v220, v317);
        v322 = v417;
        LOBYTE(v318) = (*(*(*(v417 + 32) + 8) + 16))(v275, v321, v220);
        v323 = v321;
        v324 = v382;
        v382(v323, v220);
        v259 = v457;
        if (v318)
        {
          v324(v275, v220);
          v118 = v458;
        }

        else
        {
          v328 = (*(v322 + 120))(v220, v322);
          v324(v275, v220);
          v118 = v458;
          v260 = v424;
          if (v328 >= v441)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_115;
      }

      v464 = v441;
      v276 = v417;
      v277 = v409;
      (*(v417 + 96))(&v464, &type metadata for Int, v431, v220, v417);
      v278 = (*(*(*(v276 + 32) + 8) + 16))(v275, v277, v220);
      v279 = v277;
      v280 = v382;
      v382(v279, v220);
      v280(v275, v220);
      v118 = v458;
    }

    v260 = v424;
    v259 = v457;
    if ((v278 & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_115;
  }

LABEL_161:
  __break(1u);
  return result;
}