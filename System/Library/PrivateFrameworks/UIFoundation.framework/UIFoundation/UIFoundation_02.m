uint64_t _NSGlyphTreeGlyphAtIndex(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  result = _NSGlyphTreeMoveToGlyphIndex(a1, a2);
  v14 = result;
  if (!result)
  {
    goto LABEL_8;
  }

  v15 = *(*(a1 + 240) + 216);
  if (!*(v15 + 59) || (v16 = *(v15 + 24)) == 0)
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeGlyphAtIndex missing glyphs", v7, v8, v9, v10, v11, v12, v13, v22);
    result = 0;
    goto LABEL_8;
  }

  result = 0;
  v17 = *(v15 + 57);
  v18 = a2 - *(*(a1 + 240) + 232);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v16 + 4 * v18);
    }

    else
    {
      if (v17 != 3)
      {
        goto LABEL_8;
      }

      v19 = *(v16 + 24 * v18);
    }

LABEL_21:
    if (v19 > 0xFF)
    {
      result = v19 >> 8;
    }

    else if (v19 >= 0x80)
    {
      result = 0xFFFFFFLL;
    }

    else
    {
      result = 0;
    }

    goto LABEL_8;
  }

  if (v17)
  {
    v19 = *(v16 + 2 * v18);
    goto LABEL_21;
  }

  v20 = *(v16 + v18);
  if (v20 >= 4)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0xFFFFFF;
  }

  if (v20 <= 0xEF)
  {
    result = v21;
  }

  else
  {
    result = v20 & 3;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

BOOL _NSGlyphTreeHasGlyphsForCharacterAtIndex(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  result = _NSGlyphTreeMoveToCharacterIndex(a1, a2);
  if (result)
  {
    v7 = *(*(a1 + 240) + 216);
    v6 = *(*(a1 + 240) + 224);
    v8 = *v7;
    if (*(v7 + 59))
    {
      result = *(v7 + 24) != 0;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!a3)
      {
        return result;
      }
    }
  }

  else
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v6;
  a3[1] = v8;
  return result;
}

uint64_t _NSGlyphTreeBidiLevelForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    v11 = *(*(*(a1 + 240) + 216) + 40);
    if (v11)
    {
      return *(v11 + a2 - *(*(a1 + 240) + 232));
    }
  }

  else
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeBidiLevelForGlyphAtIndex invalid glyph index %lu", v4, v5, v6, v7, v8, v9, v10, a2);
  }

  return 0;
}

uint64_t _NSGlyphTreeIntAttributeForGlyphAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeIntAttributeForGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, a2);
    return -1;
  }

  v13 = *(*(a1 + 240) + 216);
  if (!*(v13 + 59))
  {
    return -1;
  }

  v14 = *(v13 + 24);
  if (!v14)
  {
    return -1;
  }

  result = -1;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v25 = *(v13 + 40);
      if (v25)
      {
        return *(v25 + a2 - *(*(a1 + 240) + 232));
      }

      else
      {
        return 0;
      }
    }

    else if (a3 == 5)
    {
      v20 = *(v13 + 57);
      v21 = a2 - *(*(a1 + 240) + 232);
      switch(v20)
      {
        case 3:
          LODWORD(v14) = *(v14 + 24 * v21);
          break;
        case 2:
          LODWORD(v14) = *(v14 + 4 * v21);
          break;
        case 1:
          LOWORD(v14) = *(v14 + 2 * v21);
          break;
        default:
          LOBYTE(v14) = 0;
          break;
      }

      return v14 & 1;
    }

    return result;
  }

  if (!a3)
  {
    v22 = *(v13 + 57);
    v23 = a2 - *(*(a1 + 240) + 232);
    switch(v22)
    {
      case 3:
        v24 = *(v14 + 24 * v23);
        break;
      case 2:
        v24 = *(v14 + 4 * v23);
        break;
      case 1:
        v24 = *(v14 + 2 * v23);
        break;
      default:
        return 0;
    }

    return (v24 >> 3) & 1;
  }

  if (a3 == 1)
  {
    v16 = 0;
    v17 = *(v13 + 57);
    v18 = a2 - *(*(a1 + 240) + 232);
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v19 = *(v14 + 4 * v18);
      }

      else
      {
        if (v17 != 3)
        {
          return v16;
        }

        v19 = *(v14 + 24 * v18);
      }
    }

    else
    {
      if (!v17)
      {
        v27 = *(v14 + v18);
        if (v27 < 0xF0)
        {
          return (v27 & 0xFE) == 2;
        }

        else
        {
          return (v27 >> 3) & 1;
        }
      }

      v19 = *(v14 + 2 * v18);
    }

    return (v19 >> 4) & 1;
  }

  return result;
}

uint64_t _NSGlyphTreeNotShownAttributeForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeNotShownAttributeForGlyphAtIndex invalid glyph index %lu", v4, v5, v6, v7, v8, v9, v10, a2);
    return 0;
  }

  v11 = *(*(a1 + 240) + 216);
  if (!*(v11 + 59))
  {
    return 0;
  }

  v12 = *(v11 + 24);
  if (!v12)
  {
    return 0;
  }

  result = 0;
  v14 = *(v11 + 57);
  v15 = a2 - *(*(a1 + 240) + 232);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v16 = *(v12 + 4 * v15);
      return (v16 >> 6) & 1;
    }

    if (v14 == 3)
    {
      v16 = *(v12 + 24 * v15);
      return (v16 >> 6) & 1;
    }
  }

  else
  {
    if (v14)
    {
      v16 = *(v12 + 2 * v15);
      return (v16 >> 6) & 1;
    }

    v17 = *(v12 + v15);
    if (v17 < 0xF0)
    {
      return (v17 < 4) & v17;
    }

    else
    {
      return (v17 >> 2) & 1;
    }
  }

  return result;
}

uint64_t _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex invalid glyph index %lu", v4, v5, v6, v7, v8, v9, v10, a2);
    return 0;
  }

  v11 = *(*(a1 + 240) + 216);
  if (!*(v11 + 59))
  {
    return 0;
  }

  v12 = *(v11 + 24);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v11 + 57);
  v14 = a2 - *(*(a1 + 240) + 232);
  if (v13 == 3)
  {
    v15 = *(v12 + 24 * v14);
    return (v15 >> 5) & 1;
  }

  if (v13 == 2)
  {
    v15 = *(v12 + 4 * v14);
    return (v15 >> 5) & 1;
  }

  if (v13 != 1)
  {
    return 0;
  }

  v15 = *(v12 + 2 * v14);
  return (v15 >> 5) & 1;
}

uint64_t _NSGlyphTreeVirtualEllipsisAttributeForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex invalid glyph index %lu", v4, v5, v6, v7, v8, v9, v10, a2);
    return 0;
  }

  v11 = *(*(a1 + 240) + 216);
  if (!*(v11 + 59))
  {
    return 0;
  }

  v12 = *(v11 + 24);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  v14 = *(v11 + 57);
  v15 = a2 - *(*(a1 + 240) + 232);
  if (v14 <= 1)
  {
    if (!v14)
    {
      v18 = 0;
      v19 = *(v12 + v15);
      if (v19 >= 4)
      {
        v20 = *(v12 + v15);
      }

      else
      {
        v20 = 0xFFFFFF;
      }

      if (v19 <= 0xEF)
      {
        v13 = v20;
      }

      else
      {
        v13 = v19 & 3;
      }

      goto LABEL_25;
    }

    v16 = *(v12 + 2 * v15);
    goto LABEL_19;
  }

  if (v14 == 2)
  {
    v16 = *(v12 + 4 * v15);
    goto LABEL_19;
  }

  v18 = 0;
  if (v14 == 3)
  {
    v16 = *(v12 + 24 * v15);
LABEL_19:
    v13 = v16 >> 8;
    if (v16 >= 0x80)
    {
      v21 = 0xFFFFFF;
    }

    else
    {
      v21 = 0;
    }

    if (v16 < 0x100)
    {
      v13 = v21;
    }

    v18 = (v16 >> 1) & 1;
  }

