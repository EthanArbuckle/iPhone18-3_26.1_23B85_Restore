uint64_t _scan_html_tag(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x40)
  {
    if (v1 == 47)
    {
      v2 = a1[1];
      if (v2 >= 0x41 && (v2 < 0x5B || v2 - 97 <= 0x19))
      {
        v4 = a1 + 2;
        do
        {
          v6 = *v4++;
          v5 = v6;
        }

        while ((_scan_html_tag_yybm[v6] & 4) != 0);
        if (v5 > 0x1F)
        {
          if (v5 == 32)
          {
            while (1)
            {
LABEL_175:
              v47 = *v4;
              if (v47 > 0x1F)
              {
                if (v47 != 32)
                {
                  goto LABEL_184;
                }
              }

              else if (v47 - 9 > 4)
              {
                return 0;
              }

              ++v4;
            }
          }

          if (v5 == 62)
          {
            LODWORD(v4) = v4 - 1;
            return (v4 - a1 + 1);
          }
        }

        else if (v5 - 9 < 5)
        {
          goto LABEL_175;
        }
      }
    }

    return 0;
  }

  if (v1 >= 0x5B && v1 - 97 >= 0x1A)
  {
    return 0;
  }

  v4 = a1 + 1;
  v8 = a1[1];
  if (v8 > 0x2E)
  {
    if (v8 > 0x40)
    {
      if (v8 >= 0x5B && v8 - 97 >= 0x1A)
      {
        return 0;
      }
    }

    else if (v8 >= 0x3A && v8 != 62)
    {
      return 0;
    }
  }

  else if (v8 > 0x1F)
  {
    if (v8 != 45 && v8 != 32)
    {
      return 0;
    }
  }

  else if (v8 - 9 >= 5)
  {
    return 0;
  }

  while ((_scan_html_tag_yybm[v8] & 8) == 0)
  {
    if (v8 > 0x3D)
    {
      if (v8 > 0x5A)
      {
        if (v8 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 62)
        {
          return (v4 - a1 + 1);
        }

        if (v8 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v8 > 0x2E)
    {
      if (v8 == 47)
      {
        goto LABEL_183;
      }

      if (v8 >= 0x3A)
      {
        return 0;
      }
    }

    else if (v8 != 45)
    {
      return 0;
    }

    v9 = *++v4;
    v8 = v9;
  }

  do
  {
    do
    {
LABEL_165:
      v46 = *++v4;
      v13 = v46;
    }

    while ((_scan_html_tag_yybm[v46] & 8) != 0);
    if (v13 <= 0x3E)
    {
      if (v13 > 0x39)
      {
        if (v13 != 58)
        {
          if (v13 != 62)
          {
            return 0;
          }

          return (v4 - a1 + 1);
        }

        goto LABEL_46;
      }

      v15 = v13 == 47;
      goto LABEL_181;
    }

    if (v13 <= 0x5E)
    {
      if (v13 - 65 >= 0x1A)
      {
        return 0;
      }

      goto LABEL_46;
    }

LABEL_70:
    v14 = 0;
    if (v13 == 96 || v13 >= 0x7B)
    {
      return v14;
    }

    while (1)
    {
      do
      {
LABEL_46:
        v10 = v4;
        v12 = *++v4;
        v11 = v12;
      }

      while ((_scan_html_tag_yybm[v12] & 0x10) != 0);
      if (v11 > 0x2C)
      {
        break;
      }

      if (v11 > 0xD)
      {
        if (v11 != 32)
        {
          return 0;
        }
      }

      else if (v11 < 9)
      {
        return 0;
      }

      v4 = v10 + 2;
      while (1)
      {
        v13 = *v4;
        if (v13 > 0x3C)
        {
          break;
        }

        if (v13 > 0x20)
        {
          v15 = v13 == 47;
          if (v13 > 0x2F)
          {
            v14 = 0;
            if (v13 != 58)
            {
              return v14;
            }

            goto LABEL_46;
          }

LABEL_181:
          if (!v15)
          {
            return 0;
          }

LABEL_183:
          v48 = v4[1];
          LODWORD(v4) = v4 + 1;
          v47 = v48;
LABEL_184:
          if (v47 == 62)
          {
            return (v4 - a1 + 1);
          }

          return 0;
        }

        if (v13 >= 9)
        {
          ++v4;
          if (v13 < 0xE || v13 == 32)
          {
            continue;
          }
        }

        return 0;
      }

      if (v13 > 0x5A)
      {
        if (v13 <= 0x5F)
        {
          v14 = 0;
          if (v13 != 95)
          {
            return v14;
          }

          goto LABEL_46;
        }

        goto LABEL_70;
      }

      if (v13 == 61)
      {
        goto LABEL_75;
      }

      if (v13 < 0x3F)
      {
        return (v4 - a1 + 1);
      }

      v14 = 0;
      if (v13 < 0x41)
      {
        return v14;
      }
    }

    if (v11 <= 0x3C)
    {
      if (v11 >= 0x30)
      {
        return 0;
      }

      goto LABEL_183;
    }

    if (v11 != 61)
    {
      if (v11 >= 0x3F)
      {
        return 0;
      }

      return (v4 - a1 + 1);
    }

LABEL_75:
    ++v4;
    do
    {
      v16 = *v4;
      if ((_scan_html_tag_yybm[*v4] & 0x20) != 0)
      {
        while (1)
        {
          do
          {
            v44 = *++v4;
            v16 = v44;
          }

          while ((_scan_html_tag_yybm[v44] & 0x20) != 0);
          v30 = v4 - 1;
          if (v16 > 0xE0)
          {
            goto LABEL_147;
          }

          if (v16 <= 0x3D)
          {
            break;
          }

          if (v16 == 62)
          {
            return (v4 - a1 + 1);
          }

          if (v16 < 0xC2)
          {
            return 0;
          }

          if (v16 == 224)
          {
            goto LABEL_140;
          }

LABEL_141:
          v43 = *++v4;
          if (v43 > -65)
          {
            return 0;
          }
        }

        v14 = 0;
        if (v16 - 1 >= 0x20)
        {
          return v14;
        }

        goto LABEL_165;
      }

      if (v16 > 0xE0)
      {
        v30 = v4 - 1;
LABEL_147:
        if (v16 > 0xEF)
        {
          if (v16 == 240)
          {
            v4 = v30 + 2;
            if (v30[2] - 144 >= 0x30)
            {
              return 0;
            }
          }

          else if (v16 >= 0xF4)
          {
            if (v16 != 244)
            {
              return 0;
            }

            v4 = v30 + 2;
            if (v30[2] >= -112)
            {
              return 0;
            }
          }

          else
          {
            v4 = v30 + 2;
            if (v30[2] >= -64)
            {
              return 0;
            }
          }
        }

        else if (v16 == 237)
        {
          v4 = v30 + 2;
          if (v30[2] >= -96)
          {
            return 0;
          }

          goto LABEL_141;
        }

        v45 = *++v4;
        if (v45 >= -64)
        {
          return 0;
        }

        goto LABEL_141;
      }

      if (v16 > 0x22)
      {
        if (v16 > 0x27)
        {
          if (v16 < 0xC2)
          {
            return 0;
          }

          if (v16 != 224)
          {
            goto LABEL_141;
          }

          v30 = v4 - 1;
LABEL_140:
          v4 = v30 + 2;
          if ((v30[2] & 0xE0) != 0xA0)
          {
            return 0;
          }

          goto LABEL_141;
        }

        do
        {
LABEL_108:
          v18 = v4;
          v32 = *++v4;
          v31 = v32;
        }

        while (_scan_html_tag_yybm[v32] < 0);
        if (v31 > 0xEC)
        {
          if (v31 > 0xF0)
          {
            if (v31 >= 0xF4)
            {
              if (v31 != 244)
              {
                return 0;
              }

              v38 = v18[2];
              v35 = v18 + 2;
              if (v38 >= -112)
              {
                return 0;
              }
            }

            else
            {
              v37 = v18[2];
              v35 = v18 + 2;
              if (v37 >= -64)
              {
                return 0;
              }
            }
          }

          else
          {
            if (v31 == 237)
            {
              v40 = v18[2];
              v33 = v18 + 2;
              if (v40 >= -96)
              {
                return 0;
              }

              goto LABEL_129;
            }

            if (v31 != 240)
            {
              goto LABEL_126;
            }

            v36 = v18[2];
            v35 = v18 + 2;
            if ((v36 - 144) >= 0x30)
            {
              return 0;
            }
          }

          v4 = v35;
        }

        else
        {
          if (v31 <= 0xC1)
          {
            if (v31 - 1 >= 0x27)
            {
              return 0;
            }

            goto LABEL_138;
          }

          if (v31 < 0xE0)
          {
            goto LABEL_130;
          }

          if (v31 == 224)
          {
            v34 = v18[2];
            v33 = v18 + 2;
            if ((v34 & 0xE0) != 0xA0)
            {
              return 0;
            }

LABEL_129:
            v4 = v33;
LABEL_130:
            v14 = 0;
            v41 = *++v4;
            if (v41 >= -64)
            {
              return v14;
            }

            goto LABEL_108;
          }
        }

LABEL_126:
        v39 = *++v4;
        if (v39 >= -64)
        {
          return 0;
        }

        goto LABEL_130;
      }

      if (!*v4)
      {
        return 0;
      }

      ++v4;
    }

    while (v16 < 0x21);
    v17 = v4 - 1;
    while (1)
    {
      do
      {
        v18 = v17;
        v20 = *++v17;
        v19 = v20;
      }

      while ((_scan_html_tag_yybm[v20] & 0x40) != 0);
      if (v19 > 0xEC)
      {
        if (v19 > 0xF0)
        {
          if (v19 >= 0xF4)
          {
            if (v19 != 244)
            {
              return 0;
            }

            v26 = v18[2];
            v23 = v18 + 2;
            if (v26 >= -112)
            {
              return 0;
            }
          }

          else
          {
            v25 = v18[2];
            v23 = v18 + 2;
            if (v25 >= -64)
            {
              return 0;
            }
          }

LABEL_99:
          v17 = v23;
LABEL_100:
          v27 = *++v17;
          if (v27 >= -64)
          {
            return 0;
          }

          goto LABEL_104;
        }

        if (v19 != 237)
        {
          if (v19 == 240)
          {
            v24 = v18[2];
            v23 = v18 + 2;
            if ((v24 - 144) >= 0x30)
            {
              return 0;
            }

            goto LABEL_99;
          }

          goto LABEL_100;
        }

        v28 = v18[2];
        v21 = v18 + 2;
        if (v28 >= -96)
        {
          return 0;
        }

        goto LABEL_103;
      }

      if (v19 <= 0xC1)
      {
        break;
      }

      if (v19 >= 0xE0)
      {
        if (v19 != 224)
        {
          goto LABEL_100;
        }

        v22 = v18[2];
        v21 = v18 + 2;
        if ((v22 & 0xE0) != 0xA0)
        {
          return 0;
        }

LABEL_103:
        v17 = v21;
      }

LABEL_104:
      v14 = 0;
      v29 = *++v17;
      if (v29 >= -64)
      {
        return v14;
      }
    }

    if (v19 - 1 >= 0x22)
    {
      return 0;
    }

LABEL_138:
    v42 = v18[2];
    v4 = v18 + 2;
  }

  while ((_scan_html_tag_yybm[v18[2]] & 8) != 0);
  if (v42 == 47)
  {
    goto LABEL_183;
  }

  if (v42 != 62)
  {
    return 0;
  }

  return (v4 - a1 + 1);
}

uint64_t _scan_liberal_html_tag(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xE0)
  {
    if (v1 <= 0xEF)
    {
      v3 = a1 + 1;
      v4 = a1[1];
      if (v1 == 237)
      {
        v5 = 0;
        v6 = a1 + 1;
        if (v4 < -96)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v5 = 0;
        v6 = a1 + 1;
        if (v4 < -64)
        {
          goto LABEL_77;
        }
      }

      return v5;
    }

    if (v1 == 240)
    {
      v5 = 0;
      v3 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v5;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v5 = 0;
      v3 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0;
      v3 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v5;
      }
    }

LABEL_75:
    v6 = v3;
    goto LABEL_76;
  }

  if (v1 <= 0xA)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if ((v1 & 0x80) != 0)
  {
    if (v1 >= 0xC2)
    {
      v3 = a1 + 1;
      v8 = a1[1];
      if (v1 == 224)
      {
        v5 = 0;
        v6 = a1 + 1;
        if ((v8 & 0xE0) == 0xA0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v5 = 0;
        v6 = a1 + 1;
        if (v8 < -64)
        {
          goto LABEL_38;
        }
      }

      return v5;
    }

    return 0;
  }

LABEL_13:
  v3 = a1 + 1;
  v7 = a1[1];
  if (v7 <= 0xA)
  {
    v5 = 0;
    if (a1[1])
    {
      v6 = a1 + 1;
      if (v7 != 10)
      {
        goto LABEL_39;
      }
    }

    return v5;
  }

  v5 = 0;
  if ((v7 & 0x80) == 0)
  {
    v6 = a1 + 1;
    goto LABEL_39;
  }

  v6 = a1 + 1;
  if (v7 - 194 >= 0x33)
  {
    return v5;
  }

  while (1)
  {
LABEL_39:
    if ((_scan_liberal_html_tag_yybm[v7] & 0x40) != 0)
    {
      goto LABEL_38;
    }

    if (v7 > 0xEC)
    {
      if (v7 <= 0xF0)
      {
        if (v7 == 237)
        {
          goto LABEL_65;
        }

        if (v7 != 240)
        {
          goto LABEL_76;
        }

        goto LABEL_52;
      }

      if (v7 < 0xF4)
      {
LABEL_55:
        v12 = *++v3;
        if (v12 >= -64)
        {
          break;
        }

        goto LABEL_76;
      }

      if (v7 != 244)
      {
        break;
      }

      goto LABEL_58;
    }

    if (v7 <= 0xC1)
    {
      if (v7 - 11 > 0x33)
      {
        break;
      }

      for (i = v3 + 1; ; ++i)
      {
        v3 = i;
        v7 = *i;
        if ((_scan_liberal_html_tag_yybm[*i] & 0x40) != 0)
        {
          v5 = 1;
          v6 = v3;
          goto LABEL_38;
        }

        if (v7 > 0xEC)
        {
          break;
        }

        if (v7 > 0xC1)
        {
          v5 = 1;
          v6 = v3;
          goto LABEL_68;
        }

        if (v7 - 11 >= 0x34)
        {
          return (v3 - a1);
        }
      }

      v5 = 1;
      if (v7 <= 0xF0)
      {
        if (v7 != 240)
        {
          if (v7 != 237)
          {
            goto LABEL_75;
          }

          v6 = v3;
LABEL_65:
          v14 = *++v3;
          if (v14 >= -96)
          {
            break;
          }

          goto LABEL_77;
        }

        v6 = v3;
LABEL_52:
        v11 = *++v3;
        if ((v11 - 144) >= 0x30)
        {
          break;
        }

        goto LABEL_76;
      }

      v6 = v3;
      if (v7 < 0xF4)
      {
        goto LABEL_55;
      }

      if (v7 != 244)
      {
        return (v3 - a1);
      }

LABEL_58:
      v13 = *++v3;
      if (v13 >= -112)
      {
        break;
      }

      goto LABEL_76;
    }

LABEL_68:
    if (v7 < 0xE0)
    {
      goto LABEL_77;
    }

    if (v7 == 224)
    {
      v15 = *++v3;
      if ((v15 & 0xE0) != 0xA0)
      {
        break;
      }

      goto LABEL_77;
    }

LABEL_76:
    v16 = *++v3;
    if (v16 >= -64)
    {
      break;
    }

LABEL_77:
    v17 = *++v3;
    if (v17 >= -64)
    {
      break;
    }

LABEL_38:
    v9 = *++v3;
    v7 = v9;
  }

  LODWORD(v3) = v6;
  if (!v5)
  {
    return v5;
  }

  return (v3 - a1);
}

uint64_t _scan_html_comment(_BYTE *a1)
{
  if (*a1 != 45)
  {
    return 0;
  }

  v1 = a1 + 1;
  if (a1[1] != 45)
  {
    return 0;
  }

  do
  {
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            v2 = v1;
            v4 = *++v1;
            LODWORD(v3) = v4;
          }

          while (_scan_html_comment_yybm[v4] < 0);
          if (v3 > 0xEC)
          {
LABEL_16:
            if (v3 > 0xF0)
            {
              goto LABEL_34;
            }

            if (v3 != 237)
            {
              if (v3 == 240)
              {
LABEL_19:
                v5 = *++v1;
                if ((v5 - 144) >= 0x30)
                {
                  return 0;
                }
              }

LABEL_39:
              v10 = *++v1;
              if (v10 >= -64)
              {
                return 0;
              }

              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v3 <= 0xC1)
          {
            break;
          }

LABEL_21:
          if (v3 >= 0xE0)
          {
            if (v3 != 224)
            {
              goto LABEL_39;
            }

LABEL_23:
            v6 = *++v1;
            if ((v6 & 0xE0) != 0xA0)
            {
              return 0;
            }
          }

LABEL_40:
          v11 = *++v1;
          if (v11 >= -64)
          {
            return 0;
          }
        }

        if ((v3 - 1) >= 0x2D)
        {
          return 0;
        }

        v1 = v2 + 2;
        LODWORD(v3) = v2[2];
      }

      while (_scan_html_comment_yybm[v2[2]] < 0);
      if (v3 > 0xEC)
      {
        goto LABEL_16;
      }

      if (v3 > 0xC1)
      {
        goto LABEL_21;
      }

      if ((v3 - 1) >= 0x2D)
      {
        return 0;
      }

      v1 = v2 + 3;
      v3 = v2[3];
      if (v3 > 0xE0)
      {
        if (v3 > 0xEF)
        {
          if (v3 == 240)
          {
            goto LABEL_19;
          }

LABEL_34:
          if (v3 >= 0xF4)
          {
            if (v3 != 244)
            {
              return 0;
            }

            v9 = *++v1;
            if (v9 >= -112)
            {
              return 0;
            }
          }

          else
          {
            v8 = *++v1;
            if (v8 >= -64)
            {
              return 0;
            }
          }

          goto LABEL_39;
        }

        if (v3 != 237)
        {
          goto LABEL_39;
        }

LABEL_27:
        v7 = *++v1;
        if (v7 >= -96)
        {
          return 0;
        }

        goto LABEL_40;
      }

      if (v3 <= 0x3E)
      {
        break;
      }

      if ((v3 & 0x80) != 0)
      {
        if (v3 < 0xC2)
        {
          return 0;
        }

        if (v3 != 224)
        {
          goto LABEL_40;
        }

        goto LABEL_23;
      }
    }

    if (!v2[3])
    {
      return v3;
    }
  }

  while (v3 != 62);
  return (v2 - a1 + 4);
}

