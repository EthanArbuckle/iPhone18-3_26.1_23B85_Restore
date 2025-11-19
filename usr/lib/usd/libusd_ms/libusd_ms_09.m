uint64_t Alembic::AbcGeom::v12::ONuPatchSchema::ONuPatchSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v25 = *(a2 + 4);
  v26 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  LODWORD(v23) = 1;
  LODWORD(v24) = v12;
  sub_29A05E3F4(a1, &v25, a3, &v23, a4, a5, a6);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  *a1 = &unk_2A203DD60;
  *(a1 + 272) = 2;
  sub_29A008E78((a1 + 280), "");
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 2;
  sub_29A008E78((a1 + 328), "");
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 2;
  sub_29A008E78((a1 + 376), "");
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 2;
  sub_29A008E78((a1 + 424), "");
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 2;
  sub_29A008E78((a1 + 472), "");
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 2;
  sub_29A008E78((a1 + 520), "");
  *(a1 + 544) = 0u;
  *(a1 + 560) = 2;
  sub_29A008E78((a1 + 568), "");
  *(a1 + 592) = 0u;
  *(a1 + 608) = 2;
  sub_29A008E78((a1 + 616), "");
  *(a1 + 640) = 0u;
  sub_29A0653DC(a1 + 656);
  sub_29A0654B4(a1 + 832);
  *(a1 + 1008) = 2;
  sub_29A008E78((a1 + 1016), "");
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 2;
  sub_29A008E78((a1 + 1064), "");
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 2;
  sub_29A008E78((a1 + 1112), "");
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 2;
  sub_29A008E78((a1 + 1160), "");
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 2;
  sub_29A008E78((a1 + 1208), "");
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 2;
  sub_29A008E78((a1 + 1256), "");
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 2;
  sub_29A008E78((a1 + 1304), "");
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 2;
  sub_29A008E78((a1 + 1352), "");
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 2;
  sub_29A008E78((a1 + 1400), "");
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 2;
  sub_29A008E78((a1 + 1448), "");
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 2;
  sub_29A008E78((a1 + 1496), "");
  *(a1 + 1520) = 0u;
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  sub_29A057858(a4, a5, a6, &v21, &v23);
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v13 = sub_29A057978(a4, a5, a6, &v21);
  if (v23)
  {
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 24))(&v19);
    (*(*v19 + 24))(&v21);
    v16 = (*(*v21 + 48))(v21, v23);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    v16 = v13;
  }

  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v17 = sub_29A0585D8(a4, a5, a6, &v21);
  Alembic::AbcGeom::v12::ONuPatchSchema::init(a1, v16, v17);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return a1;
}

void sub_29A05EC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 186));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 180));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 174));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 168));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 162));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 156));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 150));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 144));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 138));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 132));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 126));
  sub_29A050A50((v14 + 104));
  sub_29A050A50((v14 + 82));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 76));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 70));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 64));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 58));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 52));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 46));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 40));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 34));
  sub_29A05E7C4(v14);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::set(Alembic::AbcGeom::v12::ONuPatchSchema *this, uint64_t a2)
{
  if ((*(this + 248) & 1) == 0 && !sub_29A060884(a2))
  {
    v201[33] = this + 8;
    v201[34] = "ONuPatchSchema::set()";
    if (*(a2 + 48) == 127 || !*(a2 + 40) && *(a2 + 64) == *(a2 + 56))
    {
      goto LABEL_15;
    }

    if (*(this + 1039) < 0)
    {
      if (!*(this + 128))
      {
        goto LABEL_13;
      }
    }

    else if (!*(this + 1039))
    {
LABEL_13:
      if (*(this + 130))
      {
        goto LABEL_15;
      }
    }

    Alembic::AbcGeom::v12::ONuPatchSchema::createVelocityProperty(this);
LABEL_15:
    if (*(a2 + 312) != 127 && (*(a2 + 304) || *(a2 + 328) != *(a2 + 320)) && !sub_29A051208(this + 832))
    {
      Alembic::AbcGeom::v12::ONuPatchSchema::createUVsProperty(this, a2);
    }

    if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)) && !sub_29A051208(this + 656))
    {
      Alembic::AbcGeom::v12::ONuPatchSchema::createNormalsProperty(this, a2);
    }

    if (*(a2 + 184) == 127 || !*(a2 + 176) && *(a2 + 200) == *(a2 + 192))
    {
LABEL_34:
      if (*(a2 + 760) != 1)
      {
        goto LABEL_41;
      }

      if (*(this + 1087) < 0)
      {
        if (!*(this + 134))
        {
          goto LABEL_39;
        }
      }

      else if (!*(this + 1087))
      {
LABEL_39:
        if (*(this + 136))
        {
          goto LABEL_41;
        }
      }

      Alembic::AbcGeom::v12::ONuPatchSchema::createTrimPropreties(this);
LABEL_41:
      if (*(this + 32))
      {
        v192 = *(this + 68);
        if (*(this + 303) < 0)
        {
          sub_29A008D14(&v193, *(this + 35), *(this + 36));
        }

        else
        {
          v193 = *(this + 280);
          v194 = *(this + 37);
        }

        v4 = *(this + 39);
        v195 = *(this + 38);
        v196 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
        }

        v5 = *(a2 + 5);
        *v188 = *a2;
        *&v188[5] = v5;
        __p = 0;
        v191 = 0;
        v190 = 0;
        sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
        if (SHIBYTE(v194) < 0)
        {
          if (*(&v193 + 1))
          {
            goto LABEL_86;
          }
        }

        else if (HIBYTE(v194))
        {
          goto LABEL_86;
        }

        if (v195)
        {
          if (*&v188[8] == 127 || !*v188 && v190 == __p)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v192);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v192);
          }
        }

LABEL_86:
        if (__p)
        {
          v190 = __p;
          operator delete(__p);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v192);
        v183 = *(this + 80);
        if (*(this + 351) < 0)
        {
          sub_29A008D14(&v184, *(this + 41), *(this + 42));
        }

        else
        {
          v184 = *(this + 328);
          v185 = *(this + 43);
        }

        v6 = *(this + 45);
        v186 = *(this + 44);
        v187 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v7 = *(a2 + 80);
        LODWORD(v200.f64[0]) = v7;
        if (SHIBYTE(v185) < 0)
        {
          if (*(&v184 + 1))
          {
            goto LABEL_101;
          }
        }

        else if (HIBYTE(v185))
        {
          goto LABEL_101;
        }

        if (v186)
        {
          if (v7 == -536870912)
          {
            Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v183);
          }

          else
          {
            Alembic::Abc::v12::OScalarProperty::set(&v183, &v200);
          }
        }

LABEL_101:
        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v183);
        v178 = *(this + 92);
        if (*(this + 399) < 0)
        {
          sub_29A008D14(&v179, *(this + 47), *(this + 48));
        }

        else
        {
          v179 = *(this + 376);
          v180 = *(this + 49);
        }

        v8 = *(this + 51);
        v181 = *(this + 50);
        v182 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v9 = *(a2 + 84);
        LODWORD(v200.f64[0]) = v9;
        if (SHIBYTE(v180) < 0)
        {
          if (*(&v179 + 1))
          {
            goto LABEL_114;
          }
        }

        else if (HIBYTE(v180))
        {
          goto LABEL_114;
        }

        if (v181)
        {
          if (v9 == -536870912)
          {
            Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v178);
          }

          else
          {
            Alembic::Abc::v12::OScalarProperty::set(&v178, &v200);
          }
        }

LABEL_114:
        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v178);
        v173 = *(this + 104);
        if (*(this + 447) < 0)
        {
          sub_29A008D14(&v174, *(this + 53), *(this + 54));
        }

        else
        {
          v174 = *(this + 424);
          v175 = *(this + 55);
        }

        v10 = *(this + 57);
        v176 = *(this + 56);
        v177 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(a2 + 88);
        LODWORD(v200.f64[0]) = v11;
        if (SHIBYTE(v175) < 0)
        {
          if (*(&v174 + 1))
          {
            goto LABEL_127;
          }
        }

        else if (HIBYTE(v175))
        {
          goto LABEL_127;
        }

        if (v176)
        {
          if (v11 == -536870912)
          {
            Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v173);
          }

          else
          {
            Alembic::Abc::v12::OScalarProperty::set(&v173, &v200);
          }
        }

LABEL_127:
        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v173);
        v168 = *(this + 116);
        if (*(this + 495) < 0)
        {
          sub_29A008D14(&v169, *(this + 59), *(this + 60));
        }

        else
        {
          v169 = *(this + 472);
          v170 = *(this + 61);
        }

        v12 = *(this + 63);
        v171 = *(this + 62);
        v172 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = *(a2 + 92);
        LODWORD(v200.f64[0]) = v13;
        if (SHIBYTE(v170) < 0)
        {
          if (*(&v169 + 1))
          {
            goto LABEL_140;
          }
        }

        else if (HIBYTE(v170))
        {
          goto LABEL_140;
        }

        if (v171)
        {
          if (v13 == -536870912)
          {
            Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v168);
          }

          else
          {
            Alembic::Abc::v12::OScalarProperty::set(&v168, &v200);
          }
        }

LABEL_140:
        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v168);
        v163 = *(this + 128);
        if (*(this + 543) < 0)
        {
          sub_29A008D14(&v164, *(this + 65), *(this + 66));
        }

        else
        {
          v164 = *(this + 520);
          v165 = *(this + 67);
        }

        v14 = *(this + 69);
        v166 = *(this + 68);
        v167 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = *(a2 + 101);
        *v159 = *(a2 + 96);
        *&v159[5] = v15;
        v160 = 0;
        v162 = 0;
        v161 = 0;
        sub_29A00E7E0(&v160, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
        if (SHIBYTE(v165) < 0)
        {
          if (*(&v164 + 1))
          {
            goto LABEL_155;
          }
        }

        else if (HIBYTE(v165))
        {
          goto LABEL_155;
        }

        if (v166)
        {
          if (*&v159[8] == 127 || !*v159 && v161 == v160)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v163);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v163);
          }
        }

LABEL_155:
        if (v160)
        {
          v161 = v160;
          operator delete(v160);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v163);
        v154 = *(this + 140);
        if (*(this + 591) < 0)
        {
          sub_29A008D14(&v155, *(this + 71), *(this + 72));
        }

        else
        {
          v155 = *(this + 568);
          v156 = *(this + 73);
        }

        v16 = *(this + 75);
        v157 = *(this + 74);
        v158 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(a2 + 141);
        *v150 = *(a2 + 136);
        *&v150[5] = v17;
        v151 = 0;
        v153 = 0;
        v152 = 0;
        sub_29A00E7E0(&v151, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 3);
        if (SHIBYTE(v156) < 0)
        {
          if (*(&v155 + 1))
          {
            goto LABEL_172;
          }
        }

        else if (HIBYTE(v156))
        {
          goto LABEL_172;
        }

        if (v157)
        {
          if (*&v150[8] == 127 || !*v150 && v152 == v151)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v154);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v154);
          }
        }

LABEL_172:
        if (v151)
        {
          v152 = v151;
          operator delete(v151);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v154);
        if (sub_29A051208(this + 832))
        {
          sub_29A04F06C(this + 832, a2 + 304);
        }

        if (sub_29A051208(this + 656))
        {
          sub_29A04F394(this + 656, a2 + 216);
        }

        if (*(this + 639) < 0)
        {
          if (*(this + 78) || !*(this + 80))
          {
            goto LABEL_200;
          }

          v145 = *(this + 152);
          sub_29A008D14(&v146, *(this + 77), 0);
          v18 = *(this + 80);
        }

        else
        {
          if (*(this + 639))
          {
            goto LABEL_200;
          }

          v18 = *(this + 80);
          if (!v18)
          {
            goto LABEL_200;
          }

          v145 = *(this + 152);
          v147 = *(this + 79);
          v146 = *(this + 616);
        }

        v19 = *(this + 81);
        v148 = v18;
        v149 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(a2 + 181);
        *v141 = *(a2 + 176);
        *&v141[5] = v20;
        v142 = 0;
        v144 = 0;
        v143 = 0;
        sub_29A00E7E0(&v142, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 3);
        if (SHIBYTE(v147) < 0)
        {
          if (!*(&v146 + 1))
          {
            goto LABEL_191;
          }
        }

        else if (!HIBYTE(v147))
        {
LABEL_191:
          if (v148)
          {
            if (*&v141[8] == 127 || !*v141 && v143 == v142)
            {
              Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v145);
            }

            else
            {
              Alembic::Abc::v12::OArrayProperty::set(&v145);
            }
          }
        }

        if (v142)
        {
          v143 = v142;
          operator delete(v142);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v145);
LABEL_200:
        if (*(this + 1039) < 0)
        {
          if (*(this + 128) || !*(this + 130))
          {
            goto LABEL_222;
          }

          v136 = *(this + 252);
          sub_29A008D14(&v137, *(this + 127), 0);
          v21 = *(this + 130);
        }

        else
        {
          if (*(this + 1039))
          {
            goto LABEL_222;
          }

          v21 = *(this + 130);
          if (!v21)
          {
            goto LABEL_222;
          }

          v136 = *(this + 252);
          v138 = *(this + 129);
          v137 = *(this + 1016);
        }

        v22 = *(this + 131);
        v139 = v21;
        v140 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = *(a2 + 45);
        *v132 = *(a2 + 40);
        *&v132[5] = v23;
        v133 = 0;
        v135 = 0;
        v134 = 0;
        sub_29A00E7E0(&v133, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
        if (SHIBYTE(v138) < 0)
        {
          if (!*(&v137 + 1))
          {
            goto LABEL_213;
          }
        }

        else if (!HIBYTE(v138))
        {
LABEL_213:
          if (v139)
          {
            if (*&v132[8] == 127 || !*v132 && v134 == v133)
            {
              Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v136);
            }

            else
            {
              Alembic::Abc::v12::OArrayProperty::set(&v136);
            }
          }
        }

        if (v133)
        {
          v134 = v133;
          operator delete(v133);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v136);
LABEL_222:
        if (*(this + 1087) < 0)
        {
          if (*(this + 134) || !*(this + 136))
          {
            goto LABEL_393;
          }

          v127 = *(this + 264);
          sub_29A008D14(&v128, *(this + 133), 0);
          v24 = *(this + 136);
        }

        else
        {
          if (*(this + 1087))
          {
            goto LABEL_393;
          }

          v24 = *(this + 136);
          if (!v24)
          {
            goto LABEL_393;
          }

          v127 = *(this + 264);
          v129 = *(this + 135);
          v128 = *(this + 1064);
        }

        v25 = *(this + 137);
        v130 = v24;
        v131 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = *(a2 + 392);
        LODWORD(v200.f64[0]) = v26;
        if (SHIBYTE(v129) < 0)
        {
          if (*(&v128 + 1))
          {
            goto LABEL_239;
          }
        }

        else if (HIBYTE(v129))
        {
          goto LABEL_239;
        }

        if (v130)
        {
          if (v26 == -536870912)
          {
            Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v127);
          }

          else
          {
            Alembic::Abc::v12::OScalarProperty::set(&v127, &v200);
          }
        }

LABEL_239:
        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v127);
        v122 = *(this + 276);
        if (*(this + 1135) < 0)
        {
          sub_29A008D14(&v123, *(this + 139), *(this + 140));
        }

        else
        {
          v123 = *(this + 1112);
          v124 = *(this + 141);
        }

        v27 = *(this + 143);
        v125 = *(this + 142);
        v126 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        v28 = *(a2 + 405);
        *v118 = *(a2 + 400);
        *&v118[5] = v28;
        v119 = 0;
        v121 = 0;
        v120 = 0;
        sub_29A00E7E0(&v119, *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 3);
        if (SHIBYTE(v124) < 0)
        {
          if (*(&v123 + 1))
          {
            goto LABEL_254;
          }
        }

        else if (HIBYTE(v124))
        {
          goto LABEL_254;
        }

        if (v125)
        {
          if (*&v118[8] == 127 || !*v118 && v120 == v119)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v122);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v122);
          }
        }

LABEL_254:
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v122);
        v113 = *(this + 288);
        if (*(this + 1183) < 0)
        {
          sub_29A008D14(&v114, *(this + 145), *(this + 146));
        }

        else
        {
          v114 = *(this + 1160);
          v115 = *(this + 147);
        }

        v29 = *(this + 149);
        v116 = *(this + 148);
        v117 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = *(a2 + 445);
        *v109 = *(a2 + 440);
        *&v109[5] = v30;
        v110 = 0;
        v112 = 0;
        v111 = 0;
        sub_29A00E7E0(&v110, *(a2 + 456), *(a2 + 464), (*(a2 + 464) - *(a2 + 456)) >> 3);
        if (SHIBYTE(v115) < 0)
        {
          if (*(&v114 + 1))
          {
            goto LABEL_271;
          }
        }

        else if (HIBYTE(v115))
        {
          goto LABEL_271;
        }

        if (v116)
        {
          if (*&v109[8] == 127 || !*v109 && v111 == v110)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v113);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v113);
          }
        }