LABEL_25:
  if (v13 == 0xFFFFFF)
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t _NSGlyphTreeEllipsisGlyphIndexForTruncatedGlyphRange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a3 + a2 - 1;
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, v5))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, v5);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *(a1 + 240) + 208;
  v14 = *(*(a1 + 240) + 216);
  if (!*(v14 + 59))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v15 = *(v14 + 24);
    if (v5 <= a2 || !v15)
    {
      break;
    }

    v16 = *(v13 + 24);
    if (v16 <= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = *(v13 + 24);
    }

    if (v16 < v5)
    {
      v18 = *(v14 + 57);
      v19 = v5 - 1;
      if (v17 < v5 - 1)
      {
        v19 = v17;
      }

      v20 = v15 - v16;
      v21 = v15 - 2 * v16;
      v22 = v15 - 4 * v16;
      v23 = (v15 + 24 * v5 - 24 * v16);
      v24 = v5;
      while (1)
      {
        if (*(v14 + 57) > 1u)
        {
          if (v18 == 2)
          {
            if ((*(v22 + 4 * v24) & 0x40) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v18 != 3)
            {
              goto LABEL_36;
            }

            if ((*v23 & 0x40) == 0)
            {
LABEL_35:
              v5 = v24;
              goto LABEL_37;
            }
          }
        }

        else if (*(v14 + 57))
        {
          if ((*(v21 + 2 * v24) & 0x40) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v25 = *(v20 + v24);
          if (v25 < 0xF0)
          {
            if (v25 > 3 || (v25 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else if ((v25 & 4) == 0)
          {
            goto LABEL_35;
          }
        }

        --v24;
        v23 -= 24;
        if (v17 >= v24)
        {
          v5 = v19;
          break;
        }
      }
    }

    if (v5 > a2)
    {
      _NSGlyphTreeMoveToGlyphIndex(a1, --v5);
    }

    v13 = *(a1 + 240) + 208;
    v14 = *(*(a1 + 240) + 216);
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (!*(v14 + 59))
    {
      return result;
    }
  }

LABEL_36:
  if (!v15)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_37:
  v27 = *(v14 + 57);
  v28 = v5 - *(v13 + 24);
  if (v27 == 3)
  {
    if ((*(v15 + 24 * v28) & 2) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (v27 != 2)
    {
      if (v27 == 1 && (*(v15 + 2 * v28) & 2) != 0)
      {
        return v5;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((*(v15 + 4 * v28) & 2) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

unint64_t _NSGlyphTreeGetCGGlyphsInRange(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, void *a6, _BYTE *a7)
{
  v60 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v12 = 0;
    while (1)
    {
      v61 = a2;
      if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
      {
        return v12;
      }

      v20 = *(*(a1 + 240) + 216);
      v21 = *(v20 + 8) + *(*(a1 + 240) + 232);
      if (v21 >= v60)
      {
        v22 = v60;
      }

      else
      {
        v22 = *(v20 + 8) + *(*(a1 + 240) + 232);
      }

      if (!*(v20 + 59) || !*(v20 + 24))
      {
        v23 = *(v20 + 8) + *(*(a1 + 240) + 232);
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeGetGlyphsInRange missing glyphs", v13, v14, v15, v16, v17, v18, v19, v58);
        v21 = v23;
      }

      if (!(a4 | a5))
      {
        a5 = 0;
        a4 = 0;
        v24 = v61;
        goto LABEL_76;
      }

      v24 = v61;
      if (!*(*(*(a1 + 240) + 216) + 57))
      {
        break;
      }

      if (v22 > v61)
      {
        v25 = 24 * v61;
        for (i = v61; v22 != i; ++i)
        {
          v27 = *(*(a1 + 240) + 216);
          v28 = *(v27 + 59);
          if (!*(v27 + 59))
          {
            goto LABEL_37;
          }

          v29 = *(v27 + 24);
          if (!v29)
          {
            v28 = 0;
            if (a4)
            {
              goto LABEL_38;
            }

            goto LABEL_39;
          }

          v28 = 0;
          v30 = *(*(a1 + 240) + 232);
          v31 = *(v27 + 57);
          if (v31 > 1)
          {
            if (v31 == 2)
            {
              v32 = *(v29 - 4 * v30 + 4 * i);
            }

            else
            {
              if (v31 != 3)
              {
                goto LABEL_37;
              }

              v32 = *(v29 - 24 * v30 + v25);
            }
          }

          else
          {
            if (!v31)
            {
              v33 = *(v29 - v30 + i);
              if (v33 >= 4)
              {
                v34 = *(v29 - v30 + i);
              }

              else
              {
                v34 = 0xFFFFFF;
              }

              if (v33 <= 0xEF)
              {
                v28 = v34;
              }

              else
              {
                v28 = v33 & 3;
              }

              if (a4)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
            }

            v32 = *(v29 - 2 * v30 + 2 * i);
          }

          if (v32 <= 0xFF)
          {
            if (v32 >= 0x80)
            {
              v28 = 0xFFFFFF;
            }

            else
            {
              v28 = 0;
            }

LABEL_37:
            if (!a4)
            {
              goto LABEL_39;
            }

LABEL_38:
            *a4 = v28;
            a4 += 2;
            goto LABEL_39;
          }

          v28 = v32 >> 8;
          if (a4)
          {
            goto LABEL_38;
          }

LABEL_39:
          if (a5)
          {
            if (v28 == 0xFFFFFF)
            {
              v35 = 2;
            }

            else
            {
              v35 = v28 == 0;
            }

            v36 = *(*(a1 + 240) + 216);
            if (!*(v36 + 59))
            {
              goto LABEL_70;
            }

            v37 = *(v36 + 24);
            if (!v37)
            {
              goto LABEL_70;
            }

            v38 = *(*(a1 + 240) + 232);
            v39 = *(v36 + 57);
            if (v39 > 1)
            {
              if (v39 == 2)
              {
                if ((*(v37 - 4 * v38 + 4 * i) & 0x10) != 0)
                {
                  v39 = 2;
                  goto LABEL_62;
                }

LABEL_68:
                if ((*(v37 - 4 * v38 + 4 * i) & 1) == 0)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              if (v39 != 3)
              {
                goto LABEL_63;
              }

              if ((*(v37 - 24 * v38 + v25) & 0x10) != 0)
              {
                v39 = 3;
                goto LABEL_62;
              }
            }

            else
            {
              if (v39)
              {
                if ((*(v37 - 2 * v38 + 2 * i) & 0x10) != 0)
                {
                  v39 = 1;
                  goto LABEL_62;
                }

LABEL_66:
                if ((*(v37 - 2 * v38 + 2 * i) & 1) == 0)
                {
LABEL_70:
                  *a5++ = v35;
                  goto LABEL_71;
                }

LABEL_69:
                v35 |= 8uLL;
                goto LABEL_70;
              }

              if (*(v37 - v38 + i) < 0xF0u)
              {
                if ((*(v37 - v38 + i) & 0xFE) != 2)
                {
                  goto LABEL_70;
                }
              }

              else if ((*(v37 - v38 + i) & 8) == 0)
              {
                goto LABEL_70;
              }

              v39 = 0;
LABEL_62:
              v35 |= 4uLL;
LABEL_63:
              if (v39 != 3)
              {
                if (v39 != 2)
                {
                  if (v39 == 1)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_70;
                }

                goto LABEL_68;
              }
            }

            if ((*(v37 - 24 * v38 + v25) & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

LABEL_71:
          v25 += 24;
        }
      }

LABEL_76:
      if (a6)
      {
        v40 = *(*(a1 + 240) + 216);
        if (*(v40 + 59) && *(v40 + 32))
        {
          if (v22 > v24)
          {
            v41 = v24;
            while (1)
            {
              v42 = *(*(a1 + 240) + 232);
              v43 = *(*(a1 + 240) + 216);
              if (!*(v43 + 59))
              {
                break;
              }

              v44 = *(v43 + 32);
              if (v44)
              {
                v45 = *(v43 + 58);
                if (v45 == 2)
                {
                  v44 = *(v44 - 4 * v42 + 4 * v41);
                  goto LABEL_88;
                }

                if (v45 == 1)
                {
                  v44 = *(v44 - 2 * v42 + 2 * v41);
                  goto LABEL_88;
                }

                if (v45)
                {
                  break;
                }

                v44 = *(v44 - v42 + v41);
              }

LABEL_88:
              *a6++ = v41 + *(*(a1 + 240) + 224) - v44 - v42;
              if (v22 == ++v41)
              {
                goto LABEL_95;
              }
            }

            v44 = 0;
            goto LABEL_88;
          }
        }

        else if (v22 > v24)
        {
          v46 = v24;
          do
          {
            *a6++ = v46 + *(*(a1 + 240) + 224) - *(*(a1 + 240) + 232);
            ++v46;
          }

          while (v22 != v46);
        }
      }

LABEL_95:
      if (a7)
      {
        if (*(*(*(a1 + 240) + 216) + 40))
        {
          v47 = v24;
          if (v22 > v24)
          {
            do
            {
              *a7++ = *(*(*(*(a1 + 240) + 216) + 40) - *(*(a1 + 240) + 232) + v47++);
            }

            while (v22 != v47);
          }
        }

        else
        {
          v48 = v12;
          v49 = v22 - v24;
          if (v22 > v24)
          {
            v59 = v21;
            bzero(a7, v22 - v24);
            v21 = v59;
            v24 = v61;
            a7 += v49;
          }

          v12 = v48;
        }
      }

      v12 = v12 - v24 + v22;
      a2 = v22;
      if (v21 >= v60)
      {
        return v12;
      }
    }

    if (v22 <= v61)
    {
      goto LABEL_76;
    }

    v50 = v61;
    while (1)
    {
      v51 = *(*(a1 + 240) + 216);
      if (!*(v51 + 59))
      {
        break;
      }

      v52 = *(v51 + 24);
      if (v52)
      {
        v53 = *(v52 - *(*(a1 + 240) + 232) + v50);
        if (v53 < 0xF0)
        {
          v54 = (v53 & 0xFE) == 2;
          if (v53 >= 4)
          {
            LODWORD(v52) = *(v52 - *(*(a1 + 240) + 232) + v50);
          }

          else
          {
            LODWORD(v52) = 0xFFFFFF;
          }

          if (!a4)
          {
            goto LABEL_116;
          }
        }

        else
        {
          LODWORD(v52) = v53 & 3;
          v54 = (v53 >> 3) & 1;
          if (!a4)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_115;
      }

      v54 = 0;
      if (a4)
      {
        goto LABEL_115;
      }

LABEL_116:
      if (a5)
      {
        if (v52 == 0xFFFFFF)
        {
          v55 = 2;
        }

        else
        {
          v55 = v52 == 0;
        }

        if (v54)
        {
          v56 = v55 | 4;
        }

        else
        {
          v56 = v55;
        }

        *a5++ = v56;
      }

      if (v22 == ++v50)
      {
        goto LABEL_76;
      }
    }

    v54 = 0;
    LODWORD(v52) = 0;
    if (!a4)
    {
      goto LABEL_116;
    }

LABEL_115:
    *a4 = v52;
    a4 += 2;
    goto LABEL_116;
  }

  return 0;
}

unint64_t _NSGlyphTreeGetGlyphsInRange(uint64_t a1, unint64_t a2, uint64_t a3, int *a4, void *a5, uint64_t *a6, _BYTE *a7, _BYTE *a8)
{
  v8 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v66 = 0;
    v64 = a2 + a3;
    while (1)
    {
      v65 = a2;
      if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
      {
        return v66;
      }

      v22 = *(*(a1 + 240) + 232);
      v23 = *(*(a1 + 240) + 216);
      v24 = *(v23 + 8);
      v25 = v24 + v22;
      if (v24 + v22 < v8)
      {
        v8 = v24 + v22;
      }

      if (!*(v23 + 59) || !*(v23 + 24))
      {
        v26 = v24 + v22;
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeGetGlyphsInRange missing glyphs", v15, v16, v17, v18, v19, v20, v21, v63);
        v25 = v26;
      }

      if (!a4 && !a6 && !a7)
      {
        a6 = 0;
        a4 = 0;
        v27 = v65;
        goto LABEL_96;
      }

      v27 = v65;
      if (!*(*(*(a1 + 240) + 216) + 57))
      {
        break;
      }

      if (v8 > v65)
      {
        v28 = 24 * v65;
        for (i = v65; v8 != i; ++i)
        {
          if (!a4)
          {
            goto LABEL_39;
          }

          v30 = *(*(a1 + 240) + 216);
          v31 = *(v30 + 59);
          if (*(v30 + 59))
          {
            v32 = *(v30 + 24);
            if (v32)
            {
              v31 = 0;
              v33 = *(*(a1 + 240) + 232);
              v34 = *(v30 + 57);
              if (v34 <= 1)
              {
                if (!v34)
                {
                  v36 = *(v32 - v33 + i);
                  if (v36 >= 4)
                  {
                    v37 = *(v32 - v33 + i);
                  }

                  else
                  {
                    v37 = 0xFFFFFF;
                  }

                  if (v36 <= 0xEF)
                  {
                    v31 = v37;
                  }

                  else
                  {
                    v31 = v36 & 3;
                  }

                  goto LABEL_38;
                }

                v35 = *(v32 - 2 * v33 + 2 * i);
                goto LABEL_33;
              }

              if (v34 == 2)
              {
                v35 = *(v32 - 4 * v33 + 4 * i);
LABEL_33:
                if (v35 > 0xFF)
                {
                  v31 = v35 >> 8;
                }

                else if (v35 >= 0x80)
                {
                  v31 = 0xFFFFFF;
                }

                else
                {
                  v31 = 0;
                }

                goto LABEL_38;
              }

              if (v34 == 3)
              {
                v35 = *(v32 - 24 * v33 + v28);
                goto LABEL_33;
              }
            }

            else
            {
              v31 = 0;
            }
          }

LABEL_38:
          *a4++ = v31;
LABEL_39:
          if (!a6)
          {
            goto LABEL_48;
          }

          v38 = *(*(a1 + 240) + 216);
          if (!*(v38 + 59))
          {
            goto LABEL_46;
          }

          v39 = *(v38 + 24);
          if (v39)
          {
            v40 = *(*(a1 + 240) + 232);
            v41 = *(v38 + 57);
            if (v41 == 3)
            {
              LODWORD(v39) = *(v39 - 24 * v40 + v28);
              goto LABEL_47;
            }

            if (v41 == 2)
            {
              LODWORD(v39) = *(v39 - 4 * v40 + 4 * i);
              goto LABEL_47;
            }

            if (v41 != 1)
            {
LABEL_46:
              LOBYTE(v39) = 0;
              goto LABEL_47;
            }

            LOWORD(v39) = *(v39 - 2 * v40 + 2 * i);
          }

LABEL_47:
          *a6++ = v39 & 1;
LABEL_48:
          if (a7)
          {
            v42 = *(*(a1 + 240) + 216);
            LOBYTE(v43) = *(v42 + 59);
            if (v43)
            {
              v44 = *(v42 + 24);
              if (v44)
              {
                LOBYTE(v43) = 0;
                v45 = *(*(a1 + 240) + 232);
                v46 = *(v42 + 57);
                if (v46 > 1)
                {
                  if (v46 == 2)
                  {
                    v47 = *(v44 - 4 * v45 + 4 * i);
                  }

                  else
                  {
                    if (v46 != 3)
                    {
                      goto LABEL_64;
                    }

                    v47 = *(v44 - 24 * v45 + v28);
                  }

LABEL_63:
                  v43 = (v47 >> 4) & 1;
                  goto LABEL_64;
                }

                if (v46)
                {
                  v47 = *(v44 - 2 * v45 + 2 * i);
                  goto LABEL_63;
                }

                v43 = *(v44 - v45 + i);
                if (v43 < 0xF0)
                {
                  LOBYTE(v43) = (v43 & 0xFE) == 2;
                }

                else
                {
                  v43 = (v43 >> 3) & 1;
                }
              }

              else
              {
                LOBYTE(v43) = 0;
              }
            }

LABEL_64:
            *a7++ = v43;
          }

          v28 += 24;
        }
      }

LABEL_96:
      if (a5)
      {
        v53 = *(*(a1 + 240) + 216);
        if (*(v53 + 59) && *(v53 + 32))
        {
          if (v8 > v27)
          {
            v54 = v27;
            while (1)
            {
              v55 = *(*(a1 + 240) + 232);
              v56 = *(*(a1 + 240) + 216);
              if (!*(v56 + 59))
              {
                break;
              }

              v57 = *(v56 + 32);
              if (v57)
              {
                v58 = *(v56 + 58);
                if (v58 == 2)
                {
                  v57 = *(v57 - 4 * v55 + 4 * v54);
                  goto LABEL_108;
                }

                if (v58 == 1)
                {
                  v57 = *(v57 - 2 * v55 + 2 * v54);
                  goto LABEL_108;
                }

                if (v58)
                {
                  break;
                }

                v57 = *(v57 - v55 + v54);
              }

LABEL_108:
              *a5++ = v54 + *(*(a1 + 240) + 224) - v57 - v55;
              if (v8 == ++v54)
              {
                goto LABEL_115;
              }
            }

            v57 = 0;
            goto LABEL_108;
          }
        }

        else if (v8 > v27)
        {
          v59 = v27;
          do
          {
            *a5++ = v59 + *(*(a1 + 240) + 224) - *(*(a1 + 240) + 232);
            ++v59;
          }

          while (v8 != v59);
        }
      }

LABEL_115:
      if (a8)
      {
        if (*(*(*(a1 + 240) + 216) + 40))
        {
          v60 = v27;
          if (v8 > v27)
          {
            do
            {
              *a8++ = *(*(*(*(a1 + 240) + 216) + 40) - *(*(a1 + 240) + 232) + v60++);
            }

            while (v8 != v60);
          }
        }

        else
        {
          v61 = v8 - v27;
          if (v8 > v27)
          {
            v63 = v25;
            bzero(a8, v8 - v27);
            v25 = v63;
            v27 = v65;
            a8 += v61;
          }
        }
      }

      v66 = v66 - v27 + v8;
      a2 = v8;
      v8 = v64;
      if (v25 >= v64)
      {
        return v66;
      }
    }

    if (v8 <= v65)
    {
      goto LABEL_96;
    }

    v48 = v65;
    while (1)
    {
      v49 = *(*(a1 + 240) + 216);
      if (!*(v49 + 59))
      {
        break;
      }

      v50 = *(v49 + 24);
      if (v50)
      {
        v51 = *(v50 - *(*(a1 + 240) + 232) + v48);
        if (v51 < 0xF0)
        {
          LOBYTE(v52) = (v51 & 0xFE) == 2;
          if (v51 >= 4)
          {
            LODWORD(v50) = *(v50 - *(*(a1 + 240) + 232) + v48);
          }

          else
          {
            LODWORD(v50) = 0xFFFFFF;
          }

          if (!a4)
          {
            goto LABEL_79;
          }
        }

        else
        {
          LODWORD(v50) = v51 & 3;
          v52 = (v51 >> 3) & 1;
          if (!a4)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_78;
      }

      LOBYTE(v52) = 0;
      if (a4)
      {
        goto LABEL_78;
      }

LABEL_79:
      if (a7)
      {
        *a7 = v52;
      }

      if (a4)
      {
        ++a4;
      }

      else
      {
        a4 = 0;
      }

      if (a6)
      {
        *a6++ = 0;
      }

      if (a7)
      {
        ++a7;
      }

      else
      {
        a7 = 0;
      }

      if (v8 == ++v48)
      {
        goto LABEL_96;
      }
    }

    LOBYTE(v52) = 0;
    LODWORD(v50) = 0;
    if (!a4)
    {
      goto LABEL_79;
    }

LABEL_78:
    *a4 = v50;
    goto LABEL_79;
  }

  return 0;
}

uint64_t _NSGlyphTreeGetShownGlyphsInRange(uint64_t a1, unint64_t a2, uint64_t a3, int *a4)
{
  v5 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v6 = a2;
    v8 = 0;
    while (1)
    {
      if (!_NSGlyphTreeMoveToGlyphIndex(a1, v6))
      {
        goto LABEL_47;
      }

      v16 = *(*(a1 + 240) + 232);
      v17 = *(*(a1 + 240) + 216);
      v18 = *(v17 + 8);
      v19 = v18 + v16;
      if (v18 + v16 >= v5)
      {
        v20 = v5;
      }

      else
      {
        v20 = v18 + v16;
      }

      if (!*(v17 + 59) || !*(v17 + 24))
      {
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeGetShownGlyphsInRange missing glyphs", v9, v10, v11, v12, v13, v14, v15, v33);
      }

      if (v6 < v20)
      {
        break;
      }

LABEL_44:
      v6 = v20;
      if (v19 >= v5)
      {
        goto LABEL_47;
      }
    }

    v21 = 24 * v6;
    while (1)
    {
      v22 = *(*(a1 + 240) + 216);
      if (!*(v22 + 59))
      {
        goto LABEL_43;
      }

      v23 = *(v22 + 24);
      if (!v23)
      {
        goto LABEL_43;
      }

      v24 = *(*(a1 + 240) + 232);
      v25 = *(v22 + 57);
      if (v25 > 1)
      {
        break;
      }

      if (v25)
      {
        v26 = *(v23 - 2 * v24 + 2 * v6);
        if ((v26 & 0x40) != 0)
        {
          goto LABEL_43;
        }

LABEL_26:
        if (v26 > 0xFF)
        {
          v29 = v26 >> 8;
          if (v29)
          {
            goto LABEL_40;
          }
        }

        else if (v26 >= 0x80)
        {
          v29 = 0xFFFFFF;
LABEL_40:
          if (a4)
          {
            *a4++ = v29;
          }

          ++v8;
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      v27 = v23 - v24;
      v28 = *(v27 + v6);
      if (v28 < 0xF0)
      {
        if (v28 <= 3 && (v28 & 1) != 0)
        {
          goto LABEL_43;
        }
      }

      else if ((v28 & 4) != 0)
      {
        goto LABEL_43;
      }

      v30 = *(v27 + v6);
      if (v30 >= 4)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0xFFFFFF;
      }

      if (v30 <= 0xEF)
      {
        v29 = v31;
      }

      else
      {
        v29 = v30 & 3;
      }

      if (v29)
      {
        goto LABEL_40;
      }

LABEL_43:
      ++v6;
      v21 += 24;
      if (v20 == v6)
      {
        goto LABEL_44;
      }
    }

    if (v25 == 2)
    {
      v26 = *(v23 - 4 * v24 + 4 * v6);
      if ((v26 & 0x40) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v25 != 3)
      {
        goto LABEL_43;
      }

      v26 = *(v23 - 24 * v24 + v21);
      if ((v26 & 0x40) != 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_26;
  }

  v8 = 0;
LABEL_47:
  if (a4)
  {
    *a4 = 0;
  }

  return v8;
}

uint64_t _NSGlyphTreeGetPackedGlyphsInRange(uint64_t a1, unint64_t a2, uint64_t a3, _WORD *a4)
{
  v4 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v6 = a2;
    v8 = 0;
    while (1)
    {
      if (!_NSGlyphTreeMoveToGlyphIndex(a1, v6))
      {
        return v8;
      }

      v16 = *(*(a1 + 240) + 232);
      v17 = *(*(a1 + 240) + 216);
      v18 = *(v17 + 8);
      v19 = v18 + v16;
      if (v18 + v16 >= v4)
      {
        v20 = v4;
      }

      else
      {
        v20 = v18 + v16;
      }

      if (!*(v17 + 59) || !*(v17 + 24))
      {
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeGetShownGlyphsInRange missing glyphs", v9, v10, v11, v12, v13, v14, v15, v34);
      }

      if (v6 < v20)
      {
        break;
      }

LABEL_48:
      v6 = v20;
      if (v19 >= v4)
      {
        return v8;
      }
    }

    v21 = 24 * v6;
    while (1)
    {
      v22 = *(*(a1 + 240) + 216);
      v23 = *(v22 + 59);
      if (!*(v22 + 59))
      {
        goto LABEL_19;
      }

      v24 = *(v22 + 24);
      if (!v24)
      {
        break;
      }

      v23 = 0;
      v25 = *(*(a1 + 240) + 232);
      v26 = *(v22 + 57);
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v27 = *(v24 - 4 * v25 + 4 * v6);
          if ((v27 & 0x40) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v26 != 3)
          {
            goto LABEL_19;
          }

          v27 = *(v24 - 24 * v25 + v21);
          if ((v27 & 0x40) == 0)
          {
LABEL_35:
            if (v27 > 0xFF)
            {
              v23 = v27 >> 8;
            }

            else if (v27 >= 0x80)
            {
              v23 = 0xFFFFFF;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v26)
      {
        v27 = *(v24 - 2 * v25 + 2 * v6);
        if ((v27 & 0x40) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = v24 - v25;
        v30 = *(v24 - v25 + v6);
        if (v30 < 0xF0)
        {
          if (v30 > 3 || (v30 & 1) == 0)
          {
LABEL_42:
            v31 = *(v29 + v6);
            if (v31 >= 4)
            {
              v32 = v31;
            }

            else
            {
              v32 = 0xFFFFFF;
            }

            if (v31 <= 0xEF)
            {
              v23 = v32;
            }

            else
            {
              v23 = v31 & 3;
            }

            goto LABEL_19;
          }
        }

        else if ((v30 & 4) == 0)
        {
          goto LABEL_42;
        }
      }

LABEL_25:
      ++v6;
      v21 += 24;
      if (v20 == v6)
      {
        goto LABEL_48;
      }
    }

    v23 = 0;
LABEL_19:
    if (a4)
    {
      if (v23 == 0xFFFFFF)
      {
        v28 = 0;
      }

      else
      {
        v28 = v23;
      }

      *a4++ = v28;
    }

    ++v8;
    goto LABEL_25;
  }

  return 0;
}

void _NSGlyphTreeInvalidateGlyphsForCharacterRange(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  v136 = v9;
  if (!(a3 | a4))
  {
    return;
  }

  v10 = a4;
  v11 = a2;
  v12 = a1;
  v13 = &OBJC_IVAR___NSExtraLMData__glyphTree;
  v14 = *(*(a1 + 240) + 208);
  if (v136)
  {
    if ((v14[7] & 0x24) == 0)
    {
      return;
    }
  }

  v129 = *v14;
  v132 = v14[1];
  v15 = a2 + a3;
  v16 = a3 + a4;
  v128 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(a1, a2);
  v130 = v10;
  v131 = v16;
  if (v11 < v15)
  {
    v133 = 0;
    v135 = v12;
    while (1)
    {
      v24 = v16 - (v15 - v11);
      if (_NSGlyphTreeMoveToCharacterIndex(v12, v11))
      {
        v25 = v13;
        v26 = *(v12 + 240) + *v13;
        v28 = *(v26 + 8);
        v27 = *(v26 + 16);
        v29 = v28->i64[0];
        v30 = v28->i64[0] + v27;
        v31 = v30 - v11;
        if (v15 <= v30)
        {
          v31 = v15 - v11;
        }

        else
        {
          v24 = v16 - (v30 - v11);
        }

        if (v136 && (v28[3].i8[8] & 0x24) == 0)
        {
          goto LABEL_36;
        }

        if (v28[3].i8[11] && v28[1].i64[1])
        {
          if (v11 <= v27)
          {
            v13 = v25;
            if (v11)
            {
              v52 = v31 + v11;
              v53 = v30 - v52;
              if (v30 <= v52)
              {
                v12 = v135;
                _NSGlyphTreeDeleteCurrentNode(v135, v17, v53, v19, v20, v21, v22, v23);
                if (!v16)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                _NSGlyphNodeTruncate(v28, v52 - v27, v53);
                v12 = v135;
                if (!v16)
                {
                  goto LABEL_61;
                }
              }

              if (!_NSGlyphTreeMoveToCharacterIndex(v12, v11 - 1))
              {
                _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInvalidateGlyphsForCharacterRange found invalid char index", v62, v63, v64, v65, v66, v67, v68, v128);
LABEL_61:
                v133 = 1;
                goto LABEL_62;
              }

              v69 = *(*(v12 + 240) + *v25 + 8);
              if (!v69[3].i8[11])
              {
                v77 = 0;
                v78 = &v69[1].i8[8];
                v134 = v69->i64[0];
                do
                {
                  v79 = *&v78[v77];
                  if (v79)
                  {
                    _NSGlyphNodeFree(v79);
                    *&v78[v77] = 0;
                  }

                  v77 += 8;
                }

                while (v77 != 24);
                v13 = v25;
                v80 = v134;
                v12 = v135;
                goto LABEL_65;
              }

              if (!v69[1].i64[1])
              {
                v80 = v69->i64[0];
LABEL_65:
                v81 = v80 + v16;
                v133 = 1;
                v69[3].i8[11] = 1;
                v69[3].i8[8] = v81 != 0;
                v69->i64[0] = v81;
                v69->i64[1] = v81;
                _NSGlyphNodeSetCapacity(v69, 0);
                _NSGlyphNodeSetInvariants(v69);
                goto LABEL_62;
              }

              v70 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
              v70[59] = 1;
              *v70 = v16;
              *(v70 + 1) = v16;
              v70[56] = 1;
              _NSGlyphTreeInsertNodeAfterCurrentNode(v12, v70, v71, v72, v73, v74, v75, v76);
              goto LABEL_50;
            }

            v54 = v30 - v31;
            if (v30 <= v31)
            {
              if (!v16)
              {
                v12 = v135;
                _NSGlyphTreeDeleteCurrentNode(v135, v17, v54, v19, v20, v21, v22, v23);
                goto LABEL_61;
              }

              v28[3].i8[11] = 1;
              v133 = 1;
              v28[3].i8[8] = 1;
              v28->i64[0] = v16;
              v28->i64[1] = v16;
              _NSGlyphNodeSetCapacity(v28, 0);
              _NSGlyphNodeSetInvariants(v28);
            }

            else
            {
              _NSGlyphNodeTruncate(v28, v31 - v27, v54);
              if (v16)
              {
                v55 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
                v55[3].i8[11] = 1;
                v55->i64[0] = v16;
                v55->i64[1] = v16;
                v55[3].i8[8] = 1;
                v12 = v135;
                _NSGlyphTreeInsertNodeBeforeCurrentNode(v135, v55, v56, v57, v58, v59, v60, v61);
LABEL_50:
                v133 = 1;
                goto LABEL_62;
              }

              v133 = 1;
            }

            goto LABEL_37;
          }

          v32 = v31 + v11;
          v13 = v25;
          if (v30 > v32)
          {
            SubNode = _NSGlyphNodeCreateSubNode(v28, v32 - v27, v30 - v32);
            _NSGlyphTreeInsertNodeAfterCurrentNode(v135, SubNode, v34, v35, v36, v37, v38, v39);
            v40 = *(v135 + 240) + *v25;
            v28 = *(v40 + 8);
            v27 = *(v40 + 16);
          }

          _NSGlyphNodeTruncate(v28, 0, v11 - v27);
          v133 = 1;
          if (!v16)
          {
            goto LABEL_37;
          }

          v41 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
          v41[59] = 1;
          *v41 = v16;
          *(v41 + 1) = v16;
          v41[56] = 1;
          v12 = v135;
          _NSGlyphTreeInsertNodeAfterCurrentNode(v135, v41, v42, v43, v44, v45, v46, v47);
        }

        else
        {
          if (!v24)
          {
            v133 = 1;
            goto LABEL_36;
          }

          if (v24 > 0 || v29 > -v24)
          {
            if (!v28[3].i8[11])
            {
              v49 = 0;
              v50 = &v28[1].i8[8];
              do
              {
                v51 = *&v50[v49];
                if (v51)
                {
                  _NSGlyphNodeFree(v51);
                  *&v50[v49] = 0;
                }

                v49 += 8;
              }

              while (v49 != 24);
            }

            v133 = 1;
            v28[3].i8[11] = 1;
            v28[3].i8[8] = v24 + v29 != 0;
            v28->i64[0] = v24 + v29;
            v28->i64[1] = v24 + v29;
            _NSGlyphNodeSetCapacity(v28, 0);
            _NSGlyphNodeSetInvariants(v28);
LABEL_36:
            v13 = v25;
LABEL_37:
            v12 = v135;
            goto LABEL_62;
          }

          v12 = v135;
          _NSGlyphTreeDeleteCurrentNode(v135, v17, v18, v19, v20, v21, v22, v23);
          v133 = 1;
          v13 = v25;
        }
      }

      else
      {
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInvalidateGlyphsForCharacterRange invalid char range 1", v17, v18, v19, v20, v21, v22, v23, v128);
      }

LABEL_62:
      v11 += v16;
      v15 += v24;
      v10 -= v24;
      v16 = 0;
      if (v11 >= v15)
      {
        goto LABEL_67;
      }
    }
  }

  v133 = 0;
LABEL_67:
  if (v10 >= 1)
  {
    v82 = v131;
    if (v11)
    {
      if (_NSGlyphTreeMoveToCharacterIndex(v12, v11 - 1))
      {
        v83 = *(v12 + 240) + *v13;
        v84 = *(v83 + 8);
        if (*(v84 + 59))
        {
          if (*(v84 + 24))
          {
            v85 = *(v83 + 16);
            v86 = *v84 + v85;
            if (v86 > v11)
            {
              v87 = _NSGlyphNodeCreateSubNode(v84, v11 - v85, v86 - v11);
              _NSGlyphTreeInsertNodeAfterCurrentNode(v12, v87, v88, v89, v90, v91, v92, v93);
              v94 = *(v12 + 240) + *v13;
              _NSGlyphNodeTruncate(*(v94 + 8), 0, v11 - *(v94 + 16));
            }

            v95 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
            v95[59] = 1;
            *v95 = v10;
            *(v95 + 1) = v10;
            v95[56] = 1;
            _NSGlyphTreeInsertNodeAfterCurrentNode(v12, v95, v96, v97, v98, v99, v100, v101);
            goto LABEL_107;
          }

          v118 = *v84;
        }

        else
        {
          v115 = v13;
          v116 = 0;
          v117 = v84 + 24;
          v118 = *v84;
          do
          {
            v119 = *(v117 + v116);
            if (v119)
            {
              _NSGlyphNodeFree(v119);
              *(v117 + v116) = 0;
            }

            v116 += 8;
          }

          while (v116 != 24);
          v13 = v115;
        }

        *(v84 + 59) = 1;
        *(v84 + 56) = v118 + v10 != 0;
        *v84 = v118 + v10;
        *(v84 + 8) = v118 + v10;
        _NSGlyphNodeSetCapacity(v84, 0);
        v120 = v84;
        goto LABEL_106;
      }

      v102 = @"!!! _NSGlyphTreeInvalidateGlyphsForCharacterRange invalid char range 2";
      goto LABEL_95;
    }

    v103 = (*(v12 + 240) + *v13);
    if (!**v103)
    {
      v103[1] = *v103;
      *(*(v12 + 240) + *v13 + 24) = 0;
      *(*(v12 + 240) + *v13 + 16) = 0;
      v104 = *(*(v12 + 240) + *v13 + 8);
      if (!*(v104 + 59))
      {
        v112 = 0;
        v113 = v104 + 24;
        do
        {
          v114 = *(v113 + v112);
          if (v114)
          {
            _NSGlyphNodeFree(v114);
            *(v113 + v112) = 0;
          }

          v112 += 8;
        }

        while (v112 != 24);
      }

      *(v104 + 59) = 1;
      *(v104 + 56) = 1;
      *v104 = v10;
      *(v104 + 8) = v10;
      goto LABEL_105;
    }

    if (_NSGlyphTreeMoveToCharacterIndex(v12, 0))
    {
      v104 = *(*(v12 + 240) + *v13 + 8);
      if (*(v104 + 59))
      {
        if (*(v104 + 24))
        {
          v105 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
          v105[3].i8[11] = 1;
          v105->i64[0] = v10;
          v105->i64[1] = v10;
          v105[3].i8[8] = 1;
          _NSGlyphTreeInsertNodeBeforeCurrentNode(v12, v105, v106, v107, v108, v109, v110, v111);
          goto LABEL_107;
        }

        v124 = *v104;
      }

      else
      {
        v121 = v13;
        v122 = 0;
        v123 = v104 + 24;
        v124 = *v104;
        do
        {
          v125 = *(v123 + v122);
          if (v125)
          {
            _NSGlyphNodeFree(v125);
            *(v123 + v122) = 0;
          }

          v122 += 8;
        }

        while (v122 != 24);
        v13 = v121;
      }

      *(v104 + 59) = 1;
      *(v104 + 56) = v124 + v10 != 0;
      *v104 = v124 + v10;
      *(v104 + 8) = v124 + v10;
LABEL_105:
      _NSGlyphNodeSetCapacity(v104, 0);
      v120 = v104;
LABEL_106:
      _NSGlyphNodeSetInvariants(v120);
      goto LABEL_107;
    }

    v102 = @"!!! _NSGlyphTreeInvalidateGlyphsForCharacterRange invalid char range 3";
LABEL_95:
    _NSGlyphTreeLogDebug(v102, v17, v18, v19, v20, v21, v22, v23, v128);
    goto LABEL_107;
  }

  v82 = v131;
  if (v10 < 0)
  {
    v102 = @"!!! _NSGlyphTreeInvalidateGlyphsForCharacterRange invalid change in length";
    goto LABEL_95;
  }

LABEL_107:
  v126 = *(v12 + 240);
  if (v129 + v130 != **(v126 + *v13))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInvalidateGlyphsForCharacterRange character count mismatch", v17, v18, v19, v20, v21, v22, v23, v128);
    v126 = *(v12 + 240);
  }

  *(v126 + 496) = 0;
  v127 = *(*(*(v12 + 240) + *v13) + 8);
  if (v133 & 1 | (v127 != v132))
  {

    _NSLayoutTreeInvalidateLayoutForGlyphRange(v12, v128, v82 - (v127 - v132), v127 - v132, v20, v21, v22, v23, a9);
  }
}

void _NSGlyphTreeInsertNodeAfterCurrentNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 240) + 216);
  if (v8)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return;
  }

  v10 = a2;
  v25 = 0u;
  v26 = 0u;
  while (1)
  {
    v12 = v8[1].i64[0];
    if (!v12)
    {
      v24 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
      v24[1].i64[1] = v8;
      v24[2].i64[0] = v10;
      v8[1].i64[0] = v24;
      v10[1].i64[0] = v24;
      _NSGlyphNodeSetInvariants(v24);
      *(*(a1 + 240) + 208) = v24;
      return;
    }

    v13 = 0;
    while (1)
    {
      v14 = v12[1].i64[v13 + 1];
      if (!v14)
      {
        break;
      }

      if (v8 == v14)
      {
        v14 = v8;
        break;
      }

      if (++v13 == 3)
      {
        v14 = 0;
        break;
      }
    }

    if (v8 != v14)
    {
      _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInsertNodeAfterCurrentNode found broken link", a2, a3, a4, a5, a6, a7, a8, v25);
      v12 = v8;
      v15 = v10;
      if (!v8)
      {
        return;
      }

      goto LABEL_23;
    }

    if (!v12[2].i64[1])
    {
      break;
    }

    v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
    for (i = 0; i != 3; ++i)
    {
      *(&v25 + i * 8) = v12[1].i64[i + 1];
      v12[1].i64[i + 1] = 0;
    }

    v17 = v13 + 1;
    if (v13 <= 1)
    {
      v18 = &v26 + 1;
      v19 = 3;
      v20 = &v26 + 8;
      do
      {
        --v19;
        v21 = *(v20 - 1);
        v20 -= 8;
        *v18 = v21;
        v18 = v20;
      }

      while (v19 > v17);
    }

    *(&v25 + v17) = v10;
    v22 = v25;
    v12[1].i64[1] = v25;
    *(v22 + 16) = v12;
    v12[2].i64[0] = *(&v22 + 1);
    *(*(&v22 + 1) + 16) = v12;
    _NSGlyphNodeSetInvariants(v12);
    v23 = v26;
    v15[1].i64[1] = v26;
    *(v23 + 16) = v15;
    v15[2].i64[0] = *(&v23 + 1);
    *(*(&v23 + 1) + 16) = v15;
    _NSGlyphNodeSetInvariants(v15);
LABEL_23:
    v10 = v15;
    v8 = v12;
    if (!v15)
    {
      return;
    }
  }

  if (!v13)
  {
    v12[2].i64[1] = v12[2].i64[0];
  }

  v12[2].i64[v13] = v10;
  v10[1].i64[0] = v12;

  _NSGlyphNodeSetInvariants(v12);
}

unsigned __int8 *_NSGlyphNodeCreateSubNode(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
  v6[59] = 1;
  *v6 = a3;
  *(v6 + 1) = a3;
  v6[56] = a3 != 0;
  if (*(a1 + 24))
  {
    v7 = a2 + a3;
    v8 = *(a1 + 57);
    if (v8 > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_18E8561F0[v8];
    }

    v10 = *(a1 + 58);
    v11 = *(a1 + 32);
    if (v11)
    {
      if (a2)
      {
        v12 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(a1, a2) - 1;
        while (v12 != -1)
        {
          if (v10 == 2)
          {
            v13 = *(v11 + 4 * v12);
          }

          else if (v10 == 1)
          {
            v13 = *(v11 + 2 * v12);
          }

          else if (v10)
          {
            v13 = 0;
          }

          else
          {
            v13 = *(v11 + v12);
          }

          if (--v12 - v13 + 1 < a2)
          {
            a2 = v12 + 2;
            goto LABEL_19;
          }
        }

        a2 = 0;
      }

LABEL_19:
      if (v7 >= *a1)
      {
        v7 = *(a1 + 8);
      }

      else
      {
        v14 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(a1, v7) - 1;
        while (v14 != -1)
        {
          if (v10 == 2)
          {
            v15 = *(v11 + 4 * v14);
          }

          else if (v10 == 1)
          {
            v15 = *(v11 + 2 * v14);
          }

          else if (v10)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v11 + v14);
          }

          if (--v14 - v15 + 1 < v7)
          {
            v7 = v14 + 2;
            goto LABEL_33;
          }
        }

        v7 = 0;
      }
    }

LABEL_33:
    v16 = v7 - a2;
    *(v6 + 1) = v7 - a2;
    v6[56] = *(a1 + 56);
    v6[57] = v8;
    v17 = *MEMORY[0x1E69E9AC8];
    if (v7 - a2 <= *MEMORY[0x1E69E9AC8] >> 1)
    {
      v17 = 64;
    }

    v18 = (v16 + v17 - 1) / v17 * v17;
    if (v18 >= 0x2000)
    {
      v18 = 0x2000;
    }

    if (v18 <= v16)
    {
      v19 = v7 - a2;
    }

    else
    {
      v19 = v18;
    }

    _NSGlyphNodeSetCapacity(v6, v19);
    memmove(*(v6 + 3), (*(a1 + 24) + a2 * v9), v16 * v9);
    if (v11)
    {
      if (v10 == 2)
      {
        v20 = *(v11 + 4 * a2);
      }

      else if (v10 == 1)
      {
        v20 = *(v11 + 2 * a2);
      }

      else
      {
        v20 = v10 ? 0 : *(v11 + a2);
      }

      _NSGlyphNodeSetDeltaFormat(v6, v10);
      v21 = v7 > a2;
      v22 = v7 - a2;
      if (v21)
      {
        v23 = 0;
        v24 = *(v6 + 4);
        v34 = v11 + a2;
        v32 = v11 + 2 * a2;
        v33 = v11 + 4 * a2;
        do
        {
          if (v10 == 2)
          {
            v25 = *(v33 + 4 * v23);
          }

          else if (v10 == 1)
          {
            v25 = *(v32 + 2 * v23);
          }

          else if (v10)
          {
            v25 = 0;
          }

          else
          {
            v25 = *(v34 + v23);
          }

          v26 = v25 - v20;
          v27 = v25 - v20 != (v25 - v20);
          if (v26 == v26)
          {
            v28 = v27;
          }

          else
          {
            v28 = 2;
          }

          if (v28 > v10)
          {
            _NSGlyphNodeSetDeltaFormat(v6, v28);
            v10 = v6[58];
            v24 = *(v6 + 4);
          }

          if (v24)
          {
            switch(v10)
            {
              case 2uLL:
                *(v24 + 4 * v23) = v26;
                break;
              case 1uLL:
                *(v24 + 2 * v23) = v26;
                break;
              case 0uLL:
                *(v24 + v23) = v26;
                break;
            }
          }

          ++v23;
        }

        while (v22 != v23);
      }
    }

    v29 = *(a1 + 40);
    if (v29)
    {
      v30 = *(v6 + 5);
      if (*(v6 + 6) && !v30)
      {
        v30 = malloc_type_calloc(*(v6 + 6), 1uLL, 0x49F3590AuLL);
        *(v6 + 5) = v30;
        v29 = *(a1 + 40);
      }

      memmove(v30, (v29 + a2), v16);
    }
  }

  return v6;
}

int64x2_t *_NSGlyphNodeTruncate(int64x2_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1[1].i64[1];
  if (!v5)
  {
    a1->i64[0] = a3;
    a1->i64[1] = a3;
    goto LABEL_78;
  }

  v6 = a2;
  v7 = a2 + a3;
  v8 = a1[3].u8[10];
  v9 = a1[2].i64[0];
  if (v9)
  {
    if (a2)
    {
      v10 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(a1, a2) - 1;
      while (v10 != -1)
      {
        if (v8 == 2)
        {
          v11 = *(v9 + 4 * v10);
        }

        else if (v8 == 1)
        {
          v11 = *(v9 + 2 * v10);
        }

        else if (v8)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v9 + v10);
        }

        if (--v10 - v11 + 1 < v6)
        {
          v6 = v10 + 2;
          goto LABEL_17;
        }
      }

      v6 = 0;
    }

LABEL_17:
    if (v7 >= a1->i64[0])
    {
      v7 = a1->u64[1];
    }

    else
    {
      v12 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(a1, v7) - 1;
      while (v12 != -1)
      {
        if (v8 == 2)
        {
          v13 = *(v9 + 4 * v12);
        }

        else if (v8 == 1)
        {
          v13 = *(v9 + 2 * v12);
        }

        else if (v8)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v9 + v12);
        }

        if (--v12 - v13 + 1 < v7)
        {
          v7 = v12 + 2;
          goto LABEL_31;
        }
      }

      v7 = 0;
    }
  }

LABEL_31:
  v14 = v7 - v6;
  a1->i64[0] = a3;
  a1->i64[1] = v7 - v6;
  if (v6)
  {
    v15 = a1[3].u8[9];
    if (v15 > 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_18E8561F0[v15];
    }

    memmove(v5, &v5[v16 * v6], v16 * v14);
    if (!v9 || (v8 == 2 ? (v17 = *(v9 + 4 * v6)) : v8 == 1 ? (v17 = *(v9 + 2 * v6)) : v8 ? (v17 = 0) : (v17 = *(v9 + v6)), v18 = v7 > v6, v19 = v7 - v6, !v18))
    {
LABEL_67:
      v25 = a1[2].i64[1];
      if (v25)
      {
        memmove(v25, &v25[v6], v14);
      }

      goto LABEL_69;
    }

    v20 = 0;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_51;
      }

      if (v8 == 2)
      {
        v21 = *(v9 + 4 * v6 + 4 * v20);
        goto LABEL_54;
      }

      if (v8 == 1)
      {
        v21 = *(v9 + 2 * v6 + 2 * v20);
        goto LABEL_54;
      }

      if (v8)
      {
LABEL_51:
        v21 = 0;
      }

      else
      {
        v21 = *(v9 + v6 + v20);
      }

LABEL_54:
      v22 = v21 - v17;
      v23 = v21 - v17 != (v21 - v17);
      if (v22 == v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 2;
      }

      if (v24 > v8)
      {
        _NSGlyphNodeSetDeltaFormat(a1, v24);
        v8 = a1[3].u8[10];
        v9 = a1[2].i64[0];
      }

      if (v9)
      {
        switch(v8)
        {
          case 2uLL:
            *(v9 + 4 * v20) = v22;
            break;
          case 1uLL:
            *(v9 + 2 * v20) = v22;
            break;
          case 0uLL:
            *(v9 + v20) = v22;
            break;
        }
      }

      if (v19 == ++v20)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_69:
  v26 = a1->u64[1];
  v27 = *MEMORY[0x1E69E9AC8];
  if (v26 <= *MEMORY[0x1E69E9AC8] >> 1)
  {
    v27 = 64;
  }

  v28 = (v26 + v27 - 1) / v27 * v27;
  if (v28 >= 0x2000)
  {
    v28 = 0x2000;
  }

  if (v28 <= v26)
  {
    v29 = a1->u64[1];
  }

  else
  {
    v29 = v28;
  }

  if (v29 < a1[3].i64[0])
  {
    _NSGlyphNodeSetCapacity(a1, v29);
  }

LABEL_78:

  return _NSGlyphNodeSetInvariants(a1);
}

uint64_t _NSGlyphTreeDeleteCurrentNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (2)
  {
    v9 = *(*(a1 + 240) + 216);
    if (*(v9 + 16))
    {
      for (i = 0; i != 3; ++i)
      {
        v11 = *(*(a1 + 240) + 216);
        v12 = *(v11 + 16);
        v13 = *(v12 + 8 * i + 24);
        if (!v13)
        {
          goto LABEL_12;
        }

        if (v11 == v13)
        {
          *(*(a1 + 240) + 216) = v12;
          if (i <= 1)
          {
            do
            {
              v15 = i;
              v16 = *(*(a1 + 240) + 216) + 8 * i;
              *(v16 + 24) = *(v16 + 32);
              i = 1;
            }

            while (!v15);
          }

          goto LABEL_10;
        }

        v14 = *(v13 + 8);
        *(*(a1 + 240) + 224) -= *v13;
        *(*(a1 + 240) + 232) -= v14;
      }

      if (*(*(a1 + 240) + 216))
      {
LABEL_12:
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeDeleteCurrentNode found broken link", a2, a3, a4, a5, a6, a7, a8, v25);
        break;
      }

      v13 = 0;
      *(*(a1 + 240) + 216) = MEMORY[0x10];
LABEL_10:
      *(*(*(a1 + 240) + 216) + 40) = 0;
      _NSGlyphNodeFree(v13);
      v17 = *(*(a1 + 240) + 216);
      if (!v17[1].i64[1])
      {
        continue;
      }

      _NSGlyphNodeSetInvariants(v17);
    }

    else
    {
      v23 = *(*(a1 + 240) + 208);
      if (v9 == v23)
      {
        _NSGlyphNodeFree(v23);
        v24 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
        v24[59] = 1;
        v24[56] = 0;
        *v24 = 0;
        *(v24 + 1) = 0;
        *(*(a1 + 240) + 208) = v24;
        *(*(a1 + 240) + 216) = v24;
      }

      else
      {
        _NSGlyphNodeFree(v9);
        *(*(a1 + 240) + 216) = *(*(a1 + 240) + 208);
      }

      *(*(a1 + 240) + 232) = 0;
      *(*(a1 + 240) + 224) = 0;
    }

    break;
  }

  v18 = (a1 + 240);
  for (result = *(*(a1 + 240) + 208); !*(result + 59); result = *(*(a1 + 240) + 208))
  {
    if (*(result + 32))
    {
      break;
    }

    v20 = *(result + 24);
    if (v20)
    {
      *(result + 24) = 0;
      *(v20 + 16) = 0;
      v21 = (*v18 + 208);
      if (v21[1] == *v21)
      {
        v21[1] = v20;
      }

      _NSGlyphNodeFree(*(*(a1 + 240) + 208));
      *(*(a1 + 240) + 208) = v20;
    }

    else
    {
      _NSGlyphNodeFree(result);
      v22 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
      v22[59] = 1;
      v22[56] = 0;
      *v22 = 0;
      *(v22 + 1) = 0;
      *(*(a1 + 240) + 208) = v22;
      *(*(a1 + 240) + 216) = v22;
      *(*(a1 + 240) + 232) = 0;
      *(*(a1 + 240) + 224) = 0;
    }

    v18 = (a1 + 240);
  }

  return result;
}

void _NSGlyphTreeInsertNodeBeforeCurrentNode(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 240);
  if (!a2)
  {
    goto LABEL_27;
  }

  v11 = *(v10 + 216);
  if (!v11)
  {
    goto LABEL_27;
  }

  v31 = 0u;
  v32 = 0u;
  v12 = a2;
  while (1)
  {
    v13 = v11[1].i64[0];
    if (!v13)
    {
      v25 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
      v25[1].i64[1] = v12;
      v25[2].i64[0] = v11;
      v12[1].i64[0] = v25;
      v11[1].i64[0] = v25;
      _NSGlyphNodeSetInvariants(v25);
      *(*(a1 + 240) + 208) = v25;
      goto LABEL_26;
    }

    v14 = 0;
    while (1)
    {
      v15 = v13[1].i64[v14 + 1];
      if (!v15)
      {
        break;
      }

      if (v11 == v15)
      {
        v15 = v11;
        break;
      }

      if (++v14 == 3)
      {
        v15 = 0;
        break;
      }
    }

    if (v11 != v15)
    {
      _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInsertNodeBeforeCurrentNode found broken link", a2, a3, a4, a5, a6, a7, a8, v31);
      v13 = v11;
      v16 = v12;
      goto LABEL_20;
    }

    if (!v13[2].i64[1])
    {
      break;
    }

    v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
    v16 = v17;
    for (i = 0; i != 3; ++i)
    {
      *(&v31 + i * 8) = v13[1].i64[i + 1];
      v13[1].i64[i + 1] = 0;
    }

    if (v14 <= 2)
    {
      v19 = &v32 + 1;
      v20 = 3;
      v21 = &v32 + 8;
      do
      {
        --v20;
        v22 = *(v21 - 1);
        v21 -= 8;
        *v19 = v22;
        v19 = v21;
      }

      while (v20 > v14);
    }

    *(&v31 + v14) = v12;
    v23 = v31;
    v17[1].i64[1] = v31;
    *(v23 + 16) = v17;
    v17[2].i64[0] = *(&v23 + 1);
    *(*(&v23 + 1) + 16) = v17;
    _NSGlyphNodeSetInvariants(v17);
    v24 = v32;
    v13[1].i64[1] = v32;
    *(v24 + 16) = v13;
    v13[2].i64[0] = *(&v24 + 1);
    *(*(&v24 + 1) + 16) = v13;
    _NSGlyphNodeSetInvariants(v13);
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_20:
    v12 = v16;
    v11 = v13;
  }

  if (v14 <= 1)
  {
    v26 = &v13[2].i64[1];
    v27 = 2;
    v28 = &v13[2].i64[1];
    do
    {
      --v27;
      v29 = *--v28;
      *v26 = v29;
      v26 = v28;
    }

    while (v27 > v14);
  }

  v13[1].i64[v14 + 1] = v12;
  v12[1].i64[0] = v13;
  _NSGlyphNodeSetInvariants(v13);
LABEL_26:
  v10 = *(a1 + 240);
LABEL_27:
  v30 = a2->i64[1];
  *(v10 + 224) += a2->i64[0];
  *(*(a1 + 240) + 232) += v30;
}

void _NSGlyphTreeInsertGlyphs(uint64_t a1, unint64_t a2, unint64_t a3, size_t a4, unsigned int *a5)
{
  if (a5)
  {
    v5 = a4;
    if (a4)
    {
      v6 = a5;
      do
      {
        if (!_NSGlyphTreeMoveToCharacterIndex(a1, a2))
        {
          _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInsertGlyphs invalid char index", v10, v11, v12, v13, v14, v15, v16, v97);
          v20 = v5;
          goto LABEL_44;
        }

        v18 = *(*(a1 + 240) + 216);
        v17 = *(*(a1 + 240) + 224);
        v19 = v18->i64[0] + v17;
        if (a2 + v5 <= v19)
        {
          v20 = v5;
        }

        else
        {
          v20 = v19 - a2;
        }

        if (v18[3].i8[11] && v18[1].i64[1])
        {
          if (v20)
          {
            v21 = 0;
            while (1)
            {
              v22 = *(*(a1 + 240) + 232);
              if (a3 + v21 < v22)
              {
                break;
              }

              v23 = *(*(a1 + 240) + 216);
              if (a3 + v21 > v23->i64[1] + v22)
              {
                break;
              }

              _NSGlyphNodeInsertGlyph(v23, a2 + v21 - *(*(a1 + 240) + 224), a3 + v21 - v22, 0, v6[v21]);
              if (++v21 >= v20)
              {
                v101 = 0;
                goto LABEL_30;
              }
            }

            _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeInsertGlyphs glyph index issue 1", v10, v11, v12, v13, v14, v15, v16, v97);
            v101 = 0;
LABEL_30:
            [*(a1 + 48) insertElement:&v101 range:a3 coalesceRuns:{v20, 1, v97}];
            v44 = *(*(a1 + 240) + 184);
            if (v44)
            {
              _NSInsertGlyphRangeInTextBlocks(v44, a3, v20);
            }
          }

          _NSLayoutTreeInvalidateLayoutForGlyphRange(a1, a3, 0, v20, v13, v14, v15, v16, v97);
        }

        else
        {
          if (a3 != a2 - v17 + *(*(a1 + 240) + 232))
          {
            v43 = @"!!! _NSGlyphTreeInsertGlyphs glyph index issue 2";
            goto LABEL_28;
          }

          if (a2 > v17)
          {
            v24 = v19 - (v20 + a2);
            if (v19 > v20 + a2)
            {
              v25 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
              v25[59] = 1;
              *v25 = v24;
              *(v25 + 1) = v24;
              v25[56] = 1;
              _NSGlyphTreeInsertNodeAfterCurrentNode(a1, v25, v26, v27, v28, v29, v30, v31);
            }

            v32 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
            v32[3].i8[11] = 1;
            v32->i64[0] = v20;
            v32->i64[1] = v20;
            v32[3].i8[8] = v20 != 0;
            _NSGlyphNodeSetGlyphs(v32, v20, v6);
            v33 = *(*(a1 + 240) + 216);
            v99 = *(*(a1 + 240) + 224);
            if (!v33[3].i8[11])
            {
              v34 = 0;
              v35 = &v33[1].i8[8];
              do
              {
                v36 = *&v35[v34];
                if (v36)
                {
                  _NSGlyphNodeFree(v36);
                  *&v35[v34] = 0;
                }

                v34 += 8;
              }

              while (v34 != 24);
            }

            v33[3].i8[11] = 1;
            v33[3].i8[8] = a2 != v99;
            v33->i64[0] = a2 - v99;
            v33->i64[1] = a2 - v99;
            _NSGlyphNodeSetCapacity(v33, 0);
            _NSGlyphNodeSetInvariants(v33);
            _NSGlyphTreeInsertNodeAfterCurrentNode(a1, v32, v37, v38, v39, v40, v41, v42);
            goto LABEL_44;
          }

          if (a2)
          {
            v45 = v19 - (v20 + a2);
            if (v19 <= v20 + a2)
            {
              _NSGlyphTreeDeleteCurrentNode(a1, v10, v11, v12, v13, v14, v15, v16);
            }

            else
            {
              if (!v18[3].i8[11])
              {
                v46 = 0;
                v47 = &v18[1].i8[8];
                do
                {
                  v48 = *&v47[v46];
                  if (v48)
                  {
                    _NSGlyphNodeFree(v48);
                    *&v47[v46] = 0;
                  }

                  v46 += 8;
                }

                while (v46 != 24);
              }

              v18[3].i8[11] = 1;
              v18[3].i8[8] = 1;
              v18->i64[0] = v45;
              v18->i64[1] = v45;
              _NSGlyphNodeSetCapacity(v18, 0);
              _NSGlyphNodeSetInvariants(v18);
            }

            if (_NSGlyphTreeMoveToCharacterIndex(a1, a2 - 1))
            {
              v57 = *(*(a1 + 240) + 216);
              if (!v57[3].i8[11] || !v57[1].i64[1] || (v58 = v57->i64[1], v59 = v58 + v20, v58 + v20 > 0x2000))
              {
                v90 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
                v90[3].i8[11] = 1;
                v90->i64[0] = v20;
                v90->i64[1] = v20;
                v90[3].i8[8] = v20 != 0;
                _NSGlyphNodeSetGlyphs(v90, v20, v6);
                _NSGlyphTreeInsertNodeAfterCurrentNode(a1, v90, v91, v92, v93, v94, v95, v96);
                goto LABEL_44;
              }

              if (v58 - v57->i64[0] == (v58 - v57->i16[0]))
              {
                v60 = 0;
              }

              else
              {
                v60 = 2;
              }

              if (!v20)
              {
                goto LABEL_44;
              }

              v61 = v57[3].u8[9];
              v62 = v61;
              if (v61 <= 1)
              {
                v63 = v6;
                v64 = 1;
                v62 = v57[3].u8[9];
                do
                {
                  v66 = *v63++;
                  v65 = v66;
                  if (v66 == 0xFFFFFF)
                  {
                    v67 = 0;
                  }

                  else if (v65 <= 0xFF)
                  {
                    v67 = v65 > 0xEF;
                  }

                  else
                  {
                    v67 = 2;
                  }

                  if (v67 > v62)
                  {
                    v62 = v67;
                  }

                  if (v62 > 1)
                  {
                    break;
                  }
                }

                while (v64++ < v20);
              }

              v97 = v58 - v57->i64[0];
              v98 = v57->i64[1];
              v100 = *(*(a1 + 240) + 216);
              if (v59 > v57[3].i64[0])
              {
                v69 = *MEMORY[0x1E69E9AC8];
                if (v59 <= *MEMORY[0x1E69E9AC8] >> 1)
                {
                  v69 = 64;
                }

                v70 = (v59 + v69 - 1) / v69 * v69;
                if (v70 >= 0x2000)
                {
                  v70 = 0x2000;
                }

                v71 = v60;
                if (v70 <= v59)
                {
                  v72 = v58 + v20;
                }

                else
                {
                  v72 = v70;
                }

                _NSGlyphNodeSetCapacity(v57, v72);
                v60 = v71;
                v57 = v100;
                v61 = v100[3].u8[9];
              }

              if (v62 > v61)
              {
                v61 = v60;
                _NSGlyphNodeSetGlyphFormat(v57, v62);
                v60 = v61;
                v57 = v100;
                LODWORD(v61) = v100[3].u8[9];
              }

              v73 = v57[3].u8[10];
              if (v60 > v73)
              {
                _NSGlyphNodeSetDeltaFormat(v57, v60);
                v57 = v100;
                LODWORD(v73) = v100[3].u8[10];
              }

              *v57 = vaddq_s64(*v57, vdupq_n_s64(v20));
              v75 = v57[1].i64[1];
              v74 = v57[2].i64[0];
              v76 = v57[2].i64[1];
              v77 = (v75 + v98);
              v78 = (v75 + 2 * v98);
              v79 = (v75 + 4 * v98);
              v80 = v75 + 24 * v98;
              v81 = v6;
              v82 = v20;
              while (2)
              {
                v84 = *v81++;
                v83 = v84;
                if (v75)
                {
                  if (v61 > 1)
                  {
                    if (v61 == 2)
                    {
                      *v79 = 0;
                      if (v83 == 0xFFFFFF)
                      {
                        v87 = 128;
                      }

                      else
                      {
                        v87 = v83 << 8;
                      }

                      *v79 = v87 & 0xFFFFFF80 | *v79 & 0x7F;
                    }

                    else if (v61 == 3)
                    {
                      *v80 = 0;
                      *(v80 + 16) = 0;
                      if (v83 == 0xFFFFFF)
                      {
                        v86 = 128;
                      }

                      else
                      {
                        v86 = v83 << 8;
                      }

                      *v80 = v86 & 0xFFFFFF80 | *v80 & 0x7F;
                    }
                  }

                  else if (v61)
                  {
                    *v78 = 0;
                    if (v83 == 0xFFFFFF)
                    {
                      v85 = 128;
                    }

                    else
                    {
                      v85 = v83 << 8;
                    }

                    *v78 = v85 & 0xFF80 | *v78 & 0x7F;
                  }

                  else
                  {
                    if (v83 == 0xFFFFFF)
                    {
                      *v77 = 0;
                      goto LABEL_104;
                    }

                    if (v83 > 3)
                    {
                      if (v83 > 0xEF)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      LOBYTE(v83) = v83 | 0xF0;
                    }

                    *v77 = v83;
                  }
                }

LABEL_104:
                ++v77;
                v78 += 2;
                v79 += 4;
                v80 += 24;
                if (!--v82)
                {
                  if (v74)
                  {
                    v88 = v98;
                    v89 = v20;
                    do
                    {
                      switch(v73)
                      {
                        case 2:
                          *(v74 + 4 * v88) = v97;
                          break;
                        case 1:
                          *(v74 + 2 * v88) = v97;
                          break;
                        case 0:
                          *(v74 + v88) = v97;
                          break;
                      }

                      ++v88;
                      --v89;
                    }

                    while (v89);
                  }

                  if (v76)
                  {
                    bzero((v76 + v98), v20);
                    v57 = v100;
                  }

                  _NSGlyphNodeSetInvariants(v57);
                  goto LABEL_44;
                }

                continue;
              }
            }

            v43 = @"!!! _NSGlyphTreeInsertGlyphs found invalid char index";
LABEL_28:
            _NSGlyphTreeLogDebug(v43, v10, v11, v12, v13, v14, v15, v16, v97);
            goto LABEL_44;
          }

          v49 = v19 - v20;
          if (v19 > v20)
          {
            v50 = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
            v50[59] = 1;
            *v50 = v49;
            *(v50 + 1) = v49;
            v50[56] = 1;
            _NSGlyphTreeInsertNodeAfterCurrentNode(a1, v50, v51, v52, v53, v54, v55, v56);
            v18 = *(*(a1 + 240) + 216);
          }

          _NSGlyphNodeSetGlyphs(v18, v20, v6);
        }

LABEL_44:
        a2 += v20;
        a3 += v20;
        v6 += v20;
        v5 -= v20;
      }

      while (v5);
    }
  }
}

int64x2_t *_NSGlyphNodeInsertGlyph(int64x2_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = a3 - a2;
  v10 = 2;
  if (a5 <= 0xFF)
  {
    v10 = a5 > 0xEF;
  }

  if (a5 == 0xFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v9 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  if (v11 > a1[3].u8[9])
  {
    _NSGlyphNodeSetGlyphFormat(a1, v11);
  }

  if (!a1[2].i64[0] || v12 > a1[3].u8[10])
  {
    a1[3].i8[8] |= 4u;
    _NSGlyphNodeSetDeltaFormat(a1, v12);
  }

  v13 = a1->i64[1];
  v14 = v13 + 1;
  a1->i64[1] = v13 + 1;
  if ((v13 + 1) > a1[3].i64[0])
  {
    v15 = *MEMORY[0x1E69E9AC8];
    if (v14 <= *MEMORY[0x1E69E9AC8] >> 1)
    {
      v15 = 64;
    }

    v16 = (v15 + v13) / v15 * v15;
    if (v16 >= 0x2000)
    {
      v16 = 0x2000;
    }

    if (v16 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    _NSGlyphNodeSetCapacity(a1, v17);
  }

  v18 = a1[3].u8[9];
  if (v18 > 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = qword_18E8561F0[a1[3].u8[9]];
  }

  v20 = a1[3].u8[10];
  v21 = a1[1].i64[1];
  v22 = a1[2].i64[0];
  v23 = a1[2].i64[1];
  if (v21)
  {
    v24 = a1->u64[1];
    if (a3 + 1 < v24)
    {
      v36 = a1[1].i64[1];
      v37 = a1[2].i64[1];
      v38 = v9;
      memmove((v21 + v19 * (a3 + 1)), (v21 + v19 * a3), (v24 + ~a3) * v19);
      v25 = a1->i64[1];
      if (v25 - 1 > a3)
      {
        do
        {
          if (!v22)
          {
            goto LABEL_34;
          }

          if (v20 == 2)
          {
            v26 = *(v22 + 4 * v25 - 8);
            goto LABEL_37;
          }

          if (v20 == 1)
          {
            v26 = *(v22 + 2 * v25 - 4);
            goto LABEL_37;
          }

          if (v20)
          {
LABEL_34:
            v26 = 0;
          }

          else
          {
            v26 = *(v22 + v25 - 2);
          }

LABEL_37:
          v27 = v26 - a4;
          if ((v26 - a4 - 0x7FFF) >= 0xFFFFFFFFFFFF0000)
          {
            v28 = (v27 - 127) < 0xFFFFFFFFFFFFFF00;
          }

          else
          {
            v28 = 2;
          }

          if (v28 > v20)
          {
            _NSGlyphNodeSetDeltaFormat(a1, v28);
            v20 = a1[3].u8[10];
            v22 = a1[2].i64[0];
          }

          if (v22)
          {
            v29 = v27 + 1;
            switch(v20)
            {
              case 2uLL:
                *(v22 + 4 * v25 - 4) = v29;
                break;
              case 1uLL:
                *(v22 + 2 * v25 - 2) = v29;
                break;
              case 0uLL:
                *(v22 + v25 - 1) = v29;
                break;
            }
          }

          v30 = v25 - 2;
          --v25;
        }

        while (v30 > a3);
      }

      v23 = v37;
      if (v37)
      {
        memmove((v37 + a3 + 1), (v37 + a3), a1->i64[1] + ~a3);
      }

      LODWORD(v9) = v38;
      v21 = v36;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(v21 + 4 * a3) = 0;
        v34 = a5 << 8;
        if (a5 == 0xFFFFFF)
        {
          v34 = 128;
        }

        *(v21 + 4 * a3) = v34 & 0xFFFFFF80 | *(v21 + 4 * a3) & 0x7F;
      }

      else if (v18 == 3)
      {
        v32 = v21 + 24 * a3;
        *v32 = 0;
        *(v32 + 16) = 0;
        v33 = a5 << 8;
        if (a5 == 0xFFFFFF)
        {
          v33 = 128;
        }

        *v32 = v33 & 0xFFFFFF80 | *v32 & 0x7F;
      }
    }

    else if (v18)
    {
      *(v21 + 2 * a3) = 0;
      v31 = a5 << 8;
      if (a5 == 0xFFFFFF)
      {
        v31 = 128;
      }

      *(v21 + 2 * a3) = v31 & 0xFF80 | *(v21 + 2 * a3) & 0x7F;
    }

    else if (a5 == 0xFFFFFF)
    {
      *(v21 + a3) = 0;
    }

    else if (a5 > 3)
    {
      if (a5 <= 0xEF)
      {
        *(v21 + a3) = a5;
      }
    }

    else
    {
      *(v21 + a3) = a5 | 0xF0;
    }
  }

  if (!v22)
  {
    goto LABEL_75;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      *(v22 + 2 * a3) = v9;
    }

    else if (!v20)
    {
      *(v22 + a3) = v9;
      if (!v23)
      {
        goto LABEL_77;
      }

LABEL_76:
      *(v23 + a3) = 0;
      goto LABEL_77;
    }

LABEL_75:
    if (!v23)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  *(v22 + 4 * a3) = v9;
  if (v23)
  {
    goto LABEL_76;
  }

LABEL_77:
  a1[3].i8[8] |= 0x20u;

  return _NSGlyphNodeSetInvariants(a1);
}

int64x2_t *_NSGlyphNodeSetGlyphs(int64x2_t *a1, size_t a2, unsigned int *a3)
{
  _NSGlyphNodeSetCapacity(a1, 0);
  a1->i64[0] = a2;
  a1->i64[1] = a2;
  if (a2 && a3)
  {
    v6 = 0;
    v7 = 1;
    v8 = a3;
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 == 0xFFFFFF)
      {
        v11 = 0;
      }

      else if (v9 <= 0xFF)
      {
        v11 = v9 > 0xEF;
      }

      else
      {
        v11 = 2;
      }

      if (v11 > v6)
      {
        v6 = v11;
      }

      if (v6 > 1)
      {
        break;
      }
    }

    while (v7++ < a2);
    a1[3].i8[9] = v6;
    a1[3].i8[8] = 2;
    v13 = *MEMORY[0x1E69E9AC8];
    if (a2 <= *MEMORY[0x1E69E9AC8] >> 1)
    {
      v13 = 64;
    }

    v14 = (a2 + v13 - 1) / v13 * v13;
    if (v14 >= 0x2000)
    {
      v14 = 0x2000;
    }

    if (v14 <= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = v14;
    }

    _NSGlyphNodeSetCapacity(a1, v15);
    v16 = a1[1].i64[1];
    v17 = v16;
    v18 = v16;
    v19 = v16;
    while (1)
    {
      v21 = *a3++;
      v20 = v21;
      if (v16)
      {
        if (v6 == 2)
        {
          *v19 = 0;
          if (v20 == 0xFFFFFF)
          {
            v23 = 128;
          }

          else
          {
            v23 = v20 << 8;
          }

          *v19 = v23 & 0xFFFFFF80 | *v19 & 0x7F;
          goto LABEL_39;
        }

        if (v6 == 1)
        {
          *v18 = 0;
          if (v20 == 0xFFFFFF)
          {
            v22 = 128;
          }

          else
          {
            v22 = v20 << 8;
          }

          *v18 = v22 & 0xFF80 | *v18 & 0x7F;
          goto LABEL_39;
        }

        if (v20 == 0xFFFFFF)
        {
          *v17 = 0;
        }

        else
        {
          if (v20 <= 3)
          {
            LOBYTE(v20) = v20 | 0xF0;
LABEL_38:
            *v17 = v20;
            goto LABEL_39;
          }

          if (v20 <= 0xEF)
          {
            goto LABEL_38;
          }
        }
      }

LABEL_39:
      v19 += 4;
      v18 += 2;
      ++v17;
      if (!--a2)
      {
        goto LABEL_42;
      }
    }
  }

  a1[3].i8[8] = a2 != 0;
LABEL_42:

  return _NSGlyphNodeSetInvariants(a1);
}

void _NSGlyphTreeDeleteGlyphsInRange(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v32 = a2 - 1;
    v12 = a3;
    do
    {
      if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
      {
        v16 = *(*(a1 + 240) + 232);
        v17 = *(*(a1 + 240) + 216);
        v18 = v17->i64[1] + v16;
        if (v12 + a2 <= v18)
        {
          v19 = v12;
        }

        else
        {
          v19 = v18 - a2;
        }

        if (!v17[3].i8[11] || !v17[1].i64[1])
        {
          v22 = @"!!! _NSGlyphTreeDeleteGlyphsInRange missing glyphs";
LABEL_14:
          _NSGlyphTreeLogDebug(v22, v13, v14, v15, a5, a6, a7, a8, v31);
          goto LABEL_15;
        }

        v20 = a2 - v16;
        if (a2 <= v16)
        {
          v23 = v19 + a2;
          if (v19 + a2 >= v18)
          {
            v29 = v17->i64[0];
            _NSGlyphTreeDeleteCurrentNode(a1, v20, v14, v15, a5, a6, a7, a8);
            if (!v29)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v24 = v17[2].i64[0];
            v25 = *(*(a1 + 240) + 224);
            if (v24)
            {
              v26 = v17[3].u8[10];
              v27 = v23 - v16;
              if (v26 == 2)
              {
                v28 = *(v24 + 4 * v27);
              }

              else if (v26 == 1)
              {
                v28 = *(v24 + 2 * v27);
              }

              else if (v17[3].i8[10])
              {
                v28 = 0;
              }

              else
              {
                v28 = *(v24 + v27);
              }

              v30 = v23 + v25 - v16 - v28;
            }

            else
            {
              v30 = v23 - v16 + v25;
            }

            v29 = v30 - v25;
            _NSGlyphNodeDeleteGlyphs(v17, v20, v19, v30 - v25);
            if (!v29)
            {
              goto LABEL_15;
            }
          }

          if (!a2 || !_NSGlyphTreeMoveToGlyphIndex(a1, v32))
          {
            v22 = @"!!! _NSGlyphTreeDeleteGlyphsInRange invalid glyph range";
            goto LABEL_14;
          }

          **(*(a1 + 240) + 216) += v29;
          v17 = *(*(a1 + 240) + 216);
          v20 = *(*(a1 + 240) + 232);
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        _NSGlyphNodeDeleteGlyphs(v17, v20, v21, 0);
      }

      else
      {
        _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeDeleteGlyphsInRange invalid glyph range", v13, v14, v15, a5, a6, a7, a8, v31);
        v19 = v12;
      }

LABEL_15:
      v12 -= v19;
    }

    while (v12);
  }

  _NSLayoutTreeInvalidateLayoutForGlyphRange(a1, a2, a3, -a3, a5, a6, a7, a8, a9);
}

int64x2_t *_NSGlyphNodeDeleteGlyphs(int64x2_t *a1, size_t a2, size_t a3, uint64_t a4)
{
  if (a3 == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (!a1[2].i64[0] || v8 > a1[3].u8[10])
  {
    a1[3].i8[8] |= 4u;
    _NSGlyphNodeSetDeltaFormat(a1, v8);
  }

  v9 = a1->i64[1] - a3;
  a1->i64[0] -= a4;
  a1->i64[1] = v9;
  if (a3)
  {
    v10 = a1[3].u8[9];
    if (v10 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_18E8561F0[v10];
    }

    v12 = a1[3].u8[10];
    v14 = a1[1].i64[1];
    v13 = a1[2].i64[0];
    v15 = a1[2].i64[1];
    v16 = v9 > a2;
    v17 = v9 - a2;
    if (!v16)
    {
LABEL_39:
      if (v12 > 2)
      {
        v26 = 0;
      }

      else
      {
        v26 = qword_18E856210[v12];
      }

      bzero((v14 + a1->i64[1] * v11), v11 * a3);
      bzero((v13 + a1->i64[1] * v26), v26 * a3);
      if (v15)
      {
        bzero((v15 + a1->i64[1]), a3);
      }

      goto LABEL_44;
    }

    v18 = a3 + a2;
    memmove((v14 + v11 * a2), (v14 + v11 * (a3 + a2)), v11 * v17);
    v19 = a1->u64[1];
    if (v19 <= a2)
    {
LABEL_37:
      if (v15)
      {
        memmove((v15 + a2), (v15 + v18), v19 - a2);
      }

      goto LABEL_39;
    }

    v28 = v15;
    v20 = a2;
    while (1)
    {
      if (!v13)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v21 = *(v13 + 4 * a3 + 4 * v20);
        goto LABEL_23;
      }

      if (v12 == 1)
      {
        v21 = *(v13 + 2 * a3 + 2 * v20);
        goto LABEL_23;
      }

      if (v12)
      {
LABEL_20:
        v21 = 0;
      }

      else
      {
        v21 = *(v13 + a3 + v20);
      }

LABEL_23:
      v22 = v21 - a3;
      v23 = v22 + a4;
      v24 = v22 + a4 != (v22 + a4);
      if (v23 == v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2;
      }

      if (v25 > v12)
      {
        _NSGlyphNodeSetDeltaFormat(a1, v25);
        v12 = a1[3].u8[10];
        v13 = a1[2].i64[0];
      }

      if (v13)
      {
        switch(v12)
        {
          case 2uLL:
            *(v13 + 4 * v20) = v23;
            break;
          case 1uLL:
            *(v13 + 2 * v20) = v23;
            break;
          case 0uLL:
            *(v13 + v20) = v23;
            break;
        }
      }

      ++v20;
      v19 = a1->u64[1];
      if (v20 >= v19)
      {
        v15 = v28;
        v18 = a3 + a2;
        goto LABEL_37;
      }
    }
  }

LABEL_44:
  a1[3].i8[8] |= 0x20u;

  return _NSGlyphNodeSetInvariants(a1);
}

void _NSGlyphTreeReplaceGlyphAtIndex(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    v13 = *(a1 + 240);
    v14 = *(v13 + 216);
    if (*(v14 + 59) && *(v14 + 24))
    {
      if (a3 == 0xFFFFFF || (a3 <= 0xFF ? (v15 = a3 > 0xEF) : (v15 = 2), v15 <= *(v14 + 57) || (_NSGlyphNodeSetGlyphFormat(v14, v15), v13 = *(a1 + 240), v14 = *(v13 + 216), *(v14 + 59))))
      {
        v16 = *(v14 + 24);
        if (v16)
        {
          v17 = a2 - *(v13 + 232);
          v18 = *(v14 + 57);
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              *(v16 + 4 * v17) = 0;
              v22 = a3 << 8;
              if (a3 == 0xFFFFFF)
              {
                v22 = 128;
              }

              *(v16 + 4 * v17) = v22 & 0xFFFFFF80 | *(v16 + 4 * v17) & 0x7F;
            }

            else if (v18 == 3)
            {
              v20 = v16 + 24 * v17;
              *v20 = 0;
              *(v20 + 16) = 0;
              v21 = a3 << 8;
              if (a3 == 0xFFFFFF)
              {
                v21 = 128;
              }

              *v20 = v21 & 0xFFFFFF80 | *v20 & 0x7F;
            }
          }

          else if (*(v14 + 57))
          {
            if (v18 == 1)
            {
              *(v16 + 2 * v17) = 0;
              v19 = a3 << 8;
              if (a3 == 0xFFFFFF)
              {
                v19 = 128;
              }

              *(v16 + 2 * v17) = v19 & 0xFF80 | *(v16 + 2 * v17) & 0x7F;
            }
          }

          else if (a3 == 0xFFFFFF)
          {
            *(v16 + v17) = 0;
          }

          else if (a3 > 3)
          {
            if (a3 <= 0xEF)
            {
              *(v16 + v17) = a3;
            }
          }

          else
          {
            *(v16 + v17) = a3 | 0xF0;
          }
        }
      }

      v23 = *(*(*(a1 + 240) + 216) + 40);
      if (v23)
      {
        *(v23 + a2 - *(*(a1 + 240) + 232)) = 0;
      }
    }

    else
    {
      _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeReplaceGlyphAtIndex missing glyphs", v6, v7, v8, v9, v10, v11, v12, v26);
    }

    v24 = *(*(a1 + 240) + 216);
    if ((*(v24 + 56) & 0x20) == 0)
    {
      *(v24 + 56) |= 0x20u;
      v25 = *(*(a1 + 240) + 216);

      _NSGlyphNodeSetInvariants(v25);
    }
  }

  else
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeReplaceGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, a2);
  }
}

