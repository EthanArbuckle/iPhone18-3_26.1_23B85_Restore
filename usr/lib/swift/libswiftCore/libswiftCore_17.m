uint64_t anonymous namespace::Remangler::mangleImplParameterIsolated@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 18) != 3)
  {
    v3 = 1964;
    v4 = 1;
    goto LABEL_6;
  }

  if (*(a2 + 1) == 8 && **a2 == 0x646574616C6F7369)
  {
    v5 = *(this + 12736);
    v6 = *(this + 12740);
    v7 = *(this + 12728);
    if (v5 < v6)
    {
LABEL_23:
      v4 = 0;
      a2 = 0;
      v3 = 0;
      *(this + 12736) = v5 + 1;
      v7[v5] = 73;
      goto LABEL_6;
    }

    v8 = *(this + 12744);
    v9 = v8[1];
    if (&v7[v6] == v9)
    {
      v10 = v8[2];
      if ((v9 + 1) <= v10)
      {
        v8[1] = v9 + 1;
        LODWORD(v11) = 1;
LABEL_22:
        *(this + 12740) = v6 + v11;
        goto LABEL_23;
      }
    }

    else
    {
      v10 = v8[2];
    }

    if ((2 * v6) <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = (2 * v6);
    }

    v12 = v11 + v6;
    if (!v9 || &v9[v12] > v10)
    {
      v13 = 2 * v8[4];
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      v8[4] = v13;
      v14 = v13 + 8;
      v15 = this;
      v16 = a3;
      v17 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
      a3 = v16;
      v18 = v17;
      this = v15;
      v19 = v18 + v14;
      *v18 = v8[3];
      v9 = (v18 + 1);
      v8[2] = v19;
      v8[3] = v18;
    }

    v8[1] = &v9[v12];
    if (v6)
    {
      v20 = this;
      v21 = v6;
      v22 = a3;
      memcpy(v9, *(this + 12728), v21);
      this = v20;
      a3 = v22;
    }

    *(this + 12728) = v9;
    LODWORD(v6) = *(this + 12740);
    v7 = v9;
    v5 = *(this + 12736);
    goto LABEL_22;
  }

  v3 = 1968;
  v4 = 20;
LABEL_6:
  *a3 = v4;
  *(a3 + 8) = a2;
  *(a3 + 16) = v3;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplParameterImplicitLeading@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 18) != 3)
  {
    v6 = 1976;
    v7 = 1;
    goto LABEL_15;
  }

  if (*(a2 + 1) == 26)
  {
    v3 = **a2 == 0x6C706D695F6C6973 && *(*a2 + 8) == 0x61656C5F74696369;
    v4 = v3 && *(*a2 + 16) == 0x7261705F676E6964;
    if (v4 && *(*a2 + 24) == 28001)
    {
      v8 = *(this + 12736);
      v9 = *(this + 12740);
      v10 = *(this + 12728);
      if (v8 < v9)
      {
LABEL_32:
        v7 = 0;
        a2 = 0;
        v6 = 0;
        *(this + 12736) = v8 + 1;
        v10[v8] = 76;
        goto LABEL_15;
      }

      v11 = *(this + 12744);
      v12 = v11[1];
      if (&v10[v9] == v12)
      {
        v13 = v11[2];
        if ((v12 + 1) <= v13)
        {
          v11[1] = v12 + 1;
          LODWORD(v14) = 1;
LABEL_31:
          *(this + 12740) = v9 + v14;
          goto LABEL_32;
        }
      }

      else
      {
        v13 = v11[2];
      }

      if ((2 * v9) <= 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = (2 * v9);
      }

      v15 = v14 + v9;
      if (!v12 || &v12[v15] > v13)
      {
        v16 = 2 * v11[4];
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        v11[4] = v16;
        v17 = v16 + 8;
        v18 = this;
        v19 = a3;
        v20 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
        a3 = v19;
        v21 = v20;
        this = v18;
        v22 = v21 + v17;
        *v21 = v11[3];
        v12 = (v21 + 1);
        v11[2] = v22;
        v11[3] = v21;
      }

      v11[1] = &v12[v15];
      if (v9)
      {
        v23 = this;
        v24 = v9;
        v25 = a3;
        memcpy(v12, *(this + 12728), v24);
        this = v23;
        a3 = v25;
      }

      *(this + 12728) = v12;
      LODWORD(v9) = *(this + 12740);
      v10 = v12;
      v8 = *(this + 12736);
      goto LABEL_31;
    }
  }

  v6 = 1980;
  v7 = 20;
LABEL_15:
  *a3 = v7;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  return this;
}

unsigned int *anonymous namespace::Remangler::mangleImplFunctionConvention@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if ((v3 - 1) >= 2)
  {
    if (v3 != 5 || !*(a2 + 2))
    {
      v8 = 2006;
      v9 = 1;
      goto LABEL_55;
    }

    v4 = *a2;
  }

  if (*(*v4 + 18) != 3)
  {
LABEL_54:
    v8 = 2006;
    v9 = 1;
    goto LABEL_55;
  }

  v5 = a2;
  if ((v3 - 1) >= 2)
  {
    v5 = *a2;
  }

  v6 = **v5;
  v7 = *(*v5 + 8);
  v8 = 2006;
  v9 = 1;
  if (v7 <= 6)
  {
    switch(v7)
    {
      case 1:
        if (*v6 != 99)
        {
          v8 = 2006;
          goto LABEL_55;
        }

        v11 = 67;
        break;
      case 5:
        if (*v6 != 1668246626 || *(v6 + 4) != 107)
        {
          goto LABEL_54;
        }

        v11 = 66;
        break;
      case 6:
        if (*v6 != 1752458605 || *(v6 + 4) != 25711)
        {
          goto LABEL_54;
        }

        v11 = 77;
LABEL_58:
        v23 = this[3184];
        v24 = this[3185];
        v25 = *(this + 1591);
        if (v23 < v24)
        {
LABEL_74:
          v9 = 0;
          a2 = 0;
          v8 = 0;
          this[3184] = v23 + 1;
          v25[v23] = v11;
          goto LABEL_55;
        }

        v26 = *(this + 1593);
        v27 = v26[1];
        if (&v25[v24] == v27)
        {
          v28 = v26[2];
          if ((v27 + 1) <= v28)
          {
            v26[1] = v27 + 1;
            LODWORD(v30) = 1;
LABEL_73:
            this[3185] = v24 + v30;
            goto LABEL_74;
          }
        }

        else
        {
          v28 = v26[2];
        }

        v29 = a3;
        if ((2 * v24) <= 4)
        {
          v30 = 4;
        }

        else
        {
          v30 = (2 * v24);
        }

        v31 = v30 + v24;
        if (!v27 || &v27[v31] > v28)
        {
          v32 = 2 * v26[4];
          if (v32 <= v31 + 1)
          {
            v32 = v31 + 1;
          }

          v26[4] = v32;
          v33 = v32 + 8;
          v34 = this;
          v35 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
          this = v34;
          v36 = v35 + v33;
          *v35 = v26[3];
          v27 = (v35 + 1);
          v26[2] = v36;
          v26[3] = v35;
        }

        v26[1] = &v27[v31];
        if (v24)
        {
          v37 = this;
          memcpy(v27, *(this + 1591), v24);
          this = v37;
        }

        *(this + 1591) = v27;
        LODWORD(v24) = this[3185];
        v25 = v27;
        v23 = this[3184];
        a3 = v29;
        goto LABEL_73;
      default:
        goto LABEL_55;
    }

    v15 = a2;
    if (v3 != 2)
    {
      if (v3 != 5 || *(a2 + 2) < 2u)
      {
        goto LABEL_58;
      }

      v15 = *a2;
    }

    if (*(*(v15 + 1) + 16) != 24)
    {
      goto LABEL_58;
    }

    v16 = this[3184];
    v17 = this[3185];
    v18 = *(this + 1591);
    if (v16 < v17)
    {
LABEL_89:
      this[3184] = v16 + 1;
      v18[v16] = 122;
      v52 = this[3184];
      v53 = this[3185];
      v54 = *(this + 1591);
      if (v52 < v53)
      {
        goto LABEL_105;
      }

      v55 = *(this + 1593);
      v56 = v55[1];
      if (&v54[v53] == v56)
      {
        v57 = v55[2];
        if ((v56 + 1) <= v57)
        {
          v55[1] = v56 + 1;
          LODWORD(v59) = 1;
LABEL_104:
          this[3185] = v53 + v59;
LABEL_105:
          this[3184] = v52 + 1;
          v54[v52] = v11;
          v71 = *(a2 + 18);
          if (v71 == 2)
          {
            v72 = a3;
          }

          else
          {
            if (v71 != 5 || *(a2 + 2) < 2u)
            {
              v72 = a3;
              v73 = 0;
LABEL_112:
              v74 = this;
              swift::Demangle::__runtime::CharVector::append(this + 3182, *(v73 + 8), *(this + 1593));
              this = swift::Demangle::__runtime::CharVector::append((v74 + 12728), *v73, *(v73 + 8), *(v74 + 12744));
              v9 = 0;
              a2 = 0;
              v8 = 0;
              a3 = v72;
              goto LABEL_55;
            }

            v72 = a3;
            a2 = *a2;
          }

          v73 = *(a2 + 1);
          goto LABEL_112;
        }
      }

      else
      {
        v57 = v55[2];
      }

      v58 = a2;
      if ((2 * v53) <= 4)
      {
        v59 = 4;
      }

      else
      {
        v59 = (2 * v53);
      }

      v60 = v59 + v53;
      if (!v56 || &v56[v60] > v57)
      {
        v61 = 2 * v55[4];
        if (v61 <= v60 + 1)
        {
          v61 = v60 + 1;
        }

        v55[4] = v61;
        v62 = v61 + 8;
        v63 = this;
        v64 = a3;
        v65 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
        a3 = v64;
        v66 = v65;
        this = v63;
        v67 = v66 + v62;
        *v66 = v55[3];
        v56 = (v66 + 1);
        v55[2] = v67;
        v55[3] = v66;
      }

      v55[1] = &v56[v60];
      if (v53)
      {
        v68 = this;
        v69 = v53;
        v70 = a3;
        memcpy(v56, *(this + 1591), v69);
        this = v68;
        a3 = v70;
      }

      *(this + 1591) = v56;
      LODWORD(v53) = this[3185];
      v54 = v56;
      v52 = this[3184];
      a2 = v58;
      goto LABEL_104;
    }

    v19 = *(this + 1593);
    v20 = v19[1];
    if (&v18[v17] == v20)
    {
      v21 = v19[2];
      if ((v20 + 1) <= v21)
      {
        v19[1] = v20 + 1;
        LODWORD(v38) = 1;
LABEL_88:
        this[3185] = v17 + v38;
        goto LABEL_89;
      }
    }

    else
    {
      v21 = v19[2];
    }

    if ((2 * v17) <= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = (2 * v17);
    }

    v39 = v38 + v17;
    if (!v20 || &v20[v39] > v21)
    {
      v40 = 2 * v19[4];
      if (v40 <= v39 + 1)
      {
        v40 = v39 + 1;
      }

      v19[4] = v40;
      v41 = v40 + 8;
      v42 = this;
      v43 = a2;
      v44 = a3;
      v45 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
      a2 = v43;
      a3 = v44;
      v46 = v45;
      this = v42;
      v47 = v46 + v41;
      *v46 = v19[3];
      v20 = (v46 + 1);
      v19[2] = v47;
      v19[3] = v46;
    }

    v19[1] = &v20[v39];
    if (v17)
    {
      v48 = this;
      v49 = a2;
      v50 = v17;
      v51 = a3;
      memcpy(v20, *(this + 1591), v50);
      a2 = v49;
      this = v48;
      a3 = v51;
    }

    *(this + 1591) = v20;
    LODWORD(v17) = this[3185];
    v18 = v20;
    v16 = this[3184];
    goto LABEL_88;
  }

  switch(v7)
  {
    case 7:
      if (*v6 != 1936682083 || *(v6 + 3) != 1701999987)
      {
        goto LABEL_54;
      }

      v11 = 75;
      goto LABEL_58;
    case 11:
      if (*v6 != 0x74656D5F636A626FLL || *(v6 + 3) != 0x646F6874656D5F63)
      {
        goto LABEL_54;
      }

      v11 = 79;
      goto LABEL_58;
    case 14:
      if (*v6 != 0x5F7373656E746977 || *(v6 + 6) != 0x646F6874656D5F73)
      {
        goto LABEL_54;
      }

      v11 = 87;
      goto LABEL_58;
  }

