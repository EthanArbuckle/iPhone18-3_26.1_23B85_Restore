uint64_t WGSL::Metal::FunctionDefinitionWriter::visitArgumentBufferParameter(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Parameter *a2)
{
  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(a2 + 8) + 24), 0);
  v14[0] = "& ";
  v14[1] = 2;
  v13 = *(a2 + 7);
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), v14, &v13);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      LOBYTE(v14[0]) = 32;
      v9 = *(this + 9);
      if (v9 && (v10 = *(this + 20), v10 < *(v9 + 4)) && !*(this + 8))
      {
        v11 = *(v9 + 16);
        v12 = *(v9 + 8);
        *(this + 20) = v10 + 1;
        if ((v11 & 4) != 0)
        {
          *(v12 + v10) = 32;
        }

        else
        {
          *(v12 + 2 * v10) = 32;
        }
      }

      else
      {
        result = WTF::StringBuilder::append();
      }

      if ((*(this + 32) & 1) == 0)
      {
        result = (*(*this + 96))(this, v8);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Structure *a2)
{
  *&v958[7] = *MEMORY[0x277D85DE8];
  *(this + 54) = *(a2 + 88) | 0x100;
  LODWORD(v951) = *(this + 26);
  v953 = "struct ";
  v954 = 7;
  v946 = *(a2 + 6);
  v949 = " {\n";
  v950 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v951, &v953, &v946, &v949);
  ++*(this + 26);
  v5 = *(a2 + 88);
  v6 = *(a2 + 21);
  v936 = a2;
  if (v6)
  {
    v938 = *(a2 + 88);
    v937 = 0;
    v7 = *(a2 + 9);
    v939 = &v7[v6];
    v8 = 0uLL;
    while (1)
    {
      v11 = *v7;
      v12 = *(*(*v7 + 104) + 24);
      v940 = v4;
      v942 = v8;
      if (!v12)
      {
        goto LABEL_22;
      }

      if (*(v12 + 48) == 10)
      {
        v12 = *(v12 + 8);
        if (!v12 || *(v12 + 48))
        {
          goto LABEL_22;
        }
      }

      else if (*(v12 + 48))
      {
        goto LABEL_22;
      }

      if (*v12 == 10)
      {
        v13 = *(v11 + 100);
        if (v13)
        {
          v14 = *(v11 + 88);
          v15 = 8 * v13;
          while (1)
          {
            v16 = *v14;
            if ((*(**v14 + 16))(*v14) == 2)
            {
              v17 = *(v16 + 24);
              LOBYTE(v953) = 0;
              v957 = 0;
              if (*(v17 + 56) == 1)
              {
                break;
              }
            }

            ++v14;
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_82;
            }
          }

          v955 = -1;
          v18 = *(v17 + 48);
          if (v18 == 255)
          {
            v957 = 1;
            goto LABEL_1119;
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, &v949, &v953, (v17 + 32));
          v955 = *(v17 + 48);
          v957 = 1;
          switch(v955)
          {
            case 5:
              v19 = v953;
              break;
            case 4:
              v19 = v953;
              break;
            case 3:
              v19 = v953;
              break;
            default:
              goto LABEL_1119;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v949, &v953);
          v58 = *(this + 26);
          v59 = *(v11 + 48);
          v60 = *(this + 20);
          if (v59)
          {
LABEL_83:
            v61 = *(v59 + 4);
            if (v19 < 0)
            {
              goto LABEL_156;
            }

            goto LABEL_84;
          }
        }

        else
        {
LABEL_82:
          v19 = 0;
          v58 = *(this + 26);
          v59 = *(v11 + 48);
          v60 = *(this + 20);
          if (v59)
          {
            goto LABEL_83;
          }
        }

        v61 = 0;
        if (v19 < 0)
        {
LABEL_156:
          v120 = -v19;
          v62 = 1;
          do
          {
            ++v62;
            v103 = v120 >= 0xA;
            v120 /= 0xAuLL;
          }

          while (v103);
          goto LABEL_158;
        }

LABEL_84:
        v62 = 0;
        v63 = v19;
        do
        {
          ++v62;
          v41 = v63 > 9;
          v63 /= 0xAuLL;
        }

        while (v41);
LABEL_158:
        if (v59)
        {
          v121 = *(v59 + 4);
          v122 = v19 + 1;
          if (v19 < -1)
          {
            goto LABEL_160;
          }
        }

        else
        {
          v121 = 0;
          v122 = v19 + 1;
          if (v19 < -1)
          {
LABEL_160:
            v123 = ~v19;
            v124 = 1;
            do
            {
              ++v124;
              v103 = v123 >= 0xA;
              v123 /= 0xAuLL;
            }

            while (v103);
            goto LABEL_166;
          }
        }

        v124 = 0;
        v125 = v122;
        do
        {
          ++v124;
          v41 = v125 > 9;
          v125 /= 0xAuLL;
        }

        while (v41);
LABEL_166:
        if (v59)
        {
          v126 = *(v59 + 4);
          v127 = v19 + 2;
          if (v19 < -2)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v126 = 0;
          v127 = v19 + 2;
          if (v19 < -2)
          {
LABEL_168:
            v128 = -2 - v19;
            v129 = 1;
            do
            {
              ++v129;
              v103 = v128 >= 0xA;
              v128 /= 0xAuLL;
            }

            while (v103);
            goto LABEL_174;
          }
        }

        v129 = 0;
        v130 = v127;
        do
        {
          ++v129;
          v41 = v130 > 9;
          v130 /= 0xAuLL;
        }

        while (v41);
LABEL_174:
        if (v59)
        {
          v131 = *(v59 + 4);
          v132 = v19 + 3;
          if (v19 < -3)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v131 = 0;
          v132 = v19 + 3;
          if (v19 < -3)
          {
LABEL_176:
            v133 = -3 - v19;
            v134 = 1;
            do
            {
              ++v134;
              v103 = v133 >= 0xA;
              v133 /= 0xAuLL;
            }

            while (v103);
            goto LABEL_182;
          }
        }

        v134 = 0;
        v135 = v132;
        do
        {
          ++v134;
          v41 = v135 > 9;
          v135 /= 0xAuLL;
        }

        while (v41);
LABEL_182:
        v136 = (4 * v58);
        v137 = v134 + 38;
        if (v134 >= 0xFFFFFFDA)
        {
          v137 = -1;
        }

        v103 = __CFADD__(v131, v137);
        v138 = v131 + v137;
        if (v103)
        {
          v138 = -1;
        }

        v103 = __CFADD__(v138, 11);
        v139 = v138 + 11;
        if (v103)
        {
          v139 = -1;
        }

        v103 = __CFADD__(v136, v139);
        v140 = v136 + v139;
        if (v103)
        {
          v140 = -1;
        }

        v103 = __CFADD__(v140, 5);
        v141 = v140 + 5;
        if (v103)
        {
          v141 = -1;
        }

        v103 = __CFADD__(v129, v141);
        v142 = v129 + v141;
        if (v103)
        {
          v142 = -1;
        }

        v103 = __CFADD__(v142, 20);
        v143 = v142 + 20;
        if (v103)
        {
          v143 = -1;
        }

        v103 = __CFADD__(v126, v143);
        v144 = v126 + v143;
        if (v103)
        {
          v144 = -1;
        }

        v103 = __CFADD__(v144, 11);
        v145 = v144 + 11;
        if (v103)
        {
          v145 = -1;
        }

        v103 = __CFADD__(v136, v145);
        v146 = v136 + v145;
        if (v103)
        {
          v146 = -1;
        }

        v103 = __CFADD__(v146, 5);
        v147 = v146 + 5;
        if (v103)
        {
          v147 = -1;
        }

        v103 = __CFADD__(v124, v147);
        v148 = v124 + v147;
        if (v103)
        {
          v148 = -1;
        }

        v103 = __CFADD__(v148, 18);
        v149 = v148 + 18;
        if (v103)
        {
          v149 = -1;
        }

        v103 = __CFADD__(v121, v149);
        v150 = v121 + v149;
        if (v103)
        {
          v150 = -1;
        }

        v103 = __CFADD__(v150, 19);
        v151 = v150 + 19;
        if (v103)
        {
          v151 = -1;
        }

        v103 = __CFADD__(v136, v151);
        v152 = v136 + v151;
        if (v103)
        {
          v152 = -1;
        }

        v103 = __CFADD__(v152, 5);
        v153 = v152 + 5;
        if (v103)
        {
          v153 = -1;
        }

        v103 = __CFADD__(v62, v153);
        v154 = v62 + v153;
        if (v103)
        {
          v154 = -1;
        }

        v103 = __CFADD__(v154, 17);
        v155 = v154 + 17;
        if (v103)
        {
          v155 = -1;
        }

        v103 = __CFADD__(v61, v155);
        v156 = v61 + v155;
        if (v103)
        {
          v156 = -1;
        }

        v103 = __CFADD__(v156, 19);
        v157 = v156 + 19;
        if (v103)
        {
          v157 = -1;
        }

        v933 = v59;
        __lena = v136;
        v103 = __CFADD__(v136, v157);
        v158 = v136 + v157;
        if (v103)
        {
          v158 = -1;
        }

        v103 = __CFADD__(v60, v158);
        v159 = v60 + v158;
        if (v103)
        {
          v160 = 0xFFFFFFFFLL;
        }

        else
        {
          v160 = v159;
        }

        v161 = *(this + 9);
        if ((!v161 && (v161 = *(this + 8)) == 0 || (*(v161 + 16) & 4) != 0) && (!v59 || (*(v59 + 16) & 4) != 0))
        {
          v170 = MEMORY[0x22AA68210](this + 64, v160);
          if (!v170)
          {
            goto LABEL_6;
          }

          v171 = v169;
          v172 = __lena;
          v931 = v170;
          v926 = v169;
          if (__lena)
          {
            memset(v170, 32, __lena);
            v171 = v926;
            v170 = v931;
            v9 = v933;
            v172 = __lena;
            v173 = __lena;
            if (v926 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v173 = 0;
            v9 = v933;
          }

          v190 = &v170[v173];
          *v190 = *"texture2d<float> __";
          *(v190 + 15) = 1600069694;
          if (v171 - v173 <= 0x12)
          {
            goto LABEL_1117;
          }

          v925 = v132;
          v191 = v171 - v173 - 19;
          v192 = v190 + 19;
          v930 = v173;
          if (v9)
          {
            v193 = *(v9 + 8);
            v194 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v194)
              {
                if (v194 == 1)
                {
                  *v192 = v193->i8[0];
                }

                else
                {
                  memcpy(v190 + 19, v193, v194);
                  v171 = v926;
                  v173 = v930;
                  v170 = v931;
                  v9 = v933;
                  v172 = __lena;
                }
              }

              goto LABEL_568;
            }

            if (v194 < 0x10)
            {
              v195 = (v190 + 19);
              v197 = &v192[v194];
              if (v192 != &v192[v194])
              {
                goto LABEL_383;
              }
            }

            else
            {
              v195 = (v190 + 19);
              do
              {
                v196 = vld2q_s8(v193->i8);
                v193 += 2;
                *v195++ = v196;
              }

              while (v195 != &v192[v194 & 0xFFFFFFF0]);
              v197 = &v192[v194];
              if (v195 == &v192[v194])
              {
                goto LABEL_568;
              }

LABEL_383:
              v277 = &v170[v194 + v173];
              v278 = v277 - v195;
              v279 = v277 - v195 + 19;
              if (v279 < 4 || ((v280 = (v277 + 19), v195 < &v193[2].u16[v278 + 3]) ? (v281 = v193 >= v280) : (v281 = 1), !v281))
              {
                v439 = v195;
                v440 = v193;
                goto LABEL_561;
              }

              if (v279 >= 0x20)
              {
                v282 = v279 & 0xFFFFFFFFFFFFFFE0;
                v692 = v193 + 2;
                v693 = (v195 + 1);
                v694 = v279 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v696 = v692[-2];
                  v695 = v692[-1];
                  v698 = *v692;
                  v697 = v692[1];
                  v692 += 4;
                  v693[-1] = vuzp1q_s8(v696, v695);
                  *v693 = vuzp1q_s8(v698, v697);
                  v693 += 2;
                  v694 -= 32;
                }

                while (v694);
                if (v279 != v282)
                {
                  if ((v279 & 0x1C) == 0)
                  {
                    v440 = (v193 + 2 * v282);
                    v439 = (v195 + v282);
                    goto LABEL_561;
                  }

                  goto LABEL_856;
                }
              }

              else
              {
                v282 = 0;
LABEL_856:
                v439 = (v195 + (v279 & 0xFFFFFFFFFFFFFFFCLL));
                v440 = (v193 + 2 * (v279 & 0xFFFFFFFFFFFFFFFCLL));
                v699 = (v193 + 2 * v282);
                v700 = (v195 + v282);
                v701 = v282 - (v279 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v702 = *v699++;
                  *v700++ = vuzp1_s8(v702, v702).u32[0];
                  v701 += 4;
                }

                while (v701);
                if (v279 != (v279 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_561:
                    v441 = v440->i8[0];
                    v440 = (v440 + 2);
                    *v439 = v441;
                    v439 = (v439 + 1);
                  }

                  while (v439 != v197);
                }
              }
            }

LABEL_568:
            v198 = *(v9 + 4);
            if (v191 < v198)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v198 = 0;
          }

          v444 = &v192[v198];
          *v444 = *"_FirstPlane [[id(";
          v444[16] = 40;
          if (v191 - v198 <= 0x10)
          {
            goto LABEL_1117;
          }

          v445 = v191 - v198 - 17;
          v446 = v444 + 17;
          v447 = 0;
          if ((v19 & 0x8000000000000000) == 0)
          {
            v448 = &v957;
            v449 = v19;
            do
            {
              if (v447 == -25)
              {
                goto LABEL_1117;
              }

              v450 = v447;
              v451 = v448;
              v958[--v447] = (v449 % 0xA) | 0x30;
              --v448;
              v41 = v449 > 9;
              v449 /= 0xAuLL;
            }

            while (v41);
            if (~v447 < v445)
            {
              v452 = ~v447;
            }

            else
            {
              v452 = v191 - v198 - 17;
            }

            if (v452 >= 8)
            {
              v467 = v452 + 1;
              v468 = v467 & 7;
              if ((v467 & 7) == 0)
              {
                v468 = 8;
              }

              v453 = v467 - v468;
              if (-v450 < v445)
              {
                v469 = -v450;
              }

              else
              {
                v469 = v191 - v198 - 17;
              }

              v470 = ~v469 + v468;
              v471 = v446;
              do
              {
                v472 = *v451;
                v451 += 8;
                *v471++ = v472;
                v470 += 8;
              }

              while (v470);
            }

            else
            {
              v453 = 0;
            }

            v473 = &v958[v447];
            while (v198 + v173 - v171 + v453 != -36)
            {
              v170[v198 + 36 + v173 + v453] = v473[v453];
              ++v453;
              if (v450 + v453 == 1)
              {
                goto LABEL_607;
              }
            }

LABEL_1117:
            __break(1u);
          }

          v454 = -v19;
          v455 = &v956;
          do
          {
            if (v447 == -25)
            {
              goto LABEL_1117;
            }

            v456 = v447;
            v457 = v455;
            v958[--v447] = (v454 % 0xA) | 0x30;
            --v455;
            v41 = v454 > 9;
            v454 /= 0xAuLL;
          }

          while (v41);
          if ((v447 + 24) >= 0x19)
          {
            goto LABEL_1117;
          }

          v458 = 0;
          v958[v447 - 1] = 45;
          if (-v447 < v445)
          {
            v459 = -v447;
          }

          else
          {
            v459 = v191 - v198 - 17;
          }

          if (v459 >= 8)
          {
            v460 = v459 + 1;
            v461 = (v459 + 1) & 7;
            if (!v461)
            {
              v461 = 8;
            }

            v458 = v460 - v461;
            v462 = 1 - v456;
            if (1 - v456 >= v445)
            {
              v462 = v191 - v198 - 17;
            }

            v463 = ~v462 + v461;
            v464 = v446;
            do
            {
              v465 = *v457++;
              *v464++ = v465;
              v463 += 8;
            }

            while (v463);
          }

          v466 = &v958[v447 - 1];
          do
          {
            if (v198 + v173 - v171 + v458 == -36)
            {
              goto LABEL_1117;
            }

            v170[v198 + 36 + v173 + v458] = v466[v458];
            ++v458;
          }

          while (v456 + v458 != 2);
LABEL_607:
          if (v19 < 0)
          {
            v476 = -v19;
            v474 = 1;
            do
            {
              ++v474;
              v103 = v476 >= 0xA;
              v476 /= 0xAuLL;
            }

            while (v103);
          }

          else
          {
            v474 = 0;
            v475 = v19;
            do
            {
              ++v474;
              v41 = v475 > 9;
              v475 /= 0xAuLL;
            }

            while (v41);
          }

          v103 = v445 >= v474;
          v477 = v445 - v474;
          if (!v103)
          {
            goto LABEL_1117;
          }

          v478 = v446 + v474;
          v478[4] = 10;
          *v478 = 995974441;
          if (v477 <= 4)
          {
            goto LABEL_1117;
          }

          v921 = v474;
          v479 = v477 - 5;
          v480 = v478 + 5;
          if (v172)
          {
            memset(v478 + 5, 32, v172);
            v173 = v930;
            v170 = v931;
            v9 = v933;
            v172 = __lena;
            v481 = __lena;
            if (v479 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v481 = 0;
          }

          v482 = v479 - v481;
          v483 = &v480[v481];
          *v483 = *"texture2d<float> __";
          *(v483 + 15) = 1600069694;
          if (v482 <= 0x12)
          {
            goto LABEL_1117;
          }

          v484 = v482 - 19;
          v485 = v483 + 19;
          if (v9)
          {
            v486 = *(v9 + 8);
            v487 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v487)
              {
                if (v487 == 1)
                {
                  *v485 = v486->i8[0];
                }

                else
                {
                  memcpy(v485, v486, v487);
                  v173 = v930;
                  v170 = v931;
                  v9 = v933;
                  v172 = __lena;
                }
              }

              goto LABEL_645;
            }

            if (v487 < 0x10)
            {
              v488 = (v483 + 19);
              v490 = &v485[v487];
              if (v485 != &v485[v487])
              {
                goto LABEL_633;
              }
            }

            else
            {
              v488 = (v483 + 19);
              do
              {
                v489 = vld2q_s8(v486->i8);
                v486 += 2;
                *v488 = v489;
                v488 += 16;
              }

              while (v488 != &v485[v487 & 0xFFFFFFF0]);
              v490 = &v485[v487];
              if (v488 == &v485[v487])
              {
                goto LABEL_645;
              }

LABEL_633:
              v492 = &v170[2 * v173 + v198 + v921 + v487 - v488 + 60];
              if (v492 < 4 || ((v493 = &v170[v198 + v921 + v487], v488 < &v486[7].u64[1] + 4 * v173 + 2 * v493 - 2 * v488) ? (v494 = v486 >= &v493[2 * v173 + 60]) : (v494 = 1), !v494))
              {
                v496 = v488;
                v497 = v486;
                goto LABEL_642;
              }

              if (v492 >= 0x20)
              {
                v495 = v492 & 0xFFFFFFFFFFFFFFE0;
                v703 = v486 + 2;
                v704 = (v488 + 16);
                v705 = v492 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v707 = v703[-2];
                  v706 = v703[-1];
                  v709 = *v703;
                  v708 = v703[1];
                  v703 += 4;
                  v704[-1] = vuzp1q_s8(v707, v706);
                  *v704 = vuzp1q_s8(v709, v708);
                  v704 += 2;
                  v705 -= 32;
                }

                while (v705);
                if (v492 != v495)
                {
                  if ((v492 & 0x1C) == 0)
                  {
                    v497 = (v486 + 2 * v495);
                    v496 = (v488 + v495);
                    goto LABEL_642;
                  }

                  goto LABEL_864;
                }
              }

              else
              {
                v495 = 0;
LABEL_864:
                v496 = (v488 + (v492 & 0xFFFFFFFFFFFFFFFCLL));
                v497 = (v486 + 2 * (v492 & 0xFFFFFFFFFFFFFFFCLL));
                v710 = (v486 + 2 * v495);
                v711 = (v488 + v495);
                v712 = v495 - (v492 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v713 = *v710++;
                  *v711++ = vuzp1_s8(v713, v713).u32[0];
                  v712 += 4;
                }

                while (v712);
                if (v492 != (v492 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_642:
                    v498 = v497->i8[0];
                    v497 = (v497 + 2);
                    *v496++ = v498;
                  }

                  while (v496 != v490);
                }
              }
            }

LABEL_645:
            v491 = *(v9 + 4);
            if (v484 < v491)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v491 = 0;
          }

          v499 = &v485[v491];
          *v499 = *"_SecondPlane [[id(";
          *(v499 + 8) = 10340;
          if (v484 - v491 <= 0x11)
          {
            goto LABEL_1117;
          }

          v500 = v484 - v491 - 18;
          v501 = v499 + 18;
          if (v19 <= -2)
          {
            v502 = 0;
            v503 = ~v19;
            v504 = &v956;
            do
            {
              if (v502 == -25)
              {
                goto LABEL_1117;
              }

              v505 = v502;
              v506 = v504;
              v958[--v502] = (v503 % 0xA) | 0x30;
              --v504;
              v41 = v503 > 9;
              v503 /= 0xAuLL;
            }

            while (v41);
            if ((v502 + 24) < 0x19)
            {
              v507 = 0;
              v958[v502 - 1] = 45;
              if (-v502 < v500)
              {
                v508 = -v502;
              }

              else
              {
                v508 = v484 - v491 - 18;
              }

              if (v508 >= 8)
              {
                v509 = v508 + 1;
                v510 = (v508 + 1) & 7;
                if (!v510)
                {
                  v510 = 8;
                }

                v507 = v509 - v510;
                v511 = 1 - v505;
                if (1 - v505 >= v500)
                {
                  v511 = v484 - v491 - 18;
                }

                v512 = ~v511 + v510;
                v513 = v501;
                v514 = v506;
                do
                {
                  v515 = *v514++;
                  *v513++ = v515;
                  v512 += 8;
                }

                while (v512);
              }

              v516 = 2 - v505;
              v517 = v484 - v491 - 18;
              v518 = v501;
              while (v507 != v517)
              {
                *(v518 + v507) = *(v506 + v507);
                v506 = (v506 + 1);
                --v516;
                v518 = (v518 + 1);
                --v517;
                if (v507 == v516)
                {
                  goto LABEL_684;
                }
              }
            }

            goto LABEL_1117;
          }

          v519 = 0;
          v520 = &v957;
          v521 = v122;
          do
          {
            if (v519 == -25)
            {
              goto LABEL_1117;
            }

            v522 = v519;
            v523 = v520;
            v958[--v519] = (v521 % 0xA) | 0x30;
            --v520;
            v41 = v521 > 9;
            v521 /= 0xAuLL;
          }

          while (v41);
          if (~v519 < v500)
          {
            v524 = ~v519;
          }

          else
          {
            v524 = v484 - v491 - 18;
          }

          if (v524 >= 8)
          {
            v526 = v524 + 1;
            v527 = v526 & 7;
            if ((v526 & 7) == 0)
            {
              v527 = 8;
            }

            v525 = v526 - v527;
            if (-v522 < v500)
            {
              v528 = -v522;
            }

            else
            {
              v528 = v484 - v491 - 18;
            }

            v529 = ~v528 + v527;
            v530 = v501;
            v531 = v523;
            do
            {
              v532 = *v531;
              v531 += 8;
              *v530++ = v532;
              v529 += 8;
            }

            while (v529);
          }

          else
          {
            v525 = 0;
          }

          v533 = 1 - v522;
          v534 = v484 - v491 - 18;
          v535 = v501;
          do
          {
            if (v525 == v534)
            {
              goto LABEL_1117;
            }

            *(v535 + v525) = v523[v525];
            ++v523;
            --v533;
            v535 = (v535 + 1);
            --v534;
          }

          while (v525 != v533);