uint64_t _scan_html_pi(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1;
  if (_scan_html_pi_yybm[*a1] < 0)
  {
    goto LABEL_35;
  }

  if (v1 > 0xEC)
  {
    if (v1 > 0xF0)
    {
      if (v1 >= 0xF4)
      {
        if (v1 != 244)
        {
          return 0;
        }

        v2 = a1 + 1;
        if (a1[1] >= -112)
        {
          return 0;
        }
      }

      else
      {
        v2 = a1 + 1;
        if (a1[1] >= -64)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v1 == 237)
      {
        v2 = a1 + 1;
        if (a1[1] >= -96)
        {
          return 0;
        }

LABEL_29:
        i = 1;
        LODWORD(v5) = v2;
        goto LABEL_73;
      }

      if (v1 != 240)
      {
LABEL_23:
        v2 = a1 + 1;
        if (a1[1] >= -64)
        {
          return 0;
        }

        goto LABEL_29;
      }

      v2 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return 0;
      }
    }

    i = 1;
    LODWORD(v5) = v2;
    goto LABEL_72;
  }

  if (v1 > 0xC1)
  {
    if (v1 < 0xE0)
    {
      v2 = a1 + 1;
      if (a1[1] < -64)
      {
        goto LABEL_35;
      }

      return 0;
    }

    if (v1 == 224)
    {
      v2 = a1 + 1;
      if ((a1[1] & 0xE0) != 0xA0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v1 - 1 >= 0x3F)
  {
    return 0;
  }

  v2 = a1 + 1;
  v3 = a1[1];
  if (v3 > 0x3F)
  {
    i = 1;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    v5 = a1 + 1;
    if (v3 - 194 < 0x33)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!a1[1])
  {
    return 0;
  }

  if (v3 >= 0x3E)
  {
    if (v3 == 63)
    {
      goto LABEL_35;
    }

    return 0;
  }

  for (i = 1; ; i = 0)
  {
LABEL_36:
    v5 = v2;
LABEL_37:
    if (_scan_html_pi_yybm[v3] < 0)
    {
      v2 = v5;
      goto LABEL_35;
    }

    if (v3 > 0xEC)
    {
      v2 = v5;
      if (v3 <= 0xF0)
      {
        if (v3 == 237)
        {
          goto LABEL_64;
        }

        v2 = v5;
        if (v3 != 240)
        {
          goto LABEL_58;
        }

        goto LABEL_71;
      }

      if (v3 < 0xF4)
      {
        goto LABEL_56;
      }

      v2 = v5;
      if (v3 != 244)
      {
        return (v5 - a1);
      }

LABEL_60:
      v11 = *++v2;
      if (v11 >= -112)
      {
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    if (v3 > 0xC1)
    {
      v2 = v5;
      if (v3 < 0xE0)
      {
        goto LABEL_73;
      }

      if (v3 == 224)
      {
        goto LABEL_53;
      }

LABEL_58:
      v2 = v5;
      goto LABEL_72;
    }

    if (v3 - 1 >= 0x3F)
    {
      return (v5 - a1);
    }

    v2 = v5 + 1;
    v8 = v5[1];
    if (v8 <= 0xE0)
    {
      break;
    }

    if (v8 > 0xEF)
    {
      if (v8 == 240)
      {
LABEL_71:
        v13 = *++v2;
        if ((v13 - 144) >= 0x30)
        {
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      if (v8 < 0xF4)
      {
LABEL_56:
        v10 = *++v2;
        if (v10 >= -64)
        {
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      if (v8 != 244)
      {
        goto LABEL_74;
      }

      goto LABEL_60;
    }

    if (v8 == 237)
    {
LABEL_64:
      v12 = *++v2;
      if (v12 >= -96)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

LABEL_72:
    v14 = *++v2;
    if (v14 >= -64)
    {
      goto LABEL_74;
    }

LABEL_73:
    v15 = *++v2;
    if (v15 >= -64)
    {
      goto LABEL_74;
    }

LABEL_35:
    v7 = *++v2;
    v3 = v7;
  }

  if (v8 > 0x3E)
  {
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    if (v8 < 0xC2)
    {
      goto LABEL_74;
    }

    if (v8 != 224)
    {
      goto LABEL_73;
    }

LABEL_53:
    v9 = *++v2;
    if ((v9 & 0xE0) != 0xA0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v5[1] && v8 != 62)
  {
    goto LABEL_35;
  }

LABEL_74:
  if (i)
  {
    return 0;
  }

  return (v5 - a1);
}

uint64_t _scan_html_declaration(unsigned __int8 *a1)
{
  if (*a1 - 65 > 0x19)
  {
    return 0;
  }

  v2 = a1 + 1;
  for (i = a1[1]; _scan_html_declaration_yybm[i] < 0; i = v3)
  {
    v3 = *++v2;
  }

  if (i < 9 || i >= 0xE && i != 32)
  {
    return 0;
  }

  while (1)
  {
    do
    {
      v5 = v2;
      v6 = v2 + 1;
      v7 = v2[1];
      v8 = _scan_html_declaration_yybm[*++v2];
    }

    while ((v8 & 0x40) != 0);
    if (v7 > 0xED)
    {
      break;
    }

    if (v7 > 0xDF)
    {
      if (v7 == 224)
      {
        v18 = v5[2];
        v13 = v5 + 2;
        if ((v18 & 0xE0) != 0xA0)
        {
          return (v6 - a1);
        }
      }

      else
      {
        v10 = v6;
        if (v7 != 237)
        {
          goto LABEL_28;
        }

        v14 = v5[2];
        v13 = v5 + 2;
        if (v14 >= -96)
        {
          return (v6 - a1);
        }
      }

      v9 = v13;
    }

    else
    {
      v9 = v6;
      if (v7 <= 0xC1)
      {
        return (v6 - a1);
      }
    }

LABEL_32:
    v19 = v9[1];
    v2 = v9 + 1;
    if (v19 >= -64)
    {
      return (v6 - a1);
    }
  }

  if (v7 <= 0xF0)
  {
    v10 = v6;
    if (v7 != 240)
    {
      goto LABEL_28;
    }

    v12 = v5[2];
    v11 = v5 + 2;
    if ((v12 - 144) >= 0x30)
    {
      return (v6 - a1);
    }

    goto LABEL_27;
  }

  if (v7 < 0xF4)
  {
    v15 = v5[2];
    v11 = v5 + 2;
    if (v15 >= -64)
    {
      return (v6 - a1);
    }

    goto LABEL_27;
  }

  if (v7 == 244)
  {
    v16 = v5[2];
    v11 = v5 + 2;
    if (v16 < -112)
    {
LABEL_27:
      v10 = v11;
LABEL_28:
      v17 = v10[1];
      v9 = v10 + 1;
      if (v17 >= -64)
      {
        return (v6 - a1);
      }

      goto LABEL_32;
    }
  }

  return (v6 - a1);
}

uint64_t _scan_html_cdata(_BYTE *a1)
{
  if ((*a1 & 0xDF) != 0x43)
  {
    return 0;
  }

  if ((a1[1] & 0xDF) != 0x44)
  {
    return 0;
  }

  if ((a1[2] & 0xDF) != 0x41)
  {
    return 0;
  }

  if ((a1[3] & 0xDF) != 0x54)
  {
    return 0;
  }

  if ((a1[4] & 0xDF) != 0x41)
  {
    return 0;
  }

  v1 = a1 + 5;
  if (a1[5] != 91)
  {
    return 0;
  }

  while (1)
  {
    do
    {
      v2 = v1;
      v3 = v1 + 1;
      v4 = v1[1];
      v5 = _scan_html_cdata_yybm[*++v1];
    }

    while (v5 < 0);
    if (v4 > 0xEC)
    {
      break;
    }

    if (v4 > 0xC1)
    {
      v1 = v3;
      v7 = v4 == 224;
      if (v4 >= 0xE0)
      {
        v1 = v3;
LABEL_28:
        if (!v7)
        {
          goto LABEL_39;
        }

LABEL_30:
        v8 = *++v1;
        if ((v8 & 0xE0) != 0xA0)
        {
          return (v3 - a1);
        }
      }

LABEL_40:
      v13 = *++v1;
      if (v13 >= -64)
      {
        return (v3 - a1);
      }
    }

    else
    {
      if (v4 - 1 >= 0x5D)
      {
        return (v3 - a1);
      }

      v1 = v2 + 2;
      v4 = v2[2];
      if ((_scan_html_cdata_yybm[v2[2]] & 0x80000000) == 0)
      {
        if (v4 > 0xEC)
        {
          if (v4 > 0xF0)
          {
            goto LABEL_56;
          }

          if (v4 != 237)
          {
            goto LABEL_23;
          }

LABEL_49:
          v14 = *++v1;
          if (v14 >= -96)
          {
            return (v3 - a1);
          }

          goto LABEL_40;
        }

        if (v4 > 0xC1)
        {
          v7 = v4 == 224;
          if (v4 >= 0xE0)
          {
            goto LABEL_28;
          }

          goto LABEL_40;
        }

        if (v4 - 1 >= 0x5D)
        {
          return (v3 - a1);
        }

        v4 = v2[3];
        v1 = v2 + 3;
        if (v4 > 0xE0)
        {
          if (v4 > 0xEF)
          {
            if (v4 != 240)
            {
LABEL_56:
              v9 = v4 == 244;
              if (v4 >= 0xF4)
              {
                goto LABEL_36;
              }

LABEL_33:
              v10 = *++v1;
              if (v10 >= -64)
              {
                return (v3 - a1);
              }

              goto LABEL_39;
            }

LABEL_24:
            v6 = *++v1;
            if ((v6 - 144) >= 0x30)
            {
              return (v3 - a1);
            }

            goto LABEL_39;
          }

          if (v4 != 237)
          {
            goto LABEL_39;
          }

          goto LABEL_49;
        }

        if (v4 > 0x3E)
        {
          if ((v4 & 0x80) != 0)
          {
            if (v4 < 0xC2)
            {
              return (v3 - a1);
            }

            if (v4 == 224)
            {
              goto LABEL_30;
            }

            goto LABEL_40;
          }
        }

        else if (!v2[3] || v4 == 62)
        {
          return (v3 - a1);
        }
      }
    }
  }

  v1 = v3;
  if (v4 <= 0xF0)
  {
    if (v4 != 237)
    {
      v1 = v3;
LABEL_23:
      if (v4 != 240)
      {
        goto LABEL_39;
      }

      goto LABEL_24;
    }

    goto LABEL_49;
  }

  v9 = v4 == 244;
  if (v4 < 0xF4)
  {
    goto LABEL_33;
  }

  v1 = v3;
LABEL_36:
  if (v9)
  {
    v11 = *++v1;
    if (v11 < -112)
    {
LABEL_39:
      v12 = *++v1;
      if (v12 >= -64)
      {
        return (v3 - a1);
      }

      goto LABEL_40;
    }
  }

  return (v3 - a1);
}

uint64_t _scan_html_block_start(unsigned __int8 *a1)
{
  if (*a1 != 60)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
  switch(a1[1])
  {
    case '/':
      result = 0;
      v3 = a1 + 2;
      switch(a1[2])
      {
        case 'A':
        case 'a':
          goto LABEL_3;
        case 'B':
        case 'b':
          goto LABEL_59;
        case 'C':
        case 'c':
          goto LABEL_92;
        case 'D':
        case 'd':
          goto LABEL_84;
        case 'F':
        case 'f':
          goto LABEL_76;
        case 'H':
        case 'h':
          goto LABEL_68;
        case 'I':
        case 'i':
          goto LABEL_63;
        case 'L':
        case 'l':
          goto LABEL_100;
        case 'M':
        case 'm':
          goto LABEL_96;
        case 'N':
        case 'n':
          goto LABEL_80;
        case 'O':
        case 'o':
          goto LABEL_72;
        case 'P':
        case 'p':
          v10 = a1 + 3;
          v11 = a1[3];
          if (v11 > 0x2F)
          {
            if (v11 <= 0x40)
            {
              goto LABEL_216;
            }

            if ((v11 & 0xFFFFFFDF) == 0x41)
            {
              v54 = 3;
              goto LABEL_221;
            }

            return 0;
          }

          if (v11 <= 0x1F)
          {
            v91 = v11 - 9;
            goto LABEL_404;
          }

          if (v11 != 32)
          {
            v85 = v11 == 47;
            goto LABEL_347;
          }

          return 6;
        case 'S':
        case 's':
          v92 = a1[3];
          v8 = a1 + 3;
          if (v92 > 0x55)
          {
            if (v92 <= 0x6E)
            {
              if (v92 == 101)
              {
                goto LABEL_229;
              }

              return 0;
            }

            if (v92 == 111)
            {
              goto LABEL_430;
            }

            if (v92 == 117)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v92 <= 0x4E)
            {
              if (v92 == 69)
              {
                goto LABEL_229;
              }

              return 0;
            }

            if (v92 == 79)
            {
              goto LABEL_430;
            }

            if (v92 == 85)
            {
              goto LABEL_48;
            }
          }

          return 0;
        case 'T':
        case 't':
          result = 0;
          v7 = a1[3];
          v6 = a1 + 3;
          if (v7 > 0x60)
          {
            if (a1[3] > 0x65u)
            {
              goto LABEL_391;
            }

            switch(v7)
            {
              case 'a':
                goto LABEL_442;
              case 'b':
                goto LABEL_43;
              case 'd':
                goto LABEL_341;
            }
          }

          else
          {
            if (a1[3] > 0x45u)
            {
              goto LABEL_373;
            }

            switch(v7)
            {
              case 'A':
                goto LABEL_442;
              case 'B':
                goto LABEL_43;
              case 'D':
                goto LABEL_341;
            }
          }

          break;
        case 'U':
        case 'u':
          goto LABEL_159;
        default:
          return result;
      }

      return result;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case ':':
    case ';':
    case '<':
    case '=':
    case '>':
    case '@':
    case 'E':
    case 'G':
    case 'J':
    case 'K':
    case 'Q':
    case 'R':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'e':
    case 'g':
    case 'j':
    case 'k':
    case 'q':
    case 'r':
      return result;
    case '?':
      return 3;
    case 'A':
    case 'a':
LABEL_3:
      v4 = v3[1];
      if (v4 > 0x53)
      {
        if (v4 > 0x71)
        {
          if (v4 != 114)
          {
            if (v4 >= 0x74)
            {
              return 0;
            }

LABEL_279:
            if ((v3[2] & 0xDF) == 0x49)
            {
              v75 = v3[3];
              v20 = v3 + 3;
              if ((v75 & 0xFFFFFFDF) == 0x44)
              {
                goto LABEL_445;
              }
            }

            return 0;
          }

LABEL_173:
          if ((v3[2] & 0xDF) == 0x54 && (v3[3] & 0xDF) == 0x49)
          {
            v49 = v3[4];
            v48 = v3 + 4;
            if ((v49 & 0xFFFFFFDF) == 0x43)
            {
              v50 = v48;
              goto LABEL_443;
            }
          }

          return 0;
        }

        v5 = v4 == 100;
      }

      else
      {
        v5 = v4 == 68;
        if (v4 > 0x44)
        {
          if (v4 < 0x52)
          {
            return 0;
          }

          if (v4 == 83)
          {
            goto LABEL_279;
          }

          goto LABEL_173;
        }
      }

      if (v5 && (v3[2] & 0xDF) == 0x44 && (v3[3] & 0xDF) == 0x52 && (v3[4] & 0xDF) == 0x45)
      {
        v14 = v3[5];
        v13 = v3 + 5;
        if ((v14 & 0xFFFFFFDF) == 0x53)
        {
          goto LABEL_241;
        }
      }

      return 0;
    case 'B':
    case 'b':
LABEL_59:
      v15 = v3 + 1;
      v17 = v3[1];
      if (v17 > 0x4F)
      {
        if (v17 <= 0x6B)
        {
          if (v17 != 97)
          {
            return 0;
          }

LABEL_122:
          if ((v3[2] & 0xDF) != 0x53 || (v3[3] & 0xDF) != 0x45)
          {
            return 0;
          }

          v10 = v3 + 4;
          v35 = v3[4];
          if (v35 <= 0x2F)
          {
            goto LABEL_206;
          }

          if (v35 > 0x45)
          {
            if ((v35 & 0xFFFFFFDF) == 0x46 && (v3[5] & 0xDF) == 0x4F)
            {
              v37 = v3[6];
              v36 = v3 + 6;
              if ((v37 & 0xFFFFFFDF) == 0x4E)
              {
                goto LABEL_277;
              }
            }

            return 0;
          }

          goto LABEL_350;
        }

        if (v17 != 108)
        {
          if (v17 != 111)
          {
            return 0;
          }

          goto LABEL_182;
        }
      }

      else
      {
        if (v17 <= 0x4B)
        {
          if (v17 != 65)
          {
            return 0;
          }

          goto LABEL_122;
        }

        if (v17 != 76)
        {
          goto LABEL_178;
        }
      }

      if ((v3[2] & 0xDF) == 0x4F && (v3[3] & 0xDF) == 0x43 && (v3[4] & 0xDF) == 0x4B && (v3[5] & 0xDF) == 0x51 && (v3[6] & 0xDF) == 0x55 && (v3[7] & 0xDF) == 0x4F)
      {
        v70 = v3[8];
        v20 = v3 + 8;
        if ((v70 & 0xFFFFFFDF) == 0x54)
        {
          goto LABEL_445;
        }
      }

      return 0;
    case 'C':
    case 'c':
LABEL_92:
      v8 = v3 + 1;
      v28 = v3[1];
      if (v28 <= 0x4F)
      {
        if (v28 <= 0x44)
        {
          if (v28 == 65)
          {
            goto LABEL_136;
          }

          return 0;
        }

        if (v28 != 69)
        {
          if (v28 != 79)
          {
            return 0;
          }

LABEL_197:
          if ((v3[2] & 0xDF) != 0x4C)
          {
            return 0;
          }

          v10 = v3 + 3;
          v35 = v3[3];
          if (v35 <= 0x2F)
          {
LABEL_212:
            if (v35 <= 0x1F)
            {
LABEL_403:
              v91 = v35 - 9;
LABEL_404:
              if (v91 < 5)
              {
                return 6;
              }

              return 0;
            }

            if (v35 == 32)
            {
              return 6;
            }

LABEL_418:
            v85 = v35 == 47;
LABEL_347:
            if (!v85)
            {
              return 0;
            }

LABEL_349:
            v35 = v10[1];
            goto LABEL_350;
          }

          if (v35 <= 0x46)
          {
            goto LABEL_350;
          }

          if ((v35 & 0xFFFFFFDF) != 0x47)
          {
            return 0;
          }

LABEL_321:
          if ((v3[4] & 0xDF) != 0x52)
          {
            return 0;
          }

          if ((v3[5] & 0xDF) != 0x4F)
          {
            return 0;
          }

          if ((v3[6] & 0xDF) != 0x55)
          {
            return 0;
          }

          v81 = v3[7];
          v38 = v3 + 7;
          if ((v81 & 0xFFFFFFDF) != 0x50)
          {
            return 0;
          }

          goto LABEL_160;
        }

        goto LABEL_265;
      }

      if (v28 > 0x64)
      {
        if (v28 != 101)
        {
          if (v28 != 111)
          {
            return 0;
          }

          goto LABEL_197;
        }

LABEL_265:
        v71 = (v3[2] & 0xDF) == 78;
        goto LABEL_312;
      }

      if (v28 != 97)
      {
        return 0;
      }

      goto LABEL_136;
    case 'D':
    case 'd':
LABEL_84:
      result = 0;
      v6 = v3 + 1;
      v26 = v3[1] - 68;
      if (v26 > 0x30)
      {
        return result;
      }

      if (((1 << v26) & 0x1010100010101) != 0)
      {
        goto LABEL_341;
      }

      if (((1 << v26) & 0x200000002) != 0)
      {
        if ((v3[2] & 0xDF) != 0x54)
        {
          return 0;
        }

        if ((v3[3] & 0xDF) != 0x41)
        {
          return 0;
        }

        if ((v3[4] & 0xDF) != 0x49)
        {
          return 0;
        }

        v62 = v3[5];
        v13 = v3 + 5;
        if ((v62 & 0xFFFFFFDF) != 0x4C)
        {
          return 0;
        }

        goto LABEL_241;
      }

      if (((1 << v26) & 0x2000000020) == 0)
      {
        return result;
      }

      v6 = v3 + 2;
      v27 = v3[2];
      if (v27 > 0x56)
      {
        if (v27 > 0x71)
        {
          if ((v27 & 0xFFFFFFFB) != 0x72)
          {
            return 0;
          }

          goto LABEL_341;
        }

        if (v27 != 97)
        {
          return 0;
        }
      }

      else
      {
        if (v27 > 0x51)
        {
          v22 = v27 & 0x7B;
          goto LABEL_338;
        }

        if (v27 != 65)
        {
          return 0;
        }
      }

      if ((v3[3] & 0xDF) == 0x4C && (v3[4] & 0xDF) == 0x4F)
      {
        v79 = v3[5];
        v38 = v3 + 5;
        if ((v79 & 0xFFFFFFDF) == 0x47)
        {
          goto LABEL_160;
        }
      }

      return 0;
    case 'F':
    case 'f':
LABEL_76:
      v24 = v3[1];
      if (v24 > 0x52)
      {
        if (v24 <= 0x6E)
        {
          if (v24 != 105)
          {
            return 0;
          }

          goto LABEL_116;
        }

        if (v24 != 111)
        {
          if (v24 != 114)
          {
            return 0;
          }

LABEL_166:
          if ((v3[2] & 0xDF) != 0x41 || (v3[3] & 0xDF) != 0x4D || (v3[4] & 0xDF) != 0x45)
          {
            return 0;
          }

          v10 = v3 + 5;
          v35 = v3[5];
          if (v35 <= 0x2F)
          {
            goto LABEL_206;
          }

          if (v35 > 0x52)
          {
            goto LABEL_275;
          }

LABEL_350:
          if (v35 == 62)
          {
            return 6;
          }

          return 0;
        }
      }

      else
      {
        if (v24 <= 0x4E)
        {
          if (v24 != 73)
          {
            return 0;
          }

LABEL_116:
          v34 = v3[2];
          if (v34 > 0x47)
          {
            if (v34 > 0x65)
            {
              if (v34 != 103)
              {
                return 0;
              }

              goto LABEL_327;
            }

            if (v34 != 101)
            {
              return 0;
            }
          }

          else if (v34 != 69)
          {
            if (v34 != 71)
            {
              return 0;
            }

LABEL_327:
            v82 = v3[3];
            if (v82 > 0x55)
            {
              if (v82 > 0x63)
              {
                if (v82 != 117)
                {
                  return 0;
                }

LABEL_385:
                v93 = v3[4];
                v20 = v3 + 4;
                if ((v93 & 0xFFFFFFDF) == 0x52)
                {
                  goto LABEL_445;
                }

                return 0;
              }

              if (v82 != 99)
              {
                return 0;
              }
            }

            else if (v82 != 67)
            {
              if (v82 != 85)
              {
                return 0;
              }

              goto LABEL_385;
            }

            v88 = v3[4];
            v87 = v3 + 4;
            if ((v88 & 0xFFFFFFDF) != 0x41)
            {
              return 0;
            }

            v8 = v87;
LABEL_136:
            if ((v8[1] & 0xDF) != 0x50)
            {
              return 0;
            }

LABEL_230:
            if ((v8[2] & 0xDF) != 0x54)
            {
              return 0;
            }

            v58 = v8[3];
            v33 = v8 + 3;
            v32 = v58 & 0xFFFFFFDF;
LABEL_232:
            if (v32 != 73)
            {
              return 0;
            }

LABEL_233:
            v60 = v33[1];
            v59 = v33 + 1;
            if ((v60 & 0xFFFFFFDF) != 0x4F)
            {
              return 0;
            }

            v40 = v59;
LABEL_235:
            v61 = v40[1];
            v38 = v40 + 1;
            if ((v61 & 0xFFFFFFDF) != 0x4E)
            {
              return 0;
            }

LABEL_160:
            v6 = v38;
            goto LABEL_341;
          }

          if ((v3[3] & 0xDF) != 0x4C || (v3[4] & 0xDF) != 0x44)
          {
            return 0;
          }

          v35 = v3[5];
LABEL_275:
          if ((v35 & 0xFFFFFFDF) == 0x53)
          {
            v73 = v3[6];
            v36 = v3 + 6;
            if ((v73 & 0xFFFFFFDF) == 0x45)
            {
LABEL_277:
              v74 = v36;
              goto LABEL_408;
            }
          }

          return 0;
        }

        if (v24 != 79)
        {
          if (v24 != 82)
          {
            return 0;
          }

          goto LABEL_166;
        }
      }

      v56 = v3 + 2;
      v69 = v3[2];
      if (v69 <= 0x52)
      {
        if (v69 != 79)
        {
          if (v69 == 82)
          {
            goto LABEL_355;
          }

          return 0;
        }

        goto LABEL_314;
      }

      v71 = v69 == 111;
      if (v69 <= 0x6F)
      {
LABEL_312:
        if (!v71)
        {
          return 0;
        }

LABEL_314:
        if ((v3[3] & 0xDF) != 0x54)
        {
          return 0;
        }

        v35 = v3[4];
LABEL_316:
        if ((v35 & 0xFFFFFFDF) != 0x45)
        {
          return 0;
        }

        v80 = v3[5];
        v38 = v3 + 5;
        if ((v80 & 0xFFFFFFDF) != 0x52)
        {
          return 0;
        }

        goto LABEL_160;
      }

      if (v69 != 114)
      {
        return 0;
      }

LABEL_355:
      v86 = v56[1];
      v6 = v56 + 1;
      if ((v86 & 0xFFFFFFDF) != 0x4D)
      {
        return 0;
      }

      goto LABEL_341;
    case 'H':
    case 'h':
LABEL_68:
      v6 = v3 + 1;
      v22 = v3[1];
      if (v22 <= 0x53)
      {
        if (v22 <= 0x44)
        {
          if (v22 - 49 < 6)
          {
            goto LABEL_341;
          }

          return 0;
        }

        if (v22 != 69)
        {
LABEL_338:
          v31 = v22 == 82;
          goto LABEL_339;
        }

LABEL_151:
        if ((v3[2] & 0xDF) != 0x41 || (v3[3] & 0xDF) != 0x44)
        {
          return 0;
        }

        v10 = v3 + 4;
        v35 = v3[4];
        if (v35 <= 0x2F)
        {
          goto LABEL_206;
        }

        if (v35 > 0x44)
        {
          goto LABEL_316;
        }

        goto LABEL_350;
      }

      if (v22 > 0x71)
      {
        if (v22 == 114)
        {
          goto LABEL_341;
        }

        if (v22 != 116)
        {
          return 0;
        }
      }

      else if (v22 != 84)
      {
        if (v22 != 101)
        {
          return 0;
        }

        goto LABEL_151;
      }

      v46 = v3[2];
      v3 += 2;
      if ((v46 & 0xFFFFFFDF) != 0x4D)
      {
        return 0;
      }

LABEL_159:
      v47 = v3[1];
      v38 = v3 + 1;
      if ((v47 & 0xFFFFFFDF) != 0x4C)
      {
        return 0;
      }

      goto LABEL_160;
    case 'I':
    case 'i':
LABEL_63:
      if ((v3[1] & 0xDF) != 0x46)
      {
        return 0;
      }

      if ((v3[2] & 0xDF) != 0x52)
      {
        return 0;
      }

      if ((v3[3] & 0xDF) != 0x41)
      {
        return 0;
      }

      v21 = v3[4];
      v20 = v3 + 4;
      if ((v21 & 0xFFFFFFDF) != 0x4D)
      {
        return 0;
      }

      goto LABEL_445;
    case 'L':
    case 'l':
LABEL_100:
      v30 = v3[1];
      if (v30 > 0x49)
      {
        if (v30 > 0x65)
        {
          if (v30 != 105)
          {
            return 0;
          }

          goto LABEL_211;
        }

        if (v30 != 101)
        {
          return 0;
        }
      }

      else if (v30 != 69)
      {
        if (v30 != 73)
        {
          return 0;
        }

LABEL_211:
        v10 = v3 + 2;
        v35 = v3[2];
        if (v35 <= 0x2F)
        {
          goto LABEL_212;
        }

        if (v35 <= 0x4D)
        {
          goto LABEL_350;
        }

        if ((v35 & 0xFFFFFFDF) != 0x4E)
        {
          return 0;
        }

LABEL_268:
        v72 = v3[3];
        v38 = v3 + 3;
        if ((v72 & 0xFFFFFFDF) != 0x4B)
        {
          return 0;
        }

        goto LABEL_160;
      }

      if ((v3[2] & 0xDF) == 0x47 && (v3[3] & 0xDF) == 0x45)
      {
        v43 = v3[4];
        v42 = v3 + 4;
        if ((v43 & 0xFFFFFFDF) == 0x4E)
        {
          v44 = v42;
          goto LABEL_148;
        }
      }

      return 0;
    case 'M':
    case 'm':
LABEL_96:
      v29 = v3[1];
      if (v29 > 0x45)
      {
        if (v29 > 0x61)
        {
          if (v29 != 101)
          {
            return 0;
          }

LABEL_203:
          if ((v3[2] & 0xDF) != 0x4E || (v3[3] & 0xDF) != 0x55)
          {
            return 0;
          }

          v10 = v3 + 4;
          v35 = v3[4];
          if (v35 > 0x2F)
          {
            if (v35 <= 0x48)
            {
              goto LABEL_350;
            }

            if ((v35 & 0xFFFFFFDF) == 0x49 && (v3[5] & 0xDF) == 0x54)
            {
              v90 = v3[6];
              v89 = v3 + 6;
              if ((v90 & 0xFFFFFFDF) == 0x45)
              {
                v56 = v89;
                goto LABEL_355;
              }
            }

            return 0;
          }

LABEL_206:
          if (v35 <= 0x1F)
          {
            goto LABEL_403;
          }

          if (v35 != 32)
          {
            if (v35 == 47)
            {
              goto LABEL_349;
            }

            return 0;
          }

          return 6;
        }

        if (v29 != 97)
        {
          return 0;
        }
      }

      else if (v29 != 65)
      {
        if (v29 != 69)
        {
          return 0;
        }

        goto LABEL_203;
      }

      v41 = v3[2];
      v40 = v3 + 2;
      if ((v41 & 0xFFFFFFDF) == 0x49)
      {
        goto LABEL_235;
      }

      return 0;
    case 'N':
    case 'n':
LABEL_80:
      v25 = v3[1];
      if (v25 > 0x4F)
      {
        if (v25 > 0x61)
        {
          if (v25 != 111)
          {
            return 0;
          }

LABEL_186:
          if ((v3[2] & 0xDF) == 0x46 && (v3[3] & 0xDF) == 0x52 && (v3[4] & 0xDF) == 0x41 && (v3[5] & 0xDF) == 0x4D)
          {
            v53 = v3[6];
            v13 = v3 + 6;
            if ((v53 & 0xFFFFFFDF) == 0x45)
            {
LABEL_241:
              v63 = v13[1];
              v38 = v13 + 1;
              if ((v63 & 0xFFFFFFDF) == 0x53)
              {
                goto LABEL_160;
              }
            }
          }

          return 0;
        }

        if (v25 != 97)
        {
          return 0;
        }
      }

      else if (v25 != 65)
      {
        if (v25 != 79)
        {
          return 0;
        }

        goto LABEL_186;
      }

      v39 = v3[2];
      v38 = v3 + 2;
      if ((v39 & 0xFFFFFFDF) == 0x56)
      {
        goto LABEL_160;
      }

      return 0;
    case 'O':
    case 'o':
LABEL_72:
      v6 = v3 + 1;
      v23 = v3[1];
      if (v23 > 0x50)
      {
        v31 = v23 == 108;
        if (v23 <= 0x6C)
        {
LABEL_339:
          if (v31)
          {
            goto LABEL_341;
          }

          return 0;
        }

        if (v23 != 112)
        {
          return 0;
        }
      }

      else
      {
        if (v23 == 76)
        {
          goto LABEL_341;
        }

        if (v23 != 80)
        {
          return 0;
        }
      }

      if ((v3[2] & 0xDF) != 0x54)
      {
        return 0;
      }

      v33 = v3 + 3;
      v32 = v3[3];
      if (v32 <= 0x49)
      {
        if (v32 != 71)
        {
          goto LABEL_232;
        }

        goto LABEL_321;
      }

      if (v32 <= 0x67)
      {
        if (v32 != 103)
        {
          return 0;
        }

        goto LABEL_321;
      }

      if (v32 == 105)
      {
        goto LABEL_233;
      }

      return 0;
    case 'P':
    case 'p':
      v10 = a1 + 2;
      v11 = a1[2];
      if (v11 > 0x3E)
      {
        if (v11 > 0x52)
        {
          if (v11 > 0x61)
          {
            if (v11 != 114)
            {
              return 0;
            }

            goto LABEL_293;
          }

          if (v11 != 97)
          {
            return 0;
          }
        }

        else if (v11 != 65)
        {
          if (v11 == 82)
          {
            goto LABEL_293;
          }

          return 0;
        }

        v54 = 2;
LABEL_221:
        v55 = &a1[v54];
        if ((v55[1] & 0xDF) == 0x52)
        {
          v57 = v55[2];
          v56 = v55 + 2;
          if ((v57 & 0xFFFFFFDF) == 0x41)
          {
            goto LABEL_355;
          }
        }
      }

      else
      {
        if (v11 <= 0x20)
        {
          if (v11 < 9 || v11 >= 0xE && v11 != 32)
          {
            return 0;
          }

          return 6;
        }

        if (v11 == 47)
        {
          goto LABEL_349;
        }

LABEL_216:
        if (v11 == 62)
        {
          return 6;
        }
      }

      return 0;
    case 'S':
    case 's':
      result = 0;
      v8 = a1 + 2;
      v9 = a1[2];
      if (v9 > 0x62)
      {
        if (a1[2] > 0x6Eu)
        {
          if (v9 != 111)
          {
            if (v9 != 116)
            {
              if (v9 != 117)
              {
                return result;
              }

LABEL_48:
              if ((v8[1] & 0xDF) == 0x4D && (v8[2] & 0xDF) == 0x4D && (v8[3] & 0xDF) == 0x41)
              {
                v19 = v8[4];
                v18 = v8 + 4;
                if ((v19 & 0xFFFFFFDF) == 0x52)
                {
                  goto LABEL_183;
                }
              }

              return 0;
            }

            goto LABEL_250;
          }

LABEL_430:
          if ((v8[1] & 0xDF) == 0x55 && (v8[2] & 0xDF) == 0x52)
          {
            v100 = v8[3];
            v99 = v8 + 3;
            if ((v100 & 0xFFFFFFDF) == 0x43)
            {
              goto LABEL_444;
            }
          }

          return 0;
        }

        if (v9 != 99)
        {
          if (v9 != 101)
          {
            return result;
          }

LABEL_229:
          if ((v8[1] & 0xDF) != 0x43)
          {
            return 0;
          }

          goto LABEL_230;
        }

LABEL_245:
        if ((a1[3] & 0xDF) != 0x52)
        {
          return 0;
        }

        if ((a1[4] & 0xDF) != 0x49)
        {
          return 0;
        }

        if ((a1[5] & 0xDF) != 0x50)
        {
          return 0;
        }

        v65 = a1[6];
        v64 = a1 + 6;
        if ((v65 & 0xFFFFFFDF) != 0x54)
        {
          return 0;
        }

LABEL_249:
        v66 = v64;
        goto LABEL_294;
      }

      if (a1[2] <= 0x4Eu)
      {
        if (v9 != 67)
        {
          if (v9 != 69)
          {
            return result;
          }

          goto LABEL_229;
        }

        goto LABEL_245;
      }

      if (v9 == 79)
      {
        goto LABEL_430;
      }

      if (v9 != 84)
      {
        if (v9 != 85)
        {
          return result;
        }

        goto LABEL_48;
      }

LABEL_250:
      if ((a1[3] & 0xDF) != 0x59)
      {
        return 0;
      }

      v68 = a1[4];
      v67 = a1 + 4;
      if ((v68 & 0xFFFFFFDF) != 0x4C)
      {
        return 0;
      }

      v10 = v67;
LABEL_293:
      v77 = v10[1];
      v66 = v10 + 1;
      if ((v77 & 0xFFFFFFDF) != 0x45)
      {
        return 0;
      }

LABEL_294:
      v78 = v66[1];
      if (v78 <= 0x1F)
      {
        return v78 - 9 < 5;
      }

      return v78 == 62 || v78 == 32;
    case 'T':
    case 't':
      result = 0;
      v6 = a1 + 2;
      v7 = a1[2];
      if (v7 > 0x60)
      {
        if (a1[2] <= 0x65u)
        {
          if (a1[2] <= 0x63u)
          {
            if (v7 != 97)
            {
              if (v7 != 98)
              {
                return result;
              }

LABEL_43:
              v16 = v6[1];
              v15 = v6 + 1;
              v17 = v16 & 0xFFFFFFDF;
LABEL_178:
              if (v17 != 79)
              {
                return 0;
              }

LABEL_182:
              v51 = v15[1];
              v18 = v15 + 1;
              if ((v51 & 0xFFFFFFDF) != 0x44)
              {
                return 0;
              }

LABEL_183:
              v52 = v18[1];
              v6 = v18 + 1;
              if ((v52 & 0xFFFFFFDF) != 0x59)
              {
                return 0;
              }

LABEL_341:
              v84 = v6[1];
              v10 = v6 + 1;
              v35 = v84;
              if (v84 <= 0x20)
              {
                if (v35 >= 9 && (v35 < 0xE || v35 == 32))
                {
                  return 6;
                }

                return 0;
              }

              v85 = v35 == 47;
              if (v35 > 0x2F)
              {
                goto LABEL_350;
              }

              goto LABEL_347;
            }

            goto LABEL_442;
          }

          if (v7 == 100)
          {
            goto LABEL_341;
          }

LABEL_285:
          if ((a1[3] & 0xDF) == 0x58 && (a1[4] & 0xDF) == 0x54 && (a1[5] & 0xDF) == 0x41 && (a1[6] & 0xDF) == 0x52 && (a1[7] & 0xDF) == 0x45)
          {
            v76 = a1[8];
            v64 = a1 + 8;
            if ((v76 & 0xFFFFFFDF) == 0x41)
            {
              goto LABEL_249;
            }
          }

          return 0;
        }

LABEL_391:
        if (v7 <= 104)
        {
          if (v7 != 102)
          {
            if (v7 != 104)
            {
              return result;
            }

LABEL_394:
            v94 = v6 + 1;
            v35 = v6[1];
            if (v35 > 0x2F)
            {
              if (v35 <= 0x44)
              {
                goto LABEL_350;
              }

              if ((v35 & 0xFFFFFFDF) == 0x45)
              {
                v95 = v6[2];
                v44 = v6 + 2;
                if ((v95 & 0xFFFFFFDF) == 0x41)
                {
LABEL_148:
                  v45 = v44[1];
                  v6 = v44 + 1;
                  if ((v45 & 0xFFFFFFDF) == 0x44)
                  {
                    goto LABEL_341;
                  }
                }
              }

              return 0;
            }

            goto LABEL_402;
          }

LABEL_406:
          if ((v6[1] & 0xDF) == 0x4F)
          {
            v96 = v6[2];
            v74 = v6 + 2;
            if ((v96 & 0xFFFFFFDF) == 0x4F)
            {
LABEL_408:
              v97 = v74[1];
              v6 = v74 + 1;
              if ((v97 & 0xFFFFFFDF) == 0x54)
              {
                goto LABEL_341;
              }
            }
          }

          return 0;
        }

        if (v7 != 105)
        {
          if (v7 != 114)
          {
            return result;
          }

LABEL_401:
          v94 = v6 + 1;
          v35 = v6[1];
          if (v35 > 0x2F)
          {
            if (v35 <= 0x40)
            {
              goto LABEL_350;
            }

            if ((v35 & 0xFFFFFFDF) != 0x41)
            {
              return 0;
            }

            v3 = v6;
            if ((v6[2] & 0xDF) != 0x43)
            {
              return 0;
            }

            goto LABEL_268;
          }

LABEL_402:
          if (v35 <= 0x1F)
          {
            goto LABEL_403;
          }

          if (v35 != 32)
          {
            v10 = v94;
            goto LABEL_418;
          }

          return 6;
        }
      }

      else
      {
        if (a1[2] <= 0x45u)
        {
          if (a1[2] <= 0x43u)
          {
            if (v7 != 65)
            {
              if (v7 != 66)
              {
                return result;
              }

              goto LABEL_43;
            }

LABEL_442:
            v101 = v6[1];
            v50 = v6 + 1;
            if ((v101 & 0xFFFFFFDF) != 0x42)
            {
              return 0;
            }

LABEL_443:
            v102 = v50[1];
            v99 = v50 + 1;
            if ((v102 & 0xFFFFFFDF) != 0x4C)
            {
              return 0;
            }

LABEL_444:
            v20 = v99;
LABEL_445:
            v103 = v20[1];
            v38 = v20 + 1;
            if ((v103 & 0xFFFFFFDF) != 0x45)
            {
              return 0;
            }

            goto LABEL_160;
          }

          if (v7 == 68)
          {
            goto LABEL_341;
          }

          goto LABEL_285;
        }

LABEL_373:
        if (v7 <= 72)
        {
          if (v7 != 70)
          {
            if (v7 != 72)
            {
              return result;
            }

            goto LABEL_394;
          }

          goto LABEL_406;
        }

        if (v7 != 73)
        {
          if (v7 != 82)
          {
            return result;
          }

          goto LABEL_401;
        }
      }

      v98 = v6[1];
      v50 = v6 + 1;
      if ((v98 & 0xFFFFFFDF) != 0x54)
      {
        return 0;
      }

      goto LABEL_443;
    case 'U':
    case 'u':
      goto LABEL_159;
    default:
      if (a1[1] != 33)
      {
        return result;
      }

      v12 = a1[2];
      if (v12 <= 0x40)
      {
        if (v12 != 45)
        {
          return 0;
        }

        return 2 * (a1[3] == 45);
      }

      if (v12 < 0x5B)
      {
        return 4;
      }

      if (v12 == 91 && (a1[3] & 0xDF) == 0x43 && (a1[4] & 0xDF) == 0x44 && (a1[5] & 0xDF) == 0x41 && (a1[6] & 0xDF) == 0x54 && (a1[7] & 0xDF) == 0x41)
      {
        if (a1[8] == 91)
        {
          return 5;
        }

        else
        {
          return 0;
        }
      }

      return 0;
  }
}

uint64_t _scan_html_block_start_7(_BYTE *a1)
{
  if (*a1 != 60)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 <= 0x40)
  {
    if (v1 != 47)
    {
      return 0;
    }

    v2 = a1[2];
    if (v2 < 0x41 || v2 >= 0x5B && v2 - 97 > 0x19)
    {
      return 0;
    }

    for (i = a1 + 3; ; ++i)
    {
      v4 = *i;
      if (v4 > 0x2F)
      {
        if (v4 > 0x40)
        {
          if (v4 >= 0x5B && v4 - 97 >= 0x1A)
          {
            return 0;
          }
        }

        else if (v4 > 0x39)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v4 <= 0x1F)
        {
          if (v4 - 9 >= 5)
          {
            return 0;
          }

          do
          {
LABEL_169:
            while (1)
            {
              v47 = *++i;
              v4 = v47;
              if (v47 > 0x1F)
              {
                break;
              }

              if (v4 - 9 > 4)
              {
                return 0;
              }
            }
          }

          while (v4 == 32);
LABEL_178:
          if (v4 != 62)
          {
            return 0;
          }

LABEL_179:
          for (j = 1; ; j = 0)
          {
            v50 = i + 2;
            v51 = i;
            do
            {
              i = v50;
              v53 = *++v51;
              v52 = v53;
              ++v50;
            }

            while ((_scan_html_block_start_7_yybm[v53] & 4) != 0);
            if (v52 < 9)
            {
              break;
            }

            if (v52 > 0xA)
            {
              v56 = v52 == 11 || v52 > 0xD;
              if (v56 & j)
              {
                return 0;
              }

              return 7;
            }

            while (1)
            {
              v54 = *i;
              if ((_scan_html_block_start_7_yybm[*i] & 4) != 0)
              {
                break;
              }

              ++i;
              if ((v54 - 9) >= 2)
              {
                return 7;
              }
            }
          }

          if (j)
          {
            return 0;
          }

          return 7;
        }

        if (v4 != 45)
        {
          if (v4 != 32)
          {
            return 0;
          }

          goto LABEL_169;
        }
      }
    }
  }

  if (v1 >= 0x5B && v1 - 97 > 0x19)
  {
    return 0;
  }

  v8 = a1[2];
  i = a1 + 2;
  for (k = v8; (_scan_html_block_start_7_yybm[k] & 2) == 0; k = v9)
  {
    if (k > 0x3D)
    {
      if (k > 0x5A)
      {
        if (k - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (k == 62)
        {
          goto LABEL_179;
        }

        if (k < 0x41)
        {
          return 0;
        }
      }
    }

    else if (k > 0x2E)
    {
      if (k == 47)
      {
        goto LABEL_177;
      }

      if (k >= 0x3A)
      {
        return 0;
      }
    }

    else if (k != 45)
    {
      return 0;
    }

    v9 = *++i;
  }

  do
  {
LABEL_160:
    v46 = *++i;
    v13 = v46;
  }

  while ((_scan_html_block_start_7_yybm[v46] & 2) != 0);
  if (v13 <= 0x3E)
  {
    if (v13 > 0x39)
    {
      if (v13 != 58)
      {
        if (v13 != 62)
        {
          return 0;
        }

        goto LABEL_179;
      }

      goto LABEL_41;
    }

    v15 = v13 == 47;
    goto LABEL_175;
  }

  if (v13 <= 0x5E)
  {
    if (v13 - 65 >= 0x1A)
    {
      return 0;
    }

    goto LABEL_41;
  }

LABEL_65:
  v14 = 0;
  if (v13 == 96 || v13 >= 0x7B)
  {
    return v14;
  }

  while (1)
  {
    do
    {
LABEL_41:
      v10 = i;
      v12 = *++i;
      v11 = v12;
    }

    while ((_scan_html_block_start_7_yybm[v12] & 8) != 0);
    if (v11 > 0x2C)
    {
      break;
    }

    if (v11 > 0xD)
    {
      if (v11 != 32)
      {
        return 0;
      }
    }

    else if (v11 < 9)
    {
      return 0;
    }

    i = v10 + 2;
    while (1)
    {
      v13 = *i;
      if (v13 > 0x3C)
      {
        break;
      }

      if (v13 > 0x20)
      {
        v15 = v13 == 47;
        if (v13 > 0x2F)
        {
          v14 = 0;
          if (v13 != 58)
          {
            return v14;
          }

          goto LABEL_41;
        }

LABEL_175:
        if (!v15)
        {
          return 0;
        }

        goto LABEL_177;
      }

      if (v13 >= 9)
      {
        ++i;
        if (v13 < 0xE || v13 == 32)
        {
          continue;
        }
      }

      return 0;
    }

    if (v13 > 0x5A)
    {
      if (v13 <= 0x5F)
      {
        v14 = 0;
        if (v13 != 95)
        {
          return v14;
        }

        goto LABEL_41;
      }

      goto LABEL_65;
    }

    if (v13 == 61)
    {
      goto LABEL_70;
    }

    if (v13 < 0x3F)
    {
      goto LABEL_179;
    }

    v14 = 0;
    if (v13 < 0x41)
    {
      return v14;
    }
  }

  if (v11 <= 0x3C)
  {
    if (v11 >= 0x30)
    {
      return 0;
    }

    goto LABEL_177;
  }

  if (v11 != 61)
  {
    if (v11 >= 0x3F)
    {
      return 0;
    }

    goto LABEL_179;
  }

LABEL_70:
  ++i;
  while (1)
  {
    v16 = *i;
    if ((_scan_html_block_start_7_yybm[*i] & 0x20) != 0)
    {
      goto LABEL_137;
    }

    if (v16 > 0xE0)
    {
      v30 = i - 1;
      goto LABEL_142;
    }

    if (v16 > 0x22)
    {
      break;
    }

    if (!*i)
    {
      return 0;
    }

    ++i;
    if (v16 >= 0x21)
    {
      v17 = i - 1;
      while (1)
      {
        do
        {
          v18 = v17;
          v20 = *++v17;
          v19 = v20;
        }

        while ((_scan_html_block_start_7_yybm[v20] & 0x40) != 0);
        if (v19 > 0xEC)
        {
          break;
        }

        if (v19 <= 0xC1)
        {
          if (v19 - 1 >= 0x22)
          {
            return 0;
          }

LABEL_133:
          v42 = v18[2];
          i = v18 + 2;
          if ((_scan_html_block_start_7_yybm[v18[2]] & 2) == 0)
          {
            if (v42 != 47)
            {
              if (v42 != 62)
              {
                return 0;
              }

              goto LABEL_179;
            }

LABEL_177:
            v48 = *++i;
            v4 = v48;
            goto LABEL_178;
          }

          goto LABEL_160;
        }

        if (v19 >= 0xE0)
        {
          if (v19 != 224)
          {
            goto LABEL_95;
          }

          v22 = v18[2];
          v21 = v18 + 2;
          if ((v22 & 0xE0) != 0xA0)
          {
            return 0;
          }

LABEL_98:
          v17 = v21;
        }

LABEL_99:
        v14 = 0;
        v29 = *++v17;
        if (v29 >= -64)
        {
          return v14;
        }
      }

      if (v19 > 0xF0)
      {
        if (v19 >= 0xF4)
        {
          if (v19 != 244)
          {
            return 0;
          }

          v26 = v18[2];
          v23 = v18 + 2;
          if (v26 >= -112)
          {
            return 0;
          }
        }

        else
        {
          v25 = v18[2];
          v23 = v18 + 2;
          if (v25 >= -64)
          {
            return 0;
          }
        }

LABEL_94:
        v17 = v23;
LABEL_95:
        v27 = *++v17;
        if (v27 >= -64)
        {
          return 0;
        }

        goto LABEL_99;
      }

      if (v19 != 237)
      {
        if (v19 == 240)
        {
          v24 = v18[2];
          v23 = v18 + 2;
          if ((v24 - 144) >= 0x30)
          {
            return 0;
          }

          goto LABEL_94;
        }

        goto LABEL_95;
      }

      v28 = v18[2];
      v21 = v18 + 2;
      if (v28 >= -96)
      {
        return 0;
      }

      goto LABEL_98;
    }
  }

  if (v16 <= 0x27)
  {
    while (1)
    {
      do
      {
        v18 = i;
        v32 = *++i;
        v31 = v32;
      }

      while (_scan_html_block_start_7_yybm[v32] < 0);
      if (v31 > 0xEC)
      {
        if (v31 > 0xF0)
        {
          if (v31 >= 0xF4)
          {
            if (v31 != 244)
            {
              return 0;
            }

            v38 = v18[2];
            v35 = v18 + 2;
            if (v38 >= -112)
            {
              return 0;
            }
          }

          else
          {
            v37 = v18[2];
            v35 = v18 + 2;
            if (v37 >= -64)
            {
              return 0;
            }
          }

LABEL_120:
          i = v35;
LABEL_121:
          v39 = *++i;
          if (v39 >= -64)
          {
            return 0;
          }

          goto LABEL_125;
        }

        if (v31 != 237)
        {
          if (v31 == 240)
          {
            v36 = v18[2];
            v35 = v18 + 2;
            if ((v36 - 144) >= 0x30)
            {
              return 0;
            }

            goto LABEL_120;
          }

          goto LABEL_121;
        }

        v40 = v18[2];
        v33 = v18 + 2;
        if (v40 >= -96)
        {
          return 0;
        }
      }

      else
      {
        if (v31 <= 0xC1)
        {
          if (v31 - 1 >= 0x27)
          {
            return 0;
          }

          goto LABEL_133;
        }

        if (v31 < 0xE0)
        {
          goto LABEL_125;
        }

        if (v31 != 224)
        {
          goto LABEL_121;
        }

        v34 = v18[2];
        v33 = v18 + 2;
        if ((v34 & 0xE0) != 0xA0)
        {
          return 0;
        }
      }

      i = v33;
LABEL_125:
      v14 = 0;
      v41 = *++i;
      if (v41 >= -64)
      {
        return v14;
      }
    }
  }

  if (v16 < 0xC2)
  {
    return 0;
  }

  if (v16 != 224)
  {
    goto LABEL_136;
  }

  v30 = i - 1;
LABEL_135:
  i = v30 + 2;
  if ((v30[2] & 0xE0) != 0xA0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
LABEL_136:
      v43 = *++i;
      if (v43 > -65)
      {
        return 0;
      }

      do
      {
LABEL_137:
        v44 = *++i;
        v16 = v44;
      }

      while ((_scan_html_block_start_7_yybm[v44] & 0x20) != 0);
      v30 = i - 1;
      if (v16 <= 0xE0)
      {
        break;
      }

LABEL_142:
      if (v16 > 0xEF)
      {
        if (v16 == 240)
        {
          i = v30 + 2;
          if (v30[2] - 144 >= 0x30)
          {
            return 0;
          }
        }

        else if (v16 >= 0xF4)
        {
          if (v16 != 244)
          {
            return 0;
          }

          i = v30 + 2;
          if (v30[2] >= -112)
          {
            return 0;
          }
        }

        else
        {
          i = v30 + 2;
          if (v30[2] >= -64)
          {
            return 0;
          }
        }

LABEL_158:
        v45 = *++i;
        if (v45 >= -64)
        {
          return 0;
        }
      }

      else
      {
        if (v16 != 237)
        {
          goto LABEL_158;
        }

        i = v30 + 2;
        if (v30[2] >= -96)
        {
          return 0;
        }
      }
    }

    if (v16 <= 0x3D)
    {
      break;
    }

    if (v16 == 62)
    {
      goto LABEL_179;
    }

    if (v16 < 0xC2)
    {
      return 0;
    }

    if (v16 == 224)
    {
      goto LABEL_135;
    }
  }

  v14 = 0;
  if (v16 - 1 < 0x20)
  {
    goto LABEL_160;
  }

  return v14;
}

uint64_t _scan_html_block_end_1(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v1 == 237)
        {
          v3 = 0;
          v6 = a1 + 1;
          if (v5 >= -96)
          {
            return v3;
          }

LABEL_61:
          v14 = *++v4;
          if (v14 >= -64)
          {
            goto LABEL_58;
          }

LABEL_45:
          v8 = v4[1];
          v7 = v4 + 1;
          goto LABEL_46;
        }

        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_61;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_60;
  }

  if (v1 <= 0x3B)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
LABEL_23:
      v7 = a1 + 1;
      v8 = a1[1];
      if (v8 <= 0xA)
      {
        goto LABEL_24;
      }

      v3 = 0;
      if ((v8 & 0x80) == 0)
      {
        v6 = a1 + 1;
        goto LABEL_46;
      }

LABEL_35:
      v6 = v7;
      if (v8 - 194 >= 0x33)
      {
        return v3;
      }

LABEL_46:
      if ((_scan_html_block_end_1_yybm[v8] & 0x40) != 0)
      {
        v4 = v7;
        goto LABEL_45;
      }

      if (v8 > 0xEC)
      {
        v4 = v7;
        if (v8 <= 0xF0)
        {
LABEL_63:
          if (v8 != 237)
          {
            if (v8 != 240)
            {
              goto LABEL_60;
            }

            goto LABEL_93;
          }

          goto LABEL_76;
        }

        v11 = v8 == 244;
        if (v8 >= 0xF4)
        {
          goto LABEL_108;
        }

        goto LABEL_288;
      }

      if (v8 > 0xC1)
      {
        v4 = v7;
        v12 = v8 == 224;
        if (v8 < 0xE0)
        {
          goto LABEL_61;
        }

LABEL_56:
        if (!v12)
        {
          goto LABEL_60;
        }

        goto LABEL_130;
      }

      v4 = v7;
      if (v8 - 11 >= 0x32)
      {
        goto LABEL_58;
      }

      while (1)
      {
        while (1)
        {
          do
          {
            v16 = *++v4;
            v15 = v16;
          }

          while (_scan_html_block_end_1_yybm[v16] < 0);
          if (v15 > 0xDF)
          {
            if (v15 <= 0xEF)
            {
              if (v15 == 224)
              {
                goto LABEL_130;
              }

              if (v15 != 237)
              {
                goto LABEL_60;
              }

LABEL_76:
              v17 = *++v4;
              if (v17 >= -96)
              {
                goto LABEL_58;
              }

              goto LABEL_61;
            }

            if (v15 == 240)
            {
              goto LABEL_93;
            }

            v11 = v15 == 244;
            if (v15 >= 0xF4)
            {
LABEL_108:
              if (!v11)
              {
                goto LABEL_58;
              }

              goto LABEL_180;
            }

LABEL_288:
            v30 = *++v4;
            if (v30 >= -64)
            {
              goto LABEL_58;
            }

            goto LABEL_60;
          }

          if (v15 <= 0x2E)
          {
            if (!v15 || v15 == 10)
            {
              goto LABEL_58;
            }

            goto LABEL_45;
          }

          v9 = v4 - 1;
          if (v15 != 47)
          {
            if ((v15 & 0x80) == 0)
            {
              goto LABEL_45;
            }

            if (v15 >= 0xC2)
            {
              goto LABEL_61;
            }

LABEL_58:
            LODWORD(v4) = v6;
            if (!v3)
            {
              return v3;
            }

            return (v4 - a1);
          }

          v7 = v6;
LABEL_80:
          v4 = v9 + 2;
          v8 = v9[2];
          if (_scan_html_block_end_1_yybm[v9[2]] < 0)
          {
            goto LABEL_66;
          }

          if (v8 <= 0x73)
          {
            break;
          }

          if (v8 > 0xEC)
          {
            goto LABEL_132;
          }

          if (v8 > 0xC1)
          {
            goto LABEL_128;
          }

          if (v8 != 116)
          {
            goto LABEL_90;
          }

LABEL_98:
          v4 = v9 + 3;
          v8 = v9[3];
          if ((_scan_html_block_end_1_yybm[v9[3]] & 0x80000000) == 0)
          {
            if (v8 > 0xC1)
            {
              goto LABEL_279;
            }

            if (v8 <= 0x44)
            {
              goto LABEL_84;
            }

            if (v8 > 0x64)
            {
              if (v8 != 101)
              {
                goto LABEL_90;
              }
            }

            else if (v8 != 69)
            {
              goto LABEL_175;
            }

            v4 = v9 + 4;
            v8 = v9[4];
            if ((_scan_html_block_end_1_yybm[v9[4]] & 0x80000000) == 0)
            {
              if (v8 > 0xC1)
              {
                goto LABEL_279;
              }

              if (v8 <= 0x57)
              {
                goto LABEL_84;
              }

              if (v8 > 0x77)
              {
                if (v8 != 120)
                {
                  goto LABEL_90;
                }
              }

              else if (v8 != 88)
              {
                goto LABEL_175;
              }

              v4 = v9 + 5;
              v8 = v9[5];
              if ((_scan_html_block_end_1_yybm[v9[5]] & 0x80000000) == 0)
              {
                if (v8 > 0xC1)
                {
                  goto LABEL_279;
                }

                if (v8 <= 0x53)
                {
                  goto LABEL_84;
                }

                if (v8 > 0x73)
                {
                  if (v8 != 116)
                  {
                    goto LABEL_90;
                  }
                }

                else if (v8 != 84)
                {
                  goto LABEL_175;
                }

                v4 = v9 + 6;
                v8 = v9[6];
                if ((_scan_html_block_end_1_yybm[v9[6]] & 0x80000000) == 0)
                {
                  if (v8 > 0xC1)
                  {
                    goto LABEL_279;
                  }

                  if (v8 <= 0x40)
                  {
                    goto LABEL_84;
                  }

                  if (v8 > 0x60)
                  {
                    if (v8 != 97)
                    {
                      goto LABEL_90;
                    }
                  }

                  else if (v8 != 65)
                  {
                    goto LABEL_175;
                  }

                  v4 = v9 + 7;
                  v8 = v9[7];
                  if ((_scan_html_block_end_1_yybm[v9[7]] & 0x80000000) == 0)
                  {
                    if (v8 > 0xC1)
                    {
                      goto LABEL_279;
                    }

                    if (v8 <= 0x51)
                    {
                      goto LABEL_84;
                    }

                    if (v8 > 0x71)
                    {
                      if (v8 != 114)
                      {
                        goto LABEL_90;
                      }
                    }

                    else if (v8 != 82)
                    {
                      goto LABEL_175;
                    }

                    v4 = v9 + 8;
                    v8 = v9[8];
                    if ((_scan_html_block_end_1_yybm[v9[8]] & 0x80000000) == 0)
                    {
                      if (v8 > 0xC1)
                      {
                        goto LABEL_279;
                      }

                      if (v8 <= 0x44)
                      {
LABEL_84:
                        if (v8)
                        {
LABEL_85:
                          v6 = v7;
                          if (v8 != 10)
                          {
                            goto LABEL_45;
                          }

                          goto LABEL_58;
                        }

LABEL_167:
                        LODWORD(v6) = v7;
                        goto LABEL_58;
                      }

                      if (v8 > 0x64)
                      {
                        if (v8 != 101)
                        {
                          goto LABEL_90;
                        }
                      }

                      else if (v8 != 69)
                      {
                        goto LABEL_175;
                      }

                      v8 = v9[9];
                      v4 = v9 + 9;
                      if ((_scan_html_block_end_1_yybm[v9[9]] & 0x80000000) == 0)
                      {
                        if (v8 > 0xC1)
                        {
LABEL_279:
                          if (v8 <= 0xED)
                          {
                            if (v8 < 0xE0)
                            {
                              goto LABEL_281;
                            }

                            if (v8 != 224)
                            {
                              v6 = v7;
                              if (v8 != 237)
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_76;
                            }

LABEL_293:
                            v6 = v7;
LABEL_130:
                            v19 = *++v4;
                            if ((v19 & 0xE0) != 0xA0)
                            {
                              goto LABEL_58;
                            }

                            goto LABEL_61;
                          }

                          v22 = v8 == 240;
                          if (v8 <= 0xF0)
                          {
LABEL_283:
                            v6 = v7;
                            if (!v22)
                            {
                              goto LABEL_60;
                            }

                            goto LABEL_93;
                          }

LABEL_286:
                          v23 = v8 == 244;
                          if (v8 < 0xF4)
                          {
LABEL_287:
                            v6 = v7;
                            goto LABEL_288;
                          }

LABEL_178:
                          v6 = v7;
                          if (!v23)
                          {
                            goto LABEL_58;
                          }

                          goto LABEL_180;
                        }

                        if (v8 <= 0x40)
                        {
                          goto LABEL_84;
                        }

                        if (v8 > 0x60)
                        {
                          if (v8 != 97)
                          {
                            goto LABEL_90;
                          }
                        }

                        else if (v8 != 65)
                        {
                          goto LABEL_175;
                        }

                        goto LABEL_183;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_66:
          v6 = v7;
        }

        if (v8 <= 0x52)
        {
          if (v8 <= 0xA)
          {
            goto LABEL_84;
          }

          if (v8 != 80)
          {
            goto LABEL_175;
          }

LABEL_120:
          v8 = v9[3];
          v4 = v9 + 3;
          if (_scan_html_block_end_1_yybm[v9[3]] < 0)
          {
            goto LABEL_66;
          }

          if (v8 > 0xC1)
          {
            goto LABEL_279;
          }

          if (v8 <= 0x51)
          {
            goto LABEL_84;
          }

          if (v8 > 0x71)
          {
            if (v8 != 114)
            {
              goto LABEL_90;
            }
          }

          else if (v8 != 82)
          {
            goto LABEL_175;
          }

          goto LABEL_148;
        }

        if (v8 > 0x6F)
        {
          if (v8 == 112)
          {
            goto LABEL_120;
          }

          if (v8 != 115)
          {
            goto LABEL_175;
          }
        }

        else if (v8 != 83)
        {
          if (v8 >= 0x55)
          {
            goto LABEL_175;
          }

          goto LABEL_98;
        }

        v4 = v9 + 3;
        v8 = v9[3];
        if (_scan_html_block_end_1_yybm[v9[3]] < 0)
        {
          goto LABEL_66;
        }

        if (v8 > 0x74)
        {
          if (v8 > 0xEC)
          {
LABEL_132:
            if (v8 <= 0xF0)
            {
              v6 = v7;
              goto LABEL_63;
            }

            goto LABEL_286;
          }

          if (v8 <= 0xC1)
          {
LABEL_90:
            v6 = v7;
            if ((v8 & 0x80) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_58;
          }

LABEL_128:
          if (v8 >= 0xE0)
          {
            v6 = v7;
            if (v8 != 224)
            {
              goto LABEL_60;
            }

            goto LABEL_130;
          }

          goto LABEL_281;
        }

        if (v8 <= 0x43)
        {
          if (v8 <= 9)
          {
            v6 = v7;
            if (v9[3])
            {
              goto LABEL_45;
            }

            goto LABEL_58;
          }

          if (v8 != 67)
          {
            goto LABEL_85;
          }

LABEL_161:
          v4 = v9 + 4;
          v8 = v9[4];
          if ((_scan_html_block_end_1_yybm[v9[4]] & 0x80000000) == 0)
          {
            if (v8 > 0xC1)
            {
              goto LABEL_279;
            }

            if (v8 <= 0x51)
            {
              goto LABEL_84;
            }

            if (v8 > 0x71)
            {
              if (v8 != 114)
              {
                goto LABEL_90;
              }
            }

            else if (v8 != 82)
            {
              goto LABEL_175;
            }

            v4 = v9 + 5;
            v8 = v9[5];
            if ((_scan_html_block_end_1_yybm[v9[5]] & 0x80000000) == 0)
            {
              if (v8 > 0xC1)
              {
                goto LABEL_279;
              }

              if (v8 <= 0x48)
              {
                goto LABEL_84;
              }

              if (v8 > 0x68)
              {
                if (v8 != 105)
                {
                  goto LABEL_90;
                }
              }

              else if (v8 != 73)
              {
                goto LABEL_175;
              }

              v4 = v9 + 6;
              v8 = v9[6];
              if ((_scan_html_block_end_1_yybm[v9[6]] & 0x80000000) == 0)
              {
                if (v8 > 0xC1)
                {
                  goto LABEL_279;
                }

                if (v8 <= 0x4F)
                {
                  goto LABEL_84;
                }

                if (v8 > 0x6F)
                {
                  if (v8 != 112)
                  {
                    goto LABEL_90;
                  }
                }

                else if (v8 != 80)
                {
                  goto LABEL_175;
                }

                v8 = v9[7];
                v4 = v9 + 7;
                if ((_scan_html_block_end_1_yybm[v9[7]] & 0x80000000) == 0)
                {
                  if (v8 > 0xC1)
                  {
                    goto LABEL_279;
                  }

                  if (v8 <= 0x53)
                  {
                    goto LABEL_84;
                  }

                  if (v8 > 0x73)
                  {
                    if (v8 != 116)
                    {
                      goto LABEL_90;
                    }
                  }

                  else if (v8 != 84)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_183;
                }
              }
            }
          }

          goto LABEL_66;
        }

        if (v8 > 0x62)
        {
          if (v8 == 99)
          {
            goto LABEL_161;
          }

          if (v8 != 116)
          {
            goto LABEL_175;
          }
        }

        else if (v8 != 84)
        {
          goto LABEL_175;
        }

        v4 = v9 + 4;
        v8 = v9[4];
        if (_scan_html_block_end_1_yybm[v9[4]] < 0)
        {
          goto LABEL_66;
        }

        if (v8 > 0xC1)
        {
          goto LABEL_279;
        }

        if (v8 <= 0x58)
        {
          goto LABEL_84;
        }

        if (v8 > 0x78)
        {
          if (v8 != 121)
          {
            goto LABEL_90;
          }
        }

        else if (v8 != 89)
        {
          goto LABEL_175;
        }

        v8 = v9[5];
        v4 = v9 + 5;
        if (_scan_html_block_end_1_yybm[v9[5]] < 0)
        {
          goto LABEL_66;
        }

        if (v8 > 0xC1)
        {
          goto LABEL_279;
        }

        if (v8 <= 0x4B)
        {
          goto LABEL_84;
        }

        if (v8 > 0x6B)
        {
          if (v8 != 108)
          {
            goto LABEL_90;
          }
        }

        else if (v8 != 76)
        {
          goto LABEL_175;
        }

LABEL_148:
        v21 = *++v4;
        v20 = v21;
        if (_scan_html_block_end_1_yybm[v21] < 0)
        {
          goto LABEL_66;
        }

        if (v20 > 0xC1)
        {
          if (v20 > 0xED)
          {
            v22 = v20 == 240;
            if (v20 <= 0xF0)
            {
              goto LABEL_283;
            }

            goto LABEL_177;
          }

          if (v20 >= 0xE0)
          {
            if (v20 == 224)
            {
              goto LABEL_293;
            }

            goto LABEL_171;
          }

LABEL_281:
          v6 = v7;
          goto LABEL_61;
        }

        if (v20 <= 0x44)
        {
          goto LABEL_151;
        }

        if (v20 > 0x64)
        {
          if (v20 != 101)
          {
            v6 = v7;
            if ((v20 & 0x80) != 0)
            {
              goto LABEL_58;
            }

            goto LABEL_45;
          }
        }

        else if (v20 != 69)
        {
          goto LABEL_175;
        }

LABEL_183:
        v25 = v4;
        v26 = *++v4;
        v20 = v26;
        if (_scan_html_block_end_1_yybm[v26] < 0)
        {
          goto LABEL_66;
        }

        if (v20 > 0xDF)
        {
          if (v20 <= 0xEF)
          {
            if (v20 == 224)
            {
              goto LABEL_293;
            }

LABEL_171:
            v6 = v7;
            if (v20 == 237)
            {
              goto LABEL_76;
            }

            goto LABEL_60;
          }

          if (v20 == 240)
          {
            v6 = v7;
            goto LABEL_93;
          }

LABEL_177:
          v23 = v20 == 244;
          if (v20 < 0xF4)
          {
            goto LABEL_287;
          }

          goto LABEL_178;
        }

        if (v20 <= 0x3D)
        {
LABEL_151:
          if (!v20)
          {
            goto LABEL_167;
          }

          v6 = v7;
          if (v20 != 10)
          {
            goto LABEL_45;
          }

          goto LABEL_58;
        }

        if (v20 != 62)
        {
          if ((v20 & 0x80) == 0)
          {
LABEL_175:
            v6 = v7;
            goto LABEL_45;
          }

          v6 = v7;
          if (v20 < 0xC2)
          {
            goto LABEL_58;
          }

          goto LABEL_61;
        }

        v29 = v25[2];
        v28 = v25 + 2;
        v27 = v29;
        v4 = v28;
        if ((_scan_html_block_end_1_yybm[v29] & 0x40) != 0)
        {
          v3 = 1;
          goto LABEL_42;
        }

        if (v27 > 0xEC)
        {
          v3 = 1;
          v6 = v28;
          if (v27 <= 0xF0)
          {
            if (v27 == 237)
            {
              goto LABEL_76;
            }

            if (v27 != 240)
            {
LABEL_60:
              v13 = *++v4;
              if (v13 >= -64)
              {
                goto LABEL_58;
              }

              goto LABEL_61;
            }

LABEL_93:
            v18 = *++v4;
            if ((v18 - 144) >= 0x30)
            {
              goto LABEL_58;
            }

            goto LABEL_60;
          }

          if (v27 < 0xF4)
          {
            goto LABEL_288;
          }

          if (v27 != 244)
          {
            return (v4 - a1);
          }

LABEL_180:
          v24 = *++v4;
          if (v24 >= -112)
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        }

        if (v27 > 0xC1)
        {
          v3 = 1;
          v6 = v28;
          v12 = v27 == 224;
          if (v27 >= 0xE0)
          {
            goto LABEL_56;
          }

          goto LABEL_61;
        }

        v3 = 1;
        v6 = v28;
        if (v27 - 11 > 0x31)
        {
          return (v4 - a1);
        }
      }
    }

    return 0;
  }

  if (v1 != 60)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
LABEL_42:
        v6 = v4;
        goto LABEL_45;
      }

      return v3;
    }

    return 0;
  }

  v7 = a1 + 1;
  v8 = a1[1];
  if (v8 > 0x2E)
  {
    v3 = 0;
    if ((v8 & 0x80) == 0)
    {
      v6 = a1 + 1;
      v9 = a1;
      if (v8 == 47)
      {
        goto LABEL_80;
      }

      goto LABEL_46;
    }

    goto LABEL_35;
  }

LABEL_24:
  v3 = 0;
  if (v8)
  {
    v6 = v7;
    if (v8 != 10)
    {
      goto LABEL_46;
    }
  }

  return v3;
}

uint64_t _scan_html_block_end_2(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_95;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_95;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_94;
  }

  if (v1 <= 0x2C)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v1 != 45)
  {
    if ((v1 & 0x80) == 0)
    {
LABEL_21:
      v4 = a1 + 1;
      v7 = a1[1];
      goto LABEL_22;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
        v6 = a1 + 1;
        goto LABEL_43;
      }

      return v3;
    }

    return 0;
  }

  v4 = a1 + 1;
  v7 = a1[1];
  if (_scan_html_block_end_2_yybm[a1[1]] < 0)
  {
    v3 = 0;
    v6 = a1 + 1;
    goto LABEL_52;
  }

LABEL_22:
  if (v7 > 0xA)
  {
    v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      v6 = v4;
      goto LABEL_44;
    }

    v6 = v4;
    if (v7 - 194 >= 0x33)
    {
      return v3;
    }

    while (1)
    {
LABEL_44:
      if ((_scan_html_block_end_2_yybm[v7] & 0x40) != 0)
      {
        goto LABEL_43;
      }

      if (v7 > 0xEC)
      {
        break;
      }

      if (v7 <= 0xC1)
      {
        if (v7 - 11 >= 0x23)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v9 = *++v4;
          v7 = v9;
          if ((_scan_html_block_end_2_yybm[v9] & 0x40) != 0)
          {
            goto LABEL_43;
          }

          if (v7 > 0xEC)
          {
            goto LABEL_59;
          }

          if (v7 > 0xC1)
          {
            break;
          }

          if (v7 - 11 > 0x22)
          {
            goto LABEL_96;
          }

LABEL_52:
          v10 = v4 + 1;
          do
          {
            v12 = *v10++;
            v11 = v12;
          }

          while (_scan_html_block_end_2_yybm[v12] < 0);
          v4 = v10 - 1;
          if (v11 > 0xDF)
          {
            if (v11 <= 0xEF)
            {
              if (v11 == 237)
              {
                goto LABEL_82;
              }

              if (v11 == 224)
              {
                goto LABEL_69;
              }

              goto LABEL_94;
            }

            if (v11 == 240)
            {
              goto LABEL_80;
            }

            v14 = v11 == 244;
            if (v11 >= 0xF4)
            {
              goto LABEL_91;
            }

            goto LABEL_89;
          }

          if (v11 <= 0x3D)
          {
            if (v11 && v11 != 10)
            {
              goto LABEL_43;
            }

            goto LABEL_96;
          }

          if (v11 != 62)
          {
            if ((v11 & 0x80) == 0)
            {
              goto LABEL_43;
            }

            if (v11 >= 0xC2)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v15 = *v10;
          if ((_scan_html_block_end_2_yybm[*v10] & 0x40) != 0)
          {
            v3 = 1;
            v4 = v10;
            v6 = v10;
            goto LABEL_43;
          }

          if (v15 > 0xEC)
          {
            v3 = 1;
            if (v15 <= 0xF0)
            {
              if (v15 == 240)
              {
                v4 = v10;
                v6 = v10;
                goto LABEL_80;
              }

              if (v15 == 237)
              {
                v6 = v10;
                goto LABEL_83;
              }

              v4 = v10;
              v6 = v10;
              goto LABEL_94;
            }

            v24 = v15 == 244;
            if (v15 < 0xF4)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_89;
            }

            v4 = v10;
            v6 = v10;
            if (v24)
            {
              goto LABEL_93;
            }

            return (v10 - a1);
          }

          if (v15 > 0xC1)
          {
            v3 = 1;
            v23 = v15 == 224;
            if (v15 < 0xE0)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_95;
            }

            v4 = v10;
            v6 = v10;
            if (v23)
            {
              goto LABEL_69;
            }

            goto LABEL_94;
          }

          v16 = v15 - 11;
          v3 = 1;
          v4 = v10;
          v6 = v10;
          if (v16 >= 0x23)
          {
            return (v10 - a1);
          }
        }
      }

      if (v7 >= 0xE0)
      {
        if (v7 == 224)
        {
LABEL_69:
          v13 = *++v4;
          if ((v13 & 0xE0) != 0xA0)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        goto LABEL_94;
      }

LABEL_95:
      v21 = *++v4;
      if (v21 >= -64)
      {
        goto LABEL_96;
      }

LABEL_43:
      v8 = *++v4;
      v7 = v8;
    }

LABEL_59:
    if (v7 > 0xF0)
    {
      v14 = v7 == 244;
      if (v7 < 0xF4)
      {
LABEL_89:
        v18 = *++v4;
        if (v18 >= -64)
        {
          goto LABEL_96;
        }
      }

      else
      {
LABEL_91:
        if (!v14)
        {
          goto LABEL_96;
        }

LABEL_93:
        v19 = *++v4;
        if (v19 >= -112)
        {
LABEL_96:
          LODWORD(v10) = v6;
          if (v3)
          {
            return (v10 - a1);
          }

          return v3;
        }
      }
    }

    else
    {
      if (v7 == 237)
      {
LABEL_82:
        v10 = v4;
LABEL_83:
        v4 = v10 + 1;
        if (v10[1] >= -96)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v7 == 240)
      {
LABEL_80:
        v17 = *++v4;
        if ((v17 - 144) >= 0x30)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_94:
    v20 = *++v4;
    if (v20 >= -64)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v3 = 0;
  if (v7)
  {
    v6 = v4;
    if (v7 != 10)
    {
      goto LABEL_44;
    }
  }

  return v3;
}

uint64_t _scan_html_block_end_3(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_96;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_96;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_95;
  }

  if (v1 <= 0x3E)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
LABEL_23:
      v4 = a1 + 1;
      v7 = a1[1];
      if (v7 <= 0xA)
      {
        goto LABEL_24;
      }

      v3 = 0;
      if ((v7 & 0x80) == 0)
      {
LABEL_35:
        v6 = v4;
        goto LABEL_47;
      }

      goto LABEL_43;
    }

    return 0;
  }

  if (v1 != 63)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
LABEL_45:
        v6 = v4;
        goto LABEL_46;
      }

      return v3;
    }

    return 0;
  }

  v4 = a1 + 1;
  v7 = a1[1];
  if (v7 > 0x3D)
  {
    if ((v7 & 0x80) == 0)
    {
      v8 = a1;
      if (v7 == 62)
      {
        goto LABEL_65;
      }

      v3 = 0;
      goto LABEL_35;
    }

    v3 = 0;
LABEL_43:
    v6 = v4;
    if (v7 - 194 < 0x33)
    {
      goto LABEL_47;
    }

    return v3;
  }