LABEL_55:
  *a3 = v9;
  *(a3 + 8) = a2;
  *(a3 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleImplFunctionType@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *a2;
      v9 = *a2;
      goto LABEL_9;
    }

    v9 = 0;
  }

  if (v8 == 1)
  {
    v11 = (a2 + 8);
    if (v9 != (a2 + 8))
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  if (v8 == 2)
  {
    v11 = (a2 + 16);
    if (v9 != (a2 + 16))
    {
      goto LABEL_10;
    }

LABEL_36:
    v26 = "";
    v27 = 1;
    v19 = 1;
    goto LABEL_37;
  }

  if (v8 != 5)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  v10 = *a2;
LABEL_9:
  v11 = (v10 + 8 * *(a2 + 2));
  if (v9 == v11)
  {
    goto LABEL_36;
  }

LABEL_10:
  v12 = 0;
  v13 = 0;
  v279 = 0;
  v280 = "";
  do
  {
    v14 = *v9;
    v15 = *(*v9 + 16);
    if (v15 > 0x7A)
    {
      if (v15 - 125 >= 3)
      {
        if (v15 == 124)
        {
          v279 = *v9;
          goto LABEL_12;
        }

        if (v15 != 123)
        {
          goto LABEL_12;
        }
      }

      v16 = *(v14 + 18);
      v17 = 1;
      if (v16 != 2)
      {
        if (v16 != 5)
        {
          v48 = 2057;
          goto LABEL_506;
        }

        v18 = *(v14 + 2);
        if (v18 < 2)
        {
          v48 = 2057;
          LODWORD(v17) = 1;
          goto LABEL_506;
        }

        v17 = v18 - 1;
        v14 = *v14;
      }

      if (*a4)
      {
        return this;
      }
    }

    else
    {
      switch(v15)
      {
        case ',':
          goto LABEL_27;
        case '/':
          v280 = "P";
LABEL_27:
          v12 = *v9;
          break;
        case 'y':
          v13 = *v9;
          break;
      }
    }

LABEL_12:
    v9 = (v9 + 8);
  }

  while (v9 != v11);
  if (v12)
  {
    if (*a4)
    {
      return this;
    }
  }

  v19 = v13 == 0;
  if (v13)
  {
    v20 = *(v6 + 12736);
    v21 = *(v6 + 12740);
    v22 = *(v6 + 12728);
    if (v20 >= v21)
    {
      v23 = *(v6 + 12744);
      v24 = v23[1];
      if (&v22[v21] != v24)
      {
        v25 = v23[2];
        goto LABEL_509;
      }

      v25 = v23[2];
      if ((v24 + 1) <= v25)
      {
        v23[1] = v24 + 1;
        LODWORD(v240) = 1;
      }

      else
      {
LABEL_509:
        if ((2 * v21) <= 4)
        {
          v240 = 4;
        }

        else
        {
          v240 = (2 * v21);
        }

        v241 = v240 + v21;
        if (!v24 || &v24[v241] > v25)
        {
          v242 = 2 * v23[4];
          if (v242 <= v241 + 1)
          {
            v242 = v241 + 1;
          }

          v23[4] = v242;
          v243 = v242 + 8;
          v244 = malloc_type_malloc(v242 + 8, 0x2004093837F09uLL);
          v245 = v244 + v243;
          *v244 = v23[3];
          v24 = (v244 + 1);
          v23[2] = v245;
          v23[3] = v244;
        }

        v23[1] = &v24[v241];
        if (v21)
        {
          memcpy(v24, *(v6 + 12728), v21);
        }

        *(v6 + 12728) = v24;
        LODWORD(v21) = *(v6 + 12740);
        v22 = v24;
        v20 = *(v6 + 12736);
        v19 = v13 == 0;
      }

      *(v6 + 12740) = v21 + v240;
    }

    *(v6 + 12736) = v20 + 1;
    v22[v20] = 121;
    v246 = *(v13 + 18);
    v247 = v13;
    if ((v246 - 1) < 2)
    {
LABEL_525:
      v248 = *v247;
    }

    else
    {
      if (v246 == 5 && *(v13 + 2))
      {
        v247 = *v13;
        goto LABEL_525;
      }

      v248 = 0;
    }

    v249 = *(v248 + 18);
    v250 = v248;
    if ((v249 - 1) >= 2)
    {
      if (v249 == 5)
      {
        v251 = *v248;
        v250 = *v248;
        goto LABEL_535;
      }

      v250 = 0;
    }

    switch(v249)
    {
      case 1:
        v252 = (v248 + 8);
        break;
      case 2:
        v252 = (v248 + 16);
        break;
      case 5:
        v251 = *v248;
LABEL_535:
        v252 = (v251 + 8 * *(v248 + 8));
        break;
      default:
        v252 = 0;
        break;
    }

    if (v250 != v252)
    {
      do
      {
        if (*a4)
        {
          return this;
        }

        ++v250;
      }

      while (v250 != v252);
      v246 = *(v13 + 18);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v246 == 2)
    {
LABEL_547:
      if (*a4)
      {
        return this;
      }
    }

    else if (v246 == 5 && *(v13 + 2) >= 2u)
    {
      v13 = *v13;
      goto LABEL_547;
    }
  }

  if (!v279)
  {
    v27 = 1;
    goto LABEL_555;
  }

  v253 = *(v279 + 18);
  v254 = v279;
  if ((v253 - 1) < 2)
  {
    goto LABEL_553;
  }

  if (v253 == 5 && *(v279 + 2))
  {
    v254 = *v279;
LABEL_553:
    v255 = *v254;
  }

  else
  {
    v255 = 0;
  }

  if (*a4)
  {
    return this;
  }

  v256 = *(v6 + 12736);
  v257 = *(v6 + 12740);
  v258 = *(v6 + 12728);
  if (v256 >= v257)
  {
    v259 = *(v6 + 12744);
    v260 = v259[1];
    if (&v258[v257] != v260)
    {
      v261 = v259[2];
      goto LABEL_579;
    }

    v261 = v259[2];
    if ((v260 + 1) <= v261)
    {
      v259[1] = v260 + 1;
      LODWORD(v263) = 1;
    }

    else
    {
LABEL_579:
      v262 = v19;
      if ((2 * v257) <= 4)
      {
        v263 = 4;
      }

      else
      {
        v263 = (2 * v257);
      }

      v264 = v263 + v257;
      if (!v260 || &v260[v264] > v261)
      {
        v265 = 2 * v259[4];
        if (v265 <= v264 + 1)
        {
          v265 = v264 + 1;
        }

        v259[4] = v265;
        v266 = v265 + 8;
        v267 = malloc_type_malloc(v265 + 8, 0x2004093837F09uLL);
        v268 = v267 + v266;
        *v267 = v259[3];
        v260 = (v267 + 1);
        v259[2] = v268;
        v259[3] = v267;
      }

      v259[1] = &v260[v264];
      if (v257)
      {
        memcpy(v260, *(v6 + 12728), v257);
      }

      *(v6 + 12728) = v260;
      LODWORD(v257) = *(v6 + 12740);
      v258 = v260;
      v256 = *(v6 + 12736);
      v19 = v262;
    }

    *(v6 + 12740) = v257 + v263;
  }

  *(v6 + 12736) = v256 + 1;
  v258[v256] = 121;
  v269 = *(v279 + 18);
  v270 = v279;
  if (v269 == 2)
  {
LABEL_595:
    v271 = *(v270 + 1);
  }

  else
  {
    if (v269 == 5 && *(v279 + 2) >= 2u)
    {
      v270 = *v279;
      goto LABEL_595;
    }

    v271 = 0;
  }

  v272 = *(v271 + 18);
  v273 = v271;
  if ((v272 - 1) >= 2)
  {
    if (v272 == 5)
    {
      v274 = *v271;
      v273 = *v271;
      goto LABEL_605;
    }

    v273 = 0;
  }

  switch(v272)
  {
    case 1:
      v275 = (v271 + 8);
      break;
    case 2:
      v275 = (v271 + 16);
      break;
    case 5:
      v274 = *v271;
LABEL_605:
      v275 = (v274 + 8 * *(v271 + 8));
      break;
    default:
      v275 = 0;
      break;
  }

  if (v273 == v275)
  {
    v276 = v279;
    v26 = v280;
  }

  else
  {
    do
    {
      if (*a4)
      {
        return this;
      }

      ++v273;
    }

    while (v273 != v275);
    v276 = v279;
    v26 = v280;
    v269 = *(v279 + 18);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v269 == 5 && *(v276 + 2) >= 3u)
  {
    v277 = *(*v276 + 2);
    v278 = a3 + 1;
    if (*(v277 + 16) == 246)
    {
    }

    else
    {
    }

    if (*a4)
    {
      return this;
    }

    v27 = 0;
LABEL_555:
    v26 = v280;
  }

  else
  {
    v27 = 0;
  }

LABEL_37:
  v28 = *(v6 + 12736);
  v29 = *(v6 + 12740);
  v30 = *(v6 + 12728);
  if (v28 >= v29)
  {
    v281 = v26;
    v31 = *(v6 + 12744);
    v32 = v31[1];
    if (&v30[v29] != v32)
    {
      v33 = v31[2];
      goto LABEL_45;
    }

    v33 = v31[2];
    if ((v32 + 1) <= v33)
    {
      v31[1] = v32 + 1;
      LODWORD(v35) = 1;
      v26 = v281;
    }

    else
    {
LABEL_45:
      v34 = v19;
      if ((2 * v29) <= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = (2 * v29);
      }

      v36 = v35 + v29;
      if (!v32 || &v32[v36] > v33)
      {
        v37 = 2 * v31[4];
        if (v37 <= v36 + 1)
        {
          v37 = v36 + 1;
        }

        v31[4] = v37;
        v38 = v37 + 8;
        v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
        v40 = v39 + v38;
        *v39 = v31[3];
        v32 = (v39 + 1);
        v31[2] = v40;
        v31[3] = v39;
      }

      v31[1] = &v32[v36];
      if (v29)
      {
        memcpy(v32, *(v6 + 12728), v29);
      }

      *(v6 + 12728) = v32;
      LODWORD(v29) = *(v6 + 12740);
      v30 = v32;
      v28 = *(v6 + 12736);
      v26 = v281;
      v19 = v34;
    }

    *(v6 + 12740) = v29 + v35;
  }

  *(v6 + 12736) = v28 + 1;
  v30[v28] = 73;
  if ((v27 & 1) == 0)
  {
    v42 = *(v6 + 12736);
    v43 = *(v6 + 12740);
    v44 = *(v6 + 12728);
    if (v42 < v43)
    {
      goto LABEL_80;
    }

    v45 = *(v6 + 12744);
    v46 = v45[1];
    if (&v44[v43] == v46)
    {
      v47 = v45[2];
      if ((v46 + 1) <= v47)
      {
        v45[1] = v46 + 1;
        LODWORD(v50) = 1;
LABEL_79:
        *(v6 + 12740) = v43 + v50;
LABEL_80:
        *(v6 + 12736) = v42 + 1;
        v44[v42] = 115;
        if (!v19)
        {
          goto LABEL_81;
        }

LABEL_59:
        if (!v26)
        {
          goto LABEL_98;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v47 = v45[2];
    }

    v49 = v19;
    if ((2 * v43) <= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = (2 * v43);
    }

    v51 = v50 + v43;
    if (!v46 || &v46[v51] > v47)
    {
      v52 = 2 * v45[4];
      if (v52 <= v51 + 1)
      {
        v52 = v51 + 1;
      }

      v45[4] = v52;
      v53 = v52 + 8;
      v54 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
      v55 = v54 + v53;
      *v54 = v45[3];
      v46 = (v54 + 1);
      v45[2] = v55;
      v45[3] = v54;
    }

    v45[1] = &v46[v51];
    if (v43)
    {
      memcpy(v46, *(v6 + 12728), v43);
    }

    *(v6 + 12728) = v46;
    LODWORD(v43) = *(v6 + 12740);
    v44 = v46;
    v42 = *(v6 + 12736);
    v19 = v49;
    goto LABEL_79;
  }

  if (v19)
  {
    goto LABEL_59;
  }

LABEL_81:
  v56 = *(v6 + 12736);
  v57 = *(v6 + 12740);
  v58 = *(v6 + 12728);
  if (v56 >= v57)
  {
    v59 = *(v6 + 12744);
    v60 = v59[1];
    if (&v58[v57] != v60)
    {
      v61 = v59[2];
      goto LABEL_85;
    }

    v61 = v59[2];
    if ((v60 + 1) <= v61)
    {
      v59[1] = v60 + 1;
      LODWORD(v62) = 1;
    }

    else
    {
LABEL_85:
      if ((2 * v57) <= 4)
      {
        v62 = 4;
      }

      else
      {
        v62 = (2 * v57);
      }

      v63 = v62 + v57;
      if (!v60 || &v60[v63] > v61)
      {
        v64 = 2 * v59[4];
        if (v64 <= v63 + 1)
        {
          v64 = v63 + 1;
        }

        v59[4] = v64;
        v65 = v64 + 8;
        v66 = malloc_type_malloc(v64 + 8, 0x2004093837F09uLL);
        v67 = v66 + v65;
        *v66 = v59[3];
        v60 = (v66 + 1);
        v59[2] = v67;
        v59[3] = v66;
      }

      v59[1] = &v60[v63];
      if (v57)
      {
        memcpy(v60, *(v6 + 12728), v57);
      }

      *(v6 + 12728) = v60;
      LODWORD(v57) = *(v6 + 12740);
      v58 = v60;
      v56 = *(v6 + 12736);
    }

    *(v6 + 12740) = v57 + v62;
  }

  *(v6 + 12736) = v56 + 1;
  v58[v56] = 73;
  if (v26)
  {
LABEL_60:
    v41 = strlen(v26);
    goto LABEL_99;
  }

LABEL_98:
  v41 = 0;
LABEL_99:
  this = swift::Demangle::__runtime::CharVector::append((v6 + 12728), v26, v41, *(v6 + 12744));
  v68 = *(a2 + 18);
  v69 = a2;
  if ((v68 - 1) >= 2)
  {
    if (v68 == 5)
    {
      v70 = *a2;
      v69 = *a2;
      goto LABEL_107;
    }

    v69 = 0;
  }

  switch(v68)
  {
    case 1:
      v71 = (a2 + 8);
      if (v69 == (a2 + 8))
      {
        goto LABEL_489;
      }

      break;
    case 2:
      v71 = (a2 + 16);
      if (v69 == (a2 + 16))
      {
        goto LABEL_489;
      }

      break;
    case 5:
      v70 = *a2;
LABEL_107:
      v71 = (v70 + 8 * *(a2 + 2));
      if (v69 == v71)
      {
LABEL_489:
        v229 = *(v6 + 12736);
        v230 = *(v6 + 12740);
        v231 = *(v6 + 12728);
        if (v229 >= v230)
        {
          v232 = *(v6 + 12744);
          v233 = v232[1];
          if (&v231[v230] != v233)
          {
            v234 = v232[2];
            goto LABEL_493;
          }

          v234 = v232[2];
          if ((v233 + 1) <= v234)
          {
            v232[1] = v233 + 1;
            LODWORD(v235) = 1;
          }

          else
          {
LABEL_493:
            if ((2 * v230) <= 4)
            {
              v235 = 4;
            }

            else
            {
              v235 = (2 * v230);
            }

            v236 = v235 + v230;
            if (!v233 || &v233[v236] > v234)
            {
              v237 = 2 * v232[4];
              if (v237 <= v236 + 1)
              {
                v237 = v236 + 1;
              }

              v232[4] = v237;
              v238 = v237 + 8;
              this = malloc_type_malloc(v237 + 8, 0x2004093837F09uLL);
              v239 = this + v238;
              *this = v232[3];
              v233 = (this + 1);
              v232[2] = v239;
              v232[3] = this;
            }

            v232[1] = &v233[v236];
            if (v230)
            {
              this = memcpy(v233, *(v6 + 12728), v230);
            }

            *(v6 + 12728) = v233;
            LODWORD(v230) = *(v6 + 12740);
            v231 = v233;
            v229 = *(v6 + 12736);
          }

          *(v6 + 12740) = v230 + v235;
        }

        LODWORD(v17) = 0;
        v14 = 0;
        v48 = 0;
        *(v6 + 12736) = v229 + 1;
        v231[v229] = 95;
        goto LABEL_506;
      }

      break;
    default:
      v71 = 0;
      if (!v69)
      {
        goto LABEL_489;
      }

      break;
  }

  v282 = v71;
  while (2)
  {
    v14 = *v69;
    v76 = *(*v69 + 16);
    if (v76 <= 0x74)
    {
      if (*(*v69 + 16) <= 0x6Du)
      {
        if (v76 != 107)
        {
          if (v76 != 108)
          {
            if (v76 == 109)
            {
              v77 = *v14;
              goto LABEL_412;
            }

LABEL_119:
            v69 = (v69 + 8);
            if (v69 == v71)
            {
              goto LABEL_489;
            }

            continue;
          }

          v91 = *v14;
          v92 = v14[1];
          v48 = 2132;
          LODWORD(v17) = 15;
          if (v92 > 16)
          {
            if (v92 == 17)
            {
              v128 = *v91;
              v129 = v91[1];
              v130 = *(v91 + 16);
              if (v128 != 0x746E65766E6F6340 || v129 != 0x6E696874286E6F69 || v130 != 41)
              {
                goto LABEL_577;
              }

              v77 = 116;
            }

            else
            {
              if (v92 != 18)
              {
                goto LABEL_506;
              }

              v113 = *v91;
              v114 = v91[1];
              v115 = *(v91 + 8);
              if (v113 != 0x5F65656C6C616340 || v114 != 0x65746E6172617567 || v115 != 25701)
              {
LABEL_577:
                v48 = 2132;
                LODWORD(v17) = 15;
                goto LABEL_506;
              }

              v77 = 103;
            }
          }

          else if (v92 == 13)
          {
            if (*v91 != 0x5F65656C6C616340 || *(v91 + 5) != 0x64656E776F5F6565)
            {
              goto LABEL_577;
            }

            v77 = 120;
          }

          else
          {
            if (v92 != 15)
            {
              goto LABEL_506;
            }

            if (*v91 != 0x5F65656C6C616340 || *(v91 + 7) != 0x64656E776F6E755FLL)
            {
              goto LABEL_577;
            }

            v77 = 121;
          }

LABEL_412:
          v74 = *(v6 + 12736);
          v72 = *(v6 + 12740);
          v73 = *(v6 + 12728);
          if (v74 >= v72)
          {
            v204 = *(v6 + 12744);
            v205 = v204[1];
            if (&v73[v72] != v205)
            {
              v206 = v204[2];
              goto LABEL_416;
            }

            v206 = v204[2];
            if ((v205 + 1) <= v206)
            {
              v204[1] = v205 + 1;
              LODWORD(v207) = 1;
            }

            else
            {
LABEL_416:
              if ((2 * v72) <= 4)
              {
                v207 = 4;
              }

              else
              {
                v207 = (2 * v72);
              }

              v208 = v207 + v72;
              if (!v205 || &v205[v208] > v206)
              {
                v209 = 2 * v204[4];
                if (v209 <= v208 + 1)
                {
                  v209 = v208 + 1;
                }

                v204[4] = v209;
                v210 = v209 + 8;
                this = malloc_type_malloc(v209 + 8, 0x2004093837F09uLL);
                v211 = this + v210;
                *this = v204[3];
                v205 = (this + 1);
                v204[2] = v211;
                v204[3] = this;
              }

              v204[1] = &v205[v208];
              if (v72)
              {
                this = memcpy(v205, *(v6 + 12728), v72);
              }

              *(v6 + 12728) = v205;
              LODWORD(v72) = *(v6 + 12740);
              v73 = v205;
              v74 = *(v6 + 12736);
              v71 = v282;
            }

            v75 = v72 + v207;
LABEL_117:
            *(v6 + 12740) = v75;
          }

LABEL_118:
          *(v6 + 12736) = v74 + 1;
          v73[v74] = v77;
          goto LABEL_119;
        }

        v74 = *(v6 + 12736);
        v89 = *(v6 + 12740);
        v73 = *(v6 + 12728);
        if (v74 < v89)
        {
          v77 = 101;
          goto LABEL_118;
        }

        v107 = *(v6 + 12744);
        v108 = v107[1];
        if (&v73[v89] != v108)
        {
          v109 = v107[2];
          goto LABEL_307;
        }

        v109 = v107[2];
        if ((v108 + 1) <= v109)
        {
          v107[1] = v108 + 1;
          LODWORD(v171) = 1;
        }

        else
        {
LABEL_307:
          if ((2 * v89) <= 4)
          {
            v171 = 4;
          }

          else
          {
            v171 = (2 * v89);
          }

          v172 = v171 + v89;
          if (!v108 || &v108[v172] > v109)
          {
            v173 = 2 * v107[4];
            if (v173 <= v172 + 1)
            {
              v173 = v172 + 1;
            }

            v107[4] = v173;
            v174 = v173 + 8;
            this = malloc_type_malloc(v173 + 8, 0x2004093837F09uLL);
            v175 = this + v174;
            *this = v107[3];
            v108 = (this + 1);
            v107[2] = v175;
            v107[3] = this;
          }

          v107[1] = &v108[v172];
          if (v89)
          {
            this = memcpy(v108, *(v6 + 12728), v89);
          }

          *(v6 + 12728) = v108;
          LODWORD(v89) = *(v6 + 12740);
          v73 = v108;
          v74 = *(v6 + 12736);
          v71 = v282;
        }

        v75 = v89 + v171;
        v77 = 101;
        goto LABEL_117;
      }

      if (v76 != 110)
      {
        if (v76 != 111)
        {
          if (v76 != 116)
          {
            goto LABEL_119;
          }

          v78 = *v14;
          v79 = v14[1];
          if (v79 == 6)
          {
            v121 = *v78;
            v122 = *(v78 + 2);
            if (v121 != 2037604672 || v122 != 25454)
            {
LABEL_575:
              v48 = 2161;
              LODWORD(v17) = 18;
              goto LABEL_506;
            }

            v77 = 72;
          }

          else
          {
            if (v79 != 9)
            {
              goto LABEL_575;
            }

            v80 = *v78;
            v81 = *(v78 + 8);
            if (v80 != 0x6C6261646E655340 || v81 != 101)
            {
              goto LABEL_575;
            }

            v77 = 104;
          }

          goto LABEL_412;
        }

        v74 = *(v6 + 12736);
        v100 = *(v6 + 12740);
        v73 = *(v6 + 12728);
        if (v74 < v100)
        {
          v77 = 84;
          goto LABEL_118;
        }

        v118 = *(v6 + 12744);
        v119 = v118[1];
        if (&v73[v100] != v119)
        {
          v120 = v118[2];
          goto LABEL_399;
        }

        v120 = v118[2];
        if ((v119 + 1) <= v120)
        {
          v118[1] = v119 + 1;
          LODWORD(v199) = 1;
        }

        else
        {
LABEL_399:
          if ((2 * v100) <= 4)
          {
            v199 = 4;
          }

          else
          {
            v199 = (2 * v100);
          }

          v200 = v199 + v100;
          if (!v119 || &v119[v200] > v120)
          {
            v201 = 2 * v118[4];
            if (v201 <= v200 + 1)
            {
              v201 = v200 + 1;
            }

            v118[4] = v201;
            v202 = v201 + 8;
            this = malloc_type_malloc(v201 + 8, 0x2004093837F09uLL);
            v203 = this + v202;
            *this = v118[3];
            v119 = (this + 1);
            v118[2] = v203;
            v118[3] = this;
          }

          v118[1] = &v119[v200];
          if (v100)
          {
            this = memcpy(v119, *(v6 + 12728), v100);
          }

          *(v6 + 12728) = v119;
          LODWORD(v100) = *(v6 + 12740);
          v73 = v119;
          v74 = *(v6 + 12736);
          v71 = v282;
        }

        v75 = v100 + v199;
        v77 = 84;
        goto LABEL_117;
      }

      v74 = *(v6 + 12736);
      v90 = *(v6 + 12740);
      v73 = *(v6 + 12728);
      if (v74 < v90)
      {
        v77 = 65;
        goto LABEL_118;
      }

      v110 = *(v6 + 12744);
      v111 = v110[1];
      if (&v73[v90] != v111)
      {
        v112 = v110[2];
        goto LABEL_320;
      }

      v112 = v110[2];
      if ((v111 + 1) <= v112)
      {
        v110[1] = v111 + 1;
        LODWORD(v176) = 1;
      }

      else
      {
LABEL_320:
        if ((2 * v90) <= 4)
        {
          v176 = 4;
        }

        else
        {
          v176 = (2 * v90);
        }

        v177 = v176 + v90;
        if (!v111 || &v111[v177] > v112)
        {
          v178 = 2 * v110[4];
          if (v178 <= v177 + 1)
          {
            v178 = v177 + 1;
          }

          v110[4] = v178;
          v179 = v178 + 8;
          this = malloc_type_malloc(v178 + 8, 0x2004093837F09uLL);
          v180 = this + v179;
          *this = v110[3];
          v111 = (this + 1);
          v110[2] = v180;
          v110[3] = this;
        }

        v110[1] = &v111[v177];
        if (v90)
        {
          this = memcpy(v111, *(v6 + 12728), v90);
        }

        *(v6 + 12728) = v111;
        LODWORD(v90) = *(v6 + 12740);
        v73 = v111;
        v74 = *(v6 + 12736);
        v71 = v282;
      }

      v75 = v90 + v176;
      v77 = 65;
      goto LABEL_117;
    }

    break;
  }

  if (*(*v69 + 16) <= 0x7Cu)
  {
    if (v76 == 117)
    {
      if (*a4)
      {
        return this;
      }

      goto LABEL_119;
    }

    if (v76 != 120)
    {
      if (v76 == 123)
      {
        goto LABEL_346;
      }

      goto LABEL_119;
    }

    v94 = *v14;
    v95 = v14[1];
    if (v95 == 12)
    {
      v124 = *v94;
      v125 = *(v94 + 2);
      if (v124 != 0x6E6F5F646C656979 || v125 != 845112675)
      {
LABEL_576:
        v48 = 2149;
        LODWORD(v17) = 17;
        goto LABEL_506;
      }

      v77 = 73;
    }

    else
    {
      if (v95 != 10)
      {
        goto LABEL_576;
      }

      if (*v94 == 0x6E6F5F646C656979 && *(v94 + 4) == 25955)
      {
        v77 = 65;
      }

      else
      {
        v97 = *v94;
        v98 = *(v94 + 4);
        if (v97 != 0x616D5F646C656979 || v98 != 31086)
        {
          goto LABEL_576;
        }

        v77 = 71;
      }
    }

    goto LABEL_412;
  }

  if (v76 == 125)
  {
    goto LABEL_238;
  }

  if (v76 == 126)
  {
    v101 = *(v6 + 12736);
    v102 = *(v6 + 12740);
    v103 = *(v6 + 12728);
    if (v101 < v102)
    {
LABEL_345:
      *(v6 + 12736) = v101 + 1;
      v103[v101] = 89;
LABEL_346:
      v187 = *(v14 + 18);
      v188 = v14;
      if ((v187 - 1) >= 2)
      {
        v188 = *v14;
      }

      v189 = *v188;
      this = *v189;
      v190 = v189[1];
      if (v190 > 11)
      {
        switch(v190)
        {
          case 12:
            if (*this == 0x736E6F635F6E6940 && *(this + 2) == 1953390964)
            {
              v192 = 99;
              goto LABEL_453;
            }

            goto LABEL_570;
          case 14:
            if (*this == 0x726175675F6E6940 && *(this + 6) == 0x646565746E617261)
            {
              v192 = 110;
              goto LABEL_453;
            }

            goto LABEL_570;
          case 16:
            if (*this == 0x615F74756F6E6940 && this[1] == 0x656C62617361696CLL)
            {
              v192 = 98;
            }

            else
            {
              this = memcmp(this, "@pack_guaranteed", 0x10uLL);
              if (this)
              {
                goto LABEL_570;
              }

              v192 = 112;
            }

            goto LABEL_453;
        }
      }

      else
      {
        switch(v190)
        {
          case 3:
            if (*this == 26944 && *(this + 2) == 110)
            {
              v192 = 105;
              goto LABEL_453;
            }

            goto LABEL_570;
          case 6:
            if (*this == 1869506880 && *(this + 2) == 29813)
            {
              v192 = 108;
            }

            else
            {
              this = memcmp(this, "@owned", 6uLL);
              if (this)
              {
                goto LABEL_570;
              }

              v192 = 120;
            }

            goto LABEL_453;
          case 7:
            if (*this != 1601071424 || *(this + 3) != 2021155679)
            {
              goto LABEL_570;
            }

            v192 = 88;
LABEL_453:
            v214 = *(v6 + 12736);
            v215 = *(v6 + 12740);
            v216 = *(v6 + 12728);
            if (v214 < v215)
            {
LABEL_469:
              *(v6 + 12736) = v214 + 1;
              v216[v214] = v192;
              for (i = 1; ; ++i)
              {
                v226 = *(v14 + 18);
                if (v226 == 5)
                {
                  if (*(v14 + 2) - 1 <= i)
                  {
                    goto LABEL_119;
                  }
                }

                else if ((v226 - 1) < 2 || i == -1)
                {
                  goto LABEL_119;
                }

                v227 = (*v14)[i];
                v228 = v227[8];
                if (v228 > 0x71)
                {
                  if (v228 == 114)
                  {
                    if (*a4)
                    {
                      return this;
                    }
                  }

                  else
                  {
                    if (v228 != 115)
                    {
LABEL_627:
                      swift::Demangle::__runtime::Node::dump(v14);
                      abort();
                    }

                    if (*a4)
                    {
                      return this;
                    }
                  }
                }

                else if (v228 == 112)
                {
                  if (*a4)
                  {
                    return this;
                  }
                }

                else
                {
                  if (v228 != 113)
                  {
                    goto LABEL_627;
                  }

                  if (*a4)
                  {
                    return this;
                  }
                }
              }
            }

            v217 = *(v6 + 12744);
            v218 = v217[1];
            if (&v216[v215] == v218)
            {
              v219 = v217[2];
              if ((v218 + 1) <= v219)
              {
                v217[1] = v218 + 1;
                LODWORD(v220) = 1;
LABEL_468:
                *(v6 + 12740) = v215 + v220;
                goto LABEL_469;
              }
            }

            else
            {
              v219 = v217[2];
            }

            if ((2 * v215) <= 4)
            {
              v220 = 4;
            }

            else
            {
              v220 = (2 * v215);
            }

            v221 = v220 + v215;
            if (!v218 || &v218[v221] > v219)
            {
              v222 = 2 * v217[4];
              if (v222 <= v221 + 1)
              {
                v222 = v221 + 1;
              }

              v217[4] = v222;
              v223 = v222 + 8;
              this = malloc_type_malloc(v222 + 8, 0x2004093837F09uLL);
              v224 = this + v223;
              *this = v217[3];
              v218 = (this + 1);
              v217[2] = v224;
              v217[3] = this;
            }

            v217[1] = &v218[v221];
            if (v215)
            {
              this = memcpy(v218, *(v6 + 12728), v215);
            }

            *(v6 + 12728) = v218;
            LODWORD(v215) = *(v6 + 12740);
            v216 = v218;
            v214 = *(v6 + 12736);
            v71 = v282;
            goto LABEL_468;
        }
      }

      if (v190 == 11)
      {
        if (*this == 0x746E617261756740 && *(this + 3) == 0x646565746E617261)
        {
          v192 = 103;
          goto LABEL_453;
        }

        goto LABEL_436;
      }

      if (v190 == 8)
      {
        if (*this != 0x64656E776F6E7540)
        {
          goto LABEL_570;
        }

        v192 = 121;
        goto LABEL_453;
      }

      if (v190 != 13)
      {
LABEL_436:
        if (v190 != 11)
        {
          goto LABEL_570;
        }

        if (*this == 0x776F5F6B63617040 && *(this + 3) == 0x64656E776F5F6B63)
        {
          v192 = 118;
        }

        else
        {
          this = memcmp(this, "@pack_inout", 0xBuLL);
          if (this)
          {
            goto LABEL_570;
          }

          v192 = 109;
        }

        goto LABEL_453;
      }

      if (*this == 0x636F6C6C61656440 && *(this + 5) == 0x676E697461636F6CLL)
      {
        v192 = 101;
        goto LABEL_453;
      }

LABEL_570:
      if ((v187 - 1) >= 2)
      {
        if (v187 != 5 || !*(v14 + 2))
        {
          v14 = 0;
          goto LABEL_622;
        }

        v14 = *v14;
      }

      v14 = *v14;
LABEL_622:
      v48 = 2189;
      LODWORD(v17) = 19;
      goto LABEL_506;
    }

    v104 = *(v6 + 12744);
    v105 = v104[1];
    if (&v103[v102] == v105)
    {
      v106 = v104[2];
      if ((v105 + 1) <= v106)
      {
        v104[1] = v105 + 1;
        LODWORD(v181) = 1;
LABEL_344:
        *(v6 + 12740) = v102 + v181;
        goto LABEL_345;
      }
    }

    else
    {
      v106 = v104[2];
    }

    if ((2 * v102) <= 4)
    {
      v181 = 4;
    }

    else
    {
      v181 = (2 * v102);
    }

    v182 = v181 + v102;
    if (!v105 || &v105[v182] > v106)
    {
      v183 = 2 * v104[4];
      if (v183 <= v182 + 1)
      {
        v183 = v182 + 1;
      }

      v104[4] = v183;
      v184 = v183 + 8;
      v185 = malloc_type_malloc(v183 + 8, 0x2004093837F09uLL);
      v186 = v185 + v184;
      *v185 = v104[3];
      v105 = (v185 + 1);
      v104[2] = v186;
      v104[3] = v185;
    }

    v104[1] = &v105[v182];
    if (v102)
    {
      memcpy(v105, *(v6 + 12728), v102);
    }

    *(v6 + 12728) = v105;
    LODWORD(v102) = *(v6 + 12740);
    v103 = v105;
    v101 = *(v6 + 12736);
    v71 = v282;
    goto LABEL_344;
  }

  if (v76 != 127)
  {
    goto LABEL_119;
  }

  v83 = *(v6 + 12736);
  v84 = *(v6 + 12740);
  v85 = *(v6 + 12728);
  if (v83 >= v84)
  {
    v86 = *(v6 + 12744);
    v87 = v86[1];
    if (&v85[v84] != v87)
    {
      v88 = v86[2];
      goto LABEL_225;
    }

    v88 = v86[2];
    if ((v87 + 1) <= v88)
    {
      v86[1] = v87 + 1;
      LODWORD(v133) = 1;
    }

    else
    {
LABEL_225:
      if ((2 * v84) <= 4)
      {
        v133 = 4;
      }

      else
      {
        v133 = (2 * v84);
      }

      v134 = v133 + v84;
      if (!v87 || &v87[v134] > v88)
      {
        v135 = 2 * v86[4];
        if (v135 <= v134 + 1)
        {
          v135 = v134 + 1;
        }

        v86[4] = v135;
        v136 = v135 + 8;
        this = malloc_type_malloc(v135 + 8, 0x2004093837F09uLL);
        v137 = this + v136;
        *this = v86[3];
        v87 = (this + 1);
        v86[2] = v137;
        v86[3] = this;
      }

      v86[1] = &v87[v134];
      if (v84)
      {
        this = memcpy(v87, *(v6 + 12728), v84);
      }

      *(v6 + 12728) = v87;
      LODWORD(v84) = *(v6 + 12740);
      v85 = v87;
      v83 = *(v6 + 12736);
    }

    *(v6 + 12740) = v84 + v133;
  }

  *(v6 + 12736) = v83 + 1;
  v85[v83] = 122;
LABEL_238:
  v138 = *(v14 + 18);
  v139 = v14;
  if ((v138 - 1) >= 2)
  {
    v139 = *v14;
  }

  v140 = *v139;
  v141 = **v139;
  v142 = v140[1];
  if (v142 <= 8)
  {
    if (v142 == 4)
    {
      if (*v141 != 1953853248)
      {
        goto LABEL_564;
      }

      v143 = 114;
    }

    else if (v142 == 6)
    {
      v152 = *v141;
      v153 = *(v141 + 2);
      if (v152 != 1853321024 || v153 != 25701)
      {
        goto LABEL_564;
      }

      v143 = 111;
    }

    else
    {
      if (v142 != 8 || *v141 != 0x64656E776F6E7540)
      {
        goto LABEL_564;
      }

      v143 = 100;
    }

    goto LABEL_278;
  }

  if (v142 != 9)
  {
    if (v142 == 13)
    {
      v155 = *v141;
      v156 = *(v141 + 5);
      if (v155 != 0x6C65726F74756140 || v156 != 0x64657361656C6572)
      {
        goto LABEL_564;
      }

      v143 = 97;
    }

    else
    {
      if (v142 != 22)
      {
        goto LABEL_564;
      }

      v144 = *v141;
      v145 = *(v141 + 1);
      v146 = *(v141 + 14);
      v147 = v144 == 0x64656E776F6E7540 && v145 == 0x705F72656E6E695FLL;
      if (!v147 || v146 != 0x7265746E696F705FLL)
      {
        goto LABEL_564;
      }

      v143 = 117;
    }

LABEL_278:
    v158 = *(v6 + 12736);
    v159 = *(v6 + 12740);
    v160 = *(v6 + 12728);
    if (v158 >= v159)
    {
      v161 = *(v6 + 12744);
      v162 = v161[1];
      if (&v160[v159] != v162)
      {
        v163 = v161[2];
        goto LABEL_282;
      }

      v163 = v161[2];
      if ((v162 + 1) <= v163)
      {
        v161[1] = v162 + 1;
        LODWORD(v164) = 1;
      }

      else
      {
LABEL_282:
        if ((2 * v159) <= 4)
        {
          v164 = 4;
        }

        else
        {
          v164 = (2 * v159);
        }

        v165 = v164 + v159;
        if (!v162 || &v162[v165] > v163)
        {
          v166 = 2 * v161[4];
          if (v166 <= v165 + 1)
          {
            v166 = v165 + 1;
          }

          v161[4] = v166;
          v167 = v166 + 8;
          this = malloc_type_malloc(v166 + 8, 0x2004093837F09uLL);
          v168 = this + v167;
          *this = v161[3];
          v162 = (this + 1);
          v161[2] = v168;
          v161[3] = this;
        }

        v161[1] = &v162[v165];
        if (v159)
        {
          this = memcpy(v162, *(v6 + 12728), v159);
        }

        *(v6 + 12728) = v162;
        LODWORD(v159) = *(v6 + 12740);
        v160 = v162;
        v158 = *(v6 + 12736);
        v71 = v282;
      }

      *(v6 + 12740) = v159 + v164;
    }

    *(v6 + 12736) = v158 + 1;
    v160[v158] = v143;
    if (*(v14 + 18) == 5)
    {
      v169 = *(v14 + 2);
      if (v169 == 4)
      {
        if (*a4)
        {
          return this;
        }

        v170 = *(v14 + 18) == 5 && *(v14 + 2) >= 3u ? (*v14)[2] : 0;
        if (*a4)
        {
          return this;
        }
      }

      else if (v169 == 3)
      {
        if (*a4)
        {
          return this;
        }
      }
    }

    goto LABEL_119;
  }

  v149 = *v141;
  v150 = *(v141 + 8);
  if (v149 == 0x756F5F6B63617040 && v150 == 116)
  {
    v143 = 107;
    goto LABEL_278;
  }

LABEL_564:
  if ((v138 - 1) < 2)
  {
    goto LABEL_568;
  }

  if (v138 == 5 && *(v14 + 2))
  {
    v14 = *v14;
LABEL_568:
    v14 = *v14;
  }

  else
  {
    v14 = 0;
  }

  v48 = 2235;
  LODWORD(v17) = 19;
LABEL_506:
  *a4 = v17;
  *(a4 + 8) = v14;
  *(a4 + 16) = v48;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleImplicitClosure@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*a4)
    {
      return result;
    }

    if (*(v5 + 18) != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
    goto LABEL_5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 != 5)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    goto LABEL_13;
  }

LABEL_9:
  if (*(v5 + 2) <= 2u)
  {
    goto LABEL_12;
  }

  if (*a4)
  {
    return result;
  }

LABEL_13:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fu", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if (v11 != 2)
  {
    if (v11 != 5 || *(v5 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v12 = *(v5 + 1);
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleInOut@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 122;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

void *anonymous namespace::Remangler::mangleInfixOperator@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "oi", 2uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleInitializer@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fi", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleInitAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleIsolated@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Yi", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleIsolatedDeallocator@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fZ", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSending@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Yu", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleLazyProtocolWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wl", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleLazyProtocolWitnessTableCacheVariable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WL", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleLocalDeclName@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return this;
  }

LABEL_8:
  v10 = *(v6 + 3184);
  v11 = *(v6 + 3185);
  v12 = v6[1591];
  if (v10 < v11)
  {
    goto LABEL_27;
  }

  v13 = v6[1593];
  v14 = v13[1];
  if (&v12[v11] != v14)
  {
    v15 = v13[2];
LABEL_12:
    if ((2 * v11) <= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = (2 * v11);
    }

    v17 = v16 + v11;
    if (v14)
    {
      v18 = &v14[v16 + v11] > v15;
    }

    else
    {
      v18 = 1;
    }

    v12 = v13[1];
    if (v18)
    {
      v19 = 2 * v13[4];
      if (v19 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      v13[4] = v19;
      v20 = v19 + 8;
      this = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v21 = this + v20;
      *this = v13[3];
      v12 = (this + 1);
      v13[2] = v21;
      v13[3] = this;
    }

    v13[1] = &v12[v17];
    if (v11)
    {
      this = memcpy(v12, v6[1591], v11);
    }

    v6[1591] = v12;
    LODWORD(v11) = *(v6 + 3185);
    v10 = *(v6 + 3184);
    goto LABEL_26;
  }

  v15 = v13[2];
  if ((v14 + 1) > v15)
  {
    goto LABEL_12;
  }

  v13[1] = v14 + 1;
  LODWORD(v16) = 1;
LABEL_26:
  *(v6 + 3185) = v11 + v16;
LABEL_27:
  *(v6 + 3184) = v10 + 1;
  v12[v10] = 76;
  v22 = *(v5 + 18);
  if ((v22 - 1) >= 2)
  {
    if (v22 != 5 || !*(v5 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return this;
    }

    v5 = *v5;
  }

  v23 = *v5;
}

uint64_t *anonymous namespace::Remangler::mangleMacro@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fm", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleMacroExpansionLoc@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_15;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

LABEL_15:
  v12 = *(*a2 + 3);
  v13 = **(*a2 + 2);
  v14 = *v12;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMX", 3uLL, *(this + 1593));
  if (v13)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, v13 - 1, *(this + 1593));
  }

  v15 = *(this + 3184);
  v16 = *(this + 3185);
  v17 = *(this + 1591);
  if (v15 >= v16)
  {
    v18 = *(this + 1593);
    v19 = v18[1];
    if (&v17[v16] == v19)
    {
      v20 = v18[2];
      if ((v19 + 1) <= v20)
      {
        v18[1] = v19 + 1;
        LODWORD(v21) = 1;
LABEL_32:
        *(this + 3185) = v16 + v21;
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v18[2];
    }

    if ((2 * v16) <= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = (2 * v16);
    }

    v22 = v21 + v16;
    if (!v19 || &v19[v22] > v20)
    {
      v23 = 2 * v18[4];
      if (v23 <= v22 + 1)
      {
        v23 = v22 + 1;
      }

      v18[4] = v23;
      v24 = v23 + 8;
      result = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
      v25 = result + v24;
      *result = v18[3];
      v19 = (result + 1);
      v18[2] = v25;
      v18[3] = result;
    }

    v18[1] = &v19[v22];
    if (v16)
    {
      result = memcpy(v19, *(this + 1591), v16);
    }

    *(this + 1591) = v19;
    LODWORD(v16) = *(this + 3185);
    v17 = v19;
    v15 = *(this + 3184);
    goto LABEL_32;
  }

LABEL_33:
  *(this + 3184) = v15 + 1;
  v17[v15] = 95;
  if (v14)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, v14 - 1, *(this + 1593));
  }

  v26 = *(this + 3184);
  v27 = *(this + 3185);
  v28 = *(this + 1591);
  if (v26 < v27)
  {
    goto LABEL_51;
  }

  v29 = *(this + 1593);
  v30 = v29[1];
  if (&v28[v27] != v30)
  {
    v31 = v29[2];
LABEL_39:
    if ((2 * v27) <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = (2 * v27);
    }

    v33 = v32 + v27;
    if (!v30 || &v30[v33] > v31)
    {
      v34 = 2 * v29[4];
      if (v34 <= v33 + 1)
      {
        v34 = v33 + 1;
      }

      v29[4] = v34;
      v35 = v34 + 8;
      result = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
      v36 = result + v35;
      *result = v29[3];
      v30 = (result + 1);
      v29[2] = v36;
      v29[3] = result;
    }

    v29[1] = &v30[v33];
    if (v27)
    {
      result = memcpy(v30, *(this + 1591), v27);
    }

    *(this + 1591) = v30;
    LODWORD(v27) = *(this + 3185);
    v28 = v30;
    v26 = *(this + 3184);
    goto LABEL_50;
  }

  v31 = v29[2];
  if ((v30 + 1) > v31)
  {
    goto LABEL_39;
  }

  v29[1] = v30 + 1;
  LODWORD(v32) = 1;
LABEL_50:
  *(this + 3185) = v27 + v32;
LABEL_51:
  *(this + 3184) = v26 + 1;
  v28[v26] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleMacroExpansionUniqueName@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*a4)
    {
      return result;
    }

    v8 = *(a2 + 18);
    if (v8 != 5)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
    goto LABEL_5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 != 5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (*(a2 + 2) < 4u || (v11 = *(*a2 + 3)) == 0)
  {
LABEL_15:
    if (*(a2 + 2) >= 2u)
    {
      v12 = *a2;
LABEL_17:
      if (*a4)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_13:
  v12 = a2;
  if (v8 == 2)
  {
    goto LABEL_17;
  }

  if (v8 == 5)
  {
    goto LABEL_15;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMu", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v13 = *(*a2 + 2);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleMaterializeForSet@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleMemberAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMm", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleMemberAttributeAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMr", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleMetatype@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    v9 = *a2;
  }

  if (*(*v9 + 16) != 155)
  {
    if (v8 != 1)
    {
      if (v8 != 5 || *(a2 + 2) != 1)
      {
        v19 = 322;
        v18 = 10;
        goto LABEL_40;
      }

      v5 = *a2;
    }

    if (*a4)
    {
      return this;
    }

    v11 = *(v6 + 3184);
    v12 = *(v6 + 3185);
    v13 = v6[1591];
    if (v11 < v12)
    {
LABEL_39:
      v18 = 0;
      v5 = 0;
      v19 = 0;
      *(v6 + 3184) = v11 + 1;
      v13[v11] = 109;
      goto LABEL_40;
    }

    v14 = v6[1593];
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v20) = 1;
LABEL_38:
        *(v6 + 3185) = v12 + v20;
        goto LABEL_39;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = (2 * v12);
    }

    v21 = v20 + v12;
    if (!v15 || &v15[v21] > v16)
    {
      v22 = 2 * v14[4];
      if (v22 <= v21 + 1)
      {
        v22 = v21 + 1;
      }

      v14[4] = v22;
      v23 = v22 + 8;
      this = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v24 = this + v23;
      *this = v14[3];
      v15 = (this + 1);
      v14[2] = v24;
      v14[3] = this;
    }

    v14[1] = &v15[v21];
    if (v12)
    {
      this = memcpy(v15, v6[1591], v12);
    }

    v6[1591] = v15;
    LODWORD(v12) = *(v6 + 3185);
    v13 = v15;
    v11 = *(v6 + 3184);
    goto LABEL_38;
  }

  v10 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_19;
    }

    v10 = *a2;
  }

  if (*a4)
  {
    return this;
  }