LABEL_271:
        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v113);
        v104 = *(this + 300);
        if (*(this + 1231) < 0)
        {
          sub_29A008D14(&v105, *(this + 151), *(this + 152));
        }

        else
        {
          v105 = *(this + 1208);
          v106 = *(this + 153);
        }

        v31 = *(this + 155);
        v107 = *(this + 154);
        v108 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = *(a2 + 485);
        *v100 = *(a2 + 480);
        *&v100[5] = v32;
        v101 = 0;
        v103 = 0;
        v102 = 0;
        sub_29A00E7E0(&v101, *(a2 + 496), *(a2 + 504), (*(a2 + 504) - *(a2 + 496)) >> 3);
        if (SHIBYTE(v106) < 0)
        {
          if (*(&v105 + 1))
          {
            goto LABEL_288;
          }
        }

        else if (HIBYTE(v106))
        {
          goto LABEL_288;
        }

        if (v107)
        {
          if (*&v100[8] == 127 || !*v100 && v102 == v101)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v104);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v104);
          }
        }

LABEL_288:
        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v104);
        v95 = *(this + 312);
        if (*(this + 1279) < 0)
        {
          sub_29A008D14(&v96, *(this + 157), *(this + 158));
        }

        else
        {
          v96 = *(this + 1256);
          v97 = *(this + 159);
        }

        v33 = *(this + 161);
        v98 = *(this + 160);
        v99 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        v34 = *(a2 + 525);
        *v91 = *(a2 + 520);
        *&v91[5] = v34;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        sub_29A00E7E0(&v92, *(a2 + 536), *(a2 + 544), (*(a2 + 544) - *(a2 + 536)) >> 3);
        if (SHIBYTE(v97) < 0)
        {
          if (*(&v96 + 1))
          {
            goto LABEL_305;
          }
        }

        else if (HIBYTE(v97))
        {
          goto LABEL_305;
        }

        if (v98)
        {
          if (*&v91[8] == 127 || !*v91 && v93 == v92)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v95);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v95);
          }
        }

LABEL_305:
        if (v92)
        {
          v93 = v92;
          operator delete(v92);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v95);
        v86 = *(this + 324);
        if (*(this + 1327) < 0)
        {
          sub_29A008D14(&v87, *(this + 163), *(this + 164));
        }

        else
        {
          v87 = *(this + 1304);
          v88 = *(this + 165);
        }

        v35 = *(this + 167);
        v89 = *(this + 166);
        v90 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        v36 = *(a2 + 565);
        *v82 = *(a2 + 560);
        *&v82[5] = v36;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        sub_29A00E7E0(&v83, *(a2 + 576), *(a2 + 584), (*(a2 + 584) - *(a2 + 576)) >> 3);
        if (SHIBYTE(v88) < 0)
        {
          if (*(&v87 + 1))
          {
            goto LABEL_322;
          }
        }

        else if (HIBYTE(v88))
        {
          goto LABEL_322;
        }

        if (v89)
        {
          if (*&v82[8] == 127 || !*v82 && v84 == v83)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v86);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v86);
          }
        }

LABEL_322:
        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v86);
        v77 = *(this + 336);
        if (*(this + 1375) < 0)
        {
          sub_29A008D14(&v78, *(this + 169), *(this + 170));
        }

        else
        {
          v78 = *(this + 1352);
          v79 = *(this + 171);
        }

        v37 = *(this + 173);
        v80 = *(this + 172);
        v81 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
        }

        v38 = *(a2 + 605);
        *v73 = *(a2 + 600);
        *&v73[5] = v38;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        sub_29A00E7E0(&v74, *(a2 + 616), *(a2 + 624), (*(a2 + 624) - *(a2 + 616)) >> 3);
        if (SHIBYTE(v79) < 0)
        {
          if (*(&v78 + 1))
          {
            goto LABEL_339;
          }
        }

        else if (HIBYTE(v79))
        {
          goto LABEL_339;
        }

        if (v80)
        {
          if (*&v73[8] == 127 || !*v73 && v75 == v74)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v77);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v77);
          }
        }

LABEL_339:
        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v77);
        v68 = *(this + 348);
        if (*(this + 1423) < 0)
        {
          sub_29A008D14(&v69, *(this + 175), *(this + 176));
        }

        else
        {
          v69 = *(this + 1400);
          v70 = *(this + 177);
        }

        v39 = *(this + 179);
        v71 = *(this + 178);
        v72 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
        }

        v40 = *(a2 + 645);
        *v64 = *(a2 + 640);
        *&v64[5] = v40;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        sub_29A00E7E0(&v65, *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 3);
        if (SHIBYTE(v70) < 0)
        {
          if (*(&v69 + 1))
          {
            goto LABEL_356;
          }
        }

        else if (HIBYTE(v70))
        {
          goto LABEL_356;
        }

        if (v71)
        {
          if (*&v64[8] == 127 || !*v64 && v66 == v65)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v68);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v68);
          }
        }

LABEL_356:
        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v68);
        v59 = *(this + 360);
        if (*(this + 1471) < 0)
        {
          sub_29A008D14(&v60, *(this + 181), *(this + 182));
        }

        else
        {
          v60 = *(this + 1448);
          v61 = *(this + 183);
        }

        v41 = *(this + 185);
        v62 = *(this + 184);
        v63 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = *(a2 + 685);
        *v55 = *(a2 + 680);
        *&v55[5] = v42;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        sub_29A00E7E0(&v56, *(a2 + 696), *(a2 + 704), (*(a2 + 704) - *(a2 + 696)) >> 3);
        if (SHIBYTE(v61) < 0)
        {
          if (*(&v60 + 1))
          {
            goto LABEL_373;
          }
        }

        else if (HIBYTE(v61))
        {
          goto LABEL_373;
        }

        if (v62)
        {
          if (*&v55[8] == 127 || !*v55 && v57 == v56)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v59);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v59);
          }
        }

LABEL_373:
        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v59);
        v50 = *(this + 372);
        if (*(this + 1519) < 0)
        {
          sub_29A008D14(&v51, *(this + 187), *(this + 188));
        }

        else
        {
          v51 = *(this + 1496);
          v52 = *(this + 189);
        }

        v43 = *(this + 191);
        v53 = *(this + 190);
        v54 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
        }

        *v46 = *(a2 + 720);
        *&v46[5] = *(a2 + 725);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        sub_29A00E7E0(&v47, *(a2 + 736), *(a2 + 744), (*(a2 + 744) - *(a2 + 736)) >> 3);
        if (SHIBYTE(v52) < 0)
        {
          if (!*(&v51 + 1))
          {
            goto LABEL_384;
          }
        }

        else if (!HIBYTE(v52))
        {
LABEL_384:
          if (v53)
          {
            if (*&v46[8] == 127 || !*v46 && v48 == v47)
            {
              Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v50);
            }

            else
            {
              Alembic::Abc::v12::OArrayProperty::set(&v50);
            }
          }
        }

        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v50);
LABEL_393:
        if (*(a2 + 792) <= *(a2 + 768) || *(a2 + 800) <= *(a2 + 776) || *(a2 + 808) <= *(a2 + 784))
        {
          if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
          {
            Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
          }

          else
          {
            sub_29A04EF90(a2, &v200);
            Alembic::Abc::v12::OScalarProperty::set((this + 56), &v200);
          }

          goto LABEL_402;
        }

        goto LABEL_396;
      }

      if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
      {
        sub_29A008864(&v200);
        sub_29A00911C(v201, "Sample 0 must have valid data for all mesh components", 53);
        std::stringbuf::str();
        sub_29A008C60(v199, &v197);
        if (v198 < 0)
        {
          operator delete(v197);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v45 = sub_29A008E1C(exception, v199);
        __cxa_throw(v45, &unk_2A203B108, sub_29A008B08);
      }

      Alembic::Abc::v12::OArrayProperty::set(this + 272);
      LODWORD(v200.f64[0]) = *(a2 + 80);
      Alembic::Abc::v12::OScalarProperty::set((this + 320), &v200);
      LODWORD(v200.f64[0]) = *(a2 + 84);
      Alembic::Abc::v12::OScalarProperty::set((this + 368), &v200);
      LODWORD(v200.f64[0]) = *(a2 + 88);
      Alembic::Abc::v12::OScalarProperty::set((this + 416), &v200);
      LODWORD(v200.f64[0]) = *(a2 + 92);
      Alembic::Abc::v12::OScalarProperty::set((this + 464), &v200);
      Alembic::Abc::v12::OArrayProperty::set(this + 512);
      Alembic::Abc::v12::OArrayProperty::set(this + 560);
      if (*(this + 1087) < 0)
      {
        if (*(this + 134))
        {
          goto LABEL_63;
        }
      }

      else if (*(this + 1087))
      {
        goto LABEL_63;
      }

      if (*(this + 136))
      {
        LODWORD(v200.f64[0]) = *(a2 + 392);
        Alembic::Abc::v12::OScalarProperty::set((this + 1056), &v200);
        Alembic::Abc::v12::OArrayProperty::set(this + 1104);
        Alembic::Abc::v12::OArrayProperty::set(this + 1152);
        Alembic::Abc::v12::OArrayProperty::set(this + 1200);
        Alembic::Abc::v12::OArrayProperty::set(this + 1248);
        Alembic::Abc::v12::OArrayProperty::set(this + 1296);
        Alembic::Abc::v12::OArrayProperty::set(this + 1344);
        Alembic::Abc::v12::OArrayProperty::set(this + 1392);
        Alembic::Abc::v12::OArrayProperty::set(this + 1440);
        Alembic::Abc::v12::OArrayProperty::set(this + 1488);
      }

LABEL_63:
      if (*(this + 639) < 0)
      {
        if (*(this + 78))
        {
          goto LABEL_69;
        }
      }

      else if (*(this + 639))
      {
        goto LABEL_69;
      }

      if (*(this + 80))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 608);
      }

LABEL_69:
      if (*(this + 1039) < 0)
      {
        if (*(this + 128))
        {
          goto LABEL_75;
        }
      }

      else if (*(this + 1039))
      {
        goto LABEL_75;
      }

      if (*(this + 130))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 1008);
      }

LABEL_75:
      if (sub_29A051208(this + 832))
      {
        sub_29A04F06C(this + 832, a2 + 304);
      }

      if (sub_29A051208(this + 656))
      {
        sub_29A04F394(this + 656, a2 + 216);
      }

      if (*(a2 + 792) < *(a2 + 768) || *(a2 + 800) < *(a2 + 776) || *(a2 + 808) < *(a2 + 784))
      {
        sub_29A04EF90(a2, &v200);
        Alembic::Abc::v12::OScalarProperty::set((this + 56), &v200);
LABEL_402:
        ++*(this + 32);
        return;
      }

LABEL_396:
      Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 768));
      goto LABEL_402;
    }

    if (*(this + 639) < 0)
    {
      if (!*(this + 78))
      {
        goto LABEL_32;
      }
    }

    else if (!*(this + 639))
    {
LABEL_32:
      if (*(this + 80))
      {
        goto LABEL_34;
      }
    }

    Alembic::AbcGeom::v12::ONuPatchSchema::createPositionWeightsProperty(this);
    goto LABEL_34;
  }

  Alembic::AbcGeom::v12::ONuPatchSchema::selectiveSet(this, a2);
}

void sub_29A06051C(void *a1, int a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(va);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v7 - 64, v10);
  }

  else
  {
    sub_29A02D6F8(v7 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A060488);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::selectiveSet(Alembic::AbcGeom::v12::ONuPatchSchema *this, uint64_t a2)
{
  v210 = this + 8;
  v211 = "ONuPatchSchema::selectiveSet()";
  if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
  {
    if (*(this + 303) < 0)
    {
      if (!*(this + 36))
      {
        goto LABEL_8;
      }
    }

    else if (!*(this + 303))
    {
LABEL_8:
      if (*(this + 38))
      {
        goto LABEL_10;
      }
    }

    Alembic::AbcGeom::v12::ONuPatchSchema::createPositionProperties(this);
  }

LABEL_10:
  if (!sub_29A064050(a2))
  {
    goto LABEL_17;
  }

  if (*(this + 351) < 0)
  {
    if (!*(this + 42))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 351))
  {
LABEL_15:
    if (*(this + 44))
    {
      goto LABEL_17;
    }
  }

  Alembic::AbcGeom::v12::ONuPatchSchema::createKnotProperties(this);
LABEL_17:
  if (*(this + 303) < 0)
  {
    if (*(this + 36) || !*(this + 38))
    {
      goto LABEL_46;
    }

    v205 = *(this + 68);
    sub_29A008D14(&v206, *(this + 35), 0);
    v4 = *(this + 38);
  }

  else
  {
    if (*(this + 303))
    {
      goto LABEL_46;
    }

    v4 = *(this + 38);
    if (!v4)
    {
      goto LABEL_46;
    }

    v205 = *(this + 68);
    v207 = *(this + 37);
    v206 = *(this + 280);
  }

  v5 = *(this + 39);
  v208 = v4;
  v209 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v201 = *a2;
  *&v201[5] = v6;
  v202 = 0;
  v203 = 0;
  v204 = 0;
  sub_29A00E7E0(&v202, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v207) < 0)
  {
    if (!*(&v206 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (!HIBYTE(v207))
  {
LABEL_30:
    if (v208)
    {
      if (*&v201[8] == 127 || !*v201 && v203 == v202)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v205);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v205);
      }
    }
  }

  if (v202)
  {
    v203 = v202;
    operator delete(v202);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v205);
  if (*(a2 + 792) <= *(a2 + 768) || *(a2 + 800) <= *(a2 + 776) || *(a2 + 808) <= *(a2 + 784))
  {
    if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
    {
      sub_29A04EF90(a2, v200);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), v200);
    }
  }

  else
  {
    Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 768));
  }

LABEL_46:
  if (*(this + 351) < 0)
  {
    if (*(this + 42) || !*(this + 44))
    {
      goto LABEL_137;
    }

    v195 = *(this + 80);
    sub_29A008D14(&v196, *(this + 41), 0);
    v7 = *(this + 44);
  }

  else
  {
    if (*(this + 351))
    {
      goto LABEL_137;
    }

    v7 = *(this + 44);
    if (!v7)
    {
      goto LABEL_137;
    }

    v195 = *(this + 80);
    v197 = *(this + 43);
    v196 = *(this + 328);
  }

  v8 = *(this + 45);
  v198 = v7;
  v199 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 80);
  LODWORD(v200[0].f64[0]) = v9;
  if (SHIBYTE(v197) < 0)
  {
    if (*(&v196 + 1))
    {
      goto LABEL_63;
    }
  }

  else if (HIBYTE(v197))
  {
    goto LABEL_63;
  }

  if (v198)
  {
    if (v9 == -536870912)
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v195);
    }

    else
    {
      Alembic::Abc::v12::OScalarProperty::set(&v195, v200);
    }
  }

LABEL_63:
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v195);
  v190 = *(this + 92);
  if (*(this + 399) < 0)
  {
    sub_29A008D14(&v191, *(this + 47), *(this + 48));
  }

  else
  {
    v191 = *(this + 376);
    v192 = *(this + 49);
  }

  v10 = *(this + 51);
  v193 = *(this + 50);
  v194 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 84);
  LODWORD(v200[0].f64[0]) = v11;
  if (SHIBYTE(v192) < 0)
  {
    if (*(&v191 + 1))
    {
      goto LABEL_76;
    }
  }

  else if (HIBYTE(v192))
  {
    goto LABEL_76;
  }

  if (v193)
  {
    if (v11 == -536870912)
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v190);
    }

    else
    {
      Alembic::Abc::v12::OScalarProperty::set(&v190, v200);
    }
  }

LABEL_76:
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v190);
  v185 = *(this + 104);
  if (*(this + 447) < 0)
  {
    sub_29A008D14(&v186, *(this + 53), *(this + 54));
  }

  else
  {
    v186 = *(this + 424);
    v187 = *(this + 55);
  }

  v12 = *(this + 57);
  v188 = *(this + 56);
  v189 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 88);
  LODWORD(v200[0].f64[0]) = v13;
  if (SHIBYTE(v187) < 0)
  {
    if (*(&v186 + 1))
    {
      goto LABEL_89;
    }
  }

  else if (HIBYTE(v187))
  {
    goto LABEL_89;
  }

  if (v188)
  {
    if (v13 == -536870912)
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v185);
    }

    else
    {
      Alembic::Abc::v12::OScalarProperty::set(&v185, v200);
    }
  }

