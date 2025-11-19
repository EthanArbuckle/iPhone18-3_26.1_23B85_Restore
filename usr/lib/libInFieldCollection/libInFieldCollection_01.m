uint64_t sub_2979FCCB8(uint64_t result)
{
  v1 = (qword_2A13A4260 - qword_2A13A4268) ^ &v89;
  qword_2A13A4268 = 1460649907 * v1 + 0x4D1A8838E7FB21C9;
  qword_2A13A4260 = 1460649907 * (v1 ^ 0x4D1A8838E7FB21C9);
  if (!result)
  {
    return result;
  }

  v2 = result - 16;
  v3 = qword_2A13A4DE0 ^ *(result - 16 + (*(result - 8) & 0xFFFFFFFFFFFFFFF8));
  if ((*(v3 + 0x370) & 2) != 0 && atomic_exchange((v3 + 884), 1u))
  {
    v4 = 1;
    while (*(v3 + 884) || atomic_exchange((v3 + 884), 1u))
    {
      if ((v4 & 0x3F) == 0)
      {
        result = (off_2A1E5DED0[((-77 * (qword_2A13A4268 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A4268 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x8E]) + 1506])();
      }

      ++v4;
    }
  }

  v5 = *(v2 + 8);
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = v2 + (v5 & 0xFFFFFFFFFFFFFFF8);
  if ((v5 & 1) == 0)
  {
    v8 = *v2;
    if ((v5 & 2) == 0)
    {
      v9 = v6 + v8 + 32;
      result = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4268) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 - qword_2A13A4268) ^ 0xC9))] ^ 0xC6]) + 1363])(v2 - v8, v9);
      if (!result)
      {
        *(v3 + 856) -= v9;
      }

      goto LABEL_137;
    }

    v2 -= v8;
    v6 += v8;
    if (v2 != *(v3 + 32))
    {
      if (v8 <= 0xFF)
      {
        v10 = *(v2 + 16);
        v11 = *(v2 + 24);
        if (v11 == v10)
        {
          *v3 &= ~(1 << (v8 >> 3));
        }

        else
        {
          *(v10 + 24) = v11;
          *(v11 + 16) = v10;
        }

        goto LABEL_40;
      }

      v12 = *(v2 + 48);
      v13 = *(v2 + 24);
      if (v13 == v2)
      {
        v15 = (v2 + 40);
        v16 = *(v2 + 40);
        if (v16 || (v15 = (v2 + 32), (v16 = *(v2 + 32)) != 0))
        {
          do
          {
            do
            {
              v17 = v15;
              v13 = v16;
              v15 = v16 + 5;
              v16 = v16[5];
            }

            while (v16);
            v15 = v13 + 4;
            v16 = v13[4];
          }

          while (v16);
          *v17 = 0;
          if (!v12)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v13 = 0;
          if (!v12)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v14 = *(v2 + 16);
        *(v14 + 24) = v13;
        v13[2] = v14;
        if (!v12)
        {
          goto LABEL_40;
        }
      }

      v18 = v3 + 8 * *(v2 + 56);
      if (v2 == *(v18 + 600))
      {
        *(v18 + 600) = v13;
        if (!v13)
        {
          *(v3 + 4) &= ~(1 << *(v2 + 56));
          goto LABEL_40;
        }
      }

      else
      {
        v19 = 40;
        if (*(v12 + 32) == v2)
        {
          v19 = 32;
        }

        *(v12 + v19) = v13;
        if (!v13)
        {
          goto LABEL_40;
        }
      }

      v13[6] = v12;
      v20 = *(v2 + 32);
      if (v20)
      {
        v13[4] = v20;
        *(v20 + 48) = v13;
      }

      v21 = *(v2 + 40);
      if (v21)
      {
        v13[5] = v21;
        *(v21 + 48) = v13;
      }

      goto LABEL_40;
    }

    if ((~*(v7 + 8) & 3) == 0)
    {
      *(v3 + 8) = v6;
      *(v7 + 8) &= ~1uLL;
LABEL_66:
      *(v2 + 8) = v6 | 1;
      *(v2 + v6) = v6;
      goto LABEL_137;
    }
  }

LABEL_40:
  v22 = *(v7 + 8);
  if ((v22 & 2) != 0)
  {
    *(v7 + 8) = v22 & 0xFFFFFFFFFFFFFFFELL;
    *(v2 + 8) = v6 | 1;
    *(v2 + v6) = v6;
    goto LABEL_47;
  }

  if (v7 == *(v3 + 40))
  {
    v34 = (v3 + 16);
    v35 = *(v3 + 16) + v6;
    *(v3 + 16) = v35;
    *(v3 + 40) = v2;
    *(v2 + 8) = v35 | 1;
    if (v2 == *(v3 + 32))
    {
      *(v3 + 32) = 0;
      *(v3 + 8) = 0;
    }

    if (v35 <= *(v3 + 48))
    {
      goto LABEL_137;
    }

    v36 = *(v3 + 40);
    if (!v36)
    {
      goto LABEL_137;
    }

    if (*v34 >= 0x51uLL)
    {
      v37 = ((*v34 + xmmword_2A13A4DF0 - 81) / xmmword_2A13A4DF0 - 1) * xmmword_2A13A4DF0;
      v38 = v3 + 888;
      v39 = v3 + 888;
      do
      {
        if (*v39 <= v36 && *v39 + *(v39 + 8) > v36)
        {
          break;
        }

        v39 = *(v39 + 16);
      }

      while (v39);
      if ((*(v39 + 24) & 9) == 1)
      {
        v40 = *(v39 + 8);
        v41 = v40 - v37;
        if (v40 >= v37)
        {
          v42 = *v39;
          v43 = *v39 + v40;
          while (v38 < v42 || v38 >= v43)
          {
            v38 = *(v38 + 16);
            if (!v38)
            {
              result = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4268) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 - qword_2A13A4268) ^ 0xC9))] ^ 0x8F]) + 1452])(v42 + v41, ((*v34 + xmmword_2A13A4DF0 - 81) / xmmword_2A13A4DF0 - 1) * xmmword_2A13A4DF0);
              if (v37)
              {
                if (result)
                {
                  v37 = 0;
                }

                else
                {
                  *(v39 + 8) -= v37;
                  *(v3 + 856) -= v37;
                  v54 = *(v3 + 40);
                  if (((v54 + 16) & 0xF) != 0)
                  {
                    v55 = -(v54 + 16) & 0xFLL;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v56 = v54 + v55;
                  v57 = *(v3 + 16) - v37 - v55;
                  *(v3 + 40) = v56;
                  *(v3 + 16) = v57;
                  *(v56 + 8) = v57 | 1;
                  *(v56 + v57 + 8) = 80;
                  *(v3 + 48) = qword_2A13A4E00;
                }
              }

              goto LABEL_157;
            }
          }
        }
      }
    }

    v37 = 0;
LABEL_157:
    v101 = (v3 + 16);
    v100 = 1;
    v99 = v37;
    v64 = *(v3 + 904);
    if (!v64 || (*(v64 + 24) & 9) != 1)
    {
      goto LABEL_194;
    }

    result = *v64;
    v65 = *(v64 + 8);
    v66 = *(v64 + 16);
    v67 = *v64 + 16;
    v68 = (v67 & 0xF) != 0 ? -v67 & 0xFLL : 0;
    v102 = result + v68;
    v69 = *(result + v68 + 8);
    v103 = v69 & 0xFFFFFFFFFFFFFFF8;
    if ((v69 & 3) != 1 || v102 + v103 < result + v65 - 80)
    {
LABEL_194:
      v65 = 0;
      goto LABEL_195;
    }

    if (v102 == *(v3 + 32))
    {
      *(v3 + 32) = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      v70 = *(v102 + 48);
      v71 = *(v102 + 24);
      if (v71 == v102)
      {
        v73 = (v102 + 40);
        v74 = *(v102 + 40);
        if (v74 || (v71 = 0, v73 = (v102 + 32), (v74 = *(v102 + 32)) != 0))
        {
          do
          {
            do
            {
              v75 = v73;
              v71 = v74;
              v73 = v74 + 5;
              v74 = v74[5];
            }

            while (v74);
            v73 = v71 + 4;
            v74 = v71[4];
          }

          while (v74);
          *v75 = 0;
        }
      }

      else
      {
        v72 = *(v102 + 16);
        *(v72 + 24) = v71;
        v71[2] = v72;
      }

      if (!v70)
      {
        goto LABEL_201;
      }

      v76 = v102;
      v77 = v3 + 8 * *(v102 + 56);
      if (v102 != *(v77 + 600))
      {
        v78 = 40;
        if (*(v70 + 32) == v102)
        {
          v78 = 32;
        }

        *(v70 + v78) = v71;
        if (!v71)
        {
          goto LABEL_201;
        }

        goto LABEL_190;
      }

      *(v77 + 600) = v71;
      if (v71)
      {
LABEL_190:
        v71[6] = v70;
        v79 = *(v102 + 32);
        if (v79)
        {
          v71[4] = v79;
          *(v79 + 48) = v71;
        }

        v80 = *(v102 + 40);
        if (v80)
        {
          v71[5] = v80;
          *(v80 + 48) = v71;
        }

        goto LABEL_201;
      }

      *(v3 + 4) &= ~(1 << *(v76 + 56));
    }

LABEL_201:
    result = (off_2A1E5DED0[((-77 * (qword_2A13A4268 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A4268 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x46]) + 1341])();
    if (result)
    {
      v94 = 0;
      if (v69 >= 0x100)
      {
        v94 = 31;
        if (!(v69 >> 24))
        {
          v82 = (((v69 >> 8) + 1048320) >> 16) & 8;
          v83 = (v69 >> 8) << v82;
          v84 = (v83 << (((v83 + 520192) >> 16) & 4) << ((((v83 << (((v83 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v83 + 520192) >> 16) & 4 | v82 | (((v83 << (((v83 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
          v94 = ((v103 >> (v84 + 21)) & 1 | (2 * v84)) + 28;
        }
      }

      v95 = v94;
      v85 = v3 + 8 * v94 + 600;
      v86 = v102;
      *(v102 + 56) = v94;
      v96 = v85;
      v97 = v3 + 4;
      v88 = (v86 + 32);
      v33 = ((-77 * ((qword_2A13A4260 + qword_2A13A4268) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A4268) ^ 0xC9))] ^ 0xA7]) + 1470;
LABEL_106:
      v87 = off_2A1E5DED0[v33];
      v58 = v88;
      v59 = -v88 & 7;
      if (v59 > 0x10)
      {
        LODWORD(v59) = 16;
      }

      if (v59 <= 3)
      {
        if (v59 == 1)
        {
LABEL_124:
          *v58++ = 0;
          goto LABEL_125;
        }

        if (v59 == 2)
        {
LABEL_123:
          *v58++ = 0;
          goto LABEL_124;
        }

        if (v59 != 3)
        {
LABEL_125:
          v60 = 16 - v59;
          if (v60 >= 8)
          {
            v61 = ((v60 >> 3) + 7) >> 3;
            v62 = (v60 >> 3) & 7;
            if (v62 > 3)
            {
              if (((v60 >> 3) & 7) <= 5)
              {
                if (v62 == 4)
                {
                  goto LABEL_146;
                }

                goto LABEL_145;
              }

              if (v62 == 6)
              {
                goto LABEL_144;
              }

              goto LABEL_143;
            }

            if (((v60 >> 3) & 7) > 1)
            {
              if (v62 == 2)
              {
                goto LABEL_148;
              }

              goto LABEL_147;
            }

            if (v62)
            {
              goto LABEL_149;
            }

            do
            {
              *v58 = 0;
              v58 += 8;
LABEL_143:
              *v58 = 0;
              v58 += 8;
LABEL_144:
              *v58 = 0;
              v58 += 8;
LABEL_145:
              *v58 = 0;
              v58 += 8;
LABEL_146:
              *v58 = 0;
              v58 += 8;
LABEL_147:
              *v58 = 0;
              v58 += 8;
LABEL_148:
              *v58 = 0;
              v58 += 8;
LABEL_149:
              *v58 = 0;
              v58 += 8;
              --v61;
            }

            while (v61);
          }

          v63 = v60 & 7;
          if (v63 <= 3)
          {
            if (v63 <= 1)
            {
              if (!v63)
              {
                __asm { BRAA            X8, X17 }
              }

LABEL_177:
              *v58 = 0;
              __asm { BRAA            X8, X17 }
            }

            if (v63 == 2)
            {
LABEL_176:
              *v58++ = 0;
              goto LABEL_177;
            }

LABEL_175:
            *v58++ = 0;
            goto LABEL_176;
          }

          if (v63 > 5)
          {
            if (v63 != 6)
            {
              *v58++ = 0;
            }

            *v58++ = 0;
          }

          else if (v63 == 4)
          {
            goto LABEL_174;
          }

          *v58++ = 0;
LABEL_174:
          *v58++ = 0;
          goto LABEL_175;
        }

LABEL_122:
        *v58++ = 0;
        goto LABEL_123;
      }

      if (v59 > 5)
      {
        if (v59 != 6)
        {
          if (v59 != 7)
          {
            goto LABEL_125;
          }

          *v88 = 0;
          v58 = v88 + 1;
        }

        *v58++ = 0;
      }

      else if (v59 == 4)
      {
LABEL_121:
        *v58++ = 0;
        goto LABEL_122;
      }

      *v58++ = 0;
      goto LABEL_121;
    }

    *(v3 + 856) -= v65;
    *(v3 + 904) = v66;
LABEL_195:
    *(v3 + 56) = 4095;
    v81 = v100 == 1 && v99 == -v65;
    if (v81 && *v101 > *(v3 + 48))
    {
      *(v3 + 48) = -1;
    }

    goto LABEL_137;
  }

  if (v7 == *(v3 + 32))
  {
    v6 += *(v3 + 8);
    *(v3 + 8) = v6;
    *(v3 + 32) = v2;
    goto LABEL_66;
  }

  v6 += v22 & 0xFFFFFFFFFFFFFFF8;
  if (v22 <= 0xFF)
  {
    v24 = *(v7 + 16);
    v23 = *(v7 + 24);
    if (v23 == v24)
    {
      *v3 &= ~(1 << (v22 >> 3));
    }

    else
    {
      *(v24 + 24) = v23;
      *(v23 + 16) = v24;
    }

    goto LABEL_93;
  }

  v44 = *(v7 + 48);
  v45 = *(v7 + 24);
  if (v45 == v7)
  {
    v47 = (v7 + 40);
    v48 = *(v7 + 40);
    if (v48 || (v47 = (v7 + 32), (v48 = *(v7 + 32)) != 0))
    {
      do
      {
        do
        {
          v49 = v47;
          v45 = v48;
          v47 = v48 + 5;
          v48 = v48[5];
        }

        while (v48);
        v47 = v45 + 4;
        v48 = v45[4];
      }

      while (v48);
      *v49 = 0;
      if (!v44)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v45 = 0;
      if (!v44)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v46 = *(v7 + 16);
    *(v46 + 24) = v45;
    v45[2] = v46;
    if (!v44)
    {
      goto LABEL_93;
    }
  }

  v50 = v3 + 8 * *(v7 + 56);
  if (v7 == *(v50 + 600))
  {
    *(v50 + 600) = v45;
    if (!v45)
    {
      *(v3 + 4) &= ~(1 << *(v7 + 56));
      goto LABEL_93;
    }

    goto LABEL_88;
  }

  v51 = 40;
  if (*(v44 + 32) == v7)
  {
    v51 = 32;
  }

  *(v44 + v51) = v45;
  if (v45)
  {
LABEL_88:
    v45[6] = v44;
    v52 = *(v7 + 32);
    if (v52)
    {
      v45[4] = v52;
      *(v52 + 48) = v45;
    }

    v53 = *(v7 + 40);
    if (v53)
    {
      v45[5] = v53;
      *(v53 + 48) = v45;
    }
  }

LABEL_93:
  *(v2 + 8) = v6 | 1;
  *(v2 + v6) = v6;
  if (v2 == *(v3 + 32))
  {
    *(v3 + 8) = v6;
    goto LABEL_137;
  }

LABEL_47:
  v98 = v6;
  if (v6 > 0xFF)
  {
    v90 = 31;
    if (!(v6 >> 24))
    {
      v29 = (((v98 >> 8) + 1048320) >> 16) & 8;
      v30 = (v98 >> 8) << v29;
      v31 = (v30 << (((v30 + 520192) >> 16) & 4) << ((((v30 << (((v30 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v30 + 520192) >> 16) & 4 | v29 | (((v30 << (((v30 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
      v90 = ((v98 >> (v31 + 21)) & 1 | (2 * v31)) + 28;
    }

    v91 = v90;
    v32 = v3 + 8 * v90 + 600;
    *(v2 + 56) = v90;
    v92 = v32;
    v93 = v3 + 4;
    v88 = (v2 + 32);
    v33 = ((-77 * ((qword_2A13A4260 - qword_2A13A4268) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A4268) ^ 0xC9))] ^ 0xBE]) + 1518;
    goto LABEL_106;
  }

  v25 = v6 >> 3;
  v26 = v3 + 16 * (v6 >> 3) + 72;
  v27 = 1 << v25;
  if ((v27 & *v3) != 0)
  {
    v28 = *(v26 + 16);
  }

  else
  {
    *v3 |= v27;
    v28 = v26;
  }

  *(v26 + 16) = v2;
  *(v28 + 24) = v2;
  *(v2 + 16) = v28;
  *(v2 + 24) = v26;
LABEL_137:
  if ((*(v3 + 880) & 2) != 0)
  {
    atomic_store(0, (v3 + 884));
  }

  return result;
}

void *sub_2979FDB08(void *result)
{
  qword_2A13A42A0 = 1460649907 * ((qword_2A13A4260 + qword_2A13A42A0) ^ &v3 ^ 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = qword_2A13A42A0;
  if (result)
  {
    v1 = result;
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25000[byte_297A24F00[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xF8]) + 1546])(*result);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9))] ^ 0xF3]) + 1390])(v1[2]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xC3]) + 1601])(v1[4]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 - qword_2A13A42A0) ^ 0xC9))] ^ 0x1E]) + 1579])(v1[6]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24800[byte_297A24700[(-77 * ((qword_2A13A4260 - qword_2A13A42A0) ^ 0xC9))] ^ 0xC3]) + 1601])(v1[8]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xBE]) + 1568])(v1[10]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A42A0) ^ 0xC9))] ^ 0xF3]) + 1390])(v1[12]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25000[byte_297A24F00[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xF8]) + 1546])(v1[14]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9))] ^ 0x87]) + 1401])(v1[16]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xBE]) + 1568])(v1[18]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xA7]) + 1557])(v1[20]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9))] ^ 0x1E]) + 1579])(v1[22]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24C00[byte_297A24B00[(-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9))] ^ 0xFD]) + 1468])(v1[24]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xA7]) + 1557])(v1[26]);
    (off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24C00[byte_297A24B00[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xFD]) + 1468])(v1[28]);
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9)) ^ byte_297A24C00[byte_297A24B00[(-77 * ((qword_2A13A4260 + qword_2A13A42A0) ^ 0xC9))] ^ 0xB6]) + 1423])(v1[30]);
    v2 = off_2A1E5DED0[((-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25000[byte_297A24F00[(-77 * (qword_2A13A42A0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x3D]) + 1379];

    return v2(v1);
  }

  return result;
}

uint64_t sub_2979FE0E4(uint64_t result, unsigned __int8 *a2, int a3, char a4)
{
  v4 = &v10[qword_2A13A4260 ^ qword_2A13A42D0];
  qword_2A13A42D0 = 1460649907 * v4 - 0x4D1A8838E7FB21C9;
  qword_2A13A4260 = 1460649907 * (v4 ^ 0x4D1A8838E7FB21C9);
  if (a3)
  {
    v6 = a3;
    v8 = result;
    do
    {
      v9 = *a2++;
      result = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42D0) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A42D0) ^ 0xC9))] ^ 0x46]) + 1494])(*(*v8 + 16 * (a4 & 0xF)), 0, *(*v8 + 16 * (a4 & 0xF) + 8), v9);
      ++a4;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2979FE210(uint64_t result, unsigned int a2, int a3, char a4)
{
  qword_2A13A4288 = 1460649907 * (qword_2A13A4288 ^ &v13 ^ qword_2A13A4260 ^ 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = qword_2A13A4288;
  if (a3)
  {
    v4 = &v12 ^ a2;
    v5 = v4 ^ a4;
    v6 = v4 + a4;
    if (a4)
    {
      v6 = v5;
    }

    if (*(result + a2))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (*(result + a2) == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = 2 * a2;
    v10 = (a3 - 1);
    v11 = result;
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4288) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 + qword_2A13A4288) ^ 0xC9))] ^ 0x8F]) + 1605])();
    return (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4288) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 + qword_2A13A4288) ^ 0xC9))] ^ 0xF8]) + 1561])(v11, (v9 + 2), v10, v8);
  }

  else
  {
    *(result + a2) = a4;
  }

  return result;
}