LABEL_19:
  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "XM", 2uLL, v6[1593]);
  v17 = *(v5 + 18);
  if ((v17 - 1) < 2)
  {
    goto LABEL_23;
  }

  if (v17 == 5 && *(v5 + 2))
  {
    v5 = *v5;
LABEL_23:
    if (*a4)
    {
      return this;
    }
  }

  v18 = 0;
  v5 = 0;
  v19 = 0;
LABEL_40:
  *a4 = v18;
  *(a4 + 8) = v5;
  *(a4 + 16) = v19;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleMetatypeRepresentation@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  result = *a2;
  v7 = *(a2 + 1);
  if (v7 == 14)
  {
    result = memcmp(result, "@objc_metatype", 0xEuLL);
    if (result)
    {
      goto LABEL_16;
    }

    v9 = (this + 12736);
    v10 = *(this + 3184);
    v20 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v20)
    {
LABEL_48:
      v17 = 111;
      goto LABEL_63;
    }

    v21 = *(this + 1593);
    v22 = v21[1];
    if (&v12[v20] == v22)
    {
      v23 = v21[2];
      if ((v22 + 1) <= v23)
      {
        v21[1] = v22 + 1;
        LODWORD(v32) = 1;
LABEL_47:
        *(this + 3185) = v20 + v32;
        goto LABEL_48;
      }
    }

    else
    {
      v23 = v21[2];
    }

    if ((2 * v20) <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = (2 * v20);
    }

    v33 = v32 + v20;
    if (!v22 || &v22[v33] > v23)
    {
      v34 = 2 * v21[4];
      if (v34 <= v33 + 1)
      {
        v34 = v33 + 1;
      }

      v21[4] = v34;
      v35 = v34 + 8;
      result = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
      v36 = result + v35;
      *result = v21[3];
      v22 = (result + 8);
      v21[2] = v36;
      v21[3] = result;
    }

    v21[1] = &v22[v33];
    if (v20)
    {
      result = memcpy(v22, *(this + 1591), v20);
    }

    *(this + 1591) = v22;
    LODWORD(v20) = *(this + 3185);
    v12 = v22;
    v10 = *(this + 3184);
    goto LABEL_47;
  }

  if (v7 != 6)
  {
    if (v7 != 5)
    {
      goto LABEL_16;
    }

    if (*result != 1768453184 || *(result + 4) != 110)
    {
      goto LABEL_16;
    }

    v9 = (this + 12736);
    v10 = *(this + 3184);
    v11 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v11)
    {
      goto LABEL_62;
    }

    v13 = *(this + 1593);
    v14 = v13[1];
    if (&v12[v11] == v14)
    {
      v15 = v13[2];
      if ((v14 + 1) <= v15)
      {
        v13[1] = v14 + 1;
        LODWORD(v37) = 1;
LABEL_61:
        *(this + 3185) = v11 + v37;
LABEL_62:
        v17 = 116;
        goto LABEL_63;
      }
    }

    else
    {
      v15 = v13[2];
    }

    if ((2 * v11) <= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = (2 * v11);
    }

    v38 = v37 + v11;
    if (!v14 || &v14[v38] > v15)
    {
      v39 = 2 * v13[4];
      if (v39 <= v38 + 1)
      {
        v39 = v38 + 1;
      }

      v13[4] = v39;
      v40 = v39 + 8;
      result = malloc_type_malloc(v39 + 8, 0x2004093837F09uLL);
      v41 = result + v40;
      *result = v13[3];
      v14 = (result + 8);
      v13[2] = v41;
      v13[3] = result;
    }

    v13[1] = &v14[v38];
    if (v11)
    {
      result = memcpy(v14, *(this + 1591), v11);
    }

    *(this + 1591) = v14;
    LODWORD(v11) = *(this + 3185);
    v12 = v14;
    v10 = *(this + 3184);
    goto LABEL_61;
  }

  result = memcmp(result, "@thick", 6uLL);
  if (!result)
  {
    v9 = (this + 12736);
    v10 = *(this + 3184);
    v16 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v16)
    {
      v17 = 84;
LABEL_63:
      v19 = 0;
      v3 = 0;
      v18 = 0;
      *v9 = v10 + 1;
      v12[v10] = v17;
      goto LABEL_64;
    }

    v24 = *(this + 1593);
    v25 = v24[1];
    if (&v12[v16] == v25)
    {
      v26 = v24[2];
      if ((v25 + 1) <= v26)
      {
        v24[1] = v25 + 1;
        LODWORD(v27) = 1;
LABEL_34:
        *(this + 3185) = v16 + v27;
        v17 = 84;
        goto LABEL_63;
      }
    }

    else
    {
      v26 = v24[2];
    }

    if ((2 * v16) <= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = (2 * v16);
    }

    v28 = v27 + v16;
    if (!v25 || &v25[v28] > v26)
    {
      v29 = 2 * v24[4];
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      v24[4] = v29;
      v30 = v29 + 8;
      result = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
      v31 = result + v30;
      *result = v24[3];
      v25 = (result + 8);
      v24[2] = v31;
      v24[3] = result;
    }

    v24[1] = &v25[v28];
    if (v16)
    {
      result = memcpy(v25, *(this + 1591), v16);
    }

    *(this + 1591) = v25;
    LODWORD(v16) = *(this + 3185);
    v12 = v25;
    v10 = *(this + 3184);
    goto LABEL_34;
  }