LABEL_89:
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v185);
  v180 = *(this + 116);
  if (*(this + 495) < 0)
  {
    sub_29A008D14(&v181, *(this + 59), *(this + 60));
  }

  else
  {
    v181 = *(this + 472);
    v182 = *(this + 61);
  }

  v14 = *(this + 63);
  v183 = *(this + 62);
  v184 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 92);
  LODWORD(v200[0].f64[0]) = v15;
  if (SHIBYTE(v182) < 0)
  {
    if (*(&v181 + 1))
    {
      goto LABEL_102;
    }
  }

  else if (HIBYTE(v182))
  {
    goto LABEL_102;
  }

  if (v183)
  {
    if (v15 == -536870912)
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v180);
    }

    else
    {
      Alembic::Abc::v12::OScalarProperty::set(&v180, v200);
    }
  }

LABEL_102:
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v180);
  v175 = *(this + 128);
  if (*(this + 543) < 0)
  {
    sub_29A008D14(&v176, *(this + 65), *(this + 66));
  }

  else
  {
    v176 = *(this + 520);
    v177 = *(this + 67);
  }

  v16 = *(this + 69);
  v178 = *(this + 68);
  v179 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 101);
  *v171 = *(a2 + 96);
  *&v171[5] = v17;
  __p = 0;
  v174 = 0;
  v173 = 0;
  sub_29A00E7E0(&__p, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  if (SHIBYTE(v177) < 0)
  {
    if (*(&v176 + 1))
    {
      goto LABEL_117;
    }
  }

  else if (HIBYTE(v177))
  {
    goto LABEL_117;
  }

  if (v178)
  {
    if (*&v171[8] == 127 || !*v171 && v173 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v175);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v175);
    }
  }

LABEL_117:
  if (__p)
  {
    v173 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v175);
  v166 = *(this + 140);
  if (*(this + 591) < 0)
  {
    sub_29A008D14(&v167, *(this + 71), *(this + 72));
  }

  else
  {
    v167 = *(this + 568);
    v168 = *(this + 73);
  }

  v18 = *(this + 75);
  v169 = *(this + 74);
  v170 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a2 + 141);
  *v162 = *(a2 + 136);
  *&v162[5] = v19;
  v163 = 0;
  v165 = 0;
  v164 = 0;
  sub_29A00E7E0(&v163, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 3);
  if (SHIBYTE(v168) < 0)
  {
    if (!*(&v167 + 1))
    {
      goto LABEL_128;
    }
  }

  else if (!HIBYTE(v168))
  {
LABEL_128:
    if (v169)
    {
      if (*&v162[8] == 127 || !*v162 && v164 == v163)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v166);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v166);
      }
    }
  }

  if (v163)
  {
    v164 = v163;
    operator delete(v163);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v166);
LABEL_137:
  if (*(a2 + 48) != 127 && (*(a2 + 40) || *(a2 + 64) != *(a2 + 56)))
  {
    if (*(this + 1039) < 0)
    {
      if (!*(this + 128))
      {
        goto LABEL_144;
      }
    }

    else if (!*(this + 1039))
    {
LABEL_144:
      if (*(this + 130))
      {
        goto LABEL_146;
      }
    }

    Alembic::AbcGeom::v12::ONuPatchSchema::createVelocityProperty(this);
  }

LABEL_146:
  if (*(this + 1039) < 0)
  {
    if (*(this + 128) || !*(this + 130))
    {
      goto LABEL_171;
    }

    v157 = *(this + 252);
    sub_29A008D14(&v158, *(this + 127), 0);
    v20 = *(this + 130);
LABEL_153:
    v21 = *(this + 131);
    v160 = v20;
    v161 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(a2 + 45);
    *v153 = *(a2 + 40);
    *&v153[5] = v22;
    v154 = 0;
    v156 = 0;
    v155 = 0;
    sub_29A00E7E0(&v154, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    if (SHIBYTE(v159) < 0)
    {
      if (*(&v158 + 1))
      {
        goto LABEL_165;
      }
    }

    else if (HIBYTE(v159))
    {
      goto LABEL_165;
    }

    if (v160)
    {
      if (*&v153[8] == 127 || !*v153 && v155 == v154)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v157);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v157);
      }
    }

LABEL_165:
    if (v154)
    {
      v155 = v154;
      operator delete(v154);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v157);
    if ((*(this + 1039) & 0x80000000) == 0)
    {
      if (*(this + 1039))
      {
        goto LABEL_189;
      }

      goto LABEL_169;
    }

LABEL_171:
    if (*(this + 128) || !*(this + 130))
    {
      goto LABEL_189;
    }

    v148 = *(this + 252);
    sub_29A008D14(&v149, *(this + 127), 0);
    v23 = *(this + 130);
    goto LABEL_174;
  }

  if (*(this + 1039))
  {
    goto LABEL_189;
  }

  v20 = *(this + 130);
  if (v20)
  {
    v157 = *(this + 252);
    v159 = *(this + 129);
    v158 = *(this + 1016);
    goto LABEL_153;
  }

LABEL_169:
  v23 = *(this + 130);
  if (!v23)
  {
    goto LABEL_189;
  }

  v148 = *(this + 252);
  v150 = *(this + 129);
  v149 = *(this + 1016);
LABEL_174:
  v24 = *(this + 131);
  v151 = v23;
  v152 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(a2 + 45);
  *v144 = *(a2 + 40);
  *&v144[5] = v25;
  v145 = 0;
  v147 = 0;
  v146 = 0;
  sub_29A00E7E0(&v145, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  if (SHIBYTE(v150) < 0)
  {
    if (!*(&v149 + 1))
    {
      goto LABEL_180;
    }
  }

  else if (!HIBYTE(v150))
  {
LABEL_180:
    if (v151)
    {
      if (*&v144[8] == 127 || !*v144 && v146 == v145)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v148);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v148);
      }
    }
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v148);
LABEL_189:
  if (*(a2 + 312) != 127 && (*(a2 + 304) || *(a2 + 328) != *(a2 + 320)) && !sub_29A051208(this + 832))
  {
    Alembic::AbcGeom::v12::ONuPatchSchema::createUVsProperty(this, a2);
  }

  if (sub_29A051208(this + 832))
  {
    sub_29A04F06C(this + 832, a2 + 304);
  }

  if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)) && !sub_29A051208(this + 656))
  {
    Alembic::AbcGeom::v12::ONuPatchSchema::createNormalsProperty(this, a2);
  }

  if (sub_29A051208(this + 656))
  {
    sub_29A04F394(this + 656, a2 + 216);
  }

  if (*(a2 + 184) != 127 && (*(a2 + 176) || *(a2 + 200) != *(a2 + 192)))
  {
    if (*(this + 639) < 0)
    {
      if (!*(this + 78))
      {
        goto LABEL_210;
      }
    }

    else if (!*(this + 639))
    {
LABEL_210:
      if (*(this + 80))
      {
        goto LABEL_212;
      }
    }

    Alembic::AbcGeom::v12::ONuPatchSchema::createPositionWeightsProperty(this);
  }

LABEL_212:
  if (*(this + 639) < 0)
  {
    if (*(this + 78) || !*(this + 80))
    {
      goto LABEL_234;
    }

    v139 = *(this + 152);
    sub_29A008D14(&v140, *(this + 77), 0);
    v26 = *(this + 80);
  }

  else
  {
    if (*(this + 639))
    {
      goto LABEL_234;
    }

    v26 = *(this + 80);
    if (!v26)
    {
      goto LABEL_234;
    }

    v139 = *(this + 152);
    v141 = *(this + 79);
    v140 = *(this + 616);
  }

  v27 = *(this + 81);
  v142 = v26;
  v143 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = *(a2 + 181);
  *v135 = *(a2 + 176);
  *&v135[5] = v28;
  v136 = 0;
  v138 = 0;
  v137 = 0;
  sub_29A00E7E0(&v136, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 3);
  if (SHIBYTE(v141) < 0)
  {
    if (!*(&v140 + 1))
    {
      goto LABEL_225;
    }
  }

  else if (!HIBYTE(v141))
  {
LABEL_225:
    if (v142)
    {
      if (*&v135[8] == 127 || !*v135 && v137 == v136)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v139);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v139);
      }
    }
  }

  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v139);
LABEL_234:
  if (*(a2 + 760) != 1)
  {
    goto LABEL_241;
  }

  if (*(this + 1087) < 0)
  {
    if (!*(this + 134))
    {
      goto LABEL_239;
    }
  }

  else if (!*(this + 1087))
  {
LABEL_239:
    if (*(this + 136))
    {
      goto LABEL_241;
    }
  }

  Alembic::AbcGeom::v12::ONuPatchSchema::createTrimPropreties(this);
LABEL_241:
  if (*(this + 1087) < 0)
  {
    if (*(this + 134) || !*(this + 136))
    {
      goto LABEL_412;
    }

    v130 = *(this + 264);
    sub_29A008D14(&v131, *(this + 133), 0);
    v29 = *(this + 136);
  }

  else
  {
    if (*(this + 1087))
    {
      goto LABEL_412;
    }

    v29 = *(this + 136);
    if (!v29)
    {
      goto LABEL_412;
    }

    v130 = *(this + 264);
    v132 = *(this + 135);
    v131 = *(this + 1064);
  }

  v30 = *(this + 137);
  v133 = v29;
  v134 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *(a2 + 392);
  LODWORD(v200[0].f64[0]) = v31;
  if (SHIBYTE(v132) < 0)
  {
    if (*(&v131 + 1))
    {
      goto LABEL_258;
    }
  }

  else if (HIBYTE(v132))
  {
    goto LABEL_258;
  }

  if (v133)
  {
    if (v31 == -536870912)
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v130);
    }

    else
    {
      Alembic::Abc::v12::OScalarProperty::set(&v130, v200);
    }
  }

LABEL_258:
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v130);
  v125 = *(this + 276);
  if (*(this + 1135) < 0)
  {
    sub_29A008D14(&v126, *(this + 139), *(this + 140));
  }

  else
  {
    v126 = *(this + 1112);
    v127 = *(this + 141);
  }

  v32 = *(this + 143);
  v128 = *(this + 142);
  v129 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = *(a2 + 405);
  *v121 = *(a2 + 400);
  *&v121[5] = v33;
  v122 = 0;
  v124 = 0;
  v123 = 0;
  sub_29A00E7E0(&v122, *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 3);
  if (SHIBYTE(v127) < 0)
  {
    if (*(&v126 + 1))
    {
      goto LABEL_273;
    }
  }

  else if (HIBYTE(v127))
  {
    goto LABEL_273;
  }

  if (v128)
  {
    if (*&v121[8] == 127 || !*v121 && v123 == v122)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v125);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v125);
    }
  }

LABEL_273:
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v125);
  v116 = *(this + 288);
  if (*(this + 1183) < 0)
  {
    sub_29A008D14(&v117, *(this + 145), *(this + 146));
  }

  else
  {
    v117 = *(this + 1160);
    v118 = *(this + 147);
  }

  v34 = *(this + 149);
  v119 = *(this + 148);
  v120 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  v35 = *(a2 + 445);
  *v112 = *(a2 + 440);
  *&v112[5] = v35;
  v113 = 0;
  v115 = 0;
  v114 = 0;
  sub_29A00E7E0(&v113, *(a2 + 456), *(a2 + 464), (*(a2 + 464) - *(a2 + 456)) >> 3);
  if (SHIBYTE(v118) < 0)
  {
    if (*(&v117 + 1))
    {
      goto LABEL_290;
    }
  }

  else if (HIBYTE(v118))
  {
    goto LABEL_290;
  }

  if (v119)
  {
    if (*&v112[8] == 127 || !*v112 && v114 == v113)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v116);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v116);
    }
  }

LABEL_290:
  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v116);
  v107 = *(this + 300);
  if (*(this + 1231) < 0)
  {
    sub_29A008D14(&v108, *(this + 151), *(this + 152));
  }

  else
  {
    v108 = *(this + 1208);
    v109 = *(this + 153);
  }

  v36 = *(this + 155);
  v110 = *(this + 154);
  v111 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v37 = *(a2 + 485);
  *v103 = *(a2 + 480);
  *&v103[5] = v37;
  v104 = 0;
  v106 = 0;
  v105 = 0;
  sub_29A00E7E0(&v104, *(a2 + 496), *(a2 + 504), (*(a2 + 504) - *(a2 + 496)) >> 3);
  if (SHIBYTE(v109) < 0)
  {
    if (*(&v108 + 1))
    {
      goto LABEL_307;
    }
  }

  else if (HIBYTE(v109))
  {
    goto LABEL_307;
  }

  if (v110)
  {
    if (*&v103[8] == 127 || !*v103 && v105 == v104)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v107);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v107);
    }
  }

LABEL_307:
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v107);
  v98 = *(this + 312);
  if (*(this + 1279) < 0)
  {
    sub_29A008D14(&v99, *(this + 157), *(this + 158));
  }

  else
  {
    v99 = *(this + 1256);
    v100 = *(this + 159);
  }

  v38 = *(this + 161);
  v101 = *(this + 160);
  v102 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v39 = *(a2 + 525);
  *v94 = *(a2 + 520);
  *&v94[5] = v39;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  sub_29A00E7E0(&v95, *(a2 + 536), *(a2 + 544), (*(a2 + 544) - *(a2 + 536)) >> 3);
  if (SHIBYTE(v100) < 0)
  {
    if (*(&v99 + 1))
    {
      goto LABEL_324;
    }
  }

  else if (HIBYTE(v100))
  {
    goto LABEL_324;
  }

  if (v101)
  {
    if (*&v94[8] == 127 || !*v94 && v96 == v95)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v98);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v98);
    }
  }

LABEL_324:
  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v98);
  v89 = *(this + 324);
  if (*(this + 1327) < 0)
  {
    sub_29A008D14(&v90, *(this + 163), *(this + 164));
  }

  else
  {
    v90 = *(this + 1304);
    v91 = *(this + 165);
  }

  v40 = *(this + 167);
  v92 = *(this + 166);
  v93 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  v41 = *(a2 + 565);
  *v85 = *(a2 + 560);
  *&v85[5] = v41;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  sub_29A00E7E0(&v86, *(a2 + 576), *(a2 + 584), (*(a2 + 584) - *(a2 + 576)) >> 3);
  if (SHIBYTE(v91) < 0)
  {
    if (*(&v90 + 1))
    {
      goto LABEL_341;
    }
  }

  else if (HIBYTE(v91))
  {
    goto LABEL_341;
  }

  if (v92)
  {
    if (*&v85[8] == 127 || !*v85 && v87 == v86)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v89);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v89);
    }
  }

LABEL_341:
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v89);
  v80 = *(this + 336);
  if (*(this + 1375) < 0)
  {
    sub_29A008D14(&v81, *(this + 169), *(this + 170));
  }

  else
  {
    v81 = *(this + 1352);
    v82 = *(this + 171);
  }

  v42 = *(this + 173);
  v83 = *(this + 172);
  v84 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

  v43 = *(a2 + 605);
  *v76 = *(a2 + 600);
  *&v76[5] = v43;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_29A00E7E0(&v77, *(a2 + 616), *(a2 + 624), (*(a2 + 624) - *(a2 + 616)) >> 3);
  if (SHIBYTE(v82) < 0)
  {
    if (*(&v81 + 1))
    {
      goto LABEL_358;
    }
  }

  else if (HIBYTE(v82))
  {
    goto LABEL_358;
  }

  if (v83)
  {
    if (*&v76[8] == 127 || !*v76 && v78 == v77)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v80);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v80);
    }
  }

LABEL_358:
  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v80);
  v71 = *(this + 348);
  if (*(this + 1423) < 0)
  {
    sub_29A008D14(&v72, *(this + 175), *(this + 176));
  }

  else
  {
    v72 = *(this + 1400);
    v73 = *(this + 177);
  }

  v44 = *(this + 179);
  v74 = *(this + 178);
  v75 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  v45 = *(a2 + 645);
  *v67 = *(a2 + 640);
  *&v67[5] = v45;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  sub_29A00E7E0(&v68, *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 3);
  if (SHIBYTE(v73) < 0)
  {
    if (*(&v72 + 1))
    {
      goto LABEL_375;
    }
  }

  else if (HIBYTE(v73))
  {
    goto LABEL_375;
  }

  if (v74)
  {
    if (*&v67[8] == 127 || !*v67 && v69 == v68)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v71);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v71);
    }
  }

LABEL_375:
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v71);
  v62 = *(this + 360);
  if (*(this + 1471) < 0)
  {
    sub_29A008D14(&v63, *(this + 181), *(this + 182));
  }

  else
  {
    v63 = *(this + 1448);
    v64 = *(this + 183);
  }

  v46 = *(this + 185);
  v65 = *(this + 184);
  v66 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v47 = *(a2 + 685);
  *v58 = *(a2 + 680);
  *&v58[5] = v47;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  sub_29A00E7E0(&v59, *(a2 + 696), *(a2 + 704), (*(a2 + 704) - *(a2 + 696)) >> 3);
  if (SHIBYTE(v64) < 0)
  {
    if (*(&v63 + 1))
    {
      goto LABEL_392;
    }
  }

  else if (HIBYTE(v64))
  {
    goto LABEL_392;
  }

  if (v65)
  {
    if (*&v58[8] == 127 || !*v58 && v60 == v59)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v62);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v62);
    }
  }