void _NSGlyphNodeSetGlyphFormat(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (a2 > 3)
  {
    v5 = 0;
    if (!v4)
    {
      return;
    }

LABEL_5:
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(a1 + 57);
      if (v7 == a2)
      {
LABEL_84:
        *(a1 + 57) = a2;
        return;
      }

      v8 = malloc_type_calloc(v4, v5, 0xEA09B4AFuLL);
      if (*(a1 + 8))
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = 0;
          if (v7 > 1)
          {
            if (v7 == 2)
            {
              v14 = *&v6[v10];
            }

            else
            {
              if (v7 != 3)
              {
                goto LABEL_27;
              }

              v14 = *&v6[v11];
            }
          }

          else
          {
            if (!v7)
            {
              v15 = v6[v12];
              v16 = v15 & 3;
              if (v15 >= 4)
              {
                v17 = v6[v12];
              }

              else
              {
                v17 = 0xFFFFFF;
              }

              v18 = v15 > 0xEF;
              goto LABEL_24;
            }

            v14 = *&v6[v9];
          }

          v16 = v14 >> 8;
          if (v14 >= 0x80)
          {
            v17 = 0xFFFFFF;
          }

          else
          {
            v17 = 0;
          }

          v18 = v14 > 0xFF;
LABEL_24:
          if (v18)
          {
            v13 = v16;
          }

          else
          {
            v13 = v17;
          }

LABEL_27:
          if (v8)
          {
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                v8[v10] = 0;
                if (v13 == 0xFFFFFF)
                {
                  v22 = 128;
                }

                else
                {
                  v22 = v13 << 8;
                }

                *&v8[v10] = v22 & 0xFFFFFF80 | *&v8[v10] & 0x7F;
              }

              else if (a2 == 3)
              {
                v20 = &v8[v11];
                *v20 = 0;
                *(v20 + 2) = 0;
                if (v13 == 0xFFFFFF)
                {
                  v21 = 128;
                }

                else
                {
                  v21 = v13 << 8;
                }

                *v20 = v21 & 0xFFFFFF80 | *&v8[v11] & 0x7F;
              }

              goto LABEL_51;
            }

            if (a2)
            {
              if (a2 == 1)
              {
                v8[v9] = 0;
                if (v13 == 0xFFFFFF)
                {
                  v19 = 128;
                }

                else
                {
                  v19 = v13 << 8;
                }

                *&v8[v9] = v19 & 0xFF80 | *&v8[v9] & 0x7F;
              }

              goto LABEL_51;
            }

            if (v13 == 0xFFFFFF)
            {
              v8[v12] = 0;
            }

            else
            {
              if (v13 <= 3)
              {
                LOBYTE(v13) = v13 | 0xF0;
LABEL_50:
                v8[v12] = v13;
                goto LABEL_51;
              }

              if (v13 <= 0xEF)
              {
                goto LABEL_50;
              }
            }
          }