LABEL_16:
  v18 = 2412;
  v19 = 21;
LABEL_64:
  *a3 = v19;
  *(a3 + 8) = v3;
  *(a3 + 16) = v18;
  return result;
}

{
  v3 = a2;
  result = *a2;
  v7 = *(a2 + 1);
  if (v7 == 14)
  {
    result = memcmp(result, "@objc_metatype", 0xEuLL);
    if (result)
    {
      goto LABEL_16;
    }

    v9 = (this + 12736);
    v10 = *(this + 3184);
    v20 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v20)
    {
LABEL_48:
      v17 = 111;
      goto LABEL_63;
    }

    v21 = *(this + 1593);
    v22 = v21[1];
    if (&v12[v20] == v22)
    {
      v23 = v21[2];
      if ((v22 + 1) <= v23)
      {
        v21[1] = v22 + 1;
        LODWORD(v32) = 1;
LABEL_47:
        *(this + 3185) = v20 + v32;
        goto LABEL_48;
      }
    }

    else
    {
      v23 = v21[2];
    }

    if ((2 * v20) <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = (2 * v20);
    }

    v33 = v32 + v20;
    if (!v22 || &v22[v33] > v23)
    {
      v34 = 2 * v21[4];
      if (v34 <= v33 + 1)
      {
        v34 = v33 + 1;
      }

      v21[4] = v34;
      v35 = v34 + 8;
      result = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
      v36 = result + v35;
      *result = v21[3];
      v22 = (result + 8);
      v21[2] = v36;
      v21[3] = result;
    }

    v21[1] = &v22[v33];
    if (v20)
    {
      result = memcpy(v22, *(this + 1591), v20);
    }

    *(this + 1591) = v22;
    LODWORD(v20) = *(this + 3185);
    v12 = v22;
    v10 = *(this + 3184);
    goto LABEL_47;
  }

  if (v7 != 6)
  {
    if (v7 != 5)
    {
      goto LABEL_16;
    }

    if (*result != 1768453184 || *(result + 4) != 110)
    {
      goto LABEL_16;
    }

    v9 = (this + 12736);
    v10 = *(this + 3184);
    v11 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v11)
    {
      goto LABEL_62;
    }

    v13 = *(this + 1593);
    v14 = v13[1];
    if (&v12[v11] == v14)
    {
      v15 = v13[2];
      if ((v14 + 1) <= v15)
      {
        v13[1] = v14 + 1;
        LODWORD(v37) = 1;
LABEL_61:
        *(this + 3185) = v11 + v37;
LABEL_62:
        v17 = 116;
        goto LABEL_63;
      }
    }

    else
    {
      v15 = v13[2];
    }

    if ((2 * v11) <= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = (2 * v11);
    }

    v38 = v37 + v11;
    if (!v14 || &v14[v38] > v15)
    {
      v39 = 2 * v13[4];
      if (v39 <= v38 + 1)
      {
        v39 = v38 + 1;
      }

      v13[4] = v39;
      v40 = v39 + 8;
      result = malloc_type_malloc(v39 + 8, 0x2004093837F09uLL);
      v41 = result + v40;
      *result = v13[3];
      v14 = (result + 8);
      v13[2] = v41;
      v13[3] = result;
    }

    v13[1] = &v14[v38];
    if (v11)
    {
      result = memcpy(v14, *(this + 1591), v11);
    }

    *(this + 1591) = v14;
    LODWORD(v11) = *(this + 3185);
    v12 = v14;
    v10 = *(this + 3184);
    goto LABEL_61;
  }

  result = memcmp(result, "@thick", 6uLL);
  if (!result)
  {
    v9 = (this + 12736);
    v10 = *(this + 3184);
    v16 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v16)
    {
      v17 = 84;
LABEL_63:
      v19 = 0;
      v3 = 0;
      v18 = 0;
      *v9 = v10 + 1;
      v12[v10] = v17;
      goto LABEL_64;
    }

    v24 = *(this + 1593);
    v25 = v24[1];
    if (&v12[v16] == v25)
    {
      v26 = v24[2];
      if ((v25 + 1) <= v26)
      {
        v24[1] = v25 + 1;
        LODWORD(v27) = 1;
LABEL_34:
        *(this + 3185) = v16 + v27;
        v17 = 84;
        goto LABEL_63;
      }
    }

    else
    {
      v26 = v24[2];
    }

    if ((2 * v16) <= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = (2 * v16);
    }

    v28 = v27 + v16;
    if (!v25 || &v25[v28] > v26)
    {
      v29 = 2 * v24[4];
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      v24[4] = v29;
      v30 = v29 + 8;
      result = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
      v31 = result + v30;
      *result = v24[3];
      v25 = (result + 8);
      v24[2] = v31;
      v24[3] = result;
    }

    v24[1] = &v25[v28];
    if (v16)
    {
      result = memcpy(v25, *(this + 1591), v16);
    }

    *(this + 1591) = v25;
    LODWORD(v16) = *(this + 3185);
    v12 = v25;
    v10 = *(this + 3184);
    goto LABEL_34;
  }