LABEL_392:
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v62);
  v53 = *(this + 372);
  if (*(this + 1519) < 0)
  {
    sub_29A008D14(&v54, *(this + 187), *(this + 188));
  }

  else
  {
    v54 = *(this + 1496);
    v55 = *(this + 189);
  }

  v48 = *(this + 191);
  v56 = *(this + 190);
  v57 = v48;
  if (v48)
  {
    atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
  }

  *v49 = *(a2 + 720);
  *&v49[5] = *(a2 + 725);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  sub_29A00E7E0(&v50, *(a2 + 736), *(a2 + 744), (*(a2 + 744) - *(a2 + 736)) >> 3);
  if (SHIBYTE(v55) < 0)
  {
    if (!*(&v54 + 1))
    {
      goto LABEL_403;
    }
  }

  else if (!HIBYTE(v55))
  {
LABEL_403:
    if (v56)
    {
      if (*&v49[8] == 127 || !*v49 && v51 == v50)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v53);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v53);
      }
    }
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v53);
LABEL_412:
  ++*(this + 32);
}

void sub_29A061F04(void *a1, int a2)
{
  v5 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v5;
    operator delete(v5);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&STACK[0x3D0]);
  v6 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v2 - 64, v6);
  }

  else
  {
    sub_29A02D6F8(v2 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A061EECLL);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createVelocityProperty(Alembic::AbcGeom::v12::ONuPatchSchema *this)
{
  v2 = *(this + 6);
  v15 = *(this + 5);
  v16 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".velocities");
  v3 = *(this + 33);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A052004(&v17, &v15, &__p, v11, v10, v9, v8);
  *(this + 252) = v17;
  std::string::operator=((this + 1016), &v18);
  v5 = v19;
  v4 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 130) = v5;
  v6 = *(this + 131);
  *(this + 131) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v17);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_29A051850(&v17, &__p);
  if (*(this + 32))
  {
    v7 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 1008);
      ++v7;
    }

    while (v7 < *(this + 32));
  }

  if (v18.__r_.__value_.__l.__size_)
  {
    v18.__r_.__value_.__r.__words[2] = v18.__r_.__value_.__l.__size_;
    operator delete(v18.__r_.__value_.__l.__size_);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_29A0623A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createUVsProperty(void *a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  *&v37 = 0;
  *(&v37 + 1) = 0x20000000ALL;
  v38 = 0u;
  *v39 = 0u;
  *&v39[16] = 0x100000005;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 127;
  if (*(a2 + 352) != 127 && (*(a2 + 344) || *(a2 + 368) != *(a2 + 360)))
  {
    sub_29A05259C(v34, &v47);
    sub_29A052640(&v30, &v44);
    sub_29A0526E4(&__dst, v34, &v30, *(a2 + 384));
    *&v37 = __dst;
    *(&v37 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
    *&v39[8] = v24;
    *&v39[13] = *(&v24 + 5);
    sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
    v43 = v28;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23[0] = v22;
      operator delete(v22);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v9 = a1[6];
    v19 = a1[5];
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v34, "uv");
    v10 = v43;
    sub_29A064A60(a1, &v17);
    LODWORD(v30) = 4;
    v31 = &v17;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A052798(&__dst, &v19, v34, 1, v10, 1, &v30, &v15, &v13);
    sub_29A050950((a1 + 104), &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v29);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v27);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v23);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(*v34);
    }

    v7 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_29A014BEC(v7);
    goto LABEL_18;
  }

  sub_29A05259C(v34, &v47);
  v4 = *(a2 + 384);
  *&__dst = *v34;
  *(&__dst + 5) = *&v34[5];
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_29A00E7E0(&v22, v35, v36, (v36 - v35) >> 3);
  *&v24 = 0;
  *(&v24 + 1) = 0x100000005;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v28 = v4;
  *&v37 = __dst;
  *(&v37 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
  *&v39[8] = v24;
  *&v39[13] = *(&v24 + 5);
  sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
  v43 = v28;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23[0] = v22;
    operator delete(v22);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v5 = a1[6];
  v11 = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v34, "uv");
  v6 = v43;
  sub_29A064A60(a1, &v17);
  LODWORD(v30) = 4;
  v31 = &v17;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A052798(&__dst, &v11, v34, 0, v6, 1, &v30, &v15, &v13);
  sub_29A050950((a1 + 104), &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v29);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*v34);
  }

  v7 = v12;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a1[32])
  {
    v8 = 0;
    do
    {
      sub_29A04F06C((a1 + 104), &v37);
      ++v8;
    }

    while (v8 < a1[32]);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_29A062880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  sub_29A050A50(&a20);
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (*(v45 - 217) < 0)
  {
    operator delete(*(v45 - 240));
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A050844((v45 - 200));
  v47 = *(v45 - 112);
  if (v47)
  {
    *(v45 - 104) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 88);
  if (v48)
  {
    *(v45 - 80) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createNormalsProperty(void *a1, uint64_t a2)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  *&v39 = 0;
  *(&v39 + 1) = 0x30000000ALL;
  v40 = 0u;
  *v41 = 0u;
  *&v41[16] = 0x100000005;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 127;
  if (*(a2 + 264) != 127 && (*(a2 + 256) || *(a2 + 280) != *(a2 + 272)))
  {
    sub_29A051850(&v32, &v49);
    sub_29A053FB8(v36, &v32);
    sub_29A052640(&v28, &v46);
    sub_29A054134(&__dst, v36, &v28, *(a2 + 296));
    *&v39 = __dst;
    *(&v39 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v40, v20, v21[0], (v21[0] - v20) >> 3);
    *&v41[8] = v22;
    *&v41[13] = *(&v22 + 5);
    sub_29A00CB24(&v42, __p, v24, (v24 - __p) >> 3);
    v45 = v26;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21[0] = v20;
      operator delete(v20);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v9 = a1[6];
    v17 = a1[5];
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v36, "N");
    v10 = v45;
    sub_29A064A60(a1, &v28);
    LODWORD(v32) = 4;
    v33 = &v28;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A0541E8(&__dst, &v17, v36, 1, v10, 1, &v32, &v15, &v13);
    sub_29A050950((a1 + 82), &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v27);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst);
    }

    if (v29)
    {
      sub_29A014BEC(v29);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(*v36);
    }

    v7 = v18;
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_29A014BEC(v7);
    goto LABEL_20;
  }

  sub_29A051850(&v32, &v49);
  sub_29A053FB8(v36, &v32);
  v4 = *(a2 + 296);
  *&__dst = *v36;
  *(&__dst + 5) = *&v36[5];
  v20 = 0;
  v21[0] = 0;
  v21[1] = 0;
  sub_29A00E7E0(&v20, v37, v38, (v38 - v37) >> 3);
  *&v22 = 0;
  *(&v22 + 1) = 0x100000005;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v26 = v4;
  *&v39 = __dst;
  *(&v39 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v40, v20, v21[0], (v21[0] - v20) >> 3);
  *&v41[8] = v22;
  *&v41[13] = *(&v22 + 5);
  sub_29A00CB24(&v42, __p, v24, (v24 - __p) >> 3);
  v45 = v26;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21[0] = v20;
    operator delete(v20);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  v5 = a1[6];
  v11 = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v36, "N");
  v6 = v45;
  sub_29A064A60(a1, &v28);
  LODWORD(v32) = 4;
  v33 = &v28;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A0541E8(&__dst, &v11, v36, 0, v6, 1, &v32, &v15, &v13);
  sub_29A050950((a1 + 82), &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*v36);
  }

  v7 = v12;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (a1[32])
  {
    v8 = 0;
    do
    {
      sub_29A04F394((a1 + 82), &v39);
      ++v8;
    }

    while (v8 < a1[32]);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_29A062E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  sub_29A050A50(&a19);
  if (a42)
  {
    sub_29A014BEC(a42);
  }

  if (*(v49 - 217) < 0)
  {
    operator delete(*(v49 - 240));
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A050844((v49 - 200));
  v51 = *(v49 - 112);
  if (v51)
  {
    *(v49 - 104) = v51;
    operator delete(v51);
  }

  v52 = *(v49 - 88);
  if (v52)
  {
    *(v49 - 80) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createPositionWeightsProperty(Alembic::AbcGeom::v12::ONuPatchSchema *this)
{
  v16 = *(this + 2);
  if (*(this + 39) < 0)
  {
    sub_29A008D14(&v17, *(this + 2), *(this + 3));
  }

  else
  {
    v17 = *(this + 1);
    v18 = *(this + 4);
  }

  v2 = *(this + 6);
  v19 = *(this + 5);
  v20 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, "w");
  sub_29A064A60(this, &v9);
  v11 = 4;
  v12 = &v9;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  sub_29A056820(&v21, &v16, &__p, &v11, v8, v7);
  *(this + 152) = v21;
  std::string::operator=((this + 616), &v22);
  v4 = v23;
  v3 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 80) = v4;
  v5 = *(this + 81);
  *(this + 81) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v16);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_29A055520(&v21, &__p);
  if (*(this + 32))
  {
    v6 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 608);
      ++v6;
    }

    while (v6 < *(this + 32));
  }

  if (v22.__r_.__value_.__l.__size_)
  {
    v22.__r_.__value_.__r.__words[2] = v22.__r_.__value_.__l.__size_;
    operator delete(v22.__r_.__value_.__l.__size_);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_29A063128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createTrimPropreties(Alembic::AbcGeom::v12::ONuPatchSchema *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_29A051F60(&v74, &v80);
  sub_29A055520(&v71, &v77);
  sub_29A064A60(this, &v69);
  v63 = v3;
  v64 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_nloops");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A065BF8(&v65, &v63, __p, &v59, &v57, &v55, &v53);
  *(this + 264) = v65;
  std::string::operator=((this + 1064), &v66);
  v5 = v67;
  v4 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 136) = v5;
  v6 = *(this + 137);
  *(this + 137) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v64)
  {
    sub_29A014BEC(v64);
  }

  v51 = v3;
  v52 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_ncurves");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A051A7C(&v65, &v51, __p, &v59, &v57, &v55, &v53);
  *(this + 276) = v65;
  std::string::operator=((this + 1112), &v66);
  v8 = v67;
  v7 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 142) = v8;
  v9 = *(this + 143);
  *(this + 143) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v52)
  {
    sub_29A014BEC(v52);
  }

  v49 = v3;
  v50 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_n");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A051A7C(&v65, &v49, __p, &v59, &v57, &v55, &v53);
  *(this + 288) = v65;
  std::string::operator=((this + 1160), &v66);
  v11 = v67;
  v10 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 148) = v11;
  v12 = *(this + 149);
  *(this + 149) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  v47 = v3;
  v48 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_order");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A051A7C(&v65, &v47, __p, &v59, &v57, &v55, &v53);
  *(this + 300) = v65;
  std::string::operator=((this + 1208), &v66);
  v14 = v67;
  v13 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 154) = v14;
  v15 = *(this + 155);
  *(this + 155) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v48)
  {
    sub_29A014BEC(v48);
  }

  v45 = v3;
  v46 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_knot");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A05633C(&v65, &v45, __p, &v59, &v57, &v55, &v53);
  *(this + 312) = v65;
  std::string::operator=((this + 1256), &v66);
  v17 = v67;
  v16 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 160) = v17;
  v18 = *(this + 161);
  *(this + 161) = v16;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v46)
  {
    sub_29A014BEC(v46);
  }

  v43 = v3;
  v44 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_min");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A05633C(&v65, &v43, __p, &v59, &v57, &v55, &v53);
  *(this + 324) = v65;
  std::string::operator=((this + 1304), &v66);
  v20 = v67;
  v19 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 166) = v20;
  v21 = *(this + 167);
  *(this + 167) = v19;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v44)
  {
    sub_29A014BEC(v44);
  }

  v41 = v3;
  v42 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_max");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A05633C(&v65, &v41, __p, &v59, &v57, &v55, &v53);
  *(this + 336) = v65;
  std::string::operator=((this + 1352), &v66);
  v23 = v67;
  v22 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 172) = v23;
  v24 = *(this + 173);
  *(this + 173) = v22;
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42)
  {
    sub_29A014BEC(v42);
  }

  v39 = v3;
  v40 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_u");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A05633C(&v65, &v39, __p, &v59, &v57, &v55, &v53);
  *(this + 348) = v65;
  std::string::operator=((this + 1400), &v66);
  v26 = v67;
  v25 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 178) = v26;
  v27 = *(this + 179);
  *(this + 179) = v25;
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v40)
  {
    sub_29A014BEC(v40);
  }

  v37 = v3;
  v38 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_v");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A05633C(&v65, &v37, __p, &v59, &v57, &v55, &v53);
  *(this + 360) = v65;
  std::string::operator=((this + 1448), &v66);
  v29 = v67;
  v28 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 184) = v29;
  v30 = *(this + 185);
  *(this + 185) = v28;
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  v35 = v3;
  v36 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "trim_w");
  v59 = 4;
  v60 = &v69;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  sub_29A05633C(&v65, &v35, __p, &v59, &v57, &v55, &v53);
  *(this + 372) = v65;
  std::string::operator=((this + 1496), &v66);
  v32 = v67;
  v31 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 190) = v32;
  v33 = *(this + 191);
  *(this + 191) = v31;
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (*(this + 32))
  {
    v34 = 0;
    do
    {
      v65 = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 1056), &v65);
      Alembic::Abc::v12::OArrayProperty::set(this + 1104);
      Alembic::Abc::v12::OArrayProperty::set(this + 1152);
      Alembic::Abc::v12::OArrayProperty::set(this + 1200);
      Alembic::Abc::v12::OArrayProperty::set(this + 1248);
      Alembic::Abc::v12::OArrayProperty::set(this + 1296);
      Alembic::Abc::v12::OArrayProperty::set(this + 1344);
      Alembic::Abc::v12::OArrayProperty::set(this + 1392);
      Alembic::Abc::v12::OArrayProperty::set(this + 1440);
      Alembic::Abc::v12::OArrayProperty::set(this + 1488);
      ++v34;
    }

    while (v34 < *(this + 32));
  }

  if (v70)
  {
    sub_29A014BEC(v70);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }
}

void sub_29A063B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v44 - 240));
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  v46 = *(v44 - 184);
  if (v46)
  {
    sub_29A014BEC(v46);
  }

  v47 = *(v44 - 160);
  if (v47)
  {
    *(v44 - 152) = v47;
    operator delete(v47);
  }

  v48 = *(v44 - 120);
  if (v48)
  {
    *(v44 - 112) = v48;
    operator delete(v48);
  }

  v49 = *(v44 - 96);
  if (v49)
  {
    *(v44 - 88) = v49;
    operator delete(v49);
  }

  v50 = *(v44 - 72);
  if (v50)
  {
    *(v44 - 64) = v50;
    operator delete(v50);
  }

  if (v43)
  {
    sub_29A014BEC(v43);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createPositionProperties(Alembic::AbcGeom::v12::ONuPatchSchema *this)
{
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  sub_29A0503CC(&v25, 3);
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
  }

  v19 = v2;
  sub_29A008E78(__p, "P");
  LODWORD(v13) = 3;
  v14 = &v25;
  v4 = *(this + 33);
  v18[0] = 2;
  v18[2] = v4;
  v17[0] = 0;
  v17[2] = 0;
  v16[0] = 0;
  v16[2] = 0;
  sub_29A0512B8(&v21, &v19, __p, &v13, v18, v17, v16);
  *(this + 68) = v21;
  std::string::operator=((this + 280), &v22);
  v6 = v23;
  v5 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 39);
  *(this + 38) = v6;
  *(this + 39) = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_29A051850(&v21, &v13);
  if (*(this + 32))
  {
    v8 = 0;
    do
    {
      sub_29A051900(__p, &v21);
      Alembic::Abc::v12::OArrayProperty::set(this + 272);
      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      ++v8;
      v9 = *(this + 32);
    }

    while (v8 < v9);
  }

  else
  {
    v9 = 0;
  }

  sub_29A064850(this, *(this + 66), v9);
  if (v22.__r_.__value_.__l.__size_)
  {
    v22.__r_.__value_.__r.__words[2] = v22.__r_.__value_.__l.__size_;
    operator delete(v22.__r_.__value_.__l.__size_);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A01752C(&v25, v26[0]);
}