LABEL_51:
          v23 = 0;
          if (v7 > 1)
          {
            if (v7 == 2)
            {
              v23 = v6[v10];
            }

            else if (v7 == 3)
            {
              v23 = v6[v11];
            }
          }

          else if (v7)
          {
            v23 = v6[v9];
          }

          else
          {
            v24 = v6[v12];
            if (v24 < 0xF0)
            {
              if (v24 > 3)
              {
                v23 = 0;
              }

              else
              {
                if (v24 <= 1)
                {
                  v26 = 1;
                }

                else
                {
                  v26 = 16;
                }

                v23 = v26 & 0xF0 | (v24 << 6) | 0xFFFFFF80;
              }
            }

            else
            {
              v23 = (16 * v24) & 0x40 | (16 * ((v24 >> 3) & 1));
            }
          }

          if (v8)
          {
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                v8[v10] = v23;
              }

              else if (a2 == 3)
              {
                v8[v11] = v23;
              }
            }

            else if (a2)
            {
              if (a2 == 1)
              {
                v8[v9] = v23;
              }
            }

            else
            {
              v25 = v8[v12];
              if (v25 < 0xF0)
              {
                if (v25 <= 3)
                {
                  v8[v12] = (v23 >> 3) & 2 | ((v23 & 0x40) != 0);
                }
              }

              else
              {
                v8[v12] = (v23 >> 1) & 8 | (v23 >> 4) & 4 | v25 & 3 | 0xF0;
              }
            }
          }

          ++v12;
          v11 += 24;
          v10 += 4;
          v9 += 2;
        }

        while (v12 < *(a1 + 8));
      }

      free(v6);
    }

    else
    {
      v8 = malloc_type_calloc(v4, v5, 0xEC1B5725uLL);
    }

    *(a1 + 24) = v8;
    goto LABEL_84;
  }

  v5 = qword_18E8561F0[a2];
  if (v4)
  {
    goto LABEL_5;
  }
}

int64x2_t *_NSGlyphNodeSetInvariants(int64x2_t *result)
{
  for (; result; result = result[1].i64[0])
  {
    if (!result[3].i8[11])
    {
      v1 = 0;
      v2 = 0uLL;
      for (i = 3; i != 6; ++i)
      {
        v4 = result->i64[i];
        if (v4)
        {
          v2 = vaddq_s64(*v4, v2);
          v1 |= v4[3].u8[8];
        }
      }

      *result = v2;
      result[3].i8[8] = v1;
    }
  }

  return result;
}