LABEL_684:
          if (v19 >= -1)
          {
            v537 = 0;
            do
            {
              ++v537;
              v41 = v122 > 9;
              v122 /= 0xAuLL;
            }

            while (v41);
          }

          else
          {
            v536 = ~v19;
            v537 = 1;
            do
            {
              ++v537;
              v103 = v536 >= 0xA;
              v536 /= 0xAuLL;
            }

            while (v103);
          }

          v538 = v537;
          v103 = v500 >= v537;
          v539 = v500 - v537;
          if (!v103)
          {
            goto LABEL_1117;
          }

          v540 = v501 + v537;
          v540[4] = 10;
          *v540 = 995974441;
          if (v539 <= 4)
          {
            goto LABEL_1117;
          }

          v541 = v539 - 5;
          v542 = v540 + 5;
          v923 = v491;
          if (v172)
          {
            memset(v540 + 5, 32, v172);
            v491 = v923;
            v173 = v930;
            v170 = v931;
            v9 = v933;
            v172 = __lena;
            v543 = __lena;
            v544 = v926;
            if (v541 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v543 = 0;
            v544 = v926;
          }

          v545 = v541 - v543;
          v546 = &v542[v543];
          *v546 = *"float3x2 __";
          *(v546 + 7) = 1600069682;
          if (v545 <= 0xA)
          {
            goto LABEL_1117;
          }

          v547 = v545 - 11;
          v548 = v546 + 11;
          if (v9)
          {
            v549 = *(v9 + 8);
            v550 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v550)
              {
                if (v550 == 1)
                {
                  *v548 = v549->i8[0];
                }

                else
                {
                  v563 = v545 - 11;
                  memcpy(v548, v549, v550);
                  v547 = v563;
                  v491 = v923;
                  v544 = v926;
                  v173 = v930;
                  v170 = v931;
                  v9 = v933;
                  v172 = __lena;
                }
              }

              goto LABEL_722;
            }

            if (v550 < 0x10)
            {
              v551 = (v546 + 11);
              v553 = &v548[v550];
              if (v548 != &v548[v550])
              {
                goto LABEL_710;
              }
            }

            else
            {
              v551 = (v546 + 11);
              do
              {
                v552 = vld2q_s8(v549->i8);
                v549 += 2;
                *v551 = v552;
                v551 += 16;
              }

              while (v551 != &v548[v550 & 0xFFFFFFF0]);
              v553 = &v548[v550];
              if (v551 == &v548[v550])
              {
                goto LABEL_722;
              }

LABEL_710:
              v555 = v921 + v538 + v550;
              v556 = &v170[3 * v173 + v198 + v491 + v555 - v551 + 94];
              if (v556 < 4 || ((v557 = &v170[v491 + v198], v551 < &v549[11].u64[1] + 2 * &v557[v555] + 6 * v173 - 2 * v551 + 4) ? (v558 = v549 >= &v557[3 * v173 + 94 + v538 + v921 + v550]) : (v558 = 1), !v558))
              {
                v560 = v551;
                v561 = v549;
                goto LABEL_719;
              }

              if (v556 >= 0x20)
              {
                v559 = v556 & 0xFFFFFFFFFFFFFFE0;
                v714 = v549 + 2;
                v715 = (v551 + 16);
                v716 = v556 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v718 = v714[-2];
                  v717 = v714[-1];
                  v720 = *v714;
                  v719 = v714[1];
                  v714 += 4;
                  v715[-1] = vuzp1q_s8(v718, v717);
                  *v715 = vuzp1q_s8(v720, v719);
                  v715 += 2;
                  v716 -= 32;
                }

                while (v716);
                if (v556 != v559)
                {
                  if ((v556 & 0x1C) == 0)
                  {
                    v561 = (v549 + 2 * v559);
                    v560 = (v551 + v559);
                    goto LABEL_719;
                  }

                  goto LABEL_872;
                }
              }

              else
              {
                v559 = 0;
LABEL_872:
                v560 = (v551 + (v556 & 0xFFFFFFFFFFFFFFFCLL));
                v561 = (v549 + 2 * (v556 & 0xFFFFFFFFFFFFFFFCLL));
                v721 = (v549 + 2 * v559);
                v722 = (v551 + v559);
                v723 = v559 - (v556 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v724 = *v721++;
                  *v722++ = vuzp1_s8(v724, v724).u32[0];
                  v723 += 4;
                }

                while (v723);
                if (v556 != (v556 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_719:
                    v562 = v561->i8[0];
                    v561 = (v561 + 2);
                    *v560++ = v562;
                  }

                  while (v560 != v553);
                }
              }
            }

LABEL_722:
            v554 = *(v9 + 4);
            if (v547 < v554)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v554 = 0;
          }

          v564 = v547 - v554;
          v565 = &v548[v554];
          *v565 = *"_UVRemapMatrix [[id(";
          *(v565 + 4) = 677669211;
          if (v547 - v554 <= 0x13)
          {
            goto LABEL_1117;
          }

          v566 = v565 + 20;
          v567 = v566;
          if (v19 <= -3)
          {
            v568 = 0;
            v569 = -2 - v19;
            v570 = &v956;
            do
            {
              if (v568 == -25)
              {
                goto LABEL_1117;
              }

              v571 = v568;
              v572 = v570;
              v958[--v568] = (v569 % 0xA) | 0x30;
              --v570;
              v41 = v569 > 9;
              v569 /= 0xAuLL;
            }

            while (v41);
            if ((v568 + 24) < 0x19)
            {
              v958[v568 - 1] = 45;
              v573 = v198 + v491;
              v574 = v544 - v538 - (v198 + v491 + v554 + v921) - 3 * v173 - 114;
              if (-v568 < v574)
              {
                v575 = -v568;
              }

              else
              {
                v575 = v544 - v538 - (v198 + v491 + v554 + v921) - 3 * v173 - 114;
              }

              if (v575 >= 8)
              {
                if (&v170[3 * v173 + 90 - &v953 + v554 + v198 + v491 + v921 + v538 - v568] >= 8)
                {
                  v596 = v575 + 1;
                  v597 = (v575 + 1) & 7;
                  if (!v597)
                  {
                    v597 = 8;
                  }

                  v576 = v596 - v597;
                  if (1 - v571 < v574)
                  {
                    v574 = 1 - v571;
                  }

                  v598 = ~v574 + v597;
                  v599 = v566;
                  v600 = v572;
                  do
                  {
                    v601 = *v600++;
                    *v599++ = v601;
                    v598 += 8;
                  }

                  while (v598);
                }

                else
                {
                  v576 = 0;
                }

                v491 = v923;
              }

              else
              {
                v576 = 0;
              }

              v602 = 2 - v571;
              v603 = v573 + v921 + v538;
              v604 = v544 - v554 - 3 * v173 - 114;
              v605 = v576 + v603;
              while (v605 != v604)
              {
                *(v567 + v576) = *(v572 + v576);
                v572 = (v572 + 1);
                --v602;
                v567 = (v567 + 1);
                --v604;
                if (v576 == v602)
                {
                  goto LABEL_767;
                }
              }
            }

            goto LABEL_1117;
          }

          v577 = 0;
          v578 = &v957;
          v579 = v127;
          do
          {
            if (v577 == -25)
            {
              goto LABEL_1117;
            }

            v580 = v577;
            v581 = v578;
            v958[--v577] = (v579 % 0xA) | 0x30;
            --v578;
            v41 = v579 > 9;
            v579 /= 0xAuLL;
          }

          while (v41);
          v582 = v198 + v491;
          v583 = v544 - (v198 + v491 + v554 + v921 + v538) - 3 * v173 - 114;
          if (~v577 < v583)
          {
            v584 = ~v577;
          }

          else
          {
            v584 = v544 - (v198 + v491 + v554 + v921 + v538) - 3 * v173 - 114;
          }

          if (v584 >= 8)
          {
            if (&v170[3 * v173 + 89 - &v953 + v554 + v198 + v491 + v921 + v538 - v577] >= 8)
            {
              v586 = v584 + 1;
              v587 = (v584 + 1) & 7;
              if (!v587)
              {
                v587 = 8;
              }

              v585 = v586 - v587;
              if (-v580 < v583)
              {
                v583 = -v580;
              }

              v588 = ~v583 + v587;
              v589 = v566;
              v590 = v581;
              do
              {
                v591 = *v590;
                v590 += 8;
                *v589++ = v591;
                v588 += 8;
              }

              while (v588);
            }

            else
            {
              v585 = 0;
            }

            v491 = v923;
          }

          else
          {
            v585 = 0;
          }

          v592 = 1 - v580;
          v593 = v582 + v921 + v538;
          v594 = v544 - v554 - 3 * v173 - 114;
          v595 = v585 + v593;
          do
          {
            if (v595 == v594)
            {
              goto LABEL_1117;
            }

            *(v567 + v585) = v581[v585];
            ++v581;
            --v592;
            v567 = (v567 + 1);
            --v594;
          }

          while (v585 != v592);
LABEL_767:
          if (v19 >= -2)
          {
            v607 = 0;
            do
            {
              ++v607;
              v41 = v127 > 9;
              v127 /= 0xAuLL;
            }

            while (v41);
          }

          else
          {
            v606 = -2 - v19;
            v607 = 1;
            do
            {
              ++v607;
              v103 = v606 >= 0xA;
              v606 /= 0xAuLL;
            }

            while (v103);
          }

          v608 = v564 - 20;
          v609 = v607;
          v103 = v608 >= v607;
          v610 = v608 - v607;
          if (!v103)
          {
            goto LABEL_1117;
          }

          v611 = v566 + v607;
          v611[4] = 10;
          *v611 = 995974441;
          if (v610 <= 4)
          {
            goto LABEL_1117;
          }

          v612 = v610 - 5;
          v613 = v611 + 5;
          if (v172)
          {
            memset(v611 + 5, 32, v172);
            v491 = v923;
            v173 = v930;
            v170 = v931;
            v9 = v933;
            v614 = __lena;
            if (v612 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v614 = 0;
          }

          v615 = &v613[v614];
          *v615 = *"float4x3 __";
          *(v615 + 7) = 1600069683;
          if (v612 - v614 <= 0xA)
          {
            goto LABEL_1117;
          }

          v616 = v612 - v614 - 11;
          v617 = v615 + 11;
          if (v9)
          {
            v618 = *(v9 + 8);
            v619 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v619)
              {
                if (v619 == 1)
                {
                  *v617 = v618->i8[0];
                }

                else
                {
                  memcpy(v615 + 11, v618, v619);
                  v9 = v933;
                }
              }

              goto LABEL_4;
            }

            if (v619 < 0x10)
            {
              v620 = (v615 + 11);
              v622 = &v617[v619];
              if (v617 != &v617[v619])
              {
                goto LABEL_793;
              }
            }

            else
            {
              v620 = (v615 + 11);
              do
              {
                v621 = vld2q_s8(v618->i8);
                v618 += 2;
                *v620 = v621;
                v620 += 16;
              }

              while (v620 != &v617[v619 & 0xFFFFFFF0]);
              v622 = &v617[v619];
              if (v620 == &v617[v619])
              {
                goto LABEL_4;
              }

LABEL_793:
              v623 = &v170[v554 + v198 + v491];
              v624 = v921 + v538 + v609;
              v625 = &v623[4 * v173 + v624 + v619 - v620 + 130];
              if (v625 < 4 || (v620 < v618[16].u64 + 8 * v173 + 2 * &v623[v624 + v619] - 2 * v620 + 4 ? (v626 = v618 >= &v170[4 * v173 + 130 + v198 + v554 + v491 + v609 + v538 + v921 + v619]) : (v626 = 1), !v626))
              {
                v628 = v620;
                v629 = v618;
                goto LABEL_802;
              }

              if (v625 >= 0x20)
              {
                v627 = v625 & 0xFFFFFFFFFFFFFFE0;
                v725 = v618 + 2;
                v726 = (v620 + 16);
                v727 = v625 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v729 = v725[-2];
                  v728 = v725[-1];
                  v731 = *v725;
                  v730 = v725[1];
                  v725 += 4;
                  v726[-1] = vuzp1q_s8(v729, v728);
                  *v726 = vuzp1q_s8(v731, v730);
                  v726 += 2;
                  v727 -= 32;
                }

                while (v727);
                if (v625 != v627)
                {
                  if ((v625 & 0x1C) == 0)
                  {
                    v629 = (v618 + 2 * v627);
                    v628 = (v620 + v627);
                    goto LABEL_802;
                  }

                  goto LABEL_880;
                }
              }

              else
              {
                v627 = 0;
LABEL_880:
                v628 = (v620 + (v625 & 0xFFFFFFFFFFFFFFFCLL));
                v629 = (v618 + 2 * (v625 & 0xFFFFFFFFFFFFFFFCLL));
                v732 = (v618 + 2 * v627);
                v733 = (v620 + v627);
                v734 = v627 - (v625 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v735 = *v732++;
                  *v733++ = vuzp1_s8(v735, v735).u32[0];
                  v734 += 4;
                }

                while (v734);
                if (v625 != (v625 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_802:
                    v630 = v629->i8[0];
                    v629 = (v629 + 2);
                    *v628++ = v630;
                  }

                  while (v628 != v622);
                }
              }
            }

