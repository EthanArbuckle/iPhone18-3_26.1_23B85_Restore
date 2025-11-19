uint64_t Shape::Booleen(void **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = 5;
  if (!a3)
  {
    return result;
  }

  v6 = a2;
  if (!a2)
  {
    return result;
  }

  v7 = a3;
  if (a2 == a3)
  {
    return result;
  }

  Shape::Reset(this, 0);
  if (*(v6 + 16) < 2 || *(v6 + 32) < 2 || *(v7 + 16) < 2 || *(v7 + 32) < 2)
  {
    return 0;
  }

  if (*(v6 + 48) != 1 || *(v7 + 48) != 1)
  {
    return 5;
  }

  Shape::ResetSweep(v6);
  Shape::ResetSweep(v7);
  if (!Shape::GetFlag(this, 64))
  {
    SweepTree::CreateList((this + 21), *(v7 + 32) + *(v6 + 32));
    SweepEvent::CreateQueue((this + 24), *(v7 + 32) + *(v6 + 32));
    Shape::SetFlag(this, 64, 1);
  }

  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);
  Shape::MakeSweepSrcData(this, 1);
  Shape::MakeSweepDestData(this, 1);
  v8 = (*(v6 + 53) & 2) != 0 && (*(v7 + 53) & 2) != 0;
  Shape::MakeBackData(this, v8);
  v9 = *(v6 + 16);
  if (v9 >= 1)
  {
    v10 = (*(v6 + 88) + 40);
    v11 = (*(v6 + 24) + 4);
    do
    {
      *(v10 - 4) = 0xFFFFFFFF00000000;
      *(v10 - 6) = NAN;
      v12 = ldexpf(*(v11 - 1), 5);
      *(v10 - 1) = ldexpf(roundf(v12), -5);
      v13 = *v11;
      v11 += 7;
      v14 = ldexpf(v13, 5);
      *v10 = ldexpf(roundf(v14), -5);
      v10 += 12;
      --v9;
    }

    while (v9);
  }

  v15 = *(v7 + 16);
  if (v15 >= 1)
  {
    v16 = (*(v7 + 88) + 40);
    v17 = (*(v7 + 24) + 4);
    do
    {
      *(v16 - 4) = 0xFFFFFFFF00000000;
      *(v16 - 6) = NAN;
      v18 = ldexpf(*(v17 - 1), 5);
      *(v16 - 1) = ldexpf(roundf(v18), -5);
      v19 = *v17;
      v17 += 7;
      v20 = ldexpf(v19, 5);
      *v16 = ldexpf(roundf(v20), -5);
      v16 += 12;
      --v15;
    }

    while (v15);
  }

  v21 = *(v6 + 32);
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = *(v6 + 88);
    v24 = *(v6 + 64);
    v25 = 56 * v21;
    v26 = *(v6 + 56) + 32;
    v27 = (*(v6 + 40) + 12);
    do
    {
      v28 = vsub_f32(*(v23 + 48 * *v27 + 36), *(v23 + 48 * *(v27 - 1) + 36));
      *(v26 - 28) = v28;
      v29 = (COERCE_FLOAT(vmul_f32(v28, v28).i32[1]) + (v28.f32[0] * v28.f32[0]));
      v30 = sqrt(v29);
      *(v26 - 16) = v29;
      *(v26 - 8) = v30;
      *v26 = 1.0 / v29;
      *(v26 + 8) = 1.0 / v30;
      v31 = vmulq_n_f64(vcvtq_f64_f32(v28), 1.0 / v30);
      v32 = *&v31.i64[1];
      v33 = vextq_s8(v31, v31, 8uLL);
      *(v26 + 16) = v33;
      if (v32 < 0.0)
      {
        *(v26 + 16) = vnegq_f64(v33);
      }

      v34 = v24 + v22;
      *v34 = 0;
      v27 += 8;
      *(v34 + 16) = -1;
      *(v34 + 8) = -1;
      *(v34 + 24) = -1;
      *(v34 + 32) = 0;
      *(v34 + 40) = -1;
      v22 += 56;
      v26 += 64;
      *(v34 + 48) = -1;
    }

    while (v25 != v22);
  }

  v35 = *(v7 + 32);
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = *(v7 + 88);
    v38 = *(v7 + 64);
    v39 = 56 * v35;
    v40 = *(v7 + 56) + 32;
    v41 = (*(v7 + 40) + 12);
    do
    {
      v42 = vsub_f32(*(v37 + 48 * *v41 + 36), *(v37 + 48 * *(v41 - 1) + 36));
      *(v40 - 28) = v42;
      v43 = (COERCE_FLOAT(vmul_f32(v42, v42).i32[1]) + (v42.f32[0] * v42.f32[0]));
      v44 = sqrt(v43);
      *(v40 - 16) = v43;
      *(v40 - 8) = v44;
      *v40 = 1.0 / v43;
      *(v40 + 8) = 1.0 / v44;
      v45 = vmulq_n_f64(vcvtq_f64_f32(v42), 1.0 / v44);
      v46 = *&v45.i64[1];
      v47 = vextq_s8(v45, v45, 8uLL);
      *(v40 + 16) = v47;
      if (v46 < 0.0)
      {
        *(v40 + 16) = vnegq_f64(v47);
      }

      v48 = v38 + v36;
      *v48 = 0;
      v41 += 8;
      *(v48 + 16) = -1;
      *(v48 + 8) = -1;
      *(v48 + 24) = -1;
      *(v48 + 32) = 0;
      *(v48 + 40) = -1;
      v36 += 56;
      v40 += 64;
      *(v48 + 48) = -1;
    }

    while (v39 != v36);
  }

  Shape::SortPointsRounded(v6);
  Shape::SortPointsRounded(v7);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  this[17] = 0;
  v276 = this + 17;
  this[18] = 0;
  v52 = *(*(v6 + 88) + 40);
  if (v52 >= *(*(v7 + 88) + 40))
  {
    v52 = *(*(v7 + 88) + 40);
  }

  v53 = v52 + -1.0;
  v292[0] = -1;
  this[19] = 0;
  v291 = 0;
  v284 = this;
  v285 = (this + 19);
  this[20] = 0;
  v274 = v6;
  v275 = v7;
  while (v50 < *(v6 + 16) || v49 < *(v7 + 16) || v285[10] >= 1)
  {
    v290 = 0.0;
    v289 = 0.0;
    v287 = 0;
    v288 = 0;
    v286 = 0;
    v54 = SweepEvent::PeekInQueue(&v287, &v286, &v290, &v289, &v288 + 1, &v288, (v285 + 10));
    v55 = *(v6 + 16);
    if (!v54)
    {
      if (v50 < v55 && (v49 >= *(v7 + 16) || (v63 = *(v6 + 88) + 48 * v50, v64 = *(v63 + 40), v65 = *(v7 + 88) + 48 * v49, v66 = *(v65 + 40), v64 < v66) || v64 == v66 && *(v63 + 36) < *(v65 + 36)))
      {
        v67 = v50;
        v68 = v6;
        v282 = (v50 + 1);
        v283 = v49;
      }

      else
      {
        v67 = v49;
        v68 = v7;
        v282 = v50;
        v283 = (v49 + 1);
      }

      v57 = v67;
      v69 = *(v68 + 88) + 48 * v67;
      v290 = *(v69 + 36);
      v289 = *(v69 + 40);
      goto LABEL_57;
    }

    v282 = v50;
    v283 = v49;
    if (v50 >= v55)
    {
      v72 = *(v7 + 88);
      v73 = v72 + 48 * v49;
      if (*(v73 + 8) > 0 || (v74 = *(v73 + 40), v74 > v289))
      {
LABEL_78:
        SweepEvent::ExtractFromQueue(&v287, &v286, &v290, &v289, &v288 + 1, &v288, (v285 + 10));
        v68 = 0;
        v71 = 1;
        v67 = -1;
        goto LABEL_79;
      }

      v57 = v49;
      if (v74 == v289)
      {
        v221 = *(v73 + 36);
        if (v221 > v290)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v221 = *(v72 + 48 * v49 + 36);
      }

      v67 = v49;
      v290 = v221;
      v289 = *(v72 + 48 * v49 + 40);
      v68 = v7;
      v222 = (v49 + 1);
      goto LABEL_217;
    }

    v56 = *(v6 + 88);
    v57 = v50;
    v58 = v56 + 48 * v50;
    if (v49 >= *(v7 + 16))
    {
      if (*(v58 + 8) > 0)
      {
        goto LABEL_78;
      }

      v59 = *(v58 + 40);
    }

    else
    {
      v59 = *(v58 + 40);
      v60 = *(v7 + 88);
      v61 = v60 + 48 * v49;
      v62 = *(v61 + 40);
      if (v59 >= v62 && (v59 != v62 || *(v58 + 36) >= *(v61 + 36)))
      {
        if (*(v61 + 8) > 0 || v62 > v289)
        {
          goto LABEL_78;
        }

        v57 = v49;
        if (v62 == v289)
        {
          v224 = *(v61 + 36);
          if (v224 > v290)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v224 = *(v60 + 48 * v49 + 36);
        }

        v67 = v49;
        v222 = (v49 + 1);
        v290 = v224;
        v289 = *(v60 + 48 * v49 + 40);
        v68 = v7;
LABEL_217:
        v283 = v222;
        goto LABEL_57;
      }

      if (*(v58 + 8) > 0)
      {
        goto LABEL_78;
      }
    }

    if (v59 > v289)
    {
      goto LABEL_78;
    }

    if (v59 == v289)
    {
      v223 = *(v58 + 36);
      if (v223 > v290)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v223 = *(v56 + 48 * v50 + 36);
    }

    v67 = v50;
    v290 = v223;
    v289 = *(v56 + 48 * v50 + 40);
    v68 = v6;
    v282 = (v50 + 1);
LABEL_57:
    v70 = *(v68 + 24) + 28 * v57;
    if (!*(v70 + 8) && !*(v70 + 12))
    {
      goto LABEL_215;
    }

    v71 = 0;
LABEL_79:
    v75 = ldexpf(v290, 5);
    v76 = ldexpf(roundf(v75), -5);
    v77 = ldexpf(v289, 5);
    v78 = ldexpf(roundf(v77), -5);
    v79 = Shape::AddPoint(this, v76, v78);
    v80 = v79;
    v81 = this[11] + 48 * v79;
    *(v81 + 36) = v76;
    *(v81 + 40) = v78;
    if (v78 <= v53)
    {
      v104 = v79;
      if (v71)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v82 = Shape::AssemblePoints(this, v51, v79);
      v84 = v82;
      if (v51 < v82)
      {
        v85 = (this[11] + 48 * v51 + 32);
        v86 = v82 - v51;
        v87 = v51;
        do
        {
          v88 = *(v85 - 1);
          if (v88)
          {
            v89 = *(v88 + 64) + 56 * *v85;
            *(v85 - 4) = *(v89 + 8);
            *(v89 + 8) = v87;
          }

          ++v87;
          v85 += 12;
          --v86;
        }

        while (v86);
      }

      v90 = v291;
      if (v291)
      {
        v91 = this[11];
        v92 = v292;
        do
        {
          v93 = *(v90 + 8) + 56 * *v92;
          v94 = v91[12 * *(v93 + 28) + 1];
          *(v93 + 24) = v91[12 * *(v93 + 24) + 1];
          *(v93 + 28) = v94;
          v92 = (v93 + 40);
          v90 = *(v93 + 32);
        }

        while (v90);
      }

      v95 = *v276;
      if (v95 >= 1)
      {
        v96 = this[11];
        v97 = (this[18] + 8);
        while (1)
        {
          v98 = *(v97 - 2);
          v99 = v96[12 * *(v97 - 1) + 1];
          *(v97 - 1) = v99;
          if (v98 == 1)
          {
            break;
          }

          if (!v98)
          {
            v100 = v97[2];
            v101 = *(*v97 + 40) + 32 * v100;
            v102 = *(*v97 + 64);
            if (*(v101 + 8) >= *(v101 + 12))
            {
              goto LABEL_95;
            }

LABEL_93:
            *(v102 + 56 * v100 + 12) = v99;
          }

LABEL_96:
          v97 += 18;
          if (!--v95)
          {
            goto LABEL_97;
          }
        }

        v100 = v97[2];
        v103 = *(*v97 + 40) + 32 * v100;
        v102 = *(*v97 + 64);
        if (*(v103 + 8) <= *(v103 + 12))
        {
LABEL_95:
          *(v102 + 56 * v100 + 16) = v99;
          goto LABEL_96;
        }

        goto LABEL_93;
      }

LABEL_97:
      Shape::CheckAdjacencies(this, v82, v51, v83);
      Shape::CheckEdges(this, v84, v51, v6, v7, a4);
      v104 = v84;
      if (v84 < v80)
      {
        v105 = this[3];
        v106 = &v105[28 * v80];
        v107 = &v105[28 * v84];
        v108 = *v106;
        *(v107 + 12) = *(v106 + 12);
        *v107 = v108;
        v109 = this[11];
        v110 = &v109[48 * v80];
        v111 = &v109[48 * v84];
        v112 = *v110;
        v113 = *(v110 + 2);
        *(v111 + 1) = *(v110 + 1);
        *(v111 + 2) = v113;
        *v111 = v112;
      }

      *(this + 4) = v84 + 1;
      *(this + 34) = 0;
      v292[0] = -1;
      v291 = 0;
      v51 = v84;
      v53 = v78;
      if (v71)
      {
LABEL_135:
        v131 = v104;
        SweepTree::RemoveEvent(v287, v285 + 10, 1);
        SweepTree::RemoveEvent(v286, v285 + 10, 0);
        Shape::AddChgt(this, v131, v51, &v291, v292, 2, *(v287 + 8), *(v287 + 18), *(v286 + 8), *(v286 + 18));
        SweepTree::SwapWithRight(v287);
        Shape::TesteIntersection(this, v287, 1, 1, v132, v133, v134, v135, v136);
        Shape::TesteIntersection(this, v286, 0, 1, v137, v138, v139, v140, v141);
        goto LABEL_215;
      }
    }

    v114 = *(*(v68 + 24) + 28 * v67 + 16);
    if ((v114 & 0x80000000) != 0)
    {
      goto LABEL_215;
    }

    v115 = 0;
    v116 = 0;
    v117 = -1;
    v118 = -1;
    v119 = *(*(v68 + 24) + 28 * v67 + 16);
    do
    {
      if (v119 >= *(v68 + 32))
      {
        break;
      }

      v120 = *(v68 + 40) + 32 * v119;
      v121 = *(v120 + 8);
      v122 = *(v120 + 12);
      if ((v121 >= v122 || v67 != v122) && (v67 != v121 || v121 <= v122))
      {
        goto LABEL_121;
      }

      ++v116;
      v118 = v119;
      v125 = v67 == v121;
      v126 = v121 > v122;
      if (v121 >= v122)
      {
        v125 = 0;
      }

      if (v67 != v122)
      {
        v126 = 0;
      }

      v127 = v126 || v125;
      if (v127)
      {
        v117 = v119;
      }

      v115 += v127;
      v128 = v67 == v121 || v67 == v122;
LABEL_121:
      if (!v128)
      {
        break;
      }

      v129 = v67 == v121 ? 16 : 24;
      v119 = *(v120 + v129);
    }

    while ((v119 & 0x80000000) == 0);
    v281 = v51;
    v280 = v104;
    if (v115 <= 0)
    {
      if (v116 > 0)
      {
        v130 = -1;
        goto LABEL_139;
      }

      if ((v117 & 0x80000000) == 0)
      {
LABEL_180:
        v178 = v104;
        v179 = SweepTree::AddInList(v68, v117, 1, v104, v285 + 4);
        *(*(v68 + 64) + 56 * v117) = v179;
        SweepTree::Insert(v179, (v285 + 4), v285 + 10, v284, v178, 1, 1);
        v278 = v179;
        v185 = *v179;
        if (*v179)
        {
          v186 = *(v284 + 11) + 48 * v178;
          *(v186 + 24) = *(v185 + 64);
          *(v186 + 32) = *(v185 + 72);
        }

        else
        {
          *(*(v284 + 11) + 48 * v178 + 32) = -1;
        }

        v51 = v281;
        Shape::TesteIntersection(v284, v179, 0, 1, v180, v181, v182, v183, v184);
        Shape::TesteIntersection(v284, v179, 1, 1, v187, v188, v189, v190, v191);
        *(*(v68 + 64) + 56 * v117 + 44) = v178;
        Shape::AddChgt(v284, v178, v281, &v291, v292, 0, *(v179 + 64), *(v179 + 72), 0, -1);
        v166 = 0;
        goto LABEL_185;
      }

LABEL_182:
      v278 = 0;
      v166 = 1;
      v51 = v281;
      goto LABEL_185;
    }

    if ((v118 & 0x80000000) == 0)
    {
      if (*(*(v68 + 64) + 56 * v118))
      {
        v130 = v118;
      }

      else
      {
        v130 = -1;
      }

      if (v116 <= 0)
      {
        goto LABEL_176;
      }

LABEL_139:
      while (2)
      {
        if (v114 >= *(v68 + 32))
        {
          goto LABEL_176;
        }

        v142 = v114;
        v143 = *(v68 + 40) + 32 * v114;
        v144 = *(v143 + 8);
        v145 = *(v143 + 12);
        if (v144 < v145 && v67 == v145)
        {
          if (v114 != v130)
          {
LABEL_154:
            v149 = *(*(v68 + 64) + 56 * v114);
            if (v149)
            {
              Shape::AddChgt(v284, v104, v281, &v291, v292, 1, v149[8], *(v149 + 18), 0, -1);
              *(*(v68 + 64) + 56 * v142) = 0;
              v150 = *v149;
              if (*v149)
              {
                v151 = *(v150 + 72);
                v152 = *(v150 + 64);
              }

              else
              {
                v152 = 0;
                v151 = -1;
              }

              v153 = v149[1];
              if (v153)
              {
                v277 = *(v153 + 72);
                v154 = *(v153 + 64);
              }

              else
              {
                v154 = 0;
                v277 = -1;
              }

              SweepTree::Remove(v149, (v285 + 4), v285 + 10, 1);
              v104 = v280;
              if (v152)
              {
                if (v154)
                {
                  if (v152 != v68 || (v160 = *(v152 + 40) + 32 * v151, *(v160 + 12) != v67) && *(v160 + 8) != v67)
                  {
                    if (v154 != v68 || (v161 = *(v154 + 40) + 32 * v277, *(v161 + 12) != v67) && *(v161 + 8) != v67)
                    {
                      Shape::TesteIntersection(v284, *(*(v152 + 64) + 56 * v151), 0, 1, v155, v156, v157, v158, v159);
                      v104 = v280;
                    }
                  }
                }
              }
            }
          }
        }

        else if (v67 == v144 && v144 > v145 && v114 != v130)
        {
          goto LABEL_154;
        }

        v162 = *(v68 + 40) + 32 * v142;
        if (*(v162 + 8) == v67)
        {
          v163 = 16;
        }

        else
        {
          if (*(v162 + 12) != v67)
          {
            goto LABEL_176;
          }

          v163 = 24;
        }

        v114 = *(v162 + v163);
        if ((v114 & 0x80000000) != 0)
        {
          goto LABEL_176;
        }

        continue;
      }
    }

    v130 = -1;
    if (v116 >= 1)
    {
      goto LABEL_139;
    }

LABEL_176:
    if ((v117 & 0x80000000) != 0)
    {
      goto LABEL_182;
    }

    if ((v130 & 0x80000000) != 0)
    {
      goto LABEL_180;
    }

    v164 = 56 * v130;
    v165 = *(*(v68 + 64) + v164);
    v166 = 1;
    v167 = v104;
    Shape::AddChgt(v284, v104, v281, &v291, v292, 1, *(v165 + 64), *(v165 + 72), 0, -1);
    *(*(v68 + 64) + v164) = 0;
    SweepTree::RemoveEvents(v165, v285 + 10);
    SweepTree::ConvertTo(v165, v68, v117, 1, v167);
    *(*(v68 + 64) + 56 * v117) = v165;
    Shape::TesteIntersection(v284, v165, 0, 1, v168, v169, v170, v171, v172);
    Shape::TesteIntersection(v284, v165, 1, 1, v173, v174, v175, v176, v177);
    *(*(v68 + 64) + 56 * v117 + 44) = v167;
    v278 = v165;
    v51 = v281;
    Shape::AddChgt(v284, v167, v281, &v291, v292, 0, *(v165 + 64), *(v165 + 72), 0, -1);
LABEL_185:
    if (v115 >= 2)
    {
      v192 = *(*(v68 + 24) + 28 * v67 + 16);
      if ((v192 & 0x80000000) == 0)
      {
        v193 = v280;
        do
        {
          if (v192 >= *(v68 + 32))
          {
            break;
          }

          v194 = *(v68 + 40);
          v195 = v192;
          v196 = v194 + 32 * v192;
          v197 = *(v196 + 8);
          v198 = *(v196 + 12);
          if (v197 > v198 && v67 == v198)
          {
            if (v192 != v117)
            {
              goto LABEL_203;
            }
          }

          else if (v67 == v197 && v197 < v198 && v192 != v117)
          {
LABEL_203:
            v202 = SweepTree::AddInList(v68, v192, 1, v193, v285 + 4);
            *(*(v68 + 64) + 56 * v195) = v202;
            SweepTree::InsertAt(v202, (v285 + 4), v285 + 10, v284, v278, v67, 1, 1);
            if (v166)
            {
              v208 = *v202;
              v209 = *(v284 + 11);
              if (*v202)
              {
                v210 = v280;
                *(v209 + 48 * v280 + 24) = *(v208 + 64);
                v211 = *(v208 + 72);
              }

              else
              {
                v211 = -1;
                v210 = v280;
              }

              *(v209 + 48 * v210 + 32) = v211;
            }

            Shape::TesteIntersection(v284, v202, 0, 1, v203, v204, v205, v206, v207);
            Shape::TesteIntersection(v284, v202, 1, 1, v212, v213, v214, v215, v216);
            *(*(v68 + 64) + 56 * v195 + 44) = v280;
            v217 = *(v202 + 64);
            v218 = *(v202 + 72);
            v51 = v281;
            Shape::AddChgt(v284, v280, v281, &v291, v292, 0, v217, v218, 0, -1);
            v193 = v280;
            v166 = 0;
            v194 = *(v68 + 40);
            v197 = *(v194 + 32 * v195 + 8);
          }

          v219 = v194 + 32 * v195;
          if (v197 == v67)
          {
            v220 = 16;
          }

          else
          {
            if (*(v219 + 12) != v67)
            {
              break;
            }

            v220 = 24;
          }

          v192 = *(v219 + v220);
        }

        while ((v192 & 0x80000000) == 0);
      }
    }

    this = v284;
    v6 = v274;
    v7 = v275;
LABEL_215:
    v50 = v282;
    v49 = v283;
  }

  v225 = Shape::AssemblePoints(this, v51, *(this + 4));
  v227 = v225;
  if (v51 < v225)
  {
    v228 = (this[11] + 48 * v51 + 32);
    v229 = v225 - v51;
    v230 = v51;
    do
    {
      v231 = *(v228 - 1);
      if (v231)
      {
        v232 = *(v231 + 64) + 56 * *v228;
        *(v228 - 4) = *(v232 + 8);
        *(v232 + 8) = v230;
      }

      ++v230;
      v228 += 12;
      --v229;
    }

    while (v229);
  }

  v233 = v291;
  if (v291)
  {
    v234 = this[11];
    v235 = v292;
    do
    {
      v236 = *(v233 + 8) + 56 * *v235;
      v237 = v234[12 * *(v236 + 28) + 1];
      *(v236 + 24) = v234[12 * *(v236 + 24) + 1];
      *(v236 + 28) = v237;
      v235 = (v236 + 40);
      v233 = *(v236 + 32);
    }

    while (v233);
  }

  v238 = *v276;
  if (v238 >= 1)
  {
    v239 = this[11];
    v240 = (this[18] + 8);
    while (1)
    {
      v241 = *(v240 - 2);
      v242 = v239[12 * *(v240 - 1) + 1];
      *(v240 - 1) = v242;
      if (v241 == 1)
      {
        break;
      }

      if (!v241)
      {
        v243 = v240[2];
        v244 = *(*v240 + 40) + 32 * v243;
        v245 = *(*v240 + 64);
        if (*(v244 + 8) >= *(v244 + 12))
        {
          goto LABEL_235;
        }

LABEL_233:
        *(v245 + 56 * v243 + 12) = v242;
      }

LABEL_236:
      v240 += 18;
      if (!--v238)
      {
        goto LABEL_237;
      }
    }

    v243 = v240[2];
    v246 = *(*v240 + 40) + 32 * v243;
    v245 = *(*v240 + 64);
    if (*(v246 + 8) <= *(v246 + 12))
    {
LABEL_235:
      *(v245 + 56 * v243 + 16) = v242;
      goto LABEL_236;
    }

    goto LABEL_233;
  }