uint64_t sub_2979FE3B4(uint64_t result, _BYTE *a2, int a3, char a4)
{
  v4 = (qword_2A13A4260 ^ qword_2A13A42B0) - &v9;
  qword_2A13A42B0 = 1460649907 * v4 + 0x75BA510DC94968BLL;
  qword_2A13A4260 = 1460649907 * (v4 ^ 0x4D1A8838E7FB21C9);
  if (a3)
  {
    v6 = a3;
    v8 = result;
    do
    {
      result = (off_2A1E5DED0[((-77 * (qword_2A13A42B0 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A42B0 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xA7]) + 1514])(*(v8 + 16 * (a4 & 0xF)), 0, *(v8 + 16 * (a4 & 0xF) + 8));
      *a2++ = result;
      ++a4;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2979FE4DC(uint64_t a1, unsigned int a2, int a3)
{
  v3 = &v12 ^ qword_2A13A42A8 ^ qword_2A13A4260;
  qword_2A13A42A8 = 1460649907 * v3 + 0x75BA510DC94968BLL;
  qword_2A13A4260 = 1460649907 * (v3 ^ 0x4D1A8838E7FB21C9);
  if (a3)
  {
    v4 = 2 * a2;
    v5 = (a3 - 1);
    v8 = (off_2A1E5DED0[((-77 * (qword_2A13A42A8 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25200[byte_297A25100[(-77 * (qword_2A13A42A8 ^ 0xC9 ^ qword_2A13A4260))] ^ 6]) + 1414])(a1, (2 * a2) | 1, v5);
    v9 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42A8) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 - qword_2A13A42A8) ^ 0xC9))] ^ 0x1E]) + 1581])(a1, (v4 + 2), v5);
    if (*(a1 + a2) == 1)
    {
      return (v9 + v8);
    }

    else if (!*(a1 + a2))
    {
      return (v9 ^ v8);
    }
  }

  else
  {
    return *(a1 + a2);
  }

  return v10;
}

uint64_t sub_2979FE668(uint64_t *a1)
{
  v1 = a1;
  v2 = (qword_2A13A4260 - qword_2A13A42C8) ^ &v20;
  qword_2A13A42C8 = 1460649907 * v2 + 0x75BA510DC94968BLL;
  qword_2A13A4260 = 1460649907 * (v2 ^ 0x4D1A8838E7FB21C9);
  LOBYTE(v2) = -77 * ((-77 * v2 - 117) ^ 0xC9 ^ qword_2A13A4260);
  v3 = byte_297A24A00[byte_297A24900[v2] ^ 0xBE];
  v19 = dword_2A1E61090 ^ a1;
  v4 = (off_2A1E5DED0[(v2 ^ v3) + 1576])(256);
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v18 = v1;
    *v1 = v4;
    v7 = v4 + 2;
    for (i = 1; ; ++i)
    {
      v9 = v7 + v6 + v19 * &v19;
      v19 = v9;
      v10 = (v5 + v6);
      *(v5 + v6 + 8) = v9 & 3;
      v11 = (v7 + v6) & 3;
      v12 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42C8) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A42C8) ^ 0xC9))] ^ 0x8E]) + 1498])(~(-2 << ((v5 + 2 + v6) & 3)));
      if (!v12)
      {
        break;
      }

      if (v11)
      {
        *v12 = ((v9 * v9) ^ 1) & 1;
        if (v11 != 1)
        {
          v13 = (((v9 * v9) ^ 1) * ((v9 * v9) ^ 1)) ^ 1;
          v12[1] = v13 & 1;
          v14 = (v13 * v13) ^ 1;
          v12[2] = v14 & 1;
          if (v11 != 2)
          {
            v15 = (v14 & 1) == 0;
            v12[3] = v15;
            v12[4] = !v15;
            v12[5] = v15;
            v12[6] = !v15;
          }
        }
      }

      *(v5 + v6) = v12;
      v6 += 16;
      if (v6 == 256)
      {
        return 0;
      }
    }

    *v10 = 0;
    v1 = v18;
    do
    {
      if (*v10)
      {
        (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42C8) ^ 0xC9)) ^ byte_297A24800[byte_297A24700[(-77 * ((qword_2A13A4260 - qword_2A13A42C8) ^ 0xC9))] ^ 0x80]) + 1457])();
      }

      v10 -= 2;
    }

    while (i-- > 1);
  }

  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42C8) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 + qword_2A13A42C8) ^ 0xC9))] ^ 0x87]) + 1401])(v5);
  *v1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_2979FE9B0(uint64_t result)
{
  v1 = (qword_2A13A4260 - qword_2A13A42B8) ^ &v2;
  qword_2A13A42B8 = 1460649907 * v1 + 0x75BA510DC94968BLL;
  qword_2A13A4260 = 1460649907 * (v1 ^ 0x4D1A8838E7FB21C9);
  if (result)
  {
    return (off_2A1E5DED0[((-77 * (qword_2A13A42B8 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A42B8 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xBE]) + 1568])();
  }

  return result;
}

void *sub_2979FEA68(void *result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *result | 1;
    v5 = *result + v4 * a4;
    do
    {
      v6 = *a2++;
      *(*result + (v5 & 0xF)) = v6;
      v5 += v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

double sub_2979FEA9C(unint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a1 | 1;
    v5 = a1 + a4 * (a1 | 1);
    if (a3 < 8 || a1 > 1 || a3 - 1 > 0xF || (~(a4 + a1) & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - ((a4 + a1) & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      v8 = (a1 + (v5 & 0xF));
      for (i = a2 + 2; ; i += 2)
      {
        v10 = v8[1];
        *(i - 1) = *v8;
        *i = v10;
      }
    }

    v6 = a3 & 0x18;
    result = *(a1 + (v5 & 0xF));
    *a2 = result;
    if (v6 != 8)
    {
      result = *(a1 + (v5 & 0xF ^ 8));
      a2[1] = result;
    }

    if (v6 != a3)
    {
      v5 += v6 * v4;
      a2 = (a2 + v6);
      a3 -= v6;
      do
      {
LABEL_3:
        *a2 = *(a1 + (v5 & 0xF));
        a2 = (a2 + 1);
        v5 += v4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_2979FEB74(uint64_t *a1)
{
  v2 = &v6 ^ qword_2A13A42E8 ^ qword_2A13A4260;
  qword_2A13A42E8 = 1460649907 * v2 + 0x75BA510DC94968BLL;
  qword_2A13A4260 = 1460649907 * (v2 ^ 0x4D1A8838E7FB21C9);
  v3 = (off_2A1E5DED0[((-77 * ((-77 * v2 - 117) ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25000[byte_297A24F00[(-77 * ((-77 * v2 - 117) ^ 0xC9 ^ qword_2A13A4260))] ^ 0xC6]) + 1509])(16);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v4;
  return result;
}

void *sub_2979FEC4C(void *result)
{
  v1 = (qword_2A13A4260 - qword_2A13A42D8) ^ &v3;
  qword_2A13A42D8 = 1460649907 * v1 - 0x4D1A8838E7FB21C9;
  qword_2A13A4260 = 1460649907 * (v1 ^ 0x4D1A8838E7FB21C9);
  if (result)
  {
    do
    {
      v2 = *result;
      (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A42D8) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 + qword_2A13A42D8) ^ 0xC9))] ^ 0x87]) + 1401])();
      result = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t *sub_2979FED44(uint64_t *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      v5 = *v5;
      v6 = v5[1];
      if (v6)
      {
        v7 = v6 == a4;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v6)
    {
      v5[1] = a4;
    }

    *(v5 + 16) = v4;
    ++a2;
    ++a4;
  }

  return result;
}

uint64_t *sub_2979FED88(uint64_t *result, _BYTE *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = result[1];
    if (v4)
    {
      v5 = v4 == a4;
    }

    else
    {
      v5 = 1;
    }

    v6 = result;
    if (!v5)
    {
      v6 = result;
      do
      {
        v6 = *v6;
        v7 = v6[1];
        if (v7)
        {
          v8 = v7 == a4;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
    }

    *a2++ = *(v6 + 16);
    ++a4;
  }

  return result;
}

uint64_t sub_2979FEDD4(uint64_t *a1)
{
  v2 = &v35[qword_2A13A4290 + qword_2A13A4260];
  qword_2A13A4290 = 1460649907 * v2 + 0x4D1A8838E7FB21C9;
  qword_2A13A4260 = 1460649907 * (v2 ^ 0x4D1A8838E7FB21C9);
  LOBYTE(v2) = -77 * ((-77 * v2 - 55) ^ 0xC9 ^ qword_2A13A4260);
  v3 = (off_2A1E5DED0[(v2 ^ byte_297A24E00[byte_297A24D00[v2] ^ 0x8F]) + 1598])(24);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v3;
  *a1 = v3;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0x46]) + 1489])();
  v5 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0xF3]) + 1398])(24);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  *v4 = v5;
  (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24E00[byte_297A24D00[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x1E]) + 1589])();
  v7 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24800[byte_297A24700[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0x80]) + 1465])(24);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  *v6 = v7;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A25200[byte_297A25100[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 6]) + 1422])();
  v9 = (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xC3]) + 1609])(24);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  *v8 = v9;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0x87]) + 1411])();
  v11 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24800[byte_297A24700[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0x80]) + 1465])(24);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  *v10 = v11;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24C00[byte_297A24B00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0xB6]) + 1433])();
  v13 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0x1E]) + 1587])(24);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  *v12 = v13;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0xF3]) + 1400])();
  v15 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0x3D]) + 1387])(24);
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  *v14 = v15;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0x1E]) + 1589])();
  v17 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A25200[byte_297A25100[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 6]) + 1420])(24);
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = v17;
  *v16 = v17;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0x3D]) + 1389])();
  v19 = (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25000[byte_297A24F00[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xF8]) + 1554])(24);
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  *v18 = v19;
  (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24E00[byte_297A24D00[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x8F]) + 1600])();
  v21 = (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xA7]) + 1565])(24);
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  *v20 = v21;
  (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x46]) + 1489])();
  v23 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0xA7]) + 1520])(24);
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v23;
  *v22 = v23;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24C00[byte_297A24B00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0xFD]) + 1478])();
  v25 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0x8F]) + 1598])(24);
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v25;
  *v24 = v25;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0xF3]) + 1400])();
  v27 = (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xA7]) + 1565])(24);
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  *v26 = v27;
  (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25200[byte_297A25100[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 6]) + 1422])();
  v29 = (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xA7]) + 1565])(24);
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  *v28 = v29;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0xA7]) + 1522])();
  v31 = (off_2A1E5DED0[((-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A25000[byte_297A24F00[(-77 * (qword_2A13A4290 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x87]) + 1409])(24);
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  *v30 = v31;
  (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24E00[byte_297A24D00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0x8F]) + 1600])();
  v33 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0xF8]) + 1554])(24);
  if (v33)
  {
    *v32 = v33;
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A4290) ^ 0xC9))] ^ 0xA7]) + 1522])();
    return 0;
  }

  else
  {
LABEL_18:
    (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 + qword_2A13A4290) ^ 0xC9))] ^ 0x3D]) + 1368])(*a1);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2979FF9AC(uint64_t result)
{
  v1 = qword_2A13A4260 - qword_2A13A42E0 - &v2;
  qword_2A13A42E0 = 1460649907 * (v1 - 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = 1460649907 * (v1 ^ 0x4D1A8838E7FB21C9);
  if (result)
  {
    return (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A42E0) ^ 0xC9)) ^ byte_297A24C00[byte_297A24B00[(-77 * ((qword_2A13A4260 - qword_2A13A42E0) ^ 0xC9))] ^ 0xB6]) + 1423])();
  }

  return result;
}