LABEL_4:
            v10 = *(v9 + 4);
            if (v616 < v10)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v10 = 0;
          }

          WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v617[v10], v616 - v10, "_ColorSpaceConversionMatrix [[id(", 0x21uLL, v925, ")]];\n", 5uLL);
          goto LABEL_6;
        }

        v162 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        if (!v162)
        {
          goto LABEL_6;
        }

        v164 = v162;
        v165 = v163;
        v166 = __lena;
        v928 = v163;
        v929 = v162;
        if (__lena)
        {
          memset_pattern16(v162, aIneStateTLTAne, 2 * __lena);
          v165 = v928;
          v164 = v929;
          v167 = v933;
          v166 = __lena;
          v168 = __lena;
          if (v928 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v168 = 0;
          v167 = v933;
        }

        v174 = &v164[2 * v168];
        *v174 = xmmword_2258823B0;
        *(v174 + 1) = xmmword_2258823C0;
        *(v174 + 8) = 6225952;
        *(v174 + 18) = 95;
        if (v165 - v168 <= 0x12)
        {
          goto LABEL_1117;
        }

        v924 = v132;
        v175 = v174 + 38;
        v176 = v165 - v168 - 19;
        v922 = v168;
        if (!v167)
        {
          v181 = 0;
          v179 = v940;
          v180 = v942;
          goto LABEL_307;
        }

        v177 = *(v167 + 8);
        v178 = *(v167 + 4);
        v179 = v940;
        v180 = v942;
        if ((*(v167 + 16) & 4) != 0)
        {
          if (v178 < 0x40)
          {
            v182 = (v174 + 38);
            v189 = &v175[v178];
            if (v175 == v189)
            {
              goto LABEL_306;
            }
          }

          else
          {
            v182 = &v175[v178 & 0xFFFFFFC0];
            v183 = v174 + 38;
            do
            {
              v960.val[0] = *v177;
              v184 = v177[1];
              v967.val[0] = v177[2];
              v185 = v177[3];
              v177 += 4;
              v179 = v185;
              v967.val[1] = v942;
              v974.val[0] = v184;
              v960.val[1] = v942;
              v186 = v183;
              vst2q_s8(v186, v960);
              v186 += 32;
              v974.val[1] = v942;
              vst2q_s8(v186, v974);
              v187 = v183 + 64;
              vst2q_s8(v187, v967);
              v188 = v183 + 96;
              vst2q_s8(v188, *v179.i8);
              v183 += 128;
            }

            while (v183 != v182);
            v189 = &v175[v178];
            if (v182 == v189)
            {
              goto LABEL_306;
            }
          }

          v199 = &v164[2 * v178 + 2 * v168 - v182 + 36];
          if (v199 < 0xE || (v182 < v177->u64 + (v199 >> 1) + 1 ? (v200 = v177 >= v182 + (v199 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v200 = 1), !v200))
          {
            v203 = v177;
            v204 = v182;
            goto LABEL_299;
          }

          v201 = (v199 >> 1) + 1;
          if (v199 >= 0x3E)
          {
            v202 = v201 & 0xFFFFFFFFFFFFFFE0;
            v652 = (v182 + 32);
            v653 = &v177[1];
            v654 = v201 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v655 = *v653[-2].i8;
              v656 = vmovl_u8(*v653);
              v657 = vmovl_high_u8(*v653->i8);
              v652[-2] = vmovl_u8(*v655.i8);
              v652[-1] = vmovl_high_u8(v655);
              *v652 = v656;
              v652[1] = v657;
              v652 += 4;
              v653 += 4;
              v654 -= 32;
            }

            while (v654);
            if (v201 == v202)
            {
              goto LABEL_306;
            }

            if ((v201 & 0x18) == 0)
            {
              v204 = (v182 + 2 * v202);
              v203 = (v177 + v202);
              do
              {
LABEL_299:
                v205 = v203->u8[0];
                v203 = (v203 + 1);
                *v204++ = v205;
              }

              while (v204 != v189);
              goto LABEL_306;
            }
          }

          else
          {
            v202 = 0;
          }

          v203 = (v177 + (v201 & 0xFFFFFFFFFFFFFFF8));
          v204 = (v182 + 2 * (v201 & 0xFFFFFFFFFFFFFFF8));
          v658 = (v182 + 2 * v202);
          v659 = &v177->i8[v202];
          v660 = v202 - (v201 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v661 = *v659++;
            *v658++ = vmovl_u8(v661);
            v660 += 8;
          }

          while (v660);
          if (v201 != (v201 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_299;
          }
        }

        else if (v178)
        {
          if (v178 == 1)
          {
            *v175 = v177->i16[0];
          }

          else
          {
            memcpy(v175, v177, 2 * v178);
            v165 = v928;
            v164 = v929;
            v168 = v922;
            v167 = v933;
            v166 = __lena;
            v179 = v940;
            v180 = v942;
          }
        }

LABEL_306:
        v181 = *(v167 + 4);
        if (v176 < v181)
        {
          goto LABEL_1117;
        }

LABEL_307:
        v206 = &v175[v181];
        *v206 = xmmword_225882450;
        *(v206 + 1) = xmmword_225882460;
        v206[16] = 40;
        if (v176 - v181 <= 0x10)
        {
          goto LABEL_1117;
        }

        v207 = (v206 + 17);
        v208 = v176 - v181 - 17;
        v209 = 0;
        if ((v19 & 0x8000000000000000) == 0)
        {
          v210 = v958;
          v211 = &v957;
          v212 = v19;
          do
          {
            if (v209 == -25)
            {
              goto LABEL_1117;
            }

            v213 = v209;
            v214 = v211;
            v215 = &v953 + v209--;
            v215[24] = (v212 % 0xA) | 0x30;
            --v211;
            --v210;
            v41 = v212 > 9;
            v212 /= 0xAuLL;
          }

          while (v41);
          if (~v209 < v208)
          {
            v216 = ~v209;
          }

          else
          {
            v216 = v176 - v181 - 17;
          }

          if (v216 >= 8)
          {
            v236 = v216 + 1;
            v237 = v236 & 7;
            if ((v236 & 7) == 0)
            {
              v237 = 8;
            }

            v217 = v236 - v237;
            if (-v213 < v208)
            {
              v238 = -v213;
            }

            else
            {
              v238 = v176 - v181 - 17;
            }

            v239 = ~v238 + v237;
            v240 = v207;
            do
            {
              v241 = *v214++;
              *v240++ = vmovl_u8(v241);
              v239 += 8;
            }

            while (v239);
          }

          else
          {
            v217 = 0;
          }

          v242 = 0;
          v243 = &v210[v217];
          v244 = 1 - (v217 + v213);
          v245 = &v164[2 * v217 + 72 + 2 * v181 + 2 * v168];
          v246 = v165 - v181 - v217 - v168 - 36;
          while (v246 != v242)
          {
            *(v245 + 2 * v242) = v243[v242];
            if (v244 == ++v242)
            {
              goto LABEL_345;
            }
          }

          goto LABEL_1117;
        }

        v218 = -v19;
        v219 = &v957;
        v220 = &v956;
        do
        {
          if (v209 == -25)
          {
            goto LABEL_1117;
          }

          v221 = v209;
          v222 = v220;
          v958[--v209] = (v218 % 0xA) | 0x30;
          v220 = (v220 - 1);
          --v219;
          v41 = v218 > 9;
          v218 /= 0xAuLL;
        }

        while (v41);
        if ((v209 + 24) >= 0x19)
        {
          goto LABEL_1117;
        }

        v223 = 0;
        v958[v209 - 1] = 45;
        if (-v209 < v208)
        {
          v224 = -v209;
        }

        else
        {
          v224 = v176 - v181 - 17;
        }

        if (v224 >= 8)
        {
          v225 = v224 + 1;
          v226 = (v224 + 1) & 7;
          if (!v226)
          {
            v226 = 8;
          }

          v223 = v225 - v226;
          v227 = 1 - v221;
          if (1 - v221 >= v208)
          {
            v227 = v176 - v181 - 17;
          }

          v228 = ~v227 + v226;
          v229 = v207;
          do
          {
            v230 = *v222++;
            *v229++ = vmovl_u8(v230);
            v228 += 8;
          }

          while (v228);
        }

        v231 = 0;
        v232 = &v219[v223];
        v233 = 2 - (v223 + v221);
        v234 = &v164[2 * v223 + 72 + 2 * v181 + 2 * v168];
        v235 = v165 - v181 - v223 - v168 - 36;
        do
        {
          if (v235 == v231)
          {
            goto LABEL_1117;
          }

          *(v234 + 2 * v231) = v232[v231];
          ++v231;
        }

        while (v233 != v231);
LABEL_345:
        if (v19 < 0)
        {
          v249 = -v19;
          v247 = 1;
          do
          {
            ++v247;
            v103 = v249 >= 0xA;
            v249 /= 0xAuLL;
          }

          while (v103);
        }

        else
        {
          v247 = 0;
          v248 = v19;
          do
          {
            ++v247;
            v41 = v248 > 9;
            v248 /= 0xAuLL;
          }

          while (v41);
        }

        v103 = v208 >= v247;
        v250 = v208 - v247;
        if (!v103)
        {
          goto LABEL_1117;
        }

        v251 = &v207->i8[2 * v247];
        *v251 = *&aIneStateTLTAne[48];
        *(v251 + 4) = 10;
        if (v250 <= 4)
        {
          goto LABEL_1117;
        }

        v927 = v247;
        v252 = v251 + 10;
        v253 = v250 - 5;
        v940 = v179;
        v942 = v180;
        v932 = v181;
        if (v166)
        {
          memset_pattern16(v252, aIneStateTLTAne, 2 * v166);
          v164 = v929;
          v181 = v932;
          v168 = v922;
          v167 = v933;
          v166 = __lena;
          v180 = v942;
          v254 = __lena;
          if (v253 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v254 = 0;
        }

        v255 = &v252[2 * v254];
        *v255 = 116;
        *(v255 + 2) = xmmword_225882470;
        *(v255 + 18) = xmmword_225882480;
        *(v255 + 34) = 6226015;
        v256 = v253 - v254;
        if (v256 <= 0x12)
        {
          goto LABEL_1117;
        }

        v257 = v255 + 38;
        v258 = v256 - 19;
        if (!v167)
        {
          v261 = 0;
          goto LABEL_393;
        }

        v259 = *(v167 + 8);
        v260 = *(v167 + 4);
        if ((*(v167 + 16) & 4) != 0)
        {
          if (v260 < 0x40)
          {
            v262 = (v255 + 38);
            v269 = &v257[2 * v260];
            if (v257 == v269)
            {
              goto LABEL_392;
            }
          }

          else
          {
            v262 = &v257[2 * (v260 & 0xFFFFFFC0)];
            v263 = v257;
            do
            {
              v961.val[0] = *v259;
              v264 = v259[1];
              v968.val[0] = v259[2];
              v265 = v259[3];
              v259 += 4;
              v975.val[0] = v265;
              v968.val[1] = v180;
              v981.val[0] = v264;
              v961.val[1] = v180;
              v266 = v263;
              vst2q_s8(v266, v961);
              v266 += 32;
              v975.val[1] = v180;
              v981.val[1] = v180;
              vst2q_s8(v266, v981);
              v267 = v263 + 64;
              vst2q_s8(v267, v968);
              v268 = v263 + 96;
              v263 += 128;
              vst2q_s8(v268, v975);
            }

            while (v263 != v262);
            v269 = &v257[2 * v260];
            if (v262 == v269)
            {
              goto LABEL_392;
            }
          }

          v270 = &v164[4 * v168 + 2 * v181 + 2 * v927 + 2 * v260 - v262 + 118];
          if (v270 < 0xE || (v262 < v259->u64 + (v270 >> 1) + 1 ? (v271 = v259 >= v262 + (v270 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v271 = 1), !v271))
          {
            v274 = v259;
            v275 = v262;
            goto LABEL_380;
          }

          v272 = (v270 >> 1) + 1;
          if (v270 >= 0x3E)
          {
            v273 = v272 & 0xFFFFFFFFFFFFFFE0;
            v662 = (v262 + 32);
            v663 = &v259[1];
            v664 = v272 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v665 = *v663[-2].i8;
              v666 = vmovl_u8(*v663);
              v667 = vmovl_high_u8(*v663->i8);
              v662[-2] = vmovl_u8(*v665.i8);
              v662[-1] = vmovl_high_u8(v665);
              *v662 = v666;
              v662[1] = v667;
              v662 += 4;
              v663 += 4;
              v664 -= 32;
            }

            while (v664);
            if (v272 == v273)
            {
              goto LABEL_392;
            }

            if ((v272 & 0x18) == 0)
            {
              v275 = (v262 + 2 * v273);
              v274 = (v259 + v273);
              do
              {
LABEL_380:
                v276 = v274->u8[0];
                v274 = (v274 + 1);
                *v275 = v276;
                v275 += 2;
              }

              while (v275 != v269);
              goto LABEL_392;
            }
          }

          else
          {
            v273 = 0;
          }

          v274 = (v259 + (v272 & 0xFFFFFFFFFFFFFFF8));
          v275 = (v262 + 2 * (v272 & 0xFFFFFFFFFFFFFFF8));
          v668 = (v262 + 2 * v273);
          v669 = &v259->i8[v273];
          v670 = v273 - (v272 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v671 = *v669++;
            *v668++ = vmovl_u8(v671);
            v670 += 8;
          }

          while (v670);
          if (v272 != (v272 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_380;
          }
        }

        else if (v260)
        {
          if (v260 == 1)
          {
            *v257 = v259->i16[0];
          }

          else
          {
            memcpy(v255 + 38, v259, 2 * v260);
            v164 = v929;
            v181 = v932;
            v168 = v922;
            v167 = v933;
            v166 = __lena;
            v180 = v942;
          }
        }

LABEL_392:
        v261 = *(v167 + 4);
        if (v258 < v261)
        {
          goto LABEL_1117;
        }

LABEL_393:
        v283 = &v257[2 * v261];
        *v283 = 95;
        *(v283 + 2) = xmmword_225882490;
        *(v283 + 18) = xmmword_225882460;
        *(v283 + 17) = 40;
        if (v258 - v261 <= 0x11)
        {
          goto LABEL_1117;
        }

        v284 = (v283 + 36);
        v285 = v258 - v261 - 18;
        if (v19 <= -2)
        {
          v286 = 0;
          v287 = ~v19;
          v288 = &v957;
          v289 = &v956;
          do
          {
            if (v286 == -25)
            {
              goto LABEL_1117;
            }

            v290 = v286;
            v291 = v289;
            v958[--v286] = (v287 % 0xA) | 0x30;
            v289 = (v289 - 1);
            --v288;
            v41 = v287 > 9;
            v287 /= 0xAuLL;
          }

          while (v41);
          if ((v286 + 24) < 0x19)
          {
            v292 = 0;
            v958[v286 - 1] = 45;
            if (-v286 < v285)
            {
              v293 = -v286;
            }

            else
            {
              v293 = v258 - v261 - 18;
            }

            if (v293 >= 8)
            {
              v294 = v293 + 1;
              v295 = (v293 + 1) & 7;
              if (!v295)
              {
                v295 = 8;
              }

              v292 = v294 - v295;
              v296 = 1 - v290;
              if (1 - v290 >= v285)
              {
                v296 = v258 - v261 - 18;
              }

              v297 = ~v296 + v295;
              v298 = v284;
              do
              {
                v299 = *v291++;
                *v298++ = vmovl_u8(v299);
                v297 += 8;
              }

              while (v297);
            }

            v300 = 0;
            v301 = &v288[v292];
            v302 = v928 - v261 - v292;
            v303 = 2 - (v292 + v290);
            v304 = &v164[4 * v168 + 156 + 2 * v181 + 2 * v292 + 2 * v261 + 2 * v927];
            while (v302 - v181 - v927 - 2 * v168 - 78 != v300)
            {
              *(v304 + 2 * v300) = v301[v300];
              if (v303 == ++v300)
              {
                goto LABEL_431;
              }
            }
          }

          goto LABEL_1117;
        }

        v305 = 0;
        v306 = v958;
        v307 = &v957;
        v308 = v122;
        do
        {
          if (v305 == -25)
          {
            goto LABEL_1117;
          }

          v309 = v305;
          v310 = v307;
          v311 = &v953 + v305--;
          v311[24] = (v308 % 0xA) | 0x30;
          --v307;
          --v306;
          v41 = v308 > 9;
          v308 /= 0xAuLL;
        }

        while (v41);
        if (~v305 < v285)
        {
          v312 = ~v305;
        }

        else
        {
          v312 = v258 - v261 - 18;
        }

        if (v312 >= 8)
        {
          v314 = v312 + 1;
          v315 = v314 & 7;
          if ((v314 & 7) == 0)
          {
            v315 = 8;
          }

          v313 = v314 - v315;
          if (-v309 < v285)
          {
            v316 = -v309;
          }

          else
          {
            v316 = v258 - v261 - 18;
          }

          v317 = ~v316 + v315;
          v318 = v284;
          do
          {
            v319 = *v310++;
            *v318++ = vmovl_u8(v319);
            v317 += 8;
          }

          while (v317);
        }

        else
        {
          v313 = 0;
        }

        v320 = 0;
        v321 = &v306[v313];
        v322 = v928 - v261 - v313;
        v323 = 1 - (v313 + v309);
        v324 = &v164[4 * v168 + 156 + 2 * v181 + 2 * v313 + 2 * v261 + 2 * v927];
        do
        {
          if (v322 - v181 - v927 - 2 * v168 - 78 == v320)
          {
            goto LABEL_1117;
          }

          *(v324 + 2 * v320) = v321[v320];
          ++v320;
        }

        while (v323 != v320);
LABEL_431:
        if (v19 >= -1)
        {
          v326 = 0;
          do
          {
            ++v326;
            v41 = v122 > 9;
            v122 /= 0xAuLL;
          }

          while (v41);
        }

        else
        {
          v325 = ~v19;
          v326 = 1;
          do
          {
            ++v326;
            v103 = v325 >= 0xA;
            v325 /= 0xAuLL;
          }

          while (v103);
        }

        v327 = v326;
        v103 = v285 >= v326;
        v328 = v285 - v326;
        if (!v103)
        {
          goto LABEL_1117;
        }

        v329 = &v284->i8[2 * v326];
        *v329 = 41;
        *(v329 + 2) = *&aIneStateTLTAne[52];
        if (v328 <= 4)
        {
          goto LABEL_1117;
        }

        v919 = v261;
        v330 = v329 + 10;
        v331 = v328 - 5;
        if (v166)
        {
          memset_pattern16(v329 + 10, aIneStateTLTAne, 2 * v166);
          v164 = v929;
          v181 = v932;
          v168 = v922;
          v167 = v933;
          v166 = __lena;
          v180 = v942;
          v332 = __lena;
          if (v331 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v332 = 0;
        }

        v333 = &v330[2 * v332];
        *v333 = 102;
        *(v333 + 2) = xmmword_2258824A0;
        *(v333 + 18) = 6226015;
        v334 = v331 - v332;
        if (v334 <= 0xA)
        {
          goto LABEL_1117;
        }

        v920 = v327;
        v335 = v333 + 22;
        v336 = v334 - 11;
        if (!v167)
        {
          v339 = 0;
          goto LABEL_470;
        }

        v337 = *(v167 + 8);
        v338 = *(v167 + 4);
        if ((*(v167 + 16) & 4) != 0)
        {
          if (v338 < 0x40)
          {
            v340 = (v333 + 22);
            v347 = &v335[2 * v338];
            if (v335 == v347)
            {
              goto LABEL_469;
            }
          }

          else
          {
            v340 = &v335[2 * (v338 & 0xFFFFFFC0)];
            v341 = v335;
            do
            {
              v962.val[0] = *v337;
              v342 = v337[1];
              v969.val[0] = v337[2];
              v343 = v337[3];
              v337 += 4;
              v976.val[0] = v343;
              v969.val[1] = v180;
              v982.val[0] = v342;
              v962.val[1] = v180;
              v344 = v341;
              vst2q_s8(v344, v962);
              v344 += 32;
              v976.val[1] = v180;
              v982.val[1] = v180;
              vst2q_s8(v344, v982);
              v345 = v341 + 64;
              vst2q_s8(v345, v969);
              v346 = v341 + 96;
              v341 += 128;
              vst2q_s8(v346, v976);
            }

            while (v341 != v340);
            v347 = &v335[2 * v338];
            if (v340 == v347)
            {
              goto LABEL_469;
            }
          }

          v348 = v181 + v919 + v927 + v920;
          v349 = &v164[6 * v168 + 2 * v348 + 2 * v338 - v340 + 186];
          if (v349 < 0xE || ((v350 = &v164[6 * v168 + 2 * v348 + 2 * v338 - v340 + 186], v340 < v337->u64 + (v350 >> 1) + 1) ? (v351 = v337 >= v340 + (v350 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v351 = 1), !v351))
          {
            v354 = v337;
            v355 = v340;
            goto LABEL_466;
          }

          v352 = (v349 >> 1) + 1;
          if (v349 >= 0x3E)
          {
            v353 = v352 & 0xFFFFFFFFFFFFFFE0;
            v672 = (v340 + 32);
            v673 = &v337[1];
            v674 = v352 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v675 = *v673[-2].i8;
              v676 = vmovl_u8(*v673);
              v677 = vmovl_high_u8(*v673->i8);
              v672[-2] = vmovl_u8(*v675.i8);
              v672[-1] = vmovl_high_u8(v675);
              *v672 = v676;
              v672[1] = v677;
              v672 += 4;
              v673 += 4;
              v674 -= 32;
            }

            while (v674);
            if (v352 == v353)
            {
              goto LABEL_469;
            }

            if ((v352 & 0x18) == 0)
            {
              v355 = (v340 + 2 * v353);
              v354 = (v337 + v353);
              do
              {
LABEL_466:
                v356 = v354->u8[0];
                v354 = (v354 + 1);
                *v355 = v356;
                v355 += 2;
              }

              while (v355 != v347);
              goto LABEL_469;
            }
          }

          else
          {
            v353 = 0;
          }

          v354 = (v337 + (v352 & 0xFFFFFFFFFFFFFFF8));
          v355 = (v340 + 2 * (v352 & 0xFFFFFFFFFFFFFFF8));
          v678 = (v340 + 2 * v353);
          v679 = &v337->i8[v353];
          v680 = v353 - (v352 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v681 = *v679++;
            *v678++ = vmovl_u8(v681);
            v680 += 8;
          }

          while (v680);
          if (v352 != (v352 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_466;
          }
        }

        else if (v338)
        {
          if (v338 == 1)
          {
            *v335 = v337->i16[0];
          }

          else
          {
            memcpy(v333 + 22, v337, 2 * v338);
            v164 = v929;
            v181 = v932;
            v168 = v922;
            v167 = v933;
            v166 = __lena;
            v180 = v942;
          }
        }

LABEL_469:
        v339 = *(v167 + 4);
        if (v336 < v339)
        {
          goto LABEL_1117;
        }

LABEL_470:
        v357 = &v335[2 * v339];
        *v357 = 95;
        *(v357 + 2) = xmmword_2258824B0;
        *(v357 + 18) = xmmword_2258824C0;
        *(v357 + 34) = 6553705;
        *(v357 + 19) = 40;
        if (v336 - v339 <= 0x13)
        {
          goto LABEL_1117;
        }

        v358 = (v357 + 40);
        if (v19 <= -3)
        {
          v359 = 0;
          v360 = 0;
          v361 = -2 - v19;
          v362 = &v957;
          v363 = &v956;
          do
          {
            if (v359 == -25)
            {
              goto LABEL_1117;
            }

            v364 = v359;
            v365 = v363;
            v366 = &v953 + v359;
            ++v360;
            --v359;
            v366[24] = (v361 % 0xA) | 0x30;
            v363 = (v363 - 1);
            --v362;
            v41 = v361 > 9;
            v361 /= 0xAuLL;
          }

          while (v41);
          if ((v359 + 24) < 0x19)
          {
            v958[v359 - 1] = 45;
            v367 = v181 + v919;
            if (-v359 < v928 - v920 - (v181 + v919 + v339 + v927) - 3 * v168 - 114)
            {
              v368 = -v359;
            }

            else
            {
              v368 = v928 - v920 - (v181 + v919 + v339 + v927) - 3 * v168 - 114;
            }

            if (v368 >= 0x10)
            {
              v384 = v367 + v927 + v920;
              v385 = v928 - v339 - v384 - 3 * v168 - 114;
              if (-v359 < v385)
              {
                v386 = -v359;
              }

              else
              {
                v386 = v928 - v339 - v384 - 3 * v168 - 114;
              }

              if (v360 >= v385)
              {
                v360 = v928 - v339 - v384 - 3 * v168 - 114;
              }

              if (v358 >= &v958[v359 + v360] || &v958[v359 - 1] >= &v164[6 * v168 + 230 + 2 * v339 + 2 * v384 + 2 * v386])
              {
                v398 = (v368 + 1) & 7;
                if (!v398)
                {
                  v398 = 8;
                }

                v369 = v368 + 1 - v398;
                v399 = 1 - v364;
                if (1 - v364 >= v385)
                {
                  v399 = v928 - v339 - v384 - 3 * v168 - 114;
                }

                v400 = ~v399 + v398;
                v401 = v358;
                do
                {
                  v402 = *v365++;
                  *v401++ = vmovl_u8(v402);
                  v400 += 8;
                }

                while (v400);
              }

              else
              {
                v369 = 0;
              }

              v181 = v932;
            }

            else
            {
              v369 = 0;
            }

            v403 = 0;
            v404 = &v362[v369];
            v405 = 2 - (v369 + v364);
            v406 = v367 + v927 + v920;
            v407 = &v164[6 * v168 + 228 + 2 * v369 + 2 * v339 + 2 * v406];
            v408 = v928 - v369 - v339 - v406 - 3 * v168 - 114;
            while (v408 != v403)
            {
              *(v407 + 2 * v403) = v404[v403];
              if (v405 == ++v403)
              {
                goto LABEL_523;
              }
            }
          }

          goto LABEL_1117;
        }

        v370 = 0;
        v371 = -1;
        v372 = v958;
        v373 = &v957;
        v374 = v127;
        do
        {
          if (v370 == -25)
          {
            goto LABEL_1117;
          }

          v375 = v370;
          v376 = v373;
          v377 = &v953 + v370;
          ++v371;
          --v370;
          v377[24] = (v374 % 0xA) | 0x30;
          --v373;
          --v372;
          v41 = v374 > 9;
          v374 /= 0xAuLL;
        }

        while (v41);
        v378 = v932 + v919;
        v379 = v928 - v920 - (v932 + v919 + v339 + v927) - 3 * v168 - 114;
        v380 = ~v370;
        if (~v370 < v379)
        {
          v379 = ~v370;
        }

        if (v379 < 0x10)
        {
          goto LABEL_493;
        }

        v381 = v378 + v927 + v920;
        v382 = v928 - v339 - v381 - 3 * v168 - 114;
        if (v380 >= v382)
        {
          v380 = v928 - v339 - v381 - 3 * v168 - 114;
        }

        if (v371 >= v382)
        {
          v371 = v928 - v339 - v381 - 3 * v168 - 114;
        }

        if (v358 >= &v958[v370 + 1 + v371] || &v958[v370] >= &v164[6 * v168 + 230 + 2 * v339 + 2 * v381 + 2 * v380])
        {
          v387 = (v379 + 1) & 7;
          if (!v387)
          {
            v387 = 8;
          }

          v383 = v379 + 1 - v387;
          if (-v375 < v382)
          {
            v388 = -v375;
          }

          else
          {
            v388 = v928 - v339 - v381 - 3 * v168 - 114;
          }

          v389 = ~v388 + v387;
          v390 = v358;
          do
          {
            v391 = *v376++;
            *v390++ = vmovl_u8(v391);
            v389 += 8;
          }

          while (v389);
        }

        else
        {
LABEL_493:
          v383 = 0;
        }

        v181 = v932;
        v392 = 0;
        v393 = &v372[v383];
        v394 = 1 - (v383 + v375);
        v395 = v378 + v927 + v920;
        v396 = &v164[6 * v168 + 228 + 2 * v383 + 2 * v339 + 2 * v395];
        v397 = v928 - v383 - v339 - v395 - 3 * v168 - 114;
        do
        {
          if (v397 == v392)
          {
            goto LABEL_1117;
          }

          *(v396 + 2 * v392) = v393[v392];
          ++v392;
        }

        while (v394 != v392);
LABEL_523:
        if (v19 >= -2)
        {
          v410 = 0;
          do
          {
            ++v410;
            v41 = v127 > 9;
            v127 /= 0xAuLL;
          }

          while (v41);
        }

        else
        {
          v409 = -2 - v19;
          v410 = 1;
          do
          {
            ++v410;
            v103 = v409 >= 0xA;
            v409 /= 0xAuLL;
          }

          while (v103);
        }

        v411 = v336 - v339 - 20;
        v412 = v410;
        v103 = v411 >= v410;
        v413 = v411 - v410;
        if (!v103)
        {
          goto LABEL_1117;
        }

        v414 = &v358->i8[2 * v410];
        *v414 = 41;
        *(v414 + 2) = *&aIneStateTLTAne[52];
        if (v413 <= 4)
        {
          goto LABEL_1117;
        }

        v415 = v414 + 10;
        v416 = v413 - 5;
        if (v166)
        {
          memset_pattern16(v414 + 10, aIneStateTLTAne, 2 * v166);
          v164 = v929;
          v181 = v932;
          v168 = v922;
          v167 = v933;
          v417 = __lena;
          v180 = v942;
          if (v416 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v417 = 0;
        }

        v418 = &v415[2 * v417];
        *v418 = 102;
        *(v418 + 2) = xmmword_2258824D0;
        *(v418 + 18) = 6226015;
        if (v416 - v417 <= 0xA)
        {
          goto LABEL_1117;
        }

        v419 = v418 + 22;
        v420 = v416 - v417 - 11;
        if (v167)
        {
          v421 = *(v167 + 8);
          v422 = *(v167 + 4);
          if ((*(v167 + 16) & 4) == 0)
          {
            if (v422)
            {
              if (v422 == 1)
              {
                *v419 = v421->i16[0];
              }

              else
              {
                memcpy(v419, v421, 2 * v422);
                v167 = v933;
              }
            }

LABEL_564:
            v423 = *(v167 + 4);
            if (v420 < v423)
            {
              goto LABEL_1117;
            }

            goto LABEL_565;
          }

          if (v422 < 0x40)
          {
            v424 = (v418 + 22);
            v431 = &v419[v422];
            if (v419 == v431)
            {
              goto LABEL_564;
            }
          }

          else
          {
            v424 = &v419[v422 & 0xFFFFFFC0];
            v425 = v418 + 22;
            do
            {
              v963.val[0] = *v421;
              v426 = v421[1];
              v970.val[0] = v421[2];
              v427 = v421[3];
              v421 += 4;
              v977.val[0] = v427;
              v970.val[1] = v180;
              v983.val[0] = v426;
              v963.val[1] = v180;
              v428 = v425;
              vst2q_s8(v428, v963);
              v428 += 32;
              v977.val[1] = v180;
              v983.val[1] = v180;
              vst2q_s8(v428, v983);
              v429 = v425 + 64;
              vst2q_s8(v429, v970);
              v430 = v425 + 96;
              v425 += 128;
              vst2q_s8(v430, v977);
            }

            while (v425 != v424);
            v431 = &v419[v422];
            if (v424 == v431)
            {
              goto LABEL_564;
            }
          }

          v432 = &v164[8 * v168 + 2 * v339 + 2 * v181 + 2 * v919 + 2 * v927 + 2 * v920 + 2 * v412 + 2 * v422 - v424 + 258];
          if (v432 < 0xE || (v424 < v421->u64 + (v432 >> 1) + 1 ? (v433 = v421 >= v424 + (v432 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v433 = 1), !v433))
          {
            v436 = v421;
            v437 = v424;
            goto LABEL_558;
          }

          v434 = (v432 >> 1) + 1;
          if (v432 < 0x3E)
          {
            v435 = 0;
            goto LABEL_848;
          }

          v435 = v434 & 0xFFFFFFFFFFFFFFE0;
          v682 = (v424 + 32);
          v683 = &v421[1];
          v684 = v434 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v685 = *v683[-2].i8;
            v686 = vmovl_u8(*v683);
            v687 = vmovl_high_u8(*v683->i8);
            v682[-2] = vmovl_u8(*v685.i8);
            v682[-1] = vmovl_high_u8(v685);
            *v682 = v686;
            v682[1] = v687;
            v682 += 4;
            v683 += 4;
            v684 -= 32;
          }

          while (v684);
          if (v434 == v435)
          {
            goto LABEL_564;
          }

          if ((v434 & 0x18) != 0)
          {
LABEL_848:
            v436 = (v421 + (v434 & 0xFFFFFFFFFFFFFFF8));
            v437 = (v424 + 2 * (v434 & 0xFFFFFFFFFFFFFFF8));
            v688 = (v424 + 2 * v435);
            v689 = &v421->i8[v435];
            v690 = v435 - (v434 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v691 = *v689++;
              *v688++ = vmovl_u8(v691);
              v690 += 8;
            }

            while (v690);
            if (v434 == (v434 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_564;
            }
          }

          else
          {
            v437 = (v424 + 2 * v435);
            v436 = (v421 + v435);
          }

          do
          {
LABEL_558:
            v438 = v436->u8[0];
            v436 = (v436 + 1);
            *v437++ = v438;
          }

          while (v437 != v431);
          goto LABEL_564;
        }

        v423 = 0;
LABEL_565:
        v442 = &v419[v423];
        *v442 = 95;
        *(v442 + 1) = xmmword_2258824E0;
        *(v442 + 9) = xmmword_2258824F0;
        *(v442 + 17) = xmmword_225882500;
        *(v442 + 25) = xmmword_225882510;
        v443 = v420 - v423;
        if (v443 <= 0x20)
        {
          goto LABEL_1117;
        }

        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v442 + 33), v443 - 33, v924, ")]];\n", 5uLL);
LABEL_6:
        v4 = v940;
        v8 = v942;
        if (++v7 == v939)
        {
          goto LABEL_894;
        }
      }

      else
      {
LABEL_22:
        v20 = *(this + 20);
        v21 = (4 * *(this + 26));
        if (__CFADD__(v20, v21))
        {
          v22 = 0xFFFFFFFFLL;
        }

        else
        {
          v22 = (v20 + v21);
        }

        v23 = *(this + 9);
        if ((v23 || (v23 = *(this + 8)) != 0) && (*(v23 + 16) & 4) == 0)
        {
          v24 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
          if (v24)
          {
            v25 = v21 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            memset_pattern16(v24, aIneStateTLTAne, 2 * v21);
          }
        }

        else
        {
          v26 = MEMORY[0x22AA68210](this + 64, v22);
          if (v26)
          {
            v27 = v21 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            memset(v26, 32, v21);
          }
        }

        WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(v11 + 104) + 24), 0);
        LOBYTE(v949) = 32;
        v953 = *(v11 + 48);
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), &v949, &v953);
        v28 = *(v11 + 100);
        if (v28)
        {
          v29 = *(v11 + 88);
          v30 = 8 * v28;
          do
          {
            v31 = *v29;
            LOBYTE(v953) = 32;
            v32 = *(this + 9);
            if (!v32 || (v33 = *(this + 20), v33 >= *(v32 + 4)) || *(this + 8))
            {
              WTF::StringBuilder::append();
            }

            else
            {
              v34 = *(v32 + 16);
              v35 = *(v32 + 8);
              *(this + 20) = v33 + 1;
              if ((v34 & 4) != 0)
              {
                *(v35 + v33) = 32;
              }

              else
              {
                *(v35 + 2 * v33) = 32;
              }
            }

            (*(*this + 96))(this, v31);
            ++v29;
            v30 -= 8;
          }

          while (v30);
        }

        WTF::StringBuilder::append();
        if (v938 != 7)
        {
          goto LABEL_6;
        }

        v36 = *(v11 + 116);
        if (!v36)
        {
          goto LABEL_6;
        }

        WTF::String::number(v36);
        v37 = 0;
        v38 = v953;
        v39 = ++v937;
        v40 = *(this + 20);
        do
        {
          ++v37;
          v41 = v39 > 9;
          v39 /= 0xAu;
        }

        while (v41);
        if (v953)
        {
          v42 = *(v953 + 1);
        }

        else
        {
          v42 = 0;
        }

        v43 = (4 * *(this + 26));
        v44 = v42 + 5;
        if (v42 >= 0xFFFFFFFB)
        {
          v44 = -1;
        }

        v103 = __CFADD__(v37, v44);
        v45 = v37 + v44;
        if (v103)
        {
          v45 = -1;
        }

        v103 = __CFADD__(v45, 17);
        v46 = v45 + 17;
        if (v103)
        {
          v46 = -1;
        }

        v103 = __CFADD__(v43, v46);
        v47 = v43 + v46;
        if (v103)
        {
          v47 = -1;
        }

        v103 = __CFADD__(v40, v47);
        v48 = v40 + v47;
        if (v103)
        {
          v49 = 0xFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        v50 = *(this + 9);
        if ((v50 || (v50 = *(this + 8)) != 0) && (*(v50 + 16) & 4) == 0 || v953 && (v953[16] & 4) == 0)
        {
          v51 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
          v4 = v940;
          v8 = v942;
          if (v51)
          {
            v53 = v51;
            v54 = v52;
            if (v43)
            {
              memset_pattern16(v51, aIneStateTLTAne, 2 * v43);
              if (v54 < v43)
              {
                goto LABEL_1117;
              }
            }

            else
            {
              v43 = 0;
            }

            v64 = v53 + 2 * v43;
            *v64 = xmmword_225882520;
            *(v64 + 16) = xmmword_225882530;
            *(v64 + 32) = 103;
            v65 = v54 - v43;
            if (v54 - v43 <= 0x10)
            {
              goto LABEL_1117;
            }

            v66 = v64 + 34;
            v67 = v65 - 17;
            v68 = v937;
            WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v937, (v64 + 34), v65 - 17);
            LODWORD(v69) = 0;
            v70 = 1;
            do
            {
              v71 = v70;
              v69 = (v69 + 1);
              ++v70;
              v41 = v68 > 9;
              v68 /= 0xAu;
            }

            while (v41);
            v4 = v940;
            v8 = v942;
            if (v67 <= v69)
            {
              goto LABEL_1117;
            }

            v72 = (v66 + 2 * v69);
            *v72 = 91;
            v73 = v72 + 1;
            if (v38)
            {
              v52 = *(v38 + 1);
              v74 = *(v38 + 1);
              if ((v38[16] & 4) == 0)
              {
                if (v74)
                {
                  if (v74 == 1)
                  {
                    *v73 = *v52;
                  }

                  else
                  {
                    memcpy(v73, v52, 2 * v74);
                    v4 = v940;
                    v8 = v942;
                  }
                }

                goto LABEL_132;
              }

              if (v74 < 0x40)
              {
                v76 = v73;
                v83 = &v73[v74];
                if (v73 != v83)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                v76 = &v73[v74 & 0xFFFFFFC0];
                v77 = v73;
                do
                {
                  v959.val[0] = *v52;
                  v78 = *(v52 + 1);
                  v966.val[0] = v52[2];
                  v79 = *(v52 + 3);
                  v52 += 4;
                  v973.val[0] = v79;
                  v966.val[1] = v942;
                  v980.val[0] = v78;
                  v959.val[1] = v942;
                  v80 = v77;
                  vst2q_s8(v80, v959);
                  v80 += 32;
                  v973.val[1] = v942;
                  v980.val[1] = v942;
                  vst2q_s8(v80, v980);
                  v81 = v77 + 64;
                  vst2q_s8(v81, v966);
                  v82 = v77 + 96;
                  v77 += 128;
                  vst2q_s8(v82, v973);
                }

                while (v77 != v76);
                v83 = &v73[v74];
                if (v76 == v83)
                {
                  goto LABEL_132;
                }

LABEL_120:
                v102 = v66 + 2 * (v69 + v74) - v76;
                if (v102 < 0xE || (v76 < v52 + (v102 >> 1) + 1 ? (v103 = v52 >= v76 + (v102 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v103 = 1), !v103))
                {
                  v107 = v52;
                  v108 = v76;
                  goto LABEL_129;
                }

                v104 = (v102 >> 1) + 1;
                v105 = v74 + v71;
                if (v102 >= 0x3E)
                {
                  v106 = v104 & 0xFFFFFFFFFFFFFFE0;
                  v631 = (v76 + 32);
                  v632 = (v52 + 1);
                  v633 = (((v64 - v76 + 2 * v105 + 34) >> 1) + 1) & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v634 = *v632[-2].i8;
                    v635 = vmovl_u8(*v632);
                    v636 = vmovl_high_u8(*v632->i8);
                    v631[-2] = vmovl_u8(*v634.i8);
                    v631[-1] = vmovl_high_u8(v634);
                    *v631 = v635;
                    v631[1] = v636;
                    v631 += 4;
                    v632 += 4;
                    v633 -= 32;
                  }

                  while (v633);
                  if (v104 != v106)
                  {
                    if ((v104 & 0x18) == 0)
                    {
                      v108 = (v76 + 2 * v106);
                      v107 = v52 + v106;
                      goto LABEL_129;
                    }

                    goto LABEL_808;
                  }
                }

                else
                {
                  v106 = 0;
LABEL_808:
                  v107 = v52 + (v104 & 0xFFFFFFFFFFFFFFF8);
                  v108 = (v76 + 2 * (v104 & 0xFFFFFFFFFFFFFFF8));
                  v637 = (v76 + 2 * v106);
                  v638 = (v52 + v106);
                  v639 = v106 - ((((v64 - v76 + 2 * v105 + 34) >> 1) + 1) & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    v640 = *v638++;
                    *v637++ = vmovl_u8(v640);
                    v639 += 8;
                  }

                  while (v639);
                  if (v104 != (v104 & 0xFFFFFFFFFFFFFFF8))
                  {
                    do
                    {
LABEL_129:
                      v109 = *v107++;
                      *v108++ = v109;
                    }

                    while (v108 != v83);
                  }
                }
              }

LABEL_132:
              v75 = *(v38 + 1);
              if (v67 + ~v69 < v75)
              {
                goto LABEL_1117;
              }
            }

            else
            {
              v75 = 0;
            }

            *&v73[v75] = *&aIneStateTLTAne[56];
          }

LABEL_134:
          v110 = v953;
          v953 = 0;
          if (v110)
          {
            goto LABEL_135;
          }

          goto LABEL_137;
        }

        v55 = MEMORY[0x22AA68210](this + 64, v49);
        v4 = v940;
        v8 = v942;
        if (!v55)
        {
          goto LABEL_134;
        }

        v56 = v55;
        v57 = v52;
        if (v43)
        {
          memset(v55, 32, v43);
          if (v57 < v43)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v43 = 0;
        }

        v84 = v57 - v43;
        v85 = v56 + v43;
        *v85 = *"uint8_t __padding";
        *(v85 + 16) = 103;
        if (v57 - v43 <= 0x10)
        {
          goto LABEL_1117;
        }

        __len = v56;
        v86 = v7;
        v87 = v85 + 17;
        v88 = v937;
        v89 = v84 - 17;
        WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v937, (v85 + 17), v84 - 17);
        LODWORD(v90) = 0;
        v91 = 1;
        do
        {
          v92 = v91;
          v90 = (v90 + 1);
          ++v91;
          v41 = v88 > 9;
          v88 /= 0xAu;
        }

        while (v41);
        v4 = v940;
        v8 = v942;
        if (v89 <= v90)
        {
          goto LABEL_1117;
        }

        v93 = v90 + v87;
        v94 = (v90 + v87);
        *v94 = 91;
        v95 = v94 + 1;
        if (!v38)
        {
          v101 = 0;
          v7 = v86;
          goto LABEL_303;
        }

        v96 = v89;
        v52 = *(v38 + 1);
        v97 = *(v38 + 1);
        v7 = v86;
        if ((v38[16] & 4) != 0)
        {
          if (v97)
          {
            if (v97 == 1)
            {
              *v95 = *v52;
            }

            else
            {
              memcpy(v95, v52, v97);
              v4 = v940;
              v8 = v942;
            }
          }
        }

        else
        {
          if (v97 < 0x10)
          {
            v98 = v95;
            v100 = &v95[v97];
            if (v95 == &v95[v97])
            {
              goto LABEL_302;
            }
          }

          else
          {
            v98 = v95;
            do
            {
              v99 = vld2q_s8(v52);
              v52 += 2;
              *v98++ = v99;
            }

            while (v98 != &v95[v97 & 0xFFFFFFF0]);
            v100 = &v95[v97];
            if (v98 == &v95[v97])
            {
              goto LABEL_302;
            }
          }

          v111 = v93 + v97;
          v112 = v93 + v97 - v98;
          v113 = v112 + 1;
          if (v112 + 1 < 4 || ((v114 = v111 + 1, v98 < (v52 + 2 * v112 + 2)) ? (v115 = v52 >= v114) : (v115 = 1), !v115))
          {
            v117 = v98;
            v118 = v52;
            goto LABEL_149;
          }

          if (v113 >= 0x20)
          {
            v116 = v113 & 0xFFFFFFFFFFFFFFE0;
            v641 = (v52 + 2);
            v642 = (v98 + 1);
            v643 = (__len + v97 + v43 - v98 + v92 + 18) & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v645 = v641[-2];
              v644 = v641[-1];
              v647 = *v641;
              v646 = v641[1];
              v641 += 4;
              v642[-1] = vuzp1q_s8(v645, v644);
              *v642 = vuzp1q_s8(v647, v646);
              v642 += 2;
              v643 -= 32;
            }

            while (v643);
            if (v113 == v116)
            {
              goto LABEL_302;
            }

            if ((v113 & 0x1C) == 0)
            {
              v118 = v52 + 2 * v116;
              v117 = (v98 + v116);
              do
              {
LABEL_149:
                v119 = *v118;
                v118 += 2;
                *v117 = v119;
                v117 = (v117 + 1);
              }

              while (v117 != v100);
              goto LABEL_302;
            }
          }

          else
          {
            v116 = 0;
          }

          v117 = (v98 + (v113 & 0xFFFFFFFFFFFFFFFCLL));
          v118 = v52 + 2 * (v113 & 0xFFFFFFFFFFFFFFFCLL);
          v648 = (v52 + 2 * v116);
          v649 = (v98 + v116);
          v650 = v116 - ((__len + v97 + v43 - v98 + v92 + 18) & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v651 = *v648++;
            *v649++ = vuzp1_s8(v651, v651).u32[0];
            v650 += 4;
          }

          while (v650);
          if (v113 != (v113 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_149;
          }
        }

LABEL_302:
        v101 = *(v38 + 1);
        if (v96 + ~v90 < v101)
        {
          goto LABEL_1117;
        }

LABEL_303:
        *&v95[v101] = 169884509;
        v110 = v953;
        v953 = 0;
        if (v110)
        {
LABEL_135:
          if (atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v110, v52);
            v4 = v940;
            v8 = v942;
          }
        }