void _NSGlyphTreeSetCharacterIndexForGlyphAtIndex(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a3))
  {
    goto LABEL_72;
  }

  v12 = *(*(a1 + 240) + 216);
  if (!v12[3].i8[11])
  {
    goto LABEL_72;
  }

  v13 = v12[1].i64[1];
  if (!v13)
  {
    goto LABEL_72;
  }

  v14 = 0;
  v15 = v12[3].u8[9];
  v16 = *(*(a1 + 240) + 232);
  v17 = a3 - v16;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v18 = *(v13 + 4 * v17);
    }

    else
    {
      v18 = 0;
      if (v15 != 3)
      {
        goto LABEL_20;
      }

      v18 = *(v13 + 24 * v17);
    }

    goto LABEL_14;
  }

  if (v12[3].i8[9])
  {
    v18 = 0;
    if (v15 != 1)
    {
      goto LABEL_20;
    }

    v18 = *(v13 + 2 * v17);
LABEL_14:
    if (v18 >= 0x80)
    {
      v20 = 0xFFFFFF;
    }

    else
    {
      v20 = 0;
    }

    if (v18 >= 0x100)
    {
      v14 = v18 >> 8;
    }

    else
    {
      v14 = v20;
    }

    goto LABEL_20;
  }

  v19 = *(v13 + v17);
  if (v19 <= 0xEF)
  {
    if (v19 > 3)
    {
      v18 = 0;
      v14 = v19;
    }

    else
    {
      if (v19 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 16;
      }

      v18 = v33 & 0xFFFFFFF0 | (v19 << 6) | 0xFFFFFF80;
      v14 = 0xFFFFFF;
    }
  }

  else
  {
    v14 = v19 & 3;
    v18 = (16 * v19) & 0x40 | (16 * ((v19 >> 3) & 1));
  }

LABEL_20:
  v21 = v12[2].i64[1];
  if (v21)
  {
    v22 = *(v21 + v17);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(*(a1 + 240) + 224);
  if (v23 > a2 && a3 == v16 && v16 != 0)
  {
    v30 = v12[2].i64[0];
    if (v30)
    {
      v31 = v12[3].u8[10];
      if (v31 == 2)
      {
        v32 = *(v30 + 4);
      }

      else if (v31 == 1)
      {
        v32 = *(v30 + 2);
      }

      else if (v12[3].i8[10])
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v30 + 1);
      }

      v34 = v23 + 1 - v32;
    }

    else
    {
      v34 = v23 + 1;
    }

    v35 = v34 - v23;
    _NSGlyphNodeDeleteGlyphs(v12, v17, 1uLL, v34 - v23);
    if (_NSGlyphTreeMoveToGlyphIndex(a1, a3 - 1))
    {
      v43 = *(*(a1 + 240) + 216);
      if (*(v43 + 59))
      {
        if (*(v43 + 24))
        {
          v44 = *(*(a1 + 240) + 224) + *v43 - 1;
          goto LABEL_68;
        }
      }
    }

LABEL_71:
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetCharacterIndexForGlyphAtIndex invalid glyph index %lu", v36, v37, v38, v39, v40, v41, v42, a3);
    goto LABEL_72;
  }

  v26 = v12->i64[0] + v23;
  if (v26 > a2 || a3 + 1 != v12->i64[1] + v16 || a3 + 1 >= *(*(*(a1 + 240) + 208) + 8))
  {
    goto LABEL_72;
  }

  v27 = v12[2].i64[0];
  if (v27)
  {
    v28 = v12[3].u8[10];
    if (v28 == 2)
    {
      v29 = *(v27 + 4 * v17);
    }

    else if (v28 == 1)
    {
      v29 = *(v27 + 2 * v17);
    }

    else if (v12[3].i8[10])
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v27 + v17);
    }

    v45 = v23 + a3 - v16 - v29;
  }

  else
  {
    v45 = v23 + v17;
  }

  v35 = v26 - v45;
  _NSGlyphNodeDeleteGlyphs(v12, v17, 1uLL, v26 - v45);
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a3))
  {
    goto LABEL_71;
  }

  v43 = *(*(a1 + 240) + 216);
  if (!*(v43 + 59) || !*(v43 + 24))
  {
    goto LABEL_71;
  }

  v44 = *(*(a1 + 240) + 224);
LABEL_68:
  if (v44 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_72;
  }

  *v43 += v35;
  if (v14 == 0xFFFFFF)
  {
    v46 = 0;
  }

  else if (v14 <= 0xFF)
  {
    v46 = v14 > 0xEF;
  }

  else
  {
    v46 = 2;
  }

  if (v18)
  {
    v79 = v46 == 0;
  }

  else
  {
    v79 = 0;
  }

  v80 = *(a1 + 240);
  if (v79)
  {
    v81 = 1;
  }

  else
  {
    v81 = v46;
  }

  v82 = v80[27];
  if (v81 > v82[3].u8[9])
  {
    v83 = v44;
    _NSGlyphNodeSetGlyphFormat(v80[27], v81);
    v44 = v83;
    v80 = *(a1 + 240);
    v82 = v80[27];
  }

  if (v82[2].i64[1])
  {
    v84 = 1;
  }

  else
  {
    v84 = v22 == 0;
  }

  if (!v84)
  {
    v82[3].i8[8] |= 8u;
    v80 = *(a1 + 240);
    v82 = v80[27];
    v85 = v82[3].u64[0];
    if (v85)
    {
      if (!v82[2].i64[1])
      {
        v96 = v44;
        v86 = malloc_type_calloc(v85, 1uLL, 0x49F3590AuLL);
        v44 = v96;
        v82[2].i64[1] = v86;
        v80 = *(a1 + 240);
        v82 = v80[27];
      }
    }
  }

  _NSGlyphNodeInsertGlyph(v82, v44 - v80[28], a3 - v80[29], v35, v14);
  v87 = *(*(a1 + 240) + 216);
  if (!*(v87 + 59))
  {
    goto LABEL_161;
  }

  v88 = *(v87 + 24);
  if (!v88)
  {
    goto LABEL_161;
  }

  v89 = a3 - *(*(a1 + 240) + 232);
  v90 = *(v87 + 57);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      v91 = 4 * v89;
    }

    else
    {
      if (v90 != 3)
      {
        goto LABEL_161;
      }

      v91 = 24 * v89;
    }

    goto LABEL_160;
  }

  if (v90)
  {
    v91 = 2 * v89;
LABEL_160:
    *(v88 + v91) = v18;
    goto LABEL_161;
  }

  v92 = *(v88 + v89);
  if (v92 < 0xF0)
  {
    if (v92 > 3)
    {
      goto LABEL_161;
    }

    v93 = (v18 >> 3) & 2 | (v18 >> 6) & 1;
  }

  else
  {
    v93 = (v18 >> 1) & 8 | (v18 >> 4) & 4 | v92 & 3 | 0xF0;
  }

  *(v88 + v89) = v93;
LABEL_161:
  v94 = *(*(*(a1 + 240) + 216) + 40);
  if (v94)
  {
    *(v94 + a3 - *(*(a1 + 240) + 232)) = v22;
  }

LABEL_72:
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a3))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetCharacterIndexForGlyphAtIndex invalid glyph index %lu", v47, v48, v49, v50, v51, v52, v53, a3);
    return;
  }

  v54 = *(*(a1 + 240) + 224);
  v55 = v54 - a2;
  if (v54 > a2 || (v56 = *(*(a1 + 240) + 216), *v56 + v54 <= a2))
  {
    v63 = @"!!! _NSGlyphTreeSetCharacterIndexForGlyphAtIndex invalid char index 1";
LABEL_85:

    _NSGlyphTreeLogDebug(v63, v47, v48, v49, v50, v51, v52, v53, a9);
    return;
  }

  v57 = *(*(a1 + 240) + 232);
  v58 = a3 - v57;
  if (a3 > v57)
  {
    if (*(v56 + 59) && (v59 = *(v56 + 32)) != 0)
    {
      v60 = *(v56 + 58);
      v61 = a3 - 1 - v57;
      if (v60 == 2)
      {
        v62 = *(v59 + 4 * v61);
      }

      else if (v60 == 1)
      {
        v62 = *(v59 + 2 * v61);
      }

      else
      {
        v62 = *(v56 + 58) ? 0 : *(v59 + v61);
      }

      v64 = v54 + a3 - 1 - v57 - v62;
    }

    else
    {
      v64 = v54 + a3 + ~v57;
    }

    if (v64 > a2)
    {
      v63 = @"!!! _NSGlyphTreeSetCharacterIndexForGlyphAtIndex invalid char index 2";
      goto LABEL_85;
    }
  }

  v65 = a3 + 1;
  if (a3 + 1 < *(v56 + 8) + v57)
  {
    if (*(v56 + 59) && (v66 = *(v56 + 32)) != 0)
    {
      v47 = *(v56 + 58);
      v67 = v65 - v57;
      if (v47 == 2)
      {
        v68 = *(v66 + 4 * v67);
      }

      else if (v47 == 1)
      {
        v68 = *(v66 + 2 * v67);
      }

      else
      {
        v68 = *(v56 + 58) ? 0 : *(v66 + v67);
      }

      v69 = v54 + v65 - v57 - v68;
    }

    else
    {
      v69 = v54 + v65 - v57;
    }

    if (v69 < a2)
    {
      v63 = @"!!! _NSGlyphTreeSetCharacterIndexForGlyphAtIndex invalid char index 3";
      goto LABEL_85;
    }
  }

  v70 = v58 + v55;
  v71 = v58 + v55 != (v58 + v55);
  if (v70 == v70)
  {
    v72 = v71;
  }

  else
  {
    v72 = 2;
  }

  if (*(v56 + 59) && *(v56 + 24))
  {
    if (*(v56 + 32))
    {
      if (v72 > *(v56 + 58))
      {
        _NSGlyphNodeSetDeltaFormat(v56, v72);
      }
    }

    else
    {
      *(v56 + 56) |= 4u;
      _NSGlyphNodeSetDeltaFormat(*(*(a1 + 240) + 216), v72);
      _NSGlyphNodeSetInvariants(*(*(a1 + 240) + 216));
    }

    v75 = *(*(a1 + 240) + 216);
    if (*(v75 + 59))
    {
      v76 = *(v75 + 32);
      if (v76)
      {
        v77 = a3 - *(*(a1 + 240) + 232);
        v78 = *(v75 + 58);
        switch(v78)
        {
          case 2:
            *(v76 + 4 * v77) = v70;
            break;
          case 1:
            *(v76 + 2 * v77) = v70;
            break;
          case 0:
            *(v76 + v77) = v70;
            break;
        }
      }
    }
  }

  else
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetCharacterIndexForGlyphAtIndex missing glyphs", v72, v48, v49, v50, v51, v52, v53, v95);
  }

  v73 = *(*(a1 + 240) + 216);
  if ((*(v73 + 56) & 0x20) == 0)
  {
    *(v73 + 56) |= 0x20u;
    v74 = *(*(a1 + 240) + 216);

    _NSGlyphNodeSetInvariants(v74);
  }
}

void _NSGlyphNodeSetDeltaFormat(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 48);
  if (a2 > 2)
  {
    v5 = 0;
    if (!v4)
    {
      return;
    }

LABEL_5:
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 58);
      if (v7 == a2)
      {
LABEL_29:
        *(a1 + 58) = a2;
        return;
      }

      v8 = malloc_type_calloc(v4, v5, 0x4054E57AuLL);
      v9 = v8;
      v10 = *(a1 + 8);
      if (v10)
      {
        for (i = 0; i < v10; ++i)
        {
          if (v7 == 2)
          {
            v12 = *&v6[2 * i];
            if (v8)
            {
              goto LABEL_19;
            }
          }

          else if (v7 == 1)
          {
            v12 = v6[i];
            if (v8)
            {
              goto LABEL_19;
            }
          }

          else if (v7)
          {
            v12 = 0;
            if (v8)
            {
LABEL_19:
              switch(a2)
              {
                case 2uLL:
                  *(v8 + i) = v12;
                  break;
                case 1uLL:
                  *(v8 + i) = v12;
                  break;
                case 0uLL:
                  *(v8 + i) = v12;
                  v10 = *(a1 + 8);
                  break;
              }
            }
          }

          else
          {
            v12 = *(v6 + i);
            if (v8)
            {
              goto LABEL_19;
            }
          }
        }
      }

      free(v6);
    }

    else
    {
      v9 = malloc_type_calloc(v4, v5, 0x6A17F5A3uLL);
    }

    *(a1 + 32) = v9;
    goto LABEL_29;
  }

  v5 = qword_18E856210[a2];
  if (v4)
  {
    goto LABEL_5;
  }
}

void _NSGlyphTreeSetIntAttributeForGlyphAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetIntAttributeForGlyphAtIndex invalid glyph index %lu", v13, v14, v15, v16, v17, v18, v19, a2);
    return;
  }

  v20 = *(a1 + 240);
  v21 = *(v20 + 216);
  if (!*(v21 + 59) || (v22 = *(v21 + 24)) == 0)
  {
    if (a4)
    {

      _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetIntAttributeForGlyphAtIndex missing glyphs", v13, v14, v15, v16, v17, v18, v19, a9);
    }

    return;
  }

  if (a3 == 2)
  {
    if (a4 && !*(v21 + 40))
    {
      *(v21 + 56) |= 8u;
      v23 = *(*(a1 + 240) + 216);
      v24 = v23[3].u64[0];
      if (v24 && !v23[2].i64[1])
      {
        v23[2].i64[1] = malloc_type_calloc(v24, 1uLL, 0x49F3590AuLL);
        v23 = *(*(a1 + 240) + 216);
      }

      _NSGlyphNodeSetInvariants(v23);
      v20 = *(a1 + 240);
      v21 = *(v20 + 216);
    }

    v25 = *(v21 + 40);
    if (v25)
    {
      *(v25 + a2 - *(v20 + 232)) = a4;
    }

    return;
  }

  if (a4 && !*(v21 + 57))
  {
    if (a3 == 1 && *(v22 + a2 - *(v20 + 232)) - 240 < 0xFFFFFF14)
    {
      goto LABEL_34;
    }

    _NSGlyphNodeSetGlyphFormat(v21, 1);
  }

  if (a3 != 5)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        v26 = *(*(a1 + 240) + 216);
        if (*(v26 + 59))
        {
          v27 = *(v26 + 24);
          if (v27)
          {
            v28 = a2 - *(*(a1 + 240) + 232);
            v29 = *(v26 + 57);
            switch(v29)
            {
              case 3:
                *(v27 + 24 * v28) = *(v27 + 24 * v28) & 0xFFFFFFF7 | (8 * (a4 != 0));
                return;
              case 2:
                *(v27 + 4 * v28) = *(v27 + 4 * v28) & 0xFFFFFFF7 | (8 * (a4 != 0));
                return;
              case 1:
                v30 = *(v27 + 2 * v28) & 0xFFF7 | (8 * (a4 != 0));
                goto LABEL_46;
            }
          }
        }
      }

      return;
    }

    v20 = *(a1 + 240);
    v21 = *(v20 + 216);
    if (!*(v21 + 59))
    {
      return;
    }

LABEL_34:
    v31 = *(v21 + 24);
    if (!v31)
    {
      return;
    }

    v32 = a2 - *(v20 + 232);
    v33 = *(v21 + 57);
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        *(v31 + 4 * v32) = *(v31 + 4 * v32) & 0xFFFFFFEF | (16 * (a4 != 0));
      }

      else if (v33 == 3)
      {
        *(v31 + 24 * v32) = *(v31 + 24 * v32) & 0xFFFFFFEF | (16 * (a4 != 0));
      }
    }

    else
    {
      if (!*(v21 + 57))
      {
        v36 = *(v31 + v32);
        if (v36 < 0xF0)
        {
          if (v36 > 3)
          {
            return;
          }

          v37 = v36 & 1 | (2 * (a4 != 0));
        }

        else
        {
          v37 = v36 & 0xF7 | (8 * (a4 != 0));
        }

        *(v31 + v32) = v37;
        return;
      }

      if (v33 == 1)
      {
        *(v31 + 2 * v32) = *(v31 + 2 * v32) & 0xFFEF | (16 * (a4 != 0));
      }
    }

    return;
  }

  v34 = *(*(a1 + 240) + 216);
  if (!*(v34 + 59))
  {
    return;
  }

  v27 = *(v34 + 24);
  if (!v27)
  {
    return;
  }

  v28 = a2 - *(*(a1 + 240) + 232);
  v35 = *(v34 + 57);
  switch(v35)
  {
    case 3:
      v39 = 24 * v28;
      v40 = *(v27 + v39) & 0xFFFFFFFE;
      if (a4)
      {
        ++v40;
      }

      *(v27 + v39) = v40;
      break;
    case 2:
      v38 = *(v27 + 4 * v28) & 0xFFFFFFFE;
      if (a4)
      {
        ++v38;
      }

      *(v27 + 4 * v28) = v38;
      break;
    case 1:
      v30 = *(v27 + 2 * v28) & 0xFFFE;
      if (a4)
      {
        ++v30;
      }

LABEL_46:
      *(v27 + 2 * v28) = v30;
      return;
    default:
      return;
  }
}

void _NSGlyphTreeSetNotShownAttributeForGlyphAtIndex(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetNotShownAttributeForGlyphAtIndex invalid glyph index %lu", v12, v13, v14, v15, v16, v17, v18, a2);
    return;
  }

  v19 = *(a1 + 240);
  v20 = *(v19 + 216);
  if (*(v20 + 59) && (v21 = *(v20 + 24)) != 0)
  {
    if (!a3 || *(v20 + 57) || *(v21 + a2 - *(v19 + 232)) - 240 < 0xFFFFFF14 || (_NSGlyphNodeSetGlyphFormat(v20, 1), v19 = *(a1 + 240), v20 = *(v19 + 216), *(v20 + 59)))
    {
      v22 = *(v20 + 24);
      if (v22)
      {
        v23 = a2 - *(v19 + 232);
        v24 = *(v20 + 57);
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            if (a3)
            {
              v32 = 64;
            }

            else
            {
              v32 = 0;
            }

            *(v22 + 4 * v23) = *(v22 + 4 * v23) & 0xFFFFFFBF | v32;
          }

          else if (v24 == 3)
          {
            v26 = 24 * v23;
            if (a3)
            {
              v27 = 64;
            }

            else
            {
              v27 = 0;
            }

            *(v22 + v26) = *(v22 + v26) & 0xFFFFFFBF | v27;
          }
        }

        else if (*(v20 + 57))
        {
          if (v24 == 1)
          {
            if (a3)
            {
              v25 = 64;
            }

            else
            {
              v25 = 0;
            }

            *(v22 + 2 * v23) = *(v22 + 2 * v23) & 0xFFBF | v25;
          }
        }

        else
        {
          v28 = *(v22 + v23);
          if (v28 < 0xF0)
          {
            if (v28 > 3)
            {
              return;
            }

            v31 = v28 & 2 | a3;
          }

          else
          {
            v29 = v28 & 0xFB;
            if (a3)
            {
              v30 = 4;
            }

            else
            {
              v30 = 0;
            }

            v31 = v29 | v30;
          }

          *(v22 + v23) = v31;
        }
      }
    }
  }

  else if (a3)
  {

    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetNotShownAttributeForGlyphAtIndex missing glyphs", v12, v13, v14, v15, v16, v17, v18, a9);
  }
}

void _NSGlyphTreeSetDrawsOutsideLineFragmentForGlyphAtIndex(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    v19 = *(a1 + 240);
    v20 = *(v19 + 216);
    if (*(v20 + 59) && *(v20 + 24))
    {
      if (!a3 || *(v20 + 57) || (_NSGlyphNodeSetGlyphFormat(v20, 1), v19 = *(a1 + 240), v20 = *(v19 + 216), *(v20 + 59)))
      {
        v21 = *(v20 + 24);
        if (v21)
        {
          v22 = a2 - *(v19 + 232);
          v23 = *(v20 + 57);
          switch(v23)
          {
            case 3:
              v26 = 24 * v22;
              if (a3)
              {
                v27 = 32;
              }

              else
              {
                v27 = 0;
              }

              *(v21 + v26) = *(v21 + v26) & 0xFFFFFFDF | v27;
              break;
            case 2:
              if (a3)
              {
                v25 = 32;
              }

              else
              {
                v25 = 0;
              }

              *(v21 + 4 * v22) = *(v21 + 4 * v22) & 0xFFFFFFDF | v25;
              break;
            case 1:
              if (a3)
              {
                v24 = 32;
              }

              else
              {
                v24 = 0;
              }

              *(v21 + 2 * v22) = *(v21 + 2 * v22) & 0xFFDF | v24;
              break;
          }
        }
      }
    }

    else if (a3)
    {

      _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetDrawsOutsideLineFragmentForGlyphAtIndex missing glyphs", v12, v13, v14, v15, v16, v17, v18, a9);
    }
  }

  else
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetDrawsOutsideLineFragmentForGlyphAtIndex invalid glyph index %lu", v12, v13, v14, v15, v16, v17, v18, a2);
  }
}

void _NSGlyphTreeSetEllipsisAttributeForGlyphAtIndex(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    v19 = *(a1 + 240);
    v20 = *(v19 + 216);
    if (*(v20 + 59) && *(v20 + 24))
    {
      if (!a3 || *(v20 + 57) || (_NSGlyphNodeSetGlyphFormat(v20, 1), v19 = *(a1 + 240), v20 = *(v19 + 216), *(v20 + 59)))
      {
        v21 = *(v20 + 24);
        if (v21)
        {
          v22 = a2 - *(v19 + 232);
          v23 = *(v20 + 57);
          switch(v23)
          {
            case 3:
              v26 = 24 * v22;
              if (a3)
              {
                v27 = 2;
              }

              else
              {
                v27 = 0;
              }

              *(v21 + v26) = *(v21 + v26) & 0xFFFFFFFD | v27;
              break;
            case 2:
              if (a3)
              {
                v25 = 2;
              }

              else
              {
                v25 = 0;
              }

              *(v21 + 4 * v22) = *(v21 + 4 * v22) & 0xFFFFFFFD | v25;
              break;
            case 1:
              if (a3)
              {
                v24 = 2;
              }

              else
              {
                v24 = 0;
              }

              *(v21 + 2 * v22) = *(v21 + 2 * v22) & 0xFFFD | v24;
              break;
          }
        }
      }
    }

    else if (a3)
    {

      _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetEllipsisAttributeForGlyphAtIndex missing glyphs", v12, v13, v14, v15, v16, v17, v18, a9);
    }
  }

  else
  {
    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeSetEllipsisAttributeForGlyphAtIndex invalid glyph index %lu", v12, v13, v14, v15, v16, v17, v18, a2);
  }
}