LABEL_24:
  v3 = 0;
  if (!v7)
  {
    return v3;
  }

  v6 = v4;
  if (v7 == 10)
  {
    return v3;
  }

  while (1)
  {
LABEL_47:
    if ((_scan_html_block_end_3_yybm[v7] & 0x40) != 0)
    {
      goto LABEL_46;
    }

    if (v7 > 0xEC)
    {
      if (v7 > 0xF0)
      {
LABEL_72:
        if (v7 < 0xF4)
        {
LABEL_91:
          v16 = *++v4;
          if (v16 >= -64)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v7 != 244)
          {
            goto LABEL_97;
          }

LABEL_94:
          v17 = *++v4;
          if (v17 >= -112)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
LABEL_76:
        if (v7 == 237)
        {
LABEL_80:
          v14 = *++v4;
          if (v14 >= -96)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }

        if (v7 == 240)
        {
LABEL_78:
          v13 = *++v4;
          if ((v13 - 144) >= 0x30)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_95;
    }

    if (v7 <= 0xC1)
    {
      break;
    }

LABEL_86:
    if (v7 < 0xE0)
    {
      goto LABEL_96;
    }

    if (v7 == 224)
    {
LABEL_88:
      v15 = *++v4;
      if ((v15 & 0xE0) != 0xA0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

LABEL_95:
    v18 = *++v4;
    if (v18 >= -64)
    {
      goto LABEL_97;
    }

LABEL_96:
    v19 = *++v4;
    if (v19 >= -64)
    {
      goto LABEL_97;
    }

LABEL_46:
    v9 = *++v4;
    v7 = v9;
  }

  if (v7 - 11 < 0x35)
  {
    while (1)
    {
      do
      {
        v10 = *++v4;
        v7 = v10;
      }

      while (_scan_html_block_end_3_yybm[v10] < 0);
      if (v7 > 0xDF)
      {
        if (v7 > 0xEF)
        {
          if (v7 == 240)
          {
            goto LABEL_78;
          }

          goto LABEL_72;
        }

        if (v7 == 224)
        {
          goto LABEL_88;
        }

        if (v7 == 237)
        {
          goto LABEL_80;
        }

        goto LABEL_95;
      }

      if (v7 <= 0x3D)
      {
        if (v7 && v7 != 10)
        {
          goto LABEL_46;
        }

        goto LABEL_97;
      }

      v8 = v4 - 1;
      if (v7 != 62)
      {
        break;
      }

LABEL_65:
      v12 = v8[2];
      v11 = v8 + 2;
      v7 = v12;
      v4 = v11;
      if ((_scan_html_block_end_3_yybm[v12] & 0x40) != 0)
      {
        v3 = 1;
        goto LABEL_45;
      }

      if (v7 > 0xEC)
      {
        v3 = 1;
        v6 = v11;
        if (v7 <= 0xF0)
        {
          goto LABEL_76;
        }

        if (v7 < 0xF4)
        {
          goto LABEL_91;
        }

        if (v7 != 244)
        {
          return (v4 - a1);
        }

        goto LABEL_94;
      }

      if (v7 > 0xC1)
      {
        v3 = 1;
        v6 = v11;
        goto LABEL_86;
      }

      v3 = 1;
      v6 = v11;
      if (v7 - 11 > 0x34)
      {
        return (v4 - a1);
      }
    }

    if ((v7 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    if (v7 >= 0xC2)
    {
      goto LABEL_96;
    }
  }

LABEL_97:
  LODWORD(v4) = v6;
  if (v3)
  {
    return (v4 - a1);
  }

  return v3;
}

uint64_t _scan_html_block_end_4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1;
  if ((_scan_html_block_end_4_yybm[*a1] & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if (v1 > 0xE0)
  {
    if (v1 <= 0xEF)
    {
      v2 = a1 + 1;
      v4 = a1[1];
      if (v1 == 237)
      {
        v3 = 0;
        v5 = a1 + 1;
        if (v4 < -96)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v3 = 0;
        v5 = a1 + 1;
        if (v4 < -64)
        {
          goto LABEL_85;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v2 = a1 + 1;
      if (a1[1] - 144 < 0x30)
      {
        goto LABEL_83;
      }

      return v3;
    }

    if (v1 < 0xF4)
    {
      v3 = 0;
      v2 = a1 + 1;
      if (a1[1] < -64)
      {
        goto LABEL_83;
      }

      return v3;
    }

    if (v1 == 244)
    {
      v3 = 0;
      v2 = a1 + 1;
      if (a1[1] < -112)
      {
        goto LABEL_83;
      }

      return v3;
    }

    return 0;
  }

  if (v1 > 0xA)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    if (v1 >= 0xC2)
    {
      v2 = a1 + 1;
      v7 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v5 = a1 + 1;
        if ((v7 & 0xE0) == 0xA0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v3 = 0;
        v5 = a1 + 1;
        if (v7 < -64)
        {
          goto LABEL_86;
        }
      }

      return v3;
    }

    return 0;
  }

  v3 = 0;
  if (!*a1 || v1 == 10)
  {
    return v3;
  }

LABEL_12:
  v2 = a1 + 1;
  v6 = a1[1];
  if (v6 > 0xA)
  {
    v3 = 0;
    if ((v6 & 0x80) == 0)
    {
      v5 = a1 + 1;
      goto LABEL_38;
    }

    v5 = a1 + 1;
    if (v6 - 194 >= 0x33)
    {
      return v3;
    }

    while (1)
    {
LABEL_38:
      if (_scan_html_block_end_4_yybm[v6] < 0)
      {
        goto LABEL_86;
      }

      if (v6 > 0xEC)
      {
        if (v6 > 0xF0)
        {
          if (v6 < 0xF4)
          {
LABEL_69:
            v13 = *++v2;
            if (v13 >= -64)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v6 != 244)
            {
              goto LABEL_87;
            }

LABEL_77:
            v15 = *++v2;
            if (v15 >= -112)
            {
LABEL_87:
              LODWORD(v2) = v5;
              if (v3)
              {
                return (v2 - a1);
              }

              return v3;
            }
          }
        }

        else
        {
          if (v6 == 237)
          {
LABEL_57:
            v11 = *++v2;
            if (v11 >= -96)
            {
              goto LABEL_87;
            }

            goto LABEL_85;
          }

          if (v6 == 240)
          {
LABEL_80:
            v16 = *++v2;
            if ((v16 - 144) >= 0x30)
            {
              goto LABEL_87;
            }
          }
        }
      }

      else if (v6 > 0xC1)
      {
        if (v6 < 0xE0)
        {
          goto LABEL_85;
        }

        if (v6 == 224)
        {
LABEL_73:
          v14 = *++v2;
          if ((v14 & 0xE0) != 0xA0)
          {
            goto LABEL_87;
          }

          goto LABEL_85;
        }
      }

      else
      {
        if (v6 - 11 > 0x33)
        {
          goto LABEL_87;
        }

LABEL_42:
        v8 = v2 + 1;
        while (1)
        {
          v2 = v8;
          v9 = *v8;
          if (_scan_html_block_end_4_yybm[v9] < 0)
          {
            v3 = 1;
            v5 = v2;
            goto LABEL_86;
          }

          if (v9 > 0xEC)
          {
            break;
          }

          if (v9 > 0xC1)
          {
            v12 = v9 == 224;
            if (v9 < 0xE0)
            {
              v3 = 1;
              v5 = v2;
              goto LABEL_85;
            }

            v3 = 1;
            v5 = v2;
            if (v12)
            {
              goto LABEL_73;
            }

            goto LABEL_84;
          }

          v10 = v9 - 11;
          v8 = v2 + 1;
          if (v10 >= 0x34)
          {
            return (v2 - a1);
          }
        }

        if (v9 > 0xF0)
        {
          if (v9 < 0xF4)
          {
            v3 = 1;
            v5 = v2;
            goto LABEL_69;
          }

          if (v9 == 244)
          {
            v3 = 1;
            v5 = v2;
            goto LABEL_77;
          }

          return (v2 - a1);
        }

        if (v9 == 240)
        {
          v3 = 1;
          v5 = v2;
          goto LABEL_80;
        }

        if (v9 == 237)
        {
          v3 = 1;
          v5 = v2;
          goto LABEL_57;
        }

        v3 = 1;
LABEL_83:
        v5 = v2;
      }

LABEL_84:
      v17 = *++v2;
      if (v17 >= -64)
      {
        goto LABEL_87;
      }

LABEL_85:
      v18 = *++v2;
      if (v18 >= -64)
      {
        goto LABEL_87;
      }

LABEL_86:
      v19 = *++v2;
      v6 = v19;
    }
  }

  v3 = 0;
  if (a1[1])
  {
    v5 = a1 + 1;
    if (v6 != 10)
    {
      goto LABEL_38;
    }
  }

  return v3;
}

uint64_t _scan_html_block_end_5(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_95;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_95;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_94;
  }

  if (v1 <= 0x5C)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v1 != 93)
  {
    if ((v1 & 0x80) == 0)
    {
LABEL_21:
      v4 = a1 + 1;
      v7 = a1[1];
      goto LABEL_22;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
        v6 = a1 + 1;
        goto LABEL_43;
      }

      return v3;
    }

    return 0;
  }

  v4 = a1 + 1;
  v7 = a1[1];
  if (_scan_html_block_end_5_yybm[a1[1]] < 0)
  {
    v3 = 0;
    v6 = a1 + 1;
    goto LABEL_52;
  }

LABEL_22:
  if (v7 > 0xA)
  {
    v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      v6 = v4;
      goto LABEL_44;
    }

    v6 = v4;
    if (v7 - 194 >= 0x33)
    {
      return v3;
    }

    while (1)
    {
LABEL_44:
      if ((_scan_html_block_end_5_yybm[v7] & 0x40) != 0)
      {
        goto LABEL_43;
      }

      if (v7 > 0xEC)
      {
        break;
      }

      if (v7 <= 0xC1)
      {
        if (v7 - 11 >= 0x53)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v9 = *++v4;
          v7 = v9;
          if ((_scan_html_block_end_5_yybm[v9] & 0x40) != 0)
          {
            goto LABEL_43;
          }

          if (v7 > 0xEC)
          {
            goto LABEL_59;
          }

          if (v7 > 0xC1)
          {
            break;
          }

          if (v7 - 11 > 0x52)
          {
            goto LABEL_96;
          }

LABEL_52:
          v10 = v4 + 1;
          do
          {
            v12 = *v10++;
            v11 = v12;
          }

          while (_scan_html_block_end_5_yybm[v12] < 0);
          v4 = v10 - 1;
          if (v11 > 0xDF)
          {
            if (v11 <= 0xEF)
            {
              if (v11 == 237)
              {
                goto LABEL_82;
              }

              if (v11 == 224)
              {
                goto LABEL_69;
              }

              goto LABEL_94;
            }

            if (v11 == 240)
            {
              goto LABEL_80;
            }

            v14 = v11 == 244;
            if (v11 >= 0xF4)
            {
              goto LABEL_91;
            }

            goto LABEL_89;
          }

          if (v11 <= 0x3D)
          {
            if (v11 && v11 != 10)
            {
              goto LABEL_43;
            }

            goto LABEL_96;
          }

          if (v11 != 62)
          {
            if ((v11 & 0x80) == 0)
            {
              goto LABEL_43;
            }

            if (v11 >= 0xC2)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v15 = *v10;
          if ((_scan_html_block_end_5_yybm[*v10] & 0x40) != 0)
          {
            v3 = 1;
            v4 = v10;
            v6 = v10;
            goto LABEL_43;
          }

          if (v15 > 0xEC)
          {
            v3 = 1;
            if (v15 <= 0xF0)
            {
              if (v15 == 240)
              {
                v4 = v10;
                v6 = v10;
                goto LABEL_80;
              }

              if (v15 == 237)
              {
                v6 = v10;
                goto LABEL_83;
              }

              v4 = v10;
              v6 = v10;
              goto LABEL_94;
            }

            v24 = v15 == 244;
            if (v15 < 0xF4)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_89;
            }

            v4 = v10;
            v6 = v10;
            if (v24)
            {
              goto LABEL_93;
            }

            return (v10 - a1);
          }

          if (v15 > 0xC1)
          {
            v3 = 1;
            v23 = v15 == 224;
            if (v15 < 0xE0)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_95;
            }

            v4 = v10;
            v6 = v10;
            if (v23)
            {
              goto LABEL_69;
            }

            goto LABEL_94;
          }

          v16 = v15 - 11;
          v3 = 1;
          v4 = v10;
          v6 = v10;
          if (v16 >= 0x53)
          {
            return (v10 - a1);
          }
        }
      }

      if (v7 >= 0xE0)
      {
        if (v7 == 224)
        {
LABEL_69:
          v13 = *++v4;
          if ((v13 & 0xE0) != 0xA0)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        goto LABEL_94;
      }

LABEL_95:
      v21 = *++v4;
      if (v21 >= -64)
      {
        goto LABEL_96;
      }

LABEL_43:
      v8 = *++v4;
      v7 = v8;
    }

LABEL_59:
    if (v7 > 0xF0)
    {
      v14 = v7 == 244;
      if (v7 < 0xF4)
      {
LABEL_89:
        v18 = *++v4;
        if (v18 >= -64)
        {
          goto LABEL_96;
        }
      }

      else
      {
LABEL_91:
        if (!v14)
        {
          goto LABEL_96;
        }

LABEL_93:
        v19 = *++v4;
        if (v19 >= -112)
        {
LABEL_96:
          LODWORD(v10) = v6;
          if (v3)
          {
            return (v10 - a1);
          }

          return v3;
        }
      }
    }

    else
    {
      if (v7 == 237)
      {
LABEL_82:
        v10 = v4;
LABEL_83:
        v4 = v10 + 1;
        if (v10[1] >= -96)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v7 == 240)
      {
LABEL_80:
        v17 = *++v4;
        if ((v17 - 144) >= 0x30)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_94:
    v20 = *++v4;
    if (v20 >= -64)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v3 = 0;
  if (v7)
  {
    v6 = v4;
    if (v7 != 10)
    {
      goto LABEL_44;
    }
  }

  return v3;
}

uint64_t _scan_link_title(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x26)
  {
    if (v1 == 34)
    {
      v2 = a1 + 1;
      v3 = a1[1];
      if (a1[1])
      {
        if ((v3 & 0x80) == 0 || v3 - 194 <= 0x32)
        {
          v4 = 0;
          v5 = a1 + 1;
          while (1)
          {
            if ((_scan_link_title_yybm[v3] & 0x10) != 0)
            {
              goto LABEL_41;
            }

            if (v3 > 0xE0)
            {
              break;
            }

            if (v3 > 0x5C)
            {
LABEL_27:
              if (v3 < 0xC2)
              {
                goto LABEL_170;
              }

LABEL_28:
              if (v3 == 224)
              {
                v7 = *++v2;
                if ((v7 & 0xE0) != 0xA0)
                {
                  goto LABEL_170;
                }
              }

              goto LABEL_40;
            }

            if (!v3)
            {
              goto LABEL_170;
            }

LABEL_11:
            if (v3 < 0x23)
            {
              goto LABEL_172;
            }

            ++v2;
            while (1)
            {
              v3 = *v2;
              if ((_scan_link_title_yybm[*v2] & 0x10) != 0)
              {
                break;
              }

              if (v3 > 0xE0)
              {
                goto LABEL_23;
              }

              if (v3 > 0x5C)
              {
                goto LABEL_27;
              }

              if (!*v2)
              {
                goto LABEL_170;
              }

              ++v2;
              if (v3 < 0x23)
              {
                v3 = *v2;
                if ((_scan_link_title_yybm[*v2] & 0x10) != 0)
                {
                  v4 = 1;
                  v5 = v2;
                  break;
                }

                if (v3 > 0xE0)
                {
                  if (v3 <= 0xEF)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_24;
                  }

                  if (v3 == 240)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_32;
                  }

                  if (v3 < 0xF4)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_35;
                  }

                  if (v3 == 244)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_38;
                  }

                  goto LABEL_173;
                }

                if (v3 <= 0x5C)
                {
                  if (!*v2)
                  {
                    goto LABEL_173;
                  }

                  v4 = 1;
                  v5 = v2;
                  goto LABEL_11;
                }

                if (v3 < 0xC2)
                {
                  goto LABEL_173;
                }

                v4 = 1;
                v5 = v2;
                goto LABEL_28;
              }
            }

LABEL_41:
            v13 = *++v2;
            v3 = v13;
          }

LABEL_23:
          if (v3 > 0xEF)
          {
            if (v3 == 240)
            {
LABEL_32:
              v8 = *++v2;
              if ((v8 - 144) >= 0x30)
              {
                goto LABEL_170;
              }
            }

            else if (v3 >= 0xF4)
            {
              if (v3 != 244)
              {
                goto LABEL_170;
              }

LABEL_38:
              v10 = *++v2;
              if (v10 >= -112)
              {
                goto LABEL_170;
              }
            }

            else
            {
LABEL_35:
              v9 = *++v2;
              if (v9 >= -64)
              {
                goto LABEL_170;
              }
            }
          }

          else
          {
LABEL_24:
            if (v3 == 237)
            {
              v6 = *++v2;
              if (v6 >= -96)
              {
                goto LABEL_170;
              }

              goto LABEL_40;
            }
          }

          v11 = *++v2;
          if (v11 >= -64)
          {
            goto LABEL_170;
          }

LABEL_40:
          v12 = *++v2;
          if (v12 >= -64)
          {
            goto LABEL_170;
          }

          goto LABEL_41;
        }
      }
    }

    return 0;
  }

  if (v1 == 39)
  {
    v2 = a1 + 1;
    v14 = a1[1];
    if (!a1[1] || (v14 & 0x80) != 0 && v14 - 194 > 0x32)
    {
      return 0;
    }

    v4 = 0;
    v5 = a1 + 1;
    while (1)
    {
      if ((_scan_link_title_yybm[v14] & 0x40) != 0)
      {
        goto LABEL_92;
      }

      if (v14 > 0xE0)
      {
        break;
      }

      if (v14 > 0x5C)
      {
LABEL_78:
        if (v14 < 0xC2)
        {
          goto LABEL_170;
        }

LABEL_79:
        if (v14 == 224)
        {
          v16 = *++v2;
          if ((v16 & 0xE0) != 0xA0)
          {
            goto LABEL_170;
          }
        }

        goto LABEL_91;
      }

      if (!v14)
      {
        goto LABEL_170;
      }

LABEL_62:
      if (v14 < 0x28)
      {
        goto LABEL_172;
      }

      ++v2;
      while (1)
      {
        v14 = *v2;
        if ((_scan_link_title_yybm[*v2] & 0x40) != 0)
        {
          break;
        }

        if (v14 > 0xE0)
        {
          goto LABEL_74;
        }

        if (v14 > 0x5C)
        {
          goto LABEL_78;
        }

        if (!*v2)
        {
          goto LABEL_170;
        }

        ++v2;
        if (v14 < 0x28)
        {
          v14 = *v2;
          if ((_scan_link_title_yybm[*v2] & 0x40) != 0)
          {
            v4 = 2;
            v5 = v2;
            break;
          }

          if (v14 > 0xE0)
          {
            if (v14 <= 0xEF)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_75;
            }

            if (v14 == 240)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_83;
            }

            if (v14 < 0xF4)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_86;
            }

            if (v14 == 244)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_89;
            }

            goto LABEL_173;
          }

          if (v14 <= 0x5C)
          {
            if (!*v2)
            {
              goto LABEL_173;
            }

            v4 = 2;
            v5 = v2;
            goto LABEL_62;
          }

          if (v14 < 0xC2)
          {
            goto LABEL_173;
          }

          v4 = 2;
          v5 = v2;
          goto LABEL_79;
        }
      }