LABEL_237:
  Shape::CheckAdjacencies(this, v225, v51, v226);
  Shape::CheckEdges(this, v227, v51, v6, v7, a4);
  *(this + 4) = v227;
  v247 = this[18];
  if (v247)
  {
    free(v247);
  }

  *v276 = 0;
  v276[1] = 0;
  v248 = this[20];
  if (v248)
  {
    free(v248);
  }

  *v285 = 0;
  *(v285 + 1) = 0;
  Shape::AssembleAretes(this);
  v249 = *(this + 4);
  if (v249 >= 1)
  {
    v250 = this[3] + 12;
    do
    {
      v250[3] = *v250 + *(v250 - 1);
      v250 += 7;
      --v249;
    }

    while (v249);
  }

  Shape::SetFlag(this, 2, 1);
  Shape::GetWindings(this, v251, v252, v253, 0);
  if (a4 == 3)
  {
    if (*(this + 8) >= 1)
    {
      v254 = 0;
      while (1)
      {
        v255 = this[9] + 32 * v254;
        v258 = *(v255 + 20);
        v257 = (v255 + 20);
        v256 = v258;
        v259 = *(v257 - 1) & 1;
        *(v257 - 1) = v259;
        if (v258 < 0)
        {
          *v257 = -v256;
          v256 = 1;
        }

        if (v259)
        {
          v260 = this[7];
          if (v256)
          {
            goto LABEL_255;
          }

          v260[16 * v254] = 1;
        }

        else
        {
          if (!v256)
          {
            v260 = this[7];
LABEL_255:
            v260[16 * v254] = 0;
            Shape::SubEdge(this, v254--);
            goto LABEL_256;
          }

          Shape::Inverse(this, v254);
          *(this[7] + 16 * v254) = 1;
        }

LABEL_256:
        if (++v254 >= *(this + 8))
        {
          goto LABEL_295;
        }
      }
    }

    goto LABEL_295;
  }

  if ((a4 & 0xFFFFFFFD) == 0)
  {
    if (*(this + 8) < 1)
    {
      goto LABEL_295;
    }

    v266 = 0;
    while (1)
    {
      v267 = this[9] + 32 * v266;
      v268 = *(v267 + 20);
      if (*(v267 + 16) < 1)
      {
        if (v268 <= 0)
        {
          v269 = this[7];
LABEL_281:
          v269[16 * v266] = 0;
          Shape::SubEdge(this, v266--);
          goto LABEL_282;
        }

        Shape::Inverse(this, v266);
        v269 = this[7];
      }

      else
      {
        v269 = this[7];
        if (v268 > 0)
        {
          goto LABEL_281;
        }
      }

      v269[16 * v266] = 1;
LABEL_282:
      if (++v266 >= *(this + 8))
      {
        goto LABEL_295;
      }
    }
  }

  v261 = *(this + 8);
  if (a4 != 1)
  {
    if (v261 < 1)
    {
      goto LABEL_295;
    }

    v270 = 0;
    while (1)
    {
      v271 = this[9] + 32 * v270;
      v272 = *(v271 + 20);
      if (*(v271 + 16) < 1)
      {
        if (v272 <= 0)
        {
          v273 = this[7];
LABEL_293:
          v273[16 * v270] = 0;
          Shape::SubEdge(this, v270--);
          goto LABEL_294;
        }

        Shape::Inverse(this, v270);
        v273 = this[7];
      }

      else
      {
        v273 = this[7];
        if (v272 > 0)
        {
          goto LABEL_293;
        }
      }

      v273[16 * v270] = 1;
LABEL_294:
      if (++v270 >= *(this + 8))
      {
        goto LABEL_295;
      }
    }
  }

  if (v261 >= 1)
  {
    for (i = 0; i < *(this + 8); ++i)
    {
      v263 = this[9] + 32 * i;
      v264 = *(v263 + 20);
      if (*(v263 + 16) < 2)
      {
        if (v264 <= 1)
        {
          v265 = this[7];
LABEL_269:
          v265[16 * i] = 0;
          Shape::SubEdge(this, i--);
          continue;
        }

        Shape::Inverse(this, i);
        v265 = this[7];
      }

      else
      {
        v265 = this[7];
        if (v264 > 1)
        {
          goto LABEL_269;
        }
      }

      v265[16 * i] = 1;
    }
  }

LABEL_295:
  if (Shape::GetFlag(this, 64))
  {
    SweepTree::DestroyList(v285 + 2);
    SweepEvent::DestroyQueue(v285 + 5);
    Shape::SetFlag(this, 64, 0);
  }

  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);
  Shape::MakeSweepSrcData(this, 0);
  Shape::MakeSweepDestData(this, 0);
  Shape::CleanupSweep(v6);
  Shape::CleanupSweep(v7);
  if (Shape::Eulerian(this, 1))
  {
    result = 0;
    *(this + 12) = 1;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 4) = 0;
    return 4;
  }

  return result;
}

uint64_t Shape::TesteIntersection(double a1, double a2, double a3, int32x4_t a4, int32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, float *a10, float *a11, float *a12, char a13)
{
  v13 = *(a7 + 64);
  v14 = *(a7 + 72);
  v15 = v13[5] + 32 * v14;
  v16 = *(v15 + 8);
  v17 = *(v15 + 12);
  v18 = *(a8 + 64);
  v19 = *(a8 + 72);
  v20 = v18[5] + 32 * v19;
  v21 = *(v20 + 8);
  v22 = *(v20 + 12);
  v23 = v13[7] + (v14 << 6);
  v24 = v18[7] + (v19 << 6);
  if (v16 >= v17)
  {
    v25 = v16;
  }

  else
  {
    v25 = v17;
  }

  if (v16 >= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = v16;
  }

  if (v21 >= v22)
  {
    v27 = v21;
  }

  else
  {
    v27 = v22;
  }

  if (v21 >= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v21;
  }

  v29 = v13[11];
  v30 = *(v29 + 48 * v26 + 36);
  v31 = *(v29 + 48 * v25 + 36);
  v32 = v18[11];
  v33 = *(v32 + 48 * v28 + 36);
  v34 = *(v32 + 48 * v27 + 36);
  if (v30 >= v31)
  {
    if (v33 >= v34)
    {
      if (v31 > v33 || v30 < v34)
      {
        return 0;
      }
    }

    else if (v30 < v33 || v31 > v34)
    {
      return 0;
    }
  }

  else if (v33 >= v34)
  {
    if (v30 > v33 || v31 < v34)
    {
      return 0;
    }
  }

  else if (v31 < v33 || v30 > v34)
  {
    return 0;
  }

  v39 = vcvtq_f64_f32(*(v23 + 4));
  v40 = vcvtq_f64_f32(*(v24 + 4));
  a4.i32[0] = v16;
  a5.i32[0] = v17;
  v41 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v42 = vnegq_f64(v39);
  v43 = vbslq_s8(v41, v39, v42);
  LODWORD(v39.f64[0]) = v21;
  v42.i32[0] = v22;
  v44 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v42, v39), 0), v40, vnegq_f64(v40));
  v45 = -*&v43.i64[1];
  if (-*&v43.i64[1] * *v44.i64 + *v43.i64 * *&v44.i64[1] <= 0.0)
  {
    return 0;
  }

  if (v13 == v18 && v26 == v28)
  {
    if (v25 != v27)
    {
      *a9 = v30;
      *a10 = *(v29 + 48 * v26 + 40);
      *a11 = -1.0;
      *a12 = -1.0;
      return 1;
    }

    return 0;
  }

  if (v25 == v27)
  {
    a13 = 1;
  }

  if (v13 == v18 && (a13 & 1) != 0)
  {
    return 0;
  }

  v48 = v29 + 48 * v16;
  v49 = v32 + 48 * v21;
  v50 = *(v48 + 36);
  v51 = *(v48 + 40);
  v52 = *(v49 + 36);
  v53 = *(v49 + 40);
  v54 = v29 + 48 * v17;
  v55 = *(v54 + 36);
  v56 = *v44.i64 * (v51 - v53) - *&v44.i64[1] * (v50 - v52);
  v57 = *v44.i64 * (*(v54 + 40) - v53) - *&v44.i64[1] * (v55 - v52);
  v58 = (v53 - v51);
  v59 = v32 + 48 * v22;
  v60 = *(v59 + 36);
  v61 = v45 * (v52 - v50) + *v43.i64 * v58;
  v62 = v45 * (v60 - v50) + *v43.i64 * (*(v59 + 40) - v51);
  if ((v56 < 0.0 || v57 < 0.0) && (v56 > 0.0 || v57 > 0.0))
  {
    if ((v61 < 0.0 || v62 < 0.0) && (v61 > 0.0 || v62 > 0.0))
    {
      if (*(v23 + 48) <= *(v24 + 48))
      {
        v70 = v56 - v57;
        v71 = (v56 * v55 - v57 * v50) / (v56 - v57);
        *a9 = v71;
        v69 = (v56 * *(v29 + 48 * v17 + 40) - v57 * *(v29 + 48 * v16 + 40)) / (v56 - v57);
        v67 = v61 - v62;
      }

      else
      {
        v67 = v61 - v62;
        v68 = (v61 * v60 - v62 * v52) / (v61 - v62);
        *a9 = v68;
        v69 = (v61 * *(v32 + 48 * v22 + 40) - v62 * *(v32 + 48 * v21 + 40)) / (v61 - v62);
        v70 = v56 - v57;
      }

      v72 = v69;
      *a10 = v72;
      v73 = v56 / v70;
      *a11 = v73;
      v63 = v61 / v67;
      goto LABEL_59;
    }

    if (v61 == 0.0)
    {
LABEL_66:
      if (v21 >= v22)
      {
        return 0;
      }

      goto LABEL_67;
    }

    if (v62 == 0.0)
    {
      if (v21 <= v22)
      {
        return 0;
      }

      goto LABEL_79;
    }

    if (v16 < v17 && v61 > 0.0 && v62 > 0.0)
    {
      if (v61 >= v62)
      {
        if (v22 < v21)
        {
          goto LABEL_79;
        }
      }

      else if (v21 < v22)
      {
LABEL_67:
        *a9 = v52;
        *a10 = *(v32 + 48 * v21 + 40);
        *a12 = 0.0;
LABEL_80:
        v66 = v56 / (v56 - v57);
        *a11 = v66;
        return 1;
      }
    }

    result = 0;
    if (v61 >= 0.0)
    {
      return result;
    }

    if (v62 >= 0.0 || v17 >= v16)
    {
      return result;
    }

    if (v61 > v62)
    {
      goto LABEL_66;
    }

    if (v22 >= v21)
    {
      return 0;
    }

LABEL_79:
    *a9 = v60;
    *a10 = *(v32 + 48 * v22 + 40);
    *a12 = 1.0;
    goto LABEL_80;
  }

  if (v56 == 0.0)
  {
    goto LABEL_53;
  }

  if (v57 == 0.0)
  {
    if (v16 <= v17)
    {
      return 0;
    }

    goto LABEL_57;
  }

  if (v56 > 0.0 && v57 > 0.0 && v22 < v21)
  {
    if (v56 >= v57)
    {
      if (v17 < v16)
      {
        goto LABEL_57;
      }
    }

    else if (v16 < v17)
    {
LABEL_54:
      *a9 = v50;
      *a10 = *(v29 + 48 * v16 + 40);
      *a11 = 0.0;
LABEL_58:
      v63 = v61 / (v61 - v62);
LABEL_59:
      v64 = v63;
      *a12 = v64;
      return 1;
    }
  }

  result = 0;
  if (v21 < v22 && v56 < 0.0 && v57 < 0.0)
  {
    if (v56 > v57)
    {
LABEL_53:
      if (v16 >= v17)
      {
        return 0;
      }

      goto LABEL_54;
    }

    if (v17 >= v16)
    {
      return 0;
    }

LABEL_57:
    *a9 = v55;
    *a10 = *(v29 + 48 * v17 + 40);
    *a11 = 1.0;
    goto LABEL_58;
  }

  return result;
}