void _NSGlyphTreeResetLayoutAttributesForGlyphsInRange(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v10 = a2;
    while (_NSGlyphTreeMoveToGlyphIndex(a1, v10))
    {
      v19 = *(*(a1 + 240) + 232);
      v20 = *(*(a1 + 240) + 216);
      v21 = *(v20 + 8) + v19;
      if (v21 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = *(v20 + 8) + v19;
      }

      if (*(v20 + 59))
      {
        if (*(v20 + 24) && v10 < v22)
        {
          v24 = 24 * v10;
          do
          {
            v25 = *(*(a1 + 240) + 216);
            if (!*(v25 + 59))
            {
              goto LABEL_27;
            }

            v26 = *(v25 + 24);
            if (!v26)
            {
              goto LABEL_27;
            }

            v27 = *(*(a1 + 240) + 232);
            v28 = *(v25 + 57);
            if (v28 > 1)
            {
              if (v28 == 2)
              {
                *(v26 - 4 * v27 + 4 * v10) &= 0xFFFFFF9D;
              }

              else if (v28 == 3)
              {
                *(v26 - 24 * v27 + v24) &= 0xFFFFFF9D;
              }

              goto LABEL_27;
            }

            if (v28)
            {
              *(v26 - 2 * v27 + 2 * v10) &= 0xFF9Du;
            }

            else
            {
              v29 = v26 - v27;
              v30 = *(v29 + v10);
              if (v30 >= 0xF0)
              {
                v31 = v30 & 0xFB;
LABEL_26:
                *(v29 + v10) = v31;
                goto LABEL_27;
              }

              if (v30 <= 3)
              {
                v31 = v30 & 2;
                goto LABEL_26;
              }
            }

LABEL_27:
            ++v10;
            v24 += 24;
          }

          while (v22 != v10);
        }
      }

      v10 = v22;
      if (v21 >= v9)
      {
        return;
      }
    }

    _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeResetNotShownAttributeAndDrawsOutsideLineFragmentForGlyphsInRange invalid glyph range", v12, v13, v14, v15, v16, v17, v18, a9);
  }
}

void _NSGlyphNodeSetCapacity(uint64_t a1, size_t count)
{
  if (count)
  {
    v4 = *(a1 + 57);
    if (v4 > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_18E8561F0[v4];
    }

    v9 = *(a1 + 58);
    if (v9 > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_18E856210[v9];
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = malloc_type_realloc(v11, v5 * count, 0x4752F66AuLL);
      *(a1 + 24) = v12;
      v13 = *(a1 + 8);
      if (count > v13)
      {
        bzero(&v12[v13 * v5], (count - v13) * v5);
      }
    }

    else
    {
      *(a1 + 24) = malloc_type_calloc(count, v5, 0x4186F7FFuLL);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = malloc_type_realloc(v14, v10 * count, 0xBB44B3D0uLL);
      *(a1 + 32) = v15;
      v16 = *(a1 + 8);
      if (count > v16)
      {
        bzero(&v15[v16 * v10], (count - v16) * v10);
      }
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = malloc_type_realloc(v17, count, 0xE4E30CDFuLL);
      *(a1 + 40) = v18;
      v19 = *(a1 + 8);
      if (count > v19)
      {
        bzero(&v18[v19], count - v19);
      }
    }
  }

  else
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      free(v6);
      *(a1 + 24) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      free(v7);
      *(a1 + 32) = 0;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      free(v8);
      *(a1 + 40) = 0;
    }

    *(a1 + 57) = 0;
  }

  *(a1 + 48) = count;
}

uint64_t charIsNormalWhitespace(uint64_t a1)
{
  if (charIsNormalWhitespace_once != -1)
  {
    charIsNormalWhitespace_cold_1();
  }

  v2 = charIsNormalWhitespace_set;

  return [v2 characterIsMember:a1];
}

void sub_18E7803BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E78062C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __charIsNormalWhitespace_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInRange:{160, 1}];
  [v3 removeCharactersInRange:{9, 1}];
  v1 = [v3 copy];
  v2 = charIsNormalWhitespace_set;
  charIsNormalWhitespace_set = v1;
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = *(v0 + 144);

  return [v2 baseWritingDirection];
}

_NSRange -[NSLayoutManager _blockRangeForCharRange:](NSLayoutManager *self, SEL a2, _NSRange a3)
{
  length = a3.length;
  location = a3.location;
  v6 = [(NSTextStorage *)self->_textStorage length];
  if (location >= v6)
  {
    v13 = length;
    v14 = location;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [-[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage attribute:@"NSParagraphStyle" atIndex:location effectiveRange:{0), "textBlocks"}];
  if (!v8 || (v9 = v8, ![v8 count]))
  {
    v15 = 0;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
    v13 = length;
    v14 = location;
    goto LABEL_12;
  }

  v10 = [v9 objectAtIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = -[NSAttributedString rangeOfTextTable:atIndex:](self->_textStorage, "rangeOfTextTable:atIndex:", [v10 table], location);
  }

  else
  {
    v11 = [(NSAttributedString *)self->_textStorage rangeOfTextBlock:v10 atIndex:location];
  }

  v16 = v11;
  v15 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v33.location = location;
  v33.length = length;
  v36.location = v16;
  v36.length = v15;
  v17 = NSUnionRange(v33, v36);
  v14 = v17.location;
  v13 = v17.length;
LABEL_12:
  if (length >= 2)
  {
    v18 = location + length;
    if (location + length < v7)
    {
      v19 = v18 - 1;
      v20 = v18 - 1 >= v16;
      v21 = v18 - 1 - v16;
      if (!v20 || v21 >= v15)
      {
        v22 = [-[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage attribute:@"NSParagraphStyle" atIndex:v19 effectiveRange:{0), "textBlocks"}];
        if (v22)
        {
          v23 = v22;
          if ([v22 count])
          {
            v24 = [v23 objectAtIndex:0];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            textStorage = self->_textStorage;
            if (isKindOfClass)
            {
              v27 = -[NSAttributedString rangeOfTextTable:atIndex:](textStorage, "rangeOfTextTable:atIndex:", [v24 table], v19);
            }

            else
            {
              v27 = [(NSAttributedString *)textStorage rangeOfTextBlock:v24 atIndex:v19];
            }

            v29.location = v27;
            v29.length = v28;
            if (v28)
            {
              v34.location = v14;
              v34.length = v13;
              v30 = NSUnionRange(v34, v29);
              v14 = v30.location;
              v13 = v30.length;
            }
          }
        }
      }
    }
  }

LABEL_24:
  v31 = v14;
  v32 = v13;
  result.length = v32;
  result.location = v31;
  return result;
}

_NSRange -[NSLayoutManager _blockRangeForGlyphRange:](NSLayoutManager *self, SEL a2, _NSRange a3)
{
  v4 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:a3.location, a3.length];
  v7 = [(NSLayoutManager *)self _blockRangeForCharRange:v4, v5];

  v8 = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:v7, v6];
  result.length = v9;
  result.location = v8;
  return result;
}

_NSRange -[NSLayoutManager _blockRowRangeForCharRange:completeRows:](NSLayoutManager *self, SEL a2, _NSRange a3, BOOL *a4)
{
  length = a3.length;
  location = a3.location;
  v8 = [(NSTextStorage *)self->_textStorage length];
  if (location >= v8)
  {
    v16 = 1;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [-[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage "attribute:"textBlocks" atIndex:? effectiveRange:?")];
  if (v10 && (v11 = v10, [v10 count]))
  {
    v12 = [v11 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0;
      v13 = -[NSAttributedString _rangeOfTextTableRow:atIndex:completeRow:](self->_textStorage, "_rangeOfTextTableRow:atIndex:completeRow:", [v12 table], location, &v35);
      v15 = v14;
      v16 = v35;
      if (!v14)
      {
        goto LABEL_9;
      }

LABEL_11:
      v36.location = location;
      v36.length = length;
      v38.location = v13;
      v38.length = v15;
      v18 = NSUnionRange(v36, v38);
      v17 = v18.length;
      goto LABEL_12;
    }

    v13 = [(NSAttributedString *)self->_textStorage rangeOfTextBlock:v12 atIndex:location];
    v15 = v19;
    v16 = 1;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 1;
  }

LABEL_9:
  v17 = length;
  v18.location = location;
LABEL_12:
  if (length < 2 || (v20 = location + length, location + length >= v9) || (v21 = v20 - 1, v22 = v20 - 1 >= v13, v23 = v20 - 1 - v13, v22) && v23 < v15)
  {
LABEL_17:
    length = v17;
    location = v18.location;
    goto LABEL_18;
  }

  v26 = v18.location;
  v27 = [-[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage attribute:@"NSParagraphStyle" atIndex:v21 effectiveRange:{0), "textBlocks"}];
  if (v27 && (v28 = v27, [v27 count]))
  {
    v29 = [v28 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0;
      v31.location = -[NSAttributedString _rangeOfTextTableRow:atIndex:completeRow:](self->_textStorage, "_rangeOfTextTableRow:atIndex:completeRow:", [v29 table], v21, &v34);
      v31.length = v30;
      v16 &= v34;
    }

    else
    {
      v31.location = [(NSAttributedString *)self->_textStorage rangeOfTextBlock:v29 atIndex:v21];
      v31.length = v32;
    }

    v18.location = v26;
    if (!v31.length)
    {
      goto LABEL_17;
    }

    v18.length = v17;
    v33 = NSUnionRange(v18, v31);
    location = v33.location;
    length = v33.length;
  }

  else
  {
    length = v17;
    location = v26;
  }

LABEL_18:
  if (a4)
  {
    *a4 = v16 & 1;
  }

  v24 = location;
  v25 = length;
  result.length = v25;
  result.location = v24;
  return result;
}

_NSRange -[NSLayoutManager _blockRowRangeForCharRange:](NSLayoutManager *self, SEL a2, _NSRange a3)
{
  v3 = [(NSLayoutManager *)self _blockRowRangeForCharRange:a3.location completeRows:a3.length, 0];
  result.length = v4;
  result.location = v3;
  return result;
}

_NSRange -[NSLayoutManager _blockRowRangeForGlyphRange:completeRows:](NSLayoutManager *self, SEL a2, _NSRange a3, BOOL *a4)
{
  v6 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:a3.location, a3.length];
  v9 = [(NSLayoutManager *)self _blockRowRangeForCharRange:v6 completeRows:v7, a4];

  v10 = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:v9, v8];
  result.length = v11;
  result.location = v10;
  return result;
}

_NSRange -[NSLayoutManager _blockRowRangeForGlyphRange:](NSLayoutManager *self, SEL a2, _NSRange a3)
{
  v4 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:a3.location, a3.length];
  v7 = [(NSLayoutManager *)self _blockRowRangeForCharRange:v4 completeRows:v5, 0];

  v8 = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:v7, v6];
  result.length = v9;
  result.location = v8;
  return result;
}