void sub_29A063FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  sub_29A01752C(v29 - 56, *(v29 - 48));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::ONuPatchSchema::createKnotProperties(Alembic::AbcGeom::v12::ONuPatchSchema *this)
{
  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  sub_29A0503CC(&v55, 3);
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v50 = v2;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v50 = 0;
  }

  v49 = v3;
  sub_29A008E78(__p, "nu");
  v4 = *(this + 33);
  v45 = 2;
  v46 = v4;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A065BF8(&v51, &v49, __p, &v45, &v43, &v41, &v39);
  *(this + 80) = v51;
  std::string::operator=((this + 328), &v52);
  v6 = v53;
  v5 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 45);
  *(this + 44) = v6;
  *(this + 45) = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v51);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  v37 = v3;
  v38 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "nv");
  v8 = *(this + 33);
  v45 = 2;
  v46 = v8;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A065BF8(&v51, &v37, __p, &v45, &v43, &v41, &v39);
  *(this + 92) = v51;
  std::string::operator=((this + 376), &v52);
  v10 = v53;
  v9 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 51);
  *(this + 50) = v10;
  *(this + 51) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v51);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  v35 = v3;
  v36 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "uOrder");
  v12 = *(this + 33);
  v45 = 2;
  v46 = v12;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A065BF8(&v51, &v35, __p, &v45, &v43, &v41, &v39);
  *(this + 104) = v51;
  std::string::operator=((this + 424), &v52);
  v14 = v53;
  v13 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 57);
  *(this + 56) = v14;
  *(this + 57) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v51);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  v33 = v3;
  v34 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "vOrder");
  v16 = *(this + 33);
  v45 = 2;
  v46 = v16;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A065BF8(&v51, &v33, __p, &v45, &v43, &v41, &v39);
  *(this + 116) = v51;
  std::string::operator=((this + 472), &v52);
  v18 = v53;
  v17 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(this + 63);
  *(this + 62) = v18;
  *(this + 63) = v17;
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v51);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  v31 = v3;
  v32 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "uKnot");
  v20 = *(this + 33);
  v45 = 2;
  v46 = v20;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A05633C(&v51, &v31, __p, &v45, &v43, &v41, &v39);
  *(this + 128) = v51;
  std::string::operator=((this + 520), &v52);
  v22 = v53;
  v21 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 68) = v22;
  v23 = *(this + 69);
  *(this + 69) = v21;
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v51);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v29 = v3;
  v30 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "vKnot");
  v24 = *(this + 33);
  v45 = 2;
  v46 = v24;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A05633C(&v51, &v29, __p, &v45, &v43, &v41, &v39);
  *(this + 140) = v51;
  std::string::operator=((this + 568), &v52);
  v26 = v53;
  v25 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 74) = v26;
  v27 = *(this + 75);
  *(this + 75) = v25;
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v51);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v51 = 0;
  v52.__r_.__value_.__r.__words[0] = 0x10000000ALL;
  v53 = 0;
  *&v52.__r_.__value_.__r.__words[1] = 0uLL;
  if (*(this + 32))
  {
    v28 = 0;
    do
    {
      LODWORD(__p[0]) = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 320), __p);
      LODWORD(__p[0]) = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 368), __p);
      LODWORD(__p[0]) = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 416), __p);
      LODWORD(__p[0]) = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 464), __p);
      Alembic::Abc::v12::OArrayProperty::set(this + 512);
      Alembic::Abc::v12::OArrayProperty::set(this + 560);
      ++v28;
    }

    while (v28 < *(this + 32));
    if (v52.__r_.__value_.__l.__size_)
    {
      v52.__r_.__value_.__r.__words[2] = v52.__r_.__value_.__l.__size_;
      operator delete(v52.__r_.__value_.__l.__size_);
    }
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A01752C(&v55, v56[0]);
}

void sub_29A0646B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v33 - 120));
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

  sub_29A01752C(v33 - 72, *(v33 - 64));
  _Unwind_Resume(a1);
}

void sub_29A064850(uint64_t a1, int a2, uint64_t a3)
{
  v19 = a1 + 8;
  v20 = "OGeomBaseSchema::createSelfBoundsProperty()";
  if (*(a1 + 87) < 0)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 87))
  {
LABEL_5:
    if (*(a1 + 88))
    {
      return;
    }
  }

  v6 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".selfBnds");
  v12[0] = 2;
  v12[2] = a2;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  sub_29A045D40(v17, &v15, __p, v12, v11, v10, v9);
  *(a1 + 56) = v17[0];
  std::string::operator=((a1 + 64), (v17 + 8));
  v7 = i;
  if (i.i64[1])
  {
    atomic_fetch_add_explicit((i.i64[1] + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 96);
  *(a1 + 88) = v7;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17[1] = xmmword_29B432560;
  for (i = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL); a3; --a3)
  {
    Alembic::Abc::v12::OScalarProperty::set((a1 + 56), v17);
  }
}

void sub_29A0649BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v25 - 96));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v25 - 48, v28);
  }

  else
  {
    sub_29A02D6F8(v25 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0649A8);
}

void sub_29A064A60(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 303) < 0)
  {
    if (!*(a1 + 288))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_29A04428C((a1 + 8), v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    Alembic::Abc::v12::OArchive::getTimeSampling(v6, a2);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return;
  }

  if (*(a1 + 303))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(a1 + 304))
  {
    goto LABEL_8;
  }

  v3 = sub_29A0510D4(a1 + 272);
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29A064B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  Alembic::Abc::v12::OArchive::~OArchive(va1);
  Alembic::Abc::v12::OObject::~OObject(va);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::ONuPatchSchema::setFromPrevious(Alembic::AbcGeom::v12::ONuPatchSchema *this)
{
  if (*(this + 303) < 0)
  {
    if (*(this + 36))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 303))
  {
    goto LABEL_7;
  }

  if (*(this + 38))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 272));
  }

LABEL_7:
  if (*(this + 351) < 0)
  {
    if (*(this + 42))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 351))
  {
    goto LABEL_13;
  }

  if (*(this + 44))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 320));
  }

LABEL_13:
  if (*(this + 399) < 0)
  {
    if (*(this + 48))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 399))
  {
    goto LABEL_19;
  }

  if (*(this + 50))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 368));
  }

LABEL_19:
  if (*(this + 447) < 0)
  {
    if (*(this + 54))
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 447))
  {
    goto LABEL_25;
  }

  if (*(this + 56))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 416));
  }

LABEL_25:
  if (*(this + 495) < 0)
  {
    if (*(this + 60))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 495))
  {
    goto LABEL_31;
  }

  if (*(this + 62))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 464));
  }

LABEL_31:
  if (*(this + 543) < 0)
  {
    if (*(this + 66))
    {
      goto LABEL_37;
    }
  }

  else if (*(this + 543))
  {
    goto LABEL_37;
  }

  if (*(this + 68))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 512));
  }

LABEL_37:
  if (*(this + 591) < 0)
  {
    if (*(this + 72))
    {
      goto LABEL_43;
    }
  }

  else if (*(this + 591))
  {
    goto LABEL_43;
  }

  if (*(this + 74))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 560));
  }

LABEL_43:
  Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
  if (*(this + 1039) < 0)
  {
    if (*(this + 128))
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 1039))
  {
    goto LABEL_49;
  }

  if (*(this + 130))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1008));
  }

LABEL_49:
  if (sub_29A051208(this + 832))
  {
    sub_29A0501E0(this + 832);
  }

  result = sub_29A051208(this + 656);
  if (result)
  {
    result = sub_29A050284(this + 656);
  }

  if (*(this + 639) < 0)
  {
    if (*(this + 78))
    {
      goto LABEL_59;
    }
  }

  else if (*(this + 639))
  {
    goto LABEL_59;
  }

  if (*(this + 80))
  {
    result = Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 608));
  }

LABEL_59:
  if (*(this + 1087) < 0)
  {
    if (*(this + 134))
    {
      return result;
    }
  }

  else if (*(this + 1087))
  {
    return result;
  }

  if (*(this + 136))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 1056));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1104));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1152));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1200));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1248));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1296));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1344));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1392));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1440));
    return Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1488));
  }

  return result;
}

void sub_29A064D68(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A064D58);
}

uint64_t Alembic::AbcGeom::v12::ONuPatchSchema::setTimeSampling(Alembic::AbcGeom::v12::ONuPatchSchema *this, unsigned int a2)
{
  *(this + 33) = a2;
  if (*(this + 303) < 0)
  {
    if (*(this + 36))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 303))
  {
    goto LABEL_7;
  }

  if (*(this + 38))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 272));
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 320));
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 368));
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 416));
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 464));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 512));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 560));
  }

LABEL_7:
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_13;
  }

  if (*(this + 11))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 56));
  }

LABEL_13:
  if (*(this + 1039) < 0)
  {
    if (*(this + 128))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 1039))
  {
    goto LABEL_19;
  }

  if (*(this + 130))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1008));
  }

LABEL_19:
  if (sub_29A051208(this + 832))
  {
    sub_29A050CD8(this + 832);
  }

  result = sub_29A051208(this + 656);
  if (result)
  {
    result = sub_29A050D84(this + 656);
  }

  if (*(this + 639) < 0)
  {
    if (*(this + 78))
    {
      goto LABEL_29;
    }
  }

  else if (*(this + 639))
  {
    goto LABEL_29;
  }

  if (*(this + 80))
  {
    result = Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 608));
  }

LABEL_29:
  if (*(this + 1087) < 0)
  {
    if (*(this + 134))
    {
      return result;
    }
  }

  else if (*(this + 1087))
  {
    return result;
  }

  if (*(this + 136))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 1056));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1104));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1152));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1200));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1248));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1296));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1344));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1392));
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1440));
    return Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1488));
  }

  return result;
}

void sub_29A064FC0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A064FB0);
}

int *Alembic::AbcGeom::v12::ONuPatchSchema::setTimeSampling(Alembic::AbcGeom::v12::ONuPatchSchema *a1, void *a2)
{
  result = (a1 + 8);
  v7 = result;
  v8 = "ONuPatchSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(result, v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    v4 = Alembic::Abc::v12::OArchive::addTimeSampling(v6);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return Alembic::AbcGeom::v12::ONuPatchSchema::setTimeSampling(a1, v4);
  }

  return result;
}

void sub_29A065098(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v17 - 32, v19);
  }

  else
  {
    sub_29A02D6F8(v17 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A065088);
}

void sub_29A065124(uint64_t a1)
{
  v1 = sub_29A0660DC(a1);

  operator delete(v1);
}

void sub_29A06514C(uint64_t a1)
{
  sub_29A02F0A0(a1 + 272);
  sub_29A02F0A0(a1 + 608);
  sub_29A02F0A0(a1 + 1008);
  sub_29A02F0A0(a1 + 320);
  sub_29A02F0A0(a1 + 368);
  sub_29A02F0A0(a1 + 416);
  sub_29A02F0A0(a1 + 464);
  sub_29A02F0A0(a1 + 512);
  sub_29A02F0A0(a1 + 560);
  sub_29A051268(a1 + 656);
  sub_29A051268(a1 + 832);
  sub_29A02F0A0(a1 + 1056);
  sub_29A02F0A0(a1 + 1152);
  sub_29A02F0A0(a1 + 1200);
  sub_29A02F0A0(a1 + 1248);
  sub_29A02F0A0(a1 + 1296);
  sub_29A02F0A0(a1 + 1344);
  sub_29A02F0A0(a1 + 1392);
  sub_29A02F0A0(a1 + 1440);
  sub_29A02F0A0(a1 + 1488);

  sub_29A06535C(a1);
}

uint64_t sub_29A065220(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (*(a1 + 39))
  {
    goto LABEL_12;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_12;
  }

  if (*(a1 + 303) < 0)
  {
    if (!*(a1 + 288))
    {
      goto LABEL_10;
    }

LABEL_12:
    v1 = *(a1 + 248);
    return v1 & 1;
  }

  if (*(a1 + 303))
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!*(a1 + 304))
  {
    goto LABEL_12;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_29A065274(void *a1)
{
  *a1 = &unk_2A203DDE8;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_29A0652E0(void *a1)
{
  *a1 = &unk_2A203DDE8;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  operator delete(a1);
}

void sub_29A06535C(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

BOOL sub_29A0653B0(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_29A0653DC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  sub_29A008E78((a1 + 32), "");
  *(a1 + 72) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_29A008E78((a1 + 80), "");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 124) = 0x20000007FLL;
  sub_29A008E78((a1 + 136), "");
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_29A065478(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A0654B4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  sub_29A008E78((a1 + 32), "");
  *(a1 + 72) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_29A008E78((a1 + 80), "");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 124) = 0x20000007FLL;
  sub_29A008E78((a1 + 136), "");
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_29A065550(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A06558C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DE18;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A065764(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A065668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A065688(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_29A064850(a1, a2, 0);
  }
}

void sub_29A0656D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  v12 = *(*v9 + 16);
  if (a2 == 2)
  {
    v13 = v11;
    v12(v9);
    sub_29A02D768(&a9, v13);
  }

  else
  {
    v12(v9);
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0656C0);
}

void sub_29A065764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24[0] = 0;
  v22 = &v23;
  v25 = 2;
  sub_29A019350(v26, &v22);
  v28 = 0;
  v27 = 0u;
  v29 = 1;
  sub_29A01752C(&v22, v23);
  sub_29A02E010(a4, &v25);
  sub_29A02E010(a5, &v25);
  sub_29A02E010(a6, &v25);
  sub_29A02E010(a7, &v25);
  *(a1 + 8) = v25;
  v24[33] = a1 + 8;
  v24[34] = "OSchema::OSchema::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(v24, "NULL parent passed into OSchema ctor", 36);
    std::stringbuf::str();
    sub_29A008C60(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(exception, __p);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v22, v26);
  if (HIDWORD(v29) != 1)
  {
    sub_29A008E78(__p, "schema");
    sub_29A008E78(&__str, "AbcGeom_NuPatch_v2");
    v30 = __p;
    v13 = sub_29A00B038(&v22, __p, &unk_29B432899, &v30);
    std::string::operator=((v13 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (HIDWORD(v29) != 1)
    {
      sub_29A008E78(__p, "schemaBaseType");
      sub_29A008E78(&__str, "AbcGeom_GeomBase_v1");
      v30 = __p;
      v14 = sub_29A00B038(&v22, __p, &unk_29B432899, &v30);
      std::string::operator=((v14 + 7), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  (*(**a2 + 112))(__p);
  v15 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v16 = *(a1 + 48);
  *(a1 + 40) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  sub_29A01752C(&v22, v23);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A01752C(v26, v26[1]);
}

void sub_29A065A60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a24);
  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    sub_29A02F0A0(v25);
    sub_29A02D768(v26 - 176, v30);
  }

  else
  {
    sub_29A02F0A0(v25);
    sub_29A02D6F8(v26 - 176, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0659ACLL);
}

void sub_29A065BBC(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A065BF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A065CD0(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A065CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A065CD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24[0] = 0;
  v22 = &v23;
  v25 = 2;
  sub_29A019350(v26, &v22);
  v28 = 0;
  v27 = 0u;
  v29 = 1;
  sub_29A01752C(&v22, v23);
  sub_29A02E010(a4, &v25);
  sub_29A02E010(a5, &v25);
  sub_29A02E010(a6, &v25);
  sub_29A02E010(a7, &v25);
  *a1 = v25;
  v24[33] = a1;
  v24[34] = "OTypedScalarProperty::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(v24, "NULL CompoundPropertyWriterPtr", 30);
    std::stringbuf::str();
    sub_29A008C60(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(exception, v21);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v22, v26);
  v13 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a2;
  if (v13)
  {
    (*(*v14 + 24))(__p);
    (*(*__p[0] + 24))(v21);
    (*(**&v21[0] + 48))(*&v21[0], v13);
    if (*(&v21[0] + 1))
    {
      sub_29A014BEC(*(&v21[0] + 1));
    }

    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    v14 = *a2;
  }

  BYTE4(__p[0]) = 1;
  LODWORD(__p[0]) = 6;
  (*(*v14 + 96))(v21);
  v15 = v21[0];
  v21[0] = 0uLL;
  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (*(&v21[0] + 1))
    {
      sub_29A014BEC(*(&v21[0] + 1));
    }
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  sub_29A01752C(&v22, v23);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A01752C(v26, v26[1]);
}

void sub_29A065FB4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v11 = v10;
    sub_29A02F0A0(v6);
    sub_29A02D768(v7 - 160, v11);
  }

  else
  {
    sub_29A02F0A0(v6);
    sub_29A02D6F8(v7 - 160, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A065F00);
}

uint64_t sub_29A0660DC(uint64_t a1)
{
  *a1 = &unk_2A203DD60;
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1488));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1440));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1248));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1200));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1152));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 1056));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 1008));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 960));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 904));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 856));
  if (*(a1 + 855) < 0)
  {
    operator delete(*(a1 + 832));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 784));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 728));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 680));
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 608));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 560));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 512));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 464));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 416));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 368));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 320));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 272));
  *a1 = &unk_2A203DDE8;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