LABEL_92:
      v22 = *++v2;
      v14 = v22;
    }

LABEL_74:
    if (v14 > 0xEF)
    {
      if (v14 == 240)
      {
LABEL_83:
        v17 = *++v2;
        if ((v17 - 144) >= 0x30)
        {
          goto LABEL_170;
        }
      }

      else if (v14 >= 0xF4)
      {
        if (v14 != 244)
        {
          goto LABEL_170;
        }

LABEL_89:
        v19 = *++v2;
        if (v19 >= -112)
        {
          goto LABEL_170;
        }
      }

      else
      {
LABEL_86:
        v18 = *++v2;
        if (v18 >= -64)
        {
          goto LABEL_170;
        }
      }
    }

    else
    {
LABEL_75:
      if (v14 == 237)
      {
        v15 = *++v2;
        if (v15 >= -96)
        {
          goto LABEL_170;
        }

        goto LABEL_91;
      }
    }

    v20 = *++v2;
    if (v20 >= -64)
    {
      goto LABEL_170;
    }

LABEL_91:
    v21 = *++v2;
    if (v21 >= -64)
    {
      goto LABEL_170;
    }

    goto LABEL_92;
  }

  if (v1 >= 0x29)
  {
    return 0;
  }

  v2 = a1 + 1;
  v23 = a1[1];
  if (v23 > 0x28)
  {
    if ((v23 & 0x80) != 0 && v23 - 194 >= 0x33)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (!a1[1] || v23 == 40)
    {
      return v4;
    }
  }

  v4 = 0;
  v5 = a1 + 1;