void *sub_2979FFA64(void *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(*result + (a4++ & 0xF)) = v4;
  }

  return result;
}

double sub_2979FFA88(uint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 < 8 || a3 - 1 > 0xF || (~a4 & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - (a4 & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      for (i = a2 + 2; ; i += 2)
      {
        v7 = (a1 + (a4 & 0xF));
        v8 = v7[1];
        *(i - 1) = *v7;
        *i = v8;
        a4 += 32;
      }
    }

    v4 = a3 & 0x18;
    result = *(a1 + (a4 & 0xF));
    *a2 = result;
    if (v4 != 8)
    {
      result = *(a1 + ((a4 + 8) & 0xF));
      a2[1] = result;
    }

    if (v4 != a3)
    {
      a4 += v4;
      a2 = (a2 + v4);
      a3 -= v4;
      do
      {
LABEL_3:
        *a2 = *(a1 + (a4 & 0xF));
        a2 = (a2 + 1);
        ++a4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_2979FFB50(uint64_t *a1)
{
  v2 = (qword_2A13A4260 + qword_2A13A42C0) ^ &v6;
  qword_2A13A42C0 = 1460649907 * v2 - 0x4D1A8838E7FB21C9;
  qword_2A13A4260 = 1460649907 * (v2 ^ 0x4D1A8838E7FB21C9);
  v3 = (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + -77 * v2 + 55) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + -77 * v2 + 55) ^ 0xC9))] ^ 0x8E]) + 1498])(16);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2979FFC28(unint64_t a1, unsigned int a2, int a3)
{
  v3 = &v35[qword_2A13A4260 - qword_2A13A4280 + 4];
  qword_2A13A4280 = 1460649907 * (v3 - 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = 1460649907 * (v3 ^ 0x4D1A8838E7FB21C9);
  if (a1 - 16777217 < 0xFFFFFFFFFF000000)
  {
    return 0;
  }

  v33 = a1 >> 4;
  v4 = (a1 >> 4) + 1;
  while (1)
  {
    result = (off_2A1E5DED0[((-77 * (qword_2A13A4280 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A4280 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xF3]) + 1398])(16 * v4 + 31);
    if (!result)
    {
      break;
    }

    v6 = result + ((qword_2A13A4DB8 - result) & 0xF);
    v7 = v6 + 16;
    v8 = ((v6 + 16 - qword_2A13A4DB8) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DC0;
    if (v8)
    {
      v29 = result;
      v9 = qword_2A13A4DD0;
      v10 = qword_2A13A4DC8;
      if (qword_2A13A4DD0 == qword_2A13A4DC8)
      {
        v10 = v7 + 16 * v4 + 16;
        v9 = v6 + 16;
      }

      if (v7 <= v9)
      {
        v9 = v6 + 16;
      }

      qword_2A13A4DD0 = v9;
      if (v7 + 16 * v4 + 16 >= v10)
      {
        v11 = v7 + 16 * v4 + 16;
      }

      else
      {
        v11 = v10;
      }

      qword_2A13A4DC8 = v11;
      if (!((v11 - v9) >> 60))
      {
        v34 = v4;
        v35[0] = (qword_2A13A4DB8 - result) & 0xF;
        v12 = qword_2A13A4DB8 + a3 + qword_2A13A4DC0;
        v13 = a2 / 0x21;
        v14 = a2 / 0x21 + 1;
        for (i = a3 & 0xFFFE | 1; ; i /= v17)
        {
          v16 = i <= v13 ? i : a2 / 0x21 + 1;
          v17 = i <= v13 ? a2 / 0x21 + 1 : i;
          do
          {
            v18 = v17;
            v17 = v16;
            v16 = v18 % v16;
          }

          while (v16);
          if (v17 == 1)
          {
            break;
          }
        }

        for (j = a3 | 1; ; j /= v21)
        {
          v20 = j >= v4 ? v4 : j;
          v21 = j <= v4 ? v4 : j;
          do
          {
            v22 = v21;
            v21 = v20;
            v20 = v22 % v20;
          }

          while (v20);
          if (v21 == 1)
          {
            break;
          }
        }

        v23 = (qword_2A13A4DB8 + a3 + qword_2A13A4DC0);
        *(v6 + 8) = v23 % v14;
        v32 = v8;
        if (((*(qword_2A13A4DD8 + 32 * (v12 % v14)))(v6) & 0x80000000) == 0)
        {
          v24 = 0;
          v25 = j;
          while (1)
          {
            v26 = v25 % v4;
            v23 = (v23 + i) % v14;
            *(v7 + 16 * (v25 % v4) + 8) = v23;
            if (((*(qword_2A13A4DD8 + 32 * v23))() & 0x80000000) != 0)
            {
              break;
            }

            v25 = v26 + j;
            v27 = v24++ >= v33;
            if (v27)
            {
              (*(qword_2A13A4DD8 + 32 * *(v6 + 8) + 16))(v6, &v34, 4, 16);
              (*(qword_2A13A4DD8 + 32 * *(v6 + 8) + 16))(v6, v35, 1, 20);
              return v32;
            }
          }

          if (v24)
          {
            v28 = -v24;
            do
            {
              v26 = (v26 - j) % v4;
              (*(qword_2A13A4DD8 + 32 * *(v7 + 16 * v26 + 8) + 24))(*(v7 + 16 * v26));
              v27 = __CFADD__(v28++, 1);
            }

            while (!v27);
          }
        }
      }

      (off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4280) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 - qword_2A13A4280) ^ 0xC9))] ^ 0x3D]) + 1379])(v29);
      return 0;
    }
  }

  return result;
}

uint64_t sub_297A0000C(uint64_t result)
{
  qword_2A13A4298 = 1460649907 * (&v6[(qword_2A13A4260 ^ qword_2A13A4298) + 4] ^ 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = qword_2A13A4298;
  if (result)
  {
    v1 = ((result - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8;
    v2 = v1 - 16;
    (*(qword_2A13A4DD8 + 32 * *(v1 - 8) + 8))(*(v1 - 16), &v5, 4, 16);
    (*(qword_2A13A4DD8 + 32 * *(v1 - 8) + 8))(*(v1 - 16), v6, 1, 20);
    if ((v5 & 0x80000000) == 0)
    {
      v3 = (v1 - 8);
      v4 = -1;
      do
      {
        (*(qword_2A13A4DD8 + 32 * *v3 + 24))(*(v3 - 1));
        ++v4;
        v3 += 16;
      }

      while (v4 < v5);
    }

    return (off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4298) ^ 0xC9)) ^ byte_297A24800[byte_297A24700[(-77 * ((qword_2A13A4260 + qword_2A13A4298) ^ 0xC9))] ^ 0xA7]) + 1557])(v2 - v6[0]);
  }

  return result;
}