uint64_t Alembic::AbcGeom::v12::INuPatchSchema::trimCurveTopologyIsConstant(Alembic::AbcGeom::v12::INuPatchSchema *this)
{
  if (*(this + 1464) != 1 || !Alembic::Abc::v12::IScalarProperty::isConstant((this + 984)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1032)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1080)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1128)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1176)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1224)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1272)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1320)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1368)))
  {
    return 0;
  }

  return Alembic::Abc::v12::IArrayProperty::isConstant((this + 1416));
}

uint64_t Alembic::AbcGeom::v12::INuPatchSchema::trimCurveTopologyIsHomogenous(Alembic::AbcGeom::v12::INuPatchSchema *this)
{
  if (*(this + 1464) != 1 || !Alembic::Abc::v12::IScalarProperty::isConstant((this + 984)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1032)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1080)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1128)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 1224)))
  {
    return 0;
  }

  return Alembic::Abc::v12::IArrayProperty::isConstant((this + 1272));
}

uint64_t Alembic::AbcGeom::v12::INuPatchSchema::getTopologyVariance(Alembic::AbcGeom::v12::INuPatchSchema *this)
{
  if (Alembic::Abc::v12::IArrayProperty::isConstant((this + 248)))
  {
    if (*(this + 663) < 0)
    {
      if (*(this + 81))
      {
        goto LABEL_9;
      }
    }

    else if (*(this + 663))
    {
      goto LABEL_9;
    }

    if (*(this + 83))
    {
      isConstant = Alembic::Abc::v12::IArrayProperty::isConstant((this + 632));
      goto LABEL_10;
    }

LABEL_9:
    isConstant = 1;
    goto LABEL_10;
  }

  isConstant = 0;
LABEL_10:
  if (!Alembic::Abc::v12::IScalarProperty::isConstant((this + 392)) || !Alembic::Abc::v12::IScalarProperty::isConstant((this + 440)) || !Alembic::Abc::v12::IArrayProperty::isConstant((this + 488)))
  {
    return 2;
  }

  v3 = Alembic::Abc::v12::IArrayProperty::isConstant((this + 536));
  if ((isConstant & v3) != 1)
  {
    if (v3)
    {
      if (*(this + 1464) != 1)
      {
        return 1;
      }

      goto LABEL_20;
    }

    return 2;
  }

  if (*(this + 1464) != 1 || (Alembic::AbcGeom::v12::INuPatchSchema::trimCurveTopologyIsConstant(this) & 1) != 0)
  {
    return 0;
  }

LABEL_20:
  if (Alembic::AbcGeom::v12::INuPatchSchema::trimCurveTopologyIsHomogenous(this))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL Alembic::AbcGeom::v12::INuPatchSchema::hasTrimProps(Alembic::AbcGeom::v12::INuPatchSchema *this)
{
  sub_29A008E78(&v20, "trim_nloops");
  if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
  {
    sub_29A008E78(&v18, "trim_n");
    if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
    {
      sub_29A008E78(&v16, "trim_order");
      if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
      {
        sub_29A008E78(&v14, "trim_knot");
        if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
        {
          sub_29A008E78(&v12, "trim_min");
          if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
          {
            sub_29A008E78(&v10, "trim_max");
            if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
            {
              sub_29A008E78(&v8, "trim_u");
              if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
              {
                sub_29A008E78(&v6, "trim_v");
                if (Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8))
                {
                  sub_29A008E78(&__p, "trim_w");
                  v2 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this + 8) != 0;
                  if (v5 < 0)
                  {
                    operator delete(__p);
                  }
                }

                else
                {
                  v2 = 0;
                }

                if (v7 < 0)
                {
                  operator delete(v6);
                }
              }

              else
              {
                v2 = 0;
              }

              if (v9 < 0)
              {
                operator delete(v8);
              }
            }

            else
            {
              v2 = 0;
            }

            if (v11 < 0)
            {
              operator delete(v10);
            }
          }

          else
          {
            v2 = 0;
          }

          if (v13 < 0)
          {
            operator delete(v12);
          }
        }

        else
        {
          v2 = 0;
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }
      }

      else
      {
        v2 = 0;
      }

      if (v17 < 0)
      {
        operator delete(v16);
      }
    }

    else
    {
      v2 = 0;
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  return v2;
}

void sub_29A066720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  if (*(v39 - 65) < 0)
  {
    operator delete(*(v39 - 88));
  }

  if (*(v39 - 41) < 0)
  {
    operator delete(*(v39 - 64));
  }

  if (*(v39 - 17) < 0)
  {
    operator delete(*(v39 - 40));
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::INuPatchSchema::get(uint64_t a1, void *a2, uint64_t a3)
{
  sub_29A0470B8(a1 + 248, a2, a3);
  Alembic::Abc::v12::IScalarProperty::get(a1 + 296, (a2 + 4), a3, 4);
  Alembic::Abc::v12::IScalarProperty::get(a1 + 344, a2 + 36, a3, 4);
  Alembic::Abc::v12::IScalarProperty::get(a1 + 392, (a2 + 5), a3, 4);
  Alembic::Abc::v12::IScalarProperty::get(a1 + 440, a2 + 44, a3, 4);
  sub_29A0471B0(a1 + 488, a2 + 6, a3);
  sub_29A0471B0(a1 + 536, a2 + 8, a3);
  if (*(a1 + 87) < 0)
  {
    if (*(a1 + 72))
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 87))
  {
    goto LABEL_7;
  }

  if (*(a1 + 88))
  {
    Alembic::Abc::v12::IScalarProperty::get(a1 + 56, (a2 + 32), a3, 48);
  }

LABEL_7:
  if (*(a1 + 615) < 0)
  {
    if (*(a1 + 600))
    {
      goto LABEL_14;
    }
  }

  else if (*(a1 + 615))
  {
    goto LABEL_14;
  }

  if (*(a1 + 616) && Alembic::Abc::v12::IArrayProperty::getNumSamples((a1 + 584)))
  {
    sub_29A0472A8(a1 + 584, a2 + 2, a3);
  }

LABEL_14:
  if (*(a1 + 663) < 0)
  {
    if (*(a1 + 648))
    {
      goto LABEL_20;
    }
  }

  else if (*(a1 + 663))
  {
    goto LABEL_20;
  }

  if (*(a1 + 664))
  {
    sub_29A0471B0(a1 + 632, a2 + 10, a3);
  }

LABEL_20:
  if (*(a1 + 1464) == 1)
  {
    Alembic::Abc::v12::IScalarProperty::get(a1 + 984, (a2 + 12), a3, 4);
    sub_29A047134(a1 + 1080, a2 + 13, a3);
    sub_29A047134(a1 + 1032, a2 + 15, a3);
    sub_29A047134(a1 + 1128, a2 + 17, a3);
    sub_29A0471B0(a1 + 1176, a2 + 19, a3);
    sub_29A0471B0(a1 + 1224, a2 + 21, a3);
    sub_29A0471B0(a1 + 1272, a2 + 23, a3);
    sub_29A0471B0(a1 + 1320, a2 + 25, a3);
    sub_29A0471B0(a1 + 1368, a2 + 27, a3);
    sub_29A0471B0(a1 + 1416, a2 + 29, a3);
  }
}

void sub_29A066A2C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A066A18);
}

void Alembic::AbcGeom::v12::INuPatchSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v137 = a1 + 8;
  v138 = "INuPatchSchema::init()";
  *&v99.__r_.__value_.__l.__data_ = 0uLL;
  v98 = &v99;
  v132 = 2;
  sub_29A019350(v133, &v98);
  v135 = 0;
  v134 = 0u;
  v136 = 1;
  sub_29A01752C(&v98, v99.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v132);
  sub_29A02E010(a3, &v132);
  *(a1 + 1464) = 0;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v129 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v129 = 0;
  }

  v128 = v8;
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v128, &v126, &v124);
  sub_29A008E78(__p, "P");
  v121[0] = 5;
  v121[2] = 1;
  v120[0] = 1;
  v120[2] = v132;
  sub_29A047324(&v98, v130, __p, v121, v120);
  *(a1 + 248) = v98;
  std::string::operator=((a1 + 256), &v99);
  v10 = v100;
  v9 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 288);
  *(a1 + 280) = v10;
  *(a1 + 288) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v129)
  {
    sub_29A014BEC(v129);
  }

  v118 = v8;
  v119 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v118, &v126, &v124);
  sub_29A008E78(__p, "nu");
  sub_29A0684E4(&v98, v130, __p, a2, a3);
  *(a1 + 296) = v98;
  std::string::operator=((a1 + 304), &v99);
  v13 = v100;
  v12 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 336);
  *(a1 + 328) = v13;
  *(a1 + 336) = v12;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v119)
  {
    sub_29A014BEC(v119);
  }

  v116 = v8;
  v117 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v116, &v126, &v124);
  sub_29A008E78(__p, "nv");
  sub_29A0684E4(&v98, v130, __p, a2, a3);
  *(a1 + 344) = v98;
  std::string::operator=((a1 + 352), &v99);
  v16 = v100;
  v15 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 384);
  *(a1 + 376) = v16;
  *(a1 + 384) = v15;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v117)
  {
    sub_29A014BEC(v117);
  }

  v114 = v8;
  v115 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v114, &v126, &v124);
  sub_29A008E78(__p, "uOrder");
  sub_29A0684E4(&v98, v130, __p, a2, a3);
  *(a1 + 392) = v98;
  std::string::operator=((a1 + 400), &v99);
  v19 = v100;
  v18 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 432);
  *(a1 + 424) = v19;
  *(a1 + 432) = v18;
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v115)
  {
    sub_29A014BEC(v115);
  }

  v112 = v8;
  v113 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v112, &v126, &v124);
  sub_29A008E78(__p, "vOrder");
  sub_29A0684E4(&v98, v130, __p, a2, a3);
  *(a1 + 440) = v98;
  std::string::operator=((a1 + 448), &v99);
  v22 = v100;
  v21 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 480);
  *(a1 + 472) = v22;
  *(a1 + 480) = v21;
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v113)
  {
    sub_29A014BEC(v113);
  }

  v110 = v8;
  v111 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v110, &v126, &v124);
  sub_29A008E78(__p, "uKnot");
  sub_29A047FD4(&v98, v130, __p, a2, a3);
  *(a1 + 488) = v98;
  std::string::operator=((a1 + 496), &v99);
  v25 = v100;
  v24 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 520) = v25;
  v26 = *(a1 + 528);
  *(a1 + 528) = v24;
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v111)
  {
    sub_29A014BEC(v111);
  }

  v108 = v8;
  v109 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v108, &v126, &v124);
  sub_29A008E78(__p, "vKnot");
  sub_29A047FD4(&v98, v130, __p, a2, a3);
  *(a1 + 536) = v98;
  std::string::operator=((a1 + 544), &v99);
  v28 = v100;
  v27 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v28;
  v29 = *(a1 + 576);
  *(a1 + 576) = v27;
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v109)
  {
    sub_29A014BEC(v109);
  }

  sub_29A008E78(&v98, "w");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v31 = PropertyHeader;
  if (v99.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v98);
    if (!v31)
    {
      goto LABEL_86;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_86;
  }

  v106 = v8;
  v107 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v106, &v126, &v124);
  sub_29A008E78(__p, "w");
  sub_29A047FD4(&v98, v130, __p, a2, a3);
  *(a1 + 632) = v98;
  std::string::operator=((a1 + 640), &v99);
  v33 = v100;
  v32 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 664) = v33;
  v34 = *(a1 + 672);
  *(a1 + 672) = v32;
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v107)
  {
    sub_29A014BEC(v107);
  }

LABEL_86:
  sub_29A008E78(&v98, ".velocities");
  v35 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v36 = v35;
  if (v99.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v98);
    if (!v36)
    {
      goto LABEL_100;
    }
  }

  else if (!v35)
  {
    goto LABEL_100;
  }

  v104 = v8;
  v105 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v104, &v126, &v124);
  sub_29A008E78(__p, ".velocities");
  sub_29A04AFA0(&v98, v130, __p, a2, a3);
  *(a1 + 584) = v98;
  std::string::operator=((a1 + 592), &v99);
  v38 = v100;
  v37 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 616) = v38;
  v39 = *(a1 + 624);
  *(a1 + 624) = v37;
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
  if (v105)
  {
    sub_29A014BEC(v105);
  }

LABEL_100:
  sub_29A008E78(&v98, "N");
  v40 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v41 = v40;
  if (v99.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v98);
    if (!v41)
    {
      goto LABEL_110;
    }
  }

  else if (!v40)
  {
    goto LABEL_110;
  }

  v96 = v8;
  v97 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v130, "N");
  sub_29A049984(&v98, &v96, v130, a2, a3);
  sub_29A046D94(a1 + 680, &v98);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v103);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v102);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  if (v97)
  {
    sub_29A014BEC(v97);
  }

LABEL_110:
  sub_29A008E78(&v98, "uv");
  v42 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v43 = v42;
  if (v99.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v98);
    if (!v43)
    {
      goto LABEL_120;
    }
  }

  else if (!v42)
  {
    goto LABEL_120;
  }

  v94 = v8;
  v95 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v130, "uv");
  sub_29A048600(&v98, &v94, v130, a2, a3);
  sub_29A046D94(a1 + 832, &v98);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v103);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v102);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  if (v95)
  {
    sub_29A014BEC(v95);
  }

LABEL_120:
  if (Alembic::AbcGeom::v12::INuPatchSchema::hasTrimProps(a1))
  {
    v92 = v8;
    v93 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v92, &v126, &v124);
    sub_29A008E78(__p, "trim_nloops");
    sub_29A0684E4(&v98, v130, __p, a2, a3);
    *(a1 + 984) = v98;
    std::string::operator=((a1 + 992), &v99);
    v45 = v100;
    v44 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1016) = v45;
    v46 = *(a1 + 1024);
    *(a1 + 1024) = v44;
    if (v46)
    {
      sub_29A014BEC(v46);
    }

    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v93)
    {
      sub_29A014BEC(v93);
    }

    v90 = v8;
    v91 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v90, &v126, &v124);
    sub_29A008E78(__p, "trim_ncurves");
    sub_29A0479A8(&v98, v130, __p, a2, a3);
    *(a1 + 1080) = v98;
    std::string::operator=((a1 + 1088), &v99);
    v48 = v100;
    v47 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1112) = v48;
    v49 = *(a1 + 1120);
    *(a1 + 1120) = v47;
    if (v49)
    {
      sub_29A014BEC(v49);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v91)
    {
      sub_29A014BEC(v91);
    }

    v88 = v8;
    v89 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v88, &v126, &v124);
    sub_29A008E78(__p, "trim_n");
    sub_29A0479A8(&v98, v130, __p, a2, a3);
    *(a1 + 1032) = v98;
    std::string::operator=((a1 + 1040), &v99);
    v51 = v100;
    v50 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1064) = v51;
    v52 = *(a1 + 1072);
    *(a1 + 1072) = v50;
    if (v52)
    {
      sub_29A014BEC(v52);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v89)
    {
      sub_29A014BEC(v89);
    }

    v86 = v8;
    v87 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v86, &v126, &v124);
    sub_29A008E78(__p, "trim_order");
    sub_29A0479A8(&v98, v130, __p, a2, a3);
    *(a1 + 1128) = v98;
    std::string::operator=((a1 + 1136), &v99);
    v54 = v100;
    v53 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1160) = v54;
    v55 = *(a1 + 1168);
    *(a1 + 1168) = v53;
    if (v55)
    {
      sub_29A014BEC(v55);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v87)
    {
      sub_29A014BEC(v87);
    }

    v84 = v8;
    v85 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v84, &v126, &v124);
    sub_29A008E78(__p, "trim_knot");
    sub_29A047FD4(&v98, v130, __p, a2, a3);
    *(a1 + 1176) = v98;
    std::string::operator=((a1 + 1184), &v99);
    v57 = v100;
    v56 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1208) = v57;
    v58 = *(a1 + 1216);
    *(a1 + 1216) = v56;
    if (v58)
    {
      sub_29A014BEC(v58);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v85)
    {
      sub_29A014BEC(v85);
    }

    v82 = v8;
    v83 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v82, &v126, &v124);
    sub_29A008E78(__p, "trim_min");
    sub_29A047FD4(&v98, v130, __p, a2, a3);
    *(a1 + 1224) = v98;
    std::string::operator=((a1 + 1232), &v99);
    v60 = v100;
    v59 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1256) = v60;
    v61 = *(a1 + 1264);
    *(a1 + 1264) = v59;
    if (v61)
    {
      sub_29A014BEC(v61);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v83)
    {
      sub_29A014BEC(v83);
    }

    v80 = v8;
    v81 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v80, &v126, &v124);
    sub_29A008E78(__p, "trim_max");
    sub_29A047FD4(&v98, v130, __p, a2, a3);
    *(a1 + 1272) = v98;
    std::string::operator=((a1 + 1280), &v99);
    v63 = v100;
    v62 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1304) = v63;
    v64 = *(a1 + 1312);
    *(a1 + 1312) = v62;
    if (v64)
    {
      sub_29A014BEC(v64);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v81)
    {
      sub_29A014BEC(v81);
    }

    v78 = v8;
    v79 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v78, &v126, &v124);
    sub_29A008E78(__p, "trim_u");
    sub_29A047FD4(&v98, v130, __p, a2, a3);
    *(a1 + 1320) = v98;
    std::string::operator=((a1 + 1328), &v99);
    v66 = v100;
    v65 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1352) = v66;
    v67 = *(a1 + 1360);
    *(a1 + 1360) = v65;
    if (v67)
    {
      sub_29A014BEC(v67);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v79)
    {
      sub_29A014BEC(v79);
    }

    v76 = v8;
    v77 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v76, &v126, &v124);
    sub_29A008E78(__p, "trim_v");
    sub_29A047FD4(&v98, v130, __p, a2, a3);
    *(a1 + 1368) = v98;
    std::string::operator=((a1 + 1376), &v99);
    v69 = v100;
    v68 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1400) = v69;
    v70 = *(a1 + 1408);
    *(a1 + 1408) = v68;
    if (v70)
    {
      sub_29A014BEC(v70);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v77)
    {
      sub_29A014BEC(v77);
    }

    v74 = v8;
    v75 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v130, &v74, &v126, &v124);
    sub_29A008E78(__p, "trim_w");
    sub_29A047FD4(&v98, v130, __p, a2, a3);
    *(a1 + 1416) = v98;
    std::string::operator=((a1 + 1424), &v99);
    v72 = v100;
    v71 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1448) = v72;
    v73 = *(a1 + 1456);
    *(a1 + 1456) = v71;
    if (v73)
    {
      sub_29A014BEC(v73);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v98);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v130);
    if (v75)
    {
      sub_29A014BEC(v75);
    }

    *(a1 + 1464) = Alembic::Abc::v12::IScalarProperty::getNumSamples((a1 + 984)) != 0;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v134 + 1))
  {
    sub_29A014BEC(*(&v134 + 1));
  }

  sub_29A01752C(v133, v133[1]);
}