LABEL_137:
        if (++v7 == v939)
        {
LABEL_894:
          v5 = *(a2 + 88);
          break;
        }
      }
    }
  }

  if (v5 == 4 || v5 == 8)
  {
    LOBYTE(v952) = 10;
    LODWORD(v951) = *(this + 26);
    v953 = "template<typename T>\n";
    v954 = 21;
    LODWORD(v948) = v951;
    v946 = *(a2 + 6);
    v949 = "(const thread T& other)\n";
    v950 = 24;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v952, &v951, &v953, &v948, &v946, &v949);
    v738 = *(this + 26);
    v739 = v738 + 1;
    *(this + 26) = v738 + 1;
    v740 = *(a2 + 21);
    if (v740)
    {
      v741 = *(a2 + 9);
      v742 = *v741;
      LODWORD(v948) = v739;
      LOBYTE(v952) = 58;
      v945 = 32;
      v946 = *(v742 + 48);
      v953 = "(other.";
      v954 = 7;
      v949 = ")\n";
      v950 = 2;
      v951 = v946;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v948, &v952, &v945, &v946, &v953, &v951, &v949);
      if (v740 != 1)
      {
        v743 = 8 * v740;
        v744 = v741 + 1;
        v745 = v743 - 8;
        do
        {
          v746 = *v744++;
          LODWORD(v948) = *(this + 26);
          LOBYTE(v952) = 44;
          v945 = 32;
          v946 = *(v746 + 48);
          v953 = "(other.";
          v954 = 7;
          v950 = 2;
          v951 = v946;
          v949 = ")\n";
          WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v948, &v952, &v945, &v946, &v953, &v951, &v949);
          v745 -= 8;
        }

        while (v745);
      }

      v738 = *(this + 26) - 1;
    }
  }

  else
  {
    if (v5 != 9)
    {
      goto LABEL_906;
    }

    if (!*(a2 + 21))
    {
LABEL_1119:
      __break(0xC471u);
      JUMPOUT(0x2257518D0);
    }

    v736 = **(a2 + 9);
    LOBYTE(v952) = 10;
    LODWORD(v951) = *(this + 26);
    v953 = "template<typename T>\n";
    v954 = 21;
    LODWORD(v948) = v951;
    v946 = *(a2 + 6);
    v949 = "(T value)\n";
    v950 = 10;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v952, &v951, &v953, &v948, &v946, &v949);
    v737 = *(this + 26) + 1;
    *(this + 26) = v737;
    LODWORD(v951) = v737;
    v953 = ": ";
    v954 = 2;
    v946 = *(v736 + 48);
    v949 = "(value)\n";
    v950 = 8;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v951, &v953, &v946, &v949);
    v738 = *(this + 26) - 1;
  }

  *(this + 26) = v738;
  LODWORD(v949) = v738;
  v953 = "{ }\n";
  v954 = 4;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v949, &v953);
LABEL_906:
  v747 = *(this + 26) - 1;
  *(this + 26) = v747;
  LODWORD(v949) = v747;
  v953 = "};\n\n";
  v954 = 4;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v949, &v953);
  if (*(a2 + 88) == 7)
  {
    v748 = *(a2 + 12);
    v952 = *(this + 26);
    v953 = "template<> struct __PackedTypeImpl<";
    v954 = 35;
    v749 = *(v748 + 48);
    v950 = 17;
    v951 = v749;
    v948 = *(a2 + 6);
    v949 = "> { using Type = ";
    v946 = "; };\n";
    v947 = 5;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v952, &v953, &v951, &v949, &v948, &v946);
    v750 = *(a2 + 12);
    v952 = *(this + 26);
    v953 = "template<> struct __UnpackedTypeImpl<";
    v954 = 37;
    v751 = *(a2 + 6);
    v950 = 17;
    v951 = v751;
    v948 = *(v750 + 48);
    v949 = "> { using Type = ";
    v946 = "; };\n\n";
    v947 = 6;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v952, &v953, &v951, &v949, &v948, &v946);
    if (*(this + 109) != 1)
    {
      goto LABEL_908;
    }

LABEL_911:
    *(this + 109) = 0;
    if (*(a2 + 88) != 5)
    {
      return;
    }

    goto LABEL_912;
  }

  if (*(this + 109) == 1)
  {
    goto LABEL_911;
  }

LABEL_908:
  if (*(a2 + 88) != 5)
  {
    return;
  }

LABEL_912:
  v752 = *(a2 + 21);
  if (v752)
  {
    v753 = *(a2 + 9);
    v754 = &v753[v752];
    v755 = xmmword_225882550;
    v756 = 0uLL;
    v941 = v754;
    do
    {
      v943 = v755;
      v944 = v756;
      v757 = *v753;
      v758 = *(*(*v753 + 104) + 24);
      if (v758 && *(v758 + 48) == 10)
      {
        v758 = *(v758 + 8);
      }

      v759 = WGSL::Type::maybeSize(v758);
      v755 = v943;
      v756 = v944;
      if ((v759 & 0x100000000) == 0)
      {
        goto LABEL_915;
      }

      v760 = v759;
      if (v759 == 0xFFFFFFFFLL)
      {
        goto LABEL_915;
      }

      v761 = *(v936 + 6);
      if (v761)
      {
        v762 = *(v761 + 4);
        v763 = *(v757 + 48);
        if (!v763)
        {
          goto LABEL_925;
        }
      }

      else
      {
        v762 = 0;
        v763 = *(v757 + 48);
        if (!v763)
        {
LABEL_925:
          v764 = 0;
          goto LABEL_926;
        }
      }

      v764 = *(v763 + 4);
LABEL_926:
      v765 = 0;
      v766 = *(this + 20);
      v767 = (4 * *(this + 26));
      v768 = v759;
      do
      {
        ++v765;
        v41 = v768 > 9;
        v768 /= 0xAu;
      }

      while (v41);
      v103 = __CFADD__(v765, 9);
      v769 = v765 + 9;
      if (v103)
      {
        v769 = -1;
      }

      v103 = __CFADD__(v764, v769);
      v770 = v764 + v769;
      if (v103)
      {
        v770 = -1;
      }

      v103 = __CFADD__(v770, 2);
      v771 = v770 + 2;
      if (v103)
      {
        v771 = -1;
      }

      v103 = __CFADD__(v762, v771);
      v772 = v762 + v771;
      if (v103)
      {
        v772 = -1;
      }

      v103 = __CFADD__(v772, 21);
      v773 = v772 + 21;
      if (v103)
      {
        v773 = -1;
      }

      v103 = __CFADD__(v767, v773);
      v774 = v767 + v773;
      if (v103)
      {
        v774 = -1;
      }

      v103 = __CFADD__(v766, v774);
      v775 = v766 + v774;
      if (v103)
      {
        v776 = 0xFFFFFFFFLL;
      }

      else
      {
        v776 = v775;
      }

      v777 = *(this + 9);
      if ((v777 || (v777 = *(this + 8)) != 0) && (*(v777 + 16) & 4) == 0 || v761 && (*(v761 + 16) & 4) == 0 || v763 && (*(v763 + 16) & 4) == 0)
      {
        v778 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        v755 = v943;
        v756 = v944;
        if (!v778)
        {
          goto LABEL_915;
        }

        v780 = v778;
        v781 = v779;
        if (v767)
        {
          memset_pattern16(v778, aIneStateTLTAne, 2 * v767);
          if (v781 < v767)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v767 = 0;
        }

        v786 = v780 + 2 * v767;
        *v786 = xmmword_225882540;
        *(v786 + 16) = xmmword_225882550;
        *(v786 + 32) = *&aIneStateTLTAne[60];
        *(v786 + 40) = 40;
        v787 = v781 - v767;
        if (v781 - v767 <= 0x14)
        {
          goto LABEL_1117;
        }

        v788 = (v786 + 42);
        v789 = v787 - 21;
        if (v761)
        {
          v790 = *(v761 + 8);
          v791 = *(v761 + 4);
          v792 = v943;
          v793 = v944;
          if ((*(v761 + 16) & 4) == 0)
          {
            if (v791)
            {
              if (v791 == 1)
              {
                *v788 = v790->i16[0];
              }

              else
              {
                memcpy(v788, v790, 2 * v791);
                v792 = v943;
                v793 = v944;
              }
            }

            goto LABEL_1003;
          }

          if (v791 < 0x40)
          {
            v795 = v786 + 42;
            v802 = &v788[v791];
            if (v788 != v802)
            {
              goto LABEL_978;
            }
          }

          else
          {
            v795 = &v788[v791 & 0xFFFFFFC0];
            v796 = (v786 + 42);
            do
            {
              v964.val[0] = *v790;
              v797 = v790[1];
              v971.val[0] = v790[2];
              v798 = v790[3];
              v790 += 4;
              v792 = v798;
              v971.val[1] = v944;
              v978.val[0] = v797;
              v964.val[1] = v944;
              v799 = v796;
              vst2q_s8(v799, v964);
              v799 += 32;
              v978.val[1] = v944;
              vst2q_s8(v799, v978);
              v800 = v796 + 64;
              vst2q_s8(v800, v971);
              v801 = v796 + 96;
              vst2q_s8(v801, *v792.n128_u64);
              v796 += 128;
            }

            while (v796 != v795);
            v802 = &v788[v791];
            if (v795 == v802)
            {
              goto LABEL_1003;
            }

LABEL_978:
            v803 = v780 + 2 * v791 + 2 * v767 - v795 + 40;
            if (v803 < 0xE || (v795 < v790->u64 + (v803 >> 1) + 1 ? (v804 = v790 >= v795 + (v803 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v804 = 1), !v804))
            {
              v807 = v790;
              v808 = v795;
              goto LABEL_987;
            }

            v805 = (v803 >> 1) + 1;
            if (v803 >= 0x3E)
            {
              v806 = v805 & 0xFFFFFFFFFFFFFFE0;
              v877 = (v795 + 32);
              v878 = &v790[1];
              v879 = v805 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v880 = *v878[-2].i8;
                v881 = vmovl_u8(*v878);
                v882 = vmovl_high_u8(*v878->i8);
                v877[-2] = vmovl_u8(*v880.i8);
                v877[-1] = vmovl_high_u8(v880);
                *v877 = v881;
                v877[1] = v882;
                v877 += 4;
                v878 += 4;
                v879 -= 32;
              }

              while (v879);
              if (v805 != v806)
              {
                if ((v805 & 0x18) == 0)
                {
                  v808 = (v795 + 2 * v806);
                  v807 = (v790 + v806);
                  goto LABEL_987;
                }

                goto LABEL_1084;
              }
            }

            else
            {
              v806 = 0;
LABEL_1084:
              v807 = (v790 + (v805 & 0xFFFFFFFFFFFFFFF8));
              v808 = (v795 + 2 * (v805 & 0xFFFFFFFFFFFFFFF8));
              v883 = (v795 + 2 * v806);
              v884 = &v790->i8[v806];
              v885 = v806 - (v805 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v886 = *v884++;
                *v883++ = vmovl_u8(v886);
                v885 += 8;
              }

              while (v885);
              if (v805 != (v805 & 0xFFFFFFFFFFFFFFF8))
              {
                do
                {
LABEL_987:
                  v809 = v807->u8[0];
                  v807 = (v807 + 1);
                  *v808++ = v809;
                }

                while (v808 != v802);
              }
            }
          }

LABEL_1003:
          v794 = *(v761 + 4);
          if (v789 < v794)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v794 = 0;
          v792 = v943;
          v793 = v944;
        }

        v819 = &v788[v794];
        *v819 = 3801146;
        v820 = v819 + 1;
        if (v789 - v794 <= 1)
        {
          goto LABEL_1117;
        }

        v821 = v789 - v794 - 2;
        v943 = v792;
        v944 = v793;
        if (v763)
        {
          v822 = *(v763 + 8);
          v823 = *(v763 + 4);
          v754 = v941;
          if ((*(v763 + 16) & 4) == 0)
          {
            if (v823)
            {
              if (v823 == 1)
              {
                *v820 = v822->i16[0];
              }

              else
              {
                memcpy(v820, v822, 2 * v823);
              }
            }

            goto LABEL_1029;
          }

          if (v823 < 0x40)
          {
            v825 = v820;
            v832 = &v820[v823];
            if (v820 != v832)
            {
              goto LABEL_1017;
            }
          }

          else
          {
            v825 = &v820[v823 & 0xFFFFFFC0];
            v826 = v820;
            do
            {
              v965.val[0] = *v822;
              v827 = v822[1];
              v972.val[0] = v822[2];
              v828 = v822[3];
              v822 += 4;
              v979.val[0] = v828;
              v972.val[1] = v793;
              v984.val[0] = v827;
              v965.val[1] = v793;
              v829 = v826;
              vst2q_s8(v829, v965);
              v829 += 32;
              v979.val[1] = v793;
              v984.val[1] = v793;
              vst2q_s8(v829, v984);
              v830 = v826 + 64;
              vst2q_s8(v830, v972);
              v831 = v826 + 96;
              v826 += 128;
              vst2q_s8(v831, v979);
            }

            while (v826 != v825);
            v832 = &v820[v823];
            if (v825 == v832)
            {
              goto LABEL_1029;
            }

LABEL_1017:
            v833 = v780 + 2 * v794 + 2 * v823 + 2 * v767 - v825 + 44;
            if (v833 < 0xE || (v825 < v822->u64 + (v833 >> 1) + 1 ? (v834 = v822 >= v825 + (v833 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v834 = 1), !v834))
            {
              v837 = v822;
              v838 = v825;
              goto LABEL_1026;
            }

            v835 = (v833 >> 1) + 1;
            if (v833 >= 0x3E)
            {
              v836 = v835 & 0xFFFFFFFFFFFFFFE0;
              v887 = (v825 + 32);
              v888 = &v822[1];
              v889 = v835 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v890 = *v888[-2].i8;
                v891 = vmovl_u8(*v888);
                v892 = vmovl_high_u8(*v888->i8);
                v887[-2] = vmovl_u8(*v890.i8);
                v887[-1] = vmovl_high_u8(v890);
                *v887 = v891;
                v887[1] = v892;
                v887 += 4;
                v888 += 4;
                v889 -= 32;
              }

              while (v889);
              if (v835 != v836)
              {
                if ((v835 & 0x18) == 0)
                {
                  v838 = (v825 + 2 * v836);
                  v837 = (v822 + v836);
                  goto LABEL_1026;
                }

                goto LABEL_1092;
              }
            }

            else
            {
              v836 = 0;
LABEL_1092:
              v837 = (v822 + (v835 & 0xFFFFFFFFFFFFFFF8));
              v838 = (v825 + 2 * (v835 & 0xFFFFFFFFFFFFFFF8));
              v893 = (v825 + 2 * v836);
              v894 = &v822->i8[v836];
              v895 = v836 - (v835 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v896 = *v894++;
                *v893++ = vmovl_u8(v896);
                v895 += 8;
              }

              while (v895);
              if (v835 != (v835 & 0xFFFFFFFFFFFFFFF8))
              {
                do
                {
LABEL_1026:
                  v839 = v837->u8[0];
                  v837 = (v837 + 1);
                  *v838++ = v839;
                }

                while (v838 != v832);
              }
            }
          }

LABEL_1029:
          v824 = *(v763 + 4);
          if (v821 < v824)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v824 = 0;
          v754 = v941;
        }

        v840 = &v820[v824];
        *v840 = *&aIneStateTLTAne[64];
        v840[4] = 32;
        v841 = v821 - v824;
        if (v841 <= 4)
        {
          goto LABEL_1117;
        }

        v842 = v840 + 5;
        v843 = v841 - 5;
        WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v760, v840 + 5, v841 - 5);
        LODWORD(v844) = 0;
        do
        {
          v844 = (v844 + 1);
          v41 = v760 > 9;
          LODWORD(v760) = v760 / 0xA;
        }

        while (v41);
        v755 = v943;
        v756 = v944;
        if (v843 < v844)
        {
          goto LABEL_1117;
        }

        *&v842[v844] = 0xA000A003B0029;
        goto LABEL_915;
      }

      v782 = MEMORY[0x22AA68210](this + 64, v776, v943, v944);
      v755 = v943;
      v756 = v944;
      if (!v782)
      {
        goto LABEL_915;
      }

      v784 = v782;
      v785 = v783;
      if (v767)
      {
        memset(v782, 32, v767);
        if (v785 < v767)
        {
          goto LABEL_1117;
        }
      }

      else
      {
        v767 = 0;
      }

      v810 = &v784[v767];
      qmemcpy(&v784[v767], "static_assert(sizeof(", 21);
      if (v785 - v767 <= 0x14)
      {
        goto LABEL_1117;
      }

      v811 = v785 - v767 - 21;
      v812 = v810 + 21;
      if (!v761)
      {
        v818 = 0;
        goto LABEL_1049;
      }

      v813 = *(v761 + 8);
      v814 = *(v761 + 4);
      if ((*(v761 + 16) & 4) != 0)
      {
        if (v814)
        {
          if (v814 == 1)
          {
            *v812 = v813->i8[0];
          }

          else
          {
            memcpy(v810 + 21, v813, v814);
          }
        }
      }

      else
      {
        if (v814 < 0x10)
        {
          v815 = (v810 + 21);
          v817 = &v812[v814];
          if (v812 == &v812[v814])
          {
            goto LABEL_1048;
          }
        }

        else
        {
          v815 = (v810 + 21);
          do
          {
            v816 = vld2q_s8(v813->i8);
            v813 += 2;
            *v815++ = v816;
          }

          while (v815 != &v812[v814 & 0xFFFFFFF0]);
          v817 = &v812[v814];
          if (v815 == &v812[v814])
          {
            goto LABEL_1048;
          }
        }

        v845 = &v784[v814 + v767];
        v846 = v845 - v815;
        v847 = v845 - v815 + 21;
        if (v847 < 4 || ((v848 = v845 + 21, v815 < (&v813[2].u64[1] + 2 * v846 + 2)) ? (v849 = v813 >= v848) : (v849 = 1), !v849))
        {
          v851 = v815;
          v852 = v813;
          goto LABEL_1045;
        }

        if (v847 >= 0x20)
        {
          v850 = v847 & 0xFFFFFFFFFFFFFFE0;
          v897 = v813 + 2;
          v898 = (v815 + 1);
          v899 = v847 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v901 = v897[-2];
            v900 = v897[-1];
            v903 = *v897;
            v902 = v897[1];
            v897 += 4;
            v898[-1] = vuzp1q_s8(v901, v900);
            *v898 = vuzp1q_s8(v903, v902);
            v898 += 2;
            v899 -= 32;
          }

          while (v899);
          if (v847 == v850)
          {
            goto LABEL_1048;
          }

          if ((v847 & 0x1C) == 0)
          {
            v852 = (v813 + 2 * v850);
            v851 = (v815 + v850);
            do
            {
LABEL_1045:
              v853 = v852->i8[0];
              v852 = (v852 + 2);
              *v851 = v853;
              v851 = (v851 + 1);
            }

            while (v851 != v817);
            goto LABEL_1048;
          }
        }

        else
        {
          v850 = 0;
        }

        v851 = (v815 + (v847 & 0xFFFFFFFFFFFFFFFCLL));
        v852 = (v813 + 2 * (v847 & 0xFFFFFFFFFFFFFFFCLL));
        v904 = (v813 + 2 * v850);
        v905 = (v815 + v850);
        v906 = v850 - (v847 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v907 = *v904++;
          *v905++ = vuzp1_s8(v907, v907).u32[0];
          v906 += 4;
        }

        while (v906);
        if (v847 != (v847 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_1045;
        }
      }

LABEL_1048:
      v818 = *(v761 + 4);
      if (v811 < v818)
      {
        goto LABEL_1117;
      }

LABEL_1049:
      v854 = &v812[v818];
      *&v812[v818] = 14906;
      if (v811 - v818 <= 1)
      {
        goto LABEL_1117;
      }

      v855 = v811 - v818 - 2;
      v856 = v854 + 2;
      if (v763)
      {
        v857 = *(v763 + 8);
        v858 = *(v763 + 4);
        if ((*(v763 + 16) & 4) != 0)
        {
          if (v858)
          {
            if (v858 == 1)
            {
              *v856 = v857->i8[0];
            }

            else
            {
              memcpy(v854 + 2, v857, v858);
            }
          }

LABEL_1074:
          v862 = *(v763 + 4);
          if (v855 < v862)
          {
            goto LABEL_1117;
          }

          goto LABEL_1075;
        }

        if (v858 < 0x10)
        {
          v859 = (v854 + 2);
          v861 = &v856[v858];
          if (v856 == &v856[v858])
          {
            goto LABEL_1074;
          }
        }

        else
        {
          v859 = (v854 + 2);
          do
          {
            v860 = vld2q_s8(v857->i8);
            v857 += 2;
            *v859++ = v860;
          }

          while (v859 != &v856[v858 & 0xFFFFFFF0]);
          v861 = &v856[v858];
          if (v859 == &v856[v858])
          {
            goto LABEL_1074;
          }
        }

        v863 = &v784[v818 + v858 + v767];
        v864 = v863 - v859;
        v865 = v863 - v859 + 23;
        if (v865 < 4 || ((v866 = v863 + 23, v859 < (&v857[2].u64[1] + 2 * v864 + 6)) ? (v867 = v857 >= v866) : (v867 = 1), !v867))
        {
          v869 = v859;
          v870 = v857;
          goto LABEL_1071;
        }

        if (v865 < 0x20)
        {
          v868 = 0;
          goto LABEL_1108;
        }

        v868 = v865 & 0xFFFFFFFFFFFFFFE0;
        v908 = v857 + 2;
        v909 = (v859 + 1);
        v910 = v865 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v912 = v908[-2];
          v911 = v908[-1];
          v914 = *v908;
          v913 = v908[1];
          v908 += 4;
          v909[-1] = vuzp1q_s8(v912, v911);
          *v909 = vuzp1q_s8(v914, v913);
          v909 += 2;
          v910 -= 32;
        }

        while (v910);
        if (v865 == v868)
        {
          goto LABEL_1074;
        }

        if ((v865 & 0x1C) != 0)
        {
LABEL_1108:
          v869 = (v859 + (v865 & 0xFFFFFFFFFFFFFFFCLL));
          v870 = (v857 + 2 * (v865 & 0xFFFFFFFFFFFFFFFCLL));
          v915 = (v857 + 2 * v868);
          v916 = (v859 + v868);
          v917 = v868 - (v865 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v918 = *v915++;
            *v916++ = vuzp1_s8(v918, v918).u32[0];
            v917 += 4;
          }

          while (v917);
          if (v865 == (v865 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_1074;
          }
        }

        else
        {
          v870 = (v857 + 2 * v868);
          v869 = (v859 + v868);
        }

        do
        {
LABEL_1071:
          v871 = v870->i8[0];
          v870 = (v870 + 2);
          *v869 = v871;
          v869 = (v869 + 1);
        }

        while (v869 != v861);
        goto LABEL_1074;
      }

      v862 = 0;
LABEL_1075:
      v872 = v855 - v862;
      v873 = &v856[v862];
      v873[4] = 32;
      *v873 = 1027416105;
      if (v872 <= 4)
      {
        goto LABEL_1117;
      }

      v874 = v872 - 5;
      v875 = v873 + 5;
      WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v760, v873 + 5, v872 - 5);
      LODWORD(v876) = 0;
      do
      {
        v876 = (v876 + 1);
        v41 = v760 > 9;
        LODWORD(v760) = v760 / 0xA;
      }

      while (v41);
      v754 = v941;
      v755 = v943;
      v756 = v944;
      if (v874 < v876)
      {
        goto LABEL_1117;
      }

      *&v875[v876] = 168442665;