void _NSFastFillAllGlyphHolesForGlyphRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v6 = *(a1 + 240);
  HIDWORD(v23) = [objc_msgSend(a1 "textStorage")];
  if ((v23 & 0x100000000) == 0 && !*(v6 + 56))
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
    v8 = 0;
    atomic_compare_exchange_strong((v6 + 56), &v8, v7);
    if (v8)
    {
    }
  }

  [*(v6 + 56) lock];
  v9 = [*(a1 + 8) string];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  cf = 0;
  LODWORD(v23) = [MEMORY[0x1E696AF00] isMainThread];
  if (v23)
  {
    cf = __NSMainThreadScratchString;
  }

  if (!v9)
  {
    v9 = &stru_1F01AD578;
  }

  *&v30 = v9;
  *(&v31 + 1) = 0;
  *&v32 = [(__CFString *)v9 length];
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  *(&v30 + 1) = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  *(&v32 + 1) = 0;
  v33 = 0;
  *&v31 = CStringPtr;
  if (*(*(*(a1 + 240) + 208) + 56))
  {
    v12 = 0;
    do
    {
      v26 = 0;
      v27 = 0;
      v13 = [(__CFString *)v9 length];
      v14 = *(a1 + 64);
      v15 = 2048;
      if ((v14 & 0x8000000) != 0)
      {
        v16 = 1024;
      }

      else
      {
        v15 = 0x2000;
        v16 = 4096;
      }

      if ((v14 & 0x40000000) != 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = 0;
      }

      if (a3 <= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = a3;
      }

      _NSGlyphTreeGetFirstHoleAfterGlyphIndex(a1, v17, v18, &v27, &v26, &v34);
      v19 = v34;
      if (v16 + v34 < v17)
      {
        v34 = v17 - v16;
        v20 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(a1, v17 - v16);
        v21 = __NSGetClusterHeadWithLimit(v9, v20, v29, &cf, v35);
        if (v21 == v20)
        {
          v19 = v34;
        }

        else
        {
          v22 = v21;
          v19 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(a1, v21);
          v34 = v19;
          v20 = v22;
        }

        v26 += v27 - v20;
        v27 = v20;
      }

      if (a2 + a3 <= v19 || v27 >= v13 || !v26)
      {
        break;
      }

      v12 = (v12 & 1) != 0 ? 1 : [*(a1 + 8) _lockForReading];
      [a1 _fillGlyphHoleForCharacterRange:? startGlyphIndex:? desiredNumberOfCharacters:?];
    }

    while ((*(*(*(a1 + 240) + 208) + 56) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  if (!cf)
  {
LABEL_38:
    if ((v12 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v24)
  {
    __NSMainThreadScratchString = cf;
    goto LABEL_38;
  }

  CFRelease(cf);
  if (v12)
  {
LABEL_39:
    [*(a1 + 8) _unlock];
  }

LABEL_40:
  if ((v25 & 1) == 0)
  {
    [*(*(a1 + 240) + 56) unlock];
  }
}

uint64_t _NSRemoveDirtyLayoutManager(uint64_t a1)
{
  result = _dirtyLMs;
  if (_dirtyLMs)
  {
    result = [_dirtyLMs count];
    if (result)
    {
      v3 = result;
      v4 = 0;
      for (i = 0; i != v3; ++i)
      {
        result = [_dirtyLMs pointerAtIndex:v4 + i];
        if (result == a1 || result == 0)
        {
          v7 = result;
          result = [_dirtyLMs removePointerAtIndex:v4 + i];
          if (v7)
          {
            break;
          }

          --v4;
        }
      }
    }
  }

  *(a1 + 64) &= ~0x100u;
  return result;
}

void _NSFastFillAllGlyphHolesForCharacterRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v6 = *(a1 + 240);
  v25 = [objc_msgSend(a1 "textStorage")];
  if ((v25 & 1) == 0 && !*(v6 + 56))
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
    v8 = 0;
    atomic_compare_exchange_strong((v6 + 56), &v8, v7);
    if (v8)
    {
    }
  }

  [*(v6 + 56) lock];
  v9 = [*(a1 + 8) string];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  cf = 0;
  v24 = [MEMORY[0x1E696AF00] isMainThread];
  if (v24)
  {
    cf = __NSMainThreadScratchString;
  }

  if (!v9)
  {
    v9 = &stru_1F01AD578;
  }

  *&v29 = v9;
  *(&v30 + 1) = 0;
  *&v31 = [(__CFString *)v9 length];
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  *(&v29 + 1) = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  *(&v31 + 1) = 0;
  v32 = 0;
  *&v30 = CStringPtr;
  if (*(*(*(a1 + 240) + 208) + 56))
  {
    v12 = 0;
    v13 = a3 + a2;
    do
    {
      v26 = 0;
      v14 = [(__CFString *)v9 length];
      v15 = v14;
      v16 = 0;
      v17 = *(a1 + 64);
      if ((v17 & 0x8000000) != 0)
      {
        v18 = 2048;
      }

      else
      {
        v18 = 0x2000;
      }

      if ((v17 & 0x8000000) != 0)
      {
        v19 = 1024;
      }

      else
      {
        v19 = 4096;
      }

      v20 = a3;
      if ((v17 & 0x40000000) != 0)
      {
        v20 = a3;
        v16 = a2;
        if (a2 < v14)
        {
          v16 = __NSGetClusterHeadWithLimit(v9, a2, v28, &cf, v35);
          v20 = v13 - v16;
          if (v16 >= a2)
          {
            v20 = a3;
          }
        }
      }

      if (v20 <= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      _NSGlyphTreeGetFirstHoleAfterCharacterIndex(a1, v16, v21, &v34, &v26, &v33);
      v22 = v34;
      if (v34 + v19 < v16)
      {
        v23 = __NSGetClusterHeadWithLimit(v9, v16 - v19, v28, &cf, v35);
        v26 += v34 - v23;
        v34 = v23;
        v33 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(a1, v23);
        v22 = v34;
      }

      if (v13 <= v22 || v22 >= v15 || !v26)
      {
        break;
      }

      if (v12)
      {
        v12 = 1;
      }

      else
      {
        v12 = [*(a1 + 8) _lockForReading];
        v22 = v34;
      }

      [a1 _fillGlyphHoleForCharacterRange:v22 startGlyphIndex:? desiredNumberOfCharacters:?];
    }

    while ((*(*(*(a1 + 240) + 208) + 56) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  if (!cf)
  {
LABEL_39:
    if ((v12 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v24)
  {
    __NSMainThreadScratchString = cf;
    goto LABEL_39;
  }

  CFRelease(cf);
  if (v12)
  {
LABEL_40:
    [*(a1 + 8) _unlock];
  }

LABEL_41:
  if ((v25 & 1) == 0)
  {
    [*(*(a1 + 240) + 56) unlock];
  }
}

void _NSAddDirtyLayoutManager(uint64_t a1)
{
  v2 = _dirtyLMs;
  if (!_dirtyLMs)
  {
    v2 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:517];
    _dirtyLMs = v2;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    [v2 addPointer:a1];
    *(a1 + 64) |= 0x100u;
  }

  if (!_immediateBackgroundLayoutObserver)
  {
    _immediateBackgroundLayoutObserver = CFRunLoopObserverCreate(0, 2uLL, 0, 400000, _NSPostBackgroundLayout, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, _immediateBackgroundLayoutObserver, *MEMORY[0x1E695E8D0]);
  }

  if (!_backgroundLayoutObserver)
  {
    _backgroundLayoutObserver = CFRunLoopObserverCreate(0, 0x20uLL, 1u, 400000, _NSPostBackgroundLayout, 0);
    v4 = CFRunLoopGetCurrent();
    v5 = _backgroundLayoutObserver;
    v6 = *MEMORY[0x1E695E8D0];

    CFRunLoopAddObserver(v4, v5, v6);
  }
}

void _NSPostBackgroundLayout()
{
  MEMORY[0x193AD3F60](0);
  if (_immediateBackgroundLayoutObserver)
  {
    CFRunLoopObserverInvalidate(_immediateBackgroundLayoutObserver);
    CFRelease(_immediateBackgroundLayoutObserver);
    _immediateBackgroundLayoutObserver = 0;
  }

  if ([_dirtyLMs count])
  {
    if (!_backgroundLayoutTimer)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      _backgroundLayoutTimer = CFRunLoopTimerCreate(0, v0 + 0.001, 0.0, 0, 400000, _NSTimeBackgroundLayout, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(Current, _backgroundLayoutTimer, *MEMORY[0x1E695E8D0]);
    }

    if (!_backgroundLayoutObserver)
    {
      _backgroundLayoutObserver = CFRunLoopObserverCreate(0, 0x20uLL, 1u, 400000, _NSPostBackgroundLayout, 0);
      v2 = CFRunLoopGetCurrent();
      CFRunLoopAddObserver(v2, _backgroundLayoutObserver, *MEMORY[0x1E695E8D0]);
    }
  }

  else if (_backgroundLayoutObserver)
  {
    CFRunLoopObserverInvalidate(_backgroundLayoutObserver);
    CFRelease(_backgroundLayoutObserver);
    _backgroundLayoutObserver = 0;
  }

  JUMPOUT(0x193AD3F50);
}

id -[NSLayoutManager _blockDescription](NSLayoutManager *self, SEL a2)
{
  v26.receiver = self;
  v26.super_class = NSLayoutManager;
  v3 = [MEMORY[0x1E696AD60] stringWithString:{-[NSLayoutManager description](&v26, sel_description)}];
  v23 = self;
  v4 = *(self->_extraData + 23);
  if (v4)
  {
    v5 = [v4 count];
    [v3 appendFormat:@" has %lu runs\n", v5];
    if (v5)
    {
      v6 = 0;
      v22 = v5;
      do
      {
        v7 = [*(v23->_extraData + 23) objectAtIndex:v6];
        v8 = [v7 count];
        v25 = 0;
        v24 = v6;
        [v3 appendFormat:@"run %lu, %lu elements: ", v6, v8];
        if (v8)
        {
          v9 = 0;
          while (1)
          {
            _NSBlockNumberForIndex(v7, v9, &v25);
            v11 = v7[11] <= v10 ? v7[4] - v7[3] : 0;
            v12 = *(v7[7] + (v7[2] + 8) * (v11 + v10) + 8);
            v13 = NSStringFromRange(v25);
            v14 = v13;
            if (v12)
            {
              v15 = *(v12 + 8);
              v16 = NSStringFromRect(*(v12 + 16));
              [v3 appendFormat:@"%@ block %p helper %p lr %@ br %@", v14, v15, v12, v16, NSStringFromRect(*(v12 + 48))];
            }

            else
            {
              [v3 appendFormat:@"%@ empty", v13, v18, v19, v20, v21];
            }

            v9 = v25.length + v25.location;
            if (v25.length + v25.location >= v8)
            {
              break;
            }

            [v3 appendString:@"; "];
          }
        }

        v6 = v24 + 1;
        if (v24 + 1 < v22)
        {
          [v3 appendString:@"\n"];
        }
      }

      while (v6 != v22);
    }
  }

  return v3;
}

double NSLMUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x1E696AA80];
  }

  return a5;
}

unint64_t _NSFastFillAllLayoutHolesForGlyphRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v62 = -1;
  v6 = [*(a1 + 8) length];
  v57 = a3;
  v7 = a2 + a3;
  v8 = *(a1 + 240);
  v9 = 1;
  v58 = v6;
  do
  {
    v10 = [objc_msgSend(a1 "textStorage")];
    v11 = v10;
    if ((v10 & 1) == 0 && !*(v8 + 56))
    {
      v12 = v10;
      v13 = MEMORY[0x1E696AE68];
      v14 = [a1 zone];
      v15 = v13;
      v11 = v12;
      v16 = [objc_msgSend(v15 allocWithZone:{v14), "init"}];
      v17 = 0;
      atomic_compare_exchange_strong((v8 + 56), &v17, v16);
      if (v17)
      {
      }
    }

    result = [*(v8 + 56) lock];
    if (*(*(*(a1 + 240) + 240) + 56))
    {
      v55 = v11;
      v56 = v9;
      v59 = 0;
      v19 = 0;
      while (1)
      {
        if ((*(a1 + 64) & 0x40000000) != 0)
        {
          v20 = a2;
        }

        else
        {
          v20 = 0;
        }

        v61 = 0;
        v21 = v7 - v20;
        if (v7 - v20 <= 0x400)
        {
          v21 = 1024;
        }

        v22 = v21 >= 0x4000 ? 0x4000 : v21;
        result = _NSLayoutTreeGetFirstHoleAfterGlyphIndexWithLength(a1, v20, v22, &v62, &v61);
        v23 = v62;
        if (v62 >= v7 || v62 >= *(*(*(a1 + 240) + 208) + 8))
        {
          break;
        }

        if (v20)
        {
          v24 = v62 > v20;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = a2;
          v26 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(a1, v20);
          v27 = [*(a1 + 8) string];
          if (v26)
          {
            v28 = v27;
            v66 = 0u;
            v64 = 0u;
            memset(v65, 0, sizeof(v65));
            v29 = v26 - 1;
            v63 = 0u;
            v30 = [a1 _blockRangeForCharRange:{v26 - 1, 1}];
            v31 = v30 - 2;
            if (v30 < 2)
            {
              v31 = 0;
            }

            if (v30 < v29)
            {
              v29 = v31;
            }

            *(&v64 + 1) = v26;
            *&v65[0] = v29;
            *&v64 = v28;
            if (v26 <= v29)
            {
              *&v63 = 0;
              WORD4(v66) = -1;
LABEL_62:
              v42 = 1;
              while (2)
              {
                v43 = v42 - 2;
                if (v42 < 2)
                {
                  if (*&v65[0])
                  {
                    if (*&v65[0] >= 0x20uLL)
                    {
                      v44 = 32;
                    }

                    else
                    {
                      v44 = *&v65[0];
                    }

                    *&v63 = v44;
                    *(&v63 + 1) = v44;
                    *&v65[0] -= v44;
                    [v64 getUid("getCharacters:v65 + 8 range:{*&v65[0], v44}")];
                    v43 = *(&v63 + 1) - 1;
                    goto LABEL_70;
                  }

                  *(&v63 + 1) = 0;
                  WORD4(v66) = -1;
                }

                else
                {
                  *(&v63 + 1) = v42 - 1;
LABEL_70:
                  WORD4(v66) = *(v65 + v43 + 4);
                  if (WORD4(v66) > 0x84u)
                  {
                    if (WORD4(v66) - 8232 < 2 || WORD4(v66) == 133)
                    {
                      goto LABEL_36;
                    }
                  }

                  else if (WORD4(v66) == 13)
                  {
                    if (v29 >= [v28 length] || objc_msgSend(v28, "characterAtIndex:", v29) != 10)
                    {
                      goto LABEL_36;
                    }
                  }

                  else if (WORD4(v66) == 10 || WORD4(v66) == 12)
                  {
                    goto LABEL_36;
                  }
                }

                if (!--v29)
                {
                  goto LABEL_36;
                }

                v42 = *(&v63 + 1);
                continue;
              }
            }

            if (v26 - v29 >= 0x20)
            {
              v32 = 32;
            }

            else
            {
              v32 = v26 - v29;
            }

            *&v63 = v32;
            [v28 getUid("getCharacters:v65 + 8 range:{v29, v32}")];
            WORD4(v66) = WORD4(v65[0]);
            if (v29)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v29 = 0;
          }

LABEL_36:
          v33 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(a1, v29);
          _NSLayoutTreeGetFirstHoleAfterGlyphIndexWithLength(a1, v33, v22, &v62, &v61);
          v23 = v62;
          a2 = v25;
          v6 = v58;
          if (v62 < v33)
          {
            v61 += v62 - v33;
            v62 = v33;
            v23 = v33;
          }
        }

        result = _NSGlyphTreeCharacterIndexForGlyphAtIndex(a1, v23);
        if (result < v6)
        {
          v34 = result;
          v35 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(a1, v61 + v62);
          if (v35 >= v6)
          {
            v36 = v6;
          }

          else
          {
            v36 = v35;
          }

          *&v63 = 0;
          v60 = 0;
          [objc_msgSend(*(a1 + 8) "string")];
          if (v63 < v34)
          {
            v37 = [objc_msgSend(*(a1 + 8) "string")];
            if (v34 > v37 && v37 >= v63 && v34 - v37 < v38)
            {
              v34 = v37;
            }
          }

          v40 = v60;
          if (v7 - v62 < 0x64)
          {
            v41 = 1;
          }

          else
          {
            v41 = (v7 - v62) / 0x64;
          }

          if ((v19 & 1) == 0)
          {
            if (v59)
            {
              v59 = 1;
            }

            else
            {
              v59 = [*(a1 + 8) _lockForReading];
            }

            if ((*(a1 + 64) & 8) == 0)
            {
              ++*(a1 + 80);
            }

            _NSFastFillAllGlyphHolesForGlyphRange(a1, a2, v57);
          }

          result = [a1 _fillLayoutHoleForCharacterRange:v34 desiredNumberOfLines:v40 - v34 isSoft:{v41, 0}];
          v19 = 1;
          if (*(*(*(a1 + 240) + 240) + 56))
          {
            continue;
          }
        }

        break;
      }

      if (v19)
      {
        v9 = v56;
        if (v59)
        {
          result = [*(a1 + 8) _unlock];
        }

        if ((v55 & 1) == 0)
        {
LABEL_91:
          result = [*(*(a1 + 240) + 56) unlock];
        }
      }

      else
      {
        v9 = v56;
        if ((v55 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      v19 = 0;
      if ((v11 & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    if ((v19 & 1) == 0)
    {
      return result;
    }

    v46 = *(a1 + 64);
    if ((v46 & 8) == 0)
    {
      if (*(a1 + 80))
      {
        if (--*(a1 + 80))
        {
          goto LABEL_109;
        }

        v47 = v9;
        v46 = *(a1 + 64);
      }

      else
      {
        v47 = v9;
      }

      *(a1 + 64) = v46 | 8;
      v48 = [*(a1 + 32) count];
      v49 = [*(a1 + 32) count];
      if (v49)
      {
        v50 = v49;
        for (i = 0; i != v50; ++i)
        {
          if (*(CFStorageGetValueAtIndex() + 64))
          {
            [a1 _recalculateUsageForTextContainerAtIndex:i];
          }
        }
      }

      if (v48)
      {
        for (j = 0; j != v48; ++j)
        {
          if ((*(CFStorageGetValueAtIndex() + 64) & 2) != 0)
          {
            [a1 _resizeTextViewForTextContainer:{objc_msgSend(*(a1 + 32), "objectAtIndex:", j)}];
          }
        }
      }

      *(a1 + 64) &= ~8u;
      v9 = v47;
    }

LABEL_109:
    if ((*(a1 + 64) & 0x40000000) != 0)
    {
      v53 = a2;
    }

    else
    {
      v53 = 0;
    }

    result = _NSLayoutTreeGetFirstHoleAfterGlyphIndex(a1, v53, &v62);
    if (v62 >= v7)
    {
      break;
    }

    v8 = *(a1 + 240);
    v54 = *(*(v8 + 240) + 56) & v9;
    v9 = 0;
  }

  while ((v54 & 1) != 0);
  return result;
}

NSInsertionPointHelper *_insertionPointHelperForCharacterAtIndex(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 8) length];
  v5 = [*(a1 + 8) string];
  v6 = v5;
  if (v4 != a2 || v4 == 0)
  {
    goto LABEL_17;
  }

  v8 = [(__CFString *)v5 characterAtIndex:a2 - 1];
  if (v8 > 132)
  {
    if ((v8 - 8232) < 2 || v8 == 133)
    {
      goto LABEL_17;
    }

LABEL_16:
    --a2;
    goto LABEL_17;
  }

  v9 = v8 == 10 || v8 == 12;
  if (!v9 && (v8 != 13 || [(__CFString *)v6 length]> a2 && [(__CFString *)v6 characterAtIndex:a2]== 10))
  {
    goto LABEL_16;
  }

LABEL_17:
  v10 = *(*(a1 + 240) + 200);
  if (!v10)
  {
    v18 = 0;
    *(*(a1 + 240) + 200) = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
    goto LABEL_32;
  }

  v11 = [v10 count];
  if (!v11)
  {
    v18 = 0;
LABEL_32:
    [a1 ensureLayoutForCharacterRange:{a2, 1}];
    if (a2 == v4)
    {
      if (*(a1 + 56))
      {
        if (!v4)
        {
          goto LABEL_59;
        }

        a2 = v4 - 1;
        v19 = [(__CFString *)v6 characterAtIndex:v4 - 1];
        if (v19 > 132)
        {
          if ((v19 - 8232) < 2 || v19 == 133)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v20 = v19 == 10 || v19 == 12;
          if (v20 || v19 == 13 && (v4 >= [(__CFString *)v6 length]|| [(__CFString *)v6 characterAtIndex:v4]!= 10))
          {
LABEL_59:
            [*(a1 + 56) lineFragmentPadding];
            v24 = v23;
            v36 = 0u;
            v37 = 0u;
            _NSLayoutTreeGetExtraLineFragmentRect(a1, &v36, 0);
            v25 = *&v36;
            v26 = *&v37;
            v36 = 0u;
            v37 = 0u;
            _NSLayoutTreeGetExtraLineFragmentRect(a1, 0, &v36);
            v27 = v24 + *&v36;
            if (*&v36 + *&v37 != v25 + v26)
            {
              v27 = *&v36 + *&v37 - v24;
            }

            v28 = v27 - v25;
            v29 = v18;
            if (v4 && (*(a1 + 67) & 2) != 0)
            {
              v31 = [*(a1 + 8) attribute:@"NSParagraphStyle" atIndex:v4 - 1 effectiveRange:0];
              v32 = v31;
              if (v31)
              {
                v33 = [v31 baseWritingDirection];
                if (v33 != -1)
                {
                  goto LABEL_70;
                }
              }

              v34 = [*(a1 + 56) textView];
              if (objc_opt_respondsToSelector())
              {
                v32 = [v34 defaultParagraphStyle];
              }

              if (!v32 || (v33 = [v32 baseWritingDirection], v33 == -1))
              {
                HasRightToLeftBaseWritingDirectionAtIndex = _NSStringHasRightToLeftBaseWritingDirectionAtIndex(v6, v4 - 1, 0, v4);
              }

              else
              {
LABEL_70:
                HasRightToLeftBaseWritingDirectionAtIndex = v33;
              }
            }

            else
            {
              HasRightToLeftBaseWritingDirectionAtIndex = 0;
            }

            v21 = -[NSInsertionPointHelper init](+[NSInsertionPointHelper allocWithZone:](NSInsertionPointHelper, "allocWithZone:", [a1 zone]), "init");
            v21->_charRange.location = v4;
            v21->_charRange.length = 0;
            v21->_writingDirection = HasRightToLeftBaseWritingDirectionAtIndex;
            v21->_count = 1;
            v21->_logicalPositions = NSAllocateCollectable(8uLL, 0);
            v21->_logicalLeftBoundaries = NSAllocateCollectable(8uLL, 0);
            v21->_logicalRightBoundaries = NSAllocateCollectable(8uLL, 0);
            v21->_logicalCharIndexes = NSAllocateCollectable(8uLL, 0);
            v21->_displayPositions = NSAllocateCollectable(8uLL, 0);
            v35 = NSAllocateCollectable(8uLL, 0);
            v21->_displayCharIndexes = v35;
            *v21->_displayPositions = v28;
            *v21->_logicalRightBoundaries = v28;
            *v21->_logicalLeftBoundaries = v28;
            *v21->_logicalPositions = v28;
            *v35 = v4;
            *v21->_logicalCharIndexes = v4;
            if (!v29)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        goto LABEL_50;
      }

      if (v4)
      {
        a2 = v4 - 1;
LABEL_50:
        [a1 ensureLayoutForCharacterRange:{a2, 1}];
LABEL_51:
        v21 = [a1 _insertionPointHelperForGlyphAtIndex:{objc_msgSend(a1, "glyphIndexForCharacterAtIndex:", a2)}];
        if (!v21)
        {
          return v21;
        }

        if (!v18)
        {
LABEL_54:
          [*(*(a1 + 240) + 200) insertObject:v21 atIndex:0];
          return v21;
        }

LABEL_53:
        [*(*(a1 + 240) + 200) removeLastObject];
        goto LABEL_54;
      }
    }

    else if (v4)
    {
      goto LABEL_51;
    }

    return 0;
  }

  v12 = v11;
  v13 = 0;
  while (1)
  {
    v14 = [*(*(a1 + 240) + 200) objectAtIndex:v13];
    v15 = *(v14 + 8);
    v16 = a2 - v15 < *(v14 + 16) && a2 >= v15;
    if (a2 == v15 || v16)
    {
      break;
    }

    if (v12 == ++v13)
    {
      v18 = v12 > 0xF;
      goto LABEL_32;
    }
  }

  v21 = v14;
  if (v13)
  {
    [*(*(a1 + 240) + 200) insertObject:v14 atIndex:0];
    [*(*(a1 + 240) + 200) removeObjectAtIndex:v13 + 1];
  }

  return v21;
}

void sub_18E791A10(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18E791A20);
  }

  JUMPOUT(0x18E791924);
}

uint64_t __NSGetClusterHeadWithLimit(__CFString *a1, unint64_t a2, uint64_t a3, CFMutableStringRef *a4, UniChar *a5)
{
  v9 = a1;
  if ([(__CFString *)a1 length]< 0x101)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (a2 >= 0x10)
    {
      v11 = a2 - 16;
    }

    else
    {
      v11 = 0;
    }

    if (a2 >= 0x11)
    {
      v10 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = *(a3 + 160);
        if (v12 > v11)
        {
          v13 = *(a3 + 136);
          if (v13)
          {
            v14 = *(v13 + 2 * *(a3 + 152) + 2 * v11);
          }

          else
          {
            v15 = *(a3 + 144);
            if (v15)
            {
              v14 = *(v15 + *(a3 + 152) + v11);
            }

            else
            {
              if (*(a3 + 176) <= v11 || (v16 = *(a3 + 168), v16 > v11))
              {
                v17 = a2 - 20;
                if (a2 < 0x14)
                {
                  v17 = 0;
                }

                if (v17 + 64 < v12)
                {
                  v12 = v17 + 64;
                }

                *(a3 + 168) = v17;
                *(a3 + 176) = v12;
                v53.length = v12 - v17;
                v53.location = *(a3 + 152) + v17;
                CFStringGetCharacters(*(a3 + 128), v53, a3);
                v16 = *(a3 + 168);
              }

              v14 = *(a3 + 2 * (v11 - v16));
            }
          }

          if (v14 >> 10 == 55)
          {
            v10 = v11 - 1;
            v18 = *(a3 + 160);
            if (v18 >= v11)
            {
              v20 = *(a3 + 136);
              if (v20)
              {
                v19 = *(v20 + 2 * *(a3 + 152) + 2 * v10);
              }

              else
              {
                v21 = *(a3 + 144);
                if (v21)
                {
                  v19 = *(v21 + *(a3 + 152) + v10);
                }

                else
                {
                  if (*(a3 + 176) < v11 || (v22 = *(a3 + 168), v22 >= v11))
                  {
                    v23 = v11 - 5;
                    if (v10 < 4)
                    {
                      v23 = 0;
                    }

                    if (v23 + 64 < v18)
                    {
                      v18 = v23 + 64;
                    }

                    *(a3 + 168) = v23;
                    *(a3 + 176) = v18;
                    v54.length = v18 - v23;
                    v54.location = *(a3 + 152) + v23;
                    CFStringGetCharacters(*(a3 + 128), v54, a3);
                    v22 = *(a3 + 168);
                  }

                  v19 = *(a3 + 2 * (v10 - v22));
                }
              }
            }

            else
            {
              v19 = 0;
            }

            if (v19 >> 10 != 54)
            {
              v10 = v11;
            }
          }
        }
      }
    }

    v24 = [(__CFString *)v9 length];
    if (v24 >= a2 + 16)
    {
      v25 = a2 + 16;
    }

    else
    {
      v25 = v24;
    }

    v26 = v25 - v10;
    if (v25 < [(__CFString *)v9 length])
    {
      v27 = v25 - 1;
      if (v25 - 1 >= 0)
      {
        v28 = *(a3 + 160);
        if (v28 > v27)
        {
          v29 = *(a3 + 136);
          if (v29)
          {
            v30 = *(v29 + 2 * *(a3 + 152) + 2 * v27);
          }

          else
          {
            v31 = *(a3 + 144);
            if (v31)
            {
              v30 = *(v31 + *(a3 + 152) + v27);
            }

            else
            {
              if (*(a3 + 176) <= v27 || (v32 = *(a3 + 168), v32 > v27))
              {
                v33 = v25 - 5;
                if (v27 < 4)
                {
                  v33 = 0;
                }

                if (v33 + 64 < v28)
                {
                  v28 = v33 + 64;
                }

                *(a3 + 168) = v33;
                *(a3 + 176) = v28;
                v55.length = v28 - v33;
                v55.location = *(a3 + 152) + v33;
                CFStringGetCharacters(*(a3 + 128), v55, a3);
                v32 = *(a3 + 168);
              }

              v30 = *(a3 + 2 * (v27 - v32));
            }
          }

          if (v30 >> 10 == 54)
          {
            v34 = *(a3 + 160);
            if (v34 <= v25)
            {
              v36 = 0;
            }

            else
            {
              v35 = *(a3 + 136);
              if (v35)
              {
                v36 = *(v35 + 2 * *(a3 + 152) + 2 * v25);
              }

              else
              {
                v50 = *(a3 + 144);
                if (v50)
                {
                  v36 = *(v50 + *(a3 + 152) + v25);
                }

                else
                {
                  if (*(a3 + 176) <= v25 || (v51 = *(a3 + 168), v51 > v25))
                  {
                    v52 = v25 - 4;
                    if (v25 < 4)
                    {
                      v52 = 0;
                    }

                    if (v52 + 64 < v34)
                    {
                      v34 = v52 + 64;
                    }

                    *(a3 + 168) = v52;
                    *(a3 + 176) = v34;
                    v56.length = v34 - v52;
                    v56.location = *(a3 + 152) + v52;
                    CFStringGetCharacters(*(a3 + 128), v56, a3);
                    v51 = *(a3 + 168);
                  }

                  v36 = *(a3 + 2 * (v25 - v51));
                }
              }
            }

            if (v36 >> 10 == 55)
            {
              ++v26;
            }
          }
        }
      }
    }

    if (*a4)
    {
      CFStringSetExternalCharactersNoCopy(*a4, a5, v26, 64);
    }

    else
    {
      *a4 = CFStringCreateMutableWithExternalCharactersNoCopy(0, a5, v26, 64, *MEMORY[0x1E695E498]);
    }

    v37 = *(a3 + 136);
    if (v37)
    {
      memmove(a5, (v37 + 2 * *(a3 + 152) + 2 * v10), 2 * v26);
    }

    else
    {
      v39 = *(a3 + 168);
      if (v10 < v39 || (v40 = *(a3 + 176), v41 = v40 <= v10, v42 = v40 - v10, v41))
      {
        v45 = v26 + v10 - v39;
        if (v26 + v10 > v39 && v26 + v10 < *(a3 + 176))
        {
          v26 = v39 - v10;
          memmove(&a5[v39 - v10], a3, 2 * v45);
        }

        v44 = v10;
      }

      else
      {
        if (v26 >= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v26;
        }

        memmove(a5, (a3 + 2 * (v10 - v39)), 2 * v43);
        a5 += v43;
        v44 = v43 + v10;
        v26 -= v43;
      }

      if (v26 >= 1)
      {
        v46 = *(a3 + 144);
        v47.location = *(a3 + 152) + v44;
        if (v46)
        {
          v48 = (v46 + v47.location);
          do
          {
            v49 = *v48++;
            *a5++ = v49;
            --v26;
          }

          while (v26);
        }

        else
        {
          v47.length = v26;
          CFStringGetCharacters(*(a3 + 128), v47, a5);
        }
      }
    }

    v9 = *a4;
  }

  return [(__CFString *)v9 rangeOfComposedCharacterSequenceAtIndex:a2 - v10]+ v10;
}

uint64_t _NSFastFillAllLayoutHolesUpToEndOfContainerForGlyphIndex(uint64_t a1, unint64_t a2)
{
  v41 = -1;
  v4 = &OBJC_IVAR___NSLayoutManager__extraData;
  v5 = *(a1 + 240);
  v6 = &OBJC_IVAR___NSExtraLMData__layoutTree;
  v7 = &OBJC_IVAR___NSLayoutManager__lmFlags;
  v8 = &OBJC_IVAR___NSLayoutManager__textViewResizeDisableStack;
  v38 = 1;
  do
  {
    v39 = [objc_msgSend(a1 "textStorage")];
    if ((v39 & 1) == 0 && !*(v5 + 56))
    {
      v9 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
      v10 = 0;
      atomic_compare_exchange_strong((v5 + 56), &v10, v9);
      if (v10)
      {
      }
    }

    result = [*(v5 + 56) lock];
    if ((*(*(*(a1 + *v4) + *v6) + 56) & 1) == 0)
    {
      v12 = 0;
      goto LABEL_44;
    }

    v12 = 0;
    v40 = 0;
    v13 = 0;
    do
    {
      if (*(a1 + 216) == 0x7FFFFFFFFFFFFFFFLL || (v14 = *(a1 + 208), v14 == 0x7FFFFFFFFFFFFFFFLL))
      {
        [a1 getFirstUnlaidCharacterIndex:0 glyphIndex:&v41];
        v14 = v41;
      }

      else
      {
        v41 = *(a1 + 208);
      }

      v15 = a2 >= v14;
      v16 = a2 - v14;
      if (v15)
      {
        v20 = v16 / 0x64 + 100;
        if ((v12 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_40;
      }

      if (!v13)
      {
        if ((*(a1 + *v7 + 3) & 0x40) != 0)
        {
          v13 = [*(a1 + 32) objectAtIndex:0];
        }

        else if ([*(a1 + 48) count] <= a2)
        {
          v13 = 0;
        }

        else
        {
          v17 = *(a1 + 48);
          _NSBlockNumberForIndex(v17, a2, 0);
          v19 = 0;
          if (v17[11] <= v18)
          {
            v19 = v17[4] - v17[3];
          }

          v13 = *(v17[7] + (v17[2] + 8) * (v19 + v18) + 8);
        }
      }

      if ((*(a1 + *v7 + 3) & 0x40) != 0)
      {
        result = [*(a1 + 32) objectAtIndex:0];
      }

      else
      {
        v21 = v8;
        v22 = v7;
        v23 = v4;
        v24 = v6;
        v25 = v41 - 1;
        if ([*(a1 + 48) count] <= v25)
        {
          result = 0;
        }

        else
        {
          v26 = *(a1 + 48);
          _NSBlockNumberForIndex(v26, v25, 0);
          v28 = 0;
          if (v26[11] <= v27)
          {
            v28 = v26[4] - v26[3];
          }

          result = *(v26[7] + (v26[2] + 8) * (v28 + v27) + 8);
        }

        v6 = v24;
        v4 = v23;
        v7 = v22;
        v8 = v21;
      }

      if (result != v13)
      {
        break;
      }

      v20 = 100;
      if ((v12 & 1) == 0)
      {
LABEL_34:
        if (v40)
        {
          v40 = 1;
        }

        else
        {
          v40 = [*(a1 + 8) _lockForReading];
        }

        if ((*(a1 + *v7) & 8) == 0)
        {
          ++*(a1 + *v8);
        }

        _NSFastFillAllGlyphHolesForGlyphRange(a1, a2, 1uLL);
      }

LABEL_40:
      result = [a1 _fillLayoutHoleAtIndex:0 desiredNumberOfLines:v20];
      v12 = 1;
    }

    while ((*(*(*(a1 + *v4) + *v6) + 56) & 1) != 0);
    if (v12 & 1) != 0 && (v40)
    {
      result = [*(a1 + 8) _unlock];
    }

LABEL_44:
    if ((v39 & 1) == 0)
    {
      result = [*(*(a1 + *v4) + 56) unlock];
    }

    if ((v12 & 1) == 0)
    {
      break;
    }

    v29 = *v7;
    v30 = *(a1 + v29);
    if ((v30 & 8) == 0)
    {
      v31 = *v8;
      if (!*(a1 + v31))
      {
        goto LABEL_51;
      }

      --*(a1 + v31);
      if (!*(a1 + *v8))
      {
        v29 = *v7;
        v30 = *(a1 + v29);
LABEL_51:
        *(a1 + v29) = v30 | 8;
        v32 = [*(a1 + 32) count];
        result = [*(a1 + 32) count];
        if (result)
        {
          v33 = result;
          for (i = 0; i != v33; ++i)
          {
            result = CFStorageGetValueAtIndex();
            if (*(result + 64))
            {
              result = [a1 _recalculateUsageForTextContainerAtIndex:i];
            }
          }
        }

        if (v32)
        {
          for (j = 0; j != v32; ++j)
          {
            result = CFStorageGetValueAtIndex();
            if ((*(result + 64) & 2) != 0)
            {
              result = [a1 _resizeTextViewForTextContainer:{objc_msgSend(*(a1 + 32), "objectAtIndex:", j)}];
            }
          }
        }

        *(a1 + *v7) &= ~8u;
      }
    }

    if (*(a1 + 216) == 0x7FFFFFFFFFFFFFFFLL || (v36 = *(a1 + 208), v36 == 0x7FFFFFFFFFFFFFFFLL))
    {
      result = [a1 getFirstUnlaidCharacterIndex:0 glyphIndex:&v41];
      v36 = v41;
    }

    else
    {
      v41 = *(a1 + 208);
    }

    if (v36 > a2)
    {
      break;
    }

    v5 = *(a1 + *v4);
    v37 = *(*(v5 + *v6) + 56) & v38;
    v38 = 0;
  }

  while ((v37 & 1) != 0);
  return result;
}

uint64_t _NSInsertionPointDisplayCompareR(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *a1 > *a2;
  if (*a1 < *a2)
  {
    v5 = -1;
  }

  if ((*(a1 + 8) | *(a2 + 8)))
  {
    return -v5;
  }

  else
  {
    return v5;
  }
}

uint64_t _NSInsertionPointDisplayCompareL(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *a1 > *a2;
  if (*a1 < *a2)
  {
    v5 = -1;
  }

  if ((*(a2 + 8) & 1) == 0 || (*(a1 + 8) & 1) == 0)
  {
    return v5;
  }

  else
  {
    return -v5;
  }
}

uint64_t _NSInsertionPointLogicalCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

void sub_18E7952A8(void *a1)
{
  objc_begin_catch(a1);
  if (v1)
  {
    v4 = 0x200000;
  }

  else
  {
    v4 = 0;
  }

  *(*v2 + *v3) = *(*v2 + *v3) & 0xFFDFFFFF | v4;
  objc_exception_rethrow();
}

void _NSTimeBackgroundLayout()
{
  CFRunLoopTimerInvalidate(_backgroundLayoutTimer);
  CFRelease(_backgroundLayoutTimer);
  _backgroundLayoutTimer = 0;
}

uint64_t initUIRectIntegralWithScale(double a1, double a2, double a3, double a4, double a5)
{
  v10 = __NSGetFrameworkReference(0, 0);
  v11 = dlsym(v10, "UIRectIntegralWithScale");
  softLinkUIRectIntegralWithScale[0] = v11;
  if (!v11)
  {
    initUIRectIntegralWithScale_cold_1();
  }

  v12.n128_f64[0] = a1;
  v13.n128_f64[0] = a2;
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;

  return (v11)(v12, v13, v14, v15, v16);
}

uint64_t __NSRunGetBidiLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a3 + 80) _bidiLevels];
  if (v4)
  {
    return v4 + a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __NSCleanCopyRun(const __CTRun *a1, uint64_t a2, uint64_t a3)
{
  StringRange = CTRunGetStringRange(a1);
  v5 = [(NSATSGlyphStorage *)a3 childGlyphStorageWithCharacterRange:StringRange.length];
  v6 = v5[11];
  if ([v5[10] _bidiLevels])
  {
    [v5[10] _baseWritingDirection];
  }

  if ((*(v6 + 96) & 0x20) == 0 || (v7 = [*(v6 + 8) _kernOverride], objc_msgSend(v7, "doubleValue"), v8 == 0.0))
  {
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *v6);
    CFDictionaryAddValue(MutableCopy, @"NSKern", v7);
  }

  if ((*(v6 + 96) & 0x40) != 0 && ![*v6 objectForKey:@"CTVerticalForms"])
  {
    if (!MutableCopy)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *v6);
    }

    CFDictionaryAddValue(MutableCopy, @"CTVerticalForms", *MEMORY[0x1E695E4D0]);
  }

  if ((*(v6 + 96) & 0x80) != 0)
  {
    if (!MutableCopy)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *v6);
    }

    CFDictionarySetValue(MutableCopy, @"NSFont", *(v6 + 8));
  }

  if (MutableCopy)
  {
    MutableRunsWithStorageAndOptions = CTRunCreateMutableRunsWithStorageAndOptions();
    CFRelease(MutableCopy);
    return MutableRunsWithStorageAndOptions;
  }

  else
  {

    return CTRunCreateMutableRunsWithStorageAndOptions();
  }
}

BOOL __NSJustifyLine(CFTypeRef *a1)
{
  JustifiedLineWithOptions = CTLineCreateJustifiedLineWithOptions();
  if (JustifiedLineWithOptions)
  {
    CFRelease(*a1);
    *a1 = JustifiedLineWithOptions;
  }

  return JustifiedLineWithOptions != 0;
}

const void *_NSATSGlyphStorageCreateTruncationToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3 >= 1)
  {
    return [(NSATSGlyphStorage *)a5 _createEllipsisRunWithStringRange:a2 attributes:a3];
  }

  else
  {
    return 0;
  }
}