void sub_29A067CC0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&a33);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v73 - 208));
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v72)
  {
    sub_29A014BEC(v72);
  }

  sub_29A02E0BC(v73 - 160);
  v76 = __cxa_begin_catch(a1);
  v77 = *(*v71 + 16);
  if (a2 == 2)
  {
    v78 = v76;
    v77(v71);
    sub_29A02D768(v73 - 96, v78);
  }

  else
  {
    v77(v71);
    sub_29A02D6F8(v73 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A067CA0);
}

uint64_t sub_29A0684E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *a2;
  *(&v46 + 1) = 0;
  v47[0] = 0;
  *&v46 = &v46 + 8;
  v48 = v10;
  sub_29A019350(v49, &v46);
  v51 = 0;
  v50 = 0u;
  v52 = 1;
  sub_29A01752C(&v46, *(&v46 + 1));
  sub_29A02E010(a4, &v48);
  sub_29A02E010(a5, &v48);
  *a1 = v48;
  v47[34] = a1;
  v47[35] = "ITypedScalarProperty::ITypedScalarProperty()";
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v46);
    v31 = sub_29A00911C(v47, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v31, "ITypedScalarProperty ctor", 25);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v33 = sub_29A008E1C(exception, __p);
    __cxa_throw(v33, &unk_2A203B108, sub_29A008B08);
  }

  v13 = (*(*v12 + 80))(v12, a3);
  v14 = v13;
  if (!v13)
  {
    sub_29A008864(&v46);
    v34 = sub_29A00911C(v47, "Nonexistent scalar property: ", 29);
    v35 = *(a3 + 23);
    if (v35 >= 0)
    {
      v36 = a3;
    }

    else
    {
      v36 = *a3;
    }

    if (v35 >= 0)
    {
      v37 = *(a3 + 23);
    }

    else
    {
      v37 = *(a3 + 8);
    }

    sub_29A00911C(v34, v36, v37);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v38 = __cxa_allocate_exception(0x20uLL);
    v39 = sub_29A008E1C(v38, __p);
    __cxa_throw(v39, &unk_2A203B108, sub_29A008B08);
  }

  v16 = *(v13 + 56) == 6 && *(v13 + 60) == 1 && *(v13 + 24) == 1;
  if (!v16 || (sub_29A068A70(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 1;
    v40 = 6;
    v23 = sub_29A00D330(v22, &v40);
    v24 = sub_29A00911C(v23, ",\n...or incorrect match of interpretation: ", 43);
    sub_29A008E78(v42, "interpretation");
    sub_29A02CFB4(v14 + 32, v42, __p);
    if ((v45 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v26 = v45;
    }

    else
    {
      v26 = __p[1];
    }

    v27 = sub_29A00911C(v24, v25, v26);
    v28 = sub_29A00911C(v27, " to expected: ", 14);
    sub_29A00911C(v28, "", 0);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, __p);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v12 + 88))(&v46, v12, a3);
  v17 = v46;
  v46 = 0uLL;
  v18 = *(a1 + 40);
  *(a1 + 32) = v17;
  if (v18)
  {
    sub_29A014BEC(v18);
    if (*(&v46 + 1))
    {
      sub_29A014BEC(*(&v46 + 1));
    }
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (*(&v50 + 1))
  {
    sub_29A014BEC(*(&v50 + 1));
  }

  sub_29A01752C(v49, v49[1]);
  return a1;
}

void sub_29A068928(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a23);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    sub_29A02F0A0(v24);
    sub_29A02D768(v26 - 144, v30);
  }

  else
  {
    sub_29A02F0A0(v24);
    sub_29A02D6F8(v26 - 144, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A068688);
}

uint64_t sub_29A068A70(uint64_t a1, int a2)
{
  if (a2)
  {
    return 1;
  }

  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v7);
  if (v8 < 0)
  {
    v2 = v7[1] == 0;
    operator delete(v7[0]);
  }

  else
  {
    v2 = v8 == 0;
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A068AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::OPointsSchema::OPointsSchema(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A068DDC(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203DE38;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  sub_29A06B650(a1 + 392);
  sub_29A057858(a4, a5, a6, a7, &v22);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v22)
  {
    (*(**a2 + 24))(&v18);
    (*(*v18 + 24))(&v20);
    v15 = (*(*v20 + 48))(v20, v22);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_29A0585D8(a4, a5, a6, a7);
  Alembic::AbcGeom::v12::OPointsSchema::init(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A068D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A050A50((v14 + 49));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 43));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v15);
  sub_29A0691B0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A068DDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A06B728(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203DEC0;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 200) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_29A057858(a4, a5, a6, a7, &v22);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v22)
  {
    (*(**a2 + 24))(&v18);
    (*(*v18 + 24))(&v20);
    v15 = (*(*v20 + 48))(v20, v22);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_29A0585D8(a4, a5, a6, a7);
  sub_29A06B824(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A06901C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Alembic::Abc::v12::OScalarProperty *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v21);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v20);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v19);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(a10);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v18 + 8));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPointsSchema::init(Alembic::AbcGeom::v12::OPointsSchema *this, int a2, char a3)
{
  *(this + 568) = a3;
  *(this + 72) = 0;
  *(this + 146) = a2;
  if ((a3 & 1) == 0)
  {
    Alembic::AbcGeom::v12::OPointsSchema::createPositionProperty(this);
    Alembic::AbcGeom::v12::OPointsSchema::createIdProperty(this);
  }
}

void sub_29A069120(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  v12 = *(*v9 + 16);
  if (a2 == 2)
  {
    v13 = v11;
    v12(v9);
    sub_29A02D768(&a9, v13);
  }

  else
  {
    v12(v9);
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06910CLL);
}

void *sub_29A0691B0(void *a1)
{
  *a1 = &unk_2A203DEC0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

uint64_t Alembic::AbcGeom::v12::OPointsSchema::OPointsSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v25 = *(a2 + 4);
  v26 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  LODWORD(v23) = 1;
  LODWORD(v24) = v12;
  sub_29A068DDC(a1, &v25, a3, &v23, a4, a5, a6);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  *a1 = &unk_2A203DE38;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  sub_29A06B650(a1 + 392);
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  sub_29A057858(a4, a5, a6, &v21, &v23);
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v13 = sub_29A057978(a4, a5, a6, &v21);
  if (v23)
  {
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 24))(&v19);
    (*(*v19 + 24))(&v21);
    v16 = (*(*v21 + 48))(v21, v23);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    v16 = v13;
  }

  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v17 = sub_29A0585D8(a4, a5, a6, &v21);
  Alembic::AbcGeom::v12::OPointsSchema::init(a1, v16, v17);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return a1;
}

void sub_29A06947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A050A50((v14 + 49));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 43));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v15);
  sub_29A0691B0(v14);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPointsSchema::set(Alembic::AbcGeom::v12::OPointsSchema *this, uint64_t a2)
{
  if ((*(this + 568) & 1) == 0 && *a2)
  {
    v42[33] = this + 8;
    v42[34] = "OPointsSchema::set()";
    if (*(a2 + 48) == 127 || !*(a2 + 40) && *(a2 + 64) == *(a2 + 56))
    {
      goto LABEL_15;
    }

    if (*(this + 375) < 0)
    {
      if (!*(this + 45))
      {
        goto LABEL_13;
      }
    }

    else if (!*(this + 375))
    {
LABEL_13:
      if (*(this + 47))
      {
        goto LABEL_15;
      }
    }

    Alembic::AbcGeom::v12::OPointsSchema::createVelocityProperty(this);
LABEL_15:
    if (*(a2 + 128) != 127 && (*(a2 + 120) || *(a2 + 144) != *(a2 + 136)) && !sub_29A051208(this + 392))
    {
      Alembic::AbcGeom::v12::OPointsSchema::createWidthsProperty(this, a2);
    }

    if (*(this + 72))
    {
      v33 = *(this + 62);
      if (*(this + 279) < 0)
      {
        sub_29A008D14(&v34, *(this + 32), *(this + 33));
      }

      else
      {
        v34 = *(this + 16);
        v35 = *(this + 34);
      }

      v4 = *(this + 36);
      v36 = *(this + 35);
      v37 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      v5 = *(a2 + 5);
      *v29 = *a2;
      *&v29[5] = v5;
      __p = 0;
      v31 = 0;
      v32 = 0;
      sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
      if (SHIBYTE(v35) < 0)
      {
        if (*(&v34 + 1))
        {
          goto LABEL_54;
        }
      }

      else if (HIBYTE(v35))
      {
        goto LABEL_54;
      }

      if (v36)
      {
        if (*&v29[8] == 127 || !*v29 && v31 == __p)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v33);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v33);
        }
      }

LABEL_54:
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v33);
      v24 = *(this + 74);
      if (*(this + 327) < 0)
      {
        sub_29A008D14(&v25, *(this + 38), *(this + 39));
      }

      else
      {
        v25 = *(this + 19);
        v26 = *(this + 40);
      }

      v6 = *(this + 42);
      v27 = *(this + 41);
      v28 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *(a2 + 85);
      *v20 = *(a2 + 80);
      *&v20[5] = v7;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_29A00E7E0(&v21, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
      if (SHIBYTE(v26) < 0)
      {
        if (*(&v25 + 1))
        {
          goto LABEL_71;
        }
      }

      else if (HIBYTE(v26))
      {
        goto LABEL_71;
      }

      if (v27)
      {
        if (*&v20[8] == 127 || !*v20 && v22 == v21)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v24);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v24);
        }
      }

LABEL_71:
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v24);
      v15 = *(this + 86);
      if (*(this + 375) < 0)
      {
        sub_29A008D14(&v16, *(this + 44), *(this + 45));
      }

      else
      {
        v16 = *(this + 22);
        v17 = *(this + 46);
      }

      v8 = *(this + 48);
      v18 = *(this + 47);
      v19 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      *v11 = *(a2 + 40);
      *&v11[5] = *(a2 + 45);
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_29A00E7E0(&v12, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
      if (SHIBYTE(v17) < 0)
      {
        if (!*(&v16 + 1))
        {
          goto LABEL_82;
        }
      }

      else if (!HIBYTE(v17))
      {
LABEL_82:
        if (v18)
        {
          if (*&v11[8] == 127 || !*v11 && v13 == v12)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v15);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v15);
          }
        }
      }

      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v15);
      if (*(a2 + 232) <= *(a2 + 208) || *(a2 + 240) <= *(a2 + 216) || *(a2 + 248) <= *(a2 + 224))
      {
        if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
        {
          Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
        }

        else
        {
          sub_29A04EF90(a2, &v41);
          Alembic::Abc::v12::OScalarProperty::set((this + 56), &v41);
        }
      }

      else
      {
        Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 208));
      }

      if (sub_29A051208(this + 392))
      {
        sub_29A04F6BC(this + 392, a2 + 120);
      }

LABEL_101:
      ++*(this + 72);
      return;
    }

    if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16) || *(a2 + 88) == 127 || !*(a2 + 80) && *(a2 + 104) == *(a2 + 96))
    {
      sub_29A008864(&v41);
      sub_29A00911C(v42, "Sample 0 must have valid data for points and ids", 48);
      std::stringbuf::str();
      sub_29A008C60(v40, &v38);
      if (v39 < 0)
      {
        operator delete(v38);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v10 = sub_29A008E1C(exception, v40);
      __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
    }

    Alembic::Abc::v12::OArrayProperty::set(this + 248);
    Alembic::Abc::v12::OArrayProperty::set(this + 296);
    if (*(this + 375) < 0)
    {
      if (!*(this + 45))
      {
        goto LABEL_43;
      }
    }

    else if (!*(this + 375))
    {
LABEL_43:
      if (*(this + 47))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 344);
      }
    }

    if (sub_29A051208(this + 392))
    {
      sub_29A04F6BC(this + 392, a2 + 120);
    }

    if (*(a2 + 232) >= *(a2 + 208) && *(a2 + 240) >= *(a2 + 216) && *(a2 + 248) >= *(a2 + 224))
    {
      Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 208));
    }

    else
    {
      sub_29A04EF90(a2, &v41);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), &v41);
    }

    goto LABEL_101;
  }

  Alembic::AbcGeom::v12::OPointsSchema::selectiveSet(this, a2);
}

void sub_29A069B24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::exception a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_29A008F20(&a46);
  sub_29A008B0C(&a50);
  v53 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v50 - 48, v53);
  }

  else
  {
    sub_29A02D6F8(v50 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A069A88);
}

void Alembic::AbcGeom::v12::OPointsSchema::selectiveSet(Alembic::AbcGeom::v12::OPointsSchema *this, uint64_t a2)
{
  v28 = this + 8;
  v29 = "OPointsSchema::set()";
  if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
  {
    if (*(this + 279) < 0)
    {
      if (!*(this + 33))
      {
        goto LABEL_8;
      }
    }

    else if (!*(this + 279))
    {
LABEL_8:
      if (*(this + 35))
      {
        goto LABEL_10;
      }
    }

    Alembic::AbcGeom::v12::OPointsSchema::createPositionProperty(this);
  }

LABEL_10:
  if (*(this + 279) < 0)
  {
    if (*(this + 33) || !*(this + 35))
    {
      goto LABEL_40;
    }

    v23 = *(this + 62);
    sub_29A008D14(&v24, *(this + 32), 0);
    v4 = *(this + 35);
  }

  else
  {
    if (*(this + 279))
    {
      goto LABEL_40;
    }

    v4 = *(this + 35);
    if (!v4)
    {
      goto LABEL_40;
    }

    v23 = *(this + 62);
    v24 = *(this + 16);
    v25 = *(this + 34);
  }

  v5 = *(this + 36);
  v26 = v4;
  v27 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v19 = *a2;
  *&v19[5] = v6;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v25) < 0)
  {
    if (!*(&v24 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (!HIBYTE(v25))
  {
LABEL_23:
    if (v26)
    {
      if (*&v19[8] == 127 || !*v19 && v21 == __p)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v23);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v23);
      }
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v23);
  if (*(a2 + 232) <= *(a2 + 208) || *(a2 + 240) <= *(a2 + 216) || *(a2 + 248) <= *(a2 + 224))
  {
    if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
    }

    else
    {
      sub_29A04EF90(a2, v18);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), v18);
    }
  }

  else
  {
    Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 208));
  }