LABEL_915:
      ++v753;
    }

    while (v753 != v754);
  }
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Variable *a2)
{
  if (*(a2 + 128))
  {
    v4 = *(this + 55);
    *(this + 55) = *(a2 + 129) | 0x100;
    v5 = *(a2 + 18);
    if (v5 && *(v5 + 48) == 10 && (v6 = *(v5 + 8)) != 0 && !v6[48] && *v6 == 10)
    {
      v12[0] = "texture_external ";
      v12[1] = 17;
      v7 = *(a2 + 6);
      v10[0] = " { ";
      v10[1] = 3;
      v11 = v7;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v12, &v11, v10);
      (*(*this + 216))(this, *(a2 + 15));
      WTF::StringBuilder::append();
      (*(*this + 216))(this, *(a2 + 15));
      WTF::StringBuilder::append();
      (*(*this + 216))(this, *(a2 + 15));
      WTF::StringBuilder::append();
      (*(*this + 216))(this, *(a2 + 15));
    }

    else
    {
      v8 = *(a2 + 13);
      if (v8)
      {
        if (*(v8 + 24) == 5)
        {
          WTF::StringBuilder::append();
        }
      }

      WGSL::Metal::FunctionDefinitionWriter::visit(this, v5, 0);
      LOBYTE(v10[0]) = 32;
      v12[0] = *(a2 + 6);
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), v10, v12);
      if (*(a2 + 128) == 2)
      {
        goto LABEL_15;
      }

      v9 = *(a2 + 15);
      if (v9)
      {
        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(this, v5, v9);
LABEL_15:
        *(this + 55) = v4;
        return;
      }
    }

    WTF::StringBuilder::append();
    goto LABEL_15;
  }
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, const WGSL::Type *a2, WGSL::AST::Expression *a3)
{
  v3 = a3;
  LOBYTE(v9[0]) = 0;
  v11 = 0;
  if (*(a3 + 56))
  {
LABEL_5:
    v10 = -1;
    v6 = *(v3 + 48);
    if (v6 == 255)
    {
      v11 = 1;
      LOBYTE(v7[0]) = 0;
      v8 = -1;
    }

    else
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v12, v9, v3 + 4);
      v10 = *(v3 + 48);
      v11 = 1;
      LOBYTE(v7[0]) = 0;
      v8 = -1;
      if (v10 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v12, v7, v9);
        v8 = v10;
      }
    }

    WGSL::Metal::FunctionDefinitionWriter::serializeConstant(this, a2, v7);
    if (v8 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v7);
    }

    v8 = -1;
    if ((v11 & 1) != 0 && v10 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v9);
    }
  }

  else
  {
    while ((*(*v3 + 16))(v3) != 19)
    {
      if ((*(*v3 + 16))(v3) != 22)
      {

        WGSL::AST::Visitor::visit(this, v3);
        return;
      }

      v3 = *(v3 + 8);
      LOBYTE(v9[0]) = 0;
      v11 = 0;
      if (*(v3 + 56))
      {
        goto LABEL_5;
      }
    }

    WGSL::Metal::FunctionDefinitionWriter::visit(this, a2, v3);
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t this, WGSL::AST::BuiltinAttribute *a2)
{
  if (*(this + 109) != 1 || ((v2 = *(this + 108), v3 = v2 > 9, v4 = (1 << v2) & 0x310, !v3) ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    v6 = *(a2 + 24);
    if (v6 > 5)
    {
      if (*(a2 + 24) > 8u)
      {
        if (v6 == 9 || v6 == 10 || v6 == 11)
        {
          return WTF::StringBuilder::append();
        }
      }

      else if (v6 == 6 || v6 == 7 || v6 == 8)
      {
        return WTF::StringBuilder::append();
      }
    }

    else if (*(a2 + 24) <= 2u || v6 == 3 || v6 == 4 || v6 == 5)
    {
      return WTF::StringBuilder::append();
    }
  }

  return this;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t this, WGSL::AST::StageAttribute *a2)
{
  *(this + 114) = *(a2 + 24) | 0x100;
  v2 = *(a2 + 24);
  if (v2 == 1 || v2 == 4 || v2 == 2)
  {
    return WTF::StringBuilder::append();
  }

  return this;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::GroupAttribute *a2)
{
  v2 = *(a2 + 3);
  if ((*(v2 + 56) & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    result = 167;
    __break(0xC471u);
    return result;
  }

  v3 = *(v2 + 48);
  if (v3 != 5 && v3 != 4 && v3 != 3)
  {
    goto LABEL_35;
  }

  v4 = *(v2 + 32);
  if (*(this + 115) == 1 && *(this + 114) == 1)
  {
    v5 = *(*(this + 12) + 40) - 1;
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = v4;
    }
  }

  v8 = 0;
  v9 = *(this + 20);
  v10 = v4;
  do
  {
    ++v8;
    v11 = v10 > 9;
    v10 /= 0xAu;
  }

  while (v11);
  v6 = __CFADD__(v8, 12);
  v12 = v8 + 12;
  if (v6)
  {
    v12 = -1;
  }

  v6 = __CFADD__(v9, v12);
  v13 = v9 + v12;
  if (v6)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(this + 9);
  if ((v15 || (v15 = *(this + 8)) != 0) && (*(v15 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
    if (!result)
    {
      return result;
    }

    *result = xmmword_225882560;
    *(result + 16) = 40;
    if (v17 > 8)
    {
      v18 = result + 18;
      v19 = v17 - 9;
      result = WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v4, (result + 18), v17 - 9);
      LODWORD(v20) = 0;
      do
      {
        v20 = (v20 + 1);
        v11 = v4 > 9;
        LODWORD(v4) = v4 / 0xA;
      }

      while (v11);
      if (v19 >= v20)
      {
        v21 = v18 + 2 * v20;
        *v21 = 6094889;
        *(v21 + 4) = 93;
        return result;
      }
    }

    goto LABEL_34;
  }

  result = MEMORY[0x22AA68210](this + 64, v14);
  if (result)
  {
    *(result + 8) = 40;
    *result = *"[[buffer(";
    if (v22 > 8)
    {
      v23 = v22 - 9;
      v24 = result + 9;
      result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v4, (result + 9), v22 - 9);
      LODWORD(v25) = 0;
      do
      {
        v25 = (v25 + 1);
        v11 = v4 > 9;
        LODWORD(v4) = v4 / 0xA;
      }

      while (v11);
      if (v23 >= v25)
      {
        v26 = v24 + v25;
        *(v26 + 2) = 93;
        *v26 = 23849;
        return result;
      }
    }

    goto LABEL_34;
  }

  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::BindingAttribute *a2)
{
  v4 = *(a2 + 3);
  if (*(v4 + 56))
  {
    v5 = *(v4 + 48);
    switch(v5)
    {
      case 5:
        v6 = *(v4 + 32);
        goto LABEL_8;
      case 4:
        v6 = *(v4 + 32);
LABEL_8:
        v9[2] = v2;
        v9[3] = v3;
        v9[0] = "[[id(";
        v9[1] = 5;
        v8 = v6;
        v7[0] = ")]]";
        v7[1] = 3;
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v9, &v8, v7);
        return;
      case 3:
        v6 = *(v4 + 32);
        goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(0xC471u);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::LocationAttribute *a2)
{
  if (*(this + 109) == 1)
  {
    v2 = *(this + 108);
    if (v2 <= 3)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          return;
        }

LABEL_12:
        v6 = *(a2 + 3);
        if (*(v6 + 56))
        {
          v7 = *(v6 + 48);
          switch(v7)
          {
            case 5:
              v5 = *(v6 + 32);
              goto LABEL_23;
            case 4:
              v5 = *(v6 + 32);
LABEL_23:
              v10 = "[[user(loc";
              v11 = 10;
LABEL_34:
              v14[0] = v10;
              v14[1] = v11;
              v13 = v5;
              v12[0] = ")]]";
              v12[1] = 3;
              WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v14, &v13, v12);
              return;
            case 3:
              v5 = *(v6 + 32);
              goto LABEL_23;
          }

LABEL_36:
          __break(0xC471u);
          JUMPOUT(0x225752398);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v8 = *(a2 + 3);
      if ((*(v8 + 56) & 1) == 0)
      {
        goto LABEL_35;
      }

      v9 = *(v8 + 48);
      switch(v9)
      {
        case 5:
          v5 = *(v8 + 32);
          goto LABEL_33;
        case 4:
          v5 = *(v8 + 32);
LABEL_33:
          v10 = "[[attribute(";
          v11 = 12;
          goto LABEL_34;
        case 3:
          v5 = *(v8 + 32);
          goto LABEL_33;
      }

LABEL_38:
      __break(0xC471u);
      JUMPOUT(0x2257522F8);
    }

    switch(v2)
    {
      case 4u:
        goto LABEL_12;
      case 8u:
        v3 = *(a2 + 3);
        if (*(v3 + 56))
        {
          v4 = *(v3 + 48);
          switch(v4)
          {
            case 5:
              v5 = *(v3 + 32);
              break;
            case 4:
              v5 = *(v3 + 32);
              break;
            case 3:
              v5 = *(v3 + 32);
              break;
            default:
              __break(0xC471u);
              JUMPOUT(0x2257523B8);
          }

          v10 = "[[color(";
          v11 = 8;
          goto LABEL_34;
        }

        goto LABEL_35;
      case 9u:
        goto LABEL_38;
    }
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::InterpolateAttribute *a2)
{
  v2 = *(a2 + 24);
  if (!*(a2 + 24))
  {
    goto LABEL_16;
  }

  v3 = *(a2 + 25);
  if (v2 == 2)
  {
    v4 = "center_perspective";
    v5 = 19;
    if (*(a2 + 25) > 1u)
    {
      if ((v3 - 2) < 2)
      {
        goto LABEL_17;
      }

      if (v3 == 4)
      {
        v4 = "sample_perspective";
        v5 = 19;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (*(a2 + 25))
    {
      v4 = "centroid_perspective";
      v5 = 21;
    }

    goto LABEL_17;
  }

  if (v2 != 1)
  {
LABEL_16:
    v4 = "flat";
    v5 = 5;
    goto LABEL_17;
  }

  v4 = "center_no_perspective";
  v5 = 22;
  if (*(a2 + 25) > 1u)
  {
    if ((v3 - 2) < 2)
    {
      goto LABEL_17;
    }

    if (v3 == 4)
    {
      v4 = "sample_no_perspective";
      v5 = 22;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(a2 + 25))
  {
    v4 = "centroid_no_perspective";
    v5 = 24;
  }

LABEL_17:
  v11[0] = "[[";
  v11[1] = 2;
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v10[0] = v4;
  v10[1] = v7;
  if (v7 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v9[0] = "]]";
    v9[1] = 2;
    return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v11, v10, v9);
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Parameter *a2)
{
  v4 = *(this + 56);
  *(this + 56) = *(a2 + 24) | 0x100;
  WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(a2 + 8) + 24), 0);
  v15[0] = 32;
  v14 = *(a2 + 7);
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), v15, &v14);
  v6 = *(a2 + 21);
  if (v6)
  {
    v7 = *(a2 + 9);
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      v15[1] = 32;
      v10 = *(this + 9);
      if (v10 && (v11 = *(this + 20), v11 < *(v10 + 4)) && !*(this + 8))
      {
        v12 = *(v10 + 16);
        v13 = *(v10 + 8);
        *(this + 20) = v11 + 1;
        if ((v12 & 4) != 0)
        {
          *(v13 + v11) = 32;
        }

        else
        {
          *(v13 + 2 * v11) = 32;
        }
      }

      else
      {
        result = WTF::StringBuilder::append();
      }

      if ((*(this + 32) & 1) == 0)
      {
        result = (*(*this + 96))(this, v9);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  *(this + 56) = v4;
  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::serializeConstant(uint64_t a1, const WGSL::Type *a2, unsigned int **a3)
{
  v367 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(a2 + 48);
  }

  switch(v4)
  {
    case 1:
      if (v3 != 1 || *(a3 + 16) != 8)
      {
        goto LABEL_576;
      }

      WGSL::Metal::FunctionDefinitionWriter::visit(a1, a2, 0);
      LOBYTE(v363[0]) = 40;
      v52 = *(a1 + 72);
      if (v52 && (v53 = *(a1 + 80), v53 < *(v52 + 4)) && !*(a1 + 64))
      {
        v201 = *(v52 + 16);
        v202 = *(v52 + 8);
        *(a1 + 80) = v53 + 1;
        if ((v201 & 4) != 0)
        {
          *(v202 + v53) = 40;
        }

        else
        {
          *(v202 + 2 * v53) = 40;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }

      v54 = *a3;
      v55 = (*a3 + 2);
      if (*a3)
      {
        v56 = (*a3 + 2);
      }

      else
      {
        v56 = 0;
      }

      if (v54)
      {
        v57 = v55 + 24 * *v54;
        if (v56 == v57)
        {
          goto LABEL_397;
        }
      }

      else
      {
        v57 = 0;
        if (!v56)
        {
          goto LABEL_397;
        }
      }

      v79 = *a2;
      v80 = *(v56 + 16);
      LOBYTE(v365[0]) = 0;
      v366 = -1;
      if (v80 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v80, v363, v365, v56);
        v366 = *(v56 + 16);
      }

      WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v79, v365);
      if (v366 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
      }

      v366 = -1;
      for (i = v56 + 24; i != v57; i += 24)
      {
        WTF::StringBuilder::append();
        v82 = *a2;
        LOBYTE(v365[0]) = 0;
        v366 = -1;
        v83 = *(i + 16);
        if (v83 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v83, v363, v365, i);
          v366 = *(i + 16);
        }

        WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v82, v365);
        if (v366 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
        }

        v366 = -1;
      }

      goto LABEL_397;
    case 2:
      if (v3 != 2 || *(a3 + 16) != 9)
      {
        goto LABEL_576;
      }

      WTF::StringBuilder::append();
      WGSL::Metal::FunctionDefinitionWriter::visit(a1, *a2, 0);
      v26 = 0;
      v27 = *(a2 + 8);
      v28 = *(a2 + 9);
      v29 = *(a1 + 80);
      v30 = *(a2 + 8);
      do
      {
        ++v26;
        v31 = v30;
        v30 /= 0xAu;
      }

      while (v31 > 9);
      v32 = 0;
      v33 = *(a2 + 9);
      do
      {
        ++v32;
        v34 = v33;
        v33 /= 0xAu;
      }

      while (v34 > 9);
      _CF = __CFADD__(v32, 4);
      v35 = v32 + 4;
      if (_CF)
      {
        v35 = -1;
      }

      _CF = __CFADD__(v26, v35);
      v36 = v26 + v35;
      if (_CF)
      {
        v36 = -1;
      }

      _CF = __CFADD__(v36, 2);
      v37 = v36 + 2;
      if (_CF)
      {
        v37 = -1;
      }

      _CF = __CFADD__(v29, v37);
      v38 = v29 + v37;
      if (_CF)
      {
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      v40 = *(a1 + 72);
      if ((v40 || (v40 = *(a1 + 64)) != 0) && (*(v40 + 16) & 4) == 0)
      {
        v41 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
        if (v41)
        {
          *v41 = 2097196;
          v8 = v41 + 4;
          if (v42 <= 1)
          {
            goto LABEL_540;
          }

          v43 = v42 - 2;
          BYTE3(v363[0]) = (v27 % 0xAu) | 0x30;
          if (v27 >= 0xA)
          {
            BYTE2(v363[0]) = (v27 / 0xAu - 10 * ((26 * (v27 / 0xAu)) >> 8)) | 0x30;
            if (v27 >= 0x64)
            {
              v44 = 0;
              BYTE1(v363[0]) = ((41 * v27) >> 12) | 0x30;
              v45 = 1;
            }

            else
            {
              v44 = 1;
              v45 = 2;
            }
          }

          else
          {
            v44 = 0;
            v45 = 3;
          }

          if (v42 == 2)
          {
            goto LABEL_540;
          }

          *v8 = *(v363 + v45);
          if (v27 >= 0xA)
          {
            if (v42 == 3)
            {
              goto LABEL_540;
            }

            *(v41 + 6) = *(v363 + v45 + 1);
            if ((v44 & 1) == 0)
            {
              if (v42 == 4)
              {
                goto LABEL_540;
              }

              *(v41 + 8) = *(v363 + v45 + 2);
            }
          }

          LODWORD(v220) = 0;
          do
          {
            v220 = (v220 + 1);
            v221 = v27;
            LOBYTE(v27) = v27 / 0xAu;
          }

          while (v221 > 9);
          _CF = v43 >= v220;
          v222 = v43 - v220;
          if (!_CF)
          {
            goto LABEL_540;
          }

          v223 = v8 + 2 * v220;
          *v223 = 2097196;
          v8 = v223 + 4;
          if (v222 <= 1)
          {
            goto LABEL_540;
          }

          v224 = v222 - 2;
          BYTE3(v363[0]) = (v28 % 0xAu) | 0x30;
          if (v28 >= 0xA)
          {
            BYTE2(v363[0]) = (v28 / 0xAu - 10 * ((26 * (v28 / 0xAu)) >> 8)) | 0x30;
            if (v28 >= 0x64)
            {
              v225 = 0;
              BYTE1(v363[0]) = ((41 * v28) >> 12) | 0x30;
              v226 = 1;
            }

            else
            {
              v225 = 1;
              v226 = 2;
            }
          }

          else
          {
            v225 = 0;
            v226 = 3;
          }

          if (!v224)
          {
            goto LABEL_540;
          }

          *v8 = *(v363 + v226);
          if (v28 < 0xA)
          {
            goto LABEL_378;
          }

          if (v224 == 1)
          {
            goto LABEL_540;
          }

          *(v223 + 6) = *(v363 + v226 + 1);
          if (v225)
          {
LABEL_378:
            LODWORD(v227) = 0;
            do
            {
              v227 = (v227 + 1);
              v228 = v28;
              LOBYTE(v28) = v28 / 0xAu;
            }

            while (v228 > 9);
            if (v224 >= v227)
            {
              *(v8 + 2 * v227) = 2621502;
              v212 = a3[1];
              v213 = v212 + 2;
              if (v212)
              {
                v214 = v212 + 2;
              }

              else
              {
                v214 = 0;
              }

              if (!v212)
              {
                goto LABEL_385;
              }

              goto LABEL_343;
            }

            goto LABEL_540;
          }

          if (v224 != 2)
          {
            *(v223 + 8) = *(v363 + v226 + 2);
            goto LABEL_378;
          }

LABEL_540:
          __break(1u);
LABEL_541:
          if (v8 != 6)
          {
            return;
          }

          goto LABEL_544;
        }
      }

      else
      {
        v62 = MEMORY[0x22AA68210](a1 + 64, v39);
        if (v62)
        {
          LODWORD(v8) = 8236;
          *v62 = 8236;
          if (v63 <= 1)
          {
            goto LABEL_540;
          }

          v8 = v63 - 2;
          v64 = (205 * v27) >> 11;
          BYTE3(v363[0]) = (v27 - 10 * v64) | 0x30;
          if (v27 >= 0xA)
          {
            BYTE2(v363[0]) = (v64 - 10 * ((26 * v64) >> 8)) | 0x30;
            if (v27 >= 0x64)
            {
              v65 = 0;
              BYTE1(v363[0]) = ((41 * v27) >> 12) | 0x30;
              v66 = 1;
            }

            else
            {
              v65 = 1;
              v66 = 2;
            }
          }

          else
          {
            v65 = 0;
            v66 = 3;
          }

          if (v63 == 2)
          {
            goto LABEL_540;
          }

          *(v62 + 2) = *(v363 + v66);
          if (v27 >= 0xA)
          {
            if (v63 == 3)
            {
              goto LABEL_540;
            }

            *(v62 + 3) = *(v363 + v66 + 1);
            if ((v65 & 1) == 0)
            {
              if (v63 == 4)
              {
                goto LABEL_540;
              }

              *(v62 + 4) = *(v363 + v66 + 2);
            }
          }

          LODWORD(v203) = 0;
          do
          {
            v203 = (v203 + 1);
            v204 = v27;
            LOBYTE(v27) = v27 / 0xAu;
          }

          while (v204 > 9);
          _CF = v8 >= v203;
          v8 -= v203;
          if (!_CF)
          {
            goto LABEL_540;
          }

          v205 = v62 + 2 + v203;
          *v205 = 8236;
          if (v8 <= 1)
          {
            goto LABEL_540;
          }

          v8 -= 2;
          v206 = (205 * v28) >> 11;
          BYTE3(v363[0]) = (v28 - 10 * v206) | 0x30;
          if (v28 >= 0xA)
          {
            BYTE2(v363[0]) = (v206 - 10 * ((26 * v206) >> 8)) | 0x30;
            if (v28 >= 0x64)
            {
              v207 = 0;
              BYTE1(v363[0]) = ((41 * v28) >> 12) | 0x30;
              v208 = 1;
            }

            else
            {
              v207 = 1;
              v208 = 2;
            }
          }

          else
          {
            v207 = 0;
            v208 = 3;
          }

          if (!v8)
          {
            goto LABEL_540;
          }

          v209 = v205 + 2;
          *(v205 + 2) = *(v363 + v208);
          if (v28 >= 0xA)
          {
            if (v8 == 1)
            {
              goto LABEL_540;
            }

            *(v205 + 3) = *(v363 + v208 + 1);
            if ((v207 & 1) == 0)
            {
              if (v8 == 2)
              {
                goto LABEL_540;
              }

              *(v205 + 4) = *(v363 + v208 + 2);
            }
          }

          LODWORD(v210) = 0;
          do
          {
            v210 = (v210 + 1);
            v211 = v28;
            LOBYTE(v28) = v28 / 0xAu;
          }

          while (v211 > 9);
          if (v8 < v210)
          {
            goto LABEL_540;
          }

          *(v209 + v210) = 10302;
        }
      }

      v212 = a3[1];
      v213 = v212 + 2;
      if (v212)
      {
        v214 = v212 + 2;
      }

      else
      {
        v214 = 0;
      }

      if (!v212)
      {
LABEL_385:
        v215 = 0;
        if (v214)
        {
          goto LABEL_386;
        }

        goto LABEL_397;
      }

LABEL_343:
      v215 = &v213[6 * *v212];
      if (v214 != v215)
      {
LABEL_386:
        v229 = *a2;
        v230 = *(v214 + 16);
        LOBYTE(v365[0]) = 0;
        v366 = -1;
        if (v230 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v230, v363, v365, v214);
          v366 = *(v214 + 16);
        }

        WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v229, v365);
        if (v366 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
        }

        v366 = -1;
        for (j = v214 + 6; j != v215; j += 6)
        {
          WTF::StringBuilder::append();
          v232 = *a2;
          LOBYTE(v365[0]) = 0;
          v366 = -1;
          v233 = *(j + 16);
          if (v233 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v233, v363, v365, j);
            v366 = *(j + 16);
          }

          WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v232, v365);
          if (v366 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
          }

          v366 = -1;
        }
      }