uint64_t Shape::PushIncidence(Shape *this, Shape *a2, int a3, int a4, float a5)
{
  if (a5 < 0.0 || a5 > 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(this + 38);
  if (result >= *(this + 39))
  {
    v13 = (2 * result) | 1;
    *(this + 39) = v13;
    v12 = malloc_type_realloc(*(this + 20), 12 * v13, 0x10000403E1C8BA9uLL);
    *(this + 20) = v12;
    result = *(this + 38);
  }

  else
  {
    v12 = *(this + 20);
  }

  *(this + 38) = result + 1;
  v14 = *(a2 + 8) + 56 * a3;
  v15 = &v12[12 * result];
  *v15 = *(v14 + 8);
  *(v15 + 1) = a4;
  *(v15 + 2) = a5;
  *(v14 + 8) = result;
  return result;
}

uint64_t Shape::CreateIncidence(Shape *this, Shape *a2, int a3, int a4)
{
  v4 = *(a2 + 7) + (a3 << 6);
  v5 = (*(this + 3) + 28 * a4);
  v6 = *(a2 + 11) + 48 * *(*(a2 + 5) + 32 * a3 + 8);
  v7 = *(v4 + 32) * (*(v4 + 8) * (v5[1] - *(v6 + 40)) + (*v5 - *(v6 + 36)) * *(v4 + 4));
  return Shape::PushIncidence(this, a2, a3, a4, v7);
}

uint64_t Shape::Winding(Shape *this, int a2)
{
  v2 = *(*(this + 11) + 48 * a2 + 32);
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(this + 5) + 32 * v2;
  v4 = *(this + 9) + 32 * v2;
  if (*(v3 + 8) >= *(v3 + 12))
  {
    return *(v4 + 20);
  }

  else
  {
    return *(v4 + 16);
  }
}

uint64_t Shape::Winding(Shape *this, float a2, float a3)
{
  v3 = *(this + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(this + 11);
    v8 = (*(this + 5) + 12);
    for (i = (*(this + 7) + 8); ; i += 16)
    {
      v10 = v7 + 48 * *(v8 - 1);
      v11 = *(v10 + 36);
      v12 = *(v10 + 40);
      v13 = v7 + 48 * *v8;
      v15 = *(v13 + 36);
      v14 = *(v13 + 40);
      v16 = *(i - 2);
      if (v11 >= v15)
      {
        if (v11 < a2 || v15 > a2)
        {
          goto LABEL_39;
        }
      }

      else if (v11 > a2 || v15 < a2)
      {
        goto LABEL_39;
      }

      if (v11 == a2)
      {
        if (v12 < a3 && v15 != a2)
        {
          if (v15 >= a2)
          {
            v20 = *(i - 2);
          }

          else
          {
            v20 = 0;
          }

          if (v15 >= a2)
          {
            v16 = 0;
          }

          v6 -= v20;
          v5 += v16;
        }
      }

      else if (v15 == a2)
      {
        if (v14 < a3)
        {
          if (v11 >= a2)
          {
            v21 = *(i - 2);
          }

          else
          {
            v21 = 0;
          }

          v6 += v21;
          if (v11 >= a2)
          {
            v16 = 0;
          }

          v5 -= v16;
        }
      }

      else if (v12 >= v14)
      {
        if (v14 < a3)
        {
LABEL_38:
          v22 = *(i - 1) * (a3 - v12) - (a2 - v11) * *i;
          if (v22 != 0.0)
          {
            if (v22 >= 0.0)
            {
              if (v11 < a2)
              {
                v4 -= v16;
              }
            }

            else if (v11 > a2)
            {
              v4 += v16;
            }
          }
        }
      }

      else if (v12 < a3)
      {
        goto LABEL_38;
      }

LABEL_39:
      v8 += 8;
      if (!--v3)
      {
        return (v4 + (v5 + v6) / 2);
      }
    }
  }

  return 0;
}

unsigned int *Shape::AssemblePoints(unsigned int *this, Shape *a2)
{
  v2 = this[4];
  if (v2 >= 1)
  {
    v4 = this;
    this = Shape::AssemblePoints(this, 0, v2);
    v5 = *(a2 + 8);
    if (v5 >= 1)
    {
      v6 = *(v4 + 11);
      v7 = (*(a2 + 8) + 16);
      do
      {
        v8 = *(v6 + 48 * *v7 + 4);
        *(v7 - 1) = *(v6 + 48 * *(v7 - 1) + 4);
        *v7 = v8;
        v7 += 14;
        --v5;
      }

      while (v5);
    }

    v9 = v4[38];
    if (v9 >= 1)
    {
      v10 = *(v4 + 11);
      v11 = (*(v4 + 20) + 4);
      do
      {
        *v11 = *(v10 + 48 * *v11 + 4);
        v11 += 3;
        --v9;
      }

      while (v9);
    }

    v4[4] = this;
  }

  return this;
}

uint64_t Shape::TesteIntersection(Shape *this, Shape *a2, Shape *a3, int a4, int a5, float *a6, float *a7, float *a8, float *a9, BOOL a10)
{
  v10 = *(a2 + 5) + 32 * a4;
  v11 = *(v10 + 8);
  v12 = *(a3 + 5) + 32 * a5;
  v13 = *(v12 + 8);
  v14 = *(v12 + 12);
  if (v11 == v13 || v11 == v14)
  {
    return 0;
  }

  v16 = *(v10 + 12);
  if (v16 == v13 || v16 == v14)
  {
    return 0;
  }

  v18 = *(a2 + 11);
  v19 = *(v18 + 48 * v11 + 36);
  v20 = *(v18 + 48 * v16 + 36);
  v21 = *(a3 + 11);
  v22 = *(v21 + 48 * v13 + 36);
  v23 = *(v21 + 48 * v14 + 36);
  *v24.f32 = v19;
  *&v24.u32[2] = v22;
  *v25.f32 = v20;
  *&v25.u32[2] = v23;
  v26 = vcgtq_f32(v24, v25);
  v27 = vmovn_s32(v26);
  *v28.i8 = v23;
  v28.u64[1] = v20;
  *v29.i8 = v22;
  v29.u64[1] = v19;
  if (vmaxv_u16(vmovn_s32(vcgtq_f32(vbslq_s8(vmovl_s16(vext_s8(v27, v27, 4uLL)), v28, v29), vbslq_s8(v26, v24, v25)))))
  {
    return 0;
  }

  v30 = *(a2 + 7) + (a4 << 6);
  v31 = *(v30 + 4);
  v32 = *(v30 + 8);
  v33 = *(a3 + 7) + (a5 << 6);
  v34 = *(v33 + 8);
  v35 = *(v33 + 4);
  v36 = vsub_f32(v20, v22);
  v37 = v35 * (v19.f32[1] - v22.f32[1]) - v34 * vsub_f32(v19, v22).f32[0];
  v38 = v35 * v36.f32[1] - v34 * v36.f32[0];
  if (v37 >= 0.0 && v38 >= 0.0)
  {
    return 0;
  }

  if (v37 <= 0.0 && v38 <= 0.0)
  {
    return 0;
  }

  v39 = v31;
  v40 = v32;
  v41 = vsub_f32(v23, v19);
  v42 = v31 * (v22.f32[1] - v19.f32[1]) - v40 * vsub_f32(v22, v19).f32[0];
  v43 = v39 * v41.f32[1] - v40 * v41.f32[0];
  if (v42 >= 0.0 && v43 >= 0.0)
  {
    return 0;
  }

  if (v42 <= 0.0 && v43 <= 0.0)
  {
    return 0;
  }

  v45 = v42 - v43;
  v46 = v37 - v38;
  v47 = -(v42 - v43);
  if (v42 - v43 >= 0.0)
  {
    v47 = v42 - v43;
  }

  v48 = -v46;
  if (v46 >= 0.0)
  {
    v48 = v37 - v38;
  }

  if (v47 <= v48)
  {
    v51 = (v37 * v20.f32[0] - v38 * v19.f32[0]) / v46;
    *a6 = v51;
    v50 = (v37 * *(v18 + 48 * v16 + 40) - v38 * *(v18 + 48 * v11 + 40)) / v46;
  }

  else
  {
    v49 = (v42 * v23.f32[0] - v43 * v22.f32[0]) / v45;
    *a6 = v49;
    v50 = (v42 * *(v21 + 48 * v14 + 40) - v43 * *(v21 + 48 * v13 + 40)) / v45;
  }

  v52 = v50;
  *a7 = v52;
  v53 = v37 / v46;
  *a8 = v53;
  v54 = v42 / v45;
  *a9 = v54;
  return 1;
}

BOOL Shape::TesteAdjacency(Shape *this, Shape *a2, int a3, float a4, float a5, int a6, int a7)
{
  v7 = *(a2 + 8) + 56 * a3;
  if (*(v7 + 12) == a6)
  {
    return 0;
  }

  if (*(v7 + 16) == a6)
  {
    return 0;
  }

  v13 = *(a2 + 11) + 48 * *(*(a2 + 5) + 32 * a3 + 8);
  v14 = *(a2 + 7) + (a3 << 6);
  v15 = *(v14 + 4);
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = a4 - *(v13 + 36);
  v19 = a5 - *(v13 + 40);
  v20 = *(v14 + 32);
  v21 = (v15 * v19 - v18 * v16) * *(v14 + 40);
  if (fabsf(ldexpf(v21, 5)) >= 3.0)
  {
    return 0;
  }

  v22 = ldexpf(0.505, -5);
  v23 = v18 - v22;
  v24 = v19 - v22;
  v25 = v18 + v22;
  v26 = v19 + v22;
  v27 = -(v23 * v16);
  v28 = v27 + v15 * v24;
  v29 = -(v25 * v16);
  v30 = v29 + v15 * v26;
  if (v28 < 0.0 && v30 > 0.0 || v28 > 0.0 && v30 < 0.0 || (v31 = v29 + v15 * v24, v32 = v27 + v15 * v26, v31 < 0.0) && v32 > 0.0 || (result = 0, v31 > 0.0) && v32 < 0.0)
  {
    v34 = v19 * v16 + v18 * v15;
    result = v34 < v17 && v34 > 0.0;
    if (result && a7 != 0)
    {
      v36 = v20 * v34;
      Shape::PushIncidence(this, a2, a3, a6, v36);
      return 1;
    }
  }

  return result;
}

uint64_t Shape::Validate(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (v2 >= 1)
  {
    v3 = *(this + 24);
    v4 = (*(this + 88) + 36);
    do
    {
      v5 = *v3;
      v3 = (v3 + 28);
      *v4 = v5;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  v6 = *(this + 32);
  if (v6 >= 1)
  {
    v7 = *(this + 40);
    v8 = (*(this + 56) + 4);
    v9 = *(this + 32);
    do
    {
      v10 = *v7;
      v7 += 4;
      *v8 = v10;
      v8 += 8;
      --v9;
    }

    while (v9);
    v11 = 0;
    do
    {
      v12 = v11++;
      if (v11 < v6)
      {
        v13 = v11;
        do
        {
          v16 = 0;
          this = Shape::TesteIntersection(this, v1, v1, v12, v13, &v16 + 1, &v16, &v15, &v14, 0);
          if (this)
          {
            this = printf("%i %i  %f %f \n", v12, v13, *(&v16 + 1), *&v16);
            v6 = *(v1 + 8);
          }

          ++v13;
        }

        while (v13 < v6);
      }
    }

    while (v11 < v6);
  }

  return this;
}

void Shape::Avance(uint64_t a1, signed int a2, int a3, Shape *a4, int a5, uint64_t a6, Shape *a7, int a8)
{
  v15 = ldexpf(1.0, -5);
  v17 = a4 != a7 || (a8 & 0xFFFFFFFE) != 2;
  v18 = *(a4 + 8);
  v19 = a5;
  v20 = (v18 + 56 * a5);
  if (v20[12] < a3)
  {
    v21 = v15;
    v23 = v20[6];
    v22 = v20[7];
    v24 = v20[11];
    v25 = (v24 & 0x80000000) == 0 && (v15 + *(*(a1 + 24) + 28 * v24 + 4)) == *(*(a1 + 24) + 28 * a3 + 4);
    v26 = *(a4 + 7) + (a5 << 6);
    v27 = *(v26 + 8);
    v28 = v27 <= 0.0;
    if (v27 == 0.0)
    {
      if (*(v26 + 4) >= 0.0)
      {
        if (v23 <= v22)
        {
          do
          {
            Shape::DoEdgeTo(a1, a4, a5, v23++, v17, 1);
          }

          while (v22 + 1 != v23);
          goto LABEL_39;
        }
      }

      else if (v23 <= v22)
      {
        do
        {
          Shape::DoEdgeTo(a1, a4, a5, v23++, v17, 0);
        }

        while (v22 + 1 != v23);
LABEL_39:
        v24 = v22;
      }

LABEL_100:
      v18 = *(a4 + 8);
      v19 = a5;
      *(v18 + 56 * a5 + 44) = v24;
      goto LABEL_101;
    }

    v29 = *(v26 + 4);
    if (v28)
    {
      if (v29 >= 0.0)
      {
        if (v22 < v23)
        {
          goto LABEL_100;
        }

        v74 = a2;
        v62 = 0;
        v76 = v22 + 1;
        do
        {
          v63 = v24;
          v24 = v22 + v62;
          if (v62)
          {
            v64 = 0;
          }

          else
          {
            v64 = v25;
          }

          if (v64 && (v65 = *(a1 + 24), v66 = *(v65 + 28 * v63), *(v65 + 28 * v22) == (v66 - v21)))
          {
            v67 = v22 < *(a1 + 16) && v76 < a2;
            if (v67 && *(v65 + 28 * v76) == v66)
            {
              Shape::DoEdgeTo(a1, a4, a5, v76, v17, 0);
            }

            v68 = a1;
            v69 = a4;
            v70 = a5;
            v71 = v22;
          }

          else
          {
            v68 = a1;
            v69 = a4;
            v70 = a5;
            v71 = v22 + v62;
          }

          Shape::DoEdgeTo(v68, v69, v70, v71, v17, 0);
          --v62;
        }

        while (v22 + v62 + 1 > v23);
LABEL_98:
        v24 = v23;
        goto LABEL_99;
      }

      if (v23 > v22)
      {
        goto LABEL_100;
      }

      v74 = a2;
      v40 = 0;
      v72 = v23 - 1;
      v42 = v23 < 1 || v23 <= a3;
      v77 = v42;
      do
      {
        v43 = v24;
        v24 = v23 + v40;
        if (v40)
        {
          v44 = 0;
        }

        else
        {
          v44 = v25;
        }

        if (v44 && (v45 = *(a1 + 24), v46 = *(v45 + 28 * v43), *(v45 + 28 * v23) == (v21 + v46)))
        {
          if (!v77 && *(v45 + 28 * v72) == v46)
          {
            Shape::DoEdgeTo(a1, a4, a5, v72, v17, 0);
          }

          v47 = a1;
          v48 = a4;
          v49 = a5;
          v50 = v23;
        }

        else
        {
          v47 = a1;
          v48 = a4;
          v49 = a5;
          v50 = v23 + v40;
        }

        Shape::DoEdgeTo(v47, v48, v49, v50, v17, 0);
        ++v40;
      }

      while (v22 - v23 + 1 != v40);
    }

    else
    {
      if (v29 < 0.0)
      {
        if (v22 < v23)
        {
          goto LABEL_100;
        }

        v74 = a2;
        v30 = 0;
        v75 = v22 + 1;
        do
        {
          v31 = v24;
          v24 = v22 + v30;
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v25;
          }

          if (v32 && (v33 = *(a1 + 24), v34 = *(v33 + 28 * v31), *(v33 + 28 * v22) == (v34 - v21)))
          {
            v35 = v22 < *(a1 + 16) && v75 < a2;
            if (v35 && *(v33 + 28 * v75) == v34)
            {
              Shape::DoEdgeTo(a1, a4, a5, v75, v17, 1);
            }

            v36 = a1;
            v37 = a4;
            v38 = a5;
            v39 = v22;
          }

          else
          {
            v36 = a1;
            v37 = a4;
            v38 = a5;
            v39 = v22 + v30;
          }

          Shape::DoEdgeTo(v36, v37, v38, v39, v17, 1);
          --v30;
        }

        while (v22 + v30 + 1 > v23);
        goto LABEL_98;
      }

      if (v23 > v22)
      {
        goto LABEL_100;
      }

      v74 = a2;
      v51 = 0;
      v73 = v23 - 1;
      v53 = v23 < 1 || v23 <= a3;
      v78 = v53;
      do
      {
        v54 = v24;
        v24 = v23 + v51;
        if (v51)
        {
          v55 = 0;
        }

        else
        {
          v55 = v25;
        }

        if (v55 && (v56 = *(a1 + 24), v57 = *(v56 + 28 * v54), *(v56 + 28 * v23) == (v21 + v57)))
        {
          if (!v78 && *(v56 + 28 * v73) == v57)
          {
            Shape::DoEdgeTo(a1, a4, a5, v73, v17, 1);
          }

          v58 = a1;
          v59 = a4;
          v60 = a5;
          v61 = v23;
        }

        else
        {
          v58 = a1;
          v59 = a4;
          v60 = a5;
          v61 = v23 + v51;
        }

        Shape::DoEdgeTo(v58, v59, v60, v61, v17, 1);
        ++v51;
      }

      while (v22 - v23 + 1 != v51);
    }

    v24 = v22;
LABEL_99:
    a2 = v74;
    goto LABEL_100;
  }

LABEL_101:
  *(v18 + 56 * v19 + 48) = a2 - 1;
}

uint64_t Shape::DoEdgeTo(Shape *this, Shape *a2, int a3, unsigned int a4, int a5, int a6)
{
  v9 = a3;
  v10 = *(a2 + 8) + 56 * a3;
  v11 = *(v10 + 44);
  if (a6)
  {
    if (!a5)
    {
LABEL_3:
      v12 = a4;
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    goto LABEL_3;
  }

  v12 = *(v10 + 44);
  v11 = a4;
LABEL_6:
  result = Shape::AddEdge(this, v12, v11);
  if ((result & 0x80000000) != 0)
  {
    *(*(a2 + 8) + 56 * v9 + 44) = a4;
  }

  else
  {
    if ((*(this + 53) & 2) != 0)
    {
      v15 = *(a2 + 12) + 16 * v9;
      v16 = *(this + 12);
      v14 = result;
      *(v16 + 16 * result) = *v15;
      v17 = *(a2 + 7) + (v9 << 6);
      if (*(v17 + 16) >= 0.00001)
      {
        v21 = *(v17 + 32);
        v22 = *(a2 + 11) + 48 * *(*(a2 + 5) + 32 * v9 + 8);
        v23 = (v22 + 36);
        v24 = *(v17 + 4);
        v25 = *(v17 + 8);
        v26 = *(this + 3);
        v27 = *(this + 5) + 32 * result;
        v28 = (v26 + 28 * *(v27 + 8));
        v29.i32[0] = *v28;
        v30.i32[0] = v28[1];
        v31 = (v26 + 28 * *(v27 + 12));
        v32 = *(v15 + 8);
        v33 = *(v15 + 12);
        v29.i32[1] = *v31;
        v34 = (v22 + 40);
        v19 = (v16 + 16 * result);
        v35 = vld1_dup_f32(v23);
        v30.i32[1] = v31[1];
        v36 = vsub_f32(v29, v35);
        v37 = vld1_dup_f32(v34);
        v38 = vmul_n_f32(vmla_n_f32(vmul_n_f32(vsub_f32(v30, v37), v25), v36, v24), v21);
        __asm { FMOV            V1.2S, #1.0 }

        v20 = vmla_n_f32(vmul_n_f32(v38, v33), vsub_f32(_D1, v38), v32);
      }

      else
      {
        v18 = (v15 + 8);
        v19 = (v16 + 16 * result);
        v20 = vld1_dup_f32(v18);
      }

      v19[1] = v20;
    }

    else
    {
      v14 = result;
    }

    v44 = *(a2 + 8) + 56 * v9;
    v47 = *(v44 + 8);
    v45 = (v44 + 8);
    v46 = v47;
    v45[9] = a4;
    *(*(this + 8) + 56 * v14 + 8) = v47;
    if ((v47 & 0x80000000) == 0)
    {
      v48 = *(this + 11);
      do
      {
        v49 = v48 + 48 * v46;
        *(v49 + 32) = result;
        v46 = *(v49 + 16);
      }

      while ((v46 & 0x80000000) == 0);
    }

    *v45 = -1;
  }

  return result;
}

void SweepEvent::~SweepEvent(SweepEvent *this)
{
  SweepEvent::MakeDelete(this);
}

{
  SweepEvent::MakeDelete(this);
}

uint64_t *SweepEvent::MakeDelete(uint64_t *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 64);
    v3 = *(v2 + 40) + 32 * *(v1 + 72);
    v5 = *(v3 + 8);
    v4 = *(v3 + 12);
    v6 = *(v2 + 88);
    if (v5 > v4)
    {
      v4 = v5;
    }

    --*(v6 + 48 * v4 + 8);
    *(v1 + 56) = 0;
  }

  v7 = this[1];
  if (v7)
  {
    v8 = *(v7 + 64);
    v9 = *(v8 + 40) + 32 * *(v7 + 72);
    v11 = *(v9 + 8);
    v10 = *(v9 + 12);
    v12 = *(v8 + 88);
    if (v11 > v10)
    {
      v10 = v11;
    }

    --*(v12 + 48 * v10 + 8);
    *(v7 + 48) = 0;
  }

  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t SweepEvent::MakeNew(uint64_t result, uint64_t a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  *(result + 32) = -1;
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 28) = a7;
  *result = a2;
  *(result + 8) = a3;
  *(a2 + 56) = result;
  *(a3 + 48) = result;
  return result;
}

void *SweepEvent::CreateQueue(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 16) = malloc_type_malloc(40 * a2, 0x1020040EF90260EuLL);
  result = malloc_type_malloc(4 * *(a1 + 4), 0x100004052888210uLL);
  *(a1 + 8) = result;
  return result;
}

void SweepEvent::DestroyQueue(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t SweepEvent::AddInQueue(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  v7 = *a3;
  if (*a3 >= *(a3 + 4))
  {
    return 0;
  }

  *a3 = v7 + 1;
  v10 = *(a3 + 8);
  v9 = *(a3 + 16);
  result = v9 + 40 * v7;
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 28) = a7;
  *result = a1;
  *(result + 8) = a2;
  *(a1 + 56) = result;
  *(a2 + 48) = result;
  v12 = *(a1 + 64);
  v13 = *(v12 + 40) + 32 * *(a1 + 72);
  v15 = *(v13 + 8);
  v14 = *(v13 + 12);
  v16 = *(v12 + 88);
  if (v15 > v14)
  {
    v14 = v15;
  }

  ++*(v16 + 48 * v14 + 8);
  v17 = *(a2 + 64);
  v18 = *(v17 + 40) + 32 * *(a2 + 72);
  v20 = *(v18 + 8);
  v19 = *(v18 + 12);
  if (v20 > v19)
  {
    v19 = v20;
  }

  v21 = *(v17 + 88) + 48 * v19;
  ++*(v21 + 8);
  *(result + 32) = v7;
  *(v10 + 4 * v7) = v7;
  if (v7 >= 1)
  {
    v22 = v7;
    do
    {
      v23 = v22 - 1;
      v24 = (v22 - 1) >> 1;
      v25 = *(v10 + 4 * v24);
      v26 = v9 + 40 * v25;
      v27 = *(v26 + 20);
      if (v27 <= a5 && (v27 != a5 || *(v26 + 16) <= a4))
      {
        break;
      }

      *(result + 32) = v24;
      *(v9 + 40 * v25 + 32) = v22;
      *(v10 + 4 * v24) = v7;
      *(v10 + 4 * v22) = v25;
      v22 = v23 >> 1;
    }

    while (v23 > 1);
  }

  return result;
}

void SweepEvent::SupprFromQueue(uint64_t a1, int *a2)
{
  if (*a2 <= 1)
  {
    SweepEvent::MakeDelete(a1);
    *a2 = 0;
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(*(a2 + 1) + 4 * v3);
  SweepEvent::MakeDelete(a1);
  v5 = *(a2 + 2);
  v6 = *a2 - 1;
  *a2 = v6;
  SweepEvent::Relocate((v5 + 40 * v6), a2, v4);
  v7 = *a2;
  if (v7 != v3)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(v8 + 4 * v7);
    v11 = v9 + 40 * v10;
    *(v11 + 32) = v3;
    v12 = (v11 + 32);
    *(v8 + 4 * v3) = v10;
    v13 = *(v12 - 4);
    v14 = *(v12 - 3);
    if (v3 >= 1)
    {
      for (i = 0; ; i = 1)
      {
        v16 = v3 - 1;
        v17 = (v3 - 1) >> 1;
        v18 = *(v8 + 4 * v17);
        v19 = v9 + 40 * v18;
        v20 = *(v19 + 20);
        if (v14 >= v20 && (v14 != v20 || v13 >= *(v19 + 16)))
        {
          break;
        }

        *v12 = v17;
        *(v9 + 40 * v18 + 32) = v3;
        *(v8 + 4 * v17) = v10;
        *(v8 + 4 * v3) = v18;
        v3 = v16 >> 1;
        if (v16 < 2)
        {
          return;
        }
      }

      if (i)
      {
        return;
      }
    }

    v21 = (2 * v3) | 1;
    v22 = *a2;
    if (v21 >= *a2)
    {
      return;
    }

    v23 = 2 * v3;
    while (1)
    {
      v24 = v23 + 2;
      v25 = (v8 + 4 * v21);
      v26 = *v25;
      v27 = *v25;
      v28 = v9 + 40 * *v25;
      v29 = *(v28 + 20);
      if (v24 >= v22)
      {
        if (v14 > v29 || v14 == v29 && v13 > *(v28 + 16))
        {
          *v12 = v21;
          *(v9 + 40 * v27 + 32) = v3;
          *v25 = v10;
          *(v8 + 4 * v3) = v26;
        }

        return;
      }

      v30 = (v8 + 4 * v24);
      v31 = *v30;
      if (v14 > v29 || v14 == v29 && v13 > *(v28 + 16))
      {
        break;
      }

      v34 = v9 + 40 * v31;
      v35 = *(v34 + 20);
      if (v14 > v35)
      {
        goto LABEL_23;
      }

      if (v14 != v35)
      {
        return;
      }

      v36 = *(v34 + 16);
      v21 = v24;
      v27 = *v30;
      v25 = (v8 + 4 * v24);
      v26 = *v30;
      if (v13 <= v36)
      {
        return;
      }

LABEL_26:
      v37 = v21;
      *v12 = v21;
      *(v9 + 40 * v27 + 32) = v3;
      *v25 = v10;
      *(v8 + 4 * v3) = v26;
      v23 = 2 * v21;
      v21 = (2 * v21) | 1;
      v22 = *a2;
      v3 = v37;
      if (v21 >= *a2)
      {
        return;
      }
    }

    v32 = v9 + 40 * v31;
    v33 = *(v32 + 20);
    if (v33 > v29 || v33 == v29 && *(v32 + 16) > *(v28 + 16))
    {
      goto LABEL_26;
    }

LABEL_23:
    v21 = v24;
    v27 = *v30;
    v25 = (v8 + 4 * v24);
    v26 = *v30;
    goto LABEL_26;
  }
}

__n128 SweepEvent::Relocate(__int128 *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (*(v3 + 4 * v4) != a3)
  {
    v5 = *(a2 + 16) + 40 * a3;
    v7 = *a1;
    result = a1[1];
    *v5 = *a1;
    *(v5 + 16) = result;
    *(v7 + 56) = v5;
    *(*(&v7 + 1) + 48) = v5;
    *(v5 + 32) = v4;
    *(v3 + 4 * *(a1 + 8)) = a3;
  }

  return result;
}

BOOL SweepEvent::PeekInQueue(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v7 = *a7;
  if (*a7 >= 1)
  {
    *a1 = *(*(a7 + 16) + 40 * **(a7 + 8));
    *a2 = *(*(a7 + 16) + 40 * **(a7 + 8) + 8);
    v8 = (*(a7 + 16) + 40 * **(a7 + 8));
    *a3 = v8[4];
    *a4 = v8[5];
    *a5 = v8[6];
    *a6 = v8[7];
  }

  return v7 > 0;
}

BOOL SweepEvent::ExtractFromQueue(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v7 = *a7;
  if (*a7 >= 1)
  {
    *a1 = *(*(a7 + 16) + 40 * **(a7 + 8));
    *a2 = *(*(a7 + 16) + 40 * **(a7 + 8) + 8);
    v8 = (*(a7 + 16) + 40 * **(a7 + 8));
    *a3 = v8[4];
    *a4 = v8[5];
    *a5 = v8[6];
    *a6 = v8[7];
    SweepEvent::SupprFromQueue(v8, a7);
  }

  return v7 > 0;
}

void SweepTree::SweepTree(SweepTree *this)
{
  AVLTree::AVLTree(this);
  *(v1 + 72) = -1;
  *(v1 + 80) = -1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 76) = 1;
}

{
  AVLTree::AVLTree(this);
  *(v1 + 72) = -1;
  *(v1 + 80) = -1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 76) = 1;
}

void SweepTree::~SweepTree(SweepTree *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(v2 + 8) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    *v3 = 0;
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  AVLTree::MakeDelete(this);

  AVLTree::~AVLTree(this);
}

uint64_t SweepTree::MakeDelete(SweepTree *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    *(v1 + 8) = 0;
  }

  v2 = *(this + 7);
  if (v2)
  {
    *v2 = 0;
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return AVLTree::MakeDelete(this);
}

void *SweepTree::MakeNew(SweepTree *this, Shape *a2, int a3, int a4, int a5)
{
  result = AVLTree::MakeNew(this);
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 18) = a3;
  *(this + 6) = 0;
  *(this + 20) = a5;
  v11 = *(a2 + 5) + 32 * a3;
  *(this + 76) = (a4 >= 0) ^ (*(v11 + 8) >= *(v11 + 12));
  return result;
}

uint64_t SweepTree::ConvertTo(uint64_t this, Shape *a2, int a3, int a4, int a5)
{
  *(this + 56) = 0;
  *(this + 64) = a2;
  *(this + 72) = a3;
  *(this + 48) = 0;
  *(this + 80) = a5;
  v5 = *(a2 + 5) + 32 * a3;
  *(this + 76) = (a4 >= 0) ^ (*(v5 + 8) >= *(v5 + 12));
  return this;
}