LABEL_40:
  if (*(a2 + 88) != 127 && (*(a2 + 80) || *(a2 + 104) != *(a2 + 96)))
  {
    if (*(this + 327) < 0)
    {
      if (!*(this + 39))
      {
        goto LABEL_47;
      }
    }

    else if (!*(this + 327))
    {
LABEL_47:
      if (*(this + 41))
      {
        goto LABEL_49;
      }
    }

    Alembic::AbcGeom::v12::OPointsSchema::createIdProperty(this);
  }

LABEL_49:
  if (*(this + 327) < 0)
  {
    if (*(this + 39) || !*(this + 41))
    {
      goto LABEL_71;
    }

    v13 = *(this + 74);
    sub_29A008D14(&v14, *(this + 38), 0);
    v7 = *(this + 41);
  }

  else
  {
    if (*(this + 327))
    {
      goto LABEL_71;
    }

    v7 = *(this + 41);
    if (!v7)
    {
      goto LABEL_71;
    }

    v13 = *(this + 74);
    v14 = *(this + 19);
    v15 = *(this + 40);
  }

  v8 = *(this + 42);
  v16 = v7;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *v9 = *(a2 + 80);
  *&v9[5] = *(a2 + 85);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_29A00E7E0(&v10, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  if (SHIBYTE(v15) < 0)
  {
    if (!*(&v14 + 1))
    {
      goto LABEL_62;
    }
  }

  else if (!HIBYTE(v15))
  {
LABEL_62:
    if (v16)
    {
      if (*&v9[8] == 127 || !*v9 && v11 == v10)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v13);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v13);
      }
    }
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v13);
LABEL_71:
  if (*(a2 + 48) != 127 && (*(a2 + 40) || *(a2 + 64) != *(a2 + 56)))
  {
    if (*(this + 375) < 0)
    {
      if (!*(this + 45))
      {
        goto LABEL_78;
      }
    }

    else if (!*(this + 375))
    {
LABEL_78:
      if (*(this + 47))
      {
        goto LABEL_80;
      }
    }

    Alembic::AbcGeom::v12::OPointsSchema::createVelocityProperty(this);
  }

LABEL_80:
  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      goto LABEL_86;
    }
  }

  else if (*(this + 375))
  {
    goto LABEL_86;
  }

  if (*(this + 47))
  {
    Alembic::Abc::v12::OArrayProperty::set(this + 344);
  }

LABEL_86:
  if (*(a2 + 128) != 127 && (*(a2 + 120) || *(a2 + 144) != *(a2 + 136)) && !sub_29A051208(this + 392))
  {
    Alembic::AbcGeom::v12::OPointsSchema::createWidthsProperty(this, a2);
  }

  if (sub_29A051208(this + 392))
  {
    sub_29A04F6BC(this + 392, a2 + 120);
  }

  ++*(this + 72);
}

void sub_29A06A09C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v29 - 48, v32);
  }

  else
  {
    sub_29A02D6F8(v29 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06A088);
}

void Alembic::AbcGeom::v12::OPointsSchema::createVelocityProperty(Alembic::AbcGeom::v12::OPointsSchema *this)
{
  v2 = *(this + 6);
  v17 = *(this + 5);
  v18 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".velocities");
  sub_29A06B32C(this, &v10);
  v12 = 4;
  v13 = &v10;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  sub_29A052004(&v19, &v17, &__p, &v12, v9, v8, v7);
  *(this + 86) = v19;
  std::string::operator=((this + 352), &v20);
  v4 = v21;
  v3 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 48);
  *(this + 47) = v4;
  *(this + 48) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v19);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_29A051850(&v19, &__p);
  if (*(this + 72))
  {
    v6 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 344);
      ++v6;
    }

    while (v6 < *(this + 72));
  }

  if (v20.__r_.__value_.__l.__size_)
  {
    v20.__r_.__value_.__r.__words[2] = v20.__r_.__value_.__l.__size_;
    operator delete(v20.__r_.__value_.__l.__size_);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_29A06A2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OPointsSchema::createWidthsProperty(void *a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  *&v37 = 0;
  *(&v37 + 1) = 0x10000000ALL;
  v38 = 0u;
  *v39 = 0u;
  *&v39[16] = 0x100000005;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 127;
  if (*(a2 + 168) != 127 && (*(a2 + 160) || *(a2 + 184) != *(a2 + 176)))
  {
    sub_29A055520(v34, &v47);
    sub_29A052640(&v30, &v44);
    sub_29A0555C4(&__dst, v34, &v30, *(a2 + 200));
    *&v37 = __dst;
    *(&v37 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
    *&v39[8] = v24;
    *&v39[13] = *(&v24 + 5);
    sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
    v43 = v28;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23[0] = v22;
      operator delete(v22);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v9 = a1[6];
    v19 = a1[5];
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v34, ".widths");
    v10 = *(a2 + 200);
    sub_29A06B32C(a1, &v17);
    LODWORD(v30) = 4;
    v31 = &v17;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A055678(&__dst, &v19, v34, 1, v10, 1, &v30, &v15, &v13);
    sub_29A050950((a1 + 49), &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v29);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v27);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v23);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(*v34);
    }

    v7 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_29A014BEC(v7);
    goto LABEL_18;
  }

  sub_29A055520(v34, &v47);
  v4 = *(a2 + 200);
  *&__dst = *v34;
  *(&__dst + 5) = *&v34[5];
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_29A00E7E0(&v22, v35, v36, (v36 - v35) >> 3);
  *&v24 = 0;
  *(&v24 + 1) = 0x100000005;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v28 = v4;
  *&v37 = __dst;
  *(&v37 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
  *&v39[8] = v24;
  *&v39[13] = *(&v24 + 5);
  sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
  v43 = v28;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23[0] = v22;
    operator delete(v22);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v5 = a1[6];
  v11 = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v34, ".widths");
  v6 = *(a2 + 200);
  sub_29A06B32C(a1, &v17);
  LODWORD(v30) = 4;
  v31 = &v17;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A055678(&__dst, &v11, v34, 0, v6, 1, &v30, &v15, &v13);
  sub_29A050950((a1 + 49), &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v29);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*v34);
  }

  v7 = v12;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a1[72])
  {
    v8 = 0;
    do
    {
      sub_29A04F6BC((a1 + 49), &v37);
      ++v8;
    }

    while (v8 < a1[72]);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_29A06A7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  sub_29A050A50(&a20);
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (*(v45 - 217) < 0)
  {
    operator delete(*(v45 - 240));
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A050844((v45 - 200));
  v47 = *(v45 - 112);
  if (v47)
  {
    *(v45 - 104) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 88);
  if (v48)
  {
    *(v45 - 80) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPointsSchema::createPositionProperty(Alembic::AbcGeom::v12::OPointsSchema *this)
{
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  sub_29A0503CC(&v24, 2);
  v2 = *(this + 6);
  v18 = *(this + 5);
  v19 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "P");
  LODWORD(v12) = 3;
  v13 = &v24;
  v3 = *(this + 146);
  v17[0] = 2;
  v17[2] = v3;
  v16[0] = 0;
  v16[2] = 0;
  v15[0] = 0;
  v15[2] = 0;
  sub_29A0512B8(&v20, &v18, __p, &v12, v17, v16, v15);
  *(this + 62) = v20;
  std::string::operator=((this + 256), &v21);
  v5 = v22;
  v4 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 36);
  *(this + 35) = v5;
  *(this + 36) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A051850(&v20, &v12);
  if (*(this + 72))
  {
    v7 = 0;
    do
    {
      sub_29A051900(__p, &v20);
      Alembic::Abc::v12::OArrayProperty::set(this + 248);
      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      ++v7;
      v8 = *(this + 72);
    }

    while (v7 < v8);
  }

  else
  {
    v8 = 0;
  }

  sub_29A06B11C(this, *(this + 146), v8);
  if (v21.__r_.__value_.__l.__size_)
  {
    v21.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__l.__size_;
    operator delete(v21.__r_.__value_.__l.__size_);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  sub_29A01752C(&v24, v25[0]);
}

void sub_29A06AA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 - 88);
  if (v30)
  {
    *(v28 - 80) = v30;
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_29A01752C(v28 - 56, *(v28 - 48));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPointsSchema::createIdProperty(Alembic::AbcGeom::v12::OPointsSchema *this)
{
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  sub_29A0503CC(&v23, 2);
  v2 = *(this + 6);
  v17 = *(this + 5);
  v18 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".pointIds");
  LODWORD(v11) = 3;
  v12 = &v23;
  v3 = *(this + 146);
  v16[0] = 2;
  v16[2] = v3;
  v15[0] = 0;
  v15[2] = 0;
  v14[0] = 0;
  v14[2] = 0;
  sub_29A06BD94(&v19, &v17, __p, &v11, v16, v15, v14);
  *(this + 74) = v19;
  std::string::operator=((this + 304), &v20);
  v5 = v21;
  v4 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 42);
  *(this + 41) = v5;
  *(this + 42) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v19);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_29A06C278(&v19, &v11);
  if (*(this + 72))
  {
    v7 = 0;
    do
    {
      sub_29A06C31C(__p, &v19);
      Alembic::Abc::v12::OArrayProperty::set(this + 296);
      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }

      ++v7;
    }

    while (v7 < *(this + 72));
  }

  if (v20.__r_.__value_.__l.__size_)
  {
    v20.__r_.__value_.__r.__words[2] = v20.__r_.__value_.__l.__size_;
    operator delete(v20.__r_.__value_.__l.__size_);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  sub_29A01752C(&v23, v24[0]);
}

void sub_29A06ACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A01752C(v19 - 40, *(v19 - 32));
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::OPointsSchema::setFromPrevious(Alembic::AbcGeom::v12::OPointsSchema *this)
{
  if (*(this + 279) < 0)
  {
    if (*(this + 33))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 279))
  {
    goto LABEL_7;
  }

  if (*(this + 35))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 248));
  }

LABEL_7:
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_13;
  }

  if (*(this + 41))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 296));
  }

LABEL_13:
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_19;
  }

  if (*(this + 11))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
  }

LABEL_19:
  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 375))
  {
    goto LABEL_25;
  }

  if (*(this + 47))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 344));
  }

LABEL_25:
  result = sub_29A051208(this + 392);
  if (result)
  {
    return sub_29A050328(this + 392);
  }

  return result;
}

void sub_29A06AE60(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06AE50);
}

uint64_t Alembic::AbcGeom::v12::OPointsSchema::setTimeSampling(Alembic::AbcGeom::v12::OPointsSchema *this, int a2)
{
  *(this + 146) = a2;
  if (*(this + 279) < 0)
  {
    if (*(this + 33))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 279))
  {
    goto LABEL_7;
  }

  if (*(this + 35))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 248));
  }

LABEL_7:
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_13;
  }

  if (*(this + 41))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 296));
  }

LABEL_13:
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_19;
  }

  if (*(this + 11))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 56));
  }

LABEL_19:
  result = sub_29A051208(this + 392);
  if (result)
  {
    result = sub_29A050E30(this + 392);
  }

  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      return result;
    }
  }

  else if (*(this + 375))
  {
    return result;
  }

  if (*(this + 47))
  {
    return Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 344));
  }

  return result;
}

void sub_29A06AFBC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06AFACLL);
}

int *Alembic::AbcGeom::v12::OPointsSchema::setTimeSampling(Alembic::AbcGeom::v12::OPointsSchema *a1, void *a2)
{
  result = (a1 + 8);
  v7 = result;
  v8 = "OPointsSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(result, v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    v4 = Alembic::Abc::v12::OArchive::addTimeSampling(v6);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return Alembic::AbcGeom::v12::OPointsSchema::setTimeSampling(a1, v4);
  }

  return result;
}

void sub_29A06B094(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v17 - 32, v19);
  }

  else
  {
    sub_29A02D6F8(v17 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06B084);
}

void sub_29A06B11C(uint64_t a1, int a2, uint64_t a3)
{
  v19 = a1 + 8;
  v20 = "OGeomBaseSchema::createSelfBoundsProperty()";
  if (*(a1 + 87) < 0)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 87))
  {
LABEL_5:
    if (*(a1 + 88))
    {
      return;
    }
  }

  v6 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".selfBnds");
  v12[0] = 2;
  v12[2] = a2;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  sub_29A045D40(v17, &v15, __p, v12, v11, v10, v9);
  *(a1 + 56) = v17[0];
  std::string::operator=((a1 + 64), (v17 + 8));
  v7 = i;
  if (i.i64[1])
  {
    atomic_fetch_add_explicit((i.i64[1] + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 96);
  *(a1 + 88) = v7;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17[1] = xmmword_29B432560;
  for (i = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL); a3; --a3)
  {
    Alembic::Abc::v12::OScalarProperty::set((a1 + 56), v17);
  }
}

void sub_29A06B288(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v25 - 96));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v25 - 48, v28);
  }

  else
  {
    sub_29A02D6F8(v25 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06B274);
}

void sub_29A06B32C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 279) < 0)
  {
    if (!*(a1 + 264))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_29A04428C((a1 + 8), v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    Alembic::Abc::v12::OArchive::getTimeSampling(v6, a2);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return;
  }

  if (*(a1 + 279))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(a1 + 280))
  {
    goto LABEL_8;
  }

  v3 = sub_29A0510D4(a1 + 248);
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29A06B3D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  Alembic::Abc::v12::OArchive::~OArchive(va1);
  Alembic::Abc::v12::OObject::~OObject(va);
  _Unwind_Resume(a1);
}

void sub_29A06B3F8(uint64_t a1)
{
  v1 = sub_29A06C498(a1);

  operator delete(v1);
}

void sub_29A06B420(uint64_t a1)
{
  sub_29A02F0A0(a1 + 248);
  sub_29A02F0A0(a1 + 296);
  sub_29A02F0A0(a1 + 344);
  sub_29A051268(a1 + 392);

  sub_29A06B5D0(a1);
}

uint64_t sub_29A06B474(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (*(a1 + 39))
  {
    goto LABEL_17;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      goto LABEL_17;
    }
  }

  else if (*(a1 + 279))
  {
    goto LABEL_17;
  }

  if (!*(a1 + 280))
  {
    goto LABEL_17;
  }

  if (*(a1 + 327) < 0)
  {
    if (!*(a1 + 312))
    {
      goto LABEL_15;
    }

LABEL_17:
    v1 = *(a1 + 568);
    return v1 & 1;
  }

  if (*(a1 + 327))
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!*(a1 + 328))
  {
    goto LABEL_17;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_29A06B4E8(void *a1)
{
  *a1 = &unk_2A203DEC0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_29A06B554(void *a1)
{
  *a1 = &unk_2A203DEC0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  operator delete(a1);
}

void sub_29A06B5D0(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

BOOL sub_29A06B624(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_29A06B650(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  sub_29A008E78((a1 + 32), "");
  *(a1 + 72) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_29A008E78((a1 + 80), "");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 124) = 0x20000007FLL;
  sub_29A008E78((a1 + 136), "");
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_29A06B6EC(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A06B728(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DEF0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A06B900(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A06B804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A06B824(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_29A06B11C(a1, a2, 0);
  }
}

void sub_29A06B870(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  v12 = *(*v9 + 16);
  if (a2 == 2)
  {
    v13 = v11;
    v12(v9);
    sub_29A02D768(&a9, v13);
  }

  else
  {
    v12(v9);
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06B85CLL);
}

void sub_29A06B900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24[0] = 0;
  v22 = &v23;
  v25 = 2;
  sub_29A019350(v26, &v22);
  v28 = 0;
  v27 = 0u;
  v29 = 1;
  sub_29A01752C(&v22, v23);
  sub_29A02E010(a4, &v25);
  sub_29A02E010(a5, &v25);
  sub_29A02E010(a6, &v25);
  sub_29A02E010(a7, &v25);
  *(a1 + 8) = v25;
  v24[33] = a1 + 8;
  v24[34] = "OSchema::OSchema::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(v24, "NULL parent passed into OSchema ctor", 36);
    std::stringbuf::str();
    sub_29A008C60(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(exception, __p);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v22, v26);
  if (HIDWORD(v29) != 1)
  {
    sub_29A008E78(__p, "schema");
    sub_29A008E78(&__str, "AbcGeom_Points_v1");
    v30 = __p;
    v13 = sub_29A00B038(&v22, __p, &unk_29B432901, &v30);
    std::string::operator=((v13 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (HIDWORD(v29) != 1)
    {
      sub_29A008E78(__p, "schemaBaseType");
      sub_29A008E78(&__str, "AbcGeom_GeomBase_v1");
      v30 = __p;
      v14 = sub_29A00B038(&v22, __p, &unk_29B432901, &v30);
      std::string::operator=((v14 + 7), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  (*(**a2 + 112))(__p);
  v15 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v16 = *(a1 + 48);
  *(a1 + 40) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  sub_29A01752C(&v22, v23);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A01752C(v26, v26[1]);
}