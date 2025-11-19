double *icu::units::Factor::divideBy(double *result, double *a2)
{
  v2 = 0;
  v3 = result[1];
  *result = a2[1] * *result;
  result[1] = *a2 * v3;
  do
  {
    *(result + v2 + 28) -= *(a2 + v2 + 28);
    v2 += 4;
  }

  while (v2 != 60);
  v4 = a2[2];
  if (v4 < result[2])
  {
    v4 = result[2];
  }

  result[2] = v4;
  return result;
}

void icu::units::Factor::power(icu::units::Factor *this, int a2)
{
  for (i = 28; i != 88; i += 4)
  {
    *(this + i) *= a2;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = v5;
  v7 = pow(*this, v5);
  *this = v7;
  v8 = pow(*(this + 1), v6);
  *(this + 1) = v8;
  if (a2 < 0)
  {
    *this = v8;
    *(this + 1) = v7;
  }
}

long double icu::units::Factor::applyPrefix(uint64_t a1, int a2, long double result)
{
  if (a2 != 30)
  {
    PrefixPower = umeas_getPrefixPower(a2);
    PrefixBase = umeas_getPrefixBase(a2);
    if (PrefixPower >= 0)
    {
      v7 = PrefixPower;
    }

    else
    {
      v7 = -PrefixPower;
    }

    v8 = pow(PrefixBase, v7);
    v9 = (PrefixPower >> 28) & 8;
    result = v8 * *(a1 + v9);
    *(a1 + v9) = result;
  }

  return result;
}

void icu::units::Factor::substituteConstants(icu::units::Factor *this)
{
  v2 = 0;
  v3 = this + 28;
  do
  {
    v4 = *&v3[4 * v2];
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        v5 = *&v3[4 * v2];
      }

      else
      {
        v5 = -v4;
      }

      *(this + ((v4 >> 28) & 8)) = pow(dbl_195493D60[v2], v5) * *(this + ((v4 >> 28) & 8));
      *&v3[4 * v2] = 0;
    }

    ++v2;
  }

  while (v2 != 15);
}

void icu::units::addSingleFactorConstant(unsigned __int8 *a1, uint64_t a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  v16 = a1;
  v17 = a2;
  icu::StringPiece::StringPiece(v15, "ft_to_m");
  if (icu::operator==(&v16, v15))
  {
    v10 = *(a5 + 28) + a4 * a3;
LABEL_7:
    *(a5 + 28) = v10;
    return;
  }

  icu::StringPiece::StringPiece(v15, "ft2_to_m2");
  if (icu::operator==(&v16, v15))
  {
    v10 = *(a5 + 28) + 2 * a4 * a3;
    goto LABEL_7;
  }

  icu::StringPiece::StringPiece(v15, "ft3_to_m3");
  if (icu::operator==(&v16, v15))
  {
    v10 = *(a5 + 28) + 3 * a4 * a3;
    goto LABEL_7;
  }

  icu::StringPiece::StringPiece(v15, "in3_to_m3");
  if (icu::operator==(&v16, v15))
  {
    *(a5 + 28) += 3 * a4 * a3;
    v11 = (a4 * a3);
LABEL_12:
    v12 = pow(1728.0, v11) * *(a5 + 8);
LABEL_13:
    *(a5 + 8) = v12;
    return;
  }

  icu::StringPiece::StringPiece(v15, "gal_to_m3");
  if (icu::operator==(&v16, v15))
  {
    *(a5 + 28) += 3 * a4 * a3;
    *a5 = pow(231.0, (a4 * a3)) * *a5;
    v11 = (a4 * a3);
    goto LABEL_12;
  }

  icu::StringPiece::StringPiece(v15, "gal_imp_to_m3");
  if (icu::operator==(&v16, v15))
  {
    *(a5 + 44) += a4 * a3;
  }

  else
  {
    icu::StringPiece::StringPiece(v15, "G");
    if (icu::operator==(&v16, v15))
    {
      *(a5 + 40) += a4 * a3;
    }

    else
    {
      icu::StringPiece::StringPiece(v15, "gravity");
      if (icu::operator==(&v16, v15))
      {
        *(a5 + 36) += a4 * a3;
      }

      else
      {
        icu::StringPiece::StringPiece(v15, "lb_to_kg");
        if (icu::operator==(&v16, v15))
        {
          *(a5 + 48) += a4 * a3;
        }

        else
        {
          icu::StringPiece::StringPiece(v15, "glucose_molar_mass");
          if (icu::operator==(&v16, v15))
          {
            *(a5 + 52) += a4 * a3;
          }

          else
          {
            icu::StringPiece::StringPiece(v15, "item_per_mole");
            if (icu::operator==(&v16, v15))
            {
              *(a5 + 56) += a4 * a3;
            }

            else
            {
              icu::StringPiece::StringPiece(v15, "meters_per_AU");
              if (icu::operator==(&v16, v15))
              {
                *(a5 + 60) += a4 * a3;
              }

              else
              {
                icu::StringPiece::StringPiece(v15, "PI");
                if (icu::operator==(&v16, v15))
                {
                  *(a5 + 32) += a4 * a3;
                }

                else
                {
                  icu::StringPiece::StringPiece(v15, "sec_per_julian_year");
                  if (icu::operator==(&v16, v15))
                  {
                    *(a5 + 64) += a4 * a3;
                  }

                  else
                  {
                    icu::StringPiece::StringPiece(v15, "speed_of_light_meters_per_second");
                    if (icu::operator==(&v16, v15))
                    {
                      *(a5 + 68) += a4 * a3;
                    }

                    else
                    {
                      icu::StringPiece::StringPiece(v15, "sho_to_m3");
                      if (icu::operator==(&v16, v15))
                      {
                        *(a5 + 72) += a4 * a3;
                      }

                      else
                      {
                        icu::StringPiece::StringPiece(v15, "tsubo_to_m2");
                        if (icu::operator==(&v16, v15))
                        {
                          *(a5 + 76) += a4 * a3;
                        }

                        else
                        {
                          icu::StringPiece::StringPiece(v15, "shaku_to_m");
                          if (icu::operator==(&v16, v15))
                          {
                            *(a5 + 80) += a4 * a3;
                          }

                          else
                          {
                            icu::StringPiece::StringPiece(v15, "AMU");
                            if (icu::operator==(&v16, v15))
                            {
                              *(a5 + 84) += a4 * a3;
                            }

                            else
                            {
                              sub_19540E9E4(v16, v17, a6);
                              v14 = pow(v13, a3);
                              if (a4 == -1)
                              {
                                v12 = *(a5 + 8) * v14;
                                goto LABEL_13;
                              }

                              *a5 = *a5 * v14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_19540E9E4(unsigned __int8 *a1, int a2, _DWORD *a3)
{
  v7 = 0;
  v10 = 0;
  v6 = 0u;
  v8 = "";
  v9 = "";
  v5 = 0;
  sub_195300368(&v6, a1, a2, &v5);
  if (v5 != a2)
  {
    *a3 = 3;
  }
}

uint64_t icu::units::extractCompoundBaseUnit@<X0>(uint64_t result@<X0>, int *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 16) = a4 + 32;
  *(a4 + 24) = 8;
  *(a4 + 96) = a4 + 109;
  *(a4 + 104) = 40;
  *(a4 + 152) = 0;
  if (*a3 <= 0)
  {
    v6 = result;
    v16 = *(result + 8);
    if (v16 >= 1)
    {
      for (i = 0; i != v16; ++i)
      {
        v10 = *(*(v6 + 16) + 8 * i);
        SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(v10);
        icu::StringPiece::StringPiece(&v19, SimpleUnitID);
        result = icu::units::ConversionRates::extractConversionInfo(a2, v19, v20, a3);
        if (*a3 > 0)
        {
          break;
        }

        if (!result)
        {
          *a3 = U_INTERNAL_PROGRAM_ERROR;
          break;
        }

        v18 = 0;
        memset(v17, 0, sizeof(v17));
        v4 = v4 & 0xFFFFFFFF00000000 | *(result + 128);
        icu::MeasureUnitImpl::forIdentifier(*(result + 72), v4, a3, &v19);
        LODWORD(v17[0]) = v20;
        *(&v17[0] + 1) = v21;
        LODWORD(v17[1]) = v22;
        BYTE4(v17[1]) = v23;
        if (v21 == v24)
        {
          *(&v17[0] + 1) = &v17[1] + 8;
          memcpy(&v17[1] + 8, v24, 8 * v22);
        }

        else
        {
          v21 = v24;
          v22 = 8;
          v23 = 0;
        }

        LODWORD(v20) = 0;
        if (v26)
        {
          free(v25);
        }

        sub_195342340(&v20);
        if (SLODWORD(v17[0]) >= 1)
        {
          v12 = 0;
          v13 = 8 * LODWORD(v17[0]);
          while (1)
          {
            v14 = *(*(&v17[0] + 1) + v12);
            *(v14 + 2) *= *(v10 + 2);
            icu::MeasureUnitImpl::appendSingleUnit(a4, v14, a3);
            if (*a3 >= 1)
            {
              break;
            }

            v12 += 8;
            if (v13 == v12)
            {
              goto LABEL_15;
            }
          }

          result = sub_195342340(v17);
          break;
        }

LABEL_15:
        result = sub_195342340(v17);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::units::extractConvertibility(_DWORD *a1, _DWORD *a2, int *a3, UErrorCode *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a1 == 2 || *a2 == 2)
  {
    *a4 = U_ARGUMENT_TYPE_MISMATCH;
    v6 = 2;
    goto LABEL_43;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  icu::units::extractCompoundBaseUnit(a1, a3, a4, v34);
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  memset(v29, 0, sizeof(v29));
  icu::units::extractCompoundBaseUnit(a2, a3, a4, v29);
  if (*a4 <= 0)
  {
    v26[0] = 0;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    v26[1] = v27 + 8;
    LODWORD(v27[0]) = 8;
    v23[0] = 0;
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    v23[1] = v24 + 8;
    LODWORD(v24[0]) = 8;
    v6 = 1;
    sub_19540EFA4(v26, v34, 1);
    sub_19540EFA4(v23, v34, 1);
    sub_19540EFA4(v26, v29, -1);
    sub_19540EFA4(v23, v29, 1);
    if (SLODWORD(v26[0]) >= 1)
    {
      if (*(*v26[1] + 4))
      {
        goto LABEL_15;
      }

      v9 = 1;
      do
      {
        v10 = v9;
        if (LODWORD(v26[0]) == v9)
        {
          break;
        }
      }

      while (!*(*(v26[1] + v9++) + 4));
      if (v10 < LODWORD(v26[0]))
      {
LABEL_15:
        if (SLODWORD(v23[0]) < 1)
        {
          v6 = 0;
LABEL_29:
          if (BYTE4(v24[0]))
          {
            free(v23[1]);
          }

          v18 = v26[0];
          if (SLODWORD(v26[0]) >= 1)
          {
            v19 = 0;
            do
            {
              v20 = *(v26[1] + v19);
              if (v20)
              {
                MEMORY[0x19A8B2600](v20, 0x1000C4000313F17);
                v18 = v26[0];
              }

              ++v19;
            }

            while (v19 < v18);
          }

          if (BYTE4(v27[0]))
          {
            free(v26[1]);
          }

          goto LABEL_38;
        }

        if (*(*v23[1] + 4))
        {
          v6 = 2;
        }

        else
        {
          v12 = 1;
          do
          {
            v13 = v12;
            if (LODWORD(v23[0]) == v12)
            {
              break;
            }
          }

          while (!*(*(v23[1] + v12++) + 4));
          v6 = 2 * (v13 < LODWORD(v23[0]));
        }
      }

      else
      {
        v6 = 1;
      }
    }

    v15 = v23[0];
    if (SLODWORD(v23[0]) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(v23[1] + v16);
        if (v17)
        {
          MEMORY[0x19A8B2600](v17, 0x1000C4000313F17);
          v15 = v23[0];
        }

        ++v16;
      }

      while (v16 < v15);
    }

    goto LABEL_29;
  }

  v6 = 2;
LABEL_38:
  if (BYTE4(v30[1]))
  {
    free(v30[0]);
  }

  sub_195342340(v29 + 8);
  if (BYTE12(v35))
  {
    free(v35);
  }

  sub_195342340(v34 + 8);
LABEL_43:
  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

unsigned int *sub_19540EFA4(unsigned int *result, uint64_t a2, int a3)
{
  if (*(a2 + 8) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 16) + 8 * v6);
      v8 = *v7;
      v9 = v7[2];
      v10 = *v5;
      if (*v5 < 1)
      {
LABEL_7:
        if (v10 != v5[4])
        {
          goto LABEL_22;
        }

        if (v10 == 8)
        {
          v13 = 32;
        }

        else
        {
          v13 = 2 * v10;
        }

        if (v13 >= 1)
        {
          result = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
          if (result)
          {
            v14 = result;
            if (v10 >= 1)
            {
              v15 = v5[4];
              if (v15 >= v10)
              {
                v15 = v10;
              }

              if (v15 >= v13)
              {
                v15 = v13;
              }

              memcpy(result, *(v5 + 1), 8 * v15);
            }

            if (*(v5 + 20))
            {
              free(*(v5 + 1));
            }

            *(v5 + 1) = v14;
            v5[4] = v13;
            *(v5 + 20) = 1;
LABEL_22:
            operator new();
          }
        }
      }

      else
      {
        v11 = *(v5 + 1);
        v12 = *v5;
        while (**v11 != v8)
        {
          v11 += 8;
          if (!--v12)
          {
            goto LABEL_7;
          }
        }

        *(*v11 + 4) += v9 * a3;
      }

      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  return result;
}

uint64_t icu::units::UnitsConverter::UnitsConverter(uint64_t a1, icu::MeasureUnitImpl *this, icu::MeasureUnitImpl *a3, int *a4, UErrorCode *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  icu::MeasureUnitImpl::copy(this, a5, v15);
  icu::MeasureUnitImpl::copy(a3, a5, v11);
  sub_1954100B8(a1 + 8, v15, v11);
  if (v14)
  {
    free(v13);
  }

  sub_195342340(&v12);
  if (v18)
  {
    free(v17);
  }

  sub_195342340(&v16);
  icu::units::UnitsConverter::init(a1, a4, a5);
  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void icu::units::UnitsConverter::init(uint64_t a1, int *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = a1 + 16;
    if (*(a1 + 16) == 2)
    {
      goto LABEL_4;
    }

    v5 = (a1 + 176);
    if (*(a1 + 176) == 2)
    {
      goto LABEL_4;
    }

    Convertibility = icu::units::extractConvertibility((a1 + 16), v5, a2, a3);
    if (*a3 <= 0)
    {
      if (Convertibility == 2)
      {
LABEL_4:
        *a3 = U_ARGUMENT_TYPE_MISMATCH;
        return;
      }

      sub_19540F418(v4 - 8, v4, v5, Convertibility, a2, a3);
    }
  }
}

uint64_t icu::units::UnitsConverter::UnitsConverter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  icu::MeasureUnitImpl::forIdentifier(a2, a3, a6, &v16);
  icu::MeasureUnitImpl::forIdentifier(a4, a5, a6, &v12);
  sub_1954100B8(a1 + 8, &v16, &v12);
  if (v15)
  {
    free(v14);
  }

  sub_195342340(&v13);
  if (v18)
  {
    free(v17[11]);
  }

  sub_195342340(v17);
  if (*a6 <= 0)
  {
    v16 = 0;
    memset(&v17[1], 0, 72);
    v17[0] = &v17[2];
    LODWORD(v17[1]) = 8;
    icu::units::getAllConversionRates(&v16, a6);
    icu::units::UnitsConverter::init(a1, &v16, a6);
    sub_19537B4F0(&v16);
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19540F418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, UErrorCode *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  sub_19540F8B0(a2, a5, a6, &v37);
  icu::CharString::operator=(a1 + 328, &v37);
  if (BYTE4(v37.f64[1]))
  {
    free(*&v37.f64[0]);
  }

  sub_19540F8B0(a3, a5, a6, &v37);
  icu::CharString::operator=(a1 + 392, &v37);
  if (BYTE4(v37.f64[1]))
  {
    free(*&v37.f64[0]);
  }

  v12 = *(a1 + 384);
  v13 = *(a1 + 448);
  if (v12)
  {
    if (v13)
    {
      goto LABEL_29;
    }

    goto LABEL_9;
  }

  if (v13)
  {
LABEL_9:
    if (a4 == 1)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v37 = _Q0;
      v38 = 0;
      *v39 = 0;
      v40 = 0u;
      memset(v41, 0, sizeof(v41));
      if (v12)
      {
        v19 = a3;
      }

      else
      {
        v19 = a2;
      }

      *&v39[4] = 0uLL;
      sub_19540F9C0(v19, a5, a6, &v37);
      icu::units::Factor::substituteConstants(&v37);
      *(a1 + 456) = v37;
    }

    else
    {
      *a6 = U_ARGUMENT_TYPE_MISMATCH;
    }

    goto LABEL_29;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v37 = _Q0;
  v38 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  sub_19540F9C0(a2, a5, a6, &v31);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  sub_19540F9C0(a3, a5, a6, &v25);
  icu::units::Factor::multiplyBy(&v37, &v31);
  if (a4 == 1)
  {
    icu::units::Factor::divideBy(v37.f64, v25.f64);
  }

  else
  {
    icu::units::Factor::multiplyBy(&v37, &v25);
  }

  icu::units::Factor::substituteConstants(&v37);
  *(a1 + 456) = v37;
  if (*a6 <= 0 && !*a2)
  {
    if (!*(a2 + 8) || (v21 = **(a2 + 16), *(v21 + 8) == 1) && *(v21 + 4) == 30)
    {
      if (!*a3)
      {
        if (!*(a3 + 8) || (v22 = **(a3 + 16), *(v22 + 8) == 1) && *(v22 + 4) == 30)
        {
          v23 = *&v26 * v25.f64[1] / v25.f64[0];
          *(a1 + 472) = *&v32 * v31.f64[1] / v31.f64[0];
          *(a1 + 480) = v23;
        }
      }
    }
  }

  *(a1 + 488) = a4 == 0;
LABEL_29:
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t icu::units::UnitsConverter::compareTwoUnits(icu::CharString *a1, icu::CharString *a2, int *a3, UErrorCode *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  if (*a1 == 2 || *a2 == 2)
  {
    goto LABEL_8;
  }

  Convertibility = icu::units::extractConvertibility(a1, a2, a3, a4);
  if (*a4 > 0)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_9;
  }

  if ((Convertibility & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    *a4 = U_ARGUMENT_TYPE_MISMATCH;
    goto LABEL_9;
  }

  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  sub_19540F8B0(a1, a3, a4, v23);
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  sub_19540F8B0(a2, a3, a4, v19);
  if (DWORD2(v24))
  {
    if (DWORD2(v22))
    {
      *&v17[0] = *&v23[0];
      *(&v17[0] + 1) = DWORD2(v24);
      v4 = icu::StringPiece::compare(v17, v19[0], SDWORD2(v22));
    }

    else
    {
      v4 = 1;
    }
  }

  else if (DWORD2(v22))
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_19540F9C0(a1, a3, a4, v17);
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_19540F9C0(a2, a3, a4, v15);
    icu::units::Factor::substituteConstants(v17);
    icu::units::Factor::substituteConstants(v15);
    v13 = *v17 / *(v17 + 1) - *v15 / *(v15 + 1);
    if (v13 >= 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (v13 > 0.0)
    {
      v4 = 1;
    }

    else
    {
      v4 = v14;
    }
  }

  if (BYTE4(v19[1]))
  {
    free(v19[0]);
  }

  if (BYTE12(v23[0]))
  {
    free(*&v23[0]);
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

icu::CharString *sub_19540F8B0@<X0>(icu::CharString *result@<X0>, int *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 <= 0 && *result == 0)
  {
    v8 = **(result + 2);
    if (!*(result + 2) || (*(v8 + 2) == 1 ? (v9 = *(v8 + 1) == 30) : (v9 = 0), v9))
    {
      v10 = *v8;
      v15 = *(v8 + 2);
      v14 = v10;
      SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(&v14);
      icu::StringPiece::StringPiece(&v12, SimpleUnitID);
      result = icu::units::ConversionRates::extractConversionInfo(a2, v12, v13, a3);
      if (*a3 < 1)
      {
        if (result)
        {
          *(a4 + 8) = 0u;
          *(a4 + 56) = 0;
          *(a4 + 40) = 0u;
          *(a4 + 24) = 0u;
          *a4 = a4 + 13;
          *(a4 + 8) = 40;
          *(a4 + 56) = 0;
          return icu::CharString::copyFrom(a4, result + 33, a3);
        }

        *a3 = U_INTERNAL_PROGRAM_ERROR;
      }
    }
  }

  *a4 = a4 + 13;
  *(a4 + 8) = 40;
  *(a4 + 12) = 0;
  *(a4 + 56) = 0;
  return result;
}

void sub_19540F9C0(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  v32 = _Q0;
  *a4 = _Q0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 44) = 0u;
  *(a4 + 60) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 28) = 0u;
  v30 = *(a1 + 8);
  if (v30 >= 1)
  {
    v11 = 0;
    while (1)
    {
      v43 = 0;
      v42 = 0;
      v12 = *(*(a1 + 16) + 8 * v11);
      v13 = *(v12 + 2);
      v42 = *v12;
      v43 = v13;
      SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(&v42);
      icu::StringPiece::StringPiece(&v35, SimpleUnitID);
      ConversionInfo = icu::units::ConversionRates::extractConversionInfo(a2, v35, v36, a3);
      if (*a3 > 0)
      {
        break;
      }

      v16 = ConversionInfo;
      if (!ConversionInfo)
      {
        *a3 = 5;
        return;
      }

      v17 = *(ConversionInfo + 136);
      v18 = *(ConversionInfo + 192);
      v44 = v17;
      v45 = v18;
      v37 = v32;
      v38 = 0.0;
      memset(v39, 0, sizeof(v39));
      v40 = 0u;
      memset(v41, 0, sizeof(v41));
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = v17[v19];
          if (v22 == 47 || v22 == 42)
          {
            icu::StringPiece::StringPiece(&v46, &v44, v20, v19 - v20);
            sub_195410130(&v37, v46, v47, v21, a3);
            v20 = v19 + 1;
          }

          else if (v18 - 1 == v19)
          {
            icu::StringPiece::StringPiece(&v46, &v44, v20, v18);
            v4 = v47 | v4 & 0xFFFFFFFF00000000;
            sub_195410130(&v37, v46, v4, v21, a3);
          }

          if (v17[v19] == 47)
          {
            v21 = -1;
          }

          ++v19;
        }

        while (v18 != v19);
      }

      v23 = *(v16 + 200);
      v24 = *(v16 + 256);
      v44 = v23;
      v45 = v24;
      if (v24 < 1)
      {
LABEL_20:
        sub_19540E9E4(v23, v24, a3);
      }

      else
      {
        v25 = 0;
        while (v23[v25] != 47)
        {
          if (v24 == ++v25)
          {
            goto LABEL_20;
          }
        }

        icu::StringPiece::StringPiece(&v46, &v44, 0, v25);
        sub_19540E9E4(v46, v47, a3);
        v28 = v27;
        icu::StringPiece::StringPiece(&v46, &v44, v25 + 1, 0x7FFFFFFF);
        sub_19540E9E4(v46, v47, a3);
        v26 = v28 / v29;
      }

      v38 = v26;
      if (*a3 <= 0)
      {
        icu::units::Factor::applyPrefix(&v37, SHIDWORD(v42), v26);
        icu::units::Factor::power(&v37, v43);
        icu::units::Factor::multiplyBy(a4, &v37);
        if (++v11 != v30)
        {
          continue;
        }
      }

      return;
    }
  }
}

double icu::units::UnitsConverter::scaleToBase(icu::units::UnitsConverter *this, double a2, double *a3, int a4)
{
  if (a2 < 0.0)
  {
    a2 = -a2;
  }

  v4 = a2 + 0.5;
  if (v4 > a4)
  {
    v4 = a4;
  }

  return (a3[v4] + a3[v4 + 1]) * 0.5;
}

double icu::units::UnitsConverter::baseToScale(icu::units::UnitsConverter *this, double a2, double *a3, unsigned int a4)
{
  if (a2 < 0.0)
  {
    a2 = -a2;
  }

  if (a3[a4] > a2)
  {
    if ((a4 & 0x80000000) != 0)
    {
      a4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = a4 + 1;
      do
      {
        a4 = (v4 + v5) >> 1;
        v6 = a4;
        if (a3[a4] <= a2)
        {
          v4 = a4 + 1;
          v6 = v5;
          if (a3[a4 + 1] >= a2)
          {
            break;
          }
        }

        v5 = v6;
      }

      while (v4 < v6);
    }
  }

  return a4;
}

double icu::units::UnitsConverter::convert(icu::units::UnitsConverter *this, double a2)
{
  v2 = a2;
  if (*(this + 98))
  {
    icu::StringPiece::StringPiece(&v12, "beaufort");
    if (sub_19525C624(this + 336, v12, v13))
    {
      v4 = -v2;
      if (v2 >= 0.0)
      {
        v4 = v2;
      }

      v5 = v4 + 0.5;
      if (v5 > 17.0)
      {
        v5 = 17.0;
      }

      v2 = (dbl_195493DD8[v5] + dbl_195493DD8[v5 + 1]) * 0.5;
    }

    goto LABEL_10;
  }

  if (*(this + 114))
  {
    v2 = *(this + 58) * a2 / *(this + 59);
LABEL_10:
    if (!*(this + 114))
    {
      return v2 * *(this + 59) / *(this + 58);
    }

    icu::StringPiece::StringPiece(&v12, "beaufort");
    if (sub_19525C624(this + 400, v12, v13))
    {
      v6 = -v2;
      if (v2 >= 0.0)
      {
        v6 = v2;
      }

      v2 = 17.0;
      if (v6 < 55.8)
      {
        v7 = 0;
        v8 = 18;
        do
        {
          v9 = (v7 + v8) >> 1;
          v10 = v9;
          if (dbl_195493DD8[v9] <= v6)
          {
            v7 = v9 + 1;
            v10 = v8;
            if (dbl_195493DD8[v9 + 1] >= v6)
            {
              break;
            }
          }

          v8 = v10;
        }

        while (v7 < v10);
        return v9;
      }
    }

    return v2;
  }

  v2 = (*(this + 60) + a2) * (*(this + 58) / *(this + 59)) - *(this + 61);
  if (*(this + 496) != 1)
  {
    return v2;
  }

  if (v2 != 0.0)
  {
    return 1.0 / v2;
  }

  return uprv_getInfinity();
}

double icu::units::UnitsConverter::convertInverse(icu::units::UnitsConverter *this, double a2)
{
  v2 = a2;
  v4 = *(this + 114);
  if (*(this + 98))
  {
    if (!v4)
    {
      v2 = *(this + 58) * a2 / *(this + 59);
LABEL_11:
      if (!*(this + 98))
      {
        return v2 * *(this + 59) / *(this + 58);
      }

      icu::StringPiece::StringPiece(&v13, "beaufort");
      if (sub_19525C624(this + 336, v13, v14))
      {
        v7 = -v2;
        if (v2 >= 0.0)
        {
          v7 = v2;
        }

        v2 = 17.0;
        if (v7 < 55.8)
        {
          v8 = 0;
          v9 = 18;
          do
          {
            v10 = (v8 + v9) >> 1;
            v11 = v10;
            if (dbl_195493DD8[v10] <= v7)
            {
              v8 = v10 + 1;
              v11 = v9;
              if (dbl_195493DD8[v10 + 1] >= v7)
              {
                break;
              }
            }

            v9 = v11;
          }

          while (v8 < v11);
          return v10;
        }
      }

      return v2;
    }

LABEL_5:
    icu::StringPiece::StringPiece(&v13, "beaufort");
    if (sub_19525C624(this + 400, v13, v14))
    {
      v5 = -v2;
      if (v2 >= 0.0)
      {
        v5 = v2;
      }

      v6 = v5 + 0.5;
      if (v6 > 17.0)
      {
        v6 = 17.0;
      }

      v2 = (dbl_195493DD8[v6] + dbl_195493DD8[v6 + 1]) * 0.5;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  if (*(this + 496) != 1)
  {
    return (v2 + *(this + 61)) * (*(this + 59) / *(this + 58)) - *(this + 60);
  }

  if (a2 != 0.0)
  {
    v2 = 1.0 / a2;
    return (v2 + *(this + 61)) * (*(this + 59) / *(this + 58)) - *(this + 60);
  }

  return uprv_getInfinity();
}

double icu::units::UnitsConverter::getConversionInfo@<D0>(icu::units::UnitsConverter *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  result = *(this + 58) / *(this + 59);
  v3 = -(*(this + 61) - *(this + 60) * result);
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(this + 496);
  return result;
}

uint64_t sub_1954100B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1953422B0(a1 + 8, a2);
  sub_1953422B0(a1 + 168, a3);
  *(a1 + 328) = a1 + 341;
  *(a1 + 336) = 40;
  *(a1 + 340) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 405;
  *(a1 + 400) = 40;
  *(a1 + 404) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0x3FF0000000000000;
  *(a1 + 464) = 0x3FF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  return a1;
}

void sub_195410130(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, _DWORD *a5)
{
  v7 = a2;
  v13[0] = a2;
  v13[1] = a3;
  if (a3 <= 0)
  {
    v10 = a3;
LABEL_7:
    v11 = 1;
  }

  else
  {
    v9 = 0;
    v10 = a3 & 0x7FFFFFFF;
    while (a2[v9] != 94)
    {
      if (v10 == ++v9)
      {
        goto LABEL_7;
      }
    }

    icu::StringPiece::StringPiece(&v14, v13, 0, v9);
    v7 = v14;
    v10 = v15;
    icu::StringPiece::StringPiece(&v14, v13, v9 + 1, 0x7FFFFFFF);
    sub_19540E9E4(v14, v15, a5);
    v11 = v12;
  }

  icu::units::addSingleFactorConstant(v7, v10, v11, a4, a1, a5);
}

uint64_t icu::units::UnitPreferenceMetadata::UnitPreferenceMetadata(uint64_t a1, const char *a2, int a3, const char *a4, int a5, const char *a6, int a7, int a8, int a9, UErrorCode *a10)
{
  *(a1 + 8) = a1 + 21;
  *(a1 + 16) = 40;
  *(a1 + 20) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 85;
  *(a1 + 80) = 40;
  *(a1 + 84) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 149;
  *(a1 + 144) = 40;
  *(a1 + 148) = 0;
  *(a1 + 192) = 0;
  icu::CharString::append((a1 + 8), a2, a3, a10);
  icu::CharString::append((a1 + 72), a4, a5, a10);
  icu::CharString::append((a1 + 136), a6, a7, a10);
  *(a1 + 200) = a8;
  *(a1 + 204) = a9;
  return a1;
}

{
  return icu::units::UnitPreferenceMetadata::UnitPreferenceMetadata(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t icu::units::UnitPreferenceMetadata::compareTo(const char **a1, const char **a2)
{
  result = strcmp(a1[1], a2[1]);
  if (!result)
  {
    result = strcmp(a1[9], a2[9]);
    if (!result)
    {
      v5 = a1[17];
      v6 = a2[17];

      return strcmp(v5, v6);
    }
  }

  return result;
}

uint64_t icu::units::UnitPreferenceMetadata::compareTo(const char **a1, const char **a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  result = strcmp(a1[1], a2[1]);
  if (!result)
  {
    *a3 = 1;
    result = strcmp(a1[9], a2[9]);
    if (!result)
    {
      *a4 = 1;
      result = strcmp(a1[17], a2[17]);
      if (!result)
      {
        *a5 = 1;
      }
    }
  }

  return result;
}

void icu::units::getAllConversionRates(uint64_t a1, UErrorCode *a2)
{
  v4 = ures_openDirect(0, "units", a2);
  v5[0] = &unk_1F0944380;
  v5[1] = a1;
  ures_getAllItemsWithFallback(v4, "convertUnits", v5, a2);
  icu::ResourceSink::~ResourceSink(v5);
  if (v4)
  {
    ures_close(v4);
  }
}

uint64_t icu::units::ConversionRates::extractConversionInfo(int *a1, const void *a2, int a3, _DWORD *a4)
{
  v5 = *a1;
  if (v5)
  {
    v9 = 0;
    while (!sub_19525C624(*(*(a1 + 1) + 8 * v9) + 8, a2, a3))
    {
      if (v5 == ++v9)
      {
        goto LABEL_5;
      }
    }

    return *(*(a1 + 1) + 8 * v9);
  }

  else
  {
LABEL_5:
    result = 0;
    *a4 = 5;
  }

  return result;
}

icu::units::UnitPreferences *icu::units::UnitPreferences::UnitPreferences(icu::units::UnitPreferences *this, UErrorCode *a2)
{
  *this = 0;
  *(this + 1) = this + 24;
  *(this + 4) = 8;
  *(this + 20) = 0;
  *(this + 22) = 0;
  v4 = this + 88;
  *(this + 12) = this + 112;
  *(this + 26) = 8;
  *(this + 108) = 0;
  v5 = ures_openDirect(0, "units", a2);
  v7[0] = &unk_1F09443C8;
  v7[1] = v4;
  v7[2] = this;
  ures_getAllItemsWithFallback(v5, "unitPreferenceData", v7, a2);
  icu::ResourceSink::~ResourceSink(v7);
  if (v5)
  {
    ures_close(v5);
  }

  return this;
}

void sub_1954105E4(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  if (*a4 < 1)
  {
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 8) = 0u;
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    v10[0] = 0;
    v10[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v10, a5);
    v10[0] = &unk_1F0931548;
    icu::Locale::getKeywordValue(a1, a2, a3, v10, a4);
    icu::CharStringByteSink::~CharStringByteSink(v10);
    if (*a4 <= 0 && !*(a5 + 56))
    {
      *a4 = U_MISSING_RESOURCE_ERROR;
    }
  }

  else
  {
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    *(a5 + 12) = 0;
    *(a5 + 56) = 0;
  }
}

void icu::units::UnitPreferences::getPreferencesFor(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, UErrorCode *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a8;
  v74 = *MEMORY[0x1E69E9840];
  v49 = a2;
  v50 = a3;
  v47 = a4;
  v48 = a5;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0;
  *(a8 + 8) = a8 + 24;
  *(a8 + 16) = 8;
  v46 = 0;
  icu::StringPiece::StringPiece(__s2, "temperature");
  if (icu::StringPiece::compare(&v49, __s2[0], __s2[1]))
  {
    goto LABEL_28;
  }

  v66 = 0u;
  v67 = 0u;
  __s1 = 0u;
  v65 = 0u;
  icu::StringPiece::StringPiece(__s2, "mu");
  sub_1954105E4(a6, __s2[0], __s2[1], &v46, &__s1);
  if (v46 > 0)
  {
    goto LABEL_3;
  }

  icu::StringPiece::StringPiece(__s2, "fahrenhe");
  if (DWORD2(v67) == LODWORD(__s2[1]) && (!LODWORD(__s2[1]) || !memcmp(__s1, __s2[0], SLODWORD(__s2[1]))))
  {
    icu::StringPiece::StringPiece(v72, "fahrenheit");
    __s2[0] = &__s2[1] + 5;
    LODWORD(__s2[1]) = 40;
    WORD2(__s2[1]) = 0;
    DWORD2(v57) = 0;
    icu::CharString::append(__s2, v72[0], v72[1], a7);
    icu::CharString::operator=(&__s1, __s2);
    if (BYTE4(__s2[1]))
    {
      free(__s2[0]);
    }
  }

  if ((icu::StringPiece::StringPiece(__s2, "celsius"), v14 = __s2[1], DWORD2(v67) == LODWORD(__s2[1])) && (!LODWORD(__s2[1]) || !memcmp(__s1, __s2[0], SLODWORD(__s2[1]))) || (icu::StringPiece::StringPiece(__s2, "fahrenheit"), v14 = __s2[1], DWORD2(v67) == LODWORD(__s2[1])) && (!LODWORD(__s2[1]) || !memcmp(__s1, __s2[0], SLODWORD(__s2[1]))) || (icu::StringPiece::StringPiece(__s2, "kelvin"), v14 = __s2[1], DWORD2(v67) == LODWORD(__s2[1])) && (!LODWORD(__s2[1]) || !memcmp(__s1, __s2[0], SLODWORD(__s2[1]))))
  {
    __s2[0] = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    *&v58 = 0;
    v55 = 0u;
    v56 = 0u;
    __s2[1] = &v55 + 5;
    LODWORD(v55) = 40;
    *(&v58 + 1) = 0x3FF0000000000000;
    *&v59 = &unk_1F0935D00;
    WORD4(v59) = 2;
    icu::CharString::append(&__s2[1], __s1, v14, a7);
    v15 = *a7;
    if (v15 <= 0)
    {
      v16 = sub_1954123C0(v11);
      v15 = *a7;
      if (v15 <= 0 && !v16)
      {
        v15 = 7;
        *a7 = U_MEMORY_ALLOCATION_ERROR;
      }
    }

    icu::UnicodeString::~UnicodeString(v15, &v59);
    if (BYTE4(v55))
    {
      free(__s2[1]);
    }

    v13 = 0;
    v12 = 1;
  }

  else
  {
LABEL_3:
    v12 = 0;
    v13 = 1;
  }

  if (BYTE12(__s1))
  {
    free(__s1);
  }

  if (v13)
  {
LABEL_28:
    v73 = 0u;
    memset(v72, 0, sizeof(v72));
    ulocimp_getRegionForSupplementalData(*(a6 + 40), a7, 1, v72);
    v45 = 0;
    v71 = 0u;
    memset(v70, 0, sizeof(v70));
    icu::StringPiece::StringPiece(__s2, "measure");
    sub_1954105E4(a6, __s2[0], __s2[1], &v45, v70);
    if (v45 >= 1)
    {
      v45 = 0;
      icu::StringPiece::StringPiece(&__s1, "ms");
      sub_1954105E4(a6, __s1, SDWORD2(__s1), &v45, __s2);
      icu::CharString::operator=(v70, __s2);
      if (BYTE4(__s2[1]))
      {
        free(__s2[0]);
      }

      if (v45 > 0)
      {
        goto LABEL_41;
      }
    }

    if ((icu::StringPiece::StringPiece(__s2, "metric"), DWORD2(v71) == LODWORD(__s2[1])) && (!LODWORD(__s2[1]) || !memcmp(v70[0], __s2[0], SLODWORD(__s2[1]))) || (icu::StringPiece::StringPiece(__s2, "ussystem"), DWORD2(v71) == LODWORD(__s2[1])) && (!LODWORD(__s2[1]) || !memcmp(v70[0], __s2[0], SLODWORD(__s2[1]))) || (icu::StringPiece::StringPiece(__s2, "uksystem"), DWORD2(v71) == LODWORD(__s2[1])) && (!LODWORD(__s2[1]) || !memcmp(v70[0], __s2[0], SLODWORD(__s2[1]))))
    {
      v17 = 1;
    }

    else
    {
LABEL_41:
      v17 = 0;
    }

    v18 = sub_195410FB4(a1, v49, v50, v47, v48, v72[0], SDWORD2(v73), a7);
    if (*a7 > 0)
    {
      goto LABEL_98;
    }

    v19 = *(*(a1 + 8) + 8 * v18);
    if (v17)
    {
      icu::StringPiece::StringPiece(__s2, "uksystem");
      v41 = v19;
      if (DWORD2(v71) == LODWORD(__s2[1]) && (!LODWORD(__s2[1]) || !memcmp(v70[0], __s2[0], SLODWORD(__s2[1]))) && (icu::StringPiece::StringPiece(__s2, "mass"), icu::operator==(&v49, __s2)) && (icu::StringPiece::StringPiece(&__s1, "person"), icu::operator==(&v47, &__s1)))
      {
LABEL_74:
        DWORD2(v73) = 0;
        *v72[0] = 0;
        icu::StringPiece::StringPiece(__s2, "ussystem");
        if (DWORD2(v71) == LODWORD(__s2[1]) && (!LODWORD(__s2[1]) || !memcmp(v70[0], __s2[0], SLODWORD(__s2[1]))))
        {
          v32 = "US";
        }

        else
        {
          icu::StringPiece::StringPiece(__s2, "uksystem");
          if (DWORD2(v71) == LODWORD(__s2[1]) && (!LODWORD(__s2[1]) || !memcmp(v70[0], __s2[0], SLODWORD(__s2[1]))))
          {
            v32 = "GB";
          }

          else
          {
            v32 = "001";
          }
        }

        icu::StringPiece::StringPiece(__s2, v32);
        icu::CharString::append(v72, __s2[0], __s2[1], a7);
        v33 = sub_195410FB4(a1, v49, v50, v47, v48, v72[0], SDWORD2(v73), a7);
        if (*a7 > 0)
        {
LABEL_98:
          if (BYTE4(v70[1]))
          {
            free(v70[0]);
          }

          if (BYTE4(v72[1]))
          {
            free(v72[0]);
          }

          goto LABEL_102;
        }

        v19 = *(*(a1 + 8) + 8 * v33);
      }

      else
      {
        v42 = a1;
        v40 = v11;
        *&__s1 = 0;
        v65 = 0u;
        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        *(&__s1 + 1) = &v65 + 8;
        LODWORD(v65) = 8;
        icu::units::getAllConversionRates(&__s1, a7);
        v20 = 0;
        while (1)
        {
          v19 = v41;
          if (v20 >= *(v41 + 204))
          {
            break;
          }

          v21 = *(*(v42 + 96) + 8 * (*(v41 + 200) + v20));
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          *__s2 = 0u;
          icu::StringPiece::StringPiece(v51, *(v21 + 8));
          icu::MeasureUnitImpl::forIdentifier(v51[0], v51[1], a7, __s2);
          if (SLODWORD(__s2[1]) < 1)
          {
            v30 = 1;
          }

          else
          {
            v22 = 0;
            do
            {
              SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(*(v55 + 8 * v22));
              icu::StringPiece::StringPiece(v51, SimpleUnitID);
              v24 = v51[0];
              v25 = v51[1];
              if (sub_19525C624(**(&__s1 + 1) + 8, v51[0], v51[1]))
              {
                v26 = 0;
              }

              else
              {
                v27 = 1;
                  ;
                }

                v26 = v27 - 1;
              }

              v29 = *(*(&__s1 + 1) + 8 * v26);
              v53 = 0;
              memset(&v51[1], 0, 48);
              v51[0] = &v51[1] + 5;
              LODWORD(v51[1]) = 40;
              v52 = 0;
              icu::CharString::append(v51, *(v29 + 328), *(v29 + 384), a7);
              icu::StringPiece::StringPiece(&v43, "metric_adjacent");
              if (icu::CharString::contains(v51, v43, v44))
              {
                v30 = 1;
              }

              else
              {
                icu::StringPiece::StringPiece(&v43, v70[0]);
                v30 = icu::CharString::contains(v51, v43, v44);
              }

              if (BYTE4(v51[1]))
              {
                free(v51[0]);
              }
            }

            while (++v22 < SLODWORD(__s2[1]) && v30);
          }

          if (BYTE12(v60))
          {
            free(v60);
          }

          sub_195342340(&__s2[1]);
          ++v20;
          if (!v30)
          {
            sub_19537B4F0(&__s1);
            v11 = v40;
            a1 = v42;
            goto LABEL_74;
          }
        }

        sub_19537B4F0(&__s1);
        v11 = v40;
        a1 = v42;
      }
    }

    if (*(v19 + 204) >= 1)
    {
      v34 = 0;
      v35 = *a7;
      do
      {
        if (v35 <= U_ZERO_ERROR)
        {
          v36 = *(*(a1 + 96) + 8 * (v34 + *(v19 + 200)));
          v37 = sub_1954123C0(v11);
          v35 = *a7;
          if (*a7 <= 0 && v37 == 0)
          {
            v35 = U_MEMORY_ALLOCATION_ERROR;
            *a7 = U_MEMORY_ALLOCATION_ERROR;
          }
        }

        ++v34;
      }

      while (v34 < *(v19 + 204));
    }

    goto LABEL_98;
  }

  if ((v12 & 1) == 0)
  {
    sub_1953FD100(v11);
  }

LABEL_102:
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195410FB4(uint64_t a1, const char *a2, int a3, const char *a4, int a5, const char *a6, int a7, UErrorCode *a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = 0xFFFFFFFFLL;
  if (*a8 > 0)
  {
    goto LABEL_26;
  }

  v21 = 0;
  v20 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *__s1 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  icu::units::UnitPreferenceMetadata::UnitPreferenceMetadata(v22, a2, a3, a4, a5, a6, a7, -1, -1, a8);
  v11 = sub_195412304(a1, v22, &v21 + 1, &v21, &v20, a8);
  if (*a8 <= 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
LABEL_4:
      v8 = v11;
      goto LABEL_20;
    }

    if (HIBYTE(v21) == 1)
    {
      while ((v21 & 1) == 0)
      {
        IndexOf = icu::CharString::lastIndexOf(&__s1[1], 0x2Du);
        if (IndexOf < 1)
        {
          if (!strcmp(__s1[1], "default"))
          {
            goto LABEL_16;
          }

          v13 = icu::CharString::truncate(&__s1[1], 0);
          icu::StringPiece::StringPiece(&v18, "default");
          icu::CharString::append(v13, v18, v19, a8);
        }

        else
        {
          icu::CharString::truncate(&__s1[1], IndexOf);
        }

        v11 = sub_195412304(a1, v22, &v21 + 1, &v21, &v20, a8);
        if (*a8 >= 1)
        {
          goto LABEL_19;
        }
      }

      v8 = v11;
      if (v20)
      {
        goto LABEL_20;
      }

      if (strcmp(*(&v30 + 1), "001"))
      {
        v14 = icu::CharString::truncate(&v30 + 8, 0);
        icu::StringPiece::StringPiece(&v18, "001");
        icu::CharString::append(v14, v18, v19, a8);
        v11 = sub_195412304(a1, v22, &v21 + 1, &v21, &v20, a8);
        if (v20)
        {
          goto LABEL_4;
        }
      }

LABEL_16:
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *a8 = v15;
LABEL_19:
    v8 = 0xFFFFFFFFLL;
  }

LABEL_20:
  if (BYTE4(v31))
  {
    free(*(&v30 + 1));
  }

  if (BYTE4(v27))
  {
    free(__s1[1]);
  }

  if (BYTE4(v23))
  {
    free(v22[1]);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_195411218(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195411250(uint64_t result, char *__s1, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v60[8] = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v7 = result;
    result = strcmp(__s1, "convertUnits");
    if (result)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_4;
    }

    v26 = v7;
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    (*(*a3 + 88))(v31, a3, a5);
    __s = 0;
    result = icu::ResourceTable::getKeyAndValue(v31, 0, &__s, a3);
    if (!result)
    {
      goto LABEL_4;
    }

    v9 = 0;
    while (1)
    {
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      (*(*a3 + 88))(v28, a3, a5);
      __s1a = 0;
      v59 = 0;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = &unk_1F0935D00;
      LOWORD(v56) = 2;
      icu::UnicodeString::setToBogus(&v55);
      v54 = 0;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = &unk_1F0935D00;
      LOWORD(v51) = 2;
      icu::UnicodeString::setToBogus(&v50);
      v49 = 0;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = &unk_1F0935D00;
      LOWORD(v46) = 2;
      icu::UnicodeString::setToBogus(&v45);
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = &unk_1F0935D00;
      LOWORD(v41) = 2;
      icu::UnicodeString::setToBogus(&v40);
      v39 = 0;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = &unk_1F0935D00;
      LOWORD(v36) = 2;
      icu::UnicodeString::setToBogus(&v35);
      if (icu::ResourceTable::getKeyAndValue(v28, 0, &__s1a, a3))
      {
        break;
      }

LABEL_21:
      v15 = *a5;
      if (v15 < 1)
      {
        v15 = v56;
        if (v56 & 1) != 0 || (v51 & 1) != 0 && (v15 = v41, (v41))
        {
          v16 = 0;
          *a5 = U_MISSING_RESOURCE_ERROR;
        }

        else
        {
          v17 = sub_195411934(*(v26 + 8));
          if (v17)
          {
            v18 = v17;
            icu::StringPiece::StringPiece(v60, __s);
            icu::CharString::append((v18 + 2), v60[0], v60[1], a5);
            icu::CharString::appendInvariantChars((v18 + 18), &v55, a5);
            if ((v51 & 1) == 0)
            {
              icu::CharString::appendInvariantChars((v18 + 34), &v50, a5);
              memset(&v60[1], 0, 56);
              v60[0] = &v60[1] + 5;
              LODWORD(v60[1]) = 40;
              v19 = v18[48];
              if (v19 >= 1)
              {
                for (i = 0; i < v19; ++i)
                {
                  v21 = *(*(v18 + 17) + i);
                  if (v21 != 32)
                  {
                    icu::CharString::append(v60, v21, a5);
                    v19 = v18[48];
                  }
                }
              }

              icu::CharString::operator=((v18 + 34), v60);
              if (BYTE4(v60[1]))
              {
                free(v60[0]);
              }
            }

            if ((v46 & 1) == 0)
            {
              icu::CharString::appendInvariantChars((v18 + 50), &v45, a5);
            }

            if ((v41 & 1) == 0)
            {
              icu::CharString::appendInvariantChars((v18 + 66), &v40, a5);
            }

            icu::CharString::appendInvariantChars((v18 + 82), &v35, a5);
            v16 = 1;
          }

          else
          {
            v16 = 0;
            v15 = 7;
            *a5 = U_MEMORY_ALLOCATION_ERROR;
          }
        }
      }

      else
      {
        v16 = 0;
      }

      icu::UnicodeString::~UnicodeString(v15, &v35);
      icu::UnicodeString::~UnicodeString(v22, &v40);
      icu::UnicodeString::~UnicodeString(v23, &v45);
      icu::UnicodeString::~UnicodeString(v24, &v50);
      result = icu::UnicodeString::~UnicodeString(v25, &v55);
      if (v16)
      {
        result = icu::ResourceTable::getKeyAndValue(v31, ++v9, &__s, a3);
        if (result)
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    v10 = 1;
    while (1)
    {
      v11 = __s1a;
      if (!strcmp(__s1a, "target"))
      {
        break;
      }

      if (!strcmp(v11, "factor"))
      {
        v34 = 0;
        v33 = (*(*a3 + 32))(a3, &v34, a5);
        icu::UnicodeString::UnicodeString(v60, 1, &v33);
        v12 = &v50;
        goto LABEL_19;
      }

      if (!strcmp(v11, "offset"))
      {
        v34 = 0;
        v33 = (*(*a3 + 32))(a3, &v34, a5);
        icu::UnicodeString::UnicodeString(v60, 1, &v33);
        v12 = &v45;
        goto LABEL_19;
      }

      if (!strcmp(v11, "special"))
      {
        v34 = 0;
        v33 = (*(*a3 + 32))(a3, &v34, a5);
        icu::UnicodeString::UnicodeString(v60, 1, &v33);
        v12 = &v40;
        goto LABEL_19;
      }

      if (!strcmp(v11, "systems"))
      {
        v34 = 0;
        v33 = (*(*a3 + 32))(a3, &v34, a5);
        icu::UnicodeString::UnicodeString(v60, 1, &v33);
        v12 = &v35;
LABEL_19:
        icu::UnicodeString::operator=(v12, v60);
        icu::UnicodeString::~UnicodeString(v13, v60);
      }

      if (!icu::ResourceTable::getKeyAndValue(v28, v10++, &__s1a, a3))
      {
        goto LABEL_21;
      }
    }

    v34 = 0;
    v33 = (*(*a3 + 32))(a3, &v34, a5);
    icu::UnicodeString::UnicodeString(v60, 1, &v33);
    v12 = &v55;
    goto LABEL_19;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_195411934(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

uint64_t sub_195411A28(uint64_t result)
{
  *(result + 8) = result + 21;
  *(result + 16) = 40;
  *(result + 20) = 0;
  *(result + 64) = 0;
  *(result + 72) = result + 85;
  *(result + 80) = 40;
  *(result + 84) = 0;
  *(result + 128) = 0;
  *(result + 136) = result + 149;
  *(result + 144) = 40;
  *(result + 148) = 0;
  *(result + 192) = 0;
  *(result + 200) = result + 213;
  *(result + 208) = 40;
  *(result + 212) = 0;
  *(result + 256) = 0;
  *(result + 264) = result + 277;
  *(result + 272) = 40;
  *(result + 276) = 0;
  *(result + 320) = 0;
  *(result + 328) = result + 341;
  *(result + 336) = 40;
  *(result + 340) = 0;
  *(result + 384) = 0;
  return result;
}

void sub_195411AA8(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195411AE0(uint64_t result, char *__s1, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v46[8] = *MEMORY[0x1E69E9840];
  v43 = __s1;
  if (*a5 <= 0)
  {
    v7 = result;
    result = strcmp(__s1, "unitPreferenceData");
    if (result)
    {
      v8 = 1;
LABEL_4:
      *a5 = v8;
    }

    else
    {
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      (*(*a3 + 88))(v41, a3, a5);
      v40 = 0;
      result = icu::ResourceTable::getKeyAndValue(v41, 0, &v40, a3);
      if (result)
      {
        v22 = 0;
        v25 = v7;
        while (1)
        {
          v39 = 0;
          memset(v38, 0, sizeof(v38));
          (*(*a3 + 88))(v38, a3, a5);
          v37 = 0;
          if (icu::ResourceTable::getKeyAndValue(v38, 0, &v37, a3))
          {
            break;
          }

LABEL_34:
          result = icu::ResourceTable::getKeyAndValue(v41, ++v22, &v40, a3);
          if (!result)
          {
            goto LABEL_5;
          }
        }

        v23 = 0;
        while (1)
        {
          v36 = 0;
          memset(v35, 0, sizeof(v35));
          (*(*a3 + 88))(v35, a3, a5);
          v34 = 0;
          if (icu::ResourceTable::getKeyAndValue(v35, 0, &v34, a3))
          {
            break;
          }

LABEL_33:
          if (!icu::ResourceTable::getKeyAndValue(v38, ++v23, &v37, a3))
          {
            goto LABEL_34;
          }
        }

        v10 = 0;
        while (1)
        {
          v32[0] = 0;
          v32[1] = 0;
          v33 = 0;
          result = (*(*a3 + 80))(v32, a3, a5);
          if (*a5 >= 1)
          {
            break;
          }

          v31 = v33;
          v11 = *(v7 + 16);
          LODWORD(v44[0]) = **(v7 + 8);
          result = sub_195412058(v11);
          if (!result)
          {
            goto LABEL_36;
          }

          if (*a5 > 0)
          {
            break;
          }

          v12 = *(v7 + 16);
          v13 = *v12;
          if (v13 >= 2)
          {
            result = icu::units::UnitPreferenceMetadata::compareTo(*(*(v12 + 1) + 8 * v13 - 16), *(*(v12 + 1) + 8 * v13 - 8));
            if ((result & 0x80000000) == 0)
            {
              v8 = 3;
              goto LABEL_4;
            }
          }

          v24 = v10;
          if (icu::ResourceArray::getValue(v32, 0, a3))
          {
            v14 = 0;
            while (1)
            {
              result = sub_1954121D0(*(v7 + 8));
              if (!result)
              {
                break;
              }

              v15 = result;
              v30 = 0;
              memset(v29, 0, sizeof(v29));
              result = (*(*a3 + 88))(v29, a3, a5);
              if (*a5 > 0)
              {
                goto LABEL_5;
              }

              if (icu::ResourceTable::getKeyAndValue(v29, 0, &v43, a3))
              {
                v16 = 1;
                do
                {
                  v17 = v43;
                  if (!strcmp(v43, "unit"))
                  {
                    LODWORD(v44[0]) = 0;
                    v19 = (*(*a3 + 32))(a3, v44, a5);
                    icu::CharString::appendInvariantChars((v15 + 8), v19, v44[0], a5);
                  }

                  else if (!strcmp(v17, "geq"))
                  {
                    v28 = 0;
                    v20 = (*(*a3 + 32))(a3, &v28, a5);
                    memset(&v46[1], 0, 56);
                    v46[0] = &v46[1] + 5;
                    LODWORD(v46[1]) = 40;
                    icu::CharString::appendInvariantChars(v46, v20, v28, a5);
                    v45 = 0;
                    memset(v44, 0, sizeof(v44));
                    icu::number::impl::DecimalQuantity::DecimalQuantity(v44);
                    icu::StringPiece::StringPiece(&v26, v46[0]);
                    icu::number::impl::DecimalQuantity::setToDecNumber(v44, v26, v27, a5);
                    *(v15 + 72) = icu::number::impl::DecimalQuantity::toDouble(v44);
                    icu::number::impl::DecimalQuantity::~DecimalQuantity(v44);
                    if (BYTE4(v46[1]))
                    {
                      free(v46[0]);
                    }
                  }

                  else if (!strcmp(v17, "skeleton"))
                  {
                    LODWORD(v26) = 0;
                    v46[0] = (*(*a3 + 32))(a3, &v26, a5);
                    icu::UnicodeString::UnicodeString(v44, 1, v46);
                    icu::UnicodeString::operator=((v15 + 80), v44);
                    icu::UnicodeString::~UnicodeString(v18, v44);
                  }
                }

                while (icu::ResourceTable::getKeyAndValue(v29, v16++, &v43, a3));
              }

              ++v14;
              v7 = v25;
              if (!icu::ResourceArray::getValue(v32, v14, a3))
              {
                goto LABEL_32;
              }
            }

LABEL_36:
            v8 = 7;
            goto LABEL_4;
          }

LABEL_32:
          v10 = v24 + 1;
          if (!icu::ResourceTable::getKeyAndValue(v35, v24 + 1, &v34, a3))
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_195412058(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  v5 = v4;
  if (v4)
  {
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(v4, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return v5;
}

void *sub_1954121D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

uint64_t sub_195412304(uint64_t a1, const char **a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, int *a6)
{
  if (*a6 <= 0)
  {
    v12 = *a1;
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    if (v12 >= 1)
    {
      v14 = 0;
      do
      {
        v6 = (v14 + v12) >> 1;
        v15 = icu::units::UnitPreferenceMetadata::compareTo(*(*(a1 + 8) + 8 * v6), a2, a3, a4, a5);
        if (v15 < 0)
        {
          v14 = v6 + 1;
        }

        else
        {
          v12 = (v14 + v12) >> 1;
          if (!v15)
          {
            return v6;
          }
        }
      }

      while (v14 < v12);
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_1954123C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

uint64_t sub_1954124C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a1 + 21;
  *(a1 + 16) = 40;
  *(a1 + 20) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = &unk_1F0935D00;
  *(a1 + 88) = 2;
  v5 = U_ZERO_ERROR;
  icu::CharString::append((a1 + 8), *(a2 + 8), *(a2 + 64), &v5);
  *(a1 + 72) = *(a2 + 72);
  icu::UnicodeString::operator=((a1 + 80), (a2 + 80));
  return a1;
}

void icu::units::UnitsRouter::parseSkeletonToPrecision(const icu::UnicodeString *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v14[7] = *MEMORY[0x1E69E9840];
  if (*a2 < 1)
  {
    v12 = L"precision-increment/";
    icu::UnicodeString::UnicodeString(&v13, 1, &v12);
    v6 = LOWORD(v14[0]);
    if (SLOWORD(v14[0]) >= 0)
    {
      v7 = LOWORD(v14[0]) >> 5;
    }

    else
    {
      v7 = HIDWORD(v14[0]);
    }

    v8 = *(a1 + 4);
    if (v14[0])
    {
      v10 = v8 & 1;
    }

    else if (v8)
    {
      v10 = 0;
    }

    else
    {
      if ((v14[0] & 2) != 0)
      {
        v9 = v14 + 2;
      }

      else
      {
        v9 = v14[2];
      }

      v10 = icu::UnicodeString::doEqualsSubstring(a1, 0, v7, v9, v7 & (v7 >> 31), v7 & ~(v7 >> 31));
    }

    icu::UnicodeString::~UnicodeString(v6, &v13);
    if (v10)
    {
      v13 = 0;
      v14[0] = 0;
      v14[1] = 0;
      icu::StringSegment::StringSegment(&v13, a1, 0);
      icu::StringSegment::adjustOffset(&v13, 20);
      *a3 = 0u;
      *(a3 + 16) = 0u;
      sub_195373418(&v13, a3, a2);
      goto LABEL_16;
    }

    *a2 = U_INVALID_FORMAT_ERROR;
  }

  *a3 = 0;
  *(a3 + 24) = 0;
LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t icu::units::UnitsRouter::UnitsRouter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, UErrorCode *a7)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 8;
  *(a1 + 20) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 8;
  *(a1 + 108) = 0;
  icu::MeasureUnit::forIdentifier(a2, a3, a7, v13);
  icu::units::UnitsRouter::init(a1, v13, a4, a5, a6, a7);
  icu::MeasureUnit::~MeasureUnit(v13);
  return a1;
}

uint64_t icu::units::UnitsRouter::init(uint64_t result, icu::MeasureUnitImpl *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, UErrorCode *a6)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v11 = result;
    v26[0] = 0;
    memset(&v26[2], 0, 72);
    v26[1] = &v26[3];
    LODWORD(v26[2]) = 8;
    icu::units::getAllConversionRates(v26, a6);
    memset(v25, 0, sizeof(v25));
    icu::units::UnitPreferences::UnitPreferences(v25, a6);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    memset(v45, 0, sizeof(v45));
    icu::MeasureUnitImpl::forMeasureUnitMaybeCopy(a2, a6, v45);
    v43 = 0u;
    v44 = 0u;
    *v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    icu::units::extractCompoundBaseUnit(v45, v26, a6, v40);
    v38 = 0u;
    v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    icu::getUnitQuantity(v40, a6, v36);
    if (*a6 <= 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      icu::units::UnitPreferences::getPreferencesFor(v25, v36[0], DWORD2(v39), a4, a5, a3, a6, v23);
      if (SLODWORD(v23[0]) >= 1)
      {
        v12 = 0;
        v13 = 8 * LODWORD(v23[0]) - 8;
        v14 = 0uLL;
        while (1)
        {
          v15 = *(*(&v23[0] + 1) + v12);
          v34 = v14;
          v35 = v14;
          *v32 = v14;
          v33 = v14;
          v31[4] = v14;
          v31[5] = v14;
          v31[2] = v14;
          v31[3] = v14;
          v31[0] = v14;
          v31[1] = v14;
          icu::StringPiece::StringPiece(&v27, *(v15 + 8));
          icu::MeasureUnitImpl::forIdentifier(v27, v28[0], a6, v31);
          if (*a6 > 0)
          {
            break;
          }

          memset(v30, 0, sizeof(v30));
          icu::UnicodeString::UnicodeString(v30, (v15 + 80));
          if (WORD4(v30[0]) >= 0x20u && !icu::UnicodeString::doEqualsSubstring(v30, 0, 19, L"precision-increment", 0, 19))
          {
            *a6 = U_INTERNAL_PROGRAM_ERROR;
            icu::UnicodeString::~UnicodeString(5, v30);
            break;
          }

          icu::MeasureUnitImpl::copy(v31, a6, &v27);
          icu::MeasureUnitImpl::build(&v27, a6, v22);
          if (*a6 <= 0)
          {
            v16 = sub_195412E28(v11);
            if (*a6 <= 0 && !v16)
            {
              *a6 = U_MEMORY_ALLOCATION_ERROR;
            }
          }

          icu::MeasureUnit::~MeasureUnit(v22);
          if (v29)
          {
            free(v28[11]);
          }

          sub_195342340(v28);
          v18 = *a6;
          if (*a6 <= 0)
          {
            v19 = sub_195412F2C(v11 + 88);
            v18 = *a6;
            if (*a6 <= 0 && !v19)
            {
              v18 = U_MEMORY_ALLOCATION_ERROR;
              *a6 = U_MEMORY_ALLOCATION_ERROR;
            }
          }

          icu::UnicodeString::~UnicodeString(v17, v30);
          if (BYTE4(v32[1]))
          {
            free(v32[0]);
          }

          sub_195342340(v31 + 8);
          v14 = 0uLL;
          if (v18 <= U_ZERO_ERROR)
          {
            v20 = v13 == v12;
            v12 += 8;
            if (!v20)
            {
              continue;
            }
          }

          goto LABEL_28;
        }

        if (BYTE4(v32[1]))
        {
          free(v32[0]);
        }

        sub_195342340(v31 + 8);
      }

LABEL_28:
      sub_1953FD100(v23);
    }

    if (BYTE4(v36[1]))
    {
      free(v36[0]);
    }

    if (BYTE4(v41[1]))
    {
      free(v41[0]);
    }

    sub_195342340(v40 + 8);
    if (BYTE12(v46))
    {
      free(v46);
    }

    sub_195342340(v45 + 8);
    sub_1953FD100(&v25[5] + 2);
    sub_1953FD1EC(v25);
    result = sub_19537B4F0(v26);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::units::UnitsRouter::UnitsRouter(uint64_t a1, icu::MeasureUnitImpl *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, UErrorCode *a6)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 8;
  *(a1 + 20) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 8;
  *(a1 + 108) = 0;
  icu::units::UnitsRouter::init(a1, a2, a3, a4, a5, a6);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 8;
  *(a1 + 20) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 8;
  *(a1 + 108) = 0;
  icu::units::UnitsRouter::init(a1, a2, a3, a4, a5, a6);
  return a1;
}

uint64_t icu::units::UnitsRouter::route@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 88);
  if (v9 < 1)
  {
    v14 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v11 = 0;
  v12 = fabs(a5) * 1.0;
  v13 = 8 * v9 - 8;
  do
  {
    v14 = *(*(a1 + 96) + v11);
    v15 = icu::units::ComplexUnitsConverter::greaterThanOrEqual((v14 + 8), v12, *(v14 + 192)) || v13 == v11;
    v11 += 8;
  }

  while (!v15);
  if (a2)
  {
LABEL_11:
    if (!*a2)
    {
      if (*(v14 + 208) < 0)
      {
        v16 = *(v14 + 212);
      }

      else
      {
        v16 = *(v14 + 208) >> 5;
      }

      if (v16 < 1)
      {
        icu::number::Precision::integer(v28);
        icu::number::FractionPrecision::withMinDigits(v28, 2, v29);
        *a2 = *v29;
        *(a2 + 12) = *&v29[12];
      }

      else
      {
        v17 = icu::UnicodeString::UnicodeString(v34, (v14 + 200));
        icu::units::UnitsRouter::parseSkeletonToPrecision(v17, a3, v29);
        *a2 = *v29;
        *(a2 + 12) = *&v29[12];
        icu::UnicodeString::~UnicodeString(v18, v34);
      }
    }
  }

LABEL_18:
  icu::units::ComplexUnitsConverter::convert(v14 + 8, a2, a3, &v23, a5);
  icu::MeasureUnitImpl::copy((v14 + 264), a3, v30);
  *(a4 + 8) = v23;
  v19 = v24;
  *(a4 + 16) = v24;
  v20 = v25;
  *(a4 + 24) = v25;
  *(a4 + 28) = v26;
  if (v19 == v27)
  {
    *(a4 + 16) = a4 + 32;
    memcpy((a4 + 32), v27, 8 * v20);
  }

  else
  {
    v24 = v27;
    v25 = 8;
    v26 = 0;
  }

  v23 = 0;
  sub_1953422B0(a4 + 96, v30);
  if (v33)
  {
    free(v32);
  }

  sub_195342340(&v31);
  result = sub_1951ED7C0(&v23);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_195412E28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_195412F2C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
    v5 = v4;
    if (v4)
    {
      if (v2 >= 1)
      {
        v6 = *(a1 + 16);
        if (v6 >= v2)
        {
          v6 = v2;
        }

        if (v6 >= v3)
        {
          v6 = v3;
        }

        memcpy(v4, *(a1 + 8), 8 * v6);
      }

      if (*(a1 + 20))
      {
        free(*(a1 + 8));
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v3;
      *(a1 + 20) = 1;
LABEL_16:
      operator new();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1954130C8(uint64_t a1, uint64_t a2, icu::MeasureUnitImpl *a3, icu::UnicodeString *a4, uint64_t a5, UErrorCode *a6, double a7)
{
  icu::units::ComplexUnitsConverter::ComplexUnitsConverter(a1 + 8, a2, a3, a5, a6);
  *(a1 + 192) = a7;
  icu::UnicodeString::UnicodeString((a1 + 200), a4);
  icu::MeasureUnitImpl::copy(a3, a6, a1 + 264);
  return a1;
}

uint64_t unum_open(int a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, icu::UnifiedCache *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *a6;
  if (v6 > 0)
  {
    goto LABEL_2;
  }

  if (a1 <= 7)
  {
    if (a1 > 4)
    {
      if (a1 != 5)
      {
        if (a1 != 6)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    v6 = (a1 - 1);
    if (v6 >= 4)
    {
      if (!a1)
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        icu::UnicodeString::UnicodeString(&v20, a2, a3);
        operator new();
      }

      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (a1 > 13)
  {
    if (a1 == 14 || a1 == 15)
    {
      icu::Locale::Locale(v6, v24, a4, 0, 0, 0);
      icu::CompactDecimalFormat::createInstance();
    }

    if (a1 != 16)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v6 = (a1 - 10);
  if (v6 < 4)
  {
LABEL_12:
    icu::Locale::Locale(v6, v24, a4, 0, 0, 0);
    v12 = a1;
    goto LABEL_13;
  }

  if (a1 != 8)
  {
    if (a1 == 9)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      icu::UnicodeString::UnicodeString(&v20, a2, a3);
      operator new();
    }

LABEL_31:
    Instance = 0;
    v14 = 16;
    goto LABEL_32;
  }

  LODWORD(v15) = 0;
  memset(v24, 0, sizeof(v24));
  icu::Locale::Locale(v6, v24, a4, 0, 0, 0);
  if (icu::Locale::getKeywordValue(v24, "numbers", 0, 0, &v15) < 1)
  {
    operator new();
  }

  v12 = 1;
LABEL_13:
  Instance = icu::NumberFormat::createInstance(v24, v12, a6);
  icu::Locale::~Locale(v13, v24);
  if (Instance)
  {
    if (*a6 < 1)
    {
      goto LABEL_3;
    }

    (*(*Instance + 8))(Instance);
    goto LABEL_2;
  }

  if (*a6 <= 0)
  {
    Instance = 0;
    v14 = 7;
LABEL_32:
    *a6 = v14;
    goto LABEL_3;
  }

LABEL_2:
  Instance = 0;
LABEL_3:
  v8 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t unum_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t unum_clone(char **lpsrc, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (lpsrc)
  {
    v5 = *lpsrc;
    v6 = **lpsrc;
    if (!v7)
    {
      v8 = *v5;
    }
  }

  else
  {
    v7 = 0;
  }

  result = (*(*v7 + 32))(v7);
  if (!result)
  {
    *a2 = 7;
  }

  return result;
}

uint64_t unum_formatInt64(char **lpsrc, uint64_t a2, char *a3, unsigned int a4, uint64_t a5, int *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v24 = 0u;
    v25 = 0u;
    v27 = 0;
    v26 = 0u;
    v23 = &unk_1F0935D00;
    LOWORD(v24) = 2;
    if (a3 || a4)
    {
      icu::UnicodeString::setTo(&v23, a3, 0, a4);
    }

    v21 = &unk_1F093AD90;
    v22 = 0xFFFFFFFFuLL;
    if (a5)
    {
      LODWORD(v22) = *a5;
    }

    v13 = *lpsrc;
    v14 = **lpsrc;
    if (v15)
    {
      (*(*v15 + 112))(v15, a2, &v23, &v21);
      if (!a5)
      {
LABEL_11:
        v20 = a3;
        v6 = icu::UnicodeString::extract(&v23, &v20, a4, a6);
        v19 = v20;
        icu::FieldPosition::~FieldPosition(&v19, &v21);
        icu::UnicodeString::~UnicodeString(v16, &v23);
        goto LABEL_12;
      }
    }

    else
    {
      (*(v13 + 15))(lpsrc, a2, &v23, &v21, a6);
      if (!a5)
      {
        goto LABEL_11;
      }
    }

    *(a5 + 4) = *(&v22 + 4);
    goto LABEL_11;
  }

  v6 = 0xFFFFFFFFLL;
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t unum_formatDouble(char **lpsrc, char *a2, unsigned int a3, uint64_t a4, int *a5, double a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v24 = 0u;
    v25 = 0u;
    v27 = 0;
    v26 = 0u;
    v23 = &unk_1F0935D00;
    LOWORD(v24) = 2;
    if (a2 || a3)
    {
      icu::UnicodeString::setTo(&v23, a2, 0, a3);
    }

    v21 = &unk_1F093AD90;
    v22 = 0xFFFFFFFFuLL;
    if (a4)
    {
      LODWORD(v22) = *a4;
    }

    v13 = *lpsrc;
    v14 = **lpsrc;
    if (v15)
    {
      (*(*v15 + 64))(v15, &v23, &v21, a6);
      if (!a4)
      {
LABEL_11:
        v20 = a2;
        v6 = icu::UnicodeString::extract(&v23, &v20, a3, a5);
        v19 = v20;
        icu::FieldPosition::~FieldPosition(&v19, &v21);
        icu::UnicodeString::~UnicodeString(v16, &v23);
        goto LABEL_12;
      }
    }

    else
    {
      (*(v13 + 9))(lpsrc, &v23, &v21, a5, a6);
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    *(a4 + 4) = *(&v22 + 4);
    goto LABEL_11;
  }

  v6 = 0xFFFFFFFFLL;
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t unum_formatDoubleForFields(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, int *a5, double a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a5 = 1;
LABEL_9:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v17, a2, 0, a3);
  }

  (*(*a1 + 80))(a1, &v17, a4, a5, a6);
  v16 = a2;
  v12 = icu::UnicodeString::extract(&v17, &v16, a3, a5);
  v15 = v16;
  icu::UnicodeString::~UnicodeString(&v15, &v17);
LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t unum_formatDecimal(uint64_t a1, char *__s, unsigned int a3, char *a4, unsigned int a5, uint64_t a6, int *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = a5 == 0;
  }

  v11 = !v10;
  if ((a5 & 0x80000000) != 0 || v11)
  {
    *a7 = 1;
LABEL_20:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v22 = &unk_1F093AD90;
  v23 = 0xFFFFFFFFuLL;
  if (a6)
  {
    LODWORD(v23) = *a6;
  }

  if ((a3 & 0x80000000) != 0)
  {
    a3 = strlen(__s);
  }

  memset(v29, 0, sizeof(v29));
  icu::Formattable::Formattable(v29, __s, a3, a7);
  v25 = 0u;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  if (a5)
  {
    icu::UnicodeString::setTo(&v24, a4, 0, a5);
  }

  (*(*a1 + 40))(a1, v29, &v24, &v22, a7);
  if (a6)
  {
    *(a6 + 4) = *(&v23 + 4);
  }

  v21 = a4;
  v15 = icu::UnicodeString::extract(&v24, &v21, a5, a7);
  v20 = v21;
  icu::UnicodeString::~UnicodeString(&v20, &v24);
  icu::Formattable::~Formattable(v16, v29);
  icu::FieldPosition::~FieldPosition(v17, &v22);
LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t unum_formatDoubleCurrency(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, int *a5, int *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v10 = &unk_1F0935D00;
    LOWORD(v11) = 2;
    if (a3 || a4)
    {
      icu::UnicodeString::setTo(&v10, a3, 0, a4);
    }

    if (a5)
    {
      v9 = *a5;
    }

    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

uint64_t unum_parse(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  icu::Formattable::Formattable(v14);
  sub_195414194(v14, a1, a2, a3, a4, a5);
  Long = icu::Formattable::getLong(v14, a5);
  icu::Formattable::~Formattable(v11, v14);
  v12 = *MEMORY[0x1E69E9840];
  return Long;
}

void sub_195414194(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, int *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    memset(v15, 0, sizeof(v15));
    v14 = a3;
    icu::UnicodeString::UnicodeString(v15, a4 == -1, &v14);
    v12 = &unk_1F0932C70;
    v13 = 0xFFFFFFFF00000000;
    if (a5)
    {
      LODWORD(v13) = *a5;
    }

    (*(*a2 + 160))(a2, v15, a1, &v12);
    v10 = HIDWORD(v13);
    if (HIDWORD(v13) == -1)
    {
      if (!a5)
      {
LABEL_10:
        icu::ParsePosition::~ParsePosition(&v12);
        icu::UnicodeString::~UnicodeString(v15);
        goto LABEL_11;
      }

      v10 = v13;
    }

    else
    {
      *a6 = 9;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    *a5 = v10;
    goto LABEL_10;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t unum_parseInt64(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  icu::Formattable::Formattable(v14);
  sub_195414194(v14, a1, a2, a3, a4, a5);
  Int64 = icu::Formattable::getInt64(v14, a5);
  icu::Formattable::~Formattable(v11, v14);
  v12 = *MEMORY[0x1E69E9840];
  return Int64;
}

double unum_parseDouble(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  icu::Formattable::Formattable(v14);
  sub_195414194(v14, a1, a2, a3, a4, a5);
  Double = icu::Formattable::getDouble(v14, a5);
  icu::Formattable::~Formattable(v11, v14);
  v12 = *MEMORY[0x1E69E9840];
  return Double;
}

uint64_t unum_parseDecimal(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, char *a5, uint64_t a6, int *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_13;
  }

  if (a5)
  {
    v10 = 1;
  }

  else
  {
    v10 = a6 == 0;
  }

  v11 = !v10;
  if ((a6 & 0x80000000) != 0 || v11)
  {
    *a7 = 1;
LABEL_13:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  memset(v22, 0, sizeof(v22));
  icu::Formattable::Formattable(v22);
  sub_195414194(v22, a1, a2, a3, a4, a7);
  DecimalNumber = icu::Formattable::getDecimalNumber(v22, a7);
  v18 = *a7;
  if (v18 <= 0)
  {
    v19 = v17;
    if (v17 <= a6)
    {
      if (v17 == a6)
      {
        strncpy(a5, DecimalNumber, v17);
        v18 = 4294967172;
        *a7 = -124;
        v19 = a6;
      }

      else
      {
        strcpy(a5, DecimalNumber);
      }
    }

    else
    {
      v18 = 15;
      *a7 = 15;
    }
  }

  else
  {
    v19 = 0xFFFFFFFFLL;
  }

  icu::Formattable::~Formattable(v18, v22);
LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

double unum_parseDoubleCurrency(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, UChar *a5, UErrorCode *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  Double = 0.0;
  if (*a6 <= 0)
  {
    memset(v21, 0, sizeof(v21));
    v20 = a2;
    icu::UnicodeString::UnicodeString(v21, a3 == -1, &v20);
    v18 = &unk_1F0932C70;
    v19 = 0xFFFFFFFF00000000;
    if (a4)
    {
      LODWORD(v19) = *a4;
    }

    *a6 = U_PARSE_ERROR;
    v11 = (*(*a1 + 176))(a1, v21, &v18);
    v12 = v11;
    if (HIDWORD(v19) == -1)
    {
      v13 = v19;
      if (a4)
      {
        *a4 = v19;
      }

      if (v13 >= 1)
      {
        *a6 = U_ZERO_ERROR;
        Currency = icu::CurrencyAmount::getCurrency(v11);
        u_strcpy(a5, (Currency + 20));
        Double = icu::Formattable::getDouble((v12 + 8), a6);
      }
    }

    else if (a4)
    {
      *a4 = HIDWORD(v19);
    }

    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    icu::ParsePosition::~ParsePosition(&v18);
    icu::UnicodeString::~UnicodeString(v15, v21);
  }

  v16 = *MEMORY[0x1E69E9840];
  return Double;
}

uint64_t unum_hasAttribute(char **a1, int a2)
{
  if (a1)
  {
    v3 = **a1;
  }

  else
  {
    v4 = 0;
  }

  if ((a2 - 3) <= 0x10)
  {
    v4 |= 0x1013Fu >> (a2 - 3);
  }

  return v4 & 1;
}

uint64_t unum_getAttribute(char **a1, uint64_t a2)
{
  if (a2 > 6)
  {
    if (a2 > 10)
    {
      if (a2 != 11)
      {
        if (a2 == 19)
        {
          return (*(*a1 + 25))(a1);
        }

        goto LABEL_28;
      }

      v4 = *(*a1 + 34);

      return v4();
    }

    else
    {
      if (a2 != 7 && a2 != 8)
      {
LABEL_28:
        if (!a1)
        {
          return 0xFFFFFFFFLL;
        }

        v5 = **a1;
        if (!v6)
        {
          return 0xFFFFFFFFLL;
        }

        v7 = 0;
        return (*(*v6 + 312))(v6, a2, &v7);
      }

      return icu::NumberFormat::getMinimumFractionDigits(a1);
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
LABEL_19:

      return icu::NumberFormat::getMinimumIntegerDigits(a1);
    }

    return icu::NumberFormat::getMaximumFractionDigits(a1);
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    return icu::NumberFormat::getMaximumIntegerDigits(a1);
  }
}

char **unum_setAttribute(char **lpsrc, uint64_t a2, uint64_t a3)
{
  v5 = lpsrc;
  if (a2 <= 6)
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v6 = *(*lpsrc + 28);

          return v6();
        }

        goto LABEL_31;
      }

      goto LABEL_25;
    }

    if (a2 == 5)
    {
      (*(*lpsrc + 28))(lpsrc, a3);
LABEL_25:
      v7 = *(*v5 + 27);
      v8 = v5;
      v9 = a3;

      return v7(v8, v9);
    }

LABEL_13:
    v7 = *(*v5 + 29);
    v8 = v5;
    v9 = a3;

    return v7(v8, v9);
  }

  if (a2 > 10)
  {
    if (a2 == 11)
    {
      v6 = *(*lpsrc + 35);

      return v6();
    }

    if (a2 == 19)
    {
      v6 = *(*lpsrc + 24);

      return v6();
    }

    goto LABEL_31;
  }

  if (a2 == 7)
  {
    v6 = *(*lpsrc + 30);

    return v6();
  }

  if (a2 == 8)
  {
    (*(*lpsrc + 30))(lpsrc, a3);
    goto LABEL_13;
  }

LABEL_31:
  if (lpsrc)
  {
    v10 = **lpsrc;
    if (lpsrc)
    {
      v11 = 0;
      return (*(*lpsrc + 38))(lpsrc, a2, a3, &v11);
    }
  }

  return lpsrc;
}

double unum_getDoubleAttribute(char **a1, int a2)
{
  if (!a1)
  {
    return -1.0;
  }

  v3 = **a1;
  if (a2 != 12 || !v4)
  {
    return -1.0;
  }

  v5 = *(*v4 + 408);

  v5();
  return result;
}

char **unum_setDoubleAttribute(char **result, int a2, double a3)
{
  if (result)
  {
    v5 = **result;
    if (a2 == 12)
    {
      if (result)
      {
        v7 = *(*result + 52);
        v6.n128_f64[0] = a3;

        return v7(v6);
      }
    }
  }

  return result;
}

uint64_t unum_getTextAttribute(char **lpsrc, int a2, char *a3, unsigned int a4, int *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v33 = 0u;
    v34 = 0u;
    v36 = 0;
    v35 = 0u;
    v32 = &unk_1F0935D00;
    LOWORD(v33) = 2;
    if (a3 || a4)
    {
      icu::UnicodeString::setTo(&v32, a3, 0, a4);
      if (!lpsrc)
      {
        goto LABEL_22;
      }
    }

    else if (!lpsrc)
    {
      goto LABEL_22;
    }

    v11 = *lpsrc;
    v12 = **lpsrc;
    if (v13)
    {
      if (a2 <= 2)
      {
        switch(a2)
        {
          case 0:
            icu::DecimalFormat::getPositivePrefix(v13, &v32);
            goto LABEL_28;
          case 1:
            icu::DecimalFormat::getPositiveSuffix(v13, &v32);
            goto LABEL_28;
          case 2:
            icu::DecimalFormat::getNegativePrefix(v13, &v32);
LABEL_28:
            v27 = a3;
            v5 = icu::UnicodeString::extract(&v32, &v27, a4, a5);
            v26 = v27;
            v17 = &v26;
            goto LABEL_29;
        }

LABEL_22:
        v17 = 16;
        *a5 = 16;
        v5 = 0xFFFFFFFFLL;
LABEL_29:
        icu::UnicodeString::~UnicodeString(v17, &v32);
        goto LABEL_30;
      }

      switch(a2)
      {
        case 3:
          icu::DecimalFormat::getNegativeSuffix(v13, &v32);
          goto LABEL_28;
        case 4:
          (*(*v13 + 440))(&v29);
          break;
        case 5:
          Currency = icu::NumberFormat::getCurrency(v13);
          sub_1951F3478(&v29, &Currency);
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      v14 = *v11;
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = v15;
      if (a2 == 7)
      {
        v21 = (*(*v15 + 312))(v15);
        if (v21 >= 1)
        {
          v22 = v21;
          v23 = 0;
          do
          {
            (*(*v16 + 320))(&v29, v16, v23);
            if ((v30 & 0x8000u) == 0)
            {
              v24 = v30 >> 5;
            }

            else
            {
              v24 = v31;
            }

            icu::UnicodeString::doAppend(&v32, &v29, 0, v24);
            icu::UnicodeString::~UnicodeString(v25, &v29);
            LOWORD(v29) = 59;
            icu::UnicodeString::doAppend(&v32, &v29, 0, 1);
            v23 = (v23 + 1);
          }

          while (v22 != v23);
        }

        goto LABEL_28;
      }

      if (a2 != 6)
      {
        goto LABEL_22;
      }

      (*(*v15 + 392))(&v29, v15);
    }

    icu::UnicodeString::operator=(&v32, &v29);
    icu::UnicodeString::~UnicodeString(v18, &v29);
    goto LABEL_28;
  }

  v5 = 0xFFFFFFFFLL;
LABEL_30:
  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

char **unum_setTextAttribute(char **result, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v7 = result;
    memset(v17, 0, sizeof(v17));
    icu::UnicodeString::UnicodeString(v17, a3, a4);
    if (v7)
    {
      v8 = *v7;
      v9 = **v7;
      if (v10)
      {
        v11 = v10;
        if (a2 > 2)
        {
          switch(a2)
          {
            case 3:
              (*(*v10 + 392))(v10, v17);
              goto LABEL_18;
            case 4:
              (*(*v10 + 448))(v10, v17);
              goto LABEL_18;
            case 5:
              TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(v17);
              (*(*v11 + 248))(v11, TerminatedBuffer, a5);
              goto LABEL_18;
          }
        }

        else
        {
          switch(a2)
          {
            case 0:
              (*(*v10 + 368))(v10, v17);
              goto LABEL_18;
            case 1:
              (*(*v10 + 384))(v10, v17);
              goto LABEL_18;
            case 2:
              (*(*v10 + 376))(v10, v17);
LABEL_18:
              result = icu::UnicodeString::~UnicodeString(v12, v17);
              goto LABEL_19;
          }
        }

        goto LABEL_17;
      }

      v14 = *v8;
    }

    else
    {
      v13 = 0;
    }

    if (a2 == 6)
    {
      (*(*v13 + 384))(v13, v17, a5);
      goto LABEL_18;
    }

LABEL_17:
    v12 = 16;
    *a5 = 16;
    goto LABEL_18;
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unum_toPattern(char **lpsrc, int a2, char *a3, unsigned int a4, int *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v24 = 0u;
    v25 = 0u;
    v27 = 0;
    v26 = 0u;
    v23 = &unk_1F0935D00;
    LOWORD(v24) = 2;
    if (a3 || a4)
    {
      icu::UnicodeString::setTo(&v23, a3, 0, a4);
    }

    if (lpsrc)
    {
      v11 = *lpsrc;
      v12 = **lpsrc;
      if (v13)
      {
        v14 = *v13;
        if (a2)
        {
          (*(v14 + 560))();
        }

        else
        {
          (*(v14 + 552))();
        }
      }

      else
      {
        v15 = *v11;
        if (v16)
        {
          (*(*v16 + 304))(v22);
          icu::UnicodeString::operator=(&v23, v22);
          icu::UnicodeString::~UnicodeString(v17, v22);
        }
      }
    }

    v21 = a3;
    v5 = icu::UnicodeString::extract(&v23, &v21, a4, a5);
    v20 = v21;
    icu::UnicodeString::~UnicodeString(&v20, &v23);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

void *unum_getSymbol(char **a1, unsigned int a2, UChar *a3, int a4, int *a5)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 < 0x1D)
  {
    v10 = **a1;
    if (result)
    {
      v11 = (*(*result + 320))(result);
      v13 = a3;
      return icu::UnicodeString::extract(v11 + (a2 << 6) + 8, &v13, a4, a5);
    }

    v12 = 16;
  }

  else
  {
    result = 0;
    v12 = 1;
  }

  *a5 = v12;
  return result;
}

void unum_setSymbol(char **a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    if (a1 && a2 <= 0x1C && a3 && a4 > -2)
    {
      v9 = **a1;
      if (v10)
      {
        v11 = v10;
        bzero(v17, 0xB48uLL);
        v12 = (*(*v11 + 320))(v11);
        icu::DecimalFormatSymbols::DecimalFormatSymbols(v17, v12);
        icu::UnicodeString::UnicodeString(v16, a3, a4);
        sub_1952EEAC0(v17, a2, v16, 1);
        icu::UnicodeString::~UnicodeString(v13, v16);
        (*(*v11 + 336))(v11, v17);
        icu::DecimalFormatSymbols::~DecimalFormatSymbols(v17);
        goto LABEL_12;
      }

      v14 = 16;
    }

    else
    {
      v14 = 1;
    }

    *a5 = v14;
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
}

void *unum_applyPattern(char **a1, int a2, UChar *s, uint64_t a4, uint64_t a5, int *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = &v16;
  }

  if (a4 == -1)
  {
    a4 = u_strlen(s);
  }

  memset(v17, 0, sizeof(v17));
  icu::UnicodeString::UnicodeString(v17, s, a4, a4);
  {
    v12 = *v11;
    if (a2)
    {
      (*(v12 + 584))();
    }

    else
    {
      (*(v12 + 568))();
    }
  }

  else
  {
    v13 = 16;
    *v9 = 16;
  }

  result = icu::UnicodeString::~UnicodeString(v13, v17);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unum_getLocaleByType(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    return icu::Format::getLocaleID(a1, a2, a3);
  }

  if (*a3 <= 0)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t unum_setContext(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 256))();
  }

  return result;
}

uint64_t unum_getContext(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 264))();
  }

  else
  {
    return 0;
  }
}

uint64_t unum_parseToUFormattable(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, int *a6)
{
  v6 = a2;
  if (*a6 <= 0)
  {
    if (a1 && (a3 || !a4))
    {
      if (a2)
      {
        v13 = 0;
      }

      else
      {
        v6 = ufmt_open(a6);
        v13 = v6;
      }

      sub_195414194(v6, a1, a3, a4, a5, a6);
      if (*a6 >= 1 && v13)
      {
        ufmt_close(v13);
        return 0;
      }
    }

    else
    {
      *a6 = 1;
    }
  }

  return v6;
}

uint64_t unum_formatUFormattable(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    v6 = 0;
    goto LABEL_14;
  }

  if (!a1 || !a2)
  {
    goto LABEL_13;
  }

  v11 = a4;
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = 0;
    *a6 = 1;
    goto LABEL_14;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  memset(v20, 0, sizeof(v20));
  icu::UnicodeString::UnicodeString(v20, a3, 0, a4);
  v18 = &unk_1F093AD90;
  v19 = 0xFFFFFFFFuLL;
  if (a5)
  {
    LODWORD(v19) = *a5;
  }

  (*(*a1 + 40))(a1, a2, v20, &v18, a6);
  if (a5)
  {
    *(a5 + 4) = *(&v19 + 4);
  }

  v17 = a3;
  v6 = icu::UnicodeString::extract(v20, &v17, v11, a6);
  v16 = v17;
  icu::FieldPosition::~FieldPosition(&v16, &v18);
  icu::UnicodeString::~UnicodeString(v13, v20);
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t unumsys_open(char *a1, UErrorCode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v9, v8, a1, 0, 0, 0);
  Instance = icu::NumberingSystem::createInstance(v8, a2, v3);
  icu::Locale::~Locale(v5, v8);
  v6 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t unumsys_openByName(icu::NumberingSystem *a1, UErrorCode *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    return icu::NumberingSystem::createInstanceByName(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t unumsys_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t unumsys_getDescription(uint64_t a1, UChar *a2, int a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    memset(v12, 0, sizeof(v12));
    (*(*a1 + 24))(v12);
    v11 = a2;
    v4 = icu::UnicodeString::extract(v12, &v11, a3, a4);
    v10 = v11;
    icu::UnicodeString::~UnicodeString(&v10, v12);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t uplrules_openForType(char *a1, int a2, icu::UnifiedCache *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v10, v9, a1, 0, 0, 0);
  v5 = icu::PluralRules::forLocale(v9, a2, a3);
  icu::Locale::~Locale(v6, v9);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uplrules_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t uplrules_select(icu::PluralRules *a1, UChar *a2, int a3, int *a4, double a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2)
    {
      if ((a3 & 0x80000000) == 0)
      {
LABEL_5:
        memset(v13, 0, sizeof(v13));
        icu::PluralRules::select(a1, a5, v13);
        v12 = a2;
        v5 = icu::UnicodeString::extract(v13, &v12, a3, a4);
        v11 = v12;
        icu::UnicodeString::~UnicodeString(&v11, v13);
        goto LABEL_8;
      }
    }

    else if (!a3)
    {
      goto LABEL_5;
    }

    v5 = 0;
    *a4 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uplrules_selectFormatted(icu::PluralRules *a1, uint64_t a2, UChar *a3, int a4, int *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  if (a3)
  {
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    *a5 = 1;
    goto LABEL_3;
  }

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = sub_195354AAC(a2, a5);
  if (*a5 <= 0)
  {
    memset(v15, 0, sizeof(v15));
    icu::PluralRules::select(a1, v12, v15);
    v14 = a3;
    v5 = icu::UnicodeString::extract(v15, &v14, a4, a5);
    v13 = v14;
    icu::UnicodeString::~UnicodeString(&v13, v15);
    goto LABEL_3;
  }

LABEL_2:
  v5 = 0;
LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uplrules_selectForRange(icu::PluralRules *a1, uint64_t a2, UChar *a3, int a4, int *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a3)
    {
      if ((a4 & 0x80000000) == 0)
      {
LABEL_5:
        v10 = sub_195387CC0(a2, a5);
        memset(v15, 0, sizeof(v15));
        icu::PluralRules::select(a1, v10, a5, v15);
        v14 = a3;
        v5 = icu::UnicodeString::extract(v15, &v14, a4, a5);
        v13 = v14;
        icu::UnicodeString::~UnicodeString(&v13, v15);
        goto LABEL_8;
      }
    }

    else if (!a4)
    {
      goto LABEL_5;
    }

    v5 = 0;
    *a5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uplrules_selectWithFormat(icu::PluralRules *a1, char **a2, UChar *a3, int a4, UErrorCode *a5, double a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a1 && a2)
    {
      if (a3)
      {
        if ((a4 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else if (!a4)
      {
LABEL_7:
        memset(v24, 0, sizeof(v24));
        icu::Formattable::Formattable(v24, a6);
        memset(v23, 0, sizeof(v23));
        if (*a5 <= 0)
        {
          v15 = **a2;
          if (v16)
          {
            v17 = v16;
            v22 = 0;
            memset(v21, 0, sizeof(v21));
            icu::number::impl::DecimalQuantity::DecimalQuantity(v21);
            icu::DecimalFormat::formatToDecimalQuantity(v17, v24, v21, a5);
            if (*a5 <= 0)
            {
              icu::PluralRules::select(a1, v21, v23);
              icu::number::impl::DecimalQuantity::~DecimalQuantity(v21);
              goto LABEL_9;
            }

            icu::number::impl::DecimalQuantity::~DecimalQuantity(v21);
          }

          else
          {
            Double = icu::Formattable::getDouble(v24, a5);
            if (*a5 <= 0)
            {
              icu::PluralRules::select(a1, Double, v23);
              goto LABEL_9;
            }
          }
        }

        *&v23[0] = &unk_1F0935D00;
        WORD4(v23[0]) = 2;
LABEL_9:
        v20 = a3;
        v6 = icu::UnicodeString::extract(v23, &v20, a4, a5);
        v19 = v20;
        icu::UnicodeString::~UnicodeString(&v19, v23);
        icu::Formattable::~Formattable(v12, v24);
        goto LABEL_12;
      }
    }

    v6 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

_OWORD *uplrules_getKeywords(icu::PluralRules *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
    *a2 = v5;
    return 0;
  }

  Keywords = icu::PluralRules::getKeywords(a1, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  if (!Keywords)
  {
    v5 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_9;
  }

  return uenum_openFromStringEnumeration(Keywords, a2);
}

icu::PluralRules *uplrules_getSampleForKeyword(icu::PluralRules *result, _WORD *a2, UErrorCode *a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (*a3 <= 0)
  {
    v5 = result;
    if (result)
    {
      v9[0] = 0.0;
      v9[1] = 0.0;
      sub_1951F3478(v8, &v7);
      icu::PluralRules::getSamples(v5, v8, v9, 2, a3);
      result = icu::UnicodeString::~UnicodeString(v6, v8);
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1954167F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    icu::RegexMatcher::~RegexMatcher(v2);
    MEMORY[0x19A8B2600]();
  }

  *(a1 + 40) = 0;
  v3 = *(a1 + 16);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      icu::RegexPattern::~RegexPattern(v4);
      MEMORY[0x19A8B2600]();
    }

    free(*(a1 + 24));
    free(*(a1 + 16));
  }

  if (*(a1 + 60))
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      free(v5);
    }
  }

  *a1 = 0;
  return a1;
}

URegularExpression *__cdecl uregex_open(const UChar *pattern, int32_t patternLength, uint32_t flags, UParseError *pe, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (patternLength && pattern && patternLength > -2)
    {
      if (patternLength == -1)
      {
        u_strlen(pattern);
      }

      operator new();
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

URegularExpression *__cdecl uregex_openUText(UText *pattern, uint32_t flags, UParseError *pe, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (pattern && utext_nativeLength(pattern))
    {
      operator new();
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void uregex_close(URegularExpression *regexp)
{
  if (regexp && *regexp == 1919252592)
  {
    sub_1954167F8(regexp);

    JUMPOUT(0x19A8B2600);
  }
}

URegularExpression *__cdecl uregex_clone(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      operator new();
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

const UChar *__cdecl uregex_pattern(const URegularExpression *regexp, int32_t *patLength, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    if (patLength)
    {
      *patLength = *(regexp + 8);
    }

    return *(regexp + 3);
  }

  else
  {
    result = 0;
    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

int32_t uregex_flags(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexPattern::flags(*(regexp + 1));
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void uregex_setText(URegularExpression *regexp, const UChar *text, int32_t textLength, UErrorCode *status)
{
  if (*status <= 0)
  {
    v12 = v4;
    v13 = v5;
    if (regexp && *regexp == 1919252592 && text && textLength > -2)
    {
      if (*(regexp + 60))
      {
        v10 = *(regexp + 6);
        if (v10)
        {
          free(v10);
        }
      }

      *(regexp + 6) = text;
      *(regexp + 14) = textLength;
      *(regexp + 60) = 0;
      memset(&v11, 0, sizeof(v11));
      v11.magic = 878368812;
      v11.sizeOfStruct = 144;
      utext_openUChars(&v11, text, textLength, status);
      icu::RegexMatcher::reset(*(regexp + 5), &v11);
      utext_close(&v11);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

void uregex_setUText(URegularExpression *regexp, UText *text, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592 && text)
    {
      if (*(regexp + 60))
      {
        v5 = *(regexp + 6);
        if (v5)
        {
          free(v5);
        }
      }

      *(regexp + 6) = 0;
      *(regexp + 14) = -1;
      *(regexp + 60) = 1;
      v6 = *(regexp + 5);

      icu::RegexMatcher::reset(v6, text);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

const UChar *__cdecl uregex_getText(URegularExpression *regexp, int32_t *textLength, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    chunkContents = *(regexp + 6);
    if (!chunkContents)
    {
      v7 = icu::RegexMatcher::inputText(*(regexp + 5));
      v8 = utext_nativeLength(v7);
      v9 = v8;
      if (!v7->chunkNativeStart && v8 == v7->chunkNativeLimit && v8 == v7->nativeIndexingLimit)
      {
        chunkContents = v7->chunkContents;
        *(regexp + 6) = chunkContents;
        *(regexp + 14) = v8;
        *(regexp + 60) = 0;
      }

      else
      {
        statusa = U_ZERO_ERROR;
        v10 = utext_extract(v7, 0, v8, 0, 0, &statusa);
        *(regexp + 14) = v10;
        chunkContents = malloc_type_malloc(2 * v10 + 2, 0x1000040BDFB0063uLL);
        utext_extract(v7, 0, v9, chunkContents, *(regexp + 14) + 1, status);
        *(regexp + 6) = chunkContents;
        *(regexp + 60) = 1;
      }
    }

    if (textLength)
    {
      *textLength = *(regexp + 14);
    }
  }

  else
  {
    chunkContents = 0;
    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return chunkContents;
}

UText *__cdecl uregex_getUText(URegularExpression *regexp, UText *dest, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexMatcher::getInput(*(regexp + 5), dest, status);
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return dest;
}

void uregex_refreshUText(URegularExpression *regexp, UText *text, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::refreshInputText(*(regexp + 5), text, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

UBool uregex_matches64(URegularExpression *regexp, int64_t startIndex, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (!regexp || *regexp != 1919252592)
  {
    v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
    *status = v5;
    return 0;
  }

  if (!*(regexp + 6) && !*(regexp + 60))
  {
    v5 = U_REGEX_INVALID_STATE;
    goto LABEL_9;
  }

  v3 = *(regexp + 5);
  if (startIndex == -1)
  {
    return icu::RegexMatcher::matches(v3, status);
  }

  else
  {
    return icu::RegexMatcher::matches(v3, startIndex, status);
  }
}

UBool uregex_lookingAt64(URegularExpression *regexp, int64_t startIndex, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (!regexp || *regexp != 1919252592)
  {
    v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
    *status = v5;
    return 0;
  }

  if (!*(regexp + 6) && !*(regexp + 60))
  {
    v5 = U_REGEX_INVALID_STATE;
    goto LABEL_9;
  }

  v3 = *(regexp + 5);
  if (startIndex == -1)
  {
    return icu::RegexMatcher::lookingAt(v3, status);
  }

  else
  {
    return icu::RegexMatcher::lookingAt(v3, startIndex, status);
  }
}

UBool uregex_find64(URegularExpression *regexp, int64_t startIndex, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (!regexp || *regexp != 1919252592)
  {
    v7 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_11:
    *status = v7;
    return 0;
  }

  if (!*(regexp + 6) && !*(regexp + 60))
  {
    v7 = U_REGEX_INVALID_STATE;
    goto LABEL_11;
  }

  v5 = *(regexp + 5);
  if (startIndex == -1)
  {
    icu::RegexMatcher::resetPreserveRegion(v5);
    v8 = *(regexp + 5);

    return icu::RegexMatcher::find(v8, status);
  }

  else
  {

    return icu::RegexMatcher::find(v5, startIndex, status);
  }
}

UBool uregex_findNext(URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        return icu::RegexMatcher::find(*(regexp + 5), status);
      }

      v3 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v3;
  }

  return 0;
}

int32_t uregex_groupCount(URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexMatcher::groupCount(*(regexp + 5));
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

int32_t uregex_group(URegularExpression *regexp, int32_t groupNum, UChar *dest, int32_t destCapacity, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (!regexp || *regexp != 1919252592)
  {
    v12 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v8 = destCapacity;
  v11 = *(regexp + 6);
  if (!v11 && !*(regexp + 60))
  {
    v12 = U_REGEX_INVALID_STATE;
    goto LABEL_12;
  }

  if (destCapacity < 0 || !dest && destCapacity)
  {
    v5 = 0;
    v12 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_13:
    *status = v12;
    return v5;
  }

  v14 = *(regexp + 5);
  if (!destCapacity || v11)
  {
    v19 = icu::RegexMatcher::start(v14, groupNum, status);
    v20 = icu::RegexMatcher::end(*(regexp + 5), groupNum, status);
    if (*status <= 0)
    {
      v5 = v20 - v19;
      if (v20 - v19 >= v8)
      {
        if (v5 == v8)
        {
          v21 = U_STRING_NOT_TERMINATED_WARNING;
        }

        else
        {
          v21 = U_BUFFER_OVERFLOW_ERROR;
        }

        *status = v21;
      }

      else
      {
        dest[v5] = 0;
        v8 = v20 - v19;
      }

      if (v8 >= 1)
      {
        u_memcpy(dest, (*(regexp + 6) + 2 * v19), v8);
      }

      return v5;
    }

    return 0;
  }

  v15 = icu::RegexMatcher::start64(v14, groupNum, status);
  v16 = icu::RegexMatcher::end64(*(regexp + 5), groupNum, status);
  if (*status > 0)
  {
    return 0;
  }

  v17 = v16;
  v18 = icu::RegexMatcher::inputText(*(regexp + 5));

  return utext_extract(v18, v15, v17, dest, v8, status);
}

UText *__cdecl uregex_groupUText(URegularExpression *regexp, int32_t groupNum, UText *dest, int64_t *groupLength, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        v7 = *(regexp + 5);

        return icu::RegexMatcher::group(v7, groupNum, dest, groupLength, status);
      }

      v9 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v9 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v9;
  }

  v11 = v5;
  v12 = v6;
  v10 = 0;
  if (!dest)
  {
    return utext_openUChars(0, 0, 0, &v10);
  }

  return dest;
}

int64_t uregex_start64(URegularExpression *regexp, int32_t groupNum, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        return icu::RegexMatcher::start64(*(regexp + 5), groupNum, status);
      }

      v4 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v4;
  }

  return 0;
}

int64_t uregex_end64(URegularExpression *regexp, int32_t groupNum, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        return icu::RegexMatcher::end64(*(regexp + 5), groupNum, status);
      }

      v4 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v4;
  }

  return 0;
}

void uregex_reset64(URegularExpression *regexp, int64_t index, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        icu::RegexMatcher::reset(*(regexp + 5), index, status);
        return;
      }

      v3 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v3;
  }
}

void uregex_setRegion64(URegularExpression *regexp, int64_t regionStart, int64_t regionLimit, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        icu::RegexMatcher::region(*(regexp + 5), regionStart, regionLimit, status);
        return;
      }

      v4 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v4;
  }
}

void uregex_setRegionAndStart(URegularExpression *regexp, int64_t regionStart, int64_t regionLimit, int64_t startIndex, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        icu::RegexMatcher::region(*(regexp + 5), regionStart, regionLimit, startIndex, status);
        return;
      }

      v5 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v5;
  }
}

int64_t uregex_regionStart64(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    if (*(regexp + 6) || *(regexp + 60))
    {
      return icu::RegexMatcher::regionStart(*(regexp + 5));
    }

    v3 = U_REGEX_INVALID_STATE;
  }

  else
  {
    v3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  result = 0;
  *status = v3;
  return result;
}

int64_t uregex_regionEnd64(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    if (*(regexp + 6) || *(regexp + 60))
    {
      return icu::RegexMatcher::regionEnd(*(regexp + 5));
    }

    v3 = U_REGEX_INVALID_STATE;
  }

  else
  {
    v3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  result = 0;
  *status = v3;
  return result;
}

UBool uregex_hasTransparentBounds(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexMatcher::hasTransparentBounds(*(regexp + 5));
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void uregex_useTransparentBounds(URegularExpression *regexp, UBool b, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::useTransparentBounds(*(regexp + 5), b);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

UBool uregex_hasAnchoringBounds(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexMatcher::hasAnchoringBounds(*(regexp + 5));
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void uregex_useAnchoringBounds(URegularExpression *regexp, UBool b, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::useAnchoringBounds(*(regexp + 5), b);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

UBool uregex_hitEnd(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        return icu::RegexMatcher::hitEnd(*(regexp + 5));
      }

      v3 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v3;
  }

  return 0;
}

UBool uregex_requireEnd(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      if (*(regexp + 6) || *(regexp + 60))
      {
        return icu::RegexMatcher::requireEnd(*(regexp + 5));
      }

      v3 = U_REGEX_INVALID_STATE;
    }

    else
    {
      v3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *status = v3;
  }

  return 0;
}

void uregex_setTimeLimit(URegularExpression *regexp, int32_t limit, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::setTimeLimit(*(regexp + 5), limit, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

int32_t uregex_getTimeLimit(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexMatcher::getTimeLimit(*(regexp + 5));
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void uregex_setStackLimit(URegularExpression *regexp, int32_t limit, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::setStackLimit(*(regexp + 5), limit, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

int32_t uregex_getStackLimit(const URegularExpression *regexp, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      return icu::RegexMatcher::getStackLimit(*(regexp + 5));
    }

    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void uregex_setMatchCallback(URegularExpression *regexp, URegexMatchCallback *callback, const void *context, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::setMatchCallback(*(regexp + 5), callback, context, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

void uregex_getMatchCallback(const URegularExpression *regexp, URegexMatchCallback **callback, const void **context, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::getMatchCallback(*(regexp + 5), callback, context, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

void uregex_setFindProgressCallback(URegularExpression *regexp, URegexFindProgressCallback *callback, const void *context, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::setFindProgressCallback(*(regexp + 5), callback, context, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

void uregex_getFindProgressCallback(const URegularExpression *regexp, URegexFindProgressCallback **callback, const void **context, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (regexp && *regexp == 1919252592)
    {
      icu::RegexMatcher::getFindProgressCallback(*(regexp + 5), callback, context, status);
    }

    else
    {
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

int32_t uregex_replaceAll(URegularExpression *regexp, const UChar *replacementText, int32_t replacementLength, UChar *destBuf, int32_t destCapacity, UErrorCode *status)
{
  destBufa = destBuf;
  destCapacitya = destCapacity;
  if (*status > 0)
  {
    return 0;
  }

  if (!regexp || *regexp != 1919252592)
  {
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_22:
    result = 0;
LABEL_24:
    *status = v14;
    return result;
  }

  if (!*(regexp + 6) && !*(regexp + 60))
  {
    v14 = U_REGEX_INVALID_STATE;
    goto LABEL_22;
  }

  if (!replacementText || replacementLength < -1 || (!destBuf ? (v11 = destCapacity <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), destCapacity < 0 || v12))
  {
    result = 0;
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_24;
  }

  uregex_reset64(regexp, 0, status);
  v15 = *status;
    ;
  }

  result = uregex_appendTail_0(regexp, &destBufa, &destCapacitya, status) + i;
  v14 = v15;
  if (v15 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    goto LABEL_24;
  }

  return result;
}

UText *__cdecl uregex_replaceAllUText(URegularExpression *regexp, UText *replacement, UText *dest, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    if (!*(regexp + 6) && !*(regexp + 60))
    {
      v5 = U_REGEX_INVALID_STATE;
      goto LABEL_9;
    }

    if (replacement)
    {
      return icu::RegexMatcher::replaceAll(*(regexp + 5), replacement, dest, status);
    }
  }

  v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
  *status = v5;
  return 0;
}

int32_t uregex_replaceFirst(URegularExpression *regexp, const UChar *replacementText, int32_t replacementLength, UChar *destBuf, int32_t destCapacity, UErrorCode *status)
{
  destBufa = destBuf;
  destCapacitya = destCapacity;
  if (*status > 0)
  {
    return 0;
  }

  if (!regexp || *regexp != 1919252592)
  {
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_20:
    result = 0;
LABEL_22:
    *status = v14;
    return result;
  }

  if (!*(regexp + 6) && !*(regexp + 60))
  {
    v14 = U_REGEX_INVALID_STATE;
    goto LABEL_20;
  }

  if (!replacementText || replacementLength < -1 || (!destBuf ? (v11 = destCapacity <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), destCapacity < 0 || v12))
  {
    result = 0;
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_22;
  }

  uregex_reset64(regexp, 0, status);
  if (uregex_find64(regexp, 0, status))
  {
    appended = uregex_appendReplacement_0(regexp, replacementText, replacementLength, &destBufa, &destCapacitya, status);
  }

  else
  {
    appended = 0;
  }

  return uregex_appendTail_0(regexp, &destBufa, &destCapacitya, status) + appended;
}

UText *__cdecl uregex_replaceFirstUText(URegularExpression *regexp, UText *replacement, UText *dest, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    if (!*(regexp + 6) && !*(regexp + 60))
    {
      v5 = U_REGEX_INVALID_STATE;
      goto LABEL_9;
    }

    if (replacement)
    {
      return icu::RegexMatcher::replaceFirst(*(regexp + 5), replacement, dest, status);
    }
  }

  v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
  *status = v5;
  return 0;
}

int32_t uregex_appendReplacement_0(URegularExpression *regexp, const UChar *replacementText, int32_t replacementLength, UChar **destBuf, int32_t *destCapacity, UErrorCode *status)
{
  v9 = replacementLength;
  v88 = *MEMORY[0x1E69E9840];
  v12 = *status;
  if (destCapacity)
  {
    v13 = v12 == U_BUFFER_OVERFLOW_ERROR;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v13;
  if (!v13)
  {
    if (v12 <= U_ZERO_ERROR)
    {
      if (!regexp)
      {
        goto LABEL_32;
      }

      goto LABEL_14;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_36;
  }

  if (*destCapacity)
  {
    goto LABEL_12;
  }

  *status = U_ZERO_ERROR;
  if (!regexp)
  {
LABEL_32:
    v26 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_33:
    v15 = 0;
    goto LABEL_35;
  }

LABEL_14:
  if (*regexp != 1919252592)
  {
    goto LABEL_32;
  }

  v16 = *(regexp + 6);
  if (!v16 && !*(regexp + 60))
  {
    v26 = U_REGEX_INVALID_STATE;
    goto LABEL_33;
  }

  if (!replacementText || replacementLength < -1 || !destBuf || !destCapacity || ((v17 = *destBuf, v18 = *destCapacity, v18 > 0) ? (v19 = v17 == 0) : (v19 = 0), v19 || (v18 & 0x80000000) != 0))
  {
    v15 = 0;
    v26 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_35;
  }

  v20 = *(regexp + 5);
  if (!*(v20 + 130))
  {
    v15 = 0;
    v26 = U_REGEX_INVALID_STATE;
    goto LABEL_35;
  }

  if (replacementLength == -1)
  {
    v9 = u_strlen(replacementText);
    v16 = *(regexp + 6);
  }

  v78 = v14;
  v77 = v20;
  if (v16)
  {
    v21 = *(v20 + 32);
    if (v21->pFuncs->mapNativeIndexToUTF16)
    {
      statusa[0] = U_ZERO_ERROR;
      v22 = utext_extract(v21, 0, *(v20 + 152), 0, 0, statusa);
      v23 = v20;
      v24 = v22;
      statusa[0] = U_ZERO_ERROR;
      v25 = utext_extract(*(v23 + 32), *(v23 + 152), *(v23 + 136), 0, 0, statusa) + v22;
    }

    else
    {
      v29 = v20;
      v24 = *(v20 + 152);
      v25 = *(v29 + 136);
    }

    v30 = __OFSUB__(v25, v24);
    v31 = (v25 - v24);
    if ((v31 < 0) ^ v30 | (v31 == 0))
    {
      v15 = 0;
    }

    else
    {
      v32 = 0;
      do
      {
        if (v32 < v18)
        {
          v17[v32] = *(*(regexp + 6) + 2 * v24 + 2 * v32);
        }

        ++v32;
      }

      while (v31 != v32);
      v15 = v31;
    }
  }

  else
  {
    statusa[0] = U_ZERO_ERROR;
    v15 = utext_extract(*(v20 + 32), *(v20 + 152), *(v20 + 136), v17, v18, statusa);
  }

  if (v9 < 1)
  {
    goto LABEL_153;
  }

  v33 = 0;
  v79 = v18;
  v80 = v17;
  do
  {
    if (*status > 0)
    {
      break;
    }

    v34 = v33;
    v35 = replacementText[v33];
    v36 = v33 + 1;
    offset = v36;
    if (v35 != 36)
    {
      if (v35 == 92)
      {
        if (v36 >= v9)
        {
          break;
        }

        v37 = replacementText[v36];
        if ((v37 & 0xFFFFFFDF) != 0x55 || (v38 = u_unescapeAt(sub_1953AD304, &offset, v9, replacementText), v38 == -1))
        {
          if (v15 < v18)
          {
            v17[v15] = v37;
          }

          ++v15;
          ++offset;
          goto LABEL_83;
        }

        if (v38 >= 0x10000)
        {
          if (v18 > v15)
          {
            v17[v15] = (v38 >> 10) - 10304;
          }

          v63 = v15 + 1;
          if (v63 < v18)
          {
            v17[v63] = v38 & 0x3FF | 0xDC00;
          }

          v15 += 2;
          goto LABEL_83;
        }

        if (v18 > v15)
        {
          v17[v15] = v38;
        }
      }

      else if (v18 > v15)
      {
        v17[v15] = v35;
      }

      ++v15;
LABEL_83:
      v49 = 1;
      goto LABEL_149;
    }

    if (v36 >= v9)
    {
      if (!u_isdigit(-1))
      {
LABEL_107:
        v62 = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
        goto LABEL_146;
      }

LABEL_85:
      v50 = offset;
      if (offset >= v9)
      {
        v48 = 0;
        goto LABEL_139;
      }

      v51 = 0;
      v52 = 0;
      v81 = *(*(*(v77 + 8) + 136) + 8);
      while (1)
      {
        v53 = replacementText[v50];
        if ((v53 & 0xF800) != 0xD800)
        {
          goto LABEL_96;
        }

        if ((v53 & 0x400) != 0)
        {
          if (v50 < 1)
          {
            goto LABEL_96;
          }

          v58 = replacementText[v50 - 1];
          v56 = (v58 & 0xFC00) == 55296;
          v57 = v53 - 56613888 + (v58 << 10);
        }

        else
        {
          v54 = v50 + 1;
          if (v54 == v9)
          {
            goto LABEL_96;
          }

          v55 = replacementText[v54];
          v56 = (v55 & 0xFC00) == 56320;
          v57 = (v53 << 10) - 56613888 + v55;
        }

        if (v56)
        {
          v53 = v57;
        }

LABEL_96:
        if (!u_isdigit(v53))
        {
          v48 = v52;
          goto LABEL_139;
        }

        v59 = u_charDigitValue(v53);
        v48 = v59 + 10 * v52;
        if (v48 > v81)
        {
          v48 = v52;
          if (v51)
          {
            goto LABEL_139;
          }

          v62 = U_INDEX_OUTOFBOUNDS_ERROR;
          v18 = v79;
LABEL_146:
          v17 = v80;
          *status = v62;
          goto LABEL_148;
        }

        v60 = offset;
        v50 = ++offset;
        v61 = (replacementText[v60] & 0xFC00) != 0xD800 || v50 == v9;
        if (!v61 && (replacementText[v50] & 0xFC00) == 0xDC00)
        {
          v50 = v60 + 2;
          offset = v60 + 2;
        }

        --v51;
        v52 = v59 + 10 * v52;
        if (v50 >= v9)
        {
          goto LABEL_139;
        }
      }
    }

    v39 = replacementText[v36];
    v40 = v34 + 2;
    if ((v39 & 0xFC00) == 0xD800 && v40 != v9)
    {
      v42 = replacementText[v40];
      v13 = (v42 & 0xFC00) == 56320;
      v43 = (v39 << 10) - 56613888 + v42;
      if (v13)
      {
        v39 = v43;
      }
    }

    if (u_isdigit(v39))
    {
      goto LABEL_85;
    }

    if (v39 != 123)
    {
      goto LABEL_107;
    }

    v87 = 0;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    *statusa = &unk_1F0935D00;
    LOWORD(v84) = 2;
    v44 = offset;
    v45 = ++offset;
    v46 = (replacementText[v44] & 0xFC00) != 0xD800 || v45 == v9;
    if (!v46 && (replacementText[v45] & 0xFC00) == 0xDC00)
    {
      offset = v44 + 2;
    }

    v47 = *status;
    if (v47 > 0)
    {
LABEL_76:
      v48 = 0;
      goto LABEL_138;
    }

    while (1)
    {
      v47 = offset;
      if (offset >= v9)
      {
        goto LABEL_137;
      }

      v64 = ++offset;
      v65 = replacementText[v47];
      if ((v65 & 0xFC00) == 0xD800 && v64 != v9)
      {
        v67 = replacementText[v64];
        if ((v67 & 0xFC00) == 0xDC00)
        {
          offset = v47 + 2;
          v65 = (v65 << 10) - 56613888 + v67;
        }
      }

      if ((v65 & 0xFFFFFFDF) - 65 >= 0x1A && v65 - 49 > 8)
      {
        break;
      }

      icu::UnicodeString::append(statusa, v65);
LABEL_130:
      v47 = *status;
      if (v65 == 125 || v47 >= 1)
      {
        goto LABEL_76;
      }
    }

    if (v65 != 125)
    {
      *status = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
      goto LABEL_130;
    }

    v47 = *(regexp + 1);
    v70 = *(v47 + 192);
    if (!v70 || (v48 = uhash_geti(v70, statusa)) == 0)
    {
LABEL_137:
      v48 = 0;
      *status = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
    }

LABEL_138:
    icu::UnicodeString::~UnicodeString(v47, statusa);
LABEL_139:
    v62 = *status;
    if (*status > 0)
    {
      v18 = v79;
      goto LABEL_147;
    }

    v18 = v79;
    if (v80)
    {
      v71 = &v80[v15];
    }

    else
    {
      v71 = 0;
    }

    v15 += uregex_group(regexp, v48, v71, (v79 - v15) & ~((v79 - v15) >> 31), status);
    v62 = *status;
    if (*status == U_BUFFER_OVERFLOW_ERROR)
    {
      v62 = U_ZERO_ERROR;
      goto LABEL_146;
    }

LABEL_147:
    v17 = v80;
LABEL_148:
    v49 = v62 < U_ILLEGAL_ARGUMENT_ERROR;
LABEL_149:
    v33 = offset;
  }

  while (v49 && offset < v9);
LABEL_153:
  if (v15 >= v18)
  {
    if (*status <= 0)
    {
      if (v15 == *destCapacity)
      {
        v73 = U_STRING_NOT_TERMINATED_WARNING;
      }

      else
      {
        v73 = U_BUFFER_OVERFLOW_ERROR;
      }

      *status = v73;
    }
  }

  else
  {
    v17[v15] = 0;
  }

  if (v15 >= 1)
  {
    v74 = *destCapacity;
    if (*destCapacity >= 1)
    {
      v75 = *destBuf;
      if (v15 >= v18)
      {
        v76 = 0;
        *destBuf = &v75[v18];
      }

      else
      {
        *destBuf = &v75[v15];
        v76 = v74 - v15;
      }

      *destCapacity = v76;
    }
  }

  if ((v78 & 1) == 0 && *status <= 0)
  {
    v26 = U_BUFFER_OVERFLOW_ERROR;
LABEL_35:
    *status = v26;
  }

LABEL_36:
  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

int32_t uregex_appendTail_0(URegularExpression *regexp, UChar **destBuf, int32_t *destCapacity, UErrorCode *status)
{
  v8 = *status;
  if (destCapacity)
  {
    v9 = v8 == U_BUFFER_OVERFLOW_ERROR;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (!v9)
  {
    if (v8 <= U_ZERO_ERROR)
    {
      if (!regexp)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    }

LABEL_12:
    LODWORD(v11) = 0;
    return v11;
  }

  if (*destCapacity)
  {
    goto LABEL_12;
  }

  *status = U_ZERO_ERROR;
  if (!regexp)
  {
LABEL_30:
    LODWORD(v11) = 0;
    v13 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_31:
    *status = v13;
    return v11;
  }

LABEL_14:
  if (*regexp != 1919252592)
  {
    goto LABEL_30;
  }

  v12 = *(regexp + 6);
  if (!v12 && !*(regexp + 60))
  {
    LODWORD(v11) = 0;
    v13 = U_REGEX_INVALID_STATE;
    goto LABEL_31;
  }

  LODWORD(v11) = 0;
  v13 = U_ILLEGAL_ARGUMENT_ERROR;
  if (!destBuf || !destCapacity)
  {
    goto LABEL_31;
  }

  LODWORD(v11) = 0;
  v14 = *destBuf;
  v15 = *destCapacity;
  v16 = v15 > 0 && v14 == 0;
  if (v16 || (v15 & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v17 = *(regexp + 5);
  v18 = *(v17 + 130);
  if (v12)
  {
    v19 = 144;
    if (!*(v17 + 130))
    {
      v19 = 152;
    }

    v20 = *(v17 + v19);
    if (v20 == -1)
    {
      LODWORD(v20) = 0;
    }

    else
    {
      v21 = *(v17 + 32);
      if (v21->pFuncs->mapNativeIndexToUTF16)
      {
        statusa = U_ZERO_ERROR;
        LODWORD(v20) = utext_extract(v21, 0, v20, 0, 0, &statusa);
      }
    }

    v23 = *(regexp + 14);
    v11 = (v23 - v20);
    if (v23 != v20)
    {
      v24 = 0;
      v25 = *(regexp + 6) + 2 * v20;
      do
      {
        if (v23 == -1 && !*(v25 + 2 * v24))
        {
          *(regexp + 14) = v20 + v24;
          LODWORD(v11) = v24;
          break;
        }

        if (v24 >= v15)
        {
          if (v23 >= 1)
          {
            LODWORD(v11) = v23 - v20;
            break;
          }
        }

        else
        {
          v14[v24] = *(v25 + 2 * v24);
        }

        ++v24;
      }

      while (v11 != v24);
    }
  }

  else
  {
    if (*(v17 + 130))
    {
      v22 = *(v17 + 144);
    }

    else if (*(v17 + 152) == -1)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v17 + 152);
    }

    LODWORD(v11) = utext_extract(*(v17 + 32), v22, *(v17 + 48), *destBuf, *destCapacity, status);
  }

  if (v11 < v15)
  {
    v14[v11] = 0;
    *destBuf += v11;
    v26 = *destCapacity - v11;
LABEL_59:
    *destCapacity = v26;
    goto LABEL_60;
  }

  if (v11 == v15)
  {
    v27 = U_STRING_NOT_TERMINATED_WARNING;
  }

  else
  {
    v27 = U_BUFFER_OVERFLOW_ERROR;
  }

  *status = v27;
  if (*destBuf)
  {
    v26 = 0;
    *destBuf += v15;
    goto LABEL_59;
  }

LABEL_60:
  if ((v10 & 1) == 0 && *status <= 0)
  {
    v13 = U_BUFFER_OVERFLOW_ERROR;
    goto LABEL_31;
  }

  return v11;
}

int32_t uregex_split(URegularExpression *regexp, UChar *destBuf, int32_t destCapacity, int32_t *requiredCapacity, UChar *destFields[], int32_t destFieldsCapacity, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (regexp && *regexp == 1919252592)
  {
    if (!*(regexp + 6) && !*(regexp + 60))
    {
      v10 = U_REGEX_INVALID_STATE;
      goto LABEL_18;
    }

    if (destBuf)
    {
      v7 = 1;
    }

    else
    {
      v7 = destCapacity <= 0;
    }

    v8 = !v7;
    if ((destCapacity & 0x80000000) == 0 && (v8 & 1) == 0 && destFields && destFieldsCapacity > 0)
    {
      return sub_195418C5C(regexp, destBuf, destCapacity, requiredCapacity, destFields, destFieldsCapacity, status);
    }
  }

  v10 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_18:
  *status = v10;
  return 0;
}

uint64_t sub_195418C5C(icu::RegexMatcher **a1, uint64_t a2, int a3, _DWORD *a4, void *a5, int a6, UErrorCode *a7)
{
  icu::RegexMatcher::reset(a1[5]);
  v14 = a1[5];
  v41 = *(v14 + 6);
  if (!v41)
  {
    return 0;
  }

  v37 = a4;
  ut = *(v14 + 4);
  v15 = icu::RegexMatcher::groupCount(v14);
  status = U_ZERO_ERROR;
  v40 = a6 - 1;
  v36 = a6;
  v16 = a6 - 2;
  if (a6 < 2)
  {
    v19 = 0;
    LODWORD(v18) = 0;
    nativeStart = 0;
LABEL_26:
    v31 = v37;
    v32 = v36;
    if (v41 > nativeStart)
    {
      if (v19 != v40)
      {
        v18 = (a5[v40] - *a5) >> 1;
      }

      if (a2)
      {
        v33 = (a2 + 2 * v18);
      }

      else
      {
        v33 = 0;
      }

      a5[v40] = v33;
      LODWORD(v18) = v18 + utext_extract(ut, nativeStart, v41, v33, (a3 - v18) & ~((a3 - v18) >> 31), a7) + 1;
      v19 = v40;
    }
  }

  else
  {
    v17 = v15;
    nativeStart = 0;
    LODWORD(v18) = 0;
    v19 = 0;
    v38 = a5;
    v20 = a6 - 1;
    while (1)
    {
      v21 = icu::RegexMatcher::find(a1[5]);
      if (a2)
      {
        v22 = (a2 + 2 * v18);
      }

      else
      {
        v22 = 0;
      }

      a5[v19] = v22;
      if (!v21)
      {
        LODWORD(v18) = v18 + utext_extract(ut, nativeStart, v41, v22, (a3 - v18) & ~((a3 - v18) >> 31), a7) + 1;
        v31 = v37;
        v32 = v36;
        goto LABEL_43;
      }

      v23 = utext_extract(ut, nativeStart, *(a1[5] + 17), v22, (a3 - v18) & ~((a3 - v18) >> 31), &status);
      if (status == U_BUFFER_OVERFLOW_ERROR)
      {
        status = U_ZERO_ERROR;
      }

      else
      {
        *a7 = status;
      }

      LODWORD(v18) = v18 + v23 + 1;
      nativeStart = *(a1[5] + 18);
      if (v19 == v20 || v17 < 1)
      {
        v28 = v19;
      }

      else
      {
        v24 = &a5[v19];
        v25 = 1;
        do
        {
          v26 = (a2 + 2 * v18);
          v24[v25] = v26;
          status = U_ZERO_ERROR;
          v27 = uregex_group(a1, v25, v26, (a3 - v18) & ~((a3 - v18) >> 31), &status);
          if (status == U_BUFFER_OVERFLOW_ERROR)
          {
            status = U_ZERO_ERROR;
          }

          else
          {
            *a7 = status;
          }

          LODWORD(v18) = v18 + v27 + 1;
          v28 = v19 + 1;
          if (v16 == v19)
          {
            break;
          }

          ++v19;
        }

        while (v25++ < v17);
      }

      if (nativeStart == v41)
      {
        break;
      }

      v19 = v28 + 1;
      v20 = v40;
      a5 = v38;
      if (v28 + 1 >= v40)
      {
        goto LABEL_26;
      }
    }

    a5 = v38;
    if (v18 >= a3)
    {
      if (v28 >= v40)
      {
        v19 = v28;
      }

      else
      {
        v19 = v28 + 1;
      }
    }

    else
    {
      v34 = (a2 + 2 * v18);
      *v34 = 0;
      if (v28 >= v40)
      {
        v19 = v28;
      }

      else
      {
        v19 = v28 + 1;
      }

      v38[v19] = v34;
    }

    v31 = v37;
    v32 = v36;
    LODWORD(v18) = v18 + 1;
  }

LABEL_43:
  v30 = (v19 + 1);
  if (v30 < v32)
  {
    bzero(&a5[v19 + 1], 8 * (v32 - v19 - 2) + 8);
  }

  if (v31)
  {
    *v31 = v18;
  }

  if (v18 > a3)
  {
    *a7 = U_BUFFER_OVERFLOW_ERROR;
  }

  return v30;
}

int32_t uregex_splitUText(URegularExpression *regexp, UText *destFields[], int32_t destFieldsCapacity, UErrorCode *status)
{
  v7 = *(regexp + 5);
  v8 = icu::RegexMatcher::inputText(v7);

  return icu::RegexMatcher::split(v7, v8, destFields, destFieldsCapacity, status);
}

URegularExpression *__cdecl uregex_openC(const char *pattern, uint32_t flags, UParseError *pe, UErrorCode *status)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*status <= 0)
  {
    if (pattern)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      icu::UnicodeString::UnicodeString(&v13, pattern);
      if ((BYTE8(v13) & 0x11) != 0)
      {
        v8 = 0;
      }

      else if ((BYTE8(v13) & 2) != 0)
      {
        v8 = (&v13 | 0xA);
      }

      else
      {
        v8 = *(&v14 + 1);
      }

      if ((SWORD4(v13) & 0x8000u) == 0)
      {
        v9 = WORD4(v13) >> 5;
      }

      else
      {
        v9 = HIDWORD(v13);
      }

      v4 = uregex_open(v8, v9, flags, pe, status);
      icu::UnicodeString::~UnicodeString(v10, &v13);
    }

    else
    {
      v4 = 0;
      *status = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

_OWORD *uregion_getAvailable(uint64_t a1, icu::Region *a2)
{
  Available = icu::Region::getAvailable(a1, a2);

  return uenum_openFromStringEnumeration(Available, a2);
}

_OWORD *uregion_getContainedRegions(icu::Region *a1, UErrorCode *a2)
{
  ContainedRegions = icu::Region::getContainedRegions(a1, a2);

  return uenum_openFromStringEnumeration(ContainedRegions, a2);
}

_OWORD *uregion_getContainedRegionsOfType(icu::Region *a1, uint64_t a2, icu::Region *a3)
{
  ContainedRegions = icu::Region::getContainedRegions(a1, a2, a3);

  return uenum_openFromStringEnumeration(ContainedRegions, a3);
}

_OWORD *uregion_getPreferredValues(icu::Region *a1, UErrorCode *a2)
{
  PreferredValues = icu::Region::getPreferredValues(a1, a2);

  return uenum_openFromStringEnumeration(PreferredValues, a2);
}

void *usearch_open(const UChar *a1, int32_t a2, const UChar *a3, int32_t a4, char *a5, uint64_t a6, const icu::Locale *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  if (a5)
  {
    v14 = ucol_open(a5, a7);
    result = usearch_openFromCollator(a1, a2, a3, a4, v14, a6, a7);
    if (result && *a7 < 1)
    {
      *(result + 3168) = 1;
    }

    else
    {
      if (v14)
      {
        ucol_close(v14);
      }

      return 0;
    }
  }

  else
  {
    result = 0;
    *a7 = 1;
  }

  return result;
}

void *usearch_openFromCollator(const UChar *a1, int32_t a2, const UChar *a3, int32_t a4, char **a5, uint64_t a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  if (!a1 || !a3 || !a5)
  {
    goto LABEL_24;
  }

  if (ucol_getAttribute(a5, 7, a7) == 17)
  {
    v7 = 0;
    v16 = 16;
LABEL_25:
    *a7 = v16;
    return v7;
  }

  if (*a7 > 0)
  {
    return 0;
  }

  if (!qword_1ED4433E8)
  {
    qword_1ED4433E8 = icu::Normalizer2Factory::getNFCImpl(a7, v15);
    sub_195400588(0x1Cu, sub_19541BD1C);
    if (*a7 > 0)
    {
      return 0;
    }
  }

  if (a4 == -1)
  {
    a4 = u_strlen(a3);
  }

  if (a2 == -1)
  {
    a2 = u_strlen(a1);
  }

  if (a4 < 1 || a2 <= 0)
  {
LABEL_24:
    v7 = 0;
    v16 = 1;
    goto LABEL_25;
  }

  v17 = malloc_type_malloc(0xC78uLL, 0x1070040F621840AuLL);
  v7 = v17;
  if (!v17)
  {
    v16 = 7;
    goto LABEL_25;
  }

  v17[391] = a5;
  Strength = ucol_getStrength(a5);
  *(v7 + 793) = Strength;
  if (Strength == 1)
  {
    v19 = -256;
  }

  else
  {
    v19 = -1;
  }

  if (!Strength)
  {
    v19 = -65536;
  }

  *(v7 + 794) = v19;
  *(v7 + 3184) = ucol_getAttribute(a5, 1, a7) == 20;
  *(v7 + 795) = ucol_getVariableTop(a5, a7);
  v7[392] = icu::Normalizer2::getNFDInstance(a7, v20);
  if (*a7 >= 1)
  {
LABEL_23:
    free(v7);
    return 0;
  }

  v22 = malloc_type_malloc(0x30uLL, 0x10700405B6EB62AuLL);
  *v7 = v22;
  if (!v22)
  {
    *a7 = 7;
    goto LABEL_23;
  }

  *v22 = a3;
  v22[2] = a4;
  v7[1] = a1;
  *(v7 + 4) = a2;
  v7[3] = 0;
  v7[133] = 0;
  *(v22 + 2) = 0;
  *(v22 + 3) = a6;
  if (a6)
  {
    ubrk_setText(a6, a3, a4, a7);
    v22 = *v7;
  }

  *(v7 + 3168) = 0;
  *(v22 + 4) = 0xFFFFFFFFLL;
  v7[395] = 0;
  v7[393] = ucol_openElements(a5, a3, a4, a7);
  v7[394] = 0;
  if (*a7 >= 1 || (v23 = *v7, *(v23 + 12) = 0, *(v23 + 40) = 257, sub_195419600(v7, a7), *a7 >= 1))
  {
    usearch_close(v7);
    return 0;
  }

  return v7;
}

void usearch_close(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2 != a1 + 32 && v2 != 0)
    {
      free(v2);
    }

    v4 = *(a1 + 133);
    if (v4)
    {
      v5 = v4 == a1 + 1072;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      free(v4);
    }

    v6 = *(a1 + 394);
    if (v6)
    {
      v7 = sub_195404574(v6);
      MEMORY[0x19A8B2600](v7, 0x1020C40993AB78ALL);
    }

    ucol_closeElements(*(a1 + 393));
    ucol_closeElements(*(a1 + 395));
    if (a1[3168])
    {
      v8 = *(a1 + 391);
      if (v8)
      {
        ucol_close(v8);
      }
    }

    v9 = *a1;
    if (*(*a1 + 16))
    {
      ubrk_close(*(*a1 + 16));
      v9 = *a1;
    }

    free(v9);

    free(a1);
  }
}

uint64_t sub_195419600(uint64_t result, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v23[11] = v2;
    v23[12] = v3;
    v5 = result;
    if (*(result + 3172))
    {
      v6 = *(result + 8);
      v7 = *(result + 16);
      v23[0] = v6;
      *(result + 3120) = sub_19541BD2C(qword_1ED4433E8, v23, &v6[v7]) >> 8;
      v8 = v7 - 1;
      if ((v6[v7 - 1] & 0xFC00) == 0xDC00 && v7 >= 2)
      {
        if ((v6[v7 - 2] & 0xFC00) == 0xD800)
        {
          v8 = (v7 - 2);
        }

        else
        {
          v8 = v8;
        }
      }

      v23[0] = &v6[v8];
      v10 = sub_19541BD2C(qword_1ED4433E8, v23, &v6[v7]);
    }

    else
    {
      v10 = 0;
      *(v5 + 3120) = 0;
    }

    *(v5 + 3121) = v10;
    v11 = *(v5 + 1064);
    if (v11)
    {
      if (v11 != (v5 + 1072))
      {
        free(v11);
      }

      *(v5 + 1064) = 0;
    }

    v12 = *(v5 + 16);
    v13 = *(v5 + 3160);
    if (v13)
    {
      result = ucol_setText(*(v5 + 3160), *(v5 + 8), *(v5 + 16), a2);
    }

    else
    {
      result = ucol_openElements(*(v5 + 3128), *(v5 + 8), *(v5 + 16), a2);
      v13 = result;
      *(v5 + 3160) = result;
    }

    if (*a2 <= 0)
    {
      v14 = *(v5 + 24);
      if (v14 != (v5 + 32) && v14)
      {
        free(v14);
      }

      result = ucol_next(v13, a2);
      if (result != -1)
      {
        v15 = 0;
        v22 = v12 + 1;
        v16 = 256;
        v17 = (v5 + 32);
        while (1)
        {
          if (*a2 > 0)
          {
            LODWORD(v20) = v15;
            v21 = v17;
            goto LABEL_50;
          }

          v18 = *(v5 + 3176) & result;
          if (*(v5 + 3184))
          {
            if (*(v5 + 3180) > v18)
            {
              if (*(v5 + 3172) <= 2)
              {
                goto LABEL_35;
              }

              v18 &= 0xFFFF0000;
            }
          }

          else if (*(v5 + 3172) >= 3 && v18 == 0)
          {
            v18 = 0xFFFF;
            goto LABEL_37;
          }

          if (!v18)
          {
LABEL_35:
            v20 = v15;
            v21 = v17;
            goto LABEL_46;
          }

LABEL_37:
          result = ucol_getOffset(v13);
          v20 = (v15 + 1);
          if (v20 == v16)
          {
            v16 = v22 + v16 - result;
            result = malloc_type_malloc((4 * v16), 0x100004052888210uLL);
            if (!result)
            {
              *a2 = U_MEMORY_ALLOCATION_ERROR;
              return result;
            }

            if (*a2 > 0)
            {
              return result;
            }

            v21 = result;
            v15 = v15;
            result = memcpy(result, v17, 4 * v15);
          }

          else
          {
            v15 = v15;
            v21 = v17;
          }

          v21[v15] = v18;
          if (*a2 > 0)
          {
            return result;
          }

          if (v17 != v21 && v17 != (v5 + 32))
          {
            free(v17);
          }

LABEL_46:
          result = ucol_next(v13, a2);
          v17 = v21;
          v15 = v20;
          if (result == -1)
          {
            goto LABEL_50;
          }
        }
      }

      LODWORD(v20) = 0;
      v21 = (v5 + 32);
LABEL_50:
      v21[v20] = 0;
      *(v5 + 24) = v21;
      *(v5 + 20) = v20;
    }
  }

  return result;
}

double usearch_setOffset(uint64_t *a1, uint64_t a2, UErrorCode *a3)
{
  if (a1 && *a3 <= 0)
  {
    v4 = *a1;
    if ((a2 & 0x80000000) != 0 || *(v4 + 8) < a2)
    {
      *a3 = U_INDEX_OUTOFBOUNDS_ERROR;
    }

    else
    {
      ucol_setOffset(a1[393], a2, a3);
      v4 = *a1;
    }

    *&result = 0xFFFFFFFFLL;
    *(v4 + 32) = 0xFFFFFFFFLL;
    *(v4 + 41) = 0;
  }

  return result;
}

uint64_t usearch_getOffset(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Offset = ucol_getOffset(a1[393]);
  if (Offset < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = Offset;
  }

  if (Offset > *(*a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t usearch_setAttribute(uint64_t result, int a2, int a3, int *a4)
{
  if (result && *a4 <= 0)
  {
    if (a2 == 2)
    {
      if ((a3 - 3) <= 1)
      {
        *(*result + 14) = a3;
        return result;
      }

      *(*result + 14) = 0;
    }

    else if (a2 == 1)
    {
      *(*result + 13) = a3 == 1;
    }

    else if (a2)
    {
      *a4 = 1;
    }

    else
    {
      *(*result + 12) = a3 == 1;
    }
  }

  if (a3 == 5)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t usearch_getAttribute(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v2 = *(*a1 + 13);
      return v2 != 0;
    }

    if (!a2)
    {
      v2 = *(*a1 + 12);
      return v2 != 0;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(*a1 + 14);
  if (((v4 - 3) & 0xFFFE) != 0)
  {
    return 2;
  }

  return v4;
}

uint64_t usearch_getMatchedStart(uint64_t a1)
{
  if (a1)
  {
    return *(*a1 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t usearch_getMatchedText(uint64_t *a1, void *__dst, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1 || a3 < 0 || !__dst && a3)
  {
    *a4 = 1;
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  v10 = *(*a1 + 32);
  if (v10 == -1)
  {
    u_terminateUChars(__dst, a3, 0, a4);
    return 0xFFFFFFFFLL;
  }

  v11 = *(v9 + 36);
  if (v11 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = *(v9 + 36);
  }

  if (v12 >= 1)
  {
    memcpy(__dst, (*v9 + 2 * v10), (2 * v12));
    v11 = *(*a1 + 36);
  }

  return u_terminateUChars(__dst, a3, v11, a4);
}

uint64_t usearch_getMatchedLength(uint64_t a1)
{
  if (a1)
  {
    return *(*a1 + 36);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t usearch_setBreakIterator(uint64_t result, uint64_t a2, UErrorCode *a3)
{
  if (result && *a3 <= 0)
  {
    v3 = *result;
    *(*result + 24) = a2;
    if (a2)
    {
      return ubrk_setText(a2, *v3, *(v3 + 8), a3);
    }
  }

  return result;
}

uint64_t usearch_getBreakIterator(uint64_t result)
{
  if (result)
  {
    return *(*result + 24);
  }

  return result;
}

uint64_t usearch_setText(uint64_t result, UChar *s, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v5 = a3;
    if (a3 && (v6 = result) != 0 && s && a3 > -2)
    {
      if (a3 == -1)
      {
        v5 = u_strlen(s);
      }

      v8 = *v6;
      *v8 = s;
      *(v8 + 8) = v5;
      ucol_setText(*(v6 + 3144), s, v5, a4);
      v9 = *v6;
      *(v9 + 32) = 0xFFFFFFFFLL;
      *(v9 + 41) = 1;
      v10 = *(v9 + 24);
      if (v10)
      {
        ubrk_setText(v10, s, v5, a4);
        v9 = *v6;
      }

      result = *(v9 + 16);
      if (result)
      {

        return ubrk_setText(result, s, v5, a4);
      }
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return result;
}

uint64_t *usearch_getText(uint64_t *result, _DWORD *a2)
{
  if (result)
  {
    v2 = *result;
    *a2 = *(*result + 8);
    return *v2;
  }

  return result;
}

uint64_t usearch_setCollator(uint64_t result, char **a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (a2)
    {
      v5 = result;
      if (result)
      {
        v6 = *(result + 3152);
        if (v6)
        {
          v7 = sub_195404574(v6);
          MEMORY[0x19A8B2600](v7, 0x1020C40993AB78ALL);
        }

        *(v5 + 3152) = 0;
        ucol_closeElements(*(v5 + 3144));
        ucol_closeElements(*(v5 + 3160));
        *(v5 + 3160) = 0;
        *(v5 + 3144) = 0;
        if (*(v5 + 3168))
        {
          v8 = *(v5 + 3128);
          if (v8 != a2)
          {
            ucol_close(v8);
            *(v5 + 3168) = 0;
          }
        }

        *(v5 + 3128) = a2;
        Strength = ucol_getStrength(a2);
        *(v5 + 3172) = Strength;
        if (Strength == 1)
        {
          v10 = -256;
        }

        else
        {
          v10 = -1;
        }

        if (!Strength)
        {
          v10 = -65536;
        }

        *(v5 + 3176) = v10;
        v11 = *(*v5 + 16);
        if (v11)
        {
          ubrk_close(v11);
          *(*v5 + 16) = 0;
        }

        *(v5 + 3184) = ucol_getAttribute(a2, 1, a3) == 20;
        *(v5 + 3180) = ucol_getVariableTop(a2, a3);
        *(v5 + 3144) = ucol_openElements(a2, **v5, *(*v5 + 8), a3);
        *(v5 + 3160) = ucol_openElements(a2, *(v5 + 8), *(v5 + 16), a3);

        return sub_195419600(v5, a3);
      }
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t usearch_getCollator(uint64_t result)
{
  if (result)
  {
    return *(result + 3128);
  }

  return result;
}

uint64_t usearch_setPattern(uint64_t result, UChar *s, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  v5 = result;
  if (!result || !s)
  {
    goto LABEL_10;
  }

  if (a3 == -1)
  {
    result = u_strlen(s);
    a3 = result;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_10:
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(v5 + 8) = s;
  *(v5 + 16) = a3;

  return sub_195419600(v5, a4);
}

uint64_t usearch_getPattern(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    *a2 = *(result + 16);
    return *(result + 8);
  }

  return result;
}

uint64_t usearch_first(uint64_t *a1, UErrorCode *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(*a1 + 40) = 1;
  usearch_setOffset(a1, 0, a2);
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  return usearch_next(a1, a2);
}

uint64_t usearch_next(uint64_t *a1, UErrorCode *a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1 || *a2 > 0)
  {
    return result;
  }

  Offset = ucol_getOffset(a1[393]);
  v6 = *a1;
  v7 = *(*a1 + 8);
  if (Offset < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = Offset;
  }

  if (Offset > v7)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  *(v6 + 41) = 0;
  if (*(v6 + 40))
  {
    if (v9 == v7 || !*(v6 + 12) && *(v6 + 8) != -1 && *(v6 + 9) + v9 > v7)
    {
      v16 = 0;
      v6[4] = 0xFFFFFFFFLL;
      ucol_setOffset(a1[393], v7, &v16);
      if (*a2 <= 0 && v16 >= 1)
      {
        *a2 = v16;
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(v6 + 40) = 1;
    result = *(v6 + 8);
    if (result != -1)
    {
      return result;
    }
  }

  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 5))
  {
    v12 = *(v6 + 8);
    if (v12 != -1)
    {
      v13 = *v6;
      v9 = (v12 + 1);
      *(v6 + 8) = v9;
      v14 = (*(v13 + 2 * v12) & 0xFC00) != 0xD800 || v9 == v7;
      if (v14 || (*(v13 + 2 * v9) & 0xFC00) != 0xDC00)
      {
LABEL_33:
        *(v6 + 9) = 0;
        ucol_setOffset(a1[393], v9, a2);
        if (*(v6 + 8) == v7)
        {
          *(v6 + 8) = -1;
        }

        goto LABEL_39;
      }

      v9 = (v12 + 2);
    }

    *(v6 + 8) = v9;
    goto LABEL_33;
  }

  v10 = *(v6 + 9);
  if (v10 < 1)
  {
    *(v6 + 8) = v9 - 1;
  }

  else
  {
    if (*(v6 + 12))
    {
      v11 = (v9 + 1);
    }

    else
    {
      v11 = (v10 + v9);
    }

    ucol_setOffset(a1[393], v11, a2);
  }

  sub_19541A554(a1, a2);
LABEL_39:
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *(v6 + 8);
  if (v15 == -1)
  {
    v15 = *(v6 + 2);
  }

  ucol_setOffset(a1[393], v15, a2);
  return *(v6 + 8);
}

uint64_t usearch_following(uint64_t *a1, uint64_t a2, UErrorCode *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(*a1 + 40) = 1;
  usearch_setOffset(a1, a2, a3);
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  return usearch_next(a1, a3);
}

uint64_t usearch_last(uint64_t *a1, UErrorCode *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  *(v4 + 40) = 0;
  usearch_setOffset(a1, *(v4 + 8), a2);
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  return usearch_previous(a1, a2);
}

uint64_t usearch_previous(unint64_t *a1, UErrorCode *a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && *a2 <= 0)
  {
    v5 = *a1;
    if (*(*a1 + 41))
    {
      v6 = *(v5 + 8);
      *(v5 + 40) = 0;
      ucol_setOffset(a1[393], v6, a2);
    }

    else
    {
      Offset = ucol_getOffset(a1[393]);
      if (Offset < 0)
      {
        v8 = -1;
      }

      else
      {
        v8 = Offset;
      }

      if (Offset > *(*a1 + 8))
      {
        LODWORD(v6) = -1;
      }

      else
      {
        LODWORD(v6) = v8;
      }
    }

    result = *(v5 + 32);
    if (*(v5 + 40))
    {
      *(v5 + 40) = 0;
      if (result != -1)
      {
        return result;
      }
    }

    else
    {
      if (v6)
      {
        v9 = result == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v16 = 0;
        v10 = *a1;
        *(v10 + 32) = 0xFFFFFFFFLL;
        if (*(v10 + 40))
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        ucol_setOffset(a1[393], v11, &v16);
        if (*a2 <= 0 && v16 >= 1)
        {
          *a2 = v16;
        }

        return 0xFFFFFFFFLL;
      }
    }

    if (*a2 <= 0)
    {
      if (*(a1 + 5))
      {
        sub_19541A620(a1, a2);
      }

      else
      {
        v12 = result == -1 ? v6 : result;
        *(v5 + 32) = v12;
        if (v12)
        {
          v13 = *v5;
          v14 = (v12 - 1);
          *(v5 + 32) = v14;
          if (v12 >= 2 && (*(v13 + 2 * v14) & 0xFC00) == 56320 && (*(v13 + 2 * v12 - 4) & 0xFC00) == 0xD800)
          {
            *(v5 + 32) = v12 - 2;
            v14 = (v12 - 2);
          }

          ucol_setOffset(a1[393], v14, a2);
          *(v5 + 36) = 0;
        }

        else
        {
          sub_19541A4E0(a1, a2);
        }
      }

      if (*a2 <= 0)
      {
        return *(v5 + 32);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t usearch_preceding(uint64_t *a1, uint64_t a2, UErrorCode *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(*a1 + 40) = 0;
  usearch_setOffset(a1, a2, a3);
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  return usearch_previous(a1, a3);
}

unint64_t sub_19541A4E0(uint64_t *a1, int *a2)
{
  v7 = 0;
  v3 = *a1;
  *(v3 + 32) = 0xFFFFFFFFLL;
  v4 = a1[393];
  if (*(v3 + 40))
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  result = ucol_setOffset(v4, v5, &v7);
  if (*a2 <= 0 && v7 >= 1)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_19541A554(uint64_t *a1, UErrorCode *a2)
{
  if (*a2 < 1 && (Offset = ucol_getOffset(a1[393]), v10 = -1, v11 = -1, usearch_search(a1, Offset, &v11, &v10, a2)))
  {
    v7 = *a1;
    v8 = v10 - v11;
    *(v7 + 32) = v11;
    *(v7 + 36) = v8;
    return 1;
  }

  else
  {
    v12 = 0;
    v4 = *a1;
    *(v4 + 32) = 0xFFFFFFFFLL;
    if (*(v4 + 40))
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    ucol_setOffset(a1[393], v5, &v12);
    if (*a2 <= 0 && v12 >= 1)
    {
      *a2 = v12;
    }

    return 0;
  }
}

uint64_t sub_19541A620(uint64_t a1, UErrorCode *a2)
{
  if (*a2 >= 1)
  {
    goto LABEL_2;
  }

  v6 = *a1;
  if (*(*a1 + 12))
  {
    v7 = *(v6 + 32);
    if (v7 != -1)
    {
      Offset = (v7 + *(v6 + 36) - 1);
      goto LABEL_20;
    }

    sub_19541AE40(a1, a2);
    if (!sub_19541BCA8(a1, a2))
    {
      goto LABEL_2;
    }

    if (*(a1 + 1056) > 1)
    {
      v10 = 0;
      do
      {
        if (sub_19540487C(*(a1 + 3152), 0, 0, a2) == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *(a1 + 1056) - 1);
    }

    if (*a2 >= 1)
    {
      goto LABEL_2;
    }
  }

  Offset = ucol_getOffset(*(a1 + 3144));
LABEL_20:
  v13 = -1;
  v14 = -1;
  if (usearch_searchBackwards(a1, Offset, &v14, &v13, a2))
  {
    v11 = *a1;
    v12 = v13 - v14;
    *(v11 + 32) = v14;
    *(v11 + 36) = v12;
    return 1;
  }

LABEL_2:
  v15 = 0;
  v4 = *a1;
  *(v4 + 32) = 0xFFFFFFFFLL;
  if (*(v4 + 40))
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  ucol_setOffset(*(a1 + 3144), v5, &v15);
  if (*a2 <= 0 && v15 >= 1)
  {
    *a2 = v15;
  }

  return 0;
}

double usearch_reset(uint64_t a1)
{
  if (a1)
  {
    v13 = 0;
    Strength = ucol_getStrength(*(a1 + 3128));
    v3 = *(a1 + 3172);
    v4 = v3 > 2 || Strength <= 2;
    v6 = 0;
    if (v4 && (v3 < 3 || Strength > 2))
    {
      v6 = 1;
    }

    v7 = ucol_getStrength(*(a1 + 3128));
    *(a1 + 3172) = v7;
    if (v7 == 1)
    {
      v8 = -256;
    }

    else
    {
      v8 = -1;
    }

    if (!v7)
    {
      v8 = -65536;
    }

    if (*(a1 + 3176) != v8)
    {
      v6 = 0;
      *(a1 + 3176) = v8;
    }

    Attribute = ucol_getAttribute(*(a1 + 3128), 1, &v13);
    if (*(a1 + 3184) != (Attribute == 20))
    {
      v6 = 0;
      *(a1 + 3184) = Attribute == 20;
    }

    VariableTop = ucol_getVariableTop(*(a1 + 3128), &v13);
    if (*(a1 + 3180) == VariableTop)
    {
      if (v6)
      {
LABEL_27:
        ucol_setText(*(a1 + 3144), **a1, *(*a1 + 8), &v13);
        v11 = *a1;
        *&result = 0xFFFFFFFFLL;
        v11[4] = 0xFFFFFFFFLL;
        *(v11 + 3) = 0;
        *(v11 + 20) = 257;
        return result;
      }
    }

    else
    {
      *(a1 + 3180) = VariableTop;
    }

    sub_195419600(a1, &v13);
    goto LABEL_27;
  }

  return result;
}

uint64_t usearch_search(uint64_t a1, uint64_t a2, int *a3, int *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0 && *(a1 + 20) && *(*a1 + 8) >= a2 && *(a1 + 24))
  {
    if (!*(a1 + 1064))
    {
      sub_19541AE40(a1, a5);
    }

    ucol_setOffset(*(a1 + 3144), a2, a5);
    bzero(v60, 0x628uLL);
    sub_19541B060(v60, a1, a5);
    if (*a5 <= 0)
    {
      v52 = a3;
      v53 = a4;
      v12 = sub_19541B160(v60, 0);
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        LODWORD(v15) = -1;
        v16 = 1;
        LODWORD(v17) = -1;
        while (1)
        {
          v55 = v15;
          v18 = *(a1 + 1056);
          if (v18 < 1)
          {
            v59 = v16;
            v21 = 0;
            v22 = 0;
LABEL_27:
            v26 = v18 + v21 + v14;
            v27 = sub_19541B160(v60, v26 - 1);
            v56 = v13;
            v28 = *(v13 + 2);
            v54 = v27;
            v57 = *(v27 + 2);
            v29 = *(*a1 + 14);
            v30 = sub_19541B160(v60, v26);
            v31 = v30;
            if (v29)
            {
              v32 = *v30;
              if (*v31 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = 1;
                v17 = v28;
                v16 = v59;
LABEL_38:
                v34 = *(v31 + 2);
              }

              else
              {
                v35 = v18 + v21 + v59;
                v17 = v28;
                v16 = v59;
                while (!HIWORD(v32))
                {
                  v36 = sub_19541B218(v32, v22, *(*a1 + 14)) & 0xFFFFFFFD;
                  v33 = v36 != 0;
                  if (v36)
                  {
                    v31 = sub_19541B160(v60, v35);
                    v32 = *v31;
                    ++v35;
                    if (*v31 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      continue;
                    }
                  }

                  goto LABEL_38;
                }

                v34 = *(v31 + 2);
                v33 = v34 != *(v31 + 3);
              }
            }

            else
            {
              v34 = *(v30 + 2);
              v33 = v34 != *(v30 + 3) || *v30 == 0x7FFFFFFFFFFFFFFFLL;
              v17 = v28;
              v16 = v59;
            }

            v37 = sub_19541B2E4(a1, v17, a5) != 0 && v33;
            if (*a5 > 0)
            {
              LODWORD(v15) = v55;
              goto LABEL_84;
            }

            if (v17 == *(v56 + 3))
            {
              v37 = 0;
            }

            v38 = *a1;
            if (**a1)
            {
              v39 = v57;
              if (*(v38 + 2) <= v34 || v38[3] || !*(v31 + 3) || v34 < *(v54 + 3) || *(v31 + 3) <= v34)
              {
                v42 = 1;
              }

              else
              {
                v40 = *(a1 + 3136);
                v41 = sub_19541B34C(v38, v34);
                if ((*(*v40 + 120))(v40, v41))
                {
                  v42 = 0;
                }

                else
                {
                  if (v34 < 1)
                  {
                    v47 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v46 = **a1 + 2 * v34;
                    v47 = *(v46 - 2);
                    if (v34 != 1 && (v47 & 0xFC00) == 0xDC00)
                    {
                      v48 = *(v46 - 4);
                      v45 = (v48 & 0xFC00) == 55296;
                      v49 = v47 + (v48 << 10) - 56613888;
                      if (v45)
                      {
                        v47 = v49;
                      }

                      else
                      {
                        v47 = v47;
                      }
                    }
                  }

                  v42 = (*(**(a1 + 3136) + 128))(*(a1 + 3136), v47) == 0;
                }
              }
            }

            else
            {
              v42 = 1;
              v39 = v57;
            }

            v15 = v34;
            if (v39 < v34)
            {
              if (v39 == *(v54 + 3) && sub_19541B2E4(a1, v39, a5))
              {
                v15 = v39;
              }

              else
              {
                v43 = sub_19541B3AC(a1, v39, a5);
                if (v43 >= *(v54 + 3) && (v42 || v43 < v34))
                {
                  v15 = v43;
                }

                else
                {
                  v15 = v34;
                }
              }
            }

            if (*a5 > 0)
            {
              goto LABEL_84;
            }

            if (v42)
            {
              v44 = sub_19541B2E4(a1, v15, a5);
              v45 = v15 > v34 || v44 == 0;
              if (v45)
              {
                v37 = 0;
              }

              if (*a5 > 0)
              {
                goto LABEL_84;
              }
            }

            if (sub_19541B414(a1, v17) && (v37 & 1) != 0)
            {
              v37 = 1;
              goto LABEL_84;
            }
          }

          else
          {
            v58 = v17;
            v19 = v13;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v22 = *(*(a1 + 1064) + 8 * v20);
              v23 = sub_19541B160(v60, v21 + v14 + v20);
              v24 = *v23;
              v25 = sub_19541B218(*v23, v22, *(*a1 + 14));
              if (!v25)
              {
                break;
              }

              if (v25 >= 1)
              {
                if (v25 == 1)
                {
                  ++v21;
                }

                else
                {
                  --v21;
                }

                if (v25 == 1)
                {
                  --v20;
                }
              }

              ++v20;
              v18 = *(a1 + 1056);
              if (v20 >= v18)
              {
                v59 = v16;
                v13 = v19;
                goto LABEL_27;
              }
            }

            if (v24 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v37 = 0;
              LODWORD(v15) = v55;
              LODWORD(v17) = v58;
              goto LABEL_84;
            }

            LODWORD(v15) = v55;
            LODWORD(v17) = v58;
          }

          v13 = sub_19541B160(v60, ++v14);
          ++v16;
          if (!v13)
          {
            goto LABEL_83;
          }
        }
      }

      LODWORD(v17) = -1;
      LODWORD(v15) = -1;
LABEL_83:
      v37 = 0;
      *a5 = U_INTERNAL_PROGRAM_ERROR;
LABEL_84:
      if (*a5 >= 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = v37;
      }

      if (v5)
      {
        v50 = v15;
      }

      else
      {
        v50 = -1;
      }

      if (v52)
      {
        if (v5)
        {
          v51 = v17;
        }

        else
        {
          v51 = -1;
        }

        *v52 = v51;
      }

      if (v53)
      {
        *v53 = v50;
      }
    }

    else
    {
      v5 = 0;
    }

    if (v61 != v60)
    {
      free(v61);
    }
  }

  else
  {
    v5 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v5;
}

void *sub_19541AE40(uint64_t a1, UErrorCode *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 3160);
  if (v5)
  {
    result = ucol_setText(*(a1 + 3160), *(a1 + 8), v4, a2);
  }

  else
  {
    result = ucol_openElements(*(a1 + 3128), *(a1 + 8), v4, a2);
    v5 = result;
    *(a1 + 3160) = result;
  }

  if (*a2 <= 0)
  {
    v7 = *(a1 + 1064);
    if (v7 != (a1 + 1072) && v7 != 0)
    {
      free(v7);
    }

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_195404460(v19, v5);
    v9 = sub_19540487C(v19, 0, 0, a2);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v9;
      LODWORD(v13) = 0;
      v18 = v4 + 1;
      v14 = 256;
      v11 = (a1 + 1072);
      while (1)
      {
        v15 = v11;
        if (*a2 > 0)
        {
          v10 = v13;
          goto LABEL_26;
        }

        Offset = ucol_getOffset(v5);
        v10 = v13 + 1;
        if (v13 + 1 == v14)
        {
          v14 = v18 + v14 - Offset;
          v17 = malloc_type_malloc((8 * v14), 0x100004052888210uLL);
          if (!v17)
          {
            *a2 = U_MEMORY_ALLOCATION_ERROR;
            return sub_195404574(v19);
          }

          if (*a2 > 0)
          {
            return sub_195404574(v19);
          }

          v11 = v17;
          v13 = v13;
          memcpy(v17, v15, 8 * v13);
        }

        else
        {
          v13 = v13;
        }

        *(v11 + v13) = v12;
        if (*a2 > 0)
        {
          return sub_195404574(v19);
        }

        if (v15 != v11 && v15 != (a1 + 1072))
        {
          free(v15);
        }

        v12 = sub_19540487C(v19, 0, 0, a2);
        LODWORD(v13) = v13 + 1;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_26;
        }
      }
    }

    v10 = 0;
    v11 = (a1 + 1072);
LABEL_26:
    *(v11 + v10) = 0;
    *(a1 + 1064) = v11;
    *(a1 + 1056) = v10;
    return sub_195404574(v19);
  }

  return result;
}

uint64_t sub_19541B060(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 1536) = a1;
  *(a1 + 1568) = a2;
  v5 = *(a2 + 1056) + 32;
  *(a1 + 1544) = v5;
  if (*(*a2 + 14))
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *(a2 + 16);
      if (v7 >= 1)
      {
        v8 = &v6[v7];
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = v10 - 4352;
          v12 = (v10 - 12593) >= 0x1E && v11 >= 0x5F;
          v13 = v9 - 12645;
          if (v12 && v13 >= 0x22)
          {
            v15 = 3;
          }

          else
          {
            v15 = 8;
          }

          v5 += v15;
        }

        while (v6 < v8);
        *(a1 + 1544) = v5;
      }
    }
  }

  *(a1 + 1560) = *(a2 + 3144);
  *(a1 + 1548) = 0;
  if (sub_19541BCA8(a2, a3))
  {
    v16 = *(a1 + 1544);
    if (v16 >= 97)
    {
      v17 = malloc_type_malloc(16 * v16, 0x1000040451B5BE8uLL);
      *(a1 + 1536) = v17;
      if (!v17)
      {
        *a3 = 7;
      }
    }
  }

  return a1;
}

uint64_t *sub_19541B160(uint64_t a1, int a2)
{
  v3 = *(a1 + 1544);
  v4 = a2 % v3;
  v5 = *(a1 + 1548);
  v6 = *(a1 + 1552);
  if (v5 <= a2 && v6 > a2)
  {
    return (*(a1 + 1536) + 16 * v4);
  }

  if (v6 != a2)
  {
    return 0;
  }

  *(a1 + 1552) = a2 + 1;
  if (a2 + 1 - v5 >= v3)
  {
    *(a1 + 1548) = v5 + 1;
  }

  v10 = 0;
  v8 = *(a1 + 1536) + 16 * v4;
  v9 = sub_19540487C(*(*(a1 + 1568) + 3152), (v8 + 8), (v8 + 12), &v10);
  result = (*(a1 + 1536) + 16 * v4);
  *result = v9;
  return result;
}

uint64_t sub_19541B218(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 == a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0;
  }

  if ((HIDWORD(a1) & 0xFFFF0000) == (HIDWORD(a2) & 0xFFFF0000))
  {
    if (WORD2(a1) == WORD2(a2))
    {
      v4 = a1 & 0xFFFF0000;
      v5 = a2 & 0xFFFF0000;
      v8 = a3 == 4 && v4 == 327680 || v5 == 327680;
      v9 = v8 << 31 >> 31;
      if (v4 == v5)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v9;
      }
    }

    else if (WORD2(a1))
    {
      if (a3 != 4 || WORD2(a2))
      {
        v14 = a3 == 4 && WORD2(a1) == 5 || WORD2(a2) == 5;
        return (v14 << 31 >> 31);
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if ((a2 & 0xFFFF000000000000) == 0 && a3 == 4)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if ((a1 & 0xFFFF000000000000) != 0)
    {
      return v11;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_19541B2E4(char ***a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 1;
  }

  v4 = sub_19541BB6C(a1, a3);
  if (*a3 > 0)
  {
    return 1;
  }

  return ubrk_isBoundary(v4);
}

uint64_t sub_19541B34C(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2);
  if (v2 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  v4 = a2 + 1;
  result = *(*a1 + 2 * a2);
  if ((result & 0xFC00) == 0xD800 && v4 != v2)
  {
    v7 = *(v3 + 2 * v4);
    if ((v7 & 0xFC00) == 0xDC00)
    {
      return (v7 + (result << 10) - 56613888);
    }
  }

  return result;
}

uint64_t sub_19541B3AC(char ***a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return a2;
  }

  v5 = sub_19541BB6C(a1, a3);
  if (*a3 > 0)
  {
    return a2;
  }

  return ubrk_following(v5);
}

BOOL sub_19541B414(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 3172) == 15)
  {
    v18 = 0;
    v26 = 0u;
    v29 = 0;
    v28 = 0u;
    v27 = 0u;
    v25 = &unk_1F0935D00;
    LOWORD(v26) = 2;
    v21 = 0u;
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    v3 = *(a1 + 3136);
    v17 = **a1 + 2 * a2;
    icu::UnicodeString::UnicodeString(v19, 0, &v17);
    (*(*v3 + 24))(v3, v19, &v25, &v18);
    icu::UnicodeString::~UnicodeString(v4, v19);
    v5 = *(a1 + 3136);
    v16 = *(a1 + 8);
    v6 = *(a1 + 16);
    icu::UnicodeString::UnicodeString(v19, 0, &v16);
    (*(*v5 + 24))(v5, v19, &v20, &v18);
    icu::UnicodeString::~UnicodeString(v7, v19);
    v8 = 0;
    v9 = v18;
    if (v18 <= 0)
    {
      if (v26)
      {
        v9 = v21;
        v8 = v21 & 1;
      }

      else
      {
        v8 = 0;
        if ((v26 & 0x8000u) == 0)
        {
          v10 = v26 >> 5;
        }

        else
        {
          v10 = DWORD1(v26);
        }

        v9 = v21;
        if ((v21 & 0x8000u) == 0)
        {
          v11 = v21 >> 5;
        }

        else
        {
          v11 = DWORD1(v21);
        }

        if ((v21 & 1) == 0 && v10 == v11)
        {
          if ((v21 & 2) != 0)
          {
            v12 = &v21 + 2;
          }

          else
          {
            v12 = v22;
          }

          v8 = icu::UnicodeString::doEquals(&v25, v12, v10);
        }
      }
    }

    icu::UnicodeString::~UnicodeString(v9, &v20);
    icu::UnicodeString::~UnicodeString(v13, &v25);
  }

  else
  {
    v8 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL usearch_searchBackwards(uint64_t a1, uint64_t a2, int *a3, int *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if ((a2 & 0x80000000) != 0 || !*(a1 + 20) || *(*a1 + 8) < a2 || !*(a1 + 24))
  {
    v5 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return v5;
  }

  if (!*(a1 + 1064))
  {
    sub_19541AE40(a1, a5);
  }

  bzero(v50, 0x628uLL);
  sub_19541B060(v50, a1, a5);
  if (*(*a1 + 8) <= a2)
  {
    v45 = a4;
    ucol_setOffset(*(a1 + 3144), a2, a5);
    v13 = 0;
  }

  else
  {
    v11 = sub_19541BB6C(a1, a5);
    if (*a5 > 0)
    {
LABEL_18:
      v5 = 0;
      goto LABEL_19;
    }

    v45 = a4;
    v12 = ubrk_following(v11);
    ucol_setOffset(*(a1 + 3144), v12, a5);
    v13 = -1;
    do
    {
      ++v13;
    }

    while (*(sub_19541BBF0(v50, v13) + 2) >= a2);
  }

  if (*a5 > 0)
  {
    goto LABEL_18;
  }

  v47 = sub_19541BBF0(v50, v13);
  if (!v47)
  {
    v16 = -1;
    LODWORD(v15) = -1;
LABEL_85:
    v24 = 0;
    *a5 = U_INTERNAL_PROGRAM_ERROR;
    goto LABEL_89;
  }

  LODWORD(v15) = -1;
  v16 = -1;
  while (1)
  {
    v48 = v16;
    v46 = v15;
    v17 = *(a1 + 1056);
    if (v17 >= 1)
    {
      break;
    }

    v18 = 0;
LABEL_34:
    v23 = sub_19541BBF0(v50, v13 - 1 + v18 + v17);
    v15 = *(v23 + 2);
    v24 = sub_19541B2E4(a1, v15, a5) != 0;
    if (*a5 > 0)
    {
      goto LABEL_88;
    }

    if (v15 == *(v23 + 3))
    {
      v24 = 0;
    }

    v25 = *(v47 + 2);
    if (v13)
    {
      v26 = sub_19541BBF0(v50, v13 - 1);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 == v27 && *v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 0;
      }

      v29 = *a1;
      v49 = *(v26 + 2);
      if (**a1 && *(v29 + 2) > v28 && !v29[3] && *(v26 + 3))
      {
        v30 = 1;
        if (v27 > v28 && v28 >= *(v47 + 3))
        {
          v37 = *(a1 + 3136);
          v38 = sub_19541B34C(v29, v28);
          if ((*(*v37 + 120))(v37, v38))
          {
            v30 = 0;
          }

          else
          {
            if (v28 < 1)
            {
              v40 = 0xFFFFFFFFLL;
            }

            else
            {
              v39 = **a1 + 2 * v28;
              v40 = *(v39 - 2);
              if (v28 != 1 && (v40 & 0xFC00) == 0xDC00)
              {
                v41 = *(v39 - 4);
                v34 = (v41 & 0xFC00) == 55296;
                v42 = v40 + (v41 << 10) - 56613888;
                if (v34)
                {
                  v40 = v42;
                }

                else
                {
                  v40 = v40;
                }
              }
            }

            v30 = (*(**(a1 + 3136) + 128))(*(a1 + 3136), v40) == 0;
          }
        }
      }

      else
      {
        v30 = 1;
      }

      if (v25 < v28)
      {
        v31 = sub_19541B3AC(a1, v25, a5);
        if (v31 >= *(v47 + 3) && (v30 || v31 < v28))
        {
          v32 = v31;
        }

        else
        {
          v32 = v28;
        }

        v49 = v32;
      }

      if (v30)
      {
        v16 = v49;
        v33 = sub_19541B2E4(a1, v49, a5);
        v34 = v49 > v28 || v33 == 0;
        if (v34)
        {
          v24 = 0;
        }

        if (*a5 >= 1)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v16 = v49;
      }
    }

    else
    {
      v35 = sub_19541B3AC(a1, *(v47 + 2), a5);
      if (v35 >= a2)
      {
        v36 = a2;
      }

      else
      {
        v36 = v35;
      }

      if (v35 <= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = v36;
      }
    }

    if (sub_19541B414(a1, v15) && v24)
    {
      v24 = 1;
      goto LABEL_89;
    }

LABEL_70:
    v47 = sub_19541BBF0(v50, ++v13);
    if (!v47)
    {
      goto LABEL_85;
    }
  }

  v18 = 0;
  while (1)
  {
    v19 = *(*(a1 + 1064) + 8 * (v17 - 1));
    v20 = sub_19541BBF0(v50, v18 + v13 - v17 + *(a1 + 1056));
    v21 = *v20;
    v22 = sub_19541B218(*v20, v19, *(*a1 + 14));
    if (!v22)
    {
      break;
    }

    if (v22 < 1)
    {
      goto LABEL_30;
    }

    if (v22 != 1)
    {
      --v18;
LABEL_30:
      --v17;
      goto LABEL_31;
    }

    ++v18;
LABEL_31:
    if (v17 <= 0)
    {
      v17 = *(a1 + 1056);
      goto LABEL_34;
    }
  }

  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v15) = v46;
    v16 = v48;
    goto LABEL_70;
  }

  v24 = 0;
  LODWORD(v15) = v46;
LABEL_88:
  v16 = v48;
LABEL_89:
  v5 = *a5 < 1 && v24;
  if (v5)
  {
    v43 = v16;
  }

  else
  {
    v43 = -1;
  }

  if (a3)
  {
    if (v5)
    {
      v44 = v15;
    }

    else
    {
      v44 = -1;
    }

    *a3 = v44;
  }

  if (v45)
  {
    *v45 = v43;
  }

LABEL_19:
  if (v51 != v50)
  {
    free(v51);
  }

  return v5;
}

char *sub_19541BB6C(char ***a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = *a1;
  result = (*a1)[3];
  if (!result)
  {
    result = v4[2];
    if (!result)
    {
      LocaleByType = ucol_getLocaleByType(a1[391], 1, a2);
      result = ubrk_open(0, LocaleByType, **a1, *(*a1 + 2), a2);
      (*a1)[2] = result;
    }
  }

  return result;
}

uint64_t *sub_19541BBF0(uint64_t a1, int a2)
{
  v3 = *(a1 + 1544);
  v4 = a2 % v3;
  v5 = *(a1 + 1548);
  v6 = *(a1 + 1552);
  if (v5 <= a2 && v6 > a2)
  {
    return (*(a1 + 1536) + 16 * v4);
  }

  if (v6 != a2)
  {
    return 0;
  }

  *(a1 + 1552) = a2 + 1;
  if (a2 + 1 - v5 >= v3)
  {
    *(a1 + 1548) = v5 + 1;
  }

  v10 = 0;
  v8 = *(a1 + 1536) + 16 * v4;
  v9 = sub_1954049E0(*(*(a1 + 1568) + 3152), (v8 + 8), (v8 + 12), &v10);
  result = (*(a1 + 1536) + 16 * v4);
  *result = v9;
  return result;
}

uint64_t sub_19541BCA8(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 3152);
  if (!v4)
  {
    operator new();
  }

  sub_195404454(v4, *(a1 + 3144));
  return 1;
}

uint64_t sub_19541BD2C(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
{
  v4 = *a2;
  v6 = *a2 + 1;
  v5 = **a2;
  *a2 = v6;
  if (v5 < *(a1 + 8))
  {
    return 0;
  }

  if (!*(*(a1 + 56) + (v5 >> 8)) || ((1 << (v5 >> 5)) & *(*(a1 + 56) + (v5 >> 8))) == 0)
  {
    return 0;
  }

  if ((v5 & 0xFC00) == 0xD800 && v6 != a3)
  {
    v10 = *v6;
    if ((v10 & 0xFC00) == 0xDC00)
    {
      LODWORD(v5) = v10 + (v5 << 10) - 56613888;
      *a2 = v4 + 2;
    }
  }

  return icu::Normalizer2Impl::getFCD16FromNormData(a1, v5);
}

int *sub_19541BDC0(int *result)
{
  if (*result <= 0)
  {
    v1 = result;
    if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2)
    {
      result = icu::umtx_initImplPreInit(&dword_1EAECA4D0);
      if (result)
      {
        sub_19541BE58();
      }
    }

    if (dword_1EAECA4D4 >= 1)
    {
      *v1 = dword_1EAECA4D4;
    }
  }

  return result;
}

uint64_t uspoof_open(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4D0))
    {
      sub_19541BE58();
    }

    if (dword_1EAECA4D4 < 1)
    {
      if (*a1 <= 0)
      {
        operator new();
      }
    }

    else
    {
      *a1 = dword_1EAECA4D4;
    }
  }

  return 0;
}

uint64_t uspoof_openFromSerialized(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v5 = 1;
LABEL_10:
    *a4 = v5;
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4D0))
  {
    sub_19541BE58();
  }

  v5 = dword_1EAECA4D4;
  if (dword_1EAECA4D4 >= 1)
  {
    goto LABEL_10;
  }

  if (*a4 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t uspoof_clone(uint64_t a1, int *a2)
{
  result = sub_19541F7B4(a1, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t uspoof_close(uint64_t a1)
{
  v2 = 0;
  result = sub_19541F890(a1, &v2);
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t uspoof_setChecks(uint64_t a1, int a2, _DWORD *a3)
{
  result = sub_19541F890(a1, a3);
  if (result)
  {
    if ((a2 & 0xBFFF0000) != 0)
    {
      *a3 = 1;
    }

    else
    {
      *(result + 12) = a2;
    }
  }

  return result;
}

uint64_t uspoof_getChecks(uint64_t a1, int *a2)
{
  result = sub_19541F7B4(a1, a2);
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t uspoof_setRestrictionLevel(uint64_t a1, int a2)
{
  v4 = 0;
  result = sub_19541F890(a1, &v4);
  if (result)
  {
    *(result + 40) = a2;
    *(result + 12) |= 0x10u;
  }

  return result;
}

uint64_t uspoof_getRestrictionLevel(uint64_t a1)
{
  v3 = 0;
  v1 = sub_19541F7B4(a1, &v3);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 1610612736;
  }
}

void *uspoof_setAllowedLocales(uint64_t a1, const char *a2, UErrorCode *a3)
{
  result = sub_19541F890(a1, a3);
  if (result)
  {

    return sub_19541F894(result, a2, a3);
  }

  return result;
}

uint64_t uspoof_getAllowedLocales(uint64_t a1, uint64_t a2)
{
  result = sub_19541F890(a1, a2);
  if (result)
  {

    return sub_19541FC58(result);
  }

  return result;
}

uint64_t uspoof_getAllowedChars(uint64_t a1, int *a2)
{
  result = sub_19541F7B4(a1, a2);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t uspoof_getAllowedUnicodeSet(uint64_t a1, int *a2)
{
  result = sub_19541F7B4(a1, a2);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t uspoof_setAllowedUnicodeSet(uint64_t a1, icu::UnicodeSet *a2, _DWORD *a3)
{
  result = sub_19541F890(a1, a3);
  if (result)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      icu::UnicodeSet::clone(a2);
    }

    *a3 = 1;
  }

  return result;
}

uint64_t uspoof_check(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  return uspoof_check2(a1, a2, a3, 0, a5);
}

uint64_t uspoof_check2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (sub_19541F7B4(a1, a5))
  {
    if (a3 > -2)
    {
      memset(v15, 0, sizeof(v15));
      v14 = a2;
      icu::UnicodeString::UnicodeString(v15, a3 == -1, &v14);
      v10 = uspoof_check2UnicodeString(a1, v15, a4, a5);
      icu::UnicodeString::~UnicodeString(v11, v15);
    }

    else
    {
      v10 = 0;
      *a5 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t uspoof_check2UnicodeString(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = sub_19541F7B4(a1, a4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (!a3)
  {
    memset(v12, 0, sizeof(v12));
    sub_1954204F0(v12);
    v11 = sub_19541D640(v8, a2, v12, a4);
    sub_1954205BC(v12);
    return v11;
  }

  v9 = sub_195420554(a3, a4);
  if (!v9)
  {
    return 0;
  }

  return sub_19541D640(v8, a2, v9, a4);
}

uint64_t uspoof_checkUTF8(uint64_t a1, char *a2, int32_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  return uspoof_check2UTF8(a1, a2, a3, 0, a5);
}

uint64_t uspoof_check2UTF8(uint64_t a1, char *__s, int32_t a3, uint64_t a4, int *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    memset(v13, 0, sizeof(v13));
    if (a3 < 0)
    {
      a3 = strlen(__s);
    }

    icu::UnicodeString::fromUTF8(__s, a3, v13);
    v5 = uspoof_check2UnicodeString(a1, v13, a4, a5);
    icu::UnicodeString::~UnicodeString(v10, v13);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uspoof_areConfusable(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  sub_19541F7B4(a1, a6);
  if (*a6 <= 0)
  {
    if (a3 < -1 || a5 <= -2)
    {
      v12 = 0;
      *a6 = 1;
    }

    else
    {
      memset(v20, 0, sizeof(v20));
      v18 = a2;
      icu::UnicodeString::UnicodeString(v20, a3 == -1, &v18);
      memset(v19, 0, sizeof(v19));
      v17 = a4;
      icu::UnicodeString::UnicodeString(v19, a5 == -1, &v17);
      v12 = uspoof_areConfusableUnicodeString(a1, v20, v19, a6);
      icu::UnicodeString::~UnicodeString(v13, v19);
      icu::UnicodeString::~UnicodeString(v14, v20);
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t uspoof_areConfusableUnicodeString(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = sub_19541F7B4(a1, a4);
  if (*a4 <= 0)
  {
    v11 = v8;
    if ((*(v8 + 12) & 7) == 0)
    {
      v10 = 0;
      *a4 = 27;
      goto LABEL_8;
    }

    v33 = 0u;
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v32 = &unk_1F0935D00;
    LOWORD(v33) = 2;
    uspoof_getSkeletonUnicodeString(a1, v9, a2, &v32, a4);
    v28 = 0u;
    v29 = 0u;
    v31 = 0;
    v30 = 0u;
    v27 = &unk_1F0935D00;
    LOWORD(v28) = 2;
    uspoof_getSkeletonUnicodeString(a1, v12, a3, &v27, a4);
    v13 = *a4;
    if (v13 > 0)
    {
      goto LABEL_5;
    }

    if (v33)
    {
      v13 = v28;
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = 0;
      if ((v33 & 0x8000u) == 0)
      {
        v17 = v33 >> 5;
      }

      else
      {
        v17 = DWORD1(v33);
      }

      v13 = v28;
      if ((v28 & 0x8000u) == 0)
      {
        v18 = v28 >> 5;
      }

      else
      {
        v18 = DWORD1(v28);
      }

      if ((v28 & 1) != 0 || v17 != v18)
      {
        goto LABEL_6;
      }

      if ((v28 & 2) != 0)
      {
        v19 = &v28 + 2;
      }

      else
      {
        v19 = v29;
      }

      if (!icu::UnicodeString::doEquals(&v32, v19, v17))
      {
LABEL_5:
        v10 = 0;
LABEL_6:
        icu::UnicodeString::~UnicodeString(v13, &v27);
        icu::UnicodeString::~UnicodeString(v14, &v32);
        goto LABEL_8;
      }
    }

    memset(v25, 0, sizeof(v25));
    v26 = 0;
    icu::ScriptSet::ScriptSet(v25);
    sub_19541FDD4(v11, a2, v25, a4);
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    icu::ScriptSet::ScriptSet(v23);
    sub_19541FDD4(v11, a3, v23, a4);
    if (icu::ScriptSet::intersects(v25, v23))
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
      if (!icu::ScriptSet::isEmpty(v25))
      {
        if (icu::ScriptSet::isEmpty(v23))
        {
          v20 = 2;
        }

        else
        {
          v20 = 6;
        }
      }
    }

    v21 = *(v11 + 12);
    v22 = v20 & 6;
    if (v21)
    {
      v22 = v20;
    }

    if ((v21 & 2) == 0)
    {
      v22 &= ~2u;
    }

    if ((v21 & 4) != 0)
    {
      v10 = v22;
    }

    else
    {
      v10 = v22 & 3;
    }

    icu::ScriptSet::~ScriptSet(v23);
    icu::ScriptSet::~ScriptSet(v25);
    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t uspoof_areConfusableUTF8(uint64_t a1, const char *a2, int32_t a3, const char *a4, int32_t a5, int *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_19541F7B4(a1, a6);
  if (*a6 <= 0)
  {
    if (a3 < -1 || a5 <= -2)
    {
      v12 = 0;
      *a6 = 1;
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      if (a3 < 0)
      {
        a3 = strlen(a2);
      }

      icu::UnicodeString::fromUTF8(a2, a3, v18);
      memset(v17, 0, sizeof(v17));
      if (a5 < 0)
      {
        a5 = strlen(a4);
      }

      icu::UnicodeString::fromUTF8(a4, a5, v17);
      v12 = uspoof_areConfusableUnicodeString(a1, v18, v17, a6);
      icu::UnicodeString::~UnicodeString(v13, v17);
      icu::UnicodeString::~UnicodeString(v14, v18);
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t uspoof_getSkeletonUnicodeString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = sub_19541F7B4(a1, a5);
  if (*a5 <= 0)
  {
    v9 = v8;
    v26 = 0u;
    v27 = 0u;
    v29 = 0;
    v28 = 0u;
    v25 = &unk_1F0935D00;
    LOWORD(v26) = 2;
    (*(*qword_1EAECA4B8 + 24))(qword_1EAECA4B8, a3, &v25, a5);
    v21 = 0u;
    v22 = 0u;
    v24 = 0;
    v23 = 0u;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    v10 = (v26 >> 5);
    if ((v26 & 0x8000u) == 0)
    {
      v11 = v26 >> 5;
    }

    else
    {
      v11 = DWORD1(v26);
    }

    if (v11 >= 1)
    {
      for (i = 0; i < v11; i += v15)
      {
        v13 = icu::UnicodeString::char32At(v10, &v25, i);
        v14 = v13;
        if (v13 < 0x10000)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (!u_hasBinaryProperty(v13, UCHAR_DEFAULT_IGNORABLE_CODE_POINT))
        {
          sub_1954203B0(*(v9 + 16), v14, &v20);
        }
      }
    }

    (*(*qword_1EAECA4B8 + 24))(qword_1EAECA4B8, &v20, a4, a5);
    icu::UnicodeString::~UnicodeString(v16, &v20);
    icu::UnicodeString::~UnicodeString(v17, &v25);
  }

  v18 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t uspoof_areBidiConfusable(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, int *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v18 = a3;
  icu::UnicodeString::UnicodeString(v20, a4 == -1, &v18);
  memset(v19, 0, sizeof(v19));
  v17 = a5;
  icu::UnicodeString::UnicodeString(v19, a6 == -1, &v17);
  if (BYTE8(v20[0]) & 1) != 0 || (BYTE8(v19[0]))
  {
    v13 = 0;
    v12 = 1;
    *a7 = 1;
  }

  else
  {
    v13 = uspoof_areBidiConfusableUnicodeString(a1, a2, v20, v19, a7);
  }

  icu::UnicodeString::~UnicodeString(v12, v19);
  icu::UnicodeString::~UnicodeString(v14, v20);
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t uspoof_areBidiConfusableUnicodeString(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = sub_19541F7B4(a1, a5);
  if (*a5 <= 0)
  {
    v12 = v10;
    if ((*(v10 + 12) & 7) == 0)
    {
      v11 = 0;
      *a5 = 27;
      goto LABEL_8;
    }

    v31 = 0u;
    v34 = 0;
    v33 = 0u;
    v32 = 0u;
    v30 = &unk_1F0935D00;
    LOWORD(v31) = 2;
    uspoof_getBidiSkeletonUnicodeString(a1, a2, a3, &v30, a5);
    v26 = 0u;
    v27 = 0u;
    v29 = 0;
    v28 = 0u;
    v25 = &unk_1F0935D00;
    LOWORD(v26) = 2;
    uspoof_getBidiSkeletonUnicodeString(a1, a2, a4, &v25, a5);
    v13 = *a5;
    if (v13 > 0)
    {
      goto LABEL_5;
    }

    if (v31)
    {
      v13 = v26;
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = 0;
      if ((v31 & 0x8000u) == 0)
      {
        v17 = v31 >> 5;
      }

      else
      {
        v17 = DWORD1(v31);
      }

      v13 = v26;
      if ((v26 & 0x8000u) == 0)
      {
        v18 = v26 >> 5;
      }

      else
      {
        v18 = DWORD1(v26);
      }

      if ((v26 & 1) != 0 || v17 != v18)
      {
        goto LABEL_6;
      }

      if ((v26 & 2) != 0)
      {
        v19 = &v26 + 2;
      }

      else
      {
        v19 = v27;
      }

      if (!icu::UnicodeString::doEquals(&v30, v19, v17))
      {
LABEL_5:
        v11 = 0;
LABEL_6:
        icu::UnicodeString::~UnicodeString(v13, &v25);
        icu::UnicodeString::~UnicodeString(v14, &v30);
        goto LABEL_8;
      }
    }

    memset(v23, 0, sizeof(v23));
    v24 = 0;
    icu::ScriptSet::ScriptSet(v23);
    sub_19541FDD4(v12, a3, v23, a5);
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    icu::ScriptSet::ScriptSet(v21);
    sub_19541FDD4(v12, a4, v21, a5);
    if (icu::ScriptSet::intersects(v23, v21))
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
      if (!icu::ScriptSet::isEmpty(v23))
      {
        if (icu::ScriptSet::isEmpty(v21))
        {
          v20 = 2;
        }

        else
        {
          v20 = 6;
        }
      }
    }

    v11 = *(v12 + 12) & v20;
    icu::ScriptSet::~ScriptSet(v21);
    icu::ScriptSet::~ScriptSet(v23);
    goto LABEL_6;
  }

  v11 = 0;
LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t uspoof_areBidiConfusableUTF8(uint64_t a1, unsigned int a2, char *__s, int32_t a4, const char *a5, int a6, int *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4 < -1 || (v8 = a6, a6 <= -2))
  {
    v13 = 0;
    *a7 = 1;
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    if (a4 < 0)
    {
      a4 = strlen(__s);
    }

    icu::UnicodeString::fromUTF8(__s, a4, v19);
    memset(v18, 0, sizeof(v18));
    if (v8 < 0)
    {
      v8 = strlen(a5);
    }

    icu::UnicodeString::fromUTF8(a5, v8, v18);
    v13 = uspoof_areBidiConfusableUnicodeString(a1, a2, v19, v18, a7);
    icu::UnicodeString::~UnicodeString(v14, v18);
    icu::UnicodeString::~UnicodeString(v15, v19);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t uspoof_getBidiSkeletonUnicodeString(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a4 + 8))
  {
    v7 = 2;
  }

  else
  {
    v7 = *(a4 + 8) & 0x1E;
  }

  *(a4 + 8) = v7;
  if (a2 < 2)
  {
    v9 = a2;
    v11 = ubidi_open();
    v12 = v11;
    v13 = *(a3 + 8);
    if ((v13 & 0x11) != 0)
    {
      v14 = 0;
    }

    else if ((v13 & 2) != 0)
    {
      v14 = (a3 + 10);
    }

    else
    {
      v14 = *(a3 + 24);
    }

    v15 = v13;
    v16 = v13 >> 5;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(a3 + 12);
    }

    ubidi_setPara(v11, v14, v17, v9, 0, a5);
    if (*a5 < 1)
    {
      v25 = 0u;
      v26 = 0u;
      v28 = 0;
      v27 = 0u;
      v24 = &unk_1F0935D00;
      LOWORD(v25) = 2;
      ProcessedLength = ubidi_getProcessedLength(v12);
      Buffer = icu::UnicodeString::getBuffer(&v24, ProcessedLength);
      if (Buffer)
      {
        ubidi_writeReordered(v12, Buffer, ProcessedLength, 3u, a5);
        icu::UnicodeString::releaseBuffer(&v24, ProcessedLength);
        ubidi_close(v12);
        v21 = *a5;
        if (v21 <= 0)
        {
          uspoof_getSkeletonUnicodeString(a1, v20, &v24, a4, a5);
        }
      }

      else
      {
        *a5 = 7;
        ubidi_close(v12);
      }

      icu::UnicodeString::~UnicodeString(v21, &v24);
    }

    else
    {
      ubidi_close(v12);
    }
  }

  else
  {
    *a5 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t uspoof_checkUnicodeString(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  return uspoof_check2UnicodeString(a1, a2, 0, a4);
}

uint64_t sub_19541D640(uint64_t a1, uint64_t a2, _DWORD *a3, UErrorCode *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  sub_1954204BC(a3);
  v8 = *(a1 + 12);
  if ((v8 & 0x10) != 0)
  {
    v10 = sub_19541FFBC(a1, a2, a4);
    v9 = 16 * (v10 > *(a1 + 40));
    a3[54] = v10;
    v8 = *(a1 + 12);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_8;
    }
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  icu::UnicodeSet::UnicodeSet(&v31);
  sub_19541FEF8(a1, a2, &v31);
  if (icu::UnicodeSet::size(&v31) > 1)
  {
    v9 |= 0x80u;
  }

  icu::UnicodeSet::operator=((a3 + 4), &v31);
  icu::UnicodeSet::~UnicodeSet(v11, &v31);
  v8 = *(a1 + 12);
LABEL_8:
  if ((v8 & 0x100) != 0)
  {
    if (sub_195420188(a1, a2) != -1)
    {
      v9 |= 0x100u;
    }

    if ((*(a1 + 12) & 0x40) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v12 = 0;
  v13 = *(a2 + 8);
  v14 = v13;
  v15 = (v13 >> 5);
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a2 + 12);
  }

  while (v12 < v16)
  {
    v17 = icu::UnicodeString::char32At(v15, a2, v12);
    if (v17 < 0x10000)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v12 += v18;
    if (!icu::UnicodeSet::contains(*(a1 + 24), v17))
    {
      v9 |= 0x40u;
      break;
    }
  }

LABEL_23:
  v19 = *(a1 + 12);
  if ((v19 & 0x20) != 0)
  {
    v45 = 0u;
    v48 = 0;
    v47 = 0u;
    v46 = 0u;
    v44 = &unk_1F0935D00;
    LOWORD(v45) = 2;
    (*(*qword_1EAECA4B8 + 24))(qword_1EAECA4B8, a2, &v44, a4);
    if ((v45 & 0x8000u) == 0)
    {
      v20 = v45 >> 5;
    }

    else
    {
      v20 = DWORD1(v45);
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    icu::UnicodeSet::UnicodeSet(&v31);
    if (v20 >= 1)
    {
      v22 = 0;
      v23 = 0;
      while (2)
      {
        v24 = 1;
        while (1)
        {
          v25 = icu::UnicodeString::char32At(v21, &v44, v23);
          v26 = v25;
          v27 = v25 < 0x10000 ? 1 : 2;
          v23 += v27;
          if (u_charType(v25) != 6)
          {
            break;
          }

          if (!v22)
          {
            goto LABEL_43;
          }

          if (v24)
          {
            icu::UnicodeSet::add(&v31, v22);
          }

          if (icu::UnicodeSet::contains(&v31, v26))
          {
            v9 |= 0x20u;
            goto LABEL_46;
          }

          icu::UnicodeSet::add(&v31, v26);
          v24 = 0;
          if (v23 >= v20)
          {
            goto LABEL_46;
          }
        }

        if ((v24 & 1) == 0)
        {
          icu::UnicodeSet::clear(&v31);
        }

        v26 = 0;
LABEL_43:
        v22 = v26;
        if (v23 < v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:
    icu::UnicodeSet::~UnicodeSet(v21, &v31);
    icu::UnicodeString::~UnicodeString(v28, &v44);
    v19 = *(a1 + 12);
  }

  a3[3] = v9;
  result = sub_195420598(a3, v19);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t uspoof_getSkeleton(uint64_t a1, uint64_t a2, uint64_t a3, int a4, UChar *a5, int a6, int *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  sub_19541F7B4(a1, a7);
  if (*a7 <= 0)
  {
    if (a4 < -1 || a6 < 0 || a5 && !a6)
    {
      v13 = 0;
      *a7 = 1;
    }

    else
    {
      memset(v26, 0, sizeof(v26));
      v20 = a3;
      icu::UnicodeString::UnicodeString(v26, a4 == -1, &v20);
      v22 = 0u;
      v25 = 0;
      v24 = 0u;
      v23 = 0u;
      v21 = &unk_1F0935D00;
      LOWORD(v22) = 2;
      uspoof_getSkeletonUnicodeString(a1, v14, v26, &v21, a7);
      v19 = a5;
      icu::UnicodeString::extract(&v21, &v19, a6, a7);
      v15 = (v22 >> 5);
      if ((v22 & 0x8000u) == 0)
      {
        v13 = v15;
      }

      else
      {
        v13 = DWORD1(v22);
      }

      icu::UnicodeString::~UnicodeString(v15, &v21);
      icu::UnicodeString::~UnicodeString(v16, v26);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t uspoof_getBidiSkeleton(uint64_t a1, unsigned int a2, uint64_t a3, int a4, UChar *a5, int a6, int *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  v18 = a3;
  icu::UnicodeString::UnicodeString(v24, a4 == -1, &v18);
  v16[1] = v18;
  if (BYTE8(v24[0]))
  {
    v12 = 0;
    v13 = 1;
    *a7 = 1;
  }

  else
  {
    v20 = 0u;
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v19 = &unk_1F0935D00;
    LOWORD(v20) = 2;
    uspoof_getBidiSkeletonUnicodeString(a1, a2, v24, &v19, a7);
    v17 = a5;
    v12 = icu::UnicodeString::extract(&v19, &v17, a6, a7);
    v16[0] = v17;
    icu::UnicodeString::~UnicodeString(v16, &v19);
  }

  icu::UnicodeString::~UnicodeString(v13, v24);
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t uspoof_getSkeletonUTF8(uint64_t a1, uint64_t a2, const char *a3, int32_t a4, char *a5, int32_t a6, int *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  sub_19541F7B4(a1, a7);
  if (*a7 <= 0)
  {
    if (a4 < -1 || a6 < 0 || a5 && !a6)
    {
      v13 = 0;
      *a7 = 1;
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      if (a4 < 0)
      {
        a4 = strlen(a3);
      }

      icu::UnicodeString::fromUTF8(a3, a4, v27);
      v23 = 0u;
      v26 = 0;
      v25 = 0u;
      v24 = 0u;
      v22 = &unk_1F0935D00;
      LOWORD(v23) = 2;
      uspoof_getSkeletonUnicodeString(a1, v14, v27, &v22, a7);
      v15 = *a7;
      if (v15 <= 0)
      {
        pDestLength = 0;
        if ((v23 & 0x11) != 0)
        {
          v16 = 0;
        }

        else if ((v23 & 2) != 0)
        {
          v16 = &v23 + 1;
        }

        else
        {
          v16 = v24;
        }

        if ((v23 & 0x8000u) == 0)
        {
          v17 = v23 >> 5;
        }

        else
        {
          v17 = DWORD1(v23);
        }

        u_strToUTF8(a5, a6, &pDestLength, v16, v17, a7);
        v13 = pDestLength;
      }

      else
      {
        v13 = 0;
      }

      icu::UnicodeString::~UnicodeString(v15, &v22);
      icu::UnicodeString::~UnicodeString(v18, v27);
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t uspoof_getBidiSkeletonUTF8(uint64_t a1, unsigned int a2, char *__s, int32_t a4, char *a5, int32_t a6, int *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 > -2)
  {
    memset(v26, 0, sizeof(v26));
    if (a4 < 0)
    {
      a4 = strlen(__s);
    }

    icu::UnicodeString::fromUTF8(__s, a4, v26);
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    uspoof_getBidiSkeletonUnicodeString(a1, a2, v26, &v21, a7);
    v14 = *a7;
    if (v14 <= 0)
    {
      pDestLength = 0;
      if ((v22 & 0x11) != 0)
      {
        v15 = 0;
      }

      else if ((v22 & 2) != 0)
      {
        v15 = &v22 + 1;
      }

      else
      {
        v15 = v23;
      }

      if ((v22 & 0x8000u) == 0)
      {
        v16 = v22 >> 5;
      }

      else
      {
        v16 = DWORD1(v22);
      }

      u_strToUTF8(a5, a6, &pDestLength, v15, v16, a7);
      v8 = pDestLength;
    }

    else
    {
      v8 = 0;
    }

    icu::UnicodeString::~UnicodeString(v14, &v21);
    icu::UnicodeString::~UnicodeString(v17, v26);
  }

  else
  {
    v8 = 0;
    *a7 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

size_t uspoof_serialize(uint64_t a1, void *a2, int a3, _DWORD *a4)
{
  result = sub_19541F890(a1, a4);
  if (result)
  {
    v8 = *(result + 16);

    return sub_195420B74(v8, a2, a3, a4);
  }

  return result;
}

uint64_t uspoof_getInclusionSet(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4D0))
    {
      sub_19541BE58();
    }

    if (dword_1EAECA4D4 >= 1)
    {
      *a1 = dword_1EAECA4D4;
    }
  }

  return qword_1EAECA4C0;
}

uint64_t uspoof_getRecommendedSet(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4D0))
    {
      sub_19541BE58();
    }

    if (dword_1EAECA4D4 >= 1)
    {
      *a1 = dword_1EAECA4D4;
    }
  }

  return qword_1EAECA4C8;
}

uint64_t uspoof_getInclusionUnicodeSet(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4D0))
    {
      sub_19541BE58();
    }

    if (dword_1EAECA4D4 >= 1)
    {
      *a1 = dword_1EAECA4D4;
    }
  }

  return qword_1EAECA4C0;
}

uint64_t uspoof_getRecommendedUnicodeSet(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA4D0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4D0))
    {
      sub_19541BE58();
    }

    if (dword_1EAECA4D4 >= 1)
    {
      *a1 = dword_1EAECA4D4;
    }
  }

  return qword_1EAECA4C8;
}

uint64_t uspoof_closeCheckResult(uint64_t a1)
{
  v2 = 0;
  result = sub_195420554(a1, &v2);
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t uspoof_getCheckResultChecks(uint64_t a1, int *a2)
{
  v3 = sub_195420554(a1, a2);
  if (*a2 <= 0)
  {
    return *(v3 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t uspoof_getCheckResultRestrictionLevel(uint64_t a1, int *a2)
{
  v3 = sub_195420554(a1, a2);
  if (*a2 <= 0)
  {
    return *(v3 + 216);
  }

  else
  {
    return 1610612736;
  }
}

uint64_t uspoof_getCheckResultNumerics(uint64_t a1, int *a2)
{
  v3 = sub_195420554(a1, a2);
  if (*a2 >= 1)
  {
    return 0;
  }

  else
  {
    return v3 + 16;
  }
}

uint64_t sub_19541E380()
{
  if (qword_1EAECA4C0)
  {
    icu::UnicodeSet::~UnicodeSet(qword_1EAECA4C0);
    MEMORY[0x19A8B2600]();
  }

  qword_1EAECA4C0 = 0;
  if (qword_1EAECA4C8)
  {
    icu::UnicodeSet::~UnicodeSet(qword_1EAECA4C8);
    MEMORY[0x19A8B2600]();
  }

  qword_1EAECA4C8 = 0;
  qword_1EAECA4B8 = 0;
  atomic_store(0, &dword_1EAECA4D0);
  return 1;
}

uint64_t uspoof_openFromSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, int *a7)
{
  sub_19541BDC0(a7);
  if (*a7 <= 0)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
      *(a6 + 8) = 0;
      *(a6 + 40) = 0;
    }

    operator new();
  }

  return 0;
}

void sub_19541E544(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t *sub_19541E620(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uhash_close(a1[1]);
  return a1;
}

uint64_t sub_19541E678(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(v2 + 8);
  if (*(v2 + 8) < 0)
  {
    v4 = *(v2 + 12);
  }

  else
  {
    v4 = v3 >> 5;
  }

  v5 = *a2;
  v6 = *(*a2 + 8);
  if (*(*a2 + 8) < 0)
  {
    v7 = *(v5 + 12);
  }

  else
  {
    v7 = v6 >> 5;
  }

  if (v4 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v7)
  {
    return 1;
  }

  if ((v3 & 0x8000) != 0)
  {
    v9 = *(v2 + 12);
    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    return (v3 & 1) == 0;
  }

  v9 = v3 >> 5;
  if (v6)
  {
    return (v3 & 1) == 0;
  }

LABEL_13:
  if ((v6 & 0x8000u) == 0)
  {
    v10 = v6 >> 5;
  }

  else
  {
    v10 = *(v5 + 12);
  }

  v11 = v10 & (v10 >> 31);
  v12 = v10 & ~(v10 >> 31);
  v13 = v5 + 10;
  v14 = *(v5 + 24);
  if ((v6 & 2) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return icu::UnicodeString::doCompare(v2, 0, v9, v15, v11, v12);
}

uint64_t sub_19541E738(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v4 = uhash_get(*(a1 + 8), a2);
    if (!v4)
    {
      operator new();
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  return v4;
}

uint64_t sub_19541E838(uint64_t result, uint64_t a2, int *a3)
{
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 68) = 0u;
  if (*a3 <= 0)
  {
    *(result + 16) = uhash_open(uhash_hashLong, uhash_compareLong, 0, a3);
    operator new();
  }

  return result;
}

uint64_t sub_19541E944(uint64_t a1)
{
  free(*(a1 + 8));
  uregex_close(*(a1 + 64));
  uregex_close(*(a1 + 72));
  uhash_close(*(a1 + 16));
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = icu::UnicodeSet::~UnicodeSet(v2, v3);
    MEMORY[0x19A8B2600](v4, 0x10B1C403432821BLL);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = sub_19541E620(v8);
    MEMORY[0x19A8B2600](v9, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t sub_19541EA4C(uint64_t result, char *a2, int32_t a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  if (*a6 <= 0)
  {
    v15 = v6;
    v16 = v7;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_19541E838(v13, result, a6);
    sub_19541EB08(v13, a2, a3, a6);
    if (a4)
    {
      if (*a6 >= 1)
      {
        *a4 = 1;
        *a5 = v14;
      }
    }

    return sub_19541E944(v13);
  }

  return result;
}

UChar *sub_19541EB08(UChar *result, char *src, int32_t srcLength, UErrorCode *pErrorCode)
{
  v27 = *MEMORY[0x1E69E9840];
  pDestLength = 0;
  if (*pErrorCode <= 0)
  {
    v7 = result;
    result = u_strFromUTF8(0, 0, &pDestLength, src, srcLength, pErrorCode);
    if (*pErrorCode == U_BUFFER_OVERFLOW_ERROR)
    {
      *pErrorCode = U_ZERO_ERROR;
      result = malloc_type_malloc(2 * pDestLength + 2, 0x1000040BDFB0063uLL);
      *(v7 + 1) = result;
      if (result)
      {
        u_strFromUTF8(result, pDestLength + 1, 0, src, srcLength, pErrorCode);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        icu::UnicodeString::UnicodeString(&v23, "(?m)^[ \\t]*([0-9A-Fa-f]+)[ \\t]+;[ \\t]*([0-9A-Fa-f]+(?:[ \\t]+[0-9A-Fa-f]+)*)[ \\t]*;\\s*(?:(SL)|(SA)|(ML)|(MA))[ \\t]*(?:#.*?)?$|^([ \\t]*(?:#.*?)?)$|^(.*?)$", 0xFFFFFFFFLL, 0);
        v8 = 0;
        if ((BYTE8(v23) & 0x11) == 0)
        {
          if ((BYTE8(v23) & 2) != 0)
          {
            v8 = (&v23 | 0xA);
          }

          else
          {
            v8 = *(&v24 + 1);
          }
        }

        if ((SWORD4(v23) & 0x8000u) == 0)
        {
          v9 = WORD4(v23) >> 5;
        }

        else
        {
          v9 = HIDWORD(v23);
        }

        *(v7 + 8) = uregex_open(v8, v9, 0, 0, pErrorCode);
        v20 = "\";
        icu::UnicodeString::UnicodeString(v22, 1, &v20);
        icu::UnicodeString::operator=(&v23, v22);
        icu::UnicodeString::~UnicodeString(v10, v22);
        v11 = 0;
        if ((BYTE8(v23) & 0x11) == 0)
        {
          if ((BYTE8(v23) & 2) != 0)
          {
            v11 = (&v23 | 0xA);
          }

          else
          {
            v11 = *(&v24 + 1);
          }
        }

        if ((SWORD4(v23) & 0x8000u) == 0)
        {
          v12 = WORD4(v23) >> 5;
        }

        else
        {
          v12 = HIDWORD(v23);
        }

        *(v7 + 9) = uregex_open(v11, v12, 0, 0, pErrorCode);
        v13 = *(v7 + 1);
        if (*v13 == -257)
        {
          *v13 = 32;
        }

        uregex_setText(*(v7 + 8), v13, pDestLength, pErrorCode);
        if (!uregex_findNext(*(v7 + 8), pErrorCode))
        {
LABEL_26:
          icu::UVector::sort(**(v7 + 7), sub_19541E678, pErrorCode);
          operator new();
        }

        while (1)
        {
          ++*(v7 + 20);
          if (uregex_start(*(v7 + 8), 7, pErrorCode) < 0)
          {
            break;
          }

          if (!uregex_findNext(*(v7 + 8), pErrorCode))
          {
            goto LABEL_26;
          }
        }

        if (uregex_start(*(v7 + 8), 8, pErrorCode) < 0)
        {
          v14 = *(v7 + 1);
          v15 = uregex_start(*(v7 + 8), 1, pErrorCode);
          v16 = uregex_end(*(v7 + 8), 1, pErrorCode);
          sub_195420448(v14, v15, v16, pErrorCode);
          v17 = uregex_start(*(v7 + 8), 2, pErrorCode);
          v18 = uregex_end(*(v7 + 8), 2, pErrorCode);
          uregex_setText(*(v7 + 9), (*(v7 + 1) + 2 * v17), v18 - v17, pErrorCode);
          operator new();
        }

        *pErrorCode = U_PARSE_ERROR;
        result = icu::UnicodeString::~UnicodeString(9, &v23);
      }

      else
      {
        *pErrorCode = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19541F118(uint64_t a1, int *a2)
{
  v4 = *(*(a1 + 32) + 8);
  result = sub_195420A94(*(*a1 + 16), 4 * v4, a2);
  if (*a2 <= 0)
  {
    v6 = result;
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        *(v6 + 4 * i) = icu::UVector::elementAti(*(a1 + 32), i);
      }
    }

    v8 = *(*a1 + 16);
    v9 = *v8;
    *(v9 + 12) = v6 - *v8;
    *(v9 + 16) = v4;
    v8[4] = v6;
    v10 = *(*(a1 + 40) + 8);
    result = sub_195420A94(v8, 2 * v4, a2);
    if (*a2 <= 0)
    {
      v11 = result;
      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          *(v11 + 2 * j) = icu::UVector::elementAti(*(a1 + 40), j);
        }
      }

      v13 = *(*a1 + 16);
      v14 = *v13;
      *(v14 + 20) = v11 - *v13;
      *(v14 + 24) = v10;
      v13[5] = v11;
      v15 = *(a1 + 48);
      v16 = *(v15 + 8);
      if ((v16 & 0x8000) != 0)
      {
        v17 = *(v15 + 12);
      }

      else
      {
        v17 = v16 >> 5;
      }

      result = sub_195420A94(v13, 2 * v17 + 2, a2);
      if (*a2 <= 0)
      {
        v18 = result;
        v19 = *(a1 + 48);
        v22 = v18;
        result = icu::UnicodeString::extract(v19, &v22, v17 + 1, a2);
        v20 = *(*a1 + 16);
        v21 = *v20;
        *(v21 + 28) = v18 - *v20;
        *(v21 + 32) = v17;
        v20[6] = v18;
      }
    }
  }

  return result;
}

uint64_t *sub_19541F298(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void **sub_19541F310(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1020C403A5D3213);
  }

  return a1;
}

uint64_t sub_19541F38C(uint64_t result, int *a2)
{
  *(result + 12) = 0xFFFF;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 805306368;
  if (*a2 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19541F450(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 8) = 944111087;
  *a1 = &unk_1F0944410;
  sub_19541F38C(a1, a3);
  *(a1 + 16) = a2;
  return a1;
}

uint64_t sub_19541F4AC(UErrorCode *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAECA4E8, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAECA4E8))
  {
    if (dword_1EAECA4EC >= 1)
    {
      result = 0;
      *a1 = dword_1EAECA4EC;
      return result;
    }
  }

  else
  {
    sub_195420680(a1);
    dword_1EAECA4EC = *a1;
    icu::umtx_initImplPostInit(&dword_1EAECA4E8);
  }

  if (*a1 > 0)
  {
    return 0;
  }

  atomic_fetch_add((qword_1EAECA4E0 + 28), 1u);
  return qword_1EAECA4E0;
}

uint64_t sub_19541F570(uint64_t a1, int *a2)
{
  *(a1 + 8) = 944111087;
  *a1 = &unk_1F0944410;
  sub_19541F38C(a1, a2);
  *(a1 + 16) = sub_19541F4AC(a2);
  return a1;
}

uint64_t sub_19541F5D0(uint64_t result, uint64_t a2, int *a3)
{
  *result = &unk_1F0944410;
  *(result + 8) = 0xFFFF3845FDEFLL;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (*a3 <= 0)
  {
    *(result + 12) = *(a2 + 12);
    v3 = *(a2 + 16);
    if (v3)
    {
      atomic_fetch_add((v3 + 28), 1u);
      *(result + 16) = v3;
    }

    icu::UnicodeSet::clone(*(a2 + 24));
  }

  return result;
}

void sub_19541F69C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0944410;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_19541F724(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = icu::UnicodeSet::~UnicodeSet(a2, v4);
    MEMORY[0x19A8B2600](v5, 0x10B1C403432821BLL);
  }

  free(*(a1 + 32));
  *(a1 + 8) = 0;

  icu::UObject::~UObject(a1);
}

uint64_t sub_19541F724(uint64_t result)
{
  add = atomic_fetch_add((result + 28), 0xFFFFFFFF);
  if (result && add == 1)
  {
    sub_195420A48(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void sub_19541F77C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19541F69C(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19541F7B4(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v2 = a1;
  if (!a1)
  {
    v4 = 1;
LABEL_10:
    v2 = 0;
    *a2 = v4;
    return v2;
  }

  if (*(a1 + 8) != 944111087)
  {
    v4 = 3;
    goto LABEL_10;
  }

  v3 = *(a1 + 16);
  if (v3 && !sub_19541F82C(v3, a2))
  {
    return 0;
  }

  return v2;
}

uint64_t sub_19541F82C(uint64_t *a1, int *a2)
{
  if (*a2 <= 0)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*v3 == 944111087 && *(v3 + 4) == 2 && !*(v3 + 5) && !*(v3 + 6) && !*(v3 + 7))
      {
        return 1;
      }
    }
  }

  result = 0;
  *a2 = 3;
  return result;
}

void *sub_19541F894(uint64_t a1, const char *a2, UErrorCode *a3)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  icu::UnicodeSet::UnicodeSet(v24);
  v6 = 0;
  v7 = &a2[strlen(a2)];
  v8 = a2;
  while (2)
  {
    v9 = strchr(v8, 44);
    v10 = 1 - v8;
    do
    {
      v11 = v8;
      v12 = v10;
      v13 = *v8++;
      --v10;
    }

    while (v13 == 32);
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v7;
    }

    v15 = v14 + v12;
    v16 = (v14 - 1);
    do
    {
      if (v16 <= v11)
      {
        if (!v6)
        {
          free(*(a1 + 32));
          *(a1 + 32) = uprv_strdup("");
          operator new();
        }

        goto LABEL_17;
      }

      v17 = *v16--;
      --v15;
    }

    while (v17 == 32);
    v18 = uprv_strndup(v11, v15);
    sub_19541FB3C(v18, v18, v24, a3);
    free(v18);
    if (*a3 < 1)
    {
      v8 = v14 + 1;
    }

    else
    {
      v8 = v11;
    }

    if (*a3 <= 0)
    {
      ++v6;
      if (v8 < v7)
      {
        continue;
      }
    }

    break;
  }

LABEL_17:
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  icu::UnicodeSet::UnicodeSet(v22);
  icu::UnicodeSet::applyIntPropertyValue(v22, 4106, 0, a3);
  icu::UnicodeSet::addAll(v24, v22);
  icu::UnicodeSet::applyIntPropertyValue(v22, 4106, 1u, a3);
  icu::UnicodeSet::addAll(v24, v22);
  v19 = *a3;
  if (v19 <= 0)
  {
    icu::UnicodeSet::clone(v24);
  }

  icu::UnicodeSet::~UnicodeSet(v19, v22);
  return icu::UnicodeSet::~UnicodeSet(v20, v24);
}

void *sub_19541FB3C(int a1, char *__s, icu::UVector **a3, UErrorCode *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  result = uscript_getCode(__s, v14, 30, a4);
  if (*a4 <= 0)
  {
    if (*a4 == U_USING_DEFAULT_WARNING)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      LODWORD(v7) = result;
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      icu::UnicodeSet::UnicodeSet(v12);
      if (v7 >= 1)
      {
        v7 = v7;
        v9 = v14;
        do
        {
          v10 = *v9++;
          icu::UnicodeSet::applyIntPropertyValue(v12, 4106, v10, a4);
          icu::UnicodeSet::addAll(a3, v12);
          --v7;
        }

        while (v7);
      }

      result = icu::UnicodeSet::~UnicodeSet(v8, v12);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19541FC60(unsigned int a1, icu::ScriptSet *this, UErrorCode *a3)
{
  icu::ScriptSet::resetAll(this);
  icu::ScriptSet::setScriptExtensions(this, a1, a3);
  if (*a3 <= 0)
  {
    if (icu::ScriptSet::test(this, 0x11u, a3))
    {
      icu::ScriptSet::set(this, 0xACu, a3);
      icu::ScriptSet::set(this, 0x69u, a3);
      icu::ScriptSet::set(this, 0x77u, a3);
    }

    if (icu::ScriptSet::test(this, 0x14u, a3))
    {
      icu::ScriptSet::set(this, 0x69u, a3);
    }

    if (icu::ScriptSet::test(this, 0x16u, a3))
    {
      icu::ScriptSet::set(this, 0x69u, a3);
    }

    if (icu::ScriptSet::test(this, 0x12u, a3))
    {
      icu::ScriptSet::set(this, 0x77u, a3);
    }

    if (icu::ScriptSet::test(this, 5u, a3))
    {
      icu::ScriptSet::set(this, 0xACu, a3);
    }

    if (icu::ScriptSet::test(this, 0, a3) || icu::ScriptSet::test(this, 1u, a3))
    {

      icu::ScriptSet::setAll(this);
    }
  }
}

void sub_19541FDE4(int a1, uint64_t a2, unsigned int a3, icu::ScriptSet *this, UErrorCode *a5)
{
  icu::ScriptSet::setAll(this);
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  icu::ScriptSet::ScriptSet(v16);
  LODWORD(v10) = *(a2 + 8);
  v9 = v10;
  LODWORD(v10) = v10 >> 5;
  if (v9 >= 0)
  {
    v10 = v10;
  }

  else
  {
    v10 = *(a2 + 12);
  }

  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = icu::UnicodeString::char32At(v10, a2, v11);
      sub_19541FC60(v12, v16, a5);
      if (*a5 > 0)
      {
        break;
      }

      if (a3 == 208 || !icu::ScriptSet::test(v16, a3, a5))
      {
        icu::ScriptSet::intersect(this, v16);
      }

      v13 = v12 < 0x10000 ? 1 : 2;
      v11 += v13;
      v14 = *(a2 + 8);
      v15 = v14;
      LODWORD(v10) = v14 >> 5;
      v10 = v15 >= 0 ? v10 : *(a2 + 12);
    }

    while (v11 < v10);
  }

  icu::ScriptSet::~ScriptSet(v16);
}

icu::UnicodeSet *sub_19541FEF8(int a1, uint64_t a2, icu::UnicodeSet *this)
{
  result = icu::UnicodeSet::clear(this);
  LODWORD(v7) = *(a2 + 8);
  v6 = v7;
  LODWORD(v7) = v7 >> 5;
  if (v6 >= 0)
  {
    v7 = v7;
  }

  else
  {
    v7 = *(a2 + 12);
  }

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = icu::UnicodeString::char32At(v7, a2, v8);
      result = u_charType(v9);
      if (result == 9)
      {
        NumericValue = u_getNumericValue(v9);
        result = icu::UnicodeSet::add(this, v9 - NumericValue);
      }

      if (v9 < 0x10000)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      v8 += v11;
      v12 = *(a2 + 8);
      v13 = v12;
      LODWORD(v7) = v12 >> 5;
      if (v13 >= 0)
      {
        v7 = v7;
      }

      else
      {
        v7 = *(a2 + 12);
      }
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t sub_19541FFBC(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  if (!icu::UnicodeSet::containsAll(*(a1 + 24), a2))
  {
    return 1610612736;
  }

  v5 = *(a2 + 8);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(a2 + 12);
  }

  if (v6 < 1)
  {
    return 0x10000000;
  }

  if ((v5 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 24);
  }

  while (*v7 < 0x80u)
  {
    ++v7;
    if (!--v6)
    {
      return 0x10000000;
    }
  }

  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v9 = icu::ScriptSet::ScriptSet(v14);
  sub_19541FDE4(v9, a2, 0xD0u, v14, a3);
  if (*a3 <= 0)
  {
    if (icu::ScriptSet::isEmpty(v14))
    {
      memset(v12, 0, sizeof(v12));
      v13 = 0;
      v10 = icu::ScriptSet::ScriptSet(v12);
      sub_19541FDE4(v10, a2, 0x19u, v12, a3);
      if (*a3 <= 0)
      {
        if (icu::ScriptSet::test(v12, 0xACu, a3) || icu::ScriptSet::test(v12, 0x69u, a3) || icu::ScriptSet::test(v12, 0x77u, a3))
        {
          v8 = 805306368;
        }

        else if (icu::ScriptSet::isEmpty(v12) || icu::ScriptSet::test(v12, 8u, a3) || icu::ScriptSet::test(v12, 0xEu, a3) || icu::ScriptSet::test(v12, 6u, a3))
        {
          v8 = 1342177280;
        }

        else
        {
          v8 = 0x40000000;
        }
      }

      else
      {
        v8 = 1610612736;
      }

      icu::ScriptSet::~ScriptSet(v12);
    }

    else
    {
      v8 = 0x20000000;
    }
  }

  else
  {
    v8 = 1610612736;
  }

  icu::ScriptSet::~ScriptSet(v14);
  return v8;
}

uint64_t sub_195420188(uint64_t a1, icu::UnicodeString *this)
{
  v2 = *(this + 4);
  v3 = v2;
  LODWORD(v4) = v2 >> 5;
  if (v3 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = *(this + 3);
  }

  if (v4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = icu::UnicodeString::char32At(v4, this, v8);
    v10 = v9;
    if ((v7 & 1) != 0 && v9 == 775)
    {
      break;
    }

    CombiningClass = u_getCombiningClass(v9);
    if (CombiningClass == 230 || !CombiningClass)
    {
      v7 = sub_19542025C(a1, v10);
    }

    if (v10 < 0x10000)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v8 = (v12 + v8);
    v13 = *(this + 4);
    v14 = v13;
    LODWORD(v4) = v13 >> 5;
    if (v14 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = *(this + 3);
    }

    if (v8 >= v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v8;
}

uint64_t sub_19542025C(uint64_t a1, unsigned int c)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = 1;
  v3 = c - 105 > 3 || c == 107;
  if (v3 && c != 305 && c != 567 && !u_hasBinaryProperty(c, UCHAR_SOFT_DOTTED))
  {
    v15 = 0u;
    v16 = 0u;
    v18 = 0;
    v17 = 0u;
    v14 = &unk_1F0935D00;
    LOWORD(v15) = 2;
    sub_1954203B0(*(a1 + 16), c, &v14);
    if ((v15 & 0x8000u) == 0)
    {
      v6 = v15 >> 5;
    }

    else
    {
      v6 = DWORD1(v15);
    }

    v7 = icu::UnicodeString::moveIndex32(&v14, v6, -1);
    v9 = icu::UnicodeString::char32At(v8, &v14, v7);
    if (v9 == c || ((v10 = (v9 - 105), v10 <= 3) ? (v11 = v10 == 2) : (v11 = 1), v11 && v9 != 305 && v9 != 567 && !u_hasBinaryProperty(v9, UCHAR_SOFT_DOTTED)))
    {
      v2 = 0;
    }

    icu::UnicodeString::~UnicodeString(v10, &v14);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1954203B0(void *a1, unsigned int a2, icu::UnicodeString *this)
{
  v3 = 0;
  v4 = *(*a1 + 16);
  v5 = a1[4];
  do
  {
    v6 = (v4 + v3) / 2;
    v7 = *(v5 + 4 * v6);
    if ((v7 & 0xFFFFFF) <= a2)
    {
      if ((v7 & 0xFFFFFFu) >= a2)
      {
        goto LABEL_8;
      }

      v3 = (v4 + v3) / 2;
    }

    else
    {
      v4 = (v4 + v3) / 2;
    }
  }

  while (v4 - v3 > 1);
  v7 = *(v5 + 4 * v3);
  v6 = v3;
LABEL_8:
  if ((v7 & 0xFFFFFF) == a2)
  {

    return sub_195420BCC(a1, v6, this);
  }

  else
  {
    icu::UnicodeString::append(this, a2);
    return 1;
  }
}

uint64_t sub_195420448(uint64_t result, int a2, int a3, int *a4)
{
  if (*a4 > 0 || a2 >= a3)
  {
    return 0;
  }

  v5 = result;
  LODWORD(result) = 0;
  v6 = (v5 + 2 * a2);
  v7 = a3 - a2;
  do
  {
    v9 = *v6++;
    v8 = v9;
    if (v9 <= 0x39)
    {
      v10 = -48;
    }

    else
    {
      v10 = -55;
    }

    v11 = v10 + v8;
    v12 = v8 - 87;
    if (v11 <= 15)
    {
      v12 = v11;
    }

    result = (v12 + 16 * result);
    --v7;
  }

  while (v7);
  if (result >= 0x110000)
  {
    result = 0;
    *a4 = 9;
  }

  return result;
}

icu::UnicodeSet *sub_1954204BC(_DWORD *a1)
{
  a1[3] = 0;
  result = icu::UnicodeSet::clear((a1 + 4));
  a1[54] = -1;
  return result;
}

uint64_t sub_1954204F0(uint64_t a1)
{
  *(a1 + 8) = 657779934;
  *a1 = &unk_1F0944438;
  icu::UnicodeSet::UnicodeSet((a1 + 16));
  *(a1 + 12) = 0;
  icu::UnicodeSet::clear((a1 + 16));
  *(a1 + 216) = -1;
  return a1;
}

uint64_t sub_195420554(uint64_t result, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (result)
  {
    if (*(result + 8) == 657779934)
    {
      return result;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_195420598(uint64_t a1, int a2)
{
  if ((a2 & 0x40000000) == 0)
  {
    return *(a1 + 12);
  }

  v2 = *(a1 + 216);
  if (v2 == -1)
  {
    return *(a1 + 12);
  }

  else
  {
    return *(a1 + 12) | v2;
  }
}

void sub_1954205BC(_DWORD *a1)
{
  *a1 = &unk_1F0944438;
  icu::UnicodeSet::~UnicodeSet((a1 + 4));
  a1[2] = 0;

  icu::UObject::~UObject(a1);
}

void sub_195420614(_DWORD *a1)
{
  *a1 = &unk_1F0944438;
  icu::UnicodeSet::~UnicodeSet((a1 + 4));
  a1[2] = 0;
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_195420680(UErrorCode *a1)
{
  result = udata_openChoice(0, "cfu", "confusables", sub_195420F3C, 0, a1);
  if (*a1 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_195420768(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  atomic_store(1u, (a1 + 28));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = (a1 + 32);
  *(a1 + 48) = 0;
  if (*a3 <= 0)
  {
    *(a1 + 16) = a2;
    *a1 = udata_getMemory(a2);
    sub_19541F82C(a1, a3);
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    if (*a3 <= 0)
    {
      v6 = *a1;
      v7 = *(*a1 + 12);
      if (v7)
      {
        *v4 = v6 + v7;
      }

      v8 = *(v6 + 20);
      if (v8)
      {
        *(a1 + 40) = v6 + v8;
      }

      v9 = *(v6 + 28);
      if (v9)
      {
        *(a1 + 48) = v6 + v9;
      }
    }
  }

  return a1;
}

uint64_t sub_195420830(uint64_t a1, uint64_t a2, unsigned int a3, int *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  atomic_store(1u, (a1 + 28));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = (a1 + 32);
  *(a1 + 48) = 0;
  if (*a4 <= 0)
  {
    if (a3 <= 0x5F)
    {
      goto LABEL_5;
    }

    if (!a2)
    {
      v7 = 1;
      goto LABEL_7;
    }

    *a1 = a2;
    if (*(a2 + 8) > a3)
    {
LABEL_5:
      v7 = 3;
LABEL_7:
      *a4 = v7;
      return a1;
    }

    sub_19541F82C(a1, a4);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    if (*a4 <= 0)
    {
      v9 = *a1;
      v10 = *(*a1 + 12);
      if (v10)
      {
        *v5 = v9 + v10;
      }

      v11 = *(v9 + 20);
      if (v11)
      {
        *(a1 + 40) = v9 + v11;
      }

      v12 = *(v9 + 28);
      if (v12)
      {
        *(a1 + 48) = v9 + v12;
      }
    }
  }

  return a1;
}

uint64_t *sub_19542091C(uint64_t *a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  a1[2] = 0;
  *(a1 + 6) = 0;
  atomic_store(1u, a1 + 7);
  a1[4] = 0;
  a1[5] = 0;
  v3 = a1 + 4;
  a1[6] = 0;
  if (*a2 <= 0)
  {
    *(a1 + 8) = 1;
    v6 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    *a1 = v6;
    *(a1 + 6) = 96;
    if (v6)
    {
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = *a1;
      *v7 = 944111087;
      *(v7 + 4) = 2;
      *(*a1 + 5) = 0;
      *(*a1 + 6) = 0;
      *(*a1 + 7) = 0;
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      if (*a2 <= 0)
      {
        v8 = *a1;
        v9 = *(*a1 + 12);
        if (v9)
        {
          *v3 = v8 + v9;
        }

        v10 = *(v8 + 20);
        if (v10)
        {
          a1[5] = v8 + v10;
        }

        v11 = *(v8 + 28);
        if (v11)
        {
          a1[6] = v8 + v11;
        }
      }
    }

    else
    {
      *a2 = 7;
    }
  }

  return a1;
}

uint64_t sub_195420A48(uint64_t a1)
{
  if (*(a1 + 8))
  {
    free(*a1);
  }

  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    udata_close(v2);
  }

  *(a1 + 16) = 0;
  return a1;
}

char *sub_195420A94(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    abort();
  }

  v6 = (a2 + 15) & 0xFFFFFFF0;
  v7 = *(a1 + 24);
  v8 = (v7 + v6);
  *(a1 + 24) = v8;
  v9 = malloc_type_realloc(*a1, v8, 0x1000040565EDBD2uLL);
  *a1 = v9;
  v9[2] = *(a1 + 24);
  bzero(v9 + v7, v6);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v10 = *a1;
  if (*a3 <= 0)
  {
    v11 = v10[3];
    if (v11)
    {
      *(a1 + 32) = v10 + v11;
    }

    v12 = v10[5];
    if (v12)
    {
      *(a1 + 40) = v10 + v12;
    }

    v13 = v10[7];
    if (v13)
    {
      *(a1 + 48) = v10 + v13;
    }
  }

  return v10 + v7;
}

size_t sub_195420B74(const void **a1, void *__dst, int a3, _DWORD *a4)
{
  v4 = *(*a1 + 2);
  if (v4 <= a3)
  {
    memcpy(__dst, *a1, v4);
  }

  else
  {
    *a4 = 15;
  }

  return v4;
}

uint64_t sub_195420BCC(void *a1, int a2, uint64_t a3)
{
  v3 = HIBYTE(*(a1[4] + 4 * a2));
  if (v3)
  {
    icu::UnicodeString::doAppend(a3, a1[6] + 2 * *(a1[5] + 2 * a2), 0, (v3 + 1));
  }

  else
  {
    v5 = *(a1[5] + 2 * a2);
    icu::UnicodeString::doAppend(a3, &v5, 0, 1);
  }

  return (v3 + 1);
}

uint64_t uspoof_swap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || (v12 = a3, a3 < -1) || a3 >= 1 && !a4)
  {
    result = 0;
    v13 = 1;
LABEL_20:
    *a5 = v13;
    return result;
  }

  v14 = *(a2 + 12);
  if (__PAIR64__(*(a2 + 13), v14) != 0x6600000043 || *(a2 + 14) != 117 || *(a2 + 15) != 32 || *(a2 + 16) != 2 || *(a2 + 17) || *(a2 + 18) || *(a2 + 19))
  {
    v38 = *(a2 + 18);
    v39 = *(a2 + 19);
    v36 = *(a2 + 16);
    v37 = *(a2 + 17);
    v34 = *(a2 + 14);
    v35 = *(a2 + 15);
    v15 = "uspoof_swap(): data format %02x.%02x.%02x.%02x (format version %02x %02x %02x %02x) is not recognized\n";
    v33 = v14;
LABEL_19:
    udata_printError(a1, v15, a3, a4, a5, a6, a7, a8, v33);
    result = 0;
    v13 = 16;
    goto LABEL_20;
  }

  v16 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = (a2 + v16);
  if ((*(a1 + 16))(*v17) != 944111087 || (*(a1 + 16))(*(v17 + 2)) <= 0x5F)
  {
    v15 = "uspoof_swap(): Spoof Data header is invalid.\n";
    goto LABEL_19;
  }

  v18 = (*(a1 + 16))(*(v17 + 2));
  v40 = v18 + v16;
  if ((v12 & 0x80000000) == 0)
  {
    if (v40 > v12)
    {
      udata_printError(a1, "uspoof_swap(): too few bytes (%d after ICU Data header) for spoof data.\n", v19, v20, v21, v22, v23, v24, v18);
      result = 0;
      v13 = 8;
      goto LABEL_20;
    }

    v25 = a4 + v16;
    if (a2 != a4)
    {
      bzero(a4 + v16, v18);
    }

    v26 = (*(a1 + 16))(*(v17 + 3));
    v27 = (*(a1 + 16))(*(v17 + 4));
    (*(a1 + 56))(a1, &v17[v26], (4 * v27), &v25[v26], a5);
    v28 = (*(a1 + 16))(*(v17 + 5));
    v29 = (*(a1 + 16))(*(v17 + 6));
    (*(a1 + 48))(a1, &v17[v28], (2 * v29), &v25[v28], a5);
    v30 = (*(a1 + 16))(*(v17 + 7));
    v31 = (*(a1 + 16))(*(v17 + 8));
    (*(a1 + 48))(a1, &v17[v30], (2 * v31), &v25[v30], a5);
    v32 = (*(a1 + 16))(*v17);
    (*(a1 + 40))(v25, v32);
    if (a2 != a4)
    {
      *(v25 + 1) = *(v17 + 1);
    }

    (*(a1 + 56))(a1, v17 + 2, 88, v25 + 8, a5);
  }

  return v40;
}

uint64_t sub_195420F3C(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*a4 < 0x14u || *(a4 + 4) || *(a4 + 5) || *(a4 + 8) != 67 || *(a4 + 9) != 102 || *(a4 + 10) != 117 || *(a4 + 11) != 32 || *(a4 + 12) != 2)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = *(a4 + 4);
  }

  return 1;
}

uint64_t sub_195420FB0()
{
  if (qword_1EAECA4E0)
  {
    sub_19541F724(qword_1EAECA4E0);
    qword_1EAECA4E0 = 0;
    atomic_store(0, &dword_1EAECA4E8);
  }

  return 1;
}

void *icu::UTF16CollationIterator::UTF16CollationIterator(uint64_t a1, void *a2, uint64_t a3)
{
  result = icu::CollationIterator::CollationIterator(a1, a2);
  *result = &unk_1F09444F0;
  result[49] = a3;
  result[50] = a3 + a2[50] - a2[49];
  v6 = a2[51];
  if (v6)
  {
    v7 = a3 + v6 - a2[49];
  }

  else
  {
    v7 = 0;
  }

  result[51] = v7;
  return result;
}

{
  result = icu::CollationIterator::CollationIterator(a1, a2);
  *result = &unk_1F09444F0;
  result[49] = a3;
  result[50] = a3 + a2[50] - a2[49];
  v6 = a2[51];
  if (v6)
  {
    v7 = a3 + v6 - a2[49];
  }

  else
  {
    v7 = 0;
  }

  result[51] = v7;
  return result;
}

void icu::UTF16CollationIterator::~UTF16CollationIterator(icu::UTF16CollationIterator *this@<X0>, void *a2@<X8>)
{
  icu::CollationIterator::~CollationIterator(this, a2);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::UTF16CollationIterator::operator==(uint64_t a1, uint64_t a2)
{
  result = icu::CollationIterator::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 400) - *(a1 + 392) == *(a2 + 400) - *(a2 + 392);
  }

  return result;
}

uint64_t icu::UTF16CollationIterator::resetToOffset(icu::UTF16CollationIterator *this, int a2)
{
  result = icu::CollationIterator::reset(this);
  *(this + 50) = *(this + 49) + 2 * a2;
  return result;
}

uint64_t icu::UTF16CollationIterator::handleNextCE32(icu::UTF16CollationIterator *this, int *a2, UErrorCode *a3)
{
  v3 = *(this + 50);
  if (v3 == *(this + 51))
  {
    *a2 = -1;
    return 192;
  }

  else
  {
    v4 = *v3;
    *(this + 50) = v3 + 1;
    *a2 = v4;
    return *(*(*(this + 1) + 16) + 4 * ((v4 & 0x1F) + 4 * *(**(this + 1) + ((v4 >> 4) & 0xFFE))));
  }
}

uint64_t icu::UTF16CollationIterator::handleGetTrailSurrogate(icu::UTF16CollationIterator *this)
{
  v1 = *(this + 50);
  if (v1 == *(this + 51))
  {
    return 0;
  }

  result = *v1;
  if ((result & 0xFC00) == 0xDC00)
  {
    *(this + 50) = v1 + 1;
  }

  return result;
}

uint64_t icu::UTF16CollationIterator::foundNULTerminator(icu::UTF16CollationIterator *this)
{
  if (*(this + 51))
  {
    return 0;
  }

  v2 = *(this + 50) - 2;
  *(this + 50) = v2;
  *(this + 51) = v2;
  return 1;
}

uint64_t icu::UTF16CollationIterator::nextCodePoint(icu::UTF16CollationIterator *this, UErrorCode *a2)
{
  v2 = *(this + 50);
  v3 = *(this + 51);
  if (v2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = *v2;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = result == 0;
  }

  if (v6)
  {
    *(this + 51) = v2;
    return 0xFFFFFFFFLL;
  }

  v7 = v2 + 1;
  *(this + 50) = v2 + 1;
  if ((result & 0xFC00) == 0xD800 && v7 != v3)
  {
    v9 = *v7;
    if ((v9 & 0xFC00) == 0xDC00)
    {
      *(this + 50) = v2 + 2;
      return (v9 + (result << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::UTF16CollationIterator::previousCodePoint(icu::UTF16CollationIterator *this, UErrorCode *a2)
{
  v3 = *(this + 49);
  v2 = *(this + 50);
  if (v2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(v2 - 2);
  *(this + 50) = v2 - 2;
  if (v2 - 2 != v3 && (result & 0xFC00) == 56320)
  {
    v9 = *(v2 - 4);
    v7 = v2 - 4;
    v8 = v9;
    if ((v9 & 0xFC00) == 0xD800)
    {
      *(this + 50) = v7;
      return (result + (v8 << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::UTF16CollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = *(this + 400);
    v3 = *(this + 408);
    v5 = a2 + 1;
    while (v4 != v3)
    {
      v6 = *v4;
      if (!v3 && !*v4)
      {
        *(this + 408) = v4;
        return this;
      }

      v7 = v4 + 1;
      *(this + 400) = v4 + 1;
      v8 = (v6 & 0xFC00) != 0xD800 || v7 == v3;
      if (!v8 && (*v7 & 0xFC00) == 0xDC00)
      {
        v7 = v4 + 2;
        *(this + 400) = v4 + 2;
      }

      --v5;
      v4 = v7;
      if (v5 <= 1)
      {
        return this;
      }
    }
  }

  return this;
}

uint64_t icu::UTF16CollationIterator::backwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = *(this + 392);
    v4 = *(this + 400);
    v5 = a2 + 1;
    do
    {
      if (v4 == v3)
      {
        break;
      }

      v6 = v4 - 2;
      v7 = *(v4 - 2);
      *(this + 400) = v4 - 2;
      if (v4 - 2 != v3 && (v7 & 0xFC00) == 0xDC00)
      {
        v9 = *(v4 - 4);
        v8 = v4 - 4;
        if ((v9 & 0xFC00) == 0xD800)
        {
          *(this + 400) = v8;
          v6 = v8;
        }
      }

      --v5;
      v4 = v6;
    }

    while (v5 > 1);
  }

  return this;
}

uint64_t icu::FCDUTF16CollationIterator::FCDUTF16CollationIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = icu::CollationIterator::CollationIterator(a1, a2);
  v6[49] = 0;
  v6[50] = 0;
  v6[51] = 0;
  v6[52] = a3;
  *v6 = &unk_1F0944580;
  v6[53] = a3 + *(a2 + 424) - *(a2 + 416);
  v7 = *(a2 + 432);
  v8 = *(a2 + 440);
  v9 = a3 + v7 - *(a2 + 416);
  if (!v7)
  {
    v9 = 0;
  }

  v6[54] = v9;
  v10 = a3 + v8 - *(a2 + 416);
  if (!v8)
  {
    v10 = 0;
  }

  v11 = *(a2 + 448);
  v6[55] = v10;
  v6[56] = v11;
  icu::UnicodeString::UnicodeString((v6 + 57), (a2 + 456));
  v12 = *(a2 + 520);
  *(a1 + 520) = v12;
  v13 = *(a2 + 392);
  if (v12 || v13 == *(a2 + 424))
  {
    v17 = *(a2 + 408);
    v16 = *(a2 + 416);
    v18 = a3 + v13 - v16;
    v19 = a3 + *(a2 + 400) - v16;
    *(a1 + 392) = v18;
    *(a1 + 400) = v19;
    v20 = a3 + v17 - *(a2 + 416);
    if (!v17)
    {
      v20 = 0;
    }
  }

  else
  {
    v14 = *(a1 + 464);
    if ((v14 & 0x11) != 0)
    {
      v15 = 0;
    }

    else if ((v14 & 2) != 0)
    {
      v15 = a1 + 466;
    }

    else
    {
      v15 = *(a1 + 480);
    }

    *(a1 + 392) = v15;
    *(a1 + 400) = v15 + *(a2 + 400) - *(a2 + 392);
    if ((v14 & 0x8000) != 0)
    {
      v21 = *(a1 + 468);
    }

    else
    {
      v21 = v14 >> 5;
    }

    v20 = v15 + 2 * v21;
  }

  *(a1 + 408) = v20;
  return a1;
}

void icu::FCDUTF16CollationIterator::~FCDUTF16CollationIterator(icu::FCDUTF16CollationIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0944580;
  icu::UnicodeString::~UnicodeString(a2, (this + 456));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F0944580;
  icu::UnicodeString::~UnicodeString(a2, (this + 456));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F0944580;
  icu::UnicodeString::~UnicodeString(a2, (this + 456));
  icu::CollationIterator::~CollationIterator(this, v3);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::FCDUTF16CollationIterator::operator==(uint64_t a1, uint64_t a2)
{
  result = icu::CollationIterator::operator==(a1, a2);
  if (result)
  {
    if (*(a1 + 520) == *(a2 + 520))
    {
      if (*(a1 + 520))
      {
LABEL_4:
        v5 = *(a1 + 400) - *(a1 + 416);
        v6 = *(a2 + 400) - *(a2 + 416);
        return v5 == v6;
      }

      v7 = *(a1 + 392);
      v8 = *(a1 + 424);
      v9 = *(a2 + 392);
      v10 = *(a2 + 424);
      if ((v7 == v8) != (v9 != v10))
      {
        if (v7 == v8)
        {
          goto LABEL_4;
        }

        if (v8 - *(a1 + 416) == v10 - *(a2 + 416))
        {
          v5 = *(a1 + 400) - v7;
          v6 = *(a2 + 400) - v9;
          return v5 == v6;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t icu::FCDUTF16CollationIterator::resetToOffset(icu::FCDUTF16CollationIterator *this, int a2)
{
  result = icu::CollationIterator::reset(this);
  v5 = *(this + 52) + 2 * a2;
  *(this + 53) = v5;
  *(this + 49) = v5;
  *(this + 50) = v5;
  *(this + 51) = *(this + 55);
  *(this + 520) = 1;
  return result;
}

unint64_t icu::FCDUTF16CollationIterator::getOffset(icu::FCDUTF16CollationIterator *this)
{
  if (*(this + 520) || (v4 = *(this + 49), v2 = *(this + 53), v4 == v2))
  {
    v1 = 400;
  }

  else
  {
    if (*(this + 50) == v4)
    {
      return (v2 - *(this + 52)) >> 1;
    }

    v1 = 432;
  }

  v2 = *(this + v1);
  return (v2 - *(this + 52)) >> 1;
}

uint64_t icu::FCDUTF16CollationIterator::handleNextCE32(icu::FCDUTF16CollationIterator *this, int *a2, UErrorCode *a3)
{
  if (*(this + 520) <= 0)
  {
    v6 = *(this + 520);
    v7 = (this + 400);
    do
    {
      if (!v6)
      {
        v8 = *(this + 50);
        if (v8 != *(this + 51))
        {
          goto LABEL_13;
        }
      }

      icu::FCDUTF16CollationIterator::switchToForward(this);
      v6 = *(this + 520);
    }

    while (*(this + 520) <= 0);
  }

  v9 = *(this + 50);
  v10 = *(this + 51);
  if (v9 != v10)
  {
    v12 = v9 + 1;
    v11 = *v9;
    v7 = (this + 400);
    *(this + 50) = v9 + 1;
    *a2 = v11;
    if (v11 < 0xC0)
    {
      return *(*(*(this + 1) + 16) + 4 * ((v11 & 0x1F) + 4 * *(**(this + 1) + 2 * (v11 >> 5))));
    }

    if (!icu::CollationFCD::tcccIndex[v11 >> 5])
    {
      return *(*(*(this + 1) + 16) + 4 * ((v11 & 0x1F) + 4 * *(**(this + 1) + 2 * (v11 >> 5))));
    }

    if (((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v11 >> 5]] >> v11) & 1) == 0)
    {
      return *(*(*(this + 1) + 16) + 4 * ((v11 & 0x1F) + 4 * *(**(this + 1) + 2 * (v11 >> 5))));
    }

    if ((v11 & 0xFFFFFF01) != 0xF01)
    {
      if (v12 == v10)
      {
        return *(*(*(this + 1) + 16) + 4 * ((v11 & 0x1F) + 4 * *(**(this + 1) + 2 * (v11 >> 5))));
      }

      v15 = *v12;
      if (v15 < 0x300 || !icu::CollationFCD::lcccIndex[v15 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v15 >> 5]] >> v15) & 1) == 0)
      {
        return *(*(*(this + 1) + 16) + 4 * ((v11 & 0x1F) + 4 * *(**(this + 1) + 2 * (v11 >> 5))));
      }
    }

    *(this + 50) = v9;
    if (icu::FCDUTF16CollationIterator::nextSegment(this, a3))
    {
      v8 = *v7;
LABEL_13:
      v13 = *v8;
      LODWORD(v11) = v13;
      *v7 = v8 + 1;
      *a2 = v13;
      return *(*(*(this + 1) + 16) + 4 * ((v11 & 0x1F) + 4 * *(**(this + 1) + 2 * (v11 >> 5))));
    }
  }

  *a2 = -1;
  return 192;
}

uint64_t icu::FCDUTF16CollationIterator::nextSegment(icu::FCDUTF16CollationIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v16[7] = v2;
  v16[8] = v3;
  v7 = 0;
  v8 = *(this + 50);
  v16[0] = v8;
  v9 = *(this + 55);
  while (1)
  {
    v10 = sub_19541BD2C(*(this + 56), v16, v9);
    if (v10 <= 0xFF)
    {
      if (v8 != *(this + 50))
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v11 = v10 >> 8 < v7 || v10 == 33156;
    if (v11 || v10 == 33154)
    {
      break;
    }

LABEL_14:
    v7 = v10;
    v8 = v16[0];
    v9 = *(this + 55);
    if (v10)
    {
      v13 = v16[0] == v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_19:
      *(this + 54) = v8;
      *(this + 51) = v8;
LABEL_24:
      *(this + 520) = 0;
      return 1;
    }
  }

  do
  {
    v14 = v16[0];
    v15 = *(this + 55);
  }

  while (v16[0] != v15 && sub_19541BD2C(*(this + 56), v16, v15) > 0xFF);
  result = icu::FCDUTF16CollationIterator::normalize(this, *(this + 50), v14, a2);
  if (result)
  {
    *(this + 50) = *(this + 49);
    goto LABEL_24;
  }

  return result;
}

uint64_t icu::FCDUTF16CollationIterator::switchToForward(uint64_t this)
{
  if ((*(this + 520) & 0x80000000) == 0)
  {
    if (*(this + 392) != *(this + 424))
    {
      v1 = *(this + 432);
      *(this + 424) = v1;
      *(this + 392) = v1;
      *(this + 400) = v1;
    }

    goto LABEL_6;
  }

  v2 = *(this + 400);
  *(this + 424) = v2;
  *(this + 392) = v2;
  if (v2 == *(this + 432))
  {
LABEL_6:
    *(this + 408) = *(this + 440);
    v3 = 1;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:
  *(this + 520) = v3;
  return this;
}

uint64_t icu::FCDUTF16CollationIterator::foundNULTerminator(icu::FCDUTF16CollationIterator *this)
{
  if (*(this + 51))
  {
    return 0;
  }

  v2 = *(this + 50) - 2;
  *(this + 55) = v2;
  *(this + 50) = v2;
  *(this + 51) = v2;
  return 1;
}

unint64_t icu::FCDUTF16CollationIterator::nextCodePoint(icu::FCDUTF16CollationIterator *this, UErrorCode *a2)
{
  if (*(this + 520) <= 0)
  {
    v4 = *(this + 520);
    v5 = (this + 400);
    do
    {
      if (!v4)
      {
        v6 = *(this + 50);
        if (v6 != *(this + 51))
        {
          goto LABEL_13;
        }
      }

      icu::FCDUTF16CollationIterator::switchToForward(this);
      v4 = *(this + 520);
    }

    while (*(this + 520) <= 0);
  }

  v7 = *(this + 50);
  v8 = *(this + 51);
  if (v7 == v8)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (this + 400);
  v10 = v7 + 1;
  result = *v7;
  *(this + 50) = v7 + 1;
  if (result >= 0xC0)
  {
    if (!icu::CollationFCD::tcccIndex[result >> 5])
    {
      goto LABEL_16;
    }

    if (((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[result >> 5]] >> result) & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((result & 0xFFFFFF01) != 0xF01)
    {
      if (v10 == v8)
      {
        goto LABEL_16;
      }

      v13 = *v10;
      if (v13 < 0x300 || !icu::CollationFCD::lcccIndex[v13 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v13 >> 5]] >> v13) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    *(this + 50) = v7;
    if (icu::FCDUTF16CollationIterator::nextSegment(this, a2))
    {
      v6 = *v5;
LABEL_13:
      v11 = *v6;
      v10 = v6 + 1;
      result = v11;
      *v5 = v10;
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  if (!result)
  {
    if (v8)
    {
      return 0;
    }

    *(this + 55) = v7;
    result = 0xFFFFFFFFLL;
    *(this + 50) = v7;
    *(this + 51) = v7;
    return result;
  }

LABEL_16:
  if ((result & 0xFC00) == 0xD800 && v10 != *(this + 51))
  {
    v12 = *v10;
    if ((v12 & 0xFC00) == 0xDC00)
    {
      *(this + 50) = v10 + 1;
      return (v12 + (result << 10) - 56613888);
    }
  }

  return result;
}

unint64_t icu::FCDUTF16CollationIterator::previousCodePoint(icu::FCDUTF16CollationIterator *this, UErrorCode *a2)
{
  if ((*(this + 520) & 0x80000000) == 0)
  {
    v4 = *(this + 520);
    v5 = (this + 400);
    do
    {
      if (!v4)
      {
        v6 = *(this + 50);
        if (v6 != *(this + 49))
        {
          goto LABEL_13;
        }
      }

      icu::FCDUTF16CollationIterator::switchToBackward(this);
      v4 = *(this + 520);
    }

    while ((*(this + 520) & 0x80000000) == 0);
  }

  v8 = *(this + 49);
  v7 = *(this + 50);
  if (v7 == v8)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (this + 400);
  v10 = v7 - 2;
  result = *(v7 - 2);
  *(this + 50) = v7 - 2;
  if (result >= 0x300)
  {
    if (icu::CollationFCD::lcccIndex[result >> 5])
    {
      if ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[result >> 5]] >> result))
      {
        if (result & 0xFFFFFF01) == 0xF01 || v10 != v8 && (v15 = *(v7 - 4), v15 >= 0xC0) && icu::CollationFCD::tcccIndex[v15 >> 5] && ((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v15 >> 5]] >> v15))
        {
          *(this + 50) = v7;
          if (icu::FCDUTF16CollationIterator::previousSegment(this, a2))
          {
            v6 = *v5;
LABEL_13:
            v11 = *(v6 - 2);
            v10 = v6 - 2;
            result = v11;
            *v5 = v10;
            goto LABEL_14;
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

LABEL_14:
  if ((result & 0xFC00) == 0xDC00 && v10 != *(this + 49))
  {
    v14 = *(v10 - 2);
    v12 = v10 - 2;
    v13 = v14;
    if ((v14 & 0xFC00) == 0xD800)
    {
      *(this + 50) = v12;
      return (result + (v13 << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::FCDUTF16CollationIterator::previousSegment(icu::FCDUTF16CollationIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  LOBYTE(v7) = 0;
  v8 = *(this + 50);
  *v15 = v8;
  v9 = *(this + 52);
  while (1)
  {
    v10 = sub_195422090(*(this + 56), v9, v15);
    if (!v10)
    {
      if (v8 != *(this + 50))
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v7 && v10 > v7)
    {
      break;
    }

    if (v10 == 33156 || v10 == 33154)
    {
      break;
    }

LABEL_14:
    v7 = v10 >> 8;
    v8 = *v15;
    v9 = *(this + 52);
    if (v10 < 0x100 || *v15 == v9)
    {
LABEL_19:
      *(this + 53) = v8;
      *(this + 49) = v8;
LABEL_25:
      *(this + 520) = 0;
      return 1;
    }
  }

  do
  {
    v14 = *v15;
    if (v10 < 0x100u)
    {
      break;
    }

    v13 = *(this + 52);
    if (*v15 == v13)
    {
      break;
    }

    v10 = sub_195422090(*(this + 56), v13, v15);
  }

  while (v10);
  result = icu::FCDUTF16CollationIterator::normalize(this, v14, *(this + 50), a2);
  if (result)
  {
    *(this + 50) = *(this + 51);
    goto LABEL_25;
  }

  return result;
}

uint64_t icu::FCDUTF16CollationIterator::switchToBackward(uint64_t this)
{
  if (*(this + 520) < 1)
  {
    v3 = *(this + 424);
    if (*(this + 392) != v3)
    {
      *(this + 432) = v3;
      *(this + 400) = v3;
      *(this + 408) = v3;
    }

    goto LABEL_6;
  }

  v1 = *(this + 400);
  *(this + 432) = v1;
  *(this + 408) = v1;
  if (v1 == *(this + 424))
  {
LABEL_6:
    *(this + 392) = *(this + 416);
    v2 = -1;
    goto LABEL_7;
  }

  v2 = 0;
LABEL_7:
  *(this + 520) = v2;
  return this;
}

unint64_t icu::FCDUTF16CollationIterator::forwardNumCodePoints(unint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUTF16CollationIterator::nextCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

unint64_t icu::FCDUTF16CollationIterator::backwardNumCodePoints(unint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUTF16CollationIterator::previousCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

uint64_t icu::FCDUTF16CollationIterator::normalize(uint64_t a1, UChar *a2, UChar *a3, UErrorCode *a4)
{
  icu::Normalizer2Impl::decompose(*(a1 + 448), a2, a3, (a1 + 456), (a3 - a2) >> 1, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  *(a1 + 424) = a2;
  *(a1 + 432) = a3;
  v9 = *(a1 + 464);
  if ((v9 & 0x11) != 0)
  {
    v10 = 0;
  }

  else if ((v9 & 2) != 0)
  {
    v10 = a1 + 466;
  }

  else
  {
    v10 = *(a1 + 480);
  }

  *(a1 + 392) = v10;
  if ((v9 & 0x8000) != 0)
  {
    v11 = *(a1 + 468);
  }

  else
  {
    v11 = v9 >> 5;
  }

  *(a1 + 408) = v10 + 2 * v11;
  return 1;
}

uint64_t sub_195422090(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v6 = (*a3 - 2);
  v5 = *v6;
  *a3 = v6;
  if (v5 < *(a1 + 8))
  {
    return 0;
  }

  if ((v5 & 0xFC00) == 0xDC00)
  {
    if (v6 > a2)
    {
      v10 = *(v4 - 4);
      v9 = v4 - 4;
      v8 = v10;
      if ((v10 & 0xFC00) == 0xD800)
      {
        LODWORD(v5) = v5 + (v8 << 10) - 56613888;
        *a3 = v9;
      }
    }
  }

  else
  {
    if (*(*(a1 + 56) + (v5 >> 8)))
    {
      v11 = ((1 << (v5 >> 5)) & *(*(a1 + 56) + (v5 >> 8))) == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return icu::Normalizer2Impl::getFCD16FromNormData(a1, v5);
}

void icu::UTF8CollationIterator::~UTF8CollationIterator(icu::UTF8CollationIterator *this@<X0>, void *a2@<X8>)
{
  icu::CollationIterator::~CollationIterator(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UTF8CollationIterator::resetToOffset(icu::UTF8CollationIterator *this, int a2)
{
  result = icu::CollationIterator::reset(this);
  *(this + 100) = a2;
  return result;
}

uint64_t icu::UTF8CollationIterator::handleNextCE32(icu::UTF8CollationIterator *this, int *a2, UErrorCode *a3)
{
  v4 = *(this + 100);
  if (v4 == *(this + 101))
  {
    *a2 = -1;
    return 192;
  }

  v7 = *(this + 49);
  *(this + 100) = v4 + 1;
  v8 = v7[v4];
  v9 = v7[v4];
  v10 = v8;
  *a2 = v8;
  if ((v8 & 0x80000000) == 0)
  {
    return *(*(*(this + 1) + 16) + 4 * v9);
  }

  v11 = (this + 400);
  v12 = *(this + 101);
  if ((v8 & 0xF0) == 0xE0)
  {
    v13 = *v11;
    if (v13 + 1 < v12 || v12 < 0)
    {
      v14 = v9 & 0xF;
      v15 = &v7[v13];
      v16 = v7[v13];
      if ((a00000000000000[v14] >> (v16 >> 5)))
      {
        v17 = v15[1] ^ 0x80;
        if (v17 <= 0x3F)
        {
          *a2 = (v14 << 12) | ((v16 & 0x3F) << 6) | v17;
          *(this + 100) += 2;
          return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
        }
      }
    }
  }

  else if (v8 - 194 <= 0x1D)
  {
    v18 = *v11;
    if (v18 != v12)
    {
      v19 = v7[v18] ^ 0x80;
      if (v19 <= 0x3F)
      {
        result = *(*(*(this + 1) + 16) + 4 * (*(**(this + 1) + 2 * v9 + 3776) + v19));
        *a2 = ((v10 & 0x1F) << 6) | v19;
        ++*(this + 100);
        return result;
      }
    }
  }

  CharSafeBody = utf8_nextCharSafeBody(v7, v11, v12, v10, -3);
  *a2 = CharSafeBody;
  v21 = *(this + 2);

  return sub_1952C6CA0(v21, CharSafeBody);
}

uint64_t icu::UTF8CollationIterator::foundNULTerminator(icu::UTF8CollationIterator *this)
{
  if ((*(this + 101) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = *(this + 100) - 1;
  *(this + 100) = v2;
  *(this + 101) = v2;
  return 1;
}

uint64_t icu::UTF8CollationIterator::nextCodePoint(icu::UTF8CollationIterator *this, UErrorCode *a2)
{
  v2 = *(this + 100);
  v3 = *(this + 101);
  if (v2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v2;
  v5 = *(this + 49);
  if ((v3 & 0x80000000) == 0 || *(v5 + v2))
  {
    v8 = v2 + 1;
    *(this + 100) = v2 + 1;
    v9 = *(v5 + v2);
    v6 = *(v5 + v2);
    if ((v9 & 0x80000000) == 0)
    {
      return v6;
    }

    if (v8 == v3)
    {
      return 65533;
    }

    if (v6 < 0xE0)
    {
      if (v6 < 0xC2)
      {
        return 65533;
      }

      v12 = v6 & 0x1F;
    }

    else
    {
      if (v6 > 0xEF)
      {
        if (v6 > 0xF4)
        {
          return 65533;
        }

        v14 = v6 - 240;
        v8 = *(v5 + v8);
        if (((byte_195493FCF[v8 >> 4] >> v14) & 1) == 0)
        {
          return 65533;
        }

        v15 = v4 + 2;
        *(this + 100) = v4 + 2;
        if (v4 + 2 == v3)
        {
          return 65533;
        }

        v11 = *(v5 + v15) ^ 0x80;
        if (v11 > 0x3F)
        {
          return 65533;
        }

        LODWORD(v10) = v8 & 0x3F | (v14 << 6);
        LODWORD(v8) = v15;
      }

      else
      {
        v10 = v9 & 0xF;
        if (((a00000000000000[v10] >> (*(v5 + v8) >> 5)) & 1) == 0)
        {
          return 65533;
        }

        v11 = *(v5 + v8) & 0x3F;
      }

      LODWORD(v8) = v8 + 1;
      *(this + 100) = v8;
      if (v8 == v3)
      {
        return 65533;
      }

      v12 = v11 | (v10 << 6);
    }

    v13 = *(v5 + v8) ^ 0x80;
    if (v13 <= 0x3F)
    {
      v6 = v13 | (v12 << 6);
      *(this + 100) = v8 + 1;
      return v6;
    }

    return 65533;
  }

  *(this + 101) = v2;
  return 0xFFFFFFFFLL;
}

uint64_t icu::UTF8CollationIterator::previousCodePoint(icu::UTF8CollationIterator *this, UErrorCode *a2)
{
  v2 = *(this + 100);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 49);
  v4 = v2 - 1;
  *(this + 100) = v4;
  v5 = v3[v4];
  v6 = v5;
  if (v5 < 0)
  {
    return utf8_prevCharSafeBody(v3, 0, this + 100, v5, -3);
  }

  return v6;
}

uint64_t icu::UTF8CollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = *(this + 404);
    v4 = *(this + 400);
    for (i = a2 + 1; i > 1; --i)
    {
      if (v4 >= v3)
      {
        if ((v3 & 0x80000000) == 0)
        {
          return this;
        }

        v6 = *(this + 392);
        if (!*(v6 + v4))
        {
          return this;
        }
      }

      else
      {
        v6 = *(this + 392);
      }

      v7 = v4 + 1;
      *(this + 400) = v7;
      v8 = *(v6 + v4);
      if (v8 - 245 >= 0xFFFFFFCD && v7 != v3)
      {
        v10 = *(v6 + v7);
        if ((v8 & 0xF0) == 0xE0)
        {
          if (((a00000000000000[v8 & 0xF] >> (*(v6 + v7) >> 5)) & 1) == 0)
          {
            goto LABEL_12;
          }

          v11 = v4 + 2;
          *(this + 400) = v11;
          LODWORD(v7) = v3;
          if (v11 == v3)
          {
            goto LABEL_12;
          }

          LODWORD(v7) = v4 + 2;
          if (*(v6 + v11) >= -64)
          {
            goto LABEL_12;
          }

          v12 = 3;
          goto LABEL_22;
        }

        if (v8 > 0xDF)
        {
          if (((byte_195493FCF[v10 >> 4] >> (v8 & 7)) & 1) == 0)
          {
            goto LABEL_12;
          }

          *(this + 400) = v4 + 2;
          LODWORD(v7) = v3;
          if (v4 + 2 == v3)
          {
            goto LABEL_12;
          }

          LODWORD(v7) = v4 + 2;
          if (*(v6 + v4 + 2) > -65)
          {
            goto LABEL_12;
          }

          v13 = v4 + 3;
          *(this + 400) = v13;
          LODWORD(v7) = v3;
          if (v13 == v3)
          {
            goto LABEL_12;
          }

          LODWORD(v7) = v4 + 3;
          if (*(v6 + v13) > -65)
          {
            goto LABEL_12;
          }

          v12 = 4;
          goto LABEL_22;
        }

        if (v10 < -64)
        {
          v12 = 2;
LABEL_22:
          LODWORD(v7) = v4 + v12;
          *(this + 400) = v4 + v12;
        }
      }

LABEL_12:
      v4 = v7;
    }
  }

  return this;
}

uint64_t icu::UTF8CollationIterator::backwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = this;
    v4 = *(this + 400);
    v5 = a2 + 1;
    do
    {
      v6 = __OFSUB__(v4--, 1);
      if (v4 < 0 != v6)
      {
        break;
      }

      this = *(v3 + 392);
      *(v3 + 400) = v4;
      if (*(this + v4) <= -65)
      {
        this = utf8_back1SafeBody(this, 0, v4);
        v4 = this;
        *(v3 + 400) = this;
      }

      --v5;
    }

    while (v5 > 1);
  }

  return this;
}

void icu::FCDUTF8CollationIterator::~FCDUTF8CollationIterator(icu::FCDUTF8CollationIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0944640;
  icu::UnicodeString::~UnicodeString(a2, (this + 432));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F0944640;
  icu::UnicodeString::~UnicodeString(a2, (this + 432));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F0944640;
  icu::UnicodeString::~UnicodeString(a2, (this + 432));
  icu::CollationIterator::~CollationIterator(this, v3);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FCDUTF8CollationIterator::resetToOffset(icu::FCDUTF8CollationIterator *this, int a2)
{
  result = icu::CollationIterator::reset(this);
  *(this + 100) = a2;
  *(this + 103) = a2;
  *(this + 102) = 0;
  return result;
}

uint64_t icu::FCDUTF8CollationIterator::getOffset(icu::FCDUTF8CollationIterator *this)
{
  v1 = this + 400;
  if (*(this + 102) == 3)
  {
    if (*v1)
    {
      v1 = this + 416;
    }

    else
    {
      v1 = this + 412;
    }
  }

  return *v1;
}

uint64_t icu::FCDUTF8CollationIterator::handleNextCE32(icu::FCDUTF8CollationIterator *this, int *a2, UErrorCode *a3)
{
  v6 = (this + 400);
  while (1)
  {
    while (1)
    {
      v7 = *(this + 102);
      if (v7 > 1)
      {
        break;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v8 = *(this + 100);
          v9 = v8 != *(this + 104);
          *(this + 103) = v8;
          v10 = 2 * v9;
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v13 = *(this + 100);
      if (v13 == *(this + 101))
      {
        goto LABEL_52;
      }

      v14 = *(this + 49);
      *(this + 100) = v13 + 1;
      v15 = v14[v13];
      v16 = v14[v13];
      v17 = v15;
      *a2 = v15;
      if ((v15 & 0x80000000) == 0)
      {
        return *(*(*(this + 1) + 16) + 4 * v16);
      }

      v18 = *(this + 101);
      if ((v15 & 0xF0) == 0xE0)
      {
        v19 = *v6;
        if (v19 + 1 >= v18 && (v18 & 0x80000000) == 0 || (v20 = v16 & 0xF, v21 = &v14[v19], v22 = v14[v19], ((a00000000000000[v20] >> (v22 >> 5)) & 1) == 0) || (v23 = v21[1] ^ 0x80, v23 > 0x3F))
        {
LABEL_36:
          CharSafeBody = utf8_nextCharSafeBody(v14, v6, v18, v17, -3);
          *a2 = CharSafeBody;
          if (CharSafeBody == 65533)
          {
            return 4294771973;
          }

          v33 = CharSafeBody;
          v34 = ((CharSafeBody >> 10) - 10304);
          if (v34 < 0xC0 || (v35 = icu::CollationFCD::tcccIndex[v34 >> 5]) == 0 || ((icu::CollationFCD::tcccBits[v35] >> (CharSafeBody >> 10)) & 1) == 0 || (v36 = *(this + 100), v36 == *(this + 101)) || !icu::FCDUTF8CollationIterator::nextHasLccc(this))
          {
            v38 = **(this + 2);
            v39 = *(v38 + 16);
            if (*(v38 + 44) <= v33)
            {
              v40 = *(v38 + 48);
            }

            else
            {
              v40 = (v33 & 0x1F) + 4 * *(*v38 + 2 * (((v33 >> 5) & 0x3F) + *(*v38 + 2 * (v33 >> 11) + 4160)));
            }

            return *(v39 + 4 * v40);
          }

          v31 = v36 - 4;
          goto LABEL_43;
        }

        *a2 = (v20 << 12) | ((v22 & 0x3F) << 6) | v23;
        v24 = *v6;
        v25 = *v6 + 2;
        *v6 = v25;
        v26 = *a2;
        if (v26 < 192 || !icu::CollationFCD::tcccIndex[v26 >> 5] || ((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v26 >> 5]] >> v26) & 1) == 0 || (v26 & 0x1FFF01) != 0xF01 && (v25 == *(this + 101) || !icu::FCDUTF8CollationIterator::nextHasLccc(this)))
        {
          return *(*(*(this + 1) + 16) + 4 * ((v26 & 0x1F) + 4 * *(**(this + 1) + 2 * (v26 >> 5))));
        }
      }

      else
      {
        if (v15 - 194 > 0x1D)
        {
          goto LABEL_36;
        }

        v27 = *v6;
        if (v27 == v18)
        {
          goto LABEL_36;
        }

        v28 = v14[v27] ^ 0x80;
        if (v28 > 0x3F)
        {
          goto LABEL_36;
        }

        v29 = *(*(*(this + 1) + 16) + 4 * (*(**(this + 1) + 2 * v16 + 3776) + v28));
        *a2 = ((v17 & 0x1F) << 6) | v28;
        v24 = *(this + 100);
        *(this + 100) = v24 + 1;
        v30 = *a2;
        if (v30 < 192 || !icu::CollationFCD::tcccIndex[v30 >> 5] || ((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v30 >> 5]] >> v30) & 1) == 0 || v24 + 1 == *(this + 101) || !icu::FCDUTF8CollationIterator::nextHasLccc(this))
        {
          return v29;
        }
      }

      v31 = v24 - 1;
LABEL_43:
      *(this + 100) = v31;
      if (!icu::FCDUTF8CollationIterator::nextSegment(this, a3))
      {
LABEL_52:
        *a2 = -1;
        return 192;
      }
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 == 3)
    {
      v11 = *(this + 100);
      v12 = *(this + 220);
      if (*(this + 220) < 0)
      {
        v42 = *(this + 111);
        if (v11 != v42)
        {
          goto LABEL_58;
        }
      }

      else if (v11 != v12 >> 5)
      {
        v42 = v12 >> 5;
LABEL_58:
        *v6 = v11 + 1;
        if (v42 <= v11)
        {
          LODWORD(v26) = 0xFFFF;
        }

        else
        {
          if ((v12 & 2) != 0)
          {
            v43 = this + 442;
          }

          else
          {
            v43 = *(this + 57);
          }

          LODWORD(v26) = *&v43[2 * v11];
        }

        *a2 = v26;
        return *(*(*(this + 1) + 16) + 4 * ((v26 & 0x1F) + 4 * *(**(this + 1) + 2 * (v26 >> 5))));
      }
    }

LABEL_46:
    v10 = 0;
    v37 = *(this + 104);
    *(this + 100) = v37;
    *(this + 103) = v37;
LABEL_47:
    *(this + 102) = v10;
  }

  if (*(this + 100) == *(this + 104))
  {
    v10 = 0;
    goto LABEL_47;
  }

  return icu::UTF8CollationIterator::handleNextCE32(this, a2, a3);
}

uint64_t icu::FCDUTF8CollationIterator::nextHasLccc(icu::FCDUTF8CollationIterator *this)
{
  v1 = *(this + 49);
  v2 = *(this + 100);
  v3 = *(v1 + v2);
  if (v3 < 0xCC)
  {
    return 0;
  }

  if (v3 != 234 && v3 - 228 < 0xA)
  {
    return 0;
  }

  v5 = v2 + 1;
  v6 = *(this + 101);
  if (v2 + 1 == v6)
  {
    goto LABEL_25;
  }

  if (v3 < 0xE0)
  {
    v9 = v3 & 0x1F;
  }

  else
  {
    if (v3 > 0xEF)
    {
      if (v3 > 0xF4)
      {
        goto LABEL_25;
      }

      v12 = v3 - 240;
      v5 = *(v1 + v5);
      if (((byte_195493FCF[v5 >> 4] >> (v3 + 16)) & 1) == 0)
      {
        goto LABEL_25;
      }

      v13 = v2 + 2;
      if (v2 + 2 == v6)
      {
        goto LABEL_25;
      }

      v8 = *(v1 + v13) ^ 0x80;
      if (v8 > 0x3F)
      {
        goto LABEL_25;
      }

      v7 = v5 & 0x3F | (v12 << 6);
      LODWORD(v5) = v13;
    }

    else
    {
      v7 = v3 & 0xF;
      if (((a00000000000000[v3 & 0xF] >> (*(v1 + v5) >> 5)) & 1) == 0)
      {
        goto LABEL_25;
      }

      v8 = *(v1 + v5) & 0x3F;
    }

    LODWORD(v5) = v5 + 1;
    if (v5 == v6)
    {
      goto LABEL_25;
    }

    v9 = v8 | (v7 << 6);
  }

  v10 = *(v1 + v5) ^ 0x80;
  if (v10 <= 0x3F)
  {
    v11 = v10 | (v9 << 6);
    if (v9 > 0x3FF)
    {
      v11 = ((v9 >> 4) - 10304);
    }

    if (v11 < 0x300)
    {
      return 0;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 65533;
LABEL_26:
  if (icu::CollationFCD::lcccIndex[v11 >> 5])
  {
    return (icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v11 >> 5]] >> v11) & 1;
  }

  return 0;
}

uint64_t icu::FCDUTF8CollationIterator::nextSegment(icu::FCDUTF8CollationIterator *this, UErrorCode *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    v2 = 0;
    goto LABEL_70;
  }

  v5 = 0;
  v6 = *(this + 100);
  v37 = 0u;
  v38 = 0u;
  v40 = 0;
  v39 = 0u;
  v36 = &unk_1F0935D00;
  LOWORD(v37) = 2;
  v7 = v6;
  while (1)
  {
    v8 = *(this + 49);
    v9 = v7 + 1;
    *(this + 100) = v9;
    v10 = *(v8 + v7);
    v11 = *(v8 + v7);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    v12 = *(this + 101);
    if (v9 == v12)
    {
LABEL_6:
      v11 = 65533;
      goto LABEL_7;
    }

    if (v11 < 0xE0)
    {
      if (v11 < 0xC2)
      {
        goto LABEL_6;
      }

      v21 = v11 & 0x1F;
    }

    else
    {
      if (v11 > 0xEF)
      {
        if (v11 > 0xF4)
        {
          goto LABEL_6;
        }

        v9 = *(v8 + v9);
        if (((byte_195493FCF[v9 >> 4] >> (v11 + 16)) & 1) == 0)
        {
          goto LABEL_6;
        }

        *(this + 100) = v7 + 2;
        if (v7 + 2 == v12)
        {
          goto LABEL_6;
        }

        v20 = *(v8 + v7 + 2) ^ 0x80;
        if (v20 > 0x3F)
        {
          goto LABEL_6;
        }

        LODWORD(v19) = v9 & 0x3F | ((v11 - 240) << 6);
        LODWORD(v9) = v7 + 2;
      }

      else
      {
        v19 = v10 & 0xF;
        if (((a00000000000000[v19] >> (*(v8 + v9) >> 5)) & 1) == 0)
        {
          goto LABEL_6;
        }

        v20 = *(v8 + v9) & 0x3F;
      }

      LODWORD(v9) = v9 + 1;
      *(this + 100) = v9;
      if (v9 == v12)
      {
        goto LABEL_6;
      }

      v21 = v20 | (v19 << 6);
    }

    v22 = *(v8 + v9) ^ 0x80;
    if (v22 > 0x3F)
    {
      goto LABEL_6;
    }

    v11 = v22 | (v21 << 6);
    *(this + 100) = v9 + 1;
LABEL_7:
    v13 = sub_1951FAB08(*(this + 53), v11);
    if (v13 <= 0xFF && v7 != v6)
    {
LABEL_63:
      *(this + 104) = v7;
      *(this + 100) = v6;
      v33 = 2;
      *(this + 102) = 2;
      goto LABEL_68;
    }

    v15 = v13;
    icu::UnicodeString::append(&v36, v11);
    if (v15 >= 0x100)
    {
      v16 = v15 >> 8 < v5 || v15 == 33156;
      if (v16 || v15 == 33154)
      {
        break;
      }
    }

    v5 = v15;
    v7 = *(this + 100);
    if (v15)
    {
      v18 = v7 == *(this + 101);
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_63;
    }
  }

  while (1)
  {
    v31 = *(this + 100);
    v32 = *(this + 101);
    if (v31 == v32)
    {
      break;
    }

    v23 = *(this + 49);
    v24 = v31 + 1;
    *(this + 100) = v24;
    v25 = *(v23 + v31);
    v26 = *(v23 + v31);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    if (v24 == v32)
    {
LABEL_43:
      v26 = 65533;
      goto LABEL_44;
    }

    if (v26 < 0xE0)
    {
      if (v26 < 0xC2)
      {
        goto LABEL_43;
      }

      v29 = v26 & 0x1F;
    }

    else
    {
      if (v26 > 0xEF)
      {
        if (v26 > 0xF4)
        {
          goto LABEL_43;
        }

        v24 = *(v23 + v24);
        if (((byte_195493FCF[v24 >> 4] >> (v26 + 16)) & 1) == 0)
        {
          goto LABEL_43;
        }

        *(this + 100) = v31 + 2;
        if (v31 + 2 == v32)
        {
          goto LABEL_43;
        }

        v28 = *(v23 + v31 + 2) ^ 0x80;
        if (v28 > 0x3F)
        {
          goto LABEL_43;
        }

        LODWORD(v27) = v24 & 0x3F | ((v26 - 240) << 6);
        LODWORD(v24) = v31 + 2;
      }

      else
      {
        v27 = v25 & 0xF;
        if (((a00000000000000[v27] >> (*(v23 + v24) >> 5)) & 1) == 0)
        {
          goto LABEL_43;
        }

        v28 = *(v23 + v24) & 0x3F;
      }

      LODWORD(v24) = v24 + 1;
      *(this + 100) = v24;
      if (v24 == v32)
      {
        goto LABEL_43;
      }

      v29 = v28 | (v27 << 6);
    }

    v30 = *(v23 + v24) ^ 0x80;
    if (v30 > 0x3F)
    {
      goto LABEL_43;
    }

    v26 = v30 | (v29 << 6);
    *(this + 100) = v24 + 1;
LABEL_44:
    if (sub_1951FAB08(*(this + 53), v26) <= 0xFF)
    {
      *(this + 100) = v31;
      break;
    }

    icu::UnicodeString::append(&v36, v26);
  }

  icu::Normalizer2Impl::decompose(*(this + 53), &v36, (this + 432), a2);
  v33 = *a2;
  if (v33 > 0)
  {
    v2 = 0;
    goto LABEL_69;
  }

  *(this + 103) = v6;
  *(this + 104) = *(this + 100);
  v33 = 3;
  *(this + 102) = 3;
  *(this + 100) = 0;
LABEL_68:
  v2 = 1;
LABEL_69:
  icu::UnicodeString::~UnicodeString(v33, &v36);
LABEL_70:
  v34 = *MEMORY[0x1E69E9840];
  return v2;
}

_DWORD *icu::FCDUTF8CollationIterator::switchToForward(_DWORD *this)
{
  v1 = this[102];
  if (v1 == 2)
  {
    v4 = 0;
  }

  else if (v1 == 1)
  {
    v2 = this[100];
    v3 = v2 != this[104];
    this[103] = v2;
    v4 = 2 * v3;
  }

  else
  {
    v4 = 0;
    v5 = this[104];
    this[100] = v5;
    this[103] = v5;
  }

  this[102] = v4;
  return this;
}

uint64_t icu::FCDUTF8CollationIterator::previousHasTccc(icu::FCDUTF8CollationIterator *this)
{
  v2 = *(this + 49);
  v3 = *(this + 100);
  v4 = v2[v3 - 1];
  if (v4 < 0 && ((pi = v3 - 1, v5 = utf8_prevCharSafeBody(v2, 0, &pi, v4, -3), v5 < 0x10000) ? (v6 = v5) : (v6 = ((v5 >> 10) - 10304)), v6 >= 192 && icu::CollationFCD::tcccIndex[v6 >> 5]))
  {
    return (icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v6 >> 5]] >> v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::FCDUTF8CollationIterator::handleGetTrailSurrogate(icu::FCDUTF8CollationIterator *this)
{
  if (*(this + 102) != 3)
  {
    return 0;
  }

  v1 = *(this + 100);
  v2 = *(this + 220);
  if (*(this + 220) < 0)
  {
    v3 = *(this + 111);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= v1)
  {
    return 0xFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v5 = this + 442;
  }

  else
  {
    v5 = *(this + 57);
  }

  v4 = *&v5[2 * v1];
  if ((v4 & 0xFC00) == 0xDC00)
  {
    *(this + 100) = v1 + 1;
  }

  return v4;
}

uint64_t icu::FCDUTF8CollationIterator::foundNULTerminator(icu::FCDUTF8CollationIterator *this)
{
  if (*(this + 102) || (*(this + 101) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = *(this + 100) - 1;
  *(this + 100) = v2;
  *(this + 101) = v2;
  return 1;
}

uint64_t icu::FCDUTF8CollationIterator::nextCodePoint(icu::FCDUTF8CollationIterator *this, UErrorCode *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 102);
      if (v4 <= 1)
      {
        break;
      }

      if (v4 == 2)
      {
        v15 = *(this + 100);
        if (v15 == *(this + 104))
        {
          v7 = 0;
          goto LABEL_21;
        }

        v28 = *(this + 49);
        v29 = v15 + 1;
        *(this + 100) = v15 + 1;
        v30 = *(v28 + v15);
        v12 = *(v28 + v15);
        if ((v30 & 0x80000000) == 0)
        {
          return v12;
        }

        v31 = *(this + 101);
        if (v29 != v31)
        {
          if (v12 < 0xE0)
          {
            if (v12 < 0xC2)
            {
              return 65533;
            }

            v35 = v12 & 0x1F;
          }

          else
          {
            if (v12 > 0xEF)
            {
              if (v12 > 0xF4)
              {
                return 65533;
              }

              v29 = *(v28 + v29);
              if (((byte_195493FCF[v29 >> 4] >> (v12 + 16)) & 1) == 0)
              {
                return 65533;
              }

              v37 = v15 + 2;
              *(this + 100) = v15 + 2;
              if (v15 + 2 == v31)
              {
                return 65533;
              }

              v34 = *(v28 + v37) ^ 0x80;
              if (v34 > 0x3F)
              {
                return 65533;
              }

              LODWORD(v33) = v29 & 0x3F | ((v12 - 240) << 6);
              LODWORD(v29) = v37;
            }

            else
            {
              v33 = v30 & 0xF;
              if (((a00000000000000[v33] >> (*(v28 + v29) >> 5)) & 1) == 0)
              {
                return 65533;
              }

              v34 = *(v28 + v29) & 0x3F;
            }

            LODWORD(v29) = v29 + 1;
            *(this + 100) = v29;
            if (v29 == v31)
            {
              return 65533;
            }

            v35 = v34 | (v33 << 6);
          }

          v36 = *(v28 + v29) ^ 0x80;
          if (v36 <= 0x3F)
          {
            v12 = v36 | (v35 << 6);
            v27 = v29 + 1;
            goto LABEL_70;
          }
        }

        return 65533;
      }

      if (v4 == 3)
      {
        v8 = *(this + 220) < 0 ? *(this + 111) : (*(this + 220) >> 5);
        v16 = *(this + 100);
        if (v16 != v8)
        {
          v12 = icu::UnicodeString::char32At(v8, (this + 432), v16);
          if (v12 < 0x10000)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          v27 = v26 + *(this + 100);
          goto LABEL_70;
        }
      }

LABEL_20:
      v7 = 0;
      v17 = *(this + 104);
      *(this + 100) = v17;
      *(this + 103) = v17;
LABEL_21:
      *(this + 102) = v7;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        v5 = *(this + 100);
        v6 = v5 != *(this + 104);
        *(this + 103) = v5;
        v7 = 2 * v6;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v9 = *(this + 100);
    v10 = *(this + 101);
    if (v9 == v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *(this + 49);
    v12 = *(v11 + v9);
    if (v10 < 0 && !*(v11 + v9))
    {
      return 0xFFFFFFFFLL;
    }

    if ((v12 & 0x80) == 0)
    {
      break;
    }

    v13 = v9 + 1;
    *(this + 100) = v9 + 1;
    v14 = *(v11 + v9);
    v12 = *(v11 + v9);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    if (v13 == v10)
    {
LABEL_15:
      v12 = 65533;
      LODWORD(v13) = v10;
LABEL_39:
      v22 = v12;
      goto LABEL_40;
    }

    if (v12 < 0xE0)
    {
      if (v12 < 0xC2)
      {
        goto LABEL_38;
      }

      v20 = v12 & 0x1F;
    }

    else
    {
      if (v12 > 0xEF)
      {
        if (v12 > 0xF4 || (v23 = *(v11 + v13), ((byte_195493FCF[v23 >> 4] >> (v12 + 16)) & 1) == 0))
        {
LABEL_38:
          v12 = 65533;
          goto LABEL_39;
        }

        v13 = v9 + 2;
        *(this + 100) = v9 + 2;
        if (v9 + 2 == v10)
        {
          goto LABEL_15;
        }

        v19 = *(v11 + v13) ^ 0x80;
        if (v19 > 0x3F)
        {
          v12 = 65533;
          goto LABEL_39;
        }

        LODWORD(v18) = v23 & 0x3F | ((v12 - 240) << 6);
      }

      else
      {
        v18 = v14 & 0xF;
        if (((a00000000000000[v18] >> (*(v11 + v13) >> 5)) & 1) == 0)
        {
          goto LABEL_38;
        }

        v19 = *(v11 + v13) & 0x3F;
      }

      LODWORD(v13) = v13 + 1;
      *(this + 100) = v13;
      if (v13 == v10)
      {
        goto LABEL_15;
      }

      v20 = v19 | (v18 << 6);
    }

    v21 = *(v11 + v13) ^ 0x80;
    if (v21 > 0x3F)
    {
      goto LABEL_38;
    }

    v12 = v21 | (v20 << 6);
    LODWORD(v13) = v13 + 1;
    *(this + 100) = v13;
    if (v20 <= 0x3FF)
    {
      goto LABEL_39;
    }

    v22 = ((v20 >> 4) - 10304);
LABEL_40:
    if (v22 < 192 || !icu::CollationFCD::tcccIndex[v22 >> 5] || ((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v22 >> 5]] >> v22) & 1) == 0)
    {
      return v12;
    }

    if ((v12 & 0x1FFF01) == 0xF01)
    {
LABEL_44:
      if (v12 >> 11 >= 0x1B)
      {
        if (v12 >= 0x10000)
        {
          v25 = -4;
        }

        else
        {
          v25 = -3;
        }

        if ((v12 - 1114112) >= 0xFFEFE000)
        {
          v24 = v25;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = -3;
      }

      goto LABEL_58;
    }

    if (v13 == v10 || !icu::FCDUTF8CollationIterator::nextHasLccc(this))
    {
      return v12;
    }

    if (v12 >= 0x80)
    {
      if (v12 >= 0x800)
      {
        goto LABEL_44;
      }

      v24 = -2;
    }

    else
    {
      v24 = -1;
    }

LABEL_58:
    *(this + 100) = v13 + v24;
    if (!icu::FCDUTF8CollationIterator::nextSegment(this, a2))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v27 = v9 + 1;
LABEL_70:
  *(this + 100) = v27;
  return v12;
}

unint64_t icu::FCDUTF8CollationIterator::previousCodePoint(icu::FCDUTF8CollationIterator *this, UErrorCode *a2)
{
  v4 = (this + 400);
  while (1)
  {
    v5 = *(this + 102);
    if (v5 == 2)
    {
      break;
    }

    if (v5 == 1)
    {
      v6 = *v4;
      if (!v6)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = *(this + 49);
      CharSafeBody = v7[v6 - 1];
      if ((CharSafeBody & 0x80000000) == 0)
      {
        *v4 = v6 - 1;
        return CharSafeBody;
      }

      v9 = v6 - 1;
      *v4 = v9;
      v10 = v7[v9];
      CharSafeBody = v10;
      if (v10 < 0)
      {
        CharSafeBody = utf8_prevCharSafeBody(v7, 0, v4, v10, -3);
      }

      if (CharSafeBody >= 0x10000)
      {
        v11 = ((CharSafeBody >> 10) - 10304);
      }

      else
      {
        v11 = CharSafeBody;
      }

      if (v11 < 768 || !icu::CollationFCD::lcccIndex[v11 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v11 >> 5]] >> v11) & 1) == 0)
      {
        return CharSafeBody;
      }

      if ((CharSafeBody & 0x1FFF01) == 0xF01)
      {
LABEL_15:
        if (CharSafeBody >> 11 >= 0x1B)
        {
          if ((CharSafeBody - 1114112) >= 0xFFEFE000)
          {
            if (CharSafeBody < 0x10000)
            {
              v12 = 3;
            }

            else
            {
              v12 = 4;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 3;
        }

        goto LABEL_40;
      }

      if (!*v4 || !icu::FCDUTF8CollationIterator::previousHasTccc(this))
      {
        return CharSafeBody;
      }

      if (CharSafeBody >= 0x80)
      {
        if (CharSafeBody >= 0x800)
        {
          goto LABEL_15;
        }

        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

LABEL_40:
      *(this + 100) += v12;
      if (!icu::FCDUTF8CollationIterator::previousSegment(this, a2))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v5 >= 3)
      {
        v14 = *v4;
        if (v14)
        {
          v22 = icu::UnicodeString::char32At(v14, (this + 432), v14 - 1);
          CharSafeBody = v22;
          if (v22 >= 0x10000)
          {
            v23 = -2;
          }

          else
          {
            v23 = -1;
          }

          *(this + 100) += v23;
          return CharSafeBody;
        }

LABEL_23:
        v15 = *(this + 103);
        *(this + 100) = v15;
        *(this + 104) = v15;
LABEL_24:
        v16 = 1;
        goto LABEL_25;
      }

      if (v5)
      {
        goto LABEL_23;
      }

      v17 = *(this + 100);
      *(this + 104) = v17;
      if (v17 == *(this + 103))
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

LABEL_25:
      *(this + 102) = v16;
    }
  }

  v13 = *(this + 100);
  if (v13 == *(this + 103))
  {
    goto LABEL_24;
  }

  v18 = *(this + 49);
  v19 = v13 - 1;
  *(this + 100) = v19;
  v20 = v18[v19];
  CharSafeBody = v20;
  if ((v20 & 0x80000000) == 0)
  {
    return CharSafeBody;
  }

  return utf8_prevCharSafeBody(v18, 0, v4, v20, -3);
}

uint64_t icu::FCDUTF8CollationIterator::previousSegment(icu::FCDUTF8CollationIterator *this, UErrorCode *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    LOBYTE(v5) = 0;
    v6 = (this + 400);
    v7 = *(this + 100);
    v32 = 0u;
    v33 = 0u;
    v35 = 0;
    v34 = 0u;
    v31 = &unk_1F0935D00;
    LOWORD(v32) = 2;
    v8 = v7;
    while (1)
    {
      v9 = *(this + 49);
      v10 = v8 - 1;
      *(this + 100) = v10;
      v11 = v9[v10];
      CharSafeBody = v11;
      if (v11 < 0)
      {
        CharSafeBody = utf8_prevCharSafeBody(v9, 0, v6, v11, -3);
      }

      v13 = sub_1951FAB08(*(this + 53), CharSafeBody);
      v14 = v13;
      if (v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = v8 == v7;
      }

      if (!v15)
      {
LABEL_23:
        *(this + 103) = v8;
        *(this + 100) = v7;
        v19 = 2;
        *(this + 102) = 2;
LABEL_40:
        v2 = 1;
        goto LABEL_41;
      }

      v16 = v13;
      icu::UnicodeString::append(&v31, CharSafeBody);
      if (v14)
      {
        if (v5 && v14 > v5)
        {
          if (v16 >= 0x100)
          {
            break;
          }

          goto LABEL_32;
        }

        if (v16 == 33154 || v16 == 33156)
        {
          break;
        }
      }

      v5 = v16 >> 8;
      v8 = *v6;
      if (v16 < 0x100 || v8 == 0)
      {
        goto LABEL_23;
      }
    }

    do
    {
      v20 = *v6;
      if (!*v6)
      {
        break;
      }

      v21 = *(this + 49);
      v22 = v20 - 1;
      *(this + 100) = v22;
      v23 = v21[v22];
      v24 = v23;
      if (v23 < 0)
      {
        v24 = utf8_prevCharSafeBody(v21, 0, v6, v23, -3);
      }

      v25 = sub_1951FAB08(*(this + 53), v24);
      if (!v25)
      {
        *v6 = v20;
        break;
      }

      v26 = v25;
      icu::UnicodeString::append(&v31, v24);
    }

    while (v26 > 0xFF);
LABEL_32:
    if ((v32 & 0x8000u) == 0)
    {
      v27 = v32 >> 5;
    }

    else
    {
      v27 = DWORD1(v32);
    }

    icu::UnicodeString::doReverse(&v31, 0, v27);
    icu::Normalizer2Impl::decompose(*(this + 53), &v31, (this + 432), a2);
    v2 = 0;
    v19 = *a2;
    if (v19 <= 0)
    {
      *(this + 104) = v7;
      *(this + 103) = *(this + 100);
      *(this + 102) = 3;
      v28 = *(this + 220);
      if ((v28 & 0x8000) != 0)
      {
        v19 = *(this + 111);
      }

      else
      {
        v19 = v28 >> 5;
      }

      *v6 = v19;
      goto LABEL_40;
    }

LABEL_41:
    icu::UnicodeString::~UnicodeString(v19, &v31);
  }

  else
  {
    v2 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

_DWORD *icu::FCDUTF8CollationIterator::switchToBackward(_DWORD *this)
{
  v1 = this[102];
  if (v1 == 2)
  {
    goto LABEL_7;
  }

  if (v1)
  {
    v4 = this[103];
    this[100] = v4;
    this[104] = v4;
LABEL_7:
    v3 = 1;
    goto LABEL_8;
  }

  v2 = this[100];
  this[104] = v2;
  if (v2 == this[103])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

LABEL_8:
  this[102] = v3;
  return this;
}

uint64_t icu::FCDUTF8CollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUTF8CollationIterator::nextCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

unint64_t icu::FCDUTF8CollationIterator::backwardNumCodePoints(unint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUTF8CollationIterator::previousCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

uint64_t utmscale_getTimeScaleValue(unsigned int a1, unsigned int a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (a1 <= 9 && a2 < 0xB)
  {
    return qword_195494020[11 * a1 + a2];
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t utmscale_fromInt64(uint64_t a1, unsigned int a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (a2 < 0xA)
  {
    v4 = &qword_195494020[11 * a2];
    if (v4[2] <= a1 && v4[3] >= a1)
    {
      return (qword_195494020[11 * a2 + 1] + a1) * *v4;
    }
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t utmscale_toInt64(uint64_t a1, unsigned int a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (a2 >= 0xA || (v4 = &qword_195494020[11 * a2], v4[4] > a1) || v4[5] < a1)
  {
    result = 0;
    *a3 = 1;
    return result;
  }

  v5 = v4[8];
  v6 = *v4;
  if (a1 < 0)
  {
    if (v4[9] > a1)
    {
      v7 = (v5 + a1) / v6;
      v8 = v4[6];
      return v7 - v8;
    }

    v9 = a1 - v5;
LABEL_15:
    v7 = v9 / v6;
    v8 = v4[1];
    return v7 - v8;
  }

  if (v4[10] >= a1)
  {
    v9 = v5 + a1;
    goto LABEL_15;
  }

  v7 = (a1 - v5) / v6;
  v8 = v4[7];
  return v7 - v8;
}

void sub_195423E90(icu::Replaceable *a1)
{
  icu::Replaceable::~Replaceable(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195423EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  v6 = *(*(v5 + 8) + 24);
  v7 = *(a4 + 8);
  if ((v7 & 0x11) != 0)
  {
    v8 = 0;
  }

  else if ((v7 & 2) != 0)
  {
    v8 = a4 + 10;
  }

  else
  {
    v8 = *(a4 + 24);
  }

  v9 = v7;
  v10 = v7 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a4 + 12);
  }

  return v6(v4, a2, a3, v8, v11);
}

uint64_t sub_195423F38(uint64_t a1, uint64_t a2, uint64_t a3, icu::UnicodeString *this)
{
  v7 = *(a1 + 8);
  v8 = *(*(a1 + 16) + 32);
  v9 = a3 - a2;
  Buffer = icu::UnicodeString::getBuffer(this, a3 - a2);
  v8(v7, a2, a3, Buffer);

  return icu::UnicodeString::releaseBuffer(this, v9);
}

uint64_t utrans_openU(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, _OWORD *a6, int *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a7 && *a7 <= 0)
  {
    if (a1)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      if (a6)
      {
        v14 = a6;
      }

      else
      {
        v14 = v22;
      }

      memset(v25, 0, sizeof(v25));
      v21 = a1;
      v15 = icu::UnicodeString::UnicodeString(v25, a2 >> 31, &v21);
      if (a4)
      {
        memset(v24, 0, sizeof(v24));
        v20 = a4;
        icu::UnicodeString::UnicodeString(v24, a5 >> 31, &v20);
        v16 = icu::Transliterator::createFromRules(v25, v24, a3, v14, a7);
        v17 = *a7;
        if (v17 >= 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = v16;
        }

        icu::UnicodeString::~UnicodeString(v17, v24);
      }

      else
      {
        Instance = icu::Transliterator::createInstance(v15, a3, v14, a7);
        v18 = *a7;
        if (v18 >= 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = Instance;
        }
      }

      icu::UnicodeString::~UnicodeString(v18, v25);
    }

    else
    {
      v8 = 0;
      *a7 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t utrans_open(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _OWORD *a5, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  icu::UnicodeString::UnicodeString(&v17, a1, 0xFFFFFFFFLL, 0);
  if ((BYTE8(v17) & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((BYTE8(v17) & 2) != 0)
  {
    v11 = &v17 | 0xA;
  }

  else
  {
    v11 = *(&v18 + 1);
  }

  if ((SWORD4(v17) & 0x8000u) == 0)
  {
    v12 = WORD4(v17) >> 5;
  }

  else
  {
    v12 = HIDWORD(v17);
  }

  v13 = utrans_openU(v11, v12, a2, a3, a4, a5, a6);
  icu::UnicodeString::~UnicodeString(v14, &v17);
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t utrans_openInverse(icu::Transliterator *a1, UErrorCode *a2)
{
  if (a2 && *a2 <= 0)
  {
    return icu::Transliterator::createInverse(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t utrans_clone(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    result = (*(*a1 + 24))(a1);
    if (result)
    {
      return result;
    }

    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t utrans_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t utrans_getUnicodeID(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 104))(a1);
  if (a2)
  {
    v4 = *(v3 + 8);
    v5 = v4;
    v6 = v4 >> 5;
    if (v5 < 0)
    {
      v6 = *(v3 + 12);
    }

    *a2 = v6;
  }

  v7 = *(v3 + 8);
  if ((v7 & 0x11) != 0)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    return v3 + 10;
  }

  return *(v3 + 24);
}

uint64_t utrans_getID(uint64_t a1, char *a2, int a3)
{
  v5 = (*(*a1 + 104))(a1);

  return icu::UnicodeString::extract(v5, 0, 0x7FFFFFFFLL, a2, a3);
}

void utrans_register(icu::Transliterator *this, icu::Transliterator *a2)
{
  if (a2)
  {
    if (*a2 <= 0)
    {
      icu::Transliterator::registerInstance(this, a2);
    }
  }
}

void *utrans_unregisterID(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v6 = a1;
  icu::UnicodeString::UnicodeString(v7, a2 >> 31, &v6);
  icu::Transliterator::unregister(v7, v2);
  result = icu::UnicodeString::~UnicodeString(v3, v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *utrans_unregister(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  icu::UnicodeString::UnicodeString(v5, a1, 0xFFFFFFFFLL, 0);
  icu::Transliterator::unregister(v5, v1);
  result = icu::UnicodeString::~UnicodeString(v2, v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

icu::Transliterator *utrans_setFilter(icu::Transliterator *result, _WORD *a2, unsigned int a3, int *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a4 && *a4 <= 0)
  {
    if (a2 && *a2)
    {
      memset(v6, 0, sizeof(v6));
      v5 = a2;
      icu::UnicodeString::UnicodeString(v6, a3 >> 31, &v5);
      operator new();
    }

    result = icu::Transliterator::adoptFilter(result, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t utrans_getAvailableID(icu::Transliterator *a1, char *a2, int a3)
{
  AvailableID = icu::Transliterator::getAvailableID(a1);

  return icu::UnicodeString::extract(AvailableID, 0, 0x7FFFFFFFLL, a2, a3);
}

_OWORD *utrans_openIDs(int *a1)
{
  if (!a1 || *a1 > 0)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x40uLL, 0x1080040A4124F16uLL);
  v2 = v4;
  if (v4)
  {
    v5 = *&off_1F09447F8;
    *v4 = xmmword_1F09447E8;
    v4[1] = v5;
    v4[2] = xmmword_1F0944808;
    *(v4 + 6) = off_1F0944818;
    *(v4 + 14) = 0;
    *(v4 + 15) = icu::Transliterator::countAvailableIDs(v4);
  }

  else
  {
    *a1 = 7;
  }

  return v2;
}

void utrans_trans(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, int *a6)
{
  if (a6 && *a6 <= 0)
  {
    v8[5] = v6;
    v8[6] = v7;
    if (a1 && a2 && a3 && a5)
    {
      v8[0] = &unk_1F0944790;
      v8[1] = a2;
      v8[2] = a3;
      *a5 = (*(*a1 + 32))(a1, v8, a4, *a5);
      icu::Replaceable::~Replaceable(v8);
    }

    else
    {
      *a6 = 1;
    }
  }
}

void utrans_transIncremental(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5 && *a5 <= 0)
  {
    if (a1 && a2 && a3 && a4)
    {
      v7[3] = v5;
      v7[4] = v6;
      v7[0] = &unk_1F0944790;
      v7[1] = a2;
      v7[2] = a3;
      (*(*a1 + 64))(a1, v7, a4, a5);
      icu::Replaceable::~Replaceable(v7);
    }

    else
    {
      *a5 = 1;
    }
  }
}

void *utrans_transUChars(void *result, UChar *s, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a7 && *a7 <= 0)
  {
    v8 = result;
    if (result && s && a6)
    {
      if (!a3 || (v14 = *a3, (v14 & 0x80000000) != 0))
      {
        v14 = u_strlen(s);
      }

      memset(v19, 0, sizeof(v19));
      icu::UnicodeString::UnicodeString(v19, s, v14, a4);
      *a6 = (*(*v8 + 32))(v8, v19, a5, *a6);
      v18 = s;
      v15 = icu::UnicodeString::extract(v19, &v18, a4, a7);
      v17 = v18;
      if (a3)
      {
        *a3 = v15;
      }

      result = icu::UnicodeString::~UnicodeString(&v17, v19);
    }

    else
    {
      *a7 = 1;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *utrans_transIncrementalUChars(void *result, UChar *s, _DWORD *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a6 && *a6 <= 0)
  {
    v7 = result;
    if (result && s && a5)
    {
      if (!a3 || (v12 = *a3, (v12 & 0x80000000) != 0))
      {
        v12 = u_strlen(s);
      }

      memset(v17, 0, sizeof(v17));
      icu::UnicodeString::UnicodeString(v17, s, v12, a4);
      (*(*v7 + 64))(v7, v17, a5, a6);
      v16 = s;
      v13 = icu::UnicodeString::extract(v17, &v16, a4, a6);
      v15 = v16;
      if (a3)
      {
        *a3 = v13;
      }

      result = icu::UnicodeString::~UnicodeString(&v15, v17);
    }

    else
    {
      *a6 = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t utrans_toRules(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, int *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    if (a3)
    {
      if ((a4 & 0x80000000) == 0)
      {
LABEL_7:
        v16 = 0u;
        v17 = 0u;
        v19 = 0;
        v18 = 0u;
        v15 = &unk_1F0935D00;
        LOWORD(v16) = 2;
        icu::UnicodeString::setTo(&v15, a3, 0, a4);
        (*(*a1 + 112))(a1, &v15, a2);
        v14 = a3;
        v6 = icu::UnicodeString::extract(&v15, &v14, a4, a5);
        v13 = v14;
        icu::UnicodeString::~UnicodeString(&v13, &v15);
        goto LABEL_4;
      }
    }

    else if (!a4)
    {
      goto LABEL_7;
    }

    v6 = 0;
    *a5 = 1;
    goto LABEL_4;
  }

  v6 = 0;
LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

icu::UVector **utrans_getSourceSet(char ***this, int a2, icu::UVector **a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (!a3)
    {
      uset_openEmpty();
    }

    if (a2)
    {
      ((*this)[15])(this, a3);
    }

    else
    {
      icu::Transliterator::getSourceSet(this, a3);
    }
  }

  return a3;
}

uint64_t sub_195424D00(uint64_t a1, int *a2)
{
  if (a2 && *a2 <= 0)
  {
    return *(a1 + 60);
  }

  else
  {
    return 0;
  }
}

char *sub_195424D20(uint64_t a1, unsigned int *a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  if (v6 >= *(a1 + 60))
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  AvailableID = icu::Transliterator::getAvailableID(*(a1 + 56));
  *(a1 + 56) = v6 + 1;
  if (a2)
  {
    v8 = *(AvailableID + 4);
    v9 = v8;
    v10 = v8 >> 5;
    if (v9 < 0)
    {
      v10 = *(AvailableID + 3);
    }

    *a2 = v10;
  }

  v11 = *(AvailableID + 4);
  if ((v11 & 0x11) != 0)
  {
    return 0;
  }

  if ((v11 & 2) != 0)
  {
    return AvailableID + 10;
  }

  else
  {
    return AvailableID[3];
  }
}

icu::Transliterator *sub_195424DDC(icu::Transliterator *result, int *a2)
{
  if (a2)
  {
    if (*a2 <= 0)
    {
      v2 = result;
      *(result + 14) = 0;
      result = icu::Transliterator::countAvailableIDs(result);
      *(v2 + 15) = result;
    }
  }

  return result;
}

icu::ChineseCalendar *sub_195424E20(icu::ChineseCalendar *a1, char **a2, UErrorCode *a3)
{
  result = icu::ChineseCalendar::ChineseCalendar(a1, a2, a3);
  *result = &unk_1F0944848;
  return result;
}

void sub_195424E58(icu::ChineseCalendar *a1)
{
  icu::ChineseCalendar::~ChineseCalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195424EF8(_BYTE *a1, UErrorCode *a2)
{
  v3 = icu::Calendar::get(a1, 0x13u, a2);
  v5 = v3;
  if (*a2 > 0)
  {
    return 0;
  }

  if (!uprv_add32_overflow(v3, -2637, &v5))
  {
    return v5;
  }

  result = 0;
  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

void sub_195424F74(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = -2636;
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA518, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA518))
    {
      sub_195425044();
    }

    if (dword_1EAECA51C >= 1)
    {
      *a1 = dword_1EAECA51C;
    }
  }

  *(a2 + 8) = qword_1EAECA510;
  *(a2 + 16) = &qword_1EAECA4F8;
  *(a2 + 24) = &qword_1EAECA500;
}

void sub_195425044()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = 0xC22D5EC4B0000000;
  operator new();
}

uint64_t sub_195425260()
{
  if (qword_1EAECA4F8)
  {
    (*(*qword_1EAECA4F8 + 8))(qword_1EAECA4F8);
    qword_1EAECA4F8 = 0;
  }

  if (qword_1EAECA500)
  {
    (*(*qword_1EAECA500 + 8))(qword_1EAECA500);
    qword_1EAECA500 = 0;
  }

  if (qword_1EAECA510)
  {
    (*(*qword_1EAECA510 + 8))(qword_1EAECA510);
    qword_1EAECA510 = 0;
  }

  atomic_store(0, &dword_1EAECA518);
  return 1;
}

uint64_t sub_195425328(int *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if ((*(*a1 + 8) & 0x80000000) == 0)
  {
    if (v1 < (v3 >> 5))
    {
      v4 = v3 >> 5;
      goto LABEL_5;
    }

LABEL_8:
    v6 = 0xFFFFLL;
    goto LABEL_11;
  }

  v4 = *(v2 + 12);
  if (v1 >= v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4 <= v1)
  {
    goto LABEL_8;
  }

  if ((v3 & 2) != 0)
  {
    v5 = v2 + 10;
  }

  else
  {
    v5 = *(v2 + 24);
  }

  v6 = *(v5 + 2 * v1);
LABEL_11:
  a1[2] = v1 + 1;
  return v6;
}

void *icu::VTimeZone::VTimeZone(icu::VTimeZone *this)
{
  result = icu::BasicTimeZone::BasicTimeZone(this);
  *result = &unk_1F0944A48;
  result[9] = 0;
  result[10] = 0;
  result[11] = &unk_1F0935D00;
  *(result + 48) = 2;
  result[19] = 0x43846A3EDDF8CD80;
  result[20] = &unk_1F0935D00;
  *(result + 84) = 2;
  result[28] = &unk_1F0935D00;
  *(result + 116) = 2;
  return result;
}

icu::VTimeZone *icu::VTimeZone::VTimeZone(icu::VTimeZone *this, UChar **a2)
{
  v4 = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *v4 = &unk_1F0944A48;
  *(v4 + 9) = 0;
  v5 = (v4 + 72);
  *(v4 + 10) = 0;
  icu::UnicodeString::UnicodeString((v4 + 88), a2 + 11);
  *(this + 19) = a2[19];
  icu::UnicodeString::UnicodeString((this + 160), a2 + 20);
  icu::UnicodeString::UnicodeString((this + 224), a2 + 28);
  v6 = a2[9];
  if (v6)
  {
    *v5 = (*(*v6 + 96))(v6);
  }

  v7 = a2[10];
  if (v7)
  {
    v10 = U_ZERO_ERROR;
    v8 = *(v7 + 2);
    operator new();
  }

  return this;
}

void icu::VTimeZone::~VTimeZone(icu::VTimeZone *this)
{
  *this = &unk_1F0944A48;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((this + 224));
  icu::UnicodeString::~UnicodeString((this + 160));
  icu::UnicodeString::~UnicodeString((this + 88));

  icu::BasicTimeZone::~BasicTimeZone(this);
}

{
  icu::VTimeZone::~VTimeZone(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::VTimeZone::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && (*(*a1 + 168))(a1))
  {
    icu::TimeZone::operator=(a1, a2);
    v4 = *(a1 + 72);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      *(a1 + 72) = 0;
    }

    v5 = *(a2 + 72);
    if (v5)
    {
      *(a1 + 72) = (*(*v5 + 96))(v5);
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      (*(*v6 + 8))(v6);
      *(a1 + 80) = 0;
    }

    v7 = *(a2 + 80);
    if (v7)
    {
      v8 = *(v7 + 8);
      operator new();
    }

    icu::UnicodeString::operator=((a1 + 88), (a2 + 88));
    *(a1 + 152) = *(a2 + 152);
    icu::UnicodeString::operator=((a1 + 160), (a2 + 160));
    icu::UnicodeString::operator=((a1 + 224), (a2 + 224));
  }

  return a1;
}

BOOL icu::VTimeZone::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    result = icu::TimeZone::operator==(a1, a2);
    if (result)
    {
      if ((*(**(a1 + 72) + 24))(*(a1 + 72), *(a2 + 72)))
      {
        v5 = *(a1 + 96);
        if (v5)
        {
          if (*(a2 + 96))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v5 & 0x8000) != 0)
          {
            v6 = *(a1 + 100);
          }

          else
          {
            v6 = v5 >> 5;
          }

          v7 = *(a2 + 96);
          if ((v7 & 0x8000u) == 0)
          {
            v8 = v7 >> 5;
          }

          else
          {
            v8 = *(a2 + 100);
          }

          if ((v7 & 1) == 0 && v6 == v8)
          {
            v9 = (v7 & 2) != 0 ? (a2 + 98) : *(a2 + 112);
            if (icu::UnicodeString::doEquals(a1 + 88, v9, v6))
            {
LABEL_21:
              if (*(a1 + 152) == *(a2 + 152))
              {
                return 1;
              }
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t icu::VTimeZone::createVTimeZoneFromBasicTimeZone(icu::VTimeZone *this, const icu::BasicTimeZone *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::VTimeZone::createVTimeZone(icu::VTimeZone *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::VTimeZone::getTZURL(icu::VTimeZone *this, UChar **a2)
{
  if (*(this + 48) < 0)
  {
    v2 = *(this + 25);
  }

  else
  {
    v2 = *(this + 48) >> 5;
  }

  if (v2 < 1)
  {
    return 0;
  }

  icu::UnicodeString::operator=(a2, this + 11);
  return 1;
}

uint64_t icu::VTimeZone::getLastModified(icu::VTimeZone *this, double *a2)
{
  v2 = *(this + 19);
  if (v2 == 1.83882169e17)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

void *icu::VTimeZone::write(icu::VTimeZone *this, icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*(a2 + 4))
  {
    v3 = 2;
  }

  else
  {
    v3 = *(a2 + 4) & 0x1E;
  }

  *(a2 + 4) = v3;
  v5 = a2;
  return icu::VTimeZone::write(this, &v5, a3);
}

void *icu::VTimeZone::write(void *result, uint64_t *a2, int *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v5 = result;
    result = result[10];
    if (result)
    {
      if (*(result + 2) >= 1)
      {
        for (i = 0; i < *(result + 2); ++i)
        {
          v7 = icu::UVector::elementAt(result, i);
          v43[10] = "T";
          v8 = u_strlen("T");
          if (icu::UnicodeString::doEqualsSubstring(v7, 0, v8, "T", 0, v8))
          {
            v9 = u_strlen("T");
            v10 = *(v7 + 8);
            if ((v10 & 0x8000) != 0)
            {
              v11 = *(v7 + 12);
            }

            else
            {
              v11 = v10 >> 5;
            }

            if (v11 <= v9)
            {
              v43[9] = "T";
            }

            else
            {
              if ((v10 & 2) != 0)
              {
                v12 = v7 + 10;
              }

              else
              {
                v12 = *(v7 + 24);
              }

              v13 = *(v12 + 2 * v9);
              v43[8] = "T";
              if (v13 == 58)
              {
                icu::UnicodeString::doAppend(*a2, "T", 0, 0xFFFFFFFFLL);
                v43[7] = "T";
                v14 = *a2;
                LOWORD(v47) = 58;
                icu::UnicodeString::doAppend(v14, &v47, 0, 1);
                v15 = *(v5 + 48);
                v16 = v15;
                v17 = v15 >> 5;
                if (v16 >= 0)
                {
                  v18 = v17;
                }

                else
                {
                  v18 = *(v5 + 25);
                }

                icu::UnicodeString::doAppend(*a2, (v5 + 11), 0, v18);
                icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
                v43[6] = L"\r\n";
                goto LABEL_40;
              }
            }
          }

          else
          {
            v43[5] = "T";
          }

          v43[4] = "L";
          v19 = u_strlen("L");
          if (!icu::UnicodeString::doEqualsSubstring(v7, 0, v19, "L", 0, v19))
          {
            goto LABEL_36;
          }

          v20 = u_strlen("L");
          v21 = *(v7 + 8);
          if ((v21 & 0x8000) != 0)
          {
            v22 = *(v7 + 12);
          }

          else
          {
            v22 = v21 >> 5;
          }

          if (v22 <= v20)
          {
            v43[3] = "L";
LABEL_36:
            v28 = *(v7 + 8);
            v29 = v28;
            v30 = v28 >> 5;
            if (v29 >= 0)
            {
              v31 = v30;
            }

            else
            {
              v31 = *(v7 + 12);
            }

            icu::UnicodeString::doAppend(*a2, v7, 0, v31);
            icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
            goto LABEL_40;
          }

          if ((v21 & 2) != 0)
          {
            v23 = v7 + 10;
          }

          else
          {
            v23 = *(v7 + 24);
          }

          v24 = *(v23 + 2 * v20);
          v43[2] = "L";
          if (v24 != 58)
          {
            goto LABEL_36;
          }

          v51 = 0;
          v50 = 0u;
          v49 = 0u;
          v48 = 0u;
          v47 = &unk_1F0935D00;
          LOWORD(v48) = 2;
          icu::UnicodeString::doAppend(*a2, "L", 0, 0xFFFFFFFFLL);
          v43[1] = "L";
          v25 = *a2;
          LOWORD(v44[0]) = 58;
          icu::UnicodeString::doAppend(v25, v44, 0, 1);
          sub_19542B314(&v47, a3, *(v5 + 19));
          LOWORD(v44[0]) = 90;
          icu::UnicodeString::doAppend(&v47, v44, 0, 1);
          if ((v48 & 0x8000u) == 0)
          {
            v26 = v48 >> 5;
          }

          else
          {
            v26 = DWORD1(v48);
          }

          icu::UnicodeString::doAppend(*a2, &v47, 0, v26);
          v27 = *a3;
          if (v27 > 0)
          {
            goto LABEL_58;
          }

          icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
          v43[0] = L"\r\n";
          icu::UnicodeString::~UnicodeString(v43, &v47);
LABEL_40:
          result = v5[10];
        }
      }
    }

    else
    {
      v48 = 0u;
      v51 = 0;
      v50 = 0u;
      v49 = 0u;
      v47 = &unk_1F0935D00;
      LOWORD(v48) = 2;
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      icu::UVector::UVector(v44, 0, uhash_compareUnicodeString, a3);
      v32 = *(v5 + 84);
      if (v5[21] < 0)
      {
        v33 = *(v5 + 43);
      }

      else
      {
        v33 = v32 >> 5;
      }

      if (v33 >= 1)
      {
        v34 = v5[29] < 0 ? *(v5 + 59) : *(v5 + 116) >> 5;
        if (v34 >= 1)
        {
          v35 = v32;
          v36 = v32 >> 5;
          if (v35 >= 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = *(v5 + 43);
          }

          icu::UnicodeString::doAppend(&v47, (v5 + 20), 0, v37);
          v46 = 91;
          icu::UnicodeString::doAppend(&v47, &v46, 0, 1);
          v38 = *(v5 + 116);
          v39 = v38;
          v40 = v38 >> 5;
          if (v39 >= 0)
          {
            v41 = v40;
          }

          else
          {
            v41 = *(v5 + 59);
          }

          icu::UnicodeString::doAppend(&v47, (v5 + 28), 0, v41);
          v46 = 93;
          icu::UnicodeString::doAppend(&v47, &v46, 0, 1);
          icu::UVector::addElement(v44, &v47, a3);
        }
      }

      icu::VTimeZone::writeZone(v5, a2, v5[9], v44, a3);
      icu::UVector::~UVector(v44);
LABEL_58:
      result = icu::UnicodeString::~UnicodeString(v27, &v47);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::VTimeZone::write(icu::VTimeZone *this, double a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*(a3 + 4))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v4;
  v5 = a3;
  icu::VTimeZone::write(this, &v5, a4, a2);
}

void icu::VTimeZone::write(uint64_t a1, uint64_t *a2, int *a3, double a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    icu::UVector::UVector(v15, uprv_deleteUObject, uhash_compareUnicodeString, a3);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    icu::BasicTimeZone::getTimeZoneRulesAfter(a1, a4, &v18, &v17, a3);
    v8 = v17;
    v9 = v18;
    v10 = *a3;
    if (v10 <= 0)
    {
      icu::UnicodeString::operator=(&v20, (a1 + 8));
      memset(v19, 0, sizeof(v19));
      icu::RuleBasedTimeZone::RuleBasedTimeZone(v19, &v20, v9);
      if (v8)
      {
        while (*(v8 + 2))
        {
          v11 = icu::UVector::orphanElementAt(v8, 0);
          icu::RuleBasedTimeZone::addTransitionRule(v19, v11, a3);
          if (*a3 >= 1)
          {
            goto LABEL_18;
          }
        }
      }

      icu::RuleBasedTimeZone::complete(v19, a3);
      if (*a3 <= 0)
      {
        if (*(a1 + 168) < 0)
        {
          v12 = *(a1 + 172);
        }

        else
        {
          v12 = *(a1 + 168) >> 5;
        }

        if (v12 >= 1)
        {
          v13 = *(a1 + 232) < 0 ? *(a1 + 236) : *(a1 + 232) >> 5;
          if (v13 >= 1)
          {
            operator new();
          }
        }

        icu::VTimeZone::writeZone(a1, a2, v19, v15, a3);
      }

LABEL_18:
      icu::RuleBasedTimeZone::~RuleBasedTimeZone(v19);
      v9 = 0;
    }

    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    icu::UnicodeString::~UnicodeString(v10, &v20);
    icu::UVector::~UVector(v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void icu::VTimeZone::writeSimple(UChar **this, double a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*(a3 + 4))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v4;
  v5 = a3;
  icu::VTimeZone::writeSimple(this, &v5, a4, a2);
}

void icu::VTimeZone::writeSimple(UChar **a1, uint64_t *a2, int *a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    icu::UVector::UVector(v18, uprv_deleteUObject, uhash_compareUnicodeString, a3);
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    (*(*a1 + 19))(a1, &v17, &v16, &v15, a3, a4);
    v8 = v16;
    v9 = v17;
    v10 = v15;
    v11 = *a3;
    if (v11 <= 0)
    {
      icu::UnicodeString::operator=(&v21, a1 + 1);
      memset(v20, 0, sizeof(v20));
      icu::RuleBasedTimeZone::RuleBasedTimeZone(v20, &v21, v9);
      if (v8 && v10)
      {
        icu::RuleBasedTimeZone::addTransitionRule(v20, v8, a3);
        icu::RuleBasedTimeZone::addTransitionRule(v20, v10, a3);
        v8 = 0;
        v10 = 0;
      }

      if (*a3 <= 0)
      {
        if (a1[21] < 0)
        {
          v12 = *(a1 + 43);
        }

        else
        {
          v12 = *(a1 + 84) >> 5;
        }

        if (v12 >= 1)
        {
          v13 = a1[29] < 0 ? *(a1 + 59) : *(a1 + 116) >> 5;
          if (v13 >= 1)
          {
            operator new();
          }
        }

        icu::VTimeZone::writeZone(a1, a2, v20, v18, a3);
      }

      icu::RuleBasedTimeZone::~RuleBasedTimeZone(v20);
      v9 = 0;
    }

    if (v10)
    {
      (*(*v10 + 1))(v10);
    }

    if (v8)
    {
      (*(*v8 + 1))(v8);
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    icu::UnicodeString::~UnicodeString(v11, &v21);
    icu::UVector::~UVector(v18);
  }

  v14 = *MEMORY[0x1E69E9840];
}

char *icu::VTimeZone::parse(char *this, UErrorCode *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    goto LABEL_147;
  }

  v3 = this;
  v4 = *(this + 10);
  if (!v4 || !*(v4 + 8))
  {
    *a2 = U_INVALID_STATE_ERROR;
    goto LABEL_147;
  }

  v102 = 0u;
  v105 = 0;
  v104 = 0u;
  v103 = 0u;
  v100 = 0;
  v101 = &unk_1F0935D00;
  LOWORD(v102) = 2;
  v97 = 0u;
  v99 = 0u;
  v98 = 0u;
  v96 = &unk_1F0935D00;
  LOWORD(v97) = 2;
  v92 = 0u;
  v95 = 0;
  v94 = 0u;
  v93 = 0u;
  v91 = &unk_1F0935D00;
  LOWORD(v92) = 2;
  v87 = 0u;
  v90 = 0;
  v89 = 0u;
  v88 = 0u;
  v86 = &unk_1F0935D00;
  LOWORD(v87) = 2;
  v82 = 0u;
  v85 = 0;
  v84 = 0u;
  v83 = 0u;
  v81 = &unk_1F0935D00;
  LOWORD(v82) = 2;
  v77 = 0u;
  v80 = 0;
  v79 = 0u;
  v78 = 0u;
  v75 = 0;
  v76 = &unk_1F0935D00;
  LOWORD(v77) = 2;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v71 = &unk_1F0935D00;
  LOWORD(v72) = 2;
  memset(v69, 0, sizeof(v69));
  icu::UVector::UVector(v69, uprv_deleteUObject, 0, a2);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  icu::UVector::UVector(v67, uprv_deleteUObject, uhash_compareUnicodeString, a2);
  if (*a2 > 0)
  {
    goto LABEL_146;
  }

  v5 = *(v3 + 10);
  if (v5[2] < 1)
  {
LABEL_144:
    if (LODWORD(v69[1]))
    {
      sub_195428644(&v101, 0, &v86);
      operator new();
    }

    goto LABEL_146;
  }

  v6 = 0;
  v7 = 0;
  v61 = 0;
  v8 = 1.83882169e17;
  while (1)
  {
    v9 = icu::UVector::elementAt(v5, v7);
    v10 = v9;
    v11 = *(v9 + 8);
    if ((v11 & 0x8000) != 0)
    {
      v12 = *(v9 + 12);
    }

    else
    {
      v12 = v11 >> 5;
    }

    v13 = icu::UnicodeString::doIndexOf(v9, 0x3Au, 0, v12);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_119;
    }

    v14 = v13;
    icu::UnicodeString::unBogus(&v76);
    v15 = (v77 & 0x8000u) == 0 ? v77 >> 5 : DWORD1(v77);
    icu::UnicodeString::doReplace(&v76, 0, v15, v10, 0, v14);
    v16 = v14 + 1;
    icu::UnicodeString::unBogus(&v71);
    v17 = *(v10 + 8);
    if (*(v10 + 8) < 0)
    {
      v18 = *(v10 + 12);
      if (v18 > v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v14 < v17 >> 5)
      {
        goto LABEL_19;
      }

      v18 = v17 >> 5;
    }

    v16 = v18;
LABEL_19:
    v19 = v17;
    if ((v72 & 0x8000u) == 0)
    {
      v20 = v72 >> 5;
    }

    else
    {
      v20 = DWORD1(v72);
    }

    v21 = v17 >> 5;
    if (v19 < 0)
    {
      v21 = *(v10 + 12);
    }

    icu::UnicodeString::doReplace(&v71, 0, v20, v10, v16, v21 - v16);
    v22 = (v77 & 0x8000u) == 0 ? v77 >> 5 : DWORD1(v77);
    if (v6 == 2)
    {
      break;
    }

    if (v6 != 1)
    {
      if (icu::UnicodeString::doCompare(&v76, 0, v22, L"BEGIN", 0, -1))
      {
        v6 = 0;
      }

      else
      {
        if ((v72 & 0x8000u) == 0)
        {
          v41 = v72 >> 5;
        }

        else
        {
          v41 = DWORD1(v72);
        }

        v6 = icu::UnicodeString::doCompare(&v71, 0, v41, L"VTIMEZONE", 0, -1) == 0;
      }

      goto LABEL_119;
    }

    if (!icu::UnicodeString::doCompare(&v76, 0, v22, L"TZID", 0, -1))
    {
      v39 = &v101;
      goto LABEL_95;
    }

    if ((v77 & 0x8000u) == 0)
    {
      v23 = v77 >> 5;
    }

    else
    {
      v23 = DWORD1(v77);
    }

    if (!icu::UnicodeString::doCompare(&v76, 0, v23, "T", 0, -1))
    {
      v39 = (v3 + 88);
LABEL_95:
      icu::UnicodeString::operator=(v39, &v71);
LABEL_96:
      v6 = 1;
      goto LABEL_119;
    }

    if ((v77 & 0x8000u) == 0)
    {
      v24 = v77 >> 5;
    }

    else
    {
      v24 = DWORD1(v77);
    }

    if (!icu::UnicodeString::doCompare(&v76, 0, v24, "L", 0, -1))
    {
      *(v3 + 19) = sub_1954283D8(&v71, 0, a2);
      if (*a2 >= 1)
      {
        goto LABEL_146;
      }

      goto LABEL_96;
    }

    if ((v77 & 0x8000u) == 0)
    {
      v25 = v77 >> 5;
    }

    else
    {
      v25 = DWORD1(v77);
    }

    if (icu::UnicodeString::doCompare(&v76, 0, v25, L"BEGIN", 0, -1))
    {
      if ((v77 & 0x8000u) == 0)
      {
        v26 = v77 >> 5;
      }

      else
      {
        v26 = DWORD1(v77);
      }

      icu::UnicodeString::doCompare(&v76, 0, v26, "E", 0, -1);
      goto LABEL_96;
    }

    v66 = "D";
    v42 = sub_1951D0FDC(&v71, &v66, -1);
    v61 = v42 == 0;
    v65 = L"STANDARD";
    if (sub_1951D0FDC(&v71, &v65, -1) && v42)
    {
      goto LABEL_146;
    }

    v43 = v102 >> 5;
    if ((v102 & 0x8000u) != 0)
    {
      v43 = DWORD1(v102);
    }

    if (!v43)
    {
      goto LABEL_146;
    }

    if (v67[2])
    {
      icu::UVector::removeAllElements(v67);
    }

    v6 = 2;
    if (v97)
    {
      v44 = 2;
    }

    else
    {
      v44 = v97 & 0x1E;
    }

    LOWORD(v97) = v44;
    v45 = v92 & 0x1E;
    if (v92)
    {
      v45 = 2;
    }

    LOWORD(v92) = v45;
    v46 = v87 & 0x1E;
    if (v87)
    {
      v46 = 2;
    }

    LOWORD(v87) = v46;
LABEL_119:
    ++v7;
    v5 = *(v3 + 10);
    if (v7 >= v5[2])
    {
      goto LABEL_144;
    }
  }

  if (!icu::UnicodeString::doCompare(&v76, 0, v22, "D", 0, -1))
  {
    v40 = &v81;
LABEL_117:
    icu::UnicodeString::operator=(v40, &v71);
LABEL_118:
    v6 = 2;
    goto LABEL_119;
  }

  if ((v77 & 0x8000u) == 0)
  {
    v27 = v77 >> 5;
  }

  else
  {
    v27 = DWORD1(v77);
  }

  if (!icu::UnicodeString::doCompare(&v76, 0, v27, "T", 0, -1))
  {
    v40 = &v86;
    goto LABEL_117;
  }

  if ((v77 & 0x8000u) == 0)
  {
    v28 = v77 >> 5;
  }

  else
  {
    v28 = DWORD1(v77);
  }

  if (!icu::UnicodeString::doCompare(&v76, 0, v28, L"TZOFFSETFROM", 0, -1))
  {
    v40 = &v96;
    goto LABEL_117;
  }

  if ((v77 & 0x8000u) == 0)
  {
    v29 = v77 >> 5;
  }

  else
  {
    v29 = DWORD1(v77);
  }

  if (!icu::UnicodeString::doCompare(&v76, 0, v29, "T", 0, -1))
  {
    v40 = &v91;
    goto LABEL_117;
  }

  if ((v77 & 0x8000u) == 0)
  {
    v30 = v77 >> 5;
  }

  else
  {
    v30 = DWORD1(v77);
  }

  if (!icu::UnicodeString::doCompare(&v76, 0, v30, L"RDATE", 0, -1))
  {
    v70 = 0;
    if ((v72 & 0x8000) != 0)
    {
      v47 = DWORD1(v72);
      if ((SDWORD1(v72) & 0x80000000) == 0)
      {
        v48 = 0;
      }

      else
      {
        v48 = DWORD1(v72);
      }
    }

    else
    {
      v47 = v72 >> 5;
      v48 = 0;
    }

    icu::UnicodeString::doIndexOf(&v71, 0x2Cu, v48, v47 - v48);
    operator new();
  }

  v64 = L"RRULE";
  if (sub_1951D0FDC(&v76, &v64, -1))
  {
    v63 = "E";
    if (sub_1951D0FDC(&v76, &v63, -1))
    {
      goto LABEL_118;
    }

    v31 = v82 >> 5;
    if ((v82 & 0x8000u) != 0)
    {
      v31 = DWORD1(v82);
    }

    if (!v31)
    {
      goto LABEL_146;
    }

    v32 = v97 >> 5;
    if ((v97 & 0x8000u) != 0)
    {
      v32 = DWORD1(v97);
    }

    if (!v32)
    {
      goto LABEL_146;
    }

    v33 = v92 >> 5;
    if ((v92 & 0x8000u) != 0)
    {
      v33 = DWORD1(v92);
    }

    if (!v33)
    {
      goto LABEL_146;
    }

    v34 = v87 >> 5;
    if ((v87 & 0x8000u) != 0)
    {
      v34 = DWORD1(v87);
    }

    if (!v34)
    {
      sub_195428644(&v101, v61, &v86);
    }

    v70 = 0;
    v35 = sub_195428768(&v96, a2);
    v36 = sub_195428768(&v91, a2);
    if (*a2 >= 1)
    {
      goto LABEL_146;
    }

    if (v61)
    {
      v37 = v36 <= v35 ? (v36 - 3600000) : v35;
      v38 = v36 <= v35 ? 3600000 : (v36 - v35);
    }

    else
    {
      v38 = 0;
      v37 = v36;
    }

    v49.n128_f64[0] = sub_1954283D8(&v81, v35, a2);
    if (*a2 <= 0 && (v62 = 1.83882169e17, v50 = sub_195428E84(&v86, v37, v38, v67, v35, a2), sub_1951D6B10(&v70, v50, a2), *a2 <= 0))
    {
      if ((*(*v70 + 56))(v70, v35, 0, &v62) && v62 < v8)
      {
        v8 = v62;
      }

      v52 = v70;
      v70 = 0;
      icu::UVector::adoptElement(v69, v52, a2);
      v51 = *a2 < U_ILLEGAL_ARGUMENT_ERROR;
      v6 = *a2 < 1 ? 1 : 2;
    }

    else
    {
      v51 = 0;
      v6 = 2;
    }

    if (v70)
    {
      (*(*v70 + 8))(v70, v49);
    }

    if (!v51)
    {
      goto LABEL_146;
    }

    goto LABEL_119;
  }

  if (!v67[2])
  {
    operator new();
  }

LABEL_146:
  icu::UVector::~UVector(v67);
  icu::UVector::~UVector(v69);
  icu::UnicodeString::~UnicodeString(v53, &v71);
  icu::UnicodeString::~UnicodeString(v54, &v76);
  icu::UnicodeString::~UnicodeString(v55, &v81);
  icu::UnicodeString::~UnicodeString(v56, &v86);
  icu::UnicodeString::~UnicodeString(v57, &v91);
  icu::UnicodeString::~UnicodeString(v58, &v96);
  this = icu::UnicodeString::~UnicodeString(v59, &v101);
LABEL_147:
  v60 = *MEMORY[0x1E69E9840];
  return this;
}

double sub_1954283D8(uint64_t a1, int a2, int *a3)
{
  v3 = 0.0;
  if (*a3 <= 0)
  {
    v7 = *(a1 + 8);
    if (*(a1 + 8) < 0)
    {
      v8 = *(a1 + 12);
    }

    else
    {
      v8 = v7 >> 5;
    }

    if (v8 - 17 < 0xFFFFFFFE)
    {
      goto LABEL_15;
    }

    v9 = a1 + 10;
    if ((v7 & 2) == 0)
    {
      v9 = *(a1 + 24);
    }

    if (*(v9 + 16) != 84)
    {
      goto LABEL_15;
    }

    if (v8 == 16)
    {
      v10 = v7;
      v11 = v7 >> 5;
      if (v10 < 0)
      {
        v11 = *(a1 + 12);
      }

      if (v11 < 0x10 || *(v9 + 30) != 90)
      {
        goto LABEL_15;
      }
    }

    v12 = sub_19542C334(a1, 0, 4, a3);
    v13 = sub_19542C334(a1, 4u, 2, a3);
    v14 = sub_19542C334(a1, 6u, 2, a3);
    v15 = sub_19542C334(a1, 9u, 2, a3);
    v16 = sub_19542C334(a1, 0xBu, 2, a3);
    v17 = sub_19542C334(a1, 0xDu, 2, a3);
    if (*a3 > 0 || ((v19 = v17, (v12 & 3) == 0) ? ((HIDWORD(v22) = -1030792151 * v12 + 85899344, LODWORD(v22) = HIDWORD(v22), v21 = v22 >> 2, LODWORD(v22) = HIDWORD(v22), (v22 >> 4) >= 0xA3D70B) ? (v23 = 0) : (v23 = 12), v21 <= 0x28F5C28 ? (v20 = v23) : (v20 = 12)) : (v20 = 0), v12 < 0 || (v13 - 13) < 0xFFFFFFF4 || v14 < 1 || v14 > byte_19548DBC2[v20 - 1 + v13] || v15 > 0x17 || v16 > 0x3B || v17 >= 0x3C))
    {
LABEL_15:
      *a3 = 3;
    }

    else
    {
      v24 = sub_195328D5C(v12, v13 - 1, v14);
      v25 = a2;
      if (v8 == 16)
      {
        v25 = 0.0;
      }

      return (3600000 * v15 + 60000 * v16 + 1000 * v19) + (86400000 * v24) - v25;
    }
  }

  return v3;
}

void *sub_195428644(UChar **a1, int a2, UChar **a3)
{
  v16 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::operator=(a3, a1);
  if (a2)
  {
    v12 = "(";
    icu::UnicodeString::UnicodeString(v13, 1, &v12);
    if ((v14 & 0x8000u) == 0)
    {
      v5 = v14 >> 5;
    }

    else
    {
      v5 = v15;
    }

    icu::UnicodeString::doAppend(a3, v13, 0, v5);
    result = icu::UnicodeString::~UnicodeString(v6, v13);
  }

  else
  {
    v11 = "(";
    icu::UnicodeString::UnicodeString(v13, 1, &v11);
    if ((v14 & 0x8000u) == 0)
    {
      v8 = v14 >> 5;
    }

    else
    {
      v8 = v15;
    }

    icu::UnicodeString::doAppend(a3, v13, 0, v8);
    result = icu::UnicodeString::~UnicodeString(v9, v13);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195428768(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v6 = *(a1 + 12);
    if ((v6 & 0xFFFFFFFD) != 5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (((v5 >> 5) & 0x3FD) != 5)
    {
      goto LABEL_18;
    }

    v6 = v5 >> 5;
  }

  if ((v5 & 2) != 0)
  {
    v7 = (a1 + 10);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = *v7;
  if (v8 == 43)
  {
    v9 = 1000;
  }

  else
  {
    if (v8 != 45)
    {
      goto LABEL_18;
    }

    v9 = -1000;
  }

  v10 = sub_19542C334(a1, 1u, 2, a2);
  v11 = sub_19542C334(a1, 3u, 2, a2);
  if (v6 == 7)
  {
    v12 = sub_19542C334(a1, 5u, 2, a2);
  }

  else
  {
    v12 = 0;
  }

  if (*a2 < 1)
  {
    return (v9 * (v12 + 60 * (v11 + 60 * v10)));
  }

LABEL_18:
  result = 0;
  *a2 = 3;
  return result;
}

uint64_t sub_195428898(int a1, int a2, int a3, icu::UVector *this, double a5, int a6, int *a7)
{
  v61[9] = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (this && *(this + 2))
    {
      memset(v61, 0, 64);
      v11 = icu::UVector::elementAt(this, 0);
      icu::UnicodeString::UnicodeString(v61, v11);
      v56 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v54 = 7;
      v55 = 0;
      v53 = 0.0;
      sub_19542C4AC(v61, &v56 + 1, &v56, &v55, v59, &v54, &v53, a7);
      v12 = *a7;
      if (v12 > 0)
      {
        goto LABEL_98;
      }

      v13 = *(this + 2);
      if (v13 == 1)
      {
        if (v54 > 1)
        {
          if (v54 == 7)
          {
            v14 = HIDWORD(v56);
            if (HIDWORD(v56) != -1)
            {
              if (v56)
              {
                v15 = 0;
                v16 = 31;
                do
                {
                  v17 = *(v59 + v15);
                  if (v17 < 0)
                  {
                    v17 += dword_195494570[v14] + 1;
                    *(v59 + v15) = v17;
                  }

                  if (v17 < v16)
                  {
                    v16 = v17;
                  }

                  v15 += 4;
                }

                while (v15 != 28);
                for (i = 1; i != 7; ++i)
                {
                  v19 = 0;
                  while (*(v59 + v19) != i + v16)
                  {
                    v19 += 4;
                    if (v19 == 28)
                    {
                      goto LABEL_97;
                    }
                  }
                }

                goto LABEL_76;
              }
            }
          }

LABEL_97:
          v12 = 27;
          *a7 = 27;
LABEL_98:
          icu::UnicodeString::~UnicodeString(v12, v61);
          goto LABEL_99;
        }

        v16 = 0;
LABEL_76:
        v47 = 0;
        *v48 = 0;
        v46 = 0;
        sub_195329158(&v48[1], v48, &v47 + 1, &v47, &v46 + 1, &v46, a7, a6 + a5);
        v12 = *a7;
        if (v12 >= 1)
        {
          goto LABEL_98;
        }

        v35 = v56;
        v36 = v55;
        v37 = __PAIR64__(v56, v55) == 0;
        if (v56 | v55 | v16)
        {
          v38 = v16;
        }

        else
        {
          v38 = HIDWORD(v47);
        }

        v45 = 0;
        if (v53 == -1.84303903e17)
        {
          v45 = 0x7FFFFFFF;
        }

        else
        {
          LODWORD(v57[0]) = 0;
          LODWORD(v52) = 0;
          v51 = 0;
          v50 = 0;
          sub_195329158(&v45, v57, &v52, &v51 + 1, &v51, &v50, a7, v53);
          v12 = *a7;
          if (v12 >= 1)
          {
            goto LABEL_98;
          }
        }

        if (v38)
        {
          v39 = v37;
        }

        else
        {
          v39 = 0;
        }

        if (v39)
        {
          operator new();
        }

        if (v35 && v36 && !v38)
        {
          operator new();
        }

        if (v35 && !v36 && v38)
        {
          operator new();
        }

        goto LABEL_97;
      }

      if (v13 > 7)
      {
        goto LABEL_97;
      }

      v20 = HIDWORD(v56);
      if (HIDWORD(v56) == -1)
      {
        goto LABEL_97;
      }

      v43 = v56;
      if (!v56)
      {
        goto LABEL_97;
      }

      v21 = v54;
      if (!v54)
      {
        goto LABEL_97;
      }

      v16 = 31;
      if (v54 >= 1)
      {
        v22 = v59;
        v23 = v54;
        do
        {
          v25 = *v22++;
          v24 = v25;
          if (v25 <= 0)
          {
            v24 += dword_195494570[SHIDWORD(v56)] + 1;
          }

          if (v24 < v16)
          {
            v16 = v24;
          }

          --v23;
        }

        while (v23);
      }

      v26 = v53;
      if (v13 <= 1)
      {
        v44 = HIDWORD(v56);
LABEL_74:
        v53 = v26;
        if (v21 != 7)
        {
          goto LABEL_97;
        }

        HIDWORD(v56) = v44;
        goto LABEL_76;
      }

      v27 = 1;
      v42 = -1;
      v44 = HIDWORD(v56);
      while (1)
      {
        v28 = icu::UVector::elementAt(this, v27);
        icu::UnicodeString::operator=(v61, v28);
        v51 = 0;
        v52 = 0.0;
        memset(v57, 0, sizeof(v57));
        v58 = 0;
        v49 = 7;
        sub_19542C4AC(v61, &v51 + 1, &v51, &v50, v57, &v49, &v52, a7);
        v12 = *a7;
        if (v12 > 0)
        {
          goto LABEL_98;
        }

        if (v52 > v26)
        {
          v26 = v52;
        }

        v29 = HIDWORD(v51);
        if (HIDWORD(v51) == -1)
        {
          goto LABEL_97;
        }

        if (!v51)
        {
          goto LABEL_97;
        }

        v30 = v49;
        if (!v49)
        {
          goto LABEL_97;
        }

        v21 += v49;
        if (v21 > 7 || v51 != v43)
        {
          goto LABEL_97;
        }

        v32 = HIDWORD(v51) - v20;
        if (HIDWORD(v51) != v20)
        {
          if (v42 == -1)
          {
            if (v32 > 0)
            {
              if (v32 != 11)
              {
                v42 = HIDWORD(v51);
                if (v32 != 1)
                {
                  goto LABEL_97;
                }

                goto LABEL_62;
              }
            }

            else
            {
              v16 = 31;
              if (v32 != -11)
              {
                v44 = HIDWORD(v51);
                v42 = HIDWORD(v51);
                if (v32 != -1)
                {
                  goto LABEL_97;
                }

                goto LABEL_62;
              }

              v44 = HIDWORD(v51);
            }

            v42 = HIDWORD(v51);
          }

          else if (HIDWORD(v51) != v42)
          {
            goto LABEL_97;
          }
        }

LABEL_62:
        if (HIDWORD(v51) == v44 && v49 >= 1)
        {
          v33 = v57;
          do
          {
            v34 = *v33;
            if (*v33 <= 0)
            {
              v34 += dword_195494570[v29] + 1;
            }

            *v33++ = v34;
            if (v34 < v16)
            {
              v16 = v34;
            }

            --v30;
          }

          while (v30);
        }

        if (++v27 >= *(this + 2))
        {
          goto LABEL_74;
        }
      }
    }

    *a7 = 1;
  }

LABEL_99:
  v40 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_195428E84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, int *a6)
{
  if (*a6 <= 0)
  {
    if (!a4 || (v7 = a4[2], !v7))
    {
      operator new();
    }

    v10 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
    if (v10)
    {
      v11 = v10;
      if (v7 < 1)
      {
LABEL_9:
        operator new();
      }

      v12 = 0;
      while (1)
      {
        v13 = icu::UVector::elementAt(a4, v12);
        v11[v12] = sub_1954283D8(v13, a5, a6);
        if (*a6 >= 1)
        {
          break;
        }

        if (v7 == ++v12)
        {
          goto LABEL_9;
        }
      }

      free(v11);
    }

    else
    {
      *a6 = 7;
    }
  }

  return 0;
}

void *icu::VTimeZone::writeZone(void *result, uint64_t *a2, UChar **a3, icu::UVector *a4, int *a5)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v5 = a5;
    v8 = a2;
    v9 = result;
    result = icu::VTimeZone::writeHeaders(result, a2, a5);
    if (*v5 <= 0)
    {
      v97 = v5;
      if (a4 && *(a4 + 2) >= 1)
      {
        v10 = 0;
        do
        {
          v11 = icu::UVector::elementAt(a4, v10);
          v12 = *(v11 + 8);
          v13 = v12;
          v14 = v12 >> 5;
          if (v13 >= 0)
          {
            v15 = v14;
          }

          else
          {
            v15 = *(v11 + 12);
          }

          icu::UnicodeString::doAppend(*v8, v11, 0, v15);
          icu::UnicodeString::doAppend(*v8, L"\r\n", 0, 0xFFFFFFFFLL);
          ++v10;
        }

        while (v10 < *(a4 + 2));
      }

      v120 = 0u;
      v123 = 0;
      v122 = 0u;
      v121 = 0u;
      v119 = &unk_1F0935D00;
      LOWORD(v120) = 2;
      v115 = 0u;
      v118 = 0;
      v117 = 0u;
      v116 = 0u;
      v114 = &unk_1F0935D00;
      LOWORD(v115) = 2;
      v102 = 0;
      v103 = 0;
      v101 = 0;
      memset(v100, 0, sizeof(v100));
      icu::TimeZoneTransition::TimeZoneTransition(v100);
      v110 = 0u;
      v113 = 0;
      v112 = 0u;
      v111 = 0u;
      v109 = &unk_1F0935D00;
      LOWORD(v110) = 2;
      if ((*(*a3 + 14))(a3, 0, v100, -1.84303903e17))
      {
        *v91 = 0;
        v92 = a3;
        v86 = v9;
        v87 = v8;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v93 = 0;
        v85 = 0;
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v84 = 0;
        v96 = 0;
        v19 = 0;
        *v94 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        while (1)
        {
          v98 = v16;
          v95 = v17;
          Time = icu::TimeZoneTransition::getTime(v100);
          v27 = icu::TimeZoneTransition::getTo(v100);
          icu::TimeZoneRule::getName(v27, &v109);
          v28 = icu::TimeZoneTransition::getTo(v100);
          DSTSavings = icu::TimeZoneRule::getDSTSavings(v28);
          v30 = icu::TimeZoneTransition::getFrom(v100);
          RawOffset = icu::TimeZoneRule::getRawOffset(v30);
          v32 = icu::TimeZoneTransition::getFrom(v100);
          v33 = icu::TimeZoneRule::getDSTSavings(v32) + RawOffset;
          v34 = icu::TimeZoneTransition::getFrom(v100);
          v35 = icu::TimeZoneRule::getDSTSavings(v34);
          v36 = icu::TimeZoneTransition::getTo(v100);
          v37 = icu::TimeZoneRule::getRawOffset(v36);
          v38 = icu::TimeZoneTransition::getTo(v100);
          v39 = icu::TimeZoneRule::getDSTSavings(v38);
          v40 = icu::TimeZoneTransition::getTime(v100);
          sub_195329158(&v103 + 4, &v103, &v102 + 1, &v102, &v101 + 1, &v101, v5, v40 + v33);
          v41 = *v5;
          if (v41 > 0)
          {
            goto LABEL_132;
          }

          v42 = (v39 + v37);
          v43 = sub_195329260(SHIDWORD(v103), v103, SHIDWORD(v102));
          if (DSTSavings)
          {
            v44 = v96;
            if (!v21)
            {
              v45 = icu::TimeZoneTransition::getTo(v100);
              {
                v21 = (*(*v48 + 24))(v48);
              }

              else
              {
                v21 = 0;
              }

              v44 = v96;
            }

            v49 = v20;
            if (v44 >= 1)
            {
              v56 = v94[0];
              v55 = v94[1];
              if (HIDWORD(v103) == v91[1] + v44)
              {
                if (v120)
                {
                  v60 = (v110 & 1) == 0;
                }

                else
                {
                  v57 = (v110 & 0x8000u) == 0 ? v110 >> 5 : DWORD1(v110);
                  v58 = (v120 & 0x8000u) == 0 ? v120 >> 5 : DWORD1(v120);
                  v59 = (v120 & 2) != 0 ? (&v120 + 2) : v121;
                  v60 = icu::UnicodeString::doCompare(&v109, 0, v57, v59, v58 & (v58 >> 31), v58 & ~(v58 >> 31));
                  v44 = v96;
                  v55 = v94[1];
                }

                if (!v60 && v98 == v33 && v18 == v42 && v94[0] == v103 && v55 == v102 && v19 == v43 && v90 == v101)
                {
                  v61 = v44 + 1;
                  v43 = v19;
                  v42 = v18;
                  v35 = v95;
                  v33 = v98;
LABEL_53:
                  v96 = v61;
                  *v94 = __PAIR64__(v55, v56);
                  v24 = Time;
                  if (v49 && v21)
                  {
                    v24 = Time;
                    v71 = v86;
                    v8 = v87;
                    v72 = v61;
                    goto LABEL_96;
                  }

                  goto LABEL_88;
                }
              }

              if (v44 == 1)
              {
                icu::VTimeZone::writeZonePropsByTime(v86, v87, 1, &v119, v98, v18, 1, v5, v25);
              }

              else
              {
                icu::VTimeZone::writeZonePropsByDOW(v86, v87, 1, &v119, v98, v18, v94[0], v19, v25, v24, v55, v5);
              }

              v41 = *v5;
              if (v41 >= 1)
              {
                goto LABEL_128;
              }
            }

            icu::UnicodeString::operator=(&v119, &v109);
            v56 = v103;
            v91[1] = HIDWORD(v103);
            v55 = v102;
            v61 = 1;
            v25 = Time;
            LODWORD(v90) = v101;
            goto LABEL_53;
          }

          v49 = v20;
          v50 = v91[0];
          v51 = v93;
          if (!v49)
          {
            break;
          }

LABEL_58:
          if (v51 >= 1)
          {
            if (HIDWORD(v103) == v51 + HIDWORD(v85))
            {
              if (v115)
              {
                v65 = (v110 & 1) == 0;
              }

              else
              {
                v62 = (v110 & 0x8000u) == 0 ? v110 >> 5 : DWORD1(v110);
                v63 = (v115 & 0x8000u) == 0 ? v115 >> 5 : DWORD1(v115);
                v64 = (v115 & 2) != 0 ? (&v115 + 2) : v116;
                v65 = icu::UnicodeString::doCompare(&v109, 0, v62, v64, v63 & (v63 >> 31), v63 & ~(v63 >> 31));
                v51 = v93;
              }

              if (!v65 && HIDWORD(v90) == v33 && v89 == __PAIR64__(v42, v103) && v88 == v102 && v91[0] == v43 && v85 == v101)
              {
                v66 = v51 + 1;
                goto LABEL_84;
              }
            }

            if (v51 == 1)
            {
              icu::VTimeZone::writeZonePropsByTime(v86, v87, 0, &v114, SHIDWORD(v90), HIDWORD(v89), 1, v5, v23);
            }

            else
            {
              icu::VTimeZone::writeZonePropsByDOW(v86, v87, 0, &v114, SHIDWORD(v90), HIDWORD(v89), v89, v91[0], v23, v22, v88, v5);
            }

            v41 = *v5;
            if (v41 >= 1)
            {
              goto LABEL_128;
            }
          }

          v65 = icu::UnicodeString::operator=(&v114, &v109);
          v66 = 1;
          HIDWORD(v90) = v33;
          v84 = v35;
          v88 = v102;
          v89 = __PAIR64__(v42, v103);
          v50 = v43;
          v23 = Time;
          v85 = __PAIR64__(HIDWORD(v103), v101);
LABEL_84:
          v93 = v66;
          v91[0] = v50;
          if (v49)
          {
            v43 = v19;
            v22 = Time;
            v42 = v18;
            v35 = v95;
            v33 = v98;
            if (v21)
            {
              v20 = v49;
              LODWORD(v43) = v19;
              LODWORD(v42) = v18;
              v35 = v95;
              v33 = v98;
              v22 = Time;
LABEL_93:
              v72 = v96;
              if (v96 < 1)
              {
                v71 = v86;
                v8 = v87;
                v49 = v20;
                v74 = HIDWORD(v90);
                v76 = v88;
                v75 = v89;
                LODWORD(v41) = v93;
              }

              else
              {
                v71 = v86;
                v8 = v87;
                v49 = v20;
                if (v21)
                {
                  v56 = v94[0];
LABEL_96:
                  if (v72 == 1)
                  {
                    v65 = icu::VTimeZone::writeFinalRule(v71, v8, 1, v21, v33 - v35, v35, v5, v25);
                  }

                  else
                  {
                    Rule = icu::AnnualTimeZoneRule::getRule(v21);
                    if (sub_19542AC7C(v56, v43, v94[1], Rule))
                    {
                      icu::VTimeZone::writeZonePropsByDOW(v71, v8, 1, &v119, v33, v42, v56, v43, v25, 1.83882169e17, v94[1], v5);
                    }

                    else
                    {
                      icu::VTimeZone::writeZonePropsByDOW(v71, v8, 1, &v119, v33, v42, v56, v43, v25, v24, v94[1], v5);
                      v41 = *v5;
                      if (v41 > 0)
                      {
                        goto LABEL_128;
                      }

                      v104 = 0;
                      v65 = (*(*v21 + 72))(v21, v33 - v35, v35, 0, &v104, v24);
                      if (v65)
                      {
                        v65 = icu::VTimeZone::writeFinalRule(v71, v8, 1, v21, v33 - v35, v35, v5, *&v104);
                      }
                    }
                  }

                  v74 = HIDWORD(v90);
                  v76 = v88;
                  v75 = v89;
                  v41 = v93;
                  if (*v5 > 0)
                  {
                    goto LABEL_128;
                  }
                }

                else
                {
                  if (v96 == 1)
                  {
                    icu::VTimeZone::writeZonePropsByTime(v86, v87, 1, &v119, v33, v42, 1, v5, v25);
                  }

                  else
                  {
                    icu::VTimeZone::writeZonePropsByDOW(v86, v87, 1, &v119, v33, v42, v94[0], v43, v25, v24, v94[1], v5);
                  }

                  v74 = HIDWORD(v90);
                  v76 = v88;
                  v75 = v89;
                  v21 = 0;
                  v41 = v93;
                  if (*v5 >= 1)
                  {
                    goto LABEL_128;
                  }
                }
              }

              if (v41 < 1)
              {
                goto LABEL_127;
              }

              if (!v49)
              {
                if (v41 == 1)
                {
                  icu::VTimeZone::writeZonePropsByTime(v71, v8, 0, &v114, v74, HIDWORD(v89), 1, v5, v23);
                }

                else
                {
                  icu::VTimeZone::writeZonePropsByDOW(v71, v8, 0, &v114, v74, HIDWORD(v89), v75, v91[0], v23, v22, v76, v5);
                }

                v41 = *v5;
                if (v41 < 1)
                {
                  v49 = 0;
                  goto LABEL_127;
                }

                goto LABEL_130;
              }

              if (v41 == 1)
              {
                v65 = icu::VTimeZone::writeFinalRule(v71, v8, 0, v49, v74 - v84, v84, v5, v23);
              }

              else
              {
                v77 = icu::AnnualTimeZoneRule::getRule(v49);
                if (sub_19542AC7C(v75, v91[0], v76, v77))
                {
                  icu::VTimeZone::writeZonePropsByDOW(v71, v8, 0, &v114, v74, HIDWORD(v89), v75, v91[0], v23, 1.83882169e17, v76, v5);
                }

                else
                {
                  icu::VTimeZone::writeZonePropsByDOW(v71, v8, 0, &v114, v74, HIDWORD(v89), v75, v91[0], v23, v22, v76, v5);
                  if (*v5 > 0)
                  {
                    goto LABEL_129;
                  }

                  v104 = 0;
                  v82 = v49;
                  v83 = v74 - v84;
                  v65 = (*(*v82 + 72))(v82, v83, v84, 0, &v104, v22);
                  if (v65)
                  {
                    v65 = icu::VTimeZone::writeFinalRule(v71, v8, 0, v82, v83, v84, v5, *&v104);
                  }

                  v49 = v82;
                }
              }

              if (*v5 > 0)
              {
                goto LABEL_129;
              }

              goto LABEL_127;
            }
          }

          else
          {
            v43 = v19;
            v22 = Time;
            v42 = v18;
            v35 = v95;
            v33 = v98;
          }

LABEL_88:
          v20 = v49;
          v65 = (*(*v92 + 14))(v92, 0, v100, Time);
          v16 = v33;
          v17 = v35;
          v18 = v42;
          v19 = v43;
          if (!v65)
          {
            goto LABEL_93;
          }
        }

        v52 = icu::TimeZoneTransition::getTo(v100);
        if (v52)
        {
          v53 = **v52;
          v49 = v54;
          if (!v54)
          {
LABEL_57:
            v51 = v93;
            goto LABEL_58;
          }

          if (icu::AnnualTimeZoneRule::getEndYear(v54) == 0x7FFFFFFF)
          {
            v49 = (*(*v49 + 24))(v49);
            goto LABEL_57;
          }
        }

        v49 = 0;
        goto LABEL_57;
      }

      v99 = 0;
      (*(*a3 + 6))(a3, 0, &v99 + 4, &v99, v5, 0.0);
      v41 = *v5;
      if (v41 > 0)
      {
        goto LABEL_92;
      }

      v67 = v99 + HIDWORD(v99);
      v68 = v99 != 0;
      v105 = 0u;
      v106 = 0u;
      v108 = 0;
      v107 = 0u;
      v104 = &unk_1F0935D00;
      LOWORD(v105) = 2;
      icu::UnicodeString::operator=(&v104, a3 + 1);
      sub_195428644(&v104, v68, &v109);
      icu::VTimeZone::writeZonePropsByTime(v9, v8, v68, &v109, v67, v67, 0, v5, 0.0 - v67);
      v69 = *v5;
      v65 = icu::UnicodeString::~UnicodeString(v97, &v104);
      v70 = v69 < 1;
      v5 = v97;
      if (v70)
      {
        v49 = 0;
        v21 = 0;
LABEL_127:
        icu::VTimeZone::writeFooter(v65, v8, v5);
      }

      else
      {
LABEL_92:
        v21 = 0;
        v49 = 0;
      }

LABEL_128:
      if (v49)
      {
LABEL_129:
        (*(*v49 + 8))(v49);
      }

LABEL_130:
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

LABEL_132:
      icu::UnicodeString::~UnicodeString(v41, &v109);
      icu::TimeZoneTransition::~TimeZoneTransition(v100);
      icu::UnicodeString::~UnicodeString(v79, &v114);
      result = icu::UnicodeString::~UnicodeString(v80, &v119);
    }
  }

  v81 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195429E78(uint64_t a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 >= -1.84303903e17)
  {
    if (a2 <= 1.83882169e17)
    {
      v3 = a2;
    }

    else
    {
      v3 = 183882168921600000;
    }
  }

  else
  {
    v3 = -184303902528000000;
  }

  v4 = 0;
  memset(v10, 0, sizeof(v10));
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = -v3;
  }

  do
  {
    *(v10 + v4++) = v5 % 0xA;
    v6 = v5 > 9;
    v5 /= 0xAuLL;
  }

  while (v6);
  if (v3 < 0)
  {
    v9 = 45;
    icu::UnicodeString::doAppend(a1, &v9, 0, 1);
  }

  do
  {
    v9 = *(v10 + 2 * v4 - 2) + 48;
    icu::UnicodeString::doAppend(a1, &v9, 0, 1);
    --v4;
  }

  while (v4 > 0);
  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void *icu::VTimeZone::writeHeaders(void *result, uint64_t *a2, int *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_17;
  }

  v5 = result;
  v26 = 0u;
  v29 = 0;
  v28 = 0u;
  v27 = 0u;
  v25 = &unk_1F0935D00;
  LOWORD(v26) = 2;
  icu::UnicodeString::operator=(&v25, (result[9] + 8));
  icu::UnicodeString::doAppend(*a2, L"BEGIN", 0, 0xFFFFFFFFLL);
  v18[8] = L"BEGIN";
  v6 = *a2;
  LOWORD(v20) = 58;
  icu::UnicodeString::doAppend(v6, &v20, 0, 1);
  icu::UnicodeString::doAppend(*a2, L"VTIMEZONE", 0, 0xFFFFFFFFLL);
  v18[7] = L"VTIMEZONE";
  icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
  v18[6] = L"\r\n";
  icu::UnicodeString::doAppend(*a2, L"TZID", 0, 0xFFFFFFFFLL);
  v18[5] = L"TZID";
  v7 = *a2;
  LOWORD(v20) = 58;
  icu::UnicodeString::doAppend(v7, &v20, 0, 1);
  if ((v26 & 0x8000u) == 0)
  {
    v8 = v26 >> 5;
  }

  else
  {
    v8 = DWORD1(v26);
  }

  icu::UnicodeString::doAppend(*a2, &v25, 0, v8);
  icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
  v18[4] = L"\r\n";
  if (v5[12] < 0)
  {
    if (*(v5 + 25))
    {
      goto LABEL_7;
    }
  }

  else if (*(v5 + 48) >> 5)
  {
LABEL_7:
    icu::UnicodeString::doAppend(*a2, "T", 0, 0xFFFFFFFFLL);
    v18[3] = "T";
    v9 = *a2;
    LOWORD(v20) = 58;
    icu::UnicodeString::doAppend(v9, &v20, 0, 1);
    v10 = *(v5 + 48);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(v5 + 25);
    }

    icu::UnicodeString::doAppend(*a2, (v5 + 11), 0, v13);
    icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
    v18[2] = L"\r\n";
  }

  v14 = "asicTimeZoneE";
  if (*(v5 + 19) != 1.83882169e17)
  {
    v21 = 0u;
    v22 = 0u;
    v24 = 0;
    v23 = 0u;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    icu::UnicodeString::doAppend(*a2, "L", 0, 0xFFFFFFFFLL);
    v18[1] = "L";
    v15 = *a2;
    v19 = 58;
    icu::UnicodeString::doAppend(v15, &v19, 0, 1);
    sub_19542B314(&v20, a3, *(v5 + 19));
    v19 = 90;
    icu::UnicodeString::doAppend(&v20, &v19, 0, 1);
    if ((v21 & 0x8000u) == 0)
    {
      v16 = v21 >> 5;
    }

    else
    {
      v16 = DWORD1(v21);
    }

    icu::UnicodeString::doAppend(*a2, &v20, 0, v16);
    icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
    v18[0] = L"\r\n";
    icu::UnicodeString::~UnicodeString(v18, &v20);
  }

  result = icu::UnicodeString::~UnicodeString(v14, &v25);
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::VTimeZone::writeZonePropsByTime(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, signed int a5, unsigned int a6, int a7, int *a8, double a9)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    icu::VTimeZone::beginZoneProps(a9, a1, a2, a3, a4, a5, a6, a8);
    if (*a8 <= 0)
    {
      if (!a7)
      {
        goto LABEL_8;
      }

      icu::UnicodeString::doAppend(*a2, L"RDATE", 0, 0xFFFFFFFFLL);
      v20[1] = L"RDATE";
      v16 = *a2;
      LOWORD(v21) = 58;
      icu::UnicodeString::doAppend(v16, &v21, 0, 1);
      v22 = 0u;
      v23 = 0u;
      v25 = 0;
      v24 = 0u;
      v21 = &unk_1F0935D00;
      LOWORD(v22) = 2;
      sub_19542B314(&v21, a8, a5 + a9);
      v17 = (v22 & 0x8000u) == 0 ? v22 >> 5 : DWORD1(v22);
      icu::UnicodeString::doAppend(*a2, &v21, 0, v17);
      icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
      v20[0] = L"\r\n";
      v18 = *a8;
      v15 = icu::UnicodeString::~UnicodeString(v20, &v21);
      if (v18 <= 0)
      {
LABEL_8:
        icu::VTimeZone::endZoneProps(v15, a2, a3, a8);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void icu::VTimeZone::writeZonePropsByDOW(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, signed int a5, unsigned int a6, int a7, int a8, double a9, double a10, int a11, int *a12)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a12 <= 0)
  {
    icu::VTimeZone::beginZoneProps(a9, a1, a2, a3, a4, a5, a6, a12);
    if (*a12 <= 0)
    {
      icu::VTimeZone::beginRRULE(v18, a2, a7, a12);
      if (*a12 <= 0)
      {
        icu::UnicodeString::doAppend(*a2, "B", 0, 0xFFFFFFFFLL);
        v19 = *a2;
        LOWORD(v25) = 61;
        icu::UnicodeString::doAppend(v19, &v25, 0, 1);
        v26 = 0u;
        v27 = 0u;
        v29 = 0;
        v28 = 0u;
        v25 = &unk_1F0935D00;
        LOWORD(v26) = 2;
        sub_19542B964(a8, 0, &v25);
        if ((v26 & 0x8000u) == 0)
        {
          v20 = v26 >> 5;
        }

        else
        {
          v20 = DWORD1(v26);
        }

        icu::UnicodeString::doAppend(*a2, &v25, 0, v20);
        icu::UnicodeString::doAppend(*a2, &aS_4[6 * a11 - 6], 0, 0xFFFFFFFFLL);
        if (a10 == 1.83882169e17 || (v21 = sub_19542B314(&v25, a12, a5 + a10), icu::VTimeZone::appendUNTIL(v21, a2, &v25, a12), v22 = *a12, v22 <= 0))
        {
          v23 = icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
          icu::VTimeZone::endZoneProps(v23, a2, a3, a12);
        }

        icu::UnicodeString::~UnicodeString(v22, &v25);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

icu::DateTimeRule *icu::VTimeZone::writeFinalRule(icu::DateTimeRule *result, uint64_t *a2, int a3, icu::AnnualTimeZoneRule *this, int a5, int a6, int *a7, double a8)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_3;
  }

  v15 = result;
  result = icu::AnnualTimeZoneRule::getRule(this);
  if (*a7 > 0)
  {
    goto LABEL_3;
  }

  v17 = result;
  result = icu::DateTimeRule::getTimeRuleType(result);
  v46 = a3;
  if (result)
  {
    RuleMillisInDay = icu::DateTimeRule::getRuleMillisInDay(v17);
    if (icu::DateTimeRule::getTimeRuleType(v17) == 2)
    {
      v19 = a6 + a5;
    }

    else if (icu::DateTimeRule::getTimeRuleType(v17) == 1)
    {
      v19 = a6;
    }

    else
    {
      v19 = 0;
    }

    if (v19 + RuleMillisInDay < 0)
    {
      v21 = 0;
      v22 = -1;
    }

    else
    {
      if ((v19 + RuleMillisInDay) <= 0x5265BFF)
      {
        v45 = 0;
        v21 = 1;
LABEL_18:
        RuleMonth = icu::DateTimeRule::getRuleMonth(v17);
        RuleDayOfMonth = icu::DateTimeRule::getRuleDayOfMonth(v17);
        icu::DateTimeRule::getRuleDayOfWeek(v17);
        DateRuleType = icu::DateTimeRule::getDateRuleType(v17);
        v25 = DateRuleType;
        if (v21)
        {
          if (!DateRuleType)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (DateRuleType == 1)
          {
            RuleWeekInMonth = icu::DateTimeRule::getRuleWeekInMonth(v17);
            if (RuleWeekInMonth < 1)
            {
              RuleDayOfMonth = dword_195494570[RuleMonth] - RuleWeekInMonth + 8 * RuleWeekInMonth + 7;
              v25 = 3;
            }

            else
            {
              RuleDayOfMonth = 7 * RuleWeekInMonth - 6;
              v25 = 2;
            }
          }

          if (RuleDayOfMonth + v45)
          {
            dword_195494570[RuleMonth];
          }

          else
          {
            if (RuleMonth >= 1)
            {
              v28 = RuleMonth - 1;
            }

            else
            {
              v28 = 11;
            }

            v29 = dword_195494570[v28];
          }

          if (!v25)
          {
LABEL_32:
            operator new();
          }
        }

        operator new();
      }

      v21 = 0;
      v22 = 1;
    }

    v45 = v22;
    goto LABEL_18;
  }

  if (*a7 <= 0)
  {
    Rule = icu::AnnualTimeZoneRule::getRule(this);
    v30 = icu::DateTimeRule::getRuleMillisInDay(Rule);
    v31 = a8 - (v30 - 86399999);
    if (v30 <= 0x5265BFF)
    {
      v31 = a8;
    }

    if (v30 < 0)
    {
      v32 = -v30 + a8;
    }

    else
    {
      v32 = v31;
    }

    RawOffset = icu::TimeZoneRule::getRawOffset(this);
    DSTSavings = icu::TimeZoneRule::getDSTSavings(this);
    v52 = 0u;
    v53 = 0u;
    v55 = 0;
    v54 = 0u;
    v51 = &unk_1F0935D00;
    LOWORD(v52) = 2;
    icu::TimeZoneRule::getName(this, &v51);
    v35 = icu::DateTimeRule::getDateRuleType(Rule);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v50 = icu::DateTimeRule::getRuleMonth(Rule);
        v43 = icu::DateTimeRule::getRuleDayOfMonth(Rule);
        RuleDayOfWeek = icu::DateTimeRule::getRuleDayOfWeek(Rule);
        icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM(v15, a2, v46, &v51, a6 + a5, DSTSavings + RawOffset, v50, v43, v32, 1.83882169e17, RuleDayOfWeek, a7);
      }

      else if (v35 == 3)
      {
        v49 = icu::DateTimeRule::getRuleMonth(Rule);
        v39 = icu::DateTimeRule::getRuleDayOfMonth(Rule);
        v40 = icu::DateTimeRule::getRuleDayOfWeek(Rule);
        icu::VTimeZone::writeZonePropsByDOW_LEQ_DOM(v15, a2, v46, &v51, a6 + a5, DSTSavings + RawOffset, v49, v39, v32, 1.83882169e17, v40, a7);
      }
    }

    else if (v35)
    {
      if (v35 == 1)
      {
        v48 = icu::DateTimeRule::getRuleMonth(Rule);
        v37 = icu::DateTimeRule::getRuleWeekInMonth(Rule);
        v38 = icu::DateTimeRule::getRuleDayOfWeek(Rule);
        icu::VTimeZone::writeZonePropsByDOW(v15, a2, v46, &v51, a6 + a5, DSTSavings + RawOffset, v48, v37, v32, 1.83882169e17, v38, a7);
      }
    }

    else
    {
      v41 = icu::DateTimeRule::getRuleMonth(Rule);
      v42 = icu::DateTimeRule::getRuleDayOfMonth(Rule);
      icu::VTimeZone::writeZonePropsByDOM(v15, a2, v46, &v51, a6 + a5, DSTSavings + RawOffset, v41, v42, v32, 1.83882169e17, a7);
    }

    result = icu::UnicodeString::~UnicodeString(v36, &v51);
  }

LABEL_3:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19542AC7C(int a1, int a2, int a3, icu::DateTimeRule *this)
{
  if (icu::DateTimeRule::getRuleMonth(this) != a1 || icu::DateTimeRule::getRuleDayOfWeek(this) != a3 || icu::DateTimeRule::getTimeRuleType(this))
  {
    return 0;
  }

  if (icu::DateTimeRule::getDateRuleType(this) == 1 && icu::DateTimeRule::getRuleWeekInMonth(this) == a2)
  {
    return 1;
  }

  RuleDayOfMonth = icu::DateTimeRule::getRuleDayOfMonth(this);
  if (icu::DateTimeRule::getDateRuleType(this) == 2)
  {
    v10 = RuleDayOfMonth % 7 == 1 && (RuleDayOfMonth + 6) / 7 == a2;
    if (v10)
    {
      return 1;
    }

    if (a1 != 1)
    {
      v11 = dword_195494570[a1] - RuleDayOfMonth;
      v10 = v11 % 7 == 6;
      v12 = ((1840700269 * (v11 + 1)) >> 32) + ~v11;
      v13 = (v12 >> 2) + (v12 >> 31);
      if (v10 && v13 == a2)
      {
        return 1;
      }
    }
  }

  if (icu::DateTimeRule::getDateRuleType(this) == 3 && (!(RuleDayOfMonth % 7) ? (v15 = RuleDayOfMonth / 7 == a2) : (v15 = 0), v15 || a1 != 1 && (v16 = dword_195494570[a1] - RuleDayOfMonth, (-1227133513 * v16 + 306783378) <= 0x24924924) && ((((1840700269 * v16) >> 32) - v16) >> 2) + ((((1840700269 * v16) >> 32) - v16) >> 31) - 1 == a2))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::VTimeZone::writeFooter(uint64_t a1, uint64_t *a2, int *a3)
{
  if (*a3 <= 0)
  {
    v9 = v3;
    v10 = v4;
    icu::UnicodeString::doAppend(*a2, "E", 0, 0xFFFFFFFFLL);
    v6 = *a2;
    v8 = 58;
    icu::UnicodeString::doAppend(v6, &v8, 0, 1);
    icu::UnicodeString::doAppend(*a2, L"VTIMEZONE", 0, 0xFFFFFFFFLL);
    return icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
  }

  return result;
}

void icu::VTimeZone::beginZoneProps(double a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, signed int a6, unsigned int a7, int *a8)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    icu::UnicodeString::doAppend(*a3, L"BEGIN", 0, 0xFFFFFFFFLL);
    v30[11] = L"BEGIN";
    v15 = *a3;
    LOWORD(v32) = 58;
    icu::UnicodeString::doAppend(v15, &v32, 0, 1);
    v16 = *a3;
    if (a4)
    {
      icu::UnicodeString::doAppend(v16, "D", 0, 0xFFFFFFFFLL);
      v30[10] = "D";
    }

    else
    {
      icu::UnicodeString::doAppend(v16, L"STANDARD", 0, 0xFFFFFFFFLL);
      v30[9] = L"STANDARD";
    }

    icu::UnicodeString::doAppend(*a3, L"\r\n", 0, 0xFFFFFFFFLL);
    v30[8] = L"\r\n";
    v33 = 0u;
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v32 = &unk_1F0935D00;
    LOWORD(v33) = 2;
    icu::UnicodeString::doAppend(*a3, "T", 0, 0xFFFFFFFFLL);
    v30[7] = "T";
    v17 = *a3;
    v31 = 58;
    icu::UnicodeString::doAppend(v17, &v31, 0, 1);
    sub_19542C21C(a7, &v32);
    if ((v33 & 0x8000u) == 0)
    {
      v18 = v33 >> 5;
    }

    else
    {
      v18 = DWORD1(v33);
    }

    icu::UnicodeString::doAppend(*a3, &v32, 0, v18);
    icu::UnicodeString::doAppend(*a3, L"\r\n", 0, 0xFFFFFFFFLL);
    v30[6] = L"\r\n";
    icu::UnicodeString::doAppend(*a3, L"TZOFFSETFROM", 0, 0xFFFFFFFFLL);
    v30[5] = L"TZOFFSETFROM";
    v19 = *a3;
    v31 = 58;
    icu::UnicodeString::doAppend(v19, &v31, 0, 1);
    sub_19542C21C(a6, &v32);
    if ((v33 & 0x8000u) == 0)
    {
      v20 = v33 >> 5;
    }

    else
    {
      v20 = DWORD1(v33);
    }

    icu::UnicodeString::doAppend(*a3, &v32, 0, v20);
    icu::UnicodeString::doAppend(*a3, L"\r\n", 0, 0xFFFFFFFFLL);
    v30[4] = L"\r\n";
    icu::UnicodeString::doAppend(*a3, "T", 0, 0xFFFFFFFFLL);
    v30[3] = "T";
    v21 = *a3;
    v31 = 58;
    icu::UnicodeString::doAppend(v21, &v31, 0, 1);
    v22 = *(a5 + 8);
    v23 = v22;
    v24 = v22 >> 5;
    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = *(a5 + 12);
    }

    icu::UnicodeString::doAppend(*a3, a5, 0, v25);
    icu::UnicodeString::doAppend(*a3, L"\r\n", 0, 0xFFFFFFFFLL);
    v30[2] = L"\r\n";
    icu::UnicodeString::doAppend(*a3, "D", 0, 0xFFFFFFFFLL);
    v30[1] = "D";
    v26 = *a3;
    v31 = 58;
    icu::UnicodeString::doAppend(v26, &v31, 0, 1);
    sub_19542B314(&v32, a8, a6 + a1);
    if ((v33 & 0x8000u) == 0)
    {
      v27 = v33 >> 5;
    }

    else
    {
      v27 = DWORD1(v33);
    }

    icu::UnicodeString::doAppend(*a3, &v32, 0, v27);
    v28 = *a8;
    if (v28 <= 0)
    {
      icu::UnicodeString::doAppend(*a3, L"\r\n", 0, 0xFFFFFFFFLL);
      v30[0] = L"\r\n";
      v28 = v30;
    }

    icu::UnicodeString::~UnicodeString(v28, &v32);
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19542B314(uint64_t a1, int *a2, double a3)
{
  if (*a2 <= 0)
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_195329158(&v12, &v11 + 1, &v11, &v10 + 1, &v10, &v9, a2, a3);
    if (*a2 <= 0)
    {
      if (*(a1 + 8))
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a1 + 8) & 0x1E;
      }

      *(a1 + 8) = v5;
      sub_19542B964(v12, 4u, a1);
      sub_19542B964(HIDWORD(v11) + 1, 2u, a1);
      sub_19542B964(v11, 2u, a1);
      v13 = 84;
      icu::UnicodeString::doAppend(a1, &v13, 0, 1);
      v6 = v9 % 3600000 / 60000;
      v7 = v9 % 3600000 % 60000;
      sub_19542B964(v9 / 3600000, 2u, a1);
      sub_19542B964(v6, 2u, a1);
      sub_19542B964(v7 / 1000, 2u, a1);
    }
  }

  return a1;
}

void icu::VTimeZone::endZoneProps(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    v11 = v4;
    v12 = v5;
    icu::UnicodeString::doAppend(*a2, "E", 0, 0xFFFFFFFFLL);
    v8 = *a2;
    v10 = 58;
    icu::UnicodeString::doAppend(v8, &v10, 0, 1);
    v9 = *a2;
    if (a3)
    {
      icu::UnicodeString::doAppend(v9, "D", 0, 0xFFFFFFFFLL);
    }

    else
    {
      icu::UnicodeString::doAppend(v9, L"STANDARD", 0, 0xFFFFFFFFLL);
    }

    icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
  }
}

void icu::VTimeZone::writeZonePropsByDOM(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, signed int a5, unsigned int a6, int a7, int a8, double a9, double a10, int *a11)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a11 <= 0)
  {
    icu::VTimeZone::beginZoneProps(a9, a1, a2, a3, a4, a5, a6, a11);
    if (*a11 <= 0)
    {
      icu::VTimeZone::beginRRULE(v17, a2, a7, a11);
      if (*a11 <= 0)
      {
        icu::UnicodeString::doAppend(*a2, L"BYMONTHDAY", 0, 0xFFFFFFFFLL);
        v18 = *a2;
        LOWORD(v24) = 61;
        icu::UnicodeString::doAppend(v18, &v24, 0, 1);
        v25 = 0u;
        v26 = 0u;
        v28 = 0;
        v27 = 0u;
        v24 = &unk_1F0935D00;
        LOWORD(v25) = 2;
        sub_19542B964(a8, 0, &v24);
        if ((v25 & 0x8000u) == 0)
        {
          v19 = v25 >> 5;
        }

        else
        {
          v19 = DWORD1(v25);
        }

        icu::UnicodeString::doAppend(*a2, &v24, 0, v19);
        if (a10 == 1.83882169e17 || (v20 = sub_19542B314(&v24, a11, a5 + a10), icu::VTimeZone::appendUNTIL(v20, a2, &v24, a11), v21 = *a11, v21 <= 0))
        {
          v22 = icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
          icu::VTimeZone::endZoneProps(v22, a2, a3, a11);
        }

        icu::UnicodeString::~UnicodeString(v21, &v24);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void icu::VTimeZone::beginRRULE(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v16 = 0u;
    v17 = 0u;
    v19 = 0;
    v18 = 0u;
    v15 = &unk_1F0935D00;
    LOWORD(v16) = 2;
    icu::UnicodeString::doAppend(*a2, L"RRULE", 0, 0xFFFFFFFFLL);
    v6 = *a2;
    v14 = 58;
    icu::UnicodeString::doAppend(v6, &v14, 0, 1);
    icu::UnicodeString::doAppend(*a2, L"FREQ", 0, 0xFFFFFFFFLL);
    v7 = *a2;
    v14 = 61;
    icu::UnicodeString::doAppend(v7, &v14, 0, 1);
    icu::UnicodeString::doAppend(*a2, "Y", 0, 0xFFFFFFFFLL);
    v8 = *a2;
    v14 = 59;
    icu::UnicodeString::doAppend(v8, &v14, 0, 1);
    icu::UnicodeString::doAppend(*a2, L"BYMONTH", 0, 0xFFFFFFFFLL);
    v9 = *a2;
    v14 = 61;
    icu::UnicodeString::doAppend(v9, &v14, 0, 1);
    sub_19542B964(a3 + 1, 0, &v15);
    if ((v16 & 0x8000u) == 0)
    {
      v10 = v16 >> 5;
    }

    else
    {
      v10 = DWORD1(v16);
    }

    icu::UnicodeString::doAppend(*a2, &v15, 0, v10);
    v11 = *a2;
    v14 = 59;
    icu::UnicodeString::doAppend(v11, &v14, 0, 1);
    icu::UnicodeString::~UnicodeString(v12, &v15);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19542B964(int a1, unsigned int a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  if (a2)
  {
    v5 = a2;
    v6 = v16;
    v7 = a2;
    do
    {
      *v6++ = v4 % 0xA;
      v4 /= 0xAu;
      --v7;
    }

    while (v7);
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v15 = 45;
    icu::UnicodeString::doAppend(a3, &v15, 0, 1);
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v8 = 0;
  do
  {
    *(v16 + v8++) = v4 % 0xA;
    v9 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v9);
  v5 = v8;
  if (a1 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_14:
  v10 = v5 + 1;
  v11 = v16 + 2 * v5 - 2;
  do
  {
    v12 = *v11;
    v11 -= 2;
    v15 = v12 + 48;
    icu::UnicodeString::doAppend(a3, &v15, 0, 1);
    --v10;
  }

  while (v10 > 1);
LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return a3;
}

void icu::VTimeZone::appendUNTIL(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    v19 = v4;
    v20 = v5;
    v7 = *(a3 + 8);
    v8 = v7;
    v9 = v7 >> 5;
    if (v8 < 0)
    {
      v9 = *(a3 + 12);
    }

    if (v9 >= 1)
    {
      v11 = *a2;
      v17 = 59;
      icu::UnicodeString::doAppend(v11, &v17, 0, 1);
      icu::UnicodeString::doAppend(*a2, L"UNTIL", 0, 0xFFFFFFFFLL);
      v12 = *a2;
      v18 = 61;
      icu::UnicodeString::doAppend(v12, &v18, 0, 1);
      v13 = *(a3 + 8);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *(a3 + 12);
      }

      icu::UnicodeString::doAppend(*a2, a3, 0, v16);
    }
  }
}

void icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, signed int a5, unsigned int a6, int a7, int a8, double a9, double a10, int a11, int *a12)
{
  if (*a12 > 0)
  {
    return;
  }

  v13 = a8;
  if (a8 % 7 == 1)
  {
    v18 = (2454267027 * (a8 + 6)) >> 32;
LABEL_5:

    icu::VTimeZone::writeZonePropsByDOW(a1, a2, a3, a4, a5, a6, a7, (v18 >> 2) + (v18 >> 31), a9, a10, a11, a12);
    return;
  }

  if (a7 != 1)
  {
    v19 = dword_195494570[a7] - a8;
    if (v19 % 7 == 6)
    {
      v18 = ((1840700269 * (v19 + 1)) >> 32) + ~v19;
      goto LABEL_5;
    }
  }

  icu::VTimeZone::beginZoneProps(a9, a1, a2, a3, a4, a5, a6, a12);
  if (*a12 > 0)
  {
    return;
  }

  if (v13 <= 0)
  {
    if (a7 >= 1)
    {
      v25 = a7 - 1;
    }

    else
    {
      v25 = 11;
    }

    icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM_sub(v20, a2, v25, v13 - 1, a11, 1 - v13, a5, a12, 1.83882169e17);
    if (*a12 >= 1)
    {
      return;
    }

    v22 = v13 + 6;
    v13 = 1;
  }

  else
  {
    v21 = dword_195494570[a7];
    v22 = 7;
    v23 = v13 + 6 - v21;
    if (v13 + 6 > v21)
    {
      if (a7 <= 10)
      {
        v24 = a7 + 1;
      }

      else
      {
        v24 = 0;
      }

      icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM_sub(v20, a2, v24, 1, a11, v23, a5, a12, 1.83882169e17);
      if (*a12 > 0)
      {
        return;
      }

      v22 = 7 - v23;
    }
  }

  icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM_sub(v20, a2, a7, v13, a11, v22, a5, a12, a10);
  if (*a12 <= 0)
  {

    icu::VTimeZone::endZoneProps(v26, a2, a3, a12);
  }
}

void icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM_sub(uint64_t a1, uint64_t *a2, int a3, int a4, int a5, int a6, int a7, int *a8, double a9)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    v14 = a4;
    if (a3 != 1 && a4 < 0)
    {
      v14 = a4 + dword_195494570[a3] + 1;
    }

    icu::VTimeZone::beginRRULE(a1, a2, a3, a8);
    if (*a8 <= 0)
    {
      icu::UnicodeString::doAppend(*a2, "B", 0, 0xFFFFFFFFLL);
      v29[3] = "B";
      v16 = *a2;
      LOWORD(v31) = 61;
      icu::UnicodeString::doAppend(v16, &v31, 0, 1);
      v17 = &aS_4[6 * a5 - 6];
      icu::UnicodeString::doAppend(*a2, v17, 0, 0xFFFFFFFFLL);
      v29[2] = v17;
      v18 = *a2;
      LOWORD(v31) = 59;
      icu::UnicodeString::doAppend(v18, &v31, 0, 1);
      icu::UnicodeString::doAppend(*a2, L"BYMONTHDAY", 0, 0xFFFFFFFFLL);
      v29[1] = L"BYMONTHDAY";
      v19 = *a2;
      LOWORD(v31) = 61;
      icu::UnicodeString::doAppend(v19, &v31, 0, 1);
      v32 = 0u;
      v33 = 0u;
      v35 = 0;
      v34 = 0u;
      v31 = &unk_1F0935D00;
      LOWORD(v32) = 2;
      sub_19542B964(v14, 0, &v31);
      if ((v32 & 0x8000u) == 0)
      {
        v20 = v32 >> 5;
      }

      else
      {
        v20 = DWORD1(v32);
      }

      icu::UnicodeString::doAppend(*a2, &v31, 0, v20);
      if (a6 >= 2)
      {
        v21 = a6 - 1;
        v22 = v14 + 1;
        do
        {
          v23 = *a2;
          v30 = 44;
          icu::UnicodeString::doAppend(v23, &v30, 0, 1);
          if (v32)
          {
            v24 = 2;
          }

          else
          {
            v24 = v32 & 0x1E;
          }

          LOWORD(v32) = v24;
          sub_19542B964(v22, 0, &v31);
          if ((v32 & 0x8000u) == 0)
          {
            v25 = v32 >> 5;
          }

          else
          {
            v25 = DWORD1(v32);
          }

          icu::UnicodeString::doAppend(*a2, &v31, 0, v25);
          ++v22;
          --v21;
        }

        while (v21);
      }

      if (a9 == 1.83882169e17 || (v26 = sub_19542B314(&v31, a8, a7 + a9), icu::VTimeZone::appendUNTIL(v26, a2, &v31, a8), v27 = *a8, v27 <= 0))
      {
        icu::UnicodeString::doAppend(*a2, L"\r\n", 0, 0xFFFFFFFFLL);
        v29[0] = L"\r\n";
        v27 = v29;
      }

      icu::UnicodeString::~UnicodeString(v27, &v31);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void icu::VTimeZone::writeZonePropsByDOW_LEQ_DOM(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, signed int a5, unsigned int a6, int a7, int a8, double a9, double a10, int a11, int *a12)
{
  if (*a12 <= 0)
  {
    if (a8 == 7 * (a8 / 7))
    {
      v12 = a8 / 7;
      goto LABEL_6;
    }

    if (a7 == 1)
    {
      if (a8 == 29)
      {
        a7 = 1;
        v12 = -1;
LABEL_6:
        icu::VTimeZone::writeZonePropsByDOW(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11, a12);
        return;
      }
    }

    else
    {
      v13 = dword_195494570[a7] - a8;
      if ((-1227133513 * v13 + 306783378) <= 0x24924924)
      {
        v12 = ((((1840700269 * v13) >> 32) - v13) >> 2) + ((((1840700269 * v13) >> 32) - v13) >> 31) - 1;
        goto LABEL_6;
      }
    }

    icu::VTimeZone::writeZonePropsByDOW_GEQ_DOM(a1, a2, a3, a4, a5, a6, a7, a8 - 6, a9, a10, a11, a12);
  }
}

uint64_t sub_19542C21C(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  if (*(a2 + 8))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a2 + 8) & 0x1E;
  }

  *(a2 + 8) = v4;
  if ((a1 & 0x80000000) != 0)
  {
    v7 = 45;
    icu::UnicodeString::doAppend(a2, &v7, 0, 1);
    v3 = -v3;
  }

  else
  {
    v6 = 43;
    icu::UnicodeString::doAppend(a2, &v6, 0, 1);
  }

  sub_19542B964(v3 / 0x36EE80, 2u, a2);
  sub_19542B964((v3 / 0xEA60) % 0x3Cu, 2u, a2);
  return sub_19542B964(v3 / 0x3E8 - 60 * ((71582789 * (v3 / 0x3E8)) >> 32), 2u, a2);
}

uint64_t sub_19542C334(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 8);
  v6 = a3 + a2;
  v7 = v5 >> 5;
  if (*(a1 + 8) < 0)
  {
    v9 = *(a1 + 12);
    if (v9 < a2 || v6 > v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v7 >= a2 && v6 <= v7;
    v9 = v5 >> 5;
    if (!v8)
    {
LABEL_9:
      result = 0;
      *a4 = 3;
      return result;
    }
  }

  if (v9 <= a2)
  {
    goto LABEL_20;
  }

  v11 = a1 + 10;
  if ((v5 & 2) == 0)
  {
    v11 = *(a1 + 24);
  }

  if (*(v11 + 2 * a2) == 43)
  {
    v12 = 1;
  }

  else
  {
LABEL_20:
    v13 = *(a1 + 12);
    if ((v5 & 0x8000u) == 0)
    {
      v13 = v5 >> 5;
    }

    if (v13 <= a2)
    {
      goto LABEL_29;
    }

    v14 = a1 + 10;
    if ((v5 & 2) == 0)
    {
      v14 = *(a1 + 24);
    }

    if (*(v14 + 2 * a2) != 45)
    {
LABEL_29:
      v12 = 1;
      goto LABEL_30;
    }

    v12 = -1;
  }

  if (!--a3)
  {
    v18 = 0;
    return (v18 * v12);
  }

  ++a2;
LABEL_30:
  if ((v5 & 0x8000u) != 0)
  {
    v7 = *(a1 + 12);
  }

  if ((v5 & 2) != 0)
  {
    v15 = a1 + 10;
  }

  else
  {
    v15 = *(a1 + 24);
  }

  v16 = v7 > a2;
  if (v7 >= a2)
  {
    v17 = v7 - a2;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  if (v16)
  {
    v19 = 1;
    v23 = 1;
    v20 = (v15 + 2 * a2);
    do
    {
      v22 = *v20++;
      v21 = v22;
      if ((v22 - 48) > 9)
      {
        break;
      }

      v18 = v21 + 10 * v18 - 48;
      if (a3 == v19)
      {
        return (v18 * v12);
      }

      v23 = v19++ < a3;
      --v17;
    }

    while (v17);
  }

  else
  {
    v23 = 1;
  }

  *a4 = 3;
  v24 = v18 * v12;
  if (v23)
  {
    return 0;
  }

  else
  {
    return v24;
  }
}

void *sub_19542C4AC(void *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, int *a6, double *a7, int *a8)
{
  v82 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    goto LABEL_138;
  }

  v10 = result;
  v65 = 0;
  v11 = 0;
  v12 = 0;
  *a2 = -1;
  *a3 = 0;
  *a4 = 0;
  *a7 = -1.84303903e17;
  v78 = 0u;
  v81 = 0;
  v80 = 0u;
  v79 = 0u;
  v77 = &unk_1F0935D00;
  LOWORD(v78) = 2;
  v73 = 0u;
  v76 = 0;
  v75 = 0u;
  v74 = 0u;
  v71 = 0;
  v72 = &unk_1F0935D00;
  LOWORD(v73) = 2;
  v68 = 0u;
  v70 = 0u;
  v69 = 0u;
  v67 = &unk_1F0935D00;
  LOWORD(v68) = 2;
  do
  {
    while (1)
    {
      v13 = *(v10 + 8);
      if (v12 < 0)
      {
        v15 = 0;
        if ((v13 & 0x8000) != 0)
        {
          v14 = *(v10 + 12);
        }

        else
        {
          v14 = v13 >> 5;
        }
      }

      else if ((v13 & 0x8000) != 0)
      {
        v14 = *(v10 + 12);
        if (v14 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = *(v10 + 12);
        }
      }

      else
      {
        v14 = v13 >> 5;
        if (v14 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14;
        }
      }

      v16 = icu::UnicodeString::doIndexOf(v10, 0x3Bu, v15, v14 - v15);
      if (v16 != -1)
      {
        icu::UnicodeString::unBogus(&v77);
        if ((v78 & 0x8000u) == 0)
        {
          v17 = v78 >> 5;
        }

        else
        {
          v17 = DWORD1(v78);
        }

        icu::UnicodeString::doReplace(&v77, 0, v17, v10, v12, (v16 - v12));
        v12 = v16 + 1;
        goto LABEL_32;
      }

      icu::UnicodeString::unBogus(&v77);
      v18 = *(v10 + 8);
      v19 = v18 >> 5;
      if (v12 < 0)
      {
        v20 = 0;
LABEL_25:
        v21 = v20;
        goto LABEL_26;
      }

      if ((v18 & 0x8000) == 0)
      {
        v20 = v18 >> 5;
        v21 = v12;
        if (v12 <= v18 >> 5)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v20 = *(v10 + 12);
      v21 = v12;
      if (v20 < v12)
      {
        goto LABEL_25;
      }

LABEL_26:
      if ((v78 & 0x8000u) == 0)
      {
        v22 = v78 >> 5;
      }

      else
      {
        v22 = DWORD1(v78);
      }

      if ((v18 & 0x8000u) != 0)
      {
        v19 = *(v10 + 12);
      }

      icu::UnicodeString::doReplace(&v77, 0, v22, v10, v21, v19 - v21);
LABEL_32:
      if ((v78 & 0x8000u) == 0)
      {
        v23 = v78 >> 5;
      }

      else
      {
        v23 = DWORD1(v78);
      }

      v24 = icu::UnicodeString::doIndexOf(&v77, 0x3Du, 0, v23);
      if (v24 == -1)
      {
        goto LABEL_133;
      }

      v25 = v24;
      icu::UnicodeString::unBogus(&v72);
      if ((v73 & 0x8000u) == 0)
      {
        v26 = v73 >> 5;
      }

      else
      {
        v26 = DWORD1(v73);
      }

      icu::UnicodeString::doReplace(&v72, 0, v26, &v77, 0, v25);
      icu::UnicodeString::unBogus(&v67);
      v27 = 0;
      v28 = v78 >> 5;
      if (v25 < -1)
      {
        goto LABEL_42;
      }

      v29 = v25 + 1;
      if ((v78 & 0x8000) == 0)
      {
        v27 = v78 >> 5;
        if (v25 < v27)
        {
          goto LABEL_43;
        }

LABEL_42:
        v29 = v27;
        goto LABEL_43;
      }

      v27 = DWORD1(v78);
      if (SDWORD1(v78) <= v25)
      {
        goto LABEL_42;
      }

LABEL_43:
      if ((v68 & 0x8000u) == 0)
      {
        v30 = v68 >> 5;
      }

      else
      {
        v30 = DWORD1(v68);
      }

      if ((v78 & 0x8000u) != 0)
      {
        v28 = DWORD1(v78);
      }

      icu::UnicodeString::doReplace(&v67, 0, v30, &v77, v29, (v28 - v29));
      v31 = (v73 & 0x8000u) == 0 ? v73 >> 5 : DWORD1(v73);
      if (icu::UnicodeString::doCompare(&v72, 0, v31, L"FREQ", 0, -1))
      {
        break;
      }

      if ((v68 & 0x8000u) == 0)
      {
        v32 = v68 >> 5;
      }

      else
      {
        v32 = DWORD1(v68);
      }

      if (icu::UnicodeString::doCompare(&v67, 0, v32, "Y", 0, -1))
      {
        goto LABEL_133;
      }

      v11 = 1;
      if (v16 == -1)
      {
        goto LABEL_132;
      }
    }

    if ((v73 & 0x8000u) == 0)
    {
      v33 = v73 >> 5;
    }

    else
    {
      v33 = DWORD1(v73);
    }

    v59 = a6;
    if (icu::UnicodeString::doCompare(&v72, 0, v33, L"UNTIL", 0, -1))
    {
      if ((v73 & 0x8000u) == 0)
      {
        v34 = v73 >> 5;
      }

      else
      {
        v34 = DWORD1(v73);
      }

      if (icu::UnicodeString::doCompare(&v72, 0, v34, L"BYMONTH", 0, -1))
      {
        if ((v73 & 0x8000u) == 0)
        {
          v35 = v73 >> 5;
        }

        else
        {
          v35 = DWORD1(v73);
        }

        if (!icu::UnicodeString::doCompare(&v72, 0, v35, "B", 0, -1))
        {
          if ((v68 & 0x8000u) == 0)
          {
            v46 = v68 >> 5;
          }

          else
          {
            v46 = DWORD1(v68);
          }

          if (v46 - 5 < 0xFFFFFFFD)
          {
            goto LABEL_133;
          }

          if (v46 < 3)
          {
            goto LABEL_121;
          }

          v47 = &v68 + 1;
          if ((v68 & 2) == 0)
          {
            v47 = v69;
          }

          v48 = *v47;
          if (v48 != 43)
          {
            if (v48 == 45)
            {
              v49 = -1;
LABEL_117:
              v51 = sub_19542C334(&v67, v46 - 3, 1, a8);
              if (*a8 > 0 || !v51 || v51 > 4)
              {
                goto LABEL_133;
              }

              *a4 = v51 * v49;
              icu::UnicodeString::doReplace(&v67, 0, v46 - 2, 0, 0, 0);
LABEL_121:
              v52 = -7;
              v53 = "S";
              while (1)
              {
                v54 = (v68 & 0x8000u) == 0 ? v68 >> 5 : DWORD1(v68);
                if (!icu::UnicodeString::doCompare(&v67, 0, v54, v53, 0, 2))
                {
                  break;
                }

                v53 += 6;
                if (__CFADD__(v52++, 1))
                {
                  goto LABEL_133;
                }
              }

              *a3 = v52 + 8;
              v38 = v65;
              goto LABEL_130;
            }

            if (v46 == 4)
            {
              goto LABEL_133;
            }
          }

          v49 = 1;
          goto LABEL_117;
        }

        if ((v73 & 0x8000u) == 0)
        {
          v36 = v73 >> 5;
        }

        else
        {
          v36 = DWORD1(v73);
        }

        v37 = icu::UnicodeString::doCompare(&v72, 0, v36, L"BYMONTHDAY", 0, -1);
        v38 = v65;
        if (!v37)
        {
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v66 = v38;
            if ((v39 & 0x80000000) != 0)
            {
              v41 = 0;
              if ((v68 & 0x8000) != 0)
              {
                v40 = DWORD1(v68);
              }

              else
              {
                v40 = v68 >> 5;
              }
            }

            else if ((v68 & 0x8000) != 0)
            {
              v40 = DWORD1(v68);
              if (SDWORD1(v68) >= v39)
              {
                v41 = v39;
              }

              else
              {
                v41 = DWORD1(v68);
              }
            }

            else
            {
              v40 = v68 >> 5;
              if (v40 >= v39)
              {
                v41 = v39;
              }

              else
              {
                v41 = v68 >> 5;
              }
            }

            v42 = icu::UnicodeString::doIndexOf(&v67, 0x2Cu, v41, v40 - v41);
            v43 = v42;
            if (v42 == -1)
            {
              if (v68 < 0)
              {
                v43 = DWORD1(v68);
              }

              else
              {
                v43 = v68 >> 5;
              }
            }

            if (v66 >= *v59)
            {
              break;
            }

            *(a5 + 4 * v66) = sub_19542C334(&v67, v39, v43 - v39, a8);
            v44 = *a8;
            if (v44 > 0)
            {
              goto LABEL_137;
            }

            v38 = v66 + 1;
            v39 = v43 + 1;
            if (v42 == -1)
            {
              goto LABEL_130;
            }
          }

          v44 = 15;
          goto LABEL_136;
        }
      }

      else
      {
        if (v68 < 0)
        {
          v45 = DWORD1(v68);
          if (SDWORD1(v68) > 2)
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (v68 > 0x5Fu)
          {
            goto LABEL_133;
          }

          v45 = v68 >> 5;
        }

        v50 = sub_19542C334(&v67, 0, v45, a8);
        *a2 = v50 - 1;
        v44 = *a8;
        if (v44 > 0)
        {
          goto LABEL_134;
        }

        v38 = v65;
        if ((v50 - 13) < 0xFFFFFFF4)
        {
          goto LABEL_134;
        }
      }
    }

    else
    {
      *a7 = sub_1954283D8(&v67, 0, a8);
      v44 = *a8;
      v38 = v65;
      if (v44 >= 1)
      {
        goto LABEL_137;
      }
    }

LABEL_130:
    v65 = v38;
    a6 = v59;
  }

  while (v16 != -1);
  if (v11)
  {
LABEL_132:
    v44 = v65;
    *a6 = v65;
    goto LABEL_137;
  }

LABEL_133:
  v44 = *a8;
LABEL_134:
  if (v44 > 0)
  {
    goto LABEL_137;
  }

  v44 = 3;
LABEL_136:
  *a8 = v44;
LABEL_137:
  icu::UnicodeString::~UnicodeString(v44, &v67);
  icu::UnicodeString::~UnicodeString(v56, &v72);
  result = icu::UnicodeString::~UnicodeString(v57, &v77);
LABEL_138:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

void vzone_openID(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v3 = a1;
  icu::UnicodeString::UnicodeString(v4, a2 == -1, &v3);
  icu::VTimeZone::createVTimeZoneByID(v4, v2);
}

uint64_t *vzone_openData(uint64_t a1, int a2, const icu::UnicodeString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v10 = a1;
  icu::UnicodeString::UnicodeString(v11, a2 == -1, &v10);
  v9 = v10;
  v5 = icu::VTimeZone::createVTimeZone(&v9, v11, a3, v4);
  icu::UnicodeString::~UnicodeString(v6, v11);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t vzone_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t vzone_getTZURL(icu::VTimeZone *a1, void **a2, int *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v16 = 0;
  v15 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  TZURL = icu::VTimeZone::getTZURL(a1, &v12);
  v6 = 0;
  v7 = v13;
  if ((v13 & 0x8000u) == 0)
  {
    v8 = v13 >> 5;
  }

  else
  {
    v8 = DWORD1(v13);
  }

  *a3 = v8;
  if ((v7 & 0x11) == 0)
  {
    if ((v7 & 2) != 0)
    {
      v6 = &v13 + 2;
    }

    else
    {
      v6 = v14;
    }
  }

  memcpy(*a2, v6, v8);
  icu::UnicodeString::~UnicodeString(v9, &v12);
  v10 = *MEMORY[0x1E69E9840];
  return TZURL;
}

void *vzone_setTZURL(UChar **a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::VTimeZone::setTZURL(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *vzone_write(icu::VTimeZone *a1, void *a2, int *a3, UErrorCode *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v16 = 0;
  v15 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  icu::VTimeZone::write(a1, &v12, a4);
  v6 = v13 >> 5;
  if ((v13 & 0x8000u) != 0)
  {
    v6 = DWORD1(v13);
  }

  *a3 = v6;
  v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
  v8 = 0;
  *a2 = v7;
  if ((v13 & 0x11) == 0)
  {
    if ((v13 & 2) != 0)
    {
      v8 = &v13 + 2;
    }

    else
    {
      v8 = v14;
    }
  }

  memcpy(v7, v8, *a3);
  result = icu::UnicodeString::~UnicodeString(v9, &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *vzone_writeFromStart(icu::VTimeZone *a1, void *a2, int *a3, UErrorCode *a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  icu::VTimeZone::write(a1, a5, &v13, a4);
  v7 = v14 >> 5;
  if ((v14 & 0x8000u) != 0)
  {
    v7 = DWORD1(v14);
  }

  *a3 = v7;
  v8 = malloc_type_malloc(v7, 0x1000040BDFB0063uLL);
  v9 = 0;
  *a2 = v8;
  if ((v14 & 0x11) == 0)
  {
    if ((v14 & 2) != 0)
    {
      v9 = &v14 + 2;
    }

    else
    {
      v9 = v15;
    }
  }

  memcpy(v8, v9, *a3);
  result = icu::UnicodeString::~UnicodeString(v10, &v13);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *vzone_writeSimple(UChar **a1, void *a2, int *a3, UErrorCode *a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  icu::VTimeZone::writeSimple(a1, a5, &v13, a4);
  v7 = v14 >> 5;
  if ((v14 & 0x8000u) != 0)
  {
    v7 = DWORD1(v14);
  }

  *a3 = v7;
  v8 = malloc_type_malloc(v7, 0x1000040BDFB0063uLL);
  v9 = 0;
  *a2 = v8;
  if ((v14 & 0x11) == 0)
  {
    if ((v14 & 2) != 0)
    {
      v9 = &v14 + 2;
    }

    else
    {
      v9 = v15;
    }
  }

  memcpy(v8, v9, *a3);
  result = icu::UnicodeString::~UnicodeString(v10, &v13);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

const UChar *icu::ZoneMeta::getCanonicalCLDRID(icu::ZoneMeta *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  v6 = *(this + 4);
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(this + 3);
  }

  if (v8 >= 129)
  {
    goto LABEL_7;
  }

  if (atomic_load_explicit(&dword_1ED443410, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED443410))
  {
    v9 = dword_1ED443414;
    if (dword_1ED443414 >= 1)
    {
      ID = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_19542D784(a2);
    dword_1ED443414 = *a2;
    icu::umtx_initImplPostInit(&dword_1ED443410);
  }

  if (*a2 > 0)
  {
LABEL_2:
    ID = 0;
    goto LABEL_9;
  }

  v28 = U_ZERO_ERROR;
  memset(v38, 0, 258);
  v27 = v38;
  icu::UnicodeString::extract(this, &v27, 129, &v28);
  if (!uprv_isInvariantUString(v38, -1))
  {
LABEL_7:
    ID = 0;
    v9 = 1;
LABEL_8:
    *a2 = v9;
    goto LABEL_9;
  }

  umtx_lock(&unk_1ED443418);
  ID = uhash_get(qword_1ED4433F0, v38);
  umtx_unlock(&unk_1ED443418);
  if (ID)
  {
    goto LABEL_9;
  }

  v37 = 0;
  v36 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v29 = 0u;
  icu::UnicodeString::extract(this, 0, 0x7FFFFFFFLL, v29, 129);
  v12 = &v29[1];
  if (v29[0])
  {
    v13 = &v29[1];
    do
    {
      v14 = *v13;
      if (v14 == 47)
      {
        v14 = 58;
        *v13 = 58;
      }

      ++v13;
    }

    while (v14);
  }

  v15 = ures_openDirect(0, "keyTypeData", &v28);
  v16 = ures_getByKey(v15, "typeMap", 0, &v28);
  ures_getByKey(v16, "timezone", v16, &v28);
  ures_getByKey(v16, v29, v16, &v28);
  if (v28 > U_ZERO_ERROR)
  {
    v18 = 0;
LABEL_25:
    v28 = U_ZERO_ERROR;
    ures_getByKey(v15, "typeAlias", v16, &v28);
    ures_getByKey(v16, "timezone", v16, &v28);
    StringByKey = ures_getStringByKey(v16, v29, 0, &v28);
    if (v28 > U_ZERO_ERROR || (ID = StringByKey) == 0)
    {
      v21 = icu::TimeZone::dereferOlsonLink(this, v20);
      ID = v21;
      if (v21)
      {
        v22 = u_strlen(v21);
        u_UCharsToChars(ID, v29, v22);
        v29[v22] = 0;
        if (v29[0])
        {
          do
          {
            v23 = *v12;
            if (v23 == 47)
            {
              v23 = 58;
              *v12 = 58;
            }

            ++v12;
          }

          while (v23);
        }

        v28 = U_ZERO_ERROR;
        v24 = ures_getStringByKey(v16, v29, 0, &v28);
        if (v28 <= U_ZERO_ERROR)
        {
          ID = v24;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    goto LABEL_38;
  }

  ID = icu::TimeZone::findID(this, v17);
  v18 = 1;
  if (!ID)
  {
    goto LABEL_25;
  }

LABEL_38:
  ures_close(v16);
  ures_close(v15);
  if (*a2 <= 0)
  {
    umtx_lock(&unk_1ED443418);
    if (!uhash_get(qword_1ED4433F0, v38))
    {
      v26 = icu::TimeZone::findID(this, v25);
      if (v26)
      {
        uhash_put(qword_1ED4433F0, v26, ID, a2);
      }
    }

    if (v18 && *a2 <= 0 && !uhash_get(qword_1ED4433F0, ID))
    {
      uhash_put(qword_1ED4433F0, ID, ID, a2);
    }

    umtx_unlock(&unk_1ED443418);
  }

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
  return ID;
}

void sub_19542D784(int *a1)
{
  qword_1ED4433F0 = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a1);
  if (!qword_1ED4433F0)
  {
    *a1 = 7;
    goto LABEL_5;
  }

  if (*a1 >= 1)
  {
LABEL_5:
    qword_1ED4433F0 = 0;
  }

  sub_195400588(0x14u, sub_19542F6DC);
}

const icu::UnicodeString *icu::ZoneMeta::getCanonicalCLDRID(icu::ZoneMeta *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(this, a3, a3);
  if (*a3 > 0 || CanonicalCLDRID == 0)
  {
    icu::UnicodeString::setToBogus(a2);
  }

  else
  {
    v9 = CanonicalCLDRID;
    icu::UnicodeString::setTo(a2, 1, &v9, -1);
  }

  return a2;
}

const UChar *icu::ZoneMeta::getCanonicalCLDRID(icu::ZoneMeta *this, const icu::TimeZone *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = **this;
  {
    CanonicalCLDRID = *(this + 19);
  }

  else
  {
    v9 = 0;
    v11 = 0u;
    v12 = 0u;
    v14 = 0;
    v13 = 0u;
    v10 = &unk_1F0935D00;
    LOWORD(v11) = 2;
    icu::UnicodeString::operator=(&v10, this + 1);
    CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(&v10, &v9, v5);
    icu::UnicodeString::~UnicodeString(v6, &v10);
  }

  v7 = *MEMORY[0x1E69E9840];
  return CanonicalCLDRID;
}

const icu::UnicodeString *icu::ZoneMeta::getIanaID(icu::ZoneMeta *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(this, a3, a3);
  v25 = CanonicalCLDRID;
  if (*a3 > 0 || CanonicalCLDRID == 0)
  {
    icu::UnicodeString::setToBogus(a2);
  }

  else
  {
    v24 = U_ZERO_ERROR;
    memset(v37, 0, sizeof(v37));
    sub_1951F3478(v37, &v25);
    icu::UnicodeString::UnicodeString(v26, "/");
    icu::UnicodeString::UnicodeString(v28, ":");
    if ((SWORD4(v37[0]) & 0x8000u) == 0)
    {
      v8 = WORD4(v37[0]) >> 5;
    }

    else
    {
      v8 = HIDWORD(v37[0]);
    }

    if ((SWORD4(v26[0]) & 0x8000u) == 0)
    {
      v9 = WORD4(v26[0]) >> 5;
    }

    else
    {
      v9 = HIDWORD(v26[0]);
    }

    v10 = *&v28[8] >> 5;
    if (*&v28[8] < 0)
    {
      v10 = *&v28[12];
    }

    icu::UnicodeString::findAndReplace(v37, 0, v8, v26, 0, v9, v28, 0, v10);
    icu::UnicodeString::~UnicodeString(v11, v28);
    icu::UnicodeString::~UnicodeString(v12, v26);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v28 = 0u;
    v29 = 0u;
    if ((SWORD4(v37[0]) & 0x8000u) == 0)
    {
      v13 = WORD4(v37[0]) >> 5;
    }

    else
    {
      v13 = HIDWORD(v37[0]);
    }

    icu::UnicodeString::extract(v37, 0, v13, v28, 129);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    icu::StackUResourceBundle::StackUResourceBundle(v26);
    ures_openDirectFillIn(v26, 0, "keyTypeData", &v24);
    ures_getByKey(v26, "ianaMap", v26, &v24);
    ures_getByKey(v26, "timezone", v26, &v24);
    v23 = 0;
    StringByKey = ures_getStringByKey(v26, v28, &v23, &v24);
    if (v24 <= U_ZERO_ERROR)
    {
      v22 = StringByKey;
      icu::UnicodeString::setTo(a2, 1, &v22, -1);
      v20 = v22;
      v15 = &v20;
    }

    else
    {
      v21 = v25;
      icu::UnicodeString::setTo(a2, 1, &v21, -1);
      v19 = v21;
      v15 = &v19;
    }

    icu::StackUResourceBundle::~StackUResourceBundle(v15, v26);
    icu::UnicodeString::~UnicodeString(v16, v37);
  }

  v17 = *MEMORY[0x1E69E9840];
  return a2;
}

const icu::UnicodeString *icu::ZoneMeta::getCanonicalCountry(int32_t *this, const icu::UnicodeString *a2, UErrorCode *a3, signed __int8 *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  Region = icu::TimeZone::getRegion(this, a2, a3);
  if (Region && (v8 = Region, u_strcmp("0", Region)))
  {
    icu::UnicodeString::unBogus(a2);
    v9 = *(a2 + 4);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a2 + 3);
    }

    icu::UnicodeString::doReplace(a2, 0, v12, v8, 0, 0xFFFFFFFFLL);
    if (a3)
    {
      v35 = 0;
      *v34 = 0;
      v33 = U_ZERO_ERROR;
      if (atomic_load_explicit(&dword_1EAECA538, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA538))
      {
        sub_19542E01C();
      }

      if (dword_1EAECA53C <= 0)
      {
        umtx_lock(&unk_1ED443418);
        if ((icu::UVector::indexOf(qword_1EAECA528, v8, 0) & 0x80000000) == 0)
        {
LABEL_16:
          umtx_unlock(&unk_1ED443418);
          *a3 = 1;
          goto LABEL_13;
        }

        v15 = icu::UVector::indexOf(qword_1EAECA530, v8, 0);
        umtx_unlock(&unk_1ED443418);
        if (v15 < 0)
        {
          u_UCharsToChars(v8, v34, 2);
          v16 = icu::TimeZone::createTimeZoneIDEnumeration(2, v34, 0, &v33);
          v17 = (*(*v16 + 32))(v16, &v33);
          v18 = v33;
          (*(*v16 + 8))(v16);
          umtx_lock(&unk_1ED443418);
          v36[0] = U_ZERO_ERROR;
          if (v18 <= U_ZERO_ERROR && v17 == 1)
          {
            if ((icu::UVector::indexOf(qword_1EAECA528, v8, 0) & 0x80000000) != 0)
            {
              icu::UVector::addElement(qword_1EAECA528, v8, v36);
            }

            goto LABEL_16;
          }

          if ((icu::UVector::indexOf(qword_1EAECA530, v8, 0) & 0x80000000) != 0)
          {
            icu::UVector::addElement(qword_1EAECA530, v8, v36);
          }

          umtx_unlock(&unk_1ED443418);
        }

        v32 = 0;
        if (!v34[0])
        {
          u_UCharsToChars(v8, v34, 2);
        }

        v19 = ures_openDirect(0, "metaZones", &v33);
        ures_getByKey(v19, "primaryZones", v19, &v33);
        StringByKey = ures_getStringByKey(v19, v34, &v32, &v33);
        if (v33 <= U_ZERO_ERROR)
        {
          v21 = StringByKey;
          v22 = *(this + 4);
          v23 = v22;
          v24 = v22 >> 5;
          if (v23 >= 0)
          {
            v25 = v24;
          }

          else
          {
            v25 = this[3];
          }

          v30[1] = StringByKey;
          if (icu::UnicodeString::doCompare(this, 0, v25, StringByKey, 0, v32))
          {
            v37 = 0u;
            v38 = 0u;
            v40 = 0;
            v39 = 0u;
            *v36 = &unk_1F0935D00;
            LOWORD(v37) = 2;
            icu::TimeZone::getCanonicalID(this, v36, &v33, v26, v27);
            v28 = v33;
            if (v33 <= U_ZERO_ERROR)
            {
              v31 = v21;
              v29 = sub_1951D0FDC(v36, &v31, v32);
              v30[0] = v31;
              v28 = v30;
              if (!v29)
              {
                v28 = 1;
                *a3 = 1;
              }
            }

            icu::UnicodeString::~UnicodeString(v28, v36);
          }

          else
          {
            *a3 = 1;
          }
        }

        ures_close(v19);
      }
    }
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
  return a2;
}

const icu::UnicodeString *icu::ZoneMeta::getMetazoneID(icu::ZoneMeta *this, const icu::UnicodeString *a2, double a3, icu::UnicodeString *a4)
{
  MetazoneMappings = icu::ZoneMeta::getMetazoneMappings(this, a2);
  if (MetazoneMappings && (v7 = MetazoneMappings, *(MetazoneMappings + 8) >= 1))
  {
    v8 = 0;
    while (1)
    {
      v9 = icu::UVector::elementAt(v7, v8);
      if (*(v9 + 8) <= a3 && *(v9 + 16) > a3)
      {
        break;
      }

      if (++v8 >= *(v7 + 2))
      {
        goto LABEL_7;
      }
    }

    v11 = *v9;
    icu::UnicodeString::unBogus(a2);
    v12 = *(a2 + 4);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a2 + 3);
    }

    icu::UnicodeString::doReplace(a2, 0, v15, v11, 0, 0xFFFFFFFFLL);
  }

  else
  {
LABEL_7:
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

uint64_t icu::ZoneMeta::getMetazoneMappings(icu::ZoneMeta *this, const icu::UnicodeString *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = v16;
  icu::UnicodeString::extract(this, &v14, 129, &v15);
  MetazoneMappings = 0;
  if (v15 <= 0 && v15 != -124)
  {
    if (atomic_load_explicit(&dword_1ED443468, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED443468))
    {
      MetazoneMappings = 0;
      if (dword_1ED44346C > 0 || v15 > 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_19542E474(&v15);
      dword_1ED44346C = v15;
      icu::umtx_initImplPostInit(&dword_1ED443468);
      if (v15 >= 1)
      {
        MetazoneMappings = 0;
        goto LABEL_14;
      }
    }

    umtx_lock(&unk_1ED443418);
    MetazoneMappings = uhash_get(qword_1ED4433F8, v16);
    umtx_unlock(&unk_1ED443418);
    if (!MetazoneMappings)
    {
      MetazoneMappings = icu::ZoneMeta::createMetazoneMappings(this, v4);
      if (MetazoneMappings)
      {
        umtx_lock(&unk_1ED443418);
        v5 = uhash_get(qword_1ED4433F8, v16);
        if (!v5)
        {
          v8 = *(this + 4);
          v9 = v8;
          v10 = v8 >> 5;
          if (v9 < 0)
          {
            v10 = *(this + 3);
          }

          v11 = v10 + 1;
          v12 = malloc_type_malloc(2 * (v10 + 1), 0x1000040BDFB0063uLL);
          v5 = v12;
          if (v12)
          {
            v13 = v12;
            icu::UnicodeString::extract(this, &v13, v11, &v15);
            uhash_put(qword_1ED4433F8, v5, MetazoneMappings, &v15);
            if (v15 < 1)
            {
              goto LABEL_13;
            }

            v5 = 0;
          }
        }

        (*(*MetazoneMappings + 8))(MetazoneMappings);
        MetazoneMappings = v5;
LABEL_13:
        umtx_unlock(&unk_1ED443418);
      }
    }
  }

LABEL_14:
  v6 = *MEMORY[0x1E69E9840];
  return MetazoneMappings;
}

int32x2_t *sub_19542E474(int *a1)
{
  sub_195400588(0x14u, sub_19542F6DC);
  result = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a1);
  qword_1ED4433F8 = result;
  if (*a1 < 1)
  {
    uhash_setKeyDeleter(result, j__free_6);
    v3 = qword_1ED4433F8;

    return uhash_setValueDeleter(v3, uprv_deleteUObject);
  }

  else
  {
    qword_1ED4433F8 = 0;
  }

  return result;
}

uint64_t icu::ZoneMeta::createMetazoneMappings(icu::ZoneMeta *this, const icu::UnicodeString *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = U_ZERO_ERROR;
  v24 = 0u;
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
  v3 = ures_openDirect(0, "metaZones", &v13);
  ures_getByKey(v3, "metazoneInfo", v3, &v13);
  icu::ZoneMeta::getCanonicalCLDRID(this, &v23, &v13, v4);
  if (v13 > U_ZERO_ERROR)
  {
    goto LABEL_22;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  if ((v24 & 0x8000u) == 0)
  {
    v5 = v24 >> 5;
  }

  else
  {
    v5 = DWORD1(v24);
  }

  v6 = v14;
  v14[icu::UnicodeString::extract(&v23, 0, v5, v14, 129)] = 0;
  while (*v6 == 47)
  {
    *v6 = 58;
LABEL_10:
    ++v6;
  }

  if (*v6)
  {
    goto LABEL_10;
  }

  ures_getByKey(v3, v14, v3, &v13);
  if (v13 <= U_ZERO_ERROR)
  {
    NextResource = 0;
    while (ures_hasNext(v3))
    {
      NextResource = ures_getNextResource(v3, NextResource, &v13);
      ures_getStringByIndex(NextResource, 0, 0, &v13);
      if (ures_getSize(NextResource) == 3)
      {
        StringByIndex = ures_getStringByIndex(NextResource, 1, 0, &v13);
        v9 = ures_getStringByIndex(NextResource, 2, 0, &v13);
      }

      else
      {
        StringByIndex = "1";
        v9 = L"9999-12-31 23:59";
      }

      if (v13 < U_ILLEGAL_ARGUMENT_ERROR)
      {
        sub_19542E8F8(StringByIndex, &v13);
        sub_19542E8F8(v9, &v13);
        if (v13 <= U_ZERO_ERROR)
        {
          operator new();
        }
      }

      v13 = U_ZERO_ERROR;
    }

    ures_close(NextResource);
  }

LABEL_22:
  ures_close(v3);
  icu::UnicodeString::~UnicodeString(v10, &v23);
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

double sub_19542E8F8(const UChar *a1, int *a2)
{
  v2 = 0.0;
  if (*a2 > 0)
  {
    return v2;
  }

  v6 = u_strlen(a1);
  v7 = v6;
  if (v6 != 10 && v6 != 16)
  {
LABEL_38:
    *a2 = 3;
    return v2;
  }

  v8 = *a2;
  if (*a2 <= 0)
  {
    v9 = 0;
    v11 = -1;
    v12 = a1;
    do
    {
      v13 = *v12++;
      v14 = v13 - 48;
      if ((v13 - 48) >= 0xA)
      {
        v14 = -1;
      }

      if (v14 < 0)
      {
        v10 = 0;
        v8 = 3;
        *a2 = 3;
        goto LABEL_24;
      }

      v9 = v14 + 10 * v9;
      ++v11;
    }

    while (v11 < 3);
    v15 = 0;
    v16 = (a1 + 5);
    for (i = 4; i <= 5; ++i)
    {
      v18 = *v16++;
      v19 = v18 - 48;
      if ((v18 - 48) >= 0xA)
      {
        v19 = -1;
      }

      if (v19 < 0)
      {
        v10 = 0;
        v8 = 3;
        *a2 = 3;
        v20 = v15 - 1;
        goto LABEL_25;
      }

      v15 = v19 + 10 * v15;
    }

    v10 = 0;
    v20 = v15 - 1;
    v21 = (a1 + 8);
    v22 = 7;
    while (1)
    {
      v23 = *v21++;
      v24 = v23 - 48;
      if ((v23 - 48) >= 0xA)
      {
        v24 = -1;
      }

      if (v24 < 0)
      {
        break;
      }

      v10 = v24 + 10 * v10;
      if (++v22 >= 9)
      {
        goto LABEL_25;
      }
    }

    v8 = 3;
    *a2 = 3;
  }

  else
  {
    v9 = 0;
    v10 = 0;
LABEL_24:
    v20 = -1;
  }

LABEL_25:
  if (v7 == 16)
  {
    if (v8 > 0)
    {
      return v2;
    }

    v25 = 0;
    v26 = (a1 + 11);
    v27 = 10;
    while (1)
    {
      v28 = *v26++;
      v29 = v28 - 48;
      if ((v28 - 48) >= 0xA)
      {
        v29 = -1;
      }

      if (v29 < 0)
      {
        goto LABEL_38;
      }

      v25 = v29 + 10 * v25;
      if (++v27 >= 0xC)
      {
        v30 = 0;
        v31 = (a1 + 14);
        v32 = 13;
        while (1)
        {
          v33 = *v31++;
          v34 = v33 - 48;
          if ((v33 - 48) >= 0xA)
          {
            v34 = -1;
          }

          if (v34 < 0)
          {
            break;
          }

          v30 = v34 + 10 * v30;
          if (++v32 >= 0xF)
          {
            goto LABEL_44;
          }
        }

        v8 = 3;
        *a2 = 3;
LABEL_44:
        v36 = 60000 * v30;
        v35 = 3600000 * v25;
        goto LABEL_40;
      }
    }
  }

  v35 = 0;
  v36 = 0;
LABEL_40:
  if (v8 <= 0)
  {
    return (v36 + v35 + 86400000 * sub_195328D5C(v9, v20, v10));
  }

  return v2;
}

uint64_t sub_19542EB18(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x19A8B2600);
  }

  return result;
}

const icu::UnicodeString *icu::ZoneMeta::getZoneIdByMetazone(icu::ZoneMeta *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, icu::UnicodeString *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  *v20 = 0;
  v5 = *(this + 4);
  if (v5)
  {
    goto LABEL_8;
  }

  if ((v5 & 0x8000) != 0)
  {
    v7 = *(this + 3);
    if (v7 > 128)
    {
LABEL_8:
      icu::UnicodeString::setToBogus(a3);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v5 >> 5;
    if (v7 >= 0x81)
    {
      goto LABEL_8;
    }
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v21[icu::UnicodeString::extract(this, 0, v7, v21, 129)] = 0;
  v8 = ures_openDirect(0, "metaZones", &v20[1]);
  ures_getByKey(v8, "mapTimezones", v8, &v20[1]);
  ures_getByKey(v8, v21, v8, &v20[1]);
  v9 = v20[1];
  if (v20[1] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    ures_close(v8);
    goto LABEL_8;
  }

  if ((*(a2 + 4) & 0x80000000) == 0)
  {
    v12 = *(a2 + 4);
    if ((v12 & 0x7FC0 | 0x20) == 0x60)
    {
      v13 = v12 >> 5;
      goto LABEL_14;
    }

LABEL_16:
    StringByKey = 0;
    goto LABEL_17;
  }

  v13 = *(a2 + 3);
  if ((v13 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_16;
  }

LABEL_14:
  v21[icu::UnicodeString::extract(a2, 0, v13, v21, 129)] = 0;
  StringByKey = ures_getStringByKey(v8, v21, v20, &v20[1]);
  v9 = v20[1];
  if (v20[1] == U_MISSING_RESOURCE_ERROR)
  {
    v9 = U_ZERO_ERROR;
    v20[1] = U_ZERO_ERROR;
  }

LABEL_17:
  if (v9 <= U_ZERO_ERROR && !StringByKey)
  {
    StringByKey = ures_getStringByKey(v8, "001", v20, &v20[1]);
  }

  ures_close(v8);
  if (!StringByKey)
  {
    goto LABEL_8;
  }

  v15 = v20[0];
  icu::UnicodeString::unBogus(a3);
  v16 = *(a3 + 4);
  v17 = v16;
  v18 = v16 >> 5;
  if (v17 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(a3 + 3);
  }

  icu::UnicodeString::doReplace(a3, 0, v19, StringByKey, 0, v15);
LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::ZoneMeta::getAvailableMetazoneIDs(icu::ZoneMeta *this)
{
  if (atomic_load_explicit(dword_1ED443470, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED443470))
  {
    sub_19542EDA4();
    icu::umtx_initImplPostInit(dword_1ED443470);
  }

  return qword_1ED443400;
}

int32x2_t *sub_19542EDA4()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_195400588(0x14u, sub_19542F6DC);
  v3 = U_ZERO_ERROR;
  result = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, &v3);
  qword_1ED443408 = result;
  if (v3 <= U_ZERO_ERROR && result != 0)
  {
    operator new();
  }

  qword_1ED443408 = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::ZoneMeta::findMetaZoneID(UChar **this, const icu::UnicodeString *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(dword_1ED443470, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED443470))
  {
    sub_19542EDA4();
    icu::umtx_initImplPostInit(dword_1ED443470);
  }

  if (qword_1ED443408)
  {
    memset(v9, 0, sizeof(v9));
    icu::UnicodeString::UnicodeString(v9, this);
    v3 = qword_1ED443408;
    TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(v9);
    v5 = uhash_get(v3, TerminatedBuffer);
    icu::UnicodeString::~UnicodeString(v6, v9);
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void icu::ZoneMeta::createCustomTimeZone(icu::ZoneMeta *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, icu::UnicodeString *a6)
{
  v12 = *MEMORY[0x1E69E9840];
  if (this >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = -this;
  }

  v8 = 0u;
  v9 = 0u;
  v11 = 0;
  v10 = 0u;
  v7 = &unk_1F0935D00;
  LOWORD(v8) = 2;
  icu::ZoneMeta::formatCustomID((v6 / 0x36EE80), (v6 / 0xEA60) % 0x3Cu, v6 / 0x3E8 - 60 * ((71582789 * (v6 / 0x3E8)) >> 32), this >> 31, &v7, a6);
  operator new();
}

icu::UnicodeString *icu::ZoneMeta::formatCustomID(icu::ZoneMeta *this, unsigned int a2, int a3, int a4, icu::UnicodeString *a5, icu::UnicodeString *a6)
{
  v10 = this;
  icu::UnicodeString::unBogus(a5);
  v11 = *(a5 + 4);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a5 + 3);
  }

  icu::UnicodeString::doReplace(a5, 0, v14, L"GMT", 0, 0xFFFFFFFFLL);
  if (a2 | v10)
  {
    if (a4)
    {
      v15 = 45;
    }

    else
    {
      v15 = 43;
    }

    v17 = v15;
    icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    v17 = ((429496730 * (v10 - 100 * ((42949673 * v10) >> 32))) >> 32) | 0x30;
    icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    v17 = (v10 - 10 * ((429496730 * v10) >> 32)) | 0x30;
    icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    v17 = 58;
    icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    v17 = ((429496730 * (a2 - 100 * ((42949673 * a2) >> 32))) >> 32) | 0x30;
    icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    v17 = (a2 - 10 * ((429496730 * a2) >> 32)) | 0x30;
    icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    if (a3)
    {
      v17 = 58;
      icu::UnicodeString::doAppend(a5, &v17, 0, 1);
      v17 = ((103 * (a3 - 100 * ((41 * a3) >> 12))) >> 10) | 0x30;
      icu::UnicodeString::doAppend(a5, &v17, 0, 1);
      v17 = (a3 - 10 * ((205 * a3) >> 11)) | 0x30;
      icu::UnicodeString::doAppend(a5, &v17, 0, 1);
    }
  }

  return a5;
}

const UChar *icu::ZoneMeta::getShortID(const UChar **this, const icu::TimeZone *a2)
{
  v3 = **this;
  {
    return 0;
  }

  v4 = this[19];
  if (!v4)
  {
    return 0;
  }

  return icu::ZoneMeta::getShortIDFromCanonical(v4);
}

const UChar *icu::ZoneMeta::getShortIDFromCanonical(const UChar *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = u_strlen(a1);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  u_UCharsToChars(a1, v10, v2);
  v10[v2] = 0;
  if (v10[0])
  {
    v3 = &v10[1];
    do
    {
      v4 = *v3;
      if (v4 == 47)
      {
        v4 = 58;
        *v3 = 58;
      }

      ++v3;
    }

    while (v4);
  }

  v9 = U_ZERO_ERROR;
  v5 = ures_openDirect(0, "keyTypeData", &v9);
  ures_getByKey(v5, "typeMap", v5, &v9);
  ures_getByKey(v5, "timezone", v5, &v9);
  StringByKey = ures_getStringByKey(v5, v10, 0, &v9);
  ures_close(v5);
  v7 = *MEMORY[0x1E69E9840];
  return StringByKey;
}

const UChar *icu::ZoneMeta::getShortID(icu::ZoneMeta *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v6 = 0;
  CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(this, &v6, a3);
  if (v6 > 0 || CanonicalCLDRID == 0)
  {
    return 0;
  }

  else
  {
    return icu::ZoneMeta::getShortIDFromCanonical(CanonicalCLDRID);
  }
}

uint64_t sub_19542F6DC()
{
  if (qword_1ED4433F0)
  {
    uhash_close(qword_1ED4433F0);
    qword_1ED4433F0 = 0;
  }

  atomic_store(0, &dword_1ED443410);
  if (qword_1ED4433F8)
  {
    uhash_close(qword_1ED4433F8);
    qword_1ED4433F8 = 0;
  }

  atomic_store(0, &dword_1ED443468);
  if (qword_1ED443408)
  {
    uhash_close(qword_1ED443408);
    qword_1ED443408 = 0;
  }

  if (qword_1ED443400)
  {
    (*(*qword_1ED443400 + 8))(qword_1ED443400);
  }

  qword_1ED443400 = 0;
  atomic_store(0, &unk_1ED443470);
  if (qword_1EAECA528)
  {
    (*(*qword_1EAECA528 + 8))(qword_1EAECA528);
  }

  qword_1EAECA528 = 0;
  if (qword_1EAECA530)
  {
    (*(*qword_1EAECA530 + 8))(qword_1EAECA530);
  }

  qword_1EAECA530 = 0;
  atomic_store(0, &dword_1EAECA538);
  return 1;
}

uint64_t zrule_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *zrule_getName(UChar **a1, void *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = a2;
  icu::UnicodeString::UnicodeString(&v12, a3 == -1, &v11);
  Name = icu::TimeZoneRule::getName(a1, &v12);
  icu::UnicodeString::operator=(&v12, Name);
  v6 = HIDWORD(v12);
  if ((BYTE8(v12) & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((BYTE8(v12) & 2) != 0)
  {
    v7 = (&v12 | 0xA);
  }

  else
  {
    v7 = *(&v13 + 1);
  }

  if ((SWORD4(v12) & 0x8000u) == 0)
  {
    v6 = WORD4(v12) >> 5;
  }

  memcpy(a2, v7, v6);
  result = icu::UnicodeString::~UnicodeString(v8, &v12);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void izrule_open(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  v2 = a1;
  icu::UnicodeString::UnicodeString(v3, a2 == -1, &v2);
  operator new();
}

uint64_t izrule_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *izrule_getName(UChar **a1, void *a2, int *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v14 = 0u;
  v11 = &unk_1F0935D00;
  LOWORD(v12) = 2;
  icu::TimeZoneRule::getName(a1, &v11);
  v5 = v12 >> 5;
  if ((v12 & 0x8000u) != 0)
  {
    v5 = DWORD1(v12);
  }

  *a3 = v5;
  v6 = malloc_type_malloc(v5, 0x1000040BDFB0063uLL);
  v7 = 0;
  *a2 = v6;
  if ((v12 & 0x11) == 0)
  {
    if ((v12 & 2) != 0)
    {
      v7 = &v12 + 2;
    }

    else
    {
      v7 = v13;
    }
  }

  memcpy(v6, v7, *a3);
  result = icu::UnicodeString::~UnicodeString(v8, &v11);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ztrans_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_19542FD30()
{
  if (__cxa_guard_acquire(&qword_1ED442190))
  {
    qword_1ED442198 = &unk_1F09324C0;
    memcpy(&unk_1ED4421A0, &xmmword_195430E60, 0x58uLL);
    __cxa_atexit(icu::RegionValidateMap::~RegionValidateMap, &qword_1ED442198, &dword_1951C9000);
    __cxa_guard_release(&qword_1ED442190);
  }
}

void sub_19542FDD4(uint64_t *a1)
{
  if (__cxa_guard_acquire(&qword_1ED442BB8))
  {
    *a1 = &word_19549D930;
    icu::UnicodeString::UnicodeString(&unk_1ED442BC0, 1, a1);
    v2 = *a1;
    __cxa_atexit(icu::UnicodeString::~UnicodeString, &unk_1ED442BC0, &dword_1951C9000);
    __cxa_guard_release(&qword_1ED442BB8);
  }
}

void sub_19542FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__cxa_guard_acquire(&qword_1ED442C38))
  {
    qword_1ED442C30 = (*(*a1 + 456))(a1, 1300, a3);

    __cxa_guard_release(&qword_1ED442C38);
  }
}

void sub_19542FF14()
{
  if (__cxa_guard_acquire(&qword_1ED4430B0))
  {
    sub_1951D6EE0(&unk_1ED4430B8, "h");
    __cxa_atexit(icu::UnicodeString::~UnicodeString, &unk_1ED4430B8, &dword_1951C9000);

    __cxa_guard_release(&qword_1ED4430B0);
  }
}

void sub_19542FF94(void *a1)
{
  if (__cxa_guard_acquire(&qword_1ED443160))
  {
    qword_1ED443168 = &unk_1F0935D00;
    word_1ED443170 = 2;
    __cxa_atexit(icu::UnicodeString::~UnicodeString, &qword_1ED443168, &dword_1951C9000);
    __cxa_guard_release(&qword_1ED443160);
  }

  *a1 = &qword_1ED443168;
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::toSkeleton()
{
    ;
  }
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::integerWidth()
{
    ;
  }
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unit()
{
    ;
  }
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::perUnit()
{
    ;
  }
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unitWidth()
{
    ;
  }
}

void icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::macros()
{
    ;
  }
}

{
    ;
  }
}

void icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::identityFallback()
{
    ;
  }
}

void icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::numberFormatterBoth()
{
    ;
  }
}

void icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::collapse()
{
    ;
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v2 = MEMORY[0x1EEE70CF0](__x, __y);
  result.rem = v3;
  result.quot = v2;
  return result;
}