void *SweepTree::CreateList(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  result = malloc_type_malloc(88 * a2, 0x1020040EB7F0E25uLL);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void SweepTree::DestroyList(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t SweepTree::AddInList(uint64_t a1, int a2, int a3, int a4, int *a5)
{
  v5 = *a5;
  if (*a5 >= a5[1])
  {
    return 0;
  }

  *a5 = v5 + 1;
  v11 = *(a5 + 1) + 88 * v5;
  AVLTree::MakeNew(v11);
  *(v11 + 56) = 0;
  *(v11 + 64) = a1;
  *(v11 + 72) = a2;
  *(v11 + 48) = 0;
  *(v11 + 80) = a4;
  v12 = *(a1 + 40) + 32 * a2;
  *(v11 + 76) = (a3 >= 0) ^ (*(v12 + 8) >= *(v12 + 12));
  return *(a5 + 1) + 88 * v5;
}

uint64_t SweepTree::Find(SweepTree *this, float a2, float a3, SweepTree *a4, SweepTree **a5, SweepTree **a6, int a7)
{
  v7 = a2;
  v8 = a3;
  do
  {
    while (1)
    {
      v9 = this;
      v10 = *(this + 8);
      v11 = *(this + 18);
      v12 = v10[5] + 32 * v11;
      v13 = *(v12 + 8);
      v14 = v10[11] + 48 * v13;
      v15 = v10[7] + (v11 << 6);
      v16 = *(v15 + 4);
      v17 = *(v15 + 8);
      if (v13 <= *(v12 + 12))
      {
        v16 = -v16;
      }

      else
      {
        v17 = -v17;
      }

      v18 = v16;
      v19 = (v8 - *(v14 + 40)) * v18 + v17 * (v7 - *(v14 + 36));
      if (fabs(v19) < 0.000001)
      {
        v20 = *(a4 + 8);
        v21 = *(a4 + 18);
        v22 = *(v20 + 56) + (v21 << 6);
        v23 = *(v22 + 4);
        v24 = *(v22 + 8);
        if (*(*(v20 + 40) + 32 * v21 + 8) <= *(*(v20 + 40) + 32 * v21 + 12))
        {
          v23 = -v23;
        }

        else
        {
          v24 = -v24;
        }

        v25 = v23;
        v19 = a7 ? v17 * v25 - v24 * v18 : v24 * v18 - v17 * v25;
        if (v19 == 0.0)
        {
          v19 = v18 * v25 + v17 * v24;
          if (v19 == 0.0)
          {
            *a5 = this;
            *a6 = *(this + 1);
            return 1;
          }
        }
      }

      if (v19 >= 0.0)
      {
        break;
      }

      this = *(this + 3);
      if (!this)
      {
        *a6 = v9;
        v28 = *v9;
        *a5 = v28;
        if (v28)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }
    }

    this = *(this + 4);
  }

  while (this);
  *a5 = v9;
  v26 = *(v9 + 1);
  *a6 = v26;
  if (v26)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t SweepTree::Find(SweepTree *this, float a2, float a3, SweepTree **a4, SweepTree **a5)
{
  v5 = a2;
  v6 = a3;
  do
  {
    while (1)
    {
      v7 = this;
      v8 = *(this + 8);
      v9 = *(this + 18);
      v10 = v8[5] + 32 * v9;
      v11 = *(v10 + 8);
      v12 = v8[11] + 48 * v11;
      v13 = v8[7] + (v9 << 6);
      v14 = *(v13 + 4);
      v15 = *(v13 + 8);
      if (v11 <= *(v10 + 12))
      {
        v14 = -v14;
      }

      else
      {
        v15 = -v15;
      }

      v16 = (v6 - *(v12 + 40)) * v14 + v15 * (v5 - *(v12 + 36));
      if (fabs(v16) < 0.000001)
      {
        *a4 = this;
        *a5 = *(this + 1);
        return 1;
      }

      if (v16 >= 0.0)
      {
        break;
      }

      this = *(this + 3);
      if (!this)
      {
        *a5 = v7;
        v19 = *v7;
        *a4 = *v7;
        if (v19)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }
    }

    this = *(this + 4);
  }

  while (this);
  *a4 = v7;
  v17 = *(v7 + 1);
  *a5 = v17;
  if (v17)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void SweepTree::RemoveEvents(uint64_t a1, int *a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    SweepEvent::SupprFromQueue(v4, a2);
  }

  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    SweepEvent::SupprFromQueue(v5, a2);
  }

  *(a1 + 56) = 0;
}

void SweepTree::RemoveEvent(uint64_t a1, int *a2, int a3)
{
  if (a3)
  {
    v4 = (a1 + 48);
    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  if (v3)
  {
LABEL_5:
    SweepEvent::SupprFromQueue(v3, a2);
  }

LABEL_6:
  *v4 = 0;
}

uint64_t SweepTree::Remove(AVLTree *a1, uint64_t a2, int *a3, int a4)
{
  SweepTree::RemoveEvents(a1, a3);
  v14 = *(a2 + 16);
  v7 = AVLTree::Remove(a1, &v14, a4);
  *(a2 + 16) = v14;
  v8 = *(a1 + 6);
  if (v8)
  {
    *(v8 + 8) = 0;
  }

  v9 = *(a1 + 7);
  if (v9)
  {
    *v9 = 0;
  }

  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  AVLTree::MakeDelete(a1);
  v10 = *a2;
  if (*a2 > 1)
  {
    v11 = *(a2 + 8);
    if (*(a2 + 16) == v11 + 88 * v10 - 88)
    {
      *(a2 + 16) = a1;
    }

    v12 = v10 - 1;
    *a2 = v12;
    SweepTree::Relocate((v11 + 88 * v12), a1);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return v7;
}

uint64_t *SweepTree::Relocate(uint64_t *this, SweepTree *a2)
{
  if (this != a2)
  {
    v3 = this;
    this = AVLTree::Relocate(this, a2);
    v4 = v3[8];
    *(a2 + 8) = v4;
    v5 = *(v3 + 18);
    *(a2 + 18) = v5;
    *(a2 + 76) = *(v3 + 76);
    v7 = v3[6];
    v6 = v3[7];
    *(a2 + 6) = v7;
    *(a2 + 7) = v6;
    *(a2 + 20) = *(v3 + 20);
    v8 = *(v4 + 64);
    if (v8)
    {
      *(v8 + 56 * v5) = a2;
    }

    v9 = *(v4 + 80);
    if (v9)
    {
      *(v9 + 48 * v5) = a2;
    }

    if (v7)
    {
      *(v7 + 8) = a2;
    }

    if (v6)
    {
      *v6 = a2;
    }
  }

  return this;
}

SweepTree *SweepTree::Insert(SweepTree *a1, uint64_t a2, int *a3, uint64_t a4, int a5, int a6, int a7)
{
  result = *(a2 + 16);
  if (!result)
  {
    *(a2 + 16) = a1;
    return result;
  }

  v24 = 0;
  v25 = 0;
  v12 = (*(a4 + 24) + 28 * a5);
  v13 = SweepTree::Find(result, *v12, v12[1], a1, &v25, &v24, a7);
  v14 = v13;
  if ((v13 & 6) != 2)
  {
    if (v13 == 4)
    {
      v18 = v24;
      v19 = *(v24 + 6);
      if (v19)
      {
        SweepEvent::SupprFromQueue(v19, a3);
      }

      *(v18 + 6) = 0;
      v17 = v25;
    }

    else
    {
      if (v13 != 1)
      {
        goto LABEL_18;
      }

      v15 = v24;
      if (v24)
      {
        v16 = *(v24 + 6);
        if (v16)
        {
          SweepEvent::SupprFromQueue(v16, a3);
        }

        *(v15 + 6) = 0;
      }

      v17 = v25;
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    v22 = *(v17 + 7);
    v21 = (v17 + 56);
    v20 = v22;
    if (v22)
    {
      SweepEvent::SupprFromQueue(v20, a3);
    }

    *v21 = 0;
  }

LABEL_18:
  v23 = *(a2 + 16);
  result = AVLTree::Insert(a1, &v23, v14, v25, v24, a6);
  *(a2 + 16) = v23;
  return result;
}

uint64_t SweepTree::InsertAt(AVLTree *this, uint64_t a2, int *a3, int a4, AVLTree **a5, int a6, int a7, int a8)
{
  v10 = *(a2 + 16);
  if (!v10)
  {
    result = 0;
    *(a2 + 16) = this;
    return result;
  }

  v12 = a5;
  v14 = *(this + 8);
  v15 = *(v14 + 40) + 32 * *(this + 18);
  v16 = *v15;
  v17 = *(v15 + 4);
  if (*(v15 + 8) > *(v15 + 12))
  {
    v16 = -v16;
    v17 = -v17;
  }

  if (!a8)
  {
    v16 = -v16;
    v17 = -v17;
  }

  v18 = *(a5[8] + 5) + 32 * *(a5 + 18);
  v19 = *v18;
  v20 = *(v18 + 4);
  if (*(v18 + 8) <= *(v18 + 12))
  {
    v20 = -v20;
  }

  else
  {
    v19 = -v19;
  }

  v21 = v16 * v20 + v19 * v17;
  if (v21 == 0.0)
  {
    v22 = a5[1];
  }

  else
  {
    v27 = *(v14 + 88) + 48 * a6;
    v28 = *(v27 + 36);
    v29 = *(v27 + 40);
    if (v21 <= 0.0)
    {
      if (v21 >= 0.0)
      {
        v12 = 0;
      }

      else
      {
        v22 = a5;
        while (1)
        {
          v12 = v22;
          v22 = *(v22 + 1);
          if (!v22)
          {
            break;
          }

          v43 = *(v22 + 8);
          v44 = *(v43 + 40) + 32 * *(v22 + 18);
          v45 = *(v44 + 8);
          if (v43 == v14)
          {
            v46 = *(v44 + 12);
            v51 = a6;
            if (v45 != a6)
            {
              v51 = *(v44 + 8);
              v40 = v46 == a6;
              v46 = a6;
              if (!v40)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
            v46 = *(v44 + 12);
            v47 = *(v43 + 88);
            v48 = v47 + 48 * v45;
            if (*(v48 + 36) == v28 && *(v48 + 40) == v29)
            {
              v51 = *(v44 + 8);
            }

            else
            {
              v49 = v47 + 48 * v46;
              if (*(v49 + 36) != v28)
              {
                goto LABEL_11;
              }

              v50 = *(v49 + 40);
              v51 = *(v44 + 8);
              if (v50 != v29)
              {
                goto LABEL_11;
              }
            }
          }

          v52 = *v44;
          v53 = *(v44 + 4);
          if (v51 <= v46)
          {
            v53 = -v53;
          }

          else
          {
            v52 = -v52;
          }

          if (v16 * v53 + v52 * v17 > 0.0)
          {
            goto LABEL_11;
          }
        }
      }

      v30 = 0;
LABEL_60:
      if (v12)
      {
        v54 = 4;
      }

      else
      {
        v54 = 2;
      }

      if (v30)
      {
        v23 = v54;
      }

      else
      {
        v23 = 3;
      }

      v22 = v30;
      goto LABEL_67;
    }

    v22 = a5[1];
    while (1)
    {
      v30 = v12;
      v31 = *(v12 + 8);
      v32 = *(v31 + 40) + 32 * *(v12 + 18);
      v33 = *(v32 + 8);
      if (v31 == v14)
      {
        v34 = *(v32 + 12);
        v39 = a6;
        if (v33 != a6)
        {
          v39 = *(v32 + 8);
          v40 = v34 == a6;
          v34 = a6;
          if (!v40)
          {
            break;
          }
        }
      }

      else
      {
        v34 = *(v32 + 12);
        v35 = *(v31 + 88);
        v36 = v35 + 48 * v33;
        if (*(v36 + 36) == v28 && *(v36 + 40) == v29)
        {
          v39 = *(v32 + 8);
        }

        else
        {
          v37 = v35 + 48 * v34;
          if (*(v37 + 36) != v28)
          {
            break;
          }

          v38 = *(v37 + 40);
          v39 = *(v32 + 8);
          if (v38 != v29)
          {
            break;
          }
        }
      }

      v41 = *v32;
      v42 = *(v32 + 4);
      if (v39 <= v34)
      {
        v42 = -v42;
      }

      else
      {
        v41 = -v41;
      }

      if (v16 * v42 + v41 * v17 <= 0.0)
      {
        break;
      }

      v12 = *v12;
      v22 = v30;
      if (!*v30)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_11:
  if (v22)
  {
    v23 = 4;
  }

  else
  {
    v23 = 3;
  }

  if (v22)
  {
    v24 = *(v22 + 6);
    if (v24)
    {
      SweepEvent::SupprFromQueue(v24, a3);
    }

    *(v22 + 6) = 0;
    v25 = *(v12 + 7);
    if (v25)
    {
      SweepEvent::SupprFromQueue(v25, a3);
    }

    *(v12 + 7) = 0;
    v10 = *(a2 + 16);
  }

LABEL_67:
  v55 = v10;
  result = AVLTree::Insert(this, &v55, v23, v12, v22, a7);
  *(a2 + 16) = v55;
  return result;
}

uint64_t SweepTree::SwapWithRight(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 64);
  v3 = *(result + 72);
  *(*(v2 + 64) + 56 * v3) = v1;
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *(*(v4 + 64) + 56 * v5) = result;
  *(result + 64) = v4;
  *(v1 + 64) = v2;
  *(result + 72) = v5;
  *(v1 + 72) = v3;
  LODWORD(v2) = *(result + 80);
  *(result + 80) = *(v1 + 80);
  *(v1 + 80) = v2;
  LOBYTE(v2) = *(result + 76);
  *(result + 76) = *(v1 + 76);
  *(v1 + 76) = v2;
  return result;
}

void sub_26C8333A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C83A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSDColorFill_DrawClearColorRepresentation(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!CGRectIsNull(*&a2))
  {
    CGContextSaveGState(a1);
    CGContextSetFillColorWithColor(a1, [objc_msgSend(MEMORY[0x277D6C2A8] "whiteColor")]);
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGContextFillRect(a1, v16);
    CGContextSetLineWidth(a1, 1.0);
    CGContextSetStrokeColorWithColor(a1, [objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8] "redColor")]);
    Mutable = CGPathCreateMutable();
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    MinX = CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    MaxY = CGRectGetMaxY(v18);
    CGPathMoveToPoint(Mutable, 0, MinX, MaxY);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    MinY = CGRectGetMinY(v20);
    CGPathAddLineToPoint(Mutable, 0, MaxX, MinY);
    CGContextAddPath(a1, Mutable);
    CGContextStrokePath(a1);
    CGPathRelease(Mutable);

    CGContextRestoreGState(a1);
  }
}

void sub_26C83F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C842664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSDTextInputResponderClass()
{
  TSUSupportsTextInteraction();

  return objc_opt_class();
}

__CFString *UI_GRANULARITY_NAME(unint64_t a1)
{
  if (a1 >= 6)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"unknown granularity: %ld", a1];
  }

  else
  {
    return off_279D48BC8[a1];
  }
}

__CFString *UI_DIRECTION_NAME(unint64_t a1)
{
  if (a1 >= 6)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"unknown direction: %ld", a1];
  }

  else
  {
    return off_279D48BF8[a1];
  }
}

__CFString *BOOL_NAME(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

void sub_26C8464D0(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x26C846428);
}

void sub_26C847DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x26C847D94);
  }

  JUMPOUT(0x26C847D60);
}

uint64_t p_reflectionMask(void)
{
  result = s_reflectionMaskImageRef;
  if (!s_reflectionMaskImageRef)
  {
    v1 = malloc_type_calloc(4uLL, 0x40uLL, 0x100004077774924uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v3 = CGBitmapContextCreate(v1, 1uLL, 0x40uLL, 8uLL, 4uLL, DeviceRGB, 2u);
    CGColorSpaceRelease(DeviceRGB);
    v4 = 0;
    v5 = xmmword_26CA66070;
    v6 = xmmword_26CA66080;
    v7 = xmmword_26CA66090;
    v8 = xmmword_26CA660A0;
    v27 = vdupq_n_s64(0x404F800000000000uLL);
    v26 = vdupq_n_s64(0x406FFFF7CED91687uLL);
    do
    {
      v44 = v8;
      v45 = v7;
      v46 = v6;
      v47 = v5;
      v9.i64[0] = v8.u32[2];
      v9.i64[1] = v8.u32[3];
      v10 = vcvtq_f64_u64(v9);
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v11 = vcvtq_f64_u64(v9);
      v9.i64[0] = v45.u32[2];
      v9.i64[1] = v45.u32[3];
      v12 = vcvtq_f64_u64(v9);
      v9.i64[0] = v45.u32[0];
      v9.i64[1] = v45.u32[1];
      v13 = vcvtq_f64_u64(v9);
      v9.i64[0] = v6.u32[2];
      v9.i64[1] = v6.u32[3];
      v14 = vcvtq_f64_u64(v9);
      v9.i64[0] = v46.u32[0];
      v9.i64[1] = v46.u32[1];
      v15 = vcvtq_f64_u64(v9);
      v9.i64[0] = v47.u32[2];
      v9.i64[1] = v47.u32[3];
      v16 = vcvtq_f64_u64(v9);
      v9.i64[0] = v47.u32[0];
      v9.i64[1] = v47.u32[1];
      v43 = vdivq_f64(vcvtq_f64_u64(v9), v27);
      v39 = vdivq_f64(v15, v27);
      v41 = vdivq_f64(v16, v27);
      v35 = vdivq_f64(v13, v27);
      v37 = vdivq_f64(v14, v27);
      v31 = vdivq_f64(v11, v27);
      v33 = vdivq_f64(v12, v27);
      __x = vdivq_f64(v10, v27);
      v29 = pow(__x.f64[1], 1.8);
      v17.f64[0] = pow(__x.f64[0], 1.8);
      v17.f64[1] = v29;
      v30 = v17;
      __x.f64[0] = pow(v31.f64[1], 1.8);
      v18.f64[0] = pow(v31.f64[0], 1.8);
      v18.f64[1] = __x.f64[0];
      v32 = v18;
      __x.f64[0] = pow(v33.f64[1], 1.8);
      v19.f64[0] = pow(v33.f64[0], 1.8);
      v19.f64[1] = __x.f64[0];
      v34 = v19;
      __x.f64[0] = pow(v35.f64[1], 1.8);
      v20.f64[0] = pow(v35.f64[0], 1.8);
      v20.f64[1] = __x.f64[0];
      v36 = v20;
      __x.f64[0] = pow(v37.f64[1], 1.8);
      v21.f64[0] = pow(v37.f64[0], 1.8);
      v21.f64[1] = __x.f64[0];
      v38 = v21;
      __x.f64[0] = pow(v39.f64[1], 1.8);
      v22.f64[0] = pow(v39.f64[0], 1.8);
      v22.f64[1] = __x.f64[0];
      v40 = v22;
      __x.f64[0] = pow(v41.f64[1], 1.8);
      v23.f64[0] = pow(v41.f64[0], 1.8);
      v23.f64[1] = __x.f64[0];
      v42 = v23;
      __x.f64[0] = pow(v43.f64[1], 1.8);
      v24.f64[0] = pow(v43.f64[0], 1.8);
      v24.f64[1] = __x.f64[0];
      v48.val[0] = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v32, v26)), vcvtq_s64_f64(vmulq_f64(v30, v26))), vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v36, v26)), vcvtq_s64_f64(vmulq_f64(v34, v26)))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v40, v26)), vcvtq_s64_f64(vmulq_f64(v38, v26))), vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v24, v26)), vcvtq_s64_f64(vmulq_f64(v42, v26)))));
      v48.val[1] = v48.val[0];
      v48.val[2] = v48.val[0];
      v48.val[3] = v48.val[0];
      v25 = &v1[v4];
      vst4q_s8(v25, v48);
      v48.val[2].i64[0] = 0x1000000010;
      v48.val[2].i64[1] = 0x1000000010;
      v8 = vaddq_s32(v44, v48.val[2]);
      v7 = vaddq_s32(v45, v48.val[2]);
      v6 = vaddq_s32(v46, v48.val[2]);
      v5 = vaddq_s32(v47, v48.val[2]);
      v4 += 64;
    }

    while (v4 != 256);
    s_reflectionMaskImageRef = CGBitmapContextCreateImage(v3);
    CGContextRelease(v3);
    return s_reflectionMaskImageRef;
  }

  return result;
}

__CFString *TSDStringFromTextureType(int a1)
{
  if (a1 <= 4)
  {
    v4 = @"shadow";
    v5 = @"contact shadow";
    v6 = @"grouped shadow";
    if (a1 != 4)
    {
      v6 = 0;
    }

    if (a1 != 3)
    {
      v5 = v6;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    v7 = @"unknown";
    v8 = @"background";
    if (a1 != 1)
    {
      v8 = 0;
    }

    if (a1)
    {
      v7 = v8;
    }

    if (a1 <= 1)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return @"stroke";
      case 9:
        return @"reflection";
      case 10:
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull TSDStringFromTextureType(TSDTextureType)"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [v9 handleFailureInFunction:v10 file:v11 lineNumber:57 description:@"Invalid texture type"];

        return @"ERROR";
      default:
        return 0;
    }
  }

  else
  {
    v1 = @"text";
    v2 = @"parameterizedStroke";
    if (a1 != 7)
    {
      v2 = 0;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 == 5)
    {
      return @"object";
    }

    else
    {
      return v1;
    }
  }
}