uint64_t __NSATSLineFragmentRunCompare(const __CTRun *a1, const __CTRun *a2)
{
  location = CTRunGetStringRange(a1).location;
  v4 = CTRunGetStringRange(a2).location;
  v5 = -1;
  if (location >= v4)
  {
    v5 = 1;
  }

  if (location == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void __NSDoReordants(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = (a7 >> 63) | 1;
  v13 = *a8;
  v14 = *a9;
  v15 = v12 * a7;
  if (v12 * a7 < 11)
  {
    if (v15 <= 0)
    {
      qsort(__base, v12 * a7, 0x18uLL, __NSReordantIndexCompare);
      *a8 = v13;
      *a9 = v14;
      return;
    }

    v16 = __base;
  }

  else
  {
    v16 = NSZoneMalloc(0, 24 * v15);
  }

  v32 = v14;
  v29 = a8;
  v17 = 0;
  v18 = v16 + 16;
  v19 = v15;
  do
  {
    *(v18 - 2) = v17;
    v20 = *(a3 + 4 * v17);
    *(v18 - 1) = *(a4 + 8 * v17);
    *v18 = (v20 & 0x20000) != 0;
    v18 += 24;
    v17 += v12;
    --v19;
  }

  while (v19);
  qsort(v16, v15, 0x18uLL, __NSReordantIndexCompare);
  ptr = v16;
  v21 = a5;
  do
  {
    v22 = *(a3 + 4 * *v16);
    if ((v22 & 0x20000) != 0)
    {
      if ((v22 & 0x20) != 0)
      {
        goto LABEL_28;
      }

      [a1 insertGlyph:*(a2 + 2 * *v16) atGlyphIndex:v13 characterIndex:*(a4 + 8 * *v16) + a6];
      ++v32;
    }

    if ((v22 & 0x40000) != 0)
    {
      v24 = *(a2 + 2 * *v16);
      if (v24 == 0xFFFF)
      {
        v24 = 0;
      }

      v35[0] = v24;
      v23 = 1;
      if (!v21)
      {
        goto LABEL_21;
      }

LABEL_17:
      v25 = *(v21 + 8 * *v16);
      if (v25 < 1)
      {
        goto LABEL_21;
      }

      if (v23)
      {
        v26 = v13;
        if ([a1 glyphRangeForCharacterRange:*(a4 + 8 * *v16) + a6 actualCharacterRange:{1, 0}] != v13)
        {
          v35[v25] = v35[0];
          __memset_chk();
          *(a3 + 4 * *v16) |= 0x400000u;
          v26 = v13;
LABEL_25:
          v27 = v25 + v23;
          v13 += v25;
          v21 = a5;
          goto LABEL_26;
        }
      }

      else
      {
        v26 = v13 + 1;
      }

      __memset_chk();
      goto LABEL_25;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_21:
    if ((v22 & 0x40000) != 0)
    {
      v27 = 1;
      v26 = v13;
LABEL_26:
      [a1 substituteGlyphsInRange:v26 withGlyphs:{v27, v35}];
    }

    ++v13;
LABEL_28:
    v16 += 24;
    --v15;
  }

  while (v15);
  *v29 = v13;
  *a9 = v32;
  if (__base != ptr)
  {
    NSZoneFree(0, ptr);
  }
}

uint64_t __NSReordantIndexCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 == v3)
  {
    return *(a1 + 16) - *(a2 + 16);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return [v1 allocWithZone:a1];
}

double OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, double a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  result = v48 - a27 - v47;
  if (a55 != 1)
  {
    return v47;
  }

  return result;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_25()
{
  v2 = *v0;

  return CFDictionaryCreateMutableCopy(0, 0, v2);
}

uint64_t OUTLINED_FUNCTION_26(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = v7 + *(v4 + 56);

  return [a1 setLocation:0 withAdvancements:a4 forStartOfGlyphRange:{1, v6, v8}];
}

uint64_t OUTLINED_FUNCTION_27(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  v55 = *(v53 - 8) + a23;

  return [a1 glyphRangeForCharacterRange:v55 actualCharacterRange:{1, &a53}];
}

void OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  bzero(&a25 + 4 * a4, 4 * (128 - a4));
}

uint64_t OUTLINED_FUNCTION_40()
{

  return CTLineCreateJustifiedLineWithOptions();
}

uint64_t UIAppendVInt32ToData(void *a1, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        v3 = (4 * a2) & 0x7F0000 | (((a2 >> 21) & 0x7F) << 24) | a2 & 0x7F | (((a2 >> 7) & 0x7F) << 8);
        if (a2 >> 28)
        {
          v8 = a2 >> 28;
          v4 = 5;
        }

        else
        {
          v3 |= 0x80000000;
          v4 = 4;
        }
      }

      else
      {
        v3 = (2 * a2) & 0x7F00 | a2 & 0x7F | (((a2 >> 14) & 0x7F) << 16) | 0x800000;
        v4 = 3;
      }
    }

    else
    {
      v3 = (2 * a2) & 0x7F00 | a2 & 0x7F | 0x8000;
      v4 = 2;
    }
  }

  else
  {
    v3 = a2 | 0x80;
    v4 = 1;
  }

  v7 = v3;
  __memcpy_chk();
  return [a1 appendBytes:v6 length:v4];
}

void sub_18E79E2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E79E674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18E79ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18E79FAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7A1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18E7A22E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_18E7A2EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_18E7A3830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __normalizeTextRanges_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 location];
  v5 = [a3 location];

  return [v4 compare:v5];
}

uint64_t __visualBidiSelectionEnabled_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  visualBidiSelectionEnabled_result = result;
  return result;
}

void NSTextLayoutManagerBreakOnNilContentManager()
{
  if (NSTextLayoutManagerBreakOnNilContentManager_onceToken != -1)
  {
    NSTextLayoutManagerBreakOnNilContentManager_cold_1();
  }
}

void sub_18E7A4180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18E7A5834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_18E7A5F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose((v64 - 248), 8);
  _Block_object_dispose((v64 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_18E7A7A44(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 224), 8);
  _Block_object_dispose((v2 - 176), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7A8038(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 128), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7A8324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_18E7A8428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7A8B28(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_begin_catch(exc_buf);
  *(v27 + 128) = a12;
  objc_exception_rethrow();
}

void sub_18E7A8B78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id location, char a59)
{
  objc_end_catch();
  objc_destroyWeak(&a55);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 224), 8);
  _Block_object_dispose((v59 - 192), 8);
  JUMPOUT(0x18E7A8BB8);
}

void sub_18E7A91F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_18E7A9E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18E7AA1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7AAAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_18E7AB1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 248), 8);
  _Block_object_dispose((v54 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_18E7AC054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v10)
  {
    objc_end_catch();
  }

  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_18E7AC29C(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 136) = 0;
  objc_exception_rethrow();
}

void sub_18E7AC2AC(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7AC43C(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 136) = 0;
  objc_exception_rethrow();
}

void sub_18E7AC44C(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7AC628(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 136) = 0;
  objc_exception_rethrow();
}

void sub_18E7AC638(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7AC764(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 136) = 0;
  objc_exception_rethrow();
}

void sub_18E7AC774(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18E7AD460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7AD63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18E7AD860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7ADBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7AE494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7AE700(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_18E7AF214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7AF954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7B0204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7B0858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7B0D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void __UIFoundationWriteLog(uint64_t a1, os_log_type_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____UIFoundationWriteLog_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (__UIFoundationWriteLog_onceToken != -1)
  {
    dispatch_once(&__UIFoundationWriteLog_onceToken, block);
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];
  v13 = __UIFoundationWriteLog_uifoundationLog;
  if (os_log_type_enabled(__UIFoundationWriteLog_uifoundationLog, a2))
  {
    *buf = 138543362;
    v16 = v12;
    _os_log_impl(&dword_18E741000, v13, a2, "%{public}@", buf, 0xCu);
  }
}

double __NSTruncationTokenAttachmentGetWidth(void *a1)
{
  [a1 bounds];

  return CGRectGetWidth(*&v1);
}

__CFString *UINibCoderValueTypeToString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return UINibCoderValueTypeToString_table[a1];
  }
}

uint64_t _NSSecureDecodingError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:&a9];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", _NSMethodExceptionProem(), v9];
  v11 = *MEMORY[0x1E696A250];
  v14 = *MEMORY[0x1E696A278];
  v15[0] = v10;
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:4864 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];

  return v12;
}

uint64_t _NSAttachmentCharacterSet()
{
  result = _attachmentCharSet;
  if (!_attachmentCharSet)
  {
    if (_createAttachmentAndBidiCharSets_onceToken != -1)
    {
      _NSAttachmentCharacterSet_cold_1();
    }

    return _attachmentCharSet;
  }

  return result;
}

uint64_t _NSNonAttachmentCharacterSet()
{
  result = _nonAttachmentCharSet;
  if (!_nonAttachmentCharSet)
  {
    if (_createAttachmentAndBidiCharSets_onceToken != -1)
    {
      _NSAttachmentCharacterSet_cold_1();
    }

    return _nonAttachmentCharSet;
  }

  return result;
}

uint64_t _NSBidiEmbeddingAndOverrideCharSet()
{
  result = _bidiEmbeddingAndOverrideCharSet;
  if (!_bidiEmbeddingAndOverrideCharSet)
  {
    if (_createAttachmentAndBidiCharSets_onceToken != -1)
    {
      _NSAttachmentCharacterSet_cold_1();
    }

    return _bidiEmbeddingAndOverrideCharSet;
  }

  return result;
}

uint64_t _NSBidiControlCharacterSet()
{
  result = _bidiControlCharacterSet;
  if (!_bidiControlCharacterSet)
  {
    if (_createAttachmentAndBidiCharSets_onceToken != -1)
    {
      _NSAttachmentCharacterSet_cold_1();
    }

    return _bidiControlCharacterSet;
  }

  return result;
}

unint64_t _NSXMLEncoding(const UInt8 *a1, unint64_t a2)
{
  v4 = 0;
  if (a2 <= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = a2;
  }

  v6 = 10 - v5;
  do
  {
    if (v6 == v4)
    {
      return 0;
    }

    v7 = strncasecmp(a1++, "encoding=", 0xAuLL);
    --v4;
  }

  while (v7);
  if (10 - v4 >= a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = (a1 + 9);
  v10 = -1;
  do
  {
    v11 = *v9++;
    if (v11 == 34)
    {
      v10 = v8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = v8 - v4 + 11;
    ++v8;
  }

  while (v12 < a2);
  if (v10 < 1)
  {
    return 0;
  }

  v13 = CFStringCreateWithBytes(0, a1 + 9, v10, 0x201u, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = CFStringConvertIANACharSetNameToEncoding(v13);
  CFRelease(v14);
  if (v15 == -1)
  {
    return 0;
  }

  return CFStringConvertEncodingToNSStringEncoding(v15);
}

unint64_t _NSHTMLEncoding(const UInt8 *a1, unint64_t a2)
{
  v4 = 0;
  if (a2 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = a2;
  }

  v6 = 8 - v5;
  do
  {
    if (v6 == v4)
    {
      return 0;
    }

    v7 = strncasecmp(a1++, "charset=", 8uLL);
    --v4;
  }

  while (v7);
  if (8 - v4 >= a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = (a1 + 7);
  v10 = -1;
  do
  {
    v11 = *v9++;
    if (v11 == 34)
    {
      v10 = v8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = v8 - v4 + 9;
    ++v8;
  }

  while (v12 < a2);
  if (v10 < 1)
  {
    return 0;
  }

  v13 = CFStringCreateWithBytes(0, a1 + 7, v10, 0x201u, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = CFStringConvertIANACharSetNameToEncoding(v13);
  CFRelease(v14);
  if (v15 == -1)
  {
    return 0;
  }

  return CFStringConvertEncodingToNSStringEncoding(v15);
}

void sub_18E7B6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_NSAttributedStringAsyncReadReply *_NSReadAttributedStringFromURLOrDataAsync(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 | a2))
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v15 = 258;
    v16 = 0;
LABEL_14:
    (*(a4 + 16))(a4, 0, 0, [v13 errorWithDomain:v14 code:v15 userInfo:v16]);
    return 0;
  }

  if (a1 && ([a1 isFileURL] & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1 forKey:*MEMORY[0x1E696A998]];
    v13 = v17;
    v14 = v18;
    v15 = 262;
    goto LABEL_14;
  }

  if (!a3)
  {
    a3 = [MEMORY[0x1E695DF20] dictionary];
  }

  v8 = [a1 path];
  v9 = [MEMORY[0x1E696AAB0] _allowedOptionClasses];
  v26 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v26];
  if (v10)
  {
    [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v10 error:&v26];
  }

  if (v26)
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithObject:v26 forKey:*MEMORY[0x1E696AA08]];
    v12 = v11;
    if (v8)
    {
      [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A368]];
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v15 = 256;
    v16 = v12;
    goto LABEL_14;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___NSReadAttributedStringFromURLOrDataAsync_block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = v9;
  if (_NSReadAttributedStringFromURLOrDataAsync_onceToken != -1)
  {
    dispatch_once(&_NSReadAttributedStringFromURLOrDataAsync_onceToken, block);
  }

  v21 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.textkit.nsattributedstringagent"];
  [v21 setRemoteObjectInterface:_NSReadAttributedStringFromURLOrDataAsync_connectionInterface];
  [v21 _setQueue:_NSReadAttributedStringFromURLOrDataAsync_connectionQueue];
  [v21 resume];
  v19 = [_NSAttributedStringAsyncReadReply readReplyWithConnection:v21 reply:a4];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___NSReadAttributedStringFromURLOrDataAsync_block_invoke_2;
  v24[3] = &unk_1E72669C0;
  v24[4] = v19;
  v22 = [v21 remoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___NSReadAttributedStringFromURLOrDataAsync_block_invoke_3;
  v23[3] = &unk_1E7266A10;
  v23[4] = a3;
  v23[5] = v21;
  v23[6] = a1;
  v23[7] = v22;
  v23[8] = a2;
  v23[9] = v19;
  [v22 startWithReply:v23];
  return v19;
}

uint64_t _NSReadAttributedStringFromHTMLData(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v66[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _NSReadAttributedStringFromHTMLData_cold_1();
  }

  if (!a4)
  {
    _NSReadAttributedStringFromHTMLData_cold_2();
  }

  if (!a2)
  {
    a2 = [MEMORY[0x1E695DF20] dictionary];
  }

  *a4 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v12 = [MEMORY[0x1E696AAB0] _allowedOptionClasses];
  v58 = 0;
  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v58];
  if (v13)
  {
    [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v12 fromData:v13 error:&v58];
  }

  if (!v58)
  {
    goto LABEL_19;
  }

  v14 = [MEMORY[0x1E695DF90] dictionaryWithObject:v58 forKey:*MEMORY[0x1E696AA08]];
  v15 = v14;
  if (a3)
  {
    [v14 setObject:a3 forKeyedSubscript:*MEMORY[0x1E696A368]];
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v15];
  if (!v16)
  {
LABEL_19:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___NSReadAttributedStringFromHTMLData_block_invoke;
    block[3] = &unk_1E72657B8;
    block[4] = v12;
    if (_NSReadAttributedStringFromHTMLData_onceToken != -1)
    {
      dispatch_once(&_NSReadAttributedStringFromHTMLData_onceToken, block);
    }

    v18 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.textkit.nsattributedstringagent"];
    [v18 setRemoteObjectInterface:_NSReadAttributedStringFromHTMLData_connectionInterface];
    [v18 _setQueue:_NSReadAttributedStringFromHTMLData_connectionQueue];
    [v18 resume];
    v58 = 0;
    v59 = &v58;
    v60 = 0x3052000000;
    v61 = __Block_byref_object_copy__3;
    v62 = __Block_byref_object_dispose__3;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3052000000;
    v55 = __Block_byref_object_copy__3;
    v56 = __Block_byref_object_dispose__3;
    v57 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3052000000;
    v49 = __Block_byref_object_copy__3;
    v50 = __Block_byref_object_dispose__3;
    v51 = 0;
    v19 = [a2 objectForKeyedSubscript:NSTimeoutDocumentOption];
    v20 = -1.0;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v19 doubleValue], v20 = v21, v21 >= 0.0))
    {
      v23 = dispatch_semaphore_create(0);
      dispatch_retain(v23);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = ___NSReadAttributedStringFromHTMLData_block_invoke_3;
      v44[3] = &unk_1E7266AB0;
      v44[4] = v23;
      v44[5] = &v46;
      v22 = [v18 remoteObjectProxyWithErrorHandler:v44];
      v24 = 0;
    }

    else
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = ___NSReadAttributedStringFromHTMLData_block_invoke_2;
      v45[3] = &unk_1E7266A88;
      v45[4] = &v46;
      v22 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v45];
      v23 = 0;
      v24 = 1;
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = ___NSReadAttributedStringFromHTMLData_block_invoke_4;
    v42[3] = &unk_1E7266B00;
    v42[4] = a2;
    v42[5] = v18;
    v42[6] = v22;
    v42[7] = a1;
    v42[10] = &v52;
    v42[11] = &v46;
    v43 = v24;
    v42[8] = v23;
    v42[9] = &v58;
    [v22 startWithReply:v42];
    if (v24)
    {
      v25 = v47[5];
      if (!v25)
      {
LABEL_39:
        if (v59[5])
        {
          if ([objc_msgSend(a2 objectForKeyedSubscript:{@"DocumentType", "isEqualToString:", @"NSWebArchive"}])
          {
            v33 = [v59[5] length];
            if (v33)
            {
              v34 = 0;
              v35 = 0;
              v41 = xmmword_18E856290;
              do
              {
                while (1)
                {
                  v36 = [v59[5] attribute:@"NSFont" atIndex:v34 longestEffectiveRange:&v41 inRange:{v34, v33 - v34}];
                  if (!CTFontIsLastResort())
                  {
                    break;
                  }

                  if ((v35 & 1) == 0)
                  {
                    [v59[5] beginEditing];
                  }

                  [v36 pointSize];
                  v37 = [UIFont userFontOfSize:?];
                  v38 = v59[5];
                  v65 = @"NSFont";
                  v66[0] = v37;
                  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
                  [v38 setAttributes:v39 range:v41];
                  v34 = v41 + *(&v41 + 1);
                  *&v41 = v34;
                  v35 = 1;
                  if (v34 >= v33)
                  {
                    goto LABEL_53;
                  }
                }

                v34 = v41 + *(&v41 + 1);
                *&v41 = v34;
              }

              while (v34 < v33);
              if ((v35 & 1) == 0)
              {
                goto LABEL_54;
              }

LABEL_53:
              [v59[5] endEditing];
            }
          }

LABEL_54:
          *a4 = v59[5];
          v40 = v53[5];
          if (a5)
          {
            v16 = 0;
            *a5 = v40;
          }

          else
          {

            v16 = 0;
          }

          v17 = 1;
        }

        else
        {
          v17 = 0;
          v16 = 0;
        }

LABEL_31:
        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v58, 8);
        if (!a6)
        {
          return v17;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v26 = dispatch_time(0, (v20 * 1000000000.0));
      v27 = dispatch_semaphore_wait(v23, v26);
      dispatch_release(v23);
      v25 = v47[5];
      if (!v25)
      {
        if (!v27)
        {
          goto LABEL_39;
        }

        v29 = MEMORY[0x1E695DF90];
        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:2 userInfo:0];
        v31 = [v29 dictionaryWithObject:v30 forKey:*MEMORY[0x1E696AA08]];
        v32 = v31;
        if (a3)
        {
          [v31 setObject:a3 forKeyedSubscript:*MEMORY[0x1E696A368]];
        }

        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v32];

LABEL_30:
        v17 = 0;
        goto LABEL_31;
      }
    }

    v16 = v25;

    goto LABEL_30;
  }

  v17 = 0;
  if (!a6)
  {
    return v17;
  }

LABEL_32:
  if ((v17 & 1) == 0)
  {
    *a6 = v16;
  }

  return v17;
}