LABEL_114:
  if (_scan_link_title_yybm[v23] < 0)
  {
    goto LABEL_156;
  }

  if (v23 > 0xE0)
  {
    if (v23 > 0xEF)
    {
LABEL_143:
      if (v23 == 240)
      {
LABEL_144:
        v27 = *++v2;
        if ((v27 - 144) >= 0x30)
        {
          goto LABEL_170;
        }
      }

      else if (v23 >= 0xF4)
      {
        if (v23 != 244)
        {
          goto LABEL_170;
        }

LABEL_153:
        v29 = *++v2;
        if (v29 >= -112)
        {
LABEL_170:
          if (v4)
          {
            return (v5 - a1);
          }

          return v4;
        }
      }

      else
      {
LABEL_147:
        v28 = *++v2;
        if (v28 >= -64)
        {
          goto LABEL_170;
        }
      }

LABEL_154:
      v30 = *++v2;
      if (v30 >= -64)
      {
        goto LABEL_170;
      }

      goto LABEL_155;
    }

LABEL_132:
    if (v23 != 237)
    {
      goto LABEL_154;
    }

LABEL_133:
    v25 = *++v2;
    if (v25 >= -96)
    {
      goto LABEL_170;
    }

    goto LABEL_155;
  }

  if (v23 > 0x5C)
  {
    if (v23 < 0xC2)
    {
      goto LABEL_170;
    }

LABEL_136:
    if (v23 == 224)
    {
LABEL_137:
      v26 = *++v2;
      if ((v26 & 0xE0) != 0xA0)
      {
        goto LABEL_170;
      }
    }

    goto LABEL_155;
  }

  if (v23 < 0x29)
  {
    goto LABEL_170;
  }

  if (v23 == 41)
  {
    goto LABEL_172;
  }

  while (2)
  {
    v2 += 2;
    while (1)
    {
      v23 = *(v2 - 1);
      if (v23 > 0xDF)
      {
        --v2;
        if (v23 > 0xEF)
        {
          goto LABEL_143;
        }

        if (v23 != 237)
        {
          if (v23 == 224)
          {
            goto LABEL_137;
          }

          goto LABEL_154;
        }

        goto LABEL_133;
      }

      if (v23 <= 0x5B)
      {
        break;
      }

      ++v2;
      if (v23 != 92)
      {
        v2 -= 2;
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_156;
        }

        if (v23 < 0xC2)
        {
          goto LABEL_170;
        }

LABEL_155:
        v31 = *++v2;
        if (v31 >= -64)
        {
          goto LABEL_170;
        }

LABEL_156:
        v32 = *++v2;
        v23 = v32;
        goto LABEL_114;
      }
    }

    if (v23 != 41)
    {
      if (!*(v2 - 1))
      {
        goto LABEL_170;
      }

      --v2;
      goto LABEL_156;
    }

    v23 = *v2;
    if (_scan_link_title_yybm[*v2] < 0)
    {
      v4 = 3;
      v5 = v2;
      goto LABEL_156;
    }

    if (v23 > 0xE0)
    {
      if (v23 <= 0xEF)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_132;
      }

      if (v23 == 240)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_144;
      }

      if (v23 < 0xF4)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_147;
      }

      if (v23 == 244)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_153;
      }

      goto LABEL_173;
    }

    if (v23 > 0x5C)
    {
      if (v23 >= 0xC2)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_136;
      }

      goto LABEL_173;
    }

    if (v23 < 0x29)
    {
LABEL_173:
      v5 = v2;
      return (v5 - a1);
    }

    v4 = 3;
    v5 = v2;
    if (v23 != 41)
    {
      continue;
    }

    break;
  }