void *TSDTopmostInfoFromInfo(void *a1)
{
  v1 = a1;
  v2 = [a1 parentInfo];
  if (v2)
  {
    for (i = v2; ([i conformsToProtocol:&unk_287E95A28] & 1) == 0; i = v4)
    {
      v1 = i;
      v4 = [i parentInfo];
      if (!v4)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t TSDTopmostOwningAttachmentFromInfo(void *a1)
{
  v2 = [a1 owningAttachment];
  v3 = [a1 parentInfo];
  if (v3)
  {
    v4 = v3;
    do
    {
      if ([v4 conformsToProtocol:&unk_287E95A28])
      {
        break;
      }

      if ([v4 owningAttachment])
      {
        v2 = [v4 owningAttachment];
      }

      v4 = [v4 parentInfo];
    }

    while (v4);
  }

  return v2;
}

void p_calculateDerivedValuesFromFrameSpecAndAssetScale(void *a1, double *a2, double *a3, double *a4, double *a5, uint64_t a6, double a7)
{
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if ([a1 i_hasImages])
  {
    [a1 i_leftWidth];
    *&v18 = v18 * a7;
    v17 = ceilf(*&v18);
    [a1 i_rightWidth];
    *&v19 = v19 * a7;
    v16 = ceilf(*&v19);
    [a1 i_topHeight];
    *&v20 = v20 * a7;
    v15 = ceilf(*&v20);
    [a1 i_bottomHeight];
    *&v21 = v21 * a7;
    v14 = ceilf(*&v21);
  }

  if (![a1 i_hasAdornment])
  {
    v24 = *MEMORY[0x277CBF3A8];
    v25 = *(MEMORY[0x277CBF3A8] + 8);
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [a1 i_adornmentSize];
  v24 = TSDMultiplySizeScalar(v22, v23, a7);
  if (a2)
  {
LABEL_7:
    *a2 = v17;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = v24;
    *(a6 + 8) = v25;
  }
}

void sub_26C863280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_26C865A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TSDMaxSingleTileDimension()
{
  v0 = +[TSDCapabilities currentCapabilities];

  return [v0 maximumTextureSize];
}

double TSDDefaultTileDimension()
{
  [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  *&v0 = v0 * 0.25;
  return fmaxf(*&v0, 640.0);
}

void sub_26C86D718(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 120) = 0;
  objc_exception_rethrow();
}

uint64_t do_line_segments_intersect(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a1[1];
  v5 = (*a2 - *a1);
  v6 = (a2[1] - v4);
  v7 = a3[1];
  v8 = (*a3 - *a4);
  v9 = (v7 - a4[1]);
  v10 = (*a1 - *a3);
  v11 = (v4 - v7);
  v12 = v6 * v8 - v5 * v9;
  v13 = v9 * v10 - v8 * v11;
  if (v12 > 0.0 && (v13 >= 0.0 ? (v14 = v13 > v12) : (v14 = 1), !v14) || v12 < 0.0 && (v13 <= 0.0 ? (v15 = v13 < v12) : (v15 = 1), !v15))
  {
    v16 = v5 * v11 - v6 * v10;
    if (v12 > 0.0)
    {
      if (v16 > 0.0 && v16 < v12)
      {
        return 1;
      }
    }

    else if (v16 < 0.0 && v16 > v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t get_line_segment_intersection(const CGPoint *a1, const CGPoint *a2, const CGPoint *a3, const CGPoint *a4, CGPoint *a5)
{
  x = a1->x;
  y = a1->y;
  v10 = TSDSubtractPoints(a2->x, a2->y, a1->x);
  v12 = v11;
  v13 = a3->x;
  v14 = a3->y;
  v15 = TSDSubtractPoints(a4->x, a4->y, a3->x);
  v17 = v10 * v16 - v15 * v12;
  v18 = (v10 * (y - v14) - v12 * (x - v13)) / v17;
  v19 = (v15 * (y - v14) - v16 * (x - v13)) / v17;
  v20 = v18 >= 0.0;
  if (v18 > 1.0)
  {
    v20 = 0;
  }

  v21 = v19 >= 0.0;
  if (v19 > 1.0)
  {
    v21 = 0;
  }

  result = v20 & v21;
  if (a5)
  {
    if (result)
    {
      a5->x = x + v19 * v10;
      a5->y = y + v19 * v12;
    }
  }

  return result;
}

BOOL is_point_in_triangle(float *a1, float *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = -(-(v3 - *a2) * v4) - (v2 - v4) * *a2 + -(v3 - *a2) * v6 + (v2 - v4) * v5;
  v9 = a2[4];
  v8 = a2[5];
  return v7 * (v6 * -(v9 - v3) + (v8 - v2) * v5 + -(-(v9 - v3) * v2) - (v8 - v2) * v3) > 0.0 && v7 * (v6 * -(*a2 - v9) + (v4 - v8) * v5 + -(-(*a2 - v9) * v8) - (v4 - v8) * v9) > 0.0;
}

BOOL do_triangles_intersect(float *a1, float *a2)
{
  v4 = 0;
  while (2)
  {
    v5 = v4;
    v6 = &a1[2 * v4++];
    if (v4 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 + 1;
    }

    v8 = &a1[2 * v7];
    v9 = -3;
    v10 = a2;
    while (v9)
    {
      v11 = v9 + 4;
      if (__CFADD__(v9++, 1))
      {
        v11 = 0;
      }

      v13 = do_line_segments_intersect(v6, v8, v10, &a2[2 * v11]);
      v10 += 2;
      if (v13)
      {
        return 1;
      }
    }

    if (v4 != 3)
    {
      continue;
    }

    break;
  }

  if (is_point_in_triangle(a1, a2))
  {
    return 1;
  }

  return is_point_in_triangle(a2, a1);
}

uint64_t clip_points_to_rect(CGPoint *a1, CGPoint *a2, const CGRect *a3)
{
  v27[8] = *MEMORY[0x277D85DE8];
  x = a3->origin.x;
  y = a3->origin.y;
  width = a3->size.width;
  height = a3->size.height;
  if (!TSDPointInRectInclusive(a1->x, a1->y, a3->origin.x, y, width, height) || (result = TSDPointInRectInclusive(a2->x, a2->y, x, y, width, height), (result & 1) == 0))
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MinX = CGRectGetMinX(v28);
    v29 = *a3;
    *v27 = MinX;
    v27[1] = CGRectGetMinY(v29);
    MaxX = CGRectGetMaxX(*a3);
    v30 = *a3;
    *&v27[2] = MaxX;
    v27[3] = CGRectGetMinY(v30);
    v13 = CGRectGetMaxX(*a3);
    v31 = *a3;
    *&v27[4] = v13;
    v27[5] = CGRectGetMaxY(v31);
    v14 = CGRectGetMinX(*a3);
    v32 = *a3;
    v15 = 0;
    *&v27[6] = v14;
    v27[7] = CGRectGetMaxY(v32);
    v16 = v27;
    while (1)
    {
      v17 = *v16;
      v24 = *&v27[2 * ((v15 + 1) & 3)];
      v25 = v17;
      result = get_line_segment_intersection(a1, a2, &v25, &v24, &v26);
      if (result)
      {
        v18 = a3->origin.x;
        v19 = a3->origin.y;
        v20 = a3->size.width;
        v21 = a3->size.height;
        v22 = TSDPointInRectInclusive(a1->x, a1->y, a3->origin.x, v19, v20, v21);
        if (!v22)
        {
          *a1 = v26;
          v18 = a3->origin.x;
          v19 = a3->origin.y;
          v20 = a3->size.width;
          v21 = a3->size.height;
        }

        result = TSDPointInRectInclusive(a2->x, a2->y, v18, v19, v20, v21);
        if ((result & 1) == 0)
        {
          *a2 = v26;
          return result;
        }

        v23 = !v22;
      }

      else
      {
        v23 = 0;
      }

      if (v15 <= 2)
      {
        ++v16;
        ++v15;
        if (!v23)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

CGFloat segment_from_edge_clipped_to_rect@<D0>(uint64_t a1@<X0>, CGPoint *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12.origin.x = a3;
  v12.origin.y = a4;
  v12.size.width = a5;
  v12.size.height = a6;
  v7 = **(a1 + 8);
  v10 = **(*(a1 + 16) + 8);
  v11 = v7;
  clip_points_to_rect(&v11, &v10, &v12);
  v9 = v10;
  result = v11.x;
  *a2 = v11;
  a2[1] = v9;
  return result;
}

double area_of_cell(double **a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = 0.0;
  if (*a1 != v2)
  {
    do
    {
      result = result + (v1[2] - *v1) * ((v1[1] + v1[3]) * 0.5);
      v1 += 4;
    }

    while (v1 != v2);
  }

  return result;
}

void sub_26C8763A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C8771D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, char a56, void *a57, uint64_t a58, void *a59, uint64_t a60)
{
  a45 = &a42;
  std::vector<std::vector<boost::polygon::segment_data<double>>>::__destroy_vector::operator()[abi:ne200100](&a45);
  a45 = &a50;
  std::vector<std::vector<boost::polygon::segment_data<double>>>::__destroy_vector::operator()[abi:ne200100](&a45);
  if (__p)
  {
    a54 = __p;
    operator delete(__p);
  }

  boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::~voronoi_diagram(v60 - 240);
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&a56, a57);
  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

void boost::polygon::construct_voronoi<std::__wrap_iter<boost::polygon::point_data<double> *>,std::__wrap_iter<boost::polygon::segment_data<double> *>,boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(float64x2_t *a1, float64x2_t *a2, double *a3, double *a4, uint64_t *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  __p = 0;
  v13 = 0;
  v15 = 0;
  v14 = 0;
  *v9 = 0u;
  v10 = 0u;
  memset(v11, 0, 25);
  v16[0] = v16;
  v16[1] = v16;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v16[2] = 0;
  v17 = v18;
  v20 = 0;
  boost::polygon::insert<std::__wrap_iter<boost::polygon::point_data<double> *>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>>(a1, a2, &v8);
  while (a3 != a4)
  {
    boost::polygon::insert<boost::polygon::segment_data<double>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>>(a3, &v8);
    a3 += 4;
  }

  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::construct<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(&v8, a5);
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v17, v18[0]);
  std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear(v16);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_26C877420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::~voronoi_builder(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<boost::polygon::segment_data<double>>::push_back[abi:ne200100](void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<boost::polygon::segment_data<double>>::__emplace_back_slow_path<boost::polygon::segment_data<double> const&>(a1, a2);
  }

  else
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *v3 = *a2;
    *(v3 + 8) = a2[1];
    *(v3 + 16) = a2[2];
    *(v3 + 24) = a2[3];
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::vector<boost::polygon::segment_data<double>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<boost::polygon::segment_data<double>>>::__emplace_back_slow_path<std::vector<boost::polygon::segment_data<double>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<boost::polygon::segment_data<double>>>::__construct_one_at_end[abi:ne200100]<std::vector<boost::polygon::segment_data<double>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

unint64_t std::vector<boost::polygon::segment_data<double>>::insert(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = ((v6 - *a1) >> 5) + 1;
    if (v12 >> 59)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v7 - v11;
    v15 = v14 >> 4;
    if (v14 >> 4 <= v12)
    {
      v15 = ((v6 - *a1) >> 5) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 5;
    v23 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(a1, v16);
    }

    __p = 0;
    v20 = 32 * v17;
    v21 = 32 * v17;
    v22 = 0;
    std::__split_buffer<boost::polygon::segment_data<double>>::emplace_back<boost::polygon::segment_data<double> const&>(&__p, a3);
    v4 = std::vector<boost::polygon::segment_data<double>>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v21 != v20)
    {
      v21 += (v20 - v21 + 31) & 0xFFFFFFFFFFFFFFE0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *v6 = *a3;
    *(v6 + 8) = a3[1];
    *(v6 + 16) = a3[2];
    *(v6 + 24) = a3[3];
    a1[1] = v6 + 32;
  }

  else
  {
    std::vector<boost::polygon::segment_data<double>>::__move_range(a1, a2, v6, a2 + 32);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 4;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    *v4 = *v10;
    *(v4 + 8) = v10[1];
    *(v4 + 16) = v10[2];
    *(v4 + 24) = v10[3];
  }

  return v4;
}

void sub_26C877668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::~voronoi_diagram(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::polygon::segment_data<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C877AB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<boost::polygon::segment_data<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<boost::polygon::point_data<double>>::__emplace_unique_key_args<boost::polygon::point_data<double>,boost::polygon::point_data<double> const&>(uint64_t a1, double *a2)
{
  v2 = *std::__tree<boost::polygon::point_data<double>>::__find_equal<boost::polygon::point_data<double>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<boost::polygon::point_data<double>>::__find_equal<boost::polygon::point_data<double>>(uint64_t a1, void *a2, double *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 4);
        if (v6 >= v9)
        {
          break;
        }

LABEL_6:
        v4 = *v4;
        result = v8;
        if (!*v8)
        {
          goto LABEL_18;
        }
      }

      if (v6 == v9)
      {
        v10 = *(v4 + 5);
        if (v7 < v10)
        {
          goto LABEL_6;
        }

        if (v9 >= v6 && v10 >= v7)
        {
          goto LABEL_18;
        }
      }

      else if (v9 >= v6)
      {
        goto LABEL_18;
      }

      result = v4 + 1;
      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = result;
LABEL_18:
  *a2 = v8;
  return result;
}

uint64_t std::vector<boost::polygon::point_data<double>>::__emplace_back_slow_path<boost::polygon::point_data<double> const&>(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 16 * v2 + 16;
  v14 = 0;
  std::vector<boost::polygon::point_data<double>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26C877D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<boost::polygon::point_data<double>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

double *std::__tree<boost::polygon::point_data<double>>::find<boost::polygon::point_data<double>>(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = v3[5];
        if (v9 >= v5)
        {
          v7 = v3;
        }

        v3 += v9 < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v10 = v7[4];
  if (v6 < v10 || v6 == v10 && v5 < v7[5])
  {
    return v2;
  }

  return v7;
}

void boost::polygon::insert<std::__wrap_iter<boost::polygon::point_data<double> *>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>>(float64x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v14 = v3;
    v15 = v4;
    v7 = a1;
    do
    {
      v8 = *v7++;
      v9 = vcvtq_s64_f64(v8);
      v11 = vuzp1q_s32(v9, v9);
      v12 = 0;
      v13 = 0;
      std::vector<boost::polygon::detail::site_event<int>>::push_back[abi:ne200100](a3 + 8, v11.i8);
      v10 = *(a3 + 2776);
      *(*(a3 + 16) - 16) = v10;
      *(a3 + 2776) = v10 + 1;
    }

    while (v7 != a2);
  }
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::construct<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(void *a1, uint64_t *a2)
{
  boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_reserve(a2, -858993459 * ((a1[2] - a1[1]) >> 3));
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_sites_queue(a1);
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
  v4 = a1[9];
  v5 = a1[10];
LABEL_2:
  while (1)
  {
    v6 = a1[2];
    v7 = a1[4];
    if (v4 == v5)
    {
      break;
    }

    if (v7 == v6 || !boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(v10, v7, *v4 + 16))
    {
      boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_circle_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_site_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
LABEL_8:
    v4 = a1[9];
    v5 = v4;
    if (v4 != a1[10])
    {
      v5 = a1[10];
      if ((*(*v4 + 40) & 1) == 0)
      {
        while (1)
        {
          boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::pop((a1 + 9));
          v4 = a1[9];
          v5 = a1[10];
          if (v4 == v5)
          {
            break;
          }

          if (*(*v4 + 40))
          {
            goto LABEL_2;
          }
        }

        v5 = a1[9];
      }
    }
  }

  if (v7 != v6)
  {
    goto LABEL_7;
  }

  v9 = a1[17];
  v8 = a1 + 17;
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy((v8 - 1), v9);
  *v8 = 0;
  v8[1] = 0;
  *(v8 - 1) = v8;
  boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_build(a2);
}

void std::vector<boost::polygon::detail::site_event<int>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::detail::site_event<int>>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::detail::site_event<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t boost::polygon::insert<boost::polygon::segment_data<double>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>>(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v9 = *a1;
  v3 = v2;
  v4 = a1[3];
  v7 = a1[2];
  v8 = v3;
  v6 = v4;
  return boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_segment(a2, &v9, &v8, &v7, &v6);
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_segment(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v8 = *a2;
  v9 = *a3;
  *&v20 = v8 | (v9 << 32);
  *(&v20 + 1) = v20;
  v21 = 0;
  v22 = 0;
  std::vector<boost::polygon::detail::site_event<int>>::push_back[abi:ne200100](a1 + 8, &v20);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8) | 1;
  *(v10 - 16) = *(a1 + 2776);
  *(v10 - 8) = v11;
  v12 = *a4;
  v13 = *a5;
  *&v20 = v12 | (v13 << 32);
  *(&v20 + 1) = v20;
  v21 = 0;
  v22 = 0;
  std::vector<boost::polygon::detail::site_event<int>>::push_back[abi:ne200100](a1 + 8, &v20);
  v14 = *(a1 + 16);
  v15 = *(v14 - 8) | 2;
  *(v14 - 16) = *(a1 + 2776);
  *(v14 - 8) = v15;
  v16 = v9 < v13;
  if (v8 != v12)
  {
    v16 = v8 < v12;
  }

  if (v16)
  {
    *&v20 = v8 | (v9 << 32);
    *(&v20 + 1) = v12 | (v13 << 32);
    v21 = 0;
    v22 = 0;
    std::vector<boost::polygon::detail::site_event<int>>::push_back[abi:ne200100](a1 + 8, &v20);
    v17 = 8;
  }

  else
  {
    *&v20 = v12 | (v13 << 32);
    *(&v20 + 1) = v8 | (v9 << 32);
    v21 = 0;
    v22 = 0;
    std::vector<boost::polygon::detail::site_event<int>>::push_back[abi:ne200100](a1 + 8, &v20);
    v17 = 9;
  }

  v18 = *(a1 + 16);
  *(v18 - 8) |= v17;
  result = *(a1 + 2776);
  *(v18 - 16) = result;
  *(a1 + 2776) = result + 1;
  return result;
}

void *boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_reserve(void *a1, int a2)
{
  std::vector<boost::polygon::voronoi_cell<double>>::reserve(a1, a2);
  std::vector<boost::polygon::voronoi_vertex<double>>::reserve(a1 + 3, 2 * a2);

  return std::vector<boost::polygon::voronoi_edge<double>>::reserve(a1 + 6, 6 * a2);
}

unsigned int *boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_sites_queue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3));
  v18 = 0;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,false>(v2, v3, &v18, v5, 1);
  result = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to &>(*(a1 + 8), *(a1 + 16));
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (result != v8)
  {
    v8 = result;
    *(a1 + 16) = result;
  }

  if (v8 != v7)
  {
    v9 = 0;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = xmmword_26CA639B0;
    v15 = vdupq_n_s64(2uLL);
    v16 = (v7 + 56);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v13, v14));
      if (v17.i8[0])
      {
        *(v16 - 5) = v9;
      }

      if (v17.i8[4])
      {
        *v16 = v9 + 1;
      }

      v9 += 2;
      v14 = vaddq_s64(v14, v15);
      v16 += 10;
    }

    while (v12 != v9);
  }

  *(a1 + 32) = v7;
  return result;
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 != v4)
  {
    if ((v4 - v3) == 40)
    {
      v6 = *(v3 + 32) & 0x1FLL;
      v10 = *(v3 + 24);
      v11 = v6;
      std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](a2, &v10);
LABEL_11:
      a1[4] += 40;
      return;
    }

    v7 = a1[4];
    if (v7 != v4)
    {
      v8 = 0;
      v9 = *v3;
      do
      {
        if (*v7 != v9)
        {
          break;
        }

        if (v9 != v7[2])
        {
          break;
        }

        v7 += 10;
        a1[4] = v7;
        ++v8;
      }

      while (v7 != v4);
      if (v8 == 1)
      {
        boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, v3, v3, v3 + 40, a1 + 17, a2);
        goto LABEL_11;
      }
    }

    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line_collinear_sites<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
  }
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_site_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  v43 = *v4;
  v44 = v6;
  v45 = v5;
  v7 = (v4 + 40);
  v8 = v43;
  if (v43 == DWORD2(v43) && (v9 = DWORD1(v43), DWORD1(v43) == HIDWORD(v43)))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v10 != v11)
    {
      do
      {
        if (*v10 != v8 || *(v10 + 4) != v9)
        {
          break;
        }

        v12 = *(v10 + 8);
        LOBYTE(v38[0]) = *(a1 + 64);
        v13 = (v11 - v10) >> 4;
        if (v13 >= 2)
        {
          v14 = *v10;
          v15 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(v10, v38, v13);
          if ((v11 - 16) == v15)
          {
            *v15 = v14;
            v15[1] = v12;
          }

          else
          {
            *v15 = *(v11 - 16);
            v15[1] = *(v11 - 8);
            *(v11 - 16) = v14;
            *(v11 - 8) = v12;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(v10, (v15 + 2), v38, (v15 - v10 + 16) >> 4);
          }
        }

        *(a1 + 48) -= 16;
        std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer((a1 + 128), v12);
        operator delete(v12);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
      }

      while (v10 != v11);
      v4 = *(a1 + 32);
    }
  }

  else
  {
    v16 = *(a1 + 16);
    if (v16 != v7)
    {
      do
      {
        v17 = *v7;
        if (*v7 == v7[2])
        {
          v18 = v7[1];
          v19 = v17 != v43 || v18 == v7[3];
          if (v19)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v17 != v43)
          {
            goto LABEL_25;
          }

          v18 = v7[1];
        }

        if (v18 != DWORD1(v43))
        {
          goto LABEL_25;
        }

        v7 += 10;
      }

      while (v7 != v16);
      v7 = *(a1 + 16);
    }
  }

LABEL_25:
  v20 = *v4;
  v21 = *(v4 + 16);
  v39 = *(v4 + 32);
  v38[0] = v20;
  v38[1] = v21;
  v22 = *v4;
  v23 = *(v4 + 16);
  v42 = *(v4 + 32);
  v41 = v23;
  v40 = v22;
  v24 = *(a1 + 136);
  if (v24)
  {
    v25 = a1 + 136;
    do
    {
      v26 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(a1 + 152, v24 + 32, v38);
      if (v26)
      {
        v27 = 8;
      }

      else
      {
        v27 = 0;
      }

      if (!v26)
      {
        v25 = v24;
      }

      v24 = *(v24 + v27);
    }

    while (v24);
    v4 = *(a1 + 32);
  }

  else
  {
    v25 = a1 + 136;
  }

  while (v4 != v7)
  {
    v28 = *v4;
    v29 = *(v4 + 16);
    v45 = *(v4 + 32);
    v43 = v28;
    v44 = v29;
    if (v25 == a1 + 136)
    {
      v35 = *v25;
      v36 = v25;
      if (*v25)
      {
        do
        {
          v37 = v35;
          v35 = *(v35 + 8);
        }

        while (v35);
      }

      else
      {
        do
        {
          v37 = *(v36 + 16);
          v19 = *v37 == v36;
          v36 = v37;
        }

        while (v19);
      }

      v25 = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, (v37 + 72), v37 + 72, &v43, v25, a2);
      boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, (v37 + 32), v37 + 72, &v43);
    }

    else
    {
      if (v25 == *(a1 + 128))
      {
        v34 = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, (v25 + 32), v25 + 32, &v43, v25, a2);
      }

      else
      {
        v30 = *(v25 + 112);
        if (v30)
        {
          *(v30 + 24) = 0;
          *(v25 + 112) = 0;
        }

        v31 = *v25;
        v32 = v25;
        if (*v25)
        {
          do
          {
            v33 = v31;
            v31 = *(v31 + 8);
          }

          while (v31);
        }

        else
        {
          do
          {
            v33 = *(v32 + 16);
            v19 = *v33 == v32;
            v32 = v33;
          }

          while (v19);
        }

        v34 = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, (v33 + 72), v25 + 32, &v43, v25, a2);
        boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, (v33 + 32), v33 + 72, &v43);
      }

      if (v43 != *(&v43 + 1))
      {
        v45 ^= 0x20uLL;
      }

      boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, &v43, v25 + 32, (v25 + 72));
      v25 = v34;
    }

    v4 = *(a1 + 32) + 40;
    *(a1 + 32) = v4;
  }
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_circle_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, void *a2)
{
  v3 = a1 + 72;
  v4 = **(a1 + 72);
  v5 = *(v4 + 48);
  v6 = *(v5 + 88);
  v24 = *(v5 + 72);
  v25 = v6;
  v26 = *(v5 + 104);
  v7 = *(v5 + 120);
  v8 = *v5;
  if (*v5)
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 8);
    }

    while (v8);
  }

  else
  {
    v10 = v5;
    do
    {
      v9 = *(v10 + 16);
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (v11);
  }

  v12 = *(v9 + 120);
  v13 = *(v9 + 48);
  v22[0] = *(v9 + 32);
  v22[1] = v13;
  v23 = *(v9 + 64);
  if (*&v22[0] == *(&v22[0] + 1) && v24 != *(&v24 + 1) && *(&v24 | ~(v26 >> 2) & 8) == *&v22[0])
  {
    v26 ^= 0x20uLL;
  }

  v14 = v25;
  *(v9 + 72) = v24;
  *(v9 + 88) = v14;
  *(v9 + 104) = v26;
  *(v9 + 120) = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int,double>(a2, v22, &v24, (v4 + 16), v12, v7);
  std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer((a1 + 128), v5);
  operator delete(v5);
  boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::pop(v3);
  if (v9 != *(a1 + 128))
  {
    v15 = *(v9 + 112);
    if (v15)
    {
      *(v15 + 24) = 0;
      *(v9 + 112) = 0;
    }

    v16 = *v9;
    if (*v9)
    {
      do
      {
        v17 = v16;
        v16 = *(v16 + 8);
      }

      while (v16);
    }

    else
    {
      v18 = v9;
      do
      {
        v17 = *(v18 + 16);
        v11 = *v17 == v18;
        v18 = v17;
      }

      while (v11);
    }

    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, (v17 + 32), v22, &v24);
  }

  v19 = *(v9 + 8);
  if (v19)
  {
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19);
  }

  else
  {
    do
    {
      v20 = *(v9 + 16);
      v11 = *v20 == v9;
      v9 = v20;
    }

    while (!v11);
  }

  if (v20 != (a1 + 136))
  {
    v21 = *(v20 + 14);
    if (v21)
    {
      *(v21 + 24) = 0;
      *(v20 + 14) = 0;
    }

    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, v22, &v24, v20 + 18);
  }
}

BOOL boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  if (*a2 >= 0)
  {
    *&v5 = 0x8000000000000000 - COERCE__INT64(v3);
  }

  else
  {
    v5 = v3;
  }

  if (v4 >= 0)
  {
    v4 = 0x8000000000000000 - v4;
  }

  if ((*&v5 - v4) <= 0x40)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (*&v5 > v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = (v4 - *&v5) > 0x40;
  }

  if (!v7)
  {
    v8 = a2[1];
    v9 = *(a3 + 8);
    if (v8 >= 0)
    {
      *&v10 = 0x8000000000000000 - COERCE__INT64(v8);
    }

    else
    {
      v10 = v8;
    }

    v11 = 0x8000000000000000 - v9;
    if (v9 < 0)
    {
      v11 = *(a3 + 8);
    }

    if (*&v10 - v11 <= 0x40)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (*&v10 > v11)
    {
      v7 = v12;
    }

    else
    {
      v7 = v11 - *&v10 > 0x40;
    }
  }

  return v7 == -1;
}

void boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::pop(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = **a1;
  v10 = *(a1 + 24);
  v5 = (v3 - v2) >> 3;
  if (v5 >= 2)
  {
    v6 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(v2, &v10, v5);
    v7 = (v3 - 8);
    if ((v3 - 8) == v6)
    {
      *v6 = v4;
    }

    else
    {
      *v6 = *v7;
      *v7 = v4;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(v2, (v6 + 1), &v10, (v6 + 1) - v2);
    }
  }

  *(a1 + 8) -= 8;
  v9 = *v4;
  v8 = v4[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  --*(a1 + 48);
  operator delete(v4);
}

void boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_build(uint64_t *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 == v2)
  {
    v5 = a1[6];
  }

  else
  {
    v4 = v3 + 3;
    v5 = a1[6];
    do
    {
      v6 = *(v3 + 1);
      v7 = *(*(v3 + 2) + 8);
      if (v6)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8 || !boost::polygon::voronoi_diagram_traits<double>::vertex_equality_predicate_type::operator()((a1 + 9), v6, v7))
      {
        if (v3 != v5)
        {
          v9 = *v3;
          v10 = v3[2];
          v5[1] = v3[1];
          v5[2] = v10;
          *v5 = v9;
          v11 = v5 + 3;
          v12 = v4[2];
          v13 = *v4;
          v5[4] = v4[1];
          v5[5] = v12;
          v5[3] = v13;
          *(v5 + 2) = v5 + 3;
          *(v5 + 8) = v5;
          v14 = *(v5 + 4);
          if (v14)
          {
            *(v14 + 24) = v5;
            *(*(v5 + 9) + 32) = v11;
          }

          if (*(v5 + 10))
          {
            *(*(v5 + 3) + 32) = v5;
            *(*(v5 + 10) + 24) = v11;
          }
        }

        v5 += 6;
      }

      else
      {
        boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::remove_edge(a1, v3);
      }

      v3 += 6;
      v2 = a1[7];
      v4 += 6;
    }

    while (v3 != v2);
    v3 = a1[6];
  }

  if (v5 != v2)
  {
    v2 = v5;
    a1[7] = v5;
  }

  while (v3 != v2)
  {
    v15 = *(v3 + 1);
    *(*v3 + 8) = v3;
    if (v15)
    {
      *(v15 + 16) = v3;
    }

    v3 += 3;
  }

  v17 = a1[3];
  v16 = a1[4];
  v18 = v17;
  if (v17 != v16)
  {
    do
    {
      if (*(v18 + 2))
      {
        if (v18 != v17)
        {
          v19 = v18[1];
          *v17 = *v18;
          v17[1] = v19;
          v20 = *(v17 + 2);
          v21 = v20;
          do
          {
            *(v21 + 8) = v17;
            v21 = *(*(v21 + 32) + 16);
          }

          while (v21 != v20);
          v16 = a1[4];
        }

        v17 += 2;
      }

      v18 += 2;
    }

    while (v18 != v16);
    v18 = a1[3];
  }

  if (v17 != v16)
  {
    v16 = v17;
    a1[4] = v17;
  }

  if (v18 == v16)
  {
    v28 = a1[6];
    v29 = a1[7];
    if (v28 != v29)
    {
      v28[3] = v28;
      v28[4] = v28;
      for (i = v28 + 12; i != v29; i = v31 + 24)
      {
        v31 = v28;
        v32 = v28 + 6;
        v28 += 12;
        v31[9] = v28;
        v31[10] = v28;
        v31[15] = v32;
        v31[16] = v32;
      }

      v28[9] = v28 + 6;
      v28[10] = v28 + 6;
    }
  }

  else
  {
    v22 = *a1;
    v23 = a1[1];
    while (v22 != v23)
    {
      v24 = *(v22 + 8);
      if (v24)
      {
        v25 = *(v22 + 8);
        while (1)
        {
          v26 = v25;
          v25 = *(v25 + 32);
          if (!v25)
          {
            break;
          }

          if (v25 == v24)
          {
            v26 = v25;
            if (*(v25 + 32))
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }
        }

        do
        {
LABEL_43:
          v27 = v24;
          v24 = *(v24 + 24);
        }

        while (v24);
        *(v26 + 32) = v27;
        *(v27 + 24) = v26;
      }

LABEL_45:
      v22 += 24;
    }
  }
}

void *std::vector<boost::polygon::voronoi_cell<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<boost::polygon::voronoi_vertex<double>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<boost::polygon::voronoi_edge<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_edge<double>>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_edge<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 10;
  v115 = (a2 - 5);
  v9 = (a2 - 120);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v10))
      {
        goto LABEL_76;
      }

      return;
    }