LABEL_397:
      LOBYTE(v363[0]) = 41;
      v234 = *(a1 + 72);
      if (!v234)
      {
        goto LABEL_538;
      }

      v235 = *(a1 + 80);
      if (v235 >= *(v234 + 4) || *(a1 + 64))
      {
        goto LABEL_538;
      }

      v236 = *(v234 + 16);
      v237 = *(v234 + 8);
      *(a1 + 80) = v235 + 1;
      if ((v236 & 4) != 0)
      {
        *(v237 + v235) = 41;
      }

      else
      {
        *(v237 + 2 * v235) = 41;
      }

      return;
    case 3:
      if (v3 != 3 || *(a3 + 16) != 7)
      {
        goto LABEL_576;
      }

      WGSL::Metal::FunctionDefinitionWriter::visit(a1, a2, 0);
      LOBYTE(v363[0]) = 123;
      v46 = *(a1 + 72);
      if (v46 && (v47 = *(a1 + 80), v47 < *(v46 + 4)) && !*(a1 + 64))
      {
        v199 = *(v46 + 16);
        v200 = *(v46 + 8);
        *(a1 + 80) = v47 + 1;
        if ((v199 & 4) != 0)
        {
          *(v200 + v47) = 123;
        }

        else
        {
          *(v200 + 2 * v47) = 123;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }

      v48 = *a3;
      v49 = (*a3 + 2);
      if (*a3)
      {
        v50 = (*a3 + 2);
      }

      else
      {
        v50 = 0;
      }

      if (v48)
      {
        v51 = v49 + 24 * *v48;
        if (v50 == v51)
        {
          goto LABEL_285;
        }
      }

      else
      {
        v51 = 0;
        if (!v50)
        {
          goto LABEL_285;
        }
      }

      v74 = *a2;
      v75 = *(v50 + 16);
      LOBYTE(v365[0]) = 0;
      v366 = -1;
      if (v75 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v75, v363, v365, v50);
        v366 = *(v50 + 16);
      }

      WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v74, v365);
      if (v366 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
      }

      v366 = -1;
      for (k = v50 + 24; k != v51; k += 24)
      {
        WTF::StringBuilder::append();
        v77 = *a2;
        LOBYTE(v365[0]) = 0;
        v366 = -1;
        v78 = *(k + 16);
        if (v78 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v78, v363, v365, k);
          v366 = *(k + 16);
        }

        WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v77, v365);
        if (v366 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
        }

        v366 = -1;
      }

      goto LABEL_285;
    case 4:
      if (v3 != 4)
      {
        goto LABEL_576;
      }

      v15 = *(a3 + 16);
      _CF = v15 >= 0xA;
      if (v15 != 10)
      {
        goto LABEL_576;
      }

      v17 = *(*a2 + 48);
      v18 = *(a1 + 80);
      if (v17)
      {
        v19 = *(v17 + 4);
        _CF = __CFADD__(v19, 3);
        v20 = v19 + 3;
        if (_CF)
        {
          v20 = -1;
        }

        _CF = __CFADD__(v18, v20);
        v21 = v18 + v20;
        if (_CF)
        {
          v22 = 0xFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v23 = *(a1 + 72);
        if (!v23)
        {
LABEL_103:
          v23 = *(a1 + 64);
          if (!v23)
          {
            goto LABEL_108;
          }
        }
      }

      else
      {
        if (_CF)
        {
          v67 = -1;
        }

        else
        {
          v67 = 3;
        }

        _CF = __CFADD__(v18, v67);
        v68 = v18 + v67;
        if (_CF)
        {
          v22 = 0xFFFFFFFFLL;
        }

        else
        {
          v22 = v68;
        }

        v23 = *(a1 + 72);
        if (!v23)
        {
          goto LABEL_103;
        }
      }

      if ((*(v23 + 16) & 4) == 0)
      {
        v69 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
        if (!v69)
        {
          goto LABEL_415;
        }

        if (!v17)
        {
          v8 = 0;
LABEL_414:
          v243 = &v69[v8];
          *v243 = 8060960;
          v243[2] = 32;
LABEL_415:
          v244 = *a2;
          v245 = *(*a2 + 84);
          if (v245)
          {
LABEL_416:
            v246 = *(v244 + 9);
            v247 = &v246[v245];
            v248 = 0uLL;
            while (1)
            {
              v249 = *v246;
              v250 = *(*v246 + 48);
              if (v250)
              {
                v251 = *(v250 + 4);
              }

              else
              {
                v251 = 0;
              }

              v361 = v71;
              v362 = v248;
              v252 = *(a1 + 80);
              _CF = __CFADD__(v251, 4);
              v253 = v251 + 4;
              if (_CF)
              {
                v253 = -1;
              }

              _CF = __CFADD__(v252, v253);
              v254 = v252 + v253;
              v255 = _CF ? 0xFFFFFFFFLL : v254;
              v256 = *(a1 + 72);
              if ((v256 || (v256 = *(a1 + 64)) != 0) && (*(v256 + 16) & 4) == 0)
              {
                break;
              }

              if (v250 && (*(v250 + 16) & 4) == 0)
              {
                break;
              }

              v265 = MEMORY[0x22AA68210](a1 + 64, v255);
              if (v265)
              {
                if (!v266)
                {
                  goto LABEL_540;
                }

                *v265 = 46;
                v267 = v265 + 1;
                if (v250)
                {
                  v268 = *(v250 + 8);
                  v259 = *(v250 + 4);
                  if ((*(v250 + 16) & 4) != 0)
                  {
                    if (v259)
                    {
                      if (v259 == 1)
                      {
                        *v267 = *v268;
                      }

                      else
                      {
                        v306 = v266;
                        memcpy(v265 + 1, *(v250 + 8), v259);
                        v266 = v306;
                      }
                    }

                    goto LABEL_501;
                  }

                  if (v259 < 0x10)
                  {
                    v269 = (v265 + 1);
                    v271 = &v267[v259];
                    if (v267 != &v267[v259])
                    {
                      goto LABEL_489;
                    }
                  }

                  else
                  {
                    v269 = (v265 + 1);
                    do
                    {
                      v270 = vld2q_s8(v268);
                      v268 += 32;
                      *v269++ = v270;
                    }

                    while (v269 != &v267[v259 & 0xFFFFFFF0]);
                    v271 = &v267[v259];
                    if (v269 == &v267[v259])
                    {
                      goto LABEL_501;
                    }

LABEL_489:
                    v299 = &v265[v259] - v269;
                    v300 = v299 + 1;
                    if ((v299 + 1) < 4 || (v269 < &v268[2 * v299 + 2] ? (v301 = v268 >= &v265[v259 + 1]) : (v301 = 1), !v301))
                    {
                      v303 = v269;
                      v304 = v268;
                      goto LABEL_498;
                    }

                    if (v300 >= 0x20)
                    {
                      v302 = v300 & 0xFFFFFFFFFFFFFFE0;
                      v319 = (v268 + 32);
                      v320 = v269 + 1;
                      v321 = v300 & 0xFFFFFFFFFFFFFFE0;
                      do
                      {
                        v323 = v319[-2];
                        v322 = v319[-1];
                        v325 = *v319;
                        v324 = v319[1];
                        v319 += 4;
                        v320[-1] = vuzp1q_s8(v323, v322);
                        *v320 = vuzp1q_s8(v325, v324);
                        v320 += 2;
                        v321 -= 32;
                      }

                      while (v321);
                      if (v300 != v302)
                      {
                        if ((v300 & 0x1C) == 0)
                        {
                          v304 = &v268[2 * v302];
                          v303 = (v269 + v302);
                          goto LABEL_498;
                        }

                        goto LABEL_516;
                      }
                    }

                    else
                    {
                      v302 = 0;
LABEL_516:
                      v303 = (v269 + (v300 & 0xFFFFFFFFFFFFFFFCLL));
                      v304 = &v268[2 * (v300 & 0xFFFFFFFFFFFFFFFCLL)];
                      v326 = &v268[2 * v302];
                      v327 = (v269->i32 + v302);
                      v328 = v302 - (v300 & 0xFFFFFFFFFFFFFFFCLL);
                      do
                      {
                        v329 = *v326++;
                        *v327++ = vuzp1_s8(v329, v329).u32[0];
                        v328 += 4;
                      }

                      while (v328);
                      if (v300 != (v300 & 0xFFFFFFFFFFFFFFFCLL))
                      {
                        do
                        {
LABEL_498:
                          v305 = *v304;
                          v304 += 2;
                          v303->i8[0] = v305;
                          v303 = (v303 + 1);
                        }

                        while (v303 != v271);
                      }
                    }
                  }

LABEL_501:
                  v8 = *(v250 + 4);
                  if (v266 - 1 < v8)
                  {
                    goto LABEL_540;
                  }
                }

                else
                {
                  v8 = 0;
                }

                v307 = &v267[v8];
                v307[2] = 32;
                *v307 = 15648;
                v308 = *(v249 + 80);
                v290 = (v249 + 80);
                v289 = v308;
                if (v308 == -1)
                {
LABEL_578:
                  __break(0xC471u);
                  JUMPOUT(0x22575456CLL);
                }

                goto LABEL_474;
              }

LABEL_473:
              v291 = *(v249 + 80);
              v290 = (v249 + 80);
              v289 = v291;
              if (v291 == -1)
              {
                goto LABEL_578;
              }

LABEL_474:
              if (!v289)
              {
                __break(0xC471u);
                JUMPOUT(0x22575454CLL);
              }

              v292 = *(a2 + 1);
              if (v292)
              {
                v293 = *(v292 - 8);
                v294 = *(v289 + 4);
                if (v294 < 0x100)
                {
                  v295 = WTF::StringImpl::hashSlowCase(v289);
                }

                else
                {
                  v295 = v294 >> 8;
                }

                for (m = 0; ; v295 = m + v297)
                {
                  v297 = v295 & v293;
                  v298 = *(v292 + 16 * v297);
                  if (v298 != -1)
                  {
                    if (!v298)
                    {
                      v292 = 0;
                      break;
                    }

                    if (WTF::equal(v298, *v290, v259))
                    {
                      v292 = *(v292 + 16 * v297 + 8);
                      break;
                    }
                  }

                  ++m;
                }
              }

              WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(a3, v290, v259, v365);
              WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v292, v365);
              if (v366 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
              }

              v366 = -1;
              WTF::StringBuilder::append();
              ++v246;
              v71 = v361;
              v248 = v362;
              if (v246 == v247)
              {
                goto LABEL_538;
              }
            }

            v257 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
            if (!v257)
            {
              goto LABEL_473;
            }

            if (!v258)
            {
              goto LABEL_540;
            }

            *v257 = 46;
            v260 = v257 + 1;
            if (!v250)
            {
              v8 = 0;
LABEL_472:
              v288 = &v260[v8];
              *v288 = 3997728;
              v288[2] = 32;
              goto LABEL_473;
            }

            v261 = *(v250 + 8);
            v262 = *(v250 + 4);
            if ((*(v250 + 16) & 4) == 0)
            {
              v263 = v361;
              v264 = v362;
              if (v262)
              {
                if (v262 == 1)
                {
                  *v260 = *v261;
                }

                else
                {
                  v287 = v258;
                  memcpy(v257 + 1, *(v250 + 8), 2 * v262);
                  v263 = v361;
                  v264 = v362;
                  v258 = v287;
                }
              }

LABEL_471:
              v361 = v263;
              v362 = v264;
              v8 = *(v250 + 4);
              if (v258 - 1 < v8)
              {
                goto LABEL_540;
              }

              goto LABEL_472;
            }

            v263 = v361;
            v264 = v362;
            if (v262 < 0x40)
            {
              v272 = (v257 + 1);
              v279 = &v260[v262];
              if (v260 == v279)
              {
                goto LABEL_471;
              }
            }

            else
            {
              v272 = &v260[v262 & 0xFFFFFFC0];
              v273 = (v257 + 1);
              do
              {
                v370.val[0] = *v261;
                v274 = *(v261 + 16);
                v373.val[0] = *(v261 + 32);
                v275 = *(v261 + 48);
                v261 += 64;
                v263 = v275;
                v373.val[1] = v362;
                v376.val[0] = v274;
                v370.val[1] = v362;
                v276 = v273;
                vst2q_s8(v276, v370);
                v276 += 32;
                v376.val[1] = v362;
                vst2q_s8(v276, v376);
                v277 = v273 + 64;
                vst2q_s8(v277, v373);
                v278 = v273 + 96;
                vst2q_s8(v278, *&v263);
                v273 += 128;
              }

              while (v273 != v272);
              v279 = &v260[v262];
              if (v272 == v279)
              {
                goto LABEL_471;
              }
            }

            v280 = &v257[v262] - v272;
            if (v280 < 0xE || (v272 < v261 + (v280 >> 1) + 1 ? (v281 = v261 >= v272 + (v280 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v281 = 1), !v281))
            {
              v284 = v261;
              v285 = v272;
              goto LABEL_468;
            }

            v282 = (v280 >> 1) + 1;
            if (v280 >= 0x3E)
            {
              v283 = v282 & 0xFFFFFFFFFFFFFFE0;
              v309 = (v272 + 32);
              v310 = (v261 + 16);
              v311 = v282 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v312 = *v310[-2].i8;
                v313 = vmovl_u8(*v310);
                v314 = vmovl_high_u8(*v310->i8);
                v309[-2] = vmovl_u8(*v312.i8);
                v309[-1] = vmovl_high_u8(v312);
                *v309 = v313;
                v309[1] = v314;
                v309 += 4;
                v310 += 4;
                v311 -= 32;
              }

              while (v311);
              if (v282 == v283)
              {
                goto LABEL_471;
              }

              if ((v282 & 0x18) == 0)
              {
                v285 = (v272 + 2 * v283);
                v284 = (v261 + v283);
                goto LABEL_468;
              }
            }

            else
            {
              v283 = 0;
            }

            v284 = (v261 + (v282 & 0xFFFFFFFFFFFFFFF8));
            v285 = (v272 + 2 * (v282 & 0xFFFFFFFFFFFFFFF8));
            v315 = (v272 + 2 * v283);
            v316 = (v261 + v283);
            v317 = v283 - (v282 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v318 = *v316++;
              *v315++ = vmovl_u8(v318);
              v317 += 8;
            }

            while (v317);
            if (v282 == (v282 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_471;
            }

            do
            {
LABEL_468:
              v286 = *v284++;
              *v285++ = v286;
            }

            while (v285 != v279);
            goto LABEL_471;
          }

LABEL_538:
          WTF::StringBuilder::append();
          return;
        }

LABEL_111:
        v72 = *(v17 + 8);
        v73 = *(v17 + 4);
        if ((*(v17 + 16) & 4) == 0)
        {
          if (v73)
          {
            if (v73 == 1)
            {
              *v69 = *v72;
            }

            else
            {
              v241 = v69;
              v242 = v70;
              memcpy(v69, *(v17 + 8), 2 * v73);
              v70 = v242;
              v69 = v241;
            }
          }

LABEL_413:
          v8 = *(v17 + 4);
          if (v70 < v8)
          {
            goto LABEL_540;
          }

          goto LABEL_414;
        }

        v188 = &v69[v73];
        if (v73 < 0x40)
        {
          v189 = v69;
        }

        else
        {
          v189 = &v69[v73 & 0xFFFFFFC0];
          v190 = 0uLL;
          v191 = v69;
          do
          {
            v372.val[0] = *v72;
            v192 = *(v72 + 16);
            v375.val[0] = *(v72 + 32);
            v193 = *(v72 + 48);
            v72 += 64;
            v71 = v193;
            v375.val[1] = 0uLL;
            v377.val[0] = v192;
            v372.val[1] = 0uLL;
            v194 = v191;
            vst2q_s8(v194, v372);
            v194 += 32;
            v377.val[1] = 0uLL;
            vst2q_s8(v194, v377);
            v195 = v191 + 64;
            vst2q_s8(v195, v375);
            v196 = v191 + 96;
            vst2q_s8(v196, *&v71);
            v191 += 128;
          }

          while (v191 != v189);
        }

        if (v189 == v188)
        {
          goto LABEL_413;
        }

        v216 = v188 - v189 - 2;
        if (v216 < 0xE || (v189 < v72 + (v216 >> 1) + 1 ? (v217 = v72 >= (v216 & 0xFFFFFFFFFFFFFFFELL) + v189 + 2) : (v217 = 1), !v217))
        {
          v238 = v72;
          v239 = v189;
          goto LABEL_405;
        }

        v218 = (v216 >> 1) + 1;
        if (v216 >= 0x3E)
        {
          v219 = v218 & 0xFFFFFFFFFFFFFFE0;
          v339 = (v189 + 32);
          v340 = (v72 + 16);
          v341 = v218 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v342 = *v340[-2].i8;
            v343 = vmovl_u8(*v342.i8);
            v71 = vmovl_high_u8(v342);
            v344 = vmovl_u8(*v340);
            v345 = vmovl_high_u8(*v340->i8);
            v339[-2] = v343;
            v339[-1] = v71;
            *v339 = v344;
            v339[1] = v345;
            v339 += 4;
            v340 += 4;
            v341 -= 32;
          }

          while (v341);
          if (v218 == v219)
          {
            goto LABEL_413;
          }

          if ((v218 & 0x18) == 0)
          {
            v239 = (v189 + 2 * v219);
            v238 = (v72 + v219);
            goto LABEL_405;
          }
        }

        else
        {
          v219 = 0;
        }

        v238 = (v72 + (v218 & 0xFFFFFFFFFFFFFFF8));
        v239 = (v189 + 2 * (v218 & 0xFFFFFFFFFFFFFFF8));
        v346 = (v189 + 2 * v219);
        v347 = (v72 + v219);
        v348 = v219 - (v218 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v349 = *v347++;
          v71 = vmovl_u8(v349);
          *v346++ = v71;
          v348 += 8;
        }

        while (v348);
        if (v218 == (v218 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_413;
        }

        do
        {
LABEL_405:
          v240 = *v238++;
          *v239++ = v240;
        }

        while (v239 != v188);
        goto LABEL_413;
      }

LABEL_108:
      if (!v17)
      {
        v95 = MEMORY[0x22AA68210](a1 + 64, v22);
        if (!v95)
        {
          goto LABEL_415;
        }

        v8 = 0;
LABEL_537:
        v338 = &v95[v8];
        v338[2] = 32;
        *v338 = 31520;
        v244 = *a2;
        v245 = *(*a2 + 84);
        if (v245)
        {
          goto LABEL_416;
        }

        goto LABEL_538;
      }

      if ((*(v17 + 16) & 4) == 0)
      {
        v69 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
        if (!v69)
        {
          goto LABEL_415;
        }

        goto LABEL_111;
      }

      v95 = MEMORY[0x22AA68210](a1 + 64, v22);
      if (!v95)
      {
        goto LABEL_415;
      }

      v97 = *(v17 + 8);
      v98 = *(v17 + 4);
      if ((*(v17 + 16) & 4) != 0)
      {
        if (v98)
        {
          if (v98 == 1)
          {
            *v95 = *v97;
          }

          else
          {
            v336 = v95;
            v337 = v96;
            memcpy(v95, *(v17 + 8), v98);
            v96 = v337;
            v95 = v336;
          }
        }
      }

      else
      {
        v99 = &v95[v98];
        if (v98 < 0x10)
        {
          v100 = v95;
        }

        else
        {
          v100 = v95;
          do
          {
            v71 = vld2q_s8(v97);
            v97 += 32;
            *v100++ = v71;
          }

          while (v100 != &v95[v98 & 0xFFFFFFF0]);
        }

        if (v100 != v99)
        {
          v330 = &v95[v98] - v100;
          if (v330 < 4 || (v100 < &v97[2 * v330] ? (v331 = v97 >= &v95[v98]) : (v331 = 1), !v331))
          {
            v333 = v100;
            v334 = v97;
            goto LABEL_533;
          }

          if (v330 >= 0x20)
          {
            v332 = v330 & 0xFFFFFFFFFFFFFFE0;
            v350 = (v97 + 32);
            v351 = v100 + 1;
            v352 = v330 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v354 = v350[-2];
              v353 = v350[-1];
              v356 = *v350;
              v355 = v350[1];
              v350 += 4;
              v71 = vuzp1q_s8(v354, v353);
              v351[-1] = v71;
              *v351 = vuzp1q_s8(v356, v355);
              v351 += 2;
              v352 -= 32;
            }

            while (v352);
            if (v330 == v332)
            {
              goto LABEL_536;
            }

            if ((v330 & 0x1C) == 0)
            {
              v334 = &v97[2 * v332];
              v333 = (v100 + v332);
              do
              {
LABEL_533:
                v335 = *v334;
                v334 += 2;
                v333->i8[0] = v335;
                v333 = (v333 + 1);
              }

              while (v333 != v99);
              goto LABEL_536;
            }
          }

          else
          {
            v332 = 0;
          }

          v333 = (v100 + (v330 & 0xFFFFFFFFFFFFFFFCLL));
          v334 = &v97[2 * (v330 & 0xFFFFFFFFFFFFFFFCLL)];
          v357 = &v97[2 * v332];
          v358 = (v100->i32 + v332);
          v359 = v332 - (v330 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v360 = *v357++;
            *&v71 = vuzp1_s8(v360, v360);
            *v358++ = v71;
            v359 += 4;
          }

          while (v359);
          if (v330 != (v330 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_533;
          }
        }
      }

LABEL_536:
      v8 = *(v17 + 4);
      if (v96 < v8)
      {
        goto LABEL_540;
      }

      goto LABEL_537;
    case 5:
      if (v3 != 5)
      {
        goto LABEL_576;
      }

      LODWORD(v8) = *(a3 + 16);
      if (v8 != 10)
      {
        goto LABEL_576;
      }

      v58 = *(a2 + 8);
      if (v58 >= 3)
      {
        goto LABEL_540;
      }

      v363[0] = *a2;
      v364 = 60;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v363, &v364);
      v59 = *(a2 + 2);
      if (v59)
      {
        v60 = (v59 + 2);
      }

      else
      {
        v60 = 0;
      }

      if (v59)
      {
        v61 = &v59[2 * *v59 + 2];
        if (v60 == v61)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v61 = 0;
        if (!v60)
        {
          goto LABEL_142;
        }
      }

      v85 = *v60;
      v84 = v60 + 1;
      WGSL::Metal::FunctionDefinitionWriter::visit(a1, v85, 0);
      while (v84 != v61)
      {
        WTF::StringBuilder::append();
        v86 = *v84++;
        WGSL::Metal::FunctionDefinitionWriter::visit(a1, v86, 0);
      }