LABEL_16:
  v18 = 1937;
  v19 = 21;
LABEL_64:
  *a3 = v19;
  *(a3 + 8) = v3;
  *(a3 + 16) = v18;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleMetaclass@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mm", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleMethodLookupFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mu", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleObjCMetadataUpdateFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MU", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleObjCResilientClassStub@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Ms", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleFullObjCResilientClassStub@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mt", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleModifyAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleModify2Accessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

void anonymous namespace::Remangler::mangleModule(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  switch(v7)
  {
    case 3:
      v22 = *v6;
      v23 = *(v6 + 2);
      if (v22 != 24415 || v23 != 67)
      {
        break;
      }

      v20 = *(this + 1593);
      v21 = "So";
      goto LABEL_27;
    case 15:
      v17 = *v6;
      v18 = *(v6 + 7);
      if (v17 != 0x746E79535F435F5FLL || v18 != 0x64657A6973656874)
      {
        break;
      }

      v20 = *(this + 1593);
      v21 = "SC";
LABEL_27:
      swift::Demangle::__runtime::CharVector::append(this + 1591, v21, 2uLL, v20);
      goto LABEL_42;
    case 5:
      v8 = *v6;
      v9 = *(v6 + 4);
      if (v8 == 1718187859 && v9 == 116)
      {
        v11 = *(this + 3184);
        v12 = *(this + 3185);
        v13 = *(this + 1591);
        if (v11 < v12)
        {
LABEL_41:
          *(this + 3184) = v11 + 1;
          v13[v11] = 115;
          goto LABEL_42;
        }

        v14 = *(this + 1593);
        v15 = v14[1];
        if (&v13[v12] == v15)
        {
          v16 = v14[2];
          if ((v15 + 1) <= v16)
          {
            v14[1] = v15 + 1;
            LODWORD(v28) = 1;
LABEL_40:
            *(this + 3185) = v12 + v28;
            goto LABEL_41;
          }
        }

        else
        {
          v16 = v14[2];
        }

        if ((2 * v12) <= 4)
        {
          v28 = 4;
        }

        else
        {
          v28 = (2 * v12);
        }

        v29 = v28 + v12;
        if (!v15 || &v15[v29] > v16)
        {
          v30 = 2 * v14[4];
          if (v30 <= v29 + 1)
          {
            v30 = v29 + 1;
          }

          v14[4] = v30;
          v31 = v30 + 8;
          v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
          v33 = v32 + v31;
          *v32 = v14[3];
          v15 = (v32 + 1);
          v14[2] = v33;
          v14[3] = v32;
        }

        v14[1] = &v15[v29];
        if (v12)
        {
          memcpy(v15, *(this + 1591), v12);
        }

        *(this + 1591) = v15;
        LODWORD(v12) = *(this + 3185);
        v13 = v15;
        v11 = *(this + 3184);
        goto LABEL_40;
      }

      break;
  }

  v34 = 0uLL;
  LOBYTE(v35) = 0;
  {
    v25 = *(this + 1585);
    if (v25 > 0xF)
    {
      v27 = *(this + 3178) + 16;
      v36 = v34;
      v37 = v35;
      v38 = v27;
      std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v36);
    }

    else
    {
      *(this + 1585) = v25 + 1;
      v26 = this + 24 * v25 + 12296;
      *v26 = v34;
      v26[16] = v35;
    }
  }