LABEL_10:
    if (v13 <= 959)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,boost::polygon::detail::site_event<int>*>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[10 * (v14 >> 1)];
    if (v13 >= 0x1401)
    {
      v17 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, v10);
      v18 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v16);
      if (v17)
      {
        if (v18)
        {
          v165 = *(a1 + 32);
          v117 = *a1;
          v141 = *(a1 + 16);
          v19 = *v8;
          v20 = *(a2 - 24);
          *(a1 + 32) = *(a2 - 1);
          *a1 = v19;
          *(a1 + 16) = v20;
          goto LABEL_27;
        }

        v171 = *(a1 + 32);
        v123 = *a1;
        v147 = *(a1 + 16);
        v33 = *v16;
        v34 = *(v16 + 1);
        *(a1 + 32) = *(v16 + 4);
        *a1 = v33;
        *(a1 + 16) = v34;
        *(v16 + 4) = v171;
        *v16 = v123;
        *(v16 + 1) = v147;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v16))
        {
          v165 = *(v16 + 4);
          v117 = *v16;
          v141 = *(v16 + 1);
          v35 = *v8;
          v36 = *(a2 - 24);
          *(v16 + 4) = *(a2 - 1);
          *v16 = v35;
          *(v16 + 1) = v36;
LABEL_27:
          *v8 = v117;
          *(a2 - 24) = v141;
          *(a2 - 1) = v165;
        }
      }

      else if (v18)
      {
        v167 = *(v16 + 4);
        v119 = *v16;
        v143 = *(v16 + 1);
        v25 = *v8;
        v26 = *(a2 - 24);
        *(v16 + 4) = *(a2 - 1);
        *v16 = v25;
        *(v16 + 1) = v26;
        *v8 = v119;
        *(a2 - 24) = v143;
        *(a2 - 1) = v167;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, a1))
        {
          v168 = *(a1 + 32);
          v120 = *a1;
          v144 = *(a1 + 16);
          v27 = *v16;
          v28 = *(v16 + 1);
          *(a1 + 32) = *(v16 + 4);
          *a1 = v27;
          *(a1 + 16) = v28;
          *(v16 + 4) = v168;
          *v16 = v120;
          *(v16 + 1) = v144;
        }
      }

      v37 = a1 + 40 * v15 - 40;
      v38 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v37, (a1 + 40));
      v39 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v115, v37);
      if (v38)
      {
        if (v39)
        {
          v40 = *(a1 + 40);
          v41 = *(a1 + 56);
          v42 = *(a1 + 72);
          v43 = *(a2 - 6);
          v44 = *(a2 - 4);
          *(a1 + 40) = *v115;
          *(a1 + 56) = v44;
          *(a1 + 72) = v43;
          *(a2 - 6) = v42;
          *v115 = v40;
          *(a2 - 4) = v41;
        }

        else
        {
          v127 = *(a1 + 40);
          v151 = *(a1 + 56);
          v175 = *(a1 + 72);
          v54 = *v37;
          v53 = *(a1 + 40 * v15 - 24);
          *(a1 + 72) = *(a1 + 40 * v15 - 8);
          *(a1 + 40) = v54;
          *(a1 + 56) = v53;
          *(a1 + 40 * v15 - 8) = v175;
          *v37 = v127;
          *(a1 + 40 * v15 - 24) = v151;
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v115, v37))
          {
            v176 = *(a1 + 40 * v15 - 8);
            v128 = *v37;
            v152 = *(a1 + 40 * v15 - 24);
            v55 = *v115;
            v56 = *(a2 - 4);
            *(a1 + 40 * v15 - 8) = *(a2 - 6);
            *v37 = v55;
            *(a1 + 40 * v15 - 24) = v56;
            *v115 = v128;
            *(a2 - 4) = v152;
            *(a2 - 6) = v176;
          }
        }
      }

      else if (v39)
      {
        v172 = *(a1 + 40 * v15 - 8);
        v124 = *v37;
        v148 = *(a1 + 40 * v15 - 24);
        v45 = *v115;
        v46 = *(a2 - 4);
        *(a1 + 40 * v15 - 8) = *(a2 - 6);
        *v37 = v45;
        *(a1 + 40 * v15 - 24) = v46;
        *v115 = v124;
        *(a2 - 4) = v148;
        *(a2 - 6) = v172;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v37, (a1 + 40)))
        {
          v125 = *(a1 + 40);
          v149 = *(a1 + 56);
          v173 = *(a1 + 72);
          v48 = *v37;
          v47 = *(a1 + 40 * v15 - 24);
          *(a1 + 72) = *(a1 + 40 * v15 - 8);
          *(a1 + 40) = v48;
          *(a1 + 56) = v47;
          *(a1 + 40 * v15 - 8) = v173;
          *v37 = v125;
          *(a1 + 40 * v15 - 24) = v149;
        }
      }

      v57 = a1 + 40 * v15;
      v58 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), (a1 + 80));
      v59 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 30, (v57 + 40));
      if (v58)
      {
        if (v59)
        {
          v60 = *(a1 + 80);
          v61 = *(a1 + 96);
          v62 = *(a1 + 112);
          v63 = *(a2 - 11);
          v64 = *(a2 - 104);
          *(a1 + 80) = *v9;
          *(a1 + 96) = v64;
          *(a1 + 112) = v63;
          *(a2 - 11) = v62;
          *v9 = v60;
          *(a2 - 104) = v61;
        }

        else
        {
          v131 = *(a1 + 80);
          v155 = *(a1 + 96);
          v179 = *(a1 + 112);
          v69 = *(v57 + 56);
          v70 = *(v57 + 40);
          *(a1 + 112) = *(v57 + 72);
          *(a1 + 80) = v70;
          *(a1 + 96) = v69;
          *(v57 + 56) = v155;
          *(v57 + 72) = v179;
          *(v57 + 40) = v131;
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 30, (v57 + 40)))
          {
            v180 = *(v57 + 72);
            v132 = *(v57 + 40);
            v156 = *(v57 + 56);
            v71 = *v9;
            v72 = *(a2 - 104);
            *(v57 + 72) = *(a2 - 11);
            *(v57 + 56) = v72;
            *(v57 + 40) = v71;
            *v9 = v132;
            *(a2 - 104) = v156;
            *(a2 - 11) = v180;
          }
        }
      }

      else if (v59)
      {
        v177 = *(v57 + 72);
        v129 = *(v57 + 40);
        v153 = *(v57 + 56);
        v65 = *v9;
        v66 = *(a2 - 104);
        *(v57 + 72) = *(a2 - 11);
        *(v57 + 56) = v66;
        *(v57 + 40) = v65;
        *v9 = v129;
        *(a2 - 104) = v153;
        *(a2 - 11) = v177;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), (a1 + 80)))
        {
          v130 = *(a1 + 80);
          v154 = *(a1 + 96);
          v178 = *(a1 + 112);
          v67 = *(v57 + 56);
          v68 = *(v57 + 40);
          *(a1 + 112) = *(v57 + 72);
          *(a1 + 80) = v68;
          *(a1 + 96) = v67;
          *(v57 + 56) = v154;
          *(v57 + 72) = v178;
          *(v57 + 40) = v130;
        }
      }

      v73 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, v37);
      v74 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), v16);
      if (v73)
      {
        if (v74)
        {
          v181 = *(v37 + 32);
          v133 = *v37;
          v157 = *(v37 + 16);
          v75 = *(v57 + 56);
          *v37 = *(v57 + 40);
          *(v37 + 16) = v75;
          *(v37 + 32) = *(v57 + 72);
          goto LABEL_55;
        }

        v184 = *(v37 + 32);
        v136 = *v37;
        v160 = *(v37 + 16);
        v78 = *(v16 + 1);
        *v37 = *v16;
        *(v37 + 16) = v78;
        *(v37 + 32) = *(v16 + 4);
        *(v16 + 4) = v184;
        *v16 = v136;
        *(v16 + 1) = v160;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), v16))
        {
          v181 = *(v16 + 4);
          v133 = *v16;
          v157 = *(v16 + 1);
          v79 = *(v57 + 56);
          *v16 = *(v57 + 40);
          *(v16 + 1) = v79;
          *(v16 + 4) = *(v57 + 72);
LABEL_55:
          *(v57 + 56) = v157;
          *(v57 + 72) = v181;
          *(v57 + 40) = v133;
        }
      }

      else if (v74)
      {
        v182 = *(v16 + 4);
        v134 = *v16;
        v158 = *(v16 + 1);
        v76 = *(v57 + 56);
        *v16 = *(v57 + 40);
        *(v16 + 1) = v76;
        *(v16 + 4) = *(v57 + 72);
        *(v57 + 56) = v158;
        *(v57 + 72) = v182;
        *(v57 + 40) = v134;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, v37))
        {
          v183 = *(v37 + 32);
          v135 = *v37;
          v159 = *(v37 + 16);
          v77 = *(v16 + 1);
          *v37 = *v16;
          *(v37 + 16) = v77;
          *(v37 + 32) = *(v16 + 4);
          *(v16 + 4) = v183;
          *v16 = v135;
          *(v16 + 1) = v159;
        }
      }

      v185 = *(a1 + 32);
      v137 = *a1;
      v161 = *(a1 + 16);
      v80 = *v16;
      v81 = *(v16 + 1);
      *(a1 + 32) = *(v16 + 4);
      *a1 = v80;
      *(a1 + 16) = v81;
      *(v16 + 4) = v185;
      *v16 = v137;
      *(v16 + 1) = v161;
      goto LABEL_57;
    }

    v21 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10, v16);
    v22 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, a1);
    if (v21)
    {
      if (v22)
      {
        v166 = *(v16 + 4);
        v118 = *v16;
        v142 = *(v16 + 1);
        v23 = *v8;
        v24 = *(a2 - 24);
        *(v16 + 4) = *(a2 - 1);
        *v16 = v23;
        *(v16 + 1) = v24;
LABEL_36:
        *v8 = v118;
        *(a2 - 24) = v142;
        *(a2 - 1) = v166;
        goto LABEL_57;
      }

      v174 = *(v16 + 4);
      v126 = *v16;
      v150 = *(v16 + 1);
      v49 = *a1;
      v50 = *(a1 + 16);
      *(v16 + 4) = *(a1 + 32);
      *v16 = v49;
      *(v16 + 1) = v50;
      *(a1 + 32) = v174;
      *a1 = v126;
      *(a1 + 16) = v150;
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, a1))
      {
        v166 = *(a1 + 32);
        v118 = *a1;
        v142 = *(a1 + 16);
        v51 = *v8;
        v52 = *(a2 - 24);
        *(a1 + 32) = *(a2 - 1);
        *a1 = v51;
        *(a1 + 16) = v52;
        goto LABEL_36;
      }
    }

    else if (v22)
    {
      v169 = *(a1 + 32);
      v121 = *a1;
      v145 = *(a1 + 16);
      v29 = *v8;
      v30 = *(a2 - 24);
      *(a1 + 32) = *(a2 - 1);
      *a1 = v29;
      *(a1 + 16) = v30;
      *v8 = v121;
      *(a2 - 24) = v145;
      *(a2 - 1) = v169;
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a1, v16))
      {
        v170 = *(v16 + 4);
        v122 = *v16;
        v146 = *(v16 + 1);
        v31 = *a1;
        v32 = *(a1 + 16);
        *(v16 + 4) = *(a1 + 32);
        *v16 = v31;
        *(v16 + 1) = v32;
        *(a1 + 32) = v170;
        *a1 = v122;
        *(a1 + 16) = v146;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 - 40), a1) & 1) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(a1, a2, a3);
      goto LABEL_64;
    }

    v82 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(a1, a2, a3);
    if ((v83 & 1) == 0)
    {
      goto LABEL_62;
    }

    v84 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, v82, a3);
    v10 = (v82 + 40);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(v82 + 40, a2, a3))
    {
      a4 = -v12;
      a2 = v82;
      if (v84)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v84)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,false>(a1, v82, a3, -v12, a5 & 1);
      v10 = (v82 + 40);
LABEL_64:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(v10, v10 + 10, v10 + 20, (a2 - 40), a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(v10, v10 + 10, v10 + 20, (v10 + 30), a3);
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v10 + 30))
      {
        return;
      }

      v93 = *(v10 + 30);
      v94 = *(v10 + 34);
      v95 = *(v10 + 19);
      v96 = *(a2 - 1);
      v97 = *(a2 - 24);
      *(v10 + 30) = *v8;
      *(v10 + 34) = v97;
      *(v10 + 19) = v96;
      *(a2 - 1) = v95;
      *v8 = v93;
      *(a2 - 24) = v94;
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 30, v10 + 20))
      {
        return;
      }

      v98 = *(v10 + 14);
      v100 = *(v10 + 5);
      v99 = *(v10 + 6);
      v101 = *(v10 + 34);
      *(v10 + 5) = *(v10 + 30);
      *(v10 + 6) = v101;
      *(v10 + 14) = *(v10 + 19);
      *(v10 + 30) = v100;
      *(v10 + 34) = v99;
      *(v10 + 19) = v98;
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 20, v10 + 10))
      {
        return;
      }

      v102 = *(v10 + 9);
      v103 = *(v10 + 14);
      v104 = *(v10 + 10);
      v105 = *(v10 + 6);
      *(v10 + 10) = *(v10 + 5);
      *(v10 + 14) = v105;
      *(v10 + 9) = *(v10 + 14);
      *(v10 + 5) = v104;
      *(v10 + 6) = v103;
      *(v10 + 14) = v102;
      goto LABEL_90;
    }

    goto LABEL_10;
  }

  v85 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 10, v10);
  v86 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v8, v10 + 10);
  if ((v85 & 1) == 0)
  {
    if (!v86)
    {
      return;
    }

    v109 = *(v10 + 10);
    v110 = *(v10 + 14);
    v111 = *(v10 + 9);
    v112 = *(v8 + 4);
    v113 = *(v8 + 1);
    *(v10 + 10) = *v8;
    *(v10 + 14) = v113;
    *(v10 + 9) = v112;
    *(v8 + 4) = v111;
    *v8 = v109;
    *(v8 + 1) = v110;
LABEL_90:
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 10, v10))
    {
      v188 = *(v10 + 4);
      v140 = *v10;
      v164 = *(v10 + 1);
      v114 = *(v10 + 14);
      *v10 = *(v10 + 10);
      *(v10 + 1) = v114;
      *(v10 + 4) = *(v10 + 9);
      *(v10 + 10) = v140;
      *(v10 + 14) = v164;
      *(v10 + 9) = v188;
    }

    return;
  }

  if (v86)
  {
LABEL_76:
    v187 = *(v10 + 4);
    v139 = *v10;
    v163 = *(v10 + 1);
    v107 = *v8;
    v108 = *(v8 + 1);
    *(v10 + 4) = *(v8 + 4);
    *v10 = v107;
    *(v10 + 1) = v108;
    *v8 = v139;
    *(v8 + 1) = v163;
    *(v8 + 4) = v187;
    return;
  }

  v186 = *(v10 + 4);
  v138 = *v10;
  v162 = *(v10 + 1);
  v87 = *(v10 + 14);
  *v10 = *(v10 + 10);
  *(v10 + 1) = v87;
  *(v10 + 4) = *(v10 + 9);
  *(v10 + 10) = v138;
  *(v10 + 14) = v162;
  *(v10 + 9) = v186;
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v8, v10 + 10))
  {
    v88 = *(v10 + 10);
    v89 = *(v10 + 14);
    v90 = *(v10 + 9);
    v91 = *(v8 + 4);
    v92 = *(v8 + 1);
    *(v10 + 10) = *v8;
    *(v10 + 14) = v92;
    *(v10 + 9) = v91;
    *(v8 + 4) = v90;
    *v8 = v88;
    *(v8 + 1) = v89;
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a2 < *a3;
  if (*a2 != *a3)
  {
    return v4;
  }

  if (v3 != a2[2])
  {
    if (v3 == a3[2])
    {
      return 0;
    }

    v11 = a2[1];
    v12 = a3[1];
    v4 = v11 < v12;
    if (v11 == v12)
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2 + 2, a2, a3 + 2) == 1;
    }

    return v4;
  }

  v5 = a2[1];
  v6 = a3[2];
  if (v5 != a2[3])
  {
    if (v3 != v6)
    {
      return 1;
    }

    return v5 < a3[1];
  }

  if (v3 != v6)
  {
    return 1;
  }

  v7 = a3[1];
  v4 = v5 < v7;
  v8 = v5 <= v7;
  v9 = v4;
  if (v7 == a3[3])
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(int *a1, int *a2, int *a3, __int128 *a4, uint64_t a5)
{
  v10 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a2, a1);
  v11 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      v14 = *(a1 + 4);
      v15 = *(a3 + 4);
      v16 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v16;
      *(a1 + 4) = v15;
LABEL_9:
      *(a3 + 4) = v14;
      *a3 = v12;
      *(a3 + 1) = v13;
      goto LABEL_10;
    }

    v27 = *a1;
    v28 = *(a1 + 1);
    v29 = *(a1 + 4);
    v30 = *(a2 + 4);
    v31 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v31;
    *(a1 + 4) = v30;
    *(a2 + 4) = v29;
    *a2 = v27;
    *(a2 + 1) = v28;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a3, a2))
    {
      v12 = *a2;
      v13 = *(a2 + 1);
      v14 = *(a2 + 4);
      v32 = *(a3 + 4);
      v33 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v33;
      *(a2 + 4) = v32;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    v19 = *(a2 + 4);
    v20 = *(a3 + 4);
    v21 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v21;
    *(a2 + 4) = v20;
    *(a3 + 4) = v19;
    *a3 = v17;
    *(a3 + 1) = v18;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a2, a1))
    {
      v22 = *a1;
      v23 = *(a1 + 1);
      v24 = *(a1 + 4);
      v25 = *(a2 + 4);
      v26 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v26;
      *(a1 + 4) = v25;
      *(a2 + 4) = v24;
      *a2 = v22;
      *(a2 + 1) = v23;
    }
  }

LABEL_10:
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a4, a3))
  {
    v35 = *a3;
    v36 = *(a3 + 1);
    v37 = *(a3 + 4);
    v38 = *(a4 + 4);
    v39 = a4[1];
    *a3 = *a4;
    *(a3 + 1) = v39;
    *(a3 + 4) = v38;
    *(a4 + 4) = v37;
    *a4 = v35;
    a4[1] = v36;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a3, a2))
    {
      v40 = *a2;
      v41 = *(a2 + 1);
      v42 = *(a2 + 4);
      v43 = *(a3 + 4);
      v44 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v44;
      *(a2 + 4) = v43;
      *(a3 + 4) = v42;
      *a3 = v40;
      *(a3 + 1) = v41;
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a2, a1))
      {
        result = *a1;
        v45 = *(a1 + 1);
        v46 = *(a1 + 4);
        v47 = *(a2 + 4);
        v48 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v48;
        *(a1 + 4) = v47;
        *(a2 + 4) = v46;
        *a2 = result;
        *(a2 + 1) = v45;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v21 = v3;
    v22 = v4;
    v6 = result;
    v7 = (result + 40);
    if (result + 40 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, v11);
        if (result)
        {
          v12 = *(v10 + 16);
          v18 = *v10;
          v19 = v12;
          v20 = *(v10 + 32);
          v13 = v9;
          while (1)
          {
            v14 = v6 + v13;
            v15 = *(v6 + v13 + 16);
            *(v14 + 40) = *(v6 + v13);
            *(v14 + 56) = v15;
            *(v14 + 72) = *(v6 + v13 + 32);
            if (!v13)
            {
              break;
            }

            v13 -= 40;
            result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v18, (v13 + v6));
            if ((result & 1) == 0)
            {
              v16 = v6 + v13 + 40;
              goto LABEL_10;
            }
          }

          v16 = v6;
LABEL_10:
          v17 = v19;
          *v16 = v18;
          *(v16 + 16) = v17;
          *(v16 + 32) = v20;
        }

        v7 = (v10 + 40);
        v9 += 40;
      }

      while (v10 + 40 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v18 = v3;
    v19 = v4;
    v6 = result;
    v7 = (result + 40);
    if (result + 40 != a2)
    {
      v9 = result - 40;
      do
      {
        v10 = v6;
        v6 = v7;
        result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, v10);
        if (result)
        {
          v11 = *(v6 + 16);
          v15 = *v6;
          v16 = v11;
          v17 = *(v6 + 32);
          v12 = v9;
          do
          {
            v13 = *(v12 + 56);
            *(v12 + 80) = *(v12 + 40);
            *(v12 + 96) = v13;
            *(v12 + 112) = *(v12 + 72);
            result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v15, v12);
            v12 -= 40;
          }

          while ((result & 1) != 0);
          v14 = v16;
          *(v12 + 80) = v15;
          *(v12 + 96) = v14;
          *(v12 + 112) = v17;
        }

        v7 = (v6 + 40);
        v9 += 40;
      }

      while (v6 + 40 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(int *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 1);
  v22 = *a1;
  v23 = v6;
  v24 = *(a1 + 4);
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, (a2 - 40)))
  {
    v7 = a1;
    do
    {
      v7 += 10;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v7) & 1) == 0);
  }

  else
  {
    v8 = a1 + 10;
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v8);
      v8 = v7 + 10;
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      v4 -= 40;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v4) & 1) != 0);
  }

  while (v7 < v4)
  {
    v10 = *v7;
    v11 = *(v7 + 1);
    v27 = *(v7 + 4);
    v25 = v10;
    v26 = v11;
    v12 = *v4;
    v13 = *(v4 + 16);
    *(v7 + 4) = *(v4 + 32);
    *v7 = v12;
    *(v7 + 1) = v13;
    v14 = v25;
    v15 = v26;
    *(v4 + 32) = v27;
    *v4 = v14;
    *(v4 + 16) = v15;
    do
    {
      v7 += 10;
    }

    while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v7));
    do
    {
      v4 -= 40;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v4) & 1) != 0);
  }

  v16 = v7 - 10;
  if (v7 - 10 != a1)
  {
    v17 = *v16;
    v18 = *(v7 - 6);
    *(a1 + 4) = *(v7 - 1);
    *a1 = v17;
    *(a1 + 1) = v18;
  }

  v19 = v22;
  v20 = v23;
  *(v7 - 1) = v24;
  *v16 = v19;
  *(v7 - 6) = v20;
  return v7;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(__int128 *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1[1];
  v22 = *a1;
  v23 = v7;
  v24 = *(a1 + 4);
  do
  {
    v6 += 40;
  }

  while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + v6), &v22) & 1) != 0);
  v8 = a1 + v6;
  v9 = a1 + v6 - 40;
  if (v6 == 40)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 10;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2, &v22) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 10;
    }

    while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2, &v22));
  }

  if (v8 < a2)
  {
    v10 = a1 + v6;
    v11 = a2;
    do
    {
      v13 = *(v10 + 16);
      v25 = *v10;
      v12 = v25;
      v26 = v13;
      v27 = *(v10 + 32);
      v14 = v27;
      v16 = *v11;
      v15 = *(v11 + 1);
      *(v10 + 32) = *(v11 + 4);
      *v10 = v16;
      *(v10 + 16) = v15;
      *(v11 + 4) = v14;
      *v11 = v12;
      *(v11 + 1) = v13;
      do
      {
        v10 += 40;
      }

      while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10, &v22) & 1) != 0);
      do
      {
        v11 -= 10;
      }

      while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v11, &v22));
    }

    while (v10 < v11);
    v9 = v10 - 40;
  }

  if (v9 != a1)
  {
    v17 = *v9;
    v18 = *(v9 + 16);
    *(a1 + 4) = *(v9 + 32);
    *a1 = v17;
    a1[1] = v18;
  }

  v19 = v22;
  v20 = v23;
  *(v9 + 32) = v24;
  *v9 = v19;
  *(v9 + 16) = v20;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 40;
        v22 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1);
        v23 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, (a1 + 40));
        if (v22)
        {
          if (v23)
          {
LABEL_15:
            v24 = *a1;
            v25 = *(a1 + 16);
            v26 = *(a1 + 32);
            v27 = *(v7 + 32);
            v28 = *(v7 + 16);
            *a1 = *v7;
            *(a1 + 16) = v28;
            *(a1 + 32) = v27;
LABEL_16:
            *(v7 + 32) = v26;
            result = 1;
            *v7 = v24;
            *(v7 + 16) = v25;
            return result;
          }

          v54 = *(a1 + 32);
          v56 = *a1;
          v55 = *(a1 + 16);
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v57;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 72) = v54;
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, (a1 + 40)))
          {
            v24 = *(a1 + 40);
            v25 = *(a1 + 56);
            v26 = *(a1 + 72);
            v58 = *(v7 + 32);
            v59 = *(v7 + 16);
            *(a1 + 40) = *v7;
            *(a1 + 56) = v59;
            *(a1 + 72) = v58;
            goto LABEL_16;
          }

          return 1;
        }

        if (!v23)
        {
          return 1;
        }

        v37 = *(a1 + 40);
        v38 = *(a1 + 56);
        v39 = *(a1 + 72);
        v40 = *(v7 + 32);
        v41 = *(v7 + 16);
        *(a1 + 40) = *v7;
        *(a1 + 56) = v41;
        *(a1 + 72) = v40;
        *(v7 + 32) = v39;
        *v7 = v37;
        *(v7 + 16) = v38;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(a1, (a1 + 40), (a1 + 80), (a2 - 40), a3);
        return 1;
      case 5:
        v8 = a2 - 40;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(a1, (a1 + 40), (a1 + 80), (a1 + 120), a3);
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v8, (a1 + 120)))
        {
          return 1;
        }

        v9 = *(a1 + 120);
        v10 = *(a1 + 136);
        v11 = *(a1 + 152);
        v12 = *(v8 + 32);
        v13 = *(v8 + 16);
        *(a1 + 120) = *v8;
        *(a1 + 136) = v13;
        *(a1 + 152) = v12;
        *(v8 + 32) = v11;
        *v8 = v9;
        *(v8 + 16) = v10;
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 120), (a1 + 80)))
        {
          return 1;
        }

        v14 = *(a1 + 112);
        v16 = *(a1 + 80);
        v15 = *(a1 + 96);
        v17 = *(a1 + 136);
        *(a1 + 80) = *(a1 + 120);
        *(a1 + 96) = v17;
        *(a1 + 112) = *(a1 + 152);
        *(a1 + 120) = v16;
        *(a1 + 136) = v15;
        *(a1 + 152) = v14;
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 80), (a1 + 40)))
        {
          return 1;
        }

        v18 = *(a1 + 72);
        v19 = *(a1 + 56);
        v20 = *(a1 + 40);
        v21 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v21;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v20;
        *(a1 + 96) = v19;
        *(a1 + 112) = v18;
        break;
      default:
        goto LABEL_17;
    }

    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1))
    {
      v42 = *(a1 + 32);
      v44 = *a1;
      v43 = *(a1 + 16);
      v45 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v45;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v44;
      *(a1 + 56) = v43;
      result = 1;
      *(a1 + 72) = v42;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 40;
    if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a2 - 40), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v30 = (a1 + 80);
  v31 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1);
  v32 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 80), (a1 + 40));
  if (v31)
  {
    if (v32)
    {
      v33 = *(a1 + 32);
      v35 = *a1;
      v34 = *(a1 + 16);
      v36 = *(a1 + 96);
      *a1 = *v30;
      *(a1 + 16) = v36;
      *(a1 + 32) = *(a1 + 112);
    }

    else
    {
      v60 = *(a1 + 32);
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v63;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v62;
      *(a1 + 56) = v61;
      *(a1 + 72) = v60;
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 80), (a1 + 40)))
      {
        goto LABEL_33;
      }

      v33 = *(a1 + 72);
      v34 = *(a1 + 56);
      v35 = *(a1 + 40);
      v64 = *(a1 + 96);
      *(a1 + 40) = *v30;
      *(a1 + 56) = v64;
      *(a1 + 72) = *(a1 + 112);
    }

    *v30 = v35;
    *(a1 + 96) = v34;
    *(a1 + 112) = v33;
  }

  else if (v32)
  {
    v46 = *(a1 + 72);
    v47 = *(a1 + 56);
    v48 = *(a1 + 40);
    v49 = *(a1 + 96);
    *(a1 + 40) = *v30;
    *(a1 + 56) = v49;
    *(a1 + 72) = *(a1 + 112);
    *v30 = v48;
    *(a1 + 96) = v47;
    *(a1 + 112) = v46;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1))
    {
      v50 = *(a1 + 32);
      v52 = *a1;
      v51 = *(a1 + 16);
      v53 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v53;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v52;
      *(a1 + 56) = v51;
      *(a1 + 72) = v50;
    }
  }