LABEL_142:
      WTF::StringBuilder::append();
      v88 = *a3;
      if (*a3)
      {
        v89 = *(v88 - 4);
        v90 = v88 + 32 * v89;
        if (*(v88 - 12))
        {
          if (!v89)
          {
            goto LABEL_285;
          }

          v91 = 32 * v89;
          v92 = *a3;
          do
          {
            if ((*v92 + 1) > 1)
            {
              goto LABEL_151;
            }

            v92 += 32;
            v91 -= 32;
          }

          while (v91);
          v92 = v90;
LABEL_151:
          if (v88)
          {
            v93 = v88 + 32 * *(v88 - 4);
            v94 = v92 >= v93;
            if (v92 == v93)
            {
              goto LABEL_285;
            }
          }

          else
          {
            v93 = 0;
            v94 = 1;
            if (!v92)
            {
LABEL_285:
              LOBYTE(v363[0]) = 125;
              v184 = *(a1 + 72);
              if (!v184)
              {
                goto LABEL_538;
              }

              v185 = *(a1 + 80);
              if (v185 >= *(v184 + 4) || *(a1 + 64))
              {
                goto LABEL_538;
              }

              v186 = *(v184 + 16);
              v187 = *(v184 + 8);
              *(a1 + 80) = v185 + 1;
              if ((v186 & 4) != 0)
              {
                *(v187 + v185) = 125;
              }

              else
              {
                *(v187 + 2 * v185) = 125;
              }

              return;
            }
          }

          v101 = 1;
          v102 = 0uLL;
          while (1)
          {
            v361 = v87;
            v362 = v102;
            if ((v101 & 1) == 0)
            {
              WTF::StringBuilder::append();
            }

            v103 = *v92;
            v104 = *(a1 + 80);
            if (*v92)
            {
              v105 = *(v103 + 4);
              _CF = __CFADD__(v105, 4);
              v106 = v105 + 4;
              if (_CF)
              {
                v106 = -1;
              }

              _CF = __CFADD__(v104, v106);
              v107 = v104 + v106;
              if (_CF)
              {
                v108 = 0xFFFFFFFFLL;
              }

              else
              {
                v108 = v107;
              }

              v109 = *(a1 + 72);
              if (!v109)
              {
LABEL_192:
                v109 = *(a1 + 64);
                if (!v109)
                {
                  goto LABEL_194;
                }
              }
            }

            else
            {
              if (v94)
              {
                v110 = -1;
              }

              else
              {
                v110 = 4;
              }

              _CF = __CFADD__(v104, v110);
              v111 = v104 + v110;
              if (_CF)
              {
                v108 = 0xFFFFFFFFLL;
              }

              else
              {
                v108 = v111;
              }

              v109 = *(a1 + 72);
              if (!v109)
              {
                goto LABEL_192;
              }
            }

            if ((*(v109 + 16) & 4) == 0)
            {
              goto LABEL_196;
            }

LABEL_194:
            if (v103 && (*(v103 + 16) & 4) == 0)
            {
LABEL_196:
              v112 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
              v8 = &v361;
              v114 = v361;
              v115 = v362;
              if (v112)
              {
                if (!v113)
                {
                  goto LABEL_540;
                }

                *v112 = 46;
                v116 = v112 + 1;
                if (v103)
                {
                  v117 = *(v103 + 8);
                  v118 = *(v103 + 4);
                  if ((*(v103 + 16) & 4) == 0)
                  {
                    if (v118)
                    {
                      if (v118 == 1)
                      {
                        *v116 = *v117;
                      }

                      else
                      {
                        v142 = v113;
                        memcpy(v112 + 1, *(v103 + 8), 2 * v118);
                        v114 = v361;
                        v115 = v362;
                        v113 = v142;
                      }
                    }

                    goto LABEL_235;
                  }

                  if (v118 < 0x40)
                  {
                    v127 = (v112 + 1);
                    v134 = &v116[v118];
                    if (v116 != v134)
                    {
                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    v127 = &v116[v118 & 0xFFFFFFC0];
                    v128 = (v112 + 1);
                    do
                    {
                      v369.val[0] = *v117;
                      v129 = *(v117 + 16);
                      v371.val[0] = *(v117 + 32);
                      v130 = *(v117 + 48);
                      v117 += 64;
                      v114 = v130;
                      v371.val[1] = v115;
                      v374.val[0] = v129;
                      v369.val[1] = v115;
                      v131 = v128;
                      vst2q_s8(v131, v369);
                      v131 += 32;
                      v374.val[1] = v115;
                      vst2q_s8(v131, v374);
                      v132 = v128 + 64;
                      vst2q_s8(v132, v371);
                      v133 = v128 + 96;
                      vst2q_s8(v133, *&v114);
                      v128 += 128;
                    }

                    while (v128 != v127);
                    v134 = &v116[v118];
                    if (v127 == v134)
                    {
                      goto LABEL_235;
                    }

LABEL_223:
                    v135 = &v112[v118] - v127;
                    if (v135 < 0xE || (v127 < v117 + (v135 >> 1) + 1 ? (v136 = v117 >= v127 + (v135 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v136 = 1), !v136))
                    {
                      v139 = v117;
                      v140 = v127;
                      goto LABEL_232;
                    }

                    v137 = (v135 >> 1) + 1;
                    if (v135 >= 0x3E)
                    {
                      v138 = v137 & 0xFFFFFFFFFFFFFFE0;
                      v163 = (v127 + 32);
                      v164 = (v117 + 16);
                      v165 = v137 & 0xFFFFFFFFFFFFFFE0;
                      do
                      {
                        v166 = *v164[-2].i8;
                        v167 = vmovl_u8(*v164);
                        v168 = vmovl_high_u8(*v164->i8);
                        v163[-2] = vmovl_u8(*v166.i8);
                        v163[-1] = vmovl_high_u8(v166);
                        *v163 = v167;
                        v163[1] = v168;
                        v163 += 4;
                        v164 += 4;
                        v165 -= 32;
                      }

                      while (v165);
                      if (v137 != v138)
                      {
                        if ((v137 & 0x18) == 0)
                        {
                          v140 = (v127 + 2 * v138);
                          v139 = (v117 + v138);
                          goto LABEL_232;
                        }

                        goto LABEL_271;
                      }
                    }

                    else
                    {
                      v138 = 0;
LABEL_271:
                      v139 = (v117 + (v137 & 0xFFFFFFFFFFFFFFF8));
                      v140 = (v127 + 2 * (v137 & 0xFFFFFFFFFFFFFFF8));
                      v169 = (v127 + 2 * v138);
                      v170 = (v117 + v138);
                      v171 = v138 - (v137 & 0xFFFFFFFFFFFFFFF8);
                      do
                      {
                        v172 = *v170++;
                        *v169++ = vmovl_u8(v172);
                        v171 += 8;
                      }

                      while (v171);
                      if (v137 != (v137 & 0xFFFFFFFFFFFFFFF8))
                      {
                        do
                        {
LABEL_232:
                          v141 = *v139++;
                          *v140++ = v141;
                        }

                        while (v140 != v134);
                      }
                    }
                  }

LABEL_235:
                  v8 = *(v103 + 4);
                  if (v113 - 1 < v8)
                  {
                    goto LABEL_540;
                  }
                }

                else
                {
                  v8 = 0;
                }

                v143 = &v116[v8];
                *v143 = 3997728;
                v143[2] = 32;
              }

LABEL_237:
              v144 = *v92;
              v361 = v114;
              v362 = v115;
              if (v144)
              {
                goto LABEL_238;
              }

              goto LABEL_254;
            }

            v119 = MEMORY[0x22AA68210](a1 + 64, v108);
            v8 = &v361;
            v114 = v361;
            v115 = v362;
            if (!v119)
            {
              goto LABEL_237;
            }

            if (!v120)
            {
              goto LABEL_540;
            }

            *v119 = 46;
            v121 = v119 + 1;
            if (!v103)
            {
              v8 = 0;
              goto LABEL_253;
            }

            v122 = *(v103 + 8);
            v123 = *(v103 + 4);
            if ((*(v103 + 16) & 4) != 0)
            {
              if (v123)
              {
                if (v123 == 1)
                {
                  *v121 = *v122;
                }

                else
                {
                  v154 = v120;
                  memcpy(v119 + 1, *(v103 + 8), v123);
                  v114 = v361;
                  v115 = v362;
                  v120 = v154;
                }
              }
            }

            else
            {
              if (v123 < 0x10)
              {
                v124 = (v119 + 1);
                v126 = &v121[v123];
                if (v121 == &v121[v123])
                {
                  goto LABEL_252;
                }
              }

              else
              {
                v124 = (v119 + 1);
                do
                {
                  v125 = vld2q_s8(v122);
                  v122 += 32;
                  *v124++ = v125;
                }

                while (v124 != &v121[v123 & 0xFFFFFFF0]);
                v126 = &v121[v123];
                if (v124 == &v121[v123])
                {
                  goto LABEL_252;
                }
              }

              v147 = &v119[v123] - v124;
              v148 = v147 + 1;
              if ((v147 + 1) < 4 || (v124 < &v122[2 * v147 + 2] ? (v149 = v122 >= &v119[v123 + 1]) : (v149 = 1), !v149))
              {
                v151 = v124;
                v152 = v122;
                goto LABEL_249;
              }

              if (v148 >= 0x20)
              {
                v150 = v148 & 0xFFFFFFFFFFFFFFE0;
                v173 = (v122 + 32);
                v174 = v124 + 1;
                v175 = v148 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v177 = v173[-2];
                  v176 = v173[-1];
                  v179 = *v173;
                  v178 = v173[1];
                  v173 += 4;
                  v174[-1] = vuzp1q_s8(v177, v176);
                  *v174 = vuzp1q_s8(v179, v178);
                  v174 += 2;
                  v175 -= 32;
                }

                while (v175);
                if (v148 == v150)
                {
                  goto LABEL_252;
                }

                if ((v148 & 0x1C) == 0)
                {
                  v152 = &v122[2 * v150];
                  v151 = (v124 + v150);
                  do
                  {
LABEL_249:
                    v153 = *v152;
                    v152 += 2;
                    v151->i8[0] = v153;
                    v151 = (v151 + 1);
                  }

                  while (v151 != v126);
                  goto LABEL_252;
                }
              }

              else
              {
                v150 = 0;
              }

              v151 = (v124 + (v148 & 0xFFFFFFFFFFFFFFFCLL));
              v152 = &v122[2 * (v148 & 0xFFFFFFFFFFFFFFFCLL)];
              v180 = &v122[2 * v150];
              v181 = (v124->i32 + v150);
              v182 = v150 - (v148 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v183 = *v180++;
                *v181++ = vuzp1_s8(v183, v183).u32[0];
                v182 += 4;
              }

              while (v182);
              if (v148 != (v148 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_249;
              }
            }

LABEL_252:
            v8 = *(v103 + 4);
            if (v120 - 1 < v8)
            {
              goto LABEL_540;
            }

LABEL_253:
            v155 = &v121[v8];
            v155[2] = 32;
            *v155 = 15648;
            v144 = *v92;
            v361 = v114;
            v362 = v115;
            if (v144)
            {
LABEL_238:
              v145 = *(v144 + 8);
              v146 = *(v144 + 4) | (((*(v144 + 16) >> 2) & 1) << 32);
              goto LABEL_255;
            }

LABEL_254:
            v145 = 0;
            v146 = 0x100000000;
LABEL_255:
            v156 = WGSL::Types::PrimitiveStruct::keys[v58];
            if ((WTF::operator==(v145, v146, *v156, *(v156 + 1)) & 1) == 0)
            {
              v157 = *(v156 + 3);
              v158 = *(v156 + 4);
              v156 += 24;
              if ((WTF::operator==(v145, v146, v157, v158) & 1) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x2257545ACLL);
              }
            }

            v159 = *(v156 + 4);
            v160 = *(a2 + 2);
            if (*v160 <= v159)
            {
              __break(0xC471u);
              JUMPOUT(0x22575458CLL);
            }

            v161 = *&v160[2 * v159 + 2];
            LOBYTE(v365[0]) = 0;
            v366 = -1;
            v162 = *(v92 + 24);
            if (v162 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v162, v363, v365, (v92 + 8));
              v366 = *(v92 + 24);
            }

            WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v161, v365);
            if (v366 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
            }

            v366 = -1;
            v92 += 32;
            if (v92 == v90)
            {
              v87 = v361;
              v102 = v362;
            }

            else
            {
              v87 = v361;
              v102 = v362;
              do
              {
                if ((*v92 + 1) > 1)
                {
                  break;
                }

                v92 += 32;
              }

              while (v92 != v90);
            }

            v101 = 0;
            v94 = v92 >= v93;
            if (v92 == v93)
            {
              goto LABEL_285;
            }
          }
        }
      }

      else
      {
        v90 = 0;
        v89 = 0;
      }

      v92 = v90;
      v90 = v88 + 32 * v89;
      goto LABEL_151;
    case 6:
      if (v3 == 6)
      {
        __break(0xC471u);
        JUMPOUT(0x2257544D0);
      }

      goto LABEL_576;
    case 7:
      if (v3 == 7)
      {
        __break(0xC471u);
        JUMPOUT(0x2257544A8);
      }

      goto LABEL_576;
    case 8:
      if (v3 == 8)
      {
        __break(0xC471u);
        JUMPOUT(0x225754480);
      }

      goto LABEL_576;
    case 9:
      if (v3 == 9)
      {
        __break(0xC471u);
        JUMPOUT(0x225754458);
      }

      goto LABEL_576;
    case 10:
      if (v3 != 10)
      {
        goto LABEL_576;
      }

      v24 = *(a2 + 1);
      LOBYTE(v365[0]) = 0;
      v366 = -1;
      v25 = *(a3 + 16);
      if (v25 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v25, v363, v365, a3);
        v366 = *(a3 + 16);
      }

      WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v24, v365);
      if (v366 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v363, v365);
      }

      return;
    case 11:
      if (v3 == 11)
      {
        __break(0xC471u);
        JUMPOUT(0x2257545ECLL);
      }

      goto LABEL_576;
    case 12:
      if (v3 == 12)
      {
        __break(0xC471u);
        JUMPOUT(0x225754520);
      }

      goto LABEL_576;
    case 13:
      if (v3 == 13)
      {
        __break(0xC471u);
        JUMPOUT(0x2257544F8);
      }

      goto LABEL_576;
    default:
      if (*(a2 + 48))
      {
        goto LABEL_576;
      }

      LODWORD(v8) = *a2;
      if (v8 <= 2)
      {
        if (*a2)
        {
          if (v8 == 1)
          {
            if (*(a3 + 16) == 3)
            {
              LODWORD(v365[0]) = *a3;
              WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<int,void>>((a1 + 64), v365);
              return;
            }
          }

          else
          {
            if (v8 != 2)
            {
              return;
            }

            if (*(a3 + 16) == 4)
            {
              LODWORD(v365[0]) = *a3;
              LOBYTE(v363[0]) = 117;
              WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v365, v363);
              return;
            }
          }
        }

        else if (*(a3 + 16) == 5)
        {
          v365[0] = *a3;
          WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<long long,void>>((a1 + 64), v365);
          return;
        }

        goto LABEL_576;
      }

      if (*a2 <= 4u)
      {
        if (v8 != 3)
        {
          if (v8 != 4)
          {
            return;
          }

          if (*(a3 + 16) == 1)
          {
            _H0 = *a3;
            __asm { FCVT            D0, H0 }

            v363[0] = WTF::numberToStringWithTrailingPoint();
            v363[1] = v14;
            if (v14 >> 31)
            {
              __break(0xC471u);
              JUMPOUT(0x2257545CCLL);
            }

            v364 = 104;
            WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v363, &v364);
            return;
          }

          goto LABEL_576;
        }

        if (*(a3 + 16) != 2)
        {
          goto LABEL_576;
        }

LABEL_304:
        v197 = WTF::numberToStringWithTrailingPoint();
        WTF::StringBuilder::append<std::span<char const,18446744073709551615ul>>((a1 + 64), v197, v198);
        return;
      }

      if (*a2 > 6u)
      {
        if (v8 != 7)
        {
          if ((v8 - 8) >= 6)
          {
            return;
          }

LABEL_544:
          __break(0xC471u);
          JUMPOUT(0x22575431CLL);
        }

        if (*(a3 + 16) == 6)
        {

          WTF::StringBuilder::append();
          return;
        }
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_541;
        }

        if (!*(a3 + 16))
        {
          goto LABEL_304;
        }
      }