LABEL_42:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t *anonymous namespace::Remangler::mangleNativeOwningAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleNativeOwningMutableAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleNativePinningAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleNativePinningMutableAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNominalTypeDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mn", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNominalTypeDescriptorRecord@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Hn", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleObjCAsyncCompletionHandlerImpl@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 == 2)
  {
    goto LABEL_12;
  }

  if (v8 == 5 && *(a2 + 2) >= 2u)
  {
    v11 = *a2;
LABEL_12:
    if (*a4)
    {
      return result;
    }

    if (*(a2 + 18) != 5)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (*(a2 + 2) == 4)
    {
      if (*a4)
      {
        return result;
      }
    }

    goto LABEL_18;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 == 5)
  {
    goto LABEL_16;
  }

LABEL_18:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tz", 2uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v12 = *(*a2 + 2);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::manglePredefinedObjCAsyncCompletionHandlerImpl@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TZ", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleObjCBlock@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*(*v9 + 16) == 24)
    {
      switch(v8)
      {
        case 1:
          goto LABEL_10;
        case 2:
          v11 = 1;
          goto LABEL_41;
        case 5:
          v10 = *(a2 + 2);
          v11 = v10 - 1;
          if (v10 != 1)
          {
            goto LABEL_41;
          }

LABEL_10:
          swift::Demangle::__runtime::CharVector::append(this + 1591, "XzB", 3uLL, *(this + 1593));
          v12 = *(v5 + 18);
          if ((v12 - 1) >= 2)
          {
            if (v12 != 5 || !*(v5 + 2))
            {
              v13 = 0;
              goto LABEL_35;
            }

            v5 = *v5;
          }

          v13 = *v5;
LABEL_35:
          swift::Demangle::__runtime::CharVector::append(this + 3182, *(v13 + 1), *(this + 1593));
          result = swift::Demangle::__runtime::CharVector::append(this + 1591, *v13, *(v13 + 1), *(this + 1593));
          *a4 = 0;
          *(a4 + 8) = 0;
          v19 = (a4 + 16);
          goto LABEL_36;
      }

      v11 = -1;
      while (1)
      {
LABEL_41:
        v20 = *(v5 + 18);
        v21 = v20 - 1;
        if (v20 != 1)
        {
          if (v20 == 5)
          {
            v20 = *(v5 + 2);
          }

          else
          {
            if (v20 != 2)
            {
              goto LABEL_39;
            }

            v20 = 2;
          }
        }

        if (v20 <= v11)
        {
LABEL_39:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_40;
        }

        v22 = v5;
        if (v21 >= 2)
        {
          v22 = *v5;
        }

        if (*a4)
        {
          return result;
        }

LABEL_40:
        if (!--v11)
        {
          goto LABEL_10;
        }
      }
    }

    goto LABEL_15;
  }

  if (v8 == 5)
  {
    if (!*(a2 + 2))
    {
      goto LABEL_33;
    }

    v9 = *a2;
    goto LABEL_5;
  }

LABEL_15:
  switch(v8)
  {
    case 1:
LABEL_20:
      v14 = v8 - 1;
      while (1)
      {
        v15 = *(v5 + 18);
        v16 = v15 - 1;
        if (v15 != 1)
        {
          if (v15 == 5)
          {
            v15 = *(v5 + 2);
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_21;
            }

            v15 = 2;
          }
        }

        if (v15 <= v14)
        {
LABEL_21:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_22;
        }

        v17 = v5;
        if (v16 >= 2)
        {
          v17 = *v5;
        }

        if (*a4)
        {
          return result;
        }

LABEL_22:
        if (--v14 == -1)
        {
          goto LABEL_33;
        }
      }

    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_20;
      }

      break;
    case 2:
      v8 = 2;
      goto LABEL_20;
  }

LABEL_33:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v19 = (a4 + 16);
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XB", 2uLL, *(this + 1593));
  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_36:
  *v19 = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleEscapingObjCBlock@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XL", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOwningAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleOwningMutableAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::manglePartialApplyForwarder@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TA", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePartialApplyObjCForwarder@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Ta", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePeerAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMp", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *anonymous namespace::Remangler::manglePostfixOperator@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "oP", 2uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePreambleAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMq", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *anonymous namespace::Remangler::manglePrefixOperator@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "op", 2uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePrivateDeclName@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  if (v8 != 1)
  {
    if (v8 == 5)
    {
      v8 = *(a2 + 2);
      if (!v8)
      {
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        v14 = (this + 12728);
        goto LABEL_24;
      }
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_20;
      }

      v8 = 2;
    }
  }

  v9 = v8 - 1;
  do
  {
    v10 = *(a2 + 18);
    v11 = v10 - 1;
    if (v10 != 1)
    {
      if (v10 == 5)
      {
        v10 = *(a2 + 2);
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_7;
        }

        v10 = 2;
      }
    }

    if (v10 <= v9)
    {
LABEL_7:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v12 = a2;
    if (v11 >= 2)
    {
      v12 = *a2;
    }

    if (*a4)
    {
      return result;
    }

LABEL_8:
    --v9;
  }

  while (v9 != -1);
  LODWORD(v8) = *(a2 + 18);
LABEL_20:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v14 = (this + 12728);
  if (v8 != 1)
  {
    if (v8 != 5)
    {
LABEL_26:
      v15 = "LL";
      goto LABEL_27;
    }

LABEL_24:
    if (*(a2 + 2) != 1)
    {
      goto LABEL_26;
    }
  }

  v15 = "Ll";