LABEL_33:
  v65 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v65, v30))
    {
      v68 = *(v65 + 16);
      v74 = *v65;
      v75 = v68;
      v76 = *(v65 + 32);
      v69 = v66;
      while (1)
      {
        v70 = a1 + v69;
        v71 = *(a1 + v69 + 96);
        *(v70 + 120) = *(a1 + v69 + 80);
        *(v70 + 136) = v71;
        *(v70 + 152) = *(a1 + v69 + 112);
        if (v69 == -80)
        {
          break;
        }

        v69 -= 40;
        if ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v74, (v70 + 40)) & 1) == 0)
        {
          v72 = a1 + v69 + 120;
          goto LABEL_41;
        }
      }

      v72 = a1;
LABEL_41:
      v73 = v75;
      *v72 = v74;
      *(v72 + 16) = v73;
      *(v72 + 32) = v76;
      if (++v67 == 8)
      {
        return v65 + 40 == a2;
      }
    }

    v30 = v65;
    v66 += 40;
    v65 += 40;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(int *a1, int *a2, int *a3)
{
  v3 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*a1 - *a2, a1[1] - a2[1], *a2 - *a3, a2[1] - a3[1]);
  if (v3 >= 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == 0.0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

double boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (a4 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  v8 = v7 * v4;
  v9 = v6 * v5;
  v10 = a2 ^ a3;
  result = (v8 - v9);
  v12 = (v9 - v8);
  if (v8 < v9)
  {
    result = -v12;
  }

  if (v10 < 0)
  {
    result = (v8 + v9);
  }

  if (v8 > v9)
  {
    v12 = -(v8 - v9);
  }

  if (v10 >= 0)
  {
    v12 = -(v8 + v9);
  }

  if ((a4 ^ a1) < 0)
  {
    return v12;
  }

  return result;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,boost::polygon::detail::site_event<int>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, a4, v9, v12);
        v12 = (v12 - 40);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a4, v13, a1))
        {
          v14 = *v13;
          v15 = v13[1];
          v16 = *(v13 + 4);
          v17 = *(a1 + 32);
          v18 = *(a1 + 16);
          *v13 = *a1;
          v13[1] = v18;
          *(v13 + 4) = v17;
          *(a1 + 32) = v16;
          *a1 = v14;
          *(a1 + 16) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, a4, v9, a1);
        }

        v13 = (v13 + 40);
      }

      while (v13 != a3);
    }

    if (v8 >= 41)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v20 = a2 - 40;
      do
      {
        v26 = *a1;
        v27 = *(a1 + 16);
        v28 = *(a1 + 32);
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, a4, v19);
        if (v20 == v21)
        {
          *v21 = v26;
          v21[1] = v27;
          *(v21 + 4) = v28;
        }

        else
        {
          v22 = *v20;
          v23 = *(v20 + 16);
          *(v21 + 4) = *(v20 + 32);
          *v21 = v22;
          v21[1] = v23;
          *(v20 + 32) = v28;
          *v20 = v26;
          *(v20 + 16) = v27;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, v21 + 40, a4, 0xCCCCCCCCCCCCCCCDLL * ((v21 - a1 + 40) >> 3));
        }

        v20 -= 40;
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v26 = v4;
    v27 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 40 * v12);
      v14 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, (a1 + 40 * v12), v13 + 10))
      {
        v13 = (v13 + 40);
        v12 = v14;
      }

      if ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, v13, v7) & 1) == 0)
      {
        v16 = v7[1];
        v23 = *v7;
        v24 = v16;
        v25 = v7[2].n128_i64[0];
        do
        {
          v17 = v13;
          v18 = *v13;
          v19 = v13[1];
          v7[2].n128_u64[0] = *(v13 + 4);
          *v7 = v18;
          v7[1] = v19;
          if (v9 < v12)
          {
            break;
          }

          v20 = (2 * v12) | 1;
          v13 = (a1 + 40 * v20);
          v21 = 2 * v12 + 2;
          if (v21 < a3)
          {
            if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, (a1 + 40 * v20), v13 + 10))
            {
              v13 = (v13 + 40);
              v20 = v21;
            }
          }

          v7 = v17;
          v12 = v20;
        }

        while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, v13, &v23));
        result = v23;
        v22 = v24;
        v17[2].n128_u64[0] = v25;
        *v17 = result;
        v17[1] = v22;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = (v8 + 40);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 80);
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, (v8 + 40), (v8 + 80)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    v14 = v9[1];
    *(a1 + 4) = *(v9 + 4);
    *a1 = v13;
    a1[1] = v14;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 40 * v8);
    v10 = (a2 - 40);
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v9, (a2 - 40)))
    {
      v12 = v10[1];
      v17 = *v10;
      v18 = v12;
      v19 = *(v10 + 4);
      do
      {
        v13 = v9;
        v14 = *v9;
        v15 = v9[1];
        *(v10 + 4) = *(v9 + 4);
        *v10 = v14;
        v10[1] = v15;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 40 * v8);
        v10 = v13;
      }

      while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v9, &v17) & 1) != 0);
      result = *&v17;
      v16 = v18;
      *v13 = v17;
      v13[1] = v16;
      *(v13 + 4) = v19;
    }
  }

  return result;
}

unsigned int *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to &>(unsigned int *a1, unsigned int *a2)
{
  v3 = std::__adjacent_find[abi:ne200100]<std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to,std::__identity>(a1, a2);
  v4 = a2;
  if (v3 != a2)
  {
    for (i = v3 + 20; i != a2; i += 10)
    {
      if (*v3 != *i || v3[1] != i[1] || v3[2] != i[2] || v3[3] != i[3])
      {
        v6 = *i;
        v7 = *(i + 1);
        *(v3 + 9) = *(i + 4);
        *(v3 + 14) = v7;
        *(v3 + 10) = v6;
        v3 += 10;
      }
    }

    return v3 + 10;
  }

  return v4;
}

unsigned int *std::__adjacent_find[abi:ne200100]<std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to,std::__identity>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 10;
    if (result + 10 == a2)
    {
      return a2;
    }

    else
    {
      v3 = *result;
      while (1)
      {
        v4 = v3;
        v3 = *v2;
        if (__PAIR64__(*(v2 - 9), v4) == *v2 && *(v2 - 8) == v2[2] && *(v2 - 7) == v2[3])
        {
          break;
        }

        v2 += 10;
        if (v2 == a2)
        {
          return a2;
        }
      }

      return v2 - 10;
    }
  }

  return result;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line_collinear_sites<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 + 40 != *(result + 32))
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      v11 = *v2;
      v12 = v5;
      *v13 = *(v2 + 32);
      *&v13[8] = *(v2 + 40);
      *&v13[24] = *(v2 + 56);
      *&v13[40] = *(v2 + 72);
      inserted = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int>(a2, v2, v2 + 40);
      v8[2] = *v13;
      v8[3] = *&v13[16];
      v8[4] = *&v13[32];
      v8[0] = v11;
      v8[1] = v12;
      v9 = 0;
      v10 = inserted;
      result = std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>(v4 + 16, v4 + 17, v8);
      v7 = v2 + 80;
      v2 += 40;
    }

    while (v7 != v4[4]);
  }

  return result;
}

void std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v48 = *a2;
  v49 = v9;
  v10 = *(a2 + 4);
  v11 = *(a4 + 16);
  *&v50[8] = *a4;
  *&v50[24] = v11;
  v12 = *(a4 + 32);
  *v50 = v10;
  *&v50[40] = v12;
  v13 = *(a4 + 16);
  v46 = *a4;
  v47 = v13;
  v14 = *(a4 + 32);
  v15 = *(a3 + 16);
  v43 = *a3;
  v44 = v15;
  v45 = *(a3 + 32);
  if (*a4 != *(a4 + 8) || *(a4 + 4) != *(a4 + 12))
  {
    v14 ^= 0x20uLL;
  }

  inserted = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int>(a6, a3, a4);
  v38 = v46;
  v39 = v47;
  *&v40[8] = v43;
  *v40 = v14;
  *&v40[24] = v44;
  *&v40[40] = v45;
  v41 = 0;
  v42 = v17;
  v18 = std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>((a1 + 128), a5, &v38);
  if (*a4 != *(a4 + 8) || *(a4 + 4) != *(a4 + 12))
  {
    v19 = *a4;
    v20 = *(a4 + 16);
    *v53 = *(a4 + 32);
    *&v53[24] = v20;
    *&v53[8] = v19;
    *v40 = *v53;
    *&v40[16] = *&v53[16];
    v51 = v19;
    v52 = v20;
    v38 = v19;
    v39 = v20;
    *&v40[32] = *(&v20 + 1);
    *&v40[40] = *v53 ^ 0x20;
    v41 = 0;
    v42 = 0;
    v21 = std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>((a1 + 128), v18, &v38);
    v18 = v21;
    v22 = *(a4 + 8);
    v24 = *(a1 + 48);
    v23 = *(a1 + 56);
    if (v24 >= v23)
    {
      v26 = *(a1 + 40);
      v27 = (v24 - v26) >> 4;
      v28 = v27 + 1;
      if ((v27 + 1) >> 60)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      v29 = v23 - v26;
      if (v29 >> 3 > v28)
      {
        v28 = v29 >> 3;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF0)
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>>(a1 + 40, v30);
      }

      v31 = (16 * v27);
      *v31 = v22;
      v31[1] = v21;
      v25 = 16 * v27 + 16;
      v32 = *(a1 + 40);
      v33 = *(a1 + 48) - v32;
      v34 = 16 * v27 - v33;
      memcpy(v31 - v33, v32, v33);
      v35 = *(a1 + 40);
      *(a1 + 40) = v34;
      *(a1 + 48) = v25;
      *(a1 + 56) = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v24 = v22;
      v24[1] = v21;
      v25 = (v24 + 2);
    }

    *(a1 + 48) = v25;
    v36 = *(a1 + 40);
    LOBYTE(v38) = *(a1 + 64);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(v36, v25, &v38, (v25 - v36) >> 4);
  }

  *v40 = *v50;
  *&v40[16] = *&v50[16];
  *&v40[32] = *&v50[32];
  v38 = v48;
  v39 = v49;
  v41 = 0;
  v42 = inserted;
  return std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>((a1 + 128), v18, &v38);
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  v8 = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3);
  v18 = 0u;
  v19 = 0u;
  if (boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v20 = 0;
  v21 = v9;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v18);
  v10 = a1[7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = v9;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v18);
  v11 = a1[7];
  if (*a1 == a1[1])
  {
    v12 = *(a2 + 32) & 0x1FLL;
    v18 = *(a2 + 24);
    *&v19 = v12;
    std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](a1, &v18);
  }

  v13 = *(a3 + 32) & 0x1FLL;
  v18 = *(a3 + 24);
  *&v19 = v13;
  std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](a1, &v18);
  v14 = *a1;
  *(v10 - 48) = *a1 + 24 * v6;
  v15 = v10 - 48;
  *(v11 - 48) = v14 + 24 * v7;
  v16 = v11 - 48;
  *(v15 + 16) = v16;
  *(v16 + 16) = v15;
  return v15;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(uint64_t a1, int *a2, int *a3)
{
  if (!boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    return 1;
  }

  v6 = *a2 != a2[2] || a2[1] != a2[3];
  v8 = *a3 == a3[2] && a3[1] == a3[3];
  return v6 ^ v8;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(uint64_t a1, int *a2, int *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = *a2 == v5 && v3 == v6;
  v9 = *a3;
  v10 = a3[2];
  if (*a3 != v10)
  {
    v12 = 1;
LABEL_22:
    if (v8 && v12)
    {
      if (v9 == v4 && a3[1] == v3)
      {
        return 0;
      }

      if (v10 == v4)
      {
        return a3[3] != v3;
      }
    }

    return 1;
  }

  v11 = a3[1];
  v12 = v11 != a3[3];
  if (v8 || v12)
  {
    goto LABEL_22;
  }

  v14 = v5 != v9 || v6 != v11;
  return (v4 != v9 || v3 != v11) && v14;
}

void std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_edge<double>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

uint64_t std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>(void *a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), a5, (a2 + 4)))
  {
    if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(a1, a3, a5);
}

void *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 56);
  v5 = 40;
  if (v3 <= v4)
  {
    v6 = 40;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + v6;
  v8 = *(a3 + 16);
  v9 = *(a3 + 56);
  if (v8 > v9)
  {
    v5 = 0;
  }

  v10 = a3 + v5;
  if (*v7 >= *(a3 + v5))
  {
    if (*v7 <= *v10)
    {
      v13 = *(v7 + 16);
      v14 = *(v10 + 16);
      if (v13 == v14)
      {
        if (v3 == v4)
        {
          v15 = *(a2 + 4);
        }

        else if (v3 > v4)
        {
          v15 = *(a2 + 4) | 0x100000000;
        }

        else
        {
          v15 = *(a2 + 44) | 0xFFFFFFFF00000000;
        }

        if (v8 == v9)
        {
          v24 = *(a3 + 4);
        }

        else if (v8 > v9)
        {
          v24 = *(a3 + 4) | 0x100000000;
        }

        else
        {
          v24 = *(a3 + 44) | 0xFFFFFFFF00000000;
        }

        v26 = v24 >= v15 && SHIDWORD(v15) < SHIDWORD(v24);
        return v15 < v24 || v26;
      }

      else if (v13 >= v14)
      {
        v20 = 4;
        if (v3 < v4)
        {
          v20 = 44;
        }

        v21 = *(a2 + v20);
        comparison_y = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::get_comparison_y(a1, a3, 0);
        if (v21 == comparison_y)
        {
          v23 = *v10 != *(v10 + 8) || *(v10 + 4) != *(v10 + 12);
          return SHIDWORD(comparison_y) > 0 || v23;
        }

        else
        {
          return v21 < comparison_y;
        }
      }

      else
      {
        v16 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::get_comparison_y(a1, a2, 0);
        v17 = 4;
        if (*(a3 + 16) < *(a3 + 56))
        {
          v17 = 44;
        }

        v18 = *(a3 + v17);
        if (v18 == v16)
        {
          v19 = *v7 == *(v7 + 8) && *(v7 + 4) == *(v7 + 12);
          return v16 < 0 && v19;
        }

        else
        {
          return v18 > v16;
        }
      }
    }

    else
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::operator()(a1, a3, (a3 + 40), v7) ^ 1;
    }
  }

  else
  {

    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::operator()(a1, a2, (a2 + 40), (a3 + v5));
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::operator()(uint64_t a1, int *a2, int *a3, int *a4)
{
  v4 = a2;
  if (*a2 == a2[2] && a2[1] == a2[3])
  {
    if (*a3 == a3[2] && a3[1] == a3[3])
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::pp(a1, a2, a3, a4);
    }

    v6 = 0;
    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ps(a1, a2, a3, a4, v6);
  }

  if (*a3 == a3[2] && a3[1] == a3[3])
  {
    a2 = a3;
    a3 = v4;
    v6 = 1;
    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ps(a1, a2, a3, a4, v6);
  }

  return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ss(a1, a2, a3, a4);
}

unint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::get_comparison_y(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 56);
  if (v3 == v4)
  {
    return *(a2 + 4);
  }

  if (v3 <= v4)
  {
    return *(a2 + 44) | 0xFFFFFFFF00000000;
  }

  if ((a3 & 1) != 0 || *a2 != *(a2 + 8) || (v6 = *(a2 + 12), *(a2 + 4) == v6))
  {
    v6 = *(a2 + 4);
  }

  return v6 | 0x100000000;
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::pp(uint64_t a1, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2 <= *a3)
  {
    if (v4 >= v5)
    {
      return a3[1] + a2[1] < 2 * a4[1];
    }

    v6 = a4[1];
    v8 = a3[1];
    if (v6 < v8)
    {
      v7 = a2[1];
      goto LABEL_8;
    }

    return 1;
  }

  else
  {
    v6 = a4[1];
    v7 = a2[1];
    if (v6 > v7)
    {
      v8 = a3[1];
LABEL_8:
      v9 = v4;
      v10 = *a4;
      return ((v7 - v6) * (v7 - v6) + (v9 - v10) * (v9 - v10)) / (v9 - v10 + v9 - v10) < ((v8 - v6) * (v8 - v6) + (v5 - v10) * (v5 - v10)) / (v5 - v10 + v5 - v10);
    }

    return 0;
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ps(uint64_t a1, int *a2, uint64_t a3, int *a4, int a5)
{
  v10 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::fast_ps(a1, a2, a3, a4, a5);
  if (v10)
  {
    return v10 == -1;
  }

  v12 = *a2 - *a4;
  v13 = ((a2[1] - a4[1]) * (a2[1] - a4[1]) + v12 * v12) / (v12 + v12);
  return (v13 < boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(a1, a3, a4)) ^ a5;
}

BOOL boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ss(uint64_t a1, int *a2, _DWORD *a3, int *a4)
{
  if (*a2 == *a3 && a2[1] == a3[1] && a2[2] == a3[2] && a2[3] == a3[3])
  {
    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a2 + 2, a4) == 1;
  }

  distance_to_segment_arc = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(a1, a2, a4);
  return distance_to_segment_arc < boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(a1, a3, a4);
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::fast_ps(uint64_t a1, int *a2, uint64_t a3, int *a4, int a5)
{
  v9 = (*(a3 + 32) >> 2) & 8;
  v10 = (a3 + v9);
  v11 = (a3 + (v9 ^ 8));
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>((a3 + v9), v11, a4) == -1)
  {
    v13 = a4[1];
    v14 = a2[1];
    if (*a3 == *(a3 + 8))
    {
      if (v13 >= v14 || a5)
      {
        if (v13 > v14)
        {
          v21 = a5;
        }

        else
        {
          v21 = 0;
        }

        return (v21 << 31 >> 31);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v15 = *a4;
      v16 = *a2;
      v18 = *v11;
      v17 = v11[1];
      v20 = *v10;
      v19 = v10[1];
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v18 - v20, v17 - v19, v15 - v16, v13 - v14) <= 0.0)
      {
        v22 = v15 - v16;
        v23 = v13 - v14;
        v24 = (v23 - v22) * ((v22 + v23) * (v18 - v20));
        v25 = v23 * (v22 * (v17 - v19 + v17 - v19));
        v26 = v24;
        v27 = v25;
        if (v24 >= 0.0)
        {
          *&v26 = 0x8000000000000000 - *&v24;
        }

        if (v25 >= 0.0)
        {
          *&v27 = 0x8000000000000000 - *&v25;
        }

        if (*&v26 - *&v27 <= 4uLL)
        {
          v28 = 0;
        }

        else
        {
          v28 = -1;
        }

        if (*&v26 > *&v27)
        {
          v29 = v28;
        }

        else
        {
          v29 = *&v27 - *&v26 > 4uLL;
        }

        v30 = v29;
        v31 = v29 ^ a5;
        if (a5)
        {
          v32 = -1;
        }

        else
        {
          v32 = 1;
        }

        if ((v30 & v31) != 0)
        {
          return v32;
        }

        else
        {
          return 0;
        }
      }

      else if ((*(a3 + 32) & 0x20) != 0)
      {
        return a5 ^ 1u;
      }

      else
      {
        return (a5 << 31 >> 31);
      }
    }
  }

  else if ((*(a3 + 32) & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a2 == *(a2 + 8))
  {
    return (*a2 - *a3) * 0.5;
  }

  v4 = (*(a2 + 32) >> 2) & 8;
  v5 = (a2 + v4);
  v6 = (a2 + (v4 ^ 8));
  v8 = *v6;
  v7 = v6[1];
  v10 = *v5;
  v9 = v5[1];
  v11 = v8 - v10;
  v12 = v7 - v9;
  v13 = sqrt(v12 * v12 + v11 * v11);
  v14 = v12 < 0.0;
  v15 = (v13 - v12) / (v11 * v11);
  v16 = 1.0 / (v12 + v13);
  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  return v17 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v8 - v10, v7 - v9, *a3 - v10, a3[1] - v9);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v7 = *(a2 - 16);
    v8 = *(a2 - 12);
    v6 = (a2 - 16);
    v9 = v8 < *(v5 + 4);
    v10 = v7 == *v5;
    v11 = v7 < *v5;
    if (v10)
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = *v6;
      v13 = *v6;
      v14 = HIDWORD(*v6);
      do
      {
        v15 = v6;
        v6 = v5;
        *v15 = *v5;
        v15[1] = *(v5 + 8);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v16 = *v5 > v13;
        if (*v5 == v13)
        {
          v16 = *(v5 + 4) > v14;
        }
      }

      while (v16);
      *v6 = v12;
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>(void *a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v6 = 1;
  result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::operator()(a1 + 160, a2, a3, a4, &v5);
  if (result)
  {
    boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::push();
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3 + 2];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(v4 + 16);
      v9 = v7 == *v4;
      v8 = v7 < *v4;
      if (v9)
      {
        v8 = *(v4 + 20) < *(v4 + 4);
      }

      v9 = !v8;
      if (v8)
      {
        v10 = 16;
      }

      else
      {
        v10 = 0;
      }

      v4 += v10;
      if (!v9)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1[1] = *(v4 + 8);
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::operator()(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v8 = a2;
  v10 = *a2;
  v11 = a2[2];
  if (*a2 != v11 || (v12 = a2[1], v12 != a2[3]))
  {
    v14 = *(a3 + 8);
    if (*a3 == v14 && *(a3 + 4) == *(a3 + 12))
    {
      if (*a4 == a4[2] && a4[1] == a4[3])
      {
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pps(a1, a3, a4, a2, 1))
        {
          return 0;
        }

        v15 = 1;
        boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(a1 + 4, a3, a4, v8, 1, a5);
        return v15;
      }

      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pss(a1, a3, a2, a4, 2))
      {
        return 0;
      }

      v16 = a1 + 4;
      v17 = a3;
      v18 = v8;
      v19 = a4;
      v20 = 2;
    }

    else
    {
      if (*a4 != a4[2] || a4[1] != a4[3])
      {
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::sss(a1, a2, a3, a4))
        {
          boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss(a1 + 4, v8, a3, a4, a5);
          return 1;
        }

        return 0;
      }

      if (v10 == *a3 && v11 == v14 && a2[1] == *(a3 + 4) && a2[3] == *(a3 + 12))
      {
        return 0;
      }

      v16 = a1 + 4;
      v17 = a4;
      v18 = v8;
      v19 = a3;
      v20 = 3;
    }

    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(v16, v17, v18, v19, v20, a5);
    return 1;
  }

  v13 = *(a3 + 8);
  if (*a3 == v13 && *(a3 + 4) == *(a3 + 12))
  {
    if (*a4 == a4[2] && a4[1] == a4[3])
    {
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a3, a4) == -1)
      {
        boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp(a1 + 4, v8, a3, a4, a5);
        return 1;
      }

      return 0;
    }

    if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pps(a1, a2, a3, a4, 3))
    {
      return 0;
    }

    v26 = a1 + 4;
    a2 = v8;
    v27 = a3;
    v28 = a4;
    v29 = 3;