LABEL_576:
      mpark::throw_bad_variant_access(a1);
  }
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, const WGSL::Type *a2, WGSL::AST::CallExpression *a3)
{
  v6 = *(a3 + 8);
  if ((*(*v6 + 16))(v6) == 58 && MEMORY[0x22AA683D0](v6[11], "bitcast", 7))
  {
    WTF::StringBuilder::append();
    WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(a3 + 8) + 24), 0);
    WTF::StringBuilder::append();
    if (*(a3 + 21))
    {
      (*(*this + 216))(this, **(a3 + 9));
      LOBYTE(v71[0]) = 41;
      v7 = *(this + 9);
      if (v7 && (v8 = *(this + 20), v8 < *(v7 + 4)) && !*(this + 8))
      {
        v56 = *(v7 + 16);
        v57 = *(v7 + 8);
        *(this + 20) = v8 + 1;
        if ((v56 & 4) != 0)
        {
          *(v57 + v8) = 41;
        }

        else
        {
          *(v57 + 2 * v8) = 41;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }
    }

    else
    {
      __break(0xC471u);
    }

    return;
  }

  v9 = (*(**(a3 + 8) + 16))(*(a3 + 8));
  if (v9 == 57)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(*(a3 + 8) + 24) + 48) == 4;
    if (*(*(*(a3 + 8) + 24) + 48) != 4)
    {
      goto LABEL_19;
    }
  }

  if (*(a3 + 88))
  {
    v11 = WGSL::Metal::FunctionDefinitionWriter::visit(this, a2, 0);
    LOBYTE(v71[0]) = 40;
    v12 = *(this + 9);
    if (v12 && (v13 = *(this + 20), v13 < *(v12 + 4)) && !*(this + 8))
    {
      v54 = *(v12 + 16);
      v55 = *(v12 + 8);
      *(this + 20) = v13 + 1;
      if ((v54 & 4) != 0)
      {
        *(v55 + v13) = 40;
      }

      else
      {
        *(v55 + 2 * v13) = 40;
      }
    }

    else
    {
      v11 = WTF::StringBuilder::append();
    }

    if (v9 == 57)
    {
      if (*(a2 + 48) != 3)
      {
        mpark::throw_bad_variant_access(v11);
      }

      v14 = *a2;
    }

    else
    {
      v14 = 0;
    }

    WTF::StringBuilder::append();
    ++*(this + 26);
    v21 = *(a3 + 21);
    if (v21)
    {
      v22 = *(a3 + 9);
      if (v10)
      {
        v23 = 8 * v21;
        do
        {
          v24 = *v22;
          v25 = *(this + 20);
          v26 = (4 * *(this + 26));
          if (__CFADD__(v25, v26))
          {
            v27 = 0xFFFFFFFFLL;
          }

          else
          {
            v27 = (v25 + v26);
          }

          v28 = *(this + 9);
          if ((v28 || (v28 = *(this + 8)) != 0) && (*(v28 + 16) & 4) == 0)
          {
            v29 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
            if (v29)
            {
              v30 = v26 == 0;
            }

            else
            {
              v30 = 1;
            }

            if (!v30)
            {
              memset_pattern16(v29, aIneStateTLTAne, 2 * v26);
            }
          }

          else
          {
            v31 = MEMORY[0x22AA68210](this + 64, v27);
            if (v31)
            {
              v32 = v26 == 0;
            }

            else
            {
              v32 = 1;
            }

            if (!v32)
            {
              memset(v31, 32, v26);
            }
          }

          (*(*this + 216))(this, v24);
          WTF::StringBuilder::append();
          ++v22;
          v23 -= 8;
        }

        while (v23);
      }

      else
      {
        v33 = 8 * v21;
        do
        {
          v34 = *v22;
          v35 = *(this + 20);
          v36 = (4 * *(this + 26));
          if (__CFADD__(v35, v36))
          {
            v37 = 0xFFFFFFFFLL;
          }

          else
          {
            v37 = (v35 + v36);
          }

          v38 = *(this + 9);
          if ((v38 || (v38 = *(this + 8)) != 0) && (*(v38 + 16) & 4) == 0)
          {
            v39 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
            if (v39)
            {
              v40 = v36 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (!v40)
            {
              memset_pattern16(v39, aIneStateTLTAne, 2 * v36);
            }
          }

          else
          {
            v41 = MEMORY[0x22AA68210](this + 64, v37);
            if (v41)
            {
              v42 = v36 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (!v42)
            {
              memset(v41, 32, v36);
            }
          }

          WGSL::Metal::FunctionDefinitionWriter::visit(this, v14, v34);
          WTF::StringBuilder::append();
          ++v22;
          v33 -= 8;
        }

        while (v33);
      }
    }

    v43 = *(this + 26) - 1;
    *(this + 26) = v43;
    v72 = v43;
    v71[0] = "})";
    v71[1] = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v72, v71);
    return;
  }

LABEL_19:
  v15 = *(a3 + 8);
  if ((*(*v15 + 16))(v15) == 21)
  {
    v16 = v15[11];
    v17 = 0x100000000;
    v70 = a2;
    if (v16)
    {
      v18 = *(v16 + 8);
      v17 = *(v16 + 4) | (((*(v16 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v18 = 0;
    }

    v44 = &WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::builtinMappings;
    v45 = 44;
    do
    {
      v46 = &v44[3 * (v45 >> 1)];
      v47 = WTF::codePointCompare();
      if (v47 >= 0)
      {
        v45 >>= 1;
      }

      else
      {
        v45 += ~(v45 >> 1);
      }

      if (v47 < 0)
      {
        v44 = v46 + 3;
      }
    }

    while (v45);
    if (v44 != &WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::directMappings)
    {
      if (WTF::operator==(v18, v17, *v44, v44[1]))
      {
        v48 = v44[2];
        if (v48)
        {

          (v48)(this, a3);
          return;
        }
      }
    }

    if (*(a3 + 88) != 1)
    {
      v51 = v15[11];
      v52 = 0x100000000;
      if (v51)
      {
        v53 = *(v51 + 8);
        v52 = *(v51 + 4) | (((*(v51 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v53 = 0;
      }

      v58 = &WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::directMappings;
      v59 = 41;
      do
      {
        v60 = &v58[3 * (v59 >> 1)];
        v62 = WTF::codePointCompare();
        if (v62 >= 0)
        {
          v59 >>= 1;
        }

        else
        {
          v59 += ~(v59 >> 1);
        }

        if (v62 < 0)
        {
          v58 = v60 + 3;
        }
      }

      while (v59);
      {
        (v63)(this + 40);
        WTF::StringBuilder::append();
      }

      else if (*(this + 20) || *(this + 9))
      {
        v64 = v15[11];
        if (!v64 || (*(v64 + 16) & 4) != 0)
        {
          WTF::StringBuilder::append();
        }

        else
        {
          WTF::StringBuilder::append();
        }
      }

      else
      {
        v67 = v15[11];
        if (v67)
        {
          atomic_fetch_add_explicit(v67, 2u, memory_order_relaxed);
        }

        v68 = *(this + 8);
        *(this + 8) = v67;
        if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v61);
        }

        v69 = v15[11];
        if (v69)
        {
          LODWORD(v69) = *(v69 + 4);
        }

        *(this + 20) = v69;
      }

      goto LABEL_88;
    }

    v49 = *(a3 + 3);
    v20 = v70;
    if (!v49)
    {
      goto LABEL_86;
    }

    v50 = v49[48];
    if (v50 == 10)
    {
      v49 = *(v49 + 1);
      if (!v49)
      {
        goto LABEL_86;
      }

      v50 = v49[48];
    }

    if (v50 == 1)
    {
      v49 = *v49;
      if (!v49)
      {
        goto LABEL_86;
      }

      v50 = v49[48];
    }

    if (v50)
    {
      goto LABEL_86;
    }

    if (*v49 - 1 > 1)
    {
      goto LABEL_86;
    }

    if (*(a3 + 21) != 1)
    {
      goto LABEL_86;
    }

    v65 = *(**(a3 + 9) + 24);
    if (!v65)
    {
      goto LABEL_86;
    }

    v66 = v65[48];
    if (v66 == 10)
    {
      v65 = *(v65 + 1);
      if (!v65)
      {
        goto LABEL_86;
      }

      v66 = v65[48];
    }

    if (v66 != 1)
    {
LABEL_126:
      if (!v66 && *v65 - 3 <= 2)
      {
        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(this, v70, 0);
        WTF::StringBuilder::append();
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    v65 = *v65;
    if (v65)
    {
      v66 = v65[48];
      goto LABEL_126;
    }

LABEL_86:
    v19 = this;
    goto LABEL_87;
  }

  v19 = this;
  v20 = a2;
LABEL_87:
  WGSL::Metal::FunctionDefinitionWriter::visit(v19, v20, 0);
LABEL_88:

  WGSL::Metal::visitArguments(this, a3, 0);
}

uint64_t WGSL::Metal::emitDynamicOffset(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = *(*(a2 + 8) + 24);
  if (*(v3 + 48) != 11)
  {
    mpark::throw_bad_variant_access(this);
  }

  v6 = *v3;
  v7 = "device";
  v8 = "constant";
  v9 = 9;
  v10 = "threadgroup";
  v11 = 12;
  if (v6 != 5)
  {
    v10 = 0;
    v11 = 0;
  }

  if (v6 != 4)
  {
    v8 = v10;
    v9 = v11;
  }

  if (v6 == 3)
  {
    v12 = 7;
  }

  else
  {
    v7 = v8;
    v12 = v9;
  }

  if (*v3)
  {
    v13 = v6 == 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = "thread";
  v15 = 7;
  if (!v13)
  {
    v14 = 0;
    v15 = 0;
  }

  if (*v3 <= 2u)
  {
    v16 = v14;
  }

  else
  {
    v16 = v7;
  }

  if (*v3 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, v3, 0);
  v22[0] = ")(((";
  v22[1] = 4;
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v21[0] = v16;
  v21[1] = v18;
  v20[0] = " uint8_t*)&(";
  v20[1] = 12;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v22, v21, v20);
  if (!*(a2 + 21) || ((*(*this + 216))(this, **(a2 + 9)), WTF::StringBuilder::append(), *(a2 + 21) <= 1u))
  {
    __break(0xC471u);
    JUMPOUT(0x225755038);
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8));

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicAdd(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_add_explicit";
  v12[1] = 25;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicAnd(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_and_explicit";
  v12[1] = 25;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicExchange(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_exchange_explicit";
  v12[1] = 24;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicLoad(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(this + 42) >= 9u)
  {
    WTF::StringBuilder::append();
  }

  v12[0] = "atomic_load_explicit";
  v12[1] = 20;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  result = WTF::StringBuilder::append();
  if (*(this + 42) >= 9u)
  {

    return WTF::StringBuilder::append();
  }

  return result;
}

uint64_t WGSL::Metal::emitAtomicMax(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_max_explicit";
  v12[1] = 25;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicMin(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_min_explicit";
  v12[1] = 25;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicOr(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_or_explicit";
  v12[1] = 24;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicStore(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_store_explicit";
  v12[1] = 21;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicSub(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_sub_explicit";
  v12[1] = 25;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicXor(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v12[0] = "atomic_fetch_xor_explicit";
  v12[1] = 25;
  v11 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v12, &v11);
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = *(a2 + 9);
    (*(*this + 216))(this, *v6);
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v5 - 8;
      do
      {
        v9 = *v7++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return WTF::StringBuilder::append();
}

WTF::StringImpl *WGSL::Metal::emitDegrees(WGSL::Metal *this, const WGSL::Type **a2, WGSL::AST::CallExpression *a3)
{
  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, a2[3], 0);
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    v6 = (*(*this + 216))(this, *a2[9]);
    WTF::String::number(&v8, v6, 57.2957795);
    v11[0] = " * ";
    v11[1] = 3;
    v10 = v8;
    v9 = 41;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v11, &v10, &v9);
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitDistance(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    goto LABEL_17;
  }

  if (*(*(**(a2 + 9) + 24) + 48))
  {
    (*(*this + 216))(this, *(a2 + 8), a3);

    return WGSL::Metal::visitArguments(this, a2, 0);
  }

  WTF::StringBuilder::append();
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    JUMPOUT(0x225755EC8);
  }

  (*(*this + 216))(this, **(a2 + 9));
  WTF::StringBuilder::append();
  if (*(a2 + 21) <= 1u)
  {
LABEL_17:
    __break(0xC471u);
    JUMPOUT(0x225755EC0);
  }

  result = (*(*this + 216))(this, *(*(a2 + 9) + 8));
  v6 = *(this + 9);
  if (!v6)
  {
    return WTF::StringBuilder::append();
  }

  v7 = *(this + 20);
  if (v7 >= *(v6 + 4) || *(this + 8))
  {
    return WTF::StringBuilder::append();
  }

  v8 = *(v6 + 16);
  v9 = *(v6 + 8);
  *(this + 20) = v7 + 1;
  if ((v8 & 4) != 0)
  {
    *(v9 + v7) = 41;
  }

  else
  {
    *(v9 + 2 * v7) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::emitLength(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    v3 = this;
    WTF::StringBuilder::append();

    return WGSL::Metal::visitArguments(v3, a2, 0);
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::emitPack2x16Float(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xI8(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xI8Clamp(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xU8(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xU8Clamp(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitQuantizeToF16(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    goto LABEL_176;
  }

  v3 = this;
  v4 = **(a2 + 9);
  v5 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
  v6 = *(v4 + 24);
  if (v6 && *(v6 + 48) == 1)
  {
    WTF::String::number(*(v6 + 8));
    v8 = v144;
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(MEMORY[0x277CD4668], v7);
    }

    v9 = (v3 + 16);
    v10 = v3[20];
    if (!v144)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = (this + 64);
    v10 = *(this + 80);
    v8 = MEMORY[0x277CD4668];
  }

  v12 = 0;
  v11 = *(v8 + 1);
LABEL_10:
  v13 = v11 + 6;
  if (v11 >= 0xFFFFFFFA)
  {
    v13 = -1;
  }

  v47 = __CFADD__(v11, v13);
  v14 = v11 + v13;
  if (v47)
  {
    v14 = -1;
  }

  v47 = __CFADD__(v14, 5);
  v15 = v14 + 5;
  if (v47)
  {
    v15 = -1;
  }

  v47 = __CFADD__(v10, v15);
  v16 = v10 + v15;
  if (v47)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 1);
  if ((v18 || (v18 = *v9) != 0) && (*(v18 + 16) & 4) == 0 || (v12 & 1) == 0 && (*(v8 + 16) & 4) == 0)
  {
    this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(v9);
    if (!this)
    {
      goto LABEL_135;
    }

    *this = 0x61006F006C0066;
    *(this + 8) = 116;
    if (v19 <= 4)
    {
      goto LABEL_176;
    }

    v20 = (this + 10);
    v21 = v19 - 5;
    if (v12)
    {
      v22 = 0;
      goto LABEL_79;
    }

    v29 = *(v8 + 1);
    v30 = *(v8 + 1);
    if ((*(v8 + 16) & 4) == 0)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          *v20 = v29->i16[0];
        }

        else
        {
          v60 = this;
          memcpy((this + 10), v29, 2 * v30);
          this = v60;
        }
      }

LABEL_78:
      v22 = *(v8 + 1);
      if (v21 < v22)
      {
        goto LABEL_176;
      }

LABEL_79:
      v61 = &v20[v22];
      *v61 = 0x6C006100680028;
      v61[4] = 102;
      if (v21 - v22 <= 4)
      {
        goto LABEL_176;
      }

      v62 = v61 + 5;
      v63 = v21 - v22 - 5;
      if (v12)
      {
        v64 = 0;
LABEL_105:
        if (v63 != v64)
        {
          v62[v64] = 40;
          goto LABEL_135;
        }

LABEL_176:
        __break(1u);
        return this;
      }

      v65 = *(v8 + 1);
      v66 = *(v8 + 1);
      if ((*(v8 + 16) & 4) == 0)
      {
        if (v66)
        {
          if (v66 == 1)
          {
            *v62 = v65->i16[0];
          }

          else
          {
            this = memcpy(v62, v65, 2 * v66);
          }
        }

LABEL_104:
        v64 = *(v8 + 1);
        if (v63 < v64)
        {
          goto LABEL_176;
        }

        goto LABEL_105;
      }

      v67 = &v62[v66];
      if (v66 < 0x40)
      {
        v68 = v62;
      }

      else
      {
        v68 = &v62[v66 & 0xFFFFFFC0];
        v69 = 0uLL;
        v70 = v62;
        do
        {
          v146.val[0] = *v65;
          v71 = v65[1];
          v148.val[0] = v65[2];
          v72 = v65[3];
          v65 += 4;
          v73 = v72;
          v148.val[1] = 0uLL;
          v150.val[0] = v71;
          v146.val[1] = 0uLL;
          v74 = v70;
          vst2q_s8(v74, v146);
          v74 += 32;
          v150.val[1] = 0uLL;
          vst2q_s8(v74, v150);
          v75 = v70 + 64;
          vst2q_s8(v75, v148);
          v76 = v70 + 96;
          vst2q_s8(v76, *(&v69 - 1));
          v70 += 128;
        }

        while (v70 != v68);
      }

      if (v68 == v67)
      {
        goto LABEL_104;
      }

      v77 = this + 2 * v22 + 2 * v66 - v68 + 18;
      if (v77 < 0xE || (v68 < v65->u64 + (v77 >> 1) + 1 ? (v78 = v65 >= (v77 & 0xFFFFFFFFFFFFFFFELL) + v68 + 2) : (v78 = 1), !v78))
      {
        v81 = v65;
        v82 = v68;
        goto LABEL_101;
      }

      v79 = (v77 >> 1) + 1;
      if (v77 >= 0x3E)
      {
        v80 = v79 & 0xFFFFFFFFFFFFFFE0;
        v112 = (v68 + 32);
        v113 = &v65[1];
        v114 = v79 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v115 = *v113[-2].i8;
          v116 = vmovl_u8(*v113);
          v117 = vmovl_high_u8(*v113->i8);
          v112[-2] = vmovl_u8(*v115.i8);
          v112[-1] = vmovl_high_u8(v115);
          *v112 = v116;
          v112[1] = v117;
          v112 += 4;
          v113 += 4;
          v114 -= 32;
        }

        while (v114);
        if (v79 == v80)
        {
          goto LABEL_104;
        }

        if ((v79 & 0x18) == 0)
        {
          v82 = (v68 + 2 * v80);
          v81 = (v65 + v80);
          goto LABEL_101;
        }
      }

      else
      {
        v80 = 0;
      }

      v81 = (v65 + (v79 & 0xFFFFFFFFFFFFFFF8));
      v82 = (v68 + 2 * (v79 & 0xFFFFFFFFFFFFFFF8));
      v118 = (v68 + 2 * v80);
      v119 = &v65->i8[v80];
      v120 = v80 - (v79 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v121 = *v119++;
        *v118++ = vmovl_u8(v121);
        v120 += 8;
      }

      while (v120);
      if (v79 == (v79 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_104;
      }

      do
      {
LABEL_101:
        v83 = v81->u8[0];
        v81 = (v81 + 1);
        *v82++ = v83;
      }

      while (v82 != v67);
      goto LABEL_104;
    }

    v36 = &v20[v30];
    if (v30 < 0x40)
    {
      v37 = this + 10;
    }

    else
    {
      v37 = &v20[v30 & 0xFFFFFFC0];
      v38 = 0uLL;
      v39 = (this + 10);
      do
      {
        v145.val[0] = *v29;
        v40 = v29[1];
        v147.val[0] = v29[2];
        v41 = v29[3];
        v29 += 4;
        v42 = v41;
        v147.val[1] = 0uLL;
        v149.val[0] = v40;
        v145.val[1] = 0uLL;
        v43 = v39;
        vst2q_s8(v43, v145);
        v43 += 32;
        v149.val[1] = 0uLL;
        vst2q_s8(v43, v149);
        v44 = v39 + 64;
        vst2q_s8(v44, v147);
        v45 = v39 + 96;
        vst2q_s8(v45, *(&v38 - 1));
        v39 += 128;
      }

      while (v39 != v37);
    }

    if (v37 == v36)
    {
      goto LABEL_78;
    }

    v46 = this + 2 * v30 - v37 + 8;
    if (v46 < 0xE || (v37 < v29->u64 + (v46 >> 1) + 1 ? (v47 = v29 >= (v46 & 0xFFFFFFFFFFFFFFFELL) + v37 + 2) : (v47 = 1), !v47))
    {
      v50 = v29;
      v51 = v37;
      goto LABEL_62;
    }

    v48 = (v46 >> 1) + 1;
    if (v46 >= 0x3E)
    {
      v49 = v48 & 0xFFFFFFFFFFFFFFE0;
      v102 = (v37 + 32);
      v103 = &v29[1];
      v104 = v48 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v105 = *v103[-2].i8;
        v106 = vmovl_u8(*v103);
        v107 = vmovl_high_u8(*v103->i8);
        v102[-2] = vmovl_u8(*v105.i8);
        v102[-1] = vmovl_high_u8(v105);
        *v102 = v106;
        v102[1] = v107;
        v102 += 4;
        v103 += 4;
        v104 -= 32;
      }

      while (v104);
      if (v48 == v49)
      {
        goto LABEL_78;
      }

      if ((v48 & 0x18) == 0)
      {
        v51 = (v37 + 2 * v49);
        v50 = (v29 + v49);
        goto LABEL_62;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = (v29 + (v48 & 0xFFFFFFFFFFFFFFF8));
    v51 = (v37 + 2 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v108 = (v37 + 2 * v49);
    v109 = &v29->i8[v49];
    v110 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v111 = *v109++;
      *v108++ = vmovl_u8(v111);
      v110 += 8;
    }

    while (v110);
    if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_78;
    }

    do
    {
LABEL_62:
      v52 = v50->u8[0];
      v50 = (v50 + 1);
      *v51++ = v52;
    }

    while (v51 != v36);
    goto LABEL_78;
  }

  this = MEMORY[0x22AA68210](v9, v17);
  if (!this)
  {
    goto LABEL_135;
  }

  *(this + 4) = 116;
  *this = 1634692198;
  if (v23 <= 4)
  {
    goto LABEL_176;
  }

  v24 = v23 - 5;
  v25 = (this + 5);
  if ((v12 & 1) == 0)
  {
    v31 = *(v8 + 1);
    v32 = *(v8 + 1);
    if ((*(v8 + 16) & 4) != 0)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          *v25 = v31->i8[0];
        }

        else
        {
          v84 = this;
          memcpy((this + 5), v31, v32);
          this = v84;
        }
      }
    }

    else
    {
      v33 = &v25[v32];
      if (v32 < 0x10)
      {
        v34 = this + 5;
      }

      else
      {
        v34 = this + 5;
        do
        {
          v35 = vld2q_s8(v31->i8);
          v31 += 2;
          *v34 = v35;
          v34 += 16;
        }

        while (v34 != &v25[v32 & 0xFFFFFFF0]);
      }

      if (v34 != v33)
      {
        v53 = this + v32;
        v54 = this + v32 - v34 + 5;
        if (v54 < 4 || (v34 < &v31->u64[1] + 2 * v53 + -2 * v34 + 2 ? (v55 = v31 >= v53 + 5) : (v55 = 1), !v55))
        {
          v57 = v34;
          v58 = v31;
          goto LABEL_75;
        }

        if (v54 >= 0x20)
        {
          v56 = v54 & 0xFFFFFFFFFFFFFFE0;
          v122 = v31 + 2;
          v123 = (v34 + 16);
          v124 = v54 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v126 = v122[-2];
            v125 = v122[-1];
            v128 = *v122;
            v127 = v122[1];
            v122 += 4;
            v123[-1] = vuzp1q_s8(v126, v125);
            *v123 = vuzp1q_s8(v128, v127);
            v123 += 2;
            v124 -= 32;
          }

          while (v124);
          if (v54 == v56)
          {
            goto LABEL_108;
          }

          if ((v54 & 0x1C) == 0)
          {
            v58 = (v31 + 2 * v56);
            v57 = (v34 + v56);
            do
            {
LABEL_75:
              v59 = v58->i8[0];
              v58 = (v58 + 2);
              *v57++ = v59;
            }

            while (v57 != v33);
            goto LABEL_108;
          }
        }

        else
        {
          v56 = 0;
        }

        v57 = (v34 + (v54 & 0xFFFFFFFFFFFFFFFCLL));
        v58 = (v31 + 2 * (v54 & 0xFFFFFFFFFFFFFFFCLL));
        v129 = (v31 + 2 * v56);
        v130 = (v34 + v56);
        v131 = v56 - (v54 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v132 = *v129++;
          *v130++ = vuzp1_s8(v132, v132).u32[0];
          v131 += 4;
        }

        while (v131);
        if (v54 != (v54 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_75;
        }
      }
    }

LABEL_108:
    v85 = *(v8 + 1);
    v86 = v24 - v85;
    if (v24 < v85)
    {
      goto LABEL_176;
    }

    v87 = &v25[v85];
    v87[4] = 102;
    *v87 = 1818322984;
    v27 = v86 - 5;
    if (v86 < 5)
    {
      goto LABEL_176;
    }

    v28 = v87 + 5;
    v88 = *(v8 + 1);
    v89 = *(v8 + 1);
    if ((*(v8 + 16) & 4) != 0)
    {
      if (v89)
      {
        if (v89 == 1)
        {
          *v28 = v88->i8[0];
        }

        else
        {
          this = memcpy(v87 + 5, v88, v89);
        }
      }
    }

    else
    {
      v90 = &v28[v89];
      if (v89 < 0x10)
      {
        v91 = (v87 + 5);
      }

      else
      {
        v91 = (v87 + 5);
        do
        {
          v92 = vld2q_s8(v88->i8);
          v88 += 2;
          *v91 = v92;
          v91 += 16;
        }

        while (v91 != &v28[v89 & 0xFFFFFFF0]);
      }

      if (v91 != v90)
      {
        v93 = this + v85 + v89;
        v94 = v93 - v91 + 10;
        if (v94 < 4 || ((v95 = this + v89 + v85 + 10, v91 < v88[1].u64 + 2 * v93 + -2 * v91 + 4) ? (v96 = v88 >= v95) : (v96 = 1), !v96))
        {
          v98 = v91;
          v99 = v88;
          goto LABEL_129;
        }

        if (v94 >= 0x20)
        {
          v97 = v94 & 0xFFFFFFFFFFFFFFE0;
          v133 = v88 + 2;
          v134 = (v91 + 16);
          v135 = v94 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v137 = v133[-2];
            v136 = v133[-1];
            v139 = *v133;
            v138 = v133[1];
            v133 += 4;
            v134[-1] = vuzp1q_s8(v137, v136);
            *v134 = vuzp1q_s8(v139, v138);
            v134 += 2;
            v135 -= 32;
          }

          while (v135);
          if (v94 == v97)
          {
            goto LABEL_132;
          }

          if ((v94 & 0x1C) == 0)
          {
            v99 = (v88 + 2 * v97);
            v98 = (v91 + v97);
            do
            {
LABEL_129:
              v100 = v99->i8[0];
              v99 = (v99 + 2);
              *v98++ = v100;
            }

            while (v98 != v90);
            goto LABEL_132;
          }
        }

        else
        {
          v97 = 0;
        }

        v98 = (v91 + (v94 & 0xFFFFFFFFFFFFFFFCLL));
        v99 = (v88 + 2 * (v94 & 0xFFFFFFFFFFFFFFFCLL));
        v140 = (v88 + 2 * v97);
        v141 = (v91 + v97);
        v142 = v97 - (v94 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v143 = *v140++;
          *v141++ = vuzp1_s8(v143, v143).u32[0];
          v142 += 4;
        }

        while (v142);
        if (v94 != (v94 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_129;
        }
      }
    }

LABEL_132:
    v26 = *(v8 + 1);
    if (v27 < v26)
    {
      goto LABEL_176;
    }

    goto LABEL_133;
  }

  *(this + 9) = 102;
  *v25 = 1818322984;
  if (v24 < 5)
  {
    goto LABEL_176;
  }

  v26 = 0;
  v27 = v23 - 10;
  v28 = (this + 10);
LABEL_133:
  if (v27 == v26)
  {
    goto LABEL_176;
  }

  v28[v26] = 40;
LABEL_135:
  (*(*v3 + 216))(v3, v4);
  this = WTF::StringBuilder::append();
  if ((v12 & 1) == 0 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v8, v101);
  }

  return this;
}