char *sub_297A0019C(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

_BYTE *sub_297A003F8(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_297A00964()
{
  v0 = ccrng();
  sub_297A059A8(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_297A059A8(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_297A009D4(uint64_t a1, unsigned int a2)
{
  v4 = sub_297A069A0();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_297A059A8(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t sub_297A00A30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v47 = a1;
  v48 = a3;
  v51 = *MEMORY[0x29EDCA608];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x2A1C7C4A8]();
  v49 = &v40 - v16;
  bzero(&v40 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x2A1C7C4A8]();
  v19 = &v40 - v18;
  bzero(&v40 - v18, v18);
  v20 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v42 = &v40;
  v43 = a8;
  v44 = a6;
  v41 = a7;
  if (!a4)
  {
    v21 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v21 || !a8 || *a8 < a6 + 8)
    {
      sub_297A07AC8(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v43 >= v44 + 8)
  {
LABEL_15:
    v22 = v44 >> 3;
    if (v44 >> 3 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = 8;
    v25 = v23;
    do
    {
      v26 = *a5++;
      *(__s + v24) = v26;
      v24 += 16;
      --v25;
    }

    while (v25);
    v27 = 0;
    *&__s[0] = v48;
    v28 = 1;
    v45 = v22;
    v46 = v23;
    do
    {
      v47 = v28;
      v48 = v27;
      v29 = __s;
      v30 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_2A13A4EA0, v29, v29, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v31 = v14[1];
          cccbc_clear_iv();
          sub_297A05D2C(v14, v49, v19, 0x10uLL);
        }

        v32 = *v29;
        v29 += 2;
        *&__s[v30 % v22] = v32 ^ bswap64(v28++);
        ++v30;
        --v23;
      }

      while (v23);
      v27 = v48 + 1;
      v23 = v46;
      v28 = v47 + v45;
    }

    while (v48 != 5);
    v33 = v41;
    *v41 = *&__s[0];
    v34 = v33 + 1;
    v35 = __s + 1;
    do
    {
      v36 = *v35;
      v35 += 2;
      *v34++ = v36;
      --v23;
    }

    while (v23);
    v20 = 0;
    *v43 = (v44 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_32:
    v37 = *v14;
    cc_clear();
    goto LABEL_33;
  }

LABEL_6:
  sub_297A07AB0(__s);
  v20 = 0xFFFFFFFFLL;
LABEL_33:
  v38 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t sub_297A00D30(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_297A00A30(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_297A059A8(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_297A00D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v44 = a3;
  v50 = a1;
  v53 = *MEMORY[0x29EDCA608];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x2A1C7C4A8]();
  v51 = &v42 - v16;
  bzero(&v42 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x2A1C7C4A8]();
  v19 = &v42 - v18;
  bzero(&v42 - v18, v18);
  v20 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v49 = a6;
  v21 = a6 >> 3;
  if (v21 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v45 = &v42;
  v46 = a8;
  v43 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < v49 - 8)
    {
      sub_297A07AF8(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v46 >= v49 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v23 = v21 - 1;
    if (v21 != 1)
    {
      v24 = __s + 1;
      v25 = a5 + 1;
      v26 = v21 - 1;
      do
      {
        v27 = *v25++;
        *v24 = v27;
        v24 += 2;
        --v26;
      }

      while (v26);
    }

    v28 = 6 * v21 - 6;
    v48 = 1 - v21;
    v29 = 5;
    v47 = &__s[v21 - 2];
    do
    {
      LODWORD(v50) = v29;
      if (v49 >= 0x10)
      {
        v30 = v47;
        v31 = v21 - 1;
        v32 = v28;
        do
        {
          *v30 = *&__s[v31 % v23] ^ bswap64(v32);
          if (a4)
          {
            if ((a4(0, &unk_2A13A4EA0, v30, v30, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v33 = v14[1];
            cccbc_clear_iv();
            sub_297A05D2C(v14, v51, v19, 0x10uLL);
          }

          --v32;
          v30 -= 2;
          v34 = __OFSUB__(v31--, 1);
        }

        while (!((v31 < 0) ^ v34 | (v31 == 0)));
      }

      v29 = v50 - 1;
      v28 += v48;
    }

    while (v50);
    if (*&__s[0] == v44)
    {
      v35 = v43;
      if (v21 != 1)
      {
        v36 = __s + 1;
        v37 = v21 - 1;
        do
        {
          v38 = *v36;
          v36 += 2;
          *v35++ = v38;
          --v37;
        }

        while (v37);
      }

      v20 = 0;
      *v46 = 8 * v23;
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_34:
    v39 = *v14;
    cc_clear();
    goto LABEL_35;
  }

LABEL_6:
  sub_297A07AE0(__s);
  v20 = 0xFFFFFFFFLL;
LABEL_35:
  v40 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t sub_297A010E4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_297A00D9C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_297A059A8(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_297A01150(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_297A01164(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_297A01178(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_297A01194()
{
  if (qword_2A13A4E38 != -1)
  {
    sub_297A0960C();
  }

  dispatch_sync(qword_2A13A4E40, &unk_2A1E61338);
  result = dword_2A13A4E28;
  if (!dword_2A13A4E28)
  {
    syslog(3, "failed to open connection to %s\n", "AppleKeyStore");
    return dword_2A13A4E28;
  }

  return result;
}

uint64_t sub_297A01210(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  else
  {
    sub_297A09620();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char *sub_297A012A8(char *result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x29EDCA608];
  if (result)
  {
    v6[0] = result;
    v6[1] = 0;
    result = fts_open(v6, 84, 0);
    if (result)
    {
      result = sub_297A09688(result, a2, a3);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char *sub_297A01328(char *result, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    bzero(v9, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v9);
    if (result)
    {
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 0x40000000;
      v7[2] = sub_297A01440;
      v7[3] = &unk_29EE84218;
      v8 = a2;
      v5[0] = MEMORY[0x29EDCA5F8];
      v5[1] = 0x40000000;
      v5[2] = sub_297A07F40;
      v5[3] = &unk_29EE84238;
      v6 = a2;
      result = sub_297A012A8(v9, v7, v5);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A01440(uint64_t a1, uint64_t a2)
{
  v4 = sub_297A07EE4(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || v4 == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), v4);
  }

  return 1;
}

uint64_t sub_297A0149C()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = IORegistryEntryFromPath(*MEMORY[0x29EDBB118], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x29EDB8ED8], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((byte_2A13A4E30 & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      byte_2A13A4E31 = 1;
    }

    byte_2A13A4E30 = 1;
  }

  v4 = byte_2A13A4E31;
  fprintf(*MEMORY[0x29EDCA620], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 437, "", v3, byte_2A13A4E31, "");
  v5 = *MEMORY[0x29EDCA608];
  return v3 | v4;
}

void sub_297A01620(const char *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  memset(&v8, 0, sizeof(v8));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v8))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        sub_297A07EE4(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297A01768()
{
  puts("shared allow list:");
  v0 = &byte_29EE82E08;
  v1 = 35;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_29EE83498;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void sub_297A0182C(const char *a1, char a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    bzero(&v14, 0x878uLL);
    bzero(v13, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 0x40000000;
      v12[2] = sub_297A08AEC;
      v12[3] = &unk_29EE84278;
      v12[4] = v4;
      sub_297A012A8(v13, &unk_2A1E61318, v12);
      if (!statfs(v13, &v14))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", off_2A13A42F0[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297A01AB4(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  v2 = sub_297A01194();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  else
  {
    sub_297A09744();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A01B50()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A097AC();
  return 3758097084;
}

uint64_t sub_297A01BA8(unsigned int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A09814();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A01C40()
{
  if (!dword_2A13A4E28)
  {
    dword_2A13A4E28 = sub_297A01F4C("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_297A01C80()
{
  if (qword_2A13A4E38 != -1)
  {
    sub_297A0987C();
  }

  dispatch_sync(qword_2A13A4E40, &unk_2A1E61358);
  result = dword_2A13A4E2C;
  if (!dword_2A13A4E2C)
  {
    syslog(3, "failed to open connection to %s\n", "AppleKeyStoreTest");
    return dword_2A13A4E2C;
  }

  return result;
}

void sub_297A01CFC()
{
  if (!dword_2A13A4E2C)
  {
    dword_2A13A4E2C = sub_297A01F4C("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t sub_297A01D3C(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_297A0797C(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297A01DFC(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a3;
  result = IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A01E70(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_297A0797C(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

dispatch_queue_t sub_297A01F20()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  qword_2A13A4E40 = result;
  return result;
}

uint64_t sub_297A01F4C(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x29EDBB118];
  v4 = IORegistryEntryFromPath(*MEMORY[0x29EDBB118], path);
  v5 = MEMORY[0x29EDCA6B0];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x29EDCA6B0], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  result = connect;
  if (connect)
  {
    v12 = IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    result = connect;
    if (v12)
    {
      IOServiceClose(connect);
      return 0;
    }
  }

  return result;
}

uint64_t sub_297A02058(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_297A02084(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t sub_297A020EC(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_297A021B0(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_297A02234(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_297A02260(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return sub_297A09E68(a1, 1, &v4);
  }

  *a2 = 0;
  result = sub_297A09E68(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_297A022BC()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A119F4();
  return 3758097084;
}

uint64_t sub_297A02314(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0x24u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11A5C();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A023AC(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0x33u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11AC4();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02444(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0x35u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11B2C();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02500()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A11B94();
  return 3758097084;
}

uint64_t sub_297A02564(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11BFC();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A025FC(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0x37u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11C64();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02694(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  input[12] = *MEMORY[0x29EDCA608];
  v22 = sub_297A01194();
  if (v22)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(v22, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13 && !result)
    {
      *a13 = output;
    }
  }

  else
  {
    sub_297A11CCC();
    result = 3758097084;
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A028B4(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0xDu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11D34();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0294C(int a1, uint64_t a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x29EDCA608];
  v8 = sub_297A01194();
  if (v8)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(v8, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11D9C();
    result = 3758097084;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02A14(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  input[5] = *MEMORY[0x29EDCA608];
  v10 = sub_297A01194();
  if (v10)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    result = IOConnectCallMethod(v10, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11E04();
    result = 3758097084;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02B44(__int128 *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  v7 = a1[3];
  v15 = a1[2];
  v16 = v7;
  v11 = *a5;
  __s = 1;
  v8 = sub_297A136E4(&__s, 0, 0, a2, a3, a4, &v11);
  *a5 = v11;
  memset_s(&__s, 0x84uLL, 0, 0x84uLL);
  result = sub_297A0598C(v8);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A02C24(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = sub_297A13CEC();
      v7 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = sub_297A13F68();
      v10 = MEMORY[0x29EDB8F00];
      if (!v9)
      {
        v10 = MEMORY[0x29EDB8EF8];
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(*MEMORY[0x29EDB8ED8], v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t sub_297A02D84(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11E6C();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02E18(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a1;
  v2 = sub_297A01194();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11ED4();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02EA8(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x29EDCA608];
  v4 = sub_297A01194();
  if (v4)
  {
    input[0] = a2;
    input[1] = a1;
    result = IOConnectCallMethod(v4, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11F3C();
    result = 3758097084;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02F48(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x91u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A11FA4();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A02FD4(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x65u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1200C();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03068(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  input[4] = *MEMORY[0x29EDCA608];
  v23 = 0;
  v22 = 0;
  v11 = sub_297A01194();
  if (v11)
  {
    v17 = v11;
    sub_297A0797C(&v23, &v22, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v23;
    input[2] = v22;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v23;
  }

  else
  {
    sub_297A12074();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  v20 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t sub_297A03194(int a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  v6 = sub_297A01194();
  if (v6)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(v6, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3 && !result)
    {
      *a3 = output;
    }
  }

  else
  {
    sub_297A120DC();
    result = 3758097084;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0325C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return sub_297A0D604(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_297A032D8()
{
  if (sub_297A01194())
  {

    JUMPOUT(0x29C278C30);
  }

  sub_297A12144();
  return 3758097084;
}

uint64_t sub_297A03350(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  v2 = sub_297A01194();
  if (v2)
  {
    input[0] = a1;
    result = IOConnectCallMethod(v2, 0x16u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A121AC();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A033E8(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0xA2u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12214();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03480(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v5 = sub_297A01194();
  if (v5)
  {
    result = IOConnectCallMethod(v5, 0x3Au, input, 1u, a2, a3, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1227C();
    result = 3758097084;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0351C(int a1, int a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v3 = sub_297A01194();
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    result = IOConnectCallMethod(v3, v4, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A122E4();
    result = 3758097084;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A035C0(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x8Du, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1234C();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0364C(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A123B4();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A036E0(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1241C();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03778(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return sub_297A036E0(a2, a3, a4);
  }

  else
  {
    return sub_297A0364C(a2, a3, a4);
  }
}

uint64_t sub_297A0379C()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A12484();
  return 3758097084;
}

uint64_t sub_297A037F4(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  input[4] = *MEMORY[0x29EDCA608];
  v12 = sub_297A01194();
  if (v12)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(v12, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    sub_297A124EC();
    result = 3758097084;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A038BC(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x3Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12554();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03948(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x47u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A125BC();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A039D4(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x49u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12624();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03A68(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v5 = sub_297A01194();
  if (v5)
  {
    result = IOConnectCallMethod(v5, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1268C();
    result = 3758097084;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03B0C(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A126F4();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03B9C(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1275C();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03C30(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return sub_297A03B9C(a2, a3, a4);
  }

  else
  {
    return sub_297A03B0C(a2, a3, a4);
  }
}

uint64_t sub_297A03C54(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = sub_297A01194();
  if (v4)
  {
    result = IOConnectCallMethod(v4, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A127C4();
    result = 3758097084;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03D20(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v5 = sub_297A01194();
  if (v5)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    result = IOConnectCallMethod(v5, 0x58u, input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    sub_297A1282C();
    result = 3758097084;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03DC0(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x5Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12894();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03E4C(unsigned int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x5Eu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A128FC();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03ED8(BOOL *a1)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v2 = sub_297A01194();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x6Bu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
    if (a1 && !result)
    {
      *a1 = output[0] != 0;
    }
  }

  else
  {
    sub_297A12964();
    result = 3758097084;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A03F8C()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A129CC();
  return 3758097084;
}

uint64_t sub_297A03FE4(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0xA0u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12A34();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A04268(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  sub_297A086DC();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t sub_297A042E4()
{
  sub_297A086DC();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t sub_297A04344()
{
  sub_297A086DC();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t sub_297A043E4(unsigned int a1)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = 0;
  input[1] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12A9C();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A04470(int a1)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = 1;
  input[1] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12B04();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A04500()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A12B6C();
  return 3758097084;
}

uint64_t sub_297A04558()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A12BD4();
  return 3758097084;
}

uint64_t sub_297A045B0(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x6Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12C3C();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0463C(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x9Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12CA4();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A046EC()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A12D0C();
  return 3758097084;
}

uint64_t sub_297A04744(const void *a1, size_t a2)
{
  v4 = sub_297A01194();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  sub_297A12D74();
  return 3758097084;
}

uint64_t sub_297A047AC()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A12DDC();
  return 3758097084;
}

uint64_t sub_297A04804(int a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v3 = sub_297A01194();
  if (v3)
  {
    result = IOConnectCallMethod(v3, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12E44();
    result = 3758097084;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A04894(int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x8Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12EAC();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A04920()
{
  v0 = sub_297A01194();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_297A12F14();
  return 3758097084;
}

uint64_t sub_297A04978(uint64_t a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  v1 = sub_297A01194();
  if (v1)
  {
    result = IOConnectCallMethod(v1, 0x97u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_297A12F7C();
    result = 3758097084;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A04A34(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_297A04A68(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

void sub_297A04AA4()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t sub_297A04B24(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_297A04B50(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_297A04B70(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_297A04BCC(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_297A04BE8(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

void sub_297A04C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t sub_297A04C9C(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_297A04CC4(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_297A04CE8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_297A04DC8(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t sub_297A04EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *sub_297A04F10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void sub_297A04F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *sub_297A04F8C(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&byte_2A13A4E48, 0x20uLL, __format, va);
  }

  byte_2A13A4E48 = 0;
  return __format;
}

uint64_t sub_297A04FE0()
{
  v2 = *MEMORY[0x29EDCA608];
  ccsha256_di();
  ccdigest();
  result = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_297A05054(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t sub_297A050A0(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t sub_297A050E0()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t sub_297A05134()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

uint64_t sub_297A05164()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t sub_297A051B8()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *sub_297A0521C(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    sub_297A1333C();
    return 0;
  }

  return v5;
}

uint64_t sub_297A05298(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t sub_297A052B4(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t sub_297A05320(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t sub_297A053B0(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t sub_297A053FC(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t sub_297A0552C(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void sub_297A0554C(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL sub_297A055D0(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL sub_297A05614(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *sub_297A05640(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t sub_297A05688(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t sub_297A056D8(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v26 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  v5 = MEMORY[0x29EDCA620];
  if (a3 >= 0x41)
  {
    fprintf(*MEMORY[0x29EDCA620], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 842, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v16 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 852, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v16;
  }

  while (v6 < v16);
LABEL_16:
  result = memset_s(__str, 0x81uLL, 0, 0x81uLL);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *sub_297A058C8(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_2A13A4E68;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_2A13A4E68[2 * v2] = 0;
  return byte_2A13A4E68;
}

char *sub_297A0595C(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_297A0598C(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_297A26210[(result + 38)];
  }

  return result;
}

uint64_t sub_297A059A8(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(*MEMORY[0x29EDCA620], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1132, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t sub_297A05A20(__int128 *a1, __int128 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  memset(v16, 0, sizeof(v16));
  sub_297A06A58(v16, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  sub_297A059A8(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v10 = 0u;
  v11 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v16, 0x20uLL, 0, 0x20uLL);
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297A05B24(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v8 = 0u;
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297A05BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2A1C74540](a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t sub_297A05C1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_297A05C64()
{

  return sub_297A05B24(v0, v1 + 4, (v1 + 36));
}

uint64_t sub_297A05D34(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t sub_297A05D6C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = sub_297A05E70(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL sub_297A05EDC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_297A05E70(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t sub_297A05F44(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_297A05FC4(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_297A06060(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *sub_297A06060(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && sub_297A05E70(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_297A060EC(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  v8 = sub_297A06060(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = v8[1] + v8[2];
      v15[0] = v8[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (sub_297A13FB8(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_297A061CC(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_297A060EC(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_297A13CEC();
  }

  return v5;
}

uint64_t sub_297A0622C(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_297A060EC(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_297A13F68();
  }

  return v5;
}

uint64_t sub_297A0628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    sub_297A16844();
LABEL_7:
    sub_297A168AC();
    result = 0;
    goto LABEL_5;
  }

  v9 = 0;
  v10 = 0;
  v8[0] = 12;
  v8[1] = 0;
  __memcpy_chk();
  if (sub_297A05FC4(a5, v8) || sub_297A14338())
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0638C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t sub_297A063A4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t sub_297A063EC(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = sub_297A14D04(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t sub_297A06498(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t sub_297A06520()
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_297A065F0(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_297A06640()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t sub_297A066B4()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_297A066D4()
{

  return ccder_blob_encode_tl();
}

uint64_t sub_297A06740(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return sub_297A14168(va2, va, va1);
}

uint64_t sub_297A06760(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t sub_297A067B0()
{

  return ccder_sizeof();
}

void *sub_297A067CC()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_297A067E4(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t sub_297A06848()
{

  return ccder_blob_decode_range();
}

uint64_t sub_297A06868()
{

  return sub_297A13B38();
}

uint64_t sub_297A06880(uint64_t a1, int a2, void *a3, size_t *a4)
{
  sub_297A059A8(&off_2A1E61288 != 0, 36, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  if (!off_2A1E61288)
  {
    return 4294967284;
  }

  if (a1 >= 7)
  {
    abort();
  }

  v8 = &unk_2A13A4998 + 72 * a1;
  if ((v8[4] & 1) == 0)
  {
    result = (off_2A1E61288)(a1, v8 + 5, v8 + 64);
    if (result)
    {
      return result;
    }

    v8[4] = 1;
  }

  if (*a4 < *(v8 + 8))
  {
    return 4294967285;
  }

  memcpy(a3, v8 + 5, *a4);
  v10 = *(v8 + 8);
  *a4 = v10;
  if (a2)
  {
    sub_297A0595C(a3, v10);
  }

  return 0;
}

uint64_t sub_297A069A0()
{
  sub_297A059A8(&off_2A1E61288 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(off_2A1E61290[0] != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = off_2A1E61290[0];

  return v0();
}

uint64_t sub_297A06A58(uint64_t a1, unsigned int a2)
{
  sub_297A059A8(&off_2A1E61288 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(off_2A1E61298 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = off_2A1E61298;

  return v4(a1, a2);
}

uint64_t sub_297A06B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_297A059A8(&off_2A1E61288 != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612A0 != 0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v16 = unk_2A1E612A0;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_297A06C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_297A059A8(&off_2A1E61288 != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612A8 != 0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_2A1E612A8;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_297A06D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_297A059A8(&off_2A1E61288 != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612B0 != 0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_2A1E612B0;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_297A06E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_297A059A8(&off_2A1E61288 != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612B8 != 0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v17 = unk_2A1E612B8;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_297A06FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_297A059A8(&off_2A1E61288 != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612C0 != 0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_2A1E612C0;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_297A070F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297A059A8(&off_2A1E61288 != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612C8 != 0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v10 = unk_2A1E612C8;

  return v10(a1, a2, a3, a4, a5);
}

uint64_t sub_297A071E8()
{
  sub_297A059A8(&off_2A1E61288 != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612D0 != 0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = unk_2A1E612D0;

  return v0();
}

uint64_t sub_297A072A0(uint64_t a1, uint64_t a2)
{
  sub_297A059A8(&off_2A1E61288 != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612D8 != 0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = unk_2A1E612D8;

  return v4(a1, a2);
}

uint64_t sub_297A07370(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612E0 != 0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E612E0;

  return v2(a1);
}

uint64_t sub_297A07438(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612E8 != 0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E612E8;

  return v2(a1);
}

uint64_t sub_297A07500(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612F0 != 0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E612F0;

  return v2(a1);
}

uint64_t sub_297A075C8(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E612F8 != 0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E612F8;

  return v2(a1);
}

uint64_t sub_297A07690(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E61300 != 0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E61300;

  return v2(a1);
}

uint64_t sub_297A07758(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E61308 != 0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E61308;

  return v2(a1);
}

uint64_t sub_297A07820(uint64_t a1)
{
  sub_297A059A8(&off_2A1E61288 != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_297A059A8(unk_2A1E61310 != 0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2A1E61310;

  return v2(a1);
}

char *sub_297A078F4(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_297A0797C(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_297A078F4(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

BOOL sub_297A07A5C(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL sub_297A07A84(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void sub_297A07B10()
{
  sub_297A020B8();
  sub_297A021A4();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 - 96) = *MEMORY[0x29EDCA608];
  bzero(v70, 0x1000uLL);
  v68[0] = v70;
  v68[1] = &v71;
  v68[2] = 4096;
  if (v6 && v4)
  {
    v7 = sub_297A01194();
    if (v7)
    {
      v15 = v7;
      sub_297A02104(v7, v8, v9, v10, v11, v12, v13, v14, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v67, v68[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_297A14D84(v68))
        {
          if (sub_297A14D84(v68))
          {
            if (sub_297A14DE0(v68))
            {
              sub_297A02078();
              if (ccder_blob_encode_tl())
              {
                sub_297A02130();
                if (!sub_297A02058(v15, 0x4Au, v69, 2u, v16, v17, v18, v19, v70, v20))
                {
                  sub_297A02078();
                  if (ccder_blob_decode_range())
                  {
                    sub_297A02170();
                    v24 = sub_297A063EC(v21, v22, v23);
                    if (v24)
                    {
                      if (v2)
                      {
                        v32 = sub_297A02114(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v70);
                        sub_297A14C28(v32, v33, v34);
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

    else
    {
      v37 = *MEMORY[0x29EDCA620];
      sub_297A02044();
      fprintf(v38, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v39, v44, v46, v48, v50, v52, v54, ":", 179, "", "");
    }
  }

  sub_297A02084(v70);
  v35 = *(v0 - 96);
  v36 = *MEMORY[0x29EDCA608];
  sub_297A02150();
  sub_297A020A0();
}

unint64_t sub_297A07D10(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL sub_297A07DE4(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t sub_297A07EE4(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t sub_297A07F40(uint64_t a1, uint64_t a2)
{
  result = sub_297A07EE4(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t sub_297A07F98(const char *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  bzero(v5, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v5))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v5);
    sub_297A01620(v5, &off_29EE82DF8, 35);
    if ((sub_297A0149C() & 1) == 0)
    {
      sub_297A01620(__str, &off_29EE83488, 72);
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297A0806C(const char *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    sub_297A01620(v4, &off_29EE83488, 72);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297A080F4()
{
  sub_297A020B8();
  sub_297A021A4();
  MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_297A02190(*MEMORY[0x29EDCA608]);
  bzero(v69, 0x1000uLL);
  v65 = v69;
  v66 = &v70;
  v67 = v0;
  if (v5 && v3)
  {
    v8 = sub_297A01194();
    if (v8)
    {
      v16 = v8;
      sub_297A02104(v8, v9, v10, v11, v12, v13, v14, v15, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64, v65);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_297A14D84(&v65))
        {
          if (sub_297A14DE0(&v65))
          {
            sub_297A02078();
            if (ccder_blob_encode_tl())
            {
              v68[0] = v7;
              v68[1] = v66;
              v68[2] = &v70 - v66;
              if (!sub_297A02058(v16, 0x4Cu, v68, 3u, v17, v18, v19, v20, v69, &v67))
              {
                sub_297A02078();
                v21 = ccder_blob_decode_range();
                if (v21)
                {
                  v29 = sub_297A02114(v21, v22, v23, v24, v25, v26, v27, v28, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v69);
                  sub_297A063EC(v29, v30, v31);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v34 = *MEMORY[0x29EDCA620];
      sub_297A02044();
      fprintf(v35, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v36, v41, v43, v45, v47, v49, v51, ":", 508, "", "");
    }
  }

  sub_297A02084(v69);
  v32 = *(v1 - 88);
  v33 = *MEMORY[0x29EDCA608];
  sub_297A02150();
  sub_297A020A0();
}

void sub_297A082D4()
{
  sub_297A020B8();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_297A02190(*MEMORY[0x29EDCA608]);
  bzero(v31, 0x1000uLL);
  v27 = v31;
  v28 = &v32;
  v29 = v0;
  if (v6 && v4)
  {
    v7 = sub_297A01194();
    if (v7)
    {
      v8 = v7;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_297A14D84(&v27))
        {
          if (sub_297A14DE0(&v27))
          {
            sub_297A02078();
            if (ccder_blob_encode_tl())
            {
              v30[0] = v28;
              v30[1] = &v32 - v28;
              if (!sub_297A02058(v8, 0x63u, v30, 2u, v9, v10, v11, v12, v31, &v29))
              {
                *&v26 = v31;
                *(&v26 + 1) = &v31[v29];
                sub_297A02078();
                if (ccder_blob_decode_range())
                {
                  sub_297A02170();
                  if (sub_297A063EC(v13, v14, v15))
                  {
                    if (v2)
                    {
                      sub_297A14C28(&v26, 0, v2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v17 = *MEMORY[0x29EDCA620];
      sub_297A02044();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 543, "", "");
    }
  }

  sub_297A02084(v31);
  v16 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

void sub_297A084D8()
{
  sub_297A020B8();
  sub_297A021A4();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 - 96) = *MEMORY[0x29EDCA608];
  bzero(v70, 0x1000uLL);
  v68[0] = v70;
  v68[1] = &v71;
  v68[2] = 4096;
  if (v8 && v6 && v4 && v2)
  {
    v9 = sub_297A01194();
    if (v9)
    {
      v10 = v9;
      v11 = sub_297A14D84(v68);
      if (v11)
      {
        sub_297A02104(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v67, v68[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (sub_297A14D84(v68))
          {
            if (sub_297A14D84(v68))
            {
              if (sub_297A14DE0(v68))
              {
                sub_297A02078();
                if (ccder_blob_encode_tl())
                {
                  sub_297A02130();
                  if (!sub_297A02058(v10, 0x4Du, v69, 2u, v19, v20, v21, v22, v70, v23))
                  {
                    sub_297A02078();
                    v24 = ccder_blob_decode_range();
                    if (v24)
                    {
                      v32 = sub_297A02114(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v70);
                      sub_297A063EC(v32, v33, v34);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v37 = *MEMORY[0x29EDCA620];
      sub_297A02044();
      fprintf(v38, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v39, v44, v46, v48, v50, v52, v54, ":", 582, "", "");
    }
  }

  sub_297A02084(v70);
  v35 = *(v0 - 96);
  v36 = *MEMORY[0x29EDCA608];
  sub_297A02150();
  sub_297A020A0();
}

void sub_297A086DC()
{
  sub_297A020B8();
  MEMORY[0x2A1C7C4A8]();
  sub_297A0217C();
  v2 = v1;
  v4 = v3;
  v29[0] = *MEMORY[0x29EDCA608];
  bzero(v28, 0x1000uLL);
  v24 = v28;
  v25 = v29;
  v26 = 4096;
  v5 = sub_297A01194();
  if (v5)
  {
    v6 = v5;
    if (!sub_297A14D84(&v24) || !sub_297A14D84(&v24) || !sub_297A14D84(&v24) || !sub_297A14DE0(&v24) || (sub_297A02078(), !ccder_blob_encode_tl()) || (v27[0] = v4, v27[1] = v2, v27[2] = v25, v27[3] = v29 - v25, !sub_297A02058(v6, 0x54u, v27, 4u, v7, v8, v9, v10, v28, &v26)) && v26 && ((sub_297A02078(), !ccder_blob_decode_range()) || v0 && (sub_297A02170(), (sub_297A063EC(v11, v12, v13) & 1) == 0)))
    {
      sub_297A02124();
    }
  }

  else
  {
    v15 = *MEMORY[0x29EDCA620];
    sub_297A02044();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 616, "", "");
    sub_297A02124();
  }

  sub_297A02084(v28);
  v14 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

void sub_297A088D4()
{
  sub_297A020B8();
  sub_297A021A4();
  MEMORY[0x2A1C7C4A8]();
  sub_297A0217C();
  v4 = v3;
  *(v2 - 96) = *MEMORY[0x29EDCA608];
  bzero(v29, 0x1000uLL);
  v25 = v29;
  v26 = v30;
  v27 = 4096;
  if (v1)
  {
    v5 = sub_297A01194();
    if (v5)
    {
      v6 = v5;
      if (!sub_297A14D84(&v25) || !sub_297A14D84(&v25) || !sub_297A14D84(&v25) || !sub_297A14D84(&v25) || !sub_297A14DE0(&v25) || (sub_297A02078(), !ccder_blob_encode_tl()) || (v28[0] = v26, v28[1] = &v30[-v26], v28[2] = v4, !sub_297A02058(v6, 0x4Bu, v28, 3u, v7, v8, v9, v10, v29, &v27)) && ((sub_297A02078(), !ccder_blob_decode_range()) || v0 && (sub_297A02170(), (sub_297A14C28(v11, v12, v13) & 1) == 0)))
      {
        sub_297A02124();
      }
    }

    else
    {
      v16 = *MEMORY[0x29EDCA620];
      sub_297A02044();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 653, "", "");
      sub_297A02124();
    }
  }

  else
  {
    sub_297A02124();
  }

  sub_297A02084(v29);
  v14 = *(v2 - 96);
  v15 = *MEMORY[0x29EDCA608];
  sub_297A02150();
  sub_297A020A0();
}

uint64_t sub_297A08AEC(uint64_t a1, uint64_t a2)
{
  result = sub_297A07EE4(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t sub_297A08BF8()
{
  input[3] = *MEMORY[0x29EDCA608];
  sub_297A02144();
  if (v2)
  {
    v3 = v2;
    input[0] = 0;
    input[1] = v1;
    input[2] = 0;
    output = 0;
    outputCnt = 1;
    v4 = sub_297A01194();
    if (v4)
    {
      v0 = IOConnectCallMethod(v4, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v0)
      {
        *v3 = output;
      }
    }

    else
    {
      v7 = *MEMORY[0x29EDCA620];
      sub_297A02044();
      fprintf(v8, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v9, v10, v11, v12, v13, v14, v15, ":", 841, "", "");
    }
  }

  else
  {
    v0 = (v0 + 6);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v0;
}

void sub_297A08D04()
{
  sub_297A020B8();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v33 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v16 = sub_297A01194();
  if (v16)
  {
    v31[0] = v15;
    v31[1] = v14;
    v31[2] = v12;
    v31[3] = v10;
    if ((!v14 || v4 && v2) && !sub_297A020EC(v16, 0x36u, v31, 4u, v8, v6, v17, v18, __src, &__count))
    {
      if (v14)
      {
        v19 = calloc(__count, 1uLL);
        *v4 = v19;
        if (v19)
        {
          memcpy(v19, __src, __count);
          *v2 = __count;
        }
      }
    }
  }

  else
  {
    v21 = *MEMORY[0x29EDCA620];
    sub_297A02044();
    fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v23, v24, v25, v26, v27, v28, v29, ":", 890, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v20 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

void sub_297A08EC4()
{
  sub_297A020B8();
  sub_297A020D0();
  v16[2] = *MEMORY[0x29EDCA608];
  v16[0] = v5;
  v16[1] = v4;
  v15 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v12 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v16, 2u, v2, 0x10uLL, &v15, &outputCnt, outputStruct, &v12) && outputCnt == 1)
  {
    *v1 = v15;
    sub_297A16914(outputStruct, v12, 3u, v6, v7, v8, v9, v10, v0);
  }

  v11 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

void sub_297A08FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  sub_297A020B8();
  sub_297A020D0();
  v44[2] = *MEMORY[0x29EDCA608];
  v44[0] = v30;
  v44[1] = v29;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v38 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v44, 2u, v27, 0x10uLL, &v41, &outputCnt, outputStruct, &v38) && outputCnt == 3)
  {
    v36 = v42;
    *v26 = v41;
    *a22 = v36;
    *a25 = v43;
    sub_297A16914(outputStruct, v38, 5u, v31, v32, v33, v34, v35, v25);
  }

  v37 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

uint64_t sub_297A09110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_297A0797C(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    sub_297A02144();
  }

  free(*&inputStructCnt[1]);
  v17 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_297A09220()
{
  sub_297A020B8();
  v3 = v2;
  sub_297A0215C();
  v23[2] = *MEMORY[0x29EDCA608];
  v23[0] = v4;
  v23[1] = v5;
  v21 = 0;
  v20 = 0;
  bzero(v22, 0x400uLL);
  v19 = 1024;
  sub_297A0797C(&v21, &v20, 2, v6, v7, v8, v9, v10, v0);
  if (!sub_297A020EC(v1, 0x10u, v23, 2u, v21, v20, v11, v12, v22, &v19))
  {
    sub_297A16914(v22, v19, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v21);
  v18 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

void sub_297A09338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  sub_297A020B8();
  sub_297A0215C();
  v43[3] = *MEMORY[0x29EDCA608];
  v43[0] = v24;
  v43[1] = v25;
  v43[2] = a21;
  v41 = 0;
  v40 = 0;
  bzero(v42, 0x400uLL);
  v39 = 1024;
  sub_297A0797C(&v41, &v40, 3, v26, v27, v28, v29, v30, v22);
  if (!sub_297A020EC(v23, 0x17u, v43, 3u, v41, v40, v31, v32, v42, &v39))
  {
    sub_297A16914(v42, v39, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v41);
  v38 = *MEMORY[0x29EDCA608];
  sub_297A020A0();
}

uint64_t sub_297A09460()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27[1] = *MEMORY[0x29EDCA608];
  v27[0] = v0;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  v7 = sub_297A01194();
  if (v7)
  {
    if (v6)
    {
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_297A020EC(v7, 0x5Du, v27, 1u, v6, v10, v8, v9, __src, &__n);
    v12 = __n;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      sub_297A02144();
      if (v12 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v6 = (v6 + 6);
      }

      else
      {
        v13 = calloc(v12, 1uLL);
        *v4 = v13;
        v12 = __n;
        if (v13)
        {
          *v2 = __n;
          memcpy(v13, __src, v12);
          v6 = 0;
          v12 = __n;
        }

        else
        {
          v6 = (v6 + 1);
        }
      }
    }
  }

  else
  {
    sub_297A02144();
    v16 = *MEMORY[0x29EDCA620];
    sub_297A02044();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1246, "", "");
    v12 = 0x8000;
  }

  memset_s(__src, v12, 0, v12);
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_297A09620()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A02044();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 268, "", "");
}

uint64_t sub_297A09688(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_297A09744()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A02044();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 820, "", "");
}

uint64_t sub_297A097AC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A02044();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 857, "", "");
}

uint64_t sub_297A09814()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A02044();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 871, "", "");
}

uint64_t sub_297A09890(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 + a3;
  v4 = a1[10];
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  v5 = *a1;
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v6 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v6)
  {
    if (a2 == v9)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_297A09974(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_297A164C4(&v6, 0x8000000000000000, a3) || !sub_297A13FB8(&v6, 0x8000000000000001, a3 + 1, 16) || !sub_297A13FB8(&v6, 0x8000000000000002, a3 + 3, 40) || !sub_297A13FB8(&v6, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v4 = sub_297A164C4(&v6, 0x8000000000000004, a3 + 10);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t sub_297A09A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  *__s = 0u;
  v21 = 0u;
  HIDWORD(v19) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  sub_297A06A58(a4 + 64, 0x10u);
  ccsha256_di();
  v6 = *(a4 + 80);
  LODWORD(v7) = j__ccpbkdf2_hmac();
  if (v7)
  {
    v15 = 4294967286;
  }

  else
  {
    v7 = sub_297A00D30(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v19 + 1);
    if (v7)
    {
      v15 = v7;
    }

    else if (HIDWORD(v19) == 40)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4294967286;
    }
  }

  sub_297A02234(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, __s[0]);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t sub_297A09B70(const unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v19 = *MEMORY[0x29EDCA608];
  *__s = 0u;
  v18 = 0u;
  HIDWORD(v16) = 32;
  if (*a1)
  {
    v12 = 4294967284;
  }

  else
  {
    v9 = a1;
    ccsha256_di();
    v10 = *(v9 + 10);
    LODWORD(a1) = j__ccpbkdf2_hmac();
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = sub_297A010E4(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v9 + 3, 0x28u, a4, &v16 + 1);
    if (a1)
    {
      v12 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v16) != 32)
    {
LABEL_9:
      v12 = 4294967286;
    }

    else
    {
      v11 = cccurve25519_make_pub() == 0;
      sub_297A059A8(v11, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v9 + 8, (a4 + 32));
      if (a1)
      {
        v12 = 4294967272;
      }

      else
      {
        v12 = 0;
      }
    }
  }

LABEL_8:
  sub_297A02234(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, __s[0]);
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_297A09CB0()
{
  sub_297A04C30();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v30 = *MEMORY[0x29EDCA608];
  bzero(v29, 0x1000uLL);
  v26 = v29;
  v27 = &v30;
  v10 = sub_297A01194();
  if (v10)
  {
    v11 = v10;
    if (sub_297A14D84(&v26))
    {
      sub_297A04C0C();
      if (ccder_blob_encode_tl())
      {
        v28[0] = v9;
        v28[1] = v8;
        v28[2] = v4;
        v28[3] = v2;
        v28[4] = v6;
        v28[5] = v27;
        v28[6] = &v30 - v27;
        sub_297A04A68(v11, 0x21u, v28, 7u, v12, v13, v14, v15, 0, 0);
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 53, "", "");
  }

  v16 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

uint64_t sub_297A09E68(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (sub_297A01194())
  {
    sub_297A04B18();
    result = IOConnectCallMethod(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
    if (!result)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 80, "", "");
    result = sub_297A04B0C();
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A09F7C(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  sub_297A04D54();
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t sub_297A09FD4(int a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_297A0A0D4(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = sub_297A0A1BC(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !sub_297A0A25C(a1, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    sub_297A04C9C(v10);
    free(v10);
  }

  if (v14)
  {
    sub_297A09F7C(v14);
  }

  return v12;
}

uint64_t sub_297A0A0D4(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  v9 = *MEMORY[0x29EDCA4E0];
  v10 = *(v7 + 2);
  result = CCRandomCopyBytes();
  if (result)
  {
    v12 = *(v7 + 1);
    if (v12)
    {
      free(v12);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v11 = 2000;
  }

  else
  {
    v11 = 10000000;
  }

  if (a1 == 2)
  {
    v11 = 1000;
  }

  v7[1] = v11;
  *a2 = v7;
  return result;
}

uint64_t sub_297A0A1BC(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  sub_297A04D54();
  if (!v6 || !v3 && v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v5 && a1[6] - 4 >= 0xFFFFFFFD)
  {
    ccsha256_di();
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = a1[1];
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_297A0A25C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v42[4] = *MEMORY[0x29EDCA608];
  v42[0] = 0;
  sub_297A04C70();
  v40 = 0;
  __n = 0;
  if ((v10 || !a3) && a4 && a5)
  {
    v11 = sub_297A01194();
    if (v11)
    {
      v12 = v11;
      v13 = *(a5 + 8);
      v14 = *(a5 + 16);
      if (!sub_297A1443C() && !sub_297A1443C() && !sub_297A14700(&v40, off_2A13A46C0, *(a5 + 4)) && !sub_297A14700(&v40, off_2A13A46C8, *(a5 + 24)) && (a3 < 1 || !sub_297A1443C()) && !sub_297A0637C(&v40) && !sub_297A14168(&v40, v42, &__n))
      {
        sub_297A04CE8(a1, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __n);
        v5 = sub_297A04A68(v12, 0x1Eu, v15, 3u, v16, v17, v18, v19, v26, v28);
      }
    }

    else
    {
      v22 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v29, v30, v31, v32, v33, v34, ":", 221, "", "");
      v5 = (v5 - 6);
    }
  }

  sub_297A05F44(&v40);
  if (v42[0])
  {
    sub_297A04CC4(v42[0], __n);
    free(v42[0]);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_297A0A450()
{
  sub_297A04C30();
  MEMORY[0x2A1C7C4A8]();
  v38 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    sub_297A04C00();
    v3 = calloc(0x20uLL, 1uLL);
    if (v3)
    {
      v4 = v3;
      *v3 = 1634431856;
      v5 = sub_297A01194();
      if (!v5)
      {
        v18 = *MEMORY[0x29EDCA620];
        sub_297A04A00();
        fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 387, "", "");
        goto LABEL_16;
      }

      v6 = v5;
      bzero(v37, 0x8000uLL);
      v27[0] = 0x8000;
      v36 = v1;
      if (sub_297A04A34(v6, 0x1Fu, &v36, v7, v8, v9, v10, v11, v37, v27) || v27[0] > 0x8000)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v29 = 0u;
      v31 = 0u;
      v32 = 0;
      v28 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27[1] = off_2A13A46B8;
      v30 = off_2A13A46C0;
      v33 = off_2A13A46C8;
      sub_297A04A14();
      sub_297A13B38();
      v13 = ccder_decode_tl();
      if (v13)
      {
        v14 = v13;
        v15 = calloc(*(v4 + 2), 1uLL);
        *(v4 + 1) = v15;
        if (!v15)
        {
          v16 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v15, v14, *(v4 + 2));
        v4[1] = sub_297A13CEC();
        v4[6] = sub_297A13CEC();
      }

      v16 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v16 && *(v4 + 2))
        {
          *v0 = v4;
          goto LABEL_14;
        }

LABEL_16:
        sub_297A09F7C(v4);
        goto LABEL_14;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  v17 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

uint64_t sub_297A0A6DC(int a1, uint64_t a2, int a3, unsigned int *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || sub_297A0A1BC(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = sub_297A0294C(a1, v10, 32, 0);
  }

  sub_297A04C9C(v10);
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297A0A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  v8 = *v7;
  sub_297A04D54();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v9;
  if (!v10)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v12 && v13 || sub_297A0A1BC(v7))
  {
    goto LABEL_18;
  }

  v16 = sub_297A0A0D4(v7[6], &v22);
  v17 = v22;
  if (v16 || (v18 = sub_297A0A1BC(v22), v17 = v22, v18))
  {
LABEL_16:
    if (v17)
    {
      sub_297A09F7C(v17);
    }

LABEL_18:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (sub_297A0A25C(v15, v24, 32, v23, v22))
  {
    v17 = v22;
    goto LABEL_16;
  }

  sub_297A09F7C(v7);
  v19 = 0;
  *a6 = v22;
LABEL_14:
  sub_297A04C9C(v24);
  sub_297A04C9C(v23);
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t sub_297A0A8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v29 = *MEMORY[0x29EDCA608];
  v9 = 3758097084;
  if (sub_297A01194())
  {
    if (a8)
    {
      sub_297A04B18();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      v9 = 3758097090;
    }
  }

  else
  {
    v20 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 190, "", "");
  }

  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297A0AC1C(const void *a1, int a2, _DWORD *a3)
{
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  v7 = sub_297A01194();
  if (v7)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        outputCnt = 1;
        v3 = IOConnectCallMethod(v7, 6u, 0, 0, a1, a2, &output, &outputCnt, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 607, "", "");
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_297A0AD28(const void *a1, int a2)
{
  sub_297A04AE0();
  v5 = sub_297A01194();
  if (v5)
  {
    if (a1)
    {
      return sub_297A04BE8(v5, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
    }

    return (v2 + 6);
  }

  else
  {
    v9 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 629, "", "");
  }

  return v2;
}

void sub_297A0ADE4()
{
  sub_297A04F54();
  sub_297A04E1C();
  MEMORY[0x2A1C7C4A8]();
  sub_297A04CB8();
  v7 = v6;
  *(v5 - 72) = *MEMORY[0x29EDCA608];
  sub_297A04DBC();
  v8 = sub_297A01194();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_297A04C7C((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v28, v29, v30, v31, v32, v33, v34);
        __count = v3;
        v37 = v7;
        if (!sub_297A04A34(v16, 3u, &v37, v17, v18, v19, v20, v21, v4, &__count))
        {
          v22 = calloc(__count, 1uLL);
          *v1 = v22;
          if (v22)
          {
            memcpy(v22, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    v25 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v30, v31, v32, v33, v34, v35, ":", 679, "", "");
    sub_297A04B0C();
  }

  v23 = *(v5 - 72);
  v24 = *MEMORY[0x29EDCA608];
  sub_297A04E54();
  sub_297A04F40();
}

uint64_t sub_297A0AF2C()
{
  sub_297A04C00();
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  v20 = 16;
  v3 = sub_297A01194();
  if (v3)
  {
    if (v1)
    {
      v22 = 0uLL;
      v21 = v2;
      v0 = sub_297A04A34(v3, 0x17u, &v21, v4, v5, v6, v7, v8, &v22, &v20);
      if (!v0)
      {
        *v1 = v22;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v11 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 782, "", "");
  }

  v9 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_297A0B02C(int a1, uint64_t a2, void **a3, size_t *a4)
{
  v54 = *MEMORY[0x29EDCA608];
  sub_297A04E60();
  v53 = 0;
  memset(__src, 0, sizeof(__src));
  v49 = 0;
  __count = 34;
  HIDWORD(v47) = 0;
  v9 = sub_297A01194();
  if (v9)
  {
    v17 = (v4 + 5);
    if (a3 && a4)
    {
      v18 = v9;
      v51 = a1;
      v19 = sub_297A04E84(v9, v10, v11, v12, v13, v14, v15, v16, a2, 16, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, 0);
      sub_297A0797C(v19, v20, 1, v21, v22, v23, v24, v25, v36);
      if (v49)
      {
        v29 = sub_297A04BCC(v18, 0x44u, &v51, v26, v49, v48, v27, v28, __src, &__count);
        if (v29)
        {
          v17 = v29;
        }

        else
        {
          *a3 = calloc(__count, 1uLL);
          sub_297A04E60();
          if (v30)
          {
            memcpy(v30, __src, __count);
            v17 = 0;
            *a4 = __count;
          }
        }
      }

      else
      {
        sub_297A04E60();
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v37, v38, v39, v40, v41, v42, ":", 813, "", "");
    v17 = (v4 - 1);
  }

  free(v49);
  v31 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t sub_297A0B1B8()
{
  sub_297A04C00();
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  if (sub_297A01194())
  {
    if (v1)
    {
      sub_297A04AA4();
      sub_297A04A58();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        sub_297A04E04();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 889, "", "");
  }

  v10 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_297A0B3DC(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  sub_297A04A88(*MEMORY[0x29EDCA608]);
  v13 = sub_297A01194();
  if (v13)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v28[0] = a4;
          v28[1] = a3;
          v27 = *a6;
          v6 = sub_297A04BE8(v13, 0xBu, v28, 2u, a1, a2, v14, v15, a5, &v27);
          if (!v6)
          {
            *a6 = v27;
          }
        }
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 942, "", "");
  }

  v16 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_297A0B628()
{
  sub_297A04C00();
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  if (sub_297A01194())
  {
    if (v1)
    {
      sub_297A04B18();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
      if (!v0)
      {
        sub_297A04E04();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 987, "", "");
  }

  v10 = *MEMORY[0x29EDCA608];
  return v0;
}

void sub_297A0B86C()
{
  sub_297A04C30();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v37 = *MEMORY[0x29EDCA608];
  v34 = 0;
  v33 = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v12 = sub_297A01194();
  if (v12)
  {
    v18 = v12;
    v35[0] = v10;
    v35[1] = v8;
    v35[2] = v6;
    sub_297A0797C(&v34, &v33, 1, v13, v14, v15, v16, v17, v11);
    if (v34)
    {
      if (!sub_297A04BE8(v18, 0x6Eu, v35, 3u, v34, v33, v19, v20, __src, &__count))
      {
        v21 = calloc(__count, 1uLL);
        *v4 = v21;
        if (v21)
        {
          memcpy(v21, __src, __count);
          *v2 = __count;
        }
      }
    }
  }

  else
  {
    v23 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v26, v27, v28, v29, v30, v31, ":", 1101, "", "");
  }

  free(v34);
  v22 = *MEMORY[0x29EDCA608];
  sub_297A04E78();
  sub_297A04C18();
}

uint64_t sub_297A0BA24()
{
  sub_297A04AE0();
  v25 = 0;
  v24 = 0;
  v1 = sub_297A01194();
  if (v1)
  {
    v2 = v1;
    sub_297A04E6C();
    sub_297A0797C(&v25, &v24, 1, v3, v4, v5, v6, v7, v17);
    if (v25)
    {
      v0 = sub_297A04B24(v2, 0x6Fu, v8, v9, v25, v24, v10, v11, 0, 0);
      v12 = v25;
    }

    else
    {
      v12 = sub_297A04C58();
    }
  }

  else
  {
    v14 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1143, "", "");
    v12 = 0;
  }

  free(v12);
  return v0;
}

uint64_t sub_297A0BB08(uint64_t a1, void *a2)
{
  sub_297A04AE0();
  v29 = 0;
  v28 = 0;
  v27 = 16;
  v5 = sub_297A01194();
  if (v5)
  {
    v11 = v5;
    sub_297A0797C(&v29, &v28, 1, v6, v7, v8, v9, v10, a1);
    if (v29)
    {
      v2 = sub_297A04B24(v11, 0x70u, v12, v13, v29, v28, v14, v15, a2, &v27);
      v16 = v29;
    }

    else
    {
      v16 = sub_297A04C58();
    }
  }

  else
  {
    v18 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1165, "", "");
    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t sub_297A0BEC4(uint64_t a1, uint64_t a2, int a3, int a4, _OWORD *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  v26 = 0u;
  __s = 0u;
  v24 = 0u;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v8 = sub_297A09974(a1, a2, v21);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v8 = sub_297A09B70(v21, a3, a4, &__s, v12, v13, v14, v15);
    v16 = v8;
    if (!v8)
    {
      v17 = v24;
      *a5 = __s;
      a5[1] = v17;
      v18 = v26;
      a5[2] = v25;
      a5[3] = v18;
    }
  }

  sub_297A04EC8(v8, v9, v10, v11, v12, v13, v14, v15, *&v21[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  result = sub_297A0598C(v16);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0BFA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v4 = sub_297A09974(a1, a2, v15);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v15 + 8);
  }

  sub_297A04EC8(v4, v5, v6, v7, v8, v9, v10, v11, *&v15[0]);
  result = sub_297A0598C(v12);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_297A04D34();
  v10 = v9;
  v27[2] = *MEMORY[0x29EDCA608];
  sub_297A04AE0();
  v11 = sub_297A01194();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v27[0] = v10;
      v27[1] = 64;
      v5 = sub_297A04B70(v11, 0x82u, v27, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    v18 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1292, "", "");
  }

  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297A0C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_297A04D34();
  v10 = v9;
  v27[1] = *MEMORY[0x29EDCA608];
  sub_297A04AE0();
  v11 = sub_297A01194();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v27[0] = v10;
      v5 = sub_297A04B70(v11, 0x81u, v27, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    v18 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1311, "", "");
  }

  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297A0C230()
{
  sub_297A04C00();
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  if (sub_297A01194())
  {
    if (v1)
    {
      sub_297A04AA4();
      sub_297A04A58();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        sub_297A04E04();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 1330, "", "");
  }

  v10 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_297A0C310()
{
  sub_297A04C00();
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  v3 = sub_297A01194();
  if (v3)
  {
    if (v1)
    {
      v23 = 0;
      v24 = v2;
      v21 = 16;
      *src = 0;
      v9 = sub_297A04A34(v3, 0x84u, &v24, v4, v5, v6, v7, v8, src, &v21);
      if (v9)
      {
        v0 = v9;
      }

      else if (v21 == 16)
      {
        uuid_copy(v1, src);
        v0 = 0;
      }

      else
      {
        v0 = 3758604298;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1352, "", "");
  }

  v10 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_297A0C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    sub_297A04D84();
    v10 = v9;
    *a5 = -1;
    v15 = sub_297A0BEC4(v9, v11, v12, v13, v14);
    v16 = MEMORY[0x29EDCA620];
    v17 = *MEMORY[0x29EDCA620];
    if (!v15)
    {
      sub_297A04A00();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v19, v38, v39, v41, v43, v45, v47, ":", 1401, "", "");
      v20 = 0;
      goto LABEL_9;
    }

    v51 = v15;
    sub_297A04AEC();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", "", v22, v39, v41, v43, v45, v47, v49, 1389, "", v51, "");
    v23 = sub_297A0AC1C(v10, v7, a5);
    if (v23)
    {
      v20 = v23;
      v32 = *v16;
      sub_297A04AEC();
      fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", "", v34, v40, v42, v44, v46, v48, v50, 1391, "", v20, "");
    }

    else
    {
      v24 = *a5;
      sub_297A0A450();
      v26 = v25;
      v27 = *a5;
      if (v26)
      {
        v20 = sub_297A0A6DC(v27, v6, v5, 0);
        if (!v20)
        {
          goto LABEL_9;
        }

        v35 = *v16;
        sub_297A04AEC();
        fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", "", v37);
      }

      else
      {
        v20 = sub_297A0294C(v27, v6, v5, 0);
        if (!v20)
        {
          goto LABEL_9;
        }

        v28 = *v16;
        sub_297A04AEC();
        fprintf(v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", "", v30);
      }
    }
  }

  else
  {
    v20 = 3758097090;
  }

  if (*a5 != -1)
  {
    sub_297A02564(*a5);
    *a5 = -1;
  }

LABEL_9:
  sub_297A09F7C(0);
  return v20;
}

uint64_t sub_297A0C644(int a1, uint64_t a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x29EDCA608];
  sub_297A04AE0();
  v30 = 0;
  v29 = 0;
  v7 = sub_297A01194();
  if (v7)
  {
    v8 = v7;
    v31[0] = a1;
    v31[1] = a2;
    v31[2] = a3;
    sub_297A04E6C();
    sub_297A0797C(&v30, &v29, 1, v9, v10, v11, v12, v13, v22);
    if (v30)
    {
      v3 = sub_297A04BE8(v8, 0x60u, v31, 3u, v30, v29, v14, v15, 0, 0);
      v16 = v30;
    }

    else
    {
      v16 = sub_297A04C58();
    }
  }

  else
  {
    v19 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 1423, "", "");
    v16 = 0;
  }

  free(v16);
  v17 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_297A0C77C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_297A04A88(*MEMORY[0x29EDCA608]);
  v33 = 0;
  v32 = 0;
  v10 = sub_297A01194();
  if (v10)
  {
    v11 = v10;
    v34[0] = a1;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a5;
    sub_297A04E6C();
    sub_297A0797C(&v33, &v32, 1, v12, v13, v14, v15, v16, v25);
    if (v33)
    {
      v5 = sub_297A04BE8(v11, 0x75u, v34, 4u, v33, v32, v17, v18, 0, 0);
      v19 = v33;
    }

    else
    {
      v19 = sub_297A04C58();
    }
  }

  else
  {
    v22 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v26, v27, v28, v29, v30, v31, ":", 1445, "", "");
    v19 = 0;
  }

  free(v19);
  v20 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297A0C8C0()
{
  MEMORY[0x2A1C7C4A8]();
  v4 = v3;
  sub_297A04C00();
  sub_297A04D44(*MEMORY[0x29EDCA608]);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v27 = v1;
  v5 = (v2 + 6);
  if (v0 && v4)
  {
    v6 = sub_297A01194();
    if (v6)
    {
      v12 = sub_297A04A34(v6, 0x61u, &v27, v7, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v5 = v12;
      }

      else
      {
        if (__count)
        {
          v13 = calloc(__count, 1uLL);
          *v0 = v13;
          if (!v13)
          {
            v5 = (v2 + 1);
            goto LABEL_10;
          }

          memcpy(v13, __src, __count);
          v14 = __count;
        }

        else
        {
          v14 = 0;
          *v0 = 0;
        }

        sub_297A04DF8(v14);
      }
    }

    else
    {
      v17 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 1471, "", "");
      sub_297A04C64();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297A0CA40(int a1)
{
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  v27 = 0;
  v26 = 0;
  v3 = sub_297A01194();
  if (v3)
  {
    v4 = v3;
    v28 = a1;
    sub_297A04E6C();
    sub_297A0797C(&v27, &v26, 1, v5, v6, v7, v8, v9, v19);
    if (v27)
    {
      v1 = sub_297A04BCC(v4, 0x62u, &v28, v10, v27, v26, v11, v12, 0, 0);
      v13 = v27;
    }

    else
    {
      v13 = sub_297A04C58();
    }
  }

  else
  {
    v16 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v20, v21, v22, v23, v24, v25, ":", 1493, "", "");
    v13 = 0;
  }

  free(v13);
  v14 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t sub_297A0CC60(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v64[4] = *MEMORY[0x29EDCA608];
  v64[0] = 0;
  sub_297A04C70();
  v62 = 0;
  __n = 0;
  v8 = sub_297A01194();
  if (v8)
  {
    v9 = v8;
    CFNumberGetTypeID();
    v10 = sub_297A04BC0();
    if (!sub_297A118F8(v10, v11, v12))
    {
      CFNumberGetTypeID();
      v13 = sub_297A04BC0();
      if (!sub_297A118F8(v13, v14, v15))
      {
        CFNumberGetTypeID();
        v16 = sub_297A04BC0();
        if (!sub_297A118F8(v16, v17, v18))
        {
          CFNumberGetTypeID();
          v19 = sub_297A04BC0();
          if (!sub_297A118F8(v19, @"EscrowPasscodePeriod", v20))
          {
            CFNumberGetTypeID();
            v21 = sub_297A04BC0();
            if (!sub_297A118F8(v21, @"EscrowTokenPeriod", v22))
            {
              CFDataGetTypeID();
              v23 = sub_297A04BC0();
              if (!sub_297A118F8(v23, v24, v25))
              {
                CFDataGetTypeID();
                v26 = sub_297A04BC0();
                if (!sub_297A118F8(v26, v27, v28))
                {
                  CFBooleanGetTypeID();
                  v29 = sub_297A04BC0();
                  if (!sub_297A118F8(v29, v30, v31))
                  {
                    CFBooleanGetTypeID();
                    v32 = sub_297A04BC0();
                    if (!sub_297A118F8(v32, v33, v34) && !sub_297A0637C(&v62))
                    {
                      if (!a2)
                      {
                        goto LABEL_24;
                      }

                      v35 = &off_2A13A4370;
                      if (!a4)
                      {
                        v35 = &off_2A13A4380;
                      }

                      v36 = *v35;
                      if (!sub_297A1443C())
                      {
LABEL_24:
                        if (!sub_297A14168(&v62, v64, &__n))
                        {
                          sub_297A04CE8(a1, v47, v49, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, __n);
                          v4 = sub_297A04A68(v9, 0x1Eu, v37, 3u, v38, v39, v40, v41, v48, v50);
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

  else
  {
    v44 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v45, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v46, v51, v52, v53, v54, v55, v56, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  sub_297A05F44(&v62);
  if (v64[0])
  {
    sub_297A04CC4(v64[0], __n);
    free(v64[0]);
  }

  v42 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_297A0CF78()
{
  sub_297A04C30();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v90 = *MEMORY[0x29EDCA608];
  sub_297A04AE0();
  v4 = sub_297A01194();
  if (v4)
  {
    if (v2)
    {
      v5 = v4;
      bzero(v89, 0x8000uLL);
      v86[0] = 0x8000;
      v88 = v3;
      if (!sub_297A04A34(v5, 0x1Fu, &v88, v6, v7, v8, v9, v10, v89, v86) && v86[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        bzero(v87, 0x250uLL);
        v86[1] = off_2A13A44D8;
        v87[4] = off_2A13A44E0;
        v87[9] = off_2A13A44E8;
        v87[14] = off_2A13A44F0;
        v87[19] = off_2A13A44F8;
        v87[24] = off_2A13A4500;
        v87[29] = off_2A13A46E0;
        v87[34] = off_2A13A4718;
        v87[39] = off_2A13A4728;
        v87[44] = off_2A13A4730;
        v87[49] = off_2A13A4738;
        v87[54] = off_2A13A48C0;
        v87[59] = off_2A13A48C8;
        v87[64] = off_2A13A48F8;
        v87[69] = off_2A13A48F0;
        sub_297A04A14();
        sub_297A13B38();
        v12 = v87[0];
        v13 = v87[5];
        v14 = v87[10];
        v15 = v87[15];
        v85 = v2;
        v16 = v87[20];
        v17 = v87[25];
        v18 = v87[30];
        v77 = v87[35];
        v78 = v87[40];
        v79 = v87[45];
        v80 = v87[50];
        v81 = v87[55];
        v82 = v87[60];
        v83 = v87[65];
        v84 = v87[70];
        CFNumberGetTypeID();
        v19 = sub_297A04B00();
        sub_297A02C24(v19, v20, v21, v12);
        CFNumberGetTypeID();
        v22 = sub_297A04B00();
        sub_297A02C24(v22, v23, v24, v13);
        CFNumberGetTypeID();
        v25 = sub_297A04B00();
        sub_297A02C24(v25, v26, v27, v14);
        CFNumberGetTypeID();
        v28 = sub_297A04B00();
        sub_297A02C24(v28, @"EscrowPasscodePeriod", v29, v15);
        CFNumberGetTypeID();
        v30 = sub_297A04B00();
        sub_297A02C24(v30, @"EscrowTokenPeriod", v31, v16);
        CFNumberGetTypeID();
        v32 = sub_297A04B00();
        sub_297A02C24(v32, v33, v34, v17);
        CFDataGetTypeID();
        v35 = sub_297A04B00();
        sub_297A02C24(v35, v36, v37, v18);
        CFDataGetTypeID();
        v38 = sub_297A04B00();
        sub_297A02C24(v38, v39, v40, v77);
        CFNumberGetTypeID();
        v41 = sub_297A04B00();
        sub_297A02C24(v41, v42, v43, v78);
        CFNumberGetTypeID();
        v44 = sub_297A04B00();
        sub_297A02C24(v44, v45, v46, v79);
        CFNumberGetTypeID();
        v47 = sub_297A04B00();
        sub_297A02C24(v47, v48, v49, v80);
        CFBooleanGetTypeID();
        v50 = sub_297A04B00();
        sub_297A02C24(v50, v51, v52, v81);
        CFBooleanGetTypeID();
        v53 = sub_297A04B00();
        sub_297A02C24(v53, v54, v55, v82);
        CFNumberGetTypeID();
        v56 = sub_297A04B00();
        sub_297A02C24(v56, v57, v58, v83);
        CFNumberGetTypeID();
        v59 = sub_297A04B00();
        sub_297A02C24(v59, v60, v61, v84);
        v62 = sub_297A13CEC();
        v63 = *MEMORY[0x29EDB8EF8];
        v64 = *MEMORY[0x29EDB8F00];
        if ((v62 & 2) != 0)
        {
          v65 = *MEMORY[0x29EDB8F00];
        }

        else
        {
          v65 = *MEMORY[0x29EDB8EF8];
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v65);
        if ((v62 & 8) != 0)
        {
          v66 = v64;
        }

        else
        {
          v66 = v63;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v66);
        *v85 = Mutable;
      }
    }
  }

  else
  {
    v68 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v69, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v70, v71, v72, v73, v74, v75, v76, ":", 1677, "", "");
  }

  v67 = *MEMORY[0x29EDCA608];
  sub_297A04E78();
  sub_297A04C18();
}

void sub_297A0D480()
{
  sub_297A04EFC();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v24 = *MEMORY[0x29EDCA608];
  sub_297A04C70();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v8 = sub_297A01194();
  if (v8)
  {
    if (v7)
    {
      if (v4)
      {
        if (v2)
        {
          if (!sub_297A04BE8(v8, 0x29u, 0, 0, v7, v6, v9, v10, __src, &__count))
          {
            v11 = calloc(__count, 1uLL);
            *v4 = v11;
            if (v11)
            {
              memcpy(v11, __src, __count);
              *v2 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 1889, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v12 = *MEMORY[0x29EDCA608];
  sub_297A04E78();
  sub_297A04EE8();
}

uint64_t sub_297A0D788()
{
  sub_297A04D44(*MEMORY[0x29EDCA608]);
  sub_297A04E34();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      v6 = sub_297A01194();
      if (v6)
      {
        v7 = v6;
        bzero(v39, 0x100uLL);
        result = sub_297A04A68(v7, 0x31u, v38, 2u, v8, v9, v10, v11, v39, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            result = sub_297A04E28();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              sub_297A04F10(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, __count, v38[0], v38[1], v39[0]);
              result = sub_297A04E48();
              *v4 = v20;
            }

            else
            {
              result = (v0 + 1);
            }
          }
        }
      }

      else
      {
        v22 = *MEMORY[0x29EDCA620];
        sub_297A04A00();
        fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v27, v28, v29, v30, v31, v32, ":", 2020, "", "");
        result = sub_297A04B0C();
      }
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A0D8CC()
{
  sub_297A04F54();
  sub_297A04E1C();
  MEMORY[0x2A1C7C4A8]();
  *(v0 - 72) = *MEMORY[0x29EDCA608];
  sub_297A04E34();
  if (v1)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      v5 = sub_297A01194();
      if (v5)
      {
        v6 = v5;
        bzero(v43, 0x8000uLL);
        sub_297A04D64();
        if (!sub_297A04B50(v6, 0x31u, v7, 2u, v8, v9, v10, v11, v26, v28))
        {
          if (__count > 0x8000)
          {
            sub_297A04E28();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v4 = v12;
            if (v12)
            {
              sub_297A04F10(v12, v13, v14, v15, v16, v17, v18, v19, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, __count, v41, v42, v43[0]);
              sub_297A04E48();
              *v3 = v20;
            }
          }
        }
      }

      else
      {
        v23 = *MEMORY[0x29EDCA620];
        sub_297A04A00();
        fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v30, v31, v32, v33, v34, v35, ":", 2042, "", "");
        sub_297A04B0C();
      }
    }
  }

  v21 = *(v0 - 72);
  v22 = *MEMORY[0x29EDCA608];
  sub_297A04E54();
  sub_297A04F40();
}

uint64_t sub_297A0DA2C()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v33 = *MEMORY[0x29EDCA608];
  __count = 15360;
  v31[0] = v0;
  v31[1] = v7;
  v31[2] = v8;
  v9 = sub_297A01194();
  if (v9)
  {
    v10 = v9;
    bzero(__src, 0x3C00uLL);
    v15 = sub_297A04A68(v10, v6, v31, 3u, v11, v12, v13, v14, __src, &__count);
    if (v15)
    {
      v6 = v15;
    }

    else if (__count > 0x3C00)
    {
      sub_297A04E10();
    }

    else
    {
      v6 = 0;
      if (v4 && v2)
      {
        if (__count)
        {
          v16 = calloc(__count, 1uLL);
          *v4 = v16;
          if (!v16)
          {
            sub_297A04B44();
            v6 = v23 | 1u;
            goto LABEL_11;
          }

          memcpy(v16, __src, __count);
          v17 = __count;
        }

        else
        {
          v17 = 0;
        }

        sub_297A04DF8(v17);
      }
    }
  }

  else
  {
    sub_297A04C64();
    v20 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v24, v25, v26, v27, v28, v29, ":", 2178, "", "");
  }

LABEL_11:
  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_297A0DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  sub_297A04C30();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v76 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x100uLL);
  v72 = 0;
  __count = 256;
  HIDWORD(v70) = 0;
  v74[0] = v34;
  v74[1] = v32;
  v74[2] = v28;
  if (v22 && a21)
  {
    v35 = sub_297A01194();
    if (v35)
    {
      v43 = v35;
      v44 = sub_297A04E84(v35, v36, v37, v38, v39, v40, v41, v42, v58, v59, v26, v24, v62, v63, v64, v65, v66, v67, v68, v69, v70, 0);
      sub_297A0797C(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v72)
      {
        if (!sub_297A04BE8(v43, 0x32u, v74, 3u, v72, v71, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      v55 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v56, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v57, v60, v61, v62, v63, v64, v65, ":", 2072, "", "");
    }
  }

  free(v72);
  v54 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

uint64_t sub_297A0DEEC()
{
  v10 = 0;
  v11 = 0;
  sub_297A04AE0();
  __n = 0;
  v9 = 0;
  v3 = (v0 + 6);
  v7 = 0;
  if (v1 && v2)
  {
    *&v12 = v1;
    *(&v12 + 1) = v1 + v2;
    v9 = 0;
    sub_297A04C0C();
    if (ccder_blob_decode_range())
    {
      sub_297A164C4(&v12, 0x8000000000000001, &v9);
      if (v9)
      {
        sub_297A04B18();
        v3 = sub_297A0DA2C();
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        v4 = sub_297A0D788();
        if (!v4)
        {
          v5 = v11;
          goto LABEL_10;
        }

        v3 = v4;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", v4);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v5 = v11;
  v0 = v3;
LABEL_10:
  if (v5)
  {
    sub_297A04CC4(v5, __n);
    free(v11);
  }

  if (v10)
  {
    sub_297A04CC4(v10, v7);
    free(v10);
  }

  return v0;
}

void sub_297A0E108()
{
  sub_297A04F54();
  sub_297A04E1C();
  MEMORY[0x2A1C7C4A8]();
  sub_297A04CB8();
  v6 = v5;
  *(v4 - 72) = *MEMORY[0x29EDCA608];
  sub_297A04DBC();
  v7 = sub_297A01194();
  if (v7)
  {
    v15 = v7;
    if (v1)
    {
      if (v0)
      {
        sub_297A04C7C((v2 + 6), v8, v9, v10, v11, v12, v13, v14, v35, v38, v41, v43, v45, v47, v49);
        sub_297A04D64();
        if (!sub_297A04A68(v15, 0x14u, v16, 2u, v17, v18, v19, v20, v36, v39))
        {
          if (v3)
          {
            v21 = calloc(v3, 1uLL);
            *v1 = v21;
            if (v21)
            {
              sub_297A04F10(v21, v22, v23, v24, v25, v26, v27, v28, v37, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54, v55, v3, v6, 0, v56);
              sub_297A04E48();
              *v0 = v29;
            }
          }
        }
      }
    }
  }

  else
  {
    v32 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v34, v41, v43, v45, v47, v49, v51, ":", 2233, "", "");
    sub_297A04B0C();
  }

  v30 = *(v4 - 72);
  v31 = *MEMORY[0x29EDCA608];
  sub_297A04E54();
  sub_297A04F40();
}

void sub_297A0E250()
{
  sub_297A04F54();
  sub_297A04E1C();
  MEMORY[0x2A1C7C4A8]();
  sub_297A04CB8();
  v6 = v5;
  *(v4 - 72) = *MEMORY[0x29EDCA608];
  sub_297A04DBC();
  v7 = sub_297A01194();
  if (v7)
  {
    v15 = v7;
    if (v1)
    {
      if (v0)
      {
        sub_297A04C7C((v2 + 6), v8, v9, v10, v11, v12, v13, v14, v35, v38, v41, v43, v45, v47, v49);
        sub_297A04D64();
        if (!sub_297A04A68(v15, 0x14u, v16, 2u, v17, v18, v19, v20, v36, v39))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              sub_297A04E28();
            }

            else
            {
              v21 = calloc(v3, 1uLL);
              *v1 = v21;
              if (v21)
              {
                sub_297A04F10(v21, v22, v23, v24, v25, v26, v27, v28, v37, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54, v55, v3, v6, 1, v56);
                sub_297A04E48();
                *v0 = v29 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v32 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v34, v41, v43, v45, v47, v49, v51, ":", 2261, "", "");
    sub_297A04B0C();
  }

  v30 = *(v4 - 72);
  v31 = *MEMORY[0x29EDCA608];
  sub_297A04E54();
  sub_297A04F40();
}

void sub_297A0E3BC()
{
  sub_297A04C30();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v36 = *MEMORY[0x29EDCA608];
  v12 = sub_297A01194();
  if (v12)
  {
    v13 = v12;
    if (v4)
    {
      if (!v2)
      {
        goto LABEL_10;
      }

      v14 = __src;
      p_count = &__count;
      v16 = 1;
    }

    else
    {
      p_count = 0;
      v14 = 0;
      v16 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v34[0] = v11;
    v34[1] = v10;
    v34[2] = v16;
    v34[3] = v8;
    v34[4] = v6;
    v21 = sub_297A04A68(v13, 0x15u, v34, 5u, v17, v18, v19, v20, v14, p_count);
    if (v4 && !v21)
    {
      v22 = calloc(__count, 1uLL);
      *v4 = v22;
      if (v22)
      {
        memcpy(v22, __src, __count);
        *v2 = __count;
      }

      else
      {
        sub_297A04B44();
      }
    }
  }

  else
  {
    v24 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v27, v28, v29, v30, v31, v32, ":", 2307, "", "");
    sub_297A04B0C();
  }

LABEL_10:
  v23 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

uint64_t sub_297A0E568()
{
  sub_297A04C00();
  sub_297A04AC8(*MEMORY[0x29EDCA608]);
  if (sub_297A01194())
  {
    if (v1)
    {
      sub_297A04AA4();
      sub_297A04A58();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        sub_297A04E04();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 2339, "", "");
  }

  v10 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_297A0E68C()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v29[1] = *MEMORY[0x29EDCA608];
  v29[0] = v0;
  v25 = 4096;
  v5 = 3758097084;
  v27 = 0;
  memset(__src, 0, sizeof(__src));
  v6 = sub_297A01194();
  if (v6)
  {
    if (v2)
    {
      v7 = v6;
      bzero(v28, 0x1000uLL);
      v13 = sub_297A04A34(v7, v4, v29, v8, v9, v10, v11, v12, v28, &v25);
      if (v13)
      {
        v5 = v13;
      }

      else
      {
        if (!sub_297A15098(v28))
        {
          memcpy(v2, __src, 0x42uLL);
        }

        v5 = 0;
      }
    }

    else
    {
      v5 = 3758097090;
    }
  }

  else
  {
    v16 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 2409, "", "");
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_297A0E810()
{
  sub_297A04EFC();
  MEMORY[0x2A1C7C4A8]();
  sub_297A04D84();
  sub_297A04A88(*MEMORY[0x29EDCA608]);
  v34 = 4096;
  v35 = v1;
  v2 = sub_297A01194();
  if (v2)
  {
    if (v0)
    {
      v10 = v2;
      v11 = sub_297A04DB0(v2, v3, v4, v5, v6, v7, v8, v9, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
      bzero(v11, v12);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!sub_297A04B50(v10, 0x39u, &v35, 1u, v13, v14, v15, v16, v36, &v34))
      {
        sub_297A15EEC(v36, v34, v0);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v23, v24, v25, v26, v27, v28, ":", 2440, "", "");
  }

  v17 = *MEMORY[0x29EDCA608];
  sub_297A04CDC();
  sub_297A04EE8();
}

void sub_297A0E96C()
{
  sub_297A04EFC();
  v1 = v0;
  v3 = v2;
  v28[4] = *MEMORY[0x29EDCA608];
  v28[0] = v4;
  v28[1] = v5;
  v28[2] = v6;
  v28[3] = v7;
  __count = 2048;
  v8 = sub_297A01194();
  if (v8)
  {
    v9 = v8;
    bzero(__src, 0x800uLL);
    if (sub_297A04B50(v9, 0x3Bu, v28, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      sub_297A04E10();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          sub_297A04B44();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      sub_297A04DF8(v15);
    }
  }

  else
  {
    sub_297A04C64();
    v17 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 2580, "", "");
  }

LABEL_11:
  v16 = *MEMORY[0x29EDCA608];
  sub_297A04EE8();
}

void sub_297A0EAEC()
{
  sub_297A04EFC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27[1] = *MEMORY[0x29EDCA608];
  v27[0] = v8;
  __count = 2048;
  v9 = sub_297A01194();
  if (v9)
  {
    v10 = v9;
    bzero(__src, 0x800uLL);
    if (!sub_297A04BE8(v10, 0x3Du, v27, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          sub_297A04B44();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    v16 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 2621, "", "");
  }

LABEL_11:
  v15 = *MEMORY[0x29EDCA608];
  sub_297A04EE8();
}

void sub_297A0EC78()
{
  sub_297A04C30();
  v4 = v3;
  v6 = v5;
  sub_297A04DE4();
  v31[1] = *MEMORY[0x29EDCA608];
  v31[0] = v7;
  v29 = 0;
  v28 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  sub_297A0797C(&v29, &v28, 2, v8, v9, v10, v11, v12, v2);
  if (v29)
  {
    v13 = sub_297A01194();
    if (!v13)
    {
      v20 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v1, v0, v23, v24, v25, v26, ":", 2652, "", "");
      goto LABEL_12;
    }

    if (sub_297A04BCC(v13, 0x3Eu, v31, v14, v29, v28, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      sub_297A04E10();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        sub_297A04DF8(v18);
      }
    }
  }

LABEL_12:
  free(v29);
  v19 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

uint64_t sub_297A0EE28(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_297A0EE78(off_2A13A4648, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_297A0EE78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    sub_297A04A14();
    sub_297A13B38();
    if (a2)
    {
      if (*a6 == 8)
      {
        v10 = sub_297A13CEC();
        result = 0;
        *a5 = v10;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = ccder_decode_tl();
      if (v11)
      {
        v12 = v11;
        result = 0;
        *a5 = v12;
        *a6 = 0;
        goto LABEL_11;
      }
    }

    result = 0xFFFFFFFFLL;
  }

LABEL_11:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A0EFA8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_297A0EE78(off_2A13A4678, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_297A0EFF8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_297A0EE78(off_2A13A4660, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_297A0F068(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_297A0EE78(off_2A13A4658, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void sub_297A0F0D8()
{
  sub_297A04EFC();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v29[4] = *MEMORY[0x29EDCA608];
  v29[0] = v0;
  v29[1] = v3;
  v29[2] = v4;
  v29[3] = v5;
  bzero(v28, 0x1000uLL);
  __n[0] = 4096;
  v6 = sub_297A01194();
  if (v6)
  {
    if (!sub_297A04A68(v6, 0x48u, v29, 4u, v7, v8, v9, v10, v28, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        sub_297A04E10();
      }

      else
      {
        v26 = 0u;
        v27 = 0;
        v23 = 0u;
        v24 = 0u;
        __n[1] = off_2A13A46D0;
        v25 = off_2A13A46D8;
        sub_297A04A14();
        sub_297A13B38();
        if (v23)
        {
          ccder_decode_tl();
        }

        else if (*(&v25 + 1))
        {
          v11 = sub_297A13CEC();
          if (v11 <= 0xFF)
          {
            *v2 = v11;
          }
        }
      }
    }
  }

  else
  {
    sub_297A04C64();
    v13 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 2923, "", "");
  }

  sub_297A04CC4(v28, __n[0]);
  v12 = *MEMORY[0x29EDCA608];
  sub_297A04EE8();
}

void sub_297A0F354()
{
  sub_297A04EFC();
  MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v5 = v4;
  sub_297A04CB8();
  v44 = *MEMORY[0x29EDCA608];
  *&v43[4091] = v6;
  sub_297A04F28(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v31, v33, v35, v37);
  if (v1 && v0 && v5 && v3)
  {
    if (sub_297A01194())
    {
      sub_297A04D94();
      if (!sub_297A04A34(v14, 0x5Au, &v43[4091], v15, v16, v17, v18, v19, v28, v30))
      {
        v20 = calloc(5uLL, 1uLL);
        *v5 = v20;
        if (v20)
        {
          *v3 = 5;
          v21 = v41;
          v20[4] = v42;
          *v20 = v21;
          v22 = calloc(0xFFBuLL, 1uLL);
          *v1 = v22;
          if (v22)
          {
            *v0 = 4091;
            memcpy(v22, v43, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      v24 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v32, v34, v36, v38, v39, v40, ":", 3021, "", "");
    }
  }

  sub_297A04CC4(&v41, 0x1000uLL);
  v23 = *MEMORY[0x29EDCA608];
  sub_297A04CDC();
  sub_297A04EE8();
}

void sub_297A0F528()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v3 = v2;
  v38[1] = *MEMORY[0x29EDCA608];
  sub_297A04DBC();
  v38[0] = v4;
  sub_297A04F28(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v27, v29, v31, v33);
  if (v3 && v1)
  {
    if (sub_297A01194())
    {
      sub_297A04D94();
      if (!sub_297A04A34(v12, 0x59u, v38, v13, v14, v15, v16, v17, v24, v26))
      {
        v18 = calloc(0x1000uLL, 1uLL);
        *v3 = v18;
        if (v18)
        {
          *v1 = 4096;
          memcpy(v18, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      v20 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v28, v30, v32, v34, v35, v36, ":", 3053, "", "");
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  v19 = *MEMORY[0x29EDCA608];
  sub_297A04CDC();
}

void sub_297A0F6BC()
{
  sub_297A04C30();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v45 = *MEMORY[0x29EDCA608];
  memset(v44, 0, sizeof(v44));
  v42 = 128;
  v15 = sub_297A06520();
  MEMORY[0x2A1C7C4A8]();
  v17 = &v40 - v16;
  v18 = sub_297A04DA4();
  bzero(v18, v19);
  if (!sub_297A16540(v12, v10, v8, v6, v4, v17, v15))
  {
    v43[0] = v14;
    v43[1] = v17;
    v43[2] = v15;
    if (v2)
    {
      v20 = v41;
      if (v41)
      {
        v21 = sub_297A01194();
        if (v21)
        {
          if (!sub_297A04A68(v21, 0x9Bu, v43, 3u, v22, v23, v24, v25, v44, &v42))
          {
            v26 = calloc(v42, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v42;
              *v20 = v42;
              memcpy(v26, v44, v27);
            }
          }
        }

        else
        {
          v31 = *MEMORY[0x29EDCA620];
          sub_297A04A00();
          fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v34, v35, v36, v37, v38, v39, ":", 3152, "", "");
          sub_297A04DBC();
        }
      }
    }
  }

  v28 = sub_297A04DA4();
  memset_s(v28, v29, 0, v15);
  sub_297A04CC4(v44, v42);
  v30 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

void sub_297A0F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  sub_297A04C30();
  v25 = MEMORY[0x2A1C7C4A8]();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v67 = *MEMORY[0x29EDCA608];
  v65 = 0;
  v66 = 0;
  v64 = v25;
  bzero(__src, 0x4000uLL);
  v61 = a23;
  __count = 0x4000;
  v58[0] = v39;
  memset(__n, 0, sizeof(__n));
  v58[1] = v37;
  v58[2] = v35;
  v58[3] = v33;
  v58[4] = v31;
  v58[5] = v29;
  v58[6] = v27;
  v59 = a21;
  v60 = a22;
  if (sub_297A15984(v58, &__n[1], __n) || (v65 = *&__n[1], v66 = __n[0], !a24))
  {
    sub_297A04C70();
  }

  else
  {
    sub_297A04C70();
    if (a25)
    {
      v40 = sub_297A01194();
      if (v40)
      {
        if (!sub_297A04A68(v40, 0x9Fu, &v64, 3u, v41, v42, v43, v44, __src, &__count))
        {
          v45 = calloc(__count, 1uLL);
          *a24 = v45;
          if (v45)
          {
            v46 = __count;
            *a25 = __count;
            memcpy(v45, __src, v46);
          }
        }
      }

      else
      {
        v48 = *MEMORY[0x29EDCA620];
        sub_297A04A00();
        fprintf(v49, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v50, v51, v52, v53, v54, v55, v56, ":", 3201, "", "");
      }
    }
  }

  sub_297A04CC4(*&__n[1], __n[0]);
  free(*&__n[1]);
  sub_297A04CC4(__src, __count);
  v47 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

void sub_297A0FAF0()
{
  sub_297A04F54();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v56 = *MEMORY[0x29EDCA608];
  v10 = sub_297A04DB0(v0, v3, v1, v5, v6, v7, v8, v9, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v53, v54, v55[0]);
  bzero(v10, v11);
  v52 = v55;
  v53 = &v56;
  v54 = 4096;
  if (v4 && v2)
  {
    v20 = sub_297A01194();
    if (v20)
    {
      v21 = v20;
      v12 = sub_297A14D84(&v52);
      if (v12)
      {
        v12 = sub_297A14DE0(&v52);
        if (v12)
        {
          sub_297A04C0C();
          v12 = ccder_blob_encode_tl();
          if (v12)
          {
            v12 = sub_297A04B24(v21, 0x55u, v14, v15, v53, &v56 - v53, v18, v19, v55, &v54);
            if (!v12)
            {
              v12 = sub_297A15578(v55);
            }
          }
        }
      }
    }

    else
    {
      v25 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      v12 = fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v41, v43, ":", 3262, "", "");
    }
  }

  v22 = sub_297A04DB0(v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54, v55[0]);
  memset_s(v22, v23, 0, 0x1000uLL);
  v24 = *MEMORY[0x29EDCA608];
  sub_297A04CDC();
  sub_297A04F40();
}

void sub_297A0FC9C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v1 = (*(a1 + 40) >> 64) | 0x10;
  }

  sub_297A0FAF0();
}

uint64_t sub_297A0FD08()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  input[1] = *MEMORY[0x29EDCA608];
  v3 = 3758097098;
  output = 0;
  input[0] = v4;
  HIDWORD(v55) = 1;
  v10 = sub_297A04DB0(v0, v4, v1, v5, v6, v7, v8, v9, outputStruct, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, inputStruct, v55, v56);
  bzero(v10, v11);
  v53 = &v56;
  inputStruct = &output;
  if (v2)
  {
    v20 = sub_297A01194();
    if (v20)
    {
      v21 = v20;
      v12 = sub_297A14DE0(&v53);
      if (v12)
      {
        sub_297A04C0C();
        v12 = ccder_blob_encode_tl();
        if (v12)
        {
          v12 = IOConnectCallMethod(v21, 0x4Eu, input, 1u, inputStruct, &output - inputStruct, &output, &v55 + 1, 0, 0);
          v3 = v12;
          if (!v12)
          {
            *v2 = output;
          }
        }
      }
    }

    else
    {
      v26 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      v12 = fprintf(v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v28, v34, v36, v38, v40, v42, v44, ":", 3305, "", "");
      v3 = 3758097084;
    }
  }

  else
  {
    v3 = 3758097090;
  }

  v22 = sub_297A04DB0(v12, v13, v14, v15, v16, v17, v18, v19, outputStructa, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v53, inputStruct, v55, v56);
  memset_s(v22, v23, 0, 0x1000uLL);
  v24 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_297A0FE98()
{
  sub_297A04C30();
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27[1] = *MEMORY[0x29EDCA608];
  v27[0] = v6;
  bzero(__s, 0x1000uLL);
  v23 = __s;
  v24 = v27;
  v25 = 4096;
  if (v5 && v3)
  {
    v7 = sub_297A01194();
    if (v7)
    {
      v8 = v7;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_297A14D84(&v23))
        {
          if (sub_297A14DE0(&v23))
          {
            sub_297A04C0C();
            if (ccder_blob_encode_tl())
            {
              if (!sub_297A04BCC(v8, 0x4Fu, v27, v9, v24, v27 - v24, v10, v11, __s, &v25))
              {
                *&v22 = __s;
                *(&v22 + 1) = &__s[v25];
                sub_297A04C0C();
                if (ccder_blob_decode_range())
                {
                  if (v1)
                  {
                    sub_297A063EC(&v22, 0, v1);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3333, "", "");
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  v12 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

void sub_297A100C0(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    sub_297A0FAF0();
  }

  v2 = *MEMORY[0x29EDCA608];
}

void sub_297A1017C()
{
  sub_297A04C30();
  MEMORY[0x2A1C7C4A8]();
  sub_297A04DE4();
  v5 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x1000uLL);
  bzero(v3, 0x1000uLL);
  v2[0] = v4;
  v2[1] = &v5;
  v1[0] = v3;
  v1[1] = v4;
  if (sub_297A14D84(v2))
  {
    if (sub_297A14D84(v2))
    {
      sub_297A04C0C();
      if (ccder_blob_encode_tl())
      {
        if (sub_297A14D84(v1))
        {
          if (sub_297A14D84(v1))
          {
            sub_297A04C0C();
            if (ccder_blob_encode_tl())
            {
              sub_297A086DC();
            }
          }
        }
      }
    }
  }

  v0 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}