LABEL_27:
  result = swift::Demangle::__runtime::CharVector::append(v14, v15, 2uLL, *(this + 1593));
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::manglePropertyDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MV", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::manglePropertyWrapperBackingInitializer@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fP", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePropertyWrapperInitFromProjectedValue@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fW", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolConformance@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = *(v10 + 18);
  if ((v11 - 1) < 2)
  {
LABEL_11:
    v12 = *v10;
    goto LABEL_13;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_13:
  if (*(v12 + 8) != 45)
  {
LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  v13 = *(v12 + 18);
  v14 = v12;
  if ((v13 - 1) < 2)
  {
    goto LABEL_18;
  }

  if (v13 != 5)
  {
    v15 = 0;
    if (v13 == 2)
    {
LABEL_24:
      v12 = *(v12 + 1);
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (!*(v12 + 2))
  {
    v12 = 0;
    goto LABEL_27;
  }

  v14 = *v12;
LABEL_18:
  v15 = *v14;
  if (v13 == 2)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v13 == 5 && *(v12 + 2) >= 2u)
  {
    v12 = *v12;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_28:
  if (*a4)
  {
    return result;
  }

  v17 = *(a2 + 18);
  if (v17 == 5)
  {
    if (*(a2 + 2) != 4)
    {
LABEL_36:
      if (*(a2 + 2) >= 2u)
      {
        v18 = *a2;
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (*a4)
    {
      return result;
    }

    v17 = *(a2 + 18);
  }

  v18 = a2;
  if (v17 == 2)
  {
LABEL_38:
    v19 = *(v18 + 1);
    goto LABEL_40;
  }

  if (v17 == 5)
  {
    goto LABEL_36;
  }

LABEL_39:
  v19 = 0;
LABEL_40:
  if (*(v19 + 8) != 243)
  {
    goto LABEL_47;
  }

  v20 = *(v19 + 18);
  if ((v20 - 1) < 2)
  {
    goto LABEL_45;
  }

  if (v20 == 5 && *(v19 + 2))
  {
    v19 = *v19;
LABEL_45:
    v19 = *v19;
    goto LABEL_47;
  }

  v19 = 0;
LABEL_47:
  if ((result & 1) == 0)
  {
    v21 = *(v19 + 18);
    v22 = v19;
    if ((v21 - 1) >= 2)
    {
      if (v21 == 5)
      {
        v23 = *v19;
        v22 = *v19;
LABEL_56:
        v24 = &v23[*(v19 + 2)];
        goto LABEL_62;
      }

      v22 = 0;
    }

    switch(v21)
    {
      case 1:
        v24 = (v19 + 1);
        goto LABEL_62;
      case 2:
        v24 = (v19 + 2);
        goto LABEL_62;
      case 5:
        v23 = *v19;
        goto LABEL_56;
    }

    v24 = 0;
LABEL_62:
    while (v22 != v24)
    {
      if (*a4)
      {
        return result;
      }

      ++v22;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a2 + 18) == 5 && *(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolConformanceRefInTypeModule@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "HP", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolConformanceRefInProtocolModule@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Hp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleProtocolConformanceRefInOtherModule@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  if (*(v10 + 8) != 243)
  {
    goto LABEL_14;
  }

  v11 = *(v10 + 18);
  if ((v11 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
LABEL_12:
    v10 = *v10;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  if ((result & 1) == 0)
  {
    v13 = *(v10 + 18);
    v14 = v10;
    if ((v13 - 1) >= 2)
    {
      if (v13 == 5)
      {
        v15 = *v10;
        v14 = *v10;
LABEL_23:
        v16 = &v15[*(v10 + 2)];
        goto LABEL_29;
      }

      v14 = 0;
    }

    switch(v13)
    {
      case 1:
        v16 = (v10 + 1);
        goto LABEL_29;
      case 2:
        v16 = (v10 + 2);
        goto LABEL_29;
      case 5:
        v15 = *v10;
        goto LABEL_23;
    }

    v16 = 0;
LABEL_29:
    while (v14 != v16)
    {
      if (*a4)
      {
        return result;
      }

      ++v14;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v17 = *(v5 + 18);
  if (v17 != 2)
  {
    if (v17 != 5 || *(v5 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v18 = *(v5 + 1);
}

uint64_t *anonymous namespace::Remangler::mangleProtocolDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolDescriptorRecord@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Hr", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleProtocolConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mc", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *anonymous namespace::Remangler::mangleProtocolConformanceDescriptorRecord@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Hc", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolListWithClass@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = *(a2 + 18);
  v6 = a2;
  if ((v5 - 1) < 2)
  {
LABEL_5:
    v7 = *v6;
    if (v5 == 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (v5 == 5 && *(v4 + 2) >= 2u)
    {
      v4 = *v4;
      goto LABEL_11;
    }

LABEL_13:
    v8 = 0;
  }

  if (v5 == 5)
  {
    if (!*(a2 + 2))
    {
      v7 = 0;
      goto LABEL_13;
    }

    v6 = *a2;
    goto LABEL_5;
  }

  v7 = 0;
  if (v5 != 2)
  {
    goto LABEL_8;
  }

LABEL_11:
  v8 = *(v4 + 1);
}

uint64_t *anonymous namespace::Remangler::mangleProtocolListWithAnyObject@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolSelfConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MS", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolSelfConformanceWitness@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "TS", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolSelfConformanceWitnessTable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WS", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TW", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolWitnessTable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "WP", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolWitnessTableAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Wa", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolWitnessTablePattern@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Wp", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunk@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tr", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TR", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunkHelperWithSelf@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Ty", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunkHelperWithGlobalActor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TU", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReadAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleRead2Accessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleRelatedEntityDeclName@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  v7 = a2;
  if (v6 != 2)
  {
    if (v6 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v7 = *a2;
  }

  v8 = a2;
  if (*a4)
  {
    return this;
  }

  a2 = v8;
  v6 = v8[18];
LABEL_8:
  if ((v6 - 1) >= 2)
  {
    if (v6 != 5 || !*(a2 + 2))
    {
      v9 = 0;
      goto LABEL_14;
    }

    a2 = *a2;
  }

  v9 = *a2;
LABEL_14:
  if (*(v9 + 8) == 1)
  {
    swift::Demangle::__runtime::CharVector::append(v4 + 1591, "L", 1uLL, *(v4 + 1593));
    this = swift::Demangle::__runtime::CharVector::append(v4 + 1591, *v9, *(v9 + 8), *(v4 + 1593));
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 3150;
    v10 = 22;
  }

  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11;
  return this;
}

void *anonymous namespace::Remangler::mangleRetroactiveConformance@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2) >= 2u)
  {
    v8 = *a2;
LABEL_5:
    v9 = *(v8 + 1);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  if (*a4)
  {
    return result;
  }

  v11 = *(this + 3184);
  v12 = *(this + 3185);
  v13 = *(this + 1591);
  if (v11 >= v12)
  {
    v14 = *(this + 1593);
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v17) = 1;
LABEL_23:
        *(this + 3185) = v12 + v17;
        goto LABEL_24;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = (2 * v12);
    }

    v18 = v17 + v12;
    if (!v15 || &v15[v18] > v16)
    {
      v19 = 2 * v14[4];
      if (v19 <= v18 + 1)
      {
        v19 = v18 + 1;
      }

      v14[4] = v19;
      v20 = v19 + 8;
      result = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v21 = result + v20;
      *result = v14[3];
      v15 = (result + 1);
      v14[2] = v21;
      v14[3] = result;
    }

    v14[1] = &v15[v18];
    if (v12)
    {
      result = memcpy(v15, *(this + 1591), v12);
    }

    *(this + 1591) = v15;
    LODWORD(v12) = *(this + 3185);
    v13 = v15;
    v11 = *(this + 3184);
    goto LABEL_23;
  }

LABEL_24:
  *(this + 3184) = v11 + 1;
  v13[v11] = 103;
  if (*(v4 + 18) - 1 >= 2)
  {
    v4 = *v4;
  }

  v22 = **v4;
  if (v22)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, v22 - 1, *(this + 1593));
  }

  v23 = *(this + 3184);
  v24 = *(this + 3185);
  v25 = *(this + 1591);
  if (v23 < v24)
  {
    goto LABEL_44;
  }

  v26 = *(this + 1593);
  v27 = v26[1];
  if (&v25[v24] != v27)
  {
    v28 = v26[2];
LABEL_32:
    if ((2 * v24) <= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = (2 * v24);
    }

    v30 = v29 + v24;
    if (!v27 || &v27[v30] > v28)
    {
      v31 = 2 * v26[4];
      if (v31 <= v30 + 1)
      {
        v31 = v30 + 1;
      }

      v26[4] = v31;
      v32 = v31 + 8;
      result = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v33 = result + v32;
      *result = v26[3];
      v27 = (result + 1);
      v26[2] = v33;
      v26[3] = result;
    }

    v26[1] = &v27[v30];
    if (v24)
    {
      result = memcpy(v27, *(this + 1591), v24);
    }

    *(this + 1591) = v27;
    LODWORD(v24) = *(this + 3185);
    v25 = v27;
    v23 = *(this + 3184);
    goto LABEL_43;
  }

  v28 = v26[2];
  if ((v27 + 1) > v28)
  {
    goto LABEL_32;
  }

  v26[1] = v27 + 1;
  LODWORD(v29) = 1;
LABEL_43:
  *(this + 3185) = v24 + v29;
LABEL_44:
  *(this + 3184) = v23 + 1;
  v25[v23] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleShared@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 104;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOwned@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 110;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSILBoxType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Xb", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

char **anonymous namespace::Remangler::mangleSILBoxTypeWithLayout@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 != 1)
  {
    if (v7 != 5 || (*(a2 + 2) | 2) != 3)
    {
      v12 = 3749;
      goto LABEL_13;
    }

    v8 = *a2;
  }

  if (*(*v8 + 16) != 223)
  {
    v12 = 3751;
    goto LABEL_13;
  }

  v9 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 != 5 || !*(a2 + 2))
    {
      v10 = a2;
      v11 = 0;
      goto LABEL_17;
    }

    v9 = *a2;
  }

  v10 = a2;
  v11 = *v9;
LABEL_17:
  this = swift::Demangle::__runtime::NodeFactory::createNode(*this, 246);
  v16 = this;
  v17 = *(v11 + 18);
  if (v17 != 1)
  {
    if (v17 == 5)
    {
      v17 = *(v11 + 2);
      if (!v17)
      {
        goto LABEL_60;
      }
    }

    else if (v17 != 2)
    {
LABEL_60:
      if (*a4)
      {
        return this;
      }

      if (*(v10 + 18) == 5 && (a2 = v10, *(v10 + 2) == 3))
      {
        v38 = *(*v10 + 8);
        if (*(v38 + 16) != 44)
        {
          v12 = 3779;
          goto LABEL_13;
        }

        if (*(*(*v10 + 16) + 16) != 246)
        {
          v12 = 3780;
          goto LABEL_13;
        }

        if (*a4)
        {
          return this;
        }

        if (*a4)
        {
          return this;
        }

        v39 = "XX";
      }

      else
      {
        v39 = "Xx";
      }

      this = swift::Demangle::__runtime::CharVector::append(v5 + 1591, v39, 2uLL, v5[1593]);
      v13 = 0;
      a2 = 0;
      v12 = 0;
      goto LABEL_14;
    }
  }

  v18 = 0;
  v19 = v17;
  while (1)
  {
    v24 = *(v11 + 18);
    if ((v24 - 1) >= 2)
    {
      v25 = 0;
      v26 = *v11;
    }

    else
    {
      v25 = 1;
      v26 = v11;
    }

    if (*(v26[v18] + 16) != 225)
    {
      v27 = v11;
      if ((v25 & 1) == 0)
      {
        v27 = *v11;
      }

      if (*(v27[v18] + 16) != 224)
      {
        break;
      }
    }

    if (v24 == 1)
    {
      goto LABEL_39;
    }

    if (v24 != 5)
    {
      if (v24 != 2)
      {
        goto LABEL_44;
      }

      v24 = 2;
LABEL_39:
      if (v24 <= v18)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    if (*(v11 + 2) <= v18)
    {
LABEL_44:
      v29 = 0;
      goto LABEL_45;
    }

LABEL_40:
    v28 = v11;
    if ((v25 & 1) == 0)
    {
      v28 = *v11;
    }

    v29 = v28[v18];
LABEL_45:
    v30 = *(v29 + 18);
    v31 = v29;
    if (v30 != 1)
    {
      if (v30 != 5 || *(v29 + 2) != 1)
      {
LABEL_68:
        v12 = 3762;
        v13 = 1;
        a2 = v29;
        goto LABEL_14;
      }

      v31 = *v29;
    }

    if (*(*v31 + 16) != 243)
    {
      goto LABEL_68;
    }

    v32 = v29;
    if ((v30 - 1) < 2)
    {
      goto LABEL_54;
    }

    if (v30 == 5 && *(v29 + 2))
    {
      v32 = *v29;
LABEL_54:
      v20 = *v32;
      goto LABEL_56;
    }

    v20 = 0;
LABEL_56:
    if (*(v29 + 8) != 224)
    {
      goto LABEL_27;
    }

    Node = swift::Demangle::__runtime::NodeFactory::createNode(*v5, 128);
    v36 = Node;
    v37 = *(v20 + 18);
    if ((v37 - 1) >= 2)
    {
      if (v37 != 5 || !*(v20 + 8))
      {
        v21 = 0;
        goto LABEL_26;
      }

      v20 = *v20;
    }

    v21 = *v20;
LABEL_26:
    swift::Demangle::__runtime::Node::addChild(Node, v21, *v5, v34, v35);
    v20 = swift::Demangle::__runtime::NodeFactory::createNode(*v5, 243);
    swift::Demangle::__runtime::Node::addChild(v20, v36, *v5, v22, v23);
LABEL_27:
    this = swift::Demangle::__runtime::Node::addChild(v16, v20, *v5, v14, v15);
    if (v19 == ++v18)
    {
      goto LABEL_60;
    }
  }

  if (v24 == 1)
  {
    goto LABEL_77;
  }

  if (v24 != 5)
  {
    if (v24 == 2)
    {
      v24 = 2;
      goto LABEL_77;
    }

    goto LABEL_81;
  }

  v24 = *(v11 + 2);
LABEL_77:
  if (v24 <= v18)
  {
LABEL_81:
    a2 = 0;
  }

  else
  {
    if ((v25 & 1) == 0)
    {
      v11 = *v11;
    }

    a2 = v11[v18];
  }

  v12 = 3758;
LABEL_13:
  v13 = 1;
LABEL_14:
  *a4 = v13;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  return this;
}

{
  if (*(a2 + 8) != 222)
  {
    v11 = 2800;
    goto LABEL_21;
  }

  v6 = this;
  v7 = *(a2 + 18);
  if (v7 != 1 && (v7 != 5 || (*(a2 + 2) | 2) != 3))
  {
    v11 = 2802;
    goto LABEL_21;
  }

  v8 = a2;
  this = swift::Demangle::__runtime::CharVector::append(this + 1591, "XB", 2uLL, this[1593]);
  v9 = *(v8 + 18);
  v10 = v8;
  if ((v9 - 1) >= 2)
  {
    if (!*(v8 + 2))
    {
      a2 = 0;
      if (MEMORY[0x10] == 223)
      {
        goto LABEL_14;
      }

LABEL_20:
      v11 = 2805;
      goto LABEL_21;
    }

    v10 = *v8;
  }

  a2 = *v10;
  if (*(*v10 + 16) != 223)
  {
    goto LABEL_20;
  }

  if (v9 != 5)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (*(v8 + 2) == 3)
  {
    v12 = a2;
    a2 = *(*v8 + 8);
    if (*(a2 + 8) == 44)
    {
      v13 = *(*v8 + 16);
      if (*(v13 + 8) != 246)
      {
        v11 = 2814;
LABEL_56:
        v20 = 1;
        a2 = v13;
        goto LABEL_22;
      }

      v14 = *(v6 + 12736);
      v15 = *(v6 + 12740);
      v16 = *(v6 + 12728);
      if (v14 < v15)
      {
LABEL_71:
        *(v6 + 12736) = v14 + 1;
        v16[v14] = 71;
        a2 = v12;
        if (*a4)
        {
          return this;
        }

        goto LABEL_25;
      }

      v17 = *(v6 + 12744);
      v18 = v17[1];
      if (&v16[v15] == v18)
      {
        v19 = v17[2];
        if ((v18 + 1) <= v19)
        {
          v17[1] = v18 + 1;
          v40 = 1;
LABEL_70:
          *(v6 + 12740) = v15 + v40;
          goto LABEL_71;
        }
      }

      else
      {
        v19 = v17[2];
      }

      LODWORD(v33) = 2 * v15;
      if ((2 * v15) <= 4)
      {
        v33 = 4;
      }

      else
      {
        v33 = v33;
      }

      v47 = v33;
      v34 = v33 + v15;
      if (!v18 || &v18[v34] > v19)
      {
        v35 = 2 * v17[4];
        if (v35 <= v34 + 1)
        {
          v35 = v34 + 1;
        }

        v17[4] = v35;
        v36 = v35 + 8;
        v46 = a2;
        v37 = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
        a2 = v46;
        v38 = v37 + v36;
        *v37 = v17[3];
        v18 = (v37 + 1);
        v17[2] = v38;
        v17[3] = v37;
      }

      v17[1] = &v18[v34];
      if (v15)
      {
        v39 = a2;
        memcpy(v18, *(v6 + 12728), v15);
        a2 = v39;
      }

      *(v6 + 12728) = v18;
      LODWORD(v15) = *(v6 + 12740);
      v16 = v18;
      v14 = *(v6 + 12736);
      v40 = v47;
      goto LABEL_70;
    }

    v11 = 2811;
LABEL_21:
    v20 = 1;
    goto LABEL_22;
  }

LABEL_24:
  v13 = 0;
LABEL_25:
  if (*a4)
  {
    return this;
  }

  v20 = 0;
  if (!v13)
  {
    a2 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  while (1)
  {
    v21 = *(v13 + 18);
    switch(v21)
    {
      case 1:
        v22 = *(v13 + 18);
        break;
      case 5:
        v22 = *(v13 + 2);
        break;
      case 2:
        v22 = 2;
        break;
      default:
        goto LABEL_52;
    }

    v23 = v20;
    if (v22 <= v20)
    {
      break;
    }

    v24 = v21 - 1;
    if (v21 == 1)
    {
      goto LABEL_39;
    }

    if (v21 != 5)
    {
      v21 = 2;
LABEL_39:
      if (v21 <= v23)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    if (*(v13 + 2) <= v23)
    {
LABEL_44:
      a2 = 0;
      goto LABEL_45;
    }

LABEL_40:
    v25 = v13;
    if (v24 >= 2)
    {
      v25 = *v13;
    }

    a2 = *(v25 + v23);
LABEL_45:
    if (*(v13 + 8) != 243)
    {
      v11 = 2823;
      goto LABEL_56;
    }

    v26 = *(a2 + 18);
    if (v26 != 1)
    {
      if (v26 != 5 || *(a2 + 2) != 1)
      {
        v11 = 114;
        v20 = 10;
        goto LABEL_22;
      }

      a2 = *a2;
    }

    v20 = v23 + 1;
    if (*a4)
    {
      return this;
    }
  }

LABEL_52:
  v27 = *(v6 + 12736);
  v28 = *(v6 + 12740);
  v29 = *(v6 + 12728);
  if (v27 >= v28)
  {
    v30 = *(v6 + 12744);
    v31 = v30[1];
    if (&v29[v28] != v31)
    {
      v32 = v30[2];
      goto LABEL_74;
    }

    v32 = v30[2];
    if ((v31 + 1) <= v32)
    {
      v30[1] = v31 + 1;
      LODWORD(v41) = 1;
    }

    else
    {
LABEL_74:
      if ((2 * v28) <= 4)
      {
        v41 = 4;
      }

      else
      {
        v41 = (2 * v28);
      }

      v42 = v41 + v28;
      if (!v31 || &v31[v42] > v32)
      {
        v43 = 2 * v30[4];
        if (v43 <= v42 + 1)
        {
          v43 = v42 + 1;
        }

        v30[4] = v43;
        v44 = v43 + 8;
        this = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
        v45 = this + v44;
        *this = v30[3];
        v31 = (this + 1);
        v30[2] = v45;
        v30[3] = this;
      }

      v30[1] = &v31[v42];
      if (v28)
      {
        this = memcpy(v31, *(v6 + 12728), v28);
      }

      *(v6 + 12728) = v31;
      LODWORD(v28) = *(v6 + 12740);
      v29 = v31;
      v27 = *(v6 + 12736);
    }

    *(v6 + 12740) = v28 + v41;
  }

  v20 = 0;
  a2 = 0;
  v11 = 0;
  *(v6 + 12736) = v27 + 1;
  v29[v27] = 95;
LABEL_22:
  *a4 = v20;
  *(a4 + 8) = a2;
  *(a4 + 16) = v11;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleSetter@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleStatic@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 90;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleThinFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Xf", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleTuple@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    v7 = *(this + 3184);
    v8 = *(this + 3185);
    v9 = this[1591];
    if (v7 < v8)
    {
LABEL_21:
      *(this + 3184) = v7 + 1;
      v9[v7] = 116;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v10 = this[1593];
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_20:
        *(this + 3185) = v8 + v13;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v8);
    }

    v14 = v13 + v8;
    if (v11)
    {
      v15 = &v11[v13 + v8] > v12;
    }

    else
    {
      v15 = 1;
    }

    v9 = v10[1];
    if (v15)
    {
      v16 = 2 * v10[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v10[4] = v16;
      v17 = v16 + 8;
      result = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v18 = result + v17;
      *result = v10[3];
      v9 = result + 1;
      v10[2] = v18;
      v10[3] = result;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      result = memcpy(v9, this[1591], v8);
    }

    this[1591] = v9;
    LODWORD(v8) = *(this + 3185);
    v7 = *(this + 3184);
    goto LABEL_20;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::manglePack@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "QP", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleSILPackDirect@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "QSd", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleSILPackIndirect@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "QSi", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::manglePackExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Qp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePackElement@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

LABEL_8:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Qe", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if (v11 == 2)
  {
    goto LABEL_12;
  }

  if (v11 == 5 && *(v5 + 2) >= 2u)
  {
    v5 = *v5;
LABEL_12:
    if (*a4)
    {
      return result;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleTypeList@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = 1;
  v15 = 1;
  v9 = *(a2 + 18);
  switch(v9)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v9 = *(a2 + 2);
      if (v9)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v9 = 2;
LABEL_6:
      v10 = 0;
      while (1)
      {
        v11 = *(a2 + 18);
        v12 = v11 - 1;
        if (v11 == 1)
        {
          goto LABEL_13;
        }

        if (v11 != 5)
        {
          break;
        }

        if (*(a2 + 2) > v10)
        {
LABEL_16:
          v13 = a2;
          if (v12 >= 2)
          {
            v13 = *a2;
          }

          if (*a4)
          {
            return result;
          }

          goto LABEL_8;
        }

LABEL_7:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
LABEL_8:
        if (v9 == ++v10)
        {
          v8 = v15;
          goto LABEL_21;
        }
      }

      if (v11 != 2)
      {
        goto LABEL_7;
      }

      v11 = 2;
LABEL_13:
      if (v11 > v10)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
  }

LABEL_21:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMangling@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return this;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v11 = *(v5 + 12736);
  v12 = *(v5 + 12740);
  v13 = *(v5 + 12728);
  if (v11 >= v12)
  {
    v14 = *(v5 + 12744);
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v17) = 1;
LABEL_34:
        *(v5 + 12740) = v12 + v17;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = (2 * v12);
    }

    v18 = v17 + v12;
    if (v15)
    {
      v19 = &v15[v17 + v12] > v16;
    }

    else
    {
      v19 = 1;
    }

    v13 = v14[1];
    if (v19)
    {
      v20 = 2 * v14[4];
      if (v20 <= v18 + 1)
      {
        v20 = v18 + 1;
      }

      v14[4] = v20;
      v21 = v20 + 8;
      this = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v22 = this + v21;
      *this = v14[3];
      v13 = (this + 1);
      v14[2] = v22;
      v14[3] = this;
    }

    v14[1] = &v13[v18];
    if (v12)
    {
      this = memcpy(v13, *(v5 + 12728), v12);
    }

    *(v5 + 12728) = v13;
    LODWORD(v12) = *(v5 + 12740);
    v11 = *(v5 + 12736);
    goto LABEL_34;
  }

LABEL_35:
  *(v5 + 12736) = v11 + 1;
  v13[v11] = 68;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadata@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "N", 1uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataAccessFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Ma", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataCompletionFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mr", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataInstantiationCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MI", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataInstantiationFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mi", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataSingletonInitializationCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Ml", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMetadataDemanglingCache@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Md", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMetadataMangledNameRef@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MR", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMetadataLazyCache@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "ML", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleWeak@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Xw", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleUnowned@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Xo", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleUnmanaged@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Xu", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleUnsafeAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleUnsafeMutableAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleValueWitness@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  v7 = a2;
  if (v6 != 2)
  {
    if (v6 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v7 = *a2;
  }

  v8 = a2;
  if (*a4)
  {
    return result;
  }

  a2 = v8;
  v6 = v8[18];
LABEL_8:
  if ((v6 - 1) >= 2)
  {
    a2 = *a2;
  }

  switch(**a2)
  {
    case 0:
      v10 = 0;
      v11 = "al";
      break;
    case 1:
      v10 = 0;
      v11 = "ca";
      break;
    case 2:
      v10 = 0;
      v11 = "ta";
      break;
    case 3:
      v10 = 0;
      v11 = "de";
      break;
    case 4:
      v10 = 0;
      v11 = "xx";
      break;
    case 5:
      v10 = 0;
      v11 = "XX";
      break;
    case 6:
      v10 = 0;
      v11 = "Xx";
      break;
    case 7:
      v10 = 0;
      v11 = "CP";
      break;
    case 8:
      v10 = 0;
      v11 = "Cp";
      break;
    case 9:
      v10 = 0;
      v11 = "cp";
      break;
    case 0xA:
      v10 = 0;
      v11 = "Tk";
      break;
    case 0xB:
      v10 = 0;
      v11 = "tk";
      break;
    case 0xC:
      v10 = 0;
      v11 = "pr";
      break;
    case 0xD:
      v10 = 0;
      v11 = "TK";
      break;
    case 0xE:
      v10 = 0;
      v11 = "Cc";
      break;
    case 0xF:
      v10 = 0;
      v11 = "Tt";
      break;
    case 0x10:
      v10 = 0;
      v11 = "tT";
      break;
    case 0x11:
      v10 = 0;
      v11 = "xs";
      break;
    case 0x12:
      v10 = 0;
      v11 = "xg";
      break;
    case 0x13:
      v10 = 0;
      v11 = "ug";
      break;
    case 0x14:
      v10 = 0;
      v11 = "up";
      break;
    case 0x15:
      v10 = 0;
      v11 = "ui";
      break;
    case 0x16:
      v10 = 0;
      v11 = "et";
      break;
    case 0x17:
      v10 = 0;
      v11 = "st";
      break;
    default:
      v11 = 0;
      v10 = 1;
      break;
  }

  v12 = *(this + 3184);
  v13 = *(this + 3185);
  v14 = this[1591];
  if (v12 < v13)
  {
    goto LABEL_52;
  }

  v15 = this[1593];
  v16 = v15[1];
  if (&v14[v13] != v16)
  {
    v17 = v15[2];
LABEL_40:
    if ((2 * v13) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v13);
    }

    v19 = v18 + v13;
    if (!v16 || &v16[v19] > v17)
    {
      v20 = 2 * v15[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v15[4] = v20;
      v21 = v20 + 8;
      v22 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v23 = v22 + v21;
      *v22 = v15[3];
      v16 = (v22 + 1);
      v15[2] = v23;
      v15[3] = v22;
    }

    v15[1] = &v16[v19];
    if (v13)
    {
      memcpy(v16, this[1591], v13);
    }

    this[1591] = v16;
    LODWORD(v13) = *(this + 3185);
    v14 = v16;
    v12 = *(this + 3184);
    goto LABEL_51;
  }

  v17 = v15[2];
  if ((v16 + 1) > v17)
  {
    goto LABEL_40;
  }

  v15[1] = v16 + 1;
  LODWORD(v18) = 1;
LABEL_51:
  *(this + 3185) = v13 + v18;
LABEL_52:
  *(this + 3184) = v12 + 1;
  v14[v12] = 119;
  if (v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = strlen(v11);
  }

  result = swift::Demangle::__runtime::CharVector::append(this + 1591, v11, v24, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}