LABEL_41:
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(v26, a2, v27, v28, v29, a5);
    return 1;
  }

  v21 = *a4;
  v22 = a4[2];
  if (*a4 == v22)
  {
    v23 = a4[1];
    if (v23 == a4[3])
    {
      v24 = (*(a3 + 32) >> 2) & 8;
      if (*(a3 + v24) == v10 && *(a3 + v24 + 4) == v12)
      {
        v25 = (a3 + (v24 ^ 8));
        if (*v25 == v21 && v25[1] == v23)
        {
          return 0;
        }
      }

      v26 = a1 + 4;
      v27 = a4;
      v28 = a3;
      v29 = 2;
      goto LABEL_41;
    }
  }

  if (*a3 == v21 && v13 == v22 && *(a3 + 4) == a4[1] && *(a3 + 12) == a4[3])
  {
    return 0;
  }

  v15 = 1;
  boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(a1 + 4, a2, a3, a4, 1, a5);
  return v15;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = a3[1];
  v13 = v9 - v11;
  v14 = *a4;
  v15 = a4[1];
  v16 = v11 - v14;
  v17 = v10 - v12;
  v18 = v12 - v15;
  v19 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v9 - v11, v11 - v14, v10 - v12, v12 - v15);
  v20 = *a2;
  v21 = *a3;
  v22 = 0.5 / v19;
  v23 = v20 + v21;
  v24 = v21 + *a4;
  v25 = a2[1];
  v26 = a3[1];
  v27 = v25 + v26;
  v28 = a4[1];
  v29 = v26 + v28;
  v43 = v20 - *a4;
  v44 = v22;
  v42 = v25 - v28;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = v13 * v23;
  *&v46 = v18 * (v13 * v23);
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v50, &v46);
  v31 = v17 * v27;
  *&v46 = v18 * v31;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v50, &v46);
  v32 = v16 * v24;
  *&v46 = v17 * v32;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v50, &v46);
  v33 = v18 * v29;
  *&v46 = v17 * v33;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v50, &v46);
  *&v46 = v13 * v32;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v48, &v46);
  *&v46 = v13 * v33;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v48, &v46);
  *&v46 = v16 * v30;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v48, &v46);
  *&v46 = v16 * v31;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v48, &v46);
  v46 = v50;
  v47 = v51;
  v45[0] = sqrt((v17 * v17 + v13 * v13) * (v18 * v18 + v16 * v16) * (v42 * v42 + v43 * v43));
  v45[1] = 5.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v46, v45);
  v34 = v44 * boost::polygon::detail::robust_fpt<double>::operator-(&v50, &v51);
  v35 = v44 * boost::polygon::detail::robust_fpt<double>::operator-(&v48, &v49);
  v36 = boost::polygon::detail::robust_fpt<double>::operator-(&v46, &v47);
  *a5 = v34;
  *(a5 + 8) = v35;
  *(a5 + 16) = v44 * v36;
  *(a5 + 24) = 1;
  boost::polygon::detail::robust_fpt<double>::operator-(&v50, &v51);
  v38 = v37;
  boost::polygon::detail::robust_fpt<double>::operator-(&v48, &v49);
  v40 = v39;
  boost::polygon::detail::robust_fpt<double>::operator-(&v46, &v47);
  if (v38 > 64.0 || v40 > 64.0 || v41 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp();
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pps(uint64_t a1, int *a2, int *a3, uint64_t a4, int a5)
{
  v8 = (*(a4 + 32) >> 2) & 8;
  v9 = (a4 + v8);
  if (a5 == 2)
  {
    if (*v9 != *a2)
    {
      return 1;
    }

    if (v9[1] != a2[1])
    {
      return 1;
    }

    v10 = (a4 + (v8 ^ 8));
    return *v10 != *a3 || v10[1] != a3[1];
  }

  v12 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a3, v9);
  v13 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a3, (a4 + (~(*(a4 + 32) >> 2) & 8)));
  if (a5 == 3)
  {
    if (*a3 >= *a2)
    {
      return v13 == -1;
    }

    return v12 == -1 || v13 == -1;
  }

  if (a5 != 1 || *a2 < *a3)
  {
    return v12 == -1 || v13 == -1;
  }

  return v12 == -1;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(uint64_t a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a4 + 32) >> 2) & 8;
  v13 = (a4 + (v12 ^ 8));
  v14 = (a4 + v12);
  v15 = *v14;
  v16 = v14[1];
  v17 = v15;
  v20 = v13;
  v18 = *v13;
  v19 = v20[1];
  v22 = *a3;
  v21 = a3[1];
  v24 = *a2;
  v23 = a2[1];
  v25 = v21 - v23;
  v79 = v24;
  v80 = v18;
  v26 = v22;
  v27 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v19 - v16, v15 - v18, v22 - v24, v21 - v23);
  v28 = (*(a4 + 32) >> 2) & 8;
  v29 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*(a4 + (v28 ^ 8) + 4) - *(a4 + v28 + 4), *(a4 + v28) - *(a4 + (v28 ^ 8)), *(a4 + 12) - a2[1], *a2 - *(a4 + 8));
  v96[0] = v29;
  v30 = (*(a4 + 32) >> 2) & 8;
  v31 = (a4 + (v30 ^ 8));
  v32 = v31[1] - *(a4 + v30 + 4);
  v33 = *(a4 + v30) - *v31;
  v34 = *a3;
  v35 = *(a4 + 8);
  v36 = *(a4 + 12) - a3[1];
  v96[1] = 1.0;
  v37 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v32, v33, v36, v34 - v35);
  v95[0] = v37;
  v95[1] = 1.0;
  v38 = (*(a4 + 32) >> 2) & 8;
  v39 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a3[1] - a2[1], *a2 - *a3, *(a4 + (v38 ^ 8) + 4) - *(a4 + v38 + 4), *(a4 + v38) - *(a4 + (v38 ^ 8)));
  v40 = 1.0;
  v93 = 0u;
  *v94 = 0u;
  if (v39 == 0.0)
  {
    *&v91 = v27 / (v29 * 8.0);
    *(&v91 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v93, &v91);
    *&v91 = v29 / (v27 + v27);
    *(&v91 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v93, &v91);
  }

  else
  {
    *&v91 = v27 * v27;
    *(&v91 + 1) = 0x4008000000000000;
    *&v89 = v39 * v39;
    *(&v89 + 1) = 0x4008000000000000;
    v40 = 1.0;
    *&v91 = sqrt(boost::polygon::detail::robust_fpt<double>::operator+(&v91, &v89) * v29 * v37) / (v39 * v39);
    *(&v91 + 1) = (v41 + 1.0 + 1.0 + 1.0 + 1.0) * 0.5 + 1.0 + 3.0 + 1.0;
    if (a5 == 2)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v93, &v91);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v93, &v91);
    }

    *&v91 = v27 * boost::polygon::detail::robust_fpt<double>::operator+(v96, v95) / (v39 * (v39 + v39));
    *(&v91 + 1) = v42 + 1.0 + 1.0 + 4.0 + 1.0;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v93, &v91);
  }

  v43 = v17 - v80;
  v44 = v79 - v26;
  v91 = 0u;
  v92 = 0u;
  v45 = *a2;
  v46 = *a3;
  v89 = 0u;
  v90 = 0u;
  v87 = COERCE_UNSIGNED_INT64((v45 + v46) * 0.5);
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v91, &v87);
  if (v25 >= 0.0)
  {
    v47 = *(&v93 + 1);
    v48 = v25 * *&v93;
    v49 = v94[1];
    v50 = v25 * v94[0];
  }

  else
  {
    v47 = v94[1];
    v48 = -(v25 * v94[0]);
    v49 = *(&v93 + 1);
    v50 = -(v25 * *&v93);
  }

  v51 = v19 - v16;
  *&v87 = v48;
  *(&v87 + 1) = v47 + 0.0 + 1.0;
  *&v88 = v50;
  *(&v88 + 1) = v49 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v91, &v87);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v92, &v88);
  *&v87 = (a2[1] + a3[1]) * 0.5;
  *(&v87 + 1) = 0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v89, &v87);
  if (v44 >= 0.0)
  {
    v52 = *(&v93 + 1);
    v53 = v44 * *&v93;
    v54 = v94[1];
    v55 = v44 * v94[0];
  }

  else
  {
    v52 = v94[1];
    v53 = -(v44 * v94[0]);
    v54 = *(&v93 + 1);
    v55 = -(v44 * *&v93);
  }

  *&v87 = v53;
  *(&v87 + 1) = v52 + 0.0 + 1.0;
  *&v88 = v55;
  *(&v88 + 1) = v54 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v89, &v87);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v90, &v88);
  v87 = 0u;
  v88 = 0u;
  v85 = v91;
  v86 = v92;
  v81 = v51 * *a4;
  v82 = 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v87, &v81);
  v81 = v43 * *(a4 + 4);
  v82 = 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v87, &v81);
  if (v51 >= 0.0)
  {
    v56 = *(&v91 + 1);
    v57 = v51 * *&v91;
    v58 = *(&v92 + 1);
    v59 = v51 * *&v92;
  }

  else
  {
    v56 = *(&v92 + 1);
    v57 = -(v51 * *&v92);
    v58 = *(&v91 + 1);
    v59 = -(v51 * *&v91);
  }

  v60 = sqrt(v43 * v43 + v51 * v51);
  v81 = v57;
  v82 = v56 + 0.0 + 1.0;
  v83 = v59;
  v84 = v58 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v87, &v81);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v88, &v83);
  if (v43 >= 0.0)
  {
    v61 = *(&v89 + 1);
    v62 = v43 * *&v89;
    v63 = *(&v90 + 1);
    v64 = v43 * *&v90;
  }

  else
  {
    v61 = *(&v90 + 1);
    v62 = -(v43 * *&v90);
    v63 = *(&v89 + 1);
    v64 = -(v43 * *&v89);
  }

  v65 = v40 / v60;
  v81 = v62;
  v82 = v61 + 0.0 + 1.0;
  v83 = v64;
  v84 = v63 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v87, &v81);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v88, &v83);
  v66 = v87;
  v68 = *(&v88 + 1);
  v67 = *&v88;
  if (*&v87 >= *&v88)
  {
    v69 = *(&v88 + 1);
    v70 = *&v88;
    v68 = *(&v87 + 1);
    v67 = *&v87;
  }

  else
  {
    v87 = v88;
    v69 = *(&v66 + 1);
    v70 = *&v66;
    v88 = v66;
  }

  v81 = v65 * v67;
  v82 = v68 + 3.0 + 1.0;
  v83 = v65 * v70;
  v84 = v69 + 3.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v85, &v81);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v86, &v83);
  v71 = boost::polygon::detail::robust_fpt<double>::operator-(&v91, &v92);
  v72 = boost::polygon::detail::robust_fpt<double>::operator-(&v89, &v90);
  v73 = boost::polygon::detail::robust_fpt<double>::operator-(&v85, &v86);
  *a6 = v71;
  *(a6 + 8) = v72;
  *(a6 + 16) = v73;
  *(a6 + 24) = 1;
  boost::polygon::detail::robust_fpt<double>::operator-(&v91, &v92);
  v75 = v74;
  boost::polygon::detail::robust_fpt<double>::operator-(&v89, &v90);
  v77 = v76;
  boost::polygon::detail::robust_fpt<double>::operator-(&v85, &v86);
  if (v75 > 64.0 || v77 > 64.0 || v78 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(a1, a2, a3, a4, a5, a6, v75 > 64.0, v77 > 64.0, v78 > 64.0);
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pss(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*a3 == *a4 && *(a3 + 4) == *(a4 + 4) && *(a3 + 8) == *(a4 + 8) && *(a3 + 12) == *(a4 + 12))
  {
    return 0;
  }

  if (a5 == 2)
  {
    v5 = *(a3 + 32);
    v6 = *(a4 + 32);
    if ((v5 & 0x20) != 0)
    {
      if ((v6 & 0x20) == 0)
      {
        return 1;
      }
    }

    else if ((v6 & 0x20) != 0)
    {
      return 0;
    }

    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>((a3 + ((v5 >> 2) & 8)), a2, (a4 + (~(v6 >> 2) & 8))) != -1)
    {
      return 0;
    }
  }

  return 1;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a3 + 32) >> 2) & 8;
  v9 = (a3 + (v8 ^ 8));
  v10 = (a3 + v8);
  v11 = (*(a4 + 32) >> 2) & 8;
  v12 = (a4 + v11);
  v13 = (a4 + (v11 ^ 8));
  v14 = *v10;
  v15 = v10[1];
  v16 = *v9;
  v17 = v9[1];
  v18 = v14 - v16;
  v19 = v15 - v17;
  v20 = *v13;
  v21 = v13[1];
  v23 = *v12;
  v22 = v12[1];
  v24 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v15 - v17, v14 - v16, v21 - v22, v20 - v23);
  if (v24 == 0.0)
  {
    v25 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v10[1] - v9[1], *v10 - *v9, v12[1] - v9[1], *v12 - *v9);
    v26 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*v10 - *v9, v10[1] - v9[1], *a2 - *v9, a2[1] - v9[1]);
    v27 = v26 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v10[1] - v9[1], *v10 - *v9, a2[1] - v12[1], *a2 - *v12);
    v138 = 0u;
    v139 = 0u;
    *&v136 = v18 * -(*a2 - (*v9 + *v12) * 0.5);
    *(&v136 + 1) = 0x3FF0000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v138.f64, &v136);
    *&v136 = v19 * -(a2[1] - (v9[1] + v12[1]) * 0.5);
    *(&v136 + 1) = 0x3FF0000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v138.f64, &v136);
    *&v136 = sqrt(v27);
    *(&v136 + 1) = 0x4004000000000000;
    if (a5 == 2)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(v138.f64, &v136);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v138.f64, &v136);
    }

    __asm { FMOV            V0.2D, #3.0 }

    v36 = vaddq_f64(v138, _Q0);
    v37 = vaddq_f64(v139, _Q0);
    _Q0.f64[0] = v19 * v19 + v18 * v18;
    *&v38.f64[0] = *&vdivq_f64(v138, _Q0);
    v38.f64[1] = v36.f64[1];
    *&_Q0.f64[0] = *&vdivq_f64(v139, _Q0);
    _Q0.f64[1] = v37.f64[1];
    v138 = v38;
    v139 = _Q0;
    v136 = 0u;
    v137 = 0u;
    v38.f64[0] = *v9;
    v39 = *v12;
    v134 = 0u;
    v135 = 0u;
    v132 = COERCE_UNSIGNED_INT64((v38.f64[0] + v39) * 0.5);
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v136, &v132);
    if (v18 >= 0.0)
    {
      v40 = v138.f64[1];
      v41 = v18 * v138.f64[0];
      v42 = v139.f64[1];
      v43 = v18 * v139.f64[0];
    }

    else
    {
      v40 = v139.f64[1];
      v41 = -(v18 * v139.f64[0]);
      v42 = v138.f64[1];
      v43 = -(v18 * v138.f64[0]);
    }

    *&v132 = v41;
    *(&v132 + 1) = v40 + 0.0 + 1.0;
    *&v133 = v43;
    *(&v133 + 1) = v42 + 0.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v136, &v132);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v137, &v133);
    *&v132 = (v9[1] + v12[1]) * 0.5;
    *(&v132 + 1) = 0;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v134, &v132);
    if (v19 >= 0.0)
    {
      v44 = v138.f64[1];
      v45 = v19 * v138.f64[0];
      v46 = v139.f64[1];
      v47 = v19 * v139.f64[0];
    }

    else
    {
      v44 = v139.f64[1];
      v45 = -(v19 * v139.f64[0]);
      v46 = v138.f64[1];
      v47 = -(v19 * v138.f64[0]);
    }

    *&v132 = v45;
    *(&v132 + 1) = v44 + 0.0 + 1.0;
    *&v133 = v47;
    *(&v133 + 1) = v46 + 0.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v134, &v132);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v135, &v133);
    v132 = v136;
    v133 = v137;
    *&v128 = v25 * 0.5 / sqrt(v19 * v19 + v18 * v18);
    *(&v128 + 1) = 0x4014000000000000;
    if (v25 >= 0.0)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v132, &v128);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v132, &v128);
    }

    boost::polygon::detail::robust_fpt<double>::operator-(&v136, &v137);
    v49 = v48;
    boost::polygon::detail::robust_fpt<double>::operator-(&v134, &v135);
    v51 = v50;
    v52 = &v132;
    boost::polygon::detail::robust_fpt<double>::operator-(&v132, &v133);
    v54 = v53;
    v55 = boost::polygon::detail::robust_fpt<double>::operator-(&v136, &v137);
    v56 = boost::polygon::detail::robust_fpt<double>::operator-(&v134, &v135);
    v57 = &v132;
  }

  else
  {
    v28 = v20 - v23;
    v29 = sqrt(v19 * v19 + v18 * v18);
    v114 = v21 - v22;
    v130 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*v10 - *v9, v10[1] - v9[1], v12[1] - v13[1], *v13 - *v12);
    v131 = 1.0;
    v118 = sqrt(v114 * v114 + v28 * v28);
    v138.f64[0] = v29 * v118;
    v138.f64[1] = 5.0;
    if (v130 < 0.0)
    {
      v130 = v24 * v24 / boost::polygon::detail::robust_fpt<double>::operator-(v138.f64, &v130);
      v131 = v30 + 3.0 + 1.0;
    }

    else
    {
      boost::polygon::detail::robust_fpt<double>::operator+=(&v130, v138.f64);
    }

    v111 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v10[1] - v9[1], *v10 - *v9, v10[1] - a2[1], *v10 - *a2);
    v112 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*v13 - *v12, v13[1] - v12[1], *v13 - *a2, v13[1] - a2[1]);
    v110 = v130;
    v58 = v131 + 0.0 + 1.0 + 1.0;
    v59 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v10[1] - v9[1], *v10 - *v9, v10[1], *v10);
    v60 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*v13 - *v12, v13[1] - v12[1], *v13, v13[1]);
    v113 = v24;
    v61 = 1.0 / v24;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    *&v128 = v61 * (v28 * v59);
    *(&v128 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v134, &v128);
    *&v128 = v61 * (v18 * v60);
    *(&v128 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v134, &v128);
    *&v128 = v61 * (v19 * v60);
    *(&v128 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v132, &v128);
    *&v128 = v61 * (v114 * v59);
    *(&v128 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v132, &v128);
    v62 = v18 * v118;
    if (v18 * v118 >= 0.0)
    {
      v63 = *(&v134 + 1);
      v64 = *&v134;
      v65 = *(&v135 + 1);
      v66 = *&v135;
    }

    else
    {
      v63 = *(&v135 + 1);
      v64 = -*&v135;
      v65 = *(&v134 + 1);
      v66 = -*&v134;
    }

    *&v128 = v62 * v64;
    *(&v128 + 1) = v63 + 3.0 + 1.0;
    *&v129 = v62 * v66;
    *(&v129 + 1) = v65 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v136, &v128);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v137, &v129);
    v67 = v28 * v29;
    if (v28 * v29 >= 0.0)
    {
      v68 = *(&v134 + 1);
      v69 = *&v134;
      v70 = *(&v135 + 1);
      v71 = *&v135;
    }

    else
    {
      v68 = *(&v135 + 1);
      v69 = -*&v135;
      v70 = *(&v134 + 1);
      v71 = -*&v134;
    }

    *&v128 = v67 * v69;
    *(&v128 + 1) = v68 + 3.0 + 1.0;
    *&v129 = v67 * v71;
    *(&v129 + 1) = v70 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v136, &v128);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v137, &v129);
    v72 = v19 * v118;
    if (v19 * v118 >= 0.0)
    {
      v73 = *(&v132 + 1);
      v74 = *&v132;
      v75 = *(&v133 + 1);
      v76 = *&v133;
    }

    else
    {
      v73 = *(&v133 + 1);
      v74 = -*&v133;
      v75 = *(&v132 + 1);
      v76 = -*&v132;
    }

    *&v128 = v72 * v74;
    *(&v128 + 1) = v73 + 3.0 + 1.0;
    *&v129 = v72 * v76;
    *(&v129 + 1) = v75 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v136, &v128);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v137, &v129);
    v77 = v29 * v114;
    if (v29 * v114 >= 0.0)
    {
      v78 = *(&v132 + 1);
      v79 = *&v132;
      v80 = *(&v133 + 1);
      v81 = *&v133;
    }

    else
    {
      v78 = *(&v133 + 1);
      v79 = -*&v133;
      v80 = *(&v132 + 1);
      v81 = -*&v132;
    }

    *&v128 = v77 * v79;
    *(&v128 + 1) = v78 + 3.0 + 1.0;
    *&v129 = v77 * v81;
    *(&v129 + 1) = v80 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v136, &v128);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v137, &v129);
    *&v128 = v29 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*v13 - *v12, v13[1] - v12[1], -a2[1], *a2);
    *(&v128 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v136, &v128);
    *&v128 = v118 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*v10 - *v9, v10[1] - v9[1], -a2[1], *a2);
    *(&v128 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v136, &v128);
    boost::polygon::detail::robust_fpt<double>::operator+=(v138.f64, &v137);
    boost::polygon::detail::robust_fpt<double>::operator+=(v139.f64, &v136);
    *&v128 = sqrt(v112 * (v111 * (v110 + v110)));
    *(&v128 + 1) = (v58 + 1.0 + 1.0 + 1.0) * 0.5 + 1.0;
    if (a5 == 2)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(v138.f64, &v128);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v138.f64, &v128);
    }

    v82 = v131 + v131 + 1.0 + 1.0;
    v83 = v138.f64[1] + v82;
    v84 = v138.f64[0] / (v130 * v130);
    v138.f64[0] = v84;
    v138.f64[1] = v138.f64[1] + v82;
    v85 = v82 + v139.f64[1];
    v86 = v139.f64[0] / (v130 * v130);
    v139.f64[0] = v86;
    v139.f64[1] = v85;
    v128 = v134;
    v129 = v135;
    v126 = v132;
    v127 = v133;
    if (v62 >= 0.0)
    {
      v88 = v83;
      v83 = v85;
    }

    else
    {
      v87 = -v86;
      v86 = -v84;
      v84 = v87;
      v88 = v85;
    }

    *&v124 = v62 * v84;
    *(&v124 + 1) = v88 + 3.0 + 1.0;
    *&v125 = v62 * v86;
    *(&v125 + 1) = v83 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v124);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v129, &v125);
    if (v67 >= 0.0)
    {
      v89 = v138.f64[1];
      v90 = v138.f64[0];
      v91 = v139.f64[1];
      v92 = v139.f64[0];
    }

    else
    {
      v89 = v139.f64[1];
      v90 = -v139.f64[0];
      v91 = v138.f64[1];
      v92 = -v138.f64[0];
    }

    *&v124 = v67 * v90;
    *(&v124 + 1) = v89 + 3.0 + 1.0;
    *&v125 = v67 * v92;
    *(&v125 + 1) = v91 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v124);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v129, &v125);
    if (v72 >= 0.0)
    {
      v93 = v138.f64[1];
      v94 = v138.f64[0];
      v95 = v139.f64[1];
      v96 = v139.f64[0];
    }

    else
    {
      v93 = v139.f64[1];
      v94 = -v139.f64[0];
      v95 = v138.f64[1];
      v96 = -v138.f64[0];
    }

    *&v124 = v72 * v94;
    *(&v124 + 1) = v93 + 3.0 + 1.0;
    *&v125 = v72 * v96;
    *(&v125 + 1) = v95 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v126, &v124);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v125);
    if (v77 >= 0.0)
    {
      v97 = v138.f64[1];
      v98 = v138.f64[0];
      v99 = v139.f64[1];
      v100 = v139.f64[0];
    }

    else
    {
      v97 = v139.f64[1];
      v98 = -v139.f64[0];
      v99 = v138.f64[1];
      v100 = -v138.f64[0];
    }

    *&v124 = v77 * v98;
    *(&v124 + 1) = v97 + 3.0 + 1.0;
    *&v125 = v77 * v100;
    *(&v125 + 1) = v99 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v126, &v124);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v125);
    v101 = v138.f64[0];
    v102 = v139.f64[0];
    if (v138.f64[0] >= v139.f64[0])
    {
      v104 = v139.f64[0];
      v102 = v138.f64[0];
    }

    else
    {
      v103 = v138.f64[1];
      v138 = v139;
      v139.f64[0] = v101;
      v139.f64[1] = v103;
      v104 = v101;
    }

    v124 = v128;
    v125 = v129;
    if (v113 >= 0.0)
    {
      v120 = v113 * v102;
      v121 = v138.f64[1] + 1.0 + 1.0;
      v122 = v113 * v104;
      v123 = v139.f64[1] + 1.0 + 1.0;
      boost::polygon::detail::robust_fpt<double>::operator+=(&v124, &v120);
      v105 = &v122;
    }

    else
    {
      v120 = -(v104 * v113);
      v121 = v139.f64[1] + 1.0 + 1.0;
      v122 = -(v102 * v113);
      v123 = v138.f64[1] + 1.0 + 1.0;
      boost::polygon::detail::robust_fpt<double>::operator+=(&v124, &v122);
      v105 = &v120;
    }

    boost::polygon::detail::robust_fpt<double>::operator+=(&v125, v105);
    boost::polygon::detail::robust_fpt<double>::operator-(&v128, &v129);
    v49 = v106;
    boost::polygon::detail::robust_fpt<double>::operator-(&v126, &v127);
    v51 = v107;
    v52 = &v124;
    boost::polygon::detail::robust_fpt<double>::operator-(&v124, &v125);
    v54 = v108;
    v55 = boost::polygon::detail::robust_fpt<double>::operator-(&v128, &v129);
    v56 = boost::polygon::detail::robust_fpt<double>::operator-(&v126, &v127);
    v57 = &v124;
  }

  v109 = boost::polygon::detail::robust_fpt<double>::operator-(v57, v52 + 2);
  *a6 = v55;
  *(a6 + 8) = v56;
  *(a6 + 16) = v109;
  *(a6 + 24) = 1;
  if (v49 > 64.0 || v51 > 64.0 || v54 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(a1, a2, a3, a4, a5, a6, v49 > 64.0, v51 > 64.0, v54 > 64.0);
  }
}