LABEL_172:
  v5 = v2 + 1;
  return (v5 - a1);
}

uint64_t _scan_spacechars(unsigned __int8 *a1)
{
  if ((_scan_spacechars_yybm[*a1] & 0x80000000) == 0)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
  do
  {
    v4 = _scan_spacechars_yybm[v3[result++]];
  }

  while (v4 < 0);
  return result;
}

uint64_t _scan_atx_heading_start(_BYTE *a1)
{
  if (*a1 != 35)
  {
    return 0;
  }

  v1 = a1 + 1;
  v2 = a1[1];
  if (_scan_atx_heading_start_yybm[a1[1]] < 0)
  {
    goto LABEL_29;
  }

  if (v2 <= 0xC)
  {
    goto LABEL_4;
  }

  if (v2 != 13)
  {
    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 2;
    v2 = a1[2];
    if (_scan_atx_heading_start_yybm[a1[2]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
      goto LABEL_4;
    }

    if (v2 == 13)
    {
      goto LABEL_31;
    }

    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 3;
    v2 = a1[3];
    if (_scan_atx_heading_start_yybm[a1[3]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
      goto LABEL_4;
    }

    if (v2 == 13)
    {
      goto LABEL_31;
    }

    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 4;
    v2 = a1[4];
    if (_scan_atx_heading_start_yybm[a1[4]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
      goto LABEL_4;
    }

    if (v2 == 13)
    {
      goto LABEL_31;
    }

    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 5;
    v2 = a1[5];
    if (_scan_atx_heading_start_yybm[a1[5]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
LABEL_4:
      if (v2 - 9 < 2)
      {
        goto LABEL_31;
      }

      return 0;
    }

    if (v2 != 13)
    {
      if (v2 != 35)
      {
        return 0;
      }

      v1 = a1 + 6;
      v3 = a1[6];
      if ((_scan_atx_heading_start_yybm[a1[6]] & 0x80000000) == 0)
      {
        if (v3 >= 9 && (v3 < 0xB || v3 == 13))
        {
          goto LABEL_31;
        }

        return 0;
      }

      do
      {
LABEL_29:
        v5 = *++v1;
      }

      while (_scan_atx_heading_start_yybm[v5] < 0);
      return (v1 - a1);
    }
  }

LABEL_31:
  LODWORD(v1) = v1 + 1;
  return (v1 - a1);
}

uint64_t _scan_setext_heading_line(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 61)
  {
    v7 = a1[1];
    v5 = a1 + 1;
    v6 = v7;
    if ((_scan_setext_heading_line_yybm[v7] & 0x80000000) == 0)
    {
      if (v6 <= 0xC)
      {
        if (v6 - 9 < 2)
        {
          goto LABEL_44;
        }

        return 0;
      }

      if (v6 != 13 && v6 != 32)
      {
        return 0;
      }

      while (1)
      {
LABEL_44:
        if (v6 > 0xC)
        {
          if (v6 != 32)
          {
            return v6 == 13;
          }
        }

        else
        {
          if (v6 < 9)
          {
            return 0;
          }

          if (v6 != 9)
          {
            return v6 <= 0xA;
          }
        }

LABEL_43:
        v14 = *++v5;
        v6 = v14;
      }
    }

    do
    {
      v9 = *++v5;
      v8 = v9;
    }

    while (_scan_setext_heading_line_yybm[v9] < 0);
    if (v8 > 0xC)
    {
      if (v8 != 13)
      {
        if (v8 == 32)
        {
          goto LABEL_43;
        }

        return 0;
      }
    }

    else
    {
      if (v8 < 9)
      {
        return 0;
      }

      if (v8 == 9)
      {
        goto LABEL_43;
      }

      if (v8 >= 0xB)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    if (v1 != 45)
    {
      return 0;
    }

    i = a1 + 1;
    v3 = a1[1];
    v4 = _scan_setext_heading_line_yybm[a1[1]];
    if ((v4 & 0x40) != 0)
    {
      for (i = a1 + 2; ; ++i)
      {
        v10 = *i;
        if ((_scan_setext_heading_line_yybm[*i] & 0x20) != 0)
        {
          goto LABEL_34;
        }

        if (v10 <= 0xC)
        {
          break;
        }

        if (v10 != 45)
        {
          if (v10 == 13)
          {
            return 2;
          }

          return 0;
        }
      }

      if (v10 - 9 < 2)
      {
        return 2;
      }

      return 0;
    }

    if (v3 > 0xC)
    {
      if (v3 != 13 && v3 != 32)
      {
        return 0;
      }
    }

    else if (v3 - 9 >= 2)
    {
      return 0;
    }

    while ((v4 & 0x20) != 0)
    {
LABEL_34:
      v11 = *++i;
      v3 = v11;
      v4 = _scan_setext_heading_line_yybm[v11];
    }

    if (v3 >= 9 && (v3 >= 0xB ? (v12 = v3 == 13) : (v12 = 1), v12))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _scan_open_code_fence(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 126)
  {
    if (v1 == 96 && a1[1] == 96 && (_scan_open_code_fence_yybm[a1[2]] & 0x10) != 0)
    {
      v2 = a1 + 1;
      LODWORD(v3) = 2;
      do
      {
        v4 = v3;
        v5 = v2[2];
        ++v2;
        v3 = (v3 + 1);
      }

      while ((_scan_open_code_fence_yybm[v5] & 0x10) != 0);
      v6 = v2 + 1;
      if (v5 > 0xDF)
      {
        if (v5 > 0xEF)
        {
          if (v5 != 240)
          {
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        if (v5 != 224)
        {
          if (v5 == 237)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }

        goto LABEL_46;
      }

      if (v5 <= 0xC)
      {
        result = v5;
        if (v5)
        {
          result = v3;
          if (v5 != 10)
          {
            goto LABEL_41;
          }
        }

        return result;
      }

      result = v3;
      if (v5 == 13)
      {
        return result;
      }

      if ((v5 & 0x80) != 0)
      {
        if (v5 >= 0xC2)
        {
          goto LABEL_60;
        }

        return 0;
      }

      do
      {
        do
        {
LABEL_41:
          v11 = *++v6;
          LODWORD(v5) = v11;
        }

        while ((_scan_open_code_fence_yybm[v11] & 0x40) != 0);
        v2 = v6 - 1;
        if (v5 > 0xEC)
        {
          if (v5 > 0xF0)
          {
LABEL_53:
            if (v5 >= 0xF4)
            {
              if (v5 != 244)
              {
                return 0;
              }

              v13 = v2[2];
              v12 = v2 + 2;
              if (v13 >= -112)
              {
                return 0;
              }

              v6 = v12;
            }

            else
            {
              v6 = v2 + 2;
              if (v2[2] >= -64)
              {
                return 0;
              }
            }

            goto LABEL_59;
          }

          if (v5 != 237)
          {
            if (v5 == 240)
            {
LABEL_51:
              v6 = v2 + 2;
              if (v2[2] - 144 >= 0x30)
              {
                return 0;
              }
            }

LABEL_59:
            v14 = *++v6;
            if (v14 >= -64)
            {
              return 0;
            }

            goto LABEL_60;
          }

LABEL_62:
          v6 = v2 + 2;
          if (v2[2] >= -96)
          {
            return 0;
          }
        }

        else
        {
          if (v5 <= 0xC1)
          {
            goto LABEL_64;
          }

          if (v5 >= 0xE0)
          {
            if (v5 != 224)
            {
              goto LABEL_59;
            }

LABEL_46:
            v6 = v2 + 2;
            if ((v2[2] & 0xE0) != 0xA0)
            {
              return 0;
            }
          }
        }

LABEL_60:
        v15 = *++v6;
      }

      while (v15 < -64);
    }

    return 0;
  }

  if (a1[1] != 126 || (_scan_open_code_fence_yybm[a1[2]] & 0x20) == 0)
  {
    return 0;
  }

  v8 = a1 + 1;
  LODWORD(v9) = 2;
  do
  {
    v4 = v9;
    v5 = v8[2];
    ++v8;
    v9 = (v9 + 1);
  }

  while ((_scan_open_code_fence_yybm[v5] & 0x20) != 0);
  v10 = v8 + 1;
  if (v5 > 0xDF)
  {
    if (v5 > 0xEF)
    {
      if (v5 != 240)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    if (v5 != 224)
    {
      if (v5 == 237)
      {
        goto LABEL_89;
      }

      goto LABEL_85;
    }

    goto LABEL_72;
  }

  if (v5 > 0xC)
  {
    result = v9;
    if (v5 == 13)
    {
      return result;
    }

    if ((v5 & 0x80) != 0)
    {
      if (v5 >= 0xC2)
      {
        goto LABEL_86;
      }

      return 0;
    }

    while (1)
    {
      do
      {
LABEL_67:
        v16 = *++v10;
        LODWORD(v5) = v16;
      }

      while (_scan_open_code_fence_yybm[v16] < 0);
      v8 = v10 - 1;
      if (v5 > 0xEC)
      {
        if (v5 > 0xF0)
        {
LABEL_79:
          if (v5 >= 0xF4)
          {
            if (v5 != 244)
            {
              return 0;
            }

            v18 = v8[2];
            v17 = v8 + 2;
            if (v18 >= -112)
            {
              return 0;
            }

            v10 = v17;
          }

          else
          {
            v10 = v8 + 2;
            if (v8[2] >= -64)
            {
              return 0;
            }
          }

          goto LABEL_85;
        }

        if (v5 != 237)
        {
          if (v5 == 240)
          {
LABEL_77:
            v10 = v8 + 2;
            if (v8[2] - 144 >= 0x30)
            {
              return 0;
            }
          }

LABEL_85:
          v19 = *++v10;
          if (v19 >= -64)
          {
            return 0;
          }

          goto LABEL_86;
        }

LABEL_89:
        v10 = v8 + 2;
        if (v8[2] >= -96)
        {
          return 0;
        }
      }

      else
      {
        if (v5 <= 0xC1)
        {
LABEL_64:
          if ((v5 - 14) >= 0xFFFFFFF3)
          {
            return (v4 + 1);
          }

          else
          {
            return 0;
          }
        }

        if (v5 >= 0xE0)
        {
          if (v5 != 224)
          {
            goto LABEL_85;
          }

LABEL_72:
          v10 = v8 + 2;
          if ((v8[2] & 0xE0) != 0xA0)
          {
            return 0;
          }
        }
      }

LABEL_86:
      v20 = *++v10;
      if (v20 >= -64)
      {
        return 0;
      }
    }
  }

  result = v5;
  if (v5)
  {
    result = v9;
    if (v5 != 10)
    {
      goto LABEL_67;
    }
  }

  return result;
}

unint64_t _scan_close_code_fence(unint64_t result)
{
  v1 = *result;
  if (v1 == 126)
  {
    if (*(result + 1) != 126 || (_scan_close_code_fence_yybm[*(result + 2)] & 0x40) == 0)
    {
      return 0;
    }

    v5 = (result + 3);
    LODWORD(result) = 2;
    do
    {
      v7 = *v5++;
      v6 = v7;
      result = (result + 1);
    }

    while ((_scan_close_code_fence_yybm[v7] & 0x40) != 0);
    if (v6 > 0xC)
    {
      if (v6 == 13)
      {
        return result;
      }

      if (v6 != 32)
      {
        return 0;
      }

      do
      {
LABEL_31:
        while (1)
        {
          v11 = *v5++;
          v10 = v11;
          if (v11 <= 0xC)
          {
            break;
          }

          if (v10 != 32)
          {
            if (v10 != 13)
            {
              return 0;
            }

            return result;
          }
        }

        if (v10 < 9)
        {
          return 0;
        }
      }

      while (v10 == 9);
      if (v10 > 0xA)
      {
        return 0;
      }
    }

    else
    {
      if (v6 < 9)
      {
        return 0;
      }

      if (v6 == 9)
      {
        goto LABEL_31;
      }

      if (v6 >= 0xB)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v1 != 96 || *(result + 1) != 96 || (_scan_close_code_fence_yybm[*(result + 2)] & 0x20) == 0)
    {
      return 0;
    }

    v2 = (result + 3);
    LODWORD(result) = 2;
    do
    {
      v4 = *v2++;
      v3 = v4;
      result = (result + 1);
    }

    while ((_scan_close_code_fence_yybm[v4] & 0x20) != 0);
    if (v3 > 0xC)
    {
      if (v3 == 13)
      {
        return result;
      }

      if (v3 != 32)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 9)
      {
        return 0;
      }

      if (v3 != 9)
      {
        if (v3 < 0xB)
        {
          return result;
        }

        return 0;
      }
    }

    do
    {
      v9 = *v2++;
      v8 = v9;
    }

    while (_scan_close_code_fence_yybm[v9] < 0);
    if (v8 < 9 || v8 >= 0xB && v8 != 13)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _scan_entity(_BYTE *a1)
{
  if (*a1 != 38)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 > 0x40)
  {
    if (v1 >= 0x5B && v1 - 97 >= 0x1A)
    {
      return 0;
    }

    v6 = a1[2];
    if (v6 > 0x40)
    {
      if (v6 >= 0x5B && v6 - 97 >= 0x1A)
      {
        return 0;
      }
    }

    else if (v6 - 48 >= 0xA)
    {
      return 0;
    }

    LODWORD(v3) = a1 + 3;
    v4 = a1[3];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 4;
    v4 = a1[4];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 5;
    v4 = a1[5];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 6;
    v4 = a1[6];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 7;
    v4 = a1[7];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 8;
    v4 = a1[8];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 9;
    v4 = a1[9];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 10;
    v4 = a1[10];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 11;
    v4 = a1[11];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 12;
    v4 = a1[12];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 13;
    v4 = a1[13];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 14;
    v4 = a1[14];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 15;
    v4 = a1[15];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 16;
    v4 = a1[16];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 17;
    v4 = a1[17];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 18;
    v4 = a1[18];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 19;
    v4 = a1[19];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 20;
    v4 = a1[20];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 21;
    v4 = a1[21];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 22;
    v4 = a1[22];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 23;
    v4 = a1[23];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 24;
    v4 = a1[24];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 25;
    v4 = a1[25];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 26;
    v4 = a1[26];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 27;
    v4 = a1[27];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 28;
    v4 = a1[28];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 29;
    v4 = a1[29];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 30;
    v4 = a1[30];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 31;
    v4 = a1[31];
    if (v4 > 0x3B)
    {
      if (v4 > 0x5A)
      {
        if (v4 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    v3 = a1 + 32;
    v4 = a1[32];
    if (v4 <= 0x3B)
    {
      goto LABEL_112;
    }

    if (v4 > 0x5A)
    {
      if (v4 - 97 >= 0x1A)
      {
        return 0;
      }

      goto LABEL_127;
    }
  }

  else
  {
    if (v1 != 35)
    {
      return 0;
    }

    v2 = a1[2];
    if (v2 <= 0x57)
    {
      if (v2 - 48 >= 0xA)
      {
        return 0;
      }

      LODWORD(v3) = a1 + 3;
      v4 = a1[3];
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }

      LODWORD(v3) = a1 + 4;
      v4 = a1[4];
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }

      LODWORD(v3) = a1 + 5;
      v4 = a1[5];
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }

      LODWORD(v3) = a1 + 6;
      v4 = a1[6];
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }

      LODWORD(v3) = a1 + 7;
      v4 = a1[7];
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }

      v3 = a1 + 8;
      v4 = a1[8];
      goto LABEL_112;
    }

    if ((v2 & 0xFFFFFFDF) != 0x58)
    {
      return 0;
    }

    v7 = a1[3];
    if (v7 > 0x40)
    {
      if (v7 >= 0x47 && v7 - 97 >= 6)
      {
        return 0;
      }
    }

    else if (v7 - 48 >= 0xA)
    {
      return 0;
    }

    LODWORD(v3) = a1 + 4;
    v4 = a1[4];
    if (v4 > 0x3B)
    {
      if (v4 > 0x46)
      {
        if (v4 - 97 >= 6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 5;
    v4 = a1[5];
    if (v4 > 0x3B)
    {
      if (v4 > 0x46)
      {
        if (v4 - 97 >= 6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 6;
    v4 = a1[6];
    if (v4 > 0x3B)
    {
      if (v4 > 0x46)
      {
        if (v4 - 97 >= 6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    LODWORD(v3) = a1 + 7;
    v4 = a1[7];
    if (v4 > 0x3B)
    {
      if (v4 > 0x46)
      {
        if (v4 - 97 >= 6)
        {
          return 0;
        }
      }

      else if (v4 < 0x41)
      {
        return 0;
      }
    }

    else
    {
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }
    }

    v3 = a1 + 8;
    v4 = a1[8];
    if (v4 <= 0x3B)
    {
LABEL_112:
      if (v4 < 0x30)
      {
        return 0;
      }

      if (v4 >= 0x3A)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

    if (v4 > 0x46)
    {
      if (v4 - 97 >= 6)
      {
        return 0;
      }

      goto LABEL_127;
    }
  }

  if (v4 < 0x41)
  {
    return 0;
  }

LABEL_127:
  v8 = v3[1];
  LODWORD(v3) = v3 + 1;
  v4 = v8;
LABEL_128:
  if (v4 == 59)
  {
    return (v3 - a1 + 1);
  }

  